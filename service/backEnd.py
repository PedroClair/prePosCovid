import numpy as np
import database.consult as sql
import csv

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
	question = commonQuestions[0]
	rows = []
	#for question in commonQuestions:
	questionBySemesters = sql.findQuestion(question)
	#print(questionBySemesters)
	semesters = [x[0] for x in questionBySemesters]

	if('2022-1' in semesters):
		for grade in [float(info) for info in sql.searchQuestionSemester(question, '2022-1')[0][0].split(',')]:
			rows.append([question, '2022', grade])
	print(rows)
	
	if('2022-2' in semesters):
		for grade in [float(info) for info in sql.searchQuestionSemester(question, '2022-2')[0][0].split(',')]:
			rows.append([question, '2022', grade])

	if('2023-1' in semesters):
		for grade in [float(info) for info in sql.searchQuestionSemester(question, '2023-1')[0][0].split(',')]:
			rows.append([question, '2023', grade])

	if('2023-2' in semesters):
		for grade in [float(info) for info in sql.searchQuestionSemester(question, '2023-1')[0][0].split(',')]:
			rows.append([question, '2023', grade])

	filename = "csvToCompareLongTermStudentPerformance.csv"

	fields = ['Question', 'Semester', 'Grade']
	print(rows)
	with open(filename, 'w') as csvfile:
		# creating a csv writer object
		csvwriter = csv.writer(csvfile)
		# writing the fields
		csvwriter.writerow(fields)
		# writing the data rows
		csvwriter.writerows(rows)


def generateCsvToComparationPosPandemic():
	commonQuestions = [1,2,12,15,19,24,25,27,28,29,30,31,34,35]
	rows = []
	
	for question in commonQuestions:#question = commonQuestions[0]
		questionBySemesters = sql.findQuestion(question)
		semesters = [x[0] for x in questionBySemesters]
		if('2022-1' in semesters):
			for grade in [float(info) for info in sql.searchQuestionSemester(question, '2022-1')[0][0].split(',')]:
				rows.append([question, '2022', grade])
		
		if('2022-2' in semesters):
			for grade in [float(info) for info in sql.searchQuestionSemester(question, '2022-2')[0][0].split(',')]:
				rows.append([question, '2022', grade])

		if('2023-1' in semesters):
			for grade in [float(info) for info in sql.searchQuestionSemester(question, '2023-1')[0][0].split(',')]:
				rows.append([question, '2023', grade])

		if('2023-2' in semesters):
			for grade in [float(info) for info in sql.searchQuestionSemester(question, '2023-2')[0][0].split(',')]:
				rows.append([question, '2023', grade])

		filename = "csvToComparePosPandemicPerform.csv"
		fields = ['Question', 'Semester', 'Grade']
		print(rows)
		with open(filename, 'w') as csvfile:
			csvwriter = csv.writer(csvfile)
			csvwriter.writerow(fields)
			csvwriter.writerows(rows)

def endPointGeneralResult():
	grades2019 = np.array([])
	grades2022 = np.array([])
	grades2023 = np.array([])


	for question in np.arange(1, 37):
		list_of_grades, list_of_semester = questionAlongSemesters(question)
		print(list_of_semester)
		if '2019-1' in list_of_semester:
			grades2019 = np.append(grades2019, list_of_grades[list_of_semester.index('2019-1')])

		if '2019-2' in list_of_semester:
			grades2019 = np.append(grades2019, list_of_grades[list_of_semester.index('2019-2')])
		
		if '2022-1' in list_of_semester:
			grades2022 = np.append(grades2022, list_of_grades[list_of_semester.index('2022-1')])

		if '2022-2' in list_of_semester:
			grades2022 = np.append(grades2022, list_of_grades[list_of_semester.index('2022-2')])

		if '2023-1' in list_of_semester:
			grades2023 = np.append(grades2023, list_of_grades[list_of_semester.index('2023-1')])

		if '2023-2' in list_of_semester:
			grades2022 = np.append(grades2023, list_of_grades[list_of_semester.index('2023-2')])
	
	return [grades2019, grades2022, grades2023]
