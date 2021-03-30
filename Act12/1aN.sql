CREATE database act1aN
GO
use act1aN
GO

CREATE TABLE Alumno(
DNIalumno bigint not null unique,--DNI DEL ALUMNO  RESTRCCION UNICA
IdAlumno bigint not null primary key check(IdAlumno > 1000),-- ENTERO MAYOR A 1000
Nombre varchar(100)not null,-- NOMBRE DEL ALUMNO NOT NULL
Apellidos varchar(100)not null,-- APELLIDO DEL ALUMNO NOT NULL
Nacimiento date not null check(Nacimiento < getdate()),--NACIMIENTO MENOR A FECHA ACTUAL

)

GO

CREATE TABLE Calificacion(
IdCurso bigint not null primary key,
IdAlumno bigint not null foreign key references Alumno(IdAlumno),
Calificacion tinyint null check(Calificacion >=0 and Calificacion <= 100),
Progreso float null,--INSTANCIA DE CURSADO, 
)

GO