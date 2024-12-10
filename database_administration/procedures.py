from database_administration.db_connections import get_mysql_connection
from django.shortcuts import render
import time

def calculate_income(request):
    try:
        mysql_conn = get_mysql_connection()

        with mysql_conn.cursor() as cursor:
            cursor.execute("CALL calculate_total_income()")
            result = cursor.fetchone()
            total_income = result[0] if result else 0

        time.sleep(10)

        return render(request, 'index.html', {
            'total_income': total_income
        })
    except Exception as e:
        return render(request, 'index.html', {
            'error': str(e)
        })
    finally:
        if 'mysql_conn' in locals():
            mysql_conn.close()

def calculate_expenses(request):
    try:
        mysql_conn = get_mysql_connection()

        with mysql_conn.cursor() as cursor:
            cursor.execute("CALL calculate_total_expenses()")
            result = cursor.fetchone()
            total_expenses = result[0] if result else 0

        return render(request, 'index.html', {
            'total_expenses': total_expenses
        })
    except Exception as e:
        return render(request, 'index.html', {
            'error': str(e)
        })
    finally:
        if 'mysql_conn' in locals():
            mysql_conn.close()