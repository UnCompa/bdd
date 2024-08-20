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
    ('17112', '17121', '19/08/2024', 999.00),
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
where fecha_creacion between '20/06/2024' and '20/08/2024';


-- Cambiar el saldo donde la cedula empience en 17

update cuentas set  saldo = 10.0
where cedula_propietario like '17%'

-- Eliminar donde cedula_propietario empiece por 10
delete from cuentas
where cedula_propietario like '10%'

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25569,17504,'15/01/2030',500);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25570,17500,'01/11/2028',600);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25571,17501,'22/01/2023',700);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25572,17508,'30/05/2022',800);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25573,17509,'15/03/2023',900);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25574,17510,'15/05/2023',1000);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25575,17507,'15/09/2023',1500);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25576,17515,'15/10/2024',2500);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25577,17512,'15/08/2025',3500);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25513,17503,'15/09/2023',4500);

select numero_cuenta, saldo from cuentas
where saldo > money(100) and saldo < money(1000)

select * from cuentas
where fecha_creacion between '2023-08-20' and '2024-08-20'

select * from cuentas
where saldo = money(0) or cedula_propietario like '%2'