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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Мобильные телефоны','mobiles','описание мобильных телефонов',NULL,NULL,NULL),(2,'Портативная техника','portable','описание для раздела портативной техники',NULL,NULL,NULL),(3,'Бытовая техника','technics',NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (6,'2014_10_12_000000_create_users_table',1),(7,'2021_10_04_165714_create_products_table',1),(8,'2021_10_04_183433_create_categories_table',1),(9,'2021_10_04_234350_create_products_table',2),(10,'2021_10_10_234622_create_orders_table',3),(11,'2021_10_11_192302_create_order_product_table',4),(13,'2021_10_18_161244_update_order_product_table',5),(14,'2022_01_07_135835_create_users_table',6);
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
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_product`
--

LOCK TABLES `order_product` WRITE;
/*!40000 ALTER TABLE `order_product` DISABLE KEYS */;
INSERT INTO `order_product` VALUES (75,40,1,2,'2021-10-18 20:29:29','2021-10-18 20:29:34'),(84,47,1,2,'2021-10-21 07:27:26','2021-10-21 07:31:23'),(85,47,9,1,'2021-10-21 07:31:28','2021-10-21 07:31:28'),(86,59,1,2,'2022-01-04 10:06:24','2022-01-04 10:52:56'),(87,59,1,2,'2022-01-04 10:06:25','2022-01-04 10:52:56'),(88,62,1,2,'2022-01-04 16:08:47','2022-01-04 18:43:44'),(89,62,1,2,'2022-01-04 16:08:50','2022-01-04 18:43:44'),(90,66,1,3,'2022-01-04 22:09:40','2022-01-04 22:09:44'),(91,67,1,1,'2022-01-04 22:18:22','2022-01-04 22:18:22'),(92,68,1,4,'2022-01-04 22:30:33','2022-01-04 22:30:37'),(93,69,1,1,'2022-01-04 22:30:57','2022-01-04 22:30:57'),(94,69,3,3,'2022-01-04 22:31:10','2022-01-04 22:31:25'),(95,70,1,2,'2022-01-04 22:36:07','2022-01-04 22:36:11'),(96,70,11,5,'2022-01-04 22:36:17','2022-01-04 22:36:24'),(97,71,2,1,'2022-01-05 17:10:23','2022-01-05 17:10:23'),(98,71,9,1,'2022-01-05 17:10:31','2022-01-05 17:10:31'),(99,72,2,7,'2022-01-05 17:15:50','2022-01-05 17:15:57'),(106,73,1,1,'2022-01-06 08:38:58','2022-01-06 08:38:58'),(107,73,4,1,'2022-01-06 08:39:10','2022-01-06 08:39:10'),(108,74,1,1,'2022-01-06 09:22:56','2022-01-06 09:22:56'),(109,75,2,1,'2022-01-06 09:27:09','2022-01-06 09:27:09'),(126,77,5,1,'2022-01-06 18:49:43','2022-01-06 18:49:43'),(128,78,6,1,'2022-01-07 06:49:36','2022-01-07 06:49:36'),(131,79,3,1,'2022-01-07 06:50:43','2022-01-07 06:50:43'),(133,80,8,1,'2022-01-07 15:19:14','2022-01-07 15:19:14'),(134,81,2,1,'2022-01-07 15:51:57','2022-01-07 15:51:57'),(135,82,2,1,'2022-01-07 15:52:42','2022-01-07 15:52:42');
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,0,NULL,NULL,'2021-10-18 20:29:29','2021-10-18 20:29:34'),(2,0,NULL,NULL,'2021-10-21 04:01:50','2021-10-21 07:01:30'),(3,0,NULL,NULL,'2021-10-21 04:02:34','2021-10-21 07:01:29'),(4,1,'alexanderxp','0935961627','2022-01-04 16:08:22','2022-01-04 21:36:25'),(5,1,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28'),(6,1,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28'),(7,1,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28'),(8,1,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28'),(9,1,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28'),(10,1,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28'),(11,1,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28'),(12,1,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28'),(13,1,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28'),(14,1,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28'),(15,1,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28'),(16,1,'alexanderxp','0935961627','2022-01-04 16:08:22','2022-01-04 21:36:25'),(17,1,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28'),(18,1,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28'),(19,1,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28'),(20,1,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28'),(21,1,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28'),(22,1,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28'),(23,1,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28'),(24,1,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28'),(25,1,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28'),(26,1,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28'),(27,1,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28'),(28,1,'alexanderxp','0935961627','2022-01-04 16:08:22','2022-01-04 21:36:25'),(29,1,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28'),(30,1,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28'),(31,1,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28'),(32,1,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28'),(33,1,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28'),(34,1,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28'),(35,1,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28'),(36,1,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28'),(37,1,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28'),(38,1,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28'),(39,1,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28'),(40,1,'alexanderxp','0935961627','2022-01-04 16:08:22','2022-01-04 21:36:25'),(41,1,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28'),(42,1,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28'),(43,1,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28'),(44,1,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28'),(45,1,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28'),(46,1,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28'),(47,1,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28'),(48,1,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28'),(49,1,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28'),(50,1,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28'),(51,1,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28'),(52,1,'alexanderxp','0935961627','2022-01-04 16:08:22','2022-01-04 21:36:25'),(53,1,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28'),(54,1,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28'),(55,1,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28'),(56,1,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28'),(57,1,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28'),(58,1,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28'),(59,1,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28'),(60,1,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28'),(61,1,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28'),(62,1,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28'),(63,1,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28'),(64,1,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28'),(65,1,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28'),(66,1,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28'),(67,1,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28'),(68,1,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28'),(69,1,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28'),(70,1,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28'),(71,1,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28'),(72,1,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28'),(73,1,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28'),(74,1,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28'),(75,1,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28'),(76,1,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28'),(77,1,'alexanderxp','0935961627','2022-01-04 22:18:22','2022-01-04 22:18:28'),(78,1,'alexanderxp','0935961627','2022-01-07 06:45:05','2022-01-07 06:50:33'),(79,0,NULL,NULL,'2022-01-07 06:50:43','2022-01-07 06:50:43'),(80,0,NULL,NULL,'2022-01-07 14:42:20','2022-01-07 14:42:20'),(81,1,'alexanderxp','0935961627','2022-01-07 15:51:57','2022-01-07 15:52:39'),(82,0,NULL,NULL,'2022-01-07 15:52:42','2022-01-07 15:52:42');
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,1,'iPhone X 64GB  ','iphone_x_64 ','Отличный продвинутый телефон с памятью на 64 gb',NULL,71990,NULL,NULL),(2,1,'iPhone X 256GB','iphone_x_256','Отличный продвинутый телефон с памятью на 256 gb',NULL,89990,NULL,NULL),(3,1,'HTS One S','hts_one_s','ачем платить за лишнее? Легендарный HTC One S',NULL,12490,NULL,NULL),(4,1,'iPhone 5SE','iphone_5se','Отличный классический iPhone',NULL,17221,NULL,NULL),(5,2,'Наушники Beats Audio','beats_audio','Отличный звук от Dr. Dre',NULL,20221,NULL,NULL),(6,2,'Камера GoPro','gopro','Снимай самые яркие моменты с помощью этой камеры',NULL,12000,NULL,NULL),(7,2,'Камера Panasonic HC-V770','panasonic_hc-v770','Для серьёзной видео съемки нужна серьёзная камера',NULL,27900,NULL,NULL),(8,3,'Кофемашина DeLongi','delongi','Хорошее утро начинается с хорошего кофе!',NULL,25200,NULL,NULL),(9,3,'Холодильник Haier','haier','Для большой семьи большой холодильник!',NULL,40200,NULL,NULL),(10,3,'Блендер Moulinex','moulinex','Для самых смелых идей',NULL,4200,NULL,NULL),(11,3,'Мясорубка Bosh','bosh','Любите домашние котлеты? Вам определенно стоит',NULL,9200,NULL,NULL);
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
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'alexanderxp','alexanderxp@ukr.net',NULL,'$2y$10$LaH4DwBc9z9l6wAnTGt0ZOCFrM8fSefYFS7lZ8MNt4sJp2sWMpWde',NULL,'2022-01-07 13:42:20','2022-01-07 13:42:20');
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

-- Dump completed on 2022-01-07 19:59:20