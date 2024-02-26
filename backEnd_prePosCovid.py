import numpy as np
import dataBase_prePosCovid as set

def basicStatistic(id_questionFK, semesterFK):
    cursor = set.db.cursor()
    sql = f"SELECT * FROM todo where id_questionFK = {id_questionFK} AND semesterFK = '{semesterFK}'"
    cursor.execute(sql)
    results = cursor.fetchall()
    if(results):
        gradesInValues = [float(x) for x in results[0][0].split(',')]
        grades = np.array(gradesInValues)
        mean = np.mean(grades)
        std_dev = np.std(grades)
        q1 = np.percentile(grades, 25)
        median = np.percentile(grades, 50)
        q3 = np.percentile(grades, 75)
        iqr = q3 - q1
        return grades, mean, std_dev, q1, median, q3, iqr
    else:
        return [], 0, 0, 0, 0, 0, 0

def questionAlongSemesters(id_questionFK):
    cursor = set.db.cursor()
    sql = f"SELECT * FROM todo where id_questionFK = {id_questionFK}"
    cursor.execute(sql)
    results = cursor.fetchall()
    list_of_grades = []
    list_of_semesters = []
    for result in results:
        gradesInValues = [float(x) for x in result[0].split(',')]
        grades = np.array(gradesInValues) #Elimite empty values.
        list_of_semesters.append(result[1])
        list_of_grades.append(grades)
    return list_of_grades, list_of_semesters

#print(basicStatistic(6, '2019-2'))
print(questionAlongSemesters(6))