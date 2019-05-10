-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: canardsportif
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `clients` (
  `ID_clients` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(128) NOT NULL,
  `prenom` varchar(128) NOT NULL,
  `type` varchar(128) NOT NULL,
  `tel1` varchar(128) NOT NULL,
  `mail1` varchar(128) NOT NULL,
  `contact2` varchar(128) NOT NULL,
  `tel2` varchar(128) NOT NULL,
  `mail2` varchar(128) NOT NULL,
  `contact3` varchar(128) NOT NULL,
  `tel3` varchar(128) NOT NULL,
  `mail3` varchar(128) NOT NULL,
  `contact4` varchar(128) NOT NULL,
  `tel4` varchar(128) NOT NULL,
  `mail4` varchar(128) NOT NULL,
  `contact5` varchar(128) NOT NULL,
  `tel5` varchar(128) NOT NULL,
  `mail5` varchar(128) NOT NULL,
  `info_sup` varchar(128) NOT NULL,
  `adresse` varchar(128) NOT NULL,
  `code_postale` varchar(128) NOT NULL,
  `ville` varchar(128) NOT NULL,
  PRIMARY KEY (`ID_clients`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'Dupont','Jean','M.','04 25 65 47 29','jean.dupont@mail.com','','04 25 65 47 29','jean.dupont@mail.com','','04 25 65 47 29','jean.dupont@mail.com','','04 25 65 47 29','jean.dupont@mail.com','','04 25 65 47 29','jean.dupont@mail.com','','','',''),(2,'AFPA','','','04 85 90 90 90','achats.afpa.fr','Jo','06 61 61 61 16','jo@afpa.fr','','','','','','','','','','','','','');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commandes`
--

DROP TABLE IF EXISTS `commandes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `commandes` (
  `ID_commandes` int(11) NOT NULL AUTO_INCREMENT,
  `num_reference` varchar(128) NOT NULL,
  `descriptions` varchar(128) NOT NULL,
  `quantite` varchar(128) NOT NULL,
  `prix_unitaire2` varchar(128) NOT NULL,
  `remise` varchar(128) NOT NULL,
  `prix` varchar(128) NOT NULL,
  `sous_total` varchar(128) NOT NULL,
  `taux_tva` varchar(128) NOT NULL,
  `remise_except` varchar(128) NOT NULL,
  `autre` varchar(128) NOT NULL,
  `solde` varchar(128) NOT NULL,
  `total` varchar(128) NOT NULL,
  PRIMARY KEY (`ID_commandes`),
  CONSTRAINT `commandes_ibfk_1` FOREIGN KEY (`ID_commandes`) REFERENCES `clients` (`id_clients`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commandes`
--

LOCK TABLES `commandes` WRITE;
/*!40000 ALTER TABLE `commandes` DISABLE KEYS */;
/*!40000 ALTER TABLE `commandes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventaire`
--

DROP TABLE IF EXISTS `inventaire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `inventaire` (
  `ID_inventaire` int(11) NOT NULL AUTO_INCREMENT,
  `num_reference` varchar(128) NOT NULL,
  `nom` varchar(128) NOT NULL,
  `descriptions` varchar(128) NOT NULL,
  `prix_unitaire` varchar(128) NOT NULL,
  `quantite_stock` varchar(128) NOT NULL,
  `valeur_stock` varchar(128) NOT NULL,
  `seuil_reaprov` varchar(128) NOT NULL,
  `delai_reaprov` varchar(128) NOT NULL,
  `quantite_reaprov` varchar(128) NOT NULL,
  `fin_serie` varchar(128) NOT NULL,
  PRIMARY KEY (`ID_inventaire`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventaire`
--

LOCK TABLES `inventaire` WRITE;
/*!40000 ALTER TABLE `inventaire` DISABLE KEYS */;
INSERT INTO `inventaire` VALUES (1,'IN0001','SURVETTEMENT','DUARIG 6 ANS','51,00 €','1','51,00 €','10','15','20','N'),(2,'IN0002','SURVETTEMENT','DUARIG 8 ANS','93,00 €','2','186,00 €','10','15','20','O'),(3,'IN0003','SURVETTEMENT','DUARIG 10 ANS','57,00 €','2','114,00 €','10','15','20','N'),(4,'IN0004','SURVETTEMENT','DUARIG 12 ANS','19,00 €','3','57,00 €','10','15','20','O'),(5,'IN0005','SURVETTEMENT','DUARIG TAILLE XS','75,00 €','2','150,00 €','10','15','20','N'),(6,'IN0006','SURVETTEMENT','DUARIG TAILLE S','11,00 €','2','22,00 €','10','15','20','O'),(7,'IN0007','SURVETTEMENT','DUARIG TAILLE M','56,00 €','3','168,00 €','10','15','20','N'),(8,'IN0008','SURVETTEMENT','DUARIG TAILLE L','38,00 €','4','152,00 €','10','15','20','N'),(9,'IN0009','SURVETTEMENT','DUARIG TAILLE XL','59,00 €','1','59,00 €','10','15','20','N'),(10,'IN0010','SURVETTEMENT','DUARIG TAILLE XXL','50,00 €','1','50,00 €','10','15','20','N'),(11,'IN0011','SURVETTEMENT','DUARIG TAILLE XXXL','59,00 €','0','0,00 €','10','15','20','N'),(12,'IN0012','COUPE-VENT','DUARIG 6 ANS','18,00 €','2','36,00 €','10','15','20','N'),(13,'IN0013','COUPE-VENT','DUARIG 8 ANS','26,00 €','2','52,00 €','10','15','20','O'),(14,'IN0014','COUPE-VENT','DUARIG 10 ANS','42,00 €','3','126,00 €','10','15','20','N'),(15,'IN0015','COUPE-VENT','DUARIG 12 ANS','32,00 €','2','64,00 €','10','15','20','N'),(16,'IN0016','COUPE-VENT','DUARIG TAILLE XS','90,00 €','1','90,00 €','10','15','20','N'),(17,'IN0017','COUPE-VENT','DUARIG TAILLE S','97,00 €','2','194,00 €','10','15','20','N'),(18,'IN0018','COUPE-VENT','DUARIG TAILLE M','12,00 €','3','36,00 €','10','15','20','O'),(19,'IN0019','COUPE-VENT','DUARIG TAILLE L','82,00 €','5','410,00 €','10','15','20','N'),(20,'IN0020','COUPE-VENT','DUARIG TAILLE XL','16,00 €','4','64,00 €','10','15','20','O'),(21,'IN0021','COUPE-VENT','DUARIG TAILLE XXL','19,00 €','2','38,00 €','10','15','20','O'),(22,'IN0022','COUPE-VENT','DUARIG TAILLE XXXL','24,00 €','1','24,00 €','10','15','20','O'),(23,'IN0023','POLO noir/blanc','DUARIG TAILLE S','29,00 €','1','29,00 €','10','15','20','O'),(24,'IN0024','POLO noir/blanc','DUARIG TAILLE M','75,00 €','2','150,00 €','10','15','20','N'),(25,'IN0025','POLO noir/blanc','DUARIG TAILLE L','14,00 €','2','28,00 €','10','15','20','O'),(26,'IN0026','POLO noir/blanc','DUARIG TAILLE XL','15,00 €','2','30,00 €','10','15','20','N'),(27,'IN0027','POLO noir/blanc','DUARIG TAILLE XXL','19,00 €','0','0,00 €','10','15','20','N'),(28,'IN0028','POLO noir/blanc','DUARIG TAILLE XXXL','20,00 €','0','0,00 €','10','15','20','N'),(29,'IN0029','POLO noir','DUARIG 6/8 ANS','15,00 €','1','15,00 €','10','15','20','N'),(30,'IN0030','POLO noir','DUARIG 10/12 ANS','15,00 €','0','0,00 €','10','15','20','N'),(31,'IN0031','POLO noir','DUARIG TAILLE XS/S','15,00 €','0','0,00 €','10','15','20','N'),(32,'IN0032','CHAUSSETTES NOIRE','DUARIG TAILLE 28/32','10,00 €','1','10,00 €','10','15','20','N'),(33,'IN0033','CHAUSSETTES NOIRE','DUARIG TAILLE 33/36','10,00 €','1','10,00 €','10','15','20','N'),(34,'IN0034','CHAUSSETTES NOIRE','DUARIG TAILLE 37/40','10,00 €','2','20,00 €','10','15','20','N'),(35,'IN0035','CHAUSSETTES NOIRE','DUARIG TAILLE 41/44','10,00 €','2','20,00 €','10','15','20','N'),(36,'IN0036','CHAUSSETTES NOIRE','DUARIG TAILLE 45/47','10,00 €','1','10,00 €','10','15','20','N'),(37,'IN0037','SAC DE SPORT','PETIT MODELE','15,00 €','2','30,00 €','10','15','20','N'),(38,'IN0038','SAC DE SPORT','GRAND MODELE','40,00 €','3','120,00 €','10','15','20','N'),(39,'IN0039','PARKA','TAILLE 6 ANS','20,00 €','0','0,00 €','10','15','20','N'),(40,'IN0040','PARKA','TAILLE 8 ANS','20,00 €','0','0,00 €','10','15','20','N'),(41,'IN0041','PARKA','TAILLE 10 ANS','25,00 €','1','25,00 €','10','15','20','N'),(42,'IN0042','PARKA','TAILLE 12 ANS','25,00 €','1','25,00 €','10','15','20','N'),(43,'IN0043','PARKA','TAILLE XS','25,00 €','1','25,00 €','10','15','20','N'),(44,'IN0044','PARKA','TAILLE S','30,00 €','2','60,00 €','10','15','20','N'),(45,'IN0045','PARKA','TAILLE M','40,00 €','3','120,00 €','10','15','20','N'),(46,'IN0046','PARKA','TAILLE L','40,00 €','4','160,00 €','10','15','20','N'),(47,'IN0047','PARKA','TAILLE XL','40,00 €','4','160,00 €','10','15','20','N'),(48,'IN0048','PARKA','TAILLE XXL','45,00 €','1','45,00 €','10','15','20','N'),(49,'IN0049','PARKA','TAILLE XXXL','45,00 €','0','0,00 €','10','15','20','N'),(50,'IN0050','BLOUSON','TAILLE 6 ANS','30,00 €','0','0,00 €','10','15','20','N'),(51,'IN0051','BLOUSON','TAILLE 8 ANS','30,00 €','0','0,00 €','10','15','20','N'),(52,'IN0052','BLOUSON','TAILLE 10 ANS','30,00 €','1','30,00 €','10','15','20','N'),(53,'IN0053','BLOUSON','TAILLE 12 ANS','35,00 €','1','35,00 €','10','15','20','N'),(54,'IN0054','BLOUSON','TAILLE XS','35,00 €','2','70,00 €','10','15','20','N'),(55,'IN0055','BLOUSON','TAILLE S','50,00 €','2','100,00 €','10','15','20','N'),(56,'IN0056','BLOUSON','TAILLE M','50,00 €','3','150,00 €','10','15','20','N'),(57,'IN0057','BLOUSON','TAILLE L','60,00 €','4','240,00 €','10','15','20','N'),(58,'IN0058','BLOUSON','TAILLE XL','60,00 €','4','240,00 €','10','15','20','N'),(59,'IN0059','BLOUSON','TAILLE XXL','65,00 €','1','65,00 €','10','15','20','N'),(60,'IN0060','BLOUSON','TAILLE XXXL','65,00 €','0','0,00 €','10','15','20','N'),(61,'IN0061','T-SHIRT','TAILLE 6 ANS','15,00 €','0','0,00 €','10','15','20','N'),(62,'IN0062','T-SHIRT','TAILLE 8 ANS','15,00 €','0','0,00 €','10','15','20','N'),(63,'IN0063','T-SHIRT','TAILLE 10 ANS','15,00 €','2','30,00 €','10','15','20','N'),(64,'IN0064','T-SHIRT','TAILLE 12 ANS','15,00 €','2','30,00 €','10','15','20','N'),(65,'IN0065','T-SHIRT','TAILLE XS','20,00 €','2','40,00 €','10','15','20','N'),(66,'IN0066','T-SHIRT','TAILLE S','20,00 €','2','40,00 €','10','15','20','N'),(67,'IN0067','T-SHIRT','TAILLE M','20,00 €','4','80,00 €','10','15','20','N'),(68,'IN0068','T-SHIRT','TAILLE L','20,00 €','5','100,00 €','10','15','20','N'),(69,'IN0069','T-SHIRT','TAILLE XL','20,00 €','4','80,00 €','10','15','20','N'),(70,'IN0070','T-SHIRT','TAILLE XXL','20,00 €','1','20,00 €','10','15','20','N'),(71,'IN0071','T-SHIRT','TAILLE XXXL','20,00 €','0','0,00 €','10','15','20','N'),(72,'IN0072','BALLONS','Entrainement T 3','15,00 €','5','75,00 €','10','15','20','N'),(73,'IN0073','BALLONS','MATCH T 3','15,00 €','5','75,00 €','10','15','20','N'),(74,'IN0074','BALLONS','Entrainement T 4','15,00 €','4','60,00 €','10','15','20','N'),(75,'IN0075','BALLONS','MATCH T 4','15,00 €','5','75,00 €','10','15','20','N'),(76,'IN0076','BALLONS','Entrainement T 5','16,00 €','6','96,00 €','10','15','20','N'),(77,'IN0077','BALLONS','MATCH T 5','16,00 €','5','80,00 €','10','15','20','N');
/*!40000 ALTER TABLE `inventaire` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-13 15:56:02
