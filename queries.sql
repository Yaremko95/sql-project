
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