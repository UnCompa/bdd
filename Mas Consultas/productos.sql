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
values(20492,'Tomate',2.0,1),
(88888,'Jabon',11.99,2),
(99999,'Consola',999.99,5);

-- Productos que empiezan con la letra Q
select * from productos
where nombre like 'Q%';
-- Descripciones que sea nulas
select * from productos
where descripcion is null;
-- Precios que esten entre 2 y 3
select * from productos
where precio between '2' and '3';


-- Actualizat el stock a 0 donde la descripcion sea null

update productos set stock = 0
where descripcion is null;

-- Eliminar todos los productos donde la descripcion sea nula
delete from productos
where descripcion is null

insert into productos(codigo,nombre,descripcion,precio,stock) 
values (1,'Jabón','Lava todo',3.50,10);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (2,'Shampoo','Savital',2.50,20);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (3,'Deja','Deja',1.50,30);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (4,'Pasta dental','Fortident',3.0,40);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (5,'Cera','Cera de piso',2.50,50);
insert into productos(codigo,nombre,precio,stock) 
values (6,'Pan',1.50,50);
insert into productos(codigo,nombre,precio,stock) 
values (7,'Queso',5.50,60);
insert into productos(codigo,nombre,precio,stock)
values (8,'Leche',2.50,70);
insert into productos(codigo,nombre,precio,stock)
values (9,'Jamon',1.00,120);
insert into productos(codigo,nombre,precio,stock)
values (11,'Mochila',3.50,300);

-- Mas consultas
select * from productos
where stock = 10 and precio < money(10)

select nombre, stock from productos
where nombre like '%m%' or descripcion = ' '

select nombre from productos
where descripcion is null or stock = 0
