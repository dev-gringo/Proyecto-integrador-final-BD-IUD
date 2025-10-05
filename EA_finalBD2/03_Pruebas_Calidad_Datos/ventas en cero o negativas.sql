-- 4. Verificar que no haya ventas con cantidad o total en cero o negativos
SELECT COUNT(*) AS ventas_con_valores_invalidos
FROM FACT_VENTAS
WHERE cantidad <= 0 OR total_venta <= 0;
