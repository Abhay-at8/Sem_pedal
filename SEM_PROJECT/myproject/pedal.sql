-- MySQL dump 10.13  Distrib 8.0.39, for Linux (x86_64)
--
-- Host: localhost    Database: pedal
-- ------------------------------------------------------
-- Server version	8.0.39-0ubuntu0.22.04.1

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add cycle',7,'add_cycle'),(26,'Can change cycle',7,'change_cycle'),(27,'Can delete cycle',7,'delete_cycle'),(28,'Can view cycle',7,'view_cycle'),(29,'Can add app user',8,'add_appuser'),(30,'Can change app user',8,'change_appuser'),(31,'Can delete app user',8,'delete_appuser'),(32,'Can view app user',8,'view_appuser'),(33,'Can add payment',9,'add_payment'),(34,'Can change payment',9,'change_payment'),(35,'Can delete payment',9,'delete_payment'),(36,'Can view payment',9,'view_payment'),(37,'Can add order',10,'add_order'),(38,'Can change order',10,'change_order'),(39,'Can delete order',10,'delete_order'),(40,'Can view order',10,'view_order'),(41,'Can add rent',11,'add_rent'),(42,'Can change rent',11,'change_rent'),(43,'Can delete rent',11,'delete_rent'),(44,'Can view rent',11,'view_rent'),(45,'Can add transaction',12,'add_transaction'),(46,'Can change transaction',12,'change_transaction'),(47,'Can delete transaction',12,'delete_transaction'),(48,'Can view transaction',12,'view_transaction'),(49,'Can add wallet',13,'add_wallet'),(50,'Can change wallet',13,'change_wallet'),(51,'Can delete wallet',13,'delete_wallet'),(52,'Can view wallet',13,'view_wallet'),(53,'Can add wallet transaction',14,'add_wallettransaction'),(54,'Can change wallet transaction',14,'change_wallettransaction'),(55,'Can delete wallet transaction',14,'delete_wallettransaction'),(56,'Can view wallet transaction',14,'view_wallettransaction'),(57,'Can add reviews',15,'add_reviews'),(58,'Can change reviews',15,'change_reviews'),(59,'Can delete reviews',15,'delete_reviews'),(60,'Can view reviews',15,'view_reviews'),(61,'Can add location',16,'add_location'),(62,'Can change location',16,'change_location'),(63,'Can delete location',16,'delete_location'),(64,'Can view location',16,'view_location'),(65,'Can add message',17,'add_message'),(66,'Can change message',17,'change_message'),(67,'Can delete message',17,'delete_message'),(68,'Can view message',17,'view_message'),(69,'Can add room',18,'add_room'),(70,'Can change room',18,'change_room'),(71,'Can delete room',18,'delete_room'),(72,'Can view room',18,'view_room');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$600000$zg8wn626lYrz5rCgIQ6F27$BK6lOXzpqN49aXLNn+1JdubK9s47IEDVzsK2nF4MbmE=','2023-11-23 03:51:28.594288',1,'abhay','','','',1,1,'2023-11-23 03:45:48.840927'),(2,'pbkdf2_sha256$600000$t1u6kOcpPXADQpRfMKZ6Sb$5BK3un3rJTIudHW3yslVl/ZB+I8vKA5UxkvxUstwsag=','2024-08-21 16:26:28.370696',0,'2023H1120190P','Abhay','Tripathi','h20230190@pilani.bits-pilani.ac.in',0,1,'2023-11-23 03:52:10.337303'),(3,'pbkdf2_sha256$600000$bLf73010DUbBQB8Ns8T2fK$aiWoDmNOhm8QrHCqxq5ACmrYQBZ7To+f4Yl/DqfHJSU=','2023-12-17 11:15:10.897883',0,'2023H1120180P','Virat','Kohli','abhaytripathi98@gmail.com',0,1,'2023-11-23 03:57:47.664153'),(4,'pbkdf2_sha256$600000$oJuVmBMtFMUSTht8QQ4FWj$QplSR3nXjpoJtszca8VB8MwCgOVFycaUbxFS7JcUBh8=','2023-11-23 06:22:40.157285',0,'2023H1120181P','Shivam','Singh','h20230181@pilani.bits-pilani.ac.in',0,1,'2023-11-23 04:13:50.639962'),(5,'pbkdf2_sha256$600000$CQKYAVnTOEzsEtL5NQMgKR$ASArGWbkHUk+Xq0R8LQjJQ9r9rp8VZsNEQkJfRxe01U=','2023-11-23 05:07:11.041040',0,'H20230123','Prakash','Rao','mprakash1957@gmail.com',0,1,'2023-11-23 05:01:34.704991'),(6,'pbkdf2_sha256$600000$2B7PlMxphitLSdDjqCrFWy$LpIRtoySe1zFe9JvdAquTSMQAU7M9BTGVISoTZ8uHnc=','2024-08-21 17:25:20.489998',0,'cheeku18','Virat','Kohli','viratkohli@gmail.com',0,1,'2024-08-21 16:05:36.074754');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat_message`
--

DROP TABLE IF EXISTS `chat_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chat_message` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `value` longtext NOT NULL,
  `date` datetime(6) NOT NULL,
  `user` longtext NOT NULL,
  `room` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat_message`
--

