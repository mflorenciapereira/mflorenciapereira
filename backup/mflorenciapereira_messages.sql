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
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,'ansomware','lala@gmail.com','lala@gmail.com','2016-06-12 21:41:39','2016-06-12 21:41:39'),(2,'ansomware','lala@gmail.com','hola','2016-06-12 21:42:44','2016-06-12 21:42:44'),(3,'ansomware','lala@gmail.com','hola','2016-06-12 22:04:52','2016-06-12 22:04:52'),(4,'ansomware','lala@gmail.com','hola','2016-06-12 22:12:59','2016-06-12 22:12:59'),(5,'ansomware','lala@gmail.com','hola','2016-06-12 22:13:19','2016-06-12 22:13:19'),(6,'ansomware','lala@gmail.com','hola','2016-06-12 22:13:31','2016-06-12 22:13:31'),(7,'ansomware','lala@gmail.com','hola','2016-06-12 22:14:07','2016-06-12 22:14:07'),(8,'ansomware','lala@gmail.com','hola','2016-06-12 22:14:23','2016-06-12 22:14:23'),(9,'ansomware','lala@gmail.com','hola','2016-06-12 22:15:10','2016-06-12 22:15:10'),(10,'ansomware','lala@gmail.com','hola','2016-06-12 22:15:42','2016-06-12 22:15:42'),(11,'ansomware','lala@gmail.com','hola','2016-06-12 22:16:05','2016-06-12 22:16:05'),(12,'ansomware','lala@gmail.com','hola','2016-06-12 22:16:31','2016-06-12 22:16:31'),(13,'ansomware','lala@gmail.com','hola','2016-06-12 22:18:04','2016-06-12 22:18:04'),(14,'ansomware','lala@gmail.com','hola','2016-06-12 22:19:06','2016-06-12 22:19:06'),(15,'ansomware','lala@gmail.com','hola','2016-06-12 22:20:21','2016-06-12 22:20:21'),(16,'ansomware','lala@gmail.com','hola','2016-06-12 22:21:30','2016-06-12 22:21:30'),(17,'ansomware','lala@gmail.com','hola','2016-06-12 22:22:23','2016-06-12 22:22:23'),(18,'ansomware','lala@gmail.com','hola','2016-06-12 22:34:52','2016-06-12 22:34:52'),(19,'ansomware','lala@gmail.com','hola','2016-06-12 22:38:04','2016-06-12 22:38:04'),(20,'ansomware','lala@gmail.com','hola','2016-06-12 22:38:28','2016-06-12 22:38:28'),(21,'ansomware','lala@gmail.com','hola','2016-06-12 22:41:59','2016-06-12 22:41:59'),(22,'ansomware','lala@gmail.com','hola','2016-06-12 22:42:52','2016-06-12 22:42:52'),(23,'ansomware','lala@gmail.com','hola','2016-06-12 22:43:04','2016-06-12 22:43:04'),(24,'ansomware','lala@gmail.com','hola','2016-06-12 22:43:44','2016-06-12 22:43:44'),(25,'ansomware','lala@gmail.com','hola','2016-06-12 22:45:21','2016-06-12 22:45:21'),(26,'ansomware','lala@gmail.com','hola','2016-06-12 22:45:32','2016-06-12 22:45:32'),(27,'ansomware','lala@gmail.com','hola','2016-06-12 22:45:59','2016-06-12 22:45:59'),(28,'ansomware','lala@gmail.com','hola','2016-06-12 22:46:32','2016-06-12 22:46:32'),(29,'ansomware','lala@gmail.com','hola','2016-06-12 22:48:54','2016-06-12 22:48:54'),(30,'ansomware','lala@gmail.com','hola','2016-06-12 22:50:21','2016-06-12 22:50:21'),(31,'ansomware','lala@gmail.com','hola','2016-06-12 22:50:37','2016-06-12 22:50:37'),(32,'ansomware','lala@gmail.com','hola','2016-06-12 22:51:23','2016-06-12 22:51:23'),(33,'ansomware','lala@gmail.com','hola','2016-06-12 22:51:40','2016-06-12 22:51:40'),(34,'ansomware','lala@gmail.com','hola','2016-06-12 22:52:06','2016-06-12 22:52:06'),(35,'ansomware','lala@gmail.com','hola','2016-06-12 22:52:54','2016-06-12 22:52:54'),(36,'ansomware','lala@gmail.com','hola','2016-06-12 22:53:03','2016-06-12 22:53:03'),(37,'ansomware','lala@gmail.com','hola','2016-06-12 22:53:36','2016-06-12 22:53:36'),(38,'ansomware','lala@gmail.com','hola','2016-06-12 22:54:44','2016-06-12 22:54:44'),(39,'ansomware','lala@gmail.com','hola','2016-06-12 22:56:10','2016-06-12 22:56:10'),(40,'ansomware','lala@gmail.com','hola','2016-06-12 22:56:37','2016-06-12 22:56:37'),(41,'ansomware','lala@gmail.com','hola','2016-06-12 23:02:03','2016-06-12 23:02:03'),(42,'ansomware','lala@gmail.com','hola','2016-06-12 23:02:21','2016-06-12 23:02:21'),(43,'ansomware','lala@gmail.com','hola','2016-06-12 23:03:02','2016-06-12 23:03:02'),(44,'ansomware','lala@gmail.com','hola','2016-06-12 23:04:00','2016-06-12 23:04:00'),(45,'ansomware','lala@gmail.com','hola','2016-06-12 23:04:48','2016-06-12 23:04:48'),(46,'ansomware','lala@gmail.com','hola','2016-06-12 23:05:07','2016-06-12 23:05:07'),(47,'ansomware','lala@gmail.com','hola','2016-06-12 23:05:38','2016-06-12 23:05:38'),(48,'ansomware','lala@gmail.com','hola','2016-06-12 23:06:52','2016-06-12 23:06:52'),(49,'ansomware','lala@gmail.com','hola','2016-06-12 23:08:33','2016-06-12 23:08:33'),(50,'ansomware','lala@gmail.com','hola','2016-06-12 23:08:45','2016-06-12 23:08:45'),(51,'ansomware','lala@gmail.com','hola','2016-06-12 23:09:36','2016-06-12 23:09:36'),(52,'ansomware','lala@gmail.com','hola','2016-06-12 23:13:37','2016-06-12 23:13:37'),(53,'ansomware','lala@gmail.com','hola','2016-06-12 23:18:43','2016-06-12 23:18:43'),(54,'ansomware','lala@gmail.com','hola','2016-06-12 23:18:58','2016-06-12 23:18:58'),(55,'ansomware','lala@gmail.com','hola','2016-06-12 23:19:57','2016-06-12 23:19:57'),(56,'ansomware','lala@gmail.com','hola','2016-06-12 23:20:46','2016-06-12 23:20:46'),(57,'ansomware','lala@gmail.com','hola','2016-06-12 23:21:32','2016-06-12 23:21:32'),(58,'ansomware','lala@gmail.com','hola','2016-06-12 23:23:36','2016-06-12 23:23:36'),(59,'ansomware','lala@gmail.com','hola','2016-06-12 23:24:21','2016-06-12 23:24:21'),(60,'ansomware','lala@gmail.com','hola','2016-06-12 23:25:59','2016-06-12 23:25:59'),(61,'ansomware','lala@gmail.com','hola','2016-06-12 23:26:53','2016-06-12 23:26:53'),(62,'ansomware','lala@gmail.com','hola','2016-06-12 23:27:43','2016-06-12 23:27:43'),(63,'ansomware','lala@gmail.com','hola','2016-06-12 23:28:02','2016-06-12 23:28:02'),(64,'ansomware','lala@gmail.com','hola','2016-06-12 23:31:49','2016-06-12 23:31:49'),(65,'ansomware','lala@gmail.com','hola','2016-06-12 23:32:54','2016-06-12 23:32:54'),(66,'ansomware','lala@gmail.com','hola','2016-06-12 23:33:45','2016-06-12 23:33:45'),(67,'ansomware','lala@gmail.com','hola','2016-06-12 23:34:20','2016-06-12 23:34:20'),(68,'ansomware','lala@gmail.com','hola','2016-06-12 23:35:58','2016-06-12 23:35:58'),(69,'ansomware','lala@gmail.com','hola','2016-06-12 23:41:37','2016-06-12 23:41:37'),(70,'ansomware','lala@gmail.com','hola','2016-06-12 23:42:01','2016-06-12 23:42:01'),(71,'ansomware','lala@gmail.com','hola','2016-06-12 23:42:27','2016-06-12 23:42:27'),(72,'ansomware','lala@gmail.com','hola','2016-06-12 23:43:28','2016-06-12 23:43:28'),(73,'ansomware','lala@gmail.com','hola','2016-06-12 23:45:13','2016-06-12 23:45:13'),(74,'ansomware','lala@gmail.com','hola','2016-06-12 23:47:59','2016-06-12 23:47:59'),(75,'ansomware','lala@gmail.com','hola','2016-06-12 23:48:06','2016-06-12 23:48:06'),(76,'ansomware','lala@gmail.com','hola','2016-06-12 23:48:22','2016-06-12 23:48:22'),(77,'ansomware','lala@gmail.com','hola','2016-06-12 23:48:36','2016-06-12 23:48:36'),(78,'ansomware','lala@gmail.com','hola','2016-06-12 23:50:05','2016-06-12 23:50:05'),(79,'ansomware','lala@gmail.com','hola','2016-06-12 23:52:35','2016-06-12 23:52:35'),(80,'ansomware','lala@gmail.com','hola','2016-06-12 23:53:25','2016-06-12 23:53:25'),(81,'ansomware','lala@gmail.com','hola','2016-06-12 23:54:35','2016-06-12 23:54:35'),(82,'ansomware','lala@gmail.com','hola','2016-06-12 23:55:34','2016-06-12 23:55:34'),(83,'ansomware','lala@gmail.com','hola','2016-06-12 23:56:15','2016-06-12 23:56:15'),(84,'ansomware','lala@gmail.com','hola','2016-06-12 23:58:09','2016-06-12 23:58:09'),(85,'ansomware','lala@gmail.com','hola','2016-06-12 23:59:45','2016-06-12 23:59:45'),(86,'ansomware','lala@gmail.com','hola','2016-06-13 00:04:33','2016-06-13 00:04:33'),(87,'ansomware','lala@gmail.com','hola','2016-06-13 00:06:00','2016-06-13 00:06:00'),(88,'ansomware','lala@gmail.com','hola','2016-06-13 00:08:31','2016-06-13 00:08:31'),(89,'ansomware','lala@gmail.com','hola','2016-06-13 00:08:52','2016-06-13 00:08:52'),(90,'ansomware','lala@gmail.com','hola','2016-06-13 00:13:09','2016-06-13 00:13:09'),(91,'ansomware','lala@gmail.com','hola','2016-06-13 00:13:30','2016-06-13 00:13:30'),(92,'ansomware','lala@gmail.com','hola','2016-06-13 00:14:01','2016-06-13 00:14:01'),(93,'ansomware','lala@gmail.com','hola','2016-06-13 00:14:47','2016-06-13 00:14:47'),(94,'ansomware','lala@gmail.com','hola','2016-06-13 00:22:59','2016-06-13 00:22:59'),(95,'ansomware','lala@gmail.com','hola','2016-06-13 00:24:43','2016-06-13 00:24:43'),(96,'ansomware','lala@gmail.com','hola','2016-06-13 00:25:21','2016-06-13 00:25:21'),(97,'ansomware','lala@gmail.com','hola','2016-06-13 00:26:18','2016-06-13 00:26:18'),(98,'ansomware','lala@gmail.com','hola','2016-06-13 00:26:44','2016-06-13 00:26:44'),(99,'Florencia','m@gmail.com','Hola! Prueba','2016-06-13 01:14:34','2016-06-13 01:14:34'),(100,'Florencia','m@gmail.com','Hola! Prueba','2016-06-13 01:15:38','2016-06-13 01:15:38'),(101,'Florencia','m@gmail.com','Hola! Prueba','2016-06-13 01:16:34','2016-06-13 01:16:34'),(102,'Florencia','m@gmail.com','Hola! Prueba','2016-06-13 01:16:59','2016-06-13 01:16:59');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-12 21:22:37
