CREATE TABLE department (
code            VARCHAR (6)     CONSTRAINT pk_department          PRIMARY KEY,
nameDp          VARCHAR (50)    CONSTRAINT nn_nameDp_depatment    NOT NULL
);

CREATE TABLE deanary (
code            VARCHAR (6)     CONSTRAINT pk_deanary             PRIMARY KEY,
codeDep         VARCHAR (6)     CONSTRAINT fk_department          REFERENCES department,
nameDea         VARCHAR (50)    CONSTRAINT nn_nameDea_deanary     NOT NULL
);

CREATE TABLE speciality (
code            VARCHAR (6)     CONSTRAINT pk_speciality          PRIMARY KEY,
codeDea         VARCHAR (6)     CONSTRAINT fk_deanaery            REFERENCES deanary,
nameSpe         VARCHAR (50)    CONSTRAINT nn_nameSpe_speciality  NOT NULL
);

CREATE TABLE studyPlan (
code            VARCHAR (6)     CONSTRAINT pk_study               PRIMARY KEY
);

CREATE TABLE specialityPlan (
codeSpe         VARCHAR (6)     CONSTRAINT fk_speciality          REFERENCES speciality,
codePlan        VARCHAR (6)     CONSTRAINT fk_studyPlan           REFERENCES studyPlan
);

CREATE TABLE st_group (
code            VARCHAR(6)      CONSTRAINT pk_st_group            PRIMARY KEY,
codePlan        VARCHAR(6)      CONSTRAINT fk_codePlan            REFERENCES studyPlan  --CODE OF A STUDY PLAN
);

CREATE  TABLE student (
dni             VARCHAR(6)      CONSTRAINT pk_student             PRIMARY KEY,
codeGroup       VARCHAR(6)      CONSTRAINT fk_codeGroup           REFERENCES st_group,
nameSt          VARCHAR(50)     CONSTRAINT nn_nameSt_student      NOT NULL,
surname         VARCHAR(50)     CONSTRAINT nn_surname_student     NOT NULL,
address         VARCHAR(100)    CONSTRAINT nn_address_student     NOT NULL,
email           VARCHAR(30)     CONSTRAINT nn_email_student       NOT NULL,
phone           VARCHAR(20)     CONSTRAINT nn_phone_student       NOT NULL,
yearOfStudy     NUMBER(1)       CONSTRAINT nn_yearOfStudy_student NOT NULL 
);
         
CREATE TABLE subject (
code            VARCHAR(6)      CONSTRAINT pk_subject             PRIMARY KEY,
title           VARCHAR(50),
credits         NUMBER(2) 
);
           
CREATE TABLE subject_student (
codeSub         VARCHAR(6)      CONSTRAINT fk_subject              REFERENCES subject,
dniStud         VARCHAR(6)      CONSTRAINT fk_student              REFERENCES student,
grade           NUMBER(2,1) 
);           
           
CREATE TABLE planSubject (
codePlan        VARCHAR(6)      CONSTRAINT fk_code_plan            REFERENCES studyPlan ,
codeSub         VARCHAR(6)      CONSTRAINT fk_codeSubject          REFERENCES subject,
hoursLecture    NUMBER(3),
hoursPractice   NUMBER(3),
hoursLabClasses NUMBER(3),
hoursCourseWork NUMBER(3),
kindExam        VARCHAR (1)     CONSTRAINT ck_kindExam_studyPlan   CHECK ( kindExam = 'P' OR kindExam = 'T')  /*P - practice, T - theory*/            
);


    
    --create triggers for primary keys
   
    
    /*st_ - student*/
    CREATE SEQUENCE dni_auto_id start with 1;
    CREATE OR REPLACE TRIGGER add_auto_to_dni 
        BEFORE INSERT ON student FOR EACH ROW BEGIN  
        SELECT 'st_' || dni_auto_id.NEXTVAL INTO :NEW.dni FROM dual; 
        END; 
    /
    /*gr_ - st_group*/
    CREATE SEQUENCE code_auto_id start with 1;
    CREATE OR REPLACE TRIGGER add_auto_to_code 
        BEFORE INSERT ON st_group FOR EACH ROW  BEGIN  
        SELECT 'gr_' || code_auto_id.NEXTVAL INTO :NEW.code FROM dual; 
        END;
    /
    /*sub_ - subject*/
    CREATE SEQUENCE sub_code_auto start with 1;
    CREATE OR REPLACE TRIGGER aad_auto_to_sub_code 
        BEFORE INSERT ON subject FOR EACH ROW BEGIN 
        SELECT 'sub_' || sub_code_auto.NEXTVAL INTO :NEW.code FROM dual;
        END;
    /
    /*dep_ - departament*/
    CREATE SEQUENCE dep_code_auto start with 1;
    CREATE OR REPLACE TRIGGER add_auto_to_dep_code 
        BEFORE INSERT ON department FOR EACH ROW BEGIN 
        SELECT 'dep_' || dep_code_auto.NEXTVAL INTO :NEW.code FROM dual;
        END;
    /
    /*d_ - deanary*/
    CREATE SEQUENCE deanary_code_auto start with 1;
    CREATE OR REPLACE TRIGGER add_auto_to_deanary_code 
        BEFORE INSERT ON deanary FOR EACH ROW BEGIN 
        SELECT 'd_' || deanary_code_auto.NEXTVAL INTO :NEW.code FROM dual;
        END;
    /
    /*spe_ - speciality*/
    CREATE SEQUENCE speciality_code_auto start with 1;
    CREATE OR REPLACE TRIGGER add_auto_to_speciality_code 
        BEFORE INSERT ON speciality FOR EACH ROW BEGIN 
        SELECT 'spe_' || speciality_code_auto.NEXTVAL INTO :NEW.code FROM dual;
        END;
    /
    /*pl_ - studyPlan*/
    CREATE SEQUENCE study_plan_code_auto start with 1;
    CREATE OR REPLACE TRIGGER add_auto_to_study_plan_code
        BEFORE INSERT ON studyPlan FOR EACH ROW BEGIN 
        SELECT 'pl_' || study_plan_code_auto.NEXTVAL INTO :NEW.code FROM dual;
        END;
    /