CREATE SCHEMA PREPOSCOVID;

CREATE TABLE PREPOSCOVID.QUESTION (
	id_question INT NOT NULL,
	topic TEXT,
	dificult VARCHAR(45),
	multiple_choice bool,
	PRIMARY KEY (id_question)
);

CREATE TABLE PREPOSCOVID.CLASS (
	semester VARCHAR(10) NOT NULL,
	students_number int,
	frequency int,
	PRIMARY KEY (semester)
);

CREATE TABLE PREPOSCOVID.TODO (
	grades TEXT,
	semesterFK VARCHAR(10),
	id_questionFK INT,
	id_todo INT NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (id_todo),
	FOREIGN KEY (semesterFK) REFERENCES CLASS(semester),
	FOREIGN KEY (id_questionFK) REFERENCES QUESTION(id_question)
);

#Populate databse
INSERT INTO preposcovid.question(id_question, topic, dificult, multiple_choice) VALUES (1, 'SE Introduction', 0, false);
INSERT INTO preposcovid.question(id_question, topic, dificult, multiple_choice) VALUES (2, 'SE Introduction', 0, false);
INSERT INTO preposcovid.question(id_question, topic, dificult, multiple_choice) VALUES (3, 'SE Introduction', 0, false);
INSERT INTO preposcovid.question(id_question, topic, dificult, multiple_choice) VALUES (4, 'SE Introduction', 0, false);
INSERT INTO preposcovid.question(id_question, topic, dificult, multiple_choice) VALUES (5, 'Software Process', 0, false);
INSERT INTO preposcovid.question(id_question, topic, dificult, multiple_choice) VALUES (6, 'Software Process', 0, false);
INSERT INTO preposcovid.question(id_question, topic, dificult, multiple_choice) VALUES (7, 'Software Process', 0, false);
INSERT INTO preposcovid.question(id_question, topic, dificult, multiple_choice) VALUES (8, 'Agile Methods', 0, false);
INSERT INTO preposcovid.question(id_question, topic, dificult, multiple_choice) VALUES (9, 'Agile Methods', 0, false);
INSERT INTO preposcovid.question(id_question, topic, dificult, multiple_choice) VALUES (10, 'Agile Methods', 0, false);
INSERT INTO preposcovid.question(id_question, topic, dificult, multiple_choice) VALUES (11, 'Software Requirements', 0, false);
INSERT INTO preposcovid.question(id_question, topic, dificult, multiple_choice) VALUES (12, 'Software Requirements', 0, false);
INSERT INTO preposcovid.question(id_question, topic, dificult, multiple_choice) VALUES (13, 'Software Requirements', 0, false);
INSERT INTO preposcovid.question(id_question, topic, dificult, multiple_choice) VALUES (14, 'Software Requirements', 0, false);
INSERT INTO preposcovid.question(id_question, topic, dificult, multiple_choice) VALUES (15, 'UML - Use Cases', 0, false);
INSERT INTO preposcovid.question(id_question, topic, dificult, multiple_choice) VALUES (16, 'UML - Use Cases', 0, false);
INSERT INTO preposcovid.question(id_question, topic, dificult, multiple_choice) VALUES (17, 'UML - Use Cases', 0, false);
INSERT INTO preposcovid.question(id_question, topic, dificult, multiple_choice) VALUES (18, 'UML - Use Cases', 0, false);
INSERT INTO preposcovid.question(id_question, topic, dificult, multiple_choice) VALUES (19, 'Software Architecture', 0, false);
INSERT INTO preposcovid.question(id_question, topic, dificult, multiple_choice) VALUES (20, 'Software Architecture', 0, false);
INSERT INTO preposcovid.question(id_question, topic, dificult, multiple_choice) VALUES (21, 'UML - Classes Diagram', 0, false);
INSERT INTO preposcovid.question(id_question, topic, dificult, multiple_choice) VALUES (22, 'UML - Other Diagrams', 0, false);
INSERT INTO preposcovid.question(id_question, topic, dificult, multiple_choice) VALUES (23, 'UML - Other Diagrams', 0, false);
INSERT INTO preposcovid.question(id_question, topic, dificult, multiple_choice) VALUES (24, 'UML - Other Diagrams', 0, false);
INSERT INTO preposcovid.question(id_question, topic, dificult, multiple_choice) VALUES (25, 'UML - Other Diagrams', 0, false);
INSERT INTO preposcovid.question(id_question, topic, dificult, multiple_choice) VALUES (26, 'UML - Other Diagrams', 0, false);
INSERT INTO preposcovid.question(id_question, topic, dificult, multiple_choice) VALUES (27, 'Implementations - Idioms', 0, false);
INSERT INTO preposcovid.question(id_question, topic, dificult, multiple_choice) VALUES (28, 'Implementations - Idioms', 0, false);
INSERT INTO preposcovid.question(id_question, topic, dificult, multiple_choice) VALUES (29, 'Implementations - Idioms', 0, false);
INSERT INTO preposcovid.question(id_question, topic, dificult, multiple_choice) VALUES (30, 'Implementations - Idioms', 0, false);
INSERT INTO preposcovid.question(id_question, topic, dificult, multiple_choice) VALUES (31, 'Testing', 0, false);
INSERT INTO preposcovid.question(id_question, topic, dificult, multiple_choice) VALUES (32, 'Testing', 0, false);
INSERT INTO preposcovid.question(id_question, topic, dificult, multiple_choice) VALUES (33, 'Testing', 0, false);
INSERT INTO preposcovid.question(id_question, topic, dificult, multiple_choice) VALUES (34, 'Software Quality', 0, false);
INSERT INTO preposcovid.question(id_question, topic, dificult, multiple_choice) VALUES (35, 'Software Quality', 0, false);
INSERT INTO preposcovid.question(id_question, topic, dificult, multiple_choice) VALUES (36, 'Software Quality', 0, false);

