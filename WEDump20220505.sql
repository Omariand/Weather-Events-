CREATE DATABASE  IF NOT EXISTS `weather_events` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `weather_events`;
-- MySQL dump 10.13  Distrib 8.0.28, for macos11 (x86_64)
--
-- Host: localhost    Database: weather_events
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `atmospheric_data`
--

DROP TABLE IF EXISTS `atmospheric_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `atmospheric_data` (
  `atmos_id` int NOT NULL AUTO_INCREMENT,
  `year_month` date NOT NULL,
  `co2_ppm` decimal(10,2) NOT NULL,
  PRIMARY KEY (`atmos_id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atmospheric_data`
--

LOCK TABLES `atmospheric_data` WRITE;
/*!40000 ALTER TABLE `atmospheric_data` DISABLE KEYS */;
INSERT INTO `atmospheric_data` VALUES (1,'2016-01-01',402.64),(2,'2016-02-01',403.27),(3,'2016-03-01',403.86),(4,'2016-04-01',404.39),(5,'2016-05-01',404.45),(6,'2016-06-01',403.66),(7,'2016-07-01',402.11),(8,'2016-08-01',400.80),(9,'2016-09-01',400.99),(10,'2016-10-01',402.42),(11,'2016-11-01',403.78),(12,'2016-12-01',404.69),(13,'2017-01-01',405.32),(14,'2017-02-01',405.91),(15,'2017-03-01',406.32),(16,'2017-04-01',406.61),(17,'2017-05-01',406.65),(18,'2017-06-01',405.86),(19,'2017-07-01',404.11),(20,'2017-08-01',402.57),(21,'2017-09-01',402.66),(22,'2017-10-01',404.16),(23,'2017-11-01',405.70),(24,'2017-12-01',406.75),(25,'2018-01-01',407.56),(26,'2018-02-01',408.24),(27,'2018-03-01',408.76),(28,'2018-04-01',409.08),(29,'2018-05-01',408.98),(30,'2018-06-01',408.09),(31,'2018-07-01',406.47),(32,'2018-08-01',405.10),(33,'2018-09-01',405.17),(34,'2018-10-01',406.65),(35,'2018-11-01',408.13),(36,'2018-12-01',409.18),(37,'2019-01-01',409.92),(38,'2019-02-01',410.34),(39,'2019-03-01',410.89),(40,'2019-04-01',411.33),(41,'2019-05-01',411.34),(42,'2019-06-01',410.53),(43,'2019-07-01',408.88),(44,'2019-08-01',407.65),(45,'2019-09-01',407.92),(46,'2019-10-01',409.44),(47,'2019-11-01',410.87),(48,'2019-12-01',411.76),(49,'2020-01-01',412.43),(50,'2020-02-01',412.95),(51,'2020-03-01',413.44),(52,'2020-04-01',413.86),(53,'2020-05-01',413.81),(54,'2020-06-01',412.88),(55,'2020-07-01',411.17),(56,'2020-08-01',409.73),(57,'2020-09-01',410.00),(58,'2020-10-01',411.66),(59,'2020-11-01',413.25),(60,'2020-12-01',414.14),(61,'2021-01-01',414.74),(62,'2021-02-01',415.20),(63,'2021-03-01',415.50),(64,'2021-04-01',415.82),(65,'2021-05-01',416.05),(66,'2021-06-01',415.25),(67,'2021-07-01',413.48),(68,'2021-08-01',412.17),(69,'2021-09-01',412.39),(70,'2021-10-01',413.83),(71,'2021-11-01',415.60),(72,'2021-12-01',416.76);
/*!40000 ALTER TABLE `atmospheric_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_atmospheres`
--

DROP TABLE IF EXISTS `event_atmospheres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_atmospheres` (
  `event_id` int NOT NULL,
  `atmos_id` int NOT NULL,
  PRIMARY KEY (`event_id`,`atmos_id`),
  KEY `fk_atmospheric_data_has_events_events1_idx` (`event_id`),
  KEY `fk_atmospheric_data_has_events_atmospheric_data1_idx` (`atmos_id`),
  CONSTRAINT `fk_atmospheric_data_has_events_atmospheric_data1` FOREIGN KEY (`atmos_id`) REFERENCES `atmospheric_data` (`atmos_id`),
  CONSTRAINT `fk_atmospheric_data_has_events_events1` FOREIGN KEY (`event_id`) REFERENCES `events` (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_atmospheres`
