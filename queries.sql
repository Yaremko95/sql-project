/*Views*/
<<<<<<< Updated upstream
<<<<<<< Updated upstream
<<<<<<< Updated upstream
    /*Best students of specialities*/
CREATE VIEW bestSpeStu AS SELECT s.nameSt, s.surname, spe.namespe FROM student s, subject_student SuSt, 
                                                                       planSubject pS, specialityPlan sP, 
                                                                       speciality spe                       WHERE s.dni = SuSt.dniStud
                                                                                            AND SuSt.codeSub = pS.codeSub 
                                                                                            AND pS.codePlan = sP.codePlan
                                                                                            AND sP.codeSpe = spe.code //
                                                                                            AND SuSt.codeSub IN ( SELECT ss1.codeSub FROM subject_student ss1 WHERE ss1.grade >= (SELECT grade FROM subject_student WHERE 
                                                                                                                                                                                                           ss1.dniStud = dniStud));
                                                                                            AND s.dni IN ( SELECT ss.dniStud FROM subject_student ss WHERE s.dni = ss.dniStud
                                                                                                                               AND ss.grade >= (SELECT MAX(grade) FROM subject_student WHERE ss.dniStud != dniStud));
                                                                                                                        
=======
=======


=======
    /*Students with biggest avg grade*/
SELECT nameSt, surname, nameSpe FROM student st, st_group sg, specialityPlan sp, speciality s  WHERE st.codeGroup = sg.code
                                                                                               AND sg.codePlan = sp.codePlan
                                                                                               AND sp.codeSpe = s.code
                                                                                               AND dni IN (SELECT dniStud FROM subject_student WHERE st.dni = dniCode
                                                                                                                                               GROUP BY dniStud
                                                                                                                                               HAVING AVG(grade) >= (SELECT AVG(grade) FROM subject_student WHERE st.dni != dniCode
                                                                                                                                                                                                           GROUP BY dniStud));
    /**/                                                                                                                                                                                                       
>>>>>>> Stashed changes
/*Select*/
    /*Select all info about studients, who taking subjects, that insist only in one study plan (unique suject, in other words)*/
SELECT * from student WHERE dni IN ( SELECT dniStud FROM subject_student s WHERE codeSub IN ( SELECT DISTINCT(codeSub) FROM planSubject GROUP BY codeSub
                                                                                                                              HAVING COUNT(DISTINCT codePlan) = 1))
                      ORDER BY codeGroup;
    /*Select name of Speciality that have at least one gorup and number of students more then 5 (counting all group)*/
SELECT nameSpe FROM speciality WHERE code IN ( SELECT codeSpe FROM specialityPlan sp WHERE codePlan IN ( SELECT codePlan FROM st_group GROUP BY codePlan HAVING COUNT(code) >= 1));


/*Insert*/
    /*Insert into planSubject only for FRIRST codePlan that have only 2 subject that FRIST subjects, that have grades less 5*/
INSERT INTO planSubject VALUES ((SELECT codePlan FROM planSubject WHERE ROWNUM <=2
                                                                  GROUP BY codePlan
                                                                  HAVING COUNT(codeSub) = 2), (SELECT codeSub FROM subject_student WHERE ROWNUM <=2
                                                                                                                                   GROUP BY codeSub
                                                                                                                                   HAVING MIN(grade) < 5), 0, 0, 0, 0, 'T');
     /*Inset into st_group new group with study plan. This study plan must have at least 3 subject*/                                                                                                                                  
INSERT INTO st_group SELECT NULL, codePlan FROM planSubject GROUP BY codePlan
                                                            HAVING COUNT(codeSub) > 2;
     /*Insert new student in group with Proggraming study plan and in group, where is at least 1 student of 3 year of study*/                                                          
INSERT INTO student VALUES (NULL, (SELECT code FROM st_group st
                                                    WHERE codePlan IN (SELECT codePlan FROM specialityPlan WHERE codeSpe = 'spe_2')
                                                    AND (SELECT COUNT(dni) FROM student WHERE s.code = codeGroup
                                                                                        AND yearOfStudy = 3) >= 1),'Sarajane', 'Lantoph', '5 Waxwing Drive', 'slantophq@youtube.com', '+970 404 569 7436', 3);     


/*Update*/
    /*Update planSubject where all hours = 0 with random from 1 till 30 and exma = 'T'*/
UPDATE planSubject
SET hoursLecture = DBMS_RANDOM.VALUE (0, 30),
    hoursPractice = DBMS_RANDOM.VALUE (0, 30),
    hoursLabClasses = DBMS_RANDOM.VALUE (0, 30),
    hoursCourseWork = DBMS_RANDOM.VALUE (0, 30),
    kindExam = 'T'
WHERE hoursLecture = 0
AND hoursPractice = 0
AND hoursLabClasses = 0
AND hoursCourseWork = 0;
    /*Update subject_student where grade < 5 and studant study at 'Networking and wireless communication'*/
