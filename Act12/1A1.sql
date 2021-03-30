create database act1a1
GO
use act1a1
GO
-- 


CREATE table Cursos(
IdCurso int not null primary key,
Nombre varchar(30)not null,--NOMBRE DEL CURSO
Tipo varchar(30)not null--IDIOMAS, INFORMATICA, ETC
)


GO

CREATE TABLE Propiedades(
IdCurso int not null primary key foreign key references Cursos(IdCurso),
Modalidad varchar(12)not null check (Modalidad ='Presencial' or Modalidad = 'Distancia'),--
Duracion varchar(10) null,-- MESES QUE DURA 
Dictado varchar(100)not null-- DIAS Y HORARIO 
)

GO
