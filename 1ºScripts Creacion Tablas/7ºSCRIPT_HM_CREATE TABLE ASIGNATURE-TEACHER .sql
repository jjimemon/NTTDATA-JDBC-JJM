-------------------------
--Autores

--Javier Jiménez 

-------------------------

CREATE TABLE asignatureTeacher(
    	asignatureCode NUMERIC(5), 
    	employedCode NUMERIC(5),
    	CONSTRAINT pk_asignatureTeacher PRIMARY KEY(asignatureCode,employedCode),
    	CONSTRAINT asignature_teachers_asignature_code_fk1 FOREIGN KEY (asignatureCode) REFERENCES asignature(asignatureCode),
    	CONSTRAINT asignature_teachers_employed_code_fk2 FOREIGN KEY (employedCode) REFERENCES teacher(employedCode)
);