/*department*/
INSERT INTO department VALUES (NULL ,'Computer Science and Technology');


/*Deanary*/
INSERT INTO deanary  VALUES (NULL , 'dep_1' ,'Software engineering');
INSERT INTO deanary  VALUES (NULL ,'dep_1' ,'Hardware engineering');
INSERT INTO deanary  VALUES (NULL ,'dep_1' ,'Computer security');


/*Speciality*/
    /*Software deanary*/
INSERT INTO speciality  VALUES (NULL , 'd_1','Graphics and human-computer interaction');
INSERT INTO speciality  VALUES (NULL ,'d_1' ,'Programming');
    /*Hardsware deanary*/
INSERT INTO speciality  VALUES (NULL ,'d_2' ,'Computer architecture');
INSERT INTO speciality  VALUES ( NULL, 'd_2','Distributed systems');
    /*Security deanary*/
INSERT INTO speciality  VALUES ( NULL, 'd_3','Security');
INSERT INTO speciality  VALUES ( NULL, 'd_3' ,'Networking and wireless communication');


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
    /*Software deanary*/
        /*Graphics and human-computer interaction*/
INSERT INTO planSubject  VALUES ('pl_1', 'sub_1', 30, 15, 0, 8, 'T');
INSERT INTO planSubject  VALUES ('pl_1', 'sub_2', 14, 29, 2, 4, 'P');
INSERT INTO planSubject  VALUES ('pl_2', 'sub_3', 25, 18, 8, 3, 'T');
INSERT INTO planSubject  VALUES ('pl_2', 'sub_4', 20, 10, 2, 0, 'P');
        /*Programming*/
INSERT INTO planSubject  VALUES ('pl_3', 'sub_5', 22, 13, 2, 0, 'P');
INSERT INTO planSubject  VALUES ('pl_4', 'sub-6', 10, 15, 0, 2, 'P');
    /*Hardsware deanary*/
        /*Computer architecture*/
INSERT INTO planSubject  VALUES ('pl_5', 'sub_5', 10, 10, 0, 3, 'T');
INSERT INTO planSubject  VALUES ('pl_5', 'sub_7', 12, 14, 0, 5, 'P');
INSERT INTO planSubject  VALUES ('pl_6', 'sub_8', 21, 19, 3, 7, 'T');
INSERT INTO planSubject  VALUES ('pl_6', 'sub_9', 22, 13, 2, 0, 'T');
        /*Distributed systems*/
INSERT INTO planSubject  VALUES ('pl_7', 'sub-10', 10, 15, 0, 2, 'P');
INSERT INTO planSubject  VALUES ('pl_8', 'sub_11', 20, 10, 2, 8, 'P');
    /*Security deanary*/
        /*Security*/
INSERT INTO planSubject  VALUES ('pl_9', 'sub_11', 14, 9, 0, 0, 'T');
INSERT INTO planSubject  VALUES ('pl_10', 'sub-12', 18, 14, 0, 1, 'P');
        /*Networking and wireless communication*/
INSERT INTO planSubject  VALUES ('pl_11', 'sub_12', 11, 11, 2, 0, 'P');
INSERT INTO planSubject  VALUES ('pl_12', 'sub-9', 15, 15, 2, 0, 'P');


/*st_group*/
/*In comments subjects for this group*/
    /*Database Foundations, Object Oriented Programming*/
INSERT INTO st_group  VALUES (NULL, 'pl_1');
    /*Web Based Technology, Alogrythms and Data Structures*/
INSERT INTO st_group  VALUES (NULL, 'pl_2');
    /*Web Based Technology, Alogrythms and Data Structures*/
INSERT INTO st_group  VALUES (NULL, 'pl_3');
    /*Network Administration*/
INSERT INTO st_group  VALUES (NULL, 'pl_4');
    /*Network Administration, Algebra*/
INSERT INTO st_group  VALUES (NULL, 'pl_5');
    /*Descrete Mathematicas, MicroContoller Programming*/
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


/*student*/
/*Software deanary*/
        /*Graphics and human-computer interaction*/
            /*Group gr_1*/
INSERT INTO student VALUES (NULL ,'gr_1', 'Barbara-Anne', 'Hoodless', '619 Kedzie CourtbMilltown Ireland, 49349-873', 'bhoodless0@theguardian.com', '+950-852-7200', 2); 
INSERT INTO student VALUES (NULL ,'gr_1', 'Tetiana', 'Yaremko', '8a, av Andalucia 4, Jaen', 'tetianayaremko@gmail.com', '+480975400783', 2); 
INSERT INTO student VALUES (NULL ,'gr_1', 'Yehor', 'Velikozon', '3a, av Andalucia 12, Jaen', 'yehor@gmail.com', '+38097883059', 2); 
INSERT INTO student VALUES (NULL ,'gr_1', 'Pepita', 'Eland', '97210 Dayton Crossing Sámi Greece 67938-0858', 'peland1@bbb.org', '+30 836 824 4012', 2); 
            /*Group gr_2*/
