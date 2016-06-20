CREATE DATABASE  IF NOT EXISTS `mflorenciapereira` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `mflorenciapereira`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: localhost    Database: mflorenciapereira
-- ------------------------------------------------------
-- Server version	5.6.17-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `gallery_images`
--

DROP TABLE IF EXISTS `gallery_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gallery_images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `source` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `project_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `gallery_images_project_id_index` (`project_id`),
  CONSTRAINT `gallery_images_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_images`
--

LOCK TABLES `gallery_images` WRITE;
/*!40000 ALTER TABLE `gallery_images` DISABLE KEYS */;
INSERT INTO `gallery_images` VALUES (8,'img/ssh/eliana-gonzalez-web/menu.png',1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(9,'img/ssh/eliana-gonzalez-web/bio.png',1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10,'img/ssh/eliana-gonzalez-web/blog.png',1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(11,'img/ssh/eliana-gonzalez-web/contact.png',1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(12,'img/ssh/eliana-gonzalez-web/portfolio.png',1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(13,'img/ssh/eliana-gonzalez-web/reel.png',1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(14,'img/ssh/eliana-gonzalez-web/resume1.png',1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(15,'img/ssh/eliana-gonzalez-web/resume2.png',1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(16,'img/ssh/sistema-estudio-turner/alumnos.png',2,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(17,'img/ssh/sistema-estudio-turner/alumnos3.png',2,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(18,'img/ssh/sistema-estudio-turner/main.png',2,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(19,'img/ssh/mflorenciapereira/main.png',3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(20,'img/ssh/mflorenciapereira/portfolio.png',3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(21,'img/ssh/mflorenciapereira/contact.png',3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `gallery_images` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-13  1:24:45
