# Student Performance before and after COVID-19
## Abstract
Several pandemics have occurred in human history and affected the human life, such as education and economy. The COVID-19 pandemic has had an unprecedented and widespread impact on education, significantly affecting students worldwide. Thus, the aim of this study is to evaluate the impact of the pandemic on student performance, especially in the Software Engineering discipline. We collected historical data from Software Engineering students over the last five years, such as their grades in a set of repeated questions throughout the semesters. As one of our results, we identified that the pandemic negatively influenced student performance in 2022, especially in the first semester. However, we also observed that the impact was mitigated in the following semesters.

# GitHub Project
This GitHub project is a Python language with a five-layer architecture implementation and MySQL connection. The database model used is explained in Elmashi and Navathe's book, "Introduction to Database Fundamentals, 7th edition." The goal of this job is to show our data and analysis. You can respond to or comprehend our research by following or reading the next steps.

## Start environment
After cloning the repository and navigating to the main folder, set up a Python 3.12.3 environment and follow these steps:
1. Creates an envpreposcovid folder
```bash
python -m venv envPrePosCovid
```
2. Create a file named private.py inside the envpreposcovid folder and add your MySQL connection credentials.
```bash
HOST = "localhost"
USER = "root"
PASSWORD = "ibd2024"
```
3. Activate the Python environment
```bash
.\envPrePosCovid\Scripts\activate
```
4. Install the libraries
```bash
pip install -r doc/requirements.txt
```
5. In MySQL, execute the file database/sql/createSchema.sql to initialize a preposcovid database.

6. Finally, execute the app:
```bash
python app.py
```

## Application
When the application is executed, a menu appears with the following options:

```bash
---------------------Functionalities--------------------------------
1. Example boxplot question and class: (question=11, class='2019-2')
2. Example boxplot question in all classes: (question=11)
3. Figure 2: Common questions analyzed during the semesters in 2019 (prepandemic) and 2022-1 (post-pandemic)
4. Figure 3: Common questions analyzed pos pandemic Years 2022 and 2023
5. Figure 4: Years comparison
0. Exit
---------------------Student Performance---------------------
```

The statement of question 11 was:

- For the following practices, identify the agile method with the best fit. Use the following legend: (X) for Extreme Programming, (S) for Scrum or (B) for Both (3 pts)
  - [ ] Test-driven development
  - [ ] Refactoring
  - [ ] Pair programming
  - [ ] Customer involvement
  - [ ] Collective code ownership
  - [ ] Daily 15-minute meetings
  - [ ] Sustainable pace without overtime
  - [ ] Short interactions and frequent deliveries
  - [ ] 8-hour sprint planning meeting

- The resolutions of the questions are based on the materials provided by the course instructor. If necessary, the students can confer the answer and ask for a review.

Functionality number 1 is from the tuple below with an array of 36 student's grades.
```
(	
  Question = 11,
  Semester = '2019-2',
  grades = [1.0, 1.0, 1.0, 0.8, 1.0, 0.8, 0.8, 1.0, 0.8, 0.9, 0.9, 0.7, 0.9, 1.0, 0.9, 1.0, 0.8, 0.8, 0.9, 0.7, 0.4, 0.8, 0.8, 0.7, 0.9, 1.0, 1.0, 1.0, 0.7, 0.8, 0.8, 0.9, 0.4, 1.0, 0.9, 0.8]
);
```
The question eleven and class 2019-2 were used to genearate a boxplot with student performance. The result was:

![Example boxplot question in all classes](doc/figure/BoxPlotQ11-2019-2.png)

Functionality 2 clearly defines students' performance in all semesters because the question was applied over time. The Figure below shows the result.

![Example boxplot question and class](doc/figure/QuestionExampleLongTerm11.png)

Functionality 3 compares common questions applied in 2019 (pre-pandemic) and 2022-1 (post-pandemic).

![Comparison boxplot question pre and pos pandemic](doc/figure/questionComparation2019_2022-1.png)

The Functionality 4 compares common questions pos pandemic.

![Comparison boxplot question two years after pandemic](doc/figure/questionComparation2022_2023.png)

Finally, the functionality 5 represents the general results

![Comparison boxplot question all years](doc/figure/YearsComparationResult.png)
