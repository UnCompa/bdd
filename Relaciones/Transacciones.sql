-- TRANSACCIONES
-- Crear tabla banco
create table banco (
codigo_banco int,
codigo_transaccion int,
detalle varchar(100),
constraint banco_codigo_banco_pk primary key (codigo_banco)
)
drop from banco
delete from transacciones
-- Selecionar tabla transacciones
select * from transacciones

-- Agregar relacion con banco
alter table transacciones
add constraint transacciones_banco_fk
foreign key (codigo)
references banco(codigo_banco)

-- Insercciones en banco
insert into banco (codigo_banco, codigo_transaccion, detalle)
values
    (1, 1, 'Transaccion hecha al codigo 1'),
    (2, 1, 'Transaccion hecha al codigo 1 de nuevo'),
    (3, 2, 'Transaccion hecha al codigo 2'),
    (4, 3, 'Transaccion hecha al codigo 3'),
    (5, 2, 'Transaccion hecha al codigo 2 otra vez'),
    (6, 4, 'Transaccion hecha al codigo 4'),
    (7, 5, 'Transaccion hecha al codigo 5'),
    (8, 6, 'Transaccion hecha al codigo 6'),
    (9, 6, 'Transaccion hecha al codigo 6 de nuevo'),
    (10, 7, 'Transaccion hecha al codigo 7');

insert into transacciones (codigo, numero_cuenta, monto,tipo,fecha,hora)
values
	(1,'22001',120.0,'C','08/11/2024','12:00'),
	(2,'22002',180.0,'C','08/11/2024','13:00'),
	(3,'22003',210.0,'D','08/11/2024','15:00'),
	(4,'22004',250.0,'D','08/02/2024','18:00'),
	(5,'22005',450.0,'C','08/11/2024','09:00'),
	(6,'22006',550.0,'C','02/11/2024','11:00'),
	(7,'22007',260.0,'C','08/11/2024','18:00'),
	(8,'22008',220.0,'C','08/11/2024','18:00'),
	(9,'22009',280.0,'D','01/12/2024','19:00'),
	(10,'22010',290.0,'C','09/11/2024','12:00'),