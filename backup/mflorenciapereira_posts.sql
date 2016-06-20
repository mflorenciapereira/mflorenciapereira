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
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `article` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'Cómo evitar que un ransomware cifre los archivos en Windows (I)','2016-06-12 16:10:43',' <p>El ransomware es un tipo de malware que emplea cifrado asimétrico para secuestrar la información de la víctima y solicitar un rescate. El cifrado asimétrico (clave pública) es una técnica criptográfica en la que se utilizan un par de claves para cifrar y descifrar un archivo. El delincuente genera de manera exclusiva el par de claves pública-privada para la víctima y almacena la clave privada para descifrar los archivos en su servidor. La víctima solamente podrá acceder a la clave privada tras el pago de un rescate al agresor, aunque tal y como se ha podido comprobar en campañas recientes de ransomware, esto no siempre sucede así. Sin acceso a la clave privada, resulta prácticamente imposible descifrar los archivos por los que se exige un rescate.</p>\r <h2>Evita el secuestro de tus datos</h2>\r <p>La mayoría de las campañas de ransomware empiezan por un mensaje de correo electrónico de phishing. Con el paso del tiempo, han ganado en sofisticación, y ahora muchas están específica y meticulosamente diseñadas en el idioma local de las víctimas a las que van dirigidas.</p>\r Ejemplos:\r <ul>\r <br>\r <p>CryptoLocker, TorrentLocker, CryptoWall, CTB-Locker, ZeroLocker, TeslaCrypt, el sentido común es nuestro amigo. Correos no suele enviar email para avisarnos de la llegada de una carta certificada, suele ser el cartero quien nos deja un aviso en el buzón de nuestra casa. Si encontramos más de dos faltas gramaticales claras deberíamos empezar a sospechar.</p>\r <p>Pero además al entrar a la supuesta página de Correos veremos en la barra de direcciones del navegador como el dominio no tiene nada que ver con Correos.es aunque en el e-mail y la página web aparezcan los logos de correos. Es un claro ejemplo de phishing (suplantación de identidad). Ya está bien de tomar el pelo a personas con menos conocimientos informáticos que no saben diferenciar entre una página real y una falsa.</p>\r <p>¿Estas seguro del nombre de dominio? Estar seguro de que entran en el dominio correcto verificando el nombre de dominio. Muchas veces los atacantes utilizan nombres similares, que difieren en una letra y lo hacen esperando un error de escritura del usuario, como por ejemplo escribir Facebok en lugar de Facebook o bien utilizan subdominios muy largos.</p>\r <h2>Listado actualizado de Ransomware con sus extensiones</h2>\r A continuación un listado de ransonware conocidos, el tipo de cifrado utilizado y la herramienta de descifrado (si la hay) https://docs.google.com/spreadsheets/d/1TWS238xacAto-fLKh1n5uTsdijWdCEsGIM0Y0Hvmc5g/pubhtml#\r <h2>Consejo básico de seguridad en Windows: Mostrar la extensión real de un archivo</h2>\r <p>Una extensión de nombre de archivo es un conjunto de caracteres que se agregan al final de un nombre de archivo para determinar qué programa debería abrirlo.</p>\r <p>Para abrir Opciones de carpeta, haga clic en el botón Inicio, en Panel de control, en Apariencia y personalización y, por último, en Opciones de carpeta. Haga clic en la ficha Ver y, a continuación, en Configuración avanzada, realice una de las acciones siguientes:</p>\r <p>Para mostrar las extensiones de nombre de archivo, desactive la casilla Ocultar las extensiones de archivo para tipos de archivo conocidos y, a continuación, haga clic en Aceptar.</p>\r <p>Desmarcar Ocultar las extensiones de archivo para tipos de archivo conocidos.</p>\r <ul>\r <h2>¿Cómo evitar o prevenir infección con CryptoWall o CryptoLocker?</h2>\r <ul>');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-12 21:22:38
