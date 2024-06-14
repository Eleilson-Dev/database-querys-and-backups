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
-- Table structure for table `cursos`
--

DROP TABLE IF EXISTS `cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cursos` (
  `idcurso` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) DEFAULT NULL,
  `descricao` text,
  `carga` int unsigned DEFAULT NULL,
  `totaulas` int DEFAULT NULL,
  `ano` year DEFAULT '2016',
  PRIMARY KEY (`idcurso`),
  UNIQUE KEY `nome` (`nome`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursos`
--

LOCK TABLES `cursos` WRITE;
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
INSERT INTO `cursos` VALUES (1,'HTML5','Curso de html5',40,10,2024),(2,'Desenvolvimento Web com HTML e CSS','Fundamentos de HTML e CSS para criação de websites.',30,8,2023),(3,'JavaScript Avançado','Técnicas avançadas de programação com JavaScript.',45,12,2024),(4,'PHP','Curso de php para iniciantes',40,20,2015),(5,'Java','introducao a linguagem java',40,29,2015),(6,'Desenvolvimento Mobile com React Native','Criação de aplicativos móveis utilizando React Native.',40,10,2023),(7,'Data Science para Iniciantes','Fundamentos da ciência de dados e análise exploratória.',45,11,2024),(8,'Inteligência Artificial Aplicada','Princípios e aplicações da Inteligência Artificial.',60,16,2023),(9,'Design Gráfico com Photoshop','Técnicas de design gráfico utilizando o Adobe Photoshop.',25,7,2024),(10,'Marketing Digital','Estratégias e práticas de marketing digital.',30,8,2023),(11,'Fundamentos de Redes de Computadores','Introdução às redes de computadores e seus componentes.',35,10,2024),(12,'Desenvolvimento de APIs RESTful','Criação e consumo de APIs RESTful com Node.js.',40,10,2023),(13,'Segurança da Informação','Princípios e práticas de segurança da informação.',50,13,2024);
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoas`
--

LOCK TABLES `pessoas` WRITE;
/*!40000 ALTER TABLE `pessoas` DISABLE KEYS */;
INSERT INTO `pessoas` VALUES (1,'Ana Souza','Engenheira','1985-03-25','F',68.2,1.65,'Brasil'),(2,'Carlos Silva','Médico','1978-11-12','M',82.3,1.8,'Portugal'),(3,'Mariana Lima','Advogada','1990-07-08','F',59,1.7,'Brasil'),(4,'José Santos','Professor','1965-02-19','M',75.5,1.75,'Angola'),(5,'Beatriz Oliveira','Designer','1995-10-30','F',62.8,1.68,'Moçambique'),(6,'Lucas Pereira','Desenvolvedor','1988-05-15','M',85,1.82,'Brasil'),(7,'Fernanda Costa','Arquiteta','1992-01-22','F',64.3,1.71,'Portugal'),(8,'Ricardo Martins','Economista','1983-09-10','M',78.7,1.77,'Brasil'),(9,'Juliana Almeida','Enfermeira','1987-06-03','F',60.2,1.66,'Brasil'),(10,'Bruno Fernandes','Analista','1993-04-29','M',77.5,1.73,'Portugal'),(11,'Patrícia Barbosa','Psicóloga','1991-12-17','F',61.9,1.64,'Brasil'),(12,'Gustavo Rocha','Veterinário','1986-08-20','M',79.8,1.76,'Angola'),(13,'Aline Cardoso','Farmacêutica','1994-02-28','F',58.6,1.67,'Moçambique'),(14,'Felipe Gomes','Publicitário','1989-11-05','M',83.2,1.74,'Brasil'),(15,'Paula Mendes','Nutricionista','1982-05-11','F',65.1,1.62,'Portugal'),(16,'Rafael Ribeiro','Dentista','1990-03-07','M',80.5,1.79,'Brasil'),(17,'Larissa Freitas','Jornalista','1984-09-23','F',63.7,1.65,'Brasil'),(18,'Thiago Teixeira','Cientista','1981-12-31','M',84,1.78,'Portugal'),(19,'Renata Castro','Fisioterapeuta','1995-06-18','F',60.5,1.63,'Moçambique'),(20,'Marcelo Araújo','Contador','1980-10-01','M',76.8,1.72,'Angola');
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

-- Dump completed on 2024-06-14  2:23:16
