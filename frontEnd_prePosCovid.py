import backEnd_prePosCovid as back
import matplotlib.pyplot as plt

def questionSemesterBoxPlot(question, semester):
    endPoint = back.basicStatistic(question, semester)
    plt.boxplot(endPoint[0], labels=[semester])
    # Add title and labels
    plt.title(f"Question: {question}")
    plt.ylabel('Grades')
    plt.show()

def questionSemester(question):
    list_of_grades, list_of_semesters = back.questionAlongSemesters(question)
    plt.boxplot(list_of_grades, labels=list_of_semesters)
    plt.title(f"Question: {question} along semesters")
    plt.ylabel('Grades')
    plt.show()


#questionSemesterBoxPlot(6, '2019-2')
questionSemester(6)