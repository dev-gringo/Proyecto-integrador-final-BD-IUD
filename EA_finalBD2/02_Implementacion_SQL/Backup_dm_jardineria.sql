-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: dm_jardineria
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
-- Table structure for table `dim_cliente`
--

DROP TABLE IF EXISTS `dim_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_cliente` (
  `ID_cliente` int NOT NULL,
  `nombre_cliente` varchar(50) DEFAULT NULL,
  `ciudad` varchar(50) DEFAULT NULL,
  `pais` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_cliente`
--

LOCK TABLES `dim_cliente` WRITE;
/*!40000 ALTER TABLE `dim_cliente` DISABLE KEYS */;
INSERT INTO `dim_cliente` VALUES (1,'Plantas y Diseño','Bogotá','Colombia'),(2,'Green World','Quito','Ecuador'),(3,'Jardín Express','Medellín','Colombia'),(4,'Vivero Encanto','Ciudad de México','México'),(5,'Florarte','Lima','Perú'),(6,'EcoPlantas','Buenos Aires','Argentina'),(7,'Decojardines','Cali','Colombia'),(8,'Vivero del Norte','Asunción','Paraguay'),(9,'Naturaleza Viva','La Paz','Bolivia'),(10,'Ornamentales del Sur','Santiago','Chile'),(11,'GoldFish Garden','San Francisco','USA'),(12,'Gardening Associates','Miami','USA'),(13,'Gerudo Valley','New York','USA'),(14,'Green Thumb Ltd.','Los Angeles','USA'),(15,'Nature\'s Touch','Chicago','USA'),(16,'Floristería Sakura','Tokyo','Japón'),(17,'Jardines de Madrid','Madrid','España'),(18,'Viveros La Semilla','Barcelona','España'),(19,'DecorPlant','Vancouver','Canadá'),(20,'Botanic Art','Lima','Perú'),(21,'Plantas y Diseño','Bogotá','Colombia'),(22,'Green World','Quito','Ecuador'),(23,'Jardín Express','Medellín','Colombia'),(24,'Vivero Encanto','Ciudad de México','México'),(25,'Florarte','Lima','Perú'),(26,'EcoPlantas','Buenos Aires','Argentina'),(27,'Decojardines','Cali','Colombia'),(28,'Vivero del Norte','Asunción','Paraguay'),(29,'Naturaleza Viva','La Paz','Bolivia'),(30,'Ornamentales del Sur','Santiago','Chile');
/*!40000 ALTER TABLE `dim_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_empleado`
--

DROP TABLE IF EXISTS `dim_empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_empleado` (
  `ID_empleado` int NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido1` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_empleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_empleado`
--

LOCK TABLES `dim_empleado` WRITE;
/*!40000 ALTER TABLE `dim_empleado` DISABLE KEYS */;
INSERT INTO `dim_empleado` VALUES (1,'Marcos','Magaña'),(2,'Ruben','López'),(3,'Alberto','Soria'),(4,'Maria','Solís'),(5,'Felipe','Rosas'),(6,'Juan Carlos','Ortiz'),(7,'Claudia','Moreno'),(8,'Santiago','Delgado'),(9,'Isabel','Navarro'),(10,'Raúl','García'),(11,'Mario','Rodríguez'),(12,'Ana','Martínez'),(13,'Luis','Gómez'),(14,'Lucía','Ramírez'),(15,'Sofía','Díaz'),(16,'Pablo','Navarro'),(17,'Laura','Herrera'),(18,'Diego','Ruiz');
/*!40000 ALTER TABLE `dim_empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_producto`
--

DROP TABLE IF EXISTS `dim_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_producto` (
  `ID_producto` int NOT NULL,
  `nombre` varchar(70) DEFAULT NULL,
  `proveedor` varchar(50) DEFAULT NULL,
  `Categoria` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_producto`
--

LOCK TABLES `dim_producto` WRITE;
/*!40000 ALTER TABLE `dim_producto` DISABLE KEYS */;
INSERT INTO `dim_producto` VALUES (1,'Dracaena Drago','Viveros EL OASIS','5'),(2,'Dracaena Drago','Viveros EL OASIS','5'),(3,'Dracaena Drago','Viveros EL OASIS','5'),(4,'Jubaea Chilensis','Viveros EL OASIS','5'),(5,'Livistonia Australis','Viveros EL OASIS','5'),(6,'Livistonia Decipiens','Viveros EL OASIS','5'),(7,'Livistonia Decipiens','Viveros EL OASIS','5'),(8,'Phoenix Canariensis','Viveros EL OASIS','5'),(9,'Phoenix Canariensis','Viveros EL OASIS','5'),(10,'Rhaphis Excelsa','Viveros EL OASIS','5'),(11,'Rhaphis Humilis','Viveros EL OASIS','5'),(12,'Sabal Minor','Viveros EL OASIS','5'),(13,'Sabal Minor','Viveros EL OASIS','5'),(14,'Trachycarpus Fortunei','Viveros EL OASIS','5'),(15,'Trachycarpus Fortunei','Viveros EL OASIS','5'),(16,'Washingtonia Robusta','Viveros EL OASIS','5'),(17,'Washingtonia Robusta','Viveros EL OASIS','5'),(18,'Yucca Jewel','Viveros EL OASIS','5'),(19,'Zamia Furfuracaea','Viveros EL OASIS','5'),(20,'Mimosa DEALBATA Gaulois Astier','Viveros EL OASIS','5');
/*!40000 ALTER TABLE `dim_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_tiempo`
--

DROP TABLE IF EXISTS `dim_tiempo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_tiempo` (
  `ID_tiempo` int NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `anio` int DEFAULT NULL,
  `mes` int DEFAULT NULL,
  `dia` int DEFAULT NULL,
  `trimestre` int DEFAULT NULL,
  PRIMARY KEY (`ID_tiempo`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_tiempo`
--

LOCK TABLES `dim_tiempo` WRITE;
/*!40000 ALTER TABLE `dim_tiempo` DISABLE KEYS */;
INSERT INTO `dim_tiempo` VALUES (1,'2006-01-17',2006,1,17,1),(2,'2007-10-23',2007,10,23,4),(3,'2008-06-20',2008,6,20,2),(4,'2008-07-15',2008,7,15,3),(5,'2009-01-10',2009,1,10,1),(6,'2009-05-03',2009,5,3,2),(7,'2009-06-11',2009,6,11,2),(8,'2010-01-20',2010,1,20,1),(9,'2010-03-15',2010,3,15,1),(10,'2010-06-30',2010,6,30,2),(11,'2011-01-10',2011,1,10,1),(12,'2011-03-22',2011,3,22,1),(13,'2012-05-18',2012,5,18,2),(14,'2012-08-01',2012,8,1,3),(15,'2013-09-10',2013,9,10,3),(16,'2014-10-12',2014,10,12,4),(17,'2015-11-21',2015,11,21,4),(18,'2016-01-05',2016,1,5,1),(19,'2016-03-10',2016,3,10,1),(20,'2017-06-12',2017,6,12,2);
/*!40000 ALTER TABLE `dim_tiempo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fact_ventas`
--

DROP TABLE IF EXISTS `fact_ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fact_ventas` (
  `ID_fact` int NOT NULL AUTO_INCREMENT,
  `ID_producto` int DEFAULT NULL,
  `ID_cliente` int DEFAULT NULL,
  `ID_empleado` int DEFAULT NULL,
  `ID_tiempo` int DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  `total_venta` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`ID_fact`),
  KEY `ID_producto` (`ID_producto`),
  KEY `ID_cliente` (`ID_cliente`),
  KEY `ID_empleado` (`ID_empleado`),
  KEY `ID_tiempo` (`ID_tiempo`),
  CONSTRAINT `fact_ventas_ibfk_1` FOREIGN KEY (`ID_producto`) REFERENCES `dim_producto` (`ID_producto`),
  CONSTRAINT `fact_ventas_ibfk_2` FOREIGN KEY (`ID_cliente`) REFERENCES `dim_cliente` (`ID_cliente`),
  CONSTRAINT `fact_ventas_ibfk_3` FOREIGN KEY (`ID_empleado`) REFERENCES `dim_empleado` (`ID_empleado`),
  CONSTRAINT `fact_ventas_ibfk_4` FOREIGN KEY (`ID_tiempo`) REFERENCES `dim_tiempo` (`ID_tiempo`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fact_ventas`
--

LOCK TABLES `fact_ventas` WRITE;
/*!40000 ALTER TABLE `fact_ventas` DISABLE KEYS */;
INSERT INTO `fact_ventas` VALUES (1,9,5,15,15,3,57.00),(2,4,5,15,3,1,49.00),(3,3,5,15,2,2,184.00),(4,1,5,15,2,10,130.00),(5,2,5,15,1,3,192.00),(6,1,5,15,1,5,65.00),(7,10,6,16,16,4,84.00),(8,7,6,16,5,3,147.00),(9,6,6,16,4,2,38.00),(10,5,6,16,4,4,76.00),(11,5,7,17,11,6,114.00),(12,9,7,17,6,4,76.00),(13,8,7,17,6,10,60.00),(14,6,8,18,12,4,76.00),(15,10,8,18,7,2,42.00),(16,7,9,13,13,2,98.00),(17,2,9,13,8,1,64.00),(18,8,10,14,14,7,42.00),(19,4,10,14,10,3,147.00),(20,3,10,14,9,5,460.00);
/*!40000 ALTER TABLE `fact_ventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'dm_jardineria'
--

--
-- Dumping routines for database 'dm_jardineria'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-25 12:34:14
