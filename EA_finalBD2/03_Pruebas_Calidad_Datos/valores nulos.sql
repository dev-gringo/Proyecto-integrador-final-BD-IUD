-- 1. Verificar que no haya valores nulos en claves primarias
-- DIM_PRODUCTO
SELECT COUNT(*) AS nulls_ID_producto FROM DIM_PRODUCTO WHERE ID_producto IS NULL;

-- DIM_CLIENTE
SELECT COUNT(*) AS nulls_ID_cliente FROM DIM_CLIENTE WHERE ID_cliente IS NULL;

-- DIM_EMPLEADO
SELECT COUNT(*) AS nulls_ID_empleado FROM DIM_EMPLEADO WHERE ID_empleado IS NULL;

-- DIM_TIEMPO
SELECT COUNT(*) AS nulls_ID_tiempo FROM DIM_TIEMPO WHERE ID_tiempo IS NULL;

-- FACT_VENTAS
SELECT COUNT(*) AS nulls_ID_fact FROM FACT_VENTAS WHERE ID_fact IS NULL;