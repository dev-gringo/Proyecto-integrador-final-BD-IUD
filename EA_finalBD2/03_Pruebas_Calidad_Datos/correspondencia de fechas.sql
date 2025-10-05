-- 5.Verificar correspondencia entre fechas en FACT_VENTAS y la tabla de tiempo
SELECT COUNT(*) AS fechas_no_coinciden
FROM FACT_VENTAS fv
JOIN DIM_TIEMPO dt ON fv.ID_tiempo = dt.ID_tiempo
WHERE dt.fecha IS NULL;
