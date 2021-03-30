CREATE database actNaN
GO
use actNaN
GO

CREATE TABLE Curso(
IDcurso bigint not null primary key check(IDcurso> 1000),
Nombre varchar(50) not null,
Tipo  varchar(50) not null,
Nivel varchar(15) not null check(Nivel ='Principiante' or Nivel = 'Intermedio' or Nivel = 'Avanzado'),
)

GO

CREATE TABLE Alumno(
IdAlumno bigint not null primary key check(IdAlumno> 0),
DNI bigint not null unique,
Nombre varchar(100) not null,
Apellido varchar(100) not null,
Nacimiento date not null check(Nacimiento > getdate))
)
GO

CREATE TABLE Inscripcion(
IdCurso bigint not null  foreign key references Curso(IDcurso),
IdAlumno bigint not null foreign key references Alumno(IdAlumno),
Nivel varchar(15) not null
)

GO
