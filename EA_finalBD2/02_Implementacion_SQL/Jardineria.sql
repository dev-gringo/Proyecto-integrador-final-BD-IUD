DROP DATABASE IF EXISTS jardineria;
CREATE DATABASE jardineria;
USE jardineria;
CREATE TABLE oficina (
  ID_oficina INT AUTO_INCREMENT PRIMARY KEY,
  descripcion VARCHAR(10) NOT NULL,
  ciudad VARCHAR(30) NOT NULL,
  pais VARCHAR(50) NOT NULL,
  region VARCHAR(50) DEFAULT NULL,
  codigo_postal VARCHAR(10) NOT NULL,
  telefono VARCHAR(20) NOT NULL,
  linea_direccion1 VARCHAR(50) NOT NULL,
  linea_direccion2 VARCHAR(50) DEFAULT NULL
);

CREATE TABLE empleado (
  ID_empleado INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL,
  apellido1 VARCHAR(50) NOT NULL,
  apellido2 VARCHAR(50) DEFAULT NULL,
  extension VARCHAR(10) NOT NULL,
  email VARCHAR(100) NOT NULL,
  ID_oficina INT NOT NULL,
  ID_jefe INT DEFAULT NULL,
  puesto VARCHAR(50) DEFAULT NULL,
  FOREIGN KEY (ID_oficina) REFERENCES oficina(ID_oficina),
  FOREIGN KEY (ID_jefe) REFERENCES empleado(ID_empleado)
);

CREATE TABLE categoria_producto (
  ID_categoria INT AUTO_INCREMENT PRIMARY KEY,
  desc_categoria VARCHAR(50) NOT NULL,
  descripcion_texto TEXT,
  descripcion_html TEXT,
  imagen VARCHAR(256)
);
CREATE TABLE producto (
  ID_producto INT AUTO_INCREMENT PRIMARY KEY,
  codigo_producto VARCHAR(15) NOT NULL,
  nombre VARCHAR(70) NOT NULL,
  gama INT NOT NULL,
  dimensiones VARCHAR(25),
  proveedor VARCHAR(50),
  descripcion TEXT,
  cantidad_en_stock SMALLINT NOT NULL,
  precio_venta DECIMAL(15,2) NOT NULL,
  precio_proveedor DECIMAL(15,2),
  FOREIGN KEY (gama) REFERENCES categoria_producto(ID_categoria)
);
CREATE TABLE cliente (
  ID_cliente INT AUTO_INCREMENT PRIMARY KEY,
  nombre_cliente VARCHAR(50) NOT NULL,
  nombre_contacto VARCHAR(30),
  apellido_contacto VARCHAR(30),
  telefono VARCHAR(15) NOT NULL,
  fax VARCHAR(15) NOT NULL,
  linea_direccion1 VARCHAR(50) NOT NULL,
  linea_direccion2 VARCHAR(50),
  ciudad VARCHAR(50) NOT NULL,
  region VARCHAR(50),
  pais VARCHAR(50),
  codigo_postal VARCHAR(10),
  ID_empleado_rep_ventas INT,
  limite_credito DECIMAL(15,2),
  FOREIGN KEY (ID_empleado_rep_ventas) REFERENCES empleado(ID_empleado)
);

CREATE TABLE pedido (
  ID_pedido INT AUTO_INCREMENT PRIMARY KEY,
  fecha_pedido DATE NOT NULL,
  fecha_esperada DATE NOT NULL,
  fecha_entrega DATE,
  estado VARCHAR(15) NOT NULL,
  comentarios TEXT,
  ID_cliente INT NOT NULL,
  FOREIGN KEY (ID_cliente) REFERENCES cliente(ID_cliente)
);


