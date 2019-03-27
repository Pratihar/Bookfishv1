-- MySQL dump 10.13  Distrib 5.7.16, for Linux (x86_64)
--
-- Host: aadqgn9k15s9kh.cwf3btudsw9r.ap-south-1.rds.amazonaws.com    Database: ebdb
-- ------------------------------------------------------
-- Server version	5.7.16-log

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add group',4,'add_group'),(11,'Can change group',4,'change_group'),(12,'Can delete group',4,'delete_group'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (11,'pbkdf2_sha256$30000$BqnPnblBJLPJ$RA2cCD93k9fucTa0YKzrpTFveeHPWz6esd7ubpG8u/k=','2017-03-12 19:11:57.563872',0,'itsamk','','','amol.kankane@gmail.com',0,1,'2017-01-28 09:49:01.952075'),(12,'pbkdf2_sha256$30000$6sWSdPKyQgl8$VNKbyhKFLjGsdphd811wBl26CZARyTFz1gSXwknbVJU=','2017-03-06 18:51:59.349753',0,'dvsaditya','','','dvsaditya@gmail.com',0,1,'2017-01-28 19:17:12.579705'),(15,'pbkdf2_sha256$30000$uoZf8WNgV39t$2oNu/StvUNy2ZVFoWpbc5fOUzMPRymX8WOWrIuF4dpI=','2017-02-07 12:34:25.987451',0,'cryptomanic','','','deepak.yadav.cse14@itbhu.ac.in',0,1,'2017-02-02 19:43:44.934952'),(16,'pbkdf2_sha256$30000$EbmnUiJJTAIO$+G3JsS/RMHYhydBCdriONLw5kpQTfDBB1ZNMn12DoUg=','2017-03-03 07:23:42.807590',0,'VenDeTa','','','digvj7@gmail.com',0,1,'2017-02-02 20:42:10.264622'),(17,'pbkdf2_sha256$30000$JiRPNIbztRsA$FvUSo+09qDhKmwN3ADUbPY4Nw3X1vwpEvduTGxII8UQ=','2017-02-03 07:08:49.419608',0,'Sauravmeena','','','sauravmeena25101996@gmail.com',0,1,'2017-02-03 07:08:36.990399'),(18,'pbkdf2_sha256$30000$Z5SWUznGSFtV$ziRrbyUzRbiGRq/zSXfXFu6BQbNVEIjWlRwwNS4tJho=','2017-03-07 08:23:24.246221',0,'akabhinav32','','','akabhinav32@gmail.com',0,1,'2017-02-03 13:37:46.047229'),(19,'pbkdf2_sha256$30000$QS41IatBZ7e0$RVb6IeZqCGIIt8XWkxeWW2Egt9Qy2sm5jsKZ5TKfFYs=','2017-02-03 15:11:31.132952',0,'dlpartihar','','','dlpartihar@gmail.com',0,1,'2017-02-03 15:10:22.809914'),(20,'pbkdf2_sha256$30000$x6O5BxOn9J5v$UOraPgRv6P28BDZAyiapl24ak/PQ8v3uOSuoYHbJywY=','2017-02-03 16:05:40.794582',0,'shivendra','','','shivendra.kumar.cse14@itbhu.ac.in',0,1,'2017-02-03 16:05:27.838861'),(21,'pbkdf2_sha256$30000$QqMXQQNJ5aqS$qWLwuGoVRPWiV8C2dvqSvEE7YaggrHpUMpNDEg/ZODA=','2017-02-03 17:12:24.922892',0,'skharan1304','','','s.kharan.eee15@itbhu.ac.in',0,1,'2017-02-03 17:12:02.097747'),(22,'pbkdf2_sha256$30000$0AjFwpBCm0Aa$LHFrgueLaTRT5lHg5KhpkmP+dxG7IEAnA3xI+9pcBeU=','2017-02-03 17:16:22.596334',0,'havish','','','eegafalls5@gmail.com',0,1,'2017-02-03 17:14:00.355115'),(31,'pbkdf2_sha256$30000$tcu4IpTm323D$F+He6RJQfQtoqsFejiF0AbINK55Zmln3jHGOaGKt1u4=','2017-03-13 07:11:29.738159',0,'dewanshu','','','dewanshupratihar@gmail.com',0,1,'2017-02-04 22:02:01.043896'),(35,'pbkdf2_sha256$30000$yL5YrZn8OPh4$bW1YLBVRfhN83PF6550sK+WdbsOxp+znXGJUX67q+Y0=','2017-02-07 08:47:54.516836',0,'rajiv','','','rajiv@gmail.com',0,1,'2017-02-05 03:08:10.847773'),(36,'pbkdf2_sha256$30000$RBL7bDJgQu16$jMzo/yoO3xw/CMGMrJrQid1qL9McEw8FbzQ+dHe15Ss=',NULL,0,'anunarayan','','','anushkaset2win@gmail.com',0,1,'2017-02-05 10:48:08.029488'),(37,'pbkdf2_sha256$30000$xkPjA8DSbUCW$OgQirwPTmjY8Nh79mcccnOITtWO2q0t+AEln+0T6vp0=',NULL,0,'Adinawal','','','Adityanawal007@rediffmail.com',0,1,'2017-02-05 10:49:57.346944'),(38,'pbkdf2_sha256$30000$jRHN6nxjHFCJ$/Hdqu+OoQqumFL8G1jnsAjSao/S0pZOL9imEtfdZh+8=','2017-02-05 14:52:05.934378',0,'Aman Jain','','','amanj0586@gmail.com',0,1,'2017-02-05 14:50:52.416708'),(39,'pbkdf2_sha256$30000$S9D1kb5AGpkH$YJEoKPpyVWLDlAaMbWldb8WKsr2NV4ob3Us+eK5Wmpw=','2017-02-05 17:37:51.853068',0,'aman13','','','aman130895@gmail.com',0,1,'2017-02-05 17:37:43.770827'),(40,'pbkdf2_sha256$30000$1QOdOSagp5Mg$x/e+UCilSc41Txtv+NYejLSZ7gPSqdaCv4tw3ByPjFw=','2017-03-02 07:45:00.505203',0,'Adhithyan0320','','','adhithyan.s.mec13@iitbhu.ac.in',0,1,'2017-02-06 05:55:16.229927'),(41,'pbkdf2_sha256$30000$Iu7twM2yr7JJ$6TilxQ+TEwwX/EuEN5E5JkFVIC68kC8nQ9CxD2G3b14=','2017-02-07 06:00:49.237548',0,'phoenix_21','','','arun.kumar.mec13@itbhu.ac.in',0,1,'2017-02-07 05:54:00.789657'),(42,'pbkdf2_sha256$30000$LE1sFS1Ujljh$TTGCZ/1vaTvPQa0dd9idvQkzDiB+9OMQPJY17bzdt9Y=','2017-03-03 13:23:56.730890',0,'amitsheoran','','','amit.sheoran.mec13@itbhu.ac.in',0,1,'2017-02-07 07:50:14.232909'),(43,'pbkdf2_sha256$30000$6lkFUJZkgnr2$0JdBEcH/BhDhOv16TCl/idLh7wAMUREv0DEF9R9PaTU=','2017-02-07 08:08:10.797557',0,'akki0410','','','akash.kakkar.mec13@itbhu.ac.in',0,1,'2017-02-07 08:07:47.026312'),(44,'pbkdf2_sha256$30000$BvrJ0XQ4qd0z$GhRxhExyduV3ufTWjjcXKLTAYcjrSrZUjjemmMX/fJ8=','2017-02-07 08:16:53.617150',0,'fzkhan','','','fufahad.khan.cse14@iitbhu.ac.in',0,1,'2017-02-07 08:16:29.127704'),(45,'pbkdf2_sha256$30000$6KtoNfhD32G4$zevo6kvQgtHYe3J/s7R+ON8Ko6MdZxEJv8eItcvkz/0=','2017-02-07 08:25:24.501763',0,'akash','','','akash.akash.sahu@gmail.com',0,1,'2017-02-07 08:25:09.879400'),(46,'pbkdf2_sha256$30000$wt06TxiYl1OU$HOtXPPQ7vcZQGmR5uS59ZB7YpvFDI2nZBuzB+oe2c9k=','2017-03-03 07:24:46.817199',0,'amitmec13','','','amit.onlines.14@gmail.com',0,1,'2017-02-07 08:31:00.764480'),(47,'pbkdf2_sha256$30000$bXw1k10Vb0TS$Ai326yjHDEemp3jLCPQ8pPQRfkyW1UYdnquLUSJdXCQ=','2017-02-07 09:17:11.265732',0,'animesh972','','','animesh972@gmail.com',0,1,'2017-02-07 09:16:45.066213'),(48,'pbkdf2_sha256$30000$a2tFtGtVuIU4$K5rS8UN4ofh1zD0YGHdF7nYIf1qlKrsWZGZib4csMAw=','2017-02-07 10:11:01.496510',0,'ruchika_modi','','','ruchika.modi.apm13@itbhu.ac.in',0,1,'2017-02-07 10:10:49.800361'),(49,'pbkdf2_sha256$30000$7Rba9ntw8OoV$FjtCb7H/J7Xvr0WWY4M1FEAIMZwpCjcoj5R/hRfmC2I=','2017-03-09 15:03:04.235853',0,'moulikgupta','','','moulik.gupta.mec15@itbhu.ac.in',0,1,'2017-02-07 12:17:15.600827'),(50,'pbkdf2_sha256$30000$gxmPDkimeQGr$e48ZCSBx+SFe+ufN3/q010zwH5k5TNG9IWj1HpbSOc0=','2017-02-07 15:22:55.329204',0,'aviket','','','avinash.kharwar.mec13@itbhu.ac.in',0,1,'2017-02-07 15:22:43.356698'),(51,'pbkdf2_sha256$30000$kcMQyMK0Hvu0$xiJd16jMCXOA/QC4LoknkE+0DePktKqVWpqEpn8h2x8=','2017-02-07 17:42:27.125461',0,'adirobotechno1','','','adirobotechno1@gmail.com',0,1,'2017-02-07 17:42:20.069471'),(52,'pbkdf2_sha256$30000$WenXTieH0TD8$k5GIEB9TfNmNYtK5GcO3GrJ4YYLjtcH30X4N6D/aXiE=',NULL,0,'architagar','','','archit.agarwal.mec13@itbhu.ac.in',0,1,'2017-02-07 17:50:09.562898'),(53,'pbkdf2_sha256$30000$flKx9bJd1uzX$F6mfDifQ1z+rlgH3jd/aPwCrmKoMXBiSfQSe3vfMHTM=','2017-02-07 17:52:30.137928',0,'architagarwal','','','archit.agarwal.mec13@itbhu.ac.in',0,1,'2017-02-07 17:52:22.170239'),(54,'pbkdf2_sha256$30000$zYSoD41kUE1K$hObxqhX3cjageputOX+x/LMIdMP0uIrz7/jAtj+822Q=','2017-03-08 17:22:30.716772',0,'ananya01','','','kashyapananya1998@gmail.com',0,1,'2017-02-07 19:02:42.837623'),(55,'pbkdf2_sha256$30000$Vedib5rbgUdj$/EAeiecmbLXx7F7N1IyuC+dbGNk/wNvlNiEFw5jxAoU=','2017-02-07 19:09:03.816795',0,'ankurtomar','','','ankur.tomar.che13@iitbhu.ac.in',0,1,'2017-02-07 19:08:50.338960'),(56,'pbkdf2_sha256$30000$vFblgoL4WINq$DVku3kPDvCsFKYb0YO+J50sWCj9Lzx1ifs0qOOJZnec=','2017-02-07 19:34:13.533830',0,'hmishra2250','','','hmishra2250@gmail.com',0,1,'2017-02-07 19:34:07.103400'),(57,'pbkdf2_sha256$30000$Kom9A8UbWbyr$7267+msCVti7WhmTHy1L8v8If8ohw1TmXDst0TJ42xk=','2017-02-07 19:41:34.671037',0,'Prakarsh','','','prakarshsaxena31@gmail.com',0,1,'2017-02-07 19:39:48.619234'),(58,'pbkdf2_sha256$30000$e32FSoss9L6I$VBIS111Eb7STWvnzK2o1ZMDP4qw3kDyPyrrg8AaRMis=','2017-02-12 17:33:27.816587',0,'anoop','','','anoopkr.pandey.mec14@itbhu.ac.in',0,1,'2017-02-07 20:21:53.975069'),(59,'pbkdf2_sha256$30000$NZHLIfIg1vvq$g+gt1GBRnqDtTI9Poj3zOkHskTRyBWshRpIQAPIPG3I=','2017-02-07 21:27:38.517951',0,'nitin2142','','','nitin2142@gmail.com',0,1,'2017-02-07 21:27:23.442960'),(60,'pbkdf2_sha256$30000$kpxue8V68TMb$YFc819LNexHdPKdIHc3m8TySljSUpnGqnYaRoMMss88=','2017-02-08 02:46:09.383225',0,'Shyam','','','lshyam96@gmail.com',0,1,'2017-02-08 02:45:55.696254'),(61,'pbkdf2_sha256$30000$IW61xtyerEUX$fTfaxQAOS/z1i2NjU3ZMnfOku3d6AU+q9/XclY1cMv4=','2017-02-28 23:43:03.283686',0,'salted_peanuts','','','surajgupta.iitbhu@gmail.com',0,1,'2017-02-08 09:26:05.343249'),(62,'pbkdf2_sha256$30000$FLU1bSTnuLWi$A3dKyYYrTNJdEXYK23Kmg8bCMx1vwCDCSMuM0JxBumQ=','2017-02-08 15:18:58.650721',0,'gaurav_26','','','gaurav.gkj007@gmail.com',0,1,'2017-02-08 14:40:33.327686'),(63,'pbkdf2_sha256$30000$MGO2YaRHeWSJ$iAs6NjsfszHNizYFUBXqWD0NlCnnOhzLaWLbLRzlhE0=','2017-02-08 16:10:52.314444',0,'Dhwanit','','','dhwanit.ksrivastava.mec13@itbhu.ac.in',0,1,'2017-02-08 16:10:36.505354'),(64,'pbkdf2_sha256$30000$ZQionMUvXaZN$HsZLPmToMtm+IYcyCde4nmCI5kvNDMUCmr0IDH4zMEQ=','2017-02-08 17:10:07.053357',0,'Jude','','','anujpartihar@gmail.com',0,1,'2017-02-08 17:09:51.956409'),(65,'pbkdf2_sha256$30000$w9mQVRrSNjDX$lw1HGGh4kEpj4U2GQ7yeFIH8FUnkq6Q+ylCrXtUpyHs=','2017-02-08 18:05:45.350847',0,'daddy','','','l1823657@mvrht.com',0,1,'2017-02-08 17:21:54.433690'),(66,'pbkdf2_sha256$30000$nDzQq9CxdrWI$mbfGEp197FwB/J43gkB38BBT0CcufCvJhmMq4rrnU3M=','2017-02-08 19:12:08.074906',0,'l1836589@mvrht.com','','','l1836589@mvrht.com',0,1,'2017-02-08 19:11:54.278258'),(67,'pbkdf2_sha256$30000$ipMimGgaudsy$cKYjyNJeA41NQFUTqbYgatAK6meGqN1MtBAAz4vTinI=','2017-02-08 20:50:58.592731',0,'sainiajay532','','','sainiajay532@gmail.com',0,1,'2017-02-08 20:50:41.260371'),(68,'pbkdf2_sha256$30000$32r9yQ3FYyd5$NFdM8nU5qxtkHiB+xhIxcTKxqeyBDOzzXu0d42TY/+Y=','2017-02-09 13:19:13.497792',0,'manjhiboy','','','devesh.manjhi.cse14@itbhu.ac.in',0,1,'2017-02-09 13:19:05.332696'),(69,'pbkdf2_sha256$30000$95Ie1NQGR1UE$uKc5VcqvlJr81l3ILzh+Z6VCscEskO6uBHVTFRTkTL8=','2017-02-09 21:12:19.551457',0,'dhruvgoel','','','goeldhruv26@gmail.com',0,1,'2017-02-09 21:12:12.770253'),(70,'pbkdf2_sha256$30000$H8h3wyHcl4HK$u3B06seJEOs+cDtugo9dFSMqkF1DsmkmjVVa2jkui8w=','2017-02-12 14:31:28.826024',0,'muneeb_ahmed','','','muneeb.ahmed.eee14@iitbhu.ac.in',0,1,'2017-02-12 14:31:19.899972'),(71,'pbkdf2_sha256$30000$Y10IGWpOAbkj$zJ7VlgkgaFUplu1BwQiF/hfIg9J28NRd7ftt4x8pfQQ=','2017-02-28 19:56:31.982867',0,'davehomie','','','yashsdave96@gmail.com',0,1,'2017-02-19 06:17:13.920160'),(72,'pbkdf2_sha256$30000$ppjDlX19D2X9$VlOFvMXUJyQFXbKxRJJPgyes1Spv7HVQ8UB63OSL64U=','2017-02-21 04:47:35.110683',0,'bizzu5252','','','bizzu5252@gmail.com',0,1,'2017-02-20 19:38:47.962078'),(73,'pbkdf2_sha256$30000$RFyaKvHJUCS9$EHB9uDqAEN5KkU8qkXFE99o2mml7tsiuaY4rX+D9ncI=','2017-02-27 13:52:44.306612',0,'khayati_mittal','','','khayati.mittal.ece15@itbhu.ac.in',0,1,'2017-02-27 13:48:24.997470'),(74,'pbkdf2_sha256$30000$evMWBkMGEju1$cEIRGHYszQz4EueR635P/46dNyoY5EZ8PKdiAK6Kea8=','2017-02-27 18:16:55.667182',0,'yoyo','','','l381602@mvrht.com',0,1,'2017-02-27 17:31:05.054287'),(75,'pbkdf2_sha256$30000$GeRRChXFYnoF$BB1H1RBTymGoC61Vun7p04FeXhhHskjD4bs3M5tErzw=','2017-02-28 15:46:18.581750',0,'nprsah','','','abhinav.singla.mec13@itbhu.ac.in',0,1,'2017-02-28 15:46:11.361429'),(76,'pbkdf2_sha256$30000$o0KL6zmU11Vb$dPgN5gbP4TAcrzHcAFONF2wVwkO9z4AsZB02Y744a3U=','2017-02-28 18:22:43.676169',0,'vivek10p14','','','vivek.sourabh.cse14@iitbhu.ac.in',0,1,'2017-02-28 18:22:25.605821'),(77,'pbkdf2_sha256$30000$2vMMetjdo6SP$4x1kShPWjNyhHviAq+omLcWOMrf/3IKTxjeesnSMGhI=','2017-02-28 18:39:41.683673',0,'virrrat','','','virat1011@gmail.com',0,1,'2017-02-28 18:39:01.736250'),(78,'pbkdf2_sha256$30000$C96usodxleQ7$dqAVwCvG+NEidRaJ+Csx7EHuPQBEwDn6EZDcuZdNUIk=','2017-03-01 03:58:57.362028',0,'Chanakyaai','','','anujpartihar@gmail.com',0,1,'2017-03-01 03:58:41.992601'),(79,'pbkdf2_sha256$30000$40YHLGZjBgNU$++loCMJ13WdUurhkMNLALQNPZKXd87PSjNW8chUmsqk=','2017-03-01 06:43:23.255521',0,'jassi_7','','','shivam.jaiswal.mec13@itbhu.ac.in',0,1,'2017-03-01 06:37:33.359976'),(80,'pbkdf2_sha256$30000$VCpOk0dlKKVT$8oVNG340kpYVuQuvbvz1tOWoawLPpr7BA9HEJguplcE=','2017-03-01 07:18:11.827293',0,'dmandowara','','','mandowara002@gmail.com',0,1,'2017-03-01 07:18:04.226362'),(81,'pbkdf2_sha256$30000$t98hHJm0K3Np$EcnJYH04+tsEQgCwy89i256el8ASHYC7TGHMRnfHEg8=','2017-03-01 09:19:03.323566',0,'rchhajed','','','rajat.chhajed22@gmail.com',0,1,'2017-03-01 09:18:51.150011'),(82,'pbkdf2_sha256$30000$UO3r6kFBrBC8$Qis9nnrnFZ57Jt+3ACs9lM2d4xrnxWfrfKLNo8agt2A=','2017-03-02 08:42:47.265964',0,'akashrai688','','','akashrai688@gmail.com',0,1,'2017-03-02 08:42:43.137670'),(83,'pbkdf2_sha256$30000$p5JLHTdzdFTV$ale4y9RbieZcNiMXNxZIwAPkWpsut62lJscYj6je4YY=','2017-03-03 09:29:57.464627',0,'saurav24007','','','saurav24007@gmail.com',0,1,'2017-03-02 13:05:17.628003'),(84,'pbkdf2_sha256$30000$WwRTctZyP3Kl$Ls33fO2qr9qqiBWCGqlutbXRmGfyCJLAkDYgM/ZrzMk=','2017-03-02 15:31:19.868691',0,'Megha','','','meghamajumdar13@gmail.com',0,1,'2017-03-02 15:30:59.411457'),(85,'pbkdf2_sha256$30000$HjtcZxGx6JZ3$wckMTciJ77N8Rl3SSSDWeY2SKu4rtOlc4r9WkJ4TzTM=','2017-03-02 15:44:40.704211',0,'Shambhavi Tiwari','','','tiwarishambhavi61@gmail.com',0,1,'2017-03-02 15:44:06.599993'),(86,'pbkdf2_sha256$30000$eW2fTmccOFZV$YmkdXzEKZJ56+Z+ymAJLqYB9WP2AB8+kamSPNZ9noZk=','2017-03-02 15:54:58.197885',0,'kartikkankane','','','kartikkankane007@gmail.com',0,1,'2017-03-02 15:54:22.101610'),(87,'pbkdf2_sha256$30000$xgYCKDxzlEjF$wlDZLabNY8m+ftsR2uoAj4fbtUslp4RpLGh29sFlnm4=','2017-03-02 19:25:37.691155',0,'Arpita10','','','arpitatripathi10@gmail.com',0,1,'2017-03-02 19:25:04.653548'),(88,'pbkdf2_sha256$30000$5WhOm9co1kQ6$T0d+SEfneG8s4m8JmLzDKP+sqn5gstVc+BJ6/fucDsI=','2017-03-02 19:25:50.924306',0,'saifkhan0401','','','msaif.khan.mec13@itbhu.ac.in',0,1,'2017-03-02 19:25:35.537840'),(89,'pbkdf2_sha256$30000$JFQ45YSqPYqJ$3Em7s7b+R+yFKuc5hOoLTb4nbLfdXEYBa3z9QosUWL8=','2017-03-03 05:46:48.000742',0,'utkagr','','','agrawalutkarsh5@gmail.com',0,1,'2017-03-03 05:46:39.230031'),(90,'pbkdf2_sha256$30000$E7a2JNCnymDN$wtVlZDm8CTnnr0fuxMmXa+Wt89IzMjJ5fLDUrnXtWzs=','2017-03-03 05:59:21.569779',0,'hemanshu95','','','hemanshu.sondhi.cse14@itbhu.ac.in',0,1,'2017-03-03 05:58:50.612580'),(91,'pbkdf2_sha256$30000$6lzjaowQp86U$aioDr8s+P09vN51jcAoGc+7OV5jN2OTpB7cWboK85jc=','2017-03-04 20:31:25.807759',0,'pranshu8292','','','pranshu.kr.cse14@itbhu.ac.in',0,1,'2017-03-03 07:30:08.831838'),(92,'pbkdf2_sha256$30000$7URxNMhbm5Sa$Jz3M9P2Vq10CiPfEz1h3zlv76Wo6go/+n3S9iqgCmp4=','2017-03-03 12:00:38.355134',0,'Indrajeet','','','indrajeet.sahu.mec13@itbhu.ac.in',0,1,'2017-03-03 12:00:19.111125'),(93,'pbkdf2_sha256$30000$Ko07lRxKmrOu$/t+kPI7kXeX0Gu+S4hEkzRxOR7k3Efwxev3b70AfUow=','2017-03-03 15:36:57.640430',0,'divyansh_kc','','','divyanshrkl@gmail.com',0,1,'2017-03-03 15:22:55.539082'),(94,'pbkdf2_sha256$30000$GiX4Vg6lR97H$oGs4mOlnDWD+/iHwqnxri7TW1gJSJwGQ6r5EjLZLJ88=','2017-03-03 15:51:50.585970',0,'RaviSK','','','ravisinghkelwa@gmail.com',0,1,'2017-03-03 15:51:34.477291'),(95,'pbkdf2_sha256$30000$tN2NWg6NroxO$pRSV3801yeO5fjwzf7hJHDM9sGMICe5uk3s034oWibc=','2017-03-05 14:22:42.058348',0,'Naman','','','namanrox@rediffmail.com',0,1,'2017-03-05 14:19:48.515373'),(96,'pbkdf2_sha256$30000$2hhAYSlIjNnb$WKjBAPnUMHjFnxNG9OwvYx1i63ptDElXqRjXgJgZ4No=','2017-03-06 17:33:59.070072',0,'_justanotheroptimist_','','','anushreemishra369@gmail.com',0,1,'2017-03-06 08:18:37.418827'),(100,'pbkdf2_sha256$30000$LwNxBShZ8u2F$+jmmLCg1Ma1q65gdReP0Z3Qs0S+siloIvtJbY63AnUQ=','2017-03-06 20:26:16.264652',0,'Piyush rai','','','coolpkpiyush@gmail.com',0,1,'2017-03-06 20:26:03.909946'),(103,'pbkdf2_sha256$30000$aL3784aCfoFH$Xw96tpSmSike4OQaYrZoY76z3nTCqmjXMDInGh/J3dY=','2017-03-07 05:52:15.070425',0,'tathagat24','','','tathagatverma@iiitdmj.ac.in',0,1,'2017-03-07 05:51:58.155552'),(104,'pbkdf2_sha256$30000$fasL57tLKdQ4$65D6MkrbOxf3q20ZvkAFtL8jPljcYlVVYSScbtRW754=','2017-03-08 15:13:30.527042',0,'Anish','','','anish.kesri00@gmail.com',0,1,'2017-03-08 15:13:19.491794'),(105,'pbkdf2_sha256$30000$qw1RrpHx6Nlh$rL4vH02tE62n912AsQDSSTMMFUzQ/QUzkrYIh/4L4DA=','2017-03-10 13:01:39.010608',0,'avi','','','sidavijit@gmail.com',0,1,'2017-03-10 12:59:30.423986'),(106,'pbkdf2_sha256$30000$rxC7W8ClOrOd$kokv9g3jVuTunv1wNkE4p2L7J2DUaSPvwQBP9i7XIg0=','2017-03-12 15:29:50.578971',0,'Nikkita06','','','singhnikita119@gmail.com',0,1,'2017-03-12 15:29:32.849317');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collection`
--

