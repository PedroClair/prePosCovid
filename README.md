# Student Performance before and after COVID-19
This project is a Python language with a five-layer architecture implementation and MySQL connection. The database's model used is explained in Elmashi and Navathe's book, "Introduction to Database Fundamentals, 7th edition."

# Start enviroment
After cloning the repository and enter the main folder, start an enviroment with a Python 3.12.3 instaled and execute the follwing steps:
- python -m venv envPrePosCovid
  - This step create an envpreposcovid folder
  - Into this folder create a private.py with your MySQL connecting credentials
    - For example: <br>
      HOST = "localhost" <br>
      USER = "root" <br>
      PASSWORD = "ibd2024" <br>
- .\envPrePosCovid\Scripts\activate
	- To activate the python's enviroment
- pip install -r doc/requirements.txt
  - Install the libraries
- Into a MySQL execute the file database/sql/createSquema.sql to start a preposcovid database
- Finally execute the app:
  - python app.py

# Application