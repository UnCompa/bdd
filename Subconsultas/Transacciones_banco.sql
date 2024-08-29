--- Transaccionres y Banco
-- Obtener todas las transacciones de tipo C cuyo
-- numero este entre 22001 y 22004

select * from banco
select * from transacciones
where tipo = 'C' and numero_cuenta between  '22001' and '22004'

-- Obtener todos los datos de transacciones cuyo codigo corresponde 
-- al codigo de transaccion del banco con codigo 1

select tr.codigo, tr.numero_cuenta, tr.monto, tr.tipo, tr.fecha, tr.hora
from transacciones as tr, banco as b 
where b.codigo_banco = 1 and tr.codigo = 1