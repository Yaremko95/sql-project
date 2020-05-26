
/*inserts data into subject_students using subquery and generating a random grade*/
INSERT INTO  subject_student (codeSub, dniStud, grade) SELECT ps.codeSub, s.dni, DBMS_RANDOM.VALUE (0, 10)
 FROM planSubject ps, student s WHERE ps.codePlan=
        (SELECT codePlan FROM st_group g WHERE g.code = s.codeGroup);

/*inserts into speciality same sapecialities which belong to d_2'*/
    INSERT INTO speciality (code, codeDea, nameSpe) SELECT NULL, 'd_2', nameSpe FROM speciality WHERE codeDea='d_3';


/*inserts into PlanSubject 'pl_1' same subjects as in 'pl_2'*/
 INSERT INTO planSubject SELECT 'pl_1', codeSub, hoursLecture, hoursPractice, hoursLabClasses, hoursCourseWork, kindExam    FROM planSubject WHERE codePlan='pl_2';

/*groups students by year*/
 SELECT yearOfStudy, COUNT(dni) AS total FROM student GROUP BY yearOfStudy;

/*select average grade for every subject taken*/
SELECT codeSub, AVG(grade) FROM subject_student GROUP BY (codeSub)

/*updates table planSubject by modifying hoursLabClasses with max - 1 hour  only those which aren't equal to 0*/
 UPDATE planSubject
                SET hoursLabClasses = (SELECT (MAX(hoursLabClasses) - 1) FROM   planSubject WHERE hoursLabClasses>0 );


/*gets students who study on speciality ''spe_2*/
SELECT dni FROM student 
WHERE codeGroup IN (
                SELECT code FROM st_group g
                WHERE EXISTS(
                            SELECT codePlan FROM specialityPlan sp
                            WHERE g.codeplan=sp.codePlan and codeSpe='spe_2'));
/*gets student's highest average grade for practice exams*/
SELECT MAX(avg)  FROM 
                    (SELECT dniStud, SUM(grade)/COUNT(dniStud) AS avg 
                    FROM subject_student 
                    WHERE codeSub IN(
                                    SELECT codeSub 
                                    FROM planSubject 
                                    WHERE kindExam='P') 
                    GROUP BY dniStud);

    /*gets list of students from each group who never took practice exam*/
    SELECT  codeGroup, LISTAGG(nameSt || ' ' || COALESCE(surname, ' '), '; ') WITHIN GROUP (ORDER BY codeGroup) AS students  
    FROM student WHERE dni IN (
                                SELECT dniStud
                                FROM subject_student 
                                WHERE codeSub NOT IN(
                                                    SELECT codeSub 
                                                    FROM planSubject 
                                                    WHERE kindExam='P')) 
    GROUP BY codeGroup
    ORDER BY codeGroup ;


/*gets list of subjects which are taught on more than one speciality*/  
SELECT s.title FROM subject s 
WHERE s.code IN 
            (SELECT  ps.codeSub FROM specialityPlan sp, planSubject ps 
            WHERE sp.codePlan=ps.codePlan 
            GROUP BY ( ps.codeSub ) 
            HAVING COUNT (ps.codeSub) >1);

/*gets list of groups where all students are of the same year of study */            
SELECT codeGroup FROM 
            (SELECT DISTINCT yearOfStudy, codeGroup, COUNT(codeGroup) 
            FROM student 
            GROUP BY (codeGroup, yearOfStudy )) 
GROUP BY codeGroup 
HAVING cOUNT (codeGroup)=1;

/*gets pairs of subjects with equel total hours*/
SELECT A.codeSub, B.codeSub, A.total_hours FROM (SELECT codeSub, hoursLecture+hoursPractice+hoursLabClasses+hoursCourseWork AS total_hours  FROM planSubject) A 
    JOIN 
    (SELECT codeSub, hoursLecture+hoursPractice+hoursLabClasses+hoursCourseWork AS total_hours FROM planSubject) B 
    ON A.total_hours=B.total_hours
    WHERE A.total_hours=B.total_hours 
    AND A.codeSub<B.codeSub ;

/*gets students who didn't pass thory exam (their grade is less then 5)*/
SELECT dni, nameSt, surname from student s where exists ( 
        SELECT dniStud  FROM subject_student ss 
                                WHERE s.dni=ss.dniStud AND codeSub NOT IN(
                                                    SELECT codeSub 
                                                    FROM planSubject 
                                                    WHERE kindExam='P') and grade < 5);

/*deletes from student table those students who's grade is less then 1*/
 DELETE FROM student WHERE dni IN ( SELECT dniStud  FROM subject_student ss 
                                WHERE grade <1);