LOCK TABLES `chat_message` WRITE;
/*!40000 ALTER TABLE `chat_message` DISABLE KEYS */;
INSERT INTO `chat_message` VALUES (1,'Hello I am looking to rent your bike','2024-08-21 16:31:35.898200','cheeku18','1'),(2,'Hi yes my bike is available..but you can only rent it for 3 hrs till 1 pm','2024-08-21 16:32:22.865646','2023H1120190P','1'),(3,'okay thanks','2024-08-21 16:33:07.695223','cheeku18','1');
/*!40000 ALTER TABLE `chat_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat_room`
--

DROP TABLE IF EXISTS `chat_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chat_room` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` longtext NOT NULL,
  `cycle_id` longtext NOT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `chat_room_user_id_0cd24bcd_fk_auth_user_id` (`user_id`),
  CONSTRAINT `chat_room_user_id_0cd24bcd_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat_room`
--

LOCK TABLES `chat_room` WRITE;
/*!40000 ALTER TABLE `chat_room` DISABLE KEYS */;
INSERT INTO `chat_room` VALUES (1,'16','1',6);
/*!40000 ALTER TABLE `chat_room` ENABLE KEYS */;
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
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(17,'chat','message'),(18,'chat','room'),(5,'contenttypes','contenttype'),(8,'pedal','appuser'),(7,'pedal','cycle'),(16,'pedal','location'),(10,'pedal','order'),(9,'pedal','payment'),(11,'pedal','rent'),(15,'pedal','reviews'),(12,'pedal','transaction'),(13,'pedal','wallet'),(14,'pedal','wallettransaction'),(6,'sessions','session');
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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-11-23 03:45:31.494508'),(2,'auth','0001_initial','2023-11-23 03:45:31.788219'),(3,'admin','0001_initial','2023-11-23 03:45:31.855649'),(4,'admin','0002_logentry_remove_auto_add','2023-11-23 03:45:31.871296'),(5,'admin','0003_logentry_add_action_flag_choices','2023-11-23 03:45:31.879653'),(6,'contenttypes','0002_remove_content_type_name','2023-11-23 03:45:31.926960'),(7,'auth','0002_alter_permission_name_max_length','2023-11-23 03:45:31.958452'),(8,'auth','0003_alter_user_email_max_length','2023-11-23 03:45:31.979024'),(9,'auth','0004_alter_user_username_opts','2023-11-23 03:45:31.986286'),(10,'auth','0005_alter_user_last_login_null','2023-11-23 03:45:32.019666'),(11,'auth','0006_require_contenttypes_0002','2023-11-23 03:45:32.023304'),(12,'auth','0007_alter_validators_add_error_messages','2023-11-23 03:45:32.031324'),(13,'auth','0008_alter_user_username_max_length','2023-11-23 03:45:32.065396'),(14,'auth','0009_alter_user_last_name_max_length','2023-11-23 03:45:32.097584'),(15,'auth','0010_alter_group_name_max_length','2023-11-23 03:45:32.113614'),(16,'auth','0011_update_proxy_permissions','2023-11-23 03:45:32.119867'),(17,'auth','0012_alter_user_first_name_max_length','2023-11-23 03:45:32.160203'),(18,'pedal','0001_initial','2023-11-23 03:45:32.177963'),(19,'pedal','0002_cycle','2023-11-23 03:45:32.195314'),(20,'pedal','0003_alter_cycle_owner_id','2023-11-23 03:45:32.256523'),(21,'pedal','0004_alter_cycle_cycle_img_alter_cycle_owner_id','2023-11-23 03:45:32.256523'),(22,'pedal','0005_alter_cycle_dop_alter_cycle_owner_id','2023-11-23 03:45:32.273773'),(23,'pedal','0006_delete_photo_alter_cycle_owner_id','2023-11-23 03:45:32.293972'),(24,'pedal','0007_appuser','2023-11-23 03:45:32.533841'),(25,'pedal','0008_remove_appuser_username','2023-11-23 03:45:32.580387'),(26,'pedal','0009_delete_appuser','2023-11-23 03:45:32.608603'),(27,'pedal','0010_appuser','2023-11-23 03:45:32.778229'),(28,'pedal','0011_delete_appuser','2023-11-23 03:45:32.809232'),(29,'pedal','0012_alter_cycle_owner_id','2023-11-23 03:45:32.856772'),(30,'pedal','0013_rename_owner_id_cycle_owner','2023-11-23 03:45:32.912929'),(31,'pedal','0014_appuser','2023-11-23 03:45:32.975994'),(32,'pedal','0015_alter_cycle_owner','2023-11-23 03:45:33.052668'),(33,'pedal','0016_cycle_description_cycle_is_avail_cycle_no_of_rents_and_more','2023-11-23 03:45:33.108774'),(34,'chat','0001_initial','2023-11-23 03:45:33.135827'),(35,'chat','0002_room_user','2023-11-23 03:45:33.172423'),(36,'chat','0003_alter_room_user','2023-11-23 03:45:33.235737'),(37,'chat','0004_alter_room_user','2023-11-23 03:45:33.305431'),(38,'pedal','0017_payment_orders','2023-11-23 03:45:33.454280'),(39,'pedal','0018_rename_orders_order_remove_payment_cycle_and_more','2023-11-23 03:45:33.642156'),(40,'pedal','0019_rent_payment','2023-11-23 03:45:33.698094'),(41,'pedal','0020_cycle_is_being_rented','2023-11-23 03:45:33.726127'),(42,'pedal','0021_cycle_end_time_cycle_is_sold_cycle_sold_to_and_more','2023-11-23 03:45:33.991514'),(43,'pedal','0022_alter_cycle_end_time_and_more','2023-11-23 03:45:33.991514'),(44,'pedal','0023_alter_cycle_end_time_and_more','2023-11-23 03:45:34.016102'),(45,'pedal','0024_appuser_currently_renting_alter_cycle_end_time_and_more','2023-11-23 03:45:34.118384'),(46,'pedal','0025_alter_cycle_end_time_and_more','2023-11-23 03:45:34.134012'),(47,'pedal','0026_alter_cycle_end_time_and_more','2023-11-23 03:45:34.147502'),(48,'pedal','0027_alter_cycle_end_time_and_more','2023-11-23 03:45:34.165448'),(49,'pedal','0028_rent_rating_alter_appuser_authuser_and_more','2023-11-23 03:45:34.559746'),(50,'pedal','0029_alter_cycle_end_time_and_more','2023-11-23 03:45:34.575396'),(51,'pedal','0030_alter_cycle_end_time_and_more','2023-11-23 03:45:34.606488'),(52,'pedal','0031_alter_cycle_end_time_and_more','2023-11-23 03:45:34.628521'),(53,'pedal','0032_alter_cycle_end_time_and_more','2023-11-23 03:45:34.646394'),(54,'sessions','0001_initial','2023-11-23 03:45:34.669387'),(55,'pedal','0033_alter_cycle_end_time_and_more','2023-11-23 03:45:58.763633');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('3iw3byb8nqfiy50o8cj1kibzvmgblqfd','.eJxVjMsOwiAQRf-FtSGURxlduu83EJgZpGogKe3K-O_apAvd3nPOfYkQt7WErfMSZhIXocXpd0sRH1x3QPdYb01iq-syJ7kr8qBdTo34eT3cv4MSe_nWyOQHnxMaAo-I4JRhyNonp0lrqwGdctaOxErBeCYLDGmwGdGzcUq8P_N8N90:1r60l8:2lbcPHIeiKlnWq8K_LizRwRTtcfveoJjHfdAMeuz9PQ','2023-12-07 03:52:10.738500'),('4h1cg02k3fcav0feca8tf3817xnzox6k','.eJxVjDsOwjAQBe_iGln-sg4lPWewdu01DiBHipMKcXcSKQW0b-bNW0RclxrXznMcs7gIK06_G2F6cttBfmC7TzJNbZlHkrsiD9rlbcr8uh7uX6Bir9ubsWQeAp1BWUoKQGcPQZMxAMoUsC5sMVvQaoeOvVc6WMhGEZTBoxGfL-LfN2s:1r64D1:4tzLhQrm_wbJti_dcetUluy9I7NgRaEABfO1eoR4xdM','2023-12-07 07:33:11.816590'),('9mxeu6qudi0owgi7mwicuojxn60rgy60','.eJxVjMsOwiAQRf-FtSGURxlduu83EJgZpGogKe3K-O_apAvd3nPOfYkQt7WErfMSZhIXocXpd0sRH1x3QPdYb01iq-syJ7kr8qBdTo34eT3cv4MSe_nWyOQHnxMaAo-I4JRhyNonp0lrqwGdctaOxErBeCYLDGmwGdGzcUq8P_N8N90:1r60si:_QhjGOF5YiKa-40Hxzwi8xiaMzRGHSu0VGpFkchGDCg','2023-12-07 04:00:00.056252'),('bzoken05oywt2o345cu1g2wutqqfbx6i','.eJxVjDsOwjAQBe_iGln-rWMo6XMGa-1d4wBypDipEHeHSCmgfTPzXiLitta4dV7iROIinDj9bgnzg9sO6I7tNss8t3WZktwVedAux5n4eT3cv4OKvX7rEgDYQHYmBNasIASbB42sz84imWSBvDUmU7A-FbClZE5qUMpjImDx_gDV9TgA:1r636m:Y9VR2WTalvNiY8KqFNQbYsRsZdXkagaaeva43fP9438','2023-12-07 06:22:40.170218'),('d9zd1qz3symb1h17j3acqfbxycwmgccm','.eJxVjMsOwiAQRf-FtSGURxlduu83EJgZpGogKe3K-O_apAvd3nPOfYkQt7WErfMSZhIXocXpd0sRH1x3QPdYb01iq-syJ7kr8qBdTo34eT3cv4MSe_nWyOQHnxMaAo-I4JRhyNonp0lrqwGdctaOxErBeCYLDGmwGdGzcUq8P_N8N90:1rEoyR:mAOUTRdmUfHTQakW8qCwooVNBvDxlR-K541F2yJYkME','2023-12-31 11:06:19.584651'),('e91z8o3rshq4hnidvzrbnrj1m754i9sl','.eJxVjMsOwiAQRf-FtSGURxlduu83EJgZpGogKe3K-O_apAvd3nPOfYkQt7WErfMSZhIXocXpd0sRH1x3QPdYb01iq-syJ7kr8qBdTo34eT3cv4MSe_nWyOQHnxMaAo-I4JRhyNonp0lrqwGdctaOxErBeCYLDGmwGdGzcUq8P_N8N90:1sgoAG:hzAidYCO9uOkgbOL3qeuFXNBflkwGSbQ-j4A-hAmTw8','2024-09-04 16:26:28.381507'),('hgkyevtm73ig2jgconc17e4l92ve3w8q','.eJxVjEEOwiAQRe_C2hDoUOi4dO8ZCMOAVA0kpV0Z765NutDtf-_9l_BhW4vfelr8zOIsrDj9bhTiI9Ud8D3UW5Ox1XWZSe6KPGiX18bpeTncv4MSevnWQaMaTWbtokWVGOzgDDgmJAJENyUyarKkAIaRRrCoJ0Kds4sGOFvx_gDJTDct:1sgp5E:hK6G41qZyI1EZuMf5MAudKBFQPfp1u7AeQRWr-LWTWc','2024-09-04 17:25:20.506060'),('lmt9f5hs2m52auwidq5cduze9t3w8esx','.eJxVjsEOwiAQRP-FsyHAFpd69N5vaBZYpGogKe3J-O-2sQe9zpt5mZcYaV3yuDaexymKiwBx-s08hQeXHcQ7lVuVoZZlnrzcK_KgTQ418vN6dP8EmVre1kwpcu_8GRX4oBB1tOi0NwZRmYTQuU0GiUB31LG1SjvAaJTH1Fsym3Tmsnw_onh_AAkRO3U:1rEpA7:egmMzd13hkJxMaLwqrt7KsKCCjyjT8_ivlRb8Yp6U1k','2023-12-31 11:18:23.025801'),('x27d8ee5f6p56ebarx9h3vd9rdjr89bc','.eJxVjDsOwjAQBe_iGln-rZ1Q0nMGa71r4wBypDipEHeHSCmgfTPzXiLitta49bzEicVZgDj9bgnpkdsO-I7tNkua27pMSe6KPGiX15nz83K4fwcVe_3WiW0GAq2Nd2SscqQDIGT2yoJR2SSgEZMbBmtG6wKDSyVY9MbpUliJ9wfKXzcv:1r61qJ:DuRVdvlQpO4AQm_EuAd1TyEVtLL7ccHOecPg6hB8m1o','2023-12-07 05:01:35.478841'),('xowe9lldjs5uj54ta8l6vyj4bo5vysdd','.eJxVjsEOwiAQRP-FsyGUQlk9eu83ENhdbNXQBOjJ-O-2sQe9zpt5mZfwYW2TXysXP5O4CC1Ov1kM-OC8A7qHfFskLrmVOcq9Ig9a5bgQP69H908whTpta2RynUsRewKHiGBVz5C0i1aT1kYDWmWNGYiVguFMBhhiZxKi496qTVo4t-9HI94fH-E75A:1r61O7:gPHVa8PrRI1Gt3zamLKFGQCAQBFhxYVX3WkUVSQFNdA','2023-12-07 04:32:27.941376'),('y9vk4pybkk1oq9in41kvq4xtbhjisych','.eJxVjMsOwiAQRf-FtSGURxlduu83EJgZpGogKe3K-O_apAvd3nPOfYkQt7WErfMSZhIXocXpd0sRH1x3QPdYb01iq-syJ7kr8qBdTo34eT3cv4MSe_nWyOQHnxMaAo-I4JRhyNonp0lrqwGdctaOxErBeCYLDGmwGdGzcUq8P_N8N90:1rT14a:OytWNr-DX1102U6RKm9aLHbzQDjcc4EO4Kja4yzfbRA','2024-02-08 14:51:20.060698'),('ymkpg7fgvyx07ypuajhusk1057tzvfzo','.eJxVjMsOwiAQRf-FtSGURxlduu83EJgZpGogKe3K-O_apAvd3nPOfYkQt7WErfMSZhIXocXpd0sRH1x3QPdYb01iq-syJ7kr8qBdTo34eT3cv4MSe_nWyOQHnxMaAo-I4JRhyNonp0lrqwGdctaOxErBeCYLDGmwGdGzcUq8P_N8N90:1r62DN:vFjjynHVeyTbASnXlwfi1uxFr-9DpxJnfifIwDlE3h4','2023-12-07 05:25:25.808593');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedal_appuser`
--

