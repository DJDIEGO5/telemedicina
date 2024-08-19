create database TLMED
use TLMED
use master
drop database TLMED
drop table doctores

create table pacientes(
id_pac numeric(4,0),
usuario varchar(30),
contraseña varchar(30),
nombre varchar(50),
apellido varchar(50), 
fechaNacimiento date,
sexo varchar(15),
correoElectronico varchar(50), 
telefono numeric(9,0),
CONSTRAINT PK_PACIENTE PRIMARY KEY (id_pac)
)
go

create table doctores(
id_med numeric(5,0),
usuario varchar(30),
contraseña varchar(30),
nombre varchar(50),
apellido varchar(50), 
especialidad varchar(30), 
correoElectronico varchar(50), 
telefono numeric(9,0),
CONSTRAINT PK_DOCTOR PRIMARY KEY (id_med)
)
go

drop table recepcionistas
create table recepcionistas(
id_recep numeric(5,0),
usuario varchar(30),
contraseña varchar(30),
nombre varchar(50),
apellido varchar(50), 
correo varchar(50), 
telefono numeric(9,0),
CONSTRAINT PK_RECEP PRIMARY KEY (id_recep)
)
go
drop table citas
create table citas(
id_cita numeric(3,0),
id_pac numeric(4,0),
nombre varchar(30),
apellido varchar(30),
hora time,
gravedad varchar(30),
id_med numeric(5,0),
CONSTRAINT FK_PAC FOREIGN KEY (id_pac) REFERENCES pacientes(id_pac),
)
go