-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: mi_inventario
-- ------------------------------------------------------
-- Server version	8.0.42

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `entradas`
--

DROP TABLE IF EXISTS `entradas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entradas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `producto_id` int NOT NULL,
  `cantidad` int NOT NULL,
  `fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `producto_id` (`producto_id`),
  CONSTRAINT `entradas_ibfk_1` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entradas`
--

LOCK TABLES `entradas` WRITE;
/*!40000 ALTER TABLE `entradas` DISABLE KEYS */;
INSERT INTO `entradas` VALUES (1,3,200,'2025-05-13 02:35:53'),(2,6,50,'2025-05-15 00:34:36'),(3,6,50,'2025-05-15 04:07:08'),(4,6,100,'2025-05-20 23:45:26'),(5,3,100,'2025-05-20 23:50:40'),(6,6,150,'2025-05-21 03:33:39'),(7,3,200,'2025-05-21 03:36:47'),(8,9,200,'2025-05-21 22:57:55'),(9,3,200,'2025-05-21 22:57:55');
/*!40000 ALTER TABLE `entradas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entradas_detalle`
--

DROP TABLE IF EXISTS `entradas_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entradas_detalle` (
  `id` int NOT NULL AUTO_INCREMENT,
  `entrada_id` int NOT NULL,
  `producto_id` int NOT NULL,
  `cantidad` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `entrada_id` (`entrada_id`),
  KEY `producto_id` (`producto_id`),
  CONSTRAINT `entradas_detalle_ibfk_1` FOREIGN KEY (`entrada_id`) REFERENCES `entradas` (`id`) ON DELETE CASCADE,
  CONSTRAINT `entradas_detalle_ibfk_2` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entradas_detalle`
--