CREATE TABLE detalle_pedido (
  ID_detalle_pedido INT AUTO_INCREMENT PRIMARY KEY,
  ID_pedido INT NOT NULL,
  ID_producto INT NOT NULL,
  cantidad INT NOT NULL,
  precio_unidad DECIMAL(15,2) NOT NULL,
  numero_linea SMALLINT NOT NULL,
  FOREIGN KEY (ID_pedido) REFERENCES pedido(ID_pedido),
  FOREIGN KEY (ID_producto) REFERENCES producto(ID_producto)
);

CREATE TABLE pago (
  ID_pago INT AUTO_INCREMENT PRIMARY KEY,
  ID_cliente INT NOT NULL,
  forma_pago VARCHAR(40) NOT NULL,
  id_transaccion VARCHAR(50) NOT NULL,
  fecha_pago DATE NOT NULL,
  total DECIMAL(15,2) NOT NULL,
  FOREIGN KEY (ID_cliente) REFERENCES cliente(ID_cliente)
);

INSERT INTO oficina (descripcion, ciudad, pais, region, codigo_postal, telefono, linea_direccion1, linea_direccion2) VALUES
('BCN-ES','Barcelona','España','Barcelona','08019','+34 93 3561182','Avenida Diagonal, 38','3A escalera Derecha'),
('BOS-USA','Boston','EEUU','MA','02108','+1 215 837 0825','1550 Court Place','Suite 102'),
('LON-UK','Londres','Inglaterra','EMEA','EC2N 1HN','+44 20 78772041','52 Old Broad Street','Ground Floor'),
('MAD-ES','Madrid','España','Madrid','28032','+34 91 7514487','Bulevar Indalecio Prieto, 32',''),
('PAR-FR','Paris','Francia','EMEA','75017','+33 14 723 4404','29 Rue Jouffroy d\'abbans',''),
('SFC-USA','San Francisco','EEUU','CA','94080','+1 650 219 4782','100 Market Street','Suite 300'),
('SYD-AU','Sydney','Australia','APAC','NSW 2010','+61 2 9264 2451','5-11 Wentworth Avenue','Floor #2'),
('TAL-ES','Talavera de la Reina','España','Castilla-LaMancha','45632','+34 925 867231','Francisco Aguirre, 32','5º piso (exterior)'),
('TOK-JP','Tokyo','Japón','Chiyoda-Ku','102-8578','+81 33 224 5000','4-1 Kioicho','');

INSERT INTO empleado (
  nombre, apellido1, apellido2, extension, email, ID_oficina, ID_jefe, puesto
) VALUES
('Marcos','Magaña','Perez','3897','marcos@jardineria.es',1,NULL,'Director General'),
('Ruben','López','Martinez','2899','rlopez@jardineria.es',1,1,'Subdirector Marketing'),
('Alberto','Soria','Carrasco','2837','asoria@jardineria.es',1,2,'Subdirector Ventas'),
('Maria','Solís','Jerez','2847','msolis@jardineria.es',1,2,'Secretaria'),
('Felipe','Rosas','Marquez','2844','frosas@jardineria.es',1,3,'Representante Ventas'),
('Juan Carlos','Ortiz','Serrano','2845','cortiz@jardineria.es',1,3,'Representante Ventas'),
('Claudia','Moreno','Jiménez','2846','cmoreno@jardineria.es',1,3,'Representante Ventas'),
('Santiago','Delgado','Herrera','2848','sdelgado@jardineria.es',1,3,'Representante Ventas'),
('Isabel','Navarro','Martínez','2849','inavarro@jardineria.es',1,3,'Representante Ventas'),
('Raúl','García','González','2850','rgarcia@jardineria.es',1,3,'Representante Ventas'),
-- Empleados para clientes
('Mario','Rodríguez','López','2211','mrodriguez@jardineria.com',1,NULL,'Representante Ventas'),
('Ana','Martínez','Soto','2212','amartinez@jardineria.com',1,NULL,'Representante Ventas'),
('Luis','Gómez','Jiménez','2213','lgomez@jardineria.com',1,NULL,'Representante Ventas'),
('Lucía','Ramírez','Pérez','2214','lramirez@jardineria.com',1,NULL,'Representante Ventas'),
('Sofía','Díaz','Molina','2215','sdiaz@jardineria.com',1,NULL,'Representante Ventas'),
('Pablo','Navarro','Cano','2216','pnavarro@jardineria.com',1,NULL,'Representante Ventas'),
('Laura','Herrera','Gil','2217','lherrera@jardineria.com',1,NULL,'Representante Ventas'),
('Diego','Ruiz','Serrano','2218','druiz@jardineria.com',1,NULL,'Representante Ventas');

