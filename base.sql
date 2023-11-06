-- MySQL dump 10.13  Distrib 8.0.30, for Linux (x86_64)
--
-- Host: localhost    Database: lms_project
-- ------------------------------------------------------
-- Server version	8.0.30-alt1.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
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
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `email` varchar(254) NOT NULL,
  `birthday` date NOT NULL,
  `description` longtext,
  `avatar` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_app_user`
--

LOCK TABLES `auth_app_user` WRITE;
/*!40000 ALTER TABLE `auth_app_user` DISABLE KEYS */;
INSERT INTO `auth_app_user` VALUES (1,'pbkdf2_sha256$600000$9tfLcVEn3gR4UghjDQvgzf$rVsi8ceOupr4qa4lbKl3XN1USRxkYeJzDcf1IK6cWLs=','2023-11-05 13:31:15.228608',1,'admin','Дмитрий','Шаронов',1,1,'2023-09-15 13:40:12.000000','sharonov-db@mail.ru','1979-02-16','',''),(10,'335',NULL,0,'avtor1','Иван','Иванов',0,1,'2023-11-05 12:45:49.000000','1@1.ru','2000-11-09','',''),(11,'335',NULL,0,'moderator1','Петр','Петров',0,1,'2023-11-05 12:46:57.000000','3@3.ru','2004-09-06','',''),(12,'335',NULL,0,'student1','Максим','Максимов',0,1,'2023-11-05 12:48:20.000000','4@4.ru','2002-07-20','','');
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_app_user_groups`
--