LOCK TABLES `entradas_detalle` WRITE;
/*!40000 ALTER TABLE `entradas_detalle` DISABLE KEYS */;
/*!40000 ALTER TABLE `entradas_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `items` json NOT NULL,
  `status` varchar(255) DEFAULT 'Pending',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `descripcion` text,
  `cantidad` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'boton camisa pequeÔö£ÔûÆo','insumos',20630),(2,'botones azules','insumos',11840),(3,'boton camisa pequeÔö£ÔûÆo','insumos',400),(4,'Camisa niÔö£ÔûÆo talla 10','Producto terminado',675),(5,'Camisa roja sin estampado talla L','Producto terminado',3990),(6,'Pantalon jean blanco talla 34','Producto terminado',150),(7,'Tela lino azul','insumos',NULL),(8,'boton camisa pequeÔö£ÔûÆo','insumos',NULL),(9,'boton camisa pequeÔö£ÔûÆo','insumos',200);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salidas`
--

DROP TABLE IF EXISTS `salidas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salidas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fecha` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salidas`
--

LOCK TABLES `salidas` WRITE;
/*!40000 ALTER TABLE `salidas` DISABLE KEYS */;
INSERT INTO `salidas` VALUES (1,'2025-04-19 20:21:44'),(2,'2025-04-19 20:37:55'),(3,'2025-04-19 20:53:37'),(4,'2025-04-19 21:01:57'),(5,'2025-04-19 21:03:01'),(6,'2025-04-19 21:15:27'),(7,'2025-04-19 21:27:52'),(8,'2025-04-19 22:19:44'),(9,'2025-04-19 22:23:57'),(10,'2025-04-19 22:55:09'),(11,'2025-05-12 21:53:25'),(12,'2025-05-12 22:55:45'),(13,'2025-05-12 23:06:37'),(14,'2025-05-12 23:11:19'),(15,'2025-05-12 23:30:42'),(16,'2025-05-12 23:31:03'),(17,'2025-05-12 23:31:52'),(18,'2025-05-12 23:42:41'),(19,'2025-05-13 21:04:16'),(20,'2025-05-13 21:14:00'),(21,'2025-05-13 21:24:46'),(22,'2025-05-13 21:29:02'),(23,'2025-05-13 21:29:55'),(24,'2025-05-13 21:41:14'),(25,'2025-05-13 21:44:04'),(26,'2025-05-14 20:29:54'),(27,'2025-05-14 22:09:42'),(28,'2025-05-14 23:09:12'),(29,'2025-05-20 18:41:36'),(30,'2025-05-20 19:25:08');
/*!40000 ALTER TABLE `salidas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salidas_detalle`
--

DROP TABLE IF EXISTS `salidas_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salidas_detalle` (
  `id` int NOT NULL AUTO_INCREMENT,
  `salida_id` int DEFAULT NULL,
  `producto_id` int DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `salida_id` (`salida_id`),
  KEY `producto_id` (`producto_id`),
  CONSTRAINT `salidas_detalle_ibfk_1` FOREIGN KEY (`salida_id`) REFERENCES `salidas` (`id`),
  CONSTRAINT `salidas_detalle_ibfk_2` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salidas_detalle`
--

LOCK TABLES `salidas_detalle` WRITE;
/*!40000 ALTER TABLE `salidas_detalle` DISABLE KEYS */;
INSERT INTO `salidas_detalle` VALUES (1,1,1,200),(2,2,1,200),(3,3,1,200),(4,4,1,200),(5,5,1,200),(6,5,2,100),(7,6,1,50),(8,7,1,20),(9,7,2,20),(10,8,1,20),(11,9,2,20),(12,9,1,20),(13,10,1,20),(14,11,1,100),(15,11,5,800),(16,12,1,100),(17,13,1,100),(18,14,4,100),(19,15,1,10),(20,16,1,10),(21,17,1,50),(22,18,1,20),(23,19,1,100),(24,20,2,20),(25,21,5,10),(26,22,4,10),(27,23,1,50),(28,24,1,30),(29,25,1,10),(30,26,4,15),(31,27,3,500),(32,28,6,200),(33,29,1,50),(34,30,1,10);
/*!40000 ALTER TABLE `salidas_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (3,'user1','$2b$10$FyuBW84ttB2EWQsSjfCIKeH22IHvP14Gq7ABiTtYRCCv8WqKNDEUW','user1@example.com','2025-03-26 23:02:05','2025-03-27 04:57:30'),(4,'Manuel','$2b$10$tRjyR0ZXaDvk6wcQ.TqJau/kKjDHjvlgvlk/A2EpKu/DtMJN.OkUS','manuel@correo.com','2025-04-08 22:17:59','2025-04-08 22:17:59'),(5,'user2','$2b$10$RNn3k1ZJVS7qanmri2M9/epAiQOxgbrTRwN6E3z5wLzVQv92hcE.2','user2@gmail.com','2025-04-09 18:29:13','2025-04-09 18:29:13'),(6,'User','$2b$10$y2xmmJRxYQ9e34/HfT0Rn.oQ4fUiYh0iWx9F44JBn5MvzTKHcl7ea','admin@gmail.com','2025-05-13 22:58:35','2025-05-13 22:58:35'),(7,'cesar','$2b$10$PmKWOhVl3KyQCcaRu.I1p.jHYTGODJx9NzC7wNnCcAVeYDhjtpeuW','pedro1@gmail.com','2025-05-13 23:21:24','2025-05-13 23:21:24'),(8,'david03','$2b$10$hEXy0KoMx6Lg5E8Gqoi7oegG/sQ5trCPh.G4ySphHhgHknFFuuk6.','d03@gmail.com','2025-05-14 18:34:38','2025-05-14 18:34:38'),(9,'User10','$2b$10$1HSGbmUHGVdXCf1QPi1Dx.MrcsRaoVw0uJhbNL3SE8iqLPqBNsnP.','user10@prueba.com','2025-05-14 22:47:43','2025-05-14 22:47:43');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-07 19:08:28
