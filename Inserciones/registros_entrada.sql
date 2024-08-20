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
    (12345, '1729097282', '17/09/2024', '23:05'),
    (12346, '1723345678', '18/09/2024', '08:30'),
    (12347, '1721122334', '18/09/2024', '08:45'),
    (12348, '1722233445', '18/09/2024', '09:00'),
    (12349, '1723344556', '18/09/2024', '09:15'),
    (12350, '1724455667', '19/09/2024', '08:00'),
    (12351, '1725566778', '19/09/2024', '08:20'),
    (12352, '1726677889', '19/09/2024', '08:35'),
    (12353, '1727788990', '20/09/2024', '08:50'),
    (12354, '1728899001', '20/09/2024', '09:05');
