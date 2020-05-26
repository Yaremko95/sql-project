/*Views*/
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