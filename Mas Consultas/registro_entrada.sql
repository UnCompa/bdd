-- script 4

create table registros_entrada(
codigo_registro int not null,
cedula_empleado char(10) not null,
fecha date not null,
hora time not null,
constraint codigo_registro_pk primary key (codigo_registro)
);

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values
    (66666, '1729097282', '17/08/2024', '23:05'),
    (12346, '1723345678', '18/09/2024', '08:30'),
    (12347, '1721122334', '18/09/2024', '08:45'),
    (12348, '1722233445', '18/09/2024', '09:00'),
    (12349, '1723344556', '18/09/2024', '09:15'),
    (12350, '1724455667', '19/09/2024', '08:00'),
    (12351, '1725566778', '19/09/2024', '08:20'),
    (12352, '1726677889', '19/09/2024', '08:35'),
    (12353, '1727788990', '20/09/2024', '08:50'),
    (12354, '1728899001', '20/09/2024', '09:05');

-- Seleccionar cedula del empleado, fecha, hora
select cedula_empleado, fecha, hora from registros_entrada;

-- Que esten entre  las 7:00 y 14:00
select * from registros_entrada
where hora between '7:00' and '14:00';

-- Que tengan horas superiores a 8:00
select * from registros_entrada
where hora > '8:00';

-- Actualizar cedula donde el mes sea de agosto
update registros_entrada set cedula_empleado = '082345679'
where fecha = '17/08/2024'

-- Borrar todo lo del mes de junio
delete from registros_entrada 
where fecha between '2024-06-01' AND '2024-06-30'

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(56345, '1754416489', '18/06/2023', '7:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12355, '1758254591', '03/08/2023', '14:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12346, '1715974492', '25/03/2022', '23:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12347, '1735642583', '28/12/2015', '16:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12389, '1707416984', '16/07/2012', '8:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12349, '1778541235', '17/03/2013', '10:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12310, '1742158637', '14/05/2017', '19:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12311, '1756321784', '15/05/2004', '20:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12358, '1712546328', '07/07/2008', '21:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12378, '1725785413', '02/09/2023', '4:00');

-- Mas consultas
select * from registros_entrada
where fecha between '2024-09-01' and '2024-09-30' 
or cedula_empleado like '17%'

select * from registros_entrada
where fecha between '2024-08-01' and '2024-08-30'
or (cedula_empleado like '17%' and hora between '08:00:00' and '12:00:00')

select * from registros_entrada
where fecha between '2024-08-01' and '2024-08-30'
or (cedula_empleado like '17%' and hora between '08:00:00' and '12:00:00') 
or (fecha between '2024-09-01' and '2024-09-30' and cedula_empleado like '08%' and hora between '09:00:00' and '13:00:00')
