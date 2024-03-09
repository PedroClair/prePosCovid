import numpy as np
import dataBase.dataBase_prePosCovid as sql

def basicStatistic(id_questionFK, semesterFK):
    results = sql.searchQuestionSemester(id_questionFK, semesterFK)
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
    results = sql.searchQuestion(id_questionFK)
    list_of_grades = []
    list_of_semesters = []
    for result in results:
        gradesInValues = [float(x) for x in result[0].split(',')]
        grades = np.array(gradesInValues) #Eliminate empty values.
        list_of_semesters.append(result[1])
        list_of_grades.append(grades)
    return list_of_grades, list_of_semesters
