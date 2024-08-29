--- Clientes y compras
--  Consultar el nombre y apellido dondela cedula tenga el 7
-- en su cedula
select nombre, apellido from clientes
where cedula like '%7%'

-- Obtener todos los clientes cuya cedula sea igual a la 
-- cedula de nombre 'Monica'

select * from clientes
where cedula = '1709231427'