create database Planilla_bd;
use Planilla_bd;

create table concepto_4964
(
codigo_concepto varchar(5) primary key,
nombre_concepto varchar(60) not null,
efecto_concepto varchar(1),
estatus_concepto varchar(1)
)engine InnoDB;

create table nominae_4964
(
codigo_nomina varchar(5) primary key,
fecha_inicial_nomina date,
fecha_final_nomina date
)engine InnoDB;

create table puesto_4964
(
codigo_puesto varchar(5) primary key,
nombre_puesto varchar(5) not null,
estatus_puesto varchar (1)
)engine InnoDB;

create table departamento_4964
(
codigo_departamento varchar (5) primary key,
nombre_departamento varchar (60) not null,
estatus_departamento varchar (1) not null
)engine InnoDB;


create table empleado_4964
(
codigo_empleado varchar(5) primary key,
nombre_empleado varchar (60) not null,
codigo_puesto varchar(5),
codigo_departamento varchar (5),
sueldo_empleado float not null,
estatus_empleado varchar(1) not null,
foreign key (codigo_puesto) references puesto_4964(codigo_puesto),
foreign key (codigo_departamento) references departamento_4964(codigo_departamento)
)engine InnoDB;



create table nominad_4964
(
codigo_nomina varchar(5),
codigo_empleado varchar(5),
codigo_concepto varchar(5),
valor_nominaD float,

foreign key (codigo_nomina) references nominae_4964(codigo_nomina),
foreign key (codigo_empleado) references empleado_4964(codigo_empleado),
foreign key (codigo_concepto) references concepto_4964(codigo_concepto)
)engine InnoDB;