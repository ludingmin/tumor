CREATE DATABASE  IF NOT EXISTS `tumor` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `tumor`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: tumor
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
  `doctor_name` int NOT NULL,
  `time` datetime DEFAULT NULL,
  `state` int NOT NULL,
  `booking_id` int NOT NULL AUTO_INCREMENT,
  `name` int NOT NULL,
  `img_url` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`booking_id`) USING BTREE,
  UNIQUE KEY `booking_id_UNIQUE` (`booking_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10012002 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES (102,NULL,0,100102,101,'https://tumor-pictrue.oss-rg-china-mainland.aliyuncs.com/60.png'),(1,NULL,1,10012001,2,'1111');
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consultation`
--

DROP TABLE IF EXISTS `consultation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consultation` (
  `consultation_id` int NOT NULL AUTO_INCREMENT,
  `booking_id` int NOT NULL,
  `diagnostic_status` int NOT NULL,
  `content` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `creation_timel` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`consultation_id`) USING BTREE,
  UNIQUE KEY `consultation_id_UNIQUE` (`consultation_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consultation`
--

LOCK TABLES `consultation` WRITE;
/*!40000 ALTER TABLE `consultation` DISABLE KEYS */;
/*!40000 ALTER TABLE `consultation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor` (
  `doctor_id` int NOT NULL,
  `onboarding_time` date NOT NULL,
  `jobtitle` varchar(60) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `doctor_name` varchar(45) NOT NULL,
  PRIMARY KEY (`doctor_id`) USING BTREE,
  UNIQUE KEY `doctor_id_UNIQUE` (`doctor_id`) USING BTREE,
  UNIQUE KEY `doctor_name_UNIQUE` (`doctor_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `id` int NOT NULL,
  `cases` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `name` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT '用户名',
  `number` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT '号码',
  `password` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT '密码',
  `age` int NOT NULL COMMENT '年龄',
  `address` varchar(255) DEFAULT NULL COMMENT '详细地址',
  `postcode` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL COMMENT '邮政编码',
  `type` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `id_UNIQUE` (`id`) USING BTREE,
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=100108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (100101,'zhangsan','13924175649','123456',15,NULL,NULL,0),(100102,'lisi','13928791132','123456',15,'asdas','511487',NULL),(100104,'lisi8','13928791132','123456',15,'随便','511487',NULL),(100105,'ludingmin','13924175649','123456',18,'随便','511487',0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-26  0:05:20
