-- 2.Verificar que no existan claves foráneas huérfanas en FACT_VENTA
-- Productos no encontrados en dimensión
SELECT COUNT(*) AS productos_huerfanos
FROM FACT_VENTAS fv
LEFT JOIN DIM_PRODUCTO dp ON fv.ID_producto = dp.ID_producto
WHERE dp.ID_producto IS NULL;

-- Clientes no encontrados en dimensión
SELECT COUNT(*) AS clientes_huerfanos
FROM FACT_VENTAS fv
LEFT JOIN DIM_CLIENTE dc ON fv.ID_cliente = dc.ID_cliente
WHERE dc.ID_cliente IS NULL;

-- Empleados no encontrados en dimensión
SELECT COUNT(*) AS empleados_huerfanos
FROM FACT_VENTAS fv
LEFT JOIN DIM_EMPLEADO de ON fv.ID_empleado = de.ID_empleado
WHERE de.ID_empleado IS NULL;

-- Fechas no encontradas en dimensión
SELECT COUNT(*) AS tiempo_huerfano
FROM FACT_VENTAS fv
LEFT JOIN DIM_TIEMPO dt ON fv.ID_tiempo = dt.ID_tiempo
WHERE dt.ID_tiempo IS NULL;