INSERT INTO cliente (
  nombre_cliente, nombre_contacto, apellido_contacto,
  telefono, fax, linea_direccion1, linea_direccion2,
  ciudad, region, pais, codigo_postal,
  ID_empleado_rep_ventas, limite_credito
) VALUES
('Plantas y Diseño','María','Flores','5551112233','5551112234','Calle Primavera 10',NULL,'Bogotá','Cundinamarca','Colombia','110111',11,4200.00),
('Green World','Pedro','Verde','5552223344','5552223345','Avenida Verde 42',NULL,'Quito','Pichincha','Ecuador','170150',12,5300.00),
('Jardín Express','Ana','Ramírez','5553334455','5553334456','Calle 80 #22-11',NULL,'Medellín','Antioquia','Colombia','050021',13,6100.00),
('Vivero Encanto','Luis','Encinas','5554445566','5554445567','Camino del Sol 15',NULL,'Ciudad de México','CDMX','México','01000',14,7800.00),
('Florarte','Daniela','Rosales','5555556677','5555556678','Av. Floral 88',NULL,'Lima','Lima','Perú','15001',15,3900.00),
('EcoPlantas','Jorge','Verdugo','5556667788','5556667789','Carretera Verde km 5',NULL,'Buenos Aires','BA','Argentina','1425',16,7200.00),
('Decojardines','Patricia','Castaño','5557778899','5557778890','Carrera 15 #45-60',NULL,'Cali','Valle','Colombia','760001',17,4800.00),
('Vivero del Norte','Andrés','Pineda','5558889900','5558889901','Ruta 9 km 30',NULL,'Asunción',NULL,'Paraguay','1400',18,6500.00),
('Naturaleza Viva','Isabel','Montoya','5559990011','5559990012','Pje. Natural 99',NULL,'La Paz','Murillo','Bolivia','1000',13,5100.00),
('Ornamentales del Sur','Carlos','Delgado','5550001122','5550001123','Av. Patria 45',NULL,'Santiago','Región Metropolitana','Chile','8320000',14,5900.00);


INSERT INTO categoria_producto (ID_categoria, desc_categoria, descripcion_texto, descripcion_html, imagen) VALUES
(1, 'Herramientas', 'Herramientas para jardinería y cuidado de plantas.', '<p>Herramientas para jardinería y cuidado de plantas.</p>', 'herramientas.jpg'),
(2, 'Accesorios', 'Accesorios decorativos para jardines.', '<p>Accesorios decorativos para jardines.</p>', 'accesorios.jpg'),
(3, 'Macetas', 'Macetas de barro, plástico y cerámica.', '<p>Macetas de barro, plástico y cerámica.</p>', 'macetas.jpg'),
(4, 'Semillas', 'Semillas de flores y plantas ornamentales.', '<p>Semillas de flores y plantas ornamentales.</p>', 'semillas.jpg'),
(5, 'Plantas', 'Plantas ornamentales para interior y exterior.', '<p>Plantas ornamentales para interior y exterior.</p>', 'plantas.jpg'),
(6, 'Sustratos', 'Sustratos y fertilizantes.', '<p>Sustratos y fertilizantes.</p>', 'sustratos.jpg');


