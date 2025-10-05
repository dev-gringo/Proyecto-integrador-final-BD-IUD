-- 6.Revisar si hay fechas fuera de un rango razonable (por ejemplo, antes del 2000 o en el futuro)
SELECT COUNT(*) AS fechas_fuera_de_rango
FROM DIM_TIEMPO
WHERE fecha < '2000-01-01' OR fecha > CURDATE();
