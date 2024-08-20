-- script 2
create table cuentas (
numero_cuenta char(5) not null,
cedula_propietario char(5) not null,
fecha_creacion date not null,
saldo money not null,
constraint numero_cuenta_pk primary key (numero_cuenta)
);

insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values 
    ('11111', '12121', '19/08/2024', 19.00),
    ('12121', '11111', '19/08/2024', 21.50),
    ('12112', '11111', '19/08/2024', 21.50),
    ('22222', '33333', '20/08/2024', 50.00),
    ('33333', '44444', '20/08/2024', 75.25),
    ('44444', '55555', '21/08/2024', 100.00),
    ('55555', '66666', '21/08/2024', 150.75),
    ('66666', '77777', '22/08/2024', 200.00),
    ('77777', '88888', '22/08/2024', 250.50),
    ('88888', '99999', '23/08/2024', 300.00);
	
-- Que traiga numero de cuenta y saldo
select numero_cuenta,saldo from cuentas;
-- Trae datos entre hoy y hace dos meses
select * from cuentas
where fecha_creacion between '20/06/2024' and '20/08/2024';
-- Trae numero de cuenta y saldo entre hoy y hace dos meses
select numero_cuenta,saldo from cuentas
where fecha_creacion between '20/06/2024' and '20/08/2024'