DROP TABLE IF EXISTS `pedal_appuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedal_appuser` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `profile_img` varchar(100) DEFAULT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `authUser_id` int NOT NULL,
  `currently_renting` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pedal_appuser_authUser_id_8a440f1f_fk_auth_user_id` (`authUser_id`),
  CONSTRAINT `pedal_appuser_authUser_id_8a440f1f_fk_auth_user_id` FOREIGN KEY (`authUser_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedal_appuser`
--

LOCK TABLES `pedal_appuser` WRITE;
/*!40000 ALTER TABLE `pedal_appuser` DISABLE KEYS */;
INSERT INTO `pedal_appuser` VALUES (1,'images/Users/user1.png','MSA2102','08320917027',2,0),(2,'images/Users/user1_pPEkY6N.png','M-501,Sardar Patel Nagar','08320917027',3,0),(3,'images/Users/user2.jpg','1104 Ram Bhavan','9923451234',4,0),(4,'images/Users/Uuser_4.jpg','Bilaspur, Chhattisgarh','7225839200',5,0),(5,'images/Users/virat.jpg','M-501,Sardar Patel Nagar','08320917229',6,0);
/*!40000 ALTER TABLE `pedal_appuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedal_cycle`
--

DROP TABLE IF EXISTS `pedal_cycle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedal_cycle` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `cycle_img` varchar(100) DEFAULT NULL,
  `owner_id` bigint DEFAULT NULL,
  `dop` datetime(6) NOT NULL,
  `model` varchar(50) NOT NULL,
  `price` int NOT NULL,
  `lend_or_sell` varchar(50) NOT NULL,
  `description` varchar(5000) DEFAULT NULL,
  `is_avail` tinyint(1) NOT NULL,
  `no_of_rents` int NOT NULL,
  `total_stars` int NOT NULL,
  `is_being_rented` tinyint(1) NOT NULL,
  `end_time` datetime(6) NOT NULL,
  `is_sold` tinyint(1) NOT NULL,
  `sold_to_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pedal_cycle_owner_id_id_c532e4c0` (`owner_id`),
  KEY `pedal_cycle_sold_to_id_0b083c27_fk_pedal_appuser_id` (`sold_to_id`),
  CONSTRAINT `pedal_cycle_owner_id_0d5ea965_fk_pedal_appuser_id` FOREIGN KEY (`owner_id`) REFERENCES `pedal_appuser` (`id`),
  CONSTRAINT `pedal_cycle_sold_to_id_0b083c27_fk_pedal_appuser_id` FOREIGN KEY (`sold_to_id`) REFERENCES `pedal_appuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedal_cycle`
--

LOCK TABLES `pedal_cycle` WRITE;
/*!40000 ALTER TABLE `pedal_cycle` DISABLE KEYS */;
INSERT INTO `pedal_cycle` VALUES (1,'images/cycle1_v0Z2beG.png',1,'2023-11-01 00:00:00.000000','Hero Sprint',30,'lend','A robust cycle from a trusted brand. Geared cycle and tubless tire. Well maintainded',1,2,5,0,'2024-08-21 18:02:02.583895',0,NULL),(2,'images/cycle2_AEgmMHI.jpg',1,'2023-11-05 00:00:00.000000','Atlas',2300,'sell','Well maintained cycle of Atlas brand. Non geared ,brakes in good condition',1,0,0,0,'2023-11-23 09:21:11.737243',0,NULL),(3,'images/hero_ranger_dtb.jpg',1,'2023-11-28 00:00:00.000000','Ranger MTB',15,'lend','MTB bike Geared Tubleless Tires Suitable for hilly terrain',1,3,12,0,'2024-08-22 16:30:07.662833',0,NULL),(4,'images/cycle2_mOQetQt.jpg',1,'2023-11-05 00:00:00.000000','BMX',3000,'sell','BMX bike Geared Tubleless Tires Suitable for hilly terrain',0,0,0,0,'2023-11-23 09:21:11.737243',1,3),(5,'images/avon_cruiser.jpg',3,'2023-11-05 00:00:00.000000','Avon Cruiser',20,'lend','One of the best celling cycles from avon brand. Well maintained. Non Geared Tubless Tire',0,2,8,0,'2023-11-23 14:03:57.918239',0,NULL),(6,'images/avon_cruiser_NTPWerB.jpg',1,'2023-11-30 00:00:00.000000','Atlas',1600,'sell','Well maintained cycle of Atlas brand. Non geared ,brakes in good condition',0,0,0,0,'2023-11-23 09:59:48.083435',1,3),(7,'images/cycle_1.jpg',4,'2023-11-01 00:00:00.000000','MTB 123',3500,'sell','Newly buyed cycle',0,0,0,0,'2023-11-23 10:12:12.961785',1,1),(8,'images/cycle_1_q6gCEH7.jpg',4,'2023-11-01 00:00:00.000000','BMX',2000,'sell','Newly buyed cycle',1,0,0,0,'2023-11-23 10:12:12.961785',0,NULL),(9,'images/bmx.jpg',5,'2024-08-20 00:00:00.000000','BMX',230,'lend','Newly buyed cycle',1,0,0,0,'2024-08-22 12:36:06.734609',0,NULL);
/*!40000 ALTER TABLE `pedal_cycle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedal_location`
--

DROP TABLE IF EXISTS `pedal_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedal_location` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `latitude` decimal(9,6) NOT NULL,
  `longitude` decimal(9,6) NOT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pedal_location_user_id_fff7a2df_fk_auth_user_id` (`user_id`),
  CONSTRAINT `pedal_location_user_id_fff7a2df_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedal_location`
