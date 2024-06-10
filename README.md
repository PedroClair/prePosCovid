# Student Performance before and after COVID-19
## Abstract
Several pandemics have occurred in human history and affected the human life, such as education and economy. The COVID-19 pandemic has had an unprecedented and widespread impact on education, significantly affecting students worldwide. Thus, the aim of this study is to evaluate the impact of the pandemic on student performance, especially in the Software Engineering discipline. We collected historical data from Software Engineering students over the last five years, such as their grades in a set of repeated questions throughout the semesters. As one of our results, we identified that the pandemic negatively influenced student performance in 2022, especially in the first semester. However, we also observed that the impact was mitigated in the following semesters.

# GitHub Project
This GitHub project is a Python language with a five-layer architecture implementation and MySQL connection. The database model used is explained in Elmashi and Navathe's book, "Introduction to Database Fundamentals, 7th edition." The goal of this job is show our data and analysis. You can reply or understando our researsh following the next steps.

## Start environment
After cloning the repository and entering the main folder, start an environment with Python 3.12.3 installed and execute the following steps:
1. python -m venv envPrePosCovid
	- This step creates an envpreposcovid folder
	- Into this folder create a private.py with your MySQL connecting credentials
		- For example: <br>
  			HOST = "localhost" <br>
     		USER = "root" <br>
			PASSWORD = "ibd2024" <br>
2. .\envPrePosCovid\Scripts\activate
	- To activate the python's environment
3. pip install -r doc/requirements.txt
	- Install the libraries
4. Into a MySQL execute the file database/sql/createSquema.sql to start a preposcovid database
5. Finally execute the app:
	- python app.py

## Application
