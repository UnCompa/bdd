-- Crear consulta para obtener numeros de cuenta 
-- y nombres de usuario cuyo saldo este entre 100 y 1000

select cu.numero_cuenta, u.nombre 
from usuario as u, cuentas as cu 
where u.cedula = cu.cedula_propietario

-- Obtener todos los datos de cuentas y usuarios donde
-- la fecha de creacion de la cuenta ente 
-- entre 2022-09-21 y 2023-09-21

select cu.numero_cuenta, cu.fecha_creacion, cu.saldo, u.cedula 
from usuario as u, cuentas as cu
where (cu.fecha_creacion between '2022-09-21' and '2023-09-21')
and( u.cedula = cu.cedula_propietario)
