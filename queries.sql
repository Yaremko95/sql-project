/*Views*/
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