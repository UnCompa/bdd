drop table usuario
-- Creacion tabla usuario
create table usuario (
cedula char(5),
nombre varchar(25) not null,
apellido varchar(25) not null,
tipo_cuenta varchar(20),
limite_credito decimal(10,5),
constraint cedula_usuario_pk primary key (cedula)
)
-- Creacion tabla cuentas

create table cuentas (
numero_cuenta char(5),
cedula_propietario char(5) not null,
fecha_creacion date not null,
saldo money not null,
constraint numero_cuenta_pk primary key (numero_cuenta)
)

select * from usuario
select * from cuentas

drop table cuentas

alter table cuentas
add column usuario char(5) not null

alter table cuentas
add constraint cuentas_usuario_fk
foreign key (usuario)
references usuario(cedula)


alter table cuentas
add constraint cuentas_cedula_propietario_fk
foreign key (cedula_propietario)
references usuario(cedula)

-- Insertar datos
insert into usuario (cedula,nombre,apellido,tipo_cuenta)
values
	('11111','Brandon','Paillacho','Corriente'),
	('11112','Juan','Perez','Corriente'),
	('11113','Pedro','Buscamante','Corriente'),
	('11114','Santi','Dor','Corriente'),
	('11115','David','Prestamo','Corriente');

--insertar datos a cuentas
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values
	('00001','11111','2022-08-21',120),
	('00002','11112','2022-08-25',150),
	('00003','11113','2022-08-29',250),
	('00004','11114','2022-09-01',360),
	('00005','11115','2022-09-05',450),
	('00006','11114','2022-09-10',510),
	('00007','11112','2022-09-11',620),
	('00008','11113','2022-09-12',720),
	('00009','11112','2022-09-15',860),
	('00010','11115','2022-09-21',999)