--

LOCK TABLES `event_atmospheres` WRITE;
/*!40000 ALTER TABLE `event_atmospheres` DISABLE KEYS */;
INSERT INTO `event_atmospheres` VALUES (67,62),(68,63),(69,64),(70,64),(71,65),(72,65),(73,65),(74,65),(75,66),(76,66),(77,67),(78,67),(79,68),(80,68),(81,68),(81,69),(82,69),(83,72),(84,72),(85,61),(85,62),(85,63),(85,64),(85,65),(85,66),(85,67),(85,68),(85,69),(85,70),(85,71),(85,72),(86,66),(86,67),(86,68),(86,69),(86,70),(86,71),(86,72);
/*!40000 ALTER TABLE `event_atmospheres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_types`
--

DROP TABLE IF EXISTS `event_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_types` (
  `type_id` int NOT NULL AUTO_INCREMENT,
  `type_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_types`
--

LOCK TABLES `event_types` WRITE;
/*!40000 ALTER TABLE `event_types` DISABLE KEYS */;
INSERT INTO `event_types` VALUES (1,'Drought'),(2,'Flooding'),(3,'Freeze'),(4,'Severe Storm'),(5,'Tropical Cyclone'),(6,'Wildfire'),(7,'Winter Storm');
/*!40000 ALTER TABLE `event_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events` (
  `event_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(90) NOT NULL,
  `type_id` int NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `cost_millions` float DEFAULT NULL,
  `deaths` int unsigned DEFAULT NULL,
  PRIMARY KEY (`event_id`),
  KEY `fk_events_event_types_idx` (`type_id`),
  CONSTRAINT `fk_events_event_types` FOREIGN KEY (`type_id`) REFERENCES `event_types` (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,'Southern Tornado Outbreak and Western Storms (January 2017)',4,'2017-01-20','2017-01-22',1259.7,24),(2,'California Flooding (February 2017)',2,'2017-02-08','2017-02-22',1710,5),(3,'Central/Southeast Tornado Outbreak (March 2017)',4,'2017-02-28','2017-03-01',2058.7,6),(4,'Midwest Tornado Outbreak (March 2017)',4,'2017-03-06','2017-03-08',2480.6,2),(5,'Southeast Freeze (March 2017)',3,'2017-03-14','2017-03-16',1140,0),(6,'South/Southeast Severe Weather (March 2017)',4,'2017-03-26','2017-03-28',3072.3,0),(7,'Missouri and Arkansas Flooding and Central Severe Weather (May 2017)',2,'2017-04-25','2017-05-07',1891.3,20),(8,'Colorado Hail Storm and Central Severe Weather (May 2017)',4,'2017-05-08','2017-05-11',3819,0),(9,'Minnesota Hail Storm and Upper Midwest Severe Weather (June 2017)',4,'2017-06-09','2017-06-11',2679,0),(10,'Midwest Severe Weather (June 2017)',4,'2017-06-12','2017-06-16',1720.2,0),(11,'Midwest Severe Weather (June 2017)',4,'2017-06-27','2017-06-29',1624.5,0),(12,'Hurricane Harvey (August 2017)',5,'2017-08-25','2017-08-31',141250,89),(13,'Hurricane Irma (September 2017)',5,'2017-09-06','2017-09-12',56500,97),(14,'Hurricane Maria (September 2017)',5,'2017-09-19','2017-09-21',101700,2981),(15,'Western Wildfires, California Firestorm (Summer-Fall 2017)',6,'2017-06-01','2017-12-31',20345.7,54),(16,'North Dakota, South Dakota and Montana Drought (Spring-Fall 2017)',1,'2017-03-01','2017-12-31',2825,0),(17,'Central and Eastern Winter Storm (January 2018)',7,'2018-01-03','2018-01-05',1168.1,22),(18,'Northeast Winter Storm (March 2018)',7,'2018-03-01','2018-03-03',2457.3,9),(19,'Southeastern Tornadoes and Severe Weather (March 2018)',4,'2018-03-18','2018-03-21',1626.2,0),(20,'Southern and Eastern Tornadoes and Severe Weather (April 2018)',4,'2018-04-13','2018-04-16',1463.2,3),(21,'Central and Northeastern Severe Weather (May 2018)',4,'2018-05-01','2018-05-04',1556.8,0),(22,'Central and Eastern Severe Weather (May 2018)',4,'2018-05-13','2018-05-15',1520.9,5),(23,'Texas Hail Storm (June 2018)',4,'2018-06-06','2018-06-06',1430,0),(24,'Colorado Hail Storm (June 2018)',4,'2018-06-18','2018-06-19',2445.3,0),(25,'Central and Eastern Tornadoes and Severe Weather (July 2018)',4,'2018-07-19','2018-07-22',1743.5,0),(26,'Rockies and Plains Hail Storms (August 2018)',4,'2018-08-06','2018-08-07',1127.5,0),(27,'Hurricane Florence (September 2018)',5,'2018-09-13','2018-09-16',26400,53),(28,'Hurricane Michael (October 2018)',5,'2018-10-10','2018-10-11',27472.5,49),(29,'Southwest/Southern Plains Drought (Summer-Fall 2018)',1,'2018-06-01','2018-12-30',3289,0),(30,'Western Wildfires, California Firestorm (Summer-Fall 2018)',6,'2018-06-01','2018-12-31',26400,106),(31,'Southeast, Ohio Valley and Northeast Severe Weather (February 2019)',4,'2019-02-23','2019-02-25',1361.1,2),(32,'Texas Hail Storm (March 2019)',4,'2019-03-22','2019-03-24',1673.2,0),(33,'Missouri River and North Central Flooding (March 2019)',2,'2019-03-14','2019-03-31',11692.6,3),(34,'Southern and Eastern Tornadoes and Severe Weather (April 2019)',4,'2019-04-13','2019-04-14',1364.7,7),(35,'South and Southeast Severe Weather (May 2019)',4,'2019-05-07','2019-05-13',1650.5,0),(36,'Central Severe Weather (May 2019)',4,'2019-05-16','2019-05-18',1060.6,0),(37,'Rockies, Central and Northeast Tornadoes and Severe Weather (May 2019)',4,'2019-05-26','2019-05-29',4902.9,3),(38,'Arkansas River Flooding (June 2019)',2,'2019-05-20','2019-06-14',3297.3,5),(39,'Colorado Hail Storms (July 2019)',4,'2019-07-04','2019-07-05',1088.6,0),(40,'Mississippi River, Midwest and Southern Flooding (July 2019)',2,'2019-03-15','2019-07-31',6724.4,4),(41,'Hurricane Dorian (September 2019)',5,'2019-08-28','2019-09-06',1738.8,10),(42,'Tropical Storm Imelda (September 2019)',5,'2019-09-17','2019-09-21',5400,5),(43,'Texas Tornadoes and Central Severe Weather (October 2019)',4,'2019-10-20','2019-10-20',1855.5,2),(44,'California and Alaska Wildfires (Summer-Fall 2019)',6,'2019-06-01','2019-11-30',4905,3),(45,'Southeast Tornadoes and Northern Storms and Flooding (January 2020)',4,'2020-01-10','2020-01-12',1240.9,10),(46,'South, East and Northeast Severe Weather (February 2020)',4,'2020-02-05','2020-02-07',1344.3,3),(47,'Tennessee Tornadoes and Southeast Severe Weather (March 2020)',4,'2020-03-02','2020-03-04',2522.8,25),(48,'Midwest and Ohio Valley Severe Weather (March 2020)',4,'2020-03-27','2020-03-28',2762.5,0),(49,'North Central and Ohio Valley Hail Storms and Severe Weather (April 2020)',4,'2020-04-07','2020-04-08',3111.5,0),(50,'Southeast and Eastern Tornado Outbreak (April 2020)',4,'2020-04-12','2020-04-13',3719.3,35),(51,'Southern Severe Weather (April 2020)',4,'2020-04-21','2020-04-23',1458,3),(52,'Central, Southern and Eastern Severe Weather (April 2020)',4,'2020-04-27','2020-04-30',1109.2,1),(53,'Central and Eastern Severe Weather (May 2020)',4,'2020-05-03','2020-05-05',2282,2),(54,'South, Central and Eastern Severe Weather (May 2020)',4,'2020-05-20','2020-05-23',1710.6,2),(55,'South Texas Hail Storms (May 2020)',4,'2020-05-27','2020-05-27',1512,0),(56,'Central Severe Weather (July 2020)',4,'2020-07-10','2020-07-11',1279.9,0),(57,'Hurricane Hanna (July 2020)',5,'2020-07-25','2020-07-26',1150.3,0),(58,'Hurricane Isaias (August 2020)',5,'2020-08-03','2020-08-04',5090.2,16),(59,'Central Severe Weather - Derecho (August 2020)',4,'2020-08-10','2020-08-10',11798.9,4),(60,'Hurricane Laura (August 2020)',5,'2020-08-27','2020-08-28',20319.4,42),(61,'Hurricane Sally (September 2020)',5,'2020-09-15','2020-09-17',7783.2,5),(62,'Hurricane Delta (October 2020)',5,'2020-10-09','2020-10-11',3067.9,5),(63,'Hurricane Zeta (October 2020)',5,'2020-10-28','2020-10-29',4656.7,6),(64,'Tropical Storm Eta (November 2020)',5,'2020-11-08','2020-11-12',1562.3,12),(65,'Western/Central Drought and Heat Wave (Summer-Fall 2020)',1,'2020-06-01','2020-12-30',4809.8,45),(66,'Western Wildfires - California, Oregon, Washington Firestorms (Fall 2020)',6,'2020-08-01','2020-12-30',17601.5,46),(67,'California Flooding and Severe Weather (January 2021)',2,'2021-01-24','2021-01-29',1160.7,2),(68,'Northwest, Central, Eastern Winter Storm and Cold Wave (February 2021)',7,'2021-02-10','2021-02-19',24047.2,226),(69,'Southeast Tornadoes and Severe Weather (March 2021)',4,'2021-03-24','2021-03-25',1761.1,6),(70,'Eastern Severe Weather (March 2021)',4,'2021-03-27','2021-03-28',1413.6,8),(71,'Texas Hail Storms (April 2021)',4,'2021-04-12','2021-04-15',1548.8,0),(72,'Texas and Oklahoma Severe Weather (April 2021)',4,'2021-04-27','2021-04-28',3306.5,0),(73,'Southern Tornadoes and Southeast Severe Weather (May 2021)',4,'2021-05-02','2021-05-04',1302.2,4),(74,'Louisiana Flooding (May 2021)',4,'2021-05-17','2021-05-18',1385,5),(75,'Ohio Valley Hail Storms (June 2021)',4,'2021-06-17','2021-06-18',1741.1,0),(76,'Central Severe Storms (June 2021)',4,'2021-06-24','2021-06-26',1278.2,0),(77,'Tropical Storm Elsa (July 2021)',5,'2021-07-07','2021-07-09',1237.3,1),(78,'Central Severe Storms (July 2021)',4,'2021-07-08','2021-07-11',1101.6,0),(79,'North Central Severe Weather (August 2021)',4,'2021-08-10','2021-08-13',1309.7,2),(80,'Tropical Storm Fred (August 2021)',5,'2021-08-16','2021-08-18',1302.5,7),(81,'Hurricane Ida (August 2021)',5,'2021-08-29','2021-09-01',75043.5,96),(82,'Hurricane Nicholas (September 2021)',5,'2021-09-14','2021-09-18',1036.3,0),(83,'Southeast, Central Tornado Outbreak (December 2021)',4,'2021-12-10','2021-12-10',3915,93),(84,'Midwest Derecho and Tornado Outbreak (December 2021)',4,'2021-12-15','2021-12-15',1782,1),(85,'Western Drought and Heat Wave (2021)',1,'2021-01-01','2021-12-31',8936.9,229),(86,'Western Wildfires (2021)',6,'2021-06-01','2021-12-31',10608,8);
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regions`
--

DROP TABLE IF EXISTS `regions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `regions` (
  `region_id` int NOT NULL AUTO_INCREMENT,
  `region_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`region_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regions`
--

LOCK TABLES `regions` WRITE;
/*!40000 ALTER TABLE `regions` DISABLE KEYS */;
INSERT INTO `regions` VALUES (1,'Central'),(2,'East North'),(3,'Northeast'),(4,'Northwest'),(5,'South'),(6,'Southeast'),(7,'Southwest'),(8,'West'),(9,'West North'),(10,'Alaska'),(11,'Hawaii'),(12,'Puerto Rico');
/*!40000 ALTER TABLE `regions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regions_affected`
--

DROP TABLE IF EXISTS `regions_affected`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `regions_affected` (
  `event_id` int NOT NULL,
  `region_id` int NOT NULL,
  PRIMARY KEY (`event_id`,`region_id`),
  KEY `fk_regions_affected_regions1_idx` (`region_id`),
  CONSTRAINT `fk_regions_affected_events1` FOREIGN KEY (`event_id`) REFERENCES `events` (`event_id`),
  CONSTRAINT `fk_regions_affected_regions1` FOREIGN KEY (`region_id`) REFERENCES `regions` (`region_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regions_affected`
--

LOCK TABLES `regions_affected` WRITE;
/*!40000 ALTER TABLE `regions_affected` DISABLE KEYS */;
INSERT INTO `regions_affected` VALUES (3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(10,1),(11,1),(17,1),(21,1),(22,1),(25,1),(31,1),(36,1),(37,1),(40,1),(43,1),(47,1),(48,1),(49,1),(52,1),(53,1),(54,1),(56,1),(59,1),(65,1),(69,1),(70,1),(73,1),(75,1),(76,1),(78,1),(79,1),(83,1),(9,2),(10,2),(11,2),(17,2),(21,2),(22,2),(25,2),(33,2),(36,2),(37,2),(75,2),(76,2),(78,2),(79,2),(84,2),(10,3),(18,3),(31,3),(34,3),(37,3),(45,3),(46,3),(48,3),(50,3),(52,3),(58,3),(68,3),(77,3),(80,3),(81,3),(86,4),(1,5),(3,5),(4,5),(5,5),(6,5),(7,5),(8,5),(10,5),(12,5),(20,5),(23,5),(29,5),(32,5),(34,5),(35,5),(36,5),(37,5),(38,5),(40,5),(42,5),(43,5),(46,5),(47,5),(48,5),(51,5),(52,5),(53,5),(54,5),(55,5),(56,5),(57,5),(60,5),(61,5),(62,5),(63,5),(64,5),(68,5),(69,5),(70,5),(71,5),(72,5),(73,5),(74,5),(76,5),(78,5),(81,5),(82,5),(83,5),(84,5),(1,6),(4,6),(5,6),(10,6),(13,6),(19,6),(20,6),(27,6),(28,6),(31,6),(34,6),(35,6),(41,6),(45,6),(46,6),(50,6),(54,6),(58,6),(68,6),(69,6),(70,6),(73,6),(77,6),(80,6),(6,7),(8,7),(24,7),(26,7),(29,7),(37,7),(39,7),(78,7),(86,7),(2,8),(15,8),(30,8),(44,8),(65,8),(66,8),(67,8),(85,8),(86,8),(10,9),(11,9),(16,9),(26,9),(33,9),(40,9),(78,9),(84,9),(86,9),(44,10),(14,12);
/*!40000 ALTER TABLE `regions_affected` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `state_populations`
--

DROP TABLE IF EXISTS `state_populations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `state_populations` (
  `state_pop_id` int NOT NULL AUTO_INCREMENT,
  `state_id` int NOT NULL,
  `year` int unsigned NOT NULL,
  `population` int unsigned NOT NULL,
  PRIMARY KEY (`state_pop_id`),
  KEY `fk_state_populations_states1_idx` (`state_id`),
  CONSTRAINT `fk_state_populations_states1` FOREIGN KEY (`state_id`) REFERENCES `states` (`state_id`)
) ENGINE=InnoDB AUTO_INCREMENT=261 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `state_populations`
--

LOCK TABLES `state_populations` WRITE;
/*!40000 ALTER TABLE `state_populations` DISABLE KEYS */;
INSERT INTO `state_populations` VALUES (1,1,2017,4874486),(2,2,2017,739700),(3,3,2017,7044008),(4,4,2017,3001345),(5,5,2017,39358497),(6,6,2017,5611885),(7,7,2017,3573297),(8,8,2017,956823),(9,9,2017,694906),(10,10,2017,20963613),(11,11,2017,10410330),(12,12,2017,1424393),(13,13,2017,1717715),(14,14,2017,12778828),(15,15,2017,6658078),(16,16,2017,3141550),(17,17,2017,2908718),(18,18,2017,4452268),(19,19,2017,4670560),(20,20,2017,1334612),(21,21,2017,6023868),(22,22,2017,6859789),(23,23,2017,9973114),(24,24,2017,5566230),(25,25,2017,2988510),(26,26,2017,6106670),(27,27,2017,1052482),(28,28,2017,1915947),(29,29,2017,2969905),(30,30,2017,1348787),(31,31,2017,8885525),(32,32,2017,2091784),(33,33,2017,19589572),(34,34,2017,10268233),(35,35,2017,754942),(36,36,2017,11659650),(37,37,2017,3931316),(38,38,2017,4143625),(39,39,2017,12787641),(40,40,2017,1055673),(41,41,2017,5021268),(42,42,2017,872868),(43,43,2017,6708799),(44,44,2017,28295273),(45,45,2017,3101042),(46,46,2017,624344),(47,47,2017,8463587),(48,48,2017,7423362),(49,49,2017,1817004),(50,50,2017,5790186),(51,51,2017,578931),(52,52,2017,3325286),(53,1,2018,4887681),(54,2,2018,735139),(55,3,2018,7158024),(56,4,2018,3009733),(57,5,2018,39461588),(58,6,2018,5691287),(59,7,2018,3571520),(60,8,2018,965479),(61,9,2018,701547),(62,10,2018,21244317),(63,11,2018,10511131),(64,12,2018,1420593),(65,13,2018,1750536),(66,14,2018,12723071),(67,15,2018,6695497),(68,16,2018,3148618),(69,17,2018,2911359),(70,18,2018,4461153),(71,19,2018,4659690),(72,20,2018,1339057),(73,21,2018,6035802),(74,22,2018,6882635),(75,23,2018,9984072),(76,24,2018,5606249),(77,25,2018,2981020),(78,26,2018,6121623),(79,27,2018,1060665),(80,28,2018,1925614),(81,29,2018,3027341),(82,30,2018,1353465),(83,31,2018,8886025),(84,32,2018,2092741),(85,33,2018,19530351),(86,34,2018,10381615),(87,35,2018,758080),(88,36,2018,11676341),(89,37,2018,3940235),(90,38,2018,4181886),(91,39,2018,12800922),(92,40,2018,1058287),(93,41,2018,5084156),(94,42,2018,878698),(95,43,2018,6771631),(96,44,2018,28628666),(97,45,2018,3153550),(98,46,2018,624358),(99,47,2018,8501286),(100,48,2018,7523869),(101,49,2018,1804291),(102,50,2018,5807406),(103,51,2018,577601),(104,52,2018,3193354),(105,1,2019,4903185),(106,2,2019,731545),(107,3,2019,7278717),(108,4,2019,3017804),(109,5,2019,39512223),(110,6,2019,5758736),(111,7,2019,3565287),(112,8,2019,973764),(113,9,2019,705749),(114,10,2019,21477737),(115,11,2019,10617423),(116,12,2019,1415872),(117,13,2019,1787065),(118,14,2019,12671821),(119,15,2019,6732219),(120,16,2019,3155070),(121,17,2019,2913314),(122,18,2019,4467673),(123,19,2019,4648794),(124,20,2019,1344212),(125,21,2019,6045680),(126,22,2019,6892503),(127,23,2019,9986857),(128,24,2019,5639632),(129,25,2019,2976149),(130,26,2019,6137428),(131,27,2019,1068778),(132,28,2019,1934408),(133,29,2019,3080156),(134,30,2019,1359711),(135,31,2019,8882190),(136,32,2019,2096829),(137,33,2019,19453561),(138,34,2019,10488084),(139,35,2019,762062),(140,36,2019,11689100),(141,37,2019,3956971),(142,38,2019,4217737),(143,39,2019,12801989),(144,40,2019,1059361),(145,41,2019,5148714),(146,42,2019,884659),(147,43,2019,6829174),(148,44,2019,28995881),(149,45,2019,3205958),(150,46,2019,623989),(151,47,2019,8535519),(152,48,2019,7614893),(153,49,2019,1792147),(154,50,2019,5822434),(155,51,2019,578759),(156,52,2019,3193694),(157,1,2020,5024803),(158,2,2020,732441),(159,3,2020,7177986),(160,4,2020,3012232),(161,5,2020,39499738),(162,6,2020,5784308),(163,7,2020,3600260),(164,8,2020,991886),(165,9,2020,690093),(166,10,2020,21569932),(167,11,2020,10725800),(168,12,2020,1451911),(169,13,2020,1847772),(170,14,2020,12785245),(171,15,2020,6785644),(172,16,2020,3188669),(173,17,2020,2935880),(174,18,2020,4503958),(175,19,2020,4651203),(176,20,2020,1362280),(177,21,2020,6172679),(178,22,2020,7022220),(179,23,2020,10067664),(180,24,2020,5707165),(181,25,2020,2956870),(182,26,2020,6154481),(183,27,2020,1086193),(184,28,2020,1961455),(185,29,2020,3114071),(186,30,2020,1377848),(187,31,2020,9279743),(188,32,2020,2117566),(189,33,2020,20154933),(190,34,2020,10457177),(191,35,2020,778962),(192,36,2020,11790587),(193,37,2020,3962031),(194,38,2020,4241544),(195,39,2020,12989625),(196,40,2020,1096229),(197,41,2020,5130729),(198,42,2020,887099),(199,43,2020,6920119),(200,44,2020,29217653),(201,45,2020,3281684),(202,46,2020,642495),(203,47,2020,8632044),(204,48,2020,7718785),(205,49,2020,1789798),(206,50,2020,5892323),(207,51,2020,577267),(208,52,2020,3281538),(209,1,2021,5039877),(210,2,2021,732673),(211,3,2021,7276316),(212,4,2021,3025891),(213,5,2021,39237836),(214,6,2021,5812069),(215,7,2021,3605597),(216,8,2021,1003384),(217,9,2021,670050),(218,10,2021,21781128),(219,11,2021,10799566),(220,12,2021,1441553),(221,13,2021,1900923),(222,14,2021,12671469),(223,15,2021,6805985),(224,16,2021,3193079),(225,17,2021,2934582),(226,18,2021,4509394),(227,19,2021,4624047),(228,20,2021,1372247),(229,21,2021,6165129),(230,22,2021,6984723),(231,23,2021,10050811),(232,24,2021,5707390),(233,25,2021,2949965),(234,26,2021,6168187),(235,27,2021,1104271),(236,28,2021,1963692),(237,29,2021,3143991),(238,30,2021,1388992),(239,31,2021,9267130),(240,32,2021,2115877),(241,33,2021,19835913),(242,34,2021,10551162),(243,35,2021,774948),(244,36,2021,11780017),(245,37,2021,3986639),(246,38,2021,4246155),(247,39,2021,12964056),(248,40,2021,1095610),(249,41,2021,5190705),(250,42,2021,895376),(251,43,2021,6975218),(252,44,2021,29527941),(253,45,2021,3337975),(254,46,2021,645570),(255,47,2021,8642274),(256,48,2021,7738692),(257,49,2021,1782959),(258,50,2021,5895908),(259,51,2021,578803),(260,52,2021,3263584);
/*!40000 ALTER TABLE `state_populations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `state_id` int NOT NULL AUTO_INCREMENT,
  `state_name` varchar(45) DEFAULT NULL,
  `land_area_km_sq` int NOT NULL,
  `region_id` int NOT NULL,
  PRIMARY KEY (`state_id`),
  KEY `fk_states_regions1_idx` (`region_id`),
  CONSTRAINT `fk_states_regions1` FOREIGN KEY (`region_id`) REFERENCES `regions` (`region_id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'Alabama',131171,6),(2,'Alaska',1477953,10),(3,'Arizona',294207,7),(4,'Arkansas',134771,5),(5,'California',403466,8),(6,'Colorado',268431,7),(7,'Connecticut',12542,3),(8,'Delaware',5047,3),(9,'District of Columbia',158,3),(10,'Florida',138887,6),(11,'Georgia',148959,6),(12,'Hawaii',16635,11),(13,'Idaho',214045,4),(14,'Illinois',143793,1),(15,'Indiana',92789,1),(16,'Iowa',144669,2),(17,'Kansas',211754,5),(18,'Kentucky',102269,1),(19,'Louisiana',111898,5),(20,'Maine',79883,3),(21,'Maryland',25142,3),(22,'Massachusetts',20202,3),(23,'Michigan',146435,2),(24,'Minnesota',206232,2),(25,'Mississippi',121531,5),(26,'Missouri',178040,1),(27,'Montana',376962,9),(28,'Nebraska',198974,9),(29,'Nevada',284332,8),(30,'New Hampshire',23187,3),(31,'New Jersey',19047,3),(32,'New Mexico',314161,7),(33,'New York',122057,3),(34,'North Carolina',125920,6),(35,'North Dakota',178711,9),(36,'Ohio',105829,1),(37,'Oklahoma',177660,5),(38,'Oregon',248608,4),(39,'Pennsylvania',115883,3),(40,'Rhode Island',2678,3),(41,'South Carolina',77857,6),(42,'South Dakota',196350,9),(43,'Tennessee',106798,1),(44,'Texas',676587,5),(45,'Utah',212818,7),(46,'Vermont',23871,3),(47,'Virginia',102279,6),(48,'Washington',172119,4),(49,'West Virginia',62259,1),(50,'Wisconsin',140268,2),(51,'Wyoming',251470,9),(52,'Puerto Rico',8868,12);
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-05 12:48:03
