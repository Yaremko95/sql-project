/*In this sequence for correct droping*/
/*Drop table*/

DROP TABLE subject_student;
DROP TABLE specialityPlan;
DROP TABLE planSubject;
DROP TABLE student;
DROP TABLE st_group;
DROP TABLE subject;
DROP TABLE studyPlan;
DROP TABLE speciality;
DROP TABLE deanary;
DROP TABLE department;
/*drop sequence*/
DROP SEQUENCE dni_auto_id;
DROP SEQUENCE code_auto_id;
DROP SEQUENCE sub_code_auto;
DROP SEQUENCE dep_code_auto;
DROP SEQUENCE deanary_code_auto;
DROP SEQUENCE speciality_code_auto;
DROP SEQUENCE study_plan_code_auto;
/*drop trigger*/
DROP TRIGGER add_auto_to_dni;
DROP TRIGGER add_auto_to_code;
DROP TRIGGER aad_auto_to_sub_code;
DROP TRIGGER add_auto_to_dep_code;
DROP TRIGGER add_auto_to_deanary_code;
DROP TRIGGER add_auto_to_speciality_code;
DROP TRIGGER add_auto_to_study_plan_code;