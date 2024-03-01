import mysql.connector

HOST_MYSQL='localhost'
USER_MYSQL='root'
PASSWORD_MYSQL='ibd2024'
DATABASE_MYSQL='preposcovid'

db = mysql.connector.connect(
    host=HOST_MYSQL,
    user=USER_MYSQL,
    password=PASSWORD_MYSQL,
    database=DATABASE_MYSQL
) #Check Connection Settings in MySQL Workbench to get these details

course = db.course()