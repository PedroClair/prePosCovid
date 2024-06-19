import service.backEnd as BE
import matplotlib.pyplot as plt
import seaborn as sns
import pandas as pd
import numpy as np

from tests import test_basic as TDD

def test_menu():
	print("\n---------------------Welcome to the Tests--------------------------------")
	print("1. Database")
	print("2. Service")
	print("3. Interface")
	print("0. Exit")
	print("---------------------Student Performance---------------------\n")

def test_main():
	while True:
		test_menu()
		choice = input("Enter your option: ")
		if choice == '1':
			TDD.testDatabase()
		elif choice == '2':
			TDD.testService()
		elif choice == '3':
			TDD.testInterface()
		elif choice == '0':
			print("Exiting test ... ")
			break
		else:
			print("Invalid choice. Please try again")

def main_menu():
	print("\n---------------------Welcome to the app--------------------------------")
	print("1. Example boxplot question and class: (question=11, class='2019-2')")
	print("2. Example boxplot question in all classes: (question=11)")
	print("3. Figure 2: Common questions analyzed during the semesters in 2019 (pre-pandemic) and 2022-1 (post-pandemic).")
	print("4. Figure 3: Two years after COVID-19 pandemic.")
	print("5. Figure 4. Year comparison")
	print("0. Exit")
	print("---------------------Student Performance---------------------\n")

def main():
	while True:
		main_menu()
		functionality = input("Enter your option: ")
		if functionality == '1':
			questionSemesterBoxPlot(11, "2019-2")
		elif functionality == '2':
			questionSemester(11)
		elif functionality == '3':
			showBoxplotComparationPrePosPandemic()
		elif functionality == '4':
			showBoxplotComparationPosPandemic()
		elif functionality == '5':
			generalResult()
		elif functionality == '0':
			print("Exiting application ... ")
			break
		else:
			print("Invalid choice. Please try again")

def showBoxplotComparationPrePosPandemic():
	data = pd.read_csv('doc/file/csvToComparePrePosPandemicPerform.csv')
	# create grouped boxplot  
	sns.boxplot (	
		x = data['Question'], 
		y = data['Grade'], 
		hue = data['Semester']
	)
	plt.show()

def showBoxplotComparationPosPandemic():
	data = pd.read_csv('doc/file/csvToComparePosPandemicPerform.csv')
	# create grouped boxplot  
	sns.boxplot (	
		x = data['Question'], 
		y = data['Grade'], 
		hue = data['Semester']
	)
	plt.show()

def questionSemesterBoxPlot(question, semester):
	endPoint = BE.basicStatistic(question, semester)
	plt.boxplot(endPoint[0], labels=[semester])
	plt.title(f"Question: {question}")
	plt.ylabel('Grades')
	plt.show()

def questionSemester(question):
	list_of_grades, list_of_semesters = BE.questionAlongSemesters(question)
	plt.boxplot(list_of_grades, labels=list_of_semesters)
	plt.title(f"Question: {question} along semesters")
	plt.ylabel('Grades')
	plt.show()

def generalResult():
	list_of_grades = BE.endPointGeneralResult()
	plt.boxplot(list_of_grades, labels=['2019', '2022', '2023'])
	plt.title(f"Year comparison")
	plt.ylabel('Grades')
	plt.show()