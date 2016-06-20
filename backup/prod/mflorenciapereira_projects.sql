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
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `minidescription` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `repository` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `architecture` longtext COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (1,'Eliana Gonzalez Web','Eliana Gonzalez web is a personal website designed for an artist.','-','Eliana Gonzalez web is a personal website designed for an artist. In this sort of websites, having a consistent, striking and neat design is very important.\nThere is a welcome section with a letter written by the artist. There are also sections where she can show her works: portfolio and reel. \nIn the portfolio sections you can find a photo gallery organized by categories. As well as that, there is a reel section which contains a playlist\nfeaturing her videos. Additionally, there is a blog section where Eliana can post news regarding shows and a contact section.','The architecture selected for Eliana Gonzalez Web is MEAN, that is we use MongoDB, Express JS, Angular JS and Node JS. Additionally,\nin order to have a nice ORM I use Mongoose. Bower is also used for dependency management. As stated previously, the design is an important aspect and many animations were added: there is\na sliding bar for navigation menu, there are transitions for sections, portfolio and videos. To implement them I used ngAnimate and \nwe created Angular directives.\nFor the portfolio section I developed a sliding photo gallery and the possibility of grouping images by category.\nFor the database I chose MongoDB since there was not much information to store, but the data is highly structured.\nThe CSS style applied used handwritten fonts as well as a polaroid design for images. There is a nice effect of a polaroid \nimages pile for each category.\nFor the reel section, I adapted the Videoangular library which allows a set of videos to play in a playlist. When a video is\nselected, it is highlighted in the playlist.\nFinally, there is a contact form which uses Angular JS validations to check the input for name, email and message. There is also also\na captcha to prevent bots and automated scripts from accessing the services.\nThe post and get requests are handled by the ngResource library.','img/ssh/eliana-gonzalez-web/main.png','0000-00-00 00:00:00','0000-00-00 00:00:00'),(2,'Sistema Estudio Turner','Sistema Estudio Turner is a website designed for the management of students, professors and fees of a Music Studio.','-','Sistema Estudio Turner is a website designed for the management of students, professors and fees of a Music Studio.\nThere is a CRUD section for Students, Professors, and Classrooms. The application allows users to generate a monthly report\nwhich summarizes the bookkeeping, salaries, budget information.\nIn order to use the system, the user has to login. There different roles which define what a user can and can\'t do.','The application was developed using Ruby on Rails. There are also some additional gems installed which are Searchkick and Device.\r Searchkick is a gem used to query the Elasticsearch server. This sort of search engine is more efficient when a user searchs thousands of students.\r I also added the Device gem to the project to provide access control.\r Sistema Estudio Turner was developed using Acceptance Test Driven Develoment, using RSpec and Factory Girl gems. I used Bootstrap for the frontend.','img/ssh/sistema-estudio-turner/main.png','0000-00-00 00:00:00','0000-00-00 00:00:00'),(3,'mflorenciapereira','mflorenciapereira is my personal website. It was developed to share my knownledge and experience regarding Information Technology, Information Security and hobbies.','-','mflorenciapereira is my personal website. It was developed to share my knownledge and experience regarding Information Technology, Information Security and hobbies.','mflorenciapereira uses Laravel as backend. For the frontend we implemented various Jquery functions for smooth transitions, ','img/ssh/mflorenciapereira/main.png','0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
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
