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
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'Laravel','2016-06-12 03:32:21','2016-06-12 03:32:21'),(2,'Java','2016-06-12 13:58:36','2016-06-12 13:58:36'),(3,'XSS','2016-06-12 13:58:44','2016-06-12 13:58:44'),(4,'Angular JS','0000-00-00 00:00:00','0000-00-00 00:00:00'),(5,'Node JS','0000-00-00 00:00:00','0000-00-00 00:00:00'),(6,'Express JS','0000-00-00 00:00:00','0000-00-00 00:00:00'),(7,'MongoDB','0000-00-00 00:00:00','0000-00-00 00:00:00'),(8,'Mongoose','0000-00-00 00:00:00','0000-00-00 00:00:00'),(9,'Videoangular','0000-00-00 00:00:00','0000-00-00 00:00:00'),(10,'CSS','0000-00-00 00:00:00','0000-00-00 00:00:00'),(11,'Mean','0000-00-00 00:00:00','0000-00-00 00:00:00'),(12,'JQuery','0000-00-00 00:00:00','0000-00-00 00:00:00'),(13,'Ruby','0000-00-00 00:00:00','0000-00-00 00:00:00'),(14,'Rails','0000-00-00 00:00:00','0000-00-00 00:00:00'),(15,'Device','0000-00-00 00:00:00','0000-00-00 00:00:00'),(16,'Elasticsearch','0000-00-00 00:00:00','0000-00-00 00:00:00'),(17,'Searchkick','0000-00-00 00:00:00','0000-00-00 00:00:00'),(18,'Device','0000-00-00 00:00:00','0000-00-00 00:00:00'),(19,'SASS','0000-00-00 00:00:00','0000-00-00 00:00:00'),(20,'RSpec','0000-00-00 00:00:00','0000-00-00 00:00:00'),(21,'Factory Girl','0000-00-00 00:00:00','0000-00-00 00:00:00'),(22,'Laravel','0000-00-00 00:00:00','0000-00-00 00:00:00'),(23,'PHP','0000-00-00 00:00:00','0000-00-00 00:00:00'),(24,'Ajax','0000-00-00 00:00:00','0000-00-00 00:00:00'),(25,'C','0000-00-00 00:00:00','0000-00-00 00:00:00'),(26,'C++','0000-00-00 00:00:00','0000-00-00 00:00:00'),(27,'Shell','0000-00-00 00:00:00','0000-00-00 00:00:00'),(28,'Regular Expressions','0000-00-00 00:00:00','0000-00-00 00:00:00'),(29,'Perl','0000-00-00 00:00:00','0000-00-00 00:00:00'),(30,'HTML5','0000-00-00 00:00:00','0000-00-00 00:00:00'),(31,'Bootstrap','0000-00-00 00:00:00','0000-00-00 00:00:00'),(32,'XML','0000-00-00 00:00:00','0000-00-00 00:00:00'),(33,'Android','0000-00-00 00:00:00','0000-00-00 00:00:00'),(34,'Wicket','0000-00-00 00:00:00','0000-00-00 00:00:00'),(35,'Struts','0000-00-00 00:00:00','0000-00-00 00:00:00'),(36,'Quartz','0000-00-00 00:00:00','0000-00-00 00:00:00'),(37,'Codeigniter','0000-00-00 00:00:00','0000-00-00 00:00:00'),(38,'SQL','0000-00-00 00:00:00','0000-00-00 00:00:00'),(39,'JPA','0000-00-00 00:00:00','0000-00-00 00:00:00'),(40,'Maven','0000-00-00 00:00:00','0000-00-00 00:00:00'),(41,'Jenkins','0000-00-00 00:00:00','0000-00-00 00:00:00'),(42,'SonarQube','0000-00-00 00:00:00','0000-00-00 00:00:00'),(43,'IntelliJ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(44,'GIT','0000-00-00 00:00:00','0000-00-00 00:00:00'),(45,'Oracle','0000-00-00 00:00:00','0000-00-00 00:00:00'),(46,'Jasper Reports','0000-00-00 00:00:00','0000-00-00 00:00:00'),(47,'Crystal Reports','0000-00-00 00:00:00','0000-00-00 00:00:00'),(48,'Weblogic','0000-00-00 00:00:00','0000-00-00 00:00:00'),(49,'JUnit','0000-00-00 00:00:00','0000-00-00 00:00:00'),(50,'Mockito','0000-00-00 00:00:00','0000-00-00 00:00:00'),(51,'PMBOK','0000-00-00 00:00:00','0000-00-00 00:00:00'),(52,'Single sign-on','0000-00-00 00:00:00','0000-00-00 00:00:00'),(53,'Metasploit','0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-13  1:24:44
