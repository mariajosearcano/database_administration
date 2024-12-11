from database_administration.db_connections import get_mysql_connection

def calculate_income():
    mysql_conn = get_mysql_connection()
    try:
        with mysql_conn.cursor() as cursor:
            cursor.execute("CALL calculate_total_income()")
            result = cursor.fetchone()
            return result[0] if result else 0
    except Exception as e:
        print(e)
    finally:
        mysql_conn.close()

def calculate_expenses():
    mysql_conn = get_mysql_connection()
    try:
        with mysql_conn.cursor() as cursor:
            cursor.execute("CALL calculate_total_expenses()")
            result = cursor.fetchone()
            return result[0] if result else 0
    except Exception as e:
        print(e)
    finally:
        mysql_conn.close()