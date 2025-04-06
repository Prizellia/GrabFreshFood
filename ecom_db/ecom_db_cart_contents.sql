-- MySQL dump 10.13  Distrib 8.0.41, for macos15 (arm64)
--
-- Host: localhost    Database: ecom_db
-- ------------------------------------------------------
-- Server version	9.2.0

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
-- Table structure for table `cart_contents`
--

DROP TABLE IF EXISTS `cart_contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_contents` (
  `cart_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL,
  `added_date` datetime DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  PRIMARY KEY (`cart_id`,`product_id`),
  KEY `fk.product_id_idx` (`product_id`),
  CONSTRAINT `fk.cart_id` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`cart_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk.product_id` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_contents`
--

LOCK TABLES `cart_contents` WRITE;
/*!40000 ALTER TABLE `cart_contents` DISABLE KEYS */;
INSERT INTO `cart_contents` VALUES (1,1,2,'2024-06-05 00:00:00',5),(1,2,1,'2024-06-05 00:00:00',4),(2,3,1,'2024-06-05 00:00:00',12),(2,7,1,'2024-06-05 00:00:00',6),(3,4,3,'2024-06-05 00:00:00',10.5),(3,8,2,'2024-06-05 00:00:00',9),(4,5,2,'2024-06-05 00:00:00',6),(4,9,1,'2024-06-05 00:00:00',8),(5,6,1,'2024-06-05 00:00:00',10),(5,10,1,'2024-06-05 00:00:00',5);
/*!40000 ALTER TABLE `cart_contents` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-05 17:33:26
