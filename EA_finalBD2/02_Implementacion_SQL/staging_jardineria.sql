DROP DATABASE IF EXISTS staging_jardineria;
CREATE DATABASE staging_jardineria;
USE staging_jardineria;

-- Tablas de staging con la misma estructura que la base de datos origen
CREATE TABLE st_producto AS SELECT * FROM jardineria.producto WHERE 1=0;
CREATE TABLE st_cliente AS SELECT * FROM jardineria.cliente WHERE 1=0;
CREATE TABLE st_empleado AS SELECT * FROM jardineria.empleado WHERE 1=0;
CREATE TABLE st_pedido AS SELECT * FROM jardineria.pedido WHERE 1=0;
CREATE TABLE st_detalle_pedido AS SELECT * FROM jardineria.detalle_pedido WHERE 1=0;
-- Cargar desde origen a staging
INSERT INTO st_producto SELECT * FROM jardineria.producto;
INSERT INTO st_cliente SELECT * FROM jardineria.cliente;
INSERT INTO st_empleado SELECT * FROM jardineria.empleado;
INSERT INTO st_pedido SELECT * FROM jardineria.pedido;
INSERT INTO st_detalle_pedido SELECT * FROM jardineria.detalle_pedido;

-- Ejemplo: limpiar productos sin nombre o precio
DELETE FROM st_producto WHERE nombre IS NULL OR precio_venta IS NULL;

-- Crear columnas auxiliares de fechas
ALTER TABLE st_pedido ADD COLUMN anio INT, ADD COLUMN mes INT;




    

