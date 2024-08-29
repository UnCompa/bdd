select * from clientes
select * from compras
-- Creacion de la tabla
create table compras (
id_compra int,
cedula char(10) not null,
fecha_compra date not null,
monto decimal(10,2) not null,
constraint id_compra_pk primary key (id_compra)
)
-- Relacion con la tabla clientes
alter table compras
add constraint compras_clientes_fk
foreign key (cedula)
references clientes(cedula)

-- Insertar datos para ambas tablas
-- Tabla de clientes
insert into clientes (cedula, nombre, apellido, edad) 
values 
	('1729097228','Brandon','Paillacho',17),
	('1709231427','Monica','Ipiales',21),
	('1729097148','Juan','Perez',22),
	('1799999999','Lion','scrum',99),
	('1729092345','Cristiano','Ronaldo',23);
--Tabla de compras
insert into compras (id_compra, cedula, fecha_compra, monto) 
values 
	(11,'1234567890','2024-08-26',5),
	(2,'1729097148','2024-07-26',2),
	(3,'1799999999','2024-08-26',3),
	(4,'1709231427','2024-04-26',5),
	(5,'1729097228','2024-08-26',1),
	(6,'1799999999','2024-02-26',2.5),
	(7,'1729097228','2024-08-26',10),
	(8,'1729097148','2024-02-26',2.5),
	(9,'1729092345','2024-01-26',3.33),
	(10,'1709231427','2024-08-26',1.11)
