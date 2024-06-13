import service.backEnd_prePosCovid as BE
import matplotlib.pyplot as plt
import seaborn as sns
import pandas as pd

def showBoxplotComparationPrePosPandemic():
	data = pd.read_csv('doc/file/csvToCompareStudentPerformance.csv')
	# create grouped boxplot  
	sns.boxplot (	x = data['Question'], 
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