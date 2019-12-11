go
create database programacionWebFinal
go
use programacionWebFinal
go

create table usuario
(
Id_Usuario int not null primary key,
Email varchar(50),
Clave varchar(50)
);

create table mantenimientoSocio
(
id_mantenimientoSocio int primary key not null,
nombre varchar(50),
apellido varchar(50),
cedula char(11) unique not null,
direccion varchar(100) not null,
telefono_celular_fax int,
sexo char(1),
edad int,
fecha_nacimiento datetime,
afiliados varchar(50),
datos_membresia int not null,
lugar_de_trabajo int not null,
direccion_oficina varchar(50),
tel_oficina char(11) unique,
estado_membresia int not null,
fecha_ingreso datetime default getdate(),
fecha_salida datetime not null,
constraint fk_datos_membresia foreign key (datos_membresia) references membresia (id_membresia),
constraint fk_lugar_de_trabajo foreign key (lugar_de_trabajo) references lugar_de_trabajo (id_lugar_de_trabajo),
constraint fk_estado_membresia foreign key (estado_membresia) references estado_membresia (id_estado_membresia)
);

create table estado_membresia
(
id_estado_membresia int primary key not null,
estado varchar(50) default'Activo/Inactivo son las opciones'
);


create table membresia
(
id_membresia int primary key not null,
vencimiento datetime not null,
profesion_actividad varchar(50) not null,
tipo_membresia varchar(50) not null,
correo varchar(50) not null
);

create table lugar_de_trabajo
(
id_lugar_de_trabajo int primary key not null,
cargo varchar(50) not null,
hora_entrada varchar(10) not null,
hora_salida varchar(50) not null,
);



select * from usuario
select * from estado_membresia
select * from mantenimientoSocio
select * from membresia
select * from lugar_de_trabajo






insert into usuario values(1,'yunior','1234')
insert into usuario values(2,'matos','55555')

