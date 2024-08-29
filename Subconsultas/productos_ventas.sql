--- Productos y ventas
-- Obtener el nombre, stock y cantidad de productos y ventas
-- cuyo nombre contiene la letra 'm' o la descripcion sea
-- igual a 0

select pr.nombre, pr.stock, v.cantidad 
from productos as pr, ventas as v
where nombre like '%m%' or descripcion is null

-- Obtener el nombre y stock de los productos donde el codigo
-- de producto de las ventas corresponde a una cantidad de 5

select pr.nombre, pr.stock 
from productos as pr, ventas as v
where v.cantidad = 5 and pr.codigo = 5