INSERT INTO preposcovid.class (semester) VALUES ('2019-1');
INSERT INTO preposcovid.class (semester) VALUES ('2019-2');
INSERT INTO preposcovid.class (semester) VALUES ('2022-1');
INSERT INTO preposcovid.class (semester) VALUES ('2022-2');
INSERT INTO preposcovid.class (semester) VALUES ('2023-1');
INSERT INTO preposcovid.class (semester) VALUES ('2023-2');

INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (1,'2019-2','1.00,1.00,0.00,1.00,1.00,1.00,1.00,1.00,1.00,1.00,0.00,1.00,1.00,1.00,0.00,1.00,1.00,1.00,0.00,0.00,0.00,1.00,1.00,1.00,1.00,1.00,1.00,1.00,1.00,1.00,0.00,0.00,0.00,1.00,0.00,1.00');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (1,'2022-1','0.00,1.00,1.00,1.00,0.00,0.00,1.00,0.00,1.00,1.00,1.00,1.00,0.00,1.00,0.00,1.00,1.00,1.00,1.00,1.00,1.00,0.00,1.00,0.00,1.00,1.00,0.00,0.00,1.00,1.00,0.00,1.00,1.00,1.00,1.00,1.00,1.00,0.00,0.00,1.00');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (1,'2022-2','0.00,1.00,0.00,1.00,1.00,1.00,1.00,0.00,0.00,0.00,0.00,1.00,1.00,1.00,1.00,1.00,1.00,0.00,1.00,1.00,1.00,0.00,0.00,1.00,1.00,1.00,1.00,0.00,0.00,1.00,1.00,1.00,1.00,1.00,0.00,1.00,0.00,1.00,0.00,1.00');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (1,'2023-2','0,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,1,0,1,1,0,1,0,1,1,1,1,1,0,1,1,1,1,1');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (2,'2019-2','0,1,0,1,1,0,0,1,1,1,0,0,0,0,1,1,0,1,1,1,0,0,0,0,0,1,1,0,1,1,0,1,1,1,1,0');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (2,'2022-1','0,1,0,1,0,0,0,1,0,0,1,0,0,0,0,1,1,1,1,0,1,1,1,1,1,1,1,0,1,1,1,1,0,1,1,1,1,0,0,1');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (2,'2022-2','0,1,1,0,0,1,0,0,0,0,0,0,1,0,0,0,1,0,0,1,1,0,0,1,1,1,1,1,1,1,1,0,0,1,0,1,0,1,1,0');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (2,'2023-2','0,0,1,1,0,0,0,1,0,0,1,0,0,1,0,1,1,0,0,1,0,1,1,1,0,1,0,0,0,0,1,1,1,0,0,0,0,0,1,0');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (3,'2019-1','0.625,1,0,0.75,1,0.25,0.5,0.75,0.25,1,0,0,1,0.5,1,1,0.75,0.375,0,1,1,0,0,0,0.375,1,0,0.5,0.75,1,0.75,0.875,1,0.75,0.5');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (3,'2023-1','0.625,0.5,0,1,1,1,0.25,1,0.75,1,0.25,1,0,0.875,1,1,0.625,0.75,1,0,0.625,0,0,1,1,0,1,1,1,0.375,0,0.625,0.75,0.25,1,0.625,0,0.75,0,0.75,0.375,1,1,1,1');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (4,'2019-1','1,0.75,0.75,1,1,1,0.75,1,1,0.75,0.75,1,0.75,0.25,1,0.75,0.75,0.75,0.5,0.5,1,1,0.75,0.75,0.75,0.75,0.625,1,1,0.75,1,0.75,1,0.75,0.75');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (4,'2023-1','0.75,1,1,0.75,0.75,0.75,1,0.75,1,0.075,1,1,1,0.75,0.75,0.75,0.75,0.75,0.75,0.75,1,0.75,0.5,1,0.75,0.25,0.25,1,0.75,0.75,0.75,1,0.75,1,0.75,0.75,0.75,0.75,0.75,1,0.75,0.75,0.75,0.25,0.75');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (5,'2019-1','1,1,0.835,1,0.835,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0.835,1,1,0.665,1,1,1,1,0.665,1,0.5,1,1,0.835,1,1');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (5,'2023-2','1,1,1,1,1,1,1,0.67,1,1,0.835,1,1,1,1,0.67,0.67,1,1,1,0.67,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0.67,1,1,1,1');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (6,'2019-2','0.3333333333,0.5,0.3333333333,0.1666666667,0.5,0.6666666667,0.6666666667,0.6666666667,0.5,0.3333333333,0.6666666667,0.3333333333,0.6666666667,0.8333333333,0.3333333333,0.5,0.3333333333,0.3333333333,0.3333333333,0.3333333333,0.8333333333,0.8333333333,0.5,0.5,0.3333333333,0.5,0.9166666667,0.1666666667,0.8333333333,0.5,0.1666666667,0.8333333333,0.3333333333,0.9166666667,0.3333333333,0.8333333333');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (6,'2022-1','0,0.8333333333,0.6666666667,0.8333333333,0.8333333333,0.6666666667,0.5,0.6666666667,0.6666666667,0.6666666667,0.8333333333,0.8333333333,0.6666666667,1,0.8333333333,0.6666666667,0.8333333333,0.8333333333,0.8333333333,1,0.5,0.6666666667,0.8333333333,0.6666666667,1,0.8333333333,0.8333333333,0.6666666667,0.8333333333,0.6666666667,0.6666666667,0.8333333333,0.8333333333,1,1,0.6666666667,0.8333333333,0.6666666667,1,0.6666666667');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (6,'2022-2','0.5,1,1,0.75,0.75,0.75,0.875,0.75,0.875,0.625,0.5,0.75,0.75,0.75,0.625,0.5,0.625,0.5,0.5,0.75,0.75,0.75,0.875,0.5,0.375,0.375,1,0.5,0.75,0.5,1,0.75,1,0.75,0.375,0.375,0.5,0.625,0.5,0.75');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (7,'2022-1','0,1,1,1,1,0,0,1,1,1,1,1,1,0,1,1,1,1,0,0,1,1,1,1,1,1,0,1,1,1,0,1,1,1,1,0,0,1,1,1');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (7,'2022-2','0,1,1,1,1,0.5,0.75,1,1,0.5,0.5,1,1,0,0.5,1,0.5,0,1,1,1,0.5,1,1,0.5,1,1,1,1,0,1,1,1,1,0,1,1,1,1,0');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (8,'2019-1','1,1,0,1,1,1,0,1,0,1,1,1,1,0,0,1,1,0,1,1,1,0,0,1,1,1,0.5,1,0,1,1,1,0,1,0');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (8,'2023-2','0,1,1,0,0,0,0,1,0,1,1,1,1,1,0,1,0,1,1,1,1,0,1,1,1,0.5,0,1,0,0,1,1,1,0,1,1,1,0,1,0');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (9,'2019-1','0.00,1.00,0.00,1.00,1.00,1.00,1.00,1.00,0.00,1.00,0.00,1.00,1.00,0.00,1.00,1.00,0.00,1.00,0.00,1.00,1.00,1.00,1.00,0.00,1.00,1.00,1.00,1.00,1.00,0.63,1.00,1.00,1.00,1.00,0.00');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (9,'2023-1','1.00,1.00,1.00,1.00,1.00,1.00,1.00,1.00,1.00,1.00,0.00,1.00,1.00,1.00,1.00,1.00,0.00,1.00,1.00,1.00,1.00,0.00,1.00,1.00,1.00,1.00,1.00,1.00,1.00,1.00,0.00,1.00,1.00,1.00,1.00,1.00,1.00,1.00,1.00,1.00,0.00,1.00,1.00,1.00,1.00');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (10,'2019-2','0.00,0.00,0.00,1.00,0.00,0.00,0.00,0.00,1.00,1.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,1.00,0.00,0.00,1.00,0.00,1.00,0.00,1.00,1.00,0.00,0.00,0.00,0.00,1.00,0.00');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (10,'2022-1','0.00,1.00,0.00,0.50,1.00,1.00,1.00,1.00,1.00,1.00,1.00,1.00,1.00,0.00,1.00,1.00,0.00,0.00,1.00,1.00,0.00,1.00,1.00,1.00,0.00,0.00,1.00,0.00,1.00,1.00,1.00,0.00,0.00,0.00,1.00,1.00,1.00,1.00,1.00,1.00');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (10,'2022-2','1.00,0.00,1.00,0.00,1.00,0.00,1.00,0.00,1.00,1.00,1.00,0.00,1.00,0.00,1.00,0.00,1.00,1.00,1.00,0.00,1.00,1.00,1.00,1.00,1.00,1.00,0.00,1.00,1.00,1.00,1.00,1.00,1.00,1.00,1.00,1.00,0.00,0.00,1.00,1.00');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (11,'2019-2','1.00,1.00,1.00,0.80,1.00,0.80,0.80,1.00,0.80,0.90,0.90,0.70,0.90,1.00,0.90,1.00,0.80,0.80,0.90,0.70,0.40,0.80,0.80,0.70,0.90,1.00,1.00,1.00,0.70,0.80,0.80,0.90,0.40,1.00,0.90,0.80');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (11,'2022-1','0.56,0.89,0.67,1.00,0.89,0.67,0.67,0.89,0.78,0.78,1.00,0.67,0.78,0.78,0.78,0.78,0.67,0.56,0.78,0.78,0.78,0.89,0.89,0.78,0.67,0.89,0.78,0.56,0.78,1.00,0.56,0.78,0.78,0.89,0.67,0.67,0.67,0.78,0.78,0.67');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (11,'2022-2','0.67,0.90,1.00,0.90,0.90,0.90,0.67,0.80,0.67,0.90,0.80,0.80,0.80,0.67,0.80,0.80,0.90,0.67,0.90,0.80,0.80,0.80,0.80,0.80,0.90,0.57,0.80,1.00,0.80,0.90,0.90,0.67,1.00,0.90,0.90,0.80,0.80,0.90,0.90,0.80');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (12,'2019-2','1.00,0.75,0.25,0.75,1.00,1.00,1.00,1.00,1.00,0.75,1.00,0.75,0.75,0.50,0.75,1.00,0.75,0.75,1.00,1.00,1.00,1.00,0.75,0.50,0.75,1.00,1.00,0.75,0.75,0.25,1.00,0.75,0.75,0.75,1.00,1.00');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (12,'2022-1','1.00,0.50,1.00,1.00,1.00,0.75,0.50,1.00,1.00,0.50,1.00,0.50,0.50,0.75,0.50,0.75,0.50,0.75,0.75');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (12,'2022-2','0.75,1.00,0.75,1.00,1.00,0.50,1.20,0.50,0.50,0.50,0.50,0.75,1.00,0.75,0.75,1.00,1.00,0.75,0.00,0.75,1.00,0.50,0.75,0.75,0.50,1.00,1.00,0.50,0.50,0.50,0.75,1.00,1.00,0.75,0.50,0.50,0.50,0.75,1.00,0.50');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (12,'2023-2','1.00,1.00,0.75,0.75,1.00,1.00,0.50,0.75,1.00,0.75,1.00,1.00,0.75,0.75,0.75,0.25,1.00,1.00,0.50,1.00,0.75,1.00,0.50,0.75,1.00,1.00,0.75,0.75,0.50,1.00,1.00,0.75,0.75,1.00,1.00,1.00,0.75,0.75,1.00,1.00');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (13,'2019-2','0.88,0.44,0.50,0.88,0.94,0.75,0.94,0.88,0.13,0.81,0.38,0.63,0.44,0.75,0.63,0.94,0.13,1.00,0.50,0.38,0.81,0.31,0.88,0.69,0.88,0.38,1.00,0.69,0.75,0.75,0.75,0.75,0.38,0.94,0.75,0.38');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (13,'2023-2','0.63,1.00,0.81,0.94,0.88,0.88,0.75,0.38,0.94,0.69,1.00,0.50,0.88,0.69,0.88,0.44,0.88,0.94,0.44,0.88,0.88,1.00,0.50,0.81,0.94,0.75,0.75,1.00,0.75,0.88,0.75,0.88,0.94,0.75,0.94,0.63,0.94,0.75,1.00,0.94');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (14,'2019-1','0.75,0.50,0.25,0.50,1.00,0.25,1.00,0.50,0.75,0.75,0.00,0.50,0.50,0.25,0.50,0.50,0.50,0.50,0.50,0.75,0.00,0.50,0.00,0.00,0.00,0.75,0.75,0.75,0.75,1.00,0.75,0.00,0.75,0.75,0.25');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (14,'2022-2','0.42,0.67,0.58,0.42,0.42,0.17,0.83,0.42,0.42,0.58,0.17,0.67,0.17,0.17,0.17,0.42,0.42,0.17,0.67,0.17,0.58,0.58,0.58,0.75,0.00,0.33,0.58,0.17,0.50,0.17,0.17,0.75,0.75,0.58,0.17,0.42,0.00,0.42,0.42,0.33');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (15,'2019-2','0.88,0.88,0.50,1.00,0.50,0.50,0.63,0.63,1.00,0.88,0.50,0.63,0.63,0.38,0.75,0.88,0.25,0.50,0.63,0.38,0.38,0.38,0.50,0.38,0.38,0.63,0.88,0.63,0.75,0.38,0.50,0.63,0.25,0.38,0.38,0.75');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (15,'2022-1','0.75,0.38,1.00,0.50,0.50,0.63,0.75,0.63,1.00,0.50,1.00,0.25,0.63,0.38,1.00,0.75,0.38,1.00,0.38');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (15,'2022-2','0.25,0.25,0.25,0.25,0.25,0.50,0.50,0.58,0.17,0.42,0.33,0.08,0.17,0.42,0.25,0.50,0.50,0.33,0.33,0.25,0.17,0.33,0.67,0.17,0.33,0.33,0.67,0.33,0.25,0.42,0.50,0.25,0.17,1.00,0.25,0.25,0.25,0.25,0.42,0.08,0.58,0.25');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (15,'2023-2','0.50,0.88,0.38,0.50,0.25,1.00,0.38,0.25,0.63,0.38,0.50,0.75,0.38,0.38,0.63,0.50,0.63,0.25,0.50,0.38,0.50,0.50,0.50,0.38,0.50,0.38,0.63,0.50,0.75,1.00,0.38,0.38,0.38,0.63,0.38,0.75,0.63,0.63');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (16,'2019-2','0.75,0.92,0.33,0.83,0.92,0.33,1.00,0.33,0.58,0.67,0.67,0.83,0.42,0.67,0.67,0.67,0.67,0.75,0.67,0.75,0.67,0.50,0.17,0.67,0.75,0.83,1.00,0.75,1.00,0.75,0.67,0.92,0.67,1.00,0.75,0.92');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (16,'2023-2','0.67,0.92,0.75,0.83,1.00,0.83,0.33,0.00,0.92,0.83,1.00,0.00,0.58,0.83,0.58,0.83,0.92,0.33,0.83,0.75,0.67,0.75,0.58,0.58,0.67,0.75,0.67,0.75,0.92,1.00,1.00,0.92,0.83,0.92,0.17,0.58,0.92,0.67');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (17,'2019-1','0.88,1.00,0.88,1.00,0.88,0.88,1.00,0.88,0.75,1.00,0.88,0.88,1.00,0.63,0.88,0.88,0.88,0.50,0.75,0.88,1.00,0.88,1.00,0.88,0.88,1.00,1.00,1.00,1.00,0.88,0.88,0.88,0.63,0.88,0.75');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (17,'2023-1','0.88,0.75,1.00,1.00,0.88,0.88,1.00,1.00,0.88,1.00,0.88,0.88,0.63,0.88,1.00,1.00,0.75,0.88,1.00,1.00,1.00,0.88,1.00,0.88,0.75,1.00,0.88,1.00,1.00,1.00,0.88,0.88,1.00,0.88,0.88,0.88,0.88,1.00,0.88,0.88,0.88,1.00,1.00,0.75,0.88');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (18,'2019-2','1.00,0.88,0.75,0.75,1.00,0.75,1.00,1.00,0.63,0.63,0.50,1.00,0.88,0.50,0.88,0.75,0.75,1.00,0.75,0.25,0.75,0.63,0.00,0.88,0.75,1.00,1.00,0.88,0.50,0.63,0.88,1.00,0.88,1.00,0.75,0.88');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (18,'2022-1','0.50,0.88,1.00,0.75,0.88,0.88,0.00,0.88,0.63,0.25,1.00,0.25,0.38,0.88,1.00,0.63,0.63,1.00,0.63');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (18,'2022-2','0.33,0.33,0.67,0.67,0.67,1.00,0.83,1.00,1.00,0.83,1.00,1.00,0.83,1.00,0.50,0.83,0.67,0.33,0.83,1.00,0.67,0.83,1.00,0.83,1.00,1.00,1.00,1.00,0.67,1.00,1.00,1.00,1.00,0.83,0.83,0.83,0.50,0.83,1.00,0.83,1.00,1.00');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (19,'2019-2','0.67,1.00,0.67,1.00,1.00,0.84,0.84,0.84,0.67,0.67,1.00,1.00,1.00,0.67,0.34,0.67,0.67,1.00,0.50,0.50,0.67,0.50,0.17,1.00,1.00,1.00,0.84,1.00,1.00,0.84,0.84,1.00,0.67,0.84,0.67,0.50');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (19,'2022-1','0.70,0.85,0.85,0.35,0.85,1.00,0.85,0.85,0.85,0.70,1.00,0.70,0.85,0.35,0.70,0.70,0.85,1.00,1.00');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (19,'2022-2','0.85,1.00,0.85,1.00,0.70,1.00,1.00,1.00,0.70,1.00,0.70,0.85,0.70,1.00,0.70,0.50,1.00,0.70,0.85,0.35,0.85,1.00,0.85,0.85,0.50,1.00,1.00,1.00,1.00,1.00,0.85,1.00,1.00,1.00,0.85,0.70,0.65,0.85,0.85,0.35,0.85,1.00');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (19,'2023-2','0.34,1.00,0.50,0.84,0.84,0.68,0.50,0.34,0.68,1.00,1.00,0.34,0.68,0.50,0.68,0.50,0.84,1.00,0.50,1.00,0.68,1.00,0.68,1.00,0.50,1.00,1.00,0.34,1.00,1.00,0.84,0.68,0.84,1.00,0.34,0.50,0.68,0.84');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (20,'2019-2','0.00,0.00,0.00,1.00,1.00,1.00,1.00,0.50,0.00,1.00,0.00,1.00,0.00,1.00,0.00,0.50,0.00,0.00,0.00,0.00,1.00,1.00,1.00,0.00,1.00,0.00,1.00,0.00,1.00,0.00,1.00,1.00,0.50,1.00,1.00,0.00');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (20,'2022-1','1.00,1.00,1.00,0.00,0.00,1.00,0.00,1.00,0.00,1.00,0.00,0.00,0.00,1.00,1.00,0.00,0.00,1.00,0.00');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (20,'2022-2','1.00,1.00,1.00,1.00,1.00,0.00,0.00,1.00,1.00,1.00,0.00,1.00,1.00,0.00,0.00,1.00,0.00,1.00,1.00,0.00,1.00,1.00,1.00,1.00,0.00,1.00,1.00,0.00,1.00,1.00,1.00,1.00,1.00,1.00,1.00,1.00,0.00,1.00,1.00,1.00,1.00,0.00');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (21,'2019-1','1.00,0.00,1.00,1.00,1.00,0.00,1.00,1.00,1.00,1.00,0.00,1.00,0.00,1.00,1.00,1.00,0.00,1.00,1.00,1.00,1.00,1.00,0.00,0.00,1.00,0.00,1.00,1.00,1.00');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (21,'2023-2','1.00,1.00,0.50,1.00,1.00,0.00,0.00,1.00,0.50,1.00,1.00,1.00,0.00,1.00,0.00,0.00,0.50,0.50,1.00,1.00,1.00,1.00,0.00,1.00,0.00,1.00,1.00,1.00,1.00,1.00,1.00,1.00,0.00,0.00,0.00,0.00,1.00,0.00');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (22,'2019-2','1.00,0.70,0.40,1.00,0.90,0.90,0.80,1.00,0.60,0.80,0.60,1.00,0.60,0.60,0.90,1.00,0.70,1.00,0.50,0.90,0.80,0.80,0.30,0.70,1.00,0.70,1.00,0.70,0.90,1.00,0.90,1.00,0.70,0.90,0.80,0.90');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (22,'2022-1','1.00,0.70,1.00,0.45,0.95,1.00,0.45,1.00,0.70,0.75,1.00,0.50,0.45,0.95,0.25,0.70,0.50,1.00,0.65');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (22,'2022-2','0.75,0.40,1.00,1.00,0.90,0.65,0.85,0.70,0.90,1.00,0.40,0.85,0.80,0.95,0.90,0.80,0.95,0.75,0.95,0.55,0.65,0.90,0.85,0.85,0.55,0.80,1.00,0.90,0.95,0.80,0.75,1.00,1.00,0.85,0.80,0.85,0.80,0.60,0.95,0.65,1.00,0.85');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (23,'2019-1','1.00,0.50,0.67,0.67,0.50,0.67,1.00,0.50,1.00,0.25,0.67,1.00,0.17,0.67,0.00,1.00,1.00,0.50,0.67,0.67,0.50,1.00,1.00,1.00,0.17,1.00,0.67,1.00,1.00');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (23,'2023-1','0.50,0.67,1.00,1.00,1.00,0.67,1.00,0.84,0.67,1.00,0.84,0.34,0.67,1.00,1.00,1.00,0.50,0.84,0.67,1.00,0.50,0.67,0.84,1.00,0.67,1.00,0.67,1.00,1.00,1.00,0.84,0.67,1.00,1.00,0.50,1.00,0.67,1.00,0.84,1.00,0.84,1.00,1.00,1.00,1.00');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (24,'2019-2','0.88,0.75,0.50,1.00,1.00,0.88,0.88,0.88,0.25,1.00,0.25,0.88,0.75,0.88,0.25,0.88,0.38,0.88,1.00,0.00,0.63,0.63,0.00,0.00,0.88,0.00,0.63,0.00,0.88,0.88,0.88,0.88,0.00,0.88,0.00,0.00');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (24,'2022-1','0.25,1.00,0.75,0.25,0.75,1.00,0.75,1.00,0.63,0.00,0.88,0.25,0.25,0.63,0.25,1.00,0.00,1.00,0.00');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (24,'2023-1','0.00,0.33,0.00,0.67,0.00,0.50,1.00,0.00,0.58,1.00,1.00,0.00,0.67,1.00,1.00,0.83,0.00,0.00,1.00,1.00,0.83,0.67,1.00,0.00,0.75,1.00,0.33,0.67,0.50,1.00,0.33,0.83,1.00,1.00,1.00,0.50,0.00,0.00,0.50,0.83,0.00,1.00,1.00,0.67,0.00');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (25,'2019-2','0.00,0.63,0.33,0.00,0.67,0.00,0.47,0.60,0.60,0.47,0.60,0.00,0.00,0.00,0.20,0.63,0.25,0.00,0.47,0.00,0.43,0.67,0.00,0.67,0.63,0.00,0.50,0.37,0.00');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (25,'2022-1','0.67,0.50,0.67,0.50,0.83,0.83,0.17,0.83,0.33,0.17,0.83,0.50,0.33,0.00,0.67,1.00,0.00,1.00,0.33');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (25,'2022-2','0.92,0.17,0.83,0.83,1.00,0.50,0.33,0.50,0.50,0.67,0.17,0.50,0.17,0.33,0.17,0.67,0.33,0.33,0.83,0.17,0.33,0.67,0.83,0.67,0.00,0.17,1.00,0.17,0.33,0.17,0.17,0.33,0.83,1.00,0.33,0.50,0.67,0.00,0.67,0.00,1.00,0.50');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (25,'2023-1','0.58,0.17,0.50,0.67,0.00,0.25,0.83,0.75,0.75,1.00,0.83,0.75,0.75,0.75,1.00,0.75,0.00,0.00,0.58,0.75,0.00,0.83,0.00,0.42,0.00,1.00,0.00,0.83,0.33,0.75,0.17,0.83,0.00,0.75,0.25,0.50,0.17,0.67,0.42,0.25,0.42,0.83,1.00,0.58,0.25');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (26,'2019-1','0.67,0.63,0.67,0.00,0.25,0.57,0.60,0.33,0.63,0.00,0.67,0.67,0.00,0.50,0.40,0.67,0.33,0.67,0.00,0.50,0.67,0.67,0.67,0.63,0.23,0.33,0.58,0.55,0.67');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (26,'2022-2','0.17,0.67,0.50,0.17,0.50,0.67,0.50,0.67,0.42,0.00,0.58,0.17,0.17,0.42,0.17,0.67,0.00,0.67,0.00');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (27,'2019-1','0.75,0.63,1.00,0.63,0.63,0.63,0.88,1.00,1.00,0.50,1.00,0.38,0.00,0.88,0.75,0.63,1.00,0.75,1.00,0.06,0.63,1.00,0.75,0.50,0.75,0.31,1.00,0.75,1.00');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (27,'2022-2','0.13,0.88,0.63,0.50,1.00,1.00,0.25,0.75,0.63,0.63,0.13,0.75,0.50,0.63,0.75,0.63,0.88,0.75,0.88,0.63,0.50,0.50,0.75,0.13,1.00,0.38,0.50,0.88,0.38,0.38,0.88,0.38,0.88,0.75,0.25,0.75,1.00,0.75');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (27,'2023-2','0.50,0.00,0.63,1.00,1.00,0.50,1.00,0.25,1.00,1.00,0.63,1.00,0.88,0.25,0.38,0.50,0.00,0.38,0.50,0.75,1.00,0.75,1.00,0.50,0.38,0.25,0.38,0.50,0.88,0.88,0.75,0.75,0.75,0.75,0.38,0.50,0.88,0.88');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (28,'2022-2','0.25,1.00,0.50,0.50,0.50,0.50,0.00,0.50,0.75,1.00,0.75,1.00,0.75,0.75,0.50,0.75,1.00,0.75,0.50,0.25,1.00,0.75,0.75,0.00,1.00,1.00,1.00,1.00,0.25,0.75,0.75,0.00,1.00,0.75,0.00,1.00,1.00,1.00');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (28,'2023-2','0.75,0.25,0.75,1.50,1.25,1.13,1.13,0.50,1.38,1.50,1.50,1.13,1.50,1.25,1.13,1.00,0.00,1.00,1.13,1.50,0.75,1.13,1.13,1.50,1.50,1.25,1.13,1.13,1.25,1.13,1.25,1.50,0.75,1.25,0.00,1.25,1.25,1.50');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (29,'2019-1','0.88,0.65,0.95,0.45,0.50,0.65,0.75,0.75,0.88,0.30,0.25,1.00,0.65,0.45,0.25,0.85,0.88,1.00,0.25,0.25,0.60,1.00,0.50,0.25,0.60,0.85,0.75,0.60,0.50');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (29,'2022-1','0.63,1.00,0.75,0.75,1.00,0.75,1.00,0.75,0.75,1.00,0.63,0.75,0.75,0.75,0.63,0.75,0.63,0.75,1.00,1.00,0.63,1.00,0.50,0.75,0.75,1.00,0.63,0.88,1.00,0.75,0.63,0.50,0.75,0.75,0.88,0.75,1.00,1.00,0.63,1.00,0.75,0.38,0.75,0.75,1.00,0.50,0.63,1.00,0.75,1.00,0.88');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (29,'2023-1','0.92,1.00,1.00,0.83,0.67,1.00,0.58,1.00,0.67,1.00,0.67,0.83,0.67,1.00,0.92,1.00,0.58,0.58,0.67,1.00,0.67,0.67,0.83,1.00,1.00,0.58,0.67,1.00,0.67,0.92,1.00,0.67,0.50,1.00,0.67,0.83,0.67,0.50,0.50,1.00,1.00,0.58,1.00');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (30,'2019-2','0.90,0.80,0.80,0.90,0.40,0.70,0.30,0.50,0.30,0.30,1.00,0.30,0.80,1.00,0.60,0.70,0.60,0.80,0.60,0.60,0.30,0.50,0.70,0.50,0.60,1.00,0.50,0.60,0.20,1.00,0.80,0.80,0.60,0.50');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (30,'2022-1','0.38,0.38,0.13,0.50,1.00,1.00,0.88,0.88,0.63,0.75,0.38,0.38,0.75,0.63,0.75,0.63,0.88,0.25,0.50,0.63,0.63,0.75,0.00,0.63,0.88,1.00,0.75,0.50,1.00,0.88,0.50,0.25,0.38,0.88,0.63,0.88,0.88,0.50,0.75,0.25,0.63,0.63,0.88,0.38,0.38,0.25,0.25,0.50,0.00,0.88,0.88');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (30,'2023-1','0.63,0.75,1.00,1.00,0.75,1.00,0.75,1.00,0.88,1.00,0.75,1.00,1.00,1.00,0.63,0.50,1.00,0.63,0.50,1.00,0.50,1.00,0.13,1.00,0.88,0.25,1.00,0.50,1.00,0.25,0.50,0.63,0.50,0.25,1.00,0.50,0.88,0.13,0.63,1.00,0.88,1.00,0.88');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (31,'2019-2','1.00,0.00,1.00,1.00,0.00,1.00,0.00,1.00,1.00,0.00,0.00,1.00,1.00,0.00,0.00,1.00,0.00,1.00,1.00,0.00,1.00,0.00,0.00,1.00,0.00,1.00,0.00,0.00,0.00,1.00,0.50,1.00,1.00,1.00');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (31,'2022-1','0.00,0.00,0.00,1.00,1.00,1.00,1.00,1.00,0.00,1.00,0.00,1.00,0.00,1.00,1.00,1.00,1.00,0.00,0.00,1.00,0.00,1.00,0.00,1.00,1.00,0.00,1.00,0.00,1.00,1.00,0.00,0.00,0.00,0.00,1.00,1.00,1.00,1.00,1.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,1.00,1.00');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (31,'2022-2','1.00,1.00,0.00,1.00,1.00,1.00,0.00,1.00,0.00,1.00,0.00,1.00,0.00,1.00,1.00,0.00,1.00,0.00,0.00,1.00,1.00,0.00,0.00,1.00,0.00,1.00,0.00,1.00,1.00,1.00,0.00,0.00,0.00,0.00,1.00,0.00,1.00,1.00');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (31,'2023-2','1.00,0.00,0.00,1.00,1.00,0.00,0.00,0.00,0.00,0.00,0.00,1.00,1.00,0.00,0.00,1.00,0.00,1.00,1.00,1.00,0.00,0.00,1.00,0.00,1.00,1.00,0.00,1.00,1.00,1.00,1.00,1.00,1.00,1.00,0.00,1.00,1.00,1.00');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (32,'2019-1','0.00,0.95,0.50,0.00,1.00,0.00,0.70,0.90,0.90,0.70,0.90,0.00,0.00,0.00,0.30,0.95,0.38,0.00,0.70,0.00,0.65,1.00,0.00,1.00,0.95,0.00,0.75,0.55,0.00');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (32,'2023-1','0.00,0.33,0.50,0.83,0.17,0.67,0.33,0.50,0.17,0.33,0.00,0.00,0.17,0.00,0.33,0.92,0.17,0.33,0.00,0.00,0.00,0.00,0.50,0.50,0.67,0.00,0.17,0.58,0.50,0.58,0.00,0.00,0.33,0.17,0.00,0.17,0.00,0.00,0.17,0.58,0.00,0.83,0.58');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (33,'2019-2','0.63,0.58,0.58,0.67,0.62,0.88,0.75,0.55,0.70,0.63,0.97,0.63,0.83,0.97,0.87,0.58,0.68,0.80,0.97,0.85,0.65,0.63,0.72,0.90,0.63,1.00,0.63,0.75,0.50,0.80,0.93,0.97,0.72,0.97');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (33,'2022-1','0.33,0.92,0.33,0.50,0.50,0.92,0.50,0.50,0.50,0.58,0.33,0.83,0.00,0.33,0.00,0.83,0.50,0.67,0.83,0.25,0.50,0.92,0.50,0.67,1.00,0.50,0.50,0.33,1.00,0.33,0.00,0.25,0.50,0.50,0.67,0.33,0.50,0.33,0.50,0.33,0.33,0.33,0.67,0.50,0.83,0.25,0.33,0.00,0.00,0.50,0.67');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (34,'2022-1','0.00,0.83,0.17,0.33,0.67,0.50,0.50,1.00,0.25,0.50,0.33,0.17,1.00,0.17,0.33,0.50,0.33,0.50,0.17,0.67,0.33,0.83,0.25,0.33,0.33,0.00,0.67,0.67,0.83,0.25,0.83,0.17,0.33,0.25,0.83,0.33,0.50,0.25,0.50,0.17,0.50,0.67,0.67,0.33,0.50,0.50,0.17,0.83,0.25,0.00,0.67');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (34,'2023-1','0.83,0.83,0.67,0.83,0.67,1.00,0.67,0.50,0.83,0.83,0.50,0.50,0.67,1.00,0.83,0.67,0.25,0.67,0.42,0.83,0.83,0.83,0.50,0.83,1.00,0.75,0.83,1.00,0.83,0.83,0.83,0.83,0.83,0.58,0.67,0.83,0.50,0.50,0.33,1.00,0.67,0.67,0.67');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (35,'2022-1','0.00,0.17,0.17,0.17,1.00,0.00,1.00,0.33,0.33,1.00,0.00,0.00,0.17,0.00,0.17,0.33,0.17,0.33,0.33,1.00,0.00,1.00,0.17,0.17,0.33,0.00,0.00,0.33,1.00,0.17,1.00,0.17,0.33,0.17,0.17,0.33,0.17,1.00,0.17,0.33,0.33,0.33,0.33,0.17,1.00,0.17,0.33,1.00,0.17,0.00,0.17');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (35,'2023-1','1.00,0.60,1.00,1.00,0.60,1.00,0.20,0.60,1.00,1.00,1.00,1.00,1.00,1.00,1.00,0.60,1.00,1.00,1.00,1.00,1.00,1.00,0.60,0.60,1.00,0.60,1.00,1.00,1.00,0.60,1.00,0.60,1.00,1.00,0.60,1.00,1.00,0.00,1.00,1.00,1.00,0.20,0.20');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (36,'2019-2','0.83,0.17,0.17,0.17,0.17,0.33,0.33,0.33,0.33,0.17,0.00,0.17,0.00,0.00,0.17,0.00,0.17,0.17,0.17,0.17,0.17,0.00,0.17,0.00,0.17,0.33,0.00,0.00,0.00,1.00,0.33,1.00,0.17,0.00');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (36,'2022-1','0.00,0.17,0.17,0.17,0.83,0.00,0.67,1.00,0.17,0.33,0.17,0.33,0.00,0.00,0.00,0.00,0.00,0.17,0.17,0.00,0.17,0.00,0.17,0.00,0.17,0.00,0.17,0.17,0.67,0.17,0.00,0.17,0.17,0.17,0.17,0.00,0.17,0.17,0.17,0.17,0.00,0.67,0.00,0.17,0.17,0.17,0.17,0.00,0.00,1.00,0.00');
INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) VALUES (36,'2022-2','0.25,1.00,0.00,0.00,0.25,0.25,0.00,0.00,0.25,0.75,0.25,0.25,0.25,0.00,0.00,0.50,1.00,0.00,0.75,0.25,0.00,0.50,0.25,0.25,0.88,0.00,0.25,0.25,0.25,0.00,1.00,0.00,0.25,0.00,0.00,0.25,1.00,0.88');