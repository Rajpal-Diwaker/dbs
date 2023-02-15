-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	5.7.31-0ubuntu0.18.04.1

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
-- Current Database: `test`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `test` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `test`;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `abc` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mytable`
--

DROP TABLE IF EXISTS `mytable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mytable` (
  `visibleInBrowseMenu` varchar(4) NOT NULL,
  `name` varchar(16) NOT NULL,
  `categories0visibleInBrowseMenu` varchar(5) NOT NULL,
  `categories0name` varchar(22) NOT NULL,
  `categories0id` int(11) NOT NULL,
  `categories1visibleInBrowseMenu` varchar(4) NOT NULL,
  `categories1name` varchar(37) NOT NULL,
  `categories1id` int(11) NOT NULL,
  `categories2visibleInBrowseMenu` varchar(4) NOT NULL,
  `categories2name` varchar(25) NOT NULL,
  `categories2id` int(11) NOT NULL,
  `categories3visibleInBrowseMenu` varchar(4) NOT NULL,
  `categories3name` varchar(23) NOT NULL,
  `categories3id` int(11) NOT NULL,
  `categories4visibleInBrowseMenu` varchar(4) NOT NULL,
  `categories4name` varchar(25) NOT NULL,
  `categories4id` int(11) NOT NULL,
  `categories5visibleInBrowseMenu` varchar(4) NOT NULL,
  `categories5name` varchar(28) NOT NULL,
  `categories5id` int(11) NOT NULL,
  `categories6visibleInBrowseMenu` varchar(4) NOT NULL,
  `categories6name` varchar(22) NOT NULL,
  `categories6id` int(11) NOT NULL,
  `categories7visibleInBrowseMenu` varchar(4) DEFAULT NULL,
  `categories7name` varchar(35) DEFAULT NULL,
  `categories7id` int(11) DEFAULT NULL,
  `categories8visibleInBrowseMenu` varchar(4) DEFAULT NULL,
  `categories8name` varchar(27) DEFAULT NULL,
  `categories8id` int(11) DEFAULT NULL,
  `categories9visibleInBrowseMenu` varchar(4) DEFAULT NULL,
  `categories9name` varchar(35) DEFAULT NULL,
  `categories9id` int(11) DEFAULT NULL,
  `categories10visibleInBrowseMenu` varchar(4) DEFAULT NULL,
  `categories10name` varchar(26) DEFAULT NULL,
  `categories10id` int(11) DEFAULT NULL,
  `categories11visibleInBrowseMenu` varchar(4) DEFAULT NULL,
  `categories11name` varchar(22) DEFAULT NULL,
  `categories11id` int(11) DEFAULT NULL,
  `categories12visibleInBrowseMenu` varchar(4) DEFAULT NULL,
  `categories12name` varchar(19) DEFAULT NULL,
  `categories12id` int(11) DEFAULT NULL,
  `categories13visibleInBrowseMenu` varchar(4) DEFAULT NULL,
  `categories13name` varchar(16) DEFAULT NULL,
  `categories13id` int(11) DEFAULT NULL,
  `categories14visibleInBrowseMenu` varchar(4) DEFAULT NULL,
  `categories14name` varchar(22) DEFAULT NULL,
  `categories14id` int(11) DEFAULT NULL,
  `categories15visibleInBrowseMenu` varchar(4) DEFAULT NULL,
  `categories15name` varchar(26) DEFAULT NULL,
  `categories15id` int(11) DEFAULT NULL,
  `categories16visibleInBrowseMenu` varchar(4) DEFAULT NULL,
  `categories16name` varchar(17) DEFAULT NULL,
  `categories16id` int(11) DEFAULT NULL,
  `categories17visibleInBrowseMenu` varchar(4) DEFAULT NULL,
  `categories17name` varchar(31) DEFAULT NULL,
  `categories17id` int(11) DEFAULT NULL,
  `categories18visibleInBrowseMenu` varchar(4) DEFAULT NULL,
  `categories18name` varchar(23) DEFAULT NULL,
  `categories18id` int(11) DEFAULT NULL,
  `categories19visibleInBrowseMenu` varchar(4) DEFAULT NULL,
  `categories19name` varchar(14) DEFAULT NULL,
  `categories19id` int(11) DEFAULT NULL,
  `categories20visibleInBrowseMenu` varchar(4) DEFAULT NULL,
  `categories20name` varchar(21) DEFAULT NULL,
  `categories20id` int(11) DEFAULT NULL,
  `categories21visibleInBrowseMenu` varchar(4) DEFAULT NULL,
  `categories21name` varchar(28) DEFAULT NULL,
  `categories21id` int(11) DEFAULT NULL,
  `categories22visibleInBrowseMenu` varchar(4) DEFAULT NULL,
  `categories22name` varchar(26) DEFAULT NULL,
  `categories22id` int(11) DEFAULT NULL,
  `categories23visibleInBrowseMenu` varchar(4) DEFAULT NULL,
  `categories23name` varchar(26) DEFAULT NULL,
  `categories23id` int(11) DEFAULT NULL,
  `categories24visibleInBrowseMenu` varchar(4) DEFAULT NULL,
  `categories24name` varchar(20) DEFAULT NULL,
  `categories24id` int(11) DEFAULT NULL,
  `categories25visibleInBrowseMenu` varchar(4) DEFAULT NULL,
  `categories25name` varchar(24) DEFAULT NULL,
  `categories25id` int(11) DEFAULT NULL,
  `categories26visibleInBrowseMenu` varchar(4) DEFAULT NULL,
  `categories26name` varchar(21) DEFAULT NULL,
  `categories26id` int(11) DEFAULT NULL,
  `categories27visibleInBrowseMenu` varchar(4) DEFAULT NULL,
  `categories27name` varchar(26) DEFAULT NULL,
  `categories27id` int(11) DEFAULT NULL,
  `categories28visibleInBrowseMenu` varchar(4) DEFAULT NULL,
  `categories28name` varchar(20) DEFAULT NULL,
  `categories28id` int(11) DEFAULT NULL,
  `categories29visibleInBrowseMenu` varchar(4) DEFAULT NULL,
  `categories29name` varchar(18) DEFAULT NULL,
  `categories29id` int(11) DEFAULT NULL,
  `categories30visibleInBrowseMenu` varchar(4) DEFAULT NULL,
  `categories30name` varchar(15) DEFAULT NULL,
  `categories30id` int(11) DEFAULT NULL,
  `categories31visibleInBrowseMenu` varchar(4) DEFAULT NULL,
  `categories31name` varchar(11) DEFAULT NULL,
  `categories31id` int(11) DEFAULT NULL,
  `categories32visibleInBrowseMenu` varchar(4) DEFAULT NULL,
  `categories32name` varchar(17) DEFAULT NULL,
  `categories32id` int(11) DEFAULT NULL,
  `categories33visibleInBrowseMenu` varchar(4) DEFAULT NULL,
  `categories33name` varchar(29) DEFAULT NULL,
  `categories33id` int(11) DEFAULT NULL,
  `categories34visibleInBrowseMenu` varchar(4) DEFAULT NULL,
  `categories34name` varchar(35) DEFAULT NULL,
  `categories34id` int(11) DEFAULT NULL,
  `categories35visibleInBrowseMenu` varchar(4) DEFAULT NULL,
  `categories35name` varchar(25) DEFAULT NULL,
  `categories35id` int(11) DEFAULT NULL,
  `categories36visibleInBrowseMenu` varchar(4) DEFAULT NULL,
  `categories36name` varchar(27) DEFAULT NULL,
  `categories36id` int(11) DEFAULT NULL,
  `categories37visibleInBrowseMenu` varchar(4) DEFAULT NULL,
  `categories37name` varchar(29) DEFAULT NULL,
  `categories37id` int(11) DEFAULT NULL,
  `categories38visibleInBrowseMenu` varchar(4) DEFAULT NULL,
  `categories38name` varchar(24) DEFAULT NULL,
  `categories38id` int(11) DEFAULT NULL,
  `categories39visibleInBrowseMenu` varchar(4) DEFAULT NULL,
  `categories39name` varchar(26) DEFAULT NULL,
  `categories39id` int(11) DEFAULT NULL,
  `categories40visibleInBrowseMenu` varchar(4) DEFAULT NULL,
  `categories40name` varchar(7) DEFAULT NULL,
  `categories40id` int(11) DEFAULT NULL,
  `categories41visibleInBrowseMenu` varchar(4) DEFAULT NULL,
  `categories41name` varchar(15) DEFAULT NULL,
  `categories41id` int(11) DEFAULT NULL,
  `categories42visibleInBrowseMenu` varchar(4) DEFAULT NULL,
  `categories42name` varchar(7) DEFAULT NULL,
  `categories42id` int(11) DEFAULT NULL,
  `categories43visibleInBrowseMenu` varchar(4) DEFAULT NULL,
  `categories43name` varchar(24) DEFAULT NULL,
  `categories43id` int(11) DEFAULT NULL,
  `categories44visibleInBrowseMenu` varchar(4) DEFAULT NULL,
  `categories44name` varchar(10) DEFAULT NULL,
  `categories44id` int(11) DEFAULT NULL,
  `categories45visibleInBrowseMenu` varchar(4) DEFAULT NULL,
  `categories45name` varchar(15) DEFAULT NULL,
  `categories45id` int(11) DEFAULT NULL,
  `categories46visibleInBrowseMenu` varchar(4) DEFAULT NULL,
  `categories46name` varchar(15) DEFAULT NULL,
  `categories46id` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `categories47visibleInBrowseMenu` varchar(4) DEFAULT NULL,
  `categories47name` varchar(4) DEFAULT NULL,
  `categories47id` int(11) DEFAULT NULL,
  PRIMARY KEY (`visibleInBrowseMenu`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mytable`