INSERT INTO student VALUES (NULL ,'gr_2', 'Cassi', 'Zanini', '1 Bultman Hill Tiyuguan China 55289-561', 'czanini2@washingtonpost.com', '+86 414 939 6324', 1); 
INSERT INTO student VALUES (NULL ,'gr_2', 'Fara', 'Surgen',  '84 David Terrace Quilmes Argentina, 63868-201', 'fsurgen3@ustream.tv', '+54 576 932 2805', 1); 
INSERT INTO student VALUES (NULL ,'gr_2', 'Barbara-Anne', 'Hoodless', '619 Kedzie CourtbMilltown Ireland, 49349-873', 'bhoodless0@theguardian.com', '+950-852-7200', 1); 
INSERT INTO student VALUES (NULL ,'gr_2', 'Shaw', 'Napier', '72 Muir Road Şaqānis Tunisia 61727-333', 'snapier4@diigo.com', '+216 867 959 1399', 1); 
        /*Programming*/
            /*Group gr_3*/
INSERT INTO student VALUES (NULL ,'gr_3', 'Graham', 'Halsall', '4 Corry Alley', 'ghalsall1d@stumbleupon.com','+86 442 556 4078', 3);
INSERT INTO student VALUES (NULL ,'gr_3', 'Clementia', 'Copestake', '88 Kedzie Park','ccopestake1c@slideshare.net', '+62 305 549 0840', 3);  
INSERT INTO student VALUES (NULL ,'gr_3', 'Ingar', 'Scothern', '58 Westport Plaza','iscothern1b@blogs.com', '+55 118 839 5774', 3); 
INSERT INTO student VALUES (NULL ,'gr_3', 'Cynde', 'Salerno', '4 Vermont Plaza', 'csalerno1a@rakuten.co.jp', '+86 668 632 0667', 3); 
            /*Group gr_4*/
INSERT INTO student VALUES (NULL ,'gr_4', 'Bridgette', 'Raffin', '45064 Kedzie Alley','braffin19@patch.com', '+47 923 736 3218', 4);
INSERT INTO student VALUES (NULL ,'gr_4', 'Tito', 'McAteer', '98576 Corry Terrace', 'tmcateer18@smugmug.com', '+242 349 609 0936' ,4);
INSERT INTO student VALUES (NULL ,'gr_4', 'Rollo', 'Thies', '1 Elmside Lane','rthies17@nasa.gov', '+7 930 741 3977',4);
INSERT INTO student VALUES (NULL ,'gr_4', 'Lazar', 'Capper', '8 Maple Wood Center','lcapper16@nih.gov', '+86 943 927 3368', 4);
/*Hardsware deanary*/
        /*Computer architecture*/  
            /*Group gr_5*/
INSERT INTO student VALUES (NULL ,'gr_5', 'Sibyl', 'Bukac', '2 Linden Avenue Jing’an China 49288-0801', 'sbukac5@examiner.com', '+86 559 446 8579', 1); 
INSERT INTO student VALUES (NULL ,'gr_5', 'Reynold', 'Bleas', '936 Nelson Hill Banyo Cameroon 37000-704', 'rbleas6@google.co.uk', '+237 836 494 4150', 3); 
INSERT INTO student VALUES (NULL ,'gr_5', 'Emlynne', 'Morton', '8088 Sunbrook Pass Ejmiatsin Armenia 75866-304', 'emorton7@economist.com', '+374 222 288 3652', 2); 
INSERT INTO student VALUES (NULL ,'gr_5', 'Judy', 'Galley',  '208 Barby Lane Hudson Bay Canada 51672-1271', 'jgalley8@huffingtonpost.com', '+1 937 686 3850', 2);
            /*Group gr_6*/
INSERT INTO student VALUES (NULL ,'gr_6', 'Leona', 'Chill', '7142 Iowa Crossing Nanfeng China 51532-5500', 'lchill9@people.com.cn', '+86 217 403 9044', 3); 
INSERT INTO student VALUES (NULL ,'gr_6', 'Theresa', 'Procter', '7893 Sycamore Center Santa Cruz Philippines 43857-0028', 'tproctera@alexa.com', '+63 509 679 1672', 2); 
INSERT INTO student VALUES (NULL ,'gr_6', 'Marijo', 'Wintersgill',  '923 Hermina Crossing Kruhlaye Belarus 65862-018', 'mwintersgillb@msn.com', '+375 725 518 9354', 2); 
INSERT INTO student VALUES (NULL ,'gr_6', 'Mil', 'Du Hamel', '12 Glacier Hill Point Rubiataba Brazil 10191-1829', 'mduhamelc@sbwire.com', '+55 633 531 4503', 3); 
        /*Distributed systems*/
            /*Group gr_7*/
