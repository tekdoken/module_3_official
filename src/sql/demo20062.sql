CREATE DATABASE  IF NOT EXISTS `demo20062` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `demo20062`;
-- MySQL dump 10.13  Distrib 8.0.19, for macos10.15 (x86_64)
--
-- Host: localhost    Database: demo20062
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
                            `id` int NOT NULL,
                            `name` varchar(45) DEFAULT NULL,
                            `age` int DEFAULT NULL,
                            PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Anh Đào',22),(2,'Sơn Đoàn',22),(3,'Hiệu Trung',15),(4,'Hùng Trần',25),(5,'Hưng Trần',25),(6,'Tiến Nguyễn',26),(7,'Thảo Phạm',16),(8,'Nguyễn Văn A',18),(9,'Nguyễn Trung Hiệu',22);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
                         `id` int NOT NULL,
                         `time` datetime DEFAULT NULL,
                         `total` int DEFAULT NULL,
                         `customerId` int DEFAULT NULL,
                         PRIMARY KEY (`id`),
                         KEY `FK1_idx` (`customerId`),
                         CONSTRAINT `FK1` FOREIGN KEY (`customerId`) REFERENCES `customer` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,'2006-06-20 00:00:00',NULL,1),(2,'2006-06-19 00:00:00',NULL,2),(3,'2006-06-19 00:00:00',NULL,2),(4,'2006-09-19 00:00:00',NULL,3),(5,'2007-06-19 00:00:00',NULL,8),(6,'2006-10-15 00:00:00',NULL,8);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderDetail`
--

DROP TABLE IF EXISTS `orderDetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderDetail` (
                               `orderId` int NOT NULL,
                               `productId` int NOT NULL,
                               `quantity` int DEFAULT NULL,
                               PRIMARY KEY (`orderId`,`productId`),
                               KEY `Fk2_idx` (`productId`),
                               CONSTRAINT `Fk` FOREIGN KEY (`orderId`) REFERENCES `order` (`id`),
                               CONSTRAINT `Fk2` FOREIGN KEY (`productId`) REFERENCES `product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderDetail`
--

LOCK TABLES `orderDetail` WRITE;
/*!40000 ALTER TABLE `orderDetail` DISABLE KEYS */;
INSERT INTO `orderDetail` VALUES (1,1,2),(1,2,1),(2,1,3),(2,3,4),(2,4,12),(2,6,1),(4,4,15),(4,5,20),(4,7,3),(5,1,15),(5,3,2),(5,4,12),(5,5,9),(6,1,1),(6,2,2),(6,3,3);
/*!40000 ALTER TABLE `orderDetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
                           `id` int NOT NULL,
                           `name` varchar(45) DEFAULT NULL,
                           `price` int DEFAULT NULL,
                           `quantity` int DEFAULT NULL,
                           PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Tivi Samsung',300,10),(2,'Điều hoà Panasonic',180,8),(3,'Máy giặt apple',300,15),(4,'Tủ Lạnh',280,30),(5,'Máy Giặt',70,20),(6,'Máy tính để bàn',70,100),(7,'Máy chơi game',180,10),(8,'Máy hút bụi',380,30);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-20  0:09:38
