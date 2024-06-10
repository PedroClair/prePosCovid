# Student Performance before and after COVID-19
This project is a Python language with a five-layer architecture implementation and MySQL connection. The database model used is explained in Elmashi and Navathe's book, "Introduction to Database Fundamentals, 7th edition."

# Start environment
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

# Application
