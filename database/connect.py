import mysql.connector
from envPrePosCovid import private as pvt

db = mysql.connector.connect(
    host=pvt.HOST,
    user=pvt.USER,
    password=pvt.PASSWORD,
    database="preposcovid"
) #Check Connection Settings in MySQL Workbench to get these details

cursor = db.cursor()