DROP TABLE IF EXISTS `collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collection` (
  `entryid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `bookid` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `book_cond` int(11) DEFAULT NULL,
  `author` varchar(20) DEFAULT NULL,
  `pages` int(11) DEFAULT NULL,
  `rating` float DEFAULT NULL,
  `img` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`entryid`),
  KEY `fk_collection` (`userid`),
  CONSTRAINT `collection_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user_detail` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collection`
--

LOCK TABLES `collection` WRITE;
/*!40000 ALTER TABLE `collection` DISABLE KEYS */;
INSERT INTO `collection` VALUES (31,16,7201,'As the Crow Flies',20,'Jeffrey Archer',800,4.05,'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),(32,16,1039334,'Santorini',20,'Alistair MacLean',220,3.41,'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),(34,16,11125,'Digital Fortress',5,'Dan Brown',510,3.59,'https://images.gr-assets.com/books/1360095966m/11125.jpg'),(35,18,1122054,'My Life And Work (The Autobiography Of Henry Ford)',1,'Henry Ford',140,4.15,'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),(36,18,94669,'The Mistress of Spices',1,'Chitra Banerjee Diva',338,3.48,'https://images.gr-assets.com/books/1320472892m/94669.jpg'),(37,18,16235,'Sister of My Heart (Anju and Sudha, #1)',1,'Chitra Banerjee Diva',322,3.97,'https://images.gr-assets.com/books/1403188554m/16235.jpg'),(38,18,4671,'The Great Gatsby',1,'F. Scott Fitzgerald',180,3.88,'https://images.gr-assets.com/books/1480580717m/4671.jpg'),(39,18,10098912,'Chanakya\'s Chant',1,'Ashwin Sanghi',448,3.67,'https://images.gr-assets.com/books/1327939570m/10098912.jpg'),(40,18,15733523,'The Krishna Key',1,'Ashwin Sanghi',475,3.46,'https://images.gr-assets.com/books/1341289060m/15733523.jpg'),(41,25,18143977,'All the Light We Cannot See',1,'Anthony Doerr',530,4.31,'https://images.gr-assets.com/books/1451445646m/18143977.jpg'),(43,32,960,'Angels & Demons  (Robert Langdon, #1)',5,'Dan Brown',713,3.85,'https://images.gr-assets.com/books/1303390735m/960.jpg'),(45,34,10225702,'???????? ????  [Meendum Jeeno]',3,'?????? [Sujatha]',328,4.03,'https://images.gr-assets.com/books/1468926935m/10225702.jpg'),(48,34,113934,'The Goal: A Process of Ongoing Improvement',2,'Eliyahu M. Goldratt',0,4,'https://images.gr-assets.com/books/1475538019m/113934.jpg'),(52,34,157385,'It\'s Not Luck',2,'Eliyahu M. Goldratt',283,4.05,'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),(54,34,5107,'The Catcher in the Rye',2,'J.D. Salinger',277,3.79,'https://images.gr-assets.com/books/1398034300m/5107.jpg'),(57,11,1202,'Freakonomics: A Rogue Economist Explores the Hidden Side of Everything (Freakonomics, #1)',0,'Steven D. Levitt',320,3.93,'https://images.gr-assets.com/books/1327909092m/1202.jpg'),(63,35,1202,'Freakonomics: A Rogue Economist Explores the Hidden Side of Everything (Freakonomics, #1)',1,'Steven D. Levitt',320,3.93,'https://images.gr-assets.com/books/1327909092m/1202.jpg'),(64,36,33600,'Shantaram',2,'Gregory David Robert',0,4.26,'https://images.gr-assets.com/books/1333482282m/33600.jpg'),(65,36,7184066,'Fault Lines: How Hidden Fractures Still Threaten the World Economy',0,'Raghuram G. Rajan',260,4.07,'https://images.gr-assets.com/books/1383123119m/7184066.jpg'),(66,36,16008852,'IIM Ahmedabad Business Books: Day to Day Economics',1,'Satish Y. Deodhar',232,4.22,'https://images.gr-assets.com/books/1347689101m/16008852.jpg'),(67,40,18405,'Gone with the Wind',2,'Margaret Mitchell',1037,4.28,'https://images.gr-assets.com/books/1328025229m/18405.jpg'),(68,40,2990950,'Arctic Drift (Dirk Pitt, #20)',3,'Clive Cussler',515,3.88,'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),(69,40,112803,'The Story of My Experiments With Truth',1,'Mahatma Gandhi',560,4.06,'https://images.gr-assets.com/books/1320560971m/112803.jpg'),(70,40,656,'War and Peace',1,'Leo Tolstoy',1392,4.1,'https://images.gr-assets.com/books/1413215930m/656.jpg'),(71,40,10534,'The Art of War',1,'Sun Tzu',273,3.95,'https://images.gr-assets.com/books/1453417993m/10534.jpg'),(72,40,10310,'The Argumentative Indian: Writings on Indian History, Culture and Identity',1,'Amartya Sen',432,3.78,'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),(73,11,968,'The Da Vinci Code (Robert Langdon, #2)',3,'Dan Brown',481,3.78,'https://images.gr-assets.com/books/1303252999m/968.jpg'),(74,15,1533141,'Object-Oriented Programming in C++',2,'Robert Lafore',1012,4.15,'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),(75,44,77203,'The Kite Runner',0,'Khaled Hosseini',391,4.25,'https://images.gr-assets.com/books/1484565687m/77203.jpg'),(76,47,33208134,'Premashram (Hindi)',1,'Munshi Premchand',0,4.8,'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),(77,47,11470675,'I have a Dream',1,'Rashmi Bansal',341,3.66,'https://images.gr-assets.com/books/1328297259m/11470675.jpg'),(78,47,8142431,'Connect The Dots',1,'Rashmi Bansal',305,3.71,'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),(79,52,43877,'The Monk Who Sold His Ferrari: A Fable About Fulfilling Your Dreams & Reaching Your Destiny',1,'Robin S. Sharma',208,3.76,'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),(80,52,20568133,'Many Lives, Many Masters by Brian L. Weiss Lesson Plans',1,'BookRags',0,4.16,'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),(83,57,15750844,'Pax Indica: India and the World of the 21st Century',1,'Shashi Tharoor',449,3.77,'https://images.gr-assets.com/books/1342256957m/15750844.jpg'),(84,57,785454,'Train to Pakistan',1,'Khushwant Singh',0,3.84,'https://images.gr-assets.com/books/1342220976m/785454.jpg'),(89,65,7913305,'The Immortals of Meluha (Shiva Trilogy, #1)',2,'Amish Tripathi',436,3.99,'https://images.gr-assets.com/books/1334659192m/7913305.jpg'),(90,65,12820793,'The Oath of the Vayuputras (Shiva Trilogy, #3)',2,'Amish Tripathi',575,3.64,'https://images.gr-assets.com/books/1357242702m/12820793.jpg'),(91,65,11827808,'The Secret of the Nagas (Shiva Trilogy #2)',2,'Amish Tripathi',396,3.96,'https://images.gr-assets.com/books/1308930273m/11827808.jpg'),(92,66,27834593,'Journey Interrupted: A Family Without a Country in a World at War',1,'Hildegarde Mahoney',304,4,'https://images.gr-assets.com/books/1456332459m/27834593.jpg'),(96,48,968,'The Da Vinci Code (Robert Langdon, #2)',1,'Dan Brown',481,3.78,'https://images.gr-assets.com/books/1303252999m/968.jpg'),(97,48,10695150,'The Secret Letters of the Monk Who Sold His Ferrari',5,'Robin S. Sharma',223,3.95,'https://images.gr-assets.com/books/1342338948m/10695150.jpg'),(98,48,7875327,'Dead Beautiful (Dead Beautiful, #1)',2,'Yvonne Woon',0,3.95,'https://images.gr-assets.com/books/1371459562m/7875327.jpg'),(99,48,596633,'India\'s Struggle for Independence',0,'Bipan Chandra',600,4.02,'https://images.gr-assets.com/books/1355965262m/596633.jpg'),(100,48,54270,'Mein Kampf',2,'Adolf Hitler',384,3.09,'https://images.gr-assets.com/books/1395618385m/54270.jpg'),(101,48,26116175,'Making India Awesome',1,'Chetan Bhagat',0,3.31,'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),(107,75,3228917,'Outliers: The Story of Success',1,'Malcolm Gladwell',309,4.1,'https://images.gr-assets.com/books/1344266315m/3228917.jpg'),(108,12,16334,'The Listerdale Mystery And Eleven Other Stories',1,'Agatha Christie',0,3.57,'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),(109,25,21954251,'51 Anmol Kahaniya',0,'Munshi Premchand',335,4.8,'https://images.gr-assets.com/books/1398015614m/21954251.jpg'),(111,96,300225,'Bloodline',1,'Sidney Sheldon',409,3.78,'https://images.gr-assets.com/books/1298570618m/300225.jpg'),(112,96,20819682,'Adultery',0,'Paulo Coelho',272,3,'https://images.gr-assets.com/books/1406247571m/20819682.jpg'),(113,12,10695150,'The Secret Letters of the Monk Who Sold His Ferrari',1,'Robin S. Sharma',223,3.95,'https://images.gr-assets.com/books/1342338948m/10695150.jpg'),(114,12,17904915,'Chanakya the Kingmaker and the Philosopher',1,'Anu Kumar',177,2.85,'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),(115,110,31557698,'One Indian Girl',6,'Chetan Bhagat',272,3.17,'https://images.gr-assets.com/books/1471605709m/31557698.jpg'),(116,78,6372,'The DaVinci Code: A Quest for Answers',1,'Josh McDowell',120,4,'https://images.gr-assets.com/books/1403744290m/6372.jpg'),(117,117,13112023,'One Breath Away',0,'Heather Gudenkauf',370,3.98,'https://images.gr-assets.com/books/1333763497m/13112023.jpg'),(118,117,1885,'Pride and Prejudice',0,'Jane Austen',279,4.24,'https://images.gr-assets.com/books/1320399351m/1885.jpg'),(119,117,128029,'A Thousand Splendid Suns',0,'Khaled Hosseini',372,4.33,'https://images.gr-assets.com/books/1345958969m/128029.jpg'),(120,117,4004,'The Pilgrimage',1,'Paulo Coelho',226,3.64,'https://images.gr-assets.com/books/1307909268m/4004.jpg'),(121,11,77203,'The Kite Runner',1,'Khaled Hosseini',391,4.25,'https://images.gr-assets.com/books/1484565687m/77203.jpg'),(122,48,9553503,'Angel Fire (Angel, #2)',2,'L.A. Weatherly',720,4.06,'https://images.gr-assets.com/books/1329013097m/9553503.jpg'),(123,48,10314229,'Angel Fever (Angel, #3)',2,'L.A. Weatherly',496,4.13,'https://images.gr-assets.com/books/1364930512m/10314229.jpg'),(124,48,4921,'Three Men in a Boat (Three Men, #1)',4,'Jerome K. Jerome',184,3.91,'https://images.gr-assets.com/books/1392791656m/4921.jpg'),(125,118,960,'Angels & Demons  (Robert Langdon, #1)',5,'Dan Brown',713,3.85,'https://images.gr-assets.com/books/1303390735m/960.jpg'),(126,118,3590,'The Adventures of Sherlock Holmes (Sherlock Holmes, #3)',5,'Arthur Conan Doyle',339,4.29,'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),(127,118,976,'Deception Point',4,'Dan Brown',556,3.66,'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png');
/*!40000 ALTER TABLE `collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(4,'auth','group'),(2,'auth','permission'),(3,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2016-12-02 02:22:09.312829'),(2,'auth','0001_initial','2016-12-02 02:22:18.632241'),(3,'admin','0001_initial','2016-12-02 02:22:20.684156'),(4,'admin','0002_logentry_remove_auto_add','2016-12-02 02:22:20.861478'),(5,'contenttypes','0002_remove_content_type_name','2016-12-02 02:22:22.077529'),(6,'auth','0002_alter_permission_name_max_length','2016-12-02 02:22:22.267730'),(7,'auth','0003_alter_user_email_max_length','2016-12-02 02:22:22.401779'),(8,'auth','0004_alter_user_username_opts','2016-12-02 02:22:22.466617'),(9,'auth','0005_alter_user_last_login_null','2016-12-02 02:22:23.080903'),(10,'auth','0006_require_contenttypes_0002','2016-12-02 02:22:23.125903'),(11,'auth','0007_alter_validators_add_error_messages','2016-12-02 02:22:23.179269'),(12,'auth','0008_alter_user_username_max_length','2016-12-02 02:22:23.582398'),(13,'sessions','0001_initial','2016-12-02 02:22:24.216957');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('02jnldtgyynposdtlx1fvpuf6vov4qrj','YzQzMTNlOTFjYjg2NDg2ODRmNzExOWYzODAwNjk3NDRhN2FkODNkMjp7Il9hdXRoX3VzZXJfaGFzaCI6IjhiYjZmNzJkNzhjZGZkMTM1ZWZkZTdjZDRhMjViYTk1NDA5YTA4MjUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzOCJ9','2017-02-19 14:52:05.948483'),('045os5safssbr8usun3ica44bqapp27n','ZmM2ZDVkMDU4MWE0ZTYzNmVjY2VhM2Y1MTNlNWZhODJiZDA3ZjQwYTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZkMzlmZjM4MDc1NzRhNDAyYTBlNGU2ODM0NzJmNTAwMWE0OTU3MzQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI4NSJ9','2017-03-16 15:44:40.720001'),('0c4s7akmmuoelezisn54mumxe60a9zbf','YTU2MjAzM2Y5MjEyMjIwZWU1ZWRjMWI1YTUyOWFjY2MzNmJjMDgxMTp7Il9hdXRoX3VzZXJfaGFzaCI6ImMyMjQ5NjhhNzU0NmYyNDk0MjZhODQxMDljZWM4OGFmOGYxODczNjYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI4MSJ9','2017-03-15 09:19:03.338798'),('0qhwcsufe6adcqgpc0xqm28h1gpxe21q','YjgzODRiMDQ1MGE1MWE1NDYwNjA3NDAzNjI4NDkwODYyY2Q2OTQ3NDp7Il9hdXRoX3VzZXJfaGFzaCI6ImZmZmMxNjE3OGU1ZDdjYjFiY2YyNjQzZDJhYjAxMGU0MjBlNmQwYjUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI5NiJ9','2017-03-20 17:33:59.086756'),('0vlmnrfu05ci6yfekd7n7y9us8adc0vm','ZjFiMzQ2YTkwNTQyODZmNDRhZmE4YTZlMjJjZGZlNmJlNjU3ZjA5Mzp7Il9hdXRoX3VzZXJfaGFzaCI6ImM4MDE1ZTE0OTBjYTE2OWEwNzJlNWY5YTg3YTcxYTFlYzBmYTYxMGQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxOCJ9','2017-03-21 08:23:24.262733'),('12k5yxeif44082zypcgauw7rb77o4w6y','NjNiYmU0MmI3OTBjMmRlMjM1ZTQ2NTRiNmUxZDkyNGIxZWYwMDEzYTp7Il9hdXRoX3VzZXJfaGFzaCI6Ijk4Mjc5ODQ1N2FkNDI1ZWM4MTQ2YjI1OGZkZjA0NjVlMTMwZjFkNDgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxNiJ9','2017-02-16 20:42:16.822848'),('1hicm1gy36r696i3etal48antv0kails','NzAzYjBmYzE5Mjc5ZWMzZDkxOTA4ODgwMWRiOTEwMDVlMjU0OGQxMzp7Il9hdXRoX3VzZXJfaGFzaCI6IjE5MTliN2E0MGVmMWUwYzkwMGEwYzU4ZTI2YzA1ZjVkMTcxMWI1MTgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI4OSJ9','2017-03-17 05:46:48.015891'),('1t3iv9f418b7t8qsz8h1ufz5beavyplc','ZDI0YTcwNmZkMmU0MDIxOTZhMjYyMGNlYjk1OGRhZWE2MjM5MWM0ZTp7Il9hdXRoX3VzZXJfaGFzaCI6IjNlMDQ5MDdhYmZhZTc2MjFjNWE0YTc3YjNmOTQ3MDA1Yjk5Mzc4MjgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxNyJ9','2017-02-17 07:08:49.436701'),('2lsdn48sfqeykqcpjf1neu3u3cueh83z','NjViOTE4ZDU1N2VkMTQ1YjcxMzI0OTYyZDcyMGM4MjlkMDYzZGVhYzp7Il9hdXRoX3VzZXJfaGFzaCI6ImYzYzk0ODcxYTg4MTE1YjFhY2FiODFkNDVmN2U4YzFmN2ExNTAyNjUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI3NCJ9','2017-03-13 17:53:44.125988'),('2ordzryuccbyi6klupc6dm1nc9hbr03h','ZDJkZTAyM2JmNTUxMWZmYTVjNDNlZmE5NDBjNTZjMWRlMGYyOGE4Nzp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmYjNkN2FjMTYxY2MyOGMxMTQ3MzU2NGVjY2ZiMDZmYWNkNWVhZWQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMSJ9','2017-02-17 17:12:24.937271'),('2vie0mfrnrpi3kyj7gd0sb3lkqzhepkx','MTVkYjA5Mjc0ZTBhZDQ2MTNhMTQyYjkyNjU1Y2ZkZTU0MDVlYThkZTp7Il9hdXRoX3VzZXJfaGFzaCI6IjIxMTdiMjc3ZGM1ZmZjZDlkNjRiYWEzNDAwMmU4NGFlMDQyNzRiNTYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI4MCJ9','2017-03-15 07:18:11.842151'),('3a9nwl87fs9cz6mdwrstj1cb0k40qk9z','YmM1Y2QwN2Q4YjhiOTMwN2Q5ODVmOWNlM2Q2NWVkNmIyODc4MDY1Mjp7Il9hdXRoX3VzZXJfaGFzaCI6IjhmN2FmZTkxYjdlODZmNDYzNDFjZGZjMmU3ZDUyMjVkNGEzNDcwZjciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI4NCJ9','2017-03-16 15:31:19.884690'),('44m9aggoj5ve83o2iw0w6hk6vhdwg88s','ZTNlYjIzMWUxZmNhNWEyYjFjMzk2MDQyYTUzZThiYmQ5MWRjNWI1ZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjEyNWNmOGRmOGE4OGE4MmI3NjA3NTk5NThhMGI2NWE5NWE2MjhiMzEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxNSJ9','2017-02-21 12:34:26.002485'),('4omt60svd8gwttt7kvwqp664g9r4en0x','NjViOTE4ZDU1N2VkMTQ1YjcxMzI0OTYyZDcyMGM4MjlkMDYzZGVhYzp7Il9hdXRoX3VzZXJfaGFzaCI6ImYzYzk0ODcxYTg4MTE1YjFhY2FiODFkNDVmN2U4YzFmN2ExNTAyNjUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI3NCJ9','2017-03-13 17:56:19.910762'),('5ut5pgr7czg8memeetabjxd124ym907q','YjAyNDgxZmVlOGNiYmRkNzRiYzUxMzljZGMyZmM5MzAxZjdhNTdjYzp7Il9hdXRoX3VzZXJfaGFzaCI6IjNiN2IxY2E0YTBlZWIzY2VhMTViNTdjMDEzYjMwYjY0NzQ3ZThlMTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxMSJ9','2017-03-26 19:11:57.580615'),('6ea9rkyi72vl4tdsrjf5nsc4kndususn','NDExOGJkYzg1MTJlNDdkYTgyNDg2OGNjYWVmYjdkYzc1YjY5NWFhNTp7Il9hdXRoX3VzZXJfaGFzaCI6ImE5MWY3Mjc4OTg3NjkyZTNiYWE0NDNjMmFjNmQ2OTYyMmRkMDQ3NTQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMCJ9','2017-02-17 16:05:40.808982'),('7iafibdf6cplmtkj3cst5xj03mzi0vm9','YjAyNDgxZmVlOGNiYmRkNzRiYzUxMzljZGMyZmM5MzAxZjdhNTdjYzp7Il9hdXRoX3VzZXJfaGFzaCI6IjNiN2IxY2E0YTBlZWIzY2VhMTViNTdjMDEzYjMwYjY0NzQ3ZThlMTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxMSJ9','2017-03-22 16:12:25.007383'),('83vnco6h6xufmmec51poxn4woi0siyfw','NjcxM2MwNDg5YTIzNDQxMmI0NWJiMDUyM2FmNDA4NmM0MzgzNTgwMDp7Il9hdXRoX3VzZXJfaGFzaCI6ImU2NjgzZGU5YjI3YWM3NTUwNmUwMzk0NzZlZDVmNDk3MGJkZTgwNDkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI2MCJ9','2017-02-22 02:46:09.398329'),('8qkkoptypn8iwcfop3jhffj6s7s57u1a','ODk4ZTFlNTlkNmJlOTY3YzljMjUzMmIyYThlNzRhYTU0N2VjMTM5Zjp7Il9hdXRoX3VzZXJfaGFzaCI6IjgwNTI4OGE1ZmY4YmQ0NTU5YWZkNjc1ODZiNGMyMzZiMDVjN2Q1MjAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI1MyJ9','2017-02-21 17:52:30.151962'),('9a4laiavmvsk4169g0upf3sj7eisuspv','MmZjM2QwNzU1ZjU2MzgwNmRmYjgyYjdkYzFmZTUwMWM4OWNhOTcwZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjlmYjJiMjE4YjIyNzIyYTgxZDgxYzM4ZTExMWNhNTA2YjlhNTc2ZDYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0OSJ9','2017-02-23 15:22:33.801906'),('9h19uzdhicjr3dem7dyero1hscqwziy1','Y2ZlODhlMmQ2ZjA2YTgzODAwNjIyN2VhNzc5YTdhYTEwZjM2YzlmMzp7Il9hdXRoX3VzZXJfaGFzaCI6ImZiNTAyMTI0N2QzMTI5ODFkNGJhZjUwNjU2YmQ4YmIyOTJlN2I5MDAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxMiJ9','2017-02-11 19:17:35.355811'),('9n3eususqzqsih6ux8hgbb0fpym7b2ft','YWQwYjc5MzVjZGNjZjE2NDk2ZjA2NWNhOTEyYmM1MzQyZGY4ODc1NTp7Il9hdXRoX3VzZXJfaGFzaCI6IjEyZTIwZjgyZTYyYjNiODU0NmI2NTljZGFkMWI5YTRlNzlkYWJhYjAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxMDMifQ==','2017-03-21 05:52:15.085277'),('ae3yl2kcsdzoxh7szmhngl58ca95es1t','YjAyNDgxZmVlOGNiYmRkNzRiYzUxMzljZGMyZmM5MzAxZjdhNTdjYzp7Il9hdXRoX3VzZXJfaGFzaCI6IjNiN2IxY2E0YTBlZWIzY2VhMTViNTdjMDEzYjMwYjY0NzQ3ZThlMTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxMSJ9','2017-02-23 20:05:12.252192'),('bdm0zag46ob4d4cbi4t8rctal3o16z7d','MDA2ODIyMGJhNDU2MDk5ZDY4ZWI5NGE4NjE3MGQ1ZmRlOGYxZTA1MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImYyYTNjZjUwMzNmZWIxMmNhN2UwYjMyY2RlM2FiZjZlYTdjMzljMmEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI2MiJ9','2017-02-22 14:42:24.211804'),('c2t3mviuuk5qa56tgd49mwv6dsznyp1i','MTdhZTdiNGYzNDhhNzVhZmI4NzA3ODAwODI3YjM5NDdhODZhODNmOTp7Il9hdXRoX3VzZXJfaGFzaCI6IjdkNTUzNGU2ZTVkOTAwZDM5OTAwNDliMzE5MDYzYjRjZTllZWQ2YzEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzOSJ9','2017-02-19 17:37:51.871585'),('c40b3begxp7rw87g6khw246jbd616smr','Zjc4MDRmNTM0ZmJkM2RmYzBhMGM2ODkxMGZjZTgzN2YxOGMzZjkwYzp7Il9hdXRoX3VzZXJfaGFzaCI6ImRhYzZjY2JhZjQwOWM1ODRmNTA5ZDEwODAwMzdkNGNjYTc2OTE0ZDkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI1MSJ9','2017-02-21 17:42:27.139967'),('canzv216fejhi9f9jr4qszaixpuytgqu','MWUwNmIwMDUxOWNjY2I3NTAwNGFkM2QxOTJhYzk5ZDQzYzk2Yjc2Yjp7Il9hdXRoX3VzZXJfaGFzaCI6ImZkOTA1MmVkODNjMGY0NTc0N2JmMzk2N2U3ZDQ2MjI4NjY0OGE0YjciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI3OCJ9','2017-03-15 03:58:57.380162'),('coihkz1pgn207b3ok0kaignnq5mtrny1','NjNiYmU0MmI3OTBjMmRlMjM1ZTQ2NTRiNmUxZDkyNGIxZWYwMDEzYTp7Il9hdXRoX3VzZXJfaGFzaCI6Ijk4Mjc5ODQ1N2FkNDI1ZWM4MTQ2YjI1OGZkZjA0NjVlMTMwZjFkNDgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxNiJ9','2017-03-15 05:49:19.974759'),('cyqvmliq6ouv5bey8aiy7tpm1ik2w88h','OGQwOGE4OTkxM2FhY2U1MzVkNWM2OTdhNGFlOWE4MjJiYWQ4MjlmMDp7Il9hdXRoX3VzZXJfaGFzaCI6ImVmY2ExZmFhMjBkODc1YTk0YzMxZjg3OWI4MmM5NzQ3NjQ3YjMyYTEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI2MyJ9','2017-02-22 16:10:52.329243'),('e3oonuzix84f67ga13b8y4t6cj6hxzns','YmViZDE4OWU4NWExMTliNjAwY2MyMjg5NzkwYThhMGJjNTYyOWUyZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjhjZDRhYzRhMzQ3YzY5ZmM4NGU1ODNmMzY2ZmQ0MTc2NTAxNjFiOGEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI5NSJ9','2017-03-19 14:22:42.075025'),('eqak5g36kjilw8z9xrao0xiemtmmftb1','ZDM3MGQ0NTU4YzczYTBkNTcwYzgzOTMxZGU4ZjRhOTVkMmNlOTQyYTp7Il9hdXRoX3VzZXJfaGFzaCI6IjJkYWRjNGYyYWQ5ZGFiMjE1NWIxOGRlNWViMjdiZmE4YmJlNGQ4YWMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI5NCJ9','2017-03-17 15:51:50.600316'),('eyf2vzj9qfqw0lbczwrc5dznoujqbmbu','ZWZhZWZmZDY2MWFmYTVmZDIxOTNkZGJiNWEwNDk4ZGZmNzc4ZDQ4Mzp7Il9hdXRoX3VzZXJfaGFzaCI6IjE2NmFjOTI4NGVlZjIxZmU0OWJkZjBjYzU1OTlkNDcyYzc3YWFhMjUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI2MSJ9','2017-03-14 23:43:03.298481'),('fz7fi6pr5jn2dfjke38t6niavzaee31u','NjNiYmU0MmI3OTBjMmRlMjM1ZTQ2NTRiNmUxZDkyNGIxZWYwMDEzYTp7Il9hdXRoX3VzZXJfaGFzaCI6Ijk4Mjc5ODQ1N2FkNDI1ZWM4MTQ2YjI1OGZkZjA0NjVlMTMwZjFkNDgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxNiJ9','2017-03-17 07:23:42.825257'),('gtw6i1szyl0qpxqm3xl7oi199gvopox7','MTcwZTQ0ZTYzZmExZDlhMmZmOWUxZGMyOTY0ZTQ0Njc0OGViMTJlMzp7Il9hdXRoX3VzZXJfaGFzaCI6ImM2NDQ2ZTg5N2QzMmI2NmI5YjRjMjJkN2FhYmM1YTYxOTUxZTQ2NDYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0MCJ9','2017-03-16 07:45:00.521820'),('hm4l9ufs7ksb28g6ql79u9gab5le7v9r','Y2E5ZjYxMDgyMzAzMmE4N2ZiMjJkNGQ5MDc1ODkxMTMzOGQxZDU0ZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjUyY2YzZmRlNzA5MjYzNzFmN2RhNWFlNWVlNjVhMjlkMjNlZTZlMGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxMDUifQ==','2017-03-24 13:01:39.025146'),('hvvmsn7p6dcppe4lkszpsim6guhmkp04','YjAwNGIzMjQ4NjUzM2MyNGM3YjE0MzJmZTY0N2E2MDA5NTg5YTJjODp7Il9hdXRoX3VzZXJfaGFzaCI6IjEwMDRhNTBlYzkxMTdmM2Q5ZjFiOTgwNzRjZTJhYjM2Nzk5MGUyNjQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0NSJ9','2017-02-21 08:25:24.516632'),('ig3laeh6pv5irit335ci6ron3w5e8b1y','OGM3ODRjMjlhNGE4N2IzYTgzMzAwZjIzZjVmZjVlNWU5ZWJhOWE4Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImJmMGY2M2VlZjQ5ZDljYmUzZTliMDNhZDA0MzVjY2EzNjgwZWE3ZDEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI2OSJ9','2017-02-23 21:12:19.566085'),('ijyz5raxao8xpegc8o7ah52ticb82ijz','Y2ZlODhlMmQ2ZjA2YTgzODAwNjIyN2VhNzc5YTdhYTEwZjM2YzlmMzp7Il9hdXRoX3VzZXJfaGFzaCI6ImZiNTAyMTI0N2QzMTI5ODFkNGJhZjUwNjU2YmQ4YmIyOTJlN2I5MDAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxMiJ9','2017-03-20 18:51:59.365459'),('iox6xy4oieg0uzu0otnjp5eky4tf73gb','ZjljZTliZDc3ZGJjZDMwMDNjMGRiN2E1OTJjNDdjZThjNmI3ZmUxZjp7Il9hdXRoX3VzZXJfaGFzaCI6IjEzNDk0OTUyZGQwY2UwOWY4ZDI2NjRlMmQ1MWE2ZTYyNjg5NGI3NjAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0NiJ9','2017-02-21 08:31:11.884583'),('jvbfl2kg9su75kczxsmi7io3fb4i24c8','ZDMwZTBhMGQ3MWI1OTI5NjgzYjk0ZjA2ZDI4ZmU2NTc0ZjM0MzM1ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI5NmU0ZWY5ZDNjZWMxMTQwYTM2NDIxOTJiZmY1MTNmY2NiMDBlYjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0MiJ9','2017-03-17 13:23:56.746824'),('kxk762u1iv8vye0b23284biabdf4ttri','NjViOTE4ZDU1N2VkMTQ1YjcxMzI0OTYyZDcyMGM4MjlkMDYzZGVhYzp7Il9hdXRoX3VzZXJfaGFzaCI6ImYzYzk0ODcxYTg4MTE1YjFhY2FiODFkNDVmN2U4YzFmN2ExNTAyNjUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI3NCJ9','2017-03-13 17:44:44.618595'),('l5w0yzei1f3tjfblnvyuymuucdigvwf1','YjdlMjhjMmYxYmVjZmMyZWI3OTNhNzM1NWM2NTU2ODdiMDk3YzdjODp7Il9hdXRoX3VzZXJfaGFzaCI6Ijc1YjkyOWI0YTA5ZDQzNTRiMTQ0YWY1N2YzMjJjNGViNmQ2MGViYTIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxOSJ9','2017-02-17 15:11:31.148227'),('l644a7xoqmj1s65jkj8a9sd9mto6hmg1','YjAyNDgxZmVlOGNiYmRkNzRiYzUxMzljZGMyZmM5MzAxZjdhNTdjYzp7Il9hdXRoX3VzZXJfaGFzaCI6IjNiN2IxY2E0YTBlZWIzY2VhMTViNTdjMDEzYjMwYjY0NzQ3ZThlMTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxMSJ9','2017-03-18 09:42:53.345265'),('lbsyf786ng5obvjaz5nlnaml86pfiqk2','Y2M1ZDEzMWRhZTE2YzNmYmZkODEwNmM0MDdlNTJmNzgzZjg5NGMzYTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZkNmRjNzlkNjNlOTI0MjQyYjQ1ZTI0YmM4M2I0YWVjMTg1Nzc5ZmQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI3MyJ9','2017-03-13 13:52:44.328374'),('lopmb8dl8wtsh6mxfz3t87ipkjz6efsd','N2YxMDkwMzc1ZjI3Yjc2YzQ2NWZjZjM0YzE5NTdjZjY4YzQ1YjJiZjp7Il9hdXRoX3VzZXJfaGFzaCI6ImRiN2RhYjg0NWUyMGMwZGU3ZTUxN2UzNThjYmMzOGY0M2E2NDc3ODUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI2NiJ9','2017-02-22 19:12:08.091560'),('lsh4rqdjczj0ndauwb8juzfxgu0b0hzi','YmUwOGM5ZDkwYTcwMTVhZWZhMjA3ZWVjMDkxZDkxMzE5NTYyZTQ0Nzp7fQ==','2017-02-18 05:23:05.133004'),('m5tjcr3374859jlm9y3vowudmz7hgrxh','ZjFiMzQ2YTkwNTQyODZmNDRhZmE4YTZlMjJjZGZlNmJlNjU3ZjA5Mzp7Il9hdXRoX3VzZXJfaGFzaCI6ImM4MDE1ZTE0OTBjYTE2OWEwNzJlNWY5YTg3YTcxYTFlYzBmYTYxMGQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxOCJ9','2017-02-17 13:38:02.459913'),('mhqhcvjn9jnjkv2qrhsn0d149k7964i8','YmUwOGM5ZDkwYTcwMTVhZWZhMjA3ZWVjMDkxZDkxMzE5NTYyZTQ0Nzp7fQ==','2017-02-18 17:19:43.424945'),('my85lrfze0zdv7xjadrqrat1xquwr5gp','NjViOTE4ZDU1N2VkMTQ1YjcxMzI0OTYyZDcyMGM4MjlkMDYzZGVhYzp7Il9hdXRoX3VzZXJfaGFzaCI6ImYzYzk0ODcxYTg4MTE1YjFhY2FiODFkNDVmN2U4YzFmN2ExNTAyNjUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI3NCJ9','2017-03-13 17:45:22.737166'),('n2854zuv2kdwm1qy37o3uq84fgsafc08','ZWUwZmVhYzc1MmNiYzdiZDc2ZDljNDhiZjE4OGQ2OGVlNWU0ZDM3YTp7Il9hdXRoX3VzZXJfaGFzaCI6ImUwMDFmYWFlNjIxMjUyZjk5NmIwY2NiZGVmOWM4N2M0NGNhY2VhMTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0MyJ9','2017-02-21 08:08:10.812991'),('n6hm0vu6zsu40popv9jcy82741mkj9b3','MzI5ZTc0MzM5M2FkNGViZWFjZjZiNTYwYWZiNWVjZDU2OTcwNDQ1ODp7Il9hdXRoX3VzZXJfaGFzaCI6ImU2YTQwMGY5MjAwN2RkMDNhYTk4OTZkZTgxZTZkMTg2YmJmNmQ1YWEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI4NyJ9','2017-03-16 19:25:37.707953'),('nfekylbv03fpa51k81ccv7pjnjv1iigt','ODNjYzBjNTIyODI1NTkxODYyNzM2NWVhODVkNmRjMTcwMTRlYzQ5YTp7Il9hdXRoX3VzZXJfaGFzaCI6IjQwMjA4ODhjZmYwOWFhZGE4ZmRjMjgyYTZkOTk0MGU1MTFmY2U1NzIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxMDQifQ==','2017-03-22 15:13:24.018465'),('nmggvl3f54a4famvygld7kjv0orltxez','NjViOTE4ZDU1N2VkMTQ1YjcxMzI0OTYyZDcyMGM4MjlkMDYzZGVhYzp7Il9hdXRoX3VzZXJfaGFzaCI6ImYzYzk0ODcxYTg4MTE1YjFhY2FiODFkNDVmN2U4YzFmN2ExNTAyNjUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI3NCJ9','2017-03-13 17:48:52.756900'),('o9ekekhwmqcs3tsnwil7p397l8zp0yv1','ZDE2NDU1N2EzN2E0OWYyOWJjYmE2ZTNlODJiMDkzYTI1NDM1NWI0MDp7Il9hdXRoX3VzZXJfaGFzaCI6IjAzMTVkOTRmZWUwMWViMWZhNWEyMjg4ZjllMmVlYjIxM2VmZjk4ZTIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI3MCJ9','2017-02-26 14:31:28.845846'),('ohof14fnwaify5hkpexh5ocghjifrs1q','YmRmMzY4Mzk0NmMxN2ZjYTllZmEwMzMyNjA1NzdkN2JmMjQ3ZjIyYjp7Il9hdXRoX3VzZXJfaGFzaCI6IjViYjgxNjAyNzY5MjZjN2M1ZjA4ODAyZGQzZjk3MjlhOThhZDEzYmMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI4MyJ9','2017-03-17 09:29:57.482635'),('oso1bj0ksmj0bbru1vvrv9xn55pqnxxx','NzllOGI5MmVkMzQ1Y2NiN2EwZWFlZmJkNjJhZGZjNmQxODEwM2U3ZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImIyNDI4NzgyZGZjZDNkZWMyZWFjMDA0OGRkZjQ0N2IyYmIyMDhjOTgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI3NSJ9','2017-03-14 15:46:18.598715'),('p1uhnnv3x0zrywlztxc02891ds3x515o','MmZjM2QwNzU1ZjU2MzgwNmRmYjgyYjdkYzFmZTUwMWM4OWNhOTcwZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjlmYjJiMjE4YjIyNzIyYTgxZDgxYzM4ZTExMWNhNTA2YjlhNTc2ZDYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0OSJ9','2017-03-19 06:57:59.406292'),('p7w4j8y5kb9mnite34wwb7301rq5emky','YTJhYTQyZTRmZTkxODk4ZTExYzBhMzIyM2YyMDRkYTUxY2QzZTdmZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjBlYmUyNTZlYzg1MDI2NGI4ODVkYjFjYTQ3ODNjN2MwMmZmYzYxZjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI1NCJ9','2017-02-21 19:03:09.292587'),('pllcqnlj1b8nvidckeuahecslwr3ntqh','ZDVkZjdhYzUxZDJlNDk3NTI1ZjU1YTI1ZGIwYzVlYTQ0Yzc1OWQwMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjNjNzNlMGU0YmQ3M2ZmNjNjMjNhZGRhYWUwZTZlYTM3ZmY5MTRhMDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI3OSJ9','2017-03-15 06:43:23.273328'),('qjdtg2lvun9nayjsleugtg1xeqprxgfr','MmZjM2QwNzU1ZjU2MzgwNmRmYjgyYjdkYzFmZTUwMWM4OWNhOTcwZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjlmYjJiMjE4YjIyNzIyYTgxZDgxYzM4ZTExMWNhNTA2YjlhNTc2ZDYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0OSJ9','2017-03-23 15:03:04.254644'),('qjg8q7lumww34xfarooujiansmh373n1','Y2M5M2Y5ZGQ0NmRiNjJiMDNmZmNiMGM3NzgzOThlZDQxODVmODM4Yjp7Il9hdXRoX3VzZXJfaGFzaCI6ImIzODBjMWYwYTBhOGI0MzdiOGIwNGRmYmFiNDI2MDk0Mjc1ZjE5ZmQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI1NiJ9','2017-02-21 19:34:13.549270'),('qrggaspmznnz04c6xkay2ey7gp7r9dus','MjQ1OWZiYTRjZGVmNzRjMTUxMTg3N2JjYzkxMTk2YmRmZGRiMGE0Mjp7Il9hdXRoX3VzZXJfaGFzaCI6IjE5YmY1NmVhMDc1ZDA4ZjdjMjhiY2IzYTUxMDAwYTI2OGQxZGE2MDEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI2NSJ9','2017-02-22 18:05:45.365792'),('qsv5py96usk1gko5cipr642f5tz8lscm','MjQ1OWZiYTRjZGVmNzRjMTUxMTg3N2JjYzkxMTk2YmRmZGRiMGE0Mjp7Il9hdXRoX3VzZXJfaGFzaCI6IjE5YmY1NmVhMDc1ZDA4ZjdjMjhiY2IzYTUxMDAwYTI2OGQxZGE2MDEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI2NSJ9','2017-02-22 17:22:31.793804'),('qy5pwd8sd78u9yl9veenrqfr3kqbqvox','NjZiZmFhMTVlNGRiNDk5ZDBjYzA2YWM1OWU2MzUxNjVlZjA2NGI2Yzp7Il9hdXRoX3VzZXJfaGFzaCI6IjFhNDhkNTE5ZjQ2NTk4YzEwODJjYjEzNDdkMWE0YzcxMGU2Nzc4YTMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI4MiJ9','2017-03-16 08:42:47.286083'),('r0i7719uegx8mm3zxtamgtsyjp7cfqx8','ZDEzNjE5M2ZhNzUwOWQ1Mzc4ZDIwNDMzM2JkYjg5ODNhZTQ5MTk1YTp7Il9hdXRoX3VzZXJfaGFzaCI6IjIxZDc5YThiZWY4YTA5ZGEwZmU4MWRjZWE3ODNlNGI3Mjc2MmE2MTYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI5MiJ9','2017-03-17 12:00:38.370363'),('r8iov35fwn7iekogj0r0dkfoy1uiu5of','ZmYzMDY0YjgwZGZkYmFlZjk0NTRhZTgwODBiYjQ5YmQzMTc5NmQ2YTp7Il9hdXRoX3VzZXJfaGFzaCI6ImRmM2YxOWE4NDFmYmFmNDg1ODczMzcyNzY1OTQ0OWE4MzVmZTU1YTgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI2OCJ9','2017-02-23 13:19:13.513182'),('rlsyjy85ulk4dgliypkweme0nemrn17g','ZDMwZTBhMGQ3MWI1OTI5NjgzYjk0ZjA2ZDI4ZmU2NTc0ZjM0MzM1ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI5NmU0ZWY5ZDNjZWMxMTQwYTM2NDIxOTJiZmY1MTNmY2NiMDBlYjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0MiJ9','2017-02-21 07:50:23.220621'),('rpc92viv44knbstkj4yis93ir91h56gn','YzZhNjdmN2ZhZjc3MzU2NTExZWVhZDliZmZmNmZiNWI4MTE0Yjk2YTp7Il9hdXRoX3VzZXJfaGFzaCI6Ijg3OWM5NjM3Yjk5ZmEyZGFkY2MyOWRmMzM4NmZiYmMyYzliMmYxODAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxMDAifQ==','2017-03-20 20:26:16.280432'),('rqzizd38n200p7x5r7lejual8hwzsosn','MDdiOTBhN2U5MTYxMTUwNDg2ZWY0NzljZjQ2NDY3ZjgyOTlhMGYzNTp7Il9hdXRoX3VzZXJfaGFzaCI6IjRmNWNjNzc4NjAzNDMzNGYxMDFkMmJhNzRkODIzZWUxNDgxOWYyNGIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzMSJ9','2017-03-27 07:11:29.754420'),('su76egku7ymlollk1gj0vv1f4tzjl7m2','MTcwZTQ0ZTYzZmExZDlhMmZmOWUxZGMyOTY0ZTQ0Njc0OGViMTJlMzp7Il9hdXRoX3VzZXJfaGFzaCI6ImM2NDQ2ZTg5N2QzMmI2NmI5YjRjMjJkN2FhYmM1YTYxOTUxZTQ2NDYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0MCJ9','2017-02-20 05:55:22.655448'),('ttvxx6luq3oqcc389a946grgj3u4ftmm','NDkxZTgyNjQ3OTM2ODc3Y2JlOWU2NDMwYWNlZTQ4MDRiOTFkNGZkZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjdmZGRmMmUzNThkNmE5NTY5YzlmMmNkMTE2ZWEwNWRiNjlmNzhiY2YiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0MSJ9','2017-02-21 06:00:49.255894'),('u41ql3ounx4rbu1ao3625x9rhvveel4u','ZjljZTliZDc3ZGJjZDMwMDNjMGRiN2E1OTJjNDdjZThjNmI3ZmUxZjp7Il9hdXRoX3VzZXJfaGFzaCI6IjEzNDk0OTUyZGQwY2UwOWY4ZDI2NjRlMmQ1MWE2ZTYyNjg5NGI3NjAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0NiJ9','2017-03-17 07:24:46.833117'),('ur4opzg029qv55oor34pche5kycbuub4','NTU5Y2Y2NmI5OTcyMmRmMDg4OWUxZTMxNDY4ZGY0MTRhZWI1NmFiOTp7Il9hdXRoX3VzZXJfaGFzaCI6Ijc1NGYzOTJlODFmMzBiODYzMDdlMThiNzI3NTY4NDU5Y2NmYjNiYzYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI1OCJ9','2017-02-26 17:33:27.841133'),('vqm3vb3ngv7qqi4pqe77zlc1mvnvmvcj','Yjk4YWMwZGJiMWNhODllNjBhZTcxOGVmYmI3YWE2OTQwMThkODVjMjp7Il9hdXRoX3VzZXJfaGFzaCI6IjAxOTZmNDc0NjU5ZjVhN2FiZGNhMWExODdjY2IxODJiMTQ5MTExODEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0NyJ9','2017-02-21 09:17:11.279827'),('vxhsp9yxvbqm1acpwryaxwpn2b6a7ktj','NjViOTE4ZDU1N2VkMTQ1YjcxMzI0OTYyZDcyMGM4MjlkMDYzZGVhYzp7Il9hdXRoX3VzZXJfaGFzaCI6ImYzYzk0ODcxYTg4MTE1YjFhY2FiODFkNDVmN2U4YzFmN2ExNTAyNjUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI3NCJ9','2017-03-13 18:16:55.682750'),('w3vaf73bmyahnzgnspqwdb2h8yaew2rt','MjFjZGEwODI4ZGY1NDZjZDk0Mzk2N2MzY2ZjYWZjNzFjMDM5MmEzZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjI4YzkzYWYwMzk3OTlkYzBkY2I2NWY1ZWZiOWI5MDBmOTdlOTIxN2UiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI4NiJ9','2017-03-16 15:54:58.215926'),('wdkgtn3o9l7ces7ut1vb9okwra2nljq9','M2Y0N2Y3YjE5YjA5MjEzNzllOTQ5OGRmZDRhZjlmODI2MGM5YzFkNDp7Il9hdXRoX3VzZXJfaGFzaCI6IjU1ODM3YzBjMWRlZjhlZWY3NjgwYTcwZjg1NjJmZjgyOTlkZDE4ZmIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI1NyJ9','2017-02-21 19:41:34.685478'),('wwx47stvzj9ss1atgfpviomh9b4i8n2o','ZTA4YWZiMjNiMWFjZWZlNjJjYzcxZGRlYWQwYTkyOTM0ZjVhMzg3MTp7Il9hdXRoX3VzZXJfaGFzaCI6ImViMjY3NzZlOTk1ZDlhZWM5YWIxNGM0MWYzZTc0NzE3ZDJlNDA2MWIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI1NSJ9','2017-02-21 19:09:03.861062'),('x38n6f61f066kjmuzc9r7vvk4i530zbr','MjQ2ZDVkOGI1MzE1ZjM0MzY0YjNjMTc4YjkyODBmYjY5MDVhZWI4Njp7Il9hdXRoX3VzZXJfaGFzaCI6IjVhMTJkZmM5OTAwMWQxYWUzM2Q2MzI4MGI3MjA0YWU0NDZkNWMwNjciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI4OCJ9','2017-03-16 19:25:50.939165'),('xspnqisaoaojdblhemj3entmg5o1qljb','MDNkNjQ5MDM2NWU5M2MyMDI0ZjI4ZTAxMGZkOTA2OTljYzI0ZTdlYjp7Il9hdXRoX3VzZXJfaGFzaCI6IjFkNWNlMjBjZWE5ZGJkM2VhNjM2YjY3ZjExNjRjZDgwZjIyMGIwNWQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI1OSJ9','2017-02-21 21:27:38.532287'),('ya6hb7iypxf9qeqdmckw2s8i552tbqlo','OTYzMDMwZjAwMDFjYjUwOTMyNDU5MWQyNGI2MmNiNjQyNDQzMmFhNjp7Il9hdXRoX3VzZXJfaGFzaCI6ImQzN2E1NzU1YmQyODEwZjhhZjQyNjg5MmZhMWU0ODVmNDYzZmRlYmQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxMDYifQ==','2017-03-26 15:29:50.661669'),('z2bs3kev2tkkq5g9rxuow507ojy54q08','YjAyNDgxZmVlOGNiYmRkNzRiYzUxMzljZGMyZmM5MzAxZjdhNTdjYzp7Il9hdXRoX3VzZXJfaGFzaCI6IjNiN2IxY2E0YTBlZWIzY2VhMTViNTdjMDEzYjMwYjY0NzQ3ZThlMTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxMSJ9','2017-02-11 09:50:41.827603'),('z6tkaz0fcqdw0we9nw3uuaaz550y4ml4','M2RlOTYxNDk2MmU0N2E5MDExN2EyMDgzMjAzNWQ3N2JiOWU4YjllYzp7Il9hdXRoX3VzZXJfaGFzaCI6IjY2NjQ0NjJmZTE5NWRiNmMyMmIyMTU5YWQ2ZWNjZTJlN2JkZjkwZDEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI1MCJ9','2017-02-21 15:22:55.345927'),('z9uvvqjm505r8u6uhagvlyo7prl41ti1','MmM2MDVjMWRkZjhiODQ5ZDNkN2VmODgzMGJlZDZiNTM0MTc0MzRlNzp7Il9hdXRoX3VzZXJfaGFzaCI6ImZhZDE2ZWM5ODM1NWRjNzk2NmFjNWZmNjk4YmFiNzIwZmYwYzk5YTciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxMyJ9','2017-02-16 10:37:39.157406'),('zcpiqekea3lp4d9j6hrgk1kmroyjqjc2','MDdiOTBhN2U5MTYxMTUwNDg2ZWY0NzljZjQ2NDY3ZjgyOTlhMGYzNTp7Il9hdXRoX3VzZXJfaGFzaCI6IjRmNWNjNzc4NjAzNDMzNGYxMDFkMmJhNzRkODIzZWUxNDgxOWYyNGIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzMSJ9','2017-03-11 09:30:36.739015'),('zi7u11brhl8oyvuo2gilo1i140m2h0of','OGNiNTJjZDRmZTNkNzNlYTgxMDBkOGZjY2FhNTU0YzFmMTFhYjcxODp7Il9hdXRoX3VzZXJfaGFzaCI6ImNhZTU4NWE4ZDIzMTAzODZlNDIzZWJlNjZiZDgzNjk2MjNiYjdmYWQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMiJ9','2017-02-17 17:16:22.610379'),('zvd28w834u8wli0zwri6w5usmrvkcmm7','YTJhYTQyZTRmZTkxODk4ZTExYzBhMzIyM2YyMDRkYTUxY2QzZTdmZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjBlYmUyNTZlYzg1MDI2NGI4ODVkYjFjYTQ3ODNjN2MwMmZmYzYxZjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI1NCJ9','2017-03-22 17:22:30.732452'),('zvkew62ix8aa5qed5qe7w93cqafw8j1l','ZmZiODI3YTg2N2VhZjNlODg2MjZlYzIxNTAzYTU0NjViNDQ1YjgxZTp7Il9hdXRoX3VzZXJfaGFzaCI6IjBhODZhZTFjZTU4MmUyMzNlOTMwMjUwZDYzM2I0NTVhNThkM2VmY2QiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI5MSJ9','2017-03-18 20:31:25.824004'),('zx1y27fpa7ar2101bjqtgajo4h3jwzip','NzE4ZTk0MzIxNDMwZmZhZDgyZGMyNzNhMzIxOWM2ZGYzYTIzZWZkZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjUyZDcyNGM4YjI0NzM5ODdmNWQ4NjFhZDhlZjEyZTM0OTE0ZTQ0NzIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI2NyJ9','2017-02-22 20:50:58.607361'),('zx23sdc47c968gr47u3ncoczu3nkxmvn','NmY1Zjg5NjlkZTQ0NTkzYTY1MmJmNzQyNmM2MGRhOTliMjEwYWI3NDp7Il9hdXRoX3VzZXJfaGFzaCI6IjM4OTBiZjJiY2MxZTRhNDliZTVjNTQwMTk3NjAzMTFlOGIzZmE2NzUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI2NCJ9','2017-02-22 17:10:07.068299');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requests`
--

DROP TABLE IF EXISTS `requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `requests` (
  `toid` int(11) NOT NULL,
  `fromid` int(11) NOT NULL,
  `bookreq` int(11) NOT NULL,
  `books` varchar(255) DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `reqid` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`reqid`),
  KEY `toid` (`toid`),
  KEY `fromid` (`fromid`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requests`
--

LOCK TABLES `requests` WRITE;
/*!40000 ALTER TABLE `requests` DISABLE KEYS */;
INSERT INTO `requests` VALUES (16,18,7201,'1122054_94669_16235_4671_10098912_15733523',0,-1,9),(34,35,10225702,'',0,0,19),(34,37,10225702,'',0,0,21),(40,51,10310,'',0,-1,27),(25,55,18143977,'',0,-1,28),(25,55,18143977,'',0,-1,29),(25,55,18143977,'',2147483647,-1,30),(36,11,33600,'968',0,-1,31),(32,25,960,'18143977_11468377',200,0,33),(36,11,16008852,'1202_976',150,0,35),(25,11,18143977,'9455324',0,-1,36),(57,48,785454,'10695150',0,0,38),(32,48,960,'968',0,0,39),(48,65,54270,'7913305_12820793_11827808',0,-1,40),(36,11,16008852,'3869_968',100,0,41),(40,73,10534,'',0,0,48),(57,74,785454,'',0,0,49),(25,74,18143977,'',0,-1,50),(57,75,785454,'3228917',9000,0,51),(40,11,18405,'968',120,1,53),(16,98,11125,'',0,-1,55),(65,98,7913305,'',100,0,56),(36,102,33600,'',0,0,57),(36,102,33600,'',0,0,58),(48,103,54270,'',150,0,59),(40,25,18405,'18143977',0,0,60),(16,12,7201,'10695150',0,0,61),(96,12,300225,'16334',0,1,62),(96,18,300225,'1122054_94669_16235_4671_10098912_15733523',0,0,63),(48,18,54270,'1122054_94669_16235_4671_10098912_15733523',0,0,64),(47,18,33208134,'1122054_94669_16235_4671_10098912_15733523',0,0,65),(117,11,128029,'968',0,0,66),(117,11,128029,'77203',0,0,67),(117,48,128029,'',150,0,68),(48,118,54270,'960_3590_976',0,0,69);
/*!40000 ALTER TABLE `requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_detail`
--

DROP TABLE IF EXISTS `user_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_detail` (
  `name` varchar(100) DEFAULT NULL,
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `contact` varchar(10) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `login` int(11) DEFAULT NULL,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_detail`
--

LOCK TABLES `user_detail` WRITE;
/*!40000 ALTER TABLE `user_detail` DISABLE KEYS */;
INSERT INTO `user_detail` VALUES ('Amol Kankane',11,'8808717178','Room 151, CV Raman','amol.kankane@gmail.com','itsamk',10),('Aditya Dhavala',12,'8419006985','Flat B301, Saket Dham, Plot E10, Sector-61','dvsaditya@gmail.com','dvsaditya',1),('Deepak Yadav',15,'7411452250','Room 03, Ramanujan Hostel, IIT BHU Lanka','deepak.yadav.cse14@itbhu.ac.in','cryptomanic',0),('Digvijay Singh Rawat',16,'8948843611','Dabad DAbad','digvj7@gmail.com','VenDeTa',0),('Saurav',17,'8426021546','260 emerald hostel Ism dhanbad','sauravmeena25101996@gmail.com','Sauravmeena',0),('Abhinav Roy',18,'7376260114','Room No. 155, CV Raman Hostel, IIT(BHU)','akabhinav32@gmail.com','akabhinav32',1),('dlpartihar',19,'9413317301','Sahebpara Rly colony Katihar, Bihar','dlpartihar@gmail.com','dlpartihar',0),('Shivendra',20,'8808872505','Parti ke papa hain hum','shivendra.kumar.cse14@itbhu.ac.in','shivendra',0),('S Kharan',21,'7784937794','Room No.B-202, Aryabhatta Hostel, IIT BHU','s.kharan.eee15@itbhu.ac.in','skharan1304',0),('havish gutta',22,'7860209961','room no 135, C V Raman hostel, iit bhu, varanasi','eegafalls5@gmail.com','havish',0),('Dewanshu Pratihar',25,'8808717178','Room 24, Ramanujan Hostel, IIT BHU, Varanasi','dewanshu.pratihar@gmail.com','dewanshu',2),('Anushka Verma',30,'8005368297','Room 42B, GSMC extn.,  IIT BHU','anushkaset2win@gmail.com','anunarayan',0),('Aditya Nawal',31,'7753969281','Room No. 46 C. V Raman','Adityanawal007@rediffmail.com','Adinawal',0),('Aman Jain',32,'8933053547','Room','amanj0586@gmail.com','Aman Jain',0),('Aman Jain',33,'8418944460','IIT (BHU) Varanasi','aman130895@gmail.com','aman13',0),('Adhithyan',34,'8765480045','Room no. 150, CV Raman hostel, IIT-BHU campus','adhithyan.s.mec13@iitbhu.ac.in','Adhithyan0320',0),('Arun Kumar',35,'8755000510','Cv Raman Hostel, Iit bhu Varanasi','arun.kumar.mec13@itbhu.ac.in','phoenix_21',0),('Amit Sheoran',36,'8009569373','Room No. 154, C.V RAMAN hostel, IIT(BHU)','amit.sheoran.mec13@itbhu.ac.in','amitsheoran',0),('Akash kakkar',37,'8604565451','Room no 150, C.V Raman Hostel','akash.kakkar.mec13@itbhu.ac.in','akki0410',0),('Faizan Khan',38,'7052306316','Room No 13, Ramanujan Hostel, IIT BHU, Varanasi, U.P.','fufahad.khan.cse14@iitbhu.ac.in','fzkhan',0),('Akash Sahu',39,'8934997157','Room no 151 cv raman hostel','akash.akash.sahu@gmail.com','akash',0),('Amit Singh',40,'8960838988','Room No. 155,, C.V.Raman Hostel','amit.onlines.14@gmail.com','amitmec13',0),('Animesh Agarwal',41,'9889083993','Turning Point,','animesh972@gmail.com','animesh972',0),('Ruchika Modi',42,'8417895212','Room No. 30-A, Gandhi Smriti Mahila Chattravas(Ext), Indian Institute of Technology(Banaras Hindu University),Varanasi','ruchika.modi.apm13@itbhu.ac.in','ruchika_modi',0),('Moulik Gupta',43,'7587739770','Room C120, Aryabhatta Hostel, IIT BHU','moulik.gupta.mec15@itbhu.ac.in','moulikgupta',1),('Avinash Karwar',44,'9129579672','Cvraman Rno 148','avinash.kharwar.mec13@itbhu.ac.in','aviket',0),('Aditya Pandey',45,'7905068233','25,ASN Bose HOstel, IIT BHU,Varanasi','adirobotechno1@gmail.com','adirobotechno1',0),('Archit',46,'9012313779','Room NO 156, CV Raman Hostel, Hostel, Road, IIT BHU, Varanasi- 221005','archit.agarwal.mec13@itbhu.ac.in','architagar',0),('Archit',47,'9012313779','Room NO 156, CV Raman Hostel, Hostel, Road, IIT BHU, Varanasi- 221005','archit.agarwal.mec13@itbhu.ac.in','architagarwal',0),('Ananya',48,'7277722658','MMV, BHU','kashyapananya1998@gmail.com','ananya01',1),('Ankur Tomar',49,'7309162040','Vishwakarma Hostel, IIT BHU','ankur.tomar.che13@iitbhu.ac.in','ankurtomar',0),('Himadri Mishra',50,'9918889939','IIT(BHU), Room 179, Rajputana Hostel','hmishra2250@gmail.com','hmishra2250',0),('Prakarsh Saxena',51,'9407279453','Aryabhatta Hostel, IIT BHU','prakarshsaxena31@gmail.com','Prakarsh',0),('Anoop Pandey',52,'7839114758','Rajputana Hostel, IIT(BHU)','anoopkr.pandey.mec14@itbhu.ac.in','anoop',0),('Nitin',53,'9198817059','dhanrajgiri hostel','nitin2142@gmail.com','nitin2142',0),('L Shyam Sridhar',54,'7753069683','Room No. 180, CV Raman Hostel, IIT (BHU) Varanasi','lshyam96@gmail.com','Shyam',0),('Suraj Gupta',55,'7839990757','Room 23, CV Raman Hostel , IIT-BHU','surajgupta.iitbhu@gmail.com','salted_peanuts',0),('Gaurav Jaiswal',56,'9795261623','Samneghat Varanasi','gaurav.gkj007@gmail.com','gaurav_26',0),('Dhwanit srivastava',57,'7275332430','149,cv raman iitbhu','dhwanit.ksrivastava.mec13@itbhu.ac.in','Dhwanit',0),('Anuj Pratihar',58,'7979881524','IHM Pusa, library avenue, new delhi','anujpartihar@gmail.com','Jude',0),('Ajay Kumar Saini',61,'7390065456','IIT BHU','sainiajay532@gmail.com','sainiajay532',0),('Devesh Manjhi',62,'7440860988','Near baba kalu kahar raja mandi, gwalior','devesh.manjhi.cse14@itbhu.ac.in','manjhiboy',0),('Dhruv Goel',63,'9457146396','Room No. 13, C V Raman Hostel,','goeldhruv26@gmail.com','dhruvgoel',0),('Muneeb Ahmed',64,'7309430986','Room No. 16, SC De Hostel, IIT (BHU) Varanasi','muneeb.ahmed.eee14@iitbhu.ac.in','muneeb_ahmed',0),('Yash Dave',65,'7275564370','Room 3, Rajputana Hostel','yashsdave96@gmail.com','davehomie',0),('Brijesh kumar gupta',66,'9565199996','IIT BHU','bizzu5252@gmail.com','bizzu5252',0),('Khayati',67,'9455225903','g.s.m.c. extention,iit bhu','khayati.mittal.ece15@itbhu.ac.in','khayati_mittal',0),('Abhinav Singla',69,'7705932231','Room No. 167, CV Raman Hostel','abhinav.singla.mec13@itbhu.ac.in','nprsah',0),('Vivek Sourabh',70,'8874406449','Room No. 36, Ramanujan Hostel, IIT BHU','vivek.sourabh.cse14@iitbhu.ac.in','vivek10p14',0),('Virat Bansal',71,'7275139825','Room No. 36 Ramanujan Hostel,IIT Bhu,Varanasi,UP,India','virat1011@gmail.com','virrrat',0),('Shivam Jaiswal',73,'9795637067','room no.181 CV Raman Hoostel IITBHU','shivam.jaiswal.mec13@itbhu.ac.in','jassi_7',0),('Deepak Mandowara',74,'7726892097','163,CV Raman Hostel, IITBHU VARANASI','mandowara002@gmail.com','dmandowara',0),('rajat',75,'8948563789','Dehradun','rajat.chhajed22@gmail.com','rchhajed',0),('Akash Rai',76,'7376047090','Room No. 136 C V Raman Hostel, IIT (BHU) Varanasi, Lanka','akashrai688@gmail.com','akashrai688',0),('Akash Rai',77,'7376047090','Room No. 136 CV Raman Hostel, IIT (BHU) Varanasi, Lanka','akashrai688@gmail.com','akashrai6888',0),('Saurav Kumar',78,'9721769799','TSC 10, Bina Colony, Sonebhadra','saurav24007@gmail.com','saurav24007',0),('Kanchan',79,'7988520270','Saraswati hostel,triveni complex,bhu varanasi','kanchan6398@gmail.com','Kanchan',0),('Megha',80,'9454614427','B15/35 k.n.b road sonarpura, Varanasi','meghamajumdar13@gmail.com','Megha',0),('Shambhavi Tiwari',81,'7905976872','Balaji Nagar,Samneghat, Varanasi.','tiwarishambhavi61@gmail.com','Shambhavi Tiwari',0),('kartik kankane',82,'9425859677','katni','kartikkankane007@gmail.com','kartikkankane',0),('Ayushi pandey',83,'8004507760','85 malhaur chinhat lucknow','pandeyayushi120@gmail.com','@Pandey_ayushi',0),('Ayush Goyal',86,'9129578158','Room 158, Dhanrajgiri Hostel, IIT (BHU), Varanasi','ayushgoyal.india@gmail.com','ayush.gyl',0),('Varsha',87,'9918648332','Mahmoorganj ,Vns','varshakhatri899@gmail.com','Varsha Khatri',0),('tabassum ghayas',89,'8756129009','c.k 46/5 sarai atm Varanasi','tabassum.ghayas555@gmail.com','Tg',0),('Amol',90,'8808717178','room 151, raman','amol.kankane@gmail.com','itsamk1',0),('Dewanshu',91,'7052378759','Room 24, Ramanujan Hostel','dewanshupartihar@gmail.com','dewanshu123',0),('Arpita Tripathi',93,'8765025069','House no. 56, JP Colony, Renukoot, Sonbhadra (UP)','arpitatripathi10@gmail.com','Arpita10',0),('Mohd Saif khan',95,'8726054496','cv raman, room no 136','msaif.khan.mec13@itbhu.ac.in','saifkhan0401',0),('Anushree',96,'7348619603','Banaras','anushreemishra369@gmail.com','_justanotheroptimist_',0),('Utkarsh agrawal',97,'8967924536','D-208,Patel Hall,IIT Kharagpur,kharagpur-721302,West Bengal','agrawalutkarsh5@gmail.com','utkagr',0),('Hemanshu Sondhi',98,'8285609550','Room 21, Ramanujan Hostel','hemanshu.sondhi.cse14@itbhu.ac.in','hemanshu95',0),('Ayushi pandey',99,'8004507760','85 malhaur chinhat lucknow','pandeyayushi120@gmail.com','Pandey_ayushi',0),('Pranshu Kumar',100,'9695705798','Room 28, Ramanujan Hostel','pranshu.kr.cse14@itbhu.ac.in','pranshu8292',0),('Arpit Chaudhary',101,'9045881240','IIT-BHU','arpit.chaudhary.cse14@itbhu.ac.in','arpit717',0),('Indrajeet',102,'8960455494','CV Raman 157','indrajeet.sahu.mec13@itbhu.ac.in','Indrajeet',0),('Divyansh Chandrakar',103,'7052378929','Room No - 24, Ramanujan Hostel','divyanshrkl@gmail.com','divyansh_kc',0),('Ravi',104,'8604592236','Varanasi','ravisinghkelwa@gmail.com','RaviSK',0),('Naman',105,'9772525378','Room Number 95 Vishwakarma Hostel IIT (BHU) Varanasi','namanrox@rediffmail.com','Naman',0),('sai teja reddy',106,'7989731178','Room no: 95 , Viswakarma hostel, IIT(BHU) Varanasi','dvstr.ong7@gmail.com','saitejadv',0),('Dewanshu',107,'8808717178','jasdn,asd,asd','dewanshupartihar@gmail.com','hellobro',0),('Zahir',108,'9884393380','12b, thomas castle.','get2zahir@gmail.com','Zahir',0),('Ravi',109,'9771043777','Dhanbad','ravinaththakur176@gmail.com','Ravi',0),('Piyush rai',110,'8670396035','Anandpuri colony,isakchak,bhagalpur','coolpkpiyush@gmail.com','Piyush rai',1),('Aman Kumar',111,'7091493228','Trishul sadan Boring Road Patna','aman54singh@gmail.com','aman54singh',0),('Aman Kumar',112,'7091493228','Trishul sadan Boring Road Patna','aman54singh@gmail.com','aman54singh1',0),('Neha',113,'8318344682','Lanks, Varanasi','21gunsneha@gmail.com','21gunsneha',0),('Pushkar ranjan',114,'9169316960','B.h.u','pushkarranjan21@gmail.com','Pushkar',0),('Tathagat',115,'8989571298','PDPM IIITDM Jabalpur, Madhya Pradesh','tathagatverma@iiitdmj.ac.in','tathagat24',1),('Amit',116,'9695555567','C v raman hostel  iit bhu','amit.kumar.min13@iitbhu.ac.in','Guruji',0),('Anish keshri',117,'9161126424','#6, Dalmia Hostel, BHU','anish.kesri00@gmail.com','Anish',2),('Avijit Thawani',118,'9889962132','Room 25, Ramanujan','sidavijit@gmail.com','avi',2),('Shweta Kankane',119,'9329067158','Gwalior','shwetakankane@gmail.com','shwetak',0),('Nikita Singh',120,'8853051098','KD-72,Indo Gulf Township, industrial area Jagdishpur, Distt-amethi (U. P)','singhnikita119@gmail.com','Nikkita06',1);
/*!40000 ALTER TABLE `user_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wishlist` (
  `entryid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `bookid` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  PRIMARY KEY (`entryid`),
  KEY `fk_wishlist` (`userid`),
  CONSTRAINT `wishlist_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user_detail` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlist`
--

LOCK TABLES `wishlist` WRITE;
/*!40000 ALTER TABLE `wishlist` DISABLE KEYS */;
INSERT INTO `wishlist` VALUES (6,11,242472,'The Black Swan: The Impact of the Highly Improbable'),(7,11,2527900,'Nudge: Improving Decisions About Health, Wealth, and Happiness'),(8,11,40102,'Blink: The Power of Thinking Without Thinking'),(10,15,6,'Harry Potter and the Goblet of Fire (Harry Potter, #4)'),(11,15,968,'The Da Vinci Code (Robert Langdon, #2)'),(12,16,12160906,'The Sins of the Father (The Clifton Chronicles, #2)'),(13,16,8487447,'Pornographic Cartoons: Hentai, Carnal Comics, Cartoon Pornography, the House of Morecock, Savita Bhabhi, Ghastly\'s Ghastly Comic, Misshitsu'),(14,16,923121,'Yaoi Hentai Volume 1'),(15,16,59807,'Carnal Innocence'),(16,11,1202,'Freakonomics: A Rogue Economist Explores the Hidden Side of Everything (Freakonomics, #1)'),(17,11,5107,'The Catcher in the Rye'),(18,25,3,'Harry Potter and the Sorcerer\'s Stone (Harry Potter, #1)'),(19,35,11468377,'Thinking, Fast and Slow'),(20,11,34,'The Fellowship of the Ring (The Lord of the Rings, #1)'),(21,25,1202,'Freakonomics: A Rogue Economist Explores the Hidden Side of Everything (Freakonomics, #1)'),(22,12,78983,'Kane and Abel (Kane and Abel, #1)'),(23,117,49455,'Notes from Underground'),(24,118,18050143,'Zero to One: Notes on Startups, or How to Build the Future');
/*!40000 ALTER TABLE `wishlist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-13 14:00:44
