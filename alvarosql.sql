create database db_universidad;
use db_universidad;
drop database db_universidad;


create table departamento(
	id_departamento int (10),
    nom varchar (50)
);


insert into departamento(id_departamento, nom) values (1, 'Juan');
insert into departamento(id_departamento, nom) values (2, 'Steven');
insert into departamento(id_departamento, nom) values (3, 'Gabriel');
insert into departamento(id_departamento, nom) values (4, 'David');
insert into departamento(id_departamento, nom) values (5, 'Mauricio');


create table profesor(
	id_profesor int (10),
    nif varchar (9),
    nombre varchar (25),
    apellido1 varchar (50),
	apellido2 varchar (50),
    ciudad varchar (25),
    direccion varchar (50),
    telefono varchar (9),
    fecha_nacimiento date,
    sexo enum ('H', 'M'),
    id_departamento int (10)
);


insert into profesor (id_profesor, nif, nombre, apellido1, apellido2, ciudad, direccion, telefono, fecha_nacimiento, sexo, id_departamento) values (1, '234567890', 'Francy', 'lady', 'Rojas', 'Armenia', 'Calle 23 #48', '912345678', '2005-01-12', 'M', 1);
insert into profesor (id_profesor, nif, nombre, apellido1, apellido2, ciudad, direccion, telefono, fecha_nacimiento, sexo, id_departamento) values (2, '654321098', 'Alvaro', 'Rodrigo', 'Rojas', 'Guajira', 'Calle 33 #18', '503217896', '2001-05-14', 'H', 2);
insert into profesor (id_profesor, nif, nombre, apellido1, apellido2, ciudad, direccion, telefono, fecha_nacimiento, sexo, id_departamento) values (3, '321098765', 'Edwin', 'Rozo', 'Penagos', 'Calarca', 'Calle 10 #12', '726489301', '2000-01-06', 'H', 3);
insert into profesor (id_profesor, nif, nombre, apellido1, apellido2, ciudad, direccion, telefono, fecha_nacimiento, sexo, id_departamento) values (4, '890123456', 'Luciana', 'Zapata', 'Restrepo', 'Caicedonia', 'Calle 9 #45', '158903467', '1999-02-12', 'H', 4);
insert into profesor (id_profesor, nif, nombre, apellido1, apellido2, ciudad, direccion, telefono, fecha_nacimiento, sexo, id_departamento) values (5, '543210987', 'Jorge', 'Castaño', 'Lopez', 'Huila', 'Calle 21 #26', '643218579', '2004-2-12', 'H', 5);


create table asignatura(
	id_asignatura int (10),
    nombre varchar (100),
    creditos float,
    tipo enum ('Básico', 'Avanzado', 'Especializado'),
    curso tinyint (3),
    cuatrimestre tinyint (3),
    id_profesor int (10),
    id_grado int (10)
);



insert into asignatura (id_asignatura, nombre, creditos, tipo, curso, cuatrimestre, id_profesor, id_grado) values (1, 'Intrduccion A La Programacion', 5.0, 'Basico', 1, 1, 1, 1);
insert into asignatura (id_asignatura, nombre, creditos, tipo, curso, cuatrimestre, id_profesor, id_grado) values (2, 'Matematicas Avanzadas', 5.0, 'Especializado', 2, 2, 2, 2);
insert into asignatura (id_asignatura, nombre, creditos, tipo, curso, cuatrimestre, id_profesor, id_grado) values (3, 'Pseudocodigo', 5.0, 'Basico', 3, 3, 3, 3);
insert into asignatura (id_asignatura, nombre, creditos, tipo, curso, cuatrimestre, id_profesor, id_grado) values (4, 'Manejo En JavaScript', 4.5, 'Basico', 4, 4, 4, 4);
insert into asignatura (id_asignatura, nombre, creditos, tipo, curso, cuatrimestre, id_profesor, id_grado) values (5, 'java', 4.5, 'Avanzado', 5, 5, 5, 5);


