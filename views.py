from django.shortcuts import render
from .migration import migrate_to_mongo, migrate_to_cassandra

def home(request):
    if request.method == 'POST':
        if 'migrate_mongo' in request.POST:
            migrate_to_mongo()
        elif 'migrate_cassandra' in request.POST:
            migrate_to_cassandra()
    return render(request, 'home.html')