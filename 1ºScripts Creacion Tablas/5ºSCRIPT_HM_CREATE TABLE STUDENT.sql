-------------------------
--Autores

--Javier Jiménez 

-------------------------

CREATE TABLE student(
   	 dni  VARCHAR(40),
    	name  VARCHAR(15),
    	surname  VARCHAR(15),
    	cifCenter VARCHAR(15),
    	CONSTRAINT pk_student_dni PRIMARY KEY(dni),
    	CONSTRAINT student_employe_code_fk FOREIGN KEY (cifCenter) REFERENCES center(cif)

);