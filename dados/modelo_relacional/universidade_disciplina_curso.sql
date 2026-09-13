-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: universidade
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
-- Table structure for table `disciplina_curso`
--

DROP TABLE IF EXISTS `disciplina_curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `disciplina_curso` (
  `Disciplina_idDisciplina` int NOT NULL,
  `Curso_idCurso` int NOT NULL,
  PRIMARY KEY (`Disciplina_idDisciplina`,`Curso_idCurso`),
  KEY `fk_DisciplinaCurso_Curso` (`Curso_idCurso`),
  CONSTRAINT `fk_DisciplinaCurso_Curso` FOREIGN KEY (`Curso_idCurso`) REFERENCES `curso` (`idCurso`),
  CONSTRAINT `fk_DisciplinaCurso_Disciplina` FOREIGN KEY (`Disciplina_idDisciplina`) REFERENCES `disciplina` (`idDisciplina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disciplina_curso`
--

LOCK TABLES `disciplina_curso` WRITE;
/*!40000 ALTER TABLE `disciplina_curso` DISABLE KEYS */;
INSERT INTO `disciplina_curso` VALUES (1,1),(2,1),(3,1),(4,1),(3,2),(5,2),(6,2),(7,2),(8,2),(7,3),(9,3),(10,3),(11,3),(9,4),(12,4),(13,4),(14,5),(15,5);
/*!40000 ALTER TABLE `disciplina_curso` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-09-13 12:15:15
