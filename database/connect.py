import mysql.connector
from envPrePosCovid import private as pvt

db = mysql.connector.connect(
    host=pvt.HOST_MYSQL,
    user=pvt.USER_MYSQL,
    password=pvt.PASSWORD_MYSQL,
    database=pvt.DATABASE_MYSQL
) #Check Connection Settings in MySQL Workbench to get these details

cursor = db.cursor()