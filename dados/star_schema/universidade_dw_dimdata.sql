-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: universidade_dw
-- ------------------------------------------------------
-- Server version	8.0.46

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
-- Table structure for table `dimdata`
--

DROP TABLE IF EXISTS `dimdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dimdata` (
  `DataKey` int NOT NULL,
  `Data` date NOT NULL,
  `Ano` int NOT NULL,
  `Mes` int NOT NULL,
  `NomeMes` varchar(20) NOT NULL,
  `Trimestre` int NOT NULL,
  `Semestre` int NOT NULL,
  PRIMARY KEY (`DataKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dimdata`
--

LOCK TABLES `dimdata` WRITE;
/*!40000 ALTER TABLE `dimdata` DISABLE KEYS */;
INSERT INTO `dimdata` VALUES (20260101,'2026-01-15',2026,1,'Janeiro',1,1),(20260201,'2026-02-15',2026,2,'Fevereiro',1,1),(20260301,'2026-03-15',2026,3,'Março',1,1),(20260401,'2026-04-15',2026,4,'Abril',2,1),(20260501,'2026-05-15',2026,5,'Maio',2,1),(20260601,'2026-06-15',2026,6,'Junho',2,1),(20260701,'2026-07-15',2026,7,'Julho',3,2),(20260801,'2026-08-15',2026,8,'Agosto',3,2),(20260901,'2026-09-15',2026,9,'Setembro',3,2),(20261001,'2026-10-15',2026,10,'Outubro',4,2),(20261101,'2026-11-15',2026,11,'Novembro',4,2),(20261201,'2026-12-15',2026,12,'Dezembro',4,2);
/*!40000 ALTER TABLE `dimdata` ENABLE KEYS */;
UNLOCK TABLES;
