-- MySQL dump 10.13  Distrib 5.6.24, for Win32 (x86)
--
-- Host: mysqlsrv.dcs.bbk.ac.uk    Database: golivi01dbm
-- ------------------------------------------------------
-- Server version	5.6.27-log

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
-- Table structure for table `Album`
--

DROP TABLE IF EXISTS `Album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Album` (
  `ID` varchar(45) NOT NULL,
  `title` varchar(45) NOT NULL,
  `year` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Album`
--

LOCK TABLES `Album` WRITE;
/*!40000 ALTER TABLE `Album` DISABLE KEYS */;
INSERT INTO `Album` VALUES ('a1','Tupac live',1996),('a10','Unforgettable',1969),('a11','Ciao Ciao',2008),('a12','Sundays',2012),('a13','Moonlight',2013),('a2','Queens',1982),('a3','El verano',2010),('a4','Solo tu',2011),('a5','Pop live',2014),('a6','Good night',1999),('a7','Impossible',2001),('a8','Je suis me',2015),('a9','Streets',1973);
/*!40000 ALTER TABLE `Album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Contributes`
--

DROP TABLE IF EXISTS `Contributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Contributes` (
  `contributor` varchar(45) NOT NULL,
  `track` varchar(45) NOT NULL,
  `role` varchar(45) NOT NULL,
  PRIMARY KEY (`track`,`role`,`contributor`),
  KEY `track_idx` (`track`),
  CONSTRAINT `track` FOREIGN KEY (`track`) REFERENCES `Track` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Contributes`
--

LOCK TABLES `Contributes` WRITE;
/*!40000 ALTER TABLE `Contributes` DISABLE KEYS */;
INSERT INTO `Contributes` VALUES ('Eminem','t1','singer'),('Eminem','t1','writer'),('Tupac','t10','singer'),('Tupac','t10','writer'),('Bob Marley','t12','guitarist'),('Bob Marley','t12','singer'),('Bob Marley','t12','writer'),('Zucchero','t17','guitarist'),('Dolores O\'Riordan','t17','singer'),('Zucchero','t17','singer'),('Zucchero','t17','writer'),('John Deacon','t2','guitarist'),('Daddy Yankee','t3','singer'),('Die Anterwood','t5','vocalist'),('Umberto Tozzi','t6','guitarist'),('Umberto Tozzi','t6','singer'),('Don Omar','t7','Dj'),('Drake','t8','singer'),('Drake','t8','writer'),('Dr Dre','t9','Dj'),('Eminem','t9','singer'),('Eminem','t9','writer');
/*!40000 ALTER TABLE `Contributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Track`
--

DROP TABLE IF EXISTS `Track`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Track` (
  `ID` varchar(45) NOT NULL,
  `title` varchar(45) NOT NULL,
  `album` varchar(45) DEFAULT NULL,
  `genre` varchar(45) NOT NULL,
  `playCount` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `album_idx` (`album`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Track`
--

LOCK TABLES `Track` WRITE;
/*!40000 ALTER TABLE `Track` DISABLE KEYS */;
INSERT INTO `Track` VALUES ('t1','Loose yourself','a7','Rap',50),('t10','Staring','a1','Pop',12),('t11','My dear',NULL,'Country',33),('t12','Redemption songs',NULL,'Reggae',114),('t13','My lullaby','a9','Pop',9),('t14','I love dancing','a10','Pop',11),('t15','I want you to stay',NULL,'Rock',8),('t16','My love',NULL,'Pop',55),('t17','Pure Love',NULL,'Pop',102),('t2','Underpressure','a2','Rock',51),('t3','Gasolina','a3','Pop',111),('t4','Hit\'em up','a1','Rap',49),('t5','Ugly boy','a5','Pop',33),('t6','Ti amo','a4','Jazz',36),('t7','Danza Kuduro','a8','Pop',99),('t8','Cell Phone','a6','Pop',515),('t9','Rap God','a7','Rap',29);
/*!40000 ALTER TABLE `Track` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-03-09 11:21:33
