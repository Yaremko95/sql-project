/*Views*/


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
                       WHERE codSub IN (SELECT codSub FROM planSubject 
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
/*          




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