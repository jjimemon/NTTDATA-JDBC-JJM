-------------------------
--Autores

--Javier Jiménez 

-------------------------

CREATE TABLE asignatureStudent(
    	dni VARCHAR(40), 
    	asignatureCode NUMERIC(5),
    	CONSTRAINT pk_asignatureStudent PRIMARY KEY(dni,asignatureCode),
    	CONSTRAINT asignature_student_dni_fk1 FOREIGN KEY (dni) REFERENCES student(dni),
    	CONSTRAINT asignature_code_asignature_code_fk2 FOREIGN KEY (asignatureCode) REFERENCES asignature (asignatureCode)    
);