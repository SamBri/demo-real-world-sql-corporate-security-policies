CREATE DATABASE  IF NOT EXISTS `customerdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `customerdb`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: customerdb
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `bankcustomer`
--

DROP TABLE IF EXISTS `bankcustomer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bankcustomer` (
  `uid` int NOT NULL DEFAULT '0',
  `name` varchar(32) CHARACTER SET latin1 NOT NULL,
  `pin` varchar(128) CHARACTER SET latin1 NOT NULL,
  `phone` varchar(15) CHARACTER SET latin1 NOT NULL,
  `balance` double NOT NULL,
  `registeredOn` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bankcustomer`
--

LOCK TABLES `bankcustomer` WRITE;
/*!40000 ALTER TABLE `bankcustomer` DISABLE KEYS */;
INSERT INTO `bankcustomer` VALUES (33,'Derdus','$2y$10$pM/Gk0MgBZ65wz/yaRRi1uZq3eOyQclBC8AiFCGCnxSGbU.2fm8oK','+254723222333',4000,'2021-01-10 13:16:23'),(34,'sam','$2y$10$I0azqLk8MKnIHQsAmY0qCOMC4bJ07ScM5fuO5vJLxKRsQ04hFCkzC','+233275684321',100,'2021-12-09 12:12:27'),(35,'brifo','$2y$10$4P8lahIg7HPg9Pf3k1FGauHlkWY1aQvMv6hIHb/Ji1lmPS9l6Fyo2','+233243173165',4000,'2021-12-09 12:16:38'),(36,'hannah','$2y$10$ev5ossJfIyYfdM/GyoOonem0Qn5Yze.fX9KnRwWU/YsadMyKNZrvS','+233271076478',1300,'2021-12-10 15:19:32');
/*!40000 ALTER TABLE `bankcustomer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banktransaction`
--

DROP TABLE IF EXISTS `banktransaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banktransaction` (
  `tid` int NOT NULL DEFAULT '0',
  `amount` double NOT NULL,
  `uid` int NOT NULL,
  `aid` int DEFAULT NULL,
  `ttype` varchar(10) CHARACTER SET latin1 NOT NULL,
  `completedOn` datetime DEFAULT CURRENT_TIMESTAMP,
  `ruid` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banktransaction`
--

LOCK TABLES `banktransaction` WRITE;
/*!40000 ALTER TABLE `banktransaction` DISABLE KEYS */;
INSERT INTO `banktransaction` VALUES (22,100,36,NULL,'send','2021-12-10 16:12:51',34),(23,100,36,NULL,'send','2021-12-10 16:13:44',34),(24,100,36,NULL,'send','2021-12-10 16:14:23',34),(25,100,36,NULL,'send','2021-12-10 16:14:55',34),(26,1000,36,3,'withdraw','2021-12-22 13:07:54',NULL),(27,1000,36,3,'withdraw','2021-12-22 13:20:01',NULL),(28,1000,34,5,'withdraw','2021-12-22 21:05:48',NULL);
/*!40000 ALTER TABLE `banktransaction` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-30 11:57:03
CREATE DATABASE  IF NOT EXISTS `testdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `testdb`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: testdb
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `banktransaction`
--

DROP TABLE IF EXISTS `banktransaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banktransaction` (
  `tid` int NOT NULL DEFAULT '0',
  `amount` double NOT NULL,
  `uid` int NOT NULL,
  `aid` int DEFAULT NULL,
  `ttype` varchar(10) CHARACTER SET latin1 NOT NULL,
  `completedOn` datetime DEFAULT CURRENT_TIMESTAMP,
  `ruid` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banktransaction`
--

LOCK TABLES `banktransaction` WRITE;
/*!40000 ALTER TABLE `banktransaction` DISABLE KEYS */;
INSERT INTO `banktransaction` VALUES (22,100,36,NULL,'send','2021-12-10 16:12:51',34),(23,100,36,NULL,'send','2021-12-10 16:13:44',34),(24,100,36,NULL,'send','2021-12-10 16:14:23',34),(25,100,36,NULL,'send','2021-12-10 16:14:55',34),(26,1000,36,3,'withdraw','2021-12-22 13:07:54',NULL),(27,1000,36,3,'withdraw','2021-12-22 13:20:01',NULL),(28,1000,34,5,'withdraw','2021-12-22 21:05:48',NULL);
/*!40000 ALTER TABLE `banktransaction` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-30 11:57:03
CREATE DATABASE  IF NOT EXISTS `financedb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `financedb`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: financedb
-- ------------------------------------------------------
-- Server version	8.0.27

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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-30 11:57:03