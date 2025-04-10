-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: aulassql_noite
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
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `cpf` varchar(11) NOT NULL,
  `nome` varchar(48) DEFAULT NULL,
  `rua` varchar(30) DEFAULT NULL,
  `numero` varchar(4) DEFAULT NULL,
  `bairro` varchar(30) DEFAULT NULL,
  `cidade` varchar(20) DEFAULT NULL,
  `uf` varchar(2) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `profissao` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colaborador_noite`
--

DROP TABLE IF EXISTS `colaborador_noite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `colaborador_noite` (
  `cod_colaborador` int NOT NULL,
  `primeiro_nome` varchar(40) NOT NULL,
  `ultimo_nome` varchar(40) NOT NULL,
  `ramal` int NOT NULL,
  `data_admissao` date NOT NULL,
  `nr_depto` int NOT NULL,
  `cod_funcao` varchar(40) NOT NULL,
  `grau_funcao` int NOT NULL,
  `local_trabalho` varchar(40) NOT NULL,
  `salario` double NOT NULL,
  `nome_completo` varchar(80) NOT NULL,
  PRIMARY KEY (`cod_colaborador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colaborador_noite`
--

LOCK TABLES `colaborador_noite` WRITE;
/*!40000 ALTER TABLE `colaborador_noite` DISABLE KEYS */;
INSERT INTO `colaborador_noite` VALUES (4,'Bruce','Young',233,'1988-12-28',621,'Eng',2,'Estados Unidos',97500,'Young,Bruce'),(11,'K.J','Weston',34,'1990-01-17',130,'SRep',4,'Estados Unidos',86292.94,'Weston,K.J'),(12,'Terri','Lee',256,'1990-05-01',0,'Admin',4,'Estados Unidos',53793,'Lee,Terri'),(20,'Chris','Papadopoulos',887,'1990-01-01',671,'Mngr',3,'Estados Unidos',89655,'Papadopoulos,Chris'),(24,'Pele','Fisher',888,'1990-09-12',671,'Eng',3,'Estados Unidos',81810.19,'Fisher,Pele'),(28,'Ann','Bennet',5,'1991-02-01',120,'Admi',5,'Inglaterra',22935,'Bennet,Ann'),(34,'Janet','Baldwin',2,'1991-03-21',110,'Sales',3,'Estados Unidos',53167.5,'Baldwin,Janet'),(36,'Roger','Reeves',6,'1991-04-25',120,'Admin',5,'Inglaterra',22935,'Reeves,Roger'),(37,'Willie','Stansbury',7,'1991-04-25',120,'Eng',4,'Inglaterra',39224.06,'Stansbury,Willie'),(45,'Ashok','Ramanathan',209,'1991-08-01',621,'Eng',3,'Estados Unidos',80689,'Ramanathan,Ashok'),(52,'Carol','Nordstrom',420,'1991-10-02',180,'Prel',4,'Estados Unidos',42742.5,'Nordstrom,Carol'),(61,'Luke','Leung',3,'1992-02-18',110,'SRep',4,'Estados Unidos',68805,'Leung,Luke'),(71,'Jennifer M.','Burbank',289,'1992-04-15',622,'Eng',3,'Estados Unidos',53167.5,'Burbank,Jennifer M.'),(72,'Claudia','Sutherland',0,'1992-04-20',140,'SRep',4,'Canada',100914,'Sutherland,Claudia'),(83,'Dana','Bishop',290,'1992-06-01',621,'Eng',3,'Estados Unidos',62500,'Bishop,Dana'),(85,'Mary S.','MacDonald',447,'1992-06-01',100,'VP',2,'Estados Unidos',111262.5,'MacDonald,Mary S'),(105,'Oliver H.','Bender',225,'1992-10-08',0,'CEO',1,'Estados Unidos',212850,'Bender,Oliver H.'),(110,'Yuki','Ichida',22,'1993-02-04',115,'Eng',3,'Japão',6000000,'Ichida,Yuki'),(113,'Bill','Parker',247,'1993-06-01',623,'Eng',5,'Estados Unidos',35000,'Parker,Bill'),(114,'John','Montgomery',820,'1994-03-30',672,'Eng',5,'Estados Unidos',35000,'Montgomery,John'),(118,'Takashi','Yamamoto',23,'1993-07-01',115,'Srep',4,'Japão',7480000,'Yamamoto,Takashi'),(127,'Michael','Yanowski',492,'1993-08-09',100,'Srep',4,'Estados Unidos',44000,'Yanowski,Michael'),(134,'Jacques','Glon',0,'1993-08-23',123,'SRep',4,'França',390500,'Glon,Jacques');
/*!40000 ALTER TABLE `colaborador_noite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto` (
  `cod_produto` varchar(8) NOT NULL,
  `descricao` varchar(25) DEFAULT NULL,
  `lote` varchar(10) DEFAULT NULL,
  `validade` date DEFAULT NULL,
  `valor` double DEFAULT NULL,
  PRIMARY KEY (`cod_produto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-09 22:03:27