--

LOCK TABLES `mytable` WRITE;
/*!40000 ALTER TABLE `mytable` DISABLE KEYS */;
INSERT INTO `mytable` VALUES ('true','Computer Science','true','Android Programming',15,'true','Assembly Language',381,'true','Arduino Programming',16,'true','Artificial Intelligence',17,'true','C Programming',18,'true','C Sharp Programming',19,'true','C++ Programming',20,'true','Computer Certification and Training',21,'true','Computer Graphics',22,'true','Computer Networking',23,'true','Computer Science (General)',24,'true','CSS',26,'true','Databases',27,'true','HTML Programming',28,'true','HTML5 Programming',29,'true','Human-computer Interaction',30,'true','IBM Mainframe',31,'true','Industrial Design',32,'true','Information Technology',33,'true','Intel',34,'true','iOS Programming',35,'true','Java Programming',36,'true','Javascript Programming',37,'true','jQuery Mobile Programming',38,'true','jQuery Programming',39,'true','LISP Programming',40,'true','Machine Learning',41,'true','Wolfram Mathematica',42,'true','MATLAB',43,'true','Microsoft Access',44,'true','MIPS',47,'true','Numpy',49,'true','Perl Programming',50,'true','PHP Programming',51,'true','Processing Programming',52,'true','Python Programming',53,'true','R Programming',54,'true','Ruby Programming',55,'true','SAS',56,'true','Scala Programming',57,'true','SciPy',58,'true','SQL Programming',59,'true','Stata',60,'true','Visual Basic Programming',62,'true','Web Design',63,'true','Web Development',64,'true','XML Programming',65,2,NULL,NULL,NULL);
/*!40000 ALTER TABLE `mytable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `people`
--

DROP TABLE IF EXISTS `people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `people` (
  `age` int(11) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `people`
--

LOCK TABLES `people` WRITE;
/*!40000 ALTER TABLE `people` DISABLE KEYS */;
INSERT INTO `people` VALUES (0,'Sid'),(30,'Josh');
/*!40000 ALTER TABLE `people` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `agecheck` after INSERT ON `people` 
    FOR EACH ROW BEGIN
    IF NEW.age < 0 THEN 
	upDATE people  SET NEW.age = 0; 
    end if;
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `age` int(3) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-04 19:37:50