--

LOCK TABLES `pedal_location` WRITE;
/*!40000 ALTER TABLE `pedal_location` DISABLE KEYS */;
INSERT INTO `pedal_location` VALUES (1,28.354833,75.585877,2),(2,28.360361,75.584790,3),(3,28.360361,75.584790,4),(4,28.797468,76.132206,5);
/*!40000 ALTER TABLE `pedal_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedal_order`
--

DROP TABLE IF EXISTS `pedal_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedal_order` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `razorpay_order_id` varchar(50) NOT NULL,
  `payment_staus` varchar(50) NOT NULL,
  `cycle_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `amount` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `razorpay_order_id` (`razorpay_order_id`),
  KEY `pedal_orders_cycle_id_e81abf9c_fk_pedal_cycle_id` (`cycle_id`),
  KEY `pedal_orders_user_id_79de28f0_fk_pedal_appuser_id` (`user_id`),
  CONSTRAINT `pedal_orders_cycle_id_e81abf9c_fk_pedal_cycle_id` FOREIGN KEY (`cycle_id`) REFERENCES `pedal_cycle` (`id`),
  CONSTRAINT `pedal_orders_user_id_79de28f0_fk_pedal_appuser_id` FOREIGN KEY (`user_id`) REFERENCES `pedal_appuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedal_order`
--

LOCK TABLES `pedal_order` WRITE;
/*!40000 ALTER TABLE `pedal_order` DISABLE KEYS */;
INSERT INTO `pedal_order` VALUES (1,'order_N3m1Vse0BWODtN','deposit payment sucessful',NULL,1,0),(2,'order_N3m7SA5GneY5s3','deposit payment requested',NULL,2,0),(3,'order_N3m8XElJIaIoZ5','deposit payment sucessful',NULL,2,0),(4,'order_N3mBJhyqts633r','payment requested',3,2,14),(5,'order_N3mCdkmehASV7A','payment sucessful',3,2,14),(6,'order_N3mOPp0TnpPynP','deposit payment sucessful',NULL,3,0),(7,'order_N3mPJBReDZS410','payment sucessful',4,3,3000),(8,'order_N3mcNiWNzCLqpA','payment sucessful',3,3,14),(9,'order_N3meOLSibNFCMv','payment sucessful',5,2,56),(10,'order_N3mgy3EM5BF26s','payment sucessful',5,1,39),(11,'order_N3mkb9g0tj3aTP','payment sucessful',6,3,1600),(12,'order_N3moSBY1e6gMIk','payment requested',3,2,28),(13,'order_N3moUNUtv77RKI','payment requested',3,2,28),(14,'order_N3moWAShWUphyn','payment requested',3,2,28),(15,'order_N3moWphcGFNiTE','payment requested',3,2,28),(16,'order_N3moYMVl3PfcJW','payment requested',3,2,28),(17,'order_N3moZQmUr4V3ba','payment requested',3,2,28),(18,'order_N3monHSIAGMcKh','payment sucessful',3,2,28),(19,'order_N3nCqWdLnbsXyM','deposit payment requested',NULL,4,0),(20,'order_N3nKipRjKxg4K6','payment requested',2,4,2300),(21,'order_N3ng2XpLTXhQ1q','payment sucessful',7,1,3500),(22,'order_N3nsdPzN1li2AR','payment sucessful',1,3,67),(23,'order_NDOR3n7HMQ1UTc','payment sucessful',1,2,58),(24,'order_Onbp1V5pWdEoGG','deposit payment requested',NULL,5,0),(25,'order_OnbqphDqbP8hzh','deposit payment requested',NULL,5,0),(26,'order_Onc2WlHoGWdGwD','deposit payment sucessful',NULL,5,0);
/*!40000 ALTER TABLE `pedal_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedal_payment`
--

DROP TABLE IF EXISTS `pedal_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedal_payment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `razorpay_payment_id` varchar(50) NOT NULL,
  `razorpay_order_id` varchar(50) NOT NULL,
  `razorpay_signature` varchar(1000) NOT NULL,
  `amount` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `razorpay_payment_id` (`razorpay_payment_id`),
  UNIQUE KEY `razorpay_order_id` (`razorpay_order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedal_payment`
--

LOCK TABLES `pedal_payment` WRITE;
/*!40000 ALTER TABLE `pedal_payment` DISABLE KEYS */;
INSERT INTO `pedal_payment` VALUES (1,'pay_N3mCx25aAByBeE','order_N3mCdkmehASV7A','1b4f80ea4235c0e0567315d874682ef5994145410b13d9735916d6703906c8d7',14),(2,'pay_N3mPiP7F9t21Qk','order_N3mPJBReDZS410','23550d664a99fd0696b6e554ccd39177cd25fabc81d74676eb0ee75c495b56da',3000),(3,'pay_N3mcieH49xgCxW','order_N3mcNiWNzCLqpA','b11fc836e01d22e4a70ae00c6e7e186e1d782f742321dae982ae25cfebfd6e7f',14),(4,'pay_N3mel9QmfrMeEU','order_N3meOLSibNFCMv','941245f317b27ec9011e9ffed0ae5ecbca25d609023504402f13e0f17ae3aa4c',56),(5,'pay_N3mhLV7pbOoXsZ','order_N3mgy3EM5BF26s','380d803aa67f2c27c8d27a5c113da44d6ebc2cd796d66a0e6522e13dd606628c',39),(6,'pay_N3mlAtraLO33bl','order_N3mkb9g0tj3aTP','c3950c61a3496da82a975c4bb3f8f2f5927d9ca181796366499fa4e71e767d20',1600),(7,'pay_N3mpDajlbngA1C','order_N3monHSIAGMcKh','e3c5a9268b6f2fa6c76b780f294d0e923118fbb2445db57ab5bb82537d91dd07',28),(8,'pay_N3ngPaQhTFxLhg','order_N3ng2XpLTXhQ1q','881f9e844fe88b4cb22124956c0970a28e9c7389b1407baf82dcd61f492c3405',3500),(9,'pay_N3nt2NFkWXMz3C','order_N3nsdPzN1li2AR','44af41e7c2a17b24a6b150856a77824764f38689ec1d6cf68db22ea9e9d4ba7b',67),(10,'pay_NDORMQRkBCCaOb','order_NDOR3n7HMQ1UTc','0200961e745657583c03dd73d30093f0cfa83526b0a23f4d2e06912604552616',58);
/*!40000 ALTER TABLE `pedal_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedal_rent`
--

DROP TABLE IF EXISTS `pedal_rent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedal_rent` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `start_time` datetime(6) NOT NULL,
  `end_time` datetime(6) NOT NULL,
  `is_avail` tinyint(1) NOT NULL,
  `cycle_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `payment_id` bigint DEFAULT NULL,
  `rating` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pedal_rent_cycle_id_cd53ce25_fk_pedal_cycle_id` (`cycle_id`),
  KEY `pedal_rent_user_id_2e04bf08_fk_pedal_appuser_id` (`user_id`),
  KEY `pedal_rent_payment_id_160b31c0_fk_pedal_payment_id` (`payment_id`),
  CONSTRAINT `pedal_rent_cycle_id_cd53ce25_fk_pedal_cycle_id` FOREIGN KEY (`cycle_id`) REFERENCES `pedal_cycle` (`id`),
  CONSTRAINT `pedal_rent_payment_id_160b31c0_fk_pedal_payment_id` FOREIGN KEY (`payment_id`) REFERENCES `pedal_payment` (`id`),
  CONSTRAINT `pedal_rent_user_id_2e04bf08_fk_pedal_appuser_id` FOREIGN KEY (`user_id`) REFERENCES `pedal_appuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedal_rent`
--

LOCK TABLES `pedal_rent` WRITE;
/*!40000 ALTER TABLE `pedal_rent` DISABLE KEYS */;
INSERT INTO `pedal_rent` VALUES (1,'2023-11-23 09:33:12.339152','2023-11-23 09:33:12.339152',0,3,2,1,5),(2,'2023-11-23 09:57:35.990641','2023-11-23 09:33:12.339152',0,3,3,3,2),(3,'2023-11-23 09:59:31.867435','2023-11-23 09:33:12.339152',0,5,2,4,5),(4,'2023-11-23 10:01:58.377220','2023-11-23 09:33:12.339152',0,5,1,5,3),(5,'2023-11-23 10:09:25.973189','2023-11-23 09:33:12.339152',0,3,2,7,5),(6,'2023-11-23 11:11:43.373339','2023-11-23 13:26:31.673261',0,1,3,9,NULL),(7,'2023-12-17 16:48:13.494284','2023-12-17 18:44:03.440859',0,1,2,10,5);
/*!40000 ALTER TABLE `pedal_rent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedal_reviews`
--

DROP TABLE IF EXISTS `pedal_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedal_reviews` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `review_date` date NOT NULL,
  `rating` int NOT NULL,
  `text_description` varchar(5000) NOT NULL,
  `author_id` bigint NOT NULL,
  `cycle_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pedal_reviews_author_id_42799917_fk_pedal_appuser_id` (`author_id`),
  KEY `pedal_reviews_cycle_id_6d9c9efb_fk_pedal_cycle_id` (`cycle_id`),
  CONSTRAINT `pedal_reviews_author_id_42799917_fk_pedal_appuser_id` FOREIGN KEY (`author_id`) REFERENCES `pedal_appuser` (`id`),
  CONSTRAINT `pedal_reviews_cycle_id_6d9c9efb_fk_pedal_cycle_id` FOREIGN KEY (`cycle_id`) REFERENCES `pedal_cycle` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedal_reviews`
--

LOCK TABLES `pedal_reviews` WRITE;
/*!40000 ALTER TABLE `pedal_reviews` DISABLE KEYS */;
INSERT INTO `pedal_reviews` VALUES (1,'2023-11-23',5,'Great Bike, well maintained. Polite owner',2,3),(2,'2023-11-23',2,'Cycle needed maintainance',3,3),(3,'2023-11-23',5,'Good bike',2,5),(4,'2023-11-23',3,'okayish experience. Owner didnt respont quickly',1,5),(5,'2023-11-23',5,'Good bike polite owner',2,3),(6,'2023-12-17',5,'Great bike',2,1);
/*!40000 ALTER TABLE `pedal_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedal_transaction`
--

DROP TABLE IF EXISTS `pedal_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedal_transaction` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `transaction_time` datetime(6) NOT NULL,
  `transaction_name` varchar(50) NOT NULL,
  `cycle_id` bigint DEFAULT NULL,
  `payment_id` bigint DEFAULT NULL,
  `transaction_with_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pedal_transaction_cycle_id_7eb8c7e4_fk_pedal_cycle_id` (`cycle_id`),
  KEY `pedal_transaction_payment_id_d8b8cb99_fk_pedal_payment_id` (`payment_id`),
  KEY `pedal_transaction_transaction_with_id_804f0433_fk_pedal_app` (`transaction_with_id`),
  KEY `pedal_transaction_user_id_5d00438e_fk_pedal_appuser_id` (`user_id`),
  CONSTRAINT `pedal_transaction_cycle_id_7eb8c7e4_fk_pedal_cycle_id` FOREIGN KEY (`cycle_id`) REFERENCES `pedal_cycle` (`id`),
  CONSTRAINT `pedal_transaction_payment_id_d8b8cb99_fk_pedal_payment_id` FOREIGN KEY (`payment_id`) REFERENCES `pedal_payment` (`id`),
  CONSTRAINT `pedal_transaction_transaction_with_id_804f0433_fk_pedal_app` FOREIGN KEY (`transaction_with_id`) REFERENCES `pedal_appuser` (`id`),
  CONSTRAINT `pedal_transaction_user_id_5d00438e_fk_pedal_appuser_id` FOREIGN KEY (`user_id`) REFERENCES `pedal_appuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedal_transaction`
--

LOCK TABLES `pedal_transaction` WRITE;
/*!40000 ALTER TABLE `pedal_transaction` DISABLE KEYS */;
INSERT INTO `pedal_transaction` VALUES (1,'2023-11-23 09:21:11.738276','Rent',3,1,1,2),(2,'2023-11-23 09:21:11.738276','Lend',3,1,2,1),(3,'2023-11-23 09:21:11.738276','Buy',4,2,1,3),(4,'2023-11-23 09:21:11.738276','Sell',4,2,3,1),(5,'2023-11-23 09:54:38.358786','Rent',3,3,1,3),(6,'2023-11-23 09:54:38.358786','Lend',3,3,3,1),(7,'2023-11-23 09:54:38.358786','Rent',5,4,3,2),(8,'2023-11-23 09:54:38.358786','Lend',5,4,2,3),(9,'2023-11-23 09:59:48.083435','Rent',5,5,3,1),(10,'2023-11-23 09:59:48.083435','Lend',5,5,1,3),(11,'2023-11-23 09:59:48.083435','Buy',6,6,1,3),(12,'2023-11-23 09:59:48.083435','Sell',6,6,3,1),(13,'2023-11-23 10:07:51.670283','Rent',3,7,1,2),(14,'2023-11-23 10:07:51.670283','Lend',3,7,2,1),(15,'2023-11-23 10:12:12.962773','Buy',7,8,4,1),(16,'2023-11-23 10:12:12.962773','Sell',7,8,1,4),(17,'2023-11-23 10:12:12.962773','Rent',1,9,1,3),(18,'2023-11-23 10:12:12.962773','Lend',1,9,3,1),(19,'2023-12-17 16:42:57.584806','Rent',1,10,1,2),(20,'2023-12-17 16:42:57.584806','Lend',1,10,2,1);
/*!40000 ALTER TABLE `pedal_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedal_wallet`
--

DROP TABLE IF EXISTS `pedal_wallet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedal_wallet` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `balance` int NOT NULL,
  `deposit_complete` tinyint(1) NOT NULL,
  `deposit_amount` int NOT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pedal_wallet_user_id_57b45531_fk_pedal_appuser_id` (`user_id`),
  CONSTRAINT `pedal_wallet_user_id_57b45531_fk_pedal_appuser_id` FOREIGN KEY (`user_id`) REFERENCES `pedal_appuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedal_wallet`
--

LOCK TABLES `pedal_wallet` WRITE;
/*!40000 ALTER TABLE `pedal_wallet` DISABLE KEYS */;
INSERT INTO `pedal_wallet` VALUES (1,4781,1,3000,1),(2,0,1,3000,2),(3,95,1,3000,3),(4,3500,0,0,4),(5,0,1,3000,5);
/*!40000 ALTER TABLE `pedal_wallet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedal_wallettransaction`
--

DROP TABLE IF EXISTS `pedal_wallettransaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedal_wallettransaction` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `amount` int NOT NULL,
  `transaction_time` datetime(6) NOT NULL,
  `transaction_name` varchar(50) NOT NULL,
  `transaction_id` bigint DEFAULT NULL,
  `transaction_from_id` bigint DEFAULT NULL,
  `wallet_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pedal_wallettransact_transaction_id_72654db3_fk_pedal_tra` (`transaction_id`),
  KEY `pedal_wallettransact_transaction_from_id_73dbf65e_fk_pedal_app` (`transaction_from_id`),
  KEY `pedal_wallettransaction_wallet_id_aca6eb16_fk_pedal_wallet_id` (`wallet_id`),
  CONSTRAINT `pedal_wallettransact_transaction_from_id_73dbf65e_fk_pedal_app` FOREIGN KEY (`transaction_from_id`) REFERENCES `pedal_appuser` (`id`),
  CONSTRAINT `pedal_wallettransact_transaction_id_72654db3_fk_pedal_tra` FOREIGN KEY (`transaction_id`) REFERENCES `pedal_transaction` (`id`),
  CONSTRAINT `pedal_wallettransaction_wallet_id_aca6eb16_fk_pedal_wallet_id` FOREIGN KEY (`wallet_id`) REFERENCES `pedal_wallet` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedal_wallettransaction`
--

LOCK TABLES `pedal_wallettransaction` WRITE;
/*!40000 ALTER TABLE `pedal_wallettransaction` DISABLE KEYS */;
INSERT INTO `pedal_wallettransaction` VALUES (1,14,'2023-11-23 09:21:11.738276','Lend',2,2,1),(2,3000,'2023-11-23 09:21:11.738276','Sell',4,3,1),(3,14,'2023-11-23 09:54:38.358786','Lend',6,3,1),(4,56,'2023-11-23 09:54:38.358786','Lend',8,2,3),(5,39,'2023-11-23 09:59:48.083435','Lend',10,1,3),(6,1600,'2023-11-23 09:59:48.083435','Sell',12,3,1),(7,28,'2023-11-23 10:07:51.670283','Lend',14,2,1),(8,3500,'2023-11-23 10:12:12.962773','Sell',16,1,4),(9,67,'2023-11-23 10:12:12.962773','Lend',18,3,1),(10,58,'2023-12-17 16:42:57.584806','Lend',20,2,1);
/*!40000 ALTER TABLE `pedal_wallettransaction` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-21 17:31:23
