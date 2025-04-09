-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: danielbalera_join
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `branca`
--

DROP TABLE IF EXISTS `branca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `branca` (
  `peca` varchar(11) DEFAULT NULL,
  `qtde` int DEFAULT NULL,
  `material` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branca`
--

LOCK TABLES `branca` WRITE;
/*!40000 ALTER TABLE `branca` DISABLE KEYS */;
INSERT INTO `branca` VALUES ('rei',502,'carvalho'),('rainha',398,'carvalho'),('torre',1020,'carvalho'),('bispo',985,'carvalho'),('cavaleiro',950,'carvalho'),('peão',431,'carvalho');
/*!40000 ALTER TABLE `branca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente1`
--

DROP TABLE IF EXISTS `cliente1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente1` (
  `cod_cliente` int NOT NULL,
  `nome_cliente` varchar(60) NOT NULL,
  `data_nascimento` date DEFAULT NULL,
  `telefone` varchar(9) DEFAULT NULL,
  `cod_profissao` int DEFAULT NULL,
  PRIMARY KEY (`cod_cliente`),
  KEY `cod_profissao` (`cod_profissao`),
  CONSTRAINT `cliente1_ibfk_1` FOREIGN KEY (`cod_profissao`) REFERENCES `profissao` (`cod_profissao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente1`
--

LOCK TABLES `cliente1` WRITE;
/*!40000 ALTER TABLE `cliente1` DISABLE KEYS */;
INSERT INTO `cliente1` VALUES (121,'João Pereira','1980-09-20','3456-7890',25),(122,'Maria Barros','1972-01-22','3456-7891',26),(123,'José Mendes','1983-04-29','3456-7892',27),(124,'Rogério Cavalcante','1990-01-12','3456-7893',28),(125,'Daniel Balera','2008-12-30','9679-1720',26);
/*!40000 ALTER TABLE `cliente1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido` (
  `num_pedido` int NOT NULL,
  `cod_cliente` int DEFAULT NULL,
  `tot_pedido` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`num_pedido`),
  KEY `cod_cliente` (`cod_cliente`),
  CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`cod_cliente`) REFERENCES `cliente1` (`cod_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` VALUES (202,121,800.00),(204,122,900.00),(205,123,1200.00);
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preta`
--

DROP TABLE IF EXISTS `preta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `preta` (
  `peca` varchar(11) DEFAULT NULL,
  `qtde` int DEFAULT NULL,
  `material` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preta`
--

LOCK TABLES `preta` WRITE;
/*!40000 ALTER TABLE `preta` DISABLE KEYS */;
INSERT INTO `preta` VALUES ('rei',502,'ébano'),('rainha',397,'ébano'),('torre',1020,'ébano'),('bispo',985,'ébano'),('cavaleiro',950,'ébano'),('peão',453,'ébano');
/*!40000 ALTER TABLE `preta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profissao`
--

DROP TABLE IF EXISTS `profissao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profissao` (
  `cod_profissao` int NOT NULL,
  `nome_profissao` varchar(60) NOT NULL,
  PRIMARY KEY (`cod_profissao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profissao`
--

LOCK TABLES `profissao` WRITE;
/*!40000 ALTER TABLE `profissao` DISABLE KEYS */;
INSERT INTO `profissao` VALUES (25,'programador'),(26,'analista de BD'),(27,'suporte'),(28,'estagiario');
/*!40000 ALTER TABLE `profissao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabela_a`
--

DROP TABLE IF EXISTS `tabela_a`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tabela_a` (
  `nome` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabela_a`
--

LOCK TABLES `tabela_a` WRITE;
/*!40000 ALTER TABLE `tabela_a` DISABLE KEYS */;
INSERT INTO `tabela_a` VALUES ('Fernanda'),('Josefa'),('Luiz'),('Fernando');
/*!40000 ALTER TABLE `tabela_a` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabela_b`
--

DROP TABLE IF EXISTS `tabela_b`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tabela_b` (
  `nome` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabela_b`
--

LOCK TABLES `tabela_b` WRITE;
/*!40000 ALTER TABLE `tabela_b` DISABLE KEYS */;
INSERT INTO `tabela_b` VALUES ('Carlos'),('Manoel'),('Luiz'),('Fernando');
/*!40000 ALTER TABLE `tabela_b` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-08 22:13:43
