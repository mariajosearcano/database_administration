from django.shortcuts import render, redirect
from database_administration.migration import migrate_to_mongo, migrate_to_cassandra
from database_administration.procedures import calculate_income, calculate_expenses

def index(request):
    if request.method == 'POST':
        if 'migrate_mongo' in request.POST:
            migrate_to_mongo()
            return redirect('mongodb')
        elif 'migrate_cassandra' in request.POST:
            migrate_to_cassandra()
            return redirect('apache_cassandra')

    if request.method == 'GET':
        if 'calculate_income' in request.GET:
            calculate_income(request)
        elif 'calculate_expenses' in request.GET:
            calculate_expenses(request)

    return render(request, 'index.html')

def mysql(request):
    return render(request, 'mysql.html')

def mongodb(request):
    return render(request, 'mongodb.html')

def apache_cassandra(request):
    return render(request, 'apache_cassandra.html')