-- Script 1

--create table productos (
--codigo int not null,
--nombre varchar(50) not null,
--descripcion varchar(200),
--precio money not null,
--stock int not null,
--constraint codigo_pk primary key (codigo)
--);

--insert into productos(codigo,nombre,descripcion,precio,stock)
--values(12345,'Papa','Aqui va mi super descripcion',10.0,1),
--(54321,'Arroz','Granos de trigo',9.99,2),
--(43215,'Zanahoria','Producto insano',1.0,5),
--(23124,'Laptop','La mejor del mundo',129.0,3),
--(21312,'PC','Pc gamer para jugar',299.99,2);

-- Solo con parametros requeridos

insert into productos(codigo,nombre,precio,stock)
values(77777,'Nuez',22.12,1),
(88888,'Jabon',11.99,2),
(99999,'Consola',999.99,5);

select * from productos;