-- script 3

create table estudiantes(
cedula char(10) not null,
nombre varchar(50) not null,
apellido varchar(50) not null,
email varchar(50) not null,
fecha_nacimiento date not null,
constraint cedula_pk primary key (cedula)
);
insert into estudiantes(cedula, nombre, apellido, email, fecha_nacimiento)
values
    ('1729097228', 'Brandon', 'Paillacho', 'brandonddxd@gmail.com', '16/09/2024'),
    ('1723345678', 'Ana', 'Gomez', 'ana.gomez@gmail.com', '25/10/2024'),
    ('1721122334', 'Luis', 'Martinez', 'luis.martinez@gmail.com', '30/11/2024'),
    ('1722233445', 'Maria', 'Lopez', 'maria.lopez@gmail.com', '14/12/2024'),
    ('1723344556', 'Carlos', 'Sanchez', 'carlos.sanchez@gmail.com', '01/01/2025'),
    ('1724455667', 'Sofia', 'Perez', 'sofia.perez@gmail.com', '23/02/2025'),
    ('1725566778', 'Juan', 'Diaz', 'juan.diaz@gmail.com', '15/03/2025'),
    ('1726677889', 'Camila', 'Torres', 'camila.torres@gmail.com', '27/04/2025');

-- Consulta que trae el nombre y la cedula

select nombre,cedula from estudiantes;

-- Consulta cuya cedula empiece con 17

select * from estudiantes
where cedula like '17%';

-- Traer nombre completos cuyo nombre empience con A
select nombre,apellido from estudiantes
where nombre like 'A%';

-- Actualizar apellido por Hernandez donde la cedula termine en 17
update estudiantes set apellido = 'Hernadez'
where cedula like '17%'

-- Borrar donde la cedula termina en 05
delete from estudiantes
where cedula like '%05'