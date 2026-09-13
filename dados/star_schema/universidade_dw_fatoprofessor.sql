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
-- Table structure for table `fatoprofessor`
--

DROP TABLE IF EXISTS `fatoprofessor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fatoprofessor` (
  `ProfessorKey` int NOT NULL,
  `DisciplinaKey` int NOT NULL,
  `CursoKey` int NOT NULL,
  `DepartamentoKey` int NOT NULL,
  `DataKey` int NOT NULL,
  `Quantidade` int NOT NULL DEFAULT '1',
  KEY `fk_Fato_Professor` (`ProfessorKey`),
  KEY `fk_Fato_Disciplina` (`DisciplinaKey`),
  KEY `fk_Fato_Curso` (`CursoKey`),
  KEY `fk_Fato_Departamento` (`DepartamentoKey`),
  KEY `fk_Fato_Data` (`DataKey`),
  CONSTRAINT `fk_Fato_Curso` FOREIGN KEY (`CursoKey`) REFERENCES `dimcurso` (`CursoKey`),
  CONSTRAINT `fk_Fato_Data` FOREIGN KEY (`DataKey`) REFERENCES `dimdata` (`DataKey`),
  CONSTRAINT `fk_Fato_Departamento` FOREIGN KEY (`DepartamentoKey`) REFERENCES `dimdepartamento` (`DepartamentoKey`),
  CONSTRAINT `fk_Fato_Disciplina` FOREIGN KEY (`DisciplinaKey`) REFERENCES `dimdisciplina` (`DisciplinaKey`),
  CONSTRAINT `fk_Fato_Professor` FOREIGN KEY (`ProfessorKey`) REFERENCES `dimprofessor` (`ProfessorKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fatoprofessor`
--

LOCK TABLES `fatoprofessor` WRITE;
/*!40000 ALTER TABLE `fatoprofessor` DISABLE KEYS */;
INSERT INTO `fatoprofessor` VALUES (1,1,1,1,20260101,1),(1,2,1,1,20260201,1),(2,3,2,1,20260301,1),(2,3,1,1,20260301,1),(2,4,1,1,20260401,1),(3,5,2,1,20260501,1),(4,6,2,1,20260601,1),(5,7,3,2,20260701,1),(5,7,2,2,20260701,1),(5,8,2,2,20260801,1),(6,9,4,2,20260901,1),(6,9,3,2,20260901,1),(7,10,3,2,20261001,1),(8,11,3,3,20261101,1),(9,12,4,3,20261201,1),(10,13,4,3,20261201,1),(11,14,5,4,20261201,1),(12,15,5,4,20261201,1);
/*!40000 ALTER TABLE `fatoprofessor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-09-13 12:54:26
