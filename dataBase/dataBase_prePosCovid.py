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

def searchQuestionSemester(id_question, semester):
    cursor = db.cursor()
    sql = f"SELECT * FROM todo where id_questionFK = {id_question} AND semesterFK = '{semester}'"
    cursor.execute(sql)
    return cursor.fetchall()

def searchQuestion(id_question):
    cursor = db.cursor()
    sql = f"SELECT * FROM todo where id_questionFK = {id_question}"
    cursor.execute(sql)
    return cursor.fetchall()