INSERT INTO producto (codigo_producto, nombre, gama, dimensiones, proveedor, descripcion, cantidad_en_stock, precio_venta, precio_proveedor) VALUES
('OR-233','Dracaena Drago',5,'60 - 70','Viveros EL OASIS','',1,13.00,10.00),
('OR-234','Dracaena Drago',5,'130 - 150','Viveros EL OASIS','',2,64.00,51.00),
('OR-235','Dracaena Drago',5,'150 - 175','Viveros EL OASIS','',2,92.00,73.00),
('OR-236','Jubaea Chilensis',5,NULL,'Viveros EL OASIS','',100,49.00,39.00),
('OR-237','Livistonia Australis',5,'100 - 125','Viveros EL OASIS','',50,19.00,15.00),
('OR-238','Livistonia Decipiens',5,'90 - 110','Viveros EL OASIS','',50,19.00,15.00),
('OR-239','Livistonia Decipiens',5,'180 - 200','Viveros EL OASIS','',50,49.00,39.00),
('OR-240','Phoenix Canariensis',5,'110 - 130','Viveros EL OASIS','',50,6.00,4.00),
('OR-241','Phoenix Canariensis',5,'180 - 200','Viveros EL OASIS','',50,19.00,15.00),
('OR-242','Rhaphis Excelsa',5,'80 - 100','Viveros EL OASIS','',50,21.00,16.00),
('OR-243','Rhaphis Humilis',5,'150- 170','Viveros EL OASIS','',50,64.00,51.00),
('OR-244','Sabal Minor',5,'60 - 75','Viveros EL OASIS','',50,11.00,8.00),
('OR-245','Sabal Minor',5,'120 - 140','Viveros EL OASIS','',50,34.00,27.00),
('OR-246','Trachycarpus Fortunei',5,'90 - 105','Viveros EL OASIS','',50,18.00,14.00),
('OR-247','Trachycarpus Fortunei',5,'250-300','Viveros EL OASIS','',2,462.00,369.00),
('OR-248','Washingtonia Robusta',5,'60 - 70','Viveros EL OASIS','',15,3.00,2.00),
('OR-249','Washingtonia Robusta',5,'130 - 150','Viveros EL OASIS','',15,5.00,4.00),
('OR-250','Yucca Jewel',5,'80 - 105','Viveros EL OASIS','',15,10.00,8.00),
('OR-251','Zamia Furfuracaea',5,'90 - 110','Viveros EL OASIS','',15,168.00,134.00),
('OR-99','Mimosa DEALBATA Gaulois Astier',5,'200-225','Viveros EL OASIS','',10,70.00,50.00);

INSERT INTO cliente (
  nombre_cliente, nombre_contacto, apellido_contacto,
  telefono, fax, linea_direccion1, linea_direccion2,
  ciudad, region, pais, codigo_postal,
  ID_empleado_rep_ventas, limite_credito
) VALUES
('GoldFish Garden','Daniel G','GoldFish','5556901745','5556901746','False Street 52 2 A',NULL,'San Francisco',NULL,'USA','24006',11,3000.00),
('Gardening Associates','Anne','Wright','5557410345','5557410346','Wall-e Avenue',NULL,'Miami','Miami','USA','24010',11,6000.00),
('Gerudo Valley','Link','Flaute','5552323129','5552323128','Oaks Avenue nº22',NULL,'New York',NULL,'USA','85495',13,12000.00),
('Green Thumb Ltd.','John','Moss','5558745698','5558745699','Palm Street 14',NULL,'Los Angeles',NULL,'USA','90210',12,5000.00),
('Nature''s Touch','Sarah','Leaf','5551237894','5551237895','Tree Boulevard 77',NULL,'Chicago','IL','USA','60616',14,7500.00),
('Floristería Sakura','Miyuki','Tanaka','+81 3 1234 5678','+81 3 8765 4321','Chiyoda 1-1',NULL,'Tokyo',NULL,'Japón','100-0001',13,9000.00),
('Jardines de Madrid','Carlos','Ruiz','+34 91 123 4567','+34 91 765 4321','Gran Vía 55',NULL,'Madrid',NULL,'España','28013',15,6500.00),
('Viveros La Semilla','Ana','Torres','+34 93 321 6547','+34 93 987 6543','Diagonal 123',NULL,'Barcelona','Cataluña','España','08013',16,8200.00),
('DecorPlant','Elena','Nakamura','5557894561','5557894562','Maple Avenue 29',NULL,'Vancouver','BC','Canadá','V5K 0A1',17,10000.00),
('Botanic Art','Lucas','Del Valle','5559517538','5559517539','Verde Lane 99',NULL,'Lima','Lima','Perú','15000',18,5600.00);

