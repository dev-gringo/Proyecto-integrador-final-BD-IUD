-- 3.Verificar duplicados en las dimensiones (por ID)
-- Producto
SELECT ID_producto, COUNT(*) AS veces
FROM DIM_PRODUCTO
GROUP BY ID_producto
HAVING COUNT(*) > 1;

-- Cliente
SELECT ID_cliente, COUNT(*) AS veces
FROM DIM_CLIENTE
GROUP BY ID_cliente
HAVING COUNT(*) > 1;

-- Empleado
SELECT ID_empleado, COUNT(*) AS veces
FROM DIM_EMPLEADO
GROUP BY ID_empleado
HAVING COUNT(*) > 1;

-- Tiempo (por fecha)
SELECT fecha, COUNT(*) AS veces
FROM DIM_TIEMPO
GROUP BY fecha
HAVING COUNT(*) > 1;
