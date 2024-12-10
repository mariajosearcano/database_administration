from database_administration.db_connections import get_mysql_connection
from django.shortcuts import render
import time
from django.http import JsonResponse

# def calculate_income(request):
#     try:
#         mysql_conn = get_mysql_connection()
#
#         with mysql_conn.cursor() as cursor:
#             cursor.execute("CALL calculate_total_income()")
#             result = cursor.fetchone()
#             total_income = result[0] if result else 0
#
#         time.sleep(10)
#
#         return JsonResponse({
#             'status': 'success',
#             'title': 'Total Income',
#             'message': total_income
#         })
#     except Exception as e:
#         print(e)
#
#         return JsonResponse({
#             'status': 'error',
#             'title': 'Error',
#             'message': 'Hubo un error al calcular el ingreso total'
#         })
#     finally:
#         if 'mysql_conn' in locals():
#             mysql_conn.close()
#
# def calculate_expenses(request):
#     try:
#         mysql_conn = get_mysql_connection()
#
#         with mysql_conn.cursor() as cursor:
#             cursor.execute("CALL calculate_total_expenses()")
#             result = cursor.fetchone()
#             total_expenses = result[0] if result else 0
#
#         return JsonResponse({
#             'status': 'success',
#             'title': 'Total Expenses',
#             'message': total_expenses
#         })
#     except Exception as e:
#         print(e)
#
#         return JsonResponse({
#             'status': 'error',
#             'title': 'Error',
#             'message': 'Hubo un error al calcular el gasto total'
#         })
#     finally:
#         if 'mysql_conn' in locals():
#             mysql_conn.close()

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