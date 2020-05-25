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
