LOCK TABLES `auth_app_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_app_user_groups` DISABLE KEYS */;
INSERT INTO `auth_app_user_groups` VALUES (1,1,1),(10,10,2),(12,11,4),(13,12,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add Курс',6,'add_course'),(22,'Can change Курс',6,'change_course'),(23,'Can delete Курс',6,'delete_course'),(24,'Can view Курс',6,'view_course'),(25,'Can add Урок',7,'add_lesson'),(26,'Can change Урок',7,'change_lesson'),(27,'Can delete Урок',7,'delete_lesson'),(28,'Can view Урок',7,'view_lesson'),(29,'Can add tracking',8,'add_tracking'),(30,'Can change tracking',8,'change_tracking'),(31,'Can delete tracking',8,'delete_tracking'),(32,'Can view tracking',8,'view_tracking'),(33,'Can add Участник',9,'add_user'),(34,'Can change Участник',9,'change_user'),(35,'Can delete Участник',9,'delete_user'),(36,'Can view Участник',9,'view_user'),(37,'Can modify course content',6,'modify_course'),(38,'Can modify lesson content',7,'modify_lesson'),(39,'Can add Отзыв',10,'add_review'),(40,'Can change Отзыв',10,'change_review'),(41,'Can delete Отзыв',10,'delete_review'),(42,'Can view Отзыв',10,'view_review');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_authors`
--

LOCK TABLES `course_authors` WRITE;
/*!40000 ALTER TABLE `course_authors` DISABLE KEYS */;
INSERT INTO `course_authors` VALUES (10,25,10),(11,26,10),(12,27,10),(13,28,10),(14,29,10),(15,30,10),(16,31,10);
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
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2023-09-22 19:17:49.148521','1','Django: Старт 2023-09-20',1,'[{\"added\": {}}]',6,1),(2,'2023-09-22 19:18:08.630889','1','Django: Старт 2023-09-20: Урок Урок 1',1,'[{\"added\": {}}]',7,1),(3,'2023-09-22 19:18:20.996321','2','Django: Старт 2023-09-20: Урок Урок 2',1,'[{\"added\": {}}]',7,1),(4,'2023-09-22 19:18:57.224881','2','Javascript: Старт 2023-09-20',1,'[{\"added\": {}}]',6,1),(5,'2023-09-22 19:19:21.789907','3','Javascript: Старт 2023-09-20: Урок Урок 1_Js',1,'[{\"added\": {}}]',7,1),(6,'2023-09-22 19:19:37.423061','4','Javascript: Старт 2023-09-20: Урок Урок 2_Js',1,'[{\"added\": {}}]',7,1),(7,'2023-10-02 09:11:53.088674','1','Администратор',1,'[{\"added\": {}}]',3,1),(8,'2023-10-02 09:12:54.167655','2','Автор',1,'[{\"added\": {}}]',3,1),(9,'2023-10-02 09:14:13.128521','3','Ученик',1,'[{\"added\": {}}]',3,1),(10,'2023-10-02 09:16:53.143974','1','Участник  : 1@1.ru',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',9,1),(11,'2023-10-02 09:17:54.240806','6','Участник Петр Петров: 2@2.ru',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',9,1),(12,'2023-10-02 09:18:31.554387','7','Участник Сидор Сидоров: 3@3.ru',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',9,1),(13,'2023-10-02 10:06:38.255907','7','Участник Сидор Сидоров: 3@3.ru',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',9,1),(14,'2023-10-06 14:31:29.478222','3','Ученик',2,'[{\"changed\": {\"fields\": [\"Permissions\"]}}]',3,1),(15,'2023-10-09 16:15:46.180427','1','Django: Старт 2023-09-20',2,'[{\"changed\": {\"fields\": [\"\\u0410\\u0432\\u0442\\u043e\\u0440 \\u043a\\u0443\\u0440\\u0441\\u0430\"]}}]',6,1),(16,'2023-10-21 17:19:01.784425','23','Test: Старт 2023-10-21',1,'[{\"added\": {}}]',6,1),(17,'2023-10-21 17:22:59.775182','5','Test: Старт 2023-10-21: Урок Урок 1:23',1,'[{\"added\": {}}]',7,1),(18,'2023-10-21 18:25:00.686080','6','Test: Старт 2023-10-21: Урок Урок 2:wee',1,'[{\"added\": {}}]',7,1),(19,'2023-10-21 18:25:17.815036','7','Test: Старт 2023-10-21: Урок Урок 3:wew',1,'[{\"added\": {}}]',7,1),(20,'2023-10-21 18:25:37.520471','8','Test: Старт 2023-10-21: Урок Урок 4:we',1,'[{\"added\": {}}]',7,1),(21,'2023-10-21 18:27:27.611939','9','Test: Старт 2023-10-21: Урок Урок 1w',1,'[{\"added\": {}}]',7,1),(22,'2023-10-21 18:28:17.851609','10','Test: Старт 2023-10-21: Урок wwewewe',1,'[{\"added\": {}}]',7,1),(23,'2023-10-30 16:10:16.179843','24','Django_4: Старт 2023-10-30',1,'[{\"added\": {}}]',6,1),(24,'2023-10-30 16:11:17.436076','14','Django_4: Старт 2023-10-30: Урок Django_4: Урок 1',1,'[{\"added\": {}}]',7,1),(25,'2023-10-30 16:11:29.194427','15','Django_4: Старт 2023-10-30: Урок Django_4: Урок 2',1,'[{\"added\": {}}]',7,1),(26,'2023-10-30 16:17:00.360942','7','Участник Сидор Сидоров: 3@3.ru',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',9,1),(27,'2023-11-05 12:36:20.812131','9','Участник Иван Иванов: 22@1.ru',1,'[{\"added\": {}}]',9,1),(28,'2023-11-05 12:42:54.495303','6','1: Старт 2023-09-20',3,'',6,1),(29,'2023-11-05 12:42:54.505605','18','23: Старт 2023-09-20',3,'',6,1),(30,'2023-11-05 12:42:54.511002','21','2323: Старт 2023-09-20',3,'',6,1),(31,'2023-11-05 12:42:54.516583','22','333434: Старт 2023-09-20',3,'',6,1),(32,'2023-11-05 12:42:54.521860','20','34: Старт 2023-09-20',3,'',6,1),(33,'2023-11-05 12:42:54.535892','19','4: Старт 2023-09-20',3,'',6,1),(34,'2023-11-05 12:42:54.542180','9','44: Старт 2023-09-20',3,'',6,1),(35,'2023-11-05 12:42:54.547203','11','444: Старт 2023-09-20',3,'',6,1),(36,'2023-11-05 12:42:54.551538','17','55: Старт 2023-09-20',3,'',6,1),(37,'2023-11-05 12:42:54.559474','12','555: Старт 2023-09-20',3,'',6,1),(38,'2023-11-05 12:42:54.565142','13','66: Старт 2023-09-20',3,'',6,1),(39,'2023-11-05 12:42:54.570525','14','7: Старт 2023-09-20',3,'',6,1),(40,'2023-11-05 12:42:54.577487','15','88: Старт 2023-09-20',3,'',6,1),(41,'2023-11-05 12:42:54.582241','16','99: Старт 2023-09-20',3,'',6,1),(42,'2023-11-05 12:42:54.586790','1','Django: Старт 2023-09-20',3,'',6,1),(43,'2023-11-05 12:42:54.595546','24','Django_4: Старт 2023-10-30',3,'',6,1),(44,'2023-11-05 12:42:54.602874','7','qwqwq: Старт 2022-12-10',3,'',6,1),(45,'2023-11-05 12:42:54.611383','23','Test: Старт 2023-10-21',3,'',6,1),(46,'2023-11-05 12:42:54.619254','8','wwwwwwwww: Старт 2023-09-20',3,'',6,1),(47,'2023-11-05 12:44:42.642552','9','Участник Иван Иванов: 22@1.ru',3,'',9,1),(48,'2023-11-05 12:44:42.649015','8','Участник Перс Персов: 4@4.ru',3,'',9,1),(49,'2023-11-05 12:44:42.654413','6','Участник Петр Петров: 2@2.ru',3,'',9,1),(50,'2023-11-05 12:44:42.674288','7','Участник Сидор Сидоров: 3@3.ru',3,'',9,1),(51,'2023-11-05 12:45:18.567910','1','Участник Дмитрий Шаронов: sharonov-db@mail.ru',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email\"]}}]',9,1),(52,'2023-11-05 12:46:41.942590','10','Участник Иван Иванов: 1@1.ru',1,'[{\"added\": {}}]',9,1),(53,'2023-11-05 12:48:08.803883','11','Участник Петр Петров: 3@3.ru',1,'[{\"added\": {}}]',9,1),(54,'2023-11-05 12:49:16.051906','12','Участник Максим Максимов: 4@4.ru',1,'[{\"added\": {}}]',9,1),(55,'2023-11-05 12:52:55.798360','25','Frontend-разработчик с нуля до middle: Старт 2023-11-05',1,'[{\"added\": {}}]',6,1),(56,'2023-11-05 12:53:25.950517','16','Frontend-разработчик с нуля до middle: Старт 2023-11-05: Урок HTML-вёрстка',1,'[{\"added\": {}}]',7,1),(57,'2023-11-05 12:56:18.168762','17','Frontend-разработчик с нуля до middle: Старт 2023-11-05: Урок Мобильная и адаптивная вёрстка',1,'[{\"added\": {}}]',7,1),(58,'2023-11-05 12:56:34.586195','18','Frontend-разработчик с нуля до middle: Старт 2023-11-05: Урок Основы программирования',1,'[{\"added\": {}}]',7,1),(59,'2023-11-05 12:56:47.920994','19','Frontend-разработчик с нуля до middle: Старт 2023-11-05: Урок Git — система контроля версий',1,'[{\"added\": {}}]',7,1),(60,'2023-11-05 12:56:58.974172','20','Frontend-разработчик с нуля до middle: Старт 2023-11-05: Урок Основы JavaScript',1,'[{\"added\": {}}]',7,1),(61,'2023-11-05 12:57:14.809055','21','Frontend-разработчик с нуля до middle: Старт 2023-11-05: Урок Основы JavaScript в браузере',1,'[{\"added\": {}}]',7,1),(62,'2023-11-05 12:57:25.496930','22','Frontend-разработчик с нуля до middle: Старт 2023-11-05: Урок Продвинутый JavaScript',1,'[{\"added\": {}}]',7,1),(63,'2023-11-05 12:57:39.486904','23','Frontend-разработчик с нуля до middle: Старт 2023-11-05: Урок Продвинутый JavaScript в браузере',1,'[{\"added\": {}}]',7,1),(64,'2023-11-05 12:57:50.417870','24','Frontend-разработчик с нуля до middle: Старт 2023-11-05: Урок Библиотека React',1,'[{\"added\": {}}]',7,1),(65,'2023-11-05 12:58:29.619305','26','Тестировщик: Старт 2023-11-05',1,'[{\"added\": {}}]',6,1),(66,'2023-11-05 12:58:49.707218','25','Тестировщик: Старт 2023-11-05: Урок Ручное тестирование веб-приложений',1,'[{\"added\": {}}]',7,1),(67,'2023-11-05 12:58:59.991030','26','Тестировщик: Старт 2023-11-05: Урок Вёрстка сайта на HTML и CSS',1,'[{\"added\": {}}]',7,1),(68,'2023-11-05 13:00:51.909826','27','Тестировщик: Старт 2023-11-05: Урок Git - система контроля версий',1,'[{\"added\": {}}]',7,1),(69,'2023-11-05 13:01:02.318876','28','Тестировщик: Старт 2023-11-05: Урок Java для тестировщиков',1,'[{\"added\": {}}]',7,1),(70,'2023-11-05 13:01:14.132520','29','Тестировщик: Старт 2023-11-05: Урок Английский язык для начинающих разработчиков',1,'[{\"added\": {}}]',7,1),(71,'2023-11-05 13:01:24.691195','30','Тестировщик: Старт 2023-11-05: Урок Автоматизированное тестирование',1,'[{\"added\": {}}]',7,1),(72,'2023-11-05 13:02:31.103778','27','Java-разработчик с нуля: Старт 2023-10-05',1,'[{\"added\": {}}]',6,1),(73,'2023-11-05 13:02:47.063555','31','Java-разработчик с нуля: Старт 2023-10-05: Урок Основы Java',1,'[{\"added\": {}}]',7,1),(74,'2023-11-05 13:03:01.695329','32','Java-разработчик с нуля: Старт 2023-10-05: Урок Объектно-ориентированное программирование в Java',1,'[{\"added\": {}}]',7,1),(75,'2023-11-05 13:03:19.421230','33','Java-разработчик с нуля: Старт 2023-10-05: Урок Git',1,'[{\"added\": {}}]',7,1),(76,'2023-11-05 13:03:29.241824','34','Java-разработчик с нуля: Старт 2023-10-05: Урок Java Core',1,'[{\"added\": {}}]',7,1),(77,'2023-11-05 13:03:39.734156','35','Java-разработчик с нуля: Старт 2023-10-05: Урок Шаблоны проектирования',1,'[{\"added\": {}}]',7,1),(78,'2023-11-05 13:03:51.626746','36','Java-разработчик с нуля: Старт 2023-10-05: Урок Многопоточное и функциональное программирование',1,'[{\"added\": {}}]',7,1),(79,'2023-11-05 13:04:07.590342','37','Java-разработчик с нуля: Старт 2023-10-05: Урок Spring Boot, deployment и инфраструктура',1,'[{\"added\": {}}]',7,1),(80,'2023-11-05 13:04:20.560010','38','Java-разработчик с нуля: Старт 2023-10-05: Урок Spring: хранение данных и организация безопасности',1,'[{\"added\": {}}]',7,1),(81,'2023-11-05 13:05:33.462896','28','Разработчик на C++: Старт 2023-11-09',1,'[{\"added\": {}}]',6,1),(82,'2023-11-05 13:05:47.485445','39','Разработчик на C++: Старт 2023-11-09: Урок Основы программирования на C++',1,'[{\"added\": {}}]',7,1),(83,'2023-11-05 13:06:03.593582','40','Разработчик на C++: Старт 2023-11-09: Урок Система контроля версий Gi',1,'[{\"added\": {}}]',7,1),(84,'2023-11-05 13:06:14.487790','41','Разработчик на C++: Старт 2023-11-09: Урок Базовое программирование на C++',1,'[{\"added\": {}}]',7,1),(85,'2023-11-05 13:06:25.023440','42','Разработчик на C++: Старт 2023-11-09: Урок Алгоритмы и структуры данных',1,'[{\"added\": {}}]',7,1),(86,'2023-11-05 13:06:34.793176','43','Разработчик на C++: Старт 2023-11-09: Урок Продвинутое программирование на C++',1,'[{\"added\": {}}]',7,1),(87,'2023-11-05 13:06:44.178628','44','Разработчик на C++: Старт 2023-11-09: Урок Работа с базами данных',1,'[{\"added\": {}}]',7,1),(88,'2023-11-05 13:07:04.948454','45','Разработчик на C++: Старт 2023-11-09: Урок Многопоточное и асинхронное программирование',1,'[{\"added\": {}}]',7,1),(89,'2023-11-05 13:07:14.833396','46','Разработчик на C++: Старт 2023-11-09: Урок Шаблоны проектирования в C++',1,'[{\"added\": {}}]',7,1),(90,'2023-11-05 13:07:24.287405','47','Разработчик на C++: Старт 2023-11-09: Урок Кроссплатформенная разработка на Qt',1,'[{\"added\": {}}]',7,1),(91,'2023-11-05 13:07:32.793510','48','Разработчик на C++: Старт 2023-11-09: Урок Разработка умных гаджетов (IoT)',1,'[{\"added\": {}}]',7,1),(92,'2023-11-05 13:07:46.631225','49','Разработчик на C++: Старт 2023-11-09: Урок Разработка видеоигр на Unreal Engine 5',1,'[{\"added\": {}}]',7,1),(93,'2023-11-05 13:08:15.637058','29','Сетевой инженер: Старт 2023-11-05',1,'[{\"added\": {}}]',6,1),(94,'2023-11-05 13:08:30.137224','50','Сетевой инженер: Старт 2023-11-05: Урок Введение в сетевые технологии',1,'[{\"added\": {}}]',7,1),(95,'2023-11-05 13:08:39.590970','51','Сетевой инженер: Старт 2023-11-05: Урок Основы коммутации и маршрутизации',1,'[{\"added\": {}}]',7,1),(96,'2023-11-05 13:08:48.774367','52','Сетевой инженер: Старт 2023-11-05: Урок Построение отказоустойчивых сетей',1,'[{\"added\": {}}]',7,1),(97,'2023-11-05 13:09:00.989857','53','Сетевой инженер: Старт 2023-11-05: Урок Динамическая маршрутизация',1,'[{\"added\": {}}]',7,1),(98,'2023-11-05 13:09:10.307402','54','Сетевой инженер: Старт 2023-11-05: Урок Сетевая безопасность',1,'[{\"added\": {}}]',7,1),(99,'2023-11-05 13:09:19.563091','55','Сетевой инженер: Старт 2023-11-05: Урок Беспроводные сети',1,'[{\"added\": {}}]',7,1),(100,'2023-11-05 13:09:29.959459','56','Сетевой инженер: Старт 2023-11-05: Урок Методы обеспечения качества обслуживания (QoS)',1,'[{\"added\": {}}]',7,1),(101,'2023-11-05 13:09:41.804169','57','Сетевой инженер: Старт 2023-11-05: Урок Основы проектирования корпоративных сетей',1,'[{\"added\": {}}]',7,1),(102,'2023-11-05 13:09:49.849413','58','Сетевой инженер: Старт 2023-11-05: Урок Инструменты эксплуатации',1,'[{\"added\": {}}]',7,1),(103,'2023-11-05 13:10:00.844799','59','Сетевой инженер: Старт 2023-11-05: Урок Основы IP-телефонии',1,'[{\"added\": {}}]',7,1),(104,'2023-11-05 13:21:45.483046','30','SQL и получение данных: Старт 2023-11-07',1,'[{\"added\": {}}]',6,1),(105,'2023-11-05 13:21:58.663252','60','SQL и получение данных: Старт 2023-11-07: Урок Введение в SQL. Установка ПО',1,'[{\"added\": {}}]',7,1),(106,'2023-11-05 13:22:19.944120','61','SQL и получение данных: Старт 2023-11-07: Урок Работа с базами данных_',1,'[{\"added\": {}}]',7,1),(107,'2023-11-05 13:22:30.869249','62','SQL и получение данных: Старт 2023-11-07: Урок Основы SQL',1,'[{\"added\": {}}]',7,1),(108,'2023-11-05 13:22:42.675811','63','SQL и получение данных: Старт 2023-11-07: Урок Углубление в SQL',1,'[{\"added\": {}}]',7,1),(109,'2023-11-05 13:22:52.977249','64','SQL и получение данных: Старт 2023-11-07: Урок Работа с PostgresSQL. Часть 1',1,'[{\"added\": {}}]',7,1),(110,'2023-11-05 13:23:02.401323','65','SQL и получение данных: Старт 2023-11-07: Урок Работа с PostgresSQL. Часть 2',1,'[{\"added\": {}}]',7,1),(111,'2023-11-05 13:23:17.178979','66','SQL и получение данных: Старт 2023-11-07: Урок Продвинутый SQL',1,'[{\"added\": {}}]',7,1),(112,'2023-11-05 13:24:17.602510','31','Разработчик игр на Unity: Старт 2023-11-27',1,'[{\"added\": {}}]',6,1),(113,'2023-11-05 13:24:33.838419','67','Разработчик игр на Unity: Старт 2023-11-27: Урок Как устроена игра',1,'[{\"added\": {}}]',7,1),(114,'2023-11-05 13:24:42.487479','68','Разработчик игр на Unity: Старт 2023-11-27: Урок Введение в профессию',1,'[{\"added\": {}}]',7,1),(115,'2023-11-05 13:24:51.204877','69','Разработчик игр на Unity: Старт 2023-11-27: Урок Работа с редактором Unity',1,'[{\"added\": {}}]',7,1),(116,'2023-11-05 13:25:03.661244','70','Разработчик игр на Unity: Старт 2023-11-27: Урок Программирование на C#',1,'[{\"added\": {}}]',7,1),(117,'2023-11-05 13:25:14.717230','71','Разработчик игр на Unity: Старт 2023-11-27: Урок C# в Unity',1,'[{\"added\": {}}]',7,1),(118,'2023-11-05 13:25:23.910190','72','Разработчик игр на Unity: Старт 2023-11-27: Урок Разработка игры на Unity',1,'[{\"added\": {}}]',7,1),(119,'2023-11-05 13:25:34.787167','73','Разработчик игр на Unity: Старт 2023-11-27: Урок Прототипирование в Unity',1,'[{\"added\": {}}]',7,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(9,'auth_app','user'),(4,'contenttypes','contenttype'),(6,'learning','course'),(7,'learning','lesson'),(10,'learning','review'),(8,'learning','tracking'),(5,'sessions','session');
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-09-15 13:38:30.311006'),(2,'contenttypes','0002_remove_content_type_name','2023-09-15 13:38:30.414759'),(3,'auth','0001_initial','2023-09-15 13:38:30.957874'),(4,'auth','0002_alter_permission_name_max_length','2023-09-15 13:38:31.064580'),(5,'auth','0003_alter_user_email_max_length','2023-09-15 13:38:31.073844'),(6,'auth','0004_alter_user_username_opts','2023-09-15 13:38:31.087807'),(7,'auth','0005_alter_user_last_login_null','2023-09-15 13:38:31.096231'),(8,'auth','0006_require_contenttypes_0002','2023-09-15 13:38:31.113862'),(9,'auth','0007_alter_validators_add_error_messages','2023-09-15 13:38:31.126231'),(10,'auth','0008_alter_user_username_max_length','2023-09-15 13:38:31.138362'),(11,'auth','0009_alter_user_last_name_max_length','2023-09-15 13:38:31.157912'),(12,'auth','0010_alter_group_name_max_length','2023-09-15 13:38:31.256054'),(13,'auth','0011_update_proxy_permissions','2023-09-15 13:38:31.269507'),(14,'auth','0012_alter_user_first_name_max_length','2023-09-15 13:38:31.278127'),(15,'auth_app','0001_initial','2023-09-15 13:38:31.762137'),(16,'admin','0001_initial','2023-09-15 13:38:31.969925'),(17,'admin','0002_logentry_remove_auto_add','2023-09-15 13:38:31.979464'),(18,'admin','0003_logentry_add_action_flag_choices','2023-09-15 13:38:31.989948'),(19,'learning','0001_initial','2023-09-15 13:38:32.453400'),(20,'sessions','0001_initial','2023-09-15 13:38:32.516827'),(21,'learning','0002_alter_course_options_alter_lesson_options','2023-10-02 09:45:13.299254'),(22,'learning','0003_review','2023-10-06 14:29:50.043778'),(23,'learning','0004_alter_review_unique_together','2023-10-06 14:29:50.118711'),(24,'learning','0005_alter_lesson_course','2023-10-09 16:13:58.597143'),(25,'learning','0006_remove_course_author_course_authors_and_more','2023-10-09 16:13:59.260351'),(26,'learning','0007_alter_lesson_course','2023-10-20 17:23:16.352674'),(27,'learning','0008_alter_course_title','2023-11-05 12:50:52.596675'),(28,'learning','0009_alter_lesson_name_alter_lesson_preview','2023-11-05 12:54:22.249814'),(29,'learning','0010_alter_lesson_name_alter_lesson_preview','2023-11-05 12:54:52.549024'),(30,'learning','0011_alter_course_title','2023-11-05 12:55:21.562445');
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
INSERT INTO `django_session` VALUES ('12jpcww006ch263vlnoazvm5zhlt7yw6','.eJxVjEEOwiAQAP-yZ0OgUGh79O4byFJ2LWrAlDbRGP-uTXrpdWYyH_CVak0le3o90_yGQZ7A47pMfq00-xRhAAUHFnC8U95EvGG-FjGWvMwpiC0Ru63iUiI9znt7GExYp21retQGiY1iVqPlTivtXI-suTNRhyi5bVE2UbMlVG2Qzspe2X8ZsHHw_QEQKT8N:1quxQp:c56AKZgjAszf3ljsH9AQmCzvWJmYaOWYlRut4OBmCH4','2023-10-23 16:06:01.534223'),('18tdoj44xupjcn62sakwets1k5c5by35','.eJxVjMsOwiAQRf-FtSFleLt07zeQKQxSNZCUdmX8dyXpQrf3nHNfLOC-lbB3WsOS2JkJdvrdZowPqgOkO9Zb47HVbV1mPhR-0M6vLdHzcrh_BwV7GbUAgmTJRYxEqBG9y0ZJDyI6K7UG5yepkGBCqyjb_OVkjErK6WyQvT_3Zjgf:1quGXT:nNp4L5BmkG3c19Y9q0Jplv6jufEY3pQJRrdxT92dSco','2023-10-21 18:18:01.200028'),('29nl0cicavm5o99mukvgr3tev7hqbexx','.eJxVjEEOwiAQAP-yZ0OgUGh79O4byFJ2LWrAlDbRGP-uTXrpdWYyH_CVak0le3o90_yGQZ7A47pMfq00-xRhAAUHFnC8U95EvGG-FjGWvMwpiC0Ru63iUiI9znt7GExYp21retQGiY1iVqPlTivtXI-suTNRhyi5bVE2UbMlVG2Qzspe2X8ZsHHw_QEQKT8N:1quxHA:YG0git_EgnqaCurXV-zTL8IvElirKNJlgxlJC4tKo80','2023-10-23 15:56:02.956480'),('2jhgqx1yhsxcqvxwpvl42sc8ztpyt1uk','.eJxVjMsOwiAQRf-FtSFleLt07zeQKQxSNZCUdmX8dyXpQrf3nHNfLOC-lbB3WsOS2JkJdvrdZowPqgOkO9Zb47HVbV1mPhR-0M6vLdHzcrh_BwV7GbUAgmTJRYxEqBG9y0ZJDyI6K7UG5yepkGBCqyjb_OVkjErK6WyQvT_3Zjgf:1quFlm:U3iG-a9LyKsyLD3i0WvQaeGfCn23CtEpESwwt8QzB08','2023-10-21 17:28:44.476426'),('2pi112ch7ox5khacngztxxh73fu0roue','.eJxVjMsOwiAQRf-FtSFleLt07zeQKQxSNZCUdmX8dyXpQrf3nHNfLOC-lbB3WsOS2JkJdvrdZowPqgOkO9Zb47HVbV1mPhR-0M6vLdHzcrh_BwV7GbUAgmTJRYxEqBG9y0ZJDyI6K7UG5yepkGBCqyjb_OVkjErK6WyQvT_3Zjgf:1quFZv:5DYjUPIyt2MlRlsZ-fz2kZFih4jTkCD6gz5TgoQGIyQ','2023-10-21 17:16:29.047202'),('3pakgy659ztmqzqplhcpb4jwjkqzyl59','.eJxVjMsOwiAQRf-FtSFleLt07zeQKQxSNZCUdmX8dyXpQrf3nHNfLOC-lbB3WsOS2JkJdvrdZowPqgOkO9Zb47HVbV1mPhR-0M6vLdHzcrh_BwV7GbUAgmTJRYxEqBG9y0ZJDyI6K7UG5yepkGBCqyjb_OVkjErK6WyQvT_3Zjgf:1quGJH:gIEV5D5A2wzw7rb-sr0jdr4PgFi2o8-tlJ8-UFLfYgw','2023-10-21 18:03:21.426868'),('4d5y82txptwz4yta1lp9jwjnsihqiiyg','.eJxVjEEOwiAQAP-yZ0OgUGh79O4byFJ2LWrAlDbRGP-uTXrpdWYyH_CVak0le3o90_yGQZ7A47pMfq00-xRhAAUHFnC8U95EvGG-FjGWvMwpiC0Ru63iUiI9znt7GExYp21retQGiY1iVqPlTivtXI-suTNRhyi5bVE2UbMlVG2Qzspe2X8ZsHHw_QEQKT8N:1quwky:DQj4j6TzaHvn4Br0vO9Mz9Bp2-jLCS-Goq3IFaEnH7Q','2023-10-23 15:22:46.089170'),('54z5wahek85ueambz88ouxl7bkpg3b9j','.eJxVjEEOwiAQAP-yZ0OgUGh79O4byFJ2LWrAlDbRGP-uTXrpdWYyH_CVak0le3o90_yGQZ7A47pMfq00-xRhAAUHFnC8U95EvGG-FjGWvMwpiC0Ru63iUiI9znt7GExYp21retQGiY1iVqPlTivtXI-suTNRhyi5bVE2UbMlVG2Qzspe2X8ZsHHw_QEQKT8N:1quxIA:Gwa42u0k6ww-VcvVCr7XhRKmD617vQIhmdobhGv8hYU','2023-10-23 15:57:04.436107'),('710mlzmw2a9atx63yh6jfs9ge9r6tpj2','.eJxVjMsOwiAQRf-FtSFleLt07zeQKQxSNZCUdmX8dyXpQrf3nHNfLOC-lbB3WsOS2JkJdvrdZowPqgOkO9Zb47HVbV1mPhR-0M6vLdHzcrh_BwV7GbUAgmTJRYxEqBG9y0ZJDyI6K7UG5yepkGBCqyjb_OVkjErK6WyQvT_3Zjgf:1quGgs:5V42fBhqfutsXwItbpiCmpH-oapLV-92nBW_rSr-bPw','2023-10-21 18:27:44.358255'),('7q6syy0ok8n4fm35srxq7e5r31ia8ao4','.eJxVjEEOwiAQAP-yZ0OgUGh79O4byFJ2LWrAlDbRGP-uTXrpdWYyH_CVak0le3o90_yGQZ7A47pMfq00-xRhAAUHFnC8U95EvGG-FjGWvMwpiC0Ru63iUiI9znt7GExYp21retQGiY1iVqPlTivtXI-suTNRhyi5bVE2UbMlVG2Qzspe2X8ZsHHw_QEQKT8N:1quxCl:kKWR0rSbFd0v_6rZsUO90okf4_EQhxP48jj7TEBvt0k','2023-10-23 15:51:29.608411'),('91egp611kg9a3za0i8a3469og5w0ro0c','.eJxVjEEOwiAQAP-yZ0OgUGh79O4byFJ2LWrAlDbRGP-uTXrpdWYyH_CVak0le3o90_yGQZ7A47pMfq00-xRhAAUHFnC8U95EvGG-FjGWvMwpiC0Ru63iUiI9znt7GExYp21retQGiY1iVqPlTivtXI-suTNRhyi5bVE2UbMlVG2Qzspe2X8ZsHHw_QEQKT8N:1quxB7:Hw0cYgH9DAdAtOqEASVTjjgcy0cFt7Z59V7WFpt1PMg','2023-10-23 15:49:47.261098'),('bcsldpgs1f9o0xnfp1jrjdp61b1cyvwt','.eJxVjEEOwiAQAP-yZ0OgUGh79O4byFJ2LWrAlDbRGP-uTXrpdWYyH_CVak0le3o90_yGQZ7A47pMfq00-xRhAAUHFnC8U95EvGG-FjGWvMwpiC0Ru63iUiI9znt7GExYp21retQGiY1iVqPlTivtXI-suTNRhyi5bVE2UbMlVG2Qzspe2X8ZsHHw_QEQKT8N:1quwk4:UjzWkRFmTIdAfiSxec-EIEJXLQpOq-ihONUkeBYb3ro','2023-10-23 15:21:50.250310'),('bht8xhj6jgqanqqlg280ul11jo8gudgb','.eJxVjEEOwiAQAP-yZ0OgUGh79O4byFJ2LWrAlDbRGP-uTXrpdWYyH_CVak0le3o90_yGQZ7A47pMfq00-xRhAAUHFnC8U95EvGG-FjGWvMwpiC0Ru63iUiI9znt7GExYp21retQGiY1iVqPlTivtXI-suTNRhyi5bVE2UbMlVG2Qzspe2X8ZsHHw_QEQKT8N:1quxAE:VIh6V7Nq8bg_DE6Zlzzb_HOpQWGHY11Ayebfi4CEj6g','2023-10-23 15:48:52.188542'),('bo5s1bogt3kh7fwmdu5xf9jq05nk9j0r','.eJxVjEEOgjAQRe8ya9PQDrbI0r1naGbaQaqmNRQSjfHuSsKG7X_v_Q_4KrWmkr28nml6Q98cwNMyj36pMvkUoQcNu40p3CWvIN4oX4sKJc9TYrUqaqNVXUqUx3lzdwcj1fFft2xabTrCEAaM5FAHdIPEzlqyxrLRxwadZRR2ohENWdamjYEJ7XAK8P0BBhg_Iw:1qttEJ:C8wn--1PiyAw2CoZ4g2mLOZirtCXHu-PR8ifi6izpg0','2023-10-20 17:24:41.943396'),('chhmd4r1h42upd6x140xorg1b6miavdh','.eJxVjMsOwiAQRf-FtSFleLt07zeQKQxSNZCUdmX8dyXpQrf3nHNfLOC-lbB3WsOS2JkJdvrdZowPqgOkO9Zb47HVbV1mPhR-0M6vLdHzcrh_BwV7GbUAgmTJRYxEqBG9y0ZJDyI6K7UG5yepkGBCqyjb_OVkjErK6WyQvT_3Zjgf:1quGYV:pOQ5zZbAhMlUWnDb_I3uyXmlZlesCcMndRWSP_dYDL0','2023-10-21 18:19:05.105819'),('d566l34ifq5qcy278cm4smykj9hsoiu5','.eJxVjEEOwiAQAP-yZ0OgUGh79O4byFJ2LWrAlDbRGP-uTXrpdWYyH_CVak0le3o90_yGQZ7A47pMfq00-xRhAAUHFnC8U95EvGG-FjGWvMwpiC0Ru63iUiI9znt7GExYp21retQGiY1iVqPlTivtXI-suTNRhyi5bVE2UbMlVG2Qzspe2X8ZsHHw_QEQKT8N:1quwmX:aL80bUKX0_AKmFF9DvG32csTl0hqYAW4vXMVrRQMH_E','2023-10-23 15:24:23.732028'),('d7bpxvq8fen0cd3h7b0rq9549lyvn5gm','.eJxVjMsOwiAQRf-FtSFleLt07zeQKQxSNZCUdmX8dyXpQrf3nHNfLOC-lbB3WsOS2JkJdvrdZowPqgOkO9Zb47HVbV1mPhR-0M6vLdHzcrh_BwV7GbUAgmTJRYxEqBG9y0ZJDyI6K7UG5yepkGBCqyjb_OVkjErK6WyQvT_3Zjgf:1quFag:mZO2Y5jjvDewSa-OIxzHACd5ctnLYuOhLqSA-KRcli8','2023-10-21 17:17:16.268708'),('dpo7f0lbqm3n79d4nqt09v3g4vbwpr5q','.eJxVjEEOgjAQRe8ya9PQDrbI0r1naGbaQaqmNRQSjfHuSsKG7X_v_Q_4KrWmkr28nml6Q98cwNMyj36pMvkUoQcNu40p3CWvIN4oX4sKJc9TYrUqaqNVXUqUx3lzdwcj1fFft2xabTrCEAaM5FAHdIPEzlqyxrLRxwadZRR2ohENWdamjYEJ7XAK8P0BBhg_Iw:1qttDf:kayAMK5xPJERHBAQGSbA7feN6AhTQjZIbmzW2zICMS4','2023-10-20 17:24:01.179196'),('dq982w0t7y49ty0nnbrkso9yn4675hpp','.eJxVjMsOwiAQRf9l1oa0lGeX7v0GMoVBUAOmtInG-O_apJtu7znnfsA1ai3X4uj1zPMbxu4EDtclubXR7HKAEXo4bBP6O5UNhBuWa2W-lmXOE9sUttPGLjXQ47y7h4OELW11z4kHTcajJ0KJaE1UYrC890YPUnJju0Eg8Q61oKjjn5NSIggjo0L4_gAgUT9c:1quFhP:e_ufgKyIX2tnBvl5N7EE8hAdyTDlbWTg2MDKNkrNqU0','2023-10-21 17:24:13.531435'),('e577g1sy128um2qs1g15e3ndg80s7s3d','.eJxVjMsOwiAQRf-FtSFleLt07zeQKQxSNZCUdmX8dyXpQrf3nHNfLOC-lbB3WsOS2JkJdvrdZowPqgOkO9Zb47HVbV1mPhR-0M6vLdHzcrh_BwV7GbUAgmTJRYxEqBG9y0ZJDyI6K7UG5yepkGBCqyjb_OVkjErK6WyQvT_3Zjgf:1quFhy:ygvrg3YYvK5jQQqy-m8tHTcqsXqKW6RxzwL5mVGra2c','2023-10-21 17:24:48.961936'),('g3w1nutx7mvmn2yq5jmbb9p595ny4n1d','.eJxVjMsOwiAQRf-FtSFleLt07zeQKQxSNZCUdmX8dyXpQrf3nHNfLOC-lbB3WsOS2JkJdvrdZowPqgOkO9Zb47HVbV1mPhR-0M6vLdHzcrh_BwV7GbUAgmTJRYxEqBG9y0ZJDyI6K7UG5yepkGBCqyjb_OVkjErK6WyQvT_3Zjgf:1quGf8:LmYKvz5A7VYCA1vmLcD3lrSPRrhX4DAC1dYaWBuWK1c','2023-10-21 18:25:56.483497'),('h0v66pz3qms80hmnn6rb19fuzatjahxb','.eJxVjMsOwiAQRf-FtSFleLt07zeQKQxSNZCUdmX8dyXpQrf3nHNfLOC-lbB3WsOS2JkJdvrdZowPqgOkO9Zb47HVbV1mPhR-0M6vLdHzcrh_BwV7GbUAgmTJRYxEqBG9y0ZJDyI6K7UG5yepkGBCqyjb_OVkjErK6WyQvT_3Zjgf:1quGea:l0P7uz9jz_AWRKi1LqObPNWizWXO4rtnY-q7Lf73Rnk','2023-10-21 18:25:22.393461'),('iz52xbkap3y3jghhzw45zwcy5g6556tv','.eJxVjssOgyAURP-FdUMEeemy-34DucKl0jbSgPYR479XGzdu58yczExswVJiGix-njF_SVudiIVp7O1UMNvoSUsYOWQduDsOG_A3GK6JujSMOXZ0q9CdFnpJHh_nvXsQ9FD6bc04cq_ROHCIIAEaE5SoG86c0bWU3DRVLQB5BVpg0GHlqJTwwsigYJW-Ir4LaWfi0pQL_u-yZfkBc4FHmA:1quGik:H16Q8g18yasAWkK5eUZk-5Fwzj1rgY4WammApjITBE0','2023-10-21 18:29:40.375324'),('k11t8ftm23v7sz5n07cqnw5dn2vcj5pu','.eJxVjMsOwiAQRf-FtSFleLt07zeQKQxSNZCUdmX8dyXpQrf3nHNfLOC-lbB3WsOS2JkJdvrdZowPqgOkO9Zb47HVbV1mPhR-0M6vLdHzcrh_BwV7GbUAgmTJRYxEqBG9y0ZJDyI6K7UG5yepkGBCqyjb_OVkjErK6WyQvT_3Zjgf:1quGcv:bFKan7v207e3DL2pADJ-XzIROYu8cVsZ2BxclzpsLi0','2023-10-21 18:23:39.209019'),('kr85h2sl34wtnwhal6cgye33o5u1b5q4','.eJxVjMsOwiAQRf-FtSFleLt07zeQKQxSNZCUdmX8dyXpQrf3nHNfLOC-lbB3WsOS2JkJdvrdZowPqgOkO9Zb47HVbV1mPhR-0M6vLdHzcrh_BwV7GbUAgmTJRYxEqBG9y0ZJDyI6K7UG5yepkGBCqyjb_OVkjErK6WyQvT_3Zjgf:1quFj2:vBYU4gX2jIC8eHpQB-vIWbUjJR_n9OWKzMUasoHHe4A','2023-10-21 17:25:54.652582'),('lyqg0xg0ci5slwb721v8lh7jd6gk06so','.eJxVjEEOwiAQAP-yZ0OgUGh79O4byFJ2LWrAlDbRGP-uTXrpdWYyH_CVak0le3o90_yGQZ7A47pMfq00-xRhAAUHFnC8U95EvGG-FjGWvMwpiC0Ru63iUiI9znt7GExYp21retQGiY1iVqPlTivtXI-suTNRhyi5bVE2UbMlVG2Qzspe2X8ZsHHw_QEQKT8N:1qux34:o-Ix4odUrc8jrP_q_n2Yd_CkufCQ3vod-5QEVwA53Hc','2023-10-23 15:41:28.370433'),('lyssfxx9hayq3kh5a3kyqxnwt0fxl5ir','.eJxVjMsOwiAQRf-FtSFleLt07zeQKQxSNZCUdmX8dyXpQrf3nHNfLOC-lbB3WsOS2JkJdvrdZowPqgOkO9Zb47HVbV1mPhR-0M6vLdHzcrh_BwV7GbUAgmTJRYxEqBG9y0ZJDyI6K7UG5yepkGBCqyjb_OVkjErK6WyQvT_3Zjgf:1quGSI:U0Gdh4iPVCNnMs2Dq5TDwf03MS-3yB_7jrAV4CZxEUM','2023-10-21 18:12:40.088097'),('mtqen6ongigbalzzxavfh9rutf6xoulf','.eJxVjssOgyAURP-FdUMEeemy-34DucKl0jbSgPYR479XGzdu58yczExswVJiGix-njF_SVudiIVp7O1UMNvoSUsYOWQduDsOG_A3GK6JujSMOXZ0q9CdFnpJHh_nvXsQ9FD6bc04cq_ROHCIIAEaE5SoG86c0bWU3DRVLQB5BVpg0GHlqJTwwsigYJW-Ir4LaWfi0pQL_u-yZfkBc4FHmA:1quGnX:BvAlywLCMmCa-2Y2woEIefc765H8ed4ilWbY-UO19Xk','2023-10-21 18:34:37.688361'),('rmanmbn5uafmxqtai2wuxn1pwe627nkm','.eJxVjMsOwiAQRf-FtSFleLt07zeQKQxSNZCUdmX8dyXpQrf3nHNfLOC-lbB3WsOS2JkJdvrdZowPqgOkO9Zb47HVbV1mPhR-0M6vLdHzcrh_BwV7GbUAgmTJRYxEqBG9y0ZJDyI6K7UG5yepkGBCqyjb_OVkjErK6WyQvT_3Zjgf:1quFcO:cA2syQpsXfbvwxqiFneSIGZ4OLU-OOupggw6-qtxk1Q','2023-10-21 17:19:02.478663'),('ruepz01s7bbv35udqiylooats0e02ghg','.eJxVjMsOwiAQRf-FtSFleLt07zeQKQxSNZCUdmX8dyXpQrf3nHNfLOC-lbB3WsOS2JkJdvrdZowPqgOkO9Zb47HVbV1mPhR-0M6vLdHzcrh_BwV7GbUAgmTJRYxEqBG9y0ZJDyI6K7UG5yepkGBCqyjb_OVkjErK6WyQvT_3Zjgf:1quFjy:9UVonUbGwQny29rzYSXBQeY9ug11rOFJLHVVM5Y5cng','2023-10-21 17:26:52.767494'),('t0lbtl62u58ouc3khu7wsx5l1wa69zl6','.eJxVjMsOwiAQRf-FtSFleLt07zeQKQxSNZCUdmX8dyXpQrf3nHNfLOC-lbB3WsOS2JkJdvrdZowPqgOkO9Zb47HVbV1mPhR-0M6vLdHzcrh_BwV7GbUAgmTJRYxEqBG9y0ZJDyI6K7UG5yepkGBCqyjb_OVkjErK6WyQvT_3Zjgf:1quFbS:9NWgrrzLMQKPv9BvpcZvtjaU6oAqd8GvKTSoF2Bk4GU','2023-10-21 17:18:04.221517'),('tn085ie4abcox7nyo6vuhwjk1akj398o','.eJxVjEEOgjAQRe8ya9PQDrbI0r1naGbaQaqmNRQSjfHuSsKG7X_v_Q_4KrWmkr28nml6Q98cwNMyj36pMvkUoQcNu40p3CWvIN4oX4sKJc9TYrUqaqNVXUqUx3lzdwcj1fFft2xabTrCEAaM5FAHdIPEzlqyxrLRxwadZRR2ohENWdamjYEJ7XAK8P0BBhg_Iw:1qtt8m:JsTPZUXKVI0V0EnvX4bhqYLpCAfDGymYHm4v9sMcf0Y','2023-10-20 17:18:58.816842'),('ughr4d1hz4zqjwb0ppo75d7ljuju6tlv','.eJxVjssOgyAURP-FdUMEeemy-34DucKl0jbSgPYR479XGzdu58yczExswVJiGix-njF_SVudiIVp7O1UMNvoSUsYOWQduDsOG_A3GK6JujSMOXZ0q9CdFnpJHh_nvXsQ9FD6bc04cq_ROHCIIAEaE5SoG86c0bWU3DRVLQB5BVpg0GHlqJTwwsigYJW-Ir4LaWfi0pQL_u-yZfkBc4FHmA:1quGoi:7VVUI9W9xQOt03kxFkeCjgiUPMyWVvqFSQ1wUzvQGaw','2023-10-21 18:35:50.024915'),('uhuezy459bfsxxa221geqlblimk2tj04','.eJxVjMsOwiAQRf9l1oa0lGeX7v0GMoVBUAOmtInG-O_apJtu7znnfsA1ai3X4uj1zPMbxu4EDtclubXR7HKAEXo4bBP6O5UNhBuWa2W-lmXOE9sUttPGLjXQ47y7h4OELW11z4kHTcajJ0KJaE1UYrC890YPUnJju0Eg8Q61oKjjn5NSIggjo0L4_gAgUT9c:1quFgJ:5rL7pvMrUzFGj3vmI0T7U248wpqiZJs1QJDyiJiDoGk','2023-10-21 17:23:05.594741'),('uusx93ux17mnd2zfql8z15zk8hhnnrzh','.eJxVjMsOwiAQRf-FtSFleLt07zeQKQxSNZCUdmX8dyXpQrf3nHNfLOC-lbB3WsOS2JkJdvrdZowPqgOkO9Zb47HVbV1mPhR-0M6vLdHzcrh_BwV7GbUAgmTJRYxEqBG9y0ZJDyI6K7UG5yepkGBCqyjb_OVkjErK6WyQvT_3Zjgf:1quGQa:axPfV8hteWBKGYN7pAzHymNB-MhNmJh_N8F_OU7EtsI','2023-10-21 18:10:54.660898'),('vfghudd2hsikxlydt029x4aeit4i21ff','.eJxVjDsOwjAQRO_iGln-4LVNSc8ZrF1_cADZUpxUiLuTSCmgmGbem3mzgOtSwzryHKbELgzY6bcjjM_cdpAe2O6dx96WeSK-K_ygg996yq_r4f4dVBx1W5dkspdO6GiFLxZJIsAWVMZEUSApkGDRFQ8ktPLo9VkAkE6knQDDPl_ZqDcW:1qjlQb:gc2bVjCQcanT_7NDvDYqfrwF_ExfWnaTo49pNuUlRnY','2023-10-06 19:03:01.979415'),('wje7abcvtap92ykw40q16zlrixvlntvt','.eJxVjMsOwiAQRf-FtSFleLt07zeQKQxSNZCUdmX8dyXpQrf3nHNfLOC-lbB3WsOS2JkJdvrdZowPqgOkO9Zb47HVbV1mPhR-0M6vLdHzcrh_BwV7GbUAgmTJRYxEqBG9y0ZJDyI6K7UG5yepkGBCqyjb_OVkjErK6WyQvT_3Zjgf:1quFpp:MPm9b_dwafE_EOxUpp34YmxFYKG3UZk8XxSRWGfFW90','2023-10-21 17:32:55.693662'),('yf41p9seafyjikvku3nzeags85f6zl1k','.eJxVjEEOgjAQRe8ya9PQDrbI0r1naGbaQaqmNRQSjfHuSsKG7X_v_Q_4KrWmkr28nml6Q98cwNMyj36pMvkUoQcNu40p3CWvIN4oX4sKJc9TYrUqaqNVXUqUx3lzdwcj1fFft2xabTrCEAaM5FAHdIPEzlqyxrLRxwadZRR2ohENWdamjYEJ7XAK8P0BBhg_Iw:1qttG9:LoCznfgwZUShTv2Hew75qQgNDoiO1UzQZxT63jqgWB0','2023-10-20 17:26:35.309197'),('yri919dpqye4bw8gov3pmpos63v11gzg','.eJxVjMsOwiAQRf-FtSFleLt07zeQKQxSNZCUdmX8dyXpQrf3nHNfLOC-lbB3WsOS2JkJdvrdZowPqgOkO9Zb47HVbV1mPhR-0M6vLdHzcrh_BwV7GbUAgmTJRYxEqBG9y0ZJDyI6K7UG5yepkGBCqyjb_OVkjErK6WyQvT_3Zjgf:1quGfe:uuISSexhY1UKPel01MYh-m_7avZGrP1j7yGAnGFEfP0','2023-10-21 18:26:28.822406'),('z0bztbrqtx8j8rauap837gwmxpvx6fpc','.eJxVjEEOgjAQRe8ya9PQDrbI0r1naGbaQaqmNRQSjfHuSsKG7X_v_Q_4KrWmkr28nml6Q98cwNMyj36pMvkUoQcNu40p3CWvIN4oX4sKJc9TYrUqaqNVXUqUx3lzdwcj1fFft2xabTrCEAaM5FAHdIPEzlqyxrLRxwadZRR2ohENWdamjYEJ7XAK8P0BBhg_Iw:1qtt6A:Z6vWt9JDiwOeX80C2FuVBIgrZZbhuwLLakyMDCSKwmM','2023-10-20 17:16:16.955051');
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `learning_course`
--

LOCK TABLES `learning_course` WRITE;
/*!40000 ALTER TABLE `learning_course` DISABLE KEYS */;
INSERT INTO `learning_course` VALUES (25,'Frontend-разработчик с нуля до middle','Frontend-разработчик с нуля до middle','2023-11-05',9,1500,9),(26,'Тестировщик','Тестировщик','2023-11-05',6,2000,6),(27,'Java-разработчик с нуля','Java-разработчик с нуля','2023-10-05',8,2900,8),(28,'Разработчик на C++','Разработчик на C++','2023-11-09',11,6500,11),(29,'Сетевой инженер','Сетевой инженер','2023-11-05',10,7900,10),(30,'SQL и получение данных','SQL и получение данных','2023-11-07',7,4500,7),(31,'Разработчик игр на Unity','Разработчик игр на Unity','2023-11-27',7,7500,7);
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
INSERT INTO `learning_lesson` VALUES (16,'HTML-вёрстка','HTML-вёрстка с нуля до первого макета',25),(17,'Мобильная и адаптивная вёрстка','Мобильная и адаптивная вёрстка',25),(18,'Основы программирования','Основы программирования',25),(19,'Git — система контроля версий','Git — система контроля версий',25),(20,'Основы JavaScript','Основы JavaScript',25),(21,'Основы JavaScript в браузере','Основы JavaScript в браузере',25),(22,'Продвинутый JavaScript','Продвинутый JavaScript',25),(23,'Продвинутый JavaScript в браузере','Продвинутый JavaScript в браузере',25),(24,'Библиотека React','Библиотека React',25),(25,'Ручное тестирование веб-приложений','Ручное тестирование веб-приложений',26),(26,'Вёрстка сайта на HTML и CSS','Вёрстка сайта на HTML и CSS',26),(27,'Git - система контроля версий','Git — система контроля версий',26),(28,'Java для тестировщиков','Java для тестировщиков',26),(29,'Английский язык для начинающих разработчиков','Английский язык для начинающих разработчиков',26),(30,'Автоматизированное тестирование','Автоматизированное тестирование',26),(31,'Основы Java','Основы Java',27),(32,'Объектно-ориентированное программирование в Java','Объектно-ориентированное программирование в Java',27),(33,'Git','Git',27),(34,'Java Core','Java Core',27),(35,'Шаблоны проектирования','Шаблоны проектирования',27),(36,'Многопоточное и функциональное программирование','Многопоточное и функциональное программирование',27),(37,'Spring Boot, deployment и инфраструктура','Spring Boot, deployment и инфраструктура',27),(38,'Spring: хранение данных и организация безопасности','Spring: хранение данных и организация безопасности',27),(39,'Основы программирования на C++','Основы программирования на C++',28),(40,'Система контроля версий Gi','Система контроля версий Gi',28),(41,'Базовое программирование на C++','Базовое программирование на C++',28),(42,'Алгоритмы и структуры данных','Алгоритмы и структуры данных',28),(43,'Продвинутое программирование на C++','Продвинутое программирование на C++',28),(44,'Работа с базами данных','Работа с базами данных',28),(45,'Многопоточное и асинхронное программирование','Многопоточное и асинхронное программирование',28),(46,'Шаблоны проектирования в C++','Шаблоны проектирования в C++',28),(47,'Кроссплатформенная разработка на Qt','Кроссплатформенная разработка на Qt',28),(48,'Разработка умных гаджетов (IoT)','Разработка умных гаджетов (IoT)',28),(49,'Разработка видеоигр на Unreal Engine 5','Разработка видеоигр на Unreal Engine 5',28),(50,'Введение в сетевые технологии','Введение в сетевые технологии',29),(51,'Основы коммутации и маршрутизации','Основы коммутации и маршрутизации',29),(52,'Построение отказоустойчивых сетей','Построение отказоустойчивых сетей',29),(53,'Динамическая маршрутизация','Динамическая маршрутизация',29),(54,'Сетевая безопасность','Сетевая безопасность',29),(55,'Беспроводные сети','Беспроводные сети',29),(56,'Методы обеспечения качества обслуживания (QoS)','Методы обеспечения качества обслуживания (QoS)',29),(57,'Основы проектирования корпоративных сетей','Основы проектирования корпоративных сетей',29),(58,'Инструменты эксплуатации','Инструменты эксплуатации',29),(59,'Основы IP-телефонии','Основы IP-телефонии',29),(60,'Введение в SQL. Установка ПО','Введение в SQL. Установка ПО',30),(61,'Работа с базами данных_','Работа с базами данных',30),(62,'Основы SQL','Основы SQL',30),(63,'Углубление в SQL','Углубление в SQL',30),(64,'Работа с PostgresSQL. Часть 1','Работа с PostgresSQL. Часть 1',30),(65,'Работа с PostgresSQL. Часть 2','Работа с PostgresSQL. Часть 2',30),(66,'Продвинутый SQL','Продвинутый SQL',30),(67,'Как устроена игра','Как устроена игра',31),(68,'Введение в профессию','Введение в профессию',31),(69,'Работа с редактором Unity','Работа с редактором Unity',31),(70,'Программирование на C#','Программирование на C#',31),(71,'C# в Unity','C# в Unity',31),(72,'Разработка игры на Unity','Разработка игры на Unity',31),(73,'Прототипирование в Unity','Прототипирование в Unity',31);
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `learning_review`
--

LOCK TABLES `learning_review` WRITE;
/*!40000 ALTER TABLE `learning_review` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `learning_tracking`
--

LOCK TABLES `learning_tracking` WRITE;
/*!40000 ALTER TABLE `learning_tracking` DISABLE KEYS */;
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

-- Dump completed on 2023-11-05 17:51:56
