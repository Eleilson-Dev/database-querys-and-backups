-- MySQL dump 10.13  Distrib 8.4.0, for Linux (x86_64)
--
-- Host: localhost    Database: cadastro
-- ------------------------------------------------------
-- Server version	8.4.0

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
-- Current Database: `cadastro`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `cadastro` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `cadastro`;

--
-- Table structure for table `pessoas`
--

DROP TABLE IF EXISTS `pessoas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pessoas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) DEFAULT NULL,
  `profissao` varchar(50) DEFAULT NULL,
  `nascimento` date DEFAULT NULL,
  `sexo` enum('F','M') DEFAULT NULL,
  `peso` float DEFAULT NULL,
  `altura` float DEFAULT NULL,
  `nacionalidade` varchar(30) DEFAULT 'Brasil',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoas`
--

LOCK TABLES `pessoas` WRITE;
/*!40000 ALTER TABLE `pessoas` DISABLE KEYS */;
INSERT INTO `pessoas` VALUES (21,'Ana Silva','Médica','1985-07-12','F',65,1.7,'Brasil'),(22,'Carlos Souza','Engenheiro','1990-03-22','M',78.5,1.8,'Brasil'),(23,'Beatriz Oliveira','Advogada','1982-11-05','F',60.2,1.65,'Brasil'),(24,'Daniel Santos','Professor','1975-01-15','M',85.3,1.75,'Brasil'),(25,'Fernanda Costa','Arquiteta','1988-09-25','F',58.1,1.68,'Brasil'),(26,'Gustavo Lima','Empresário','1983-12-02','M',90,1.85,'Brasil'),(27,'Helena Martins','Designer','1991-04-18','F',55,1.6,'Brasil'),(28,'Igor Ferreira','Desenvolvedor','1993-08-10','M',72.5,1.78,'Brasil'),(29,'Juliana Rocha','Psicóloga','1989-05-30','F',63.7,1.7,'Brasil'),(30,'Lucas Almeida','Músico','1992-11-11','M',80,1.82,'Brasil'),(31,'Mariana Teixeira','Enfermeira','1987-06-20','F',59.3,1.67,'Brasil'),(32,'Nicolas Araújo','Jornalista','1985-03-14','M',75.8,1.77,'Brasil'),(33,'Patrícia Lima','Veterinária','1990-01-27','F',62.5,1.65,'Brasil'),(34,'Ricardo Pereira','Chef de Cozinha','1978-08-09','M',82,1.8,'Brasil'),(35,'Sandra Ribeiro','Fotógrafa','1986-02-05','F',57.8,1.66,'Brasil'),(36,'Thiago Gomes','Cientista','1991-07-16','M',70.4,1.75,'Brasil'),(37,'Úrsula Melo','Atriz','1992-10-22','F',55.6,1.62,'Brasil'),(38,'Victor Nunes','Piloto','1983-11-18','M',78.7,1.79,'Brasil'),(39,'Wagner Santos','Dentista','1988-09-03','M',79.2,1.77,'Brasil'),(40,'Yasmin Farias','Bailarina','1994-06-07','F',53.3,1.61,'Brasil');
/*!40000 ALTER TABLE `pessoas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-17  1:09:00
