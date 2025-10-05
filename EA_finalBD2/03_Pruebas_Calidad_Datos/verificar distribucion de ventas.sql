-- 7.Verificar distribución de ventas por año y mes para identificar anomalías
SELECT anio, mes, COUNT(*) AS total_ventas, SUM(total_venta) AS total_facturado
FROM FACT_VENTAS fv
JOIN DIM_TIEMPO dt ON fv.ID_tiempo = dt.ID_tiempo
GROUP BY anio, mes
ORDER BY anio, mes;