--script 6

create table transacciones(
codigo int not null,
numero_cuenta char(5) not null,
monto money not null,
tipo char(1) not null,
fecha date not null,
hora time not null,
constraint codigo_pkey primary key (codigo)
);

insert into transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora)
values
    (65432, '56789', 200.0, 'C', '20/09/2024', '17:23'),
    (12346, '56790', 110.0, 'C', '19/08/2024', '23:10'),
    (12347, '56791', 150.0, 'D', '20/08/2024', '09:45'),
    (12348, '56792', 200.0, 'C', '20/08/2024', '10:30'),
    (12349, '56793', 75.0, 'D', '21/08/2024', '11:15'),
    (12350, '56794', 300.0, 'C', '21/08/2024', '12:00'),
    (12351, '56795', 50.0, 'D', '22/08/2024', '14:30'),
    (12352, '56796', 400.0, 'C', '22/08/2024', '15:45'),
    (12353, '56797', 250.0, 'D', '23/08/2024', '16:55'),
    (12354, '56798', 500.0, 'C', '23/08/2024', '18:10');
	
-- Transaccionres con tipo D
select * from transacciones
where tipo = 'D';

-- Montos entre 200 y 2000
select * from transacciones
where monto between '200' and '2000'

-- Seleccionar codigo,monto,tipo.fecha que tenga diferente a null
select codigo,monto,tipo,fecha from transacciones
where fecha != null
 
-- Actualizar el tipo donde sea entre 100 a 500, 
--el mes de septiembre entre las 14:00 y las 20:00
update transacciones set tipo = 'D'
where monto > money(100)
and monto < money(500)
and fecha = '20/09/2024'
and hora between '14:00' and '20:00'

-- Eliminar las transferencias del 14:00 al 18:00 
--del mes de agosto del año actuañ
delete from transacciones
where hora between '14:00:00' and '18:00:00' AND
fecha between '2024-08-01' and '2024-08-30'

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(78945, '75369', 200, 'C', '20/09/2023', '23:30');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(53147, '32102', 500.65, 'D', '15/06/2022', '17:55');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(32548, '21001', 1600, 'C', '17/05/2021', '16:37');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(32165, '51437', 1050, 'D', '25/04/2020', '15:48');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(78542, '02147', 300, 'D', '20/03/2019', '22:19');

insert into transacciones(codigo, numero_cuenta, monto, tipo,fecha, hora)
values(23210, '32015', 400, 'C', '20/03/2019', '13:55');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(35412, '85214', 600, 'D', '07/12/2015', '20:14');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(54193, '96325', 800, 'D', '06/11/2012', '11:00');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(95124, '74125', 900, 'D', '23/10/2002', '9:00');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(23532, '23001', 2000, 'C', '11/09/1999', '7:30');

-- Mas consultas
select * from transacciones
where tipo = 'C' and numero_cuenta between '22004' and '222001'

select * from transacciones
where tipo = 'D' and fecha = '17/05/2021' and  numero_cuenta between '22007' and '22010'

select * from transacciones
where codigo between 1 and 5 and numero_cuenta >= '22002' and numero_cuenta <= '22004' 
and fecha between '26/05/2021' and '29/05/2021'