INSERT INTO student VALUES (NULL ,'gr_7', 'Edy', 'Domel', '8995 Steensland Park Perna Finland 32909-723', 'edomeld@dailymail.co.uk', '+358 463 769 6008', 2); 
INSERT INTO student VALUES (NULL ,'gr_7', 'Stephie', 'Kaine',  '4311 Delaware Park Sakai Japan 45782-0000', 'skainee@amazon.de', '+81 230 171 4707', 2); 
INSERT INTO student VALUES (NULL ,'gr_7', 'Liv', 'Billany', '73441 Twin Pines Avenue Yermolayevo Russia 67457-425', 'lbillanyf@toplist.cz', '+7 203 697 2163', 3); 
INSERT INTO student VALUES (NULL ,'gr_7', 'Bancroft', 'Jandourek', '643 Tomscot Crossing Lyon France 54868-6361', 'bjandourekg@washington.edu', '+33 997 321 6176', 2); 
            /*Group gr_8*/
INSERT INTO student VALUES (NULL ,'gr_8', 'Daveen', 'Maxsted', '1 Linden Point Alepou Greece 36987-2473', 'dmaxstedh@i2i.jp', '+30 513 177 8975', 2); 
INSERT INTO student VALUES (NULL ,'gr_8', 'Darbie', 'De Mitris', '486 East Hill Pesqueira Brazil 61703-303', 'ddemitrisi@bing.com', '+55 275 843 8057', 3); 
INSERT INTO student VALUES (NULL ,'gr_8', 'Maura', 'Figure', '09 Kedzie Circle Shimeitang China 0603-1481', 'mfigurej@census.gov', '+86 854 275 9891', 2); 
INSERT INTO student VALUES (NULL ,'gr_8', 'Clio', 'Exley',  '25602 Summit Crossing Dindima Nigeria 33261-819', 'cexleyk@ca.gov', '+1 937 686 3850', 2);
/*Security deanary*/
        /*Security*/ 
            /*Group gr_9*/
INSERT INTO student VALUES (NULL ,'gr_9', 'Augy', 'Aird', '0 Oneill Avenue Grzęska Poland 64942-1259', 'aairdl@pinterest.com', '+48 145 408 2058', 3); 
INSERT INTO student VALUES (NULL ,'gr_9', 'Erv', 'Booker', '80 Cody Trail Yangi-Nishon Shahri Uzbekistan 62175-310', 'ebookerm@artisteer.com', '+998 569 235 0413', 2); 
INSERT INTO student VALUES (NULL ,'gr_9', 'Lemmy', 'Mattaus', '981 Forest Run Park Palmitas Uruguay 13537-467', 'lmattausn@gnu.org', '+598 761 760 6688', 2); 
INSERT INTO student VALUES (NULL ,'gr_9', 'Nata', 'Blasoni', '549 Spohn Point Zaječov Czech Republic 33342-019', 'nblasonio@facebook.com', '+420 405 495 1870', 3); 
            /*Group gr_10*/
INSERT INTO student VALUES (NULL ,'gr_10', 'Gwendolin', 'Erdis', '91 Oneill Alley', 'gerdis15@vimeo.com', '+234 593 394 7736', 1);
INSERT INTO student VALUES (NULL ,'gr_10', 'Tyler', 'Hadwen', '55 Ohio Plaza', 'thadwen14@home.pl', '+86 471 636 6309', 1);
INSERT INTO student VALUES (NULL ,'gr_10', 'Herschel', 'Stanford', '987 Emmet Center', 'hstanford13@forbes.com', '+63 414 107 8220', 1);
INSERT INTO student VALUES (NULL ,'gr_10', 'Kennedy', 'Farris', '7 Mcguire Alley', 'kfarris12@answers.com', '+420 849 679 2953', 1);
        /*Networking and wireless communication*/
            /*Group gr_11*/
INSERT INTO student VALUES (NULL ,'gr_11', 'Corenda', 'Grinnell', '8816 Manitowish Road', 'cgrinnell11@paypal.com', '+242 339 682 7192', 2);
INSERT INTO student VALUES (NULL ,'gr_11', 'Rhett', 'Kenford', '0273 Sycamore Street', 'rkenford10@instagram.com', '+381 188 634 9075', 2);
INSERT INTO student VALUES (NULL ,'gr_11', 'Victoir', 'Kirkup', '78353 Florence Crossing', 'vkirkupz@oakley.com', '+63 380 561 0406', 2);
INSERT INTO student VALUES (NULL ,'gr_11', 'Aigneis', 'Vicary', '71204 Melrose Center', 'avicaryy@squidoo.com', '+55 409 870 9835', 2);
            /*Group gr_12*/
INSERT INTO student VALUES (NULL ,'gr_12', 'Vlad', 'Pes', '379 Reinke Lane', 'vpesx@theatlantic.com', '+62 841 697 6009', 3);            
INSERT INTO student VALUES (NULL ,'gr_12', 'Willard', 'Tong',  '7358 Weeping Birch Circle', 'wtongw@utexas.edu', '+386 920 129 5703', 3);
INSERT INTO student VALUES (NULL ,'gr_12', 'Tiphanie', 'Lackeye', '05 Dorton Road', 'tlackeyev@instagram.com', '+86 148 606 3116', 3);
INSERT INTO student VALUES (NULL ,'gr_12', 'Everard', 'Sille', '726 Melody Avenue', 'esilleu@microsoft.com', '+86 873 779 0214', 3);

