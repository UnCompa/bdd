-- script 3

create table estudiantes(
cedula char(10) not null,
nombre varchar(50) not null,
apellido varchar(50) not null,
email varchar(50) not null,
echa_nacimiento date not null,
constraint cedula_pk primary key (cedula)
)