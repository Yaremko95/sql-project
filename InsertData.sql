/*department*/
INSERT INTO department VALUES (NULL ,'Computer Science and Technology');

/*Deanary*/
INSERT INTO deanary  VALUES (NULL , 'dep_1' ,'Software engineering');
INSERT INTO deanary  VALUES (NULL ,'dep_1' ,'Hardware engineering');
INSERT INTO deanary  VALUES (NULL ,'dep_1' ,'Computer security');

/*Speciality*/
    /*Software deanary*/
INSERT INTO speciality  VALUES (NULL , 'de_24','Graphics and human-computer interaction');
INSERT INTO speciality  VALUES (NULL ,'de_24' ,'Programming');
    /*Hardsware deanary*/
INSERT INTO speciality  VALUES (NULL ,'de_25' ,'Computer architecture');
INSERT INTO speciality  VALUES ( NULL, 'de_25','Distributed systems');
    /*Security deanary*/
INSERT INTO speciality  VALUES ( NULL, 'de_26','Security');
INSERT INTO speciality  VALUES ( NULL, 'de_26' ,'Networking and wireless communication');

/*StudyPlan*/
    /*Software deanary*/
        /*Graphics and human-computer interaction*/
INSERT INTO studyPlan VALUES ( NULL );
INSERT INTO studyPlan VALUES ( NULL );
        /*Programming*/
INSERT INTO studyPlan VALUES ( NULL );
INSERT INTO studyPlan VALUES ( NULL );
    /*Hardware deanary*/
        /*Computer architecture*/
INSERT INTO studyPlan VALUES ( NULL );
INSERT INTO studyPlan VALUES ( NULL );
        /*Distributed systems*/
INSERT INTO studyPlan VALUES ( NULL );
INSERT INTO studyPlan VALUES ( NULL );
    /*Security deanary*/
        /*Security*/
INSERT INTO studyPlan VALUES ( NULL );
INSERT INTO studyPlan VALUES ( NULL );
        /*Networking and wireless communication*/
INSERT INTO studyPlan VALUES ( NULL );
INSERT INTO studyPlan VALUES ( NULL );

/*SpecialityPlan*/
    /*Software deanary*/
        /*Graphics and human-computer interaction*/
INSERT INTO specialityPlan VALUES (spe_1, pl_1); 
INSERT INTO specialityPlan VALUES (spe_1, pl_2);
        /*Programming*/
INSERT INTO specialityPlan VALUES (spe_2, pl_3); 
INSERT INTO specialityPlan VALUES (spe_2, pl_4); 
    /*Hardsware deanary*/
        /*Computer architecture*/    
INSERT INTO specialityPlan VALUES (spe_3, pl_5); 
INSERT INTO specialityPlan VALUES (spe_3, pl_6);   
        /*Distributed systems*/
INSERT INTO specialityPlan VALUES (spe_4, pl_7); 
INSERT INTO specialityPlan VALUES (spe_4, pl_8);
    /*Security deanary*/
        /*Security*/
INSERT INTO specialityPlan VALUES (spe_5, pl_9); 
INSERT INTO specialityPlan VALUES (spe_5, pl_10);        
        /*Networking and wireless communication*/
INSERT INTO specialityPlan VALUES (spe_6, pl_11); 
INSERT INTO specialityPlan VALUES (spe_6, pl_12);


/*subject*/
INSERT INTO subject  VALUES (NULL ,'Database Foundations', 6);
INSERT INTO subject  VALUES (NULL ,'Object Oriented Programming', 6);
INSERT INTO subject  VALUES (NULL ,'Web Based Technology', 6);
INSERT INTO subject  VALUES (NULL ,'Alogrythms and Data Structures', 6);
INSERT INTO subject  VALUES (NULL ,'Network Administration', 5);
INSERT INTO subject  VALUES (NULL ,'Java', 4);
INSERT INTO subject  VALUES (NULL ,'Algebra', 6);
INSERT INTO subject  VALUES (NULL ,'Descrete Mathematicas', 5);
INSERT INTO subject  VALUES (NULL ,'MicroContoller Programming', 6);
INSERT INTO subject  VALUES (NULL ,'Computer Architecture', 6);
INSERT INTO subject  VALUES (NULL ,'C Programming', 5);
INSERT INTO subject  VALUES (NULL ,'Computer Systems Engineering', 5);


