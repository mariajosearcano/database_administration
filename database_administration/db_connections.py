import mysql.connector
from pymongo import MongoClient
from cassandra.cluster import Cluster

def get_mysql_connection():
    return mysql.connector.connect(
        host='localhost',
        user='root',
        password='admin',
        database='potenciar_solidario'
    )

def get_mongo_connection():
    client = MongoClient('localhost', 27017)
    return client['potenciar_solidario']

def get_cassandra_connection():
    cluster = Cluster(['localhost'])
    session = cluster.connect('potenciar_solidario')
    return session