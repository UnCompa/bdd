select * from estudiantes
drop table profesores
-- Crear tabla profesores
create table profesores (
codigo int,
nombre varchar(50) not null,
constraint profesores_codigo_pk primary key (codigo)
)

select * from profesores

-- Insertar tablas para profesores
insert into profesores (codigo, nombre) 
values 
	(1,'Francisco'),
	(2,'Pedro'),
	(3,'Franco'),
	(4,'Pablo'),
	(5,'Brandon'),
	(6,'Lucia'),
	(7,'Marta'),
	(8,'Emily'),
	(9,'Sam'),
	(10,'Estefany');

-- Insertar estudiantes referenciando a un profesor

-- Agregar columna para la referencia
alter table estudiantes
add column codigo_profesor int
-- Agregar la referencia
alter table estudiantes
add constraint estudiantes_codigo_profesor_fk
foreign key (codigo_profesor)
references profesores(codigo)
-- Agrear inserciones
insert into estudiantes (cedula, nombre, apellido, email, fecha_nacimiento, codigo_profesor)
values
    ('1729097238', 'Brand', 'Navarro', 'brand@gmail.com', '2000-08-21', 1),
    ('1723456789', 'Linda', 'Mendoza', 'linda.mendoza@gmail.com', '1998-11-15', 2),
    ('1729876543', 'Carlos', 'Andrade', 'carlos.andrade@gmail.com', '2001-03-09', 3),
    ('1726543210', 'Veronica', 'Benitez', 'veronica.benitez@gmail.com', '1999-07-12', 4),
    ('1721234567', 'Juan', 'Gonzalez', 'juan.gonzalez@gmail.com', '2002-05-18', 5),
    ('1728765432', 'Santiago', 'Santana', 'santiago.santana@gmail.com', '2000-12-30', 6),
    ('1721357924', 'Maria', 'Montenegro', 'maria.montenegro@gmail.com', '1997-10-22', 2),
    ('1721928374', 'Lucia', 'Rodriguez', 'lucia.rodriguez@gmail.com', '1999-09-05', 8),
    ('1728473629', 'Fernando', 'Ramos', 'fernando.ramos@gmail.com', '2001-04-17', 9),
    ('1721230987', 'Ana', 'Vargas', 'ana.vargas@gmail.com', '1998-02-13', 5);

-- Tabla colegio
create table colegio (
nombre varchar(50) not null,
direccion varchar(100) not null,
telefono int
constraint colegio_nombre_pk primary key (nombre)
)