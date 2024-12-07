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
    client = MongoClient('localhost', 7000)
    return client['potenciar_solidario']

def get_cassandra_connection():
    cluster = Cluster(['e254434981bc'])
    session = cluster.connect('potenciar_solidario')
    return session