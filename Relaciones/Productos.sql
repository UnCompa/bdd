-- Productos
-- Crear tabla ventas
create table ventas(
id_venta int,
codigo_producto int not null,
fecha_venta date not null,
cantidad int,
constraint id_venta_pk primary key (id_venta)
)

-- Seleccionar tabla productos
select * from productos

--Seleccion de la tabla ventas
select * from ventas

-- Crear relacion
alter table ventas
add constraint ventas_codigo_producto_fk
foreign key (codigo_producto)
references productos(codigo)

-- Inserciones en productos
insert into productos (codigo, nombre, descripcion, precio, stock)
values
	(105, 'Puerta negra', '',12.99,2);
-- Inserciones a ventas
insert into ventas (id_venta, codigo_producto, fecha_venta, cantidad)
values
	(3,104,'2024-08-23',1)
