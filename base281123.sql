-- MySQL dump 10.13  Distrib 8.0.35, for Linux (x86_64)
--
-- Host: localhost    Database: lms_project
-- ------------------------------------------------------
-- Server version	8.0.35-0ubuntu0.22.04.1

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
-- Table structure for table `auth_app_user`
--

DROP TABLE IF EXISTS `auth_app_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_app_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `email` varchar(254) NOT NULL,
  `birthday` date NOT NULL,
  `description` longtext,
  `avatar` varchar(100) NOT NULL,
  `username` varchar(254) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_app_user`
--

LOCK TABLES `auth_app_user` WRITE;
/*!40000 ALTER TABLE `auth_app_user` DISABLE KEYS */;
INSERT INTO `auth_app_user` VALUES (1,'pbkdf2_sha256$600000$vKKWTkXFm24GR1xRentxM8$MVageR/TBzYKYqxDYIrS4bvQgK6aSWbIXaKUgvCw6pw=','2023-11-28 12:09:27.569046',1,'Дмитрий','Шаронов',1,1,'2023-09-15 13:40:12.000000','sharonov-db@mail.ru','1979-02-16','','',NULL),(10,'335',NULL,0,'Иван','Иванов',0,1,'2023-11-05 12:45:49.000000','1@1.ru','2000-11-09','','',NULL),(11,'335',NULL,0,'Петр','Петров',0,1,'2023-11-05 12:46:57.000000','3@3.ru','2004-09-06','','',NULL),(12,'335',NULL,0,'Максим','Максимов',0,1,'2023-11-05 12:48:20.000000','4@4.ru','2002-07-20','','',NULL),(13,'pbkdf2_sha256$600000$SOwR7XjFlZfERvMJOmzRss$pGRNoa+AWjC+TVlZAe03aJV3XECk0/ufp8p/zG2ewY8=','2023-11-07 11:35:38.815322',0,'Иван','Иванов',0,1,'2023-11-07 11:35:19.100704','sharonovdb@ya.ru','2023-10-06','sas','',NULL),(21,'pbkdf2_sha256$600000$lHC1GOvHVhwKMrSwj3l3sz$lLKEL85gQb9bpPu6LBuTq/96I2tIqqspy/RDoZiwQtE=','2023-11-08 04:01:51.336467',0,'2@2.ru','2@2.ru',0,1,'2023-11-08 04:01:50.537476','2@2.ru','2023-10-06','','',NULL),(22,'pbkdf2_sha256$600000$8X8YdgWwVFZWXuiUEtU8JI$zq2OB40+oFrMlhjZD59Qp09797xOvdGV5OAoiH3mI4g=','2023-11-27 13:06:42.448118',0,'Сергей','Иванов',0,1,'2023-11-09 04:18:03.000000','avtor@avtor.ru','2023-10-06','','','avtor@avtor.ru'),(23,'pbkdf2_sha256$600000$wB4JIYtYIq1ognPztInSoN$eIHcYFIN9fIroupq06G2zOrU+AAjMcnJqFPcKmPc3Xk=',NULL,0,'Петр','Петров',0,1,'2023-11-13 11:57:15.891658','3@3.ru','2004-09-06','','',NULL),(24,'pbkdf2_sha256$600000$fcaCr3UYSGnJQgtI0gam5T$6ew4DvfUgdBV44iweoYOe0QHOFE1qFYMJzecAhIXB50=',NULL,0,'Петр','Петров',0,1,'2023-11-13 11:57:24.211742','3@3.ru','2004-09-06','','',NULL),(25,'pbkdf2_sha256$600000$g1vMKHhBLBNZotXREaC9Q9$kgTgSJIchWJESuykjVUpt3s8iGlXlypO1p4dubvoDK4=',NULL,0,'Петр','Петров',0,1,'2023-11-13 11:57:33.771564','3@3.ru','2004-09-06','','',NULL),(26,'pbkdf2_sha256$600000$Bq8HVlhVJjqmeKi4ptN1ok$CQA11rxQVhAg5vgM3w2Uktt2zK+3p8BzWrDuRibgCGc=',NULL,0,'Петр','Петров',0,1,'2023-11-13 12:00:52.281142','3@3.ru','2004-09-06','','',NULL),(27,'pbkdf2_sha256$600000$iYsbTPHSxb8bbMbzHFOv9u$AXq3pwOCPEDpRPw6EUBftPbhEPtvKGOKv9LFAd6DBJs=',NULL,0,'Петр','Петров',0,1,'2023-11-13 12:04:22.076730','3@3.ru','2004-09-06','','',NULL),(28,'pbkdf2_sha256$600000$AV72EwNKCmxza8Ejzt1IPS$WUXhtVCoRpxzY+SDyavsJ4ALPpZv7rntm8zneTZDtes=',NULL,0,'Петр','Петров',0,1,'2023-11-13 12:22:14.612928','3@3.ru','2004-09-06','','users/1699878135.486196.png',NULL),(29,'pbkdf2_sha256$600000$sU3FdFOWqGG2pJcLzj0wby$Onb02zo/Ni6HmTKMFPw+jQIBCBg9PFpSLpnYKXYxiiQ=','2023-11-20 10:35:58.479681',0,'Петр','Петров3e',0,1,'2023-11-20 10:35:57.329041','Avtor@avtor2.ru','2023-11-07','','',NULL),(30,'pbkdf2_sha256$600000$4XR5VYTK0pmhSbKDWIGFjs$FfVh4JApychywfG1fdlHUYFuI8kEdhBAEb7IGFcqViQ=',NULL,1,'','',1,1,'2023-11-20 10:39:31.596214','admin@admin.ru','1979-02-16','','','admin@admin.ru'),(31,'pbkdf2_sha256$600000$WXpZBYbwc4pqdQ4WWC5KIn$QA/G4KlUEuY+4xmOAaUSSac7snJeOD0SWwfqkdD+djM=','2023-11-27 10:53:47.737042',0,'Петр','Петров',0,1,'2023-11-27 10:31:10.414021','uchenik@uchenik.ru','2023-11-07','','',NULL),(32,'pbkdf2_sha256$600000$A3cekoCL24wFPA0SxqpAZT$ZEEftlaspQ95l3VK77JaJ/Rci3qC6nSV3OdJpxnGjTc=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 11:54:24.973415','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(33,'pbkdf2_sha256$600000$RG9gLekLHde7sYUHNRTKlk$X6y4cNZOBFqbHW8JSQk7kGq2x+helNTQxI5+Nrgkobo=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:14:21.888303','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(34,'pbkdf2_sha256$600000$yOKA8gBJFtphXfypwwGDS7$XYlErJF0IqSKiIEcRIdi6Bym4O/fcbp4wCnjaJmSJxE=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:26:35.237728','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(35,'pbkdf2_sha256$600000$BhqVGTKsELOmMz9zq4Dib3$eUYhmZILVSOGFWKJjFmGizejRS2rje6W7pi/AjefGjg=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:26:46.094636','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(36,'pbkdf2_sha256$600000$3hOd65CatDpyxZ3Hej8WgF$lfmHzX3GhrAq99dpEvMTmzIqn3lMpF1GGhL7Imu5520=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:26:57.016056','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(37,'pbkdf2_sha256$600000$AwCLs4jbKHx3QAHiCie1f9$8yFSOC9oIXxmeZXCMPBY4l7495gOuK3vkapP0TNHh6I=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:27:08.101630','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(38,'pbkdf2_sha256$600000$pJkRc1hKGwpRKgdcPutP77$ZmwLBQrnfCt90zR4cUbuCTuqWVBNyh3mn2y8TgVZwWo=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:27:18.793727','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(39,'pbkdf2_sha256$600000$xFxFYNsuXfGofKQbSbosiQ$+5dHzAJpw0NLQnw8Z3bxv2+4mRoJKYK9HiEkog+atCo=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:27:29.428137','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(40,'pbkdf2_sha256$600000$xtjyaobhEQcY7lUd1mZ5m1$5gF0cp5Le1T7UXmnLNg8L1RxwNC1eS0yaoN0/fbFrDg=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:27:40.297346','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(41,'pbkdf2_sha256$600000$98fWp7JNOqOJAQOPvFyOF6$z38Wtw1KeNnNCULyR/uHDMlw6+qGgBoxK+4S687lQjE=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:27:50.900952','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(42,'pbkdf2_sha256$600000$QL0bqlmEVlksv3QqheyXgH$W+3beXfB0nwpD96ErpRcMuhTHe5cWpImw3mSdO14GVI=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:28:01.681998','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(43,'pbkdf2_sha256$600000$2BvRlR7ydv8GrhBlA1mNOp$iQybgaryCFM0WIYx8J4iTNaWLaNyG557sKkrBm9/WKM=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:28:12.480599','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(44,'pbkdf2_sha256$600000$6yewnRx44SQKSj6eNE4CK8$IKglsXYSO66HwGi1Z7P19od21a5Paq3maqE03NLG/cA=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:28:23.492361','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(45,'pbkdf2_sha256$600000$r9CE8bKzmeDFKAOaWANUlT$0d5woXtef119j0yea6lDVQlj9cYLCc99e6QK69scA/U=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:28:34.216841','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(46,'pbkdf2_sha256$600000$7TZ6uNjFWRU6Ii12Ipewul$kLN+u1MxrsIN5xmeiY3V6bnxos+Ua6KR15D9e+XHycE=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:28:45.125263','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(47,'pbkdf2_sha256$600000$oyzwx17iYfJDkWcW7SxyYO$DJWPJt443S2/S6WKE/YnBDkURwBNwY4zsctfnLmHWxk=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:28:55.789678','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(48,'pbkdf2_sha256$600000$4YT3OG951cEwQ1Sn5NaZNR$Lfo0FTH6MY1gSyObew1KenjuwtFsLN2snRCGSlWc+pc=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:29:06.655355','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(49,'pbkdf2_sha256$600000$AHfy6NM9jclTh1FfI05Ead$pdENPxmz9lCDq94qK94zG8m6G6+xj3p/aalp7setYD0=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:29:17.881870','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(50,'pbkdf2_sha256$600000$y6QfeDRD8gC9Pib9iJXHoA$TxItV0QEdYplbB2PFD4nbJE44nP8fqRPMVOTONhfioA=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:29:28.503888','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(51,'pbkdf2_sha256$600000$XanWCzRQv2GZqNhTa6SaAe$8FI5AZX4CVlwkvOBX6IXmIiep4iLpIgqzbYLZSpdReI=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:29:39.901102','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(52,'pbkdf2_sha256$600000$kETaoCj3PkUIuiPbd9gVz8$K3mi4f+4JT6DW0sbNlYiJvCYz+UbSXPPkO0dJf45rcU=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:29:51.108662','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(53,'pbkdf2_sha256$600000$4l6AwfK66rEzCJC1Lwg1D3$iu1KLOgECh86gxP2qEePFaEc4om1d1FKMFN1Q4YuRW8=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:30:01.983790','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(54,'pbkdf2_sha256$600000$8qncAJm9ywm7pQWNbohFCs$otFHOKSfmmUp4fybBkANSDl88SwFnqx6cGxQGZ+ti2A=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:30:14.305422','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(55,'pbkdf2_sha256$600000$RRZ3rbieYcwcdzIaISPMM2$V2450/ZeHrI7WqtimWyA8+Y+pjJkefMUPwKjcSo8jsc=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:30:26.105181','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(56,'pbkdf2_sha256$600000$kWMiXAHlvuOWkhhBFTfsRj$L5tfYdctuAAu3wao9KI8IOvvBOBoNJz5laY9ztPd8bE=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:30:37.910510','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(57,'pbkdf2_sha256$600000$7qw3himR4kJNLzTpIUMKSL$SHj8zTNdlI2pzVWqodCHWgzYNdhhF2n9BGvL7c4qmk0=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:30:50.301304','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(58,'pbkdf2_sha256$600000$zHAS0KBJ4zHFP2zkiM9Pd0$OEAqJ1ATKLgp2SSa2tgKsvZ1ucoe3aqYlnbloFLUYtg=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:31:01.879034','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(59,'pbkdf2_sha256$600000$dKqXUMHjdawLXwXnX04Za8$Wt/+p6Rjst8oiW97XApkrevGFTMjy2y+FrGYkPXQ8jo=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:31:13.487850','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(60,'pbkdf2_sha256$600000$nhMcNa2OCH6TzjSLRBXDcv$XQu3YokuFXncxHlw/o/Xe4MF/CWHSboMnbCx50vDTmQ=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:31:24.822509','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(61,'pbkdf2_sha256$600000$ocuVqY2n9K0AsLdDp95uAc$q8WqKMSHEfb2qJy3GwEsuswKalwYOSsEOlN/jefxco0=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:31:36.297964','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(62,'pbkdf2_sha256$600000$WtBiqpNy81OteGZ5TqsFfs$CHJaK45XEeagaa9YEyDIVnEp6lqOb6hErvYgvteDrSk=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:31:46.968609','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(63,'pbkdf2_sha256$600000$rM5H6lLDplYQnrdzBd7TeY$PD5YMN7+SC6OEHtXUOxkiHTJuyhpcVj2F9Odz4jSK7c=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:31:58.182506','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(64,'pbkdf2_sha256$600000$2gOjmfEzniRgSJIHNngz2A$7y5PJnpqGFXZeRp2mY1I4egFIk727jdPF2meUyqqPzQ=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:32:09.105813','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(65,'pbkdf2_sha256$600000$4esRZTe7AwKN74zsEzgiNL$jfEHAIzqZMLlCEMA2fVGpeAGtMQIGb22tTEPZLMylmU=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:32:21.303361','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(66,'pbkdf2_sha256$600000$R8OLQPEirDocKLWdsxUDV0$SYIndRmEM/y1QnhJXXN+VUQWnf9sKS/YibVjWMNHXbg=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:32:34.003441','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(67,'pbkdf2_sha256$600000$IWt8ShupooDvfKPrKFimGo$Vn6i0NYqszJsr/DaDy3BcabDOZ6473og07CCaErZ/88=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:32:44.759910','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(68,'pbkdf2_sha256$600000$NhzTAE6duHmWQEZIUxO4F0$2zLxluor6CaPdZWlFucd5wuW6krZBBZCEW30liR1iRY=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:32:56.041415','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(69,'pbkdf2_sha256$600000$KTdseIXxRLhkC9lmbwQH19$Mou95CZi5dF3YWUnTbgSQbHFwD1Ca7V1mM/l8cM8jJc=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:33:07.286503','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(70,'pbkdf2_sha256$600000$ex9isu6kPO4KQvTPw3K7Wy$QAcWI8sPNmElnLQG6CC0enHdtXAY84J8hgSZnMaDOpA=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:33:18.160092','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(71,'pbkdf2_sha256$600000$e1ZD2jTbLD7QhsLHSGGTYE$wA5KyVWPc3XUU3LXfJxk/BJk5ktlP+8y/GYQB6f/c0s=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:33:29.201630','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(72,'pbkdf2_sha256$600000$Lw1bhf96tOEpJCBAFy6rvc$uig+yN7b/cfq+H5tyjFZNmFLtc7cJKGeAWt7Nofh7gc=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:33:40.022154','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(73,'pbkdf2_sha256$600000$4Rqj9aLAZuyKIvLgHoFpTT$IBuItYEMBiqTf7rdAqBaitY3Pf94DsYMvvrNMAb0tNc=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:33:51.181476','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(74,'pbkdf2_sha256$600000$ROzGVur8Z0BOurhn7Gv9g4$vd0fF1q417QvqF16iOU8C1Myk37s2gG7gSLde1tM8Bw=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:34:03.279956','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(75,'pbkdf2_sha256$600000$DWFPlcXY2zOo47ttuX0BkS$8WhTawBq1uzgQtjMZAC3x2wpbeb6UULSS9PGYBsOllg=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:34:14.473316','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(76,'pbkdf2_sha256$600000$c0oiMZtqXMa7uofGkOUyWI$GnSWZEn5YIaDtHvNq2GMbf/2M91VyphSdXIHsN8ziAs=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:34:26.150140','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(77,'pbkdf2_sha256$600000$nQxazJvtJ8MX4oPilZIg0s$tGb1JFbtxPKABOJGBmZc2IbFX9M1Usu0Ng9gGMME1dk=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:34:37.049988','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(78,'pbkdf2_sha256$600000$JnZAOc0MuQDIcobeWweRUZ$ouoXyXY1IOpucvqPBtAKQnElh6C/7fQ7daqB+A8/l68=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:34:49.416034','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(79,'pbkdf2_sha256$600000$7WRquom24wEkX0fU8G9wP5$5ufC+SkHSpHs+EhoZh0OJ3AUQbeSZa6icgN7+GnyJ30=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:35:01.283220','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(80,'pbkdf2_sha256$600000$jbCFGDuoycDZY0v7cmkI9g$GxGPrRonl5ylVklnrpN1ZV9o3gbGwkpFHWFlCdLrB0Q=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:35:12.349898','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(81,'pbkdf2_sha256$600000$2pmTYveZjEF6Mkr8GcW0cw$xX8DslJWhOalvigPbH7bVnsK3LziCowoJpwEesSJgAQ=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:35:23.363079','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(82,'pbkdf2_sha256$600000$UCbPGfLXqPuBrKn8Qn7SCT$oY/ebmFMPOh7sovnuHAUf0rbNzZc4iCr7HV5cvYkqHU=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:35:34.560021','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(83,'pbkdf2_sha256$600000$gCUQ3cIXRXp7R8OQdUoSG4$hf7ZayCNL2oHRQZkYQ/B4r5SYJvEotmGVZrf1e+58zY=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:35:45.735089','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(84,'pbkdf2_sha256$600000$Owq3vdCCFum8Zzs0s0jLSW$CNGrfo2+xHiNYp9tOkgbWdMUxxmbXQ37pZyMFbx7fTE=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:35:57.575035','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(85,'pbkdf2_sha256$600000$L4zd7HIZFBh8ILnnAcLj1E$7SSS9eBTcAiNFkPSz6aqU5PwcVYeGLPJt3P95Ku5kA4=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:36:08.723563','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(86,'pbkdf2_sha256$600000$q0w936aYm9Zgl6UrYpNAYa$SKS7NhpvrMB4SbPZHJyJd1U7VUiVu/zSc7ohohhZZSY=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:36:19.745997','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(87,'pbkdf2_sha256$600000$jCT0rWphcdmpapwZVdDsbo$Ffu2t00TJPjKvATuYdkSN9L8HUTOle8eH2JucK2tMXc=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:36:31.835770','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(88,'pbkdf2_sha256$600000$ZjSsiGsgYxgiLQzphsbd9a$IZ/YVCQ3PQsbzPQE9TTJsUOoVLlXbC/DidEHARhQJSo=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:36:48.440579','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(89,'pbkdf2_sha256$600000$w9uUdJlUEf6o2SL50T5XU6$uHd/9f1zUvDtmr9AhTlBlQUQ36JiefO+b5i+MtnXjsQ=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:37:09.023636','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(90,'pbkdf2_sha256$600000$doaX1dsVfE0JyjzwwZA5ST$RjC9ID9SpPcxaF2COyjTIL7oYbyXuxAJCftxS7rk0+A=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:37:23.399453','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(91,'pbkdf2_sha256$600000$H1hTGp9gQKF0aNjC4cFrOn$klwbLSBMqcI8mUgmZY6Hd07g0lb/UbO7mdmNT4z0BRQ=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:37:35.419800','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(92,'pbkdf2_sha256$600000$NlMeB1Y3EffzEgNoYRIKl7$iktvhaYmtACcUp56cYvWH7za/2Av6tk4YlS5UHK7njA=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:37:46.938144','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(93,'pbkdf2_sha256$600000$TP6RQgUaZGxORHrUVFG3NO$qPxqoP8xIFtpXMTtjNLjzoVEfNrApto2dp88OxEKu/k=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:37:58.110797','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(94,'pbkdf2_sha256$600000$N8uyg0n53OQ9reVxMRYTQo$hY/oxmgE70ldchukFb7jO8iHzPynD+FitUgQooYI0bQ=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:38:09.093128','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(95,'pbkdf2_sha256$600000$2SDy1a8yAiK1wEcTGepdpl$Wf77eNdKWdJn0WBK6JBeH+h1cGguZ5NRK0MHQfkH4KA=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:38:20.899141','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(96,'pbkdf2_sha256$600000$an5Q9hO23e00AVswiKCcy0$5DWF7KXjSSsCvhyF9dSzUZFRbtsJ3UCgV/2/mLDbbrE=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:38:31.900071','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(97,'pbkdf2_sha256$600000$udp8qLu4q724eh5PSqdqUb$lwZjyFKXHICV2uKRIY2f9mttJ6yO2FJDzf4snlQVFvU=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:38:43.390143','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(98,'pbkdf2_sha256$600000$uJSvGENfhBMDa0hVMn4H8m$L6nYZ5/MyCpkIAPmWlpm6F0yTCsjGggBiOX+nNVV1iU=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:38:54.428736','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(99,'pbkdf2_sha256$600000$ltoq93fNBzeI8SlFJLiU0m$txYvmriyxifXl2qf+WE0C1XYnGqNq5f5l9xM0QcQNXk=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:39:14.913565','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(100,'pbkdf2_sha256$600000$yioKwggdvWIeuuh9nz7oQG$VVw87ZoXbXOg4R68ALfVmuxb8S0ZNg8G7qUuFkhOBLk=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:39:34.761275','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(101,'pbkdf2_sha256$600000$sf4CdhnuFrPZpJ9QYQHPg7$aDPnJiavMIVAG7BgDvuCLOjeUB/5+bDMNzBOJsRzsN8=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:39:53.786586','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(102,'pbkdf2_sha256$600000$fGhGBTovMwKFZqBk8bLb0j$EcteCeZ4LvL3duIlz+YYIQnuWuWbmwqGutWlR695C6Q=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:40:10.606594','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(103,'pbkdf2_sha256$600000$Sx1ChUWlydj1ylc7SbQUjq$zdHW6CN7TC/yFYoi3PFMaQ5jHOKYXLVpqpu6cFy7b7s=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:40:21.902619','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(104,'pbkdf2_sha256$600000$cO7wm50DIfjlwSeUtrbWBN$FdX7jvw62ZrizIOWbtTqwHO69JjkehlbzYRq+MK0vXw=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:40:33.452572','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(105,'pbkdf2_sha256$600000$E0VFrsj3epJxpbYZM5rcmE$RtbPuUbpife0eg+Quzmpr1ElJWFME920lCFJvyBTiIw=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:40:45.330803','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(106,'pbkdf2_sha256$600000$kDz2NG9ax3YrhMteXrx6Ie$v7TxVqpEu/Wc/CYN8TLOaRiz9EvbuACZ0WrCfVFw+hQ=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:40:56.377841','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(107,'pbkdf2_sha256$600000$nu9WGcG8eX6VepVKjg2YOA$CCp+Afmn6QyYicCzpIMuIuf24th61LNp84mqeUPXVv0=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:41:07.573451','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(108,'pbkdf2_sha256$600000$5AN7oIGhC2EXOrZCE6Cj6j$9sW3/s10HUCv4ru5rwdob4XF3S9QSqD9m2Qq4hqu/Bc=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:41:18.713152','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(109,'pbkdf2_sha256$600000$QFANQxpiomubR7Zjl3PpiK$5OzZyuuegxzSSNj27Xx4yDCdt/eGer3NX80sPDUZkLE=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:41:30.279137','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(110,'pbkdf2_sha256$600000$woqgllzu226aQ1wUaQdndi$BrOmU4KydLmn+lVHAFNYsRHtgm0Aw7DWasP29zSe4N0=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:41:41.358178','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(111,'pbkdf2_sha256$600000$jpsnOo4TS88m8QFwZdvVI8$KaF/x5yZAQ7YqkV4h8QovfJ0J8Slls865qGsPjsgCKk=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:41:52.414719','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(112,'pbkdf2_sha256$600000$tEXTiMVF5ct6qIoEMUcSWr$o0AHO7WgHiddtmARZb8SoeknYgYkMMVpH38+25MJH3s=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:42:03.588896','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(113,'pbkdf2_sha256$600000$S3Jr2F2x4ivuLi7SmLpdeS$ydZv1Bmz+XVb7VyeLT/99BycEhzJPwPKLtOFm/rgX+c=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:42:14.820651','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(114,'pbkdf2_sha256$600000$4K1fkjCSnAgvvFVb1egPGP$o0JYmRTmQ4CiFtfHrS1gPOztqKdojEIicoKLKErV51M=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:42:26.119085','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(115,'pbkdf2_sha256$600000$xGe4mUhNDm2ZQQBgqV3Kim$+FMIi83yphVxVPPy2bUttW8YkCqi+F2r4jjf1NB2CyU=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:42:37.572848','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(116,'pbkdf2_sha256$600000$8x5wbogMyV3Gq0zzLsmwH7$2bIZSCA+nFVxIiLlS2pEOJAwMFIdWjJWqEXeq4ph668=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:42:50.881432','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(117,'pbkdf2_sha256$600000$HPk2HNJ4pww9VRZYj6EQrs$4qzujthh9RCyYnc8/lujTKSv+Um60sF5JquZh3MCg2I=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:43:01.865357','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(118,'pbkdf2_sha256$600000$qQiP7UJJLSlqCmFsEpaDji$L6JvRGvy6DRU0VsQpuGS8g1vkYEhMc0tnYT3NfMUxSU=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:43:12.798133','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(119,'pbkdf2_sha256$600000$gBBjTjPIYpfE0KfYCRtJKF$mQmcn545/nXFSxsBUCrEfxBlUsKa7kI87KqZQID3p9E=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:43:24.011170','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(120,'pbkdf2_sha256$600000$P4sC8eDQrxzK2PAeOM9sMF$dMZthgs+Aoe0S5byIDCdHYgCOMpM0O1omnPCje3bgic=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:43:35.172232','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(121,'pbkdf2_sha256$600000$u9gPnZb5yX8ohV2USfvCcV$Yaeydn/cVf5fToPR55zijGNZnz/ygu8v8nKjbBSZkds=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:43:46.116773','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(122,'pbkdf2_sha256$600000$C4YCjSgtz8W499pY2yVUt9$opc/TdYDBFR/foblQpwEEYCjh98hOPk3SkHj513tOPo=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:43:57.229227','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(123,'pbkdf2_sha256$600000$HTDVqozTlXXxHvz2cSF354$Xort7e+GKldd8OeRJjxJhTE+YSfdw4ibJz5LOW7hD20=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:44:08.326268','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(124,'pbkdf2_sha256$600000$bOJtQHMYy2LuxaXsUVOBl9$OF25UMFrQ92UxISiohjUv+BGdNbGCytMNd4vq84cqTk=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:44:19.796048','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(125,'pbkdf2_sha256$600000$RjDMtt9Bg33rQN972BKMOD$m2XuxjX+F8JsJIoRwuWz9kdKQ0e5akaEu2xaTiuovjA=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:44:31.306784','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(126,'pbkdf2_sha256$600000$x1Y9seZwuNvSvDgMuRlSjF$3SbvE6JwODFm7dGkHNPTV3w4oGbfbL0KR4G7G+lW+SY=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:44:42.145137','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(127,'pbkdf2_sha256$600000$cZmVVgRWiU8gcH0NgAstK8$SA22oiDib0ampuItscxTF4GMtJNNM+TVS9nLOtukt0M=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:44:53.745810','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(128,'pbkdf2_sha256$600000$M9EEFaHMP0ryzi9V45evds$9QNoukIqOimQxCBvWc57AD2114mFrgiyDQEr1RHfgA4=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:45:04.646985','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(129,'pbkdf2_sha256$600000$MYfR9zGWT1q3NkWVzvHbSK$RZaQv9Qu8Mrmo+zTKoIj7ypEXWBSHWZuycudfah6JSo=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:45:15.928891','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(130,'pbkdf2_sha256$600000$iQvWt0dwHH0IwzITpNnRPx$SndJtl90rh+W2GEGXdn/odV5uDfvszDbXrkj1av9MLU=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:45:26.800320','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(131,'pbkdf2_sha256$600000$lYYAHhV0KwQspYvaxFEvcy$+l79uXlQ701R8msHILZA9IL4oO+M+YN+1YnjJZKTPV4=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:45:38.415383','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(132,'pbkdf2_sha256$600000$vECXoMa3vhDmpD8uRpPnfV$rTfTHZaYNjpHEEFo3idVQsQyxJmWbxbjRz8UuY1jtOA=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:45:49.306480','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL),(133,'pbkdf2_sha256$600000$aY6kUMR9oVrJ1KGmqMVH3q$exwKBSJjIjhU/xTY56pWKvDj1aEOucdtZ9+d/oPxoPU=',NULL,0,'Иван','Соколов',0,1,'2023-11-28 12:46:00.536639','Avtor_test@avtor.ru','2010-11-02','[]','[]',NULL);
/*!40000 ALTER TABLE `auth_app_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_app_user_groups`
--

DROP TABLE IF EXISTS `auth_app_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_app_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_app_user_groups_user_id_group_id_5f174ff0_uniq` (`user_id`,`group_id`),
  KEY `auth_app_user_groups_group_id_b4576925_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_app_user_groups_group_id_b4576925_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_app_user_groups_user_id_2b6e45f5_fk_auth_app_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_app_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_app_user_groups`
--

LOCK TABLES `auth_app_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_app_user_groups` DISABLE KEYS */;
INSERT INTO `auth_app_user_groups` VALUES (1,1,1),(10,10,2),(12,11,4),(13,12,3),(14,13,3),(15,21,3),(25,22,2),(27,22,3),(17,23,3),(18,24,3),(19,25,3),(20,26,3),(21,27,3),(22,28,3),(23,29,3),(24,30,3),(26,31,3),(28,32,3),(29,33,3),(30,34,3),(31,35,3),(32,36,3),(33,37,3),(34,38,3),(35,39,3),(36,40,3),(37,41,3),(38,42,3),(39,43,3),(40,44,3),(41,45,3),(42,46,3),(43,47,3),(44,48,3),(45,49,3),(46,50,3),(47,51,3),(48,52,3),(49,53,3),(50,54,3),(51,55,3),(52,56,3),(53,57,3),(54,58,3),(55,59,3),(56,60,3),(57,61,3),(58,62,3),(59,63,3),(60,64,3),(61,65,3),(62,66,3),(63,67,3),(64,68,3),(65,69,3),(66,70,3),(67,71,3),(68,72,3),(69,73,3),(70,74,3),(71,75,3),(72,76,3),(73,77,3),(74,78,3),(75,79,3),(76,80,3),(77,81,3),(78,82,3),(79,83,3),(80,84,3),(81,85,3),(82,86,3),(83,87,3),(84,88,3),(85,89,3),(86,90,3),(87,91,3),(88,92,3),(89,93,3),(90,94,3),(91,95,3),(92,96,3),(93,97,3),(94,98,3),(95,99,3),(96,100,3),(97,101,3),(98,102,3),(99,103,3),(100,104,3),(101,105,3),(102,106,3),(103,107,3),(104,108,3),(105,109,3),(106,110,3),(107,111,3),(108,112,3),(109,113,3),(110,114,3),(111,115,3),(112,116,3),(113,117,3),(114,118,3),(115,119,3),(116,120,3),(117,121,3),(118,122,3),(119,123,3),(120,124,3),(121,125,3),(122,126,3),(123,127,3),(124,128,3),(125,129,3),(126,130,3),(127,131,3),(128,132,3),(129,133,3);
/*!40000 ALTER TABLE `auth_app_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_app_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_app_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_app_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_app_user_user_permi_user_id_permission_id_727a8e97_uniq` (`user_id`,`permission_id`),
  KEY `auth_app_user_user_p_permission_id_cc1b2396_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_app_user_user_p_permission_id_cc1b2396_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_app_user_user_p_user_id_b7c37328_fk_auth_app_` FOREIGN KEY (`user_id`) REFERENCES `auth_app_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_app_user_user_permissions`
--

LOCK TABLES `auth_app_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_app_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_app_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (2,'Автор'),(1,'Администратор'),(4,'Модератор'),(3,'Ученик');
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
INSERT INTO `auth_group_permissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,16),(17,1,17),(18,1,18),(19,1,19),(20,1,20),(21,1,21),(22,1,22),(23,1,23),(24,1,24),(25,1,25),(26,1,26),(27,1,27),(28,1,28),(29,1,29),(30,1,30),(31,1,31),(32,1,32),(33,1,33),(34,1,34),(35,1,35),(36,1,36),(38,2,21),(39,2,22),(40,2,23),(41,2,24),(42,2,25),(43,2,26),(44,2,27),(45,2,28),(46,2,29),(47,2,30),(48,2,31),(37,2,32),(49,3,24),(51,3,28),(52,3,29),(50,3,32),(58,3,39),(57,3,42),(56,4,23),(55,4,27);
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add Курс',6,'add_course'),(22,'Can change Курс',6,'change_course'),(23,'Can delete Курс',6,'delete_course'),(24,'Can view Курс',6,'view_course'),(25,'Can add Урок',7,'add_lesson'),(26,'Can change Урок',7,'change_lesson'),(27,'Can delete Урок',7,'delete_lesson'),(28,'Can view Урок',7,'view_lesson'),(29,'Can add tracking',8,'add_tracking'),(30,'Can change tracking',8,'change_tracking'),(31,'Can delete tracking',8,'delete_tracking'),(32,'Can view tracking',8,'view_tracking'),(33,'Can add Участник',9,'add_user'),(34,'Can change Участник',9,'change_user'),(35,'Can delete Участник',9,'delete_user'),(36,'Can view Участник',9,'view_user'),(37,'Can modify course content',6,'modify_course'),(38,'Can modify lesson content',7,'modify_lesson'),(39,'Can add Отзыв',10,'add_review'),(40,'Can change Отзыв',10,'change_review'),(41,'Can delete Отзыв',10,'delete_review'),(42,'Can view Отзыв',10,'view_review'),(43,'Can add Token',11,'add_token'),(44,'Can change Token',11,'change_token'),(45,'Can delete Token',11,'delete_token'),(46,'Can view Token',11,'view_token'),(47,'Can add token',12,'add_tokenproxy'),(48,'Can change token',12,'change_tokenproxy'),(49,'Can delete token',12,'delete_tokenproxy'),(50,'Can view token',12,'view_tokenproxy');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authtoken_token`
--

DROP TABLE IF EXISTS `authtoken_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authtoken_token` (
  `key` varchar(40) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`key`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `authtoken_token_user_id_35299eff_fk_auth_app_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_app_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authtoken_token`
--

LOCK TABLES `authtoken_token` WRITE;
/*!40000 ALTER TABLE `authtoken_token` DISABLE KEYS */;
INSERT INTO `authtoken_token` VALUES ('17dfc95de59fc5b45d9e8ca00e8c9c73bd5b01db','2023-11-20 08:47:10.078137',1),('b7788de56868d62ed1af639518072a6ab48efcbf','2023-11-20 07:43:29.021195',22);
/*!40000 ALTER TABLE `authtoken_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_table`
--

DROP TABLE IF EXISTS `cache_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_table` (
  `cache_key` varchar(255) NOT NULL,
  `value` longtext NOT NULL,
  `expires` datetime(6) NOT NULL,
  PRIMARY KEY (`cache_key`),
  KEY `cache_table_expires` (`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_table`
--

LOCK TABLES `cache_table` WRITE;
/*!40000 ALTER TABLE `cache_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_authors`
--

DROP TABLE IF EXISTS `course_authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_authors` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `course_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `course_authors_course_id_user_id_9afbcd7e_uniq` (`course_id`,`user_id`),
  KEY `course_authors_user_id_70bd0668_fk_auth_app_user_id` (`user_id`),
  CONSTRAINT `course_authors_course_id_b378915c_fk_learning_course_id` FOREIGN KEY (`course_id`) REFERENCES `learning_course` (`id`),
  CONSTRAINT `course_authors_user_id_70bd0668_fk_auth_app_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_app_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_authors`
--

LOCK TABLES `course_authors` WRITE;
/*!40000 ALTER TABLE `course_authors` DISABLE KEYS */;
INSERT INTO `course_authors` VALUES (10,25,10),(19,25,22),(12,27,10),(13,28,10),(14,29,10),(15,30,10),(16,31,10),(17,32,22),(21,35,22);
/*!40000 ALTER TABLE `course_authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_app_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_app_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_app_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2023-09-22 19:17:49.148521','1','Django: Старт 2023-09-20',1,'[{\"added\": {}}]',6,1),(2,'2023-09-22 19:18:08.630889','1','Django: Старт 2023-09-20: Урок Урок 1',1,'[{\"added\": {}}]',7,1),(3,'2023-09-22 19:18:20.996321','2','Django: Старт 2023-09-20: Урок Урок 2',1,'[{\"added\": {}}]',7,1),(4,'2023-09-22 19:18:57.224881','2','Javascript: Старт 2023-09-20',1,'[{\"added\": {}}]',6,1),(5,'2023-09-22 19:19:21.789907','3','Javascript: Старт 2023-09-20: Урок Урок 1_Js',1,'[{\"added\": {}}]',7,1),(6,'2023-09-22 19:19:37.423061','4','Javascript: Старт 2023-09-20: Урок Урок 2_Js',1,'[{\"added\": {}}]',7,1),(7,'2023-10-02 09:11:53.088674','1','Администратор',1,'[{\"added\": {}}]',3,1),(8,'2023-10-02 09:12:54.167655','2','Автор',1,'[{\"added\": {}}]',3,1),(9,'2023-10-02 09:14:13.128521','3','Ученик',1,'[{\"added\": {}}]',3,1),(10,'2023-10-02 09:16:53.143974','1','Участник  : 1@1.ru',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',9,1),(11,'2023-10-02 09:17:54.240806','6','Участник Петр Петров: 2@2.ru',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',9,1),(12,'2023-10-02 09:18:31.554387','7','Участник Сидор Сидоров: 3@3.ru',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',9,1),(13,'2023-10-02 10:06:38.255907','7','Участник Сидор Сидоров: 3@3.ru',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',9,1),(14,'2023-10-06 14:31:29.478222','3','Ученик',2,'[{\"changed\": {\"fields\": [\"Permissions\"]}}]',3,1),(15,'2023-10-09 16:15:46.180427','1','Django: Старт 2023-09-20',2,'[{\"changed\": {\"fields\": [\"\\u0410\\u0432\\u0442\\u043e\\u0440 \\u043a\\u0443\\u0440\\u0441\\u0430\"]}}]',6,1),(16,'2023-10-21 17:19:01.784425','23','Test: Старт 2023-10-21',1,'[{\"added\": {}}]',6,1),(17,'2023-10-21 17:22:59.775182','5','Test: Старт 2023-10-21: Урок Урок 1:23',1,'[{\"added\": {}}]',7,1),(18,'2023-10-21 18:25:00.686080','6','Test: Старт 2023-10-21: Урок Урок 2:wee',1,'[{\"added\": {}}]',7,1),(19,'2023-10-21 18:25:17.815036','7','Test: Старт 2023-10-21: Урок Урок 3:wew',1,'[{\"added\": {}}]',7,1),(20,'2023-10-21 18:25:37.520471','8','Test: Старт 2023-10-21: Урок Урок 4:we',1,'[{\"added\": {}}]',7,1),(21,'2023-10-21 18:27:27.611939','9','Test: Старт 2023-10-21: Урок Урок 1w',1,'[{\"added\": {}}]',7,1),(22,'2023-10-21 18:28:17.851609','10','Test: Старт 2023-10-21: Урок wwewewe',1,'[{\"added\": {}}]',7,1),(23,'2023-10-30 16:10:16.179843','24','Django_4: Старт 2023-10-30',1,'[{\"added\": {}}]',6,1),(24,'2023-10-30 16:11:17.436076','14','Django_4: Старт 2023-10-30: Урок Django_4: Урок 1',1,'[{\"added\": {}}]',7,1),(25,'2023-10-30 16:11:29.194427','15','Django_4: Старт 2023-10-30: Урок Django_4: Урок 2',1,'[{\"added\": {}}]',7,1),(26,'2023-10-30 16:17:00.360942','7','Участник Сидор Сидоров: 3@3.ru',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',9,1),(27,'2023-11-05 12:36:20.812131','9','Участник Иван Иванов: 22@1.ru',1,'[{\"added\": {}}]',9,1),(28,'2023-11-05 12:42:54.495303','6','1: Старт 2023-09-20',3,'',6,1),(29,'2023-11-05 12:42:54.505605','18','23: Старт 2023-09-20',3,'',6,1),(30,'2023-11-05 12:42:54.511002','21','2323: Старт 2023-09-20',3,'',6,1),(31,'2023-11-05 12:42:54.516583','22','333434: Старт 2023-09-20',3,'',6,1),(32,'2023-11-05 12:42:54.521860','20','34: Старт 2023-09-20',3,'',6,1),(33,'2023-11-05 12:42:54.535892','19','4: Старт 2023-09-20',3,'',6,1),(34,'2023-11-05 12:42:54.542180','9','44: Старт 2023-09-20',3,'',6,1),(35,'2023-11-05 12:42:54.547203','11','444: Старт 2023-09-20',3,'',6,1),(36,'2023-11-05 12:42:54.551538','17','55: Старт 2023-09-20',3,'',6,1),(37,'2023-11-05 12:42:54.559474','12','555: Старт 2023-09-20',3,'',6,1),(38,'2023-11-05 12:42:54.565142','13','66: Старт 2023-09-20',3,'',6,1),(39,'2023-11-05 12:42:54.570525','14','7: Старт 2023-09-20',3,'',6,1),(40,'2023-11-05 12:42:54.577487','15','88: Старт 2023-09-20',3,'',6,1),(41,'2023-11-05 12:42:54.582241','16','99: Старт 2023-09-20',3,'',6,1),(42,'2023-11-05 12:42:54.586790','1','Django: Старт 2023-09-20',3,'',6,1),(43,'2023-11-05 12:42:54.595546','24','Django_4: Старт 2023-10-30',3,'',6,1),(44,'2023-11-05 12:42:54.602874','7','qwqwq: Старт 2022-12-10',3,'',6,1),(45,'2023-11-05 12:42:54.611383','23','Test: Старт 2023-10-21',3,'',6,1),(46,'2023-11-05 12:42:54.619254','8','wwwwwwwww: Старт 2023-09-20',3,'',6,1),(47,'2023-11-05 12:44:42.642552','9','Участник Иван Иванов: 22@1.ru',3,'',9,1),(48,'2023-11-05 12:44:42.649015','8','Участник Перс Персов: 4@4.ru',3,'',9,1),(49,'2023-11-05 12:44:42.654413','6','Участник Петр Петров: 2@2.ru',3,'',9,1),(50,'2023-11-05 12:44:42.674288','7','Участник Сидор Сидоров: 3@3.ru',3,'',9,1),(51,'2023-11-05 12:45:18.567910','1','Участник Дмитрий Шаронов: sharonov-db@mail.ru',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email\"]}}]',9,1),(52,'2023-11-05 12:46:41.942590','10','Участник Иван Иванов: 1@1.ru',1,'[{\"added\": {}}]',9,1),(53,'2023-11-05 12:48:08.803883','11','Участник Петр Петров: 3@3.ru',1,'[{\"added\": {}}]',9,1),(54,'2023-11-05 12:49:16.051906','12','Участник Максим Максимов: 4@4.ru',1,'[{\"added\": {}}]',9,1),(55,'2023-11-05 12:52:55.798360','25','Frontend-разработчик с нуля до middle: Старт 2023-11-05',1,'[{\"added\": {}}]',6,1),(56,'2023-11-05 12:53:25.950517','16','Frontend-разработчик с нуля до middle: Старт 2023-11-05: Урок HTML-вёрстка',1,'[{\"added\": {}}]',7,1),(57,'2023-11-05 12:56:18.168762','17','Frontend-разработчик с нуля до middle: Старт 2023-11-05: Урок Мобильная и адаптивная вёрстка',1,'[{\"added\": {}}]',7,1),(58,'2023-11-05 12:56:34.586195','18','Frontend-разработчик с нуля до middle: Старт 2023-11-05: Урок Основы программирования',1,'[{\"added\": {}}]',7,1),(59,'2023-11-05 12:56:47.920994','19','Frontend-разработчик с нуля до middle: Старт 2023-11-05: Урок Git — система контроля версий',1,'[{\"added\": {}}]',7,1),(60,'2023-11-05 12:56:58.974172','20','Frontend-разработчик с нуля до middle: Старт 2023-11-05: Урок Основы JavaScript',1,'[{\"added\": {}}]',7,1),(61,'2023-11-05 12:57:14.809055','21','Frontend-разработчик с нуля до middle: Старт 2023-11-05: Урок Основы JavaScript в браузере',1,'[{\"added\": {}}]',7,1),(62,'2023-11-05 12:57:25.496930','22','Frontend-разработчик с нуля до middle: Старт 2023-11-05: Урок Продвинутый JavaScript',1,'[{\"added\": {}}]',7,1),(63,'2023-11-05 12:57:39.486904','23','Frontend-разработчик с нуля до middle: Старт 2023-11-05: Урок Продвинутый JavaScript в браузере',1,'[{\"added\": {}}]',7,1),(64,'2023-11-05 12:57:50.417870','24','Frontend-разработчик с нуля до middle: Старт 2023-11-05: Урок Библиотека React',1,'[{\"added\": {}}]',7,1),(65,'2023-11-05 12:58:29.619305','26','Тестировщик: Старт 2023-11-05',1,'[{\"added\": {}}]',6,1),(66,'2023-11-05 12:58:49.707218','25','Тестировщик: Старт 2023-11-05: Урок Ручное тестирование веб-приложений',1,'[{\"added\": {}}]',7,1),(67,'2023-11-05 12:58:59.991030','26','Тестировщик: Старт 2023-11-05: Урок Вёрстка сайта на HTML и CSS',1,'[{\"added\": {}}]',7,1),(68,'2023-11-05 13:00:51.909826','27','Тестировщик: Старт 2023-11-05: Урок Git - система контроля версий',1,'[{\"added\": {}}]',7,1),(69,'2023-11-05 13:01:02.318876','28','Тестировщик: Старт 2023-11-05: Урок Java для тестировщиков',1,'[{\"added\": {}}]',7,1),(70,'2023-11-05 13:01:14.132520','29','Тестировщик: Старт 2023-11-05: Урок Английский язык для начинающих разработчиков',1,'[{\"added\": {}}]',7,1),(71,'2023-11-05 13:01:24.691195','30','Тестировщик: Старт 2023-11-05: Урок Автоматизированное тестирование',1,'[{\"added\": {}}]',7,1),(72,'2023-11-05 13:02:31.103778','27','Java-разработчик с нуля: Старт 2023-10-05',1,'[{\"added\": {}}]',6,1),(73,'2023-11-05 13:02:47.063555','31','Java-разработчик с нуля: Старт 2023-10-05: Урок Основы Java',1,'[{\"added\": {}}]',7,1),(74,'2023-11-05 13:03:01.695329','32','Java-разработчик с нуля: Старт 2023-10-05: Урок Объектно-ориентированное программирование в Java',1,'[{\"added\": {}}]',7,1),(75,'2023-11-05 13:03:19.421230','33','Java-разработчик с нуля: Старт 2023-10-05: Урок Git',1,'[{\"added\": {}}]',7,1),(76,'2023-11-05 13:03:29.241824','34','Java-разработчик с нуля: Старт 2023-10-05: Урок Java Core',1,'[{\"added\": {}}]',7,1),(77,'2023-11-05 13:03:39.734156','35','Java-разработчик с нуля: Старт 2023-10-05: Урок Шаблоны проектирования',1,'[{\"added\": {}}]',7,1),(78,'2023-11-05 13:03:51.626746','36','Java-разработчик с нуля: Старт 2023-10-05: Урок Многопоточное и функциональное программирование',1,'[{\"added\": {}}]',7,1),(79,'2023-11-05 13:04:07.590342','37','Java-разработчик с нуля: Старт 2023-10-05: Урок Spring Boot, deployment и инфраструктура',1,'[{\"added\": {}}]',7,1),(80,'2023-11-05 13:04:20.560010','38','Java-разработчик с нуля: Старт 2023-10-05: Урок Spring: хранение данных и организация безопасности',1,'[{\"added\": {}}]',7,1),(81,'2023-11-05 13:05:33.462896','28','Разработчик на C++: Старт 2023-11-09',1,'[{\"added\": {}}]',6,1),(82,'2023-11-05 13:05:47.485445','39','Разработчик на C++: Старт 2023-11-09: Урок Основы программирования на C++',1,'[{\"added\": {}}]',7,1),(83,'2023-11-05 13:06:03.593582','40','Разработчик на C++: Старт 2023-11-09: Урок Система контроля версий Gi',1,'[{\"added\": {}}]',7,1),(84,'2023-11-05 13:06:14.487790','41','Разработчик на C++: Старт 2023-11-09: Урок Базовое программирование на C++',1,'[{\"added\": {}}]',7,1),(85,'2023-11-05 13:06:25.023440','42','Разработчик на C++: Старт 2023-11-09: Урок Алгоритмы и структуры данных',1,'[{\"added\": {}}]',7,1),(86,'2023-11-05 13:06:34.793176','43','Разработчик на C++: Старт 2023-11-09: Урок Продвинутое программирование на C++',1,'[{\"added\": {}}]',7,1),(87,'2023-11-05 13:06:44.178628','44','Разработчик на C++: Старт 2023-11-09: Урок Работа с базами данных',1,'[{\"added\": {}}]',7,1),(88,'2023-11-05 13:07:04.948454','45','Разработчик на C++: Старт 2023-11-09: Урок Многопоточное и асинхронное программирование',1,'[{\"added\": {}}]',7,1),(89,'2023-11-05 13:07:14.833396','46','Разработчик на C++: Старт 2023-11-09: Урок Шаблоны проектирования в C++',1,'[{\"added\": {}}]',7,1),(90,'2023-11-05 13:07:24.287405','47','Разработчик на C++: Старт 2023-11-09: Урок Кроссплатформенная разработка на Qt',1,'[{\"added\": {}}]',7,1),(91,'2023-11-05 13:07:32.793510','48','Разработчик на C++: Старт 2023-11-09: Урок Разработка умных гаджетов (IoT)',1,'[{\"added\": {}}]',7,1),(92,'2023-11-05 13:07:46.631225','49','Разработчик на C++: Старт 2023-11-09: Урок Разработка видеоигр на Unreal Engine 5',1,'[{\"added\": {}}]',7,1),(93,'2023-11-05 13:08:15.637058','29','Сетевой инженер: Старт 2023-11-05',1,'[{\"added\": {}}]',6,1),(94,'2023-11-05 13:08:30.137224','50','Сетевой инженер: Старт 2023-11-05: Урок Введение в сетевые технологии',1,'[{\"added\": {}}]',7,1),(95,'2023-11-05 13:08:39.590970','51','Сетевой инженер: Старт 2023-11-05: Урок Основы коммутации и маршрутизации',1,'[{\"added\": {}}]',7,1),(96,'2023-11-05 13:08:48.774367','52','Сетевой инженер: Старт 2023-11-05: Урок Построение отказоустойчивых сетей',1,'[{\"added\": {}}]',7,1),(97,'2023-11-05 13:09:00.989857','53','Сетевой инженер: Старт 2023-11-05: Урок Динамическая маршрутизация',1,'[{\"added\": {}}]',7,1),(98,'2023-11-05 13:09:10.307402','54','Сетевой инженер: Старт 2023-11-05: Урок Сетевая безопасность',1,'[{\"added\": {}}]',7,1),(99,'2023-11-05 13:09:19.563091','55','Сетевой инженер: Старт 2023-11-05: Урок Беспроводные сети',1,'[{\"added\": {}}]',7,1),(100,'2023-11-05 13:09:29.959459','56','Сетевой инженер: Старт 2023-11-05: Урок Методы обеспечения качества обслуживания (QoS)',1,'[{\"added\": {}}]',7,1),(101,'2023-11-05 13:09:41.804169','57','Сетевой инженер: Старт 2023-11-05: Урок Основы проектирования корпоративных сетей',1,'[{\"added\": {}}]',7,1),(102,'2023-11-05 13:09:49.849413','58','Сетевой инженер: Старт 2023-11-05: Урок Инструменты эксплуатации',1,'[{\"added\": {}}]',7,1),(103,'2023-11-05 13:10:00.844799','59','Сетевой инженер: Старт 2023-11-05: Урок Основы IP-телефонии',1,'[{\"added\": {}}]',7,1),(104,'2023-11-05 13:21:45.483046','30','SQL и получение данных: Старт 2023-11-07',1,'[{\"added\": {}}]',6,1),(105,'2023-11-05 13:21:58.663252','60','SQL и получение данных: Старт 2023-11-07: Урок Введение в SQL. Установка ПО',1,'[{\"added\": {}}]',7,1),(106,'2023-11-05 13:22:19.944120','61','SQL и получение данных: Старт 2023-11-07: Урок Работа с базами данных_',1,'[{\"added\": {}}]',7,1),(107,'2023-11-05 13:22:30.869249','62','SQL и получение данных: Старт 2023-11-07: Урок Основы SQL',1,'[{\"added\": {}}]',7,1),(108,'2023-11-05 13:22:42.675811','63','SQL и получение данных: Старт 2023-11-07: Урок Углубление в SQL',1,'[{\"added\": {}}]',7,1),(109,'2023-11-05 13:22:52.977249','64','SQL и получение данных: Старт 2023-11-07: Урок Работа с PostgresSQL. Часть 1',1,'[{\"added\": {}}]',7,1),(110,'2023-11-05 13:23:02.401323','65','SQL и получение данных: Старт 2023-11-07: Урок Работа с PostgresSQL. Часть 2',1,'[{\"added\": {}}]',7,1),(111,'2023-11-05 13:23:17.178979','66','SQL и получение данных: Старт 2023-11-07: Урок Продвинутый SQL',1,'[{\"added\": {}}]',7,1),(112,'2023-11-05 13:24:17.602510','31','Разработчик игр на Unity: Старт 2023-11-27',1,'[{\"added\": {}}]',6,1),(113,'2023-11-05 13:24:33.838419','67','Разработчик игр на Unity: Старт 2023-11-27: Урок Как устроена игра',1,'[{\"added\": {}}]',7,1),(114,'2023-11-05 13:24:42.487479','68','Разработчик игр на Unity: Старт 2023-11-27: Урок Введение в профессию',1,'[{\"added\": {}}]',7,1),(115,'2023-11-05 13:24:51.204877','69','Разработчик игр на Unity: Старт 2023-11-27: Урок Работа с редактором Unity',1,'[{\"added\": {}}]',7,1),(116,'2023-11-05 13:25:03.661244','70','Разработчик игр на Unity: Старт 2023-11-27: Урок Программирование на C#',1,'[{\"added\": {}}]',7,1),(117,'2023-11-05 13:25:14.717230','71','Разработчик игр на Unity: Старт 2023-11-27: Урок C# в Unity',1,'[{\"added\": {}}]',7,1),(118,'2023-11-05 13:25:23.910190','72','Разработчик игр на Unity: Старт 2023-11-27: Урок Разработка игры на Unity',1,'[{\"added\": {}}]',7,1),(119,'2023-11-05 13:25:34.787167','73','Разработчик игр на Unity: Старт 2023-11-27: Урок Прототипирование в Unity',1,'[{\"added\": {}}]',7,1),(120,'2023-11-20 10:53:40.660217','22','Участник Сергей Иванов: avtor@avtor.ru',2,'[{\"changed\": {\"fields\": [\"Groups\", \"Username\"]}}]',9,1),(121,'2023-11-27 11:31:20.168934','22','Участник Сергей Иванов: avtor@avtor.ru',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',9,1),(122,'2023-11-28 12:10:27.300237','25','Frontend-разработчик с нуля до middle: Старт 2023-11-05',2,'[{\"changed\": {\"fields\": [\"\\u0410\\u0432\\u0442\\u043e\\u0440 \\u043a\\u0443\\u0440\\u0441\\u0430\"]}}]',6,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(11,'authtoken','token'),(12,'authtoken','tokenproxy'),(9,'auth_app','user'),(4,'contenttypes','contenttype'),(6,'learning','course'),(7,'learning','lesson'),(10,'learning','review'),(8,'learning','tracking'),(5,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-09-15 13:38:30.311006'),(2,'contenttypes','0002_remove_content_type_name','2023-09-15 13:38:30.414759'),(3,'auth','0001_initial','2023-09-15 13:38:30.957874'),(4,'auth','0002_alter_permission_name_max_length','2023-09-15 13:38:31.064580'),(5,'auth','0003_alter_user_email_max_length','2023-09-15 13:38:31.073844'),(6,'auth','0004_alter_user_username_opts','2023-09-15 13:38:31.087807'),(7,'auth','0005_alter_user_last_login_null','2023-09-15 13:38:31.096231'),(8,'auth','0006_require_contenttypes_0002','2023-09-15 13:38:31.113862'),(9,'auth','0007_alter_validators_add_error_messages','2023-09-15 13:38:31.126231'),(10,'auth','0008_alter_user_username_max_length','2023-09-15 13:38:31.138362'),(11,'auth','0009_alter_user_last_name_max_length','2023-09-15 13:38:31.157912'),(12,'auth','0010_alter_group_name_max_length','2023-09-15 13:38:31.256054'),(13,'auth','0011_update_proxy_permissions','2023-09-15 13:38:31.269507'),(14,'auth','0012_alter_user_first_name_max_length','2023-09-15 13:38:31.278127'),(15,'auth_app','0001_initial','2023-09-15 13:38:31.762137'),(16,'admin','0001_initial','2023-09-15 13:38:31.969925'),(17,'admin','0002_logentry_remove_auto_add','2023-09-15 13:38:31.979464'),(18,'admin','0003_logentry_add_action_flag_choices','2023-09-15 13:38:31.989948'),(19,'learning','0001_initial','2023-09-15 13:38:32.453400'),(20,'sessions','0001_initial','2023-09-15 13:38:32.516827'),(21,'learning','0002_alter_course_options_alter_lesson_options','2023-10-02 09:45:13.299254'),(22,'learning','0003_review','2023-10-06 14:29:50.043778'),(23,'learning','0004_alter_review_unique_together','2023-10-06 14:29:50.118711'),(24,'learning','0005_alter_lesson_course','2023-10-09 16:13:58.597143'),(25,'learning','0006_remove_course_author_course_authors_and_more','2023-10-09 16:13:59.260351'),(26,'learning','0007_alter_lesson_course','2023-10-20 17:23:16.352674'),(27,'learning','0008_alter_course_title','2023-11-05 12:50:52.596675'),(28,'learning','0009_alter_lesson_name_alter_lesson_preview','2023-11-05 12:54:22.249814'),(29,'learning','0010_alter_lesson_name_alter_lesson_preview','2023-11-05 12:54:52.549024'),(30,'learning','0011_alter_course_title','2023-11-05 12:55:21.562445'),(31,'auth_app','0002_alter_user_email','2023-11-07 12:27:12.314220'),(32,'auth_app','0002_remove_user_username','2023-11-08 04:00:56.908383'),(33,'auth_app','0003_user_username','2023-11-08 04:00:56.971068'),(34,'authtoken','0001_initial','2023-11-20 07:42:02.368688'),(35,'authtoken','0002_auto_20160226_1747','2023-11-20 07:42:02.436865'),(36,'authtoken','0003_tokenproxy','2023-11-20 07:42:02.445002');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('5hi2vd7mmr8f0u6vz94lka9ha86curve','eyJ2aWV3cyI6eyJjb3Vyc2VfaWQiOjF9fQ:1r2U2w:BwuY1NSQsu2d3Zhxyba9tRRBuAVnMz8_S8YPF4P2Wn4','2023-11-13 11:09:58.689463'),('dva5me7csd2kmoixhrnnm2yt3hxnton3','.eJxVjssOgyAURP-FdUMUFcFl9_0GcuFeK20DDWgfMf57tXHjds7MyczMZMrZx2Do8_Tpy7rixAxM42CmTMl4ZB0Tgh1CC-5OYSN4g3CN3MUwJm_5VuE7zfwSkR7nvXsQDJCHdU2NpRKqugWpAZCEVc6RAoe21lI0NZRFi71GVZFrkHpJWlClpLQKBdAqfXl6Z9bNzMUpZfr_LZflB-dpSQs:1r2Ugy:wuYGc6gxUUE2UjpT_1zkwpApDbkPNvl0DuxrJ9vyUpQ','2023-11-13 11:51:20.387072');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `learning_course`
--

DROP TABLE IF EXISTS `learning_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `learning_course` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` longtext,
  `start_date` date NOT NULL,
  `duration` int unsigned NOT NULL,
  `price` int unsigned NOT NULL,
  `count_lessons` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`),
  CONSTRAINT `learning_course_chk_1` CHECK ((`duration` >= 0)),
  CONSTRAINT `learning_course_chk_2` CHECK ((`price` >= 0)),
  CONSTRAINT `learning_course_chk_3` CHECK ((`count_lessons` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `learning_course`
--

LOCK TABLES `learning_course` WRITE;
/*!40000 ALTER TABLE `learning_course` DISABLE KEYS */;
INSERT INTO `learning_course` VALUES (25,'Frontend-разработчик с нуля до middle','Frontend-разработчик с нуля до middle','2023-11-05',9,1500,9),(27,'Java-разработчик с нуля','Java-разработчик с нуля','2023-10-05',8,2900,8),(28,'Разработчик на C++','Разработчик на C++','2023-11-09',11,6500,11),(29,'Сетевой инженер','Сетевой инженер','2023-11-05',10,7900,10),(30,'SQL и получение данных','SQL и получение данных','2023-11-07',7,4500,7),(31,'Разработчик игр на Unity','Разработчик игр на Unity','2023-11-27',7,7500,7),(32,'ererer','ererre','2023-11-20',1,1,1),(35,'Тестирвоание API через POSTMAN','Для тестировщиков','2023-02-24',2,21000,15);
/*!40000 ALTER TABLE `learning_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `learning_lesson`
--

DROP TABLE IF EXISTS `learning_lesson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `learning_lesson` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `preview` longtext NOT NULL,
  `course_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `learning_lesson_course_id_55d253b7_fk_learning_course_id` (`course_id`),
  CONSTRAINT `learning_lesson_course_id_55d253b7_fk_learning_course_id` FOREIGN KEY (`course_id`) REFERENCES `learning_course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `learning_lesson`
--

LOCK TABLES `learning_lesson` WRITE;
/*!40000 ALTER TABLE `learning_lesson` DISABLE KEYS */;
INSERT INTO `learning_lesson` VALUES (16,'HTML-вёрстка','HTML-вёрстка с нуля до первого макета',25),(17,'Мобильная и адаптивная вёрстка','Мобильная и адаптивная вёрстка',25),(18,'Основы программирования','Основы программирования',25),(19,'Git — система контроля версий','Git — система контроля версий',25),(20,'Основы JavaScript','Основы JavaScript',25),(21,'Основы JavaScript в браузере','Основы JavaScript в браузере',25),(22,'Продвинутый JavaScript','Продвинутый JavaScript',25),(23,'Продвинутый JavaScript в браузере','Продвинутый JavaScript в браузере',25),(24,'Библиотека React','Библиотека React',25),(31,'Основы Java','Основы Java',27),(32,'Объектно-ориентированное программирование в Java','Объектно-ориентированное программирование в Java',27),(33,'Git','Git',27),(34,'Java Core','Java Core',27),(35,'Шаблоны проектирования','Шаблоны проектирования',27),(36,'Многопоточное и функциональное программирование','Многопоточное и функциональное программирование',27),(37,'Spring Boot, deployment и инфраструктура','Spring Boot, deployment и инфраструктура',27),(38,'Spring: хранение данных и организация безопасности','Spring: хранение данных и организация безопасности',27),(39,'Основы программирования на C++','Основы программирования на C++',28),(40,'Система контроля версий Gi','Система контроля версий Gi',28),(41,'Базовое программирование на C++','Базовое программирование на C++',28),(42,'Алгоритмы и структуры данных','Алгоритмы и структуры данных',28),(43,'Продвинутое программирование на C++','Продвинутое программирование на C++',28),(44,'Работа с базами данных','Работа с базами данных',28),(45,'Многопоточное и асинхронное программирование','Многопоточное и асинхронное программирование',28),(46,'Шаблоны проектирования в C++','Шаблоны проектирования в C++',28),(47,'Кроссплатформенная разработка на Qt','Кроссплатформенная разработка на Qt',28),(48,'Разработка умных гаджетов (IoT)','Разработка умных гаджетов (IoT)',28),(49,'Разработка видеоигр на Unreal Engine 5','Разработка видеоигр на Unreal Engine 5',28),(50,'Введение в сетевые технологии','Введение в сетевые технологии',29),(51,'Основы коммутации и маршрутизации','Основы коммутации и маршрутизации',29),(52,'Построение отказоустойчивых сетей','Построение отказоустойчивых сетей',29),(53,'Динамическая маршрутизация','Динамическая маршрутизация',29),(54,'Сетевая безопасность','Сетевая безопасность',29),(55,'Беспроводные сети','Беспроводные сети',29),(56,'Методы обеспечения качества обслуживания (QoS)','Методы обеспечения качества обслуживания (QoS)',29),(57,'Основы проектирования корпоративных сетей','Основы проектирования корпоративных сетей',29),(58,'Инструменты эксплуатации','Инструменты эксплуатации',29),(59,'Основы IP-телефонии','Основы IP-телефонии',29),(60,'Введение в SQL. Установка ПО','Введение в SQL. Установка ПО',30),(61,'Работа с базами данных_','Работа с базами данных',30),(62,'Основы SQL','Основы SQL',30),(63,'Углубление в SQL','Углубление в SQL',30),(64,'Работа с PostgresSQL. Часть 1','Работа с PostgresSQL. Часть 1',30),(65,'Работа с PostgresSQL. Часть 2','Работа с PostgresSQL. Часть 2',30),(66,'Продвинутый SQL','Продвинутый SQL',30),(67,'Как устроена игра','Как устроена игра',31),(68,'Введение в профессию','Введение в профессию',31),(69,'Работа с редактором Unity','Работа с редактором Unity',31),(70,'Программирование на C#','Программирование на C#',31),(71,'C# в Unity','C# в Unity',31),(72,'Разработка игры на Unity','Разработка игры на Unity',31),(73,'Прототипирование в Unity','Прототипирование в Unity',31);
/*!40000 ALTER TABLE `learning_lesson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `learning_review`
--

DROP TABLE IF EXISTS `learning_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `learning_review` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `content` longtext NOT NULL,
  `sent_date` datetime(6) NOT NULL,
  `course_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `learning_review_course_id_8aa0576b_fk_learning_course_id` (`course_id`),
  KEY `learning_review_user_id_5e8cc65c` (`user_id`),
  CONSTRAINT `learning_review_course_id_8aa0576b_fk_learning_course_id` FOREIGN KEY (`course_id`) REFERENCES `learning_course` (`id`),
  CONSTRAINT `learning_review_user_id_5e8cc65c_fk_auth_app_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_app_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `learning_review`
--

LOCK TABLES `learning_review` WRITE;
/*!40000 ALTER TABLE `learning_review` DISABLE KEYS */;
INSERT INTO `learning_review` VALUES (30,'hgyui','2023-11-13 10:14:30.936467',25,22);
/*!40000 ALTER TABLE `learning_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `learning_tracking`
--

DROP TABLE IF EXISTS `learning_tracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `learning_tracking` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `passed` tinyint(1) NOT NULL,
  `lesson_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `learning_tracking_lesson_id_1d47bc83_fk_learning_lesson_id` (`lesson_id`),
  KEY `learning_tracking_user_id_0c7d08b2_fk_auth_app_user_id` (`user_id`),
  CONSTRAINT `learning_tracking_lesson_id_1d47bc83_fk_learning_lesson_id` FOREIGN KEY (`lesson_id`) REFERENCES `learning_lesson` (`id`),
  CONSTRAINT `learning_tracking_user_id_0c7d08b2_fk_auth_app_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_app_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `learning_tracking`
--

LOCK TABLES `learning_tracking` WRITE;
/*!40000 ALTER TABLE `learning_tracking` DISABLE KEYS */;
INSERT INTO `learning_tracking` VALUES (13,0,19,22),(14,1,16,22),(15,0,24,22),(16,1,17,22),(17,0,20,22),(18,0,21,22),(19,0,18,22),(20,0,22,22),(21,0,23,22),(30,0,33,31),(31,0,34,31),(32,0,37,31),(33,0,38,31),(34,0,36,31),(35,0,32,31),(36,0,31,31),(37,0,35,31),(38,0,55,31),(39,0,50,31),(40,0,53,31),(41,0,58,31),(42,0,56,31),(43,0,59,31),(44,0,51,31),(45,0,57,31),(46,0,52,31),(47,0,54,31),(48,0,60,31),(49,0,62,31),(50,0,66,31),(51,0,64,31),(52,0,65,31),(53,0,61,31),(54,0,63,31),(55,0,60,22),(56,0,62,22),(57,0,66,22),(58,0,64,22),(59,0,65,22),(60,0,61,22),(61,0,63,22),(62,0,60,13),(63,0,62,13),(64,0,66,13),(65,0,64,13),(66,0,65,13),(67,0,61,13),(68,0,63,13);
/*!40000 ALTER TABLE `learning_tracking` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-28 16:55:53
