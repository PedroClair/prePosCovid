from interface import frontEnd_prePosCovid as FE

def print_menu():
	print("\n---------------------Welcome--------------------------------")
	print("1. Example boxplot question and class: (question=6, class='2019-2')")
	print("2. Example boxplot question in all classes: (question=6)")
	print("3. Figura 2. Common questions analyzed during the semesters in 2019 (pre-pandemic) and 2022-1 (post-pandemic).")
	print("0. Exit")
	print("---------------------Student Performance---------------------\n")

def main():
	while True:
		print_menu()
		choice = input("Enter your choice: ")
		if choice == '1':
			FE.questionSemesterBoxPlot(6, "2019-2")
		elif choice == '2':
			FE.questionSemester(6)
		elif choice == '3':
			FE.generalComparation()
		elif choice == '0':
			print("Exiting ... ")
			break
		else:
			print("Invalid choice. Please try again")

# testing
import numpy as np
import matplotlib.pyplot as plt
from database import connect as DB

def test():
	
	
	
	# Fixing random state for reproducibility
	np.random.seed(19680801)

	# fake up some data
	spread = np.random.rand(50) * 100
	center = np.ones(25) * 50
	flier_high = np.random.rand(10) * 100 + 100
	flier_low = np.random.rand(10) * -100
	data = np.concatenate((spread, center, flier_high, flier_low))

	# Creating plot
	plt.boxplot(data)
	
	# show plot
	plt.show()

def findQuestion(question):
	sql = f"SELECT semesterFK FROM todo where id_questionFK = {question}"
	DB.cursor.execute(sql)
	result = DB.cursor.fetchall()
	print(question, result) #-> Show on BackEnd to verify function result
	return result

def firstSemester(semester):
	grades2019 = f"SELECT grades FROM todo where id_questionFK = {question} AND semesterFK = '{semester}';"
	DB.cursor.execute(grades2019)
	resultGrades2019 = DB.cursor.fetchall()[0][0] #-> First tuple and first column
	#print("Grades by question: ", question, resultGrades2019) #-> Show on BackEnd to verify function result
	return resultGrades2019

def secondSemester(semester):
	grades2022 = f"SELECT grades FROM todo where id_questionFK = {question} AND semesterFK = '{semester}';"
	DB.cursor.execute(grades2022)
	resultGrades2022 = DB.cursor.fetchall()
	#print("Grades by question: ", question, resultGrades2022)
	return resultGrades2022

if __name__ == "__main__":
	#main()
	commonQuestions = [1,2,6,11,12,15,18,19,20,22,24,25,29,30,31,33,36]
	question = commonQuestions[0]
	questionBySemesters = findQuestion(question)
	semesters = [x[0] for x in questionBySemesters]
	grades1 = firstSemester(semesters[0])
	gradesValues = [float(x) for x in grades1.split(',')]
	
	
		
		

