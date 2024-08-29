-- REGISRO ENTRADAS
-- Crear tabla empleado
create table empleado (
codigo_empleado int not null,
nombre varchar(25) not null,
fecha date not null,
hora time not null,
constraint empleado_codigo_pk primary key (codigo_empleado)
)
-- Seleccionar registros
select * from registros_entrada
delete from registros_entrada
delete from empleado
-- Agregar columna para la relacionx
alter table registros_entrada
add column codigo_empleado int not null

-- Agregar relacion a la tabla empleado
alter table registros_entrada
add constraint registros_entrada_codigo_empleado_fk
foreign key (codigo_empleado)
references empleado(codigo_empleado)

-- Insertar empleados
insert into empleado (codigo_empleado, nombre, fecha, hora)
values
    (1, 'Pablo', '31/12/2023', '08:00'),
    (2, 'Lucia', '15/08/2023', '09:30'),
    (3, 'Carlos', '01/09/2023', '10:45'),
    (4, 'Veronica', '30/09/2023', '11:15'),
    (5, 'Miguel', '12/10/2023', '12:00'),
    (6, 'Sandra', '25/10/2023', '08:30'),
    (7, 'Fernando', '05/11/2023', '09:00'),
    (8, 'Ana', '20/11/2023', '10:00'),
    (9, 'Diego', '10/12/2023', '12:30'),
    (2201, 'Maria', '22/12/2023', '13:00');

-- Insertar registros_entradas
insert into registros_entrada (codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
values
    (1, '1720097228', '31/12/2023', '08:00', 1),
    (2, '1723456789', '15/08/2023', '09:30', 2),
    (3, '1729876543', '01/09/2023', '10:45', 3),
    (4, '1726543210', '30/09/2023', '11:15', 3),
    (5, '1721234567', '12/10/2023', '12:00', 5),
    (6, '1728765432', '25/10/2023', '08:30', 6),
    (7, '1721357924', '05/11/2023', '09:00', 2),
    (8, '1721928374', '20/11/2023', '10:00', 8),
    (9, '1728473629', '10/12/2023', '12:30', 9),
    (10, '1721230987', '22/12/2023', '13:00', 2201);

