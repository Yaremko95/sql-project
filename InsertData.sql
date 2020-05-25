/*Department*/
INSERT INTO department VALUES ( ,'Computer Science and Technology');

/*Deanary*/
INSERT INTO deanary  VALUES ( , ,'Software engineering');
INSERT INTO deanary  VALUES ( , ,'Hardware engineering');
INSERT INTO deanary  VALUES ( , ,'Computer security');

/*Speciality*/
    /*Software deanary*/
<<<<<<< Updated upstream
INSERT INTO speciality  VALUES ( , ,'Graphics and human-computer interaction');
INSERT INTO speciality  VALUES ( , ,'Programming');
    /*Hardsware deanary*/
INSERT INTO speciality  VALUES ( , ,'Computer architecture');
INSERT INTO speciality  VALUES ( , ,'Distributed systems');
    /*Security deanary*/
INSERT INTO speciality  VALUES ( , ,'Security');
INSERT INTO speciality  VALUES ( , ,'Networking and wireless communication');
=======
INSERT INTO speciality  VALUES (NULL , 'd_1','Graphics and human-computer interaction');
INSERT INTO speciality  VALUES (NULL ,'d_1' ,'Programming');
    /*Hardsware deanary*/
INSERT INTO speciality  VALUES (NULL ,'d_2' ,'Computer architecture');
INSERT INTO speciality  VALUES ( NULL, 'd_2','Distributed systems');
    /*Security deanary*/
INSERT INTO speciality  VALUES ( NULL, 'd_3','Security');
INSERT INTO speciality  VALUES ( NULL, 'd_3' ,'Networking and wireless communication');
>>>>>>> Stashed changes

/*Study Plan*/
INSERT INTO studyPlan VALUES ( );

/*SpecialityPlan*/
<<<<<<< Updated upstream
INSERT INTO SpecialityPlan VALUES ( , ,);
=======
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




















<<<<<<< Updated upstream
=======
/*planSubject*/
    /*Software deanary*/
        /*Graphics and human-computer interaction*/
INSERT INTO planSubject  VALUES ('pl-1', 'sub_1', 30, 15, 0, 8, 'T');
INSERT INTO planSubject  VALUES ('pl-1', 'sub_2', 14, 29, 2, 4, 'P');
INSERT INTO planSubject  VALUES ('pl-2', 'sub_3', 25, 18, 8, 3, 'T');
INSERT INTO planSubject  VALUES ('pl-2', 'sub_4', 20, 10, 2, 0, 'P');
        /*Programming*/
INSERT INTO planSubject  VALUES ('pl-3', 'sub_5', 22, 13, 2, 0, 'P');
INSERT INTO planSubject  VALUES ('pl-4', 'sub-6', 10, 15, 0, 2, 'P');
    /*Hardsware deanary*/
        /*Computer architecture*/
INSERT INTO planSubject  VALUES ('pl-5', 'sub_5', 10, 10, 0, 3, 'T');
INSERT INTO planSubject  VALUES ('pl-5', 'sub_7', 12, 14, 0, 5, 'P');
INSERT INTO planSubject  VALUES ('pl-6', 'sub_8', 21, 19, 3, 7, 'T');
INSERT INTO planSubject  VALUES ('pl-6', 'sub_9', 22, 13, 2, 0, 'T');
        /*Distributed systems*/
INSERT INTO planSubject  VALUES ('pl-7', 'sub-10', 10, 15, 0, 2, 'P');
INSERT INTO planSubject  VALUES ('pl-8', 'sub_11', 20, 10, 2, 8, 'P');
    /*Security deanary*/
        /*Security*/
INSERT INTO planSubject  VALUES ('pl-9', 'sub_11', 14, 9, 0, 0, 'T');
INSERT INTO planSubject  VALUES ('pl-10', 'sub-12', 18, 14, 0, 1, 'P');
        /*Networking and wireless communication*/
INSERT INTO planSubject  VALUES ('pl-11', 'sub_12', 11, 11, 2, 0, 'P');
INSERT INTO planSubject  VALUES ('pl-12', 'sub-9', 15, 15, 2, 0, 'P');
>>>>>>> Stashed changes













>>>>>>> Stashed changes
