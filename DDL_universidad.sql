CREATE DATABASE UNIVERSIDAD;
USE UNIVERSIDAD;
-- creacion de la base de datos 

CREATE TABLE ESTUDIANTES(
ID_ESTUDIANTE INTEGER PRIMARY KEY,
NOMBRE_ESTUDIANTE VARCHAR(50) NOT NULL,
DIRECCION VARCHAR (60) NOT NULL,
TELEFONO INTEGER (15)NOT NULL
);
-- creacion de la tabla ESTUDIANTES  

CREATE TABLE CURSOS(
ID_CURSO INTEGER PRIMARY KEY,
NOMBRE_CURSO VARCHAR(50) NOT NULL
);
-- creacion de la tabla CURSOS 

CREATE TABLE ESTUDIANTE_CURSO (
ID_Estudiante INTEGER NOT NULL,
ID_Curso INTEGER NOT NULL,
FOREIGN KEY (ID_Estudiante) REFERENCES ESTUDIANTES (ID_ESTUDIANTE),
FOREIGN KEY (ID_Curso) REFERENCES CURSOS (ID_CURSO),
PRIMARY KEY (ID_Estudiante, ID_Curso)
);
-- Esta tabla toma los datos de ESTUDIANTES y se relacionan  con los datos de  CURSOS
-- Se toman los identificadores de cada tabla y dentro de la tabla ESTUDIANTE_CURSO  se unifican en una nueva llave primaria COMPUESTA  


CREATE TABLE DOCENTES(
ID_DOCENTE INTEGER PRIMARY KEY,
NOMBRE_DOCENTE VARCHAR(50) NOT NULL,
DIRECCION VARCHAR(80) NOT NULL,
TELEFONO INTEGER (15)NOT NULL
);
-- creacion de la tabla DOCENTES 

CREATE TABLE DOCENTE_CURSO(
ID_Docente INTEGER NOT NULL,
ID_Curso INTEGER NOT NULL,
FOREIGN KEY (ID_Curso) REFERENCES CURSOS (ID_CURSO),
FOREIGN KEY (ID_Docente) REFERENCES DOCENTES (ID_DOCENTE),
PRIMARY KEY (ID_Docente, ID_Curso)
);
-- Esta tabla toma los datos de DOCENTES y se relacionan  con los datos de  CURSOS 
-- Se toman los identificadores de cada tabla y dentro de la tabla DOCENTE_CURSO se unifican en una nueva llave primaria COMPUESTA  

CREATE TABLE AULA (
ID_AULA INTEGER PRIMARY KEY,
NOMBRE_AULA VARCHAR(50) NOT NULL
);
-- creacion de la tabla AULA 

CREATE TABLE AULA_CURSO (
ID_Aula INTEGER NOT NULL,
ID_Curso INTEGER NOT NULL,
FOREIGN KEY (ID_Aula) REFERENCES AULA (ID_AULA),
FOREIGN KEY (ID_Curso) REFERENCES CURSOS (ID_CURSO),
PRIMARY KEY (ID_Aula, ID_Curso)
);
-- Esta tabla toma los datos de AULA y se relacionan  con los datos de  CURSOS 
-- Se toman los identificadores de cada tabla y dentro de la tabla AULA_CURSO se unifican en una nueva llave primaria COMPUESTA  

CREATE TABLE HORARIOS (
ID_HORARIOS INTEGER PRIMARY KEY,
DIA_SEMANA DATE NOT NULL,
HORA_CLASE TIME NOT NULL
);
-- creacion de la tabla HORARIOS 

CREATE TABLE HORARIO_CURSO (
ID_Horario INTEGER NOT NULL,
ID_Curso INTEGER NOT NULL,
FOREIGN KEY (ID_Horario) REFERENCES HORARIOS (ID_HORARIOS),
FOREIGN KEY (ID_Curso) REFERENCES CURSOS (ID_CURSO),
PRIMARY KEY (ID_Horario, ID_Curso)
);
-- Esta tabla toma los datos de HORARIOS y se relacionan  con los datos de CURSOS  
-- Se toman los identificadores de cada tabla y dentro de la tabla HORARIO_CURSO se unifican en una nueva llave primaria COMPUESTA  
