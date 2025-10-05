-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: staging_jardineria
-- ------------------------------------------------------
-- Server version	8.0.41

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `st_cliente`
--

DROP TABLE IF EXISTS `st_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_cliente` (
  `ID_cliente` int NOT NULL DEFAULT '0',
  `nombre_cliente` varchar(50) NOT NULL,
  `nombre_contacto` varchar(30) DEFAULT NULL,
  `apellido_contacto` varchar(30) DEFAULT NULL,
  `telefono` varchar(15) NOT NULL,
  `fax` varchar(15) NOT NULL,
  `linea_direccion1` varchar(50) NOT NULL,
  `linea_direccion2` varchar(50) DEFAULT NULL,
  `ciudad` varchar(50) NOT NULL,
  `region` varchar(50) DEFAULT NULL,
  `pais` varchar(50) DEFAULT NULL,
  `codigo_postal` varchar(10) DEFAULT NULL,
  `ID_empleado_rep_ventas` int DEFAULT NULL,
  `limite_credito` decimal(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_cliente`
--

LOCK TABLES `st_cliente` WRITE;
/*!40000 ALTER TABLE `st_cliente` DISABLE KEYS */;
INSERT INTO `st_cliente` VALUES (1,'Plantas y Diseño','María','Flores','5551112233','5551112234','Calle Primavera 10',NULL,'Bogotá','Cundinamarca','Colombia','110111',11,4200.00),(2,'Green World','Pedro','Verde','5552223344','5552223345','Avenida Verde 42',NULL,'Quito','Pichincha','Ecuador','170150',12,5300.00),(3,'Jardín Express','Ana','Ramírez','5553334455','5553334456','Calle 80 #22-11',NULL,'Medellín','Antioquia','Colombia','050021',13,6100.00),(4,'Vivero Encanto','Luis','Encinas','5554445566','5554445567','Camino del Sol 15',NULL,'Ciudad de México','CDMX','México','01000',14,7800.00),(5,'Florarte','Daniela','Rosales','5555556677','5555556678','Av. Floral 88',NULL,'Lima','Lima','Perú','15001',15,3900.00),(6,'EcoPlantas','Jorge','Verdugo','5556667788','5556667789','Carretera Verde km 5',NULL,'Buenos Aires','BA','Argentina','1425',16,7200.00),(7,'Decojardines','Patricia','Castaño','5557778899','5557778890','Carrera 15 #45-60',NULL,'Cali','Valle','Colombia','760001',17,4800.00),(8,'Vivero del Norte','Andrés','Pineda','5558889900','5558889901','Ruta 9 km 30',NULL,'Asunción',NULL,'Paraguay','1400',18,6500.00),(9,'Naturaleza Viva','Isabel','Montoya','5559990011','5559990012','Pje. Natural 99',NULL,'La Paz','Murillo','Bolivia','1000',13,5100.00),(10,'Ornamentales del Sur','Carlos','Delgado','5550001122','5550001123','Av. Patria 45',NULL,'Santiago','Región Metropolitana','Chile','8320000',14,5900.00),(11,'GoldFish Garden','Daniel G','GoldFish','5556901745','5556901746','False Street 52 2 A',NULL,'San Francisco',NULL,'USA','24006',11,3000.00),(12,'Gardening Associates','Anne','Wright','5557410345','5557410346','Wall-e Avenue',NULL,'Miami','Miami','USA','24010',11,6000.00),(13,'Gerudo Valley','Link','Flaute','5552323129','5552323128','Oaks Avenue nº22',NULL,'New York',NULL,'USA','85495',13,12000.00),(14,'Green Thumb Ltd.','John','Moss','5558745698','5558745699','Palm Street 14',NULL,'Los Angeles',NULL,'USA','90210',12,5000.00),(15,'Nature\'s Touch','Sarah','Leaf','5551237894','5551237895','Tree Boulevard 77',NULL,'Chicago','IL','USA','60616',14,7500.00),(16,'Floristería Sakura','Miyuki','Tanaka','+81 3 1234 5678','+81 3 8765 4321','Chiyoda 1-1',NULL,'Tokyo',NULL,'Japón','100-0001',13,9000.00),(17,'Jardines de Madrid','Carlos','Ruiz','+34 91 123 4567','+34 91 765 4321','Gran Vía 55',NULL,'Madrid',NULL,'España','28013',15,6500.00),(18,'Viveros La Semilla','Ana','Torres','+34 93 321 6547','+34 93 987 6543','Diagonal 123',NULL,'Barcelona','Cataluña','España','08013',16,8200.00),(19,'DecorPlant','Elena','Nakamura','5557894561','5557894562','Maple Avenue 29',NULL,'Vancouver','BC','Canadá','V5K 0A1',17,10000.00),(20,'Botanic Art','Lucas','Del Valle','5559517538','5559517539','Verde Lane 99',NULL,'Lima','Lima','Perú','15000',18,5600.00),(21,'Plantas y Diseño','María','Flores','5551112233','5551112234','Calle Primavera 10',NULL,'Bogotá','Cundinamarca','Colombia','110111',11,4200.00),(22,'Green World','Pedro','Verde','5552223344','5552223345','Avenida Verde 42',NULL,'Quito','Pichincha','Ecuador','170150',12,5300.00),(23,'Jardín Express','Ana','Ramírez','5553334455','5553334456','Calle 80 #22-11',NULL,'Medellín','Antioquia','Colombia','050021',13,6100.00),(24,'Vivero Encanto','Luis','Encinas','5554445566','5554445567','Camino del Sol 15',NULL,'Ciudad de México','CDMX','México','01000',14,7800.00),(25,'Florarte','Daniela','Rosales','5555556677','5555556678','Av. Floral 88',NULL,'Lima','Lima','Perú','15001',15,3900.00),(26,'EcoPlantas','Jorge','Verdugo','5556667788','5556667789','Carretera Verde km 5',NULL,'Buenos Aires','BA','Argentina','1425',16,7200.00),(27,'Decojardines','Patricia','Castaño','5557778899','5557778890','Carrera 15 #45-60',NULL,'Cali','Valle','Colombia','760001',17,4800.00),(28,'Vivero del Norte','Andrés','Pineda','5558889900','5558889901','Ruta 9 km 30',NULL,'Asunción',NULL,'Paraguay','1400',18,6500.00),(29,'Naturaleza Viva','Isabel','Montoya','5559990011','5559990012','Pje. Natural 99',NULL,'La Paz','Murillo','Bolivia','1000',13,5100.00),(30,'Ornamentales del Sur','Carlos','Delgado','5550001122','5550001123','Av. Patria 45',NULL,'Santiago','Región Metropolitana','Chile','8320000',14,5900.00);
/*!40000 ALTER TABLE `st_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_detalle_pedido`
--

DROP TABLE IF EXISTS `st_detalle_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_detalle_pedido` (
  `ID_detalle_pedido` int NOT NULL DEFAULT '0',
  `ID_pedido` int NOT NULL,
  `ID_producto` int NOT NULL,
  `cantidad` int NOT NULL,
  `precio_unidad` decimal(15,2) NOT NULL,
  `numero_linea` smallint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_detalle_pedido`
--

LOCK TABLES `st_detalle_pedido` WRITE;
/*!40000 ALTER TABLE `st_detalle_pedido` DISABLE KEYS */;
INSERT INTO `st_detalle_pedido` VALUES (1,1,1,5,13.00,1),(2,1,2,3,64.00,2),(3,2,1,10,13.00,1),(4,2,3,2,92.00,2),(5,3,4,1,49.00,1),(6,4,5,4,19.00,1),(7,4,6,2,19.00,2),(8,5,7,3,49.00,1),(9,6,8,10,6.00,1),(10,6,9,4,19.00,2),(11,7,10,2,21.00,1),(12,8,2,1,64.00,1),(13,9,3,5,92.00,1),(14,10,4,3,49.00,1),(15,11,5,6,19.00,1),(16,12,6,4,19.00,1),(17,13,7,2,49.00,1),(18,14,8,7,6.00,1),(19,15,9,3,19.00,1),(20,16,10,4,21.00,1);
/*!40000 ALTER TABLE `st_detalle_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_empleado`
--

DROP TABLE IF EXISTS `st_empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_empleado` (
  `ID_empleado` int NOT NULL DEFAULT '0',
  `nombre` varchar(50) NOT NULL,
  `apellido1` varchar(50) NOT NULL,
  `apellido2` varchar(50) DEFAULT NULL,
  `extension` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `ID_oficina` int NOT NULL,
  `ID_jefe` int DEFAULT NULL,
  `puesto` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_empleado`
--

LOCK TABLES `st_empleado` WRITE;
/*!40000 ALTER TABLE `st_empleado` DISABLE KEYS */;
INSERT INTO `st_empleado` VALUES (1,'Marcos','Magaña','Perez','3897','marcos@jardineria.es',1,NULL,'Director General'),(2,'Ruben','López','Martinez','2899','rlopez@jardineria.es',1,1,'Subdirector Marketing'),(3,'Alberto','Soria','Carrasco','2837','asoria@jardineria.es',1,2,'Subdirector Ventas'),(4,'Maria','Solís','Jerez','2847','msolis@jardineria.es',1,2,'Secretaria'),(5,'Felipe','Rosas','Marquez','2844','frosas@jardineria.es',1,3,'Representante Ventas'),(6,'Juan Carlos','Ortiz','Serrano','2845','cortiz@jardineria.es',1,3,'Representante Ventas'),(7,'Claudia','Moreno','Jiménez','2846','cmoreno@jardineria.es',1,3,'Representante Ventas'),(8,'Santiago','Delgado','Herrera','2848','sdelgado@jardineria.es',1,3,'Representante Ventas'),(9,'Isabel','Navarro','Martínez','2849','inavarro@jardineria.es',1,3,'Representante Ventas'),(10,'Raúl','García','González','2850','rgarcia@jardineria.es',1,3,'Representante Ventas'),(11,'Mario','Rodríguez','López','2211','mrodriguez@jardineria.com',1,NULL,'Representante Ventas'),(12,'Ana','Martínez','Soto','2212','amartinez@jardineria.com',1,NULL,'Representante Ventas'),(13,'Luis','Gómez','Jiménez','2213','lgomez@jardineria.com',1,NULL,'Representante Ventas'),(14,'Lucía','Ramírez','Pérez','2214','lramirez@jardineria.com',1,NULL,'Representante Ventas'),(15,'Sofía','Díaz','Molina','2215','sdiaz@jardineria.com',1,NULL,'Representante Ventas'),(16,'Pablo','Navarro','Cano','2216','pnavarro@jardineria.com',1,NULL,'Representante Ventas'),(17,'Laura','Herrera','Gil','2217','lherrera@jardineria.com',1,NULL,'Representante Ventas'),(18,'Diego','Ruiz','Serrano','2218','druiz@jardineria.com',1,NULL,'Representante Ventas');
/*!40000 ALTER TABLE `st_empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_pedido`
--

DROP TABLE IF EXISTS `st_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_pedido` (
  `ID_pedido` int NOT NULL DEFAULT '0',
  `fecha_pedido` date NOT NULL,
  `fecha_esperada` date NOT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `estado` varchar(15) NOT NULL,
  `comentarios` text,
  `ID_cliente` int NOT NULL,
  `anio` int DEFAULT NULL,
  `mes` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_pedido`
--

LOCK TABLES `st_pedido` WRITE;
/*!40000 ALTER TABLE `st_pedido` DISABLE KEYS */;
INSERT INTO `st_pedido` VALUES (1,'2006-01-17','2006-01-19','2006-01-19','Entregado','Pagado a plazos',5,NULL,NULL),(2,'2007-10-23','2007-10-28','2007-10-26','Entregado','La entrega llegó antes de lo esperado',5,NULL,NULL),(3,'2008-06-20','2008-06-25',NULL,'Rechazado','Límite de crédito superado',5,NULL,NULL),(4,'2008-07-15','2008-07-20','2008-07-22','Entregado','Entregado con demora por clima',6,NULL,NULL),(5,'2009-01-10','2009-01-15','2009-01-15','Entregado','Sin observaciones',6,NULL,NULL),(6,'2009-05-03','2009-05-08',NULL,'Pendiente','Cliente pidió más tiempo para pago',7,NULL,NULL),(7,'2009-06-11','2009-06-13','2009-06-13','Entregado','Buen cliente, entrega perfecta',8,NULL,NULL),(8,'2010-01-20','2010-01-25','2010-01-24','Entregado','Entrega en perfecto estado',9,NULL,NULL),(9,'2010-03-15','2010-03-20','2010-03-21','Entregado','Entrega un día tarde',10,NULL,NULL),(10,'2010-06-30','2010-07-05',NULL,'Pendiente','Pedido especial con productos en espera',10,NULL,NULL),(11,'2011-01-10','2011-01-15','2011-01-15','Entregado','Sin incidencias',7,NULL,NULL),(12,'2011-03-22','2011-03-28','2011-03-27','Entregado','Entrega rápida',8,NULL,NULL),(13,'2012-05-18','2012-05-23',NULL,'Pendiente','Producto en producción',9,NULL,NULL),(14,'2012-08-01','2012-08-06','2012-08-06','Entregado','Cliente satisfecho',10,NULL,NULL),(15,'2013-09-10','2013-09-15','2013-09-14','Entregado','Sin novedades',5,NULL,NULL),(16,'2014-10-12','2014-10-17','2014-10-16','Entregado','Perfecto estado',6,NULL,NULL),(17,'2015-11-21','2015-11-26',NULL,'Pendiente','Retraso de proveedor',7,NULL,NULL),(18,'2016-01-05','2016-01-10','2016-01-09','Entregado','Entrega exitosa',8,NULL,NULL),(19,'2016-03-10','2016-03-15','2016-03-16','Entregado','Leve demora aceptada',9,NULL,NULL),(20,'2017-06-12','2017-06-17',NULL,'Pendiente','Problemas logísticos',10,NULL,NULL);
/*!40000 ALTER TABLE `st_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_producto`
--

DROP TABLE IF EXISTS `st_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_producto` (
  `ID_producto` int NOT NULL DEFAULT '0',
  `codigo_producto` varchar(15) NOT NULL,
  `nombre` varchar(70) NOT NULL,
  `gama` int NOT NULL,
  `dimensiones` varchar(25) DEFAULT NULL,
  `proveedor` varchar(50) DEFAULT NULL,
  `descripcion` text,
  `cantidad_en_stock` smallint NOT NULL,
  `precio_venta` decimal(15,2) NOT NULL,
  `precio_proveedor` decimal(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_producto`
--

LOCK TABLES `st_producto` WRITE;
/*!40000 ALTER TABLE `st_producto` DISABLE KEYS */;
INSERT INTO `st_producto` VALUES (1,'OR-233','Dracaena Drago',5,'60 - 70','Viveros EL OASIS','',1,13.00,10.00),(2,'OR-234','Dracaena Drago',5,'130 - 150','Viveros EL OASIS','',2,64.00,51.00),(3,'OR-235','Dracaena Drago',5,'150 - 175','Viveros EL OASIS','',2,92.00,73.00),(4,'OR-236','Jubaea Chilensis',5,NULL,'Viveros EL OASIS','',100,49.00,39.00),(5,'OR-237','Livistonia Australis',5,'100 - 125','Viveros EL OASIS','',50,19.00,15.00),(6,'OR-238','Livistonia Decipiens',5,'90 - 110','Viveros EL OASIS','',50,19.00,15.00),(7,'OR-239','Livistonia Decipiens',5,'180 - 200','Viveros EL OASIS','',50,49.00,39.00),(8,'OR-240','Phoenix Canariensis',5,'110 - 130','Viveros EL OASIS','',50,6.00,4.00),(9,'OR-241','Phoenix Canariensis',5,'180 - 200','Viveros EL OASIS','',50,19.00,15.00),(10,'OR-242','Rhaphis Excelsa',5,'80 - 100','Viveros EL OASIS','',50,21.00,16.00),(11,'OR-243','Rhaphis Humilis',5,'150- 170','Viveros EL OASIS','',50,64.00,51.00),(12,'OR-244','Sabal Minor',5,'60 - 75','Viveros EL OASIS','',50,11.00,8.00),(13,'OR-245','Sabal Minor',5,'120 - 140','Viveros EL OASIS','',50,34.00,27.00),(14,'OR-246','Trachycarpus Fortunei',5,'90 - 105','Viveros EL OASIS','',50,18.00,14.00),(15,'OR-247','Trachycarpus Fortunei',5,'250-300','Viveros EL OASIS','',2,462.00,369.00),(16,'OR-248','Washingtonia Robusta',5,'60 - 70','Viveros EL OASIS','',15,3.00,2.00),(17,'OR-249','Washingtonia Robusta',5,'130 - 150','Viveros EL OASIS','',15,5.00,4.00),(18,'OR-250','Yucca Jewel',5,'80 - 105','Viveros EL OASIS','',15,10.00,8.00),(19,'OR-251','Zamia Furfuracaea',5,'90 - 110','Viveros EL OASIS','',15,168.00,134.00),(20,'OR-99','Mimosa DEALBATA Gaulois Astier',5,'200-225','Viveros EL OASIS','',10,70.00,50.00);
/*!40000 ALTER TABLE `st_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'staging_jardineria'
--

--
-- Dumping routines for database 'staging_jardineria'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-25 12:39:44
