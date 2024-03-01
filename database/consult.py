from dataBase.connect import *

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