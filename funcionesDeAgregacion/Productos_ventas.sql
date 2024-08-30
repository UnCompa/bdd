--> Producto y ventas

-- Obtener el maximo precio de todos los productos

select MAX(precio) as precio_maximo from productos

-- Obtener la suma total de la cantidad de productos venndidos

select SUM(cantidad) as cantidad_total_vendida
from ventas