from database_administration.db_connections import get_mysql_connection, get_mongo_connection, get_cassandra_connection
import datetime


def migrate_to_mongo():
    mysql_conn = get_mysql_connection()
    mongo_db = get_mongo_connection()

    cursor = mysql_conn.cursor()
    cursor.execute("SHOW TABLES")
    tables = cursor.fetchall()

    for table in tables:
        table_name = table[0]
        if table_name.startswith('auth') or table_name.startswith('django'):
            continue
        cursor.execute(f"SELECT * FROM {table_name}")
        rows = cursor.fetchall()
        columns = [desc[0] for desc in cursor.description]

        for row in rows:
            document = {}
            for i in range(len(columns)):
                value = row[i]
                # Convert datetime.date to datetime.datetime
                if isinstance(value, datetime.date) and not isinstance(value, datetime.datetime):
                    value = datetime.datetime.combine(value, datetime.datetime.min.time())
                document[columns[i]] = value

            mongo_db[table_name].insert_one(document)

def migrate_to_cassandra():
    mysql_conn = get_mysql_connection()
    cassandra_session = get_cassandra_connection()

    cursor = mysql_conn.cursor()
    cursor.execute("SHOW TABLES")
    tables = cursor.fetchall()

    # Mapping MySQL data types to Cassandra data types
    type_mapping = {
        'int': 'int',
        'bigint': 'bigint',
        'varchar': 'text',
        'text': 'text',
        'datetime': 'timestamp',
        'float': 'float',
        'double': 'double',
        'boolean': 'boolean'
        # Add more mappings as needed
    }

    for table in tables:
        table_name = table[0]
        if table_name.startswith('auth') or table_name.startswith('django'):
            continue
        cursor.execute(f"DESCRIBE {table_name}")
        columns = cursor.fetchall()

        # Create table if it does not exist
        create_table_query = f"CREATE TABLE IF NOT EXISTS {table_name} ("
        primary_key = None
        for column in columns:
            col_name = column[0]
            col_type = column[1].split('(')[0]  # Get the base type without size
            cassandra_type = type_mapping.get(col_type, 'text')  # Default to text if type not found
            create_table_query += f"{col_name} {cassandra_type}, "
            if column[3] == 'PRI':
                primary_key = col_name
        create_table_query += f"PRIMARY KEY ({primary_key}))"
        cassandra_session.execute(create_table_query)

        cursor.execute(f"SELECT * FROM {table_name}")
        rows = cursor.fetchall()
        column_names = [desc[0] for desc in cursor.description]

        for row in rows:
            # Convert data types if necessary
            converted_row = []
            for i, value in enumerate(row):
                converted_row.append(value)

            placeholders = ', '.join(['%s'] * len(column_names))
            query = f"INSERT INTO {table_name} ({', '.join(column_names)}) VALUES ({placeholders})"
            cassandra_session.execute(query, tuple(converted_row))
