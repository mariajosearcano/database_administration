from db_connections import get_mysql_connection, get_mongo_connection, get_cassandra_connection


def migrate_to_mongo():
    mysql_conn = get_mysql_connection()
    mongo_db = get_mongo_connection()

    cursor = mysql_conn.cursor()
    cursor.execute("SELECT * FROM proveedores")
    rows = cursor.fetchall()

    for row in rows:
        document = {
            'Id_proveedor': row[0],
            'Nombre': row[1],
            # Map other fields
        }
        mongo_db.your_collection.insert_one(document)


def migrate_to_cassandra():
    mysql_conn = get_mysql_connection()
    cassandra_session = get_cassandra_connection()

    cursor = mysql_conn.cursor()
    cursor.execute("SELECT * FROM your_table")
    rows = cursor.fetchall()

    for row in rows:
        query = """
        INSERT INTO your_table (field1, field2)
        VALUES (%s, %s)
        """
        cassandra_session.execute(query, (row[0], row[1]))