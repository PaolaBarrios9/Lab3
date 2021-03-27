CREATE database act11
GO
use act11
GO

CREATE TABLE Carreras(
ID		 varchar(4) not null primary key,
Nombre varchar(50) not null,
FechaCreacion date not null check(FechaCreacion < getdate()),
Mail varchar(50) not null,
Nivel varchar(11) check(Nivel ='Diplomatura' or Nivel ='Pregrado' or Nivel = 'Grado' or Nivel = 'Posgrado')

)
GO

CREATE TABLE Materias(

ID int not null primary key identity(1,1),
IDcarrera varchar(4) not null foreign key references Carreras(ID),
Nombre varchar(50) not null,
CargaHor smallint not null check(CargaHor > 0)

)

GO


CREATE TABLE Alumnos(

Legajo bigint not null primary key identity(1000,1),
IdCarrera varchar(4) not null foreign key references Carreras(ID),
Apellido varchar(50) not null,
Nombre varchar(50) not null,
FechaNacimiento date not null check(FechaNacimiento<getdate()),
Mail varchar(50) not null unique,
Telefono int null


)
GO