INSERT INTO cliente (
  nombre_cliente, nombre_contacto, apellido_contacto,
  telefono, fax, linea_direccion1, linea_direccion2,
  ciudad, region, pais, codigo_postal,
  ID_empleado_rep_ventas, limite_credito
) VALUES
('Plantas y Diseño','María','Flores','5551112233','5551112234','Calle Primavera 10',NULL,'Bogotá','Cundinamarca','Colombia','110111',11,4200.00),
('Green World','Pedro','Verde','5552223344','5552223345','Avenida Verde 42',NULL,'Quito','Pichincha','Ecuador','170150',12,5300.00),
('Jardín Express','Ana','Ramírez','5553334455','5553334456','Calle 80 #22-11',NULL,'Medellín','Antioquia','Colombia','050021',13,6100.00),
('Vivero Encanto','Luis','Encinas','5554445566','5554445567','Camino del Sol 15',NULL,'Ciudad de México','CDMX','México','01000',14,7800.00),
('Florarte','Daniela','Rosales','5555556677','5555556678','Av. Floral 88',NULL,'Lima','Lima','Perú','15001',15,3900.00),
('EcoPlantas','Jorge','Verdugo','5556667788','5556667789','Carretera Verde km 5',NULL,'Buenos Aires','BA','Argentina','1425',16,7200.00),
('Decojardines','Patricia','Castaño','5557778899','5557778890','Carrera 15 #45-60',NULL,'Cali','Valle','Colombia','760001',17,4800.00),
('Vivero del Norte','Andrés','Pineda','5558889900','5558889901','Ruta 9 km 30',NULL,'Asunción',NULL,'Paraguay','1400',18,6500.00),
('Naturaleza Viva','Isabel','Montoya','5559990011','5559990012','Pje. Natural 99',NULL,'La Paz','Murillo','Bolivia','1000',13,5100.00),
('Ornamentales del Sur','Carlos','Delgado','5550001122','5550001123','Av. Patria 45',NULL,'Santiago','Región Metropolitana','Chile','8320000',14,5900.00);



INSERT INTO pedido (
  fecha_pedido, fecha_esperada, fecha_entrega,
  estado, comentarios, ID_cliente
) VALUES
('2006-01-17','2006-01-19','2006-01-19','Entregado','Pagado a plazos',5),
('2007-10-23','2007-10-28','2007-10-26','Entregado','La entrega llegó antes de lo esperado',5),
('2008-06-20','2008-06-25',NULL,'Rechazado','Límite de crédito superado',5),
('2008-07-15','2008-07-20','2008-07-22','Entregado','Entregado con demora por clima',6),
('2009-01-10','2009-01-15','2009-01-15','Entregado','Sin observaciones',6),
('2009-05-03','2009-05-08',NULL,'Pendiente','Cliente pidió más tiempo para pago',7),
('2009-06-11','2009-06-13','2009-06-13','Entregado','Buen cliente, entrega perfecta',8),
('2010-01-20','2010-01-25','2010-01-24','Entregado','Entrega en perfecto estado',9),
('2010-03-15','2010-03-20','2010-03-21','Entregado','Entrega un día tarde',10),
('2010-06-30','2010-07-05',NULL,'Pendiente','Pedido especial con productos en espera',10),
('2011-01-10','2011-01-15','2011-01-15','Entregado','Sin incidencias',7),
('2011-03-22','2011-03-28','2011-03-27','Entregado','Entrega rápida',8),
('2012-05-18','2012-05-23',NULL,'Pendiente','Producto en producción',9),
('2012-08-01','2012-08-06','2012-08-06','Entregado','Cliente satisfecho',10),
('2013-09-10','2013-09-15','2013-09-14','Entregado','Sin novedades',5),
('2014-10-12','2014-10-17','2014-10-16','Entregado','Perfecto estado',6),
('2015-11-21','2015-11-26',NULL,'Pendiente','Retraso de proveedor',7),
('2016-01-05','2016-01-10','2016-01-09','Entregado','Entrega exitosa',8),
('2016-03-10','2016-03-15','2016-03-16','Entregado','Leve demora aceptada',9),
('2017-06-12','2017-06-17',NULL,'Pendiente','Problemas logísticos',10);

