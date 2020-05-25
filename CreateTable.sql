 CREATE TABLE subject_student (
            codeSub VARCHAR(6) ,
            dniStud VARCHAR(6),
            grade NUMBER(2,1) 
        
        );
        
        CREATE TABLE student (
           dni VARCHAR(6) CONSTRAINT pk_dni PRIMARY KEY,
           codeGroup VARCHAR(6),
           nameSt VARCHAR(50) NOT NULL,
           surname VARCHAR(50) NOT NULL,
           address VARCHAR(100) NOT NULL,
           email VARCHAR(30) NOT NULL,
           phone VARCHAR(15) NOT NULL,
           yearOfStudy NUMBER(1) NOT NULL );
           
           
        CREATE TABLE st_group (
            code VARCHAR(6) CONSTRAINT pk_code PRIMARY KEY,
            codePlan VARCHAR(6)  --CODE OF A STUDY PLAN
        );
        
        -- 
        CREATE TABLE planSubject (
            codePlan    VARCHAR(6) ,
            codeSub VARCHAR(6),
            hoursLecture NUMBER(3),
            hoursPractice NUMBER(3),
            hoursLabClasses NUMBER(3),
            hoursCourseWork NUMBER(3),
            kindExam VARCHAR (1) CONSTRAINT ck_kindExam_studyPlan CHECK ( kindExam = 'P' OR kindExam = 'T')  /*P - practice, T - theory*/
            
        );
        CREATE TABLE subject (
            code VARCHAR(6) CONSTRAINT pk_sub_code  PRIMARY KEY,
            title VARCHAR(50),
            credits NUMBER(2) 
            );
        