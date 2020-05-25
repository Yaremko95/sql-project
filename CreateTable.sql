CREATE TABLE department (
code     VARCHAR (6)     CONSTRAINT pk_department         PRIMARY KEY,
nameDp   VARCHAR (50)    CONSTRAINT nn_nameDp_depatment   NOT NULL
);


CREATE TABLE deanary (
code     VARCHAR (6)     CONSTRAINT pk_deanary            PRIMARY KEY,
codeDep  VARCHAR (6)     CONSTRAINT fk_department         REFERENCES department,
nameDea  VARCHAR (50)    CONSTRAINT nn_nameDea_deanary    NOT NULL
);

CREATE TABLE speciality (
code     VARCHAR (6)     CONSTRAINT pk_speciality         PRIMARY KEY,
codeDea  VARCHAR (6)     CONSTRAINT fk_deanaery           REFERENCES deanary,
nameSpe  VARCHAR (50)    CONSTRAINT nn_nameSpe_speciality NOT NULL
);

CREATE TABLE studyPlan (
code     VARCHAR (6)     CONSTRAINT pk_study              PRIMARY KEY
);

CREATE TABLE specialityPlan (
codeSpe  VARCHAR (6)     CONSTRAINT fk_speciality         REFERENCES speciality,
codePlan VARCHAR (6)     CONSTRAINT fk_studyPlan          REFERENCES studyPlan
);