INSERT INTO detalle_pedido (
  ID_pedido, ID_producto, cantidad, precio_unidad, numero_linea
) VALUES
(1, 1, 5, 13.00, 1),
(1, 2, 3, 64.00, 2),
(2, 1, 10, 13.00, 1),
(2, 3, 2, 92.00, 2),
(3, 4, 1, 49.00, 1),
(4, 5, 4, 19.00, 1),
(4, 6, 2, 19.00, 2),
(5, 7, 3, 49.00, 1),
(6, 8, 10, 6.00, 1),
(6, 9, 4, 19.00, 2),
(7, 10, 2, 21.00, 1),
(8, 2, 1, 64.00, 1),
(9, 3, 5, 92.00, 1),
(10, 4, 3, 49.00, 1),
(11, 5, 6, 19.00, 1),
(12, 6, 4, 19.00, 1),
(13, 7, 2, 49.00, 1),
(14, 8, 7, 6.00, 1),
(15, 9, 3, 19.00, 1),
(16, 10, 4, 21.00, 1);

INSERT INTO pago (
  ID_cliente, forma_pago, id_transaccion, fecha_pago, total
) VALUES
(5, 'Transferencia', 'TXN10001', '2006-01-19', 845.00),
(5, 'Tarjeta Crédito', 'TXN10002', '2007-10-26', 1200.00),
(6, 'Efectivo', 'TXN10003', '2009-01-15', 560.00),
(7, 'Transferencia', 'TXN10004', '2009-06-13', 1320.00),
(8, 'PayPal', 'TXN10005', '2010-01-24', 430.00),
(9, 'Transferencia', 'TXN10006', '2010-03-21', 230.00),
(10, 'Tarjeta Crédito', 'TXN10007', '2010-07-01', 980.00),
(11, 'PayPal', 'TXN10008', '2011-03-28', 450.00),
(12, 'Transferencia', 'TXN10009', '2012-08-06', 720.00),
(13, 'Tarjeta Débito', 'TXN10010', '2013-09-14', 1100.00),
(14, 'Transferencia', 'TXN10011', '2014-10-16', 1500.00);

INSERT INTO pago (
  ID_cliente, forma_pago, id_transaccion, fecha_pago, total
) VALUES
(15, 'Transferencia', 'TXN10012', '2015-11-26', 875.00),
(16, 'Tarjeta Crédito', 'TXN10013', '2016-01-09', 1050.00),
(17, 'PayPal', 'TXN10014', '2016-03-16', 690.00),
(18, 'Efectivo', 'TXN10015', '2017-06-17', 510.00),
(19, 'Transferencia', 'TXN10016', '2017-08-01', 1200.00),
(20, 'Tarjeta Débito', 'TXN10017', '2018-02-10', 940.00),
(21, 'PayPal', 'TXN10018', '2018-05-20', 880.00),
(22, 'Efectivo', 'TXN10019', '2019-01-11', 1320.00),
(23, 'Transferencia', 'TXN10020', '2019-07-18', 1160.00),
(24, 'Tarjeta Crédito', 'TXN10021', '2020-03-05', 1025.00);


