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

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1235476801,'Raul','Martínez','raumart01@gmail.com','04/02/2003');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1735476802,'Mario','Guaman','MarioG25@gmail.com', '08/12/2000');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1235476803,'Roberto','Quishpe','RobQuishpe64@gmail.com','29/06/2005');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1735476804,'Paul','Noguera','PaulNog55@gmail.com','22/07/2002');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1235476805,'Marcelo','Ramos','MarceloR72@gmail.com','15/08/2008');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1735476806,'Anthony','Agual','KAgual22@gmail.com','25/03/2002');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1235476807,'Paula','Celi','PauCeli31@gmail.com','30/09/2010' );
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1735476808,'Mónica','Martínez','MoniMar15@gmail.com','22/01/2001');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1235476809,'Anabel','Perlaza','WPerlaza18@gmail.com','12/04/2000');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1735476810,'Sofía','Jimenez','SofiJz22@gmail.com','22/01/2001');

-- Borrar donde la cedula termina en 05
delete from estudiantes
where cedula like '%05'

-- Mas consultas
select nombre, apellido from estudiantes
where nombre like 'm%' or apellido like '%z'

select nombre from estudiantes
where cedula like '%33%' and cedula like '18%'

select nombre,apellido from estudiantes
where cedula like '06' or cedula like '17%'