UPDATE subject_student
SET grade = 0
WHERE grade < 5
AND dniStud IN (SELECT dni FROM student WHERE codeGroup = (SELECT code FROM st_group WHERE codeSpe = 'spe_6'));
    /*Update planSubject where kindExam != 'T' and avareg mark of all students on this speciality is > 5.5. IF so, we set kindExam as 'T'*/
Update planSubject ps
SET kindExam = 'T'
WHERE kindExam != 'P'
AND (SELECT AVG(grade) FROM subject_student 
                       WHERE codeSub IN (SELECT codeSub FROM planSubject 
                                                      WHERE codePlan IN (SELECT codePlan FROM specialityPlan 
                                                                                         WHERE codeSpe = ps.codeSpe))) > 5.5;

/*Delete*/
    /*Delete all students from subject_student, where grade = 0 and kind of Exam for this subject 'P'*/
DELETE FROM subject_student ss
WHERE grade = 0
AND codeSub IN (SELECT codeSub FROM planSubject WHERE kindExam = 'P'
                                                AND codePlan IN (SELECT codePlan FROM st_group 
                                                                                 WHERE code IN (SELECT codeGroup FROM student WHERE dni = ss.dniStud)));
    /*Delete students who don't exist in subject_student and from group 1 till 9 (frist, second.. ninth)*/
DELETE FROM student s
WHERE dni IN (SELECT dniStud FROM subject_student WHERE NOT EXISTS (s.dni))
AND codeGroup LIKE 'gr__';

    /*Delete from planSubject if avg grade all students of this subject is < 3 OR it doesn't exist in subject_student*/
DELETE FROM planSubject ps
WHERE codeSub IN (SELECT codeSub FROM subject_student WHERE AVG(grade) < 3) OR NOT EXISTS (SELECT codeSub FROM subject_students WHERE codeSub = ps.codeSub);
/*                                                                              */
>>>>>>> Stashed changes


/*Select*/
    /*Select all info about studients, who taking subjects, that insist only in one study plan (unique suject, in other words)*/
SELECT * from student WHERE dni IN ( SELECT dniStud FROM subject_student s WHERE codeSub IN ( SELECT DISTINCT(codeSub) FROM planSubject GROUP BY codeSub
                                                                                                                              HAVING COUNT(DISTINCT codePlan) = 1))
                      ORDER BY codeGroup;
    /*Select name of Speciality that have at least one gorup and number of students more then 5 (counting all group)*/
SELECT nameSpe FROM speciality WHERE code IN ( SELECT codeSpe FROM specialityPlan sp WHERE codePlan IN ( SELECT codePlan FROM st_group GROUP BY codePlan HAVING COUNT(code) >= 1));


/*Insert*/
    /*Insert into planSubject only for FRIRST codePlan that have only 2 subject that FRIST subjects, that have grades less 5*/
INSERT INTO planSubject VALUES ((SELECT codePlan FROM planSubject WHERE ROWNUM <=2
                                                                  GROUP BY codePlan
                                                                  HAVING COUNT(codeSub) = 2), (SELECT codeSub FROM subject_student WHERE ROWNUM <=2
                                                                                                                                   GROUP BY codeSub
                                                                                                                                   HAVING MIN(grade) < 5), 0, 0, 0, 0, 'T');
     /*Inset into st_group new group with study plan. This study plan must have at least 3 subject*/                                                                                                                                  
INSERT INTO st_group SELECT NULL, codePlan FROM planSubject GROUP BY codePlan
                                                            HAVING COUNT(codeSub) > 2;
     /*Insert new student in group with Proggraming study plan and in group, where is at least 1 student of 3 year of study*/                                                          
INSERT INTO student VALUES (NULL, (SELECT code FROM st_group st
                                                    WHERE codePlan IN (SELECT codePlan FROM specialityPlan WHERE codeSpe = 'spe_2')
                                                    AND (SELECT COUNT(dni) FROM student WHERE s.code = codeGroup
                                                                                        AND yearOfStudy = 3) >= 1),'Sarajane', 'Lantoph', '5 Waxwing Drive', 'slantophq@youtube.com', '+970 404 569 7436', 3);                                                            
                                                            
>>>>>>> Stashed changes
/*inserts data into subject_students using subquery and generating a random grade*/
INSERT INTO  subject_student (codeSub, dniStud, grade) SELECT ps.codeSub, s.dni, DBMS_RANDOM.VALUE (0, 10)
 FROM planSubject ps, student s WHERE ps.codePlan=
        (SELECT codePlan FROM st_group g WHERE g.code = s.codeGroup);

/*gets the highest average grade for practice exams*/
SELECT MAX(avg)  FROM 
                    (SELECT dniStud, SUM(grade)/COUNT(dniStud) AS avg 
                    FROM subject_student 
                    WHERE codeSub IN(
                                    SELECT codeSub 
                                    FROM planSubject 
                                    WHERE kindExam='P') 
                    GROUP BY dniStud);