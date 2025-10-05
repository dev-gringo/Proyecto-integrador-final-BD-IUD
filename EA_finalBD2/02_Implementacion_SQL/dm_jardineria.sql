DROP DATABASE IF EXISTS dm_jardineria;
CREATE DATABASE dm_jardineria;
USE dm_jardineria;

-- Dimensiones
CREATE TABLE DIM_PRODUCTO (
  ID_producto INT PRIMARY KEY,
  nombre VARCHAR(70),
  proveedor VARCHAR(50),
  Categoria VARCHAR(50)
);


CREATE TABLE DIM_CLIENTE (
  ID_cliente INT PRIMARY KEY,
  nombre_cliente VARCHAR(50),
  ciudad VARCHAR(50),
  pais VARCHAR(50)
);

CREATE TABLE DIM_EMPLEADO (
  ID_empleado INT PRIMARY KEY,
  nombre VARCHAR(50),
  apellido1 VARCHAR(50)
);

DROP TABLE IF EXISTS DIM_TIEMPO;

CREATE TABLE DIM_TIEMPO (
  ID_tiempo INT AUTO_INCREMENT PRIMARY KEY,
  fecha DATE NOT NULL,
  anio INT,
  mes INT,
  dia INT,
  trimestre INT
);


-- Hechos
CREATE TABLE FACT_VENTAS (
  ID_fact INT AUTO_INCREMENT PRIMARY KEY,
  ID_producto INT,
  ID_cliente INT,
  ID_empleado INT,
  ID_tiempo INT,
  cantidad INT,
  total_venta DECIMAL(15,2),
  FOREIGN KEY (ID_producto) REFERENCES DIM_PRODUCTO(ID_producto),
  FOREIGN KEY (ID_cliente) REFERENCES DIM_CLIENTE(ID_cliente),
  FOREIGN KEY (ID_empleado) REFERENCES DIM_EMPLEADO(ID_empleado),
  FOREIGN KEY (ID_tiempo) REFERENCES DIM_TIEMPO(ID_tiempo)
);
-- Dimensiones
INSERT INTO DIM_PRODUCTO (ID_producto, nombre, proveedor, Categoria)
SELECT DISTINCT 
  ID_producto,
  nombre,
  proveedor,
  gama AS Categoria
FROM staging_jardineria.st_producto;


INSERT INTO DIM_CLIENTE (ID_cliente, nombre_cliente, ciudad, pais)
SELECT DISTINCT ID_cliente, nombre_cliente, ciudad, pais
FROM staging_jardineria.st_cliente;

INSERT INTO DIM_EMPLEADO (ID_empleado, nombre, apellido1)
SELECT DISTINCT ID_empleado, nombre, apellido1
FROM staging_jardineria.st_empleado;

-- Tiempo
INSERT INTO DIM_TIEMPO (fecha, anio, mes, dia, trimestre)
SELECT DISTINCT 
  p.fecha_pedido,
  YEAR(p.fecha_pedido),
  MONTH(p.fecha_pedido),
  DAY(p.fecha_pedido),
  QUARTER(p.fecha_pedido)
FROM staging_jardineria.st_pedido p
WHERE p.fecha_pedido IS NOT NULL;


-- Insertar ventas en la tabla de hechos
INSERT INTO FACT_VENTAS (
  ID_producto, ID_cliente, ID_empleado, ID_tiempo, cantidad, total_venta
)
SELECT    
  dp.ID_producto,
  p.ID_cliente,
  c.ID_empleado_rep_ventas,
  t.ID_tiempo,
  dp.cantidad,
  dp.cantidad * dp.precio_unidad
FROM staging_jardineria.st_detalle_pedido dp
JOIN staging_jardineria.st_pedido p ON dp.ID_pedido = p.ID_pedido
JOIN staging_jardineria.st_cliente c ON p.ID_cliente = c.ID_cliente
JOIN dm_jardineria.DIM_TIEMPO t 
  ON t.fecha = p.fecha_pedido;

-- Consultas Analiticas
-- Productos mas vendidos
SELECT 
  p.nombre,
  SUM(fv.cantidad) AS cantidad_total
FROM FACT_VENTAS fv
JOIN DIM_PRODUCTO p ON fv.ID_producto = p.ID_producto
GROUP BY p.nombre
ORDER BY cantidad_total DESC
LIMIT 1;

-- Total Ventas por mes y por anio
SELECT 
  t.anio,
  t.mes,
  SUM(fv.total_venta) AS total_ventas
FROM FACT_VENTAS fv
JOIN DIM_TIEMPO t ON fv.ID_tiempo = t.ID_tiempo
GROUP BY t.anio, t.mes
ORDER BY t.anio, t.mes;

-- Ventas por pais

SELECT 
    dc.pais,
    SUM(fv.total_venta) AS total_ventas
FROM 
    FACT_VENTAS fv
JOIN 
    DIM_CLIENTE dc ON fv.ID_cliente = dc.ID_cliente
GROUP BY 
    dc.pais
ORDER BY 
    total_ventas DESC;
    
-- ANÁLISIS DE VENTAS POR EMPLEADO Y TRIMESTRE
-- Objetivo: Identificar el rendimiento de cada empleado por trimestre
SELECT 
    e.nombre,
    e.apellido1,
    t.anio,
    t.trimestre,
    COUNT(f.ID_fact) AS total_transacciones,
    SUM(f.cantidad) AS productos_vendidos,
    SUM(f.total_venta) AS ingresos_totales,
    ROUND(AVG(f.total_venta), 2) AS promedio_por_venta
FROM 
    FACT_VENTAS f
    JOIN DIM_EMPLEADO e ON f.ID_empleado = e.ID_empleado
    JOIN DIM_TIEMPO t ON f.ID_tiempo = t.ID_tiempo
GROUP BY 
    e.ID_empleado, e.nombre, e.apellido1, t.anio, t.trimestre
ORDER BY 
    t.anio DESC, t.trimestre, ingresos_totales DESC;
    

    -- TOP 10 PRODUCTOS MÁS VENDIDOS POR CATEGORÍA
-- Objetivo: Identificar los productos estrella en cada categoría
SELECT 
    p.Categoria,
    p.nombre AS producto,
    p.proveedor,
    SUM(f.cantidad) AS unidades_vendidas,
    SUM(f.total_venta) AS ingresos_producto,
    COUNT(DISTINCT f.ID_cliente) AS clientes_diferentes,
    ROUND(SUM(f.total_venta) / SUM(f.cantidad), 2) AS precio_promedio_unitario
FROM 
    FACT_VENTAS f
    JOIN DIM_PRODUCTO p ON f.ID_producto = p.ID_producto
GROUP BY 
    p.ID_producto, p.Categoria, p.nombre, p.proveedor
ORDER BY 
    p.Categoria, unidades_vendidas DESC
LIMIT 10;