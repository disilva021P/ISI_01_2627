-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: bd_lojab
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `tb_agg_loja`
--

DROP TABLE IF EXISTS `tb_agg_loja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_agg_loja` (
  `loja` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `n_modelos` int DEFAULT NULL,
  `unidades_total` int DEFAULT NULL,
  `preco_medio_eur` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_agg_marca`
--

DROP TABLE IF EXISTS `tb_agg_marca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_agg_marca` (
  `marca_final` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `n_modelos` int DEFAULT NULL,
  `unidades_total` int DEFAULT NULL,
  `preco_medio_eur` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_produtos`
--

DROP TABLE IF EXISTS `tb_produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_produtos` (
  `chave` varchar(150) NOT NULL,
  `marca_final` varchar(100) DEFAULT NULL,
  `modelo_final` varchar(100) DEFAULT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `id_a` int DEFAULT NULL,
  `id_b` varchar(50) DEFAULT NULL,
  `unidades_a` int DEFAULT NULL,
  `unidades_b` int DEFAULT NULL,
  `unidades_total` int DEFAULT '0',
  `estado_produto` varchar(50) DEFAULT NULL,
  `sistemaOperativo` varchar(150) DEFAULT NULL,
  `ano_valido` int DEFAULT NULL,
  `ano_aviso` varchar(100) DEFAULT NULL,
  `preco_usd` decimal(10,2) DEFAULT NULL,
  `taxa_cambio` decimal(6,4) DEFAULT NULL,
  `preco_eur` decimal(10,2) DEFAULT NULL,
  `ram_gb` decimal(4,1) DEFAULT NULL,
  `armazenamento_gb` int DEFAULT NULL,
  `bateria_mah` int DEFAULT NULL,
  `data_insercao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`chave`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-10-16 11:29:19
