-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: vitor_guliczsql
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
  `CPF` varchar(11) NOT NULL,
  `nome` varchar(48) DEFAULT NULL,
  `rua` varchar(30) DEFAULT NULL,
  `numero` varchar(4) DEFAULT NULL,
  `bairro` varchar(30) DEFAULT NULL,
  `cidade` varchar(20) DEFAULT NULL,
  `uf` char(2) DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL,
  `profissao` char(15) DEFAULT NULL,
  PRIMARY KEY (`CPF`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES ('10121','Sergio Luiz','Rua Marechal','131','CIC','Guarapuava','PR','M','Professor'),('10321','Aria Stark','Rua dos Valentes','901','Tatuquara','Ponta Grossa','PR','F','Médica'),('11111','Pedro','Rua XV','125','Alto XV','Curitiba','PR','M','militar'),('13119','Dr House','Rua 6 de maio','310','CIC','Paranaguá','PR','M','Médico'),('13191','Brendon Stark','Rua dos Corvos','333','Cajuru','Paranaguá','PR','M','Médico'),('15143','John Snow','Rua Marechal Deodoro','210','Boqueirão','Ponta Grossa','PR','M','militar'),('15951','Tyrion','Rua dos Anões','171','Batel','Curitiba','PR','M','Professor'),('42230','Wolverine','Rua dos Malvados','900','Tatuquara','Guarapuava','PR','M','militar'),('43156','Charles Xavier','Rua da Consolação','125','CIC','Curitiba','PR','M','Professor'),('517194','Bruce Banner','Rua dos violentos','171','Parolin','Curitiba','PR','M','Médico'),('53672','Samwell Tarly','Rua da Medicina','741','Agua Verde','Guarapuava','PR','M','Professor'),('67816','Jaime Lannister','Rua 12 outubro','12','Boqueirão','Ponta Grossa','PR','M','militar');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compra`
--

DROP TABLE IF EXISTS `compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compra` (
  `codcompra` varchar(8) NOT NULL,
  `CPF` varchar(25) DEFAULT NULL,
  `data_compra` date DEFAULT NULL,
  `tipo_pagamento` char(1) DEFAULT NULL,
  PRIMARY KEY (`codcompra`),
  KEY `CPF` (`CPF`),
  CONSTRAINT `compra_ibfk_1` FOREIGN KEY (`CPF`) REFERENCES `cliente` (`CPF`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compra`
--

LOCK TABLES `compra` WRITE;
/*!40000 ALTER TABLE `compra` DISABLE KEYS */;
INSERT INTO `compra` VALUES ('500','11111','2020-02-25','V'),('501','10121','2020-02-25','V'),('502','10121','2020-03-25','C'),('503','10321','2020-03-25','V'),('504','13191','2020-02-16','V'),('505','15951','2020-02-12','V'),('506','53672','2020-03-15','C'),('507','15143','2020-03-11','V'),('508','67816','2020-03-09','V'),('509','13119','2020-02-09','V'),('510','43156','2020-02-12','V'),('511','42230','2020-01-12','V'),('512','517194','2020-01-25','V'),('513','11111','2020-01-25','C'),('514','42230','2020-01-10','V'),('515','13191','2020-01-12','V'),('516','11111','2020-01-10','C'),('517','43156','2020-01-19','V'),('518','67816','2020-01-08','V'),('519','67816','2020-01-06','V'),('520','15951','2020-01-27','C'),('521','11111','2020-01-01','V'),('522','53672','2020-01-25','V'),('523','10321','2020-03-30','V');
/*!40000 ALTER TABLE `compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item` (
  `codItem` char(5) NOT NULL,
  `codCompra` char(5) DEFAULT NULL,
  `codProd` varchar(8) DEFAULT NULL,
  `quantidade` double DEFAULT NULL,
  PRIMARY KEY (`codItem`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES ('1000','503','500',3),('1001','504','100',5),('1002','504','900',8),('1003','504','990',4),('1004','505','100',6),('1005','505','200',11),('1006','506','600',23),('1007','506','500',7),('1008','507','300',9),('1009','508','800',4),('1010','509','400',9),('990','500','990',120),('991','500','600',325),('992','500','300',20),('993','500','200',53),('994','500','400',10),('995','502','100',20),('996','502','200',10),('997','502','800',5),('998','502','700',3),('999','503','990',4);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto` (
  `codProduto` varchar(8) NOT NULL,
  `descricao` varchar(25) DEFAULT NULL,
  `lote` varchar(10) DEFAULT NULL,
  `validade` date DEFAULT NULL,
  `valor` double DEFAULT NULL,
  PRIMARY KEY (`codProduto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES ('100','Queijo','QJ00101','2020-01-30',12.5),('200','Leite','LT00202','2020-03-28',4.75),('300','Requeijão','RQJ00303','2020-03-25',22.81),('400','Manteiga','MTG00404','2020-01-15',9.26),('500','Iogurte','IGT00505','2020-03-29',17.35),('600','Ricota','RCT00606','2020-02-10',21),('700','Creme de Leite','CRL00707','2020-03-25',16.57),('800','Nata','NT00808','2020-01-15',31.26),('900','Leite Condensado','LTC00909','2020-03-25',16.57),('990','Cream Cheese','CRC00909','2020-03-25',42.31);
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

-- Dump completed on 2025-04-08 22:07:58