/*planSubject*/
INSERT INTO planSubject  VALUES ('pl-1', 'sub_1', 30, 15, 0, 8, 'T');
INSERT INTO planSubject  VALUES ('pl-1', 'sub_2', 14, 29, 2, 4, 'P');
INSERT INTO planSubject  VALUES ('pl-2', 'sub_3', 25, 18, 8, 3, 'T');
INSERT INTO planSubject  VALUES ('pl-3', 'sub_5', 22, 13, 2, 0, 'P');
INSERT INTO planSubject  VALUES ('pl-4', 'sub-6', 10, 15, 0, 2, 'P');
INSERT INTO planSubject  VALUES ('pl-2', 'sub_4', 20, 10, 2, 0, 'P');
INSERT INTO planSubject  VALUES ('pl-5', 'sub_5', 10, 10, 0, 3, 'T');
INSERT INTO planSubject  VALUES ('pl-5', 'sub_7', 12, 14, 0, 5, 'P');
INSERT INTO planSubject  VALUES ('pl-6', 'sub_8', 21, 19, 3, 7, 'T');
INSERT INTO planSubject  VALUES ('pl-6', 'sub_9', 22, 13, 2, 0, 'T');
INSERT INTO planSubject  VALUES ('pl-7', 'sub-10', 10, 15, 0, 2, 'P');
INSERT INTO planSubject  VALUES ('pl-8', 'sub_11', 20, 10, 2, 8, 'P');
INSERT INTO planSubject  VALUES ('pl-9', 'sub_11', 14, 9, 0, 0, 'T');
INSERT INTO planSubject  VALUES ('pl-10', 'sub-12', 18, 14, 0, 1, 'P');
INSERT INTO planSubject  VALUES ('pl-11', 'sub_12', 11, 11, 2, 0, 'P');
INSERT INTO planSubject  VALUES ('pl-12', 'sub-9', 15, 15, 2, 0, 'P');


     /*st_group*/
                /*Database Foundations*/
                /*Object Oriented Programming*/
        INSERT INTO st_group  VALUES (NULL, 'pl_1');
                 /*Web Based Technology*/
                /*Alogrythms and Data Structures*/
        INSERT INTO st_group  VALUES (NULL, 'pl_2');
                /*Web Based Technology*/
                /*Alogrythms and Data Structures*/
        INSERT INTO st_group  VALUES (NULL, 'pl_3');
                /*Network Administration*/
        INSERT INTO st_group  VALUES (NULL, 'pl_4');
                /*Network Administration*/
                /*Algebra*/
        INSERT INTO st_group  VALUES (NULL, 'pl_5');
                /*Descrete Mathematicas*/
                /*MicroContoller Programming*/
        INSERT INTO st_group  VALUES (NULL, 'pl_6');
                /*Computer Architecture*/
        INSERT INTO st_group  VALUES (NULL, 'pl_7');
                /*C Programming*/
        INSERT INTO st_group  VALUES (NULL, 'pl_8');
                /*C Programming*/
        INSERT INTO st_group  VALUES (NULL, 'pl_9');
                /*Computer Systems Engineering*/
        INSERT INTO st_group  VALUES (NULL, 'pl_10');
                /*Computer Systems Engineering*/
        INSERT INTO st_group  VALUES (NULL, 'pl_11');
                /*MicroContoller Programming*/
        INSERT INTO st_group  VALUES (NULL, 'pl_12');










