-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: medical_management
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `mm_company`
--

DROP TABLE IF EXISTS `mm_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_company` (
  `Name` varchar(20) NOT NULL,
  `Address` varchar(40) NOT NULL,
  `Phone No.` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_company`
--

LOCK TABLES `mm_company` WRITE;
/*!40000 ALTER TABLE `mm_company` DISABLE KEYS */;
INSERT INTO `mm_company` VALUES ('Cipla','Pharmacy','233233'),('Lupin','Pune','645222'),('DR Reddy','Hyderabad','728292'),('Atharva Pvt Ltd','Pune','221234');
/*!40000 ALTER TABLE `mm_company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_drugs`
--

DROP TABLE IF EXISTS `mm_drugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_drugs` (
  `SN` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `Type` varchar(100) NOT NULL,
  `Price` int NOT NULL,
  `Expiry day's` int NOT NULL,
  `Company` varchar(100) NOT NULL,
  `Shelf No.` int NOT NULL,
  `Quantity` int NOT NULL,
  PRIMARY KEY (`SN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_drugs`
--

LOCK TABLES `mm_drugs` WRITE;
/*!40000 ALTER TABLE `mm_drugs` DISABLE KEYS */;
INSERT INTO `mm_drugs` VALUES (1,'Ecosprin Gold','Medicine',93,233,'Cipla',121,102),(2,'Cobadex CZS','Medicine',44,600,'Lupin',203,2230),(3,'Eptus 25','Medicine',393,365,'Dr Reddy',302,278);
/*!40000 ALTER TABLE `mm_drugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_sales`
--

DROP TABLE IF EXISTS `mm_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_sales` (
  `SN` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `Type` varchar(100) NOT NULL,
  `Price` int NOT NULL,
  `Quantity` int NOT NULL,
  `Total Price` varchar(100) NOT NULL,
  `Date` varchar(100) NOT NULL,
  PRIMARY KEY (`SN`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_sales`
--

LOCK TABLES `mm_sales` WRITE;
/*!40000 ALTER TABLE `mm_sales` DISABLE KEYS */;
INSERT INTO `mm_sales` VALUES (1,'Eptus 25','Medicine',393,66,'25938','15/05/2023'),(2,'Cobadex CZS','Medicine',44,24,'1056','15/05/2023'),(3,'Ecosprin Gold','Medicine',93,42,'3906','15/05/2023');
/*!40000 ALTER TABLE `mm_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_warning`
--

DROP TABLE IF EXISTS `mm_warning`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_warning` (
  `Name` varchar(20) NOT NULL,
  `Type` varchar(20) NOT NULL,
  `Expiry day's` int NOT NULL,
  `Quantity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_warning`
--

LOCK TABLES `mm_warning` WRITE;
/*!40000 ALTER TABLE `mm_warning` DISABLE KEYS */;
INSERT INTO `mm_warning` VALUES ('1','Syrup',1,1),('3','Syrup',3,3),('6','Medicine',6,6),('xyz','Medicine',45,6);
/*!40000 ALTER TABLE `mm_warning` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-16  7:14:25