create table grado(
	id_grado int (10),
    nombre varchar (100)
);

insert into grado (id_grado, nombre) values (1, 'Juan');
insert into grado (id_grado, nombre) values (2, 'Jesus');
insert into grado (id_grado, nombre) values (3, 'Laura');
insert into grado (id_grado, nombre) values (4, 'Angie');
insert into grado (id_grado, nombre) values (5, 'Valentina');


create table alumno_se_matricula_asignatura(
	id_alumno int (10),
    id_asignatura int (10),
    id_curso_escolar int (10)
);


insert into alumno_se_matricula_asignatura (id_alumno, id_asignatura, id_curso_escolar) values (1, 1, 1);
insert into alumno_se_matricula_asignatura (id_alumno, id_asignatura, id_curso_escolar) values (2, 2, 2);
insert into alumno_se_matricula_asignatura (id_alumno, id_asignatura, id_curso_escolar) values (3, 3, 3);
insert into alumno_se_matricula_asignatura (id_alumno, id_asignatura, id_curso_escolar) values (4, 4, 4);
insert into alumno_se_matricula_asignatura (id_alumno, id_asignatura, id_curso_escolar) values (5, 5, 5);



create table alumno(
	id_alumno int (10),
    nif varchar (9),
    nombre varchar (25),
    apellido1 varchar (50),
    apellido2 varchar (50),
    ciudad varchar (25),
    direccion varchar (25),
    telefono varchar (9),
    fecha_nacimiento date,
    sexo enum ('H', 'M') 
);


insert into alumno (id_alumno, nif, nombre, apellido1, apellido2, ciudad, direccion, telefono, fecha_nacimiento, sexo) values (1, '123456789', 'Jorge', 'Hernando', 'Pérez', 'Armenia', 'Calle principal 24', '789012345', '2021-06-7', 'H');
insert into alumno (id_alumno, nif, nombre, apellido1, apellido2, ciudad, direccion, telefono, fecha_nacimiento, sexo) values (2, '987654321', 'Juan', 'José', 'Pérez', 'Cali', 'Calle principal 32', '456789012', '2016-05-27', 'H');
insert into alumno (id_alumno, nif, nombre, apellido1, apellido2, ciudad, direccion, telefono, fecha_nacimiento, sexo) values (3, '192837465', 'Valentina', 'Rojas', 'Echavarria', 'Pereira', 'Calle principal 21', '234567890', '2019-10-10', 'M');
insert into alumno (id_alumno, nif, nombre, apellido1, apellido2, ciudad, direccion, telefono, fecha_nacimiento, sexo) values (4, '091287345', 'Steven', 'Villegas', 'zapata', 'Finlandia', 'Calle principal 10', '987654321', '2012-12-12', 'H');
insert into alumno (id_alumno, nif, nombre, apellido1, apellido2, ciudad, direccion, telefono, fecha_nacimiento, sexo) values (5, '123123123', 'Sandra', 'Milena', 'Buriticá', 'Caicedonia', 'Calle principal 25', '876543210', '2005-08-10', 'M');


create table curso_escolar(
	id_curso_escolar int (10),
    anyo_inicio year (4),
    anyo_fin year (4)
);


insert into curso_escolar (id_curso_escolar, anyo_inicio, anyo_fin) values (1,2022, 2023);
insert into curso_escolar (id_curso_escolar, anyo_inicio, anyo_fin) values (2,2024, 2025);
insert into curso_escolar (id_curso_escolar, anyo_inicio, anyo_fin) values (3,2025, 2026);
insert into curso_escolar (id_curso_escolar, anyo_inicio, anyo_fin) values (4,2026, 2027);
insert into curso_escolar (id_curso_escolar, anyo_inicio, anyo_fin) values (5,2027, 2028);


show databases;
show tables;


select * from departamento;
select * from curso_escolar;
select * from alumno;
select * from profesor;
select * from grado;
select * from asignatura;
select * from alumno_se_matricula_asignatura;