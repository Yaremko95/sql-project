 /*st_ - student*/
    CREATE OR REPLACE TRIGGER add_auto_to_dni 
        BEFORE INSERT ON student FOR EACH ROW  BEGIN  
        SELECT 'st_' || dni_auto_id.NEXTVAL INTO :NEW.dni FROM dual; 
        END; 
        
 /*gr_ - st_group*/
    CREATE OR REPLACE TRIGGER add_auto_to_code 
        BEFORE INSERT ON st_group FOR EACH ROW  BEGIN  
        SELECT 'gr_' || code_auto_id.NEXTVAL INTO :NEW.code FROM dual; 
        END;        
        
/*sub_ - subject*/
    CREATE OR REPLACE TRIGGER aad_auto_to_sub_code 
        BEFORE INSERT ON subject FOR EACH ROW BEGIN 
        SELECT 'sub_' || sub_code_auto.NEXTVAL INTO :NEW.code FROM dual;
        END;
        
/*dep_ - departament*/
    CREATE OR REPLACE TRIGGER add_auto_to_dep_code 
        BEFORE INSERT ON department FOR EACH ROW BEGIN 
        SELECT 'dep_' || dep_code_auto.NEXTVAL INTO :NEW.code FROM dual;
        END;
        
/*d_ - deanary*/
    CREATE OR REPLACE TRIGGER add_auto_to_deanary_code 
        BEFORE INSERT ON deanary FOR EACH ROW BEGIN 
        SELECT 'd_' || deanary_code_auto.NEXTVAL INTO :NEW.code FROM dual;
        END;
        
/*spe_ - speciality*/
    CREATE OR REPLACE TRIGGER add_auto_to_speciality_code 
        BEFORE INSERT ON speciality FOR EACH ROW BEGIN 
        SELECT 'spe_' || speciality_code_auto.NEXTVAL INTO :NEW.code FROM dual;
        END;
        
/*pl_ - studyPlan*/
    CREATE OR REPLACE TRIGGER add_auto_to_study_plan_code
        BEFORE INSERT ON studyPlan FOR EACH ROW BEGIN 
        SELECT 'pl_' || study_plan_code_auto.NEXTVAL INTO :NEW.code FROM dual;
        END;