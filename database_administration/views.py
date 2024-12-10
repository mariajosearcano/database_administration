from django.shortcuts import render, redirect
from database_administration.migration import migrate_to_mongo, migrate_to_cassandra
from database_administration.procedures import calculate_income, calculate_expenses
from django.http import HttpResponse
from django.http import JsonResponse
from django.views.decorators.http import require_http_methods

# PAGES
def index(request):
    if request.method == 'POST':
        if 'migrate_mongo' in request.POST:
            migrate_to_mongo()
            return redirect('mongodb')
        elif 'migrate_cassandra' in request.POST:
            migrate_to_cassandra()
            return redirect('apache_cassandra')

    return render(request, 'index.html')

def mysql(request):
    return render(request, 'mysql.html')

def mongodb(request):
    return render(request, 'mongodb.html')

def apache_cassandra(request):
    return render(request, 'apache_cassandra.html')


# ENDPOINTS
# def stored_procedures(request):
#     print(request.GET)
#     response = {
#         'status': 'a'
#     }
#
#     if 'calculate_income' in request.GET:
#         response = calculate_income(request)
#         print('somethinggggg')
#     elif 'calculate_expenses' in request.GET:
#         response = calculate_expenses(request)
#
#     return HttpResponse(response)

@require_http_methods(["POST"])
def calculate_income_view(request):
    try:
        result = calculate_income()
        return JsonResponse({
            'title': 'Total Income',
            'message': result
        })
    except Exception as e:
        return JsonResponse({
            'title': 'Error',
            'message': str(e)
        }, status=500)

@require_http_methods(["POST"])
def calculate_expenses_view(request):
    try:
        result = calculate_expenses()
        return JsonResponse({
            'title': 'Total Expenses',
            'message': result
        })
    except Exception as e:
        return JsonResponse({
            'title': 'Error',
            'message': str(e)
        }, status=500)