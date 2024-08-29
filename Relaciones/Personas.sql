-- PERSONAS
-- Crear tabla personas 
create table persona (
cedula char(10) not null,
nombre varchar(50) not null,
apellido varchar(50) not null,
estatura decimal(10,2),
fecha_nacimiento date not null,
hora_nacimiento time,
cantidad_ahorrada money,
numeros_hijos int,
constraint persona_cedula_pk primary key (cedula)
)

-- Crear tabla prestamo
create table prestamo (
cedula char(10),
monto money,
fecha_prestamo date,
hora_prestamo time,
garante varchar(40),
constraint prestamo_cedula_pk primary key (cedula)
)

-- Agregar relacion
alter table persona
add constraint persona_cedula_fk
foreign key (cedula)
references prestamo(cedula)

--Agregar insercciones en prestamo
insert into prestamo (cedula, monto, fecha_prestamo, hora_prestamo, garante)
values
    ('1729097228', 150, '29/08/2024', '08:30', 'Garantia'),
    ('1723456891', 200, '01/09/2024', '09:00', 'Hipoteca'),
    ('1729875432', 300, '15/09/2024', '10:15', 'Aval'),
    ('1726532103', 250, '20/09/2024', '11:00', 'Garantia'),
    ('1721345674', 180, '25/09/2024', '12:30', 'Prenda'),
    ('1727654325', 220, '01/10/2024', '08:45', 'Hipoteca'),
    ('1713579246', 270, '10/10/2024', '09:30', 'Aval'),
    ('1721983747', 190, '15/10/2024', '10:00', 'Garantia'),
    ('1728436298', 230, '20/10/2024', '11:45', 'Prenda'),
    ('1721209879', 210, '30/10/2024', '12:00', 'Hipoteca');


-- Agregar inserciones para persona
insert into persona (cedula, nombre, apellido, estatura, fecha_nacimiento, hora_nacimiento, cantidad_ahorrada, numeros_hijos)
values
    ('1729097228', 'Brandon', 'Paillacho', 1.60, '10/09/2006', '21:00', 121, 2),
    ('1723456891', 'Lucia', 'Martinez', 1.65, '15/05/2000', '08:30', 500, 1),
    ('1729875432', 'Carlos', 'Lopez', 1.75, '22/11/1998', '14:45', 700, 3),
    ('1726532103', 'Veronica', 'Gomez', 1.68, '02/02/2002', '07:15', 250, 0),
    ('1721345674', 'Sean', 'Ramirez', 1.72, '18/06/1995', '09:00', 180, 2),
    ('1727654325', 'Sandra', 'Perez', 1.70, '30/08/1999', '12:30', 220, 1),
    ('1713579246', 'Fernando', 'Garcia', 1.80, '05/04/2001', '15:00', 270, 4),
    ('1721983747', 'Ana', 'Torres', 1.55, '20/12/2003', '16:45', 190, 0),
    ('1728436298', 'Diego', 'Fernandez', 1.82, '14/07/1997', '19:30', 230, 3),
    ('1721209879', 'Maria', 'Vargas', 1.63, '09/03/2004', '20:15', 1000, 2);
