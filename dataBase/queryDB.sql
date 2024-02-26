INSERT INTO preposcovid.question(id_question, topic, dificult, multiple_choice) VALUES (1, 'SE Introduction', 0, false);

INSERT INTO preposcovid.class (semester) VALUES ('2019-1');
INSERT INTO preposcovid.class (semester) VALUES ('2019-2');

INSERT INTO preposcovid.todo (id_questionFK, semesterFK, grades) 
VALUES (1,'2019-2','1.00,1.00,0.00,1.00,1.00,1.00,1.00,1.00,1.00,1.00,0.00,1.00,1.00,1.00,0.00,1.00,1.00,1.00,0.00,0.00,0.00,1.00,
1.00,1.00,1.00,1.00,1.00,1.00,1.00,1.00,0.00,0.00,0.00,1.00,0.00,1.00');
