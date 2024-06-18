import numpy as np
import database.consult as sql
from database import connect as DB
import csv

def findQuestion(question):
	sql = f"SELECT semesterFK FROM todo where id_questionFK = {question}"
	DB.cursor.execute(sql)
	result = DB.cursor.fetchall()
	#print(question, result) #-> Show on BackEnd to verify function result
	return result

def firstSemester(question, semester):
	grades2019 = f"SELECT grades FROM todo where id_questionFK = {question} AND semesterFK = {semester};"
	DB.cursor.execute(grades2019)
	resultGrades2019 = DB.cursor.fetchall()[0][0] #-> First tuple and first column
	#print("Grades by question: ", question, resultGrades2019) #-> Show on BackEnd to verify function result
	return resultGrades2019

def secondSemester(question, semester):
	grades2022 = f"SELECT grades FROM todo where id_questionFK = {question} AND semesterFK = '{semester}';"
	DB.cursor.execute(grades2022)
	resultGrades2022 = DB.cursor.fetchall()[0][0] #-> First tuple and first column
	#print("Grades by question: ", question, resultGrades2022)
	return resultGrades2022

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
		#print (grades, mean, std_dev, q1, median, q3, iqr) -> Show function result for analyses
		return grades, mean, std_dev, q1, median, q3, iqr
	else:
		#print ([], 0, 0, 0, 0, 0, 0) -> Show function result for analyses
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

def generateCsvToComparationPrePosPandemic():
	commonQuestions = [1,2,6,11,12,15,18,19,20,22,24,25,29,30,31,33,36]
	rows = []
	for question in commonQuestions:
		questionBySemesters = findQuestion(question)
		semesters = [x[0] for x in questionBySemesters]
		grades1 = firstSemester(question, semesters[0])
		gradesValues = [float(x) for x in grades1.split(',')]
		print(question, semesters[0], gradesValues)
		for grade in gradesValues:
			rows.append([question, '2019', grade])

		grades2 = secondSemester(question, semesters[1])
		gradesValues2 = [float(x) for x in grades2.split(',')]
		print(question, semesters[1], gradesValues)
		for grade2 in gradesValues2:
			rows.append([question, '2022-1', grade2])

	filename = "csvToCompareStudentPerformance.csv"

	fields = ['Question', 'Semester', 'Grade']
	print(rows)
	with open(filename, 'w') as csvfile:
		# creating a csv writer object
		csvwriter = csv.writer(csvfile)
		# writing the fields
		csvwriter.writerow(fields)
		# writing the data rows
		csvwriter.writerows(rows)


def generateCsvToComparationLongTermPosPandemic():
	commonQuestions = [1,2,12,15,19,24,25,27,28,29,30,31,34,35]
	rows = []
	for question in commonQuestions:
		questionBySemesters = findQuestion(question)
		semesters = [x[0] for x in questionBySemesters]
		grades1 = firstSemester(question, "2022-1")
		gradesValues = [float(x) for x in grades1.split(',')]
		for grade in gradesValues:
			rows.append([question, '2022', grade])
			print([question, '2022', grade])