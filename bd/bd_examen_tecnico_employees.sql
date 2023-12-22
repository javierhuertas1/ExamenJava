CREATE DATABASE  IF NOT EXISTS `bd_examen_tecnico` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bd_examen_tecnico`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: bd_examen_tecnico
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `JOB_ID` int DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  `LAST_NAME` varchar(255) NOT NULL,
  `BIRTHDATE` date NOT NULL,
  `GENDER_ID` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_employees_genders1_idx` (`GENDER_ID`),
  KEY `fk_employees_jobs1_idx` (`JOB_ID`),
  CONSTRAINT `fk_employees_genders1` FOREIGN KEY (`GENDER_ID`) REFERENCES `genders` (`ID`),
  CONSTRAINT `fk_employees_jobs1` FOREIGN KEY (`JOB_ID`) REFERENCES `jobs` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,NULL,'javier','Apellido','2023-12-25',1),(2,NULL,'javier','Apellido','2023-12-25',1),(3,NULL,'javier','Apellido','1983-01-01',1),(4,1,'javier','Apellido','1983-01-01',1),(5,1,'Javier','Apdo','2023-12-25',1),(6,1,'javichuela','Apdo','2023-12-25',1),(7,1,'javichuela','Apdo','2023-12-25',1),(8,1,'javichuela','Apdo','2023-12-25',1),(9,1,'javichuela','Apdo','2023-12-25',1),(10,1,'javichuela','Apdo','2023-12-25',1),(11,1,'ja','Apdo','2023-12-25',1),(12,1,'ja','Apdo','2023-12-25',1),(13,1,'ja','Apdo','2023-12-25',1),(14,1,'ja','Apdo','2023-12-25',1),(15,1,'ja','Apdo','2023-12-25',1),(16,1,'ja','Apdo','2023-12-25',1),(17,1,'ja','Apdo','2023-12-25',1),(18,1,'ja','Apdo','2023-12-25',1),(19,1,'ja','Apdo','2023-12-25',1),(20,1,'jas','Apdo','2023-12-25',1),(21,1,'jas','Apdo','2023-12-25',1),(22,1,'jas','Apdo','2023-12-25',1),(23,1,'jas','Apdo','2023-12-25',1),(24,1,'jas','Apdo','2023-12-25',1),(25,1,'javier ','Huertas ','2023-12-25',1),(26,1,'javier ','Huertas ','2023-12-25',1),(27,1,'javier ','Huertas ','2023-12-25',1),(28,1,'javier ','Huertas ','2023-12-25',1),(29,1,'javier','Huertas','2023-12-25',1),(30,1,'kjkj','Huertas','2023-12-25',1),(31,1,'ñ','Huertas','2023-12-25',1),(32,1,'Jahy','Huertas','2000-12-25',1),(33,1,'w','Huertas','2000-12-25',1),(34,1,'er','Huertas','2000-12-25',1),(35,1,'pabli','pe','2000-12-25',1),(36,1,'Juan','Pérez','1983-01-01',1),(37,1,'jueacnhi','Pérez','1983-01-01',1),(38,1,'dr','Pérez','1983-01-01',1),(39,1,'sdrd','Pérez','1983-01-01',1),(40,1,'q','Pérez','2016-01-01',1),(41,1,'nuevo empleado','Pérez','2016-01-01',1),(42,1,'EEE','Pérez','2000-01-01',1),(43,1,'eeded','Pérez','2000-01-01',1),(44,1,'drhhhh','Pérez','2000-01-01',1),(45,1,'dddd','Pérez','2000-01-01',1),(46,1,'dddddd','Pérez','2000-01-01',1),(47,1,'wewr','Pérez','2000-01-01',1),(48,1,'wedwr','Pérez','2000-01-01',1),(49,1,'qw','Pérez','2000-01-01',1),(50,1,'qtw','Pérez','2000-01-01',1);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-26  6:46:35
