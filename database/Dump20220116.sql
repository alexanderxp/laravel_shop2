-- MySQL dump 10.13  Distrib 8.0.27, for Linux (x86_64)
--
-- Host: localhost    Database: laravel
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Мобильные телефоны','mobiles','описание мобильных телефонов',NULL,NULL,NULL),(2,'Портативная техника','portable','описание для раздела портативной техники',NULL,NULL,NULL),(3,'Бытовая техника','technics',NULL,NULL,NULL,NULL),(5,'111-1','111','тестовая категория',NULL,'2022-01-16 10:38:02','2022-01-16 10:38:02');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (6,'2014_10_12_000000_create_users_table',1),(7,'2021_10_04_165714_create_products_table',1),(8,'2021_10_04_183433_create_categories_table',1),(9,'2021_10_04_234350_create_products_table',2),(10,'2021_10_10_234622_create_orders_table',3),(11,'2021_10_11_192302_create_order_product_table',4),(13,'2021_10_18_161244_update_order_product_table',5),(14,'2022_01_07_135835_create_users_table',6),(15,'2022_01_10_093631_alter_table_users',7),(17,'2022_01_10_235528_alter_table_orders',8);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_product`
--

DROP TABLE IF EXISTS `order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `count` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_product`
--

LOCK TABLES `order_product` WRITE;
/*!40000 ALTER TABLE `order_product` DISABLE KEYS */;
INSERT INTO `order_product` VALUES (75,40,1,2,'2021-10-18 20:29:29','2021-10-18 20:29:34'),(84,47,1,2,'2021-10-21 07:27:26','2021-10-21 07:31:23'),(85,47,9,1,'2021-10-21 07:31:28','2021-10-21 07:31:28'),(86,59,1,2,'2022-01-04 10:06:24','2022-01-04 10:52:56'),(87,59,1,2,'2022-01-04 10:06:25','2022-01-04 10:52:56'),(88,62,1,2,'2022-01-04 16:08:47','2022-01-04 18:43:44'),(89,62,1,2,'2022-01-04 16:08:50','2022-01-04 18:43:44'),(90,66,1,3,'2022-01-04 22:09:40','2022-01-04 22:09:44'),(91,67,1,1,'2022-01-04 22:18:22','2022-01-04 22:18:22'),(92,68,1,4,'2022-01-04 22:30:33','2022-01-04 22:30:37'),(93,69,1,1,'2022-01-04 22:30:57','2022-01-04 22:30:57'),(94,69,3,3,'2022-01-04 22:31:10','2022-01-04 22:31:25'),(95,70,1,2,'2022-01-04 22:36:07','2022-01-04 22:36:11'),(96,70,11,5,'2022-01-04 22:36:17','2022-01-04 22:36:24'),(97,71,2,1,'2022-01-05 17:10:23','2022-01-05 17:10:23'),(98,71,9,1,'2022-01-05 17:10:31','2022-01-05 17:10:31'),(99,72,2,7,'2022-01-05 17:15:50','2022-01-05 17:15:57'),(106,73,1,1,'2022-01-06 08:38:58','2022-01-06 08:38:58'),(107,73,4,1,'2022-01-06 08:39:10','2022-01-06 08:39:10'),(108,74,1,1,'2022-01-06 09:22:56','2022-01-06 09:22:56'),(109,75,2,1,'2022-01-06 09:27:09','2022-01-06 09:27:09'),(126,77,5,1,'2022-01-06 18:49:43','2022-01-06 18:49:43'),(128,78,6,1,'2022-01-07 06:49:36','2022-01-07 06:49:36'),(131,79,3,1,'2022-01-07 06:50:43','2022-01-07 06:50:43'),(133,80,8,1,'2022-01-07 15:19:14','2022-01-07 15:19:14'),(134,81,2,1,'2022-01-07 15:51:57','2022-01-07 15:51:57'),(135,82,2,2,'2022-01-07 15:52:42','2022-01-07 16:40:02'),(138,84,6,1,'2022-01-07 17:31:51','2022-01-07 17:31:51'),(147,92,2,1,'2022-01-09 13:41:20','2022-01-09 13:41:20'),(148,93,6,1,'2022-01-09 14:13:50','2022-01-09 14:13:50'),(149,94,6,1,'2022-01-09 15:12:00','2022-01-09 15:12:00'),(150,95,2,1,'2022-01-09 16:18:55','2022-01-09 16:18:55'),(153,97,9,2,'2022-01-10 16:14:42','2022-01-10 16:14:44'),(154,97,3,2,'2022-01-10 16:15:29','2022-01-10 16:15:31'),(155,98,7,1,'2022-01-10 21:14:21','2022-01-10 21:14:21'),(156,99,2,6,'2022-01-10 22:15:08','2022-01-10 23:14:23'),(157,100,2,1,'2022-01-10 23:35:11','2022-01-10 23:35:11'),(170,102,2,1,'2022-01-11 16:35:23','2022-01-11 16:35:23'),(171,102,10,1,'2022-01-11 16:52:11','2022-01-11 16:52:11'),(172,103,9,1,'2022-01-12 18:44:54','2022-01-12 18:44:54'),(173,104,6,1,'2022-01-12 18:45:54','2022-01-12 18:45:54'),(174,105,5,1,'2022-01-13 15:21:03','2022-01-13 15:21:03'),(175,106,2,10,'2022-01-13 22:25:18','2022-01-13 22:25:31'),(176,107,5,10,'2022-01-14 09:43:42','2022-01-14 09:43:57'),(178,108,5,10,'2022-01-15 06:25:53','2022-01-15 06:26:00'),(179,109,2,1,'2022-01-16 10:08:56','2022-01-16 10:08:56');
/*!40000 ALTER TABLE `order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,0,NULL,NULL,'2021-10-18 20:29:29','2021-10-18 20:29:34',NULL),(2,0,NULL,NULL,'2021-10-21 04:01:50','2021-10-21 07:01:30',NULL),(3,0,NULL,NULL,'2021-10-21 04:02:34','2021-10-21 07:01:29',NULL),(4,0,'alexanderxp','0935961627','2022-01-04 16:08:22','2022-01-04 21:36:25',NULL),(5,0,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28',NULL),(6,0,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28',NULL),(7,0,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28',NULL),(8,0,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28',NULL),(9,0,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28',NULL),(10,0,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28',NULL),(11,0,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28',NULL),(12,0,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28',NULL),(13,0,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28',NULL),(14,0,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28',NULL),(15,0,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28',NULL),(16,0,'alexanderxp','0935961627','2022-01-04 16:08:22','2022-01-04 21:36:25',NULL),(17,0,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28',NULL),(18,0,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28',NULL),(19,0,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28',NULL),(20,0,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28',NULL),(21,0,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28',NULL),(22,0,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28',NULL),(23,0,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28',NULL),(24,0,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28',NULL),(25,0,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28',NULL),(26,0,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28',NULL),(27,0,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28',NULL),(28,0,'alexanderxp','0935961627','2022-01-04 16:08:22','2022-01-04 21:36:25',NULL),(29,0,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28',NULL),(30,0,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28',NULL),(31,0,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28',NULL),(32,0,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28',NULL),(33,0,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28',NULL),(34,0,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28',NULL),(35,0,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28',NULL),(36,0,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28',NULL),(37,0,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28',NULL),(38,0,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28',NULL),(39,0,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28',NULL),(40,0,'alexanderxp','0935961627','2022-01-04 16:08:22','2022-01-04 21:36:25',NULL),(41,0,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28',NULL),(42,0,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28',NULL),(43,0,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28',NULL),(44,0,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28',NULL),(45,0,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28',NULL),(46,0,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28',NULL),(47,0,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28',NULL),(48,0,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28',NULL),(49,0,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28',NULL),(50,0,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28',NULL),(51,0,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28',NULL),(52,0,'alexanderxp','0935961627','2022-01-04 16:08:22','2022-01-04 21:36:25',NULL),(53,0,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28',NULL),(54,0,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28',NULL),(55,0,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28',NULL),(56,0,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28',NULL),(57,0,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28',NULL),(58,0,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28',NULL),(59,0,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28',NULL),(60,0,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28',NULL),(61,0,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28',NULL),(62,0,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28',NULL),(63,0,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28',NULL),(64,0,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28',NULL),(65,0,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28',NULL),(66,0,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28',NULL),(67,0,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28',NULL),(68,0,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28',NULL),(69,0,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28',NULL),(70,0,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28',NULL),(71,0,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28',NULL),(72,0,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28',NULL),(73,1,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28',NULL),(74,0,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28',NULL),(75,0,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28',NULL),(76,0,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28',NULL),(77,1,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28',NULL),(78,1,'alexanderxp','0935961627','2022-01-07 06:45:05','2022-01-07 06:50:33',NULL),(79,0,NULL,NULL,'2022-01-07 06:50:43','2022-01-07 06:50:43',NULL),(80,0,NULL,NULL,'2022-01-07 14:42:20','2022-01-07 14:42:20',NULL),(81,0,'alexanderxp','0935961627','2022-01-07 15:51:57','2022-01-07 15:52:39',NULL),(82,0,'alexanderxp','0935961627','2022-01-07 15:52:42','2022-01-07 16:40:48',NULL),(83,0,NULL,NULL,'2022-01-07 16:40:57','2022-01-07 16:40:57',NULL),(84,0,NULL,NULL,'2022-01-07 17:29:43','2022-01-07 17:29:43',NULL),(85,0,NULL,NULL,'2022-01-08 05:30:28','2022-01-08 05:30:28',NULL),(86,0,NULL,NULL,'2022-01-08 06:38:19','2022-01-08 06:38:19',NULL),(87,0,NULL,NULL,'2022-01-08 12:47:24','2022-01-08 12:47:24',NULL),(88,0,NULL,NULL,'2022-01-08 20:28:38','2022-01-08 20:28:38',NULL),(89,0,NULL,NULL,'2022-01-09 06:05:24','2022-01-09 06:05:24',NULL),(90,0,NULL,NULL,'2022-01-09 08:16:15','2022-01-09 08:16:15',NULL),(91,0,NULL,NULL,'2022-01-09 11:12:04','2022-01-09 11:12:04',NULL),(92,0,NULL,NULL,'2022-01-09 13:41:20','2022-01-09 13:41:20',NULL),(93,0,NULL,NULL,'2022-01-09 14:13:50','2022-01-09 14:13:50',NULL),(94,0,NULL,NULL,'2022-01-09 15:12:00','2022-01-09 15:12:00',NULL),(95,0,NULL,NULL,'2022-01-09 16:18:55','2022-01-09 16:18:55',NULL),(96,0,NULL,NULL,'2022-01-10 06:53:03','2022-01-10 06:53:03',NULL),(97,0,NULL,NULL,'2022-01-10 16:14:36','2022-01-10 16:14:36',NULL),(98,0,NULL,NULL,'2022-01-10 21:14:21','2022-01-10 21:14:21',NULL),(99,0,NULL,NULL,'2022-01-10 22:15:08','2022-01-10 23:14:23',NULL),(100,0,NULL,NULL,'2022-01-10 23:35:11','2022-01-10 23:35:11',2),(101,0,NULL,NULL,'2022-01-11 04:45:32','2022-01-11 04:45:32',NULL),(102,0,NULL,NULL,'2022-01-11 14:36:41','2022-01-11 14:36:41',NULL),(103,0,NULL,NULL,'2022-01-12 18:44:54','2022-01-12 18:44:55',2),(104,0,NULL,NULL,'2022-01-12 18:45:54','2022-01-12 18:45:54',NULL),(105,0,NULL,NULL,'2022-01-13 15:21:03','2022-01-13 15:21:03',1),(106,0,NULL,NULL,'2022-01-13 22:25:18','2022-01-13 22:25:18',1),(107,0,NULL,NULL,'2022-01-14 09:43:42','2022-01-14 09:43:42',1),(108,0,NULL,NULL,'2022-01-15 06:25:48','2022-01-15 06:25:48',1),(109,0,NULL,NULL,'2022-01-16 10:08:56','2022-01-16 10:08:56',1);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` text COLLATE utf8mb4_unicode_ci,
  `price` double NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,1,'iPhone X 64GB  ','iphone_x_64 ','Отличный продвинутый телефон с памятью на 64 gb',NULL,71990,NULL,NULL),(2,1,'iPhone X 256GB','iphone_x_256','Отличный продвинутый телефон с памятью на 256 gb',NULL,89990,NULL,NULL),(3,1,'HTS One S','hts_one_s','ачем платить за лишнее? Легендарный HTC One S',NULL,12490,NULL,NULL),(4,1,'iPhone 5SE','iphone_5se','Отличный классический iPhone',NULL,17221,NULL,NULL),(5,2,'Наушники Beats Audio','beats_audio','Отличный звук от Dr. Dre',NULL,20221,NULL,NULL),(6,2,'Камера GoPro','gopro','Снимай самые яркие моменты с помощью этой камеры',NULL,12000,NULL,NULL),(7,2,'Камера Panasonic HC-V770','panasonic_hc-v770','Для серьёзной видео съемки нужна серьёзная камера',NULL,27900,NULL,NULL),(8,3,'Кофемашина DeLongi','delongi','Хорошее утро начинается с хорошего кофе!',NULL,25200,NULL,NULL),(9,3,'Холодильник Haier','haier','Для большой семьи большой холодильник!',NULL,40200,NULL,NULL),(10,3,'Блендер Moulinex','moulinex','Для самых смелых идей',NULL,4200,NULL,NULL),(11,3,'Мясорубка Bosh','bosh','Любите домашние котлеты? Вам определенно стоит',NULL,9200,NULL,NULL),(13,5,'Mobile 2','mobiles2','описание мобильного телефона',NULL,123,'2022-01-16 09:52:25','2022-01-16 11:40:43');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'alexanderxp','alexanderxp@ukr.net',NULL,'$2y$10$LaH4DwBc9z9l6wAnTGt0ZOCFrM8fSefYFS7lZ8MNt4sJp2sWMpWde',NULL,'2022-01-07 13:42:20','2022-01-07 13:42:20',1),(2,'alexanderxp1','alexanderxp1@ukr.net',NULL,'$2y$10$W3MJIMEnREGVx3Vsw.oJSeB/RDOS9VuCXpk1bd5eZqSLEid6OR/ua',NULL,'2022-01-09 08:16:41','2022-01-09 08:16:41',0),(3,'alexanderxp2','alexanderxp2@ukr.net',NULL,'$2y$10$zMD6zv3VN8JjGcErlqrXxumvK04rhpJuN9avagOcXxF3QgrCiAx6G',NULL,'2022-01-09 15:54:46','2022-01-09 15:54:46',0),(4,'alexanderxp3','alexanderxp3@ukr.net',NULL,'$2y$10$xxrlhbpIlaG4yMtwQ8BAH.VpBxHXcI19EMoFGeaj72rSmwyk.E0Xa',NULL,'2022-01-09 16:11:52','2022-01-09 16:11:52',0);
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

-- Dump completed on 2022-01-16 15:52:14
