"""
URL configuration for database_administration project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/5.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
# from django.contrib import admin
# from django.urls import path

# urlpatterns = [
#     path('admin/', admin.site.urls),
# ]

from django.urls import path
from django.contrib import admin
from database_administration.views import (
    index,
    mysql,
    mongodb,
    apache_cassandra,
    calculate_income_view,
    calculate_expenses_view,
)

urlpatterns = [
    # PAGES
    path('admin/', admin.site.urls),
    path('', index, name='index'),
    path('mysql/', mysql, name='mysql'),
    path('mongodb/', mongodb, name='mongodb'),
    path('apache_cassandra/', apache_cassandra, name='apache_cassandra'),

    # API ENDPOINTS
    path('api/calculate-income/', calculate_income_view, name='calculate_income'),
    path('api/calculate-expenses/', calculate_expenses_view, name='calculate_expenses'),
]
