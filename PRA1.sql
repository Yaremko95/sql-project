CREATE TABLE swimmer (
SC       NUMBER (3)    CONSTRAINT pk_swimmer         PRIMARY KEY,
SName    VARCHAR (10)  CONSTRAINT nn_Sname_swimmer   NOT NULL,
SBirth   DATE          CONSTRAINT nn_SBirth_swimmer  NOT NULL,
Sex      VARCHAR (1)   CONSTRAINT ck_Sex_swimmer     CHECK (Sex = 'F' OR Sex = 'M'),
Spe      VARCHAR (3)   CONSTRAINT ck_Spe_swimmer     CHECK (Spe = 'BRE' OR Spe = 'FRE' OR Spe = 'BUT' OR Spe = 'BAC')
);
CREATE TABLE training (
TC       VARCHAR (3)   CONSTRAINT pk_trainig         PRIMARY KEY,
Tstyle   VARCHAR (3)   CONSTRAINT ck_Tstyle_training CHECK (Tstyle = 'BRE' OR Tstyle = 'FRE' OR Tstyle = 'BUT' OR Tstyle = 'BAC'),
Meters   NUMBER (3)    CONSTRAINT nn_Meters_training NOT NULL 
                       CONSTRAINT ck_Meters_training CHECK (Meters BETWEEN 50 AND 400),
T_max    NUMBER (3)                 
);
CREATE TABLE sesion (
SC       NUMBER (3),
TC       VARCHAR (3)   CONSTRAINT fk_training REFERENCES training,
TIME_C   NUMBER (3)
);

ALTER TABLE sesion ADD s_date DATE;
ALTER TABLE sesion MODIFY s_date CONSTRAINT nn_s_date_sesion NOT NULL;
ALTER TABLE sesion MODIFY SC     CONSTRAINT fk_swimmer REFERENCES swimmer;
ALTER TABLE sesion ADD           CONSTRAINT pk_sesion PRIMARY KEY (SC, TC, s_date);

INSERT INTO swimmer VALUES ( 111, 'Maria', '10-01-1987', 'F', 'BRE');
INSERT INTO swimmer VALUES ( 222, 'Juan', '4-03-1990', 'M', NULL);
INSERT INTO swimmer VALUES ( 333, 'Ana', '25-01-1990', 'F', NULL);
INSERT INTO swimmer VALUES ( 444, 'Andres', '2-06-1989', 'M', 'BUT');

INSERT INTO training VALUES ( 'A05', 'FRE', 50, 90);
INSERT INTO training VALUES ( 'A10', 'FRE', 100, 200);
INSERT INTO training VALUES ( 'B10', 'BRE', 100, 240);
INSERT INTO training VALUES ( 'C10', 'BUT', 100, 220);

INSERT INTO sesion VALUES ( '111', 'A10', 85, '17-02-2011');
INSERT INTO sesion VALUES ( '222', 'B10', 102, '17-02-2011');
INSERT INTO sesion VALUES ( '333', 'A05', 42, '17-02-2011');
INSERT INTO sesion VALUES ( '444', 'C10', 81, '17-02-2011');
INSERT INTO sesion VALUES ( '333', 'A05', 45, '10-03-2011');
INSERT INTO sesion VALUES ( '444', 'C10', 75, '10-03-2011');
INSERT INTO sesion VALUES ( '333', 'A05', 39, '17-03-2011');
INSERT INTO sesion VALUES ( '444', 'C10', 75, '17-03-2011');

/*  
    DROP TABLE sesion;
    DROP TABLE training;
    DROP TABLE swimmer;
*/

UPDATE sesion 
    SET s_date = s_date + 1
    WHERE s_date = '10-03-2011';
/*I couuld delete SC, because there is a child in sesion. But I don't have a swimmer with name '111' */    
DELETE FROM swimmer sesion  
    WHERE Sname = '111';
UPDATE training
    SET T_max = T_max - 5
    WHERE Meters = 100;
INSERT INTO sesion VALUES ( 111, 'B20', 159, '10-02-2011');
INSERT INTO sesion VALUES ( 111, 'A10', 82,  '17-02-2011');
/*Both 60 and 61 lines make errors because i tried to make a reference, but the columns failed
to match  the PRIMARY KEY*/