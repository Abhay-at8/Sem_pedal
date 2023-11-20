-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: pedal
-- ------------------------------------------------------
-- Server version	8.0.33

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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add cycle',7,'add_cycle'),(26,'Can change cycle',7,'change_cycle'),(27,'Can delete cycle',7,'delete_cycle'),(28,'Can view cycle',7,'view_cycle'),(29,'Can add app user',8,'add_appuser'),(30,'Can change app user',8,'change_appuser'),(31,'Can delete app user',8,'delete_appuser'),(32,'Can view app user',8,'view_appuser'),(33,'Can add payment',9,'add_payment'),(34,'Can change payment',9,'change_payment'),(35,'Can delete payment',9,'delete_payment'),(36,'Can view payment',9,'view_payment'),(37,'Can add order',10,'add_order'),(38,'Can change order',10,'change_order'),(39,'Can delete order',10,'delete_order'),(40,'Can view order',10,'view_order'),(41,'Can add rent',11,'add_rent'),(42,'Can change rent',11,'change_rent'),(43,'Can delete rent',11,'delete_rent'),(44,'Can view rent',11,'view_rent'),(45,'Can add message',12,'add_message'),(46,'Can change message',12,'change_message'),(47,'Can delete message',12,'delete_message'),(48,'Can view message',12,'view_message'),(49,'Can add room',13,'add_room'),(50,'Can change room',13,'change_room'),(51,'Can delete room',13,'delete_room'),(52,'Can view room',13,'view_room'),(53,'Can add transaction',14,'add_transaction'),(54,'Can change transaction',14,'change_transaction'),(55,'Can delete transaction',14,'delete_transaction'),(56,'Can view transaction',14,'view_transaction'),(57,'Can add wallet',15,'add_wallet'),(58,'Can change wallet',15,'change_wallet'),(59,'Can delete wallet',15,'delete_wallet'),(60,'Can view wallet',15,'view_wallet'),(61,'Can add wallet transaction',16,'add_wallettransaction'),(62,'Can change wallet transaction',16,'change_wallettransaction'),(63,'Can delete wallet transaction',16,'delete_wallettransaction'),(64,'Can view wallet transaction',16,'view_wallettransaction');
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$600000$WsZGsZVJ14uuibJLusgrNZ$MnXp22GUkZJby6Dgv+T0vkPfXYmjRG+u6VdK6AGW/Mw=','2023-11-18 07:02:29.068789',1,'abhay','','','',1,1,'2023-11-13 12:34:46.060379'),(14,'pbkdf2_sha256$600000$97QzZIU9oVmJFdXcizx27s$/pxEEi/8fuiPNMXi3SyqMNsp+HOJYzeiZKZLqhS+pi8=','2023-11-20 05:11:36.947946',0,'2023H1120190P','Abhay','Tripathi','h20230190@pilani.bits-pilani.ac.in',0,1,'2023-11-13 15:34:28.703225'),(15,'pbkdf2_sha256$600000$97QzZIU9oVmJFdXcizx27s$/pxEEi/8fuiPNMXi3SyqMNsp+HOJYzeiZKZLqhS+pi8=','2023-11-20 05:35:39.443789',0,'2023H112P','Eren','Jaeger','attack.titan@aot.com',0,1,'2023-11-13 16:32:59.400388'),(16,'pbkdf2_sha256$600000$v2TKozFiclaSyDO6pwzKSU$6LZ8xD5s6HuOK4I8aZ7NCofuzFPdbuDRDjTZEExSqoI=','2023-11-20 05:12:46.877124',0,'2023H1120180P','Virat','Kohli','abhaytripathi98@gmail.com',0,1,'2023-11-14 15:37:00.000000');
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
INSERT INTO `chat_message` VALUES (1,'hellow','2023-11-15 11:36:08.657617','122','1'),(2,'hellow user','2023-11-15 11:36:29.136945','2023H1120190P','1'),(3,'h','2023-11-17 21:51:44.348523','122','2');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat_room`
--

LOCK TABLES `chat_room` WRITE;
/*!40000 ALTER TABLE `chat_room` DISABLE KEYS */;
INSERT INTO `chat_room` VALUES (1,'816','8',16),(2,'416','4',16),(3,'714','7',14);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2023-11-13 14:29:51.970104','2','23103196',3,'',4,1),(2,'2023-11-13 14:34:34.951290','3','23103196',3,'',4,1),(3,'2023-11-13 14:38:22.592919','4','123at8',3,'',4,1),(5,'2023-11-13 14:44:49.293797','5','13at8',3,'',4,1),(6,'2023-11-13 14:44:56.773172','6','abt1',3,'',4,1),(7,'2023-11-13 14:45:04.926934','7','qt23',3,'',4,1),(8,'2023-11-13 14:47:27.036294','8','23103196',3,'',4,1),(9,'2023-11-13 15:05:07.101510','9','2023H1120190P',3,'',4,1),(10,'2023-11-13 15:06:22.825363','10','2023H1120190P',3,'',4,1),(11,'2023-11-13 15:15:29.015613','11','2023H1120190P',3,'',4,1),(12,'2023-11-13 15:15:38.541420','12','23103196',3,'',4,1),(13,'2023-11-13 15:33:45.831111','13','23103196',3,'',4,1),(14,'2023-11-18 07:03:52.489404','16','2023H1120180P',2,'[{\"changed\": {\"fields\": [\"Username\", \"First name\", \"Last name\"]}}]',4,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(12,'chat','message'),(13,'chat','room'),(5,'contenttypes','contenttype'),(8,'pedal','appuser'),(7,'pedal','cycle'),(10,'pedal','order'),(9,'pedal','payment'),(11,'pedal','rent'),(14,'pedal','transaction'),(15,'pedal','wallet'),(16,'pedal','wallettransaction'),(6,'sessions','session');
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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-11-13 12:31:11.134788'),(2,'auth','0001_initial','2023-11-13 12:31:11.983387'),(3,'admin','0001_initial','2023-11-13 12:31:12.143703'),(4,'admin','0002_logentry_remove_auto_add','2023-11-13 12:31:12.159394'),(5,'admin','0003_logentry_add_action_flag_choices','2023-11-13 12:31:12.172377'),(6,'contenttypes','0002_remove_content_type_name','2023-11-13 12:31:12.236844'),(7,'auth','0002_alter_permission_name_max_length','2023-11-13 12:31:12.308945'),(8,'auth','0003_alter_user_email_max_length','2023-11-13 12:31:12.334760'),(9,'auth','0004_alter_user_username_opts','2023-11-13 12:31:12.361821'),(10,'auth','0005_alter_user_last_login_null','2023-11-13 12:31:12.408533'),(11,'auth','0006_require_contenttypes_0002','2023-11-13 12:31:12.424234'),(12,'auth','0007_alter_validators_add_error_messages','2023-11-13 12:31:12.437627'),(13,'auth','0008_alter_user_username_max_length','2023-11-13 12:31:12.498868'),(14,'auth','0009_alter_user_last_name_max_length','2023-11-13 12:31:12.573064'),(15,'auth','0010_alter_group_name_max_length','2023-11-13 12:31:12.595454'),(16,'auth','0011_update_proxy_permissions','2023-11-13 12:31:12.611839'),(17,'auth','0012_alter_user_first_name_max_length','2023-11-13 12:31:12.676243'),(18,'sessions','0001_initial','2023-11-13 12:31:12.722178'),(19,'pedal','0001_initial','2023-11-13 12:32:39.061229'),(20,'pedal','0002_cycle','2023-11-13 12:32:39.098247'),(21,'pedal','0003_alter_cycle_owner_id','2023-11-13 12:32:39.187368'),(22,'pedal','0004_alter_cycle_cycle_img_alter_cycle_owner_id','2023-11-13 12:32:39.202990'),(23,'pedal','0005_alter_cycle_dop_alter_cycle_owner_id','2023-11-13 12:32:39.217365'),(24,'pedal','0006_delete_photo_alter_cycle_owner_id','2023-11-13 12:32:39.239946'),(25,'pedal','0007_appuser','2023-11-13 12:32:39.542892'),(26,'pedal','0008_remove_appuser_username','2023-11-13 12:32:39.620871'),(27,'pedal','0009_delete_appuser','2023-11-13 12:32:39.657253'),(28,'pedal','0010_appuser','2023-11-13 12:32:40.290064'),(29,'pedal','0011_delete_appuser','2023-11-13 12:32:40.340473'),(30,'pedal','0012_alter_cycle_owner_id','2023-11-13 12:45:10.198153'),(31,'pedal','0013_rename_owner_id_cycle_owner','2023-11-13 12:46:45.192920'),(32,'pedal','0014_appuser','2023-11-13 14:43:33.249715'),(33,'pedal','0015_alter_cycle_owner','2023-11-13 16:36:23.299093'),(34,'pedal','0016_cycle_description_cycle_is_avail_cycle_no_of_rents_and_more','2023-11-14 03:58:10.199404'),(35,'pedal','0017_payment_orders','2023-11-14 07:34:27.165740'),(36,'pedal','0018_rename_orders_order_remove_payment_cycle_and_more','2023-11-14 07:34:27.352780'),(37,'pedal','0019_rent_payment','2023-11-14 07:34:58.098927'),(38,'pedal','0020_cycle_is_being_rented','2023-11-14 16:33:09.517624'),(39,'chat','0001_initial','2023-11-15 06:02:38.027611'),(40,'chat','0002_room_user','2023-11-15 06:02:38.106236'),(41,'chat','0003_alter_room_user','2023-11-15 06:02:38.413335'),(42,'chat','0004_alter_room_user','2023-11-15 06:02:38.615993'),(43,'pedal','0021_cycle_end_time','2023-11-15 08:08:43.980958'),(44,'pedal','0022_cycle_is_sold_alter_cycle_end_time','2023-11-15 09:46:18.876359'),(45,'pedal','0023_alter_cycle_end_time','2023-11-15 09:46:18.885477'),(46,'pedal','0024_cycle_sold_to_alter_cycle_end_time_alter_cycle_owner','2023-11-17 04:10:26.760835'),(47,'pedal','0025_order_amount_payment_amount_alter_cycle_end_time_and_more','2023-11-17 04:53:20.982891'),(48,'pedal','0026_wallet_alter_cycle_end_time_and_more','2023-11-18 06:44:18.182313'),(49,'pedal','0027_alter_cycle_end_time_and_more','2023-11-18 09:37:06.970261'),(50,'pedal','0028_alter_cycle_end_time_and_more','2023-11-18 09:37:06.993421'),(51,'pedal','0029_alter_cycle_end_time_and_more','2023-11-18 09:37:07.020442'),(52,'pedal','0030_appuser_currently_renting_alter_cycle_end_time_and_more','2023-11-19 17:31:41.571663');
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
INSERT INTO `django_session` VALUES ('5v3rv9pmb01ygp8faf6qcapoffbia6w4','.eJxVjLsOAiEQAP-F2hDhljuwtPcbCMvuyqmB5B6V8d8NyRXazkzmrWLatxL3lZc4k7oo49TpF2LKT67d0CPVe9O51W2ZUfdEH3bVt0b8uh7t36CktfSvH5x4nIApIwFYYQZ0OMhoOIBzJvjJenHnYMcgk7WJspAdiElwBPX5AhGTOII:1r4ls7:BvR8Cl3zChzS4lUPsUcUuRznOSBMmvkwuhlGYkGWCDw','2023-12-03 17:46:15.861592'),('7ofxnfwhgdrm5riljmnqd0tvemw4chz3','.eJxVjLsOAiEQAP-F2hDhljuwtPcbCMvuyqmB5B6V8d8NyRXazkzmrWLatxL3lZc4k7oo49TpF2LKT67d0CPVe9O51W2ZUfdEH3bVt0b8uh7t36CktfSvH5x4nIApIwFYYQZ0OMhoOIBzJvjJenHnYMcgk7WJspAdiElwBPX5AhGTOII:1r4wbn:LbbiNAkxiD8UAMpPB68ZJp5RafYMfnbKV0nrGT6vnkA','2023-12-04 05:14:07.065989'),('afso370vj9c77oq6l4p72m37z38vls99','.eJxVjLsOAiEQAP-F2hDhljuwtPcbCMvuyqmB5B6V8d8NyRXazkzmrWLatxL3lZc4k7oo49TpF2LKT67d0CPVe9O51W2ZUfdEH3bVt0b8uh7t36CktfSvH5x4nIApIwFYYQZ0OMhoOIBzJvjJenHnYMcgk7WJspAdiElwBPX5AhGTOII:1r4Hv4:IMmSrdEs_onB9VyoWJyzrULuLFcrtyr9FlXABafO02w','2023-12-02 09:47:18.296366'),('b9agyohixdv8t9dnd2mee32ezro3n78r','.eJxVjLsOAiEQAP-F2hDhljuwtPcbCMvuyqmB5B6V8d8NyRXazkzmrWLatxL3lZc4k7oo49TpF2LKT67d0CPVe9O51W2ZUfdEH3bVt0b8uh7t36CktfSvH5x4nIApIwFYYQZ0OMhoOIBzJvjJenHnYMcgk7WJspAdiElwBPX5AhGTOII:1r3rQn:uPJuWksC_OP8wsCO08uf77uJ7ORwprw8t16Qu_1Nzv4','2023-12-01 05:30:17.902248'),('d5uoaka6apby8dmkqbi5x6z79jgis59m','.eJxVjLsOAiEQAP-F2hDhljuwtPcbCMvuyqmB5B6V8d8NyRXazkzmrWLatxL3lZc4k7oo49TpF2LKT67d0CPVe9O51W2ZUfdEH3bVt0b8uh7t36CktfSvH5x4nIApIwFYYQZ0OMhoOIBzJvjJenHnYMcgk7WJspAdiElwBPX5AhGTOII:1r4HmO:7m9uF4bIdCBJZQl2LbCbJMJvgR4R8OSPdpPUVoIhjKY','2023-12-02 09:38:20.712004'),('e9wrqccoduys7kylh7q3zwspdofd22du','.eJxVjEEOwiAQRe_C2hAYQIpL956BDDMgVUOT0q6MdzckXej2v_f-W0Tctxr3ntc4s7gILU6_W0J65jYAP7DdF0lL29Y5yaHIg3Z5Wzi_rof7d1Cx11ErBhdsMsrnM1ECKsjFgPUYlPGGpuQhB7aKMivHQQMCKQI9uWRcEZ8v8lE4Gw:1r4FLZ:L8tF1TJe-Oz6IINCu3kjJgoiNYpMiEGgnoH3yB7xgsw','2023-12-02 07:02:29.085575'),('fwonuyc7seuuhfpe69g3vxgdk2fcz0o5','.eJxVjLsOwjAMAP8lM4po4rwY2fmGKo5tUkCp1LQT4t9RpQ6w3p3urca8rXXcOi_jROqiBlCnX4i5PLnthh653Wdd5rYuE-o90Yft-jYTv65H-zeoudf9G62TiAGYChKAEWZAh1b8wAmcG1IMJoo7J-OTBGMyFSFjiUnQg_p8ARD6OIE:1r4HZj:W86tcICN7cYmDHCoCaVO1sjQi6KJlCv2jQo5HbU37vU','2023-12-02 09:25:15.915170'),('g8mg9u1rr6xzuej7ntvxrrxrmhbbu3pn','.eJxVjLsOAiEQAP-F2hDhljuwtPcbCMvuyqmB5B6V8d8NyRXazkzmrWLatxL3lZc4k7oo49TpF2LKT67d0CPVe9O51W2ZUfdEH3bVt0b8uh7t36CktfSvH5x4nIApIwFYYQZ0OMhoOIBzJvjJenHnYMcgk7WJspAdiElwBPX5AhGTOII:1r4wwd:o7LaBBxfbdqNWY4GAF2SMs0RvHUwwbz8O2Na-E3zgyA','2023-12-04 05:35:39.501283'),('snyg6du77b0hwvek2mg0qaiwit9j5voe','.eJxVjEEOwiAQRe_C2hAYQIpL956BDDMgVUOT0q6MdzckXej2v_f-W0Tctxr3ntc4s7gILU6_W0J65jYAP7DdF0lL29Y5yaHIg3Z5Wzi_rof7d1Cx11ErBhdsMsrnM1ECKsjFgPUYlPGGpuQhB7aKMivHQQMCKQI9uWRcEZ8v8lE4Gw:1r4FLY:xcP9RVPVUL_WvSVpanoOSlDbOdo2yB-AbuYHG8H52Ts','2023-12-02 07:02:28.354210'),('svn3j1emay3mda3wpola7u15ks3rsq0s','.eJxVjEEOwiAQRe_C2hAYQIpL956BDDMgVUOT0q6MdzckXej2v_f-W0Tctxr3ntc4s7gILU6_W0J65jYAP7DdF0lL29Y5yaHIg3Z5Wzi_rof7d1Cx11ErBhdsMsrnM1ECKsjFgPUYlPGGpuQhB7aKMivHQQMCKQI9uWRcEZ8v8lE4Gw:1r4FLY:xcP9RVPVUL_WvSVpanoOSlDbOdo2yB-AbuYHG8H52Ts','2023-12-02 07:02:28.165860'),('tqwopp7hrk0jwkkkq9zl7tav73itrme7','.eJxVjLsOwjAMAP8lM4po4rwY2fmGKo5tUkCp1LQT4t9RpQ6w3p3urca8rXXcOi_jROqiBlCnX4i5PLnthh653Wdd5rYuE-o90Yft-jYTv65H-zeoudf9G62TiAGYChKAEWZAh1b8wAmcG1IMJoo7J-OTBGMyFSFjiUnQg_p8ARD6OIE:1r4wZM:3IKDhiZUZm6KKIUhlCBUHzmoRT2OA6y5mFnQyBbu8LE','2023-12-04 05:11:36.955885'),('uyx3kd6qk7yozqhwotzsd4mb6ihbyhju','.eJxVjLsOwjAMAP8lM4po4rwY2fmGKo5tUkCp1LQT4t9RpQ6w3p3urca8rXXcOi_jROqiBlCnX4i5PLnthh653Wdd5rYuE-o90Yft-jYTv65H-zeoudf9G62TiAGYChKAEWZAh1b8wAmcG1IMJoo7J-OTBGMyFSFjiUnQg_p8ARD6OIE:1r4m0r:_asX2-FwDq3qzrlaAEAg4mzN_v1nIo3f96KgDgyNF6Q','2023-12-03 17:55:17.510731'),('wwouku3bvu0gtrvq62rngjdf88h88v4l','.eJxVjLsOAiEQAP-F2hDhljuwtPcbCMvuyqmB5B6V8d8NyRXazkzmrWLatxL3lZc4k7oo49TpF2LKT67d0CPVe9O51W2ZUfdEH3bVt0b8uh7t36CktfSvH5x4nIApIwFYYQZ0OMhoOIBzJvjJenHnYMcgk7WJspAdiElwBPX5AhGTOII:1r3Vgc:-FHgcVcKAFA1sQHznmmtoSiYRmrcjIFegF175YgTmcg','2023-11-30 06:17:10.797101'),('y36b75zt1wxx3jyeww2xluhhstol6ukb','.eJxVjEEOwiAQRe_C2hAYYQCX7nsGMsBUqoYmpV0Z765NutDtf-_9l4i0rTVunZc4FXERGsXpd0yUH9x2Uu7UbrPMc1uXKcldkQftcpgLP6-H-3dQqddvzciGLbmQDcHorD4XH4K1CFhGBZ5dcs4qAwga0JAikzGAB0rA3gbx_gDw8Db8:1r2wym:2h8BfDVAv8WE8s_eJoVU1_s2cRX60NPFJhdv9d09VvQ','2023-11-28 17:13:36.988513');
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
  `authUser_id` int DEFAULT NULL,
  `currently_renting` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pedal_appuser_authUser_id_8a440f1f_fk_auth_user_id` (`authUser_id`),
  CONSTRAINT `pedal_appuser_authUser_id_8a440f1f_fk_auth_user_id` FOREIGN KEY (`authUser_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedal_appuser`
--

LOCK TABLES `pedal_appuser` WRITE;
/*!40000 ALTER TABLE `pedal_appuser` DISABLE KEYS */;
INSERT INTO `pedal_appuser` VALUES (1,'images/Users/abhay_licence.jpg','MSA2102','8320917027',14,1),(2,'images/Users/HD-wallpaper-eren-yeager-attack-on-titan-shingeki-no-kyojin-manga-mikasa-anime-levi.jpg','Paradis Island','123456789',15,0),(3,'images/Users/cycle2.jpg','M-501,Sardar Patel Nagar','08320917027',16,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedal_cycle`
--

LOCK TABLES `pedal_cycle` WRITE;
/*!40000 ALTER TABLE `pedal_cycle` DISABLE KEYS */;
INSERT INTO `pedal_cycle` VALUES (1,'images/cycle1_5QTAcqk.png',1,'2023-11-01 00:00:00.000000','Hero Sprint',230,'lend','A robust cycle from a trusted brand. Geared cycle and tubless tire. Well maintainded',0,2,0,0,'2023-11-17 11:46:31.222979',0,NULL),(4,'images/cycle2_IZjTWUY.jpg',2,'2023-10-12 00:00:00.000000','Atlas',300,'sell','Well maintained cycle of Atlas brand. Non geared ,brakes in good condition ',0,1,4,0,'2023-11-15 13:38:37.994768',1,1),(5,'images/cycle2_gKKP98n.jpg',1,'2023-11-16 00:00:00.000000','Atlas',123,'lend','Well maintained cycle of Atlas brand. Non geared ,brakes in good condition ',0,4,0,0,'2023-11-20 11:35:38.418433',0,NULL),(6,'images/cycle1_EhLUbVU.png',1,'2023-11-05 00:00:00.000000','Hero Sprint',123,'sell','A robust cycle from a trusted brand. Geared cycle and tubless tire. Well maintainded',0,0,0,0,'2023-11-15 13:38:37.994768',1,2),(7,'images/cycle1_hVupLKE.png',2,'2023-10-29 00:00:00.000000','hercules',1234,'lend',NULL,0,3,0,0,'2023-11-20 11:41:01.177379',0,NULL),(8,'images/cycle1_YljLkhm.png',1,'2023-11-06 00:00:00.000000','Herucles Roadeo',500,'lend',NULL,0,0,0,0,'2023-11-20 11:43:45.552618',0,NULL),(9,'images/cycle1_2jZ9y6Y.png',1,'2023-11-15 00:00:00.000000','MTB 123',160,'lend',NULL,0,3,0,0,'2023-11-18 13:55:53.312330',0,NULL),(10,'images/cycle2_WrGrSCa.jpg',1,'2023-11-13 00:00:00.000000','BMX',3000,'sell','BMX bike Geared Tubleless Tires Suitable for hilly terrain',0,0,0,0,'2023-11-15 15:19:24.388215',1,NULL),(11,'images/cycle1_ZAH7GLA.png',2,'2023-11-05 00:00:00.000000','BMX MTB',230,'lend','BMX MTB bike Geared Tubleless Tires Suitable for hilly terrain',0,1,0,1,'2023-11-20 14:09:47.667496',0,NULL);
/*!40000 ALTER TABLE `pedal_cycle` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedal_order`
--

LOCK TABLES `pedal_order` WRITE;
/*!40000 ALTER TABLE `pedal_order` DISABLE KEYS */;
INSERT INTO `pedal_order` VALUES (1,'order_N0HLn2fw2xpUZi','payment requested',1,1,0),(2,'order_N0HNDaKwePRVpc','payment requested',1,1,0),(3,'order_N0HPfUaFj5ddMr','payment sucessful',5,1,0),(4,'order_N0I2aKValBOQfl','payment sucessful',7,1,0),(5,'order_N0ILepLSyEwjiE','payment requested',7,2,0),(6,'order_N0IWWe5fYFMLA5','payment sucessful',7,1,0),(7,'order_N0J4v2ZT8EWmNI','payment requested',7,1,0),(8,'order_N0J7QG7dQA5ltf','payment requested',7,1,0),(9,'order_N0J7c8JkRVQ0zO','payment requested',7,1,0),(10,'order_N0J7gAKQpIudtB','payment requested',7,1,0),(11,'order_N0J813n8QGBXP2','payment requested',7,1,0),(12,'order_N0J9FujT5Fenw2','payment requested',7,1,0),(13,'order_N0JAypexu1eklz','payment sucessful',7,1,0),(14,'order_N0KeYVmnlDJyYR','payment requested',4,1,0),(15,'order_N0KfP5D6zSDVoF','payment sucessful',4,1,0),(16,'order_N0KvU9Q9uYNMTZ','payment requested',7,2,0),(18,'order_N0LvtnptWoL8wQ','payment requested',5,2,0),(19,'order_N0Qs5qmUuEmKdw','payment sucessful',1,3,0),(20,'order_N0RoBIuDTcVQyj','payment requested',5,3,0),(21,'order_N0RoBcGD6MkEc3','payment sucessful',5,3,0),(22,'order_N0dzXR4zs979SI','payment requested',8,3,0),(23,'order_N0e07alYAiSm7g','payment sucessful',6,3,0),(24,'order_N0eGkd1ic4Uudy','payment requested',8,3,0),(25,'order_N0hSsduvClIf4K','payment requested',7,1,0),(26,'order_N0hSsvw3u1u69v','payment requested',7,1,0),(27,'order_N0hT3zX4BeUM2M','payment requested',4,1,0),(28,'order_N0hX2kygkL3IUC','payment requested',4,1,0),(29,'order_N0hXKLBQmZmeek','payment requested',7,1,0),(30,'order_N0hZL4TLuXnSE1','payment requested',7,1,0),(31,'order_N0hZPUUQZO3L0b','payment requested',4,1,0),(32,'order_N0hZmL5UHO4oTa','payment requested',7,1,0),(33,'order_N0hdXdp4RacZYx','payment requested',7,1,0),(34,'order_N0hdYP0IQwl8NE','payment requested',7,1,0),(35,'order_N0hdZASrILatya','payment requested',7,1,0),(36,'order_N0he4l1sWVwVXA','payment requested',7,1,0),(37,'order_N0heQvG6oSsYh0','payment requested',7,1,0),(38,'order_N0hfrN3JmjHN1W','payment requested',7,1,0),(39,'order_N0hgbgYr1duh2D','payment requested',7,1,0),(40,'order_N0hh9dVpOAJfw5','payment requested',7,1,0),(41,'order_N0ht6z8iYlMuTO','payment sucessful',10,3,0),(42,'order_N0huzUJFdA2VBF','payment requested',9,3,0),(43,'order_N0hvCanR86OVOn','payment sucessful',9,3,0),(44,'order_N12l8ojdP2f1jL','payment sucessful',9,2,0),(45,'order_N12qs5kCWcznT4','payment requested',6,2,0),(46,'order_N1QGfGSZCDItM8','payment requested',1,3,227),(47,'order_N1QIq0iht3iEh3','payment requested',1,3,219),(48,'order_N1QKRVb37bQUnb','payment requested',1,3,219),(49,'order_N1QKVUeMrdbspP','payment sucessful',1,3,213),(50,'order_N1QapysA05cCYu','payment sucessful',5,2,122),(51,'order_N1Uu1aNEfwvNrE','payment sucessful',9,2,319),(52,'order_N1b7nDshETzRNO','payment sucessful',6,2,123),(54,'order_N1qrfxhKksyOZv','payment sucessful',7,3,3563),(55,'order_N1qtMFW00OAejX','payment sucessful',7,1,3530),(56,'order_N1qwqe1STJ28Dw','payment requested',7,1,3462),(57,'order_N1qxvgb3IOvsbo','payment requested',7,1,3462),(58,'order_N1qyUm5ALMjMq4','payment requested',7,1,3430),(59,'order_N1qypoEwqMnrm1','payment requested',7,1,3423),(60,'order_N1qzpyzMGJ1gUl','payment requested',9,2,159),(61,'order_N1sW5vWG0S2Pyu','payment requested',4,1,300),(62,'order_N1sapkvGB2uowW','payment requested',4,1,300),(63,'order_N1sha7S9qE4Ucm','payment requested',4,1,300),(64,'order_N1siHfNKQrTORO','payment requested',7,1,1331),(65,'order_N1spdRBuFaiBeP','payment sucessful',7,1,1188),(66,'order_N1ssfb3hWU22t9','payment requested',7,1,1128),(67,'order_N1suqpZ6VQsKOs','payment sucessful',7,1,1086),(68,'order_N1syEq5NyiAVBr','payment requested',7,1,1086),(69,'order_N1t1xUG5CRvP5Q','payment requested',7,1,949),(70,'order_N1t23wfFnUDN5x','payment sucessful',7,1,949),(71,'order_N1tEgv8jRVeFQz','payment requested',7,1,700),(72,'order_N1tFbUrddRzTr2','payment requested',8,2,243683),(73,'order_N1tIOXXby2qbvO','payment sucessful',8,2,973),(74,'order_N1tLbLSjHLHVfX','payment sucessful',8,2,948),(75,'order_N1tP6DHDaxg2wv','payment sucessful',8,2,921),(76,'order_N1tTSaVU6En1sx','payment requested',8,2,886),(77,'order_N1tY9XUjP1R3r6','payment sucessful',7,1,321),(78,'order_N2OLUOKOqpb2jQ','payment sucessful',4,1,0),(79,'order_N2Ot8sRF9W40TD','payment requested',NULL,1,0),(80,'order_N2OtSJFsVBCX8O','deposit payment sucessful',NULL,1,0),(81,'order_N2OvQy7IY7qOJC','deposit payment sucessful',NULL,1,0),(82,'order_N2Q73ttdWi2c6M','payment requested',NULL,2,0),(83,'order_N2Q8YSuD5vDzNK','deposit payment sucessful',NULL,2,0),(84,'order_N2Q9OaueAWOrgg','payment sucessful',5,2,161),(85,'order_N2QFuZ2STwE9dm','payment sucessful',7,1,1594),(86,'order_N2QTyrLCOfcCG2','deposit payment requested',NULL,1,0),(87,'order_N2bijXfoHiGiA2','payment requested',5,2,0),(88,'order_N2bkXtHw0DNV1y','payment requested',5,2,113),(89,'order_N2bkggTj2wkHxX','deposit payment requested',NULL,2,0),(90,'order_N2c6vgx0SC1AhK','payment requested',5,2,0),(91,'order_N2c6x1ryeefK7G','payment requested',5,2,0),(92,'order_N2c6yNk5C7ePM9','payment requested',5,2,0),(93,'order_N2c7Fvm8amCYKV','payment sucessful',5,2,0),(94,'order_N2eIlba4xQzGi6','payment sucessful',11,1,229);
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedal_payment`
--

LOCK TABLES `pedal_payment` WRITE;
/*!40000 ALTER TABLE `pedal_payment` DISABLE KEYS */;
INSERT INTO `pedal_payment` VALUES (1,'pay_N0HQJ5OpFqqKIK','order_N0HPfUaFj5ddMr','660a790bbb4d482e5d1d55c9aa7637375f9a84d1f5626aab452054ec775c82f3',0),(2,'pay_N0I2uw7u2q3yNv','order_N0I2aKValBOQfl','88053b22ce786b5931b424e3cc3aa1d9c9fb9916fe2c0b1347bea2e083d6acab',0),(3,'pay_N0IX5KUPHs7RgD','order_N0IWWe5fYFMLA5','ac87fa222eaabcd7034ed333da2a4810fc801a772d7fe660ca001e4245655f1a',0),(4,'pay_N0JBaRMgI7cTfN','order_N0JAypexu1eklz','bcf035dbb7a5ffaa19a7fe3625027242bf927f95a8a3e92210b3b6cd34e95f46',0),(5,'pay_N0KfkUxttSlu1C','order_N0KfP5D6zSDVoF','1ff0903106a645f6b688dc11bef52e409495842b71ad4229cd458f14d59b3813',0),(6,'pay_N0QsXUgL5Prllj','order_N0Qs5qmUuEmKdw','0307350af34e74a8289650b53fac34c314186649f95781ef0c790365dd794a79',0),(7,'pay_N0RohjX95qLqNP','order_N0RoBcGD6MkEc3','0804c80ecfbe6d4dc2f1b98e3bd6aa81aaabdaae58237ed941cbd403ccb8a60e',0),(8,'pay_N0e17xGy1LBr3G','order_N0e07alYAiSm7g','22b3dd7c6cc7847650e5ece4435981ac12dd4f45dccc8df28a6d30acc098592a',0),(9,'pay_N0htN9zUJsmDfj','order_N0ht6z8iYlMuTO','1e016fbd39f65a5e685a2fa5488eac055b02a25dd8a95574c3b8db93eb7f5a03',0),(10,'pay_N0hvZZSPK5a0yp','order_N0hvCanR86OVOn','b24b4d8258686407a4062f5b5fa6a3ac0d7151841292a20c34f5779b0daabdf5',0),(12,'pay_N12ldMNFPypw5k','order_N12l8ojdP2f1jL','fe71ebf84c8bb8f25190fef79b2db6355b66121ca1eee86eb6bb121be6d4bc70',0),(13,'pay_N1QKmEsbrWoFWp','order_N1QKVUeMrdbspP','c18ddd1ee003934d87ddce9a772c43313b09974c51f1fe662470cf30518949c9',213),(14,'pay_N1QbCBDiEsI5J4','order_N1QapysA05cCYu','46255aea31a734e845cc3f510568368ac0c24cb35d99e49f49303b9aa6bd9e7f',122),(15,'pay_N1UuJob1AyeCLh','order_N1Uu1aNEfwvNrE','3d2453efc4867924984976f9ae6dde7d86e40ac8121e8bdf2eca884d01be65a6',319),(16,'pay_N1b8U8ubqRtWyq','order_N1b7nDshETzRNO','6ef0130ecc760bb7b391f9218d9f84f8a4cc125e18cb5429aa5cb06f49c33e41',123),(18,'pay_N1qrzeynA9XFsx','order_N1qrfxhKksyOZv','e184408e088d19b8e9794f86a6b8a0137fe25af990841fc8402d94c249d78d15',3563),(19,'pay_N1qtlHe6PMlZr5','order_N1qtMFW00OAejX','5933eff048044415ad38ae11584e1702b30294b5f43b130739b74aa783e521ab',3530),(20,'pay_N1spyTV7kvIb6s','order_N1spdRBuFaiBeP','bd16c25e3d76cdd494c4cec60cba54f141d0f47f100217f35b71322b44c7c3e0',1188),(22,'pay_N1svC9vKvtCGbm','order_N1suqpZ6VQsKOs','12f5a5f6810f4ddec390ec010531b0c740b5897e0baafeb176d56d8af9f8302c',1086),(23,'pay_N1t2JzWCtoAw4o','order_N1t23wfFnUDN5x','d6ead1b86d155ea2577f3c7ce1f60ddc243347fa17e3b0145a91f48686dad2da',949),(24,'pay_N1tIjqUyNLOpao','order_N1tIOXXby2qbvO','c89d89ec9fc442e340d0b5f26c05aec79377bc2a45013ec343100572eedbc626',973),(25,'pay_N1tLsxfczKeFqe','order_N1tLbLSjHLHVfX','5013c468b0eb4b94660e05e6964ece209c5d8509c2502ab1fce7a67681fd5d7e',948),(26,'pay_N1tPTqa97ZtYBG','order_N1tP6DHDaxg2wv','31edd820ae582e2ce4fee0430a3a3bcb01117e214b741d8529d3f1a16a292049',921),(27,'pay_N1tYZekCtetz6n','order_N1tY9XUjP1R3r6','8c89f6b5cfcf9b45a27beb20b1e48da91aa450aba80788ad86b1ce6d06c9b7d8',321),(28,'pay_N2OOwxFkKNMEqp','order_N2OLUOKOqpb2jQ','b4b4c997b0c5bbde44991662616aa070ad50391dc71b61c7f6b75736ee4f9b69',0),(29,'pay_N2Q9hnRH24Ehlq','order_N2Q9OaueAWOrgg','c8eda0008d702f27941125fae18209cd0d038ae119dc2142e9762df961db10d8',161),(30,'pay_N2QHWcRUCNx55p','order_N2QFuZ2STwE9dm','3ba624fa44b29adf12711b3da66dbc0f410112bf4647cb3a3ac746483ff27094',1594),(31,'pay_N2c7i2Mr8q9W4h','order_N2c7Fvm8amCYKV','e881b9e01aa2052b8d1a182ffca7041996192a66a40fe33e48d0f585b3c245d3',0),(32,'pay_N2eJAAtTeKBpTy','order_N2eIlba4xQzGi6','d1ede41ad3f32ef53b676fb08a57f64edf909fe334333ff584c0cb7f0eefbd68',229);
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
  PRIMARY KEY (`id`),
  KEY `pedal_rent_cycle_id_cd53ce25_fk_pedal_cycle_id` (`cycle_id`),
  KEY `pedal_rent_user_id_2e04bf08_fk_pedal_appuser_id` (`user_id`),
  KEY `pedal_rent_payment_id_160b31c0_fk_pedal_payment_id` (`payment_id`),
  CONSTRAINT `pedal_rent_cycle_id_cd53ce25_fk_pedal_cycle_id` FOREIGN KEY (`cycle_id`) REFERENCES `pedal_cycle` (`id`),
  CONSTRAINT `pedal_rent_payment_id_160b31c0_fk_pedal_payment_id` FOREIGN KEY (`payment_id`) REFERENCES `pedal_payment` (`id`),
  CONSTRAINT `pedal_rent_user_id_2e04bf08_fk_pedal_appuser_id` FOREIGN KEY (`user_id`) REFERENCES `pedal_appuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedal_rent`
--

LOCK TABLES `pedal_rent` WRITE;
/*!40000 ALTER TABLE `pedal_rent` DISABLE KEYS */;
INSERT INTO `pedal_rent` VALUES (1,'2023-11-14 15:12:47.216643','2023-11-14 17:12:47.216643',0,7,1,4),(2,'2023-11-14 22:44:19.300952','2023-11-15 00:44:19.300952',0,1,3,6),(3,'2023-11-14 23:39:23.024460','2023-11-15 01:39:23.024460',0,5,3,7),(4,'2023-11-15 15:24:58.578114','2023-11-15 16:24:07.154901',0,9,3,10),(5,'2023-11-16 11:48:09.007103','2023-11-16 12:47:18.537420',0,9,2,12),(6,'2023-11-17 10:51:20.432692','2023-11-17 11:46:31.222979',0,1,3,13),(7,'2023-11-17 11:06:54.722034','2023-11-17 12:05:52.779873',0,5,2,14),(8,'2023-11-17 15:19:45.884254','2023-11-17 17:19:00.898789',0,9,2,15),(9,'2023-11-18 15:26:33.287132','2023-11-18 15:41:33.938345',0,7,1,27),(10,'2023-11-19 23:19:52.131662','2023-11-20 00:38:22.157591',0,5,2,29),(11,'2023-11-19 23:27:16.553051','2023-11-20 00:43:00.975584',0,7,1,30),(12,'2023-11-20 11:02:17.519950','2023-11-20 11:35:38.418433',0,5,2,31),(13,'2023-11-20 13:10:31.544918','2023-11-20 14:09:47.667496',1,11,1,32);
/*!40000 ALTER TABLE `pedal_rent` ENABLE KEYS */;
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
INSERT INTO `pedal_transaction` VALUES (1,'2023-11-17 10:50:40.520067','Rent',1,13,1,3),(2,'2023-11-17 10:50:40.520067','Lend',1,13,3,1),(3,'2023-11-17 10:59:58.879597','Rent',5,14,1,2),(4,'2023-11-17 10:59:58.879597','Lend',5,14,2,1),(5,'2023-11-17 11:27:50.638041','Rent',9,15,1,2),(6,'2023-11-17 11:27:50.638041','Lend',9,15,2,1),(7,'2023-11-17 21:23:16.005751','Buy',6,16,1,2),(8,'2023-11-17 21:23:16.005751','Sell',6,16,2,1),(9,'2023-11-18 15:25:50.144690','Rent',7,27,2,1),(10,'2023-11-18 15:25:50.144690','Lend',7,27,1,2),(11,'2023-11-19 21:33:02.191169','Buy',4,28,2,1),(12,'2023-11-19 21:33:02.191169','Sell',4,28,1,2),(13,'2023-11-19 23:18:27.222068','Rent',5,29,1,2),(14,'2023-11-19 23:18:27.222068','Lend',5,29,2,1),(15,'2023-11-19 23:24:30.475605','Rent',7,30,2,1),(16,'2023-11-19 23:24:30.475605','Lend',7,30,1,2),(17,'2023-11-20 10:43:01.449759','Rent',5,31,1,2),(18,'2023-11-20 10:43:01.449759','Lend',5,31,2,1),(19,'2023-11-20 11:04:45.574335','Rent',11,32,2,1),(20,'2023-11-20 11:04:45.574335','Lend',11,32,1,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedal_wallet`
--

LOCK TABLES `pedal_wallet` WRITE;
/*!40000 ALTER TABLE `pedal_wallet` DISABLE KEYS */;
INSERT INTO `pedal_wallet` VALUES (1,938,1,3000,1),(2,0,0,0,3),(3,2144,1,3000,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedal_wallettransaction`
--

LOCK TABLES `pedal_wallettransaction` WRITE;
/*!40000 ALTER TABLE `pedal_wallettransaction` DISABLE KEYS */;
INSERT INTO `pedal_wallettransaction` VALUES (1,213,'2023-11-17 10:50:40.520067','Lend',2,3,1),(2,122,'2023-11-17 10:59:58.879597','Lend',4,2,1),(3,319,'2023-11-17 11:27:50.638041','Lend',6,2,1),(4,123,'2023-11-17 21:23:16.005751','Sell',8,2,1),(5,321,'2023-11-18 15:25:50.144690','Lend',10,1,3),(6,161,'2023-11-19 23:18:27.222068','Lend',14,2,1),(7,1594,'2023-11-19 23:24:30.475605','Lend',16,1,3),(8,229,'2023-11-20 11:04:45.574335','Lend',20,1,3);
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

-- Dump completed on 2023-11-20 13:16:53
