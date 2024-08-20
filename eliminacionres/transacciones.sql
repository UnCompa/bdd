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