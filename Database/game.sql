-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: mu_online_game
-- ------------------------------------------------------
-- Server version	5.7.29-log

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
-- Table structure for table `buff_template`
--

DROP TABLE IF EXISTS `buff_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buff_template` (
  `buff` smallint(6) unsigned NOT NULL,
  `group` smallint(6) DEFAULT NULL,
  `item_type` tinyint(4) unsigned DEFAULT NULL,
  `item_id` smallint(6) unsigned DEFAULT NULL,
  `name` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `description` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `send` tinyint(4) DEFAULT NULL,
  `debuff` tinyint(4) DEFAULT NULL,
  `effect_1` tinyint(4) unsigned DEFAULT NULL,
  `value_1` float DEFAULT NULL,
  `effect_2` tinyint(4) unsigned DEFAULT NULL,
  `value_2` float DEFAULT NULL,
  `duration` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`buff`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buff_template`
--

LOCK TABLES `buff_template` WRITE;
/*!40000 ALTER TABLE `buff_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `buff_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cash_shop_category`
--

DROP TABLE IF EXISTS `cash_shop_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cash_shop_category` (
  `id` smallint(5) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `parent` tinyint(3) unsigned DEFAULT NULL,
  `main` tinyint(3) unsigned DEFAULT NULL,
  `disabled` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cash_shop_category`
--

LOCK TABLES `cash_shop_category` WRITE;
/*!40000 ALTER TABLE `cash_shop_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `cash_shop_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cash_shop_package`
--

DROP TABLE IF EXISTS `cash_shop_package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cash_shop_package` (
  `package` int(10) unsigned NOT NULL,
  `category` int(10) unsigned DEFAULT NULL,
  `position` tinyint(3) unsigned DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `display_item` smallint(5) unsigned DEFAULT NULL,
  `flags` int(10) unsigned DEFAULT NULL,
  `price_type` tinyint(3) unsigned DEFAULT NULL,
  `start_date` bigint(20) DEFAULT NULL,
  `end_date` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`package`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cash_shop_package`
--

LOCK TABLES `cash_shop_package` WRITE;
/*!40000 ALTER TABLE `cash_shop_package` DISABLE KEYS */;
/*!40000 ALTER TABLE `cash_shop_package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cash_shop_product`
--

DROP TABLE IF EXISTS `cash_shop_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cash_shop_product` (
  `product` int(10) unsigned NOT NULL,
  `package` int(10) unsigned DEFAULT NULL,
  `option` int(10) unsigned DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` int(10) unsigned DEFAULT NULL,
  `buy_type` tinyint(3) unsigned DEFAULT NULL,
  `use_type` tinyint(3) unsigned DEFAULT NULL,
  `flags` int(10) unsigned DEFAULT NULL,
  `duration` bigint(20) DEFAULT NULL,
  `item_type` tinyint(3) unsigned DEFAULT NULL,
  `item_index` smallint(5) unsigned DEFAULT NULL,
  `item_level` tinyint(3) unsigned DEFAULT NULL,
  `item_durability` int(11) DEFAULT NULL,
  `item_skill` tinyint(3) unsigned DEFAULT NULL,
  `item_luck` tinyint(3) unsigned DEFAULT NULL,
  `item_option` tinyint(3) unsigned DEFAULT NULL,
  `item_excellent` tinyint(3) unsigned DEFAULT NULL,
  `item_ancient` tinyint(3) unsigned DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cash_shop_product`
--

LOCK TABLES `cash_shop_product` WRITE;
/*!40000 ALTER TABLE `cash_shop_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `cash_shop_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_base`
--

DROP TABLE IF EXISTS `character_base`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_base` (
  `race` int(10) unsigned NOT NULL,
  `strength` int(10) unsigned DEFAULT NULL,
  `agility` int(10) unsigned DEFAULT NULL,
  `vitality` int(10) unsigned DEFAULT NULL,
  `energy` int(10) unsigned DEFAULT NULL,
  `leadership` int(10) unsigned DEFAULT NULL,
  `life` int(11) DEFAULT NULL,
  `mana` int(11) DEFAULT NULL,
  `life_per_level` float DEFAULT NULL,
  `mana_per_level` float DEFAULT NULL,
  `life_per_vitality` float DEFAULT NULL,
  `mana_per_energy` float DEFAULT NULL,
  `world` smallint(5) unsigned DEFAULT NULL,
  `level` smallint(6) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `recovery_life` float DEFAULT NULL,
  `recovery_mana` float DEFAULT NULL,
  `recovery_shield` float DEFAULT NULL,
  `recovery_stamina` float DEFAULT NULL,
  `points_levelup` int(10) unsigned DEFAULT NULL,
  `points_levelup_plus` int(10) unsigned DEFAULT NULL,
  `points_levelup_master` int(10) unsigned DEFAULT NULL,
  `points_levelup_majestic` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`race`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_base`
--

LOCK TABLES `character_base` WRITE;
/*!40000 ALTER TABLE `character_base` DISABLE KEYS */;
INSERT INTO `character_base` VALUES (0,18,18,15,30,0,60,60,1,2,2,2,0,1,0,15,15,15,15,5,6,6,6),(1,28,20,25,10,0,110,20,2,0.5,3,1.5,0,1,0,15,15,15,15,5,6,6,6),(2,22,25,20,15,0,80,30,1,1.5,2,1.5,3,1,0,15,15,15,15,5,6,6,6),(3,26,26,26,26,0,110,60,1,1,2,2,0,1,0,15,15,15,15,7,7,7,7),(4,26,20,20,15,25,90,40,1,1,2,1.5,0,1,0,15,15,15,15,7,7,7,7),(5,21,21,18,23,0,70,40,1,1.5,2,1.7,51,1,0,15,15,15,15,5,6,6,6),(6,32,27,25,20,0,100,40,1.3,1,1,1.3,0,1,0,15,15,15,15,7,7,7,7),(7,30,30,25,24,0,110,40,2,1,2,1,0,1,0,15,15,15,15,7,7,7,7),(8,13,18,14,40,0,60,60,1.2,1.8,2,1.5,3,1,0,15,15,15,15,5,6,6,6),(9,28,30,15,10,0,130,10,1.5,1,3,1,0,1,0,15,15,15,15,5,6,6,6),(10,20,18,20,25,0,100,80,1.5,1.5,2,2,0,1,0,15,15,15,15,5,6,6,6);
/*!40000 ALTER TABLE `character_base` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_bonus`
--

DROP TABLE IF EXISTS `character_bonus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_bonus` (
  `server` smallint(5) unsigned NOT NULL,
  `level_min` smallint(6) DEFAULT NULL,
  `level_max` smallint(6) DEFAULT NULL,
  `experience_rate` smallint(6) DEFAULT NULL,
  `drop_rate` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`server`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_bonus`
--

LOCK TABLES `character_bonus` WRITE;
/*!40000 ALTER TABLE `character_bonus` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_bonus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_experience_adjust`
--

DROP TABLE IF EXISTS `character_experience_adjust`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_experience_adjust` (
  `level_min` smallint(6) DEFAULT NULL,
  `level_max` smallint(6) DEFAULT NULL,
  `experience_rate` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_experience_adjust`
--

LOCK TABLES `character_experience_adjust` WRITE;
/*!40000 ALTER TABLE `character_experience_adjust` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_experience_adjust` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_experience_bonus`
--

DROP TABLE IF EXISTS `character_experience_bonus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_experience_bonus` (
  `race_1` tinyint(3) unsigned NOT NULL,
  `race_2` tinyint(3) unsigned NOT NULL,
  `race_3` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`race_1`,`race_2`,`race_3`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_experience_bonus`
--

LOCK TABLES `character_experience_bonus` WRITE;
/*!40000 ALTER TABLE `character_experience_bonus` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_experience_bonus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_experience_table`
--

DROP TABLE IF EXISTS `character_experience_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_experience_table` (
  `level_min` smallint(6) DEFAULT NULL,
  `level_max` smallint(6) DEFAULT NULL,
  `experience_rate` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_experience_table`
--

LOCK TABLES `character_experience_table` WRITE;
/*!40000 ALTER TABLE `character_experience_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_experience_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_formula`
--

DROP TABLE IF EXISTS `character_formula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_formula` (
  `type` tinyint(3) unsigned NOT NULL,
  `race` tinyint(3) unsigned NOT NULL,
  `level_mul` float DEFAULT NULL,
  `level_div` float DEFAULT NULL,
  `strength_mul` float DEFAULT NULL,
  `strength_div` float DEFAULT NULL,
  `agility_mul` float DEFAULT NULL,
  `agility_div` float DEFAULT NULL,
  `vitality_mul` float DEFAULT NULL,
  `vitality_div` float DEFAULT NULL,
  `energy_mul` float DEFAULT NULL,
  `energy_div` float DEFAULT NULL,
  `leadership_mul` float DEFAULT NULL,
  `leadership_div` float DEFAULT NULL,
  PRIMARY KEY (`race`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_formula`
--

LOCK TABLES `character_formula` WRITE;
/*!40000 ALTER TABLE `character_formula` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_formula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_helper`
--

DROP TABLE IF EXISTS `character_helper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_helper` (
  `race` tinyint(3) unsigned NOT NULL,
  `stage` int(11) NOT NULL,
  `duration` int(10) unsigned DEFAULT NULL,
  `cost` int(10) unsigned DEFAULT NULL,
  `cost_interval` int(10) unsigned DEFAULT NULL,
  `next_stage` int(11) DEFAULT NULL,
  PRIMARY KEY (`stage`,`race`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_helper`
--

LOCK TABLES `character_helper` WRITE;
/*!40000 ALTER TABLE `character_helper` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_helper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_item`
--

DROP TABLE IF EXISTS `character_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_item` (
  `race` tinyint(3) unsigned NOT NULL,
  `slot` tinyint(3) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `index` smallint(5) unsigned NOT NULL,
  `level` tinyint(3) unsigned DEFAULT NULL,
  `durability` tinyint(3) unsigned DEFAULT NULL,
  `skill` tinyint(3) unsigned DEFAULT NULL,
  `luck` tinyint(3) unsigned DEFAULT NULL,
  `option` tinyint(3) unsigned DEFAULT NULL,
  `excellent` tinyint(3) unsigned DEFAULT NULL,
  `ancient` tinyint(3) unsigned DEFAULT NULL,
  `duration` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`race`,`slot`,`type`,`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_item`
--

LOCK TABLES `character_item` WRITE;
/*!40000 ALTER TABLE `character_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_max_level_reward`
--

DROP TABLE IF EXISTS `character_max_level_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_max_level_reward` (
  `race` tinyint(3) unsigned DEFAULT NULL,
  `max_level` smallint(6) DEFAULT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL,
  `index` smallint(5) unsigned DEFAULT NULL,
  `level` tinyint(3) unsigned DEFAULT NULL,
  `durability` tinyint(3) unsigned DEFAULT NULL,
  `skill` tinyint(3) unsigned DEFAULT NULL,
  `luck` tinyint(3) unsigned DEFAULT NULL,
  `option` tinyint(3) unsigned DEFAULT NULL,
  `excellent` tinyint(3) unsigned DEFAULT NULL,
  `ancient` tinyint(3) unsigned DEFAULT NULL,
  `harmony` tinyint(3) unsigned DEFAULT NULL,
  `option_380` tinyint(3) unsigned DEFAULT NULL,
  `socket_1` smallint(5) unsigned DEFAULT NULL,
  `socket_2` smallint(5) unsigned DEFAULT NULL,
  `socket_3` smallint(5) unsigned DEFAULT NULL,
  `socket_4` smallint(5) unsigned DEFAULT NULL,
  `socket_5` smallint(5) unsigned DEFAULT NULL,
  `socket_bonus` tinyint(3) unsigned DEFAULT NULL,
  `flags` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_max_level_reward`
--

LOCK TABLES `character_max_level_reward` WRITE;
/*!40000 ALTER TABLE `character_max_level_reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_max_level_reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_skill`
--

DROP TABLE IF EXISTS `character_skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_skill` (
  `race` tinyint(3) unsigned NOT NULL,
  `skill` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`race`,`skill`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_skill`
--

LOCK TABLES `character_skill` WRITE;
/*!40000 ALTER TABLE `character_skill` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_specialization`
--

DROP TABLE IF EXISTS `character_specialization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_specialization` (
  `race` tinyint(3) unsigned NOT NULL,
  `stat` tinyint(3) unsigned NOT NULL,
  `required_stat` tinyint(3) unsigned DEFAULT NULL,
  `required_stat_min` int(11) DEFAULT NULL,
  `required_stat_max` int(11) DEFAULT NULL,
  `percent_min` tinyint(3) unsigned DEFAULT NULL,
  `percent_max` tinyint(3) unsigned DEFAULT NULL,
  `required_stat_limit` int(11) DEFAULT NULL,
  PRIMARY KEY (`race`,`stat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_specialization`
--

LOCK TABLES `character_specialization` WRITE;
/*!40000 ALTER TABLE `character_specialization` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_specialization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_stat_fruit`
--

DROP TABLE IF EXISTS `character_stat_fruit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_stat_fruit` (
  `race` tinyint(3) unsigned NOT NULL,
  `level_min` smallint(6) DEFAULT NULL,
  `level_max` smallint(6) DEFAULT NULL,
  `total_point_add` smallint(5) unsigned DEFAULT NULL,
  `total_point_minus` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`race`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_stat_fruit`
--

LOCK TABLES `character_stat_fruit` WRITE;
/*!40000 ALTER TABLE `character_stat_fruit` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_stat_fruit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cheat_scan_whitelist`
--

DROP TABLE IF EXISTS `cheat_scan_whitelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cheat_scan_whitelist` (
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cheat_scan_whitelist`
--

LOCK TABLES `cheat_scan_whitelist` WRITE;
/*!40000 ALTER TABLE `cheat_scan_whitelist` DISABLE KEYS */;
/*!40000 ALTER TABLE `cheat_scan_whitelist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_contribution_reward`
--

DROP TABLE IF EXISTS `event_contribution_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_contribution_reward` (
  `event_id` tinyint(3) unsigned NOT NULL,
  `event_ground` tinyint(3) unsigned DEFAULT NULL,
  `contribution_min` int(11) DEFAULT NULL,
  `contribution_max` int(11) DEFAULT NULL,
  `reward_box` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_contribution_reward`
--

LOCK TABLES `event_contribution_reward` WRITE;
/*!40000 ALTER TABLE `event_contribution_reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_contribution_reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_devil_square_ranking`
--

DROP TABLE IF EXISTS `event_devil_square_ranking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_devil_square_ranking` (
  `ground` tinyint(3) unsigned NOT NULL,
  `position` tinyint(3) unsigned DEFAULT NULL,
  `exprience_1` int(10) unsigned DEFAULT NULL,
  `zen_1` int(10) unsigned DEFAULT NULL,
  `exprience_2` int(10) unsigned DEFAULT NULL,
  `zen_2` int(10) unsigned DEFAULT NULL,
  `exprience_3` int(10) unsigned DEFAULT NULL,
  `zen_3` int(10) unsigned DEFAULT NULL,
  `exprience_4` int(10) unsigned DEFAULT NULL,
  `zen_4` int(10) unsigned DEFAULT NULL,
  `exprience_5` int(10) unsigned DEFAULT NULL,
  `zen_5` int(10) unsigned DEFAULT NULL,
  `exprience_6` int(10) unsigned DEFAULT NULL,
  `zen_6` int(10) unsigned DEFAULT NULL,
  `exprience_7` int(10) unsigned DEFAULT NULL,
  `zen_7` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`ground`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_devil_square_ranking`
--

LOCK TABLES `event_devil_square_ranking` WRITE;
/*!40000 ALTER TABLE `event_devil_square_ranking` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_devil_square_ranking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_doppelganger_level`
--

DROP TABLE IF EXISTS `event_doppelganger_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_doppelganger_level` (
  `guid` int(10) unsigned NOT NULL,
  `level_min` tinyint(4) DEFAULT NULL,
  `level_max` tinyint(4) DEFAULT NULL,
  `experience` int(11) DEFAULT NULL,
  `larva_rate` tinyint(3) unsigned DEFAULT NULL,
  `larva_count` int(11) DEFAULT NULL,
  `silver_chest_item_bag` varchar(255) DEFAULT NULL,
  `golden_chest_item_bag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_doppelganger_level`
--

LOCK TABLES `event_doppelganger_level` WRITE;
/*!40000 ALTER TABLE `event_doppelganger_level` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_doppelganger_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_doppelganger_monster_settings`
--

DROP TABLE IF EXISTS `event_doppelganger_monster_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_doppelganger_monster_settings` (
  `monster` smallint(5) unsigned NOT NULL,
  `level` smallint(6) DEFAULT NULL,
  `life` int(11) DEFAULT NULL,
  `attack_min` int(11) DEFAULT NULL,
  `attack_max` int(11) DEFAULT NULL,
  `attack_rate` int(11) DEFAULT NULL,
  `defense` int(11) DEFAULT NULL,
  `defense_rate` int(11) DEFAULT NULL,
  `item_bag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`monster`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_doppelganger_monster_settings`
--

LOCK TABLES `event_doppelganger_monster_settings` WRITE;
/*!40000 ALTER TABLE `event_doppelganger_monster_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_doppelganger_monster_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_dungeon`
--

DROP TABLE IF EXISTS `event_dungeon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_dungeon` (
  `id` tinyint(3) unsigned NOT NULL,
  `world` smallint(5) unsigned DEFAULT NULL,
  `flags` int(10) unsigned DEFAULT NULL,
  `gate` smallint(5) unsigned DEFAULT NULL,
  `main_chest_x` smallint(6) DEFAULT NULL,
  `main_chest_y` smallint(6) DEFAULT NULL,
  `secondary_chest_x_1` smallint(6) DEFAULT NULL,
  `secondary_chest_y_1` smallint(6) DEFAULT NULL,
  `secondary_chest_x_2` smallint(6) DEFAULT NULL,
  `secondary_chest_y_2` smallint(6) DEFAULT NULL,
  `secondary_chest_x_3` smallint(6) DEFAULT NULL,
  `secondary_chest_y_3` smallint(6) DEFAULT NULL,
  `secondary_chest_x_4` smallint(6) DEFAULT NULL,
  `secondary_chest_y_4` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_dungeon`
--

LOCK TABLES `event_dungeon` WRITE;
/*!40000 ALTER TABLE `event_dungeon` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_dungeon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_dungeon_level`
--

DROP TABLE IF EXISTS `event_dungeon_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_dungeon_level` (
  `id` smallint(5) unsigned NOT NULL,
  `min_level` smallint(6) DEFAULT NULL,
  `max_level` smallint(6) DEFAULT NULL,
  `level` float DEFAULT NULL,
  `hp` float DEFAULT NULL,
  `damage` float DEFAULT NULL,
  `defense` float DEFAULT NULL,
  `attack_success` float DEFAULT NULL,
  `defense_success` float DEFAULT NULL,
  `elemental_damage` float DEFAULT NULL,
  `elemental_defense` float DEFAULT NULL,
  `elemental_attack_success` float DEFAULT NULL,
  `elemental_defense_success` float DEFAULT NULL,
  `item_bag` varchar(255) DEFAULT NULL,
  `item_bag_boss` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_dungeon_level`
--

LOCK TABLES `event_dungeon_level` WRITE;
/*!40000 ALTER TABLE `event_dungeon_level` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_dungeon_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_enter_count`
--

DROP TABLE IF EXISTS `event_enter_count`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_enter_count` (
  `event_id` tinyint(3) unsigned NOT NULL,
  `count` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_enter_count`
--

LOCK TABLES `event_enter_count` WRITE;
/*!40000 ALTER TABLE `event_enter_count` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_enter_count` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_imperial_fortress_level`
--

DROP TABLE IF EXISTS `event_imperial_fortress_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_imperial_fortress_level` (
  `quid` int(10) unsigned NOT NULL,
  `level_min` smallint(6) DEFAULT NULL,
  `level_max` smallint(6) DEFAULT NULL,
  `experience` int(11) DEFAULT NULL,
  PRIMARY KEY (`quid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_imperial_fortress_level`
--

LOCK TABLES `event_imperial_fortress_level` WRITE;
/*!40000 ALTER TABLE `event_imperial_fortress_level` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_imperial_fortress_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_imperial_fortress_monster_settings`
--

DROP TABLE IF EXISTS `event_imperial_fortress_monster_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_imperial_fortress_monster_settings` (
  `something` int(10) unsigned NOT NULL,
  `monster` smallint(5) unsigned DEFAULT NULL,
  `level` smallint(6) DEFAULT NULL,
  `power_1` int(11) DEFAULT NULL,
  `power_2` int(11) DEFAULT NULL,
  `power_3` int(11) DEFAULT NULL,
  `power_4` int(11) DEFAULT NULL,
  `attack_min` int(11) DEFAULT NULL,
  `attack_max` int(11) DEFAULT NULL,
  `attack_rate` int(11) DEFAULT NULL,
  `defense` int(11) DEFAULT NULL,
  `defense_rate` int(11) DEFAULT NULL,
  `item_bag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`something`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_imperial_fortress_monster_settings`
--

LOCK TABLES `event_imperial_fortress_monster_settings` WRITE;
/*!40000 ALTER TABLE `event_imperial_fortress_monster_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_imperial_fortress_monster_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_imperial_fortress_trap`
--

DROP TABLE IF EXISTS `event_imperial_fortress_trap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_imperial_fortress_trap` (
  `day` tinyint(3) unsigned NOT NULL,
  `x1` smallint(6) DEFAULT NULL,
  `y1` smallint(6) DEFAULT NULL,
  `x2` smallint(6) DEFAULT NULL,
  `y2` smallint(6) DEFAULT NULL,
  `damage` float DEFAULT NULL,
  `element` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`day`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_imperial_fortress_trap`
--

LOCK TABLES `event_imperial_fortress_trap` WRITE;
/*!40000 ALTER TABLE `event_imperial_fortress_trap` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_imperial_fortress_trap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_invasion_data`
--

DROP TABLE IF EXISTS `event_invasion_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_invasion_data` (
  `invasion` int(10) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `on_notify` varchar(255) DEFAULT NULL,
  `on_start` varchar(255) DEFAULT NULL,
  `on_end` varchar(255) DEFAULT NULL,
  `on_timeout` varchar(255) DEFAULT NULL,
  `on_kill_boss` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`invasion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_invasion_data`
--

LOCK TABLES `event_invasion_data` WRITE;
/*!40000 ALTER TABLE `event_invasion_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_invasion_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_invasion_group`
--

DROP TABLE IF EXISTS `event_invasion_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_invasion_group` (
  `invasion` int(10) unsigned NOT NULL,
  `group` int(10) unsigned DEFAULT NULL,
  `id` int(10) unsigned DEFAULT NULL,
  `rate` tinyint(3) unsigned DEFAULT NULL,
  `flag` int(10) unsigned DEFAULT NULL,
  `world` smallint(5) unsigned DEFAULT NULL,
  `x1` smallint(6) DEFAULT NULL,
  `y1` smallint(6) DEFAULT NULL,
  `x2` smallint(6) DEFAULT NULL,
  `y2` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`invasion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_invasion_group`
--

LOCK TABLES `event_invasion_group` WRITE;
/*!40000 ALTER TABLE `event_invasion_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_invasion_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_jewel_bingo_reward`
--

DROP TABLE IF EXISTS `event_jewel_bingo_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_jewel_bingo_reward` (
  `type` tinyint(3) unsigned NOT NULL,
  `score_min` int(11) DEFAULT NULL,
  `score_max` int(11) DEFAULT NULL,
  `item` smallint(5) unsigned DEFAULT NULL,
  `level` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_jewel_bingo_reward`
--

LOCK TABLES `event_jewel_bingo_reward` WRITE;
/*!40000 ALTER TABLE `event_jewel_bingo_reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_jewel_bingo_reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_labyrinth_area`
--

DROP TABLE IF EXISTS `event_labyrinth_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_labyrinth_area` (
  `index` tinyint(3) unsigned NOT NULL,
  `stage` tinyint(3) unsigned DEFAULT NULL,
  `row_count` tinyint(3) unsigned DEFAULT NULL,
  `column_count` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_labyrinth_area`
--

LOCK TABLES `event_labyrinth_area` WRITE;
/*!40000 ALTER TABLE `event_labyrinth_area` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_labyrinth_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_labyrinth_area_data`
--

DROP TABLE IF EXISTS `event_labyrinth_area_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_labyrinth_area_data` (
  `sub_index` tinyint(3) unsigned NOT NULL,
  `index` tinyint(3) unsigned NOT NULL,
  `world_index` smallint(5) unsigned DEFAULT NULL,
  `area_type` tinyint(3) unsigned DEFAULT NULL,
  `mission_id` tinyint(3) unsigned DEFAULT NULL,
  `gate_1` tinyint(3) unsigned DEFAULT NULL,
  `gate_2` tinyint(3) unsigned DEFAULT NULL,
  `gate_3` tinyint(3) unsigned DEFAULT NULL,
  `gate_4` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`sub_index`,`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_labyrinth_area_data`
--

LOCK TABLES `event_labyrinth_area_data` WRITE;
/*!40000 ALTER TABLE `event_labyrinth_area_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_labyrinth_area_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_labyrinth_info`
--

DROP TABLE IF EXISTS `event_labyrinth_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_labyrinth_info` (
  `index` tinyint(3) unsigned NOT NULL,
  `world` smallint(5) unsigned DEFAULT NULL,
  `x1` smallint(6) DEFAULT NULL,
  `y1` smallint(6) DEFAULT NULL,
  `x2` smallint(6) DEFAULT NULL,
  `y2` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_labyrinth_info`
--

LOCK TABLES `event_labyrinth_info` WRITE;
/*!40000 ALTER TABLE `event_labyrinth_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_labyrinth_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_labyrinth_level`
--

DROP TABLE IF EXISTS `event_labyrinth_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_labyrinth_level` (
  `id` smallint(5) unsigned NOT NULL,
  `level` int(11) DEFAULT NULL,
  `first_score` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_labyrinth_level`
--

LOCK TABLES `event_labyrinth_level` WRITE;
/*!40000 ALTER TABLE `event_labyrinth_level` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_labyrinth_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_labyrinth_mission`
--

DROP TABLE IF EXISTS `event_labyrinth_mission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_labyrinth_mission` (
  `area_type` tinyint(3) unsigned DEFAULT NULL,
  `index` tinyint(3) unsigned NOT NULL,
  `type_1` tinyint(3) unsigned DEFAULT NULL,
  `value_1` int(11) DEFAULT NULL,
  `type_2` tinyint(3) unsigned DEFAULT NULL,
  `value_2` int(11) DEFAULT NULL,
  `type_3` tinyint(3) unsigned DEFAULT NULL,
  `value_3` int(11) DEFAULT NULL,
  `type_4` tinyint(3) unsigned DEFAULT NULL,
  `value_4` int(11) DEFAULT NULL,
  `type_5` tinyint(3) unsigned DEFAULT NULL,
  `value_5` int(11) DEFAULT NULL,
  `type_6` tinyint(3) unsigned DEFAULT NULL,
  `value_6` int(11) DEFAULT NULL,
  `monster_1` smallint(5) unsigned DEFAULT NULL,
  `count_1` int(11) DEFAULT NULL,
  `monster_2` smallint(5) unsigned DEFAULT NULL,
  `count_2` int(11) DEFAULT NULL,
  `monster_3` smallint(5) unsigned DEFAULT NULL,
  `count_3` int(11) DEFAULT NULL,
  PRIMARY KEY (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_labyrinth_mission`
--

LOCK TABLES `event_labyrinth_mission` WRITE;
/*!40000 ALTER TABLE `event_labyrinth_mission` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_labyrinth_mission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_labyrinth_monster`
--

DROP TABLE IF EXISTS `event_labyrinth_monster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_labyrinth_monster` (
  `id` smallint(5) unsigned NOT NULL,
  `level` float DEFAULT NULL,
  `life` float DEFAULT NULL,
  `damage` float DEFAULT NULL,
  `defense` float DEFAULT NULL,
  `attack_success_rate` float DEFAULT NULL,
  `defense_success_rate` float DEFAULT NULL,
  `elemental_damage` float DEFAULT NULL,
  `elemental_defense` float DEFAULT NULL,
  `elemental_attack_success_rate` float DEFAULT NULL,
  `elemental_defense_success_rate` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_labyrinth_monster`
--

LOCK TABLES `event_labyrinth_monster` WRITE;
/*!40000 ALTER TABLE `event_labyrinth_monster` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_labyrinth_monster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_labyrinth_reward`
--

DROP TABLE IF EXISTS `event_labyrinth_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_labyrinth_reward` (
  `category` tinyint(3) unsigned NOT NULL,
  `rank` tinyint(3) unsigned DEFAULT NULL,
  `race` tinyint(3) unsigned DEFAULT NULL,
  `item_type` tinyint(3) unsigned DEFAULT NULL,
  `item_index` smallint(5) unsigned DEFAULT NULL,
  `level` tinyint(3) unsigned DEFAULT NULL,
  `durability` tinyint(3) unsigned DEFAULT NULL,
  `skill` tinyint(3) unsigned DEFAULT NULL,
  `luck` tinyint(3) unsigned DEFAULT NULL,
  `option` tinyint(3) unsigned DEFAULT NULL,
  `excellent` tinyint(3) unsigned DEFAULT NULL,
  `ancient` tinyint(3) unsigned DEFAULT NULL,
  `flags` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_labyrinth_reward`
--

LOCK TABLES `event_labyrinth_reward` WRITE;
/*!40000 ALTER TABLE `event_labyrinth_reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_labyrinth_reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_level`
--

DROP TABLE IF EXISTS `event_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_level` (
  `event_id` tinyint(3) unsigned NOT NULL,
  `event_ground` tinyint(3) unsigned DEFAULT NULL,
  `normal_level_min` smallint(6) DEFAULT NULL,
  `normal_level_max` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_level`
--

LOCK TABLES `event_level` WRITE;
/*!40000 ALTER TABLE `event_level` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_manager`
--

DROP TABLE IF EXISTS `event_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_manager` (
  `event_id` tinyint(3) unsigned NOT NULL,
  `invasion` int(10) unsigned DEFAULT NULL,
  `duration` int(10) unsigned DEFAULT NULL,
  `notify_time` int(11) DEFAULT NULL,
  `hour` tinyint(3) unsigned DEFAULT NULL,
  `minute` tinyint(3) unsigned DEFAULT NULL,
  `day_of_week` tinyint(3) unsigned DEFAULT NULL,
  `day_of_month` tinyint(3) unsigned DEFAULT NULL,
  `season_event` tinyint(3) unsigned DEFAULT NULL,
  `server` smallint(5) unsigned DEFAULT NULL,
  `exclusive_server` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_manager`
--

LOCK TABLES `event_manager` WRITE;
/*!40000 ALTER TABLE `event_manager` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_mini_bomb_reward`
--

DROP TABLE IF EXISTS `event_mini_bomb_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_mini_bomb_reward` (
  `score_min` smallint(5) unsigned DEFAULT NULL,
  `score_max` smallint(5) unsigned DEFAULT NULL,
  `item` smallint(5) unsigned DEFAULT NULL,
  `level` tinyint(3) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_mini_bomb_reward`
--

LOCK TABLES `event_mini_bomb_reward` WRITE;
/*!40000 ALTER TABLE `event_mini_bomb_reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_mini_bomb_reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_mu_roomy_reward`
--

DROP TABLE IF EXISTS `event_mu_roomy_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_mu_roomy_reward` (
  `type` tinyint(3) unsigned NOT NULL,
  `score_min` smallint(5) unsigned DEFAULT NULL,
  `score_max` smallint(5) unsigned DEFAULT NULL,
  `item` smallint(5) unsigned DEFAULT NULL,
  `level` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_mu_roomy_reward`
--

LOCK TABLES `event_mu_roomy_reward` WRITE;
/*!40000 ALTER TABLE `event_mu_roomy_reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_mu_roomy_reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_numeric_baseball_reward`
--

DROP TABLE IF EXISTS `event_numeric_baseball_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_numeric_baseball_reward` (
  `score_min` int(11) DEFAULT NULL,
  `score_max` int(11) DEFAULT NULL,
  `item` smallint(5) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_numeric_baseball_reward`
--

LOCK TABLES `event_numeric_baseball_reward` WRITE;
/*!40000 ALTER TABLE `event_numeric_baseball_reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_numeric_baseball_reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_season_manager`
--

DROP TABLE IF EXISTS `event_season_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_season_manager` (
  `event` smallint(5) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `start_date` bigint(20) unsigned DEFAULT NULL,
  `end_date` bigint(20) unsigned DEFAULT NULL,
  `ocurrence` int(10) unsigned DEFAULT NULL,
  `duration` int(10) unsigned DEFAULT NULL,
  `start_message` varchar(255) DEFAULT NULL,
  `end_message` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`event`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_season_manager`
--

LOCK TABLES `event_season_manager` WRITE;
/*!40000 ALTER TABLE `event_season_manager` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_season_manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_tormented_square_ranking`
--

DROP TABLE IF EXISTS `event_tormented_square_ranking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_tormented_square_ranking` (
  `ground` tinyint(3) unsigned NOT NULL,
  `rank` tinyint(3) unsigned DEFAULT NULL,
  `reward` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`ground`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_tormented_square_ranking`
--

LOCK TABLES `event_tormented_square_ranking` WRITE;
/*!40000 ALTER TABLE `event_tormented_square_ranking` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_tormented_square_ranking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_tormented_square_stage`
--

DROP TABLE IF EXISTS `event_tormented_square_stage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_tormented_square_stage` (
  `ground` tinyint(3) unsigned NOT NULL,
  `stage` tinyint(3) unsigned NOT NULL,
  `stand_by` int(11) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  PRIMARY KEY (`ground`,`stage`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_tormented_square_stage`
--

LOCK TABLES `event_tormented_square_stage` WRITE;
/*!40000 ALTER TABLE `event_tormented_square_stage` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_tormented_square_stage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evomon`
--

DROP TABLE IF EXISTS `evomon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `evomon` (
  `id` tinyint(3) unsigned NOT NULL,
  `monster` smallint(5) unsigned DEFAULT NULL,
  `level` tinyint(3) unsigned DEFAULT NULL,
  `life` int(11) DEFAULT NULL,
  `attack_damage_min` int(11) DEFAULT NULL,
  `attack_damage_max` int(11) DEFAULT NULL,
  `attack_success_rate` int(11) DEFAULT NULL,
  `defense` int(11) DEFAULT NULL,
  `degense_success_rate` int(11) DEFAULT NULL,
  `next_id` tinyint(3) unsigned DEFAULT NULL,
  `next_id_rate` smallint(5) unsigned DEFAULT NULL,
  `special_rate` smallint(5) unsigned DEFAULT NULL,
  `special_monster` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evomon`
--

LOCK TABLES `evomon` WRITE;
/*!40000 ALTER TABLE `evomon` DISABLE KEYS */;
/*!40000 ALTER TABLE `evomon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evomon_reward`
--

DROP TABLE IF EXISTS `evomon_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `evomon_reward` (
  `score_min` int(11) DEFAULT NULL,
  `score_max` int(11) DEFAULT NULL,
  `reward_type` tinyint(3) unsigned DEFAULT NULL,
  `reward_index` smallint(5) unsigned DEFAULT NULL,
  `reward_count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evomon_reward`
--

LOCK TABLES `evomon_reward` WRITE;
/*!40000 ALTER TABLE `evomon_reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `evomon_reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `experience_majestic`
--

DROP TABLE IF EXISTS `experience_majestic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `experience_majestic` (
  `level` smallint(5) unsigned NOT NULL,
  `experience` bigint(20) DEFAULT NULL,
  `accumulated_experience` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experience_majestic`
--

LOCK TABLES `experience_majestic` WRITE;
/*!40000 ALTER TABLE `experience_majestic` DISABLE KEYS */;
/*!40000 ALTER TABLE `experience_majestic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `experience_master`
--

DROP TABLE IF EXISTS `experience_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `experience_master` (
  `level` smallint(5) unsigned NOT NULL,
  `experience` bigint(20) DEFAULT NULL,
  `accumulated_experience` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experience_master`
--

LOCK TABLES `experience_master` WRITE;
/*!40000 ALTER TABLE `experience_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `experience_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `experience_normal`
--

DROP TABLE IF EXISTS `experience_normal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `experience_normal` (
  `level` smallint(5) unsigned NOT NULL,
  `experience` bigint(20) DEFAULT NULL,
  `accumulated_experience` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experience_normal`
--

LOCK TABLES `experience_normal` WRITE;
/*!40000 ALTER TABLE `experience_normal` DISABLE KEYS */;
/*!40000 ALTER TABLE `experience_normal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filter_text`
--

DROP TABLE IF EXISTS `filter_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filter_text` (
  `word` varchar(255) NOT NULL,
  `flags` tinyint(3) unsigned DEFAULT NULL,
  `action` tinyint(3) unsigned DEFAULT NULL,
  `replace` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`word`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filter_text`
--

LOCK TABLES `filter_text` WRITE;
/*!40000 ALTER TABLE `filter_text` DISABLE KEYS */;
/*!40000 ALTER TABLE `filter_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formula_data`
--

DROP TABLE IF EXISTS `formula_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `formula_data` (
  `type` tinyint(3) unsigned NOT NULL,
  `id` smallint(5) unsigned NOT NULL,
  `formula` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`type`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formula_data`
--

LOCK TABLES `formula_data` WRITE;
/*!40000 ALTER TABLE `formula_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `formula_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gate_template`
--

DROP TABLE IF EXISTS `gate_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gate_template` (
  `id` smallint(5) unsigned NOT NULL,
  `flag` tinyint(3) unsigned DEFAULT NULL,
  `world` smallint(5) unsigned DEFAULT NULL,
  `x1` smallint(6) DEFAULT NULL,
  `y1` smallint(6) DEFAULT NULL,
  `x2` smallint(6) DEFAULT NULL,
  `y2` smallint(6) DEFAULT NULL,
  `target_id` smallint(5) unsigned DEFAULT NULL,
  `direction` tinyint(3) unsigned DEFAULT NULL,
  `min_level` smallint(6) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gate_template`
--

LOCK TABLES `gate_template` WRITE;
/*!40000 ALTER TABLE `gate_template` DISABLE KEYS */;
INSERT INTO `gate_template` VALUES (0,0,0,0,0,0,0,0,0,0,'\"\"\"\"'),(1,1,0,121,232,123,233,2,0,20,'\"\"\"\"'),(2,2,1,107,247,110,247,0,1,20,'\"\"\"\"'),(3,1,1,108,248,109,248,4,0,0,'\"\"\"\"'),(4,2,0,121,231,123,231,0,1,0,'\"\"\"\"'),(5,1,1,239,149,239,150,6,0,20,'\"\"\"\"'),(6,2,1,231,126,234,127,0,1,20,'\"\"\"\"'),(7,1,1,232,127,233,128,8,0,20,'\"\"\"\"'),(8,2,1,240,148,241,151,0,3,20,'\"\"\"\"'),(9,1,1,2,17,2,18,10,0,20,'\"\"\"\"'),(10,2,1,3,83,4,86,0,3,20,'\"\"\"\"'),(11,1,1,2,84,2,85,12,0,20,'\"\"\"\"'),(12,2,1,3,16,6,17,0,3,20,'\"\"\"\"'),(13,1,1,5,34,6,34,14,0,20,'\"\"\"\"'),(14,2,1,29,125,30,126,0,1,20,'\"\"\"\"'),(15,1,1,29,127,30,127,16,0,20,'\"\"\"\"'),(16,2,1,5,32,7,33,0,1,20,'\"\"\"\"'),(17,1,0,133,118,151,135,0,0,0,'\"\"\"\"'),(18,2,0,5,38,6,41,19,0,10,'\"\"\"\"'),(19,1,2,242,34,243,37,0,7,10,'\"\"\"\"'),(20,2,2,244,34,245,37,21,0,0,'\"\"\"\"'),(21,1,0,7,38,8,41,0,3,0,'\"\"\"\"'),(22,2,2,197,35,218,50,0,0,10,'\"\"\"\"'),(23,1,0,213,246,217,247,24,0,10,'\"\"\"\"'),(24,2,3,150,9,153,10,0,5,10,'\"\"\"\"'),(25,1,3,150,6,153,7,26,0,10,'\"\"\"\"'),(26,2,0,213,244,217,245,0,1,10,'\"\"\"\"'),(27,1,3,171,108,177,117,0,0,0,'\"\"\"\"'),(28,2,2,4,247,5,248,29,0,40,'\"\"\"\"'),(29,1,4,162,2,166,3,0,5,40,'\"\"\"\"'),(30,2,4,190,6,191,8,31,0,40,'\"\"\"\"'),(31,1,4,241,237,244,238,0,1,40,'\"\"\"\"'),(32,2,4,166,163,167,166,33,0,40,'\"\"\"\"'),(33,1,4,86,166,87,168,0,3,40,'\"\"\"\"'),(34,2,4,132,245,135,246,35,0,50,'\"\"\"\"'),(35,1,4,87,86,88,89,0,3,50,'\"\"\"\"'),(36,2,4,132,135,135,136,37,0,50,'\"\"\"\"'),(37,1,4,128,53,131,54,0,1,50,'\"\"\"\"'),(38,2,4,131,15,132,18,39,0,50,'\"\"\"\"'),(39,1,4,52,53,55,54,0,1,50,'\"\"\"\"'),(40,2,4,6,5,7,8,41,0,50,'\"\"\"\"'),(41,1,4,8,85,9,87,0,1,50,'\"\"\"\"'),(42,2,4,203,70,213,81,0,0,40,'\"\"\"\"'),(43,1,4,162,0,166,1,44,0,10,'\"\"\"\"'),(44,2,2,5,244,7,246,0,2,10,'\"\"\"\"'),(45,0,3,242,240,245,243,46,0,50,'\"\"\"\"'),(46,0,7,14,12,15,13,0,3,50,'\"\"\"\"'),(47,0,7,9,9,11,12,48,0,50,'\"\"\"\"'),(48,0,3,240,240,241,243,0,7,50,'\"\"\"\"'),(49,0,7,15,11,27,23,0,0,50,'\"\"\"\"'),(50,0,6,72,140,73,181,0,0,0,'\"\"\"\"'),(51,0,6,59,153,59,153,0,0,0,'\"\"\"\"'),(52,0,6,59,164,59,165,0,0,0,'\"\"\"\"'),(53,0,7,14,225,15,230,54,0,130,'\"\"\"\"'),(54,0,8,248,40,251,44,0,7,0,'\"\"\"\"'),(55,0,8,246,40,247,44,56,0,130,'\"\"\"\"'),(56,0,7,16,225,17,230,0,3,0,'\"\"\"\"'),(57,0,8,189,63,205,72,0,0,60,'\"\"\"\"'),(58,0,9,133,91,141,99,0,0,10,'\"\"\"\"'),(59,0,9,135,162,142,170,0,0,10,'\"\"\"\"'),(60,0,9,62,150,70,158,0,0,10,'\"\"\"\"'),(61,0,9,66,84,74,92,0,0,10,'\"\"\"\"'),(62,0,4,17,250,19,250,63,0,150,'\"\"\"\"'),(63,0,10,14,13,16,13,0,5,150,'\"\"\"\"'),(64,0,10,14,12,16,12,65,0,50,'\"\"\"\"'),(65,0,4,17,249,19,249,0,1,50,'\"\"\"\"'),(66,0,11,12,5,14,10,0,0,0,'\"\"\"\"'),(67,0,12,12,5,14,10,0,0,0,'\"\"\"\"'),(68,0,13,12,5,14,10,0,0,0,'\"\"\"\"'),(69,0,14,12,5,14,10,0,0,0,'\"\"\"\"'),(70,0,15,12,5,14,10,0,0,0,'\"\"\"\"'),(71,0,16,12,5,14,10,0,0,0,'\"\"\"\"'),(72,0,2,23,27,27,24,0,0,10,'\"\"\"\"'),(73,0,2,224,231,227,227,0,0,10,'\"\"\"\"'),(74,0,2,69,181,72,178,0,0,10,'\"\"\"\"'),(75,0,7,225,53,228,50,0,0,80,'\"\"\"\"'),(76,0,7,62,163,68,157,0,0,90,'\"\"\"\"'),(77,0,8,96,143,100,146,0,0,130,'\"\"\"\"'),(80,0,17,12,5,14,10,0,0,0,'\"\"\"\"'),(82,0,18,31,88,36,95,0,0,0,'\"\"\"\"'),(83,0,19,31,88,36,95,0,0,0,'\"\"\"\"'),(84,0,20,31,88,36,95,0,0,0,'\"\"\"\"'),(85,0,21,31,88,36,95,0,0,0,'\"\"\"\"'),(86,0,22,31,88,36,95,0,0,0,'\"\"\"\"'),(87,0,23,31,88,36,95,0,0,0,'\"\"\"\"'),(88,0,24,10,16,17,22,0,0,0,'\"\"\"\"'),(89,0,25,10,16,17,22,0,0,0,'\"\"\"\"'),(90,0,26,10,16,17,22,0,0,0,'\"\"\"\"'),(91,0,27,10,16,17,22,0,0,0,'\"\"\"\"'),(92,0,28,10,16,17,22,0,0,0,'\"\"\"\"'),(93,0,29,10,16,17,22,0,0,0,'\"\"\"\"'),(94,0,30,88,31,102,46,0,0,0,'\"\"\"\"'),(95,0,31,60,10,69,19,0,0,0,'\"\"\"\"'),(96,0,30,93,242,95,243,97,0,0,'\"\"\"\"'),(97,0,30,164,198,187,209,0,0,0,'\"\"\"\"'),(98,0,30,160,203,161,205,99,0,0,'\"\"\"\"'),(99,0,30,90,236,99,239,0,0,0,'\"\"\"\"'),(100,0,30,39,14,142,50,0,0,0,'\"\"\"\"'),(101,0,30,84,180,100,222,0,0,0,'\"\"\"\"'),(102,0,0,239,14,240,15,103,0,10,'\"\"\"\"'),(103,0,30,29,42,30,37,0,0,10,'\"\"\"\"'),(104,0,30,87,209,100,232,0,0,0,'\"\"\"\"'),(105,0,30,72,10,104,199,0,0,0,'\"\"\"\"'),(106,0,30,131,94,138,92,0,0,0,'\"\"\"\"'),(107,0,30,28,40,28,41,108,0,0,'\"\"\"\"'),(108,0,0,235,13,239,13,0,0,0,'\"\"\"\"'),(109,0,31,59,7,63,8,110,0,0,'\"\"\"\"'),(110,0,30,131,94,138,92,0,0,0,'\"\"\"\"'),(111,0,32,133,91,141,99,0,0,10,'\"\"\"\"'),(112,0,32,135,162,142,170,0,0,10,'\"\"\"\"'),(113,0,33,76,9,78,16,0,0,10,'\"\"\"\"'),(114,0,34,231,37,234,45,0,0,10,'\"\"\"\"'),(116,0,36,10,16,17,22,0,0,0,'\"\"\"\"'),(117,0,30,161,37,165,45,114,0,10,'\"\"\"\"'),(118,0,34,229,37,239,46,0,0,10,'\"\"\"\"'),(119,0,33,82,8,87,14,0,0,130,'\"\"\"\"'),(120,0,3,220,30,226,30,113,0,130,'\"\"\"\"'),(121,0,33,74,9,74,13,122,0,10,'\"\"\"\"'),(122,0,3,220,31,226,34,0,0,10,'\"\"\"\"'),(123,0,34,239,40,240,44,124,0,10,'\"\"\"\"'),(124,0,30,155,37,158,43,0,0,10,'\"\"\"\"'),(125,0,8,6,199,6,201,126,0,150,'\"\"\"\"'),(126,0,37,17,219,21,220,0,0,150,'\"\"\"\"'),(127,0,37,17,220,19,222,128,0,130,'\"\"\"\"'),(128,0,8,7,199,7,201,0,0,130,'\"\"\"\"'),(129,0,37,89,89,89,92,130,0,290,'\"\"\"\"'),(130,0,38,70,104,70,107,0,0,290,'\"\"\"\"'),(131,0,38,69,104,69,107,132,0,150,'\"\"\"\"'),(132,0,37,85,89,86,92,0,0,150,'\"\"\"\"'),(133,0,39,196,56,201,57,0,0,290,'\"\"\"\"'),(134,0,39,78,93,82,95,0,0,290,'\"\"\"\"'),(135,0,39,78,93,82,95,0,0,290,'\"\"\"\"'),(136,0,38,137,162,143,163,0,0,290,'\"\"\"\"'),(137,0,38,71,104,72,107,0,0,290,'\"\"\"\"'),(138,0,37,19,217,21,219,0,0,150,'\"\"\"\"'),(139,0,38,71,104,72,107,0,0,290,'\"\"\"\"'),(140,0,33,186,173,190,177,0,0,130,'\"\"\"\"'),(141,0,37,205,36,208,41,0,0,160,'\"\"\"\"'),(142,0,45,98,128,108,137,0,0,0,'\"\"\"\"'),(143,0,46,98,128,108,137,0,0,0,'\"\"\"\"'),(144,0,47,98,128,108,137,0,0,0,'\"\"\"\"'),(145,0,48,98,128,108,137,0,0,0,'\"\"\"\"'),(146,0,49,98,128,108,137,0,0,0,'\"\"\"\"'),(147,0,50,98,128,108,137,0,0,0,'\"\"\"\"'),(148,0,45,141,41,146,45,0,0,0,'\"\"\"\"'),(149,0,46,141,41,146,45,0,0,0,'\"\"\"\"'),(150,0,47,141,41,146,45,0,0,0,'\"\"\"\"'),(151,0,48,141,41,146,45,0,0,0,'\"\"\"\"'),(152,0,49,141,41,146,45,0,0,0,'\"\"\"\"'),(153,0,50,141,41,146,45,0,0,0,'\"\"\"\"'),(154,0,45,194,124,198,127,0,0,0,'\"\"\"\"'),(155,0,46,194,124,198,127,0,0,0,'\"\"\"\"'),(156,0,47,194,124,198,127,0,0,0,'\"\"\"\"'),(157,0,48,194,124,198,127,0,0,0,'\"\"\"\"'),(158,0,49,194,124,198,127,0,0,0,'\"\"\"\"'),(159,0,50,194,124,198,127,0,0,0,'\"\"\"\"'),(256,0,41,29,79,31,82,0,0,0,'\"\"\"\"'),(257,0,42,104,178,107,181,0,0,0,'\"\"\"\"'),(258,0,34,227,41,229,43,0,0,0,'\"\"\"\"'),(259,0,2,161,245,166,246,260,0,10,'\"\"\"\"'),(260,0,51,26,29,27,30,0,0,10,'\"\"\"\"'),(261,0,51,24,29,25,30,262,0,10,'\"\"\"\"'),(262,0,2,161,241,163,242,0,0,10,'\"\"\"\"'),(263,0,7,13,19,14,20,264,0,10,'\"\"\"\"'),(264,0,51,243,149,244,150,0,0,10,'\"\"\"\"'),(265,0,51,247,149,248,150,266,0,50,'\"\"\"\"'),(266,0,7,16,19,17,20,0,0,50,'\"\"\"\"'),(267,0,51,51,224,54,227,0,0,0,'\"\"\"\"'),(268,0,51,99,55,100,57,0,0,10,'\"\"\"\"'),(269,0,51,191,148,193,150,0,0,10,'\"\"\"\"'),(270,0,32,62,150,70,158,0,0,10,'\"\"\"\"'),(271,0,52,12,5,14,10,0,0,0,'\"\"\"\"'),(272,0,53,31,88,36,95,0,0,0,'\"\"\"\"'),(273,0,56,135,105,142,111,0,0,380,'\"\"\"\"'),(274,0,56,139,125,139,126,275,0,380,'\"\"\"\"'),(275,0,56,189,190,191,193,0,0,380,'\"\"\"\"'),(276,0,56,185,187,186,188,273,0,380,'\"\"\"\"'),(277,0,56,149,109,150,109,278,0,380,'\"\"\"\"'),(278,0,56,204,10,206,14,0,0,380,'\"\"\"\"'),(279,0,56,197,12,197,14,273,0,380,'\"\"\"\"'),(280,0,56,139,95,140,95,281,0,380,'\"\"\"\"'),(281,0,56,65,47,67,48,0,0,380,'\"\"\"\"'),(282,0,56,68,52,69,53,273,0,380,'\"\"\"\"'),(283,0,56,124,109,124,110,284,0,380,'\"\"\"\"'),(284,0,56,62,174,63,179,0,0,380,'\"\"\"\"'),(285,0,56,57,176,57,177,273,0,380,'\"\"\"\"'),(286,0,2,52,90,54,91,287,0,380,'\"\"\"\"'),(287,0,57,222,211,225,212,0,0,380,'\"\"\"\"'),(288,0,57,223,215,225,215,289,0,380,'\"\"\"\"'),(289,0,2,51,85,55,86,0,0,380,'\"\"\"\"'),(290,0,57,171,23,171,25,291,0,380,'\"\"\"\"'),(291,0,58,160,24,161,27,0,0,380,'\"\"\"\"'),(292,0,58,167,24,167,25,293,0,380,'\"\"\"\"'),(293,0,57,174,23,175,25,0,0,380,'\"\"\"\"'),(294,0,63,120,129,126,134,0,0,300,'\"\"\"\"'),(295,0,64,101,64,0,0,0,0,30,'\"\"\"\"'),(296,0,64,101,75,0,0,0,0,30,'\"\"\"\"'),(297,0,64,101,113,0,0,0,0,30,'\"\"\"\"'),(298,0,64,101,124,0,0,0,0,30,'\"\"\"\"'),(299,0,64,154,64,0,0,0,0,30,'\"\"\"\"'),(300,0,64,154,75,0,0,0,0,30,'\"\"\"\"'),(301,0,64,154,113,0,0,0,0,30,'\"\"\"\"'),(302,0,64,154,124,0,0,0,0,30,'\"\"\"\"'),(303,0,64,100,70,0,0,0,0,30,'\"\"\"\"'),(304,0,64,100,120,0,0,0,0,30,'\"\"\"\"'),(305,0,64,150,70,0,0,0,0,30,'\"\"\"\"'),(306,0,64,150,120,0,0,0,0,30,'\"\"\"\"'),(307,0,69,231,15,233,17,0,0,0,'\"\"\"\"'),(308,0,69,209,80,211,82,309,0,0,'\"\"\"\"'),(309,0,69,202,24,203,27,0,0,0,'\"\"\"\"'),(310,0,69,153,60,155,62,311,0,0,'\"\"\"\"'),(311,0,69,179,65,181,67,0,0,0,'\"\"\"\"'),(312,0,70,86,63,87,66,0,0,0,'\"\"\"\"'),(313,0,70,10,64,12,66,314,0,0,'\"\"\"\"'),(314,0,70,35,84,38,85,0,0,0,'\"\"\"\"'),(315,0,70,54,161,56,163,316,0,0,'\"\"\"\"'),(316,0,70,121,110,123,112,0,0,0,'\"\"\"\"'),(317,0,71,154,187,155,189,0,0,0,'\"\"\"\"'),(318,0,71,82,194,84,196,319,0,0,'\"\"\"\"'),(319,0,71,222,121,224,123,0,0,0,'\"\"\"\"'),(320,0,71,222,201,224,203,321,0,0,'\"\"\"\"'),(321,0,71,165,206,168,207,0,0,0,'\"\"\"\"'),(322,0,72,93,66,94,69,0,0,0,'\"\"\"\"'),(323,0,72,30,95,32,97,324,0,0,'\"\"\"\"'),(324,0,72,32,162,34,164,0,0,0,'\"\"\"\"'),(325,0,72,68,160,70,162,326,0,0,'\"\"\"\"'),(326,0,72,145,155,147,157,0,0,0,'\"\"\"\"'),(327,0,72,223,165,225,167,328,0,0,'\"\"\"\"'),(328,0,72,241,23,243,25,0,0,0,'\"\"\"\"'),(329,0,65,193,26,200,32,0,0,0,'\"\"\"\"'),(330,0,66,133,68,139,74,0,0,0,'\"\"\"\"'),(331,0,67,106,58,111,62,0,0,0,'\"\"\"\"'),(332,0,68,90,10,97,17,0,0,0,'\"\"\"\"'),(333,0,79,56,74,58,77,0,0,0,'\"\"\"\"'),(334,0,37,66,183,74,191,0,0,300,'\"\"\"\"'),(335,0,80,124,123,127,125,0,0,270,'\"\"\"\"'),(336,0,33,237,167,240,168,337,0,270,'\"\"\"\"'),(337,0,80,118,44,119,46,0,3,270,'\"\"\"\"'),(338,0,80,116,44,117,47,339,0,150,'\"\"\"\"'),(339,0,33,237,166,240,166,0,1,150,'\"\"\"\"'),(340,0,80,186,210,190,212,341,0,270,'\"\"\"\"'),(341,0,81,162,12,164,14,0,5,270,'\"\"\"\"'),(342,0,81,161,8,165,9,343,0,270,'\"\"\"\"'),(343,0,80,188,207,189,208,0,1,270,'\"\"\"\"'),(344,0,81,162,16,163,17,0,5,270,'\"\"\"\"'),(345,0,82,60,66,63,69,0,0,0,'\"\"\"\"'),(346,0,82,69,195,72,198,0,0,0,'\"\"\"\"'),(347,0,82,196,187,199,190,0,0,0,'\"\"\"\"'),(348,0,82,187,61,190,64,0,0,0,'\"\"\"\"'),(349,0,83,60,66,63,69,0,0,0,'\"\"\"\"'),(350,0,83,69,195,72,198,0,0,0,'\"\"\"\"'),(351,0,83,196,187,199,190,0,0,0,'\"\"\"\"'),(352,0,83,187,61,190,64,0,0,0,'\"\"\"\"'),(353,0,84,60,66,63,69,0,0,0,'\"\"\"\"'),(354,0,84,69,195,72,198,0,0,0,'\"\"\"\"'),(355,0,84,196,187,199,190,0,0,0,'\"\"\"\"'),(356,0,84,187,61,190,64,0,0,0,'\"\"\"\"'),(357,0,85,60,66,63,69,0,0,0,'\"\"\"\"'),(358,0,85,69,195,72,198,0,0,0,'\"\"\"\"'),(359,0,85,196,187,199,190,0,0,0,'\"\"\"\"'),(360,0,85,187,61,190,64,0,0,0,'\"\"\"\"'),(361,0,86,60,66,63,69,0,0,0,'\"\"\"\"'),(362,0,86,69,195,72,198,0,0,0,'\"\"\"\"'),(363,0,86,196,187,199,190,0,0,0,'\"\"\"\"'),(364,0,86,187,61,190,64,0,0,0,'\"\"\"\"'),(365,0,87,60,66,63,69,0,0,0,'\"\"\"\"'),(366,0,87,69,195,72,198,0,0,0,'\"\"\"\"'),(367,0,87,196,187,199,190,0,0,0,'\"\"\"\"'),(368,0,87,187,61,190,64,0,0,0,'\"\"\"\"'),(369,0,88,60,66,63,69,0,0,0,'\"\"\"\"'),(370,0,88,69,195,72,198,0,0,0,'\"\"\"\"'),(371,0,88,196,187,199,190,0,0,0,'\"\"\"\"'),(372,0,88,187,61,190,64,0,0,0,'\"\"\"\"'),(373,0,89,60,66,63,69,0,0,0,'\"\"\"\"'),(374,0,89,69,195,72,198,0,0,0,'\"\"\"\"'),(375,0,89,196,187,199,190,0,0,0,'\"\"\"\"'),(376,0,89,187,61,190,64,0,0,0,'\"\"\"\"'),(377,0,90,60,66,63,69,0,0,0,'\"\"\"\"'),(378,0,90,69,195,72,198,0,0,0,'\"\"\"\"'),(379,0,90,196,187,199,190,0,0,0,'\"\"\"\"'),(380,0,90,187,61,190,64,0,0,0,'\"\"\"\"'),(381,0,82,123,120,129,134,0,0,0,'\"\"\"\"'),(382,0,82,123,126,134,132,0,0,0,'\"\"\"\"'),(383,0,82,127,121,133,133,0,0,0,'\"\"\"\"'),(384,0,82,123,121,133,128,0,0,0,'\"\"\"\"'),(385,0,83,123,120,129,134,0,0,0,'\"\"\"\"'),(386,0,83,123,126,134,132,0,0,0,'\"\"\"\"'),(387,0,83,127,121,133,133,0,0,0,'\"\"\"\"'),(388,0,83,123,121,133,128,0,0,0,'\"\"\"\"'),(389,0,84,123,120,129,134,0,0,0,'\"\"\"\"'),(390,0,84,123,126,134,132,0,0,0,'\"\"\"\"'),(391,0,84,127,121,133,133,0,0,0,'\"\"\"\"'),(392,0,84,123,121,133,128,0,0,0,'\"\"\"\"'),(393,0,85,123,120,129,134,0,0,0,'\"\"\"\"'),(394,0,85,123,126,134,132,0,0,0,'\"\"\"\"'),(395,0,85,127,121,133,133,0,0,0,'\"\"\"\"'),(396,0,85,123,121,133,128,0,0,0,'\"\"\"\"'),(397,0,86,123,120,129,134,0,0,0,'\"\"\"\"'),(398,0,86,123,126,134,132,0,0,0,'\"\"\"\"'),(399,0,86,127,121,133,133,0,0,0,'\"\"\"\"'),(400,0,86,123,121,133,128,0,0,0,'\"\"\"\"'),(401,0,87,123,120,129,134,0,0,0,'\"\"\"\"'),(402,0,87,123,126,134,132,0,0,0,'\"\"\"\"'),(403,0,87,127,121,133,133,0,0,0,'\"\"\"\"'),(404,0,87,123,121,133,128,0,0,0,'\"\"\"\"'),(405,0,88,123,120,129,134,0,0,0,'\"\"\"\"'),(406,0,88,123,126,134,132,0,0,0,'\"\"\"\"'),(407,0,88,127,121,133,133,0,0,0,'\"\"\"\"'),(408,0,88,123,121,133,128,0,0,0,'\"\"\"\"'),(409,0,89,123,120,129,134,0,0,0,'\"\"\"\"'),(410,0,89,123,126,134,132,0,0,0,'\"\"\"\"'),(411,0,89,127,121,133,133,0,0,0,'\"\"\"\"'),(412,0,89,123,121,133,128,0,0,0,'\"\"\"\"'),(413,0,90,123,120,129,134,0,0,0,'\"\"\"\"'),(414,0,90,123,126,134,132,0,0,0,'\"\"\"\"'),(415,0,90,127,121,133,133,0,0,0,'\"\"\"\"'),(416,0,90,123,121,133,128,0,0,0,'\"\"\"\"'),(417,0,91,51,190,60,197,0,0,300,'\"\"\"\"'),(418,0,91,26,168,28,172,419,0,300,'\"\"\"\"'),(419,0,91,112,161,114,166,0,0,300,'\"\"\"\"'),(420,0,91,115,168,118,170,421,0,300,'\"\"\"\"'),(421,0,91,33,167,37,170,0,0,300,'\"\"\"\"'),(422,0,91,82,204,86,205,423,0,300,'\"\"\"\"'),(423,0,91,151,198,156,200,0,0,300,'\"\"\"\"'),(424,0,91,147,202,148,206,425,0,300,'\"\"\"\"'),(425,0,91,81,197,83,199,0,0,300,'\"\"\"\"'),(426,0,92,51,190,60,197,0,0,0,'\"\"\"\"'),(427,0,92,26,168,28,172,428,0,0,'\"\"\"\"'),(428,0,92,112,161,114,166,0,0,0,'\"\"\"\"'),(429,0,92,115,168,118,170,430,0,0,'\"\"\"\"'),(430,0,92,33,167,37,170,0,0,0,'\"\"\"\"'),(431,0,92,82,204,86,205,432,0,0,'\"\"\"\"'),(432,0,92,151,198,156,200,0,0,0,'\"\"\"\"'),(433,0,92,147,202,148,206,434,0,0,'\"\"\"\"'),(434,0,92,81,197,83,199,0,0,0,'\"\"\"\"'),(435,0,91,52,161,53,163,436,0,300,'\"\"\"\"'),(436,0,95,19,104,20,105,0,1,300,'\"\"\"\"'),(437,0,95,17,106,18,107,438,0,300,'\"\"\"\"'),(438,0,91,54,163,55,164,0,5,300,'\"\"\"\"'),(439,0,92,52,161,53,163,440,0,300,'\"\"\"\"'),(440,0,96,19,104,20,105,0,1,300,'\"\"\"\"'),(441,0,96,17,106,18,107,442,0,300,'\"\"\"\"'),(442,0,92,54,163,55,164,0,5,300,'\"\"\"\"'),(443,0,97,31,88,36,95,0,0,0,'\"\"\"\"'),(444,0,98,98,128,108,137,0,0,0,'\"\"\"\"'),(445,0,99,98,128,108,137,0,0,0,'\"\"\"\"'),(446,0,98,141,41,146,45,0,0,0,'\"\"\"\"'),(447,0,99,141,41,146,45,0,0,0,'\"\"\"\"'),(448,0,98,194,124,198,127,0,0,0,'\"\"\"\"'),(449,0,99,194,124,198,127,0,0,0,'\"\"\"\"'),(450,0,91,65,218,67,219,451,3,300,'\"\"\"\"'),(451,0,100,24,90,25,86,0,5,300,'\"\"\"\"'),(452,0,100,19,87,20,88,453,5,300,'\"\"\"\"'),(453,0,91,62,213,64,214,0,3,300,'\"\"\"\"'),(454,0,100,42,80,44,81,455,0,300,'\"\"\"\"'),(455,0,100,212,31,213,32,0,0,300,'\"\"\"\"'),(456,0,100,215,33,217,34,457,0,300,'\"\"\"\"'),(457,0,100,40,82,41,84,0,0,300,'\"\"\"\"'),(458,0,100,40,97,42,98,459,0,300,'\"\"\"\"'),(459,0,100,107,225,109,226,0,0,300,'\"\"\"\"'),(460,0,100,108,229,110,230,461,0,300,'\"\"\"\"'),(461,0,100,39,94,40,95,0,0,300,'\"\"\"\"'),(474,0,102,125,126,130,130,0,0,10,'\"\"\"\"'),(475,0,1,115,231,117,233,476,0,0,'\"\"\"\"'),(476,0,1,45,152,48,155,0,0,0,'\"\"\"\"'),(477,0,1,45,148,47,150,478,0,0,'\"\"\"\"'),(478,0,1,112,232,113,234,0,0,0,'\"\"\"\"'),(479,0,1,233,106,237,108,480,0,0,'\"\"\"\"'),(480,0,1,241,85,242,89,0,0,0,'\"\"\"\"'),(481,0,1,244,86,245,89,482,0,0,'\"\"\"\"'),(482,0,1,229,108,231,110,0,0,0,'\"\"\"\"'),(483,0,103,125,126,130,130,0,0,10,'\"\"\"\"'),(484,0,104,125,126,130,130,0,0,10,'\"\"\"\"'),(485,0,105,125,126,130,130,0,0,10,'\"\"\"\"'),(486,0,106,125,126,130,130,0,0,10,'\"\"\"\"'),(487,0,91,90,181,91,184,488,3,300,'\"\"\"\"'),(488,0,110,213,193,214,196,0,5,300,'\"\"\"\"'),(489,0,110,211,190,212,191,490,5,300,'\"\"\"\"'),(490,0,91,94,184,95,187,0,3,300,'\"\"\"\"'),(491,0,110,179,148,180,149,492,0,300,'\"\"\"\"'),(492,0,110,133,166,136,167,0,0,300,'\"\"\"\"'),(493,0,110,131,170,133,171,494,0,300,'\"\"\"\"'),(494,0,110,213,193,214,196,0,0,300,'\"\"\"\"'),(495,0,110,179,185,180,187,496,0,300,'\"\"\"\"'),(496,0,110,127,29,128,30,0,0,300,'\"\"\"\"'),(497,0,110,126,33,127,34,498,0,300,'\"\"\"\"'),(498,0,110,181,188,183,188,0,0,300,'\"\"\"\"'),(499,0,110,179,210,180,211,500,0,300,'\"\"\"\"'),(500,0,110,34,198,35,199,0,0,300,'\"\"\"\"'),(501,0,110,36,195,37,196,502,0,300,'\"\"\"\"'),(502,0,110,181,208,183,209,0,0,300,'\"\"\"\"'),(503,0,79,203,56,207,59,0,0,0,'\"\"\"\"'),(504,0,79,188,90,192,91,0,0,0,'\"\"\"\"'),(505,0,79,221,91,227,92,0,0,0,'\"\"\"\"'),(506,0,79,191,20,194,23,0,0,0,'\"\"\"\"'),(507,0,79,170,55,173,59,0,0,0,'\"\"\"\"'),(508,0,79,230,28,236,29,0,0,0,'\"\"\"\"'),(509,0,112,236,152,237,153,0,0,400,'\"\"\"\"'),(510,0,8,176,38,178,40,511,0,400,'\"\"\"\"'),(511,0,112,236,152,237,153,0,0,400,'\"\"\"\"'),(512,0,112,198,173,199,175,513,0,400,'\"\"\"\"'),(513,0,112,107,67,108,68,0,0,400,'\"\"\"\"'),(514,0,112,80,233,81,235,515,0,400,'\"\"\"\"'),(515,0,112,201,155,202,156,0,0,400,'\"\"\"\"'),(516,0,112,199,137,200,138,517,0,400,'\"\"\"\"'),(517,0,112,82,226,83,227,0,0,400,'\"\"\"\"'),(518,0,112,100,66,101,68,519,0,400,'\"\"\"\"'),(519,0,112,201,155,202,156,0,0,400,'\"\"\"\"'),(520,0,112,236,175,239,176,521,0,400,'\"\"\"\"'),(521,0,8,187,54,189,55,0,0,400,'\"\"\"\"'),(522,0,113,24,118,27,121,0,0,700,'\"\"\"\"'),(523,0,57,208,219,211,221,524,3,700,'\"\"\"\"'),(524,0,113,24,118,27,121,0,1,700,'\"\"\"\"'),(525,0,113,17,118,19,121,526,1,700,'\"\"\"\"'),(526,0,57,214,203,218,206,0,3,700,'\"\"\"\"'),(527,0,113,62,108,67,112,528,0,700,'\"\"\"\"'),(528,0,113,149,85,152,88,0,0,700,'\"\"\"\"'),(529,0,113,143,89,149,91,530,0,700,'\"\"\"\"'),(530,0,113,60,108,62,112,0,0,700,'\"\"\"\"'),(531,0,113,22,228,27,229,0,0,700,'\"\"\"\"'),(532,0,79,227,55,227,60,533,0,0,'\"\"\"\"'),(533,0,114,232,56,234,59,0,0,0,'\"\"\"\"'),(534,0,114,228,56,229,59,535,0,0,'\"\"\"\"'),(535,0,79,223,56,224,59,0,0,0,'\"\"\"\"'),(537,0,114,238,237,239,238,0,0,750,'\"\"\"\"'),(540,0,121,147,27,148,28,0,0,0,'\"\"\"\"'),(541,0,0,176,29,178,32,542,0,770,'\"\"\"\"'),(542,0,116,120,125,121,128,0,0,770,'\"\"\"\"'),(543,0,116,117,124,118,125,544,0,770,'\"\"\"\"'),(544,0,0,179,30,181,31,0,0,770,'\"\"\"\"'),(545,0,116,130,130,131,131,546,0,770,'\"\"\"\"'),(546,0,117,131,128,132,129,0,0,770,'\"\"\"\"'),(547,0,117,129,131,132,132,548,0,770,'\"\"\"\"'),(548,0,116,128,127,129,130,0,0,770,'\"\"\"\"'),(549,0,117,116,124,117,127,550,0,770,'\"\"\"\"'),(550,0,118,123,123,124,124,0,0,770,'\"\"\"\"'),(551,0,118,121,118,122,120,552,0,770,'\"\"\"\"'),(552,0,117,131,127,132,128,0,0,770,'\"\"\"\"'),(553,0,118,135,130,136,131,554,0,770,'\"\"\"\"'),(554,0,119,125,119,126,120,0,0,770,'\"\"\"\"'),(555,0,119,122,117,123,119,556,0,770,'\"\"\"\"'),(556,0,118,135,127,136,128,0,0,770,'\"\"\"\"'),(557,0,119,136,131,137,132,558,0,770,'\"\"\"\"'),(558,0,120,126,119,127,120,0,0,770,'\"\"\"\"'),(559,0,120,121,118,122,120,560,0,770,'\"\"\"\"'),(560,0,119,136,127,137,128,0,0,770,'\"\"\"\"'),(561,0,116,120,125,121,128,0,0,770,'\"\"\"\"'),(562,0,117,131,128,132,129,0,0,770,'\"\"\"\"'),(563,0,118,123,123,124,124,0,0,770,'\"\"\"\"'),(564,0,119,125,119,126,120,0,0,770,'\"\"\"\"'),(565,0,120,126,119,127,120,0,0,770,'\"\"\"\"'),(566,0,0,138,120,139,121,0,0,0,'\"\"\"\"'),(567,0,122,128,110,140,125,0,0,800,'\"\"\"\"'),(568,0,122,126,128,127,129,569,0,800,'\"\"\"\"'),(569,0,122,103,159,104,160,0,0,800,'\"\"\"\"'),(570,0,122,107,154,108,155,571,0,800,'\"\"\"\"'),(571,0,122,128,125,129,126,0,0,800,'\"\"\"\"'),(572,0,122,148,111,148,113,573,0,800,'\"\"\"\"'),(573,0,122,182,102,183,103,0,0,800,'\"\"\"\"'),(574,0,122,177,102,177,104,575,0,800,'\"\"\"\"'),(575,0,122,142,112,143,113,0,0,800,'\"\"\"\"'),(576,0,122,132,102,133,103,577,0,800,'\"\"\"\"'),(577,0,122,132,68,133,69,0,0,800,'\"\"\"\"'),(578,0,122,133,73,135,73,579,0,800,'\"\"\"\"'),(579,0,122,133,107,134,108,0,0,800,'\"\"\"\"'),(580,0,122,120,113,121,114,581,0,800,'\"\"\"\"'),(581,0,122,88,104,89,105,0,0,800,'\"\"\"\"'),(582,0,122,92,105,92,107,583,0,800,'\"\"\"\"'),(583,0,122,125,114,126,115,0,0,800,'\"\"\"\"'),(584,0,122,142,128,144,129,585,0,800,'\"\"\"\"'),(585,0,122,160,152,161,153,0,0,800,'\"\"\"\"'),(586,0,122,158,150,160,151,587,0,800,'\"\"\"\"'),(587,0,122,139,125,140,126,0,0,800,'\"\"\"\"'),(588,0,122,241,91,242,92,590,0,800,'\"\"\"\"'),(589,0,122,12,158,13,158,590,0,800,'\"\"\"\"'),(590,0,122,192,9,193,11,0,0,800,'\"\"\"\"'),(591,0,123,236,87,239,91,0,0,850,'\"\"\"\"'),(592,0,123,215,109,216,111,593,0,850,'\"\"\"\"'),(593,0,123,204,64,208,67,0,0,850,'\"\"\"\"'),(594,0,123,207,67,210,68,595,0,850,'\"\"\"\"'),(595,0,123,220,107,221,111,0,0,850,'\"\"\"\"'),(596,0,123,217,116,220,117,597,0,850,'\"\"\"\"'),(597,0,126,204,64,208,67,0,0,850,'\"\"\"\"'),(598,0,126,207,67,210,68,599,0,850,'\"\"\"\"'),(599,0,123,222,111,225,113,0,0,850,'\"\"\"\"'),(600,0,123,223,122,226,122,601,0,850,'\"\"\"\"'),(601,0,124,204,64,208,67,0,0,850,'\"\"\"\"'),(602,0,124,207,67,210,68,603,0,850,'\"\"\"\"'),(603,0,123,226,117,230,119,0,0,850,'\"\"\"\"'),(604,0,123,228,127,231,128,605,0,850,'\"\"\"\"'),(605,0,127,204,64,208,67,0,0,850,'\"\"\"\"'),(606,0,127,207,67,210,68,607,0,850,'\"\"\"\"'),(607,0,123,233,112,236,124,0,0,850,'\"\"\"\"'),(608,0,123,235,129,237,130,609,0,850,'\"\"\"\"'),(609,0,125,204,64,208,67,0,0,850,'\"\"\"\"'),(610,0,125,207,67,210,68,611,0,850,'\"\"\"\"'),(611,0,123,236,124,239,125,0,0,850,'\"\"\"\"'),(612,0,2,159,55,160,59,613,3,850,'\"\"\"\"'),(613,0,123,236,87,239,91,0,3,850,'\"\"\"\"'),(614,0,123,232,86,234,89,615,7,850,'\"\"\"\"'),(615,0,2,163,54,165,59,0,3,850,'\"\"\"\"'),(616,0,123,224,111,231,115,0,0,850,'\"\"\"\"'),(617,0,128,129,126,132,129,0,0,1000,'\"\"\"\"'),(618,0,129,128,124,131,127,0,0,1020,'\"\"\"\"'),(619,0,130,128,122,131,126,0,0,1030,'\"\"\"\"'),(620,0,131,236,13,242,16,0,0,1050,'\"\"\"\"'),(621,0,131,196,25,198,27,622,0,1050,'\"\"\"\"'),(622,0,131,80,74,82,77,0,0,1050,'\"\"\"\"'),(623,0,131,75,74,77,76,624,0,1050,'\"\"\"\"'),(624,0,131,197,30,200,29,0,0,1050,'\"\"\"\"'),(625,0,131,206,42,211,43,626,0,1050,'\"\"\"\"'),(626,0,131,141,204,145,203,0,0,1050,'\"\"\"\"'),(627,0,131,143,208,144,210,628,0,1050,'\"\"\"\"'),(628,0,131,207,38,210,38,0,0,1050,'\"\"\"\"'),(629,0,8,188,74,190,76,630,0,1050,'\"\"\"\"'),(630,0,131,240,19,244,21,0,0,1050,'\"\"\"\"'),(631,0,132,123,114,132,128,0,0,1070,'\"\"\"\"'),(632,0,4,3,238,4,242,633,0,1070,'\"\"\"\"'),(633,0,132,123,114,132,128,0,0,1070,'\"\"\"\"');
/*!40000 ALTER TABLE `gate_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_kill_point`
--

DROP TABLE IF EXISTS `gen_kill_point`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gen_kill_point` (
  `type` tinyint(3) unsigned NOT NULL,
  `min` smallint(6) DEFAULT NULL,
  `max` smallint(6) DEFAULT NULL,
  `points_add_1` int(11) DEFAULT NULL,
  `points_add_2` int(11) DEFAULT NULL,
  `points_add_3` int(11) DEFAULT NULL,
  `points_add_4` int(11) DEFAULT NULL,
  `points_add_5` int(11) DEFAULT NULL,
  `points_dec_1` int(11) DEFAULT NULL,
  `points_dec_2` int(11) DEFAULT NULL,
  `points_dec_3` int(11) DEFAULT NULL,
  `points_dec_4` int(11) DEFAULT NULL,
  `points_dec_5` int(11) DEFAULT NULL,
  PRIMARY KEY (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_kill_point`
--

LOCK TABLES `gen_kill_point` WRITE;
/*!40000 ALTER TABLE `gen_kill_point` DISABLE KEYS */;
/*!40000 ALTER TABLE `gen_kill_point` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_ranking`
--

DROP TABLE IF EXISTS `gen_ranking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gen_ranking` (
  `family` tinyint(3) unsigned NOT NULL,
  `level` tinyint(3) unsigned DEFAULT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  PRIMARY KEY (`family`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_ranking`
--

LOCK TABLES `gen_ranking` WRITE;
/*!40000 ALTER TABLE `gen_ranking` DISABLE KEYS */;
/*!40000 ALTER TABLE `gen_ranking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_reward`
--

DROP TABLE IF EXISTS `gen_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gen_reward` (
  `family` tinyint(3) unsigned NOT NULL,
  `level` tinyint(3) unsigned DEFAULT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL,
  `data_1` int(10) unsigned DEFAULT NULL,
  `data_2` int(10) unsigned DEFAULT NULL,
  `data_3` int(10) unsigned DEFAULT NULL,
  `data_4` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`family`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_reward`
--

LOCK TABLES `gen_reward` WRITE;
/*!40000 ALTER TABLE `gen_reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `gen_reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goblin_points_data`
--

DROP TABLE IF EXISTS `goblin_points_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goblin_points_data` (
  `monster_level_min` smallint(6) DEFAULT NULL,
  `mosnter_level_max` smallint(6) DEFAULT NULL,
  `player_level_min` smallint(6) DEFAULT NULL,
  `player_level_max` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goblin_points_data`
--

LOCK TABLES `goblin_points_data` WRITE;
/*!40000 ALTER TABLE `goblin_points_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `goblin_points_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_add_option`
--

DROP TABLE IF EXISTS `item_add_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_add_option` (
  `type` tinyint(3) unsigned NOT NULL,
  `index` smallint(5) unsigned NOT NULL,
  `effect_1` smallint(5) unsigned DEFAULT NULL,
  `value_1` smallint(5) unsigned DEFAULT NULL,
  `effect_2` smallint(5) unsigned DEFAULT NULL,
  `value_2` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`type`,`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_add_option`
--

LOCK TABLES `item_add_option` WRITE;
/*!40000 ALTER TABLE `item_add_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_add_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_bag_items`
--

DROP TABLE IF EXISTS `item_bag_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_bag_items` (
  `id` int(10) unsigned DEFAULT NULL,
  `sort` tinyint(3) unsigned DEFAULT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL,
  `index` smallint(5) unsigned DEFAULT NULL,
  `level_min` tinyint(3) unsigned DEFAULT NULL,
  `level_max` tinyint(3) unsigned DEFAULT NULL,
  `durability` tinyint(3) unsigned DEFAULT NULL,
  `skill_rate` smallint(5) unsigned DEFAULT NULL,
  `luck_rate` smallint(5) unsigned DEFAULT NULL,
  `option_min` tinyint(3) unsigned DEFAULT NULL,
  `option_max` tinyint(3) unsigned DEFAULT NULL,
  `excellent_min` tinyint(3) unsigned DEFAULT NULL,
  `excellent_max` tinyint(3) unsigned DEFAULT NULL,
  `ancient` tinyint(3) unsigned DEFAULT NULL,
  `ancient_option_min` tinyint(3) unsigned DEFAULT NULL,
  `ancient_option_max` tinyint(3) unsigned DEFAULT NULL,
  `socket_1_rate` smallint(5) unsigned DEFAULT NULL,
  `socket_2_rate` smallint(5) unsigned DEFAULT NULL,
  `socket_3_rate` smallint(5) unsigned DEFAULT NULL,
  `socket_4_rate` smallint(5) unsigned DEFAULT NULL,
  `socket_5_rate` smallint(5) unsigned DEFAULT NULL,
  `rate` int(10) unsigned DEFAULT NULL,
  `flag` tinyint(3) unsigned DEFAULT NULL,
  `group` int(11) DEFAULT NULL,
  `duration` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_bag_items`
--

LOCK TABLES `item_bag_items` WRITE;
/*!40000 ALTER TABLE `item_bag_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_bag_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_bag_template`
--

DROP TABLE IF EXISTS `item_bag_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_bag_template` (
  `guid` int(10) unsigned NOT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `data_1` int(11) DEFAULT NULL,
  `data_2` int(11) DEFAULT NULL,
  `data_3` int(11) DEFAULT NULL,
  `required_level` smallint(6) DEFAULT NULL,
  `money_rate` smallint(5) unsigned DEFAULT NULL,
  `money_min` int(10) unsigned DEFAULT NULL,
  `money_max` int(10) unsigned DEFAULT NULL,
  `ruud_rate` smallint(5) unsigned DEFAULT NULL,
  `ruud_min` int(10) unsigned DEFAULT NULL,
  `ruud_max` int(10) unsigned DEFAULT NULL,
  `drop_min` int(10) unsigned DEFAULT NULL,
  `drop_max` int(10) unsigned DEFAULT NULL,
  `flag` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_bag_template`
--

LOCK TABLES `item_bag_template` WRITE;
/*!40000 ALTER TABLE `item_bag_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_bag_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_create_data`
--

DROP TABLE IF EXISTS `item_create_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_create_data` (
  `type` tinyint(3) unsigned NOT NULL,
  `index` smallint(5) unsigned NOT NULL,
  `level` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`type`,`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_create_data`
--

LOCK TABLES `item_create_data` WRITE;
/*!40000 ALTER TABLE `item_create_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_create_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_drop`
--

DROP TABLE IF EXISTS `item_drop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_drop` (
  `type` tinyint(3) unsigned DEFAULT NULL,
  `index` smallint(5) unsigned DEFAULT NULL,
  `level_min` tinyint(3) unsigned DEFAULT NULL,
  `level_max` tinyint(3) unsigned DEFAULT NULL,
  `durability` tinyint(3) unsigned DEFAULT NULL,
  `skill` tinyint(3) unsigned DEFAULT NULL,
  `luck` tinyint(3) unsigned DEFAULT NULL,
  `option_min` tinyint(3) unsigned DEFAULT NULL,
  `option_max` tinyint(3) unsigned DEFAULT NULL,
  `excellent_min` tinyint(3) unsigned DEFAULT NULL,
  `excellent_max` tinyint(3) unsigned DEFAULT NULL,
  `ancient` tinyint(3) unsigned DEFAULT NULL,
  `socket_1` smallint(5) unsigned DEFAULT NULL,
  `socket_2` smallint(5) unsigned DEFAULT NULL,
  `socket_3` smallint(5) unsigned DEFAULT NULL,
  `socket_4` smallint(5) unsigned DEFAULT NULL,
  `socket_5` smallint(5) unsigned DEFAULT NULL,
  `world` smallint(5) unsigned DEFAULT NULL,
  `monster` smallint(5) unsigned DEFAULT NULL,
  `monster_level_min` smallint(6) DEFAULT NULL,
  `monster_level_max` smallint(6) DEFAULT NULL,
  `event_id` tinyint(3) unsigned DEFAULT NULL,
  `invasion_id` int(10) unsigned DEFAULT NULL,
  `season_event` tinyint(3) unsigned DEFAULT NULL,
  `rate` smallint(5) unsigned DEFAULT NULL,
  `server` smallint(5) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_drop`
--

LOCK TABLES `item_drop` WRITE;
/*!40000 ALTER TABLE `item_drop` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_drop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_earring`
--

DROP TABLE IF EXISTS `item_earring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_earring` (
  `type` tinyint(3) unsigned DEFAULT NULL,
  `index` smallint(5) unsigned NOT NULL,
  `group` tinyint(3) unsigned DEFAULT NULL,
  `link` tinyint(3) unsigned DEFAULT NULL,
  `option_1` tinyint(3) unsigned DEFAULT NULL,
  `value_1` tinyint(3) unsigned DEFAULT NULL,
  `option_2` tinyint(3) unsigned DEFAULT NULL,
  `value_2` tinyint(3) unsigned DEFAULT NULL,
  `option_3` tinyint(3) unsigned DEFAULT NULL,
  `value_3` tinyint(3) unsigned DEFAULT NULL,
  `option_4` tinyint(3) unsigned DEFAULT NULL,
  `value_4` tinyint(3) unsigned DEFAULT NULL,
  `option_5` tinyint(3) unsigned DEFAULT NULL,
  `value_5` tinyint(3) unsigned DEFAULT NULL,
  `socket_1_rate` tinyint(3) unsigned DEFAULT NULL,
  `socket_2_rate` tinyint(3) unsigned DEFAULT NULL,
  `socket_3_rate` tinyint(3) unsigned DEFAULT NULL,
  `socket_4_rate` tinyint(3) unsigned DEFAULT NULL,
  `socket_5_rate` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_earring`
--

LOCK TABLES `item_earring` WRITE;
/*!40000 ALTER TABLE `item_earring` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_earring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_earring_bonus`
--

DROP TABLE IF EXISTS `item_earring_bonus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_earring_bonus` (
  `id` tinyint(3) unsigned NOT NULL,
  `link_1` tinyint(3) unsigned DEFAULT NULL,
  `link_2` tinyint(3) unsigned DEFAULT NULL,
  `option_1` tinyint(3) unsigned DEFAULT NULL,
  `value_1` tinyint(3) unsigned DEFAULT NULL,
  `option_2` tinyint(3) unsigned DEFAULT NULL,
  `value_2` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_earring_bonus`
--

LOCK TABLES `item_earring_bonus` WRITE;
/*!40000 ALTER TABLE `item_earring_bonus` DISABLE KEYS */;
INSERT INTO `item_earring_bonus` VALUES (0,NULL,NULL,21,7,24,2),(1,NULL,NULL,21,7,24,2),(2,NULL,NULL,21,7,24,2);
/*!40000 ALTER TABLE `item_earring_bonus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_earring_option`
--

DROP TABLE IF EXISTS `item_earring_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_earring_option` (
  `id` tinyint(3) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_earring_option`
--

LOCK TABLES `item_earring_option` WRITE;
/*!40000 ALTER TABLE `item_earring_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_earring_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_earring_option_value`
--

DROP TABLE IF EXISTS `item_earring_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_earring_option_value` (
  `id` tinyint(3) unsigned NOT NULL,
  `group` tinyint(3) unsigned NOT NULL,
  `value` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`,`group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_earring_option_value`
--

LOCK TABLES `item_earring_option_value` WRITE;
/*!40000 ALTER TABLE `item_earring_option_value` DISABLE KEYS */;
INSERT INTO `item_earring_option_value` VALUES (0,0,200),(0,1,400),(0,2,600),(1,0,17),(1,1,19),(1,2,21),(2,0,4),(2,1,5),(2,2,6),(3,0,10),(3,1,10),(3,2,10),(4,0,20),(4,1,0),(4,2,2),(5,0,7),(5,1,7),(5,2,7),(6,0,35),(6,1,1),(6,2,3),(7,0,1),(7,1,2),(7,2,3);
/*!40000 ALTER TABLE `item_earring_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_earring_upgrade`
--

DROP TABLE IF EXISTS `item_earring_upgrade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_earring_upgrade` (
  `id` tinyint(3) unsigned NOT NULL,
  `rate` int(11) DEFAULT NULL,
  `type_1` tinyint(3) unsigned DEFAULT NULL,
  `index_1` smallint(5) unsigned DEFAULT NULL,
  `amount_1` int(11) DEFAULT NULL,
  `type_2` tinyint(3) unsigned DEFAULT NULL,
  `index_2` smallint(5) unsigned DEFAULT NULL,
  `amount_2` int(11) DEFAULT NULL,
  `type_3` tinyint(3) unsigned DEFAULT NULL,
  `index_3` smallint(5) unsigned DEFAULT NULL,
  `amount_3` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_earring_upgrade`
--

LOCK TABLES `item_earring_upgrade` WRITE;
/*!40000 ALTER TABLE `item_earring_upgrade` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_earring_upgrade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_flagdb`
--

DROP TABLE IF EXISTS `item_flagdb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_flagdb` (
  `type` tinyint(3) unsigned NOT NULL,
  `index` smallint(5) unsigned NOT NULL,
  `flag` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`type`,`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_flagdb`
--

LOCK TABLES `item_flagdb` WRITE;
/*!40000 ALTER TABLE `item_flagdb` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_flagdb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_guardian_elite_option`
--

DROP TABLE IF EXISTS `item_guardian_elite_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_guardian_elite_option` (
  `id` tinyint(3) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_guardian_elite_option`
--

LOCK TABLES `item_guardian_elite_option` WRITE;
/*!40000 ALTER TABLE `item_guardian_elite_option` DISABLE KEYS */;
INSERT INTO `item_guardian_elite_option` VALUES (0,'Bleeding Damage Resistance +%d'),(1,'Poison Damage Resistance +%d'),(2,'Attack Reduction Resistance +%d'),(3,'Attack Speed Reduction Resistance +%d'),(4,'Defense Reduction Resistance +%d');
/*!40000 ALTER TABLE `item_guardian_elite_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_guardian_elite_option_value`
--

DROP TABLE IF EXISTS `item_guardian_elite_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_guardian_elite_option_value` (
  `type` tinyint(3) unsigned NOT NULL,
  `group` tinyint(3) unsigned NOT NULL,
  `id_1` tinyint(3) unsigned DEFAULT NULL,
  `formula_data_1` tinyint(3) unsigned DEFAULT NULL,
  `value_type_1` tinyint(3) unsigned DEFAULT NULL,
  `id_2` tinyint(3) unsigned DEFAULT NULL,
  `formula_data_2` tinyint(3) unsigned DEFAULT NULL,
  `value_type_2` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`type`,`group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_guardian_elite_option_value`
--

LOCK TABLES `item_guardian_elite_option_value` WRITE;
/*!40000 ALTER TABLE `item_guardian_elite_option_value` DISABLE KEYS */;
INSERT INTO `item_guardian_elite_option_value` VALUES (1,0,0,5,0,2,7,0),(1,1,1,6,0,2,7,0),(1,2,0,5,0,3,8,0),(1,3,1,6,0,4,9,0),(1,4,0,5,0,4,9,0),(2,0,0,15,0,2,17,0),(2,1,1,16,0,2,17,0),(2,2,0,15,0,3,18,0),(2,3,1,16,0,4,19,0),(2,4,0,15,0,4,19,0);
/*!40000 ALTER TABLE `item_guardian_elite_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_guardian_option`
--

DROP TABLE IF EXISTS `item_guardian_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_guardian_option` (
  `id` tinyint(3) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_guardian_option`
--

LOCK TABLES `item_guardian_option` WRITE;
/*!40000 ALTER TABLE `item_guardian_option` DISABLE KEYS */;
INSERT INTO `item_guardian_option` VALUES (0,'Elemental Damage Increase +%d'),(1,'Elemental Defense Increase +%d'),(2,'(up to %d Lvl) Defense increase by %0.1f every 20 Lv'),(3,'(up to %d Lvl) Attack/Wizardry/Curse damage increase by 0.1f every 20 Lv'),(4,'A 3%% chance of health recovery by %d');
/*!40000 ALTER TABLE `item_guardian_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_guardian_option_value`
--

DROP TABLE IF EXISTS `item_guardian_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_guardian_option_value` (
  `type` tinyint(3) unsigned NOT NULL,
  `id` tinyint(3) unsigned NOT NULL,
  `formula_data` tinyint(3) unsigned DEFAULT NULL,
  `value_type` tinyint(3) unsigned DEFAULT NULL,
  `condition` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_guardian_option_value`
--

LOCK TABLES `item_guardian_option_value` WRITE;
/*!40000 ALTER TABLE `item_guardian_option_value` DISABLE KEYS */;
INSERT INTO `item_guardian_option_value` VALUES (1,0,0,0,NULL),(2,0,10,0,NULL),(1,1,1,0,NULL),(2,1,11,0,NULL),(1,2,2,0,1100),(2,2,12,0,1100),(1,3,3,0,1100),(2,3,13,0,1100),(1,4,4,0,NULL),(2,4,14,0,NULL);
/*!40000 ALTER TABLE `item_guardian_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_harmony`
--

DROP TABLE IF EXISTS `item_harmony`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_harmony` (
  `type` tinyint(3) unsigned NOT NULL,
  `option` tinyint(3) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `rate` tinyint(3) unsigned DEFAULT NULL,
  `min_level` tinyint(3) unsigned DEFAULT NULL,
  `value_1` int(11) DEFAULT NULL,
  `required_zen_1` int(11) DEFAULT NULL,
  `value_2` int(11) DEFAULT NULL,
  `required_zen_2` int(11) DEFAULT NULL,
  `value_3` int(11) DEFAULT NULL,
  `required_zen_3` int(11) DEFAULT NULL,
  `value_4` int(11) DEFAULT NULL,
  `required_zen_4` int(11) DEFAULT NULL,
  `value_5` int(11) DEFAULT NULL,
  `required_zen_5` int(11) DEFAULT NULL,
  `value_6` int(11) DEFAULT NULL,
  `required_zen_6` int(11) DEFAULT NULL,
  `value_7` int(11) DEFAULT NULL,
  `required_zen_7` int(11) DEFAULT NULL,
  `value_8` int(11) DEFAULT NULL,
  `required_zen_8` int(11) DEFAULT NULL,
  `value_9` int(11) DEFAULT NULL,
  `required_zen_9` int(11) DEFAULT NULL,
  `value_10` int(11) DEFAULT NULL,
  `required_zen_10` int(11) DEFAULT NULL,
  `value_11` int(11) DEFAULT NULL,
  `required_zen_11` int(11) DEFAULT NULL,
  `value_12` int(11) DEFAULT NULL,
  `required_zen_12` int(11) DEFAULT NULL,
  `value_13` int(11) DEFAULT NULL,
  `required_zen_13` int(11) DEFAULT NULL,
  `value_14` int(11) DEFAULT NULL,
  `required_zen_14` int(11) DEFAULT NULL,
  `value_15` int(11) DEFAULT NULL,
  `required_zen_15` int(11) DEFAULT NULL,
  `value_16` int(11) DEFAULT NULL,
  `required_zen_16` int(11) DEFAULT NULL,
  PRIMARY KEY (`type`,`option`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_harmony`
--

LOCK TABLES `item_harmony` WRITE;
/*!40000 ALTER TABLE `item_harmony` DISABLE KEYS */;
INSERT INTO `item_harmony` VALUES (1,1,'Add Min Physi Damage',50,0,2,100000,3,110000,4,120000,5,130000,6,140000,7,150000,9,200000,11,220000,12,240000,14,280000,15,320000,16,360000,17,400000,20,500000,20,500000,20,500000),(1,2,'Add Max Physi Damage',50,0,3,100000,4,110000,5,120000,6,130000,7,140000,8,150000,10,200000,12,220000,14,240000,17,280000,20,320000,23,360000,26,400000,29,500000,29,500000,29,500000),(1,3,'Sub Require Strength',40,0,6,100000,8,110000,10,120000,12,130000,14,140000,16,150000,20,200000,23,220000,26,240000,29,280000,32,320000,35,360000,37,400000,40,500000,40,500000,40,500000),(1,4,'Sub Require Dexterity',40,0,6,100000,8,110000,10,120000,12,130000,14,140000,16,150000,20,200000,23,220000,26,240000,29,280000,32,320000,35,360000,37,400000,40,500000,40,500000,40,500000),(1,5,'Add Physi Damage',30,6,0,0,0,0,0,0,0,0,0,0,0,0,7,200000,8,220000,9,240000,11,280000,12,320000,14,360000,16,400000,19,500000,19,500000,19,500000),(1,6,'Add Critical Damage',30,6,0,0,0,0,0,0,0,0,0,0,0,0,12,200000,14,220000,16,240000,18,280000,20,320000,22,360000,24,400000,30,500000,30,500000,30,500000),(1,7,'Add Skill Damage',20,9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,12,280000,14,320000,16,360000,18,400000,22,500000,22,500000,22,500000),(1,8,'Add Attack Success Rate PvP',20,9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5,280000,7,320000,9,360000,11,400000,14,500000,14,500000,14,500000),(1,9,'Sub SD Rate',20,9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,280000,5,320000,7,360000,9,400000,10,500000,10,500000,10,500000),(1,10,'Add SD Ignore Rate',10,13,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10,500000,10,500000,10,500000),(2,1,'Add Magic Damage',50,0,6,100000,8,110000,10,120000,12,130000,14,140000,16,150000,17,200000,18,220000,19,240000,21,280000,23,320000,25,360000,27,400000,31,500000,31,500000,31,500000),(2,2,'Sub Require Strength',40,0,6,100000,8,110000,10,120000,12,130000,14,140000,16,150000,20,200000,23,220000,26,240000,29,280000,32,320000,35,360000,37,400000,40,500000,40,500000,40,500000),(2,3,'Sub Require Dexterity',40,0,6,100000,8,110000,10,120000,12,130000,14,140000,16,150000,20,200000,23,220000,26,240000,29,280000,32,320000,35,360000,37,400000,40,500000,40,500000,40,500000),(2,4,'Add Skill Damage',30,6,0,0,0,0,0,0,0,0,0,0,0,0,7,200000,10,220000,13,240000,16,280000,19,320000,22,360000,25,400000,30,500000,30,500000,30,500000),(2,5,'Add Critical Damage',30,6,0,0,0,0,0,0,0,0,0,0,0,0,10,200000,12,220000,14,240000,16,280000,18,320000,20,360000,22,400000,28,500000,28,500000,28,500000),(2,6,'Sub SD Rate',20,9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,280000,6,320000,8,360000,10,400000,13,500000,13,500000,13,500000),(2,7,'Add Attack Success Rate PvP',20,9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5,280000,7,320000,9,360000,11,400000,14,500000,14,500000,14,500000),(2,8,'Add SD Ignore Rate',10,13,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,15,500000,15,500000,15,500000),(3,1,'Add Defense',50,0,3,100000,4,110000,5,120000,6,130000,7,140000,8,150000,10,200000,12,220000,14,240000,16,280000,18,320000,20,360000,22,400000,25,500000,25,500000,25,500000),(3,2,'Add Max BP',40,3,0,0,0,0,0,0,4,130000,6,140000,8,150000,10,200000,12,220000,14,240000,16,280000,18,320000,20,360000,22,400000,25,500000,25,500000,25,500000),(3,3,'Add Max HP',40,3,0,0,0,0,0,0,7,130000,9,140000,11,150000,13,200000,15,220000,17,240000,19,280000,21,320000,23,360000,25,400000,30,500000,30,500000,30,500000),(3,4,'Add HP Recovery',30,6,0,0,0,0,0,0,0,0,0,0,0,0,1,200000,2,220000,3,240000,4,280000,5,320000,6,360000,7,400000,8,500000,8,500000,8,500000),(3,5,'Add MP Recovery',20,9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,280000,2,320000,3,360000,4,400000,5,500000,5,500000,5,500000),(3,6,'Add Defense Success Rate PvP',20,9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,280000,4,320000,5,360000,6,400000,8,500000,8,500000,8,500000),(3,7,'Add Damage Reduction',20,9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,280000,4,320000,5,360000,6,400000,7,500000,7,500000,7,500000),(3,8,'Add SD Rate',10,13,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5,500000,5,500000,5,500000);
/*!40000 ALTER TABLE `item_harmony` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_harmony_enhancement`
--

DROP TABLE IF EXISTS `item_harmony_enhancement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_harmony_enhancement` (
  `type` tinyint(3) unsigned DEFAULT NULL,
  `id` tinyint(3) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value_1` int(11) DEFAULT NULL,
  `value_2` int(11) DEFAULT NULL,
  `value_3` int(11) DEFAULT NULL,
  `value_4` int(11) DEFAULT NULL,
  `separation_value` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_harmony_enhancement`
--

LOCK TABLES `item_harmony_enhancement` WRITE;
/*!40000 ALTER TABLE `item_harmony_enhancement` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_harmony_enhancement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_level_template`
--

DROP TABLE IF EXISTS `item_level_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_level_template` (
  `type` tinyint(3) unsigned NOT NULL,
  `index` smallint(5) unsigned NOT NULL,
  `level` tinyint(3) unsigned DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` int(10) unsigned DEFAULT NULL,
  `price_flag` int(10) unsigned DEFAULT NULL,
  `flags` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`type`,`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_level_template`
--

LOCK TABLES `item_level_template` WRITE;
/*!40000 ALTER TABLE `item_level_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_level_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_mastery_bonus`
--

DROP TABLE IF EXISTS `item_mastery_bonus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_mastery_bonus` (
  `type` tinyint(3) unsigned NOT NULL,
  `id` tinyint(3) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `rate` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`type`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_mastery_bonus`
--

LOCK TABLES `item_mastery_bonus` WRITE;
/*!40000 ALTER TABLE `item_mastery_bonus` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_mastery_bonus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_mysterious_stone`
--

DROP TABLE IF EXISTS `item_mysterious_stone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_mysterious_stone` (
  `type` tinyint(3) unsigned NOT NULL,
  `id` tinyint(3) unsigned NOT NULL,
  `luck` tinyint(3) unsigned DEFAULT NULL,
  `excellent` tinyint(3) unsigned DEFAULT NULL,
  `ancient` tinyint(3) unsigned DEFAULT NULL,
  `rate` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`type`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_mysterious_stone`
--

LOCK TABLES `item_mysterious_stone` WRITE;
/*!40000 ALTER TABLE `item_mysterious_stone` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_mysterious_stone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_price`
--

DROP TABLE IF EXISTS `item_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_price` (
  `type` tinyint(3) unsigned NOT NULL,
  `index` smallint(5) unsigned NOT NULL,
  `level` tinyint(3) unsigned DEFAULT NULL,
  `buy_price` bigint(20) DEFAULT NULL,
  `sell_price` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`type`,`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_price`
--

LOCK TABLES `item_price` WRITE;
/*!40000 ALTER TABLE `item_price` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_price_ruud`
--

DROP TABLE IF EXISTS `item_price_ruud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_price_ruud` (
  `type` tinyint(3) unsigned NOT NULL,
  `index` smallint(5) unsigned NOT NULL,
  `ruud_price` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`type`,`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_price_ruud`
--

LOCK TABLES `item_price_ruud` WRITE;
/*!40000 ALTER TABLE `item_price_ruud` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_price_ruud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_quest`
--

DROP TABLE IF EXISTS `item_quest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_quest` (
  `type` tinyint(3) unsigned NOT NULL,
  `index` smallint(5) unsigned NOT NULL,
  `quest_type` smallint(5) unsigned DEFAULT NULL,
  `quest_index` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`type`,`index`,`quest_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_quest`
--

LOCK TABLES `item_quest` WRITE;
/*!40000 ALTER TABLE `item_quest` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_quest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_reduced_drop`
--

DROP TABLE IF EXISTS `item_reduced_drop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_reduced_drop` (
  `type` tinyint(3) unsigned NOT NULL,
  `index` int(10) unsigned NOT NULL,
  `level` tinyint(3) unsigned DEFAULT NULL,
  `rate` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`type`,`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_reduced_drop`
--

LOCK TABLES `item_reduced_drop` WRITE;
/*!40000 ALTER TABLE `item_reduced_drop` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_reduced_drop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_set_option`
--

DROP TABLE IF EXISTS `item_set_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_set_option` (
  `guid` tinyint(3) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `ancient_option_1_0` tinyint(3) unsigned DEFAULT NULL,
  `ancient_option_1_1` tinyint(3) unsigned DEFAULT NULL,
  `ancient_option_2_0` tinyint(3) unsigned DEFAULT NULL,
  `ancient_option_2_1` tinyint(3) unsigned DEFAULT NULL,
  `ancient_option_3_0` tinyint(3) unsigned DEFAULT NULL,
  `ancient_option_3_1` tinyint(3) unsigned DEFAULT NULL,
  `ancient_option_4_0` tinyint(3) unsigned DEFAULT NULL,
  `ancient_option_4_1` tinyint(3) unsigned DEFAULT NULL,
  `ancient_option_5_0` tinyint(3) unsigned DEFAULT NULL,
  `ancient_option_5_1` tinyint(3) unsigned DEFAULT NULL,
  `ancient_option_6_0` tinyint(3) unsigned DEFAULT NULL,
  `ancient_option_6_1` tinyint(3) unsigned DEFAULT NULL,
  `ancient_option_value_1_0` int(11) DEFAULT NULL,
  `ancient_option_value_1_1` int(11) DEFAULT NULL,
  `ancient_option_value_2_0` int(11) DEFAULT NULL,
  `ancient_option_value_2_1` int(11) DEFAULT NULL,
  `ancient_option_value_3_0` int(11) DEFAULT NULL,
  `ancient_option_value_3_1` int(11) DEFAULT NULL,
  `ancient_option_value_4_0` int(11) DEFAULT NULL,
  `ancient_option_value_4_1` int(11) DEFAULT NULL,
  `ancient_option_value_5_0` int(11) DEFAULT NULL,
  `ancient_option_value_5_1` int(11) DEFAULT NULL,
  `ancient_option_value_6_0` int(11) DEFAULT NULL,
  `ancient_option_value_6_1` int(11) DEFAULT NULL,
  `extra_option_1` tinyint(3) unsigned DEFAULT NULL,
  `extra_option_2` tinyint(3) unsigned DEFAULT NULL,
  `extra_option_value_1` int(11) DEFAULT NULL,
  `extra_option_value_2` int(11) DEFAULT NULL,
  `full_option_1` tinyint(3) unsigned DEFAULT NULL,
  `full_option_2` tinyint(3) unsigned DEFAULT NULL,
  `full_option_3` tinyint(3) unsigned DEFAULT NULL,
  `full_option_4` tinyint(3) unsigned DEFAULT NULL,
  `full_option_5` tinyint(3) unsigned DEFAULT NULL,
  `full_option_6` tinyint(3) unsigned DEFAULT NULL,
  `full_option_7` tinyint(3) unsigned DEFAULT NULL,
  `full_option_8` tinyint(3) unsigned DEFAULT NULL,
  `full_option_9` tinyint(3) unsigned DEFAULT NULL,
  `full_option_value_1` int(11) DEFAULT NULL,
  `full_option_value_2` int(11) DEFAULT NULL,
  `full_option_value_3` int(11) DEFAULT NULL,
  `full_option_value_4` int(11) DEFAULT NULL,
  `full_option_value_5` int(11) DEFAULT NULL,
  `full_option_value_6` int(11) DEFAULT NULL,
  `full_option_value_7` int(11) DEFAULT NULL,
  `full_option_value_8` int(11) DEFAULT NULL,
  `full_option_value_9` int(11) DEFAULT NULL,
  `ancient_hero_soul` tinyint(4) DEFAULT NULL,
  `disassemble` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_set_option`
--

LOCK TABLES `item_set_option` WRITE;
/*!40000 ALTER TABLE `item_set_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_set_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_set_type`
--

DROP TABLE IF EXISTS `item_set_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_set_type` (
  `type` tinyint(3) unsigned NOT NULL,
  `index` smallint(5) unsigned NOT NULL,
  `ancient_id_1` tinyint(3) unsigned DEFAULT NULL,
  `ancient_id_2` tinyint(3) unsigned DEFAULT NULL,
  `ancient_id_3` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`type`,`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_set_type`
--

LOCK TABLES `item_set_type` WRITE;
/*!40000 ALTER TABLE `item_set_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_set_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_socket`
--

DROP TABLE IF EXISTS `item_socket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_socket` (
  `type` tinyint(3) unsigned NOT NULL,
  `index` smallint(5) unsigned NOT NULL,
  `socket_slot` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`type`,`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_socket`
--

LOCK TABLES `item_socket` WRITE;
/*!40000 ALTER TABLE `item_socket` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_socket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_socket_bonus`
--

DROP TABLE IF EXISTS `item_socket_bonus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_socket_bonus` (
  `guid` tinyint(3) unsigned NOT NULL,
  `start_item_type` tinyint(4) DEFAULT NULL,
  `end_item_type` tinyint(3) unsigned DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value_type` tinyint(3) unsigned DEFAULT NULL,
  `value` int(10) unsigned DEFAULT NULL,
  `success_rate` tinyint(3) unsigned DEFAULT NULL,
  `required_socket_1` tinyint(3) unsigned DEFAULT NULL,
  `required_socket_2` tinyint(3) unsigned DEFAULT NULL,
  `required_socket_3` tinyint(3) unsigned DEFAULT NULL,
  `required_socket_4` tinyint(3) unsigned DEFAULT NULL,
  `required_socket_5` tinyint(3) unsigned DEFAULT NULL,
  `seed_level_min` tinyint(3) unsigned DEFAULT NULL,
  `seed_level_max` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_socket_bonus`
--

LOCK TABLES `item_socket_bonus` WRITE;
/*!40000 ALTER TABLE `item_socket_bonus` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_socket_bonus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_socket_mix`
--

DROP TABLE IF EXISTS `item_socket_mix`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_socket_mix` (
  `rank` tinyint(3) unsigned NOT NULL,
  `price` int(10) unsigned DEFAULT NULL,
  `success_rate` tinyint(3) unsigned DEFAULT NULL,
  `required_rune` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`rank`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_socket_mix`
--

LOCK TABLES `item_socket_mix` WRITE;
/*!40000 ALTER TABLE `item_socket_mix` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_socket_mix` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_socket_package`
--

DROP TABLE IF EXISTS `item_socket_package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_socket_package` (
  `guid` tinyint(3) unsigned NOT NULL,
  `id` tinyint(3) unsigned DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value_type` tinyint(3) unsigned DEFAULT NULL,
  `value` int(10) unsigned DEFAULT NULL,
  `required_type_1` tinyint(3) unsigned DEFAULT NULL,
  `required_type_2` tinyint(3) unsigned DEFAULT NULL,
  `required_type_3` tinyint(3) unsigned DEFAULT NULL,
  `required_type_4` tinyint(3) unsigned DEFAULT NULL,
  `required_type_5` tinyint(3) unsigned DEFAULT NULL,
  `required_type_6` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_socket_package`
--

LOCK TABLES `item_socket_package` WRITE;
/*!40000 ALTER TABLE `item_socket_package` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_socket_package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_socket_seed`
--

DROP TABLE IF EXISTS `item_socket_seed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_socket_seed` (
  `guid` tinyint(3) unsigned NOT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL,
  `sub_type` tinyint(3) unsigned DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value_type` tinyint(3) unsigned DEFAULT NULL,
  `level_1` int(10) unsigned DEFAULT NULL,
  `level_2` int(10) unsigned DEFAULT NULL,
  `level_3` int(10) unsigned DEFAULT NULL,
  `level_4` int(10) unsigned DEFAULT NULL,
  `level_5` int(10) unsigned DEFAULT NULL,
  `level_6` int(10) unsigned DEFAULT NULL,
  `level_7` int(10) unsigned DEFAULT NULL,
  `level_8` int(10) unsigned DEFAULT NULL,
  `level_9` int(10) unsigned DEFAULT NULL,
  `level_10` int(10) unsigned DEFAULT NULL,
  `level_11` int(10) unsigned DEFAULT NULL,
  `level_12` int(10) unsigned DEFAULT NULL,
  `level_13` int(10) unsigned DEFAULT NULL,
  `level_14` int(10) unsigned DEFAULT NULL,
  `level_15` int(10) unsigned DEFAULT NULL,
  `level_16` int(10) unsigned DEFAULT NULL,
  `level_17` int(10) unsigned DEFAULT NULL,
  `level_18` int(10) unsigned DEFAULT NULL,
  `level_19` int(10) unsigned DEFAULT NULL,
  `level_20` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_socket_seed`
--

LOCK TABLES `item_socket_seed` WRITE;
/*!40000 ALTER TABLE `item_socket_seed` DISABLE KEYS */;
INSERT INTO `item_socket_seed` VALUES (0,1,0,'Add Damage By Level',30,11,12,13,14,15,16,17,18,19,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1,1,1,'Add Speed',20,7,8,9,10,11,12,13,14,15,16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,1,2,'Add Min Damage',30,30,32,35,40,50,55,61,67,73,83,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,1,3,'Add Max Damage',40,20,22,25,30,35,40,45,51,57,63,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,1,4,'Add Damage',20,20,22,25,30,35,40,45,51,57,63,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,1,5,'Sub BP Consumption Rate',30,40,41,42,43,44,45,46,47,48,49,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,2,0,'Mul Defense Success Rate',10,10,11,12,13,14,15,16,17,18,19,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,2,1,'Add Defense',30,30,33,36,39,41,44,47,51,55,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,2,2,'Add Shield Damage Reduction',50,100,150,250,300,350,400,450,500,550,600,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,2,3,'Add Damage Reduction',20,4,5,6,7,8,9,10,11,12,13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,2,4,'Add Damage Reflect',40,5,6,7,8,9,10,11,12,13,14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,3,0,'Add Hunt HP',30,250,280,310,340,372,404,436,471,506,541,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,3,1,'Add Hunt MP',20,400,450,500,550,601,652,703,755,807,859,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,3,2,'Add Skill Damage',10,37,40,45,50,57,64,71,80,89,100,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,3,3,'Add Attack Success Rate',50,25,27,30,35,42,49,56,65,74,83,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,3,4,'Add Item Durability Rate',30,30,32,34,36,40,44,49,54,60,66,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,4,0,'Add HP Recovery',40,8,10,13,16,21,26,31,38,45,52,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,4,1,'Add Max HP',30,100,115,130,145,165,185,205,235,265,295,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,4,2,'Add Max MP',40,150,165,180,195,215,235,255,285,315,345,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(24,4,3,'Add MP Recovery',50,7,14,21,28,37,46,55,66,77,88,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(25,4,4,'Add Max BP',40,70,82,95,110,126,143,162,182,203,226,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(26,4,5,'Add BP Recovery',50,5,7,9,11,13,15,17,19,21,23,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(29,5,0,'Add Excellent Damage',20,15,20,25,30,36,43,51,60,70,81,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(30,5,1,'Add Excellent Damage Rate',10,10,11,12,13,14,15,16,17,18,19,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(31,5,2,'Add Critical Damage',30,30,32,35,40,47,56,66,77,89,102,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(32,5,3,'Add Critical Damage Rate',10,8,9,10,11,12,13,14,15,16,17,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(34,6,0,'Add Strength',10,6,8,9,10,11,13,15,18,20,24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(35,6,1,'Add Dexterity',10,1,2,3,4,5,7,9,12,15,18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(36,6,2,'Add Vitality',10,30,32,34,36,38,41,44,48,52,57,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(37,6,3,'Add Energy',10,10,12,13,15,17,20,23,27,31,36,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `item_socket_seed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_socket_seed_sphere`
--

DROP TABLE IF EXISTS `item_socket_seed_sphere`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_socket_seed_sphere` (
  `id` smallint(5) unsigned NOT NULL,
  `attribute` tinyint(3) unsigned DEFAULT NULL,
  `rank` tinyint(3) unsigned DEFAULT NULL,
  `next_id` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_socket_seed_sphere`
--

LOCK TABLES `item_socket_seed_sphere` WRITE;
/*!40000 ALTER TABLE `item_socket_seed_sphere` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_socket_seed_sphere` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_socket_upgrade`
--

DROP TABLE IF EXISTS `item_socket_upgrade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_socket_upgrade` (
  `id` tinyint(3) unsigned NOT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL,
  `index` smallint(5) unsigned DEFAULT NULL,
  `level_min` tinyint(3) unsigned DEFAULT NULL,
  `level_max` tinyint(3) unsigned DEFAULT NULL,
  `skill` tinyint(3) unsigned DEFAULT NULL,
  `option` tinyint(3) unsigned DEFAULT NULL,
  `seed_sphere` tinyint(3) unsigned DEFAULT NULL,
  `socket_min` tinyint(3) unsigned DEFAULT NULL,
  `price` int(10) unsigned DEFAULT NULL,
  `rate` smallint(5) unsigned DEFAULT NULL,
  `upgrade_type` tinyint(3) unsigned DEFAULT NULL,
  `upgrade_index` smallint(5) unsigned DEFAULT NULL,
  `upgrade_level` tinyint(3) unsigned DEFAULT NULL,
  `upgrade_skill_rate` smallint(5) unsigned DEFAULT NULL,
  `upgrade_luck_rate` smallint(5) unsigned DEFAULT NULL,
  `upgrade_socket_1_rate` smallint(5) unsigned DEFAULT NULL,
  `upgrade_socket_2_rate` smallint(5) unsigned DEFAULT NULL,
  `upgrade_socket_3_rate` smallint(5) unsigned DEFAULT NULL,
  `upgrade_socket_4_rate` smallint(5) unsigned DEFAULT NULL,
  `upgrade_socket_5_rate` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_socket_upgrade`
--

LOCK TABLES `item_socket_upgrade` WRITE;
/*!40000 ALTER TABLE `item_socket_upgrade` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_socket_upgrade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_stack`
--

DROP TABLE IF EXISTS `item_stack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_stack` (
  `type` tinyint(3) unsigned NOT NULL,
  `index` smallint(5) unsigned NOT NULL,
  `max_stack` tinyint(3) unsigned DEFAULT NULL,
  `stack_on_loot` tinyint(4) DEFAULT NULL,
  `stack_convert_type` tinyint(3) unsigned DEFAULT NULL,
  `stack_convert_index` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`type`,`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_stack`
--

LOCK TABLES `item_stack` WRITE;
/*!40000 ALTER TABLE `item_stack` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_stack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_template`
--

DROP TABLE IF EXISTS `item_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_template` (
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `index` smallint(5) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `slot` tinyint(3) unsigned DEFAULT NULL,
  `x` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `y` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `flag` int(10) unsigned DEFAULT NULL,
  `drop_rate` smallint(5) unsigned DEFAULT NULL,
  `skill` smallint(5) unsigned NOT NULL DEFAULT '0',
  `max_count` smallint(6) DEFAULT NULL,
  `ancient_attribute` tinyint(3) unsigned DEFAULT NULL,
  `kind_1` tinyint(3) unsigned DEFAULT NULL,
  `kind_2` tinyint(3) unsigned DEFAULT NULL,
  `kind_3` tinyint(3) unsigned DEFAULT NULL,
  `value` smallint(5) unsigned DEFAULT NULL,
  `buy_price` int(10) unsigned DEFAULT NULL,
  `price_flags` int(10) unsigned DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `durability` tinyint(3) unsigned DEFAULT NULL,
  `durability_magic` tinyint(3) unsigned DEFAULT NULL,
  `durability_resistance` int(11) DEFAULT NULL,
  `durability_time` int(11) DEFAULT NULL,
  `durability_time_safe` int(11) DEFAULT NULL,
  `durability_reduction` tinyint(3) unsigned DEFAULT NULL,
  `required_level` smallint(6) DEFAULT NULL,
  `required_strength` int(11) DEFAULT NULL,
  `required_agility` int(11) DEFAULT NULL,
  `required_vitality` int(11) DEFAULT NULL,
  `required_energy` int(11) DEFAULT NULL,
  `required_leadership` int(11) DEFAULT NULL,
  `min_damage` int(10) unsigned DEFAULT NULL,
  `max_damage` int(10) unsigned DEFAULT NULL,
  `power` int(10) unsigned DEFAULT NULL,
  `attack_speed` int(10) unsigned DEFAULT NULL,
  `walk_speed` int(10) unsigned DEFAULT NULL,
  `defence` int(10) unsigned DEFAULT NULL,
  `defence_magic` int(10) unsigned DEFAULT NULL,
  `defence_success` int(10) unsigned DEFAULT NULL,
  `resistance_1` tinyint(3) unsigned DEFAULT NULL,
  `resistance_2` tinyint(3) unsigned DEFAULT NULL,
  `resistance_3` tinyint(3) unsigned DEFAULT NULL,
  `resistance_4` tinyint(3) unsigned DEFAULT NULL,
  `resistance_5` tinyint(3) unsigned DEFAULT NULL,
  `resistance_6` tinyint(3) unsigned DEFAULT NULL,
  `resistance_7` tinyint(3) unsigned DEFAULT NULL,
  `required_class_dark_wizard` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `required_class_dark_knight` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `required_class_fairy_elf` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `required_class_magic_gladiator` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `required_class_dark_lord` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `required_class_summoner` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `required_class_rage_fighter` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `required_class_grow_lancer` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `required_class_rune_wizard` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `required_class_slayer` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `required_class_gun_crusher` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `harmony_smelt_level` smallint(6) DEFAULT NULL,
  `use_delay` int(10) unsigned DEFAULT NULL,
  `duration_time` int(10) unsigned DEFAULT NULL,
  `looting_time` int(10) unsigned DEFAULT NULL,
  `inventory_type` tinyint(3) unsigned DEFAULT NULL,
  `disabled` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`type`,`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_template`
--

LOCK TABLES `item_template` WRITE;
/*!40000 ALTER TABLE `item_template` DISABLE KEYS */;
INSERT INTO `item_template` VALUES (0,0,'Kris',0,1,1,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6,20,0,NULL,NULL,NULL,NULL,0,27,27,0,0,0,6,11,0,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,0,NULL,NULL,NULL,NULL,NULL,0),(0,1,'Short Sword',0,1,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,22,0,NULL,NULL,NULL,NULL,0,60,0,0,0,0,3,7,0,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,0,NULL,NULL,NULL,NULL,NULL,0),(0,2,'Rapier',0,1,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9,23,0,NULL,NULL,NULL,NULL,0,50,40,0,0,0,9,15,0,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,1,1,1,0,1,1,1,0,NULL,NULL,NULL,NULL,NULL,0),(0,3,'Katana',0,1,3,NULL,1,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16,27,0,NULL,NULL,NULL,NULL,0,80,40,0,0,0,16,26,0,35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,1,1,0,0,0,0,1,0,NULL,NULL,NULL,NULL,NULL,0),(0,4,'Sword of Assassin',0,1,3,NULL,1,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12,24,0,NULL,NULL,NULL,NULL,0,60,40,0,0,0,12,18,0,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,1,1,0,0,0,0,1,0,NULL,NULL,NULL,NULL,NULL,0),(0,5,'Blade',0,1,3,NULL,1,22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,36,39,0,NULL,NULL,NULL,NULL,0,80,50,0,0,0,36,47,0,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,0,0,0,0,1,0,NULL,NULL,NULL,NULL,NULL,0),(0,6,'Gladius',0,1,3,NULL,1,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,20,30,0,NULL,NULL,NULL,NULL,0,110,0,0,0,0,20,30,0,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,1,1,0,0,0,0,1,0,NULL,NULL,NULL,NULL,NULL,0),(0,7,'Falchion',0,1,3,NULL,1,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,24,34,0,NULL,NULL,NULL,NULL,0,120,0,0,0,0,24,34,0,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,1,1,0,0,0,0,1,0,NULL,NULL,NULL,NULL,NULL,0),(0,8,'Serpent Sword',0,1,3,NULL,1,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,30,36,0,NULL,NULL,NULL,NULL,0,130,0,0,0,0,30,40,0,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,1,1,0,0,0,0,1,0,NULL,NULL,NULL,NULL,NULL,0),(0,9,'Sword of Salamander',0,2,3,NULL,1,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,32,40,0,NULL,NULL,NULL,NULL,0,103,0,0,0,0,32,46,0,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(0,10,'Light Saber',0,2,4,NULL,1,22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,40,50,0,NULL,NULL,NULL,NULL,0,80,60,0,0,0,47,61,0,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(0,11,'Legendary Sword',0,2,3,NULL,1,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,44,54,0,NULL,NULL,NULL,NULL,0,120,0,0,0,0,56,72,0,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(0,12,'Heliacal Sword',0,2,3,NULL,1,19,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,56,66,0,NULL,NULL,NULL,NULL,0,140,0,0,0,0,73,98,0,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(0,13,'Double Blade',0,1,3,NULL,1,22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,48,43,0,NULL,NULL,NULL,NULL,0,70,70,0,0,0,48,56,0,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,1,0,0,0,0,0,1,0,NULL,NULL,NULL,NULL,NULL,0),(0,14,'Lighting Sword',0,1,3,NULL,1,22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,59,50,0,NULL,NULL,NULL,NULL,0,90,50,0,0,0,59,67,0,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(0,15,'Giant Sword',0,2,3,NULL,1,23,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,52,60,0,NULL,NULL,NULL,NULL,0,140,0,0,0,0,60,85,0,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(0,16,'Sword of Destruction',0,1,4,NULL,1,22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,82,84,0,NULL,NULL,NULL,NULL,0,160,60,0,0,0,82,90,0,35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(0,17,'Dark Breaker',0,2,4,NULL,1,23,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,104,89,0,NULL,NULL,NULL,NULL,0,180,50,0,0,0,128,153,0,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(0,18,'Thunder Blade',0,2,3,NULL,1,23,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,105,86,0,NULL,NULL,NULL,NULL,0,180,50,0,0,0,140,168,0,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(0,19,'Divine Sword of the Archangel',0,1,4,NULL,1,22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,86,168,0,NULL,NULL,NULL,NULL,0,140,50,0,0,0,220,230,0,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,1,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(0,20,'Knight Blade',0,1,4,NULL,1,22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,140,90,0,NULL,NULL,NULL,NULL,0,116,38,0,0,0,107,115,0,35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(0,21,'Dark Reign Blade',0,2,4,NULL,1,56,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,140,100,0,NULL,NULL,NULL,NULL,0,116,53,0,9,0,115,142,115,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(0,22,'Bone Blade',0,1,4,NULL,1,22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,147,95,0,NULL,NULL,NULL,NULL,380,100,35,0,0,0,122,135,0,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(0,23,'Explosion Blade',0,2,4,NULL,1,56,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,147,110,0,NULL,NULL,NULL,NULL,380,98,48,0,7,0,127,155,134,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(0,24,'Daybreak',0,2,4,NULL,1,22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,115,90,0,NULL,NULL,NULL,NULL,0,192,30,0,0,0,182,218,0,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(0,25,'Sword Dancer',0,2,4,NULL,1,56,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,115,90,0,NULL,NULL,NULL,NULL,0,136,57,0,9,0,109,136,108,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(0,26,'Flameberge',0,1,4,NULL,1,22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,137,90,0,NULL,NULL,NULL,NULL,380,193,53,0,0,0,115,126,0,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(0,27,'Sword Breaker',0,1,4,NULL,1,22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,133,90,0,NULL,NULL,NULL,NULL,380,53,176,0,0,0,91,99,0,35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(0,28,'Rune Bastard Sword',0,1,4,NULL,1,56,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,139,90,0,NULL,NULL,NULL,NULL,380,91,73,0,17,0,98,122,109,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(0,29,'Sonic Blade',0,1,4,NULL,1,22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,149,80,0,NULL,NULL,NULL,NULL,400,49,162,0,0,0,109,116,0,35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(0,30,'Asura',0,1,4,NULL,1,56,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,149,90,0,NULL,NULL,NULL,NULL,400,86,70,0,16,0,115,140,112,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,3,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(0,31,'Rune Blade',0,2,4,NULL,1,56,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,100,93,0,NULL,NULL,NULL,NULL,0,135,62,0,9,0,104,130,104,35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(0,32,'Sacred Glove',0,1,2,NULL,1,260,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,52,65,0,NULL,NULL,NULL,NULL,0,85,35,0,0,0,52,58,0,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(0,33,'Holy Storm Claws',0,1,2,NULL,1,261,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,82,77,0,NULL,NULL,NULL,NULL,0,100,50,0,0,0,82,88,0,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(0,34,'Piercing Blade Glove',0,1,2,NULL,1,260,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,105,86,0,NULL,NULL,NULL,NULL,0,120,60,0,0,0,95,101,0,35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(0,35,'Phoenix Soul Star',0,1,2,NULL,1,270,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,147,98,0,NULL,NULL,NULL,NULL,380,101,51,0,0,0,122,128,0,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(0,36,'Cyclone Sword',0,1,4,NULL,1,22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,149,90,0,NULL,NULL,NULL,NULL,400,182,50,0,0,0,129,144,0,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(0,37,'Blast Break',0,2,4,NULL,1,23,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,149,130,0,NULL,NULL,NULL,NULL,400,182,50,0,0,0,163,216,0,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,3,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(0,41,'Pandora Pick (two-handed)',0,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(0,42,'Bloodangel Sword',0,1,4,NULL,1,22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,0,NULL,NULL,NULL,NULL,400,165,51,0,125,0,252,263,0,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(0,44,'Bloodangel Magic Sword',0,1,4,NULL,1,56,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,0,NULL,NULL,NULL,NULL,400,120,72,0,17,0,246,257,112,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,3,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(0,46,'Bloodangel Claws',0,1,2,NULL,1,270,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,0,NULL,NULL,NULL,NULL,400,95,30,0,0,0,147,157,0,35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,3,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(0,48,'Sword of Destruction (Bound)',0,1,4,NULL,0,22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,82,84,0,NULL,NULL,NULL,NULL,0,50,50,0,0,0,101,115,0,35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(0,49,'Thunder Blade (Bound)',0,2,3,NULL,0,23,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,105,86,0,NULL,NULL,NULL,NULL,0,50,50,0,0,0,162,190,0,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(0,50,'Holy Storm Claws (Bound)',0,1,2,NULL,0,261,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,82,77,0,NULL,NULL,NULL,NULL,0,50,50,0,0,0,87,95,0,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(0,51,'Blessed Divine Sword of the Archangel',0,1,4,NULL,0,22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,200,170,0,NULL,NULL,NULL,NULL,0,60,30,0,0,0,265,275,0,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,1,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(0,52,'Pantera Claws',0,1,2,NULL,1,270,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,139,95,0,NULL,NULL,NULL,NULL,380,78,25,0,0,0,26,34,0,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(0,53,'Devast Claws',0,1,2,NULL,1,270,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,149,95,0,NULL,NULL,NULL,NULL,400,82,28,0,0,0,35,46,0,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,3,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(0,54,'Darkangel Sword',0,1,4,NULL,1,22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,160,100,0,NULL,NULL,NULL,NULL,600,165,51,0,120,0,302,313,0,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(0,55,'Darkangel Magic Sword',0,1,4,NULL,1,56,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,160,100,0,NULL,NULL,NULL,NULL,600,120,72,0,17,0,300,311,118,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,3,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(0,56,'Darkangel Claws',0,1,2,NULL,1,270,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,160,100,0,NULL,NULL,NULL,NULL,600,95,30,0,0,0,214,224,0,35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,3,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(0,57,'Holyangel Sword',0,1,4,NULL,1,22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,180,100,0,NULL,NULL,NULL,NULL,800,152,47,0,111,0,365,376,0,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(0,58,'Holyangel Magic Sword',0,1,4,NULL,1,56,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,180,100,0,NULL,NULL,NULL,NULL,800,111,67,0,16,0,364,375,125,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,3,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(0,59,'Holyangel Claws',0,1,2,NULL,1,270,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,180,100,0,NULL,NULL,NULL,NULL,800,88,28,0,0,0,277,287,0,35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,3,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(0,60,'Divine Claws of the Archangel',0,1,3,NULL,1,270,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,100,160,0,NULL,NULL,NULL,NULL,0,68,23,0,0,0,121,130,0,35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(0,61,'Blessed Divine Claws of the Archangel',0,1,3,NULL,0,270,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,200,160,0,NULL,NULL,NULL,NULL,0,60,22,0,0,0,136,147,0,35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(0,62,'Soul Sword',0,1,4,NULL,1,22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,200,100,0,NULL,NULL,NULL,NULL,900,141,44,0,103,0,428,439,0,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(0,63,'Soul Magic Sword',0,1,4,NULL,1,56,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,200,100,0,NULL,NULL,NULL,NULL,900,103,62,0,15,0,427,438,133,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,4,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(0,64,'Soul Claws',0,1,2,NULL,1,270,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,200,100,0,NULL,NULL,NULL,NULL,900,82,26,0,0,0,340,350,0,35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,4,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(0,65,'Kukri Short Sword (Bound)',0,1,3,NULL,0,22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,82,85,0,NULL,NULL,NULL,NULL,0,47,47,0,0,0,100,110,0,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,NULL,NULL,0),(0,66,'Flat Short Sword',0,1,3,NULL,1,22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,20,0,NULL,NULL,NULL,NULL,0,50,0,0,0,0,1,6,0,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,NULL,NULL,0),(0,67,'Dakia Short Sword',0,1,3,NULL,1,22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,55,45,0,NULL,NULL,NULL,NULL,0,40,85,0,0,0,50,60,0,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,NULL,NULL,0),(0,68,'Kukri Short Sword',0,1,3,NULL,1,22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,80,80,0,NULL,NULL,NULL,NULL,0,55,155,0,0,0,80,90,0,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,NULL,NULL,0),(0,69,'Pairing Short Sword',0,1,3,NULL,1,22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,135,100,0,NULL,NULL,NULL,NULL,380,55,190,0,0,0,110,130,0,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,2,0,NULL,NULL,NULL,NULL,NULL,0),(0,70,'Novacula Short Sword',0,1,3,NULL,1,22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,148,100,0,NULL,NULL,NULL,NULL,400,53,185,0,0,0,130,140,0,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,NULL,NULL,NULL,NULL,NULL,0),(0,71,'Bloodangel Short Sword',0,1,3,NULL,1,22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,0,NULL,NULL,NULL,NULL,400,53,175,0,0,0,250,260,0,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,NULL,NULL,NULL,NULL,NULL,0),(0,72,'Darkangel Short Sword',0,1,3,NULL,1,22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,160,100,0,NULL,NULL,NULL,NULL,600,53,175,0,0,0,300,310,0,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,NULL,NULL,NULL,NULL,NULL,0),(0,73,'Holyangel Short Sword',0,1,3,NULL,1,22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,180,100,0,NULL,NULL,NULL,NULL,800,49,162,0,0,0,360,370,0,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,NULL,NULL,NULL,NULL,NULL,0),(0,74,'Soul Short Sword',0,1,3,NULL,1,22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,200,100,0,NULL,NULL,NULL,NULL,900,46,151,0,0,0,420,440,0,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,4,0,NULL,NULL,NULL,NULL,NULL,0),(0,75,'Blue Eye Short Sword',0,1,3,NULL,1,22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,220,100,0,NULL,NULL,NULL,NULL,1000,192,610,0,0,0,480,511,0,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,4,0,NULL,NULL,NULL,NULL,NULL,0),(0,76,'Divine Short Sword of the Archangel',0,1,3,NULL,1,22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,86,160,0,NULL,NULL,NULL,NULL,0,50,145,0,0,0,220,230,0,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,NULL,NULL,0),(0,77,'Blessed Divine Short Sword of the Archangel',0,1,3,NULL,0,22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,200,170,0,NULL,NULL,NULL,NULL,0,25,55,0,0,0,260,270,0,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,NULL,NULL,0),(0,78,'Blue Eye Sword',0,1,4,NULL,1,22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,220,100,0,NULL,NULL,NULL,NULL,1000,568,184,0,460,0,492,502,0,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(0,79,'Blue Eye Magic Sword',0,1,4,NULL,1,56,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,220,100,0,NULL,NULL,NULL,NULL,1000,418,256,0,78,0,491,501,140,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,4,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(0,80,'Blue Eye Claw',0,1,2,NULL,1,270,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,220,100,0,NULL,NULL,NULL,NULL,1000,335,113,0,0,0,404,414,0,35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,4,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(0,81,'Silver Heart Sword',0,1,4,NULL,1,22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,240,100,0,NULL,NULL,NULL,NULL,1100,575,187,0,468,0,556,567,0,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(0,82,'Silver Heart Magic Sword',0,1,4,NULL,1,56,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,240,100,0,NULL,NULL,NULL,NULL,1100,425,262,0,82,0,555,565,149,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,4,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(0,83,'Silver Heart Claw',0,1,2,NULL,1,270,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,240,100,0,NULL,NULL,NULL,NULL,1100,340,114,0,0,0,468,480,0,35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,4,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(0,84,'Silver Heart Short Sword',0,1,3,NULL,1,22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,240,100,0,NULL,NULL,NULL,NULL,1100,195,618,0,0,0,540,583,0,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,4,0,NULL,NULL,NULL,NULL,NULL,0),(1,0,'Small Axe',0,1,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,18,0,NULL,NULL,NULL,NULL,0,50,0,0,0,0,1,6,0,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(1,1,'Hand Axe',0,1,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,20,0,NULL,NULL,NULL,NULL,0,70,0,0,0,0,4,9,0,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(1,2,'Double Axe',0,1,3,NULL,1,19,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14,26,0,NULL,NULL,NULL,NULL,0,90,0,0,0,0,14,24,0,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,1,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(1,3,'Tomahawk',0,1,3,NULL,1,19,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,18,28,0,NULL,NULL,NULL,NULL,0,100,0,0,0,0,18,28,0,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,1,1,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(1,4,'Elven Axe',0,1,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,26,32,0,NULL,NULL,NULL,NULL,0,50,70,0,0,0,26,38,0,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,1,0,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(1,5,'Battle Axe',0,2,3,NULL,1,19,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,30,36,0,NULL,NULL,NULL,NULL,0,120,0,0,0,0,36,44,0,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(1,6,'Nikea Axe',0,2,3,NULL,1,19,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,34,44,0,NULL,NULL,NULL,NULL,0,130,0,0,0,0,38,50,0,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(1,7,'Larkan Axe',0,2,3,NULL,1,19,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,46,55,0,NULL,NULL,NULL,NULL,0,140,0,0,0,0,54,67,0,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(1,8,'Crescent Axe',0,2,3,NULL,1,19,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,54,65,0,NULL,NULL,NULL,NULL,0,100,40,0,0,0,69,89,0,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(2,0,'Mace',0,1,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,7,21,0,NULL,NULL,NULL,NULL,0,100,0,0,0,0,7,13,0,15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,1,1,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(2,1,'Morning Star',0,1,3,NULL,1,19,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13,25,0,NULL,NULL,NULL,NULL,0,100,0,0,0,0,13,22,0,15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,1,1,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(2,2,'Flail',0,1,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,22,32,0,NULL,NULL,NULL,NULL,0,80,50,0,0,0,22,32,0,15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,1,1,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(2,3,'Great Hammer',0,2,3,NULL,1,19,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,38,50,0,NULL,NULL,NULL,NULL,0,150,0,0,0,0,45,56,0,15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,1,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(2,4,'Crystal Morning Star',0,2,3,NULL,1,19,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,66,72,0,NULL,NULL,NULL,NULL,0,130,0,0,0,0,78,107,0,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,0,0,1,0,1,0,0,NULL,NULL,NULL,NULL,NULL,0),(2,5,'Crystal Sword',0,2,4,NULL,1,23,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,72,76,0,NULL,NULL,NULL,NULL,0,130,70,0,0,0,89,120,0,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,0,0,0,0,1,0,0,NULL,NULL,NULL,NULL,NULL,0),(2,6,'Chaos Dragon Axe',0,2,4,NULL,0,23,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,75,80,0,NULL,NULL,NULL,NULL,0,140,50,0,0,0,102,130,0,35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(2,7,'Elemental Mace',0,1,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,90,50,0,NULL,NULL,NULL,NULL,0,15,42,0,0,0,62,80,0,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,2,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(2,8,'Battle Scepter',0,1,3,NULL,1,66,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,54,40,0,NULL,NULL,NULL,NULL,0,80,17,0,0,0,41,52,3,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(2,9,'Master Scepter',0,1,3,NULL,1,66,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,72,45,0,NULL,NULL,NULL,NULL,0,87,18,0,0,0,57,68,20,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(2,10,'Great Scepter',0,1,4,NULL,1,66,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,82,65,0,NULL,NULL,NULL,NULL,0,100,21,0,0,0,74,85,35,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(2,11,'Lord Scepter',0,1,4,NULL,1,66,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,98,72,0,NULL,NULL,NULL,NULL,0,105,23,0,0,0,91,102,52,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(2,12,'Great Lord Scepter',0,1,4,NULL,1,66,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,140,84,0,NULL,NULL,NULL,NULL,0,90,20,0,0,0,108,120,67,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(2,13,'Divine Scepter of the Archangel',0,1,4,NULL,1,66,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,90,0,NULL,NULL,NULL,NULL,0,75,16,0,0,0,200,223,138,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(2,14,'Soleil Sceptor',0,1,4,NULL,1,66,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,146,95,0,NULL,NULL,NULL,NULL,380,80,15,0,0,0,130,153,84,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(2,15,'Shining Scepter',0,1,4,NULL,1,66,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,110,78,0,NULL,NULL,NULL,NULL,0,108,22,0,0,0,99,111,60,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(2,16,'Frost Mace',0,1,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,121,80,0,NULL,NULL,NULL,NULL,380,27,19,0,0,0,106,146,0,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,2,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(2,17,'Absolute Scepter',0,1,4,NULL,1,66,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,135,90,0,NULL,NULL,NULL,NULL,380,119,24,0,0,0,114,132,72,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(2,18,'Striker Scepter',0,1,4,NULL,1,66,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,147,86,0,NULL,NULL,NULL,NULL,0,87,20,0,0,0,112,124,70,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(2,19,'Thunderbolt',0,1,4,NULL,1,66,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,149,78,0,NULL,NULL,NULL,NULL,400,111,22,0,0,0,127,154,76,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,3,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(2,20,'Horn of Steal',0,2,4,NULL,1,19,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,149,120,0,NULL,NULL,NULL,NULL,400,182,50,0,0,0,177,206,0,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(2,22,'Bloodangel Scepter',0,1,4,NULL,1,66,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,0,NULL,NULL,NULL,NULL,400,114,23,0,0,0,188,200,104,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,3,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(2,24,'Lord\'s Scepter (Bound)',0,1,4,NULL,0,66,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,98,72,0,NULL,NULL,NULL,NULL,0,50,50,0,0,0,113,119,60,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(2,25,'Blessed Divine Scepter of the Archangel',0,1,4,NULL,0,66,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,200,170,0,NULL,NULL,NULL,NULL,0,75,16,0,0,0,331,341,175,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(2,26,'Darkangel Scepter',0,1,4,NULL,1,66,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,160,100,0,NULL,NULL,NULL,NULL,600,114,23,0,0,0,223,233,114,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,3,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(2,27,'Holyangel Scepter',0,1,4,NULL,1,66,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,180,100,0,NULL,NULL,NULL,NULL,800,105,22,0,0,0,318,330,134,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,3,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(2,28,'Elemental Rune Mace',0,1,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,52,0,50,NULL,NULL,NULL,NULL,0,10,6,0,0,0,22,23,58,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,NULL,NULL,NULL,NULL,NULL,0),(2,29,'El Haz Rune Mace',0,1,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,90,0,85,NULL,NULL,NULL,NULL,0,32,17,0,27,0,55,59,103,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,NULL,NULL,NULL,NULL,NULL,0),(2,30,'Frost Rune Mace',0,1,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,122,0,80,NULL,NULL,NULL,NULL,380,32,12,0,90,0,62,66,100,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,NULL,NULL,NULL,NULL,NULL,0),(2,31,'Light Load Rune Mace',0,1,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,148,0,95,NULL,NULL,NULL,NULL,400,35,14,0,110,0,72,74,108,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,3,0,0,NULL,NULL,NULL,NULL,NULL,0),(2,32,'Bloodangel Rune Mace',0,1,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,0,100,NULL,NULL,NULL,NULL,400,42,14,0,129,0,95,101,122,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,3,0,0,NULL,NULL,NULL,NULL,NULL,0),(2,33,'Darkangel Rune Mace',0,1,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,160,0,100,NULL,NULL,NULL,NULL,600,42,14,0,129,0,125,131,136,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,3,0,0,NULL,NULL,NULL,NULL,NULL,0),(2,34,'Divine Rune Mace of the Archangel',0,1,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,104,0,182,NULL,NULL,NULL,NULL,0,32,4,0,64,0,158,170,142,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,NULL,NULL,NULL,NULL,NULL,0),(2,35,'Blessed Divine Rune Mace of the Archangel',0,1,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,200,0,182,NULL,NULL,NULL,NULL,0,28,4,0,79,0,158,170,160,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,NULL,NULL,NULL,NULL,NULL,0),(2,36,'Soul Scepter',0,1,4,NULL,1,66,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,200,100,0,NULL,NULL,NULL,NULL,900,98,21,0,0,0,403,416,154,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,4,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(2,37,'Elemental Rune Mace (Bound)',0,1,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,52,0,50,NULL,NULL,NULL,NULL,0,50,50,0,0,0,22,23,47,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,NULL,NULL,NULL,NULL,NULL,0),(2,38,'Holyangel Rune Mace',0,1,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,180,0,100,NULL,NULL,NULL,NULL,800,42,14,0,129,0,135,141,152,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,3,0,0,NULL,NULL,NULL,NULL,NULL,0),(2,39,'Soul Rune Mace',0,1,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,200,0,100,NULL,NULL,NULL,NULL,900,39,13,0,120,0,145,151,174,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,4,0,0,NULL,NULL,NULL,NULL,NULL,0),(2,40,'Blue Eye Scepter',0,1,4,NULL,1,66,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,220,100,0,NULL,NULL,NULL,NULL,1000,398,94,0,0,0,490,504,169,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,4,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(2,41,'Blue Eye Rune Mace',0,1,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,220,0,100,NULL,NULL,NULL,NULL,1000,165,62,0,551,0,156,161,196,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,4,0,0,NULL,NULL,NULL,NULL,NULL,0),(2,42,'Silver Heart Scepter',0,1,4,NULL,1,66,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,240,100,0,NULL,NULL,NULL,NULL,1100,406,95,0,0,0,577,593,185,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,4,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(2,43,'Silver Heart Rune Mace',0,1,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,240,0,100,NULL,NULL,NULL,NULL,1100,168,65,0,554,0,171,178,219,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,4,0,0,NULL,NULL,NULL,NULL,NULL,0),(3,0,'Light Spear',0,2,4,NULL,1,22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,42,56,0,NULL,NULL,NULL,NULL,0,60,70,0,0,0,50,63,0,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(3,1,'Spear',0,2,4,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,23,42,0,NULL,NULL,NULL,NULL,0,70,50,0,0,0,30,41,0,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(3,2,'Dragon Lance',0,2,4,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15,34,0,NULL,NULL,NULL,NULL,0,70,50,0,0,0,21,33,0,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(3,3,'Giant Trident',0,2,4,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,29,44,0,NULL,NULL,NULL,NULL,0,90,30,0,0,0,35,43,0,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(3,4,'Serpent Spear',0,2,4,NULL,1,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,46,58,0,NULL,NULL,NULL,NULL,0,90,30,0,0,0,58,80,0,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(3,5,'Double Poleaxe',0,2,4,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13,38,0,NULL,NULL,NULL,NULL,0,70,50,0,0,0,19,31,0,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(3,6,'Halberd',0,2,4,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,19,40,0,NULL,NULL,NULL,NULL,0,70,50,0,0,0,25,35,0,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(3,7,'Berdysh',0,2,4,NULL,1,22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,37,54,0,NULL,NULL,NULL,NULL,0,80,50,0,0,0,42,54,0,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(3,8,'Great Scythe',0,2,4,NULL,1,22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,54,68,0,NULL,NULL,NULL,NULL,0,90,50,0,0,0,71,92,0,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(3,9,'Bill of Balrog',0,2,4,NULL,1,22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,63,74,0,NULL,NULL,NULL,NULL,0,80,50,0,0,0,76,102,0,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(3,10,'Dragon Spear',0,2,4,NULL,1,22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,92,85,0,NULL,NULL,NULL,NULL,0,170,60,0,0,0,112,140,0,35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(3,11,'Brova',0,2,4,NULL,1,22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,147,90,0,NULL,NULL,NULL,NULL,0,152,25,0,0,0,190,226,0,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(3,12,'Magmus Peer',0,2,4,NULL,1,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,149,85,0,NULL,NULL,NULL,NULL,400,49,162,0,0,0,135,236,0,35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(3,13,'Lapid Lance',0,1,4,NULL,1,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15,34,0,NULL,NULL,NULL,NULL,0,65,77,0,0,0,32,41,0,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(3,14,'Conmocion Lance',0,1,4,NULL,1,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,65,58,0,NULL,NULL,NULL,NULL,0,100,120,0,0,0,65,72,0,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(3,15,'Pluma Lance',0,1,4,NULL,1,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,85,74,0,NULL,NULL,NULL,NULL,0,110,130,0,0,0,86,93,0,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(3,16,'Vis Lance',0,1,4,NULL,1,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,87,75,0,NULL,NULL,NULL,NULL,0,230,0,0,0,0,94,101,0,35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(3,17,'Prickle Lance',0,1,4,NULL,1,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,22,31,0,NULL,NULL,NULL,NULL,0,110,0,0,0,0,27,35,0,35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(3,18,'Alacran Lance',0,1,4,NULL,1,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,67,61,0,NULL,NULL,NULL,NULL,0,180,0,0,0,0,73,80,0,35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(3,19,'Bloodangel Lance',0,1,4,NULL,1,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,0,NULL,NULL,NULL,NULL,400,70,50,0,0,0,134,145,0,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,3,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(3,21,'Pluma Lance (Bound)',0,1,4,NULL,0,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,85,74,0,NULL,NULL,NULL,NULL,0,50,50,0,0,0,95,107,0,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(3,22,'Rectuus Lance',0,1,4,NULL,1,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,139,95,0,NULL,NULL,NULL,NULL,380,70,51,0,0,0,78,89,0,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(3,23,'Russell Light Lance',0,1,4,NULL,1,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,149,95,0,NULL,NULL,NULL,NULL,400,74,55,0,0,0,99,110,0,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,3,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(3,24,'Darkangel Lance',0,1,4,NULL,1,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,160,100,0,NULL,NULL,NULL,NULL,600,70,50,0,0,0,150,160,0,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,3,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(3,25,'Holyangel Lance',0,1,4,NULL,1,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,180,100,0,NULL,NULL,NULL,NULL,800,65,46,0,0,0,202,212,0,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,3,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(3,26,'Divine Lance of the Archangel',0,1,4,NULL,1,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,100,100,0,NULL,NULL,NULL,NULL,0,65,46,0,0,0,115,126,0,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(3,27,'Blessed Divine Lance of the Archangel',0,1,4,NULL,0,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,200,100,0,NULL,NULL,NULL,NULL,0,62,43,0,0,0,173,184,0,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(3,28,'Soul Lance',0,1,4,NULL,1,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,200,100,0,NULL,NULL,NULL,NULL,900,61,43,0,0,0,254,264,0,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,4,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(3,29,'Blue Eye Lance',0,1,4,NULL,1,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,220,100,0,NULL,NULL,NULL,NULL,1000,252,180,0,0,0,306,318,0,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,4,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(3,30,'Silver Heart Lance',0,1,4,NULL,1,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,240,100,0,NULL,NULL,NULL,NULL,1100,256,183,0,0,0,358,373,0,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,4,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(4,0,'Short Bow',0,1,3,NULL,1,24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,20,0,NULL,NULL,NULL,NULL,0,20,80,0,0,0,3,5,0,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(4,1,'Bow',0,1,3,NULL,1,24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8,24,0,NULL,NULL,NULL,NULL,0,30,90,0,0,0,9,13,0,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(4,2,'Elven Bow',0,1,3,NULL,1,24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16,28,0,NULL,NULL,NULL,NULL,0,30,90,0,0,0,17,24,0,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(4,3,'Battle Bow',0,1,3,NULL,1,24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,26,36,0,NULL,NULL,NULL,NULL,0,30,90,0,0,0,28,37,0,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(4,4,'Tiger Bow',0,1,4,NULL,1,24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,40,43,0,NULL,NULL,NULL,NULL,0,30,100,0,0,0,42,52,0,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(4,5,'Silver Bow',0,1,4,NULL,1,24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,56,48,0,NULL,NULL,NULL,NULL,0,30,100,0,0,0,59,71,0,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(4,6,'Chaos Nature Bow',0,1,4,NULL,0,24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,75,68,0,NULL,NULL,NULL,NULL,0,40,150,0,0,0,88,106,0,35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(4,7,'Bolt',1,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(4,8,'Crossbow',0,1,2,NULL,1,24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,22,0,NULL,NULL,NULL,NULL,0,20,90,0,0,0,5,8,0,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(4,9,'Golden Crossbow',0,1,2,NULL,1,24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12,26,0,NULL,NULL,NULL,NULL,0,30,90,0,0,0,13,19,0,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(4,10,'Arquebus',0,1,2,NULL,1,24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,20,31,0,NULL,NULL,NULL,NULL,0,30,90,0,0,0,22,30,0,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(4,11,'Light Crossbow',0,1,3,NULL,1,24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,32,40,0,NULL,NULL,NULL,NULL,0,30,90,0,0,0,35,44,0,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(4,12,'Serpent Crossbow',0,1,3,NULL,1,24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,48,45,0,NULL,NULL,NULL,NULL,0,30,100,0,0,0,50,61,0,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(4,13,'Bluewing Crossbow',0,1,3,NULL,1,24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,68,56,0,NULL,NULL,NULL,NULL,0,40,110,0,0,0,68,82,0,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(4,14,'Aquagold Crossbow',0,1,3,NULL,1,24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,72,60,0,NULL,NULL,NULL,NULL,0,50,130,0,0,0,78,92,0,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(4,15,'Arrow',1,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(4,16,'Saint Crossbow',0,1,4,NULL,1,24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,84,72,0,NULL,NULL,NULL,NULL,0,50,160,0,0,0,102,127,0,35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(4,17,'Celestial Bow',0,1,4,NULL,1,24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,92,76,0,NULL,NULL,NULL,NULL,0,54,198,0,0,0,127,155,0,35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,2,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(4,18,'Divine Crossbow of the Archangel',0,1,3,NULL,1,24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,100,200,0,NULL,NULL,NULL,NULL,0,40,110,0,0,0,224,246,0,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(4,19,'Great Reign Crossbow',0,1,3,NULL,1,24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,100,80,0,NULL,NULL,NULL,NULL,0,61,285,0,0,0,150,172,0,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,2,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(4,20,'Arrow Viper Bow',0,1,4,NULL,1,24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,135,86,0,NULL,NULL,NULL,NULL,0,52,245,0,0,0,166,190,0,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,2,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(4,21,'Sylph Wind Bow',0,1,4,NULL,1,24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,147,93,0,NULL,NULL,NULL,NULL,380,46,210,0,0,0,177,200,0,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,2,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(4,22,'Albatross Bow',0,1,4,NULL,1,24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,110,70,0,NULL,NULL,NULL,NULL,0,60,265,0,0,0,155,177,0,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,2,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(4,23,'Dark Stinger',0,1,4,NULL,1,24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,134,80,0,NULL,NULL,NULL,NULL,380,32,209,0,0,0,162,184,0,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,2,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(4,24,'Aileen Bowr',0,1,4,NULL,1,24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,147,88,0,NULL,NULL,NULL,NULL,0,49,226,0,0,0,170,194,0,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,2,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(4,25,'Angelic Bow',0,1,4,NULL,1,24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,149,70,0,NULL,NULL,NULL,NULL,400,30,193,0,0,0,179,202,0,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,3,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(4,26,'Devil Crossbow',0,1,3,NULL,1,24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,149,90,0,NULL,NULL,NULL,NULL,400,30,193,0,0,0,167,218,0,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,3,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(4,28,'Bloodangel Bow',0,1,4,NULL,1,24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,0,NULL,NULL,NULL,NULL,400,31,198,0,0,0,290,310,0,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,3,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(4,29,'Celestial Bow (Bound)',0,1,4,NULL,0,24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,92,76,0,NULL,NULL,NULL,NULL,0,50,50,0,0,0,149,170,0,35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,2,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(4,30,'Blessed Divine Crossbow of the Archangel',0,1,3,NULL,0,24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,200,200,0,NULL,NULL,NULL,NULL,0,40,70,0,0,0,345,380,0,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(4,31,'Darkangel Bow',0,1,4,NULL,1,24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,160,100,0,NULL,NULL,NULL,NULL,600,31,198,0,0,0,320,340,0,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,3,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(4,32,'War Quiver',1,1,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,52,90,0,NULL,NULL,NULL,NULL,0,27,98,0,0,0,111,137,0,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(4,33,'Devilwood Quiver',1,1,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,149,95,0,NULL,NULL,NULL,NULL,400,29,186,0,0,0,181,207,0,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,3,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(4,34,'Bloodangel Quiver',1,1,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,0,NULL,NULL,NULL,NULL,400,30,196,0,0,0,239,266,0,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,3,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(4,35,'Darkangel Quiver',1,1,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,160,100,0,NULL,NULL,NULL,NULL,600,30,196,0,0,0,291,316,0,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,3,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(4,36,'Holyangel Bow',0,1,4,NULL,1,24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,180,100,0,NULL,NULL,NULL,NULL,800,29,183,0,0,0,375,392,0,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,3,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(4,37,'Holyangel Quiver',1,1,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,180,100,0,NULL,NULL,NULL,NULL,800,28,181,0,0,0,345,369,0,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,3,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(4,38,'Soul Bow',0,1,4,NULL,1,24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,200,100,0,NULL,NULL,NULL,NULL,900,27,170,0,0,0,501,518,0,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,4,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(4,39,'Soul Quiver',1,1,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,200,100,0,NULL,NULL,NULL,NULL,900,26,168,0,0,0,398,422,0,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,4,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(4,40,'Blue Eye Bow',0,1,4,NULL,1,24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,220,100,0,NULL,NULL,NULL,NULL,1000,117,682,0,0,0,628,646,0,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,4,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(4,41,'Blue Eye Quiver',1,1,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,220,100,0,NULL,NULL,NULL,NULL,1000,113,674,0,0,0,451,475,0,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,4,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(4,42,'Entropy Gun',0,1,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,33,0,70,NULL,NULL,NULL,NULL,0,1,0,0,0,0,75,86,40,35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,1,NULL,NULL,NULL,NULL,NULL,0),(4,43,'Frere Magic Gun',0,1,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,110,0,95,NULL,NULL,NULL,NULL,0,87,53,0,99,0,116,118,75,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,1,NULL,NULL,NULL,NULL,NULL,0),(4,44,'Weiwen Magic Gun',0,1,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,134,0,117,NULL,NULL,NULL,NULL,380,75,44,0,98,0,127,131,105,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,2,NULL,NULL,NULL,NULL,NULL,0),(4,45,'Cannon Magic Gun',0,1,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,149,0,128,NULL,NULL,NULL,NULL,400,69,42,0,96,0,139,141,116,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,3,NULL,NULL,NULL,NULL,NULL,0),(4,46,'Divine Magic Gun of the Archangel',0,1,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,104,0,142,NULL,NULL,NULL,NULL,0,35,11,0,48,0,223,235,130,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,1,NULL,NULL,NULL,NULL,NULL,0),(4,48,'Blood Angel Magic Gun',0,1,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,0,137,NULL,NULL,NULL,NULL,400,61,51,0,115,0,160,166,124,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,3,NULL,NULL,NULL,NULL,NULL,0),(4,49,'Dark Angel Magic Gun',0,1,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,160,0,151,NULL,NULL,NULL,NULL,600,59,49,0,110,0,190,196,140,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,3,NULL,NULL,NULL,NULL,NULL,0),(4,50,'Holy Angel Magic Gun',0,1,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,180,0,169,NULL,NULL,NULL,NULL,800,54,45,0,101,0,205,218,160,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,3,NULL,NULL,NULL,NULL,NULL,0),(4,51,'Soul Magic Gun',0,1,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,200,0,173,NULL,NULL,NULL,NULL,900,50,42,0,94,0,227,240,180,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,4,NULL,NULL,NULL,NULL,NULL,0),(4,55,'Frere Magic Gun (Bound)',0,1,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,110,0,100,NULL,NULL,NULL,NULL,0,30,20,0,100,0,116,118,75,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,1,NULL,NULL,NULL,NULL,NULL,0),(4,56,'Silver Heart Bow',0,1,4,NULL,1,24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,240,100,0,NULL,NULL,NULL,NULL,1100,118,688,0,0,0,755,778,0,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,4,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(4,57,'Silver Heart Quiver',1,1,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,240,100,0,NULL,NULL,NULL,NULL,1100,114,680,0,0,0,504,527,0,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,4,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(5,0,'Skull Staff',0,1,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6,0,20,NULL,NULL,NULL,NULL,0,40,0,0,0,0,3,4,6,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,1,0,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(5,1,'Angelic Staff',0,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,18,0,38,NULL,NULL,NULL,NULL,0,50,0,0,0,0,10,12,20,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(5,2,'Serpent Staff',0,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,30,0,50,NULL,NULL,NULL,NULL,0,50,0,0,0,0,17,18,34,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(5,3,'Thunder Staff',0,2,4,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,42,0,60,NULL,NULL,NULL,NULL,0,40,10,0,0,0,23,25,46,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(5,4,'Gorgon Staff',0,2,4,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,52,0,65,NULL,NULL,NULL,NULL,0,50,0,0,0,0,29,32,58,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(5,5,'Legendary Staff',0,1,4,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,59,0,66,NULL,NULL,NULL,NULL,0,50,0,0,0,0,29,31,59,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(5,6,'Staff of Resurrection',0,1,4,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,70,0,70,NULL,NULL,NULL,NULL,0,60,10,0,0,0,35,39,70,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(5,7,'Chaos Lighting Staff',0,2,4,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,75,0,70,NULL,NULL,NULL,NULL,0,60,10,0,0,0,47,48,94,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(5,8,'Staff of Destruction',0,2,4,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,90,0,85,NULL,NULL,NULL,NULL,0,60,10,0,0,0,50,54,101,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(5,9,'Dragon Soul Staff',0,1,4,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,100,0,91,NULL,NULL,NULL,NULL,0,52,16,0,0,0,46,48,92,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(5,10,'Divine Staff of the Archangel',0,1,4,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,104,0,182,NULL,NULL,NULL,NULL,0,36,4,0,0,0,153,165,156,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(5,11,'Staff of Kundun',0,1,4,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,140,0,95,NULL,NULL,NULL,NULL,0,45,16,0,0,0,55,61,110,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(5,12,'Grand Viper Staff',0,1,4,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,147,0,100,NULL,NULL,NULL,NULL,380,39,13,0,0,0,66,74,130,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(5,13,'Platina Staff',0,1,4,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,110,0,78,NULL,NULL,NULL,NULL,0,50,16,0,0,0,51,53,120,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(5,14,'Mystery Stick',0,1,4,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,28,0,50,NULL,NULL,NULL,NULL,0,34,14,0,0,0,17,18,34,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(5,15,'Violent Wind Stick',0,1,4,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,42,0,60,NULL,NULL,NULL,NULL,0,33,17,0,0,0,23,25,46,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(5,16,'Red Wing Stick',0,1,4,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,59,0,65,NULL,NULL,NULL,NULL,0,36,14,0,0,0,29,31,59,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(5,17,'Ancient Stick',0,1,4,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,78,0,81,NULL,NULL,NULL,NULL,0,50,19,0,0,0,38,40,76,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(5,18,'Demonic Stick',0,1,4,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,100,0,91,NULL,NULL,NULL,NULL,0,54,15,0,0,0,46,48,92,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,2,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(5,19,'Storm Blitz Stick',0,1,4,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,110,0,95,NULL,NULL,NULL,NULL,380,64,15,0,0,0,51,53,110,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,2,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(5,20,'Eternal Wing Stick',0,1,4,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,147,0,100,NULL,NULL,NULL,NULL,380,57,13,0,0,0,66,74,106,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,2,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(5,21,'Book of Samut',1,1,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,52,0,60,NULL,NULL,NULL,NULL,0,0,20,0,135,0,0,0,46,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(5,22,'Book of Neil',1,1,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,59,0,65,NULL,NULL,NULL,NULL,0,0,25,0,168,0,0,0,59,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(5,23,'Book of Lagle',1,1,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,65,0,50,NULL,NULL,NULL,NULL,0,0,30,0,201,0,0,0,72,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(5,30,'Deadly Staff',0,1,4,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,138,0,91,NULL,NULL,NULL,NULL,380,47,18,0,0,0,57,59,126,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(5,31,'Inberial Staff',0,1,4,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,137,0,182,NULL,NULL,NULL,NULL,380,48,14,0,0,0,57,61,124,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(5,32,'Summon Spirit Stick',0,1,4,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,149,0,130,NULL,NULL,NULL,NULL,400,56,14,0,0,0,59,61,176,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,3,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(5,33,'Chrome Staff',0,1,4,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,147,0,78,NULL,NULL,NULL,NULL,0,50,12,0,0,0,55,57,124,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(5,34,'Raven Stick',0,1,4,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,147,0,98,NULL,NULL,NULL,NULL,0,50,14,0,0,0,70,78,130,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,2,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(5,35,'Miracle Staff',0,1,4,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,149,0,80,NULL,NULL,NULL,NULL,400,46,13,0,0,0,67,69,130,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,0,0,3,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(5,36,'Divine Stick of the Archangel',0,1,4,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,104,0,182,NULL,NULL,NULL,NULL,0,55,13,0,0,0,153,165,146,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(5,37,'Spite Staff',0,2,4,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,149,0,110,NULL,NULL,NULL,NULL,400,48,11,0,0,0,69,71,136,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,0,0,3,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(5,41,'Bloodangel Staff',0,1,4,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,0,100,NULL,NULL,NULL,NULL,400,47,14,0,0,0,90,96,155,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,0,0,3,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(5,43,'Bloodangel Stick',0,1,4,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,0,150,NULL,NULL,NULL,NULL,400,42,15,0,0,0,81,87,150,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,3,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(5,45,'Legendary Staff (Bound)',0,1,4,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,59,0,66,NULL,NULL,NULL,NULL,0,50,50,0,0,0,29,31,74,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(5,46,'Red Winged Stick (Bound)',0,1,4,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,59,0,65,NULL,NULL,NULL,NULL,0,50,50,0,0,0,29,31,74,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(5,47,'Book of Lagle (Bound)',1,1,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,65,0,50,NULL,NULL,NULL,NULL,0,50,50,0,0,0,0,0,75,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(5,48,'Staff of Destruction (Bound)',0,2,4,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,90,0,85,NULL,NULL,NULL,NULL,0,50,50,0,0,0,50,54,121,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(5,49,'Blessed Divine Staff of the Archangel',0,1,4,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,200,0,182,NULL,NULL,NULL,NULL,0,30,4,0,0,0,153,165,189,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(5,50,'Blessed Divine Stick of the Archangel',0,1,4,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,200,0,182,NULL,NULL,NULL,NULL,0,30,13,0,0,0,153,165,184,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(5,51,'Darkangel Staff',0,1,4,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,160,0,100,NULL,NULL,NULL,NULL,600,47,14,0,0,0,120,126,173,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,0,0,3,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(5,52,'Darkangel Stick',0,1,4,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,160,0,100,NULL,NULL,NULL,NULL,600,42,15,0,0,0,111,117,169,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,3,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(5,53,'Holyangel Staff',0,1,4,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,180,0,100,NULL,NULL,NULL,NULL,800,44,13,0,0,0,135,148,196,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,0,0,3,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(5,54,'Holyangel Stick',0,1,4,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,180,0,100,NULL,NULL,NULL,NULL,800,39,14,0,0,0,127,135,196,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,3,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(5,55,'Soul Staff',0,1,4,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,200,0,100,NULL,NULL,NULL,NULL,900,41,12,0,0,0,157,170,219,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,0,0,4,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(5,56,'Soul Stick',0,1,4,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,200,0,100,NULL,NULL,NULL,NULL,900,37,13,0,0,0,145,153,223,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,4,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(5,57,'Book of Bloodangel',1,1,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,0,150,NULL,NULL,NULL,NULL,400,0,30,0,130,0,0,0,149,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,3,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(5,58,'Book of Darkangel',1,1,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,160,0,150,NULL,NULL,NULL,NULL,600,0,29,0,125,0,0,0,170,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,3,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(5,59,'Book of Holyangel',1,1,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,180,0,150,NULL,NULL,NULL,NULL,800,0,27,0,115,0,0,0,192,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,3,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(5,60,'Book of Soul',1,1,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,200,0,150,NULL,NULL,NULL,NULL,900,0,25,0,107,0,0,0,215,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,4,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(5,61,'Blue Eye Staff',0,1,4,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,220,0,100,NULL,NULL,NULL,NULL,1000,173,59,0,0,0,179,193,240,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,0,0,4,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(5,62,'Blue Eye Stick',0,1,4,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,220,0,100,NULL,NULL,NULL,NULL,1000,157,62,0,0,0,164,172,244,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,4,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(5,63,'Book of Blue Eye',1,1,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,220,0,150,NULL,NULL,NULL,NULL,1000,0,110,0,372,0,0,0,238,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,4,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(5,64,'Silver Heart Staff',0,1,4,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,240,0,100,NULL,NULL,NULL,NULL,1100,176,61,0,0,0,199,212,264,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,0,0,4,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(5,65,'Silver Heart Stick',0,1,4,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,240,0,100,NULL,NULL,NULL,NULL,1100,159,64,0,0,0,183,194,265,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,4,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(5,66,'Silver Heart Book',1,1,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,240,0,150,NULL,NULL,NULL,NULL,1100,0,118,0,380,0,0,0,258,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,4,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(6,0,'Small Shield',1,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,22,NULL,NULL,NULL,NULL,NULL,0,70,0,0,0,0,NULL,NULL,NULL,NULL,NULL,1,NULL,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,0,0,1,1,0,0,NULL,NULL,NULL,NULL,NULL,0),(6,1,'Horn Shield',1,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9,28,NULL,NULL,NULL,NULL,NULL,0,100,0,0,0,0,NULL,NULL,NULL,NULL,NULL,3,NULL,9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,1,1,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(6,2,'Kite Shield',1,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12,32,NULL,NULL,NULL,NULL,NULL,0,110,0,0,0,0,NULL,NULL,NULL,NULL,NULL,4,NULL,12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,1,1,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(6,3,'Elven Shield',1,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,21,36,NULL,NULL,NULL,NULL,NULL,0,30,100,0,0,0,NULL,NULL,NULL,NULL,NULL,8,NULL,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,1,0,0,NULL,NULL,NULL,NULL,NULL,0),(6,4,'Buckler',1,2,2,NULL,1,18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6,24,NULL,NULL,NULL,NULL,NULL,0,80,0,0,0,0,NULL,NULL,NULL,NULL,NULL,2,NULL,6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,0,0,1,1,0,0,NULL,NULL,NULL,NULL,NULL,0),(6,5,'Dragon Slayer Shield',1,2,2,NULL,1,18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,35,44,NULL,NULL,NULL,NULL,NULL,0,100,40,0,0,0,NULL,NULL,NULL,NULL,NULL,10,NULL,36,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,1,1,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(6,6,'Skull Shield',1,2,2,NULL,1,18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15,34,NULL,NULL,NULL,NULL,NULL,0,110,0,0,0,0,NULL,NULL,NULL,NULL,NULL,5,NULL,15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,0,0,0,1,0,0,NULL,NULL,NULL,NULL,NULL,0),(6,7,'Spiked Shield',1,2,2,NULL,1,18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,30,40,NULL,NULL,NULL,NULL,NULL,0,130,0,0,0,0,NULL,NULL,NULL,NULL,NULL,9,NULL,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,1,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(6,8,'Tower Shield',1,2,2,NULL,1,18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,40,46,NULL,NULL,NULL,NULL,NULL,0,130,0,0,0,0,NULL,NULL,NULL,NULL,NULL,11,NULL,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,1,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(6,9,'Plate Shield',1,2,2,NULL,1,18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,25,38,NULL,NULL,NULL,NULL,NULL,0,120,0,0,0,0,NULL,NULL,NULL,NULL,NULL,8,NULL,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,1,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(6,10,'Large Round Shield',1,2,2,NULL,1,18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,18,35,NULL,NULL,NULL,NULL,NULL,0,120,0,0,0,0,NULL,NULL,NULL,NULL,NULL,6,NULL,18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,1,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(6,11,'Serpent Shield',1,2,2,NULL,1,18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,45,48,NULL,NULL,NULL,NULL,NULL,0,130,0,0,0,0,NULL,NULL,NULL,NULL,NULL,12,NULL,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,1,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(6,12,'Bronze Shield',1,2,2,NULL,1,18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,54,52,NULL,NULL,NULL,NULL,NULL,0,140,0,0,0,0,NULL,NULL,NULL,NULL,NULL,13,NULL,54,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(6,13,'Dragon Shield',1,2,2,NULL,1,18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,60,60,NULL,NULL,NULL,NULL,NULL,0,120,40,0,0,0,NULL,NULL,NULL,NULL,NULL,14,NULL,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(6,14,'Legendary Shield',1,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,48,50,NULL,NULL,NULL,NULL,NULL,0,90,25,0,0,0,NULL,NULL,NULL,NULL,NULL,7,NULL,48,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(6,15,'Grand Soul Shield',1,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,74,55,NULL,NULL,NULL,NULL,NULL,0,70,23,0,0,0,NULL,NULL,NULL,NULL,NULL,12,NULL,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(6,16,'Elemental Shield',1,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,66,51,NULL,NULL,NULL,NULL,NULL,0,30,60,0,30,0,NULL,NULL,NULL,NULL,NULL,11,NULL,28,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,2,0,0,0,0,0,2,0,0,NULL,NULL,NULL,NULL,NULL,0),(6,17,'Crimson Glory',1,2,2,NULL,1,18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,104,51,NULL,NULL,NULL,NULL,NULL,380,95,48,0,0,0,NULL,NULL,NULL,NULL,NULL,19,NULL,90,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(6,18,'Salamander Shield',1,2,2,NULL,1,18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,102,51,NULL,NULL,NULL,NULL,NULL,380,80,61,0,0,0,NULL,NULL,NULL,NULL,NULL,20,NULL,96,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(6,19,'Frost Barrier',1,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,99,51,NULL,NULL,NULL,NULL,NULL,380,26,53,0,26,0,NULL,NULL,NULL,NULL,NULL,14,NULL,58,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,2,0,0,0,0,0,2,0,0,NULL,NULL,NULL,NULL,NULL,0),(6,20,'Guardian Shield',1,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,106,51,NULL,NULL,NULL,NULL,NULL,380,54,18,0,0,0,NULL,NULL,NULL,NULL,NULL,12,NULL,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(6,21,'Cross Shield',1,2,2,NULL,1,18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,70,65,NULL,NULL,NULL,NULL,NULL,0,140,55,0,0,0,NULL,NULL,NULL,NULL,NULL,16,NULL,75,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(6,22,'Lazy Wind Shield',1,2,2,NULL,1,18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,129,90,NULL,NULL,NULL,NULL,NULL,400,67,56,0,0,0,NULL,NULL,NULL,NULL,NULL,36,NULL,108,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(6,23,'Light Lord Shield',1,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,124,90,NULL,NULL,NULL,NULL,NULL,400,16,35,0,35,0,NULL,NULL,NULL,NULL,NULL,27,NULL,81,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,3,0,0,0,0,0,3,0,0,NULL,NULL,NULL,NULL,NULL,0),(6,24,'Dark Devil Shield',1,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,122,90,NULL,NULL,NULL,NULL,NULL,400,52,15,0,0,0,NULL,NULL,NULL,NULL,NULL,25,NULL,75,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(6,25,'Magic Knight Shield',1,2,2,NULL,1,18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,128,90,NULL,NULL,NULL,NULL,NULL,400,53,18,0,0,0,NULL,NULL,NULL,NULL,NULL,29,NULL,87,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,3,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(6,26,'Ambition Shield',1,2,2,NULL,1,18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,131,90,NULL,NULL,NULL,NULL,NULL,400,104,24,0,0,0,NULL,NULL,NULL,NULL,NULL,27,NULL,81,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,3,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(6,29,'Lapid Shield',1,2,2,NULL,1,18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13,31,NULL,NULL,NULL,NULL,NULL,0,70,80,0,0,0,NULL,NULL,NULL,NULL,NULL,11,NULL,33,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(6,30,'Pluma Shield',1,2,2,NULL,1,18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,70,52,NULL,NULL,NULL,NULL,NULL,0,110,125,0,0,0,NULL,NULL,NULL,NULL,NULL,25,NULL,75,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(6,31,'Alacran Shield',1,2,2,NULL,1,18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,40,31,NULL,NULL,NULL,NULL,NULL,0,120,100,0,0,0,NULL,NULL,NULL,NULL,NULL,5,NULL,83,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(6,32,'Vis Shield',1,2,2,NULL,1,18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,75,52,NULL,NULL,NULL,NULL,NULL,0,169,112,0,0,0,NULL,NULL,NULL,NULL,NULL,30,NULL,80,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(6,37,'Legendary Shield (Bound)',1,2,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,48,70,NULL,NULL,NULL,NULL,NULL,0,50,50,0,0,0,NULL,NULL,NULL,NULL,NULL,19,NULL,48,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(6,38,'Cross Shield (Bound)',1,2,2,NULL,0,18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,70,75,NULL,NULL,NULL,NULL,NULL,0,50,50,0,0,0,NULL,NULL,NULL,NULL,NULL,29,NULL,75,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(6,39,'Pluma Shield (Bound)',1,2,2,NULL,0,18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,70,70,NULL,NULL,NULL,NULL,NULL,0,50,50,0,0,0,NULL,NULL,NULL,NULL,NULL,31,NULL,75,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(6,40,'Grace Shield',1,2,2,NULL,1,18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,70,85,NULL,NULL,NULL,NULL,NULL,380,48,39,0,0,0,NULL,NULL,NULL,NULL,NULL,14,NULL,75,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(6,41,'Constant Shield',1,2,2,NULL,1,18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,131,90,NULL,NULL,NULL,NULL,NULL,400,61,43,0,0,0,NULL,NULL,NULL,NULL,NULL,23,NULL,78,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,3,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(6,42,'El Haz Shield',1,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,70,65,NULL,NULL,NULL,NULL,NULL,0,30,10,0,0,0,NULL,NULL,NULL,NULL,NULL,15,NULL,62,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,NULL,NULL,NULL,NULL,NULL,0),(6,43,'Elemental Shield (Bound)',1,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,48,70,NULL,NULL,NULL,NULL,NULL,0,50,50,0,0,0,NULL,NULL,NULL,NULL,NULL,20,NULL,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,NULL,NULL,NULL,NULL,NULL,0),(6,44,'Blood Angel Shield',1,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,400,35,25,0,120,0,NULL,NULL,NULL,NULL,NULL,45,NULL,90,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(6,45,'Dark Angel Shield',1,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,160,100,NULL,NULL,NULL,NULL,NULL,600,35,24,0,117,0,NULL,NULL,NULL,NULL,NULL,54,NULL,93,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(6,46,'Holy Angel Shield',1,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,180,100,NULL,NULL,NULL,NULL,NULL,800,33,22,0,111,0,NULL,NULL,NULL,NULL,NULL,63,NULL,96,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(6,47,'Soul Shield',1,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,200,100,NULL,NULL,NULL,NULL,NULL,900,32,21,0,105,0,NULL,NULL,NULL,NULL,NULL,72,NULL,99,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(6,48,'Blue Eye Shield',1,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,220,100,NULL,NULL,NULL,NULL,NULL,1000,137,100,0,470,0,NULL,NULL,NULL,NULL,NULL,81,NULL,102,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(6,49,'Silver Heart Shield',1,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,240,100,NULL,NULL,NULL,NULL,NULL,1100,140,108,0,475,0,NULL,NULL,NULL,NULL,NULL,92,NULL,105,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,0,'Bronze Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16,34,NULL,NULL,NULL,NULL,NULL,0,80,20,0,0,0,NULL,NULL,NULL,NULL,NULL,9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,1,'Dragon Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,57,68,NULL,NULL,NULL,NULL,NULL,0,120,30,0,0,0,NULL,NULL,NULL,NULL,NULL,24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,2,'Pad Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,28,NULL,NULL,NULL,NULL,NULL,0,20,0,0,0,0,NULL,NULL,NULL,NULL,NULL,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,3,'Legendary Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,42,NULL,NULL,NULL,NULL,NULL,0,30,0,0,0,0,NULL,NULL,NULL,NULL,NULL,18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,4,'Bone Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,18,30,NULL,NULL,NULL,NULL,NULL,0,30,0,0,0,0,NULL,NULL,NULL,NULL,NULL,9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,5,'Leather Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6,30,NULL,NULL,NULL,NULL,NULL,0,80,0,0,0,0,NULL,NULL,NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,1,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,6,'Scale Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,26,40,NULL,NULL,NULL,NULL,NULL,0,110,0,0,0,0,NULL,NULL,NULL,NULL,NULL,12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,1,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,7,'Sphinx Mask',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,32,36,NULL,NULL,NULL,NULL,NULL,0,30,0,0,0,0,NULL,NULL,NULL,NULL,NULL,13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,8,'Brass Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,36,44,NULL,NULL,NULL,NULL,NULL,0,100,30,0,0,0,NULL,NULL,NULL,NULL,NULL,17,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,9,'Plate Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,46,50,NULL,NULL,NULL,NULL,NULL,0,130,0,0,0,0,NULL,NULL,NULL,NULL,NULL,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,10,'Vine Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6,22,NULL,NULL,NULL,NULL,NULL,0,30,60,0,0,0,NULL,NULL,NULL,NULL,NULL,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,11,'Silk Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16,26,NULL,NULL,NULL,NULL,NULL,0,30,70,0,0,0,NULL,NULL,NULL,NULL,NULL,8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,12,'Wind Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,28,32,NULL,NULL,NULL,NULL,NULL,0,30,80,0,0,0,NULL,NULL,NULL,NULL,NULL,12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,13,'Spirit Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,40,38,NULL,NULL,NULL,NULL,NULL,0,40,80,0,0,0,NULL,NULL,NULL,NULL,NULL,16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,14,'Guardian Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,53,45,NULL,NULL,NULL,NULL,NULL,0,40,80,0,0,0,NULL,NULL,NULL,NULL,NULL,23,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,16,'Black Dragon Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,82,74,NULL,NULL,NULL,NULL,NULL,0,170,60,0,0,0,NULL,NULL,NULL,NULL,NULL,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,17,'Dark Phoenix Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,92,80,NULL,NULL,NULL,NULL,NULL,0,205,62,0,0,0,NULL,NULL,NULL,NULL,NULL,43,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,18,'Grand Soul Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,81,67,NULL,NULL,NULL,NULL,NULL,0,59,20,0,0,0,NULL,NULL,NULL,NULL,NULL,27,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,19,'Holy Spirit Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,85,74,NULL,NULL,NULL,NULL,NULL,0,50,110,0,0,0,NULL,NULL,NULL,NULL,NULL,37,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,2,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,21,'Great Dragon Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,104,86,NULL,NULL,NULL,NULL,NULL,0,200,58,0,0,0,NULL,NULL,NULL,NULL,NULL,53,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,22,'Dark Soul Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,110,75,NULL,NULL,NULL,NULL,NULL,0,55,18,0,0,0,NULL,NULL,NULL,NULL,NULL,36,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,24,'Red Spirit Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,93,80,NULL,NULL,NULL,NULL,NULL,0,52,115,0,0,0,NULL,NULL,NULL,NULL,NULL,46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,2,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,25,'Light Plate Mask',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,46,42,NULL,NULL,NULL,NULL,NULL,0,70,20,0,0,0,NULL,NULL,NULL,NULL,NULL,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,26,'Adamantine Mask',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,66,56,NULL,NULL,NULL,NULL,NULL,0,77,21,0,0,0,NULL,NULL,NULL,NULL,NULL,24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,27,'Dark Steel Mask',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,86,70,NULL,NULL,NULL,NULL,NULL,0,84,22,0,0,0,NULL,NULL,NULL,NULL,NULL,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,28,'Dark Master Mask',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,106,78,NULL,NULL,NULL,NULL,NULL,0,80,21,0,0,0,NULL,NULL,NULL,NULL,NULL,34,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,29,'Dragon Knight Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,130,90,NULL,NULL,NULL,NULL,NULL,380,170,60,0,0,0,NULL,NULL,NULL,NULL,NULL,66,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,30,'Venom Mist Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,126,86,NULL,NULL,NULL,NULL,NULL,380,44,15,0,0,0,NULL,NULL,NULL,NULL,NULL,48,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,31,'Sylphid Ray Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,126,86,NULL,NULL,NULL,NULL,NULL,380,38,80,0,0,0,NULL,NULL,NULL,NULL,NULL,57,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,2,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,33,'Sunlight Mask',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,130,82,NULL,NULL,NULL,NULL,NULL,380,62,16,0,0,0,NULL,NULL,NULL,NULL,NULL,46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,34,'Ashcrow Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,67,72,NULL,NULL,NULL,NULL,NULL,0,160,50,0,0,0,NULL,NULL,NULL,NULL,NULL,27,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,35,'Eclipse Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,67,54,NULL,NULL,NULL,NULL,NULL,0,53,12,0,0,0,NULL,NULL,NULL,NULL,NULL,22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,36,'Iris Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,67,59,NULL,NULL,NULL,NULL,NULL,0,50,70,0,0,0,NULL,NULL,NULL,NULL,NULL,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,38,'Glorious Mask',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,97,74,NULL,NULL,NULL,NULL,NULL,0,80,21,0,0,0,NULL,NULL,NULL,NULL,NULL,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,39,'Violent Wind Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,28,36,NULL,NULL,NULL,NULL,NULL,0,31,0,0,0,0,NULL,NULL,NULL,NULL,NULL,13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,40,'Red Wing Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,42,NULL,NULL,NULL,NULL,NULL,0,26,4,0,0,0,NULL,NULL,NULL,NULL,NULL,18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,41,'Ancient Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,68,54,NULL,NULL,NULL,NULL,NULL,0,52,16,0,0,0,NULL,NULL,NULL,NULL,NULL,24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,42,'Demonic Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,81,67,NULL,NULL,NULL,NULL,NULL,0,60,20,0,0,0,NULL,NULL,NULL,NULL,NULL,32,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,2,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,43,'Storm Blitz Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,110,75,NULL,NULL,NULL,NULL,NULL,380,56,20,0,0,0,NULL,NULL,NULL,NULL,NULL,43,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,2,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,44,'Eternal Wing Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,116,86,NULL,NULL,NULL,NULL,NULL,380,62,20,0,170,0,NULL,NULL,NULL,NULL,NULL,35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,2,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,45,'Titan Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,111,86,NULL,NULL,NULL,NULL,NULL,380,222,32,0,0,0,NULL,NULL,NULL,NULL,NULL,63,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,46,'Brave Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,107,86,NULL,NULL,NULL,NULL,NULL,380,74,162,0,0,0,NULL,NULL,NULL,NULL,NULL,51,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,49,'Seraphim Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,111,86,NULL,NULL,NULL,NULL,NULL,380,55,197,0,0,0,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,50,'Divine Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,104,86,NULL,NULL,NULL,NULL,NULL,380,32,29,0,138,0,NULL,NULL,NULL,NULL,NULL,44,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,51,'Royal Mask',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,111,86,NULL,NULL,NULL,NULL,NULL,380,105,38,0,0,0,NULL,NULL,NULL,NULL,NULL,44,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,52,'Hades Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,109,86,NULL,NULL,NULL,NULL,NULL,380,60,15,0,181,0,NULL,NULL,NULL,NULL,NULL,41,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,53,'Succubus Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,143,90,NULL,NULL,NULL,NULL,NULL,400,56,19,0,157,0,NULL,NULL,NULL,NULL,NULL,44,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,3,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,54,'Lazy Wind Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,143,90,NULL,NULL,NULL,NULL,NULL,400,67,151,0,0,0,NULL,NULL,NULL,NULL,NULL,68,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,55,'Dark Devil Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,143,90,NULL,NULL,NULL,NULL,NULL,400,45,13,0,171,0,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,56,'Sticky Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,143,90,NULL,NULL,NULL,NULL,NULL,400,48,180,0,0,0,NULL,NULL,NULL,NULL,NULL,59,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,3,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,58,'Ambition Mask',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,143,90,NULL,NULL,NULL,NULL,NULL,400,112,22,0,0,0,NULL,NULL,NULL,NULL,NULL,53,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,3,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,59,'Sacred Fire Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,54,52,NULL,NULL,NULL,NULL,NULL,0,85,0,75,0,0,NULL,NULL,NULL,NULL,NULL,24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,60,'Storm Jahad Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,70,68,NULL,NULL,NULL,NULL,NULL,0,100,0,90,0,0,NULL,NULL,NULL,NULL,NULL,32,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,61,'Piercing Groove Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,90,82,NULL,NULL,NULL,NULL,NULL,0,115,0,100,0,0,NULL,NULL,NULL,NULL,NULL,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,62,'Scale Helm',2,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,26,255,NULL,NULL,NULL,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,1,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,63,'Silk Helm',2,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16,255,NULL,NULL,NULL,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,64,'Sphinx Helm',2,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,32,255,NULL,NULL,NULL,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,17,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,65,'Violent Wind Helm',2,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,28,255,NULL,NULL,NULL,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,17,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,66,'Adamantine Helm',2,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,66,255,NULL,NULL,NULL,NULL,NULL,150,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,67,'Dragon Helm',2,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,57,255,NULL,NULL,NULL,NULL,NULL,150,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,68,'Guardian Helm',2,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,53,255,NULL,NULL,NULL,NULL,NULL,150,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,28,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,69,'Legendary Helm',2,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,255,NULL,NULL,NULL,NULL,NULL,150,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,23,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,70,'Red Wing Helm',2,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,255,NULL,NULL,NULL,NULL,NULL,150,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,72,'Storm Jahad Helm',2,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,70,255,NULL,NULL,NULL,NULL,NULL,150,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,32,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,73,'Phoenix Soul Helmet',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,128,88,NULL,NULL,NULL,NULL,NULL,380,97,0,85,0,0,NULL,NULL,NULL,NULL,NULL,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,74,'Stormwing Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,143,90,NULL,NULL,NULL,NULL,NULL,400,200,33,0,0,0,NULL,NULL,NULL,NULL,NULL,72,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,75,'Light Lord Helmet',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,143,90,NULL,NULL,NULL,NULL,NULL,400,14,31,0,127,0,NULL,NULL,NULL,NULL,NULL,53,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,3,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,91,'Robust Helmet',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,20,28,NULL,NULL,NULL,NULL,NULL,0,88,60,0,0,0,NULL,NULL,NULL,NULL,NULL,13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,92,'Gru hill Helmet',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,44,NULL,NULL,NULL,NULL,NULL,0,180,140,0,0,0,NULL,NULL,NULL,NULL,NULL,17,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,93,'Princie Helmet',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,70,64,NULL,NULL,NULL,NULL,NULL,0,155,130,0,0,0,NULL,NULL,NULL,NULL,NULL,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,94,'Hirat Helmet',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,91,74,NULL,NULL,NULL,NULL,NULL,0,342,96,0,0,0,NULL,NULL,NULL,NULL,NULL,27,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,95,'Sate Helmet',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,91,74,NULL,NULL,NULL,NULL,NULL,0,96,342,0,0,0,NULL,NULL,NULL,NULL,NULL,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,96,'Robust Helmet',2,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,20,255,NULL,NULL,NULL,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,97,'Princie Helmet',2,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,70,255,NULL,NULL,NULL,NULL,NULL,150,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,23,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,98,'Bloodangel Knight Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,400,145,42,0,0,0,NULL,NULL,NULL,NULL,NULL,63,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,99,'Bloodangel Wizard Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,400,42,14,0,0,0,NULL,NULL,NULL,NULL,NULL,46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,100,'Bloodangel Elf Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,400,34,75,0,0,0,NULL,NULL,NULL,NULL,NULL,56,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,3,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,101,'Bloodangel Summoner Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,400,34,11,0,0,0,NULL,NULL,NULL,NULL,NULL,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,3,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,103,'Bloodangel Lord Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,400,59,15,0,0,0,NULL,NULL,NULL,NULL,NULL,44,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,3,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,104,'Bloodangel Fighter Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,400,71,0,0,0,0,NULL,NULL,NULL,NULL,NULL,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,3,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,105,'Bloodangel Lancer Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,400,61,61,0,0,0,NULL,NULL,NULL,NULL,NULL,37,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,3,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,106,'Soul Knight Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,900,145,42,0,0,0,NULL,NULL,NULL,NULL,NULL,183,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,107,'Soul Wizard Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,900,42,14,0,0,0,NULL,NULL,NULL,NULL,NULL,164,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,108,'Soul Elf Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,900,34,75,0,0,0,NULL,NULL,NULL,NULL,NULL,178,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,4,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,109,'Soul Summoner Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,900,34,11,0,0,0,NULL,NULL,NULL,NULL,NULL,166,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,4,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,111,'Soul Lord Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,900,59,15,0,0,0,NULL,NULL,NULL,NULL,NULL,162,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,4,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,112,'Soul Fighter Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,900,71,0,0,0,0,NULL,NULL,NULL,NULL,NULL,160,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,4,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,113,'Soul Lancer Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,900,61,61,0,0,0,NULL,NULL,NULL,NULL,NULL,156,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,4,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,114,'Soul Elf Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,900,12,27,0,149,0,NULL,NULL,NULL,NULL,NULL,103,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,4,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,116,'Rune Padded Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,28,NULL,NULL,NULL,NULL,NULL,0,20,0,0,0,0,NULL,NULL,NULL,NULL,NULL,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,117,'Rune Sphinx Mask',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,31,36,NULL,NULL,NULL,NULL,NULL,0,30,0,0,0,0,NULL,NULL,NULL,NULL,NULL,13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,118,'Legendary Rune Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,49,42,NULL,NULL,NULL,NULL,NULL,0,30,5,0,0,0,NULL,NULL,NULL,NULL,NULL,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,119,'Kenaz Bandana',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,80,67,NULL,NULL,NULL,NULL,NULL,0,36,14,0,24,0,NULL,NULL,NULL,NULL,NULL,37,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,120,'Divine Rune Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,108,86,NULL,NULL,NULL,NULL,NULL,380,40,13,0,116,0,NULL,NULL,NULL,NULL,NULL,53,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,121,'Light Load Rune Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,142,90,NULL,NULL,NULL,NULL,NULL,400,39,12,0,117,0,NULL,NULL,NULL,NULL,NULL,65,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,3,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,122,'Bloodangel Rune Mage Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,400,36,13,0,121,0,NULL,NULL,NULL,NULL,NULL,68,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,3,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,123,'Darkangel Rune Mage Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,600,36,13,0,121,0,NULL,NULL,NULL,NULL,NULL,81,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,3,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,124,'Rune Sphinx Mask',2,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,32,255,NULL,NULL,NULL,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,17,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,125,'Legendary Rune Helm',2,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,255,NULL,NULL,NULL,NULL,NULL,150,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,23,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,126,'Legendary Rune Helm (Bound)',2,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,100,NULL,NULL,NULL,NULL,NULL,0,50,50,0,0,0,NULL,NULL,NULL,NULL,NULL,33,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,127,'Holyangel Rune Mage Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,800,36,13,0,121,0,NULL,NULL,NULL,NULL,NULL,125,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,3,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,128,'Soul Rune Mage Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,900,36,13,0,121,0,NULL,NULL,NULL,NULL,NULL,169,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,4,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,129,'Blue Eye Rune Mage Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1000,36,13,0,121,0,NULL,NULL,NULL,NULL,NULL,214,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,4,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,130,'Dragon Helm (Bound)',2,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,100,NULL,NULL,NULL,NULL,NULL,0,50,50,0,0,0,NULL,NULL,NULL,NULL,NULL,39,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,131,'Legendary Helm (Bound)',2,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,100,NULL,NULL,NULL,NULL,NULL,0,50,50,0,0,0,NULL,NULL,NULL,NULL,NULL,33,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,132,'Guardian Helm (Bound)',2,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,100,NULL,NULL,NULL,NULL,NULL,0,50,50,0,0,0,NULL,NULL,NULL,NULL,NULL,38,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,134,'Adamantine Mask (Bound)',2,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,100,NULL,NULL,NULL,NULL,NULL,0,50,50,0,0,0,NULL,NULL,NULL,NULL,NULL,39,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,135,'Red Winged Helm (Bound)',2,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,100,NULL,NULL,NULL,NULL,NULL,0,50,50,0,0,0,NULL,NULL,NULL,NULL,NULL,33,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,136,'Storm Zahard Helm (Bound)',2,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,100,NULL,NULL,NULL,NULL,NULL,0,50,50,0,0,0,NULL,NULL,NULL,NULL,NULL,39,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,137,'Princie Helmet (Bound)',2,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,100,NULL,NULL,NULL,NULL,NULL,0,50,50,0,0,0,NULL,NULL,NULL,NULL,NULL,36,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,138,'Darkangel Knight Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,600,145,42,0,0,0,NULL,NULL,NULL,NULL,NULL,88,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,139,'Darkangel Wizard Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,600,42,14,0,0,0,NULL,NULL,NULL,NULL,NULL,71,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,140,'Darkangel Elf Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,600,34,75,0,0,0,NULL,NULL,NULL,NULL,NULL,81,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,3,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,141,'Darkangel Summoner Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,600,34,11,0,0,0,NULL,NULL,NULL,NULL,NULL,67,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,3,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,143,'Darkangel Lord Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,600,59,15,0,0,0,NULL,NULL,NULL,NULL,NULL,69,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,3,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,144,'Darkangel Fighter Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,600,71,0,0,0,0,NULL,NULL,NULL,NULL,NULL,67,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,3,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,145,'Darkangel Lancer Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,600,61,61,0,0,0,NULL,NULL,NULL,NULL,NULL,62,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,3,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,146,'Tigris Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,111,86,NULL,NULL,NULL,NULL,NULL,380,66,18,0,0,0,NULL,NULL,NULL,NULL,NULL,41,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,147,'Crimson Skull Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,143,90,NULL,NULL,NULL,NULL,NULL,400,76,23,0,0,0,NULL,NULL,NULL,NULL,NULL,52,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,3,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,148,'Grace Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,111,86,NULL,NULL,NULL,NULL,NULL,380,64,46,0,0,0,NULL,NULL,NULL,NULL,NULL,37,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,149,'Constant Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,143,90,NULL,NULL,NULL,NULL,NULL,400,70,51,0,0,0,NULL,NULL,NULL,NULL,NULL,48,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,3,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,150,'Holyangel Knight Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,800,145,42,0,0,0,NULL,NULL,NULL,NULL,NULL,138,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,151,'Holyangel Wizard Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,800,42,14,0,0,0,NULL,NULL,NULL,NULL,NULL,121,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,152,'Holyangel Elf Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,800,34,75,0,0,0,NULL,NULL,NULL,NULL,NULL,131,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,3,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,153,'Holyangel Summoner Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,800,34,11,0,0,0,NULL,NULL,NULL,NULL,NULL,117,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,3,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,155,'Holyangel Lord Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,800,59,15,0,0,0,NULL,NULL,NULL,NULL,NULL,119,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,3,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,156,'Holyangel Fighter Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,800,71,0,0,0,0,NULL,NULL,NULL,NULL,NULL,117,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,3,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,157,'Holyangel Lancer Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,800,61,61,0,0,0,NULL,NULL,NULL,NULL,NULL,112,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,3,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,158,'Bloodangel Elf Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,400,12,27,0,149,0,NULL,NULL,NULL,NULL,NULL,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,3,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,159,'Darkangel Elf Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,600,12,27,0,149,0,NULL,NULL,NULL,NULL,NULL,43,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,3,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,160,'Holyangel Elf Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,800,12,27,0,149,0,NULL,NULL,NULL,NULL,NULL,62,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,3,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,164,'Blue Eye Knight Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1000,145,42,0,0,0,NULL,NULL,NULL,NULL,NULL,228,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,165,'Blue Eye Wizard Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1000,42,14,0,0,0,NULL,NULL,NULL,NULL,NULL,209,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,166,'Blue Eye Elf Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1000,34,75,0,0,0,NULL,NULL,NULL,NULL,NULL,223,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,4,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,167,'Blue Eye Summoner Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1000,34,11,0,0,0,NULL,NULL,NULL,NULL,NULL,211,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,4,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,169,'Blue Eye Lord Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1000,59,15,0,0,0,NULL,NULL,NULL,NULL,NULL,207,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,4,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,170,'Blue Eye Fighter Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1000,71,0,0,0,0,NULL,NULL,NULL,NULL,NULL,205,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,4,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,171,'Blue Eye Lancer Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1000,61,61,0,0,0,NULL,NULL,NULL,NULL,NULL,201,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,4,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,172,'Blue Eye Elf Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1000,12,27,0,149,0,NULL,NULL,NULL,NULL,NULL,148,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,4,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,174,'Slayer Red Wing Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,30,NULL,NULL,NULL,NULL,NULL,0,0,80,0,0,0,NULL,NULL,NULL,NULL,NULL,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,NULL,NULL,0),(7,175,'Slayer Ancient Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,25,40,NULL,NULL,NULL,NULL,NULL,0,0,110,0,0,0,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,NULL,NULL,0),(7,176,'Slayer Demonic Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,58,60,NULL,NULL,NULL,NULL,NULL,0,30,120,0,0,0,NULL,NULL,NULL,NULL,NULL,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,NULL,NULL,0),(7,177,'Night Wing Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,100,70,NULL,NULL,NULL,NULL,NULL,0,30,125,0,0,0,NULL,NULL,NULL,NULL,NULL,58,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,NULL,NULL,0),(7,178,'Fidelity Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,110,86,NULL,NULL,NULL,NULL,NULL,380,32,130,0,0,0,NULL,NULL,NULL,NULL,NULL,65,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,2,0,NULL,NULL,NULL,NULL,NULL,0),(7,179,'Trace Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,140,90,NULL,NULL,NULL,NULL,NULL,400,33,135,0,0,0,NULL,NULL,NULL,NULL,NULL,74,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,NULL,NULL,NULL,NULL,NULL,0),(7,180,'Bloodangel Slayer Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,400,42,145,0,0,0,NULL,NULL,NULL,NULL,NULL,82,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,NULL,NULL,NULL,NULL,NULL,0),(7,181,'Darkangel Slayer Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,600,42,145,0,0,0,NULL,NULL,NULL,NULL,NULL,92,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,NULL,NULL,NULL,NULL,NULL,0),(7,182,'Holyangel Slayer Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,800,42,145,0,0,0,NULL,NULL,NULL,NULL,NULL,142,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,NULL,NULL,NULL,NULL,NULL,0),(7,183,'Soul Slayer Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,900,42,145,0,0,0,NULL,NULL,NULL,NULL,NULL,187,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,4,0,NULL,NULL,NULL,NULL,NULL,0),(7,184,'Blue Eye Slayer Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1000,42,145,0,0,0,NULL,NULL,NULL,NULL,NULL,232,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,4,0,NULL,NULL,NULL,NULL,NULL,0),(7,185,'Silver Heart Slayer Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1100,42,145,0,0,0,NULL,NULL,NULL,NULL,NULL,277,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,4,0,NULL,NULL,NULL,NULL,NULL,0),(7,186,'Slayer Ancient Helm',2,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,32,255,NULL,NULL,NULL,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,NULL,NULL,0),(7,187,'Slayer Demonic Helm',2,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,255,NULL,NULL,NULL,NULL,NULL,150,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,NULL,NULL,0),(7,188,'Slayer Demonic Helm(Bound)',2,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,100,NULL,NULL,NULL,NULL,NULL,0,50,50,0,0,0,NULL,NULL,NULL,NULL,NULL,37,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,NULL,NULL,0),(7,189,'Silver Heart Knight Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1100,145,42,0,0,0,NULL,NULL,NULL,NULL,NULL,273,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,190,'Silver Heart Wizard Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1100,42,14,0,0,0,NULL,NULL,NULL,NULL,NULL,254,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,191,'Silver Heart Elf Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1100,34,75,0,0,0,NULL,NULL,NULL,NULL,NULL,268,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,4,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,192,'Silver Heart Summoner Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1100,34,11,0,0,0,NULL,NULL,NULL,NULL,NULL,256,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,4,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,194,'Silver Heart Lord Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1100,59,15,0,0,0,NULL,NULL,NULL,NULL,NULL,252,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,4,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,195,'Silver Heart Fighter Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1100,71,0,0,0,0,NULL,NULL,NULL,NULL,NULL,250,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,4,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,196,'Silver Heart Lancer Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1100,61,61,0,0,0,NULL,NULL,NULL,NULL,NULL,246,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,4,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,197,'Silver Heart Elf Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1100,12,27,0,149,0,NULL,NULL,NULL,NULL,NULL,193,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,4,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,199,'Silver Heart Rune Wizard Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1100,36,13,0,121,0,NULL,NULL,NULL,NULL,NULL,259,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,4,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,200,'Blood Angel Knight Helm (Conviction)',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,400,0,20,0,105,0,NULL,NULL,NULL,NULL,NULL,81,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,201,'Dark Angel Knight Helm (Conviction)',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,600,0,20,0,105,0,NULL,NULL,NULL,NULL,NULL,106,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,202,'Holy Angel Knight Helm (Conviction)',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,800,0,20,0,105,0,NULL,NULL,NULL,NULL,NULL,156,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,203,'Soul Knight Helm (Conviction)',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,900,0,20,0,105,0,NULL,NULL,NULL,NULL,NULL,201,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,204,'Blue Eye Knight Helmet (Conviction)',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1000,0,20,0,105,0,NULL,NULL,NULL,NULL,NULL,246,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,205,'Silver Heart Knight Helm (Conviction)',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1100,0,20,0,105,0,NULL,NULL,NULL,NULL,NULL,291,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,206,'Leather Gunner Helmet',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,30,NULL,NULL,NULL,NULL,NULL,0,42,16,0,0,0,NULL,NULL,NULL,NULL,NULL,9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,1,NULL,NULL,NULL,NULL,NULL,0),(7,207,'Scale Gunner Helmet',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,25,40,NULL,NULL,NULL,NULL,NULL,0,35,18,0,44,0,NULL,NULL,NULL,NULL,NULL,17,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,1,NULL,NULL,NULL,NULL,NULL,0),(7,208,'Light Plate Gunner Helmet',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,40,42,NULL,NULL,NULL,NULL,NULL,0,63,36,0,74,0,NULL,NULL,NULL,NULL,NULL,34,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,1,NULL,NULL,NULL,NULL,NULL,0),(7,209,'Frere Helmet',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,100,68,NULL,NULL,NULL,NULL,NULL,0,64,38,0,74,0,NULL,NULL,NULL,NULL,NULL,54,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,1,NULL,NULL,NULL,NULL,NULL,0),(7,210,'Titan Gunner Helmet',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,110,86,NULL,NULL,NULL,NULL,NULL,380,57,45,0,93,0,NULL,NULL,NULL,NULL,NULL,79,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,2,NULL,NULL,NULL,NULL,NULL,0),(7,211,'Lazy Wind Gunner Helmet',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,140,90,NULL,NULL,NULL,NULL,NULL,400,49,39,0,83,0,NULL,NULL,NULL,NULL,NULL,87,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,3,NULL,NULL,NULL,NULL,NULL,0),(7,212,'Blood Angel Gun Crusher Helmet',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,400,58,48,0,112,0,NULL,NULL,NULL,NULL,NULL,75,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,3,NULL,NULL,NULL,NULL,NULL,0),(7,213,'Dark Angel Gun Crusher Helmet',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,600,58,48,0,112,0,NULL,NULL,NULL,NULL,NULL,85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,3,NULL,NULL,NULL,NULL,NULL,0),(7,214,'Holy Angel Gun Crusher Helmet',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,800,58,48,0,112,0,NULL,NULL,NULL,NULL,NULL,135,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,3,NULL,NULL,NULL,NULL,NULL,0),(7,215,'Soul Gun Crusher Helmet',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,900,58,48,0,112,0,NULL,NULL,NULL,NULL,NULL,180,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,4,NULL,NULL,NULL,NULL,NULL,0),(7,218,'Scale Gunner Helmet',2,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,28,255,NULL,NULL,NULL,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,28,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,1,NULL,NULL,NULL,NULL,NULL,0),(7,219,'Frere Helmet',2,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,59,255,NULL,NULL,NULL,NULL,NULL,150,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,38,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,1,NULL,NULL,NULL,NULL,NULL,0),(7,220,'Frere Helmet (Bound)',2,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,100,NULL,NULL,NULL,NULL,NULL,0,50,50,0,0,0,NULL,NULL,NULL,NULL,NULL,54,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,1,NULL,NULL,NULL,NULL,NULL,0),(7,221,'Manticore Knight Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1200,145,42,0,0,0,NULL,NULL,NULL,NULL,NULL,318,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,222,'Manticore Wizard Helmet',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1200,42,14,0,0,0,NULL,NULL,NULL,NULL,NULL,299,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,223,'Manticore Elf Helmet',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1200,34,75,0,0,0,NULL,NULL,NULL,NULL,NULL,313,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,4,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,224,'Manticore Summoner Helmet',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1200,34,11,0,0,0,NULL,NULL,NULL,NULL,NULL,301,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,4,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,226,'Manticore Lord Helmet',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1200,59,15,0,0,0,NULL,NULL,NULL,NULL,NULL,297,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,4,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,227,'Manticore Fighter Helmet',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1200,71,0,0,0,0,NULL,NULL,NULL,NULL,NULL,295,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,4,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,228,'Manticore Lancer Helmet',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1200,61,61,0,0,0,NULL,NULL,NULL,NULL,NULL,291,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,4,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,229,'Manticore Elf Helmet',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1200,12,27,0,149,0,NULL,NULL,NULL,NULL,NULL,238,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,4,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,231,'Manticore Rune Wizard Helm',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1200,36,13,0,121,0,NULL,NULL,NULL,NULL,NULL,304,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,4,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,232,'Manticore Slayer Helmet',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1200,42,145,0,0,0,NULL,NULL,NULL,NULL,NULL,322,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,4,0,NULL,NULL,NULL,NULL,NULL,0),(7,233,'Manticore Knight Helm (Conviction)',2,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1200,0,20,0,105,0,NULL,NULL,NULL,NULL,NULL,336,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,0,'Bronze Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,18,34,NULL,NULL,NULL,NULL,NULL,0,80,20,0,0,0,NULL,NULL,NULL,NULL,NULL,14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,1,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,1,'Dragon Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,59,68,NULL,NULL,NULL,NULL,NULL,0,120,30,0,0,0,NULL,NULL,NULL,NULL,NULL,37,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,2,'Pad Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,28,NULL,NULL,NULL,NULL,NULL,0,30,0,0,0,0,NULL,NULL,NULL,NULL,NULL,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,3,'Legendary Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,56,42,NULL,NULL,NULL,NULL,NULL,0,40,0,0,0,0,NULL,NULL,NULL,NULL,NULL,22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,4,'Bone Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,22,30,NULL,NULL,NULL,NULL,NULL,0,40,0,0,0,0,NULL,NULL,NULL,NULL,NULL,13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,5,'Leather Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,30,NULL,NULL,NULL,NULL,NULL,0,80,0,0,0,0,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,1,1,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,6,'Scale Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,28,40,NULL,NULL,NULL,NULL,NULL,0,110,0,0,0,0,NULL,NULL,NULL,NULL,NULL,18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,1,1,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,7,'Sphinx Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,38,36,NULL,NULL,NULL,NULL,NULL,0,40,0,0,0,0,NULL,NULL,NULL,NULL,NULL,17,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,8,'Brass Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,38,44,NULL,NULL,NULL,NULL,NULL,0,100,30,0,0,0,NULL,NULL,NULL,NULL,NULL,22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,1,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,9,'Plate Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,48,50,NULL,NULL,NULL,NULL,NULL,0,130,0,0,0,0,NULL,NULL,NULL,NULL,NULL,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,1,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,10,'Vine Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,22,NULL,NULL,NULL,NULL,NULL,0,30,60,0,0,0,NULL,NULL,NULL,NULL,NULL,8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,11,'Silk Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,20,26,NULL,NULL,NULL,NULL,NULL,0,30,70,0,0,0,NULL,NULL,NULL,NULL,NULL,12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,12,'Wind Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,32,32,NULL,NULL,NULL,NULL,NULL,0,30,80,0,0,0,NULL,NULL,NULL,NULL,NULL,16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,13,'Spirit Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,44,38,NULL,NULL,NULL,NULL,NULL,0,40,80,0,0,0,NULL,NULL,NULL,NULL,NULL,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,14,'Guardian Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,57,45,NULL,NULL,NULL,NULL,NULL,0,40,80,0,0,0,NULL,NULL,NULL,NULL,NULL,29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,15,'Storm Crow Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,80,80,NULL,NULL,NULL,NULL,NULL,0,150,70,0,0,0,NULL,NULL,NULL,NULL,NULL,44,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,16,'Black Dragon Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,90,74,NULL,NULL,NULL,NULL,NULL,0,170,60,0,0,0,NULL,NULL,NULL,NULL,NULL,48,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,17,'Dark Phoenix Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,100,80,NULL,NULL,NULL,NULL,NULL,0,214,65,0,0,0,NULL,NULL,NULL,NULL,NULL,63,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,18,'Grand Soul Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,91,67,NULL,NULL,NULL,NULL,NULL,0,59,20,0,0,0,NULL,NULL,NULL,NULL,NULL,33,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,19,'Holy Spirit Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,92,74,NULL,NULL,NULL,NULL,NULL,0,50,110,0,0,0,NULL,NULL,NULL,NULL,NULL,44,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,2,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,20,'Thunder Hawk Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,107,82,NULL,NULL,NULL,NULL,NULL,0,170,70,0,0,0,NULL,NULL,NULL,NULL,NULL,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,21,'Great Dragon Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,126,86,NULL,NULL,NULL,NULL,NULL,0,200,58,0,0,0,NULL,NULL,NULL,NULL,NULL,75,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,22,'Dark Soul Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,122,75,NULL,NULL,NULL,NULL,NULL,0,55,18,0,0,0,NULL,NULL,NULL,NULL,NULL,43,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,23,'Hurricane Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,128,90,NULL,NULL,NULL,NULL,NULL,0,162,66,0,0,0,NULL,NULL,NULL,NULL,NULL,73,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,24,'Red Sprit Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,109,80,NULL,NULL,NULL,NULL,NULL,0,52,115,0,0,0,NULL,NULL,NULL,NULL,NULL,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,2,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,25,'Light Plate Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,62,42,NULL,NULL,NULL,NULL,NULL,0,70,20,0,0,0,NULL,NULL,NULL,NULL,NULL,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,26,'Adamantine Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,78,56,NULL,NULL,NULL,NULL,NULL,0,77,21,0,0,0,NULL,NULL,NULL,NULL,NULL,36,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,27,'Dark Steel Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,96,70,NULL,NULL,NULL,NULL,NULL,0,84,22,0,0,0,NULL,NULL,NULL,NULL,NULL,43,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,28,'Dark Master Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,117,78,NULL,NULL,NULL,NULL,NULL,0,80,21,0,0,0,NULL,NULL,NULL,NULL,NULL,51,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,29,'Dragon Knight Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,140,90,NULL,NULL,NULL,NULL,NULL,380,170,60,0,0,0,NULL,NULL,NULL,NULL,NULL,88,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,30,'Venom Mist Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,146,86,NULL,NULL,NULL,NULL,NULL,380,44,15,0,0,0,NULL,NULL,NULL,NULL,NULL,57,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,31,'Sylphid Ray Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,146,86,NULL,NULL,NULL,NULL,NULL,380,38,80,0,0,0,NULL,NULL,NULL,NULL,NULL,68,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,2,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,32,'Volcano Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,147,95,NULL,NULL,NULL,NULL,NULL,380,145,60,0,0,0,NULL,NULL,NULL,NULL,NULL,86,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,33,'Sunlight Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,147,82,NULL,NULL,NULL,NULL,NULL,380,62,16,0,0,0,NULL,NULL,NULL,NULL,NULL,64,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,34,'Ashcrow Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,75,72,NULL,NULL,NULL,NULL,NULL,0,160,50,0,0,0,NULL,NULL,NULL,NULL,NULL,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,35,'Eclipse Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,75,54,NULL,NULL,NULL,NULL,NULL,0,53,12,0,0,0,NULL,NULL,NULL,NULL,NULL,27,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,36,'Iris Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,75,59,NULL,NULL,NULL,NULL,NULL,0,50,70,0,0,0,NULL,NULL,NULL,NULL,NULL,36,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,37,'Valiant Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,105,81,NULL,NULL,NULL,NULL,NULL,0,155,50,0,0,0,NULL,NULL,NULL,NULL,NULL,52,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,38,'Glorious Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,105,74,NULL,NULL,NULL,NULL,NULL,0,80,21,0,0,0,NULL,NULL,NULL,NULL,NULL,47,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,39,'Violent Wind Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,34,36,NULL,NULL,NULL,NULL,NULL,0,39,0,0,0,0,NULL,NULL,NULL,NULL,NULL,22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,40,'Red Wing Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,56,42,NULL,NULL,NULL,NULL,NULL,0,35,8,0,0,0,NULL,NULL,NULL,NULL,NULL,28,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,41,'Ancient Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,75,54,NULL,NULL,NULL,NULL,NULL,0,52,16,0,0,0,NULL,NULL,NULL,NULL,NULL,35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,42,'Demonic Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,91,67,NULL,NULL,NULL,NULL,NULL,0,60,20,0,0,0,NULL,NULL,NULL,NULL,NULL,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,2,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,43,'Storm Blitz Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,122,75,NULL,NULL,NULL,NULL,NULL,380,57,19,0,0,0,NULL,NULL,NULL,NULL,NULL,56,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,2,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,44,'Eternal Wing Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,131,86,NULL,NULL,NULL,NULL,NULL,380,62,20,0,170,0,NULL,NULL,NULL,NULL,NULL,49,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,2,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,45,'Titan Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,132,86,NULL,NULL,NULL,NULL,NULL,380,222,32,0,0,0,NULL,NULL,NULL,NULL,NULL,81,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,46,'Brave Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,128,86,NULL,NULL,NULL,NULL,NULL,380,74,162,0,0,0,NULL,NULL,NULL,NULL,NULL,62,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,47,'Phantom Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,131,86,NULL,NULL,NULL,NULL,NULL,380,212,57,0,0,0,NULL,NULL,NULL,NULL,NULL,80,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,48,'Destroy Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,125,86,NULL,NULL,NULL,NULL,NULL,380,62,19,0,165,0,NULL,NULL,NULL,NULL,NULL,66,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,49,'Seraphim Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,129,86,NULL,NULL,NULL,NULL,NULL,380,55,197,0,0,0,NULL,NULL,NULL,NULL,NULL,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,50,'Divine Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,122,86,NULL,NULL,NULL,NULL,NULL,380,32,29,0,138,0,NULL,NULL,NULL,NULL,NULL,52,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,51,'Royal Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,132,86,NULL,NULL,NULL,NULL,NULL,380,105,38,0,0,0,NULL,NULL,NULL,NULL,NULL,58,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,52,'Hades Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,129,86,NULL,NULL,NULL,NULL,NULL,380,60,15,0,181,0,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,53,'Succubus Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,148,90,NULL,NULL,NULL,NULL,NULL,400,56,19,0,157,0,NULL,NULL,NULL,NULL,NULL,58,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,3,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,54,'Lazy Wind Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,148,90,NULL,NULL,NULL,NULL,NULL,400,67,151,0,0,0,NULL,NULL,NULL,NULL,NULL,79,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,55,'Dark Devil Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,148,90,NULL,NULL,NULL,NULL,NULL,400,45,13,0,171,0,NULL,NULL,NULL,NULL,NULL,59,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,56,'Sticky Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,148,90,NULL,NULL,NULL,NULL,NULL,400,48,180,0,0,0,NULL,NULL,NULL,NULL,NULL,69,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,3,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,57,'Hell Night Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,148,90,NULL,NULL,NULL,NULL,NULL,400,194,52,0,0,0,NULL,NULL,NULL,NULL,NULL,89,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,3,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,58,'Ambition Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,148,90,NULL,NULL,NULL,NULL,NULL,400,112,22,0,0,0,NULL,NULL,NULL,NULL,NULL,67,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,3,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,59,'Sacred Fire Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,66,52,NULL,NULL,NULL,NULL,NULL,0,85,0,75,0,0,NULL,NULL,NULL,NULL,NULL,43,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,60,'Storm Jahad Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,82,68,NULL,NULL,NULL,NULL,NULL,0,100,0,90,0,0,NULL,NULL,NULL,NULL,NULL,51,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,61,'Piercing Groove Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,101,82,NULL,NULL,NULL,NULL,NULL,0,115,0,100,0,0,NULL,NULL,NULL,NULL,NULL,59,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,62,'Scale Armor',3,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,28,255,NULL,NULL,NULL,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,1,1,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,63,'Silk Armor',3,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,20,255,NULL,NULL,NULL,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,64,'Sphinx Armor',3,2,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,38,255,NULL,NULL,NULL,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,19,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,65,'Violent Wind Armor',3,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,34,255,NULL,NULL,NULL,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,66,'Adamantine Armor',3,2,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,78,255,NULL,NULL,NULL,NULL,NULL,150,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,39,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,67,'Dragon Armor',3,2,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,59,255,NULL,NULL,NULL,NULL,NULL,150,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,68,'Guardian Armor',3,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,57,255,NULL,NULL,NULL,NULL,NULL,150,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,69,'Legendary Armor',3,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,56,255,NULL,NULL,NULL,NULL,NULL,150,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,70,'Red Wing Armor',3,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,56,255,NULL,NULL,NULL,NULL,NULL,150,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,31,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,71,'Atlans Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,80,255,NULL,NULL,NULL,NULL,NULL,150,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,47,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,72,'Storm Jahad Armor',3,2,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,82,255,NULL,NULL,NULL,NULL,NULL,150,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,43,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,73,'Phoenix Soul Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,143,88,NULL,NULL,NULL,NULL,NULL,380,97,0,85,0,0,NULL,NULL,NULL,NULL,NULL,78,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,74,'Stormwing Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,148,90,NULL,NULL,NULL,NULL,NULL,400,200,33,0,0,0,NULL,NULL,NULL,NULL,NULL,90,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,75,'Light Lord Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,148,90,NULL,NULL,NULL,NULL,NULL,400,14,31,0,127,0,NULL,NULL,NULL,NULL,NULL,61,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,3,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,76,'Magic Knight Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,148,90,NULL,NULL,NULL,NULL,NULL,400,48,17,0,142,0,NULL,NULL,NULL,NULL,NULL,75,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,3,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,91,'Robust Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,30,36,NULL,NULL,NULL,NULL,NULL,0,100,70,0,0,0,NULL,NULL,NULL,NULL,NULL,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,92,'Gru Hill Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,60,52,NULL,NULL,NULL,NULL,NULL,0,170,140,0,0,0,NULL,NULL,NULL,NULL,NULL,24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,93,'Princie Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,80,72,NULL,NULL,NULL,NULL,NULL,0,150,130,0,0,0,NULL,NULL,NULL,NULL,NULL,28,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,94,'Hirat Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,101,82,NULL,NULL,NULL,NULL,NULL,0,317,92,0,0,0,NULL,NULL,NULL,NULL,NULL,37,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,95,'Sate Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,101,82,NULL,NULL,NULL,NULL,NULL,0,92,317,0,0,0,NULL,NULL,NULL,NULL,NULL,35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,96,'Robust Armor',3,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,30,255,NULL,NULL,NULL,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,97,'Princie Armor',3,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,80,255,NULL,NULL,NULL,NULL,NULL,150,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,98,'Bloodangel Knight Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,400,174,51,0,0,0,NULL,NULL,NULL,NULL,NULL,85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,99,'Bloodangel Wizard Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,400,46,15,0,0,0,NULL,NULL,NULL,NULL,NULL,53,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,100,'Bloodangel Elf Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,400,39,87,0,0,0,NULL,NULL,NULL,NULL,NULL,65,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,3,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,101,'Bloodangel Summoner Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,400,38,13,0,0,0,NULL,NULL,NULL,NULL,NULL,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,3,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,102,'Bloodangel Magic Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,400,143,58,0,0,0,NULL,NULL,NULL,NULL,NULL,83,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,3,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,103,'Bloodangel Lord Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,400,65,17,0,0,0,NULL,NULL,NULL,NULL,NULL,61,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,3,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,104,'Bloodangel Fighter Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,400,81,0,0,0,0,NULL,NULL,NULL,NULL,NULL,66,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,3,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,105,'Bloodangel Lancer Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,400,65,65,0,0,0,NULL,NULL,NULL,NULL,NULL,47,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,3,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,106,'Soul Knight Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,900,174,51,0,0,0,NULL,NULL,NULL,NULL,NULL,204,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,107,'Soul Wizard Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,900,46,15,0,0,0,NULL,NULL,NULL,NULL,NULL,172,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,108,'Soul Elf Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,900,39,87,0,0,0,NULL,NULL,NULL,NULL,NULL,184,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,4,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,109,'Soul Summoner Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,900,38,13,0,0,0,NULL,NULL,NULL,NULL,NULL,177,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,4,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,110,'Soul Magic Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,900,143,58,0,0,0,NULL,NULL,NULL,NULL,NULL,203,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,4,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,111,'Soul Lord Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,900,65,17,0,0,0,NULL,NULL,NULL,NULL,NULL,181,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,4,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,112,'Soul Fighter Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,900,81,0,0,0,0,NULL,NULL,NULL,NULL,NULL,186,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,4,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,113,'Soul Lancer Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,900,65,65,0,0,0,NULL,NULL,NULL,NULL,NULL,167,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,4,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,114,'Soul Elf Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,900,14,28,0,154,0,NULL,NULL,NULL,NULL,NULL,110,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,4,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,115,'Soul Magic Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,900,35,32,0,157,0,NULL,NULL,NULL,NULL,NULL,200,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,4,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,116,'Rune Padded Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9,28,NULL,NULL,NULL,NULL,NULL,0,30,0,0,0,0,NULL,NULL,NULL,NULL,NULL,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,117,'Rune Sphinx Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,37,36,NULL,NULL,NULL,NULL,NULL,0,40,0,0,0,0,NULL,NULL,NULL,NULL,NULL,17,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,118,'Legendary Rune Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,55,42,NULL,NULL,NULL,NULL,NULL,0,40,5,0,0,0,NULL,NULL,NULL,NULL,NULL,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,119,'Kenaz Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,90,67,NULL,NULL,NULL,NULL,NULL,0,38,16,0,26,0,NULL,NULL,NULL,NULL,NULL,43,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,120,'Divine Rune Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,128,86,NULL,NULL,NULL,NULL,NULL,380,40,13,0,120,0,NULL,NULL,NULL,NULL,NULL,62,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,121,'Light Load Rune Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,147,90,NULL,NULL,NULL,NULL,NULL,400,39,12,0,121,0,NULL,NULL,NULL,NULL,NULL,74,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,3,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,122,'Bloodangel Rune Mage Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,400,40,14,0,125,0,NULL,NULL,NULL,NULL,NULL,75,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,3,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,123,'Darkangel Rune Mage Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,600,40,14,0,125,0,NULL,NULL,NULL,NULL,NULL,87,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,3,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,124,'Rune Sphinx Armor',3,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,38,255,NULL,NULL,NULL,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,19,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,125,'Legendary Rune Armor',3,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,56,255,NULL,NULL,NULL,NULL,NULL,150,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,126,'Legendary Rune Armor (Bound)',3,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,100,NULL,NULL,NULL,NULL,NULL,0,50,50,0,0,0,NULL,NULL,NULL,NULL,NULL,37,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,127,'Holyangel Rune Mage Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,800,40,14,0,125,0,NULL,NULL,NULL,NULL,NULL,131,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,3,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,128,'Soul Rune Mage Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,900,40,14,0,125,0,NULL,NULL,NULL,NULL,NULL,177,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,4,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,129,'Blue Eye Rune Mage Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1000,40,14,0,125,0,NULL,NULL,NULL,NULL,NULL,222,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,4,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,130,'Dragon Armor (Bound)',3,2,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,100,NULL,NULL,NULL,NULL,NULL,0,50,50,0,0,0,NULL,NULL,NULL,NULL,NULL,52,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,131,'Legendary Armor (Bound)',3,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,100,NULL,NULL,NULL,NULL,NULL,0,50,50,0,0,0,NULL,NULL,NULL,NULL,NULL,37,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,132,'Guardian Armor (Bound)',3,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,100,NULL,NULL,NULL,NULL,NULL,0,50,50,0,0,0,NULL,NULL,NULL,NULL,NULL,34,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,133,'Atlans Armor (Bound)',3,2,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,100,NULL,NULL,NULL,NULL,NULL,0,50,50,0,0,0,NULL,NULL,NULL,NULL,NULL,59,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,134,'Adamantine Armor (Bound)',3,2,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,100,NULL,NULL,NULL,NULL,NULL,0,50,50,0,0,0,NULL,NULL,NULL,NULL,NULL,51,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,135,'Red Winged Armor (Bound)',3,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,100,NULL,NULL,NULL,NULL,NULL,0,50,50,0,0,0,NULL,NULL,NULL,NULL,NULL,43,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,136,'Storm Zahard Armor (Bound)',3,2,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,100,NULL,NULL,NULL,NULL,NULL,0,50,50,0,0,0,NULL,NULL,NULL,NULL,NULL,58,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,137,'Princie Armor (Bound)',3,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,100,NULL,NULL,NULL,NULL,NULL,0,50,50,0,0,0,NULL,NULL,NULL,NULL,NULL,43,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,138,'Darkangel Knight Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,600,174,51,0,0,0,NULL,NULL,NULL,NULL,NULL,110,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,139,'Darkangel Wizard Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,600,46,15,0,0,0,NULL,NULL,NULL,NULL,NULL,78,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,140,'Darkangel Elf Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,600,39,87,0,0,0,NULL,NULL,NULL,NULL,NULL,90,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,3,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,141,'Darkangel Summoner Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,600,38,13,0,0,0,NULL,NULL,NULL,NULL,NULL,80,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,3,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,142,'Darkangel Magic Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,600,143,58,0,0,0,NULL,NULL,NULL,NULL,NULL,108,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,3,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,143,'Darkangel Lord Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,600,65,17,0,0,0,NULL,NULL,NULL,NULL,NULL,86,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,3,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,144,'Darkangel Fighter Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,600,81,0,0,0,0,NULL,NULL,NULL,NULL,NULL,91,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,3,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,145,'Darkangel Lancer Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,600,65,65,0,0,0,NULL,NULL,NULL,NULL,NULL,72,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,3,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,146,'Tigris Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,111,86,NULL,NULL,NULL,NULL,NULL,380,70,22,0,0,0,NULL,NULL,NULL,NULL,NULL,63,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,147,'Crimson Skull Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,143,90,NULL,NULL,NULL,NULL,NULL,400,79,25,0,0,0,NULL,NULL,NULL,NULL,NULL,71,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,3,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,148,'Grace Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,111,86,NULL,NULL,NULL,NULL,NULL,380,67,48,0,0,0,NULL,NULL,NULL,NULL,NULL,43,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,149,'Constant Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,143,90,NULL,NULL,NULL,NULL,NULL,400,72,53,0,0,0,NULL,NULL,NULL,NULL,NULL,52,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,3,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,150,'Holyangel Knight Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,800,174,51,0,0,0,NULL,NULL,NULL,NULL,NULL,160,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,151,'Holyangel Wizard Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,800,46,15,0,0,0,NULL,NULL,NULL,NULL,NULL,128,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,152,'Holyangel Elf Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,800,39,87,0,0,0,NULL,NULL,NULL,NULL,NULL,140,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,3,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,153,'Holyangel Summoner Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,800,38,13,0,0,0,NULL,NULL,NULL,NULL,NULL,130,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,3,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,154,'Holyangel Magic Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,800,143,58,0,0,0,NULL,NULL,NULL,NULL,NULL,158,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,3,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,155,'Holyangel Lord Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,800,65,17,0,0,0,NULL,NULL,NULL,NULL,NULL,136,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,3,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,156,'Holyangel Fighter Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,800,81,0,0,0,0,NULL,NULL,NULL,NULL,NULL,141,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,3,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,157,'Holyangel Lancer Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,800,65,65,0,0,0,NULL,NULL,NULL,NULL,NULL,122,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,3,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,158,'Bloodangel Elf Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,400,14,28,0,154,0,NULL,NULL,NULL,NULL,NULL,37,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,3,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,159,'Darkangel Elf Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,600,14,28,0,154,0,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,3,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,160,'Holyangel Elf Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,800,14,28,0,154,0,NULL,NULL,NULL,NULL,NULL,69,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,3,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,161,'Bloodangel Magic Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,400,35,32,0,157,0,NULL,NULL,NULL,NULL,NULL,80,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,3,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,162,'Darkangel Magic Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,600,35,32,0,157,0,NULL,NULL,NULL,NULL,NULL,105,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,3,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,163,'Holyangel Magic Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,800,35,32,0,157,0,NULL,NULL,NULL,NULL,NULL,155,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,3,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,164,'Blue Eye Knight Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1000,174,51,0,0,0,NULL,NULL,NULL,NULL,NULL,249,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,165,'Blue Eye Wizard Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1000,46,15,0,0,0,NULL,NULL,NULL,NULL,NULL,217,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,166,'Blue Eye Elf Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1000,39,87,0,0,0,NULL,NULL,NULL,NULL,NULL,229,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,4,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,167,'Blue Eye Summoner Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1000,38,13,0,0,0,NULL,NULL,NULL,NULL,NULL,222,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,4,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,168,'Blue Eye Magic Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1000,143,58,0,0,0,NULL,NULL,NULL,NULL,NULL,248,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,4,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,169,'Blue Eye Lord Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1000,65,17,0,0,0,NULL,NULL,NULL,NULL,NULL,226,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,4,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,170,'Blue Eye Fighter Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1000,81,0,0,0,0,NULL,NULL,NULL,NULL,NULL,231,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,4,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,171,'Blue Eye Lancer Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1000,65,65,0,0,0,NULL,NULL,NULL,NULL,NULL,212,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,4,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,172,'Blue Eye Elf Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1000,14,28,0,154,0,NULL,NULL,NULL,NULL,NULL,155,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,4,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,173,'Blue Eye Magic Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1000,35,32,0,157,0,NULL,NULL,NULL,NULL,NULL,245,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,4,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,174,'Slayer Red Wing Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11,30,NULL,NULL,NULL,NULL,NULL,0,0,80,0,0,0,NULL,NULL,NULL,NULL,NULL,9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,NULL,NULL,0),(8,175,'Slayer Ancient Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,29,40,NULL,NULL,NULL,NULL,NULL,0,0,110,0,0,0,NULL,NULL,NULL,NULL,NULL,16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,NULL,NULL,0),(8,176,'Slayer Demonic Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,60,60,NULL,NULL,NULL,NULL,NULL,0,30,120,0,0,0,NULL,NULL,NULL,NULL,NULL,35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,NULL,NULL,0),(8,177,'Night Wing Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,127,70,NULL,NULL,NULL,NULL,NULL,0,30,125,0,0,0,NULL,NULL,NULL,NULL,NULL,70,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,NULL,NULL,0),(8,178,'Fidelity Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,133,86,NULL,NULL,NULL,NULL,NULL,380,32,130,0,0,0,NULL,NULL,NULL,NULL,NULL,77,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,2,0,NULL,NULL,NULL,NULL,NULL,0),(8,179,'Trace Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,149,90,NULL,NULL,NULL,NULL,NULL,400,33,135,0,0,0,NULL,NULL,NULL,NULL,NULL,86,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,NULL,NULL,NULL,NULL,NULL,0),(8,180,'Bloodangel Slayer Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,400,51,174,0,0,0,NULL,NULL,NULL,NULL,NULL,94,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,NULL,NULL,NULL,NULL,NULL,0),(8,181,'Darkangel Slayer Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,600,51,174,0,0,0,NULL,NULL,NULL,NULL,NULL,104,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,NULL,NULL,NULL,NULL,NULL,0),(8,182,'Holyangel Slayer Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,800,51,174,0,0,0,NULL,NULL,NULL,NULL,NULL,154,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,NULL,NULL,NULL,NULL,NULL,0),(8,183,'Soul Slayer Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,900,51,174,0,0,0,NULL,NULL,NULL,NULL,NULL,199,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,4,0,NULL,NULL,NULL,NULL,NULL,0),(8,184,'Blue Eye Slayer Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1000,51,174,0,0,0,NULL,NULL,NULL,NULL,NULL,244,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,4,0,NULL,NULL,NULL,NULL,NULL,0),(8,185,'Blue Eye Slayer Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1100,51,174,0,0,0,NULL,NULL,NULL,NULL,NULL,289,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,4,0,NULL,NULL,NULL,NULL,NULL,0),(8,186,'Slayer Ancient Armor',3,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,32,255,NULL,NULL,NULL,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,NULL,NULL,0),(8,187,'Slayer Demonic Armor',3,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,255,NULL,NULL,NULL,NULL,NULL,150,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,NULL,NULL,0),(8,188,'Slayer Demonic Armor(Bound)',3,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,100,NULL,NULL,NULL,NULL,NULL,0,50,50,0,0,0,NULL,NULL,NULL,NULL,NULL,51,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,NULL,NULL,0),(8,189,'Silver Heart Knight Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1100,174,51,0,0,0,NULL,NULL,NULL,NULL,NULL,294,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,190,'Silver Heart Wizard Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1100,46,15,0,0,0,NULL,NULL,NULL,NULL,NULL,262,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,191,'Silver Heart Elf Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1100,39,87,0,0,0,NULL,NULL,NULL,NULL,NULL,274,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,4,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,192,'Silver Heart Summoner Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1100,38,13,0,0,0,NULL,NULL,NULL,NULL,NULL,267,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,4,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,193,'Silver Heart Magic Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1100,143,58,0,0,0,NULL,NULL,NULL,NULL,NULL,293,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,4,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,194,'Silver Heart Lord Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1100,65,17,0,0,0,NULL,NULL,NULL,NULL,NULL,271,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,4,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,195,'Silver Heart Fighter Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1100,81,0,0,0,0,NULL,NULL,NULL,NULL,NULL,276,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,4,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,196,'Silver Heart Lancer Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1100,65,65,0,0,0,NULL,NULL,NULL,NULL,NULL,257,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,4,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,197,'Silver Heart Elf Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1100,14,28,0,154,0,NULL,NULL,NULL,NULL,NULL,200,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,4,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,198,'Silver Heart Magic Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1100,35,32,0,157,0,NULL,NULL,NULL,NULL,NULL,290,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,4,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,199,'Silver Heart Rune Wizard Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1100,40,14,0,125,0,NULL,NULL,NULL,NULL,NULL,267,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,4,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,200,'Blood Angel Knight Armor (Conviction)',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,400,0,22,0,107,0,NULL,NULL,NULL,NULL,NULL,103,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,201,'Dark Angel Knight Armor (Conviction)',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,600,0,22,0,107,0,NULL,NULL,NULL,NULL,NULL,128,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,202,'Holy Angel Knight Armor (Conviction)',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,800,0,22,0,107,0,NULL,NULL,NULL,NULL,NULL,178,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,203,'Soul Knight Armor (Conviction)',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,900,0,22,0,107,0,NULL,NULL,NULL,NULL,NULL,222,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,204,'Blue Eye Knight Armor (Conviction)',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1000,0,22,0,107,0,NULL,NULL,NULL,NULL,NULL,267,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,205,'Silver Heart Knight Armor (Conviction)',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1100,0,22,0,107,0,NULL,NULL,NULL,NULL,NULL,312,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,206,'Leather Gunner Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,30,NULL,NULL,NULL,NULL,NULL,0,44,18,0,0,0,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,1,NULL,NULL,NULL,NULL,NULL,0),(8,207,'Scaled Gunner Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,25,40,NULL,NULL,NULL,NULL,NULL,0,37,20,0,46,0,NULL,NULL,NULL,NULL,NULL,18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,1,NULL,NULL,NULL,NULL,NULL,0),(8,208,'Light Plate Gunner Helmet',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,40,42,NULL,NULL,NULL,NULL,NULL,0,65,38,0,76,0,NULL,NULL,NULL,NULL,NULL,35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,1,NULL,NULL,NULL,NULL,NULL,0),(8,209,'Frere Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,100,68,NULL,NULL,NULL,NULL,NULL,0,66,40,0,76,0,NULL,NULL,NULL,NULL,NULL,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,1,NULL,NULL,NULL,NULL,NULL,0),(8,210,'Titan Gunner Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,110,86,NULL,NULL,NULL,NULL,NULL,380,62,50,0,98,0,NULL,NULL,NULL,NULL,NULL,84,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,2,NULL,NULL,NULL,NULL,NULL,0),(8,211,'Lazy Wind Gunner Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,140,90,NULL,NULL,NULL,NULL,NULL,400,54,44,0,88,0,NULL,NULL,NULL,NULL,NULL,92,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,3,NULL,NULL,NULL,NULL,NULL,0),(8,212,'Blood Angel Gun Crusher Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,400,60,50,0,114,0,NULL,NULL,NULL,NULL,NULL,76,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,3,NULL,NULL,NULL,NULL,NULL,0),(8,213,'Dark Angel Gun Crasher Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,600,60,50,0,114,0,NULL,NULL,NULL,NULL,NULL,86,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,3,NULL,NULL,NULL,NULL,NULL,0),(8,214,'Holy Angel Gun Crusher Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,800,60,50,0,114,0,NULL,NULL,NULL,NULL,NULL,136,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,3,NULL,NULL,NULL,NULL,NULL,0),(8,215,'Soul Gun Crusher Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,900,60,50,0,114,0,NULL,NULL,NULL,NULL,NULL,181,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,4,NULL,NULL,NULL,NULL,NULL,0),(8,218,'Scaled Armor',3,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,28,255,NULL,NULL,NULL,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,1,NULL,NULL,NULL,NULL,NULL,0),(8,219,'Frere Armor',3,2,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,59,255,NULL,NULL,NULL,NULL,NULL,150,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,1,NULL,NULL,NULL,NULL,NULL,0),(8,220,'Frere Armor (Bound)',3,2,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,100,NULL,NULL,NULL,NULL,NULL,0,50,50,0,0,0,NULL,NULL,NULL,NULL,NULL,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,1,NULL,NULL,NULL,NULL,NULL,0),(8,221,'Manticore Knight Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1200,174,51,0,0,0,NULL,NULL,NULL,NULL,NULL,339,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,222,'Manticore Wizard Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1200,46,15,0,0,0,NULL,NULL,NULL,NULL,NULL,307,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,223,'Manticore Elf Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1200,39,87,0,0,0,NULL,NULL,NULL,NULL,NULL,319,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,4,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,224,'Manticore Summoner Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1200,38,13,0,0,0,NULL,NULL,NULL,NULL,NULL,312,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,4,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,225,'Manticore Magic Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1200,143,58,0,0,0,NULL,NULL,NULL,NULL,NULL,82,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,4,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,226,'Manticore Lord Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1200,65,17,0,0,0,NULL,NULL,NULL,NULL,NULL,316,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,4,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,227,'Manticore Fighter Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1200,81,0,0,0,0,NULL,NULL,NULL,NULL,NULL,321,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,4,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,228,'Manticore Lancer Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1200,65,65,0,0,0,NULL,NULL,NULL,NULL,NULL,302,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,4,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,229,'Manticore Elf Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1200,14,28,0,154,0,NULL,NULL,NULL,NULL,NULL,245,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,4,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,230,'Manticore Magic Armor',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1200,35,32,0,157,0,NULL,NULL,NULL,NULL,NULL,335,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,4,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,231,'Manticore Rune Wizard Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1200,40,14,0,125,0,NULL,NULL,NULL,NULL,NULL,312,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,4,0,0,NULL,NULL,NULL,NULL,NULL,0),(8,232,'Manticore Slayer Armor',3,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1200,51,174,0,0,0,NULL,NULL,NULL,NULL,NULL,334,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,4,0,NULL,NULL,NULL,NULL,NULL,0),(8,233,'Manticore Knight Armor (Conviction)',3,2,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1200,0,22,0,107,0,NULL,NULL,NULL,NULL,NULL,357,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,0,'Bronze Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15,34,NULL,NULL,NULL,NULL,NULL,0,80,20,0,0,0,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,1,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,1,'Dragon Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,55,68,NULL,NULL,NULL,NULL,NULL,0,120,30,0,0,0,NULL,NULL,NULL,NULL,NULL,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,2,'Pad Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8,28,NULL,NULL,NULL,NULL,NULL,0,30,0,0,0,0,NULL,NULL,NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,3,'Legendary Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,53,42,NULL,NULL,NULL,NULL,NULL,0,40,0,0,0,0,NULL,NULL,NULL,NULL,NULL,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,4,'Bone Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,20,30,NULL,NULL,NULL,NULL,NULL,0,40,0,0,0,0,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,5,'Leather Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8,30,NULL,NULL,NULL,NULL,NULL,0,80,0,0,0,0,NULL,NULL,NULL,NULL,NULL,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,1,1,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,6,'Scale Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,25,40,NULL,NULL,NULL,NULL,NULL,0,110,0,0,0,0,NULL,NULL,NULL,NULL,NULL,14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,1,1,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,7,'Sphinx Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,34,36,NULL,NULL,NULL,NULL,NULL,0,40,0,0,0,0,NULL,NULL,NULL,NULL,NULL,15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,8,'Brass Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,35,44,NULL,NULL,NULL,NULL,NULL,0,100,30,0,0,0,NULL,NULL,NULL,NULL,NULL,18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,1,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,9,'Plate Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,45,50,NULL,NULL,NULL,NULL,NULL,0,130,0,0,0,0,NULL,NULL,NULL,NULL,NULL,22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,1,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,10,'Vine Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8,22,NULL,NULL,NULL,NULL,NULL,0,30,60,0,0,0,NULL,NULL,NULL,NULL,NULL,6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,11,'Silk Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,18,26,NULL,NULL,NULL,NULL,NULL,0,30,70,0,0,0,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,12,'Wind Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,30,32,NULL,NULL,NULL,NULL,NULL,0,30,80,0,0,0,NULL,NULL,NULL,NULL,NULL,14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,13,'Spirit Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,42,38,NULL,NULL,NULL,NULL,NULL,0,40,80,0,0,0,NULL,NULL,NULL,NULL,NULL,18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,14,'Guardian Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,54,45,NULL,NULL,NULL,NULL,NULL,0,40,80,0,0,0,NULL,NULL,NULL,NULL,NULL,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,15,'Storm Crow Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,74,80,NULL,NULL,NULL,NULL,NULL,0,150,70,0,0,0,NULL,NULL,NULL,NULL,NULL,34,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,16,'Black Dragon Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,84,74,NULL,NULL,NULL,NULL,NULL,0,170,60,0,0,0,NULL,NULL,NULL,NULL,NULL,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,17,'Dark Phoenix Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,96,80,NULL,NULL,NULL,NULL,NULL,0,207,63,0,0,0,NULL,NULL,NULL,NULL,NULL,54,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,18,'Grand Soul Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,86,67,NULL,NULL,NULL,NULL,NULL,0,59,20,0,0,0,NULL,NULL,NULL,NULL,NULL,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,19,'Holy Spirit Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,88,74,NULL,NULL,NULL,NULL,NULL,0,50,110,0,0,0,NULL,NULL,NULL,NULL,NULL,39,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,2,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,20,'Thunder Hawk Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,99,82,NULL,NULL,NULL,NULL,NULL,0,150,70,0,0,0,NULL,NULL,NULL,NULL,NULL,49,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,21,'Great Dragon Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,113,86,NULL,NULL,NULL,NULL,NULL,0,200,58,0,0,0,NULL,NULL,NULL,NULL,NULL,65,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,22,'Dark Soul Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,117,75,NULL,NULL,NULL,NULL,NULL,0,55,18,0,0,0,NULL,NULL,NULL,NULL,NULL,39,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,23,'Hurricane Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,122,90,NULL,NULL,NULL,NULL,NULL,0,162,66,0,0,0,NULL,NULL,NULL,NULL,NULL,61,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,24,'Red Spirit Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,100,80,NULL,NULL,NULL,NULL,NULL,0,52,115,0,0,0,NULL,NULL,NULL,NULL,NULL,48,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,2,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,25,'Light Plate Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,42,NULL,NULL,NULL,NULL,NULL,0,70,20,0,0,0,NULL,NULL,NULL,NULL,NULL,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,26,'Adamantine Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,70,56,NULL,NULL,NULL,NULL,NULL,0,77,21,0,0,0,NULL,NULL,NULL,NULL,NULL,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,27,'Dark Steel Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,92,70,NULL,NULL,NULL,NULL,NULL,0,84,22,0,0,0,NULL,NULL,NULL,NULL,NULL,31,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,28,'Dark Master Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,110,78,NULL,NULL,NULL,NULL,NULL,0,80,21,0,0,0,NULL,NULL,NULL,NULL,NULL,39,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,29,'Dragon Knight Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,134,90,NULL,NULL,NULL,NULL,NULL,380,170,60,0,0,0,NULL,NULL,NULL,NULL,NULL,78,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,30,'Venom Mist Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,135,86,NULL,NULL,NULL,NULL,NULL,380,44,15,0,0,0,NULL,NULL,NULL,NULL,NULL,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,31,'Sylphid Ray Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,135,86,NULL,NULL,NULL,NULL,NULL,380,38,80,0,0,0,NULL,NULL,NULL,NULL,NULL,61,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,2,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,32,'Volcano Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,135,95,NULL,NULL,NULL,NULL,NULL,380,145,60,0,0,0,NULL,NULL,NULL,NULL,NULL,74,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,33,'Sunlight Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,140,82,NULL,NULL,NULL,NULL,NULL,380,62,16,0,0,0,NULL,NULL,NULL,NULL,NULL,52,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,34,'Ashcrow Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,69,72,NULL,NULL,NULL,NULL,NULL,0,160,50,0,0,0,NULL,NULL,NULL,NULL,NULL,33,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,35,'Eclipse Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,69,54,NULL,NULL,NULL,NULL,NULL,0,53,12,0,0,0,NULL,NULL,NULL,NULL,NULL,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,36,'Iris Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,69,59,NULL,NULL,NULL,NULL,NULL,0,50,70,0,0,0,NULL,NULL,NULL,NULL,NULL,32,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,37,'Valiant Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,101,81,NULL,NULL,NULL,NULL,NULL,0,155,50,0,0,0,NULL,NULL,NULL,NULL,NULL,41,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,38,'Glorious Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,101,74,NULL,NULL,NULL,NULL,NULL,0,80,21,0,0,0,NULL,NULL,NULL,NULL,NULL,35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,39,'Violent Wind Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,30,36,NULL,NULL,NULL,NULL,NULL,0,36,0,0,0,0,NULL,NULL,NULL,NULL,NULL,16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,40,'Red Wing Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,53,42,NULL,NULL,NULL,NULL,NULL,0,35,7,0,0,0,NULL,NULL,NULL,NULL,NULL,22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,41,'Ancient Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,72,54,NULL,NULL,NULL,NULL,NULL,0,49,16,0,0,0,NULL,NULL,NULL,NULL,NULL,28,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,42,'Demonic Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,86,67,NULL,NULL,NULL,NULL,NULL,0,60,20,0,0,0,NULL,NULL,NULL,NULL,NULL,37,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,2,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,43,'Storm Blitz Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,117,75,NULL,NULL,NULL,NULL,NULL,380,57,19,0,0,0,NULL,NULL,NULL,NULL,NULL,49,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,2,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,44,'Eternal Wing Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,122,86,NULL,NULL,NULL,NULL,NULL,380,62,20,0,170,0,NULL,NULL,NULL,NULL,NULL,41,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,2,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,45,'Titan Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,116,86,NULL,NULL,NULL,NULL,NULL,380,222,32,0,0,0,NULL,NULL,NULL,NULL,NULL,74,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,46,'Brave Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,112,86,NULL,NULL,NULL,NULL,NULL,380,74,162,0,0,0,NULL,NULL,NULL,NULL,NULL,58,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,47,'Phantom Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,115,86,NULL,NULL,NULL,NULL,NULL,380,212,57,0,0,0,NULL,NULL,NULL,NULL,NULL,66,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,48,'Destroy Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,113,86,NULL,NULL,NULL,NULL,NULL,380,62,19,0,165,0,NULL,NULL,NULL,NULL,NULL,51,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,49,'Seraphim Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,116,86,NULL,NULL,NULL,NULL,NULL,380,55,197,0,0,0,NULL,NULL,NULL,NULL,NULL,53,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,50,'Divine Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,109,86,NULL,NULL,NULL,NULL,NULL,380,32,29,0,138,0,NULL,NULL,NULL,NULL,NULL,46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,51,'Royal Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,116,86,NULL,NULL,NULL,NULL,NULL,380,105,38,0,0,0,NULL,NULL,NULL,NULL,NULL,46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,52,'Hades Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,114,86,NULL,NULL,NULL,NULL,NULL,380,60,15,0,181,0,NULL,NULL,NULL,NULL,NULL,44,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,53,'Succubus Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,145,90,NULL,NULL,NULL,NULL,NULL,400,56,19,0,157,0,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,3,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,54,'Lazy Wind Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,145,90,NULL,NULL,NULL,NULL,NULL,400,67,151,0,0,0,NULL,NULL,NULL,NULL,NULL,75,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,55,'Dark Devil Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,145,90,NULL,NULL,NULL,NULL,NULL,400,45,13,0,171,0,NULL,NULL,NULL,NULL,NULL,53,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,56,'Sticky Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,145,90,NULL,NULL,NULL,NULL,NULL,400,48,180,0,0,0,NULL,NULL,NULL,NULL,NULL,62,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,3,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,57,'Hell Night Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,145,90,NULL,NULL,NULL,NULL,NULL,400,194,52,0,0,0,NULL,NULL,NULL,NULL,NULL,75,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,3,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,58,'Ambition Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,145,90,NULL,NULL,NULL,NULL,NULL,400,112,22,0,0,0,NULL,NULL,NULL,NULL,NULL,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,3,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,59,'Sacred Fire Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,62,52,NULL,NULL,NULL,NULL,NULL,0,85,0,75,0,0,NULL,NULL,NULL,NULL,NULL,33,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,60,'Storm Jahad Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,78,68,NULL,NULL,NULL,NULL,NULL,0,100,0,90,0,0,NULL,NULL,NULL,NULL,NULL,41,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,61,'Piercing Groove Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,95,82,NULL,NULL,NULL,NULL,NULL,0,115,0,100,0,0,NULL,NULL,NULL,NULL,NULL,49,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,62,'Scale Pants',4,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,25,255,NULL,NULL,NULL,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,1,1,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,63,'Silk Pants',4,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,18,255,NULL,NULL,NULL,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,64,'Sphinx Pants',4,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,34,255,NULL,NULL,NULL,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,19,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,65,'Violent Wind Pants',4,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,30,255,NULL,NULL,NULL,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,66,'Adamantine Pants',4,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,70,255,NULL,NULL,NULL,NULL,NULL,150,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,31,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,67,'Dragon Pants',4,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,55,255,NULL,NULL,NULL,NULL,NULL,150,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,28,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,68,'Guardian Pants',4,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,54,255,NULL,NULL,NULL,NULL,NULL,150,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,69,'Legendary Pants',4,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,53,255,NULL,NULL,NULL,NULL,NULL,150,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,70,'Red Wing Pants',4,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,53,255,NULL,NULL,NULL,NULL,NULL,150,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,71,'Atlans Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,74,255,NULL,NULL,NULL,NULL,NULL,150,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,39,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,72,'Storm Jahad Pants',4,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,78,255,NULL,NULL,NULL,NULL,NULL,150,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,33,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,73,'Phoenix Soul Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,134,88,NULL,NULL,NULL,NULL,NULL,380,97,0,85,0,0,NULL,NULL,NULL,NULL,NULL,68,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,74,'Stormwing Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,145,90,NULL,NULL,NULL,NULL,NULL,400,200,33,0,0,0,NULL,NULL,NULL,NULL,NULL,83,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,75,'Light Lord Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,145,90,NULL,NULL,NULL,NULL,NULL,400,14,31,0,127,0,NULL,NULL,NULL,NULL,NULL,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,3,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,76,'Magic Knight Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,145,90,NULL,NULL,NULL,NULL,NULL,400,48,17,0,142,0,NULL,NULL,NULL,NULL,NULL,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,3,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,91,'Robust Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,24,30,NULL,NULL,NULL,NULL,NULL,0,100,69,0,0,0,NULL,NULL,NULL,NULL,NULL,16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,92,'Gru Hill Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,54,46,NULL,NULL,NULL,NULL,NULL,0,180,140,0,0,0,NULL,NULL,NULL,NULL,NULL,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,93,'Princie Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,74,66,NULL,NULL,NULL,NULL,NULL,0,155,135,0,0,0,NULL,NULL,NULL,NULL,NULL,24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,94,'Hirat Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,95,76,NULL,NULL,NULL,NULL,NULL,0,334,94,0,0,0,NULL,NULL,NULL,NULL,NULL,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,95,'Sate Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,95,76,NULL,NULL,NULL,NULL,NULL,0,94,334,0,0,0,NULL,NULL,NULL,NULL,NULL,28,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,96,'Robust Pants',4,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,24,255,NULL,NULL,NULL,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,97,'Princie Pants',4,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,74,255,NULL,NULL,NULL,NULL,NULL,150,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,98,'Bloodangel Knight Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,400,157,45,0,0,0,NULL,NULL,NULL,NULL,NULL,75,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,99,'Bloodangel Wizard Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,400,44,14,0,0,0,NULL,NULL,NULL,NULL,NULL,49,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,100,'Bloodangel Elf Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,400,36,80,0,0,0,NULL,NULL,NULL,NULL,NULL,58,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,3,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,101,'Bloodangel Summoner Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,400,36,12,0,0,0,NULL,NULL,NULL,NULL,NULL,47,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,3,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,102,'Bloodangel Magic Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,400,136,56,0,0,0,NULL,NULL,NULL,NULL,NULL,71,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,3,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,103,'Bloodangel Lord Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,400,61,16,0,0,0,NULL,NULL,NULL,NULL,NULL,49,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,3,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,104,'Bloodangel Fighter Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,400,76,0,0,0,0,NULL,NULL,NULL,NULL,NULL,56,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,3,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,105,'Bloodangel Lancer Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,400,63,63,0,0,0,NULL,NULL,NULL,NULL,NULL,38,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,3,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,106,'Soul Knight Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,900,157,45,0,0,0,NULL,NULL,NULL,NULL,NULL,195,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,107,'Soul Wizard Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,900,44,14,0,0,0,NULL,NULL,NULL,NULL,NULL,169,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,108,'Soul Elf Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,900,36,80,0,0,0,NULL,NULL,NULL,NULL,NULL,180,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,4,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,109,'Soul Summoner Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,900,36,12,0,0,0,NULL,NULL,NULL,NULL,NULL,169,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,4,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,110,'Soul Magic Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,900,136,56,0,0,0,NULL,NULL,NULL,NULL,NULL,181,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,4,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,111,'Soul Lord Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,900,61,16,0,0,0,NULL,NULL,NULL,NULL,NULL,169,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,4,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,112,'Soul Fighter Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,900,76,0,0,0,0,NULL,NULL,NULL,NULL,NULL,176,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,4,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,113,'Soul Lancer Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,900,63,63,0,0,0,NULL,NULL,NULL,NULL,NULL,164,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,4,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,114,'Soul Elf Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,900,13,27,0,150,0,NULL,NULL,NULL,NULL,NULL,104,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,4,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,115,'Soul Magic Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,900,33,30,0,153,0,NULL,NULL,NULL,NULL,NULL,177,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,4,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,116,'Rune Padded Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,7,28,NULL,NULL,NULL,NULL,NULL,0,30,0,0,0,0,NULL,NULL,NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,117,'Rune Sphinx Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,33,36,NULL,NULL,NULL,NULL,NULL,0,40,0,0,0,0,NULL,NULL,NULL,NULL,NULL,15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,118,'Legendary Rune Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,52,42,NULL,NULL,NULL,NULL,NULL,0,40,5,0,0,0,NULL,NULL,NULL,NULL,NULL,23,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,119,'Kenaz Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,85,67,NULL,NULL,NULL,NULL,NULL,0,37,15,0,25,0,NULL,NULL,NULL,NULL,NULL,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,120,'Divine Rune Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,113,86,NULL,NULL,NULL,NULL,NULL,380,40,13,0,118,0,NULL,NULL,NULL,NULL,NULL,56,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,121,'Light Load Rune Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,144,90,NULL,NULL,NULL,NULL,NULL,400,39,12,0,119,0,NULL,NULL,NULL,NULL,NULL,68,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,3,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,122,'Bloodangel Rune Mage Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,400,38,13,0,123,0,NULL,NULL,NULL,NULL,NULL,71,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,3,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,123,'Darkangel Rune Mage Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,600,38,13,0,123,0,NULL,NULL,NULL,NULL,NULL,83,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,3,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,124,'Rune Sphinx Pants',4,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,34,255,NULL,NULL,NULL,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,19,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,125,'Legendary Rune Pants',4,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,53,255,NULL,NULL,NULL,NULL,NULL,150,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,126,'Legendary Rune Pants (Bound)',4,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,100,NULL,NULL,NULL,NULL,NULL,0,50,50,0,0,0,NULL,NULL,NULL,NULL,NULL,35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,127,'Holyangel Rune Mage Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,800,38,13,0,123,0,NULL,NULL,NULL,NULL,NULL,127,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,3,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,128,'Soul Rune Mage Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,900,38,13,0,123,0,NULL,NULL,NULL,NULL,NULL,174,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,4,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,129,'Blue Eye Rune Mage Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1000,38,13,0,123,0,NULL,NULL,NULL,NULL,NULL,219,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,4,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,130,'Dragon Pants (Bound)',4,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,100,NULL,NULL,NULL,NULL,NULL,0,50,50,0,0,0,NULL,NULL,NULL,NULL,NULL,41,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,131,'Legendary Pants (Bound)',4,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,100,NULL,NULL,NULL,NULL,NULL,0,50,50,0,0,0,NULL,NULL,NULL,NULL,NULL,35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,132,'Guardian Pants (Bound)',4,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,100,NULL,NULL,NULL,NULL,NULL,0,50,50,0,0,0,NULL,NULL,NULL,NULL,NULL,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,133,'Atlans Pants (Bound)',4,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,100,NULL,NULL,NULL,NULL,NULL,0,50,50,0,0,0,NULL,NULL,NULL,NULL,NULL,49,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,134,'Adamantine Pants (Bound)',4,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,100,NULL,NULL,NULL,NULL,NULL,0,50,50,0,0,0,NULL,NULL,NULL,NULL,NULL,41,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,135,'Red Winged Pants (Bound)',4,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,100,NULL,NULL,NULL,NULL,NULL,0,50,50,0,0,0,NULL,NULL,NULL,NULL,NULL,37,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,136,'Storm Zahard Pants (Bound)',4,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,100,NULL,NULL,NULL,NULL,NULL,0,50,50,0,0,0,NULL,NULL,NULL,NULL,NULL,48,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,137,'Princie Pants (Bound)',4,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,100,NULL,NULL,NULL,NULL,NULL,0,50,50,0,0,0,NULL,NULL,NULL,NULL,NULL,39,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,138,'Darkangel Knight Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,600,157,45,0,0,0,NULL,NULL,NULL,NULL,NULL,100,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,139,'Darkangel Wizard Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,600,44,14,0,0,0,NULL,NULL,NULL,NULL,NULL,74,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,140,'Darkangel Elf Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,600,36,80,0,0,0,NULL,NULL,NULL,NULL,NULL,83,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,3,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,141,'Darkangel Summoner Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,600,36,12,0,0,0,NULL,NULL,NULL,NULL,NULL,72,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,3,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,142,'Darkangel Magic Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,600,136,56,0,0,0,NULL,NULL,NULL,NULL,NULL,96,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,3,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,143,'Darkangel Lord Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,600,61,16,0,0,0,NULL,NULL,NULL,NULL,NULL,74,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,3,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,144,'Darkangel Fighter Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,600,76,0,0,0,0,NULL,NULL,NULL,NULL,NULL,81,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,3,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,145,'Darkangel Lancer Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,600,63,63,0,0,0,NULL,NULL,NULL,NULL,NULL,63,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,3,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,146,'Tigris Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,111,86,NULL,NULL,NULL,NULL,NULL,380,68,20,0,0,0,NULL,NULL,NULL,NULL,NULL,53,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,147,'Crimson Skull Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,143,90,NULL,NULL,NULL,NULL,NULL,400,73,21,0,0,0,NULL,NULL,NULL,NULL,NULL,62,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,3,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,148,'Grace Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,111,86,NULL,NULL,NULL,NULL,NULL,380,62,44,0,0,0,NULL,NULL,NULL,NULL,NULL,41,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,149,'Constant Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,143,90,NULL,NULL,NULL,NULL,NULL,400,69,48,0,0,0,NULL,NULL,NULL,NULL,NULL,46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,3,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,150,'Holyangel Knight Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,800,157,45,0,0,0,NULL,NULL,NULL,NULL,NULL,150,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,151,'Holyangel Wizard Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,800,44,14,0,0,0,NULL,NULL,NULL,NULL,NULL,124,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,152,'Holyangel Elf Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,800,36,80,0,0,0,NULL,NULL,NULL,NULL,NULL,133,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,3,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,153,'Holyangel Summoner Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,800,36,12,0,0,0,NULL,NULL,NULL,NULL,NULL,122,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,3,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,154,'Holyangel Magic Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,800,136,56,0,0,0,NULL,NULL,NULL,NULL,NULL,136,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,3,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,155,'Holyangel Lord Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,800,61,16,0,0,0,NULL,NULL,NULL,NULL,NULL,124,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,3,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,156,'Holyangel Fighter Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,800,76,0,0,0,0,NULL,NULL,NULL,NULL,NULL,131,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,3,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,157,'Holyangel Lancer Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,800,63,63,0,0,0,NULL,NULL,NULL,NULL,NULL,120,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,3,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,158,'Bloodangel Elf Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,400,13,27,0,150,0,NULL,NULL,NULL,NULL,NULL,31,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,3,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,159,'Darkangel Elf Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,600,13,27,0,150,0,NULL,NULL,NULL,NULL,NULL,44,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,3,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,160,'Holyangel Elf Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,800,13,27,0,150,0,NULL,NULL,NULL,NULL,NULL,63,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,3,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,161,'Bloodangel Magic Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,400,33,30,0,153,0,NULL,NULL,NULL,NULL,NULL,57,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,3,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,162,'Darkangel Magic Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,600,33,30,0,153,0,NULL,NULL,NULL,NULL,NULL,82,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,3,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,163,'Holyangel Magic Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,800,33,30,0,153,0,NULL,NULL,NULL,NULL,NULL,132,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,3,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,164,'Blue Eye Knight Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1000,157,45,0,0,0,NULL,NULL,NULL,NULL,NULL,240,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,165,'Blue Eye Wizard Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1000,44,14,0,0,0,NULL,NULL,NULL,NULL,NULL,214,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,166,'Blue Eye Elf Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1000,36,80,0,0,0,NULL,NULL,NULL,NULL,NULL,225,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,4,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,167,'Blue Eye Summoner Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1000,36,12,0,0,0,NULL,NULL,NULL,NULL,NULL,214,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,4,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,168,'Blue Eye Magic Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1000,136,56,0,0,0,NULL,NULL,NULL,NULL,NULL,226,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,4,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,169,'Blue Eye Lord Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1000,61,16,0,0,0,NULL,NULL,NULL,NULL,NULL,214,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,4,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,170,'Blue Eye Fighter Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1000,76,0,0,0,0,NULL,NULL,NULL,NULL,NULL,221,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,4,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,171,'Blue Eye Lancer Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1000,63,63,0,0,0,NULL,NULL,NULL,NULL,NULL,209,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,4,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,172,'Blue Eye Elf Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1000,13,27,0,150,0,NULL,NULL,NULL,NULL,NULL,149,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,4,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,173,'Blue Eye Magic Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1000,33,30,0,153,0,NULL,NULL,NULL,NULL,NULL,222,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,4,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,174,'Slayer Red Wing Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9,30,NULL,NULL,NULL,NULL,NULL,0,0,80,0,0,0,NULL,NULL,NULL,NULL,NULL,6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,NULL,NULL,0),(9,175,'Slayer Ancient Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,26,40,NULL,NULL,NULL,NULL,NULL,0,0,110,0,0,0,NULL,NULL,NULL,NULL,NULL,13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,NULL,NULL,0),(9,176,'Slayer Demonic Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,56,60,NULL,NULL,NULL,NULL,NULL,0,30,120,0,0,0,NULL,NULL,NULL,NULL,NULL,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,NULL,NULL,0),(9,177,'Night Wing Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,114,70,NULL,NULL,NULL,NULL,NULL,0,30,125,0,0,0,NULL,NULL,NULL,NULL,NULL,63,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,NULL,NULL,0),(9,178,'Fidelity Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,117,86,NULL,NULL,NULL,NULL,NULL,380,32,130,0,0,0,NULL,NULL,NULL,NULL,NULL,70,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,2,0,NULL,NULL,NULL,NULL,NULL,0),(9,179,'Trace Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,146,90,NULL,NULL,NULL,NULL,NULL,400,33,135,0,0,0,NULL,NULL,NULL,NULL,NULL,79,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,NULL,NULL,NULL,NULL,NULL,0),(9,180,'Bloodangel Slayer Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,400,45,157,0,0,0,NULL,NULL,NULL,NULL,NULL,87,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,NULL,NULL,NULL,NULL,NULL,0),(9,181,'Darkangel Slayer Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,600,45,157,0,0,0,NULL,NULL,NULL,NULL,NULL,97,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,NULL,NULL,NULL,NULL,NULL,0),(9,182,'Holyangel Slayer Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,800,45,157,0,0,0,NULL,NULL,NULL,NULL,NULL,147,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,NULL,NULL,NULL,NULL,NULL,0),(9,183,'Soul Slayer Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,900,45,157,0,0,0,NULL,NULL,NULL,NULL,NULL,192,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,4,0,NULL,NULL,NULL,NULL,NULL,0),(9,184,'Blue Eye Slayer Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1000,45,157,0,0,0,NULL,NULL,NULL,NULL,NULL,237,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,4,0,NULL,NULL,NULL,NULL,NULL,0),(9,185,'Silver Heart Slayer Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1100,45,157,0,0,0,NULL,NULL,NULL,NULL,NULL,282,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,4,0,NULL,NULL,NULL,NULL,NULL,0),(9,186,'Slayer Ancient Pants',4,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,32,255,NULL,NULL,NULL,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,NULL,NULL,0),(9,187,'Slayer Demonic Pants',4,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,255,NULL,NULL,NULL,NULL,NULL,150,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,NULL,NULL,0),(9,188,'Slayer Demonic Pants(Bound)',4,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,100,NULL,NULL,NULL,NULL,NULL,0,50,50,0,0,0,NULL,NULL,NULL,NULL,NULL,41,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,NULL,NULL,0),(9,189,'Silver Heart Knight Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1100,157,45,0,0,0,NULL,NULL,NULL,NULL,NULL,285,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,190,'Silver Heart Wizard Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1100,44,14,0,0,0,NULL,NULL,NULL,NULL,NULL,259,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,191,'Silver Heart Elf Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1100,36,80,0,0,0,NULL,NULL,NULL,NULL,NULL,270,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,4,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,192,'Silver Heart Summoner Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1100,36,12,0,0,0,NULL,NULL,NULL,NULL,NULL,259,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,4,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,193,'Silver Heart Magic Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1100,136,56,0,0,0,NULL,NULL,NULL,NULL,NULL,271,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,4,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,194,'Silver Heart Lord Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1100,61,16,0,0,0,NULL,NULL,NULL,NULL,NULL,259,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,4,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,195,'Silver Heart Fighter Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1100,76,0,0,0,0,NULL,NULL,NULL,NULL,NULL,266,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,4,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,196,'Silver Heart Lancer Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1100,63,63,0,0,0,NULL,NULL,NULL,NULL,NULL,254,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,4,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,197,'Silver Heart Elf Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1100,13,27,0,150,0,NULL,NULL,NULL,NULL,NULL,194,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,4,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,198,'Silver Heart Magic Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1100,33,30,0,153,0,NULL,NULL,NULL,NULL,NULL,267,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,4,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,199,'Silver Heart Rune Wizard Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1100,38,13,0,123,0,NULL,NULL,NULL,NULL,NULL,264,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,4,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,200,'Blood Angel Knight Pants (Conviction)',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,400,0,21,0,106,0,NULL,NULL,NULL,NULL,NULL,93,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,201,'Dark Angel Knight Pants (Conviction)',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,600,0,21,0,106,0,NULL,NULL,NULL,NULL,NULL,118,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,202,'Holy Angel Knight Pants (Conviction)',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,800,0,21,0,106,0,NULL,NULL,NULL,NULL,NULL,168,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,203,'Soul Knight Pants (Conviction)',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,900,0,21,0,106,0,NULL,NULL,NULL,NULL,NULL,213,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,204,'Blue Eye Knight Pants (Conviction)',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1000,0,21,0,106,0,NULL,NULL,NULL,NULL,NULL,258,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,205,'Silver Heart Knight Pants (Conviction)',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1100,0,21,0,106,0,NULL,NULL,NULL,NULL,NULL,303,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,206,'Leather Gunner Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,30,NULL,NULL,NULL,NULL,NULL,0,40,14,0,0,0,NULL,NULL,NULL,NULL,NULL,8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,1,NULL,NULL,NULL,NULL,NULL,0),(9,207,'Scaled Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,25,40,NULL,NULL,NULL,NULL,NULL,0,33,16,0,42,0,NULL,NULL,NULL,NULL,NULL,16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,1,NULL,NULL,NULL,NULL,NULL,0),(9,208,'Light Plate Gunner Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,40,42,NULL,NULL,NULL,NULL,NULL,0,61,34,0,72,0,NULL,NULL,NULL,NULL,NULL,33,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,1,NULL,NULL,NULL,NULL,NULL,0),(9,209,'Frere Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,100,68,NULL,NULL,NULL,NULL,NULL,0,62,36,0,72,0,NULL,NULL,NULL,NULL,NULL,53,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,1,NULL,NULL,NULL,NULL,NULL,0),(9,210,'Titan Gunner Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,110,86,NULL,NULL,NULL,NULL,NULL,380,60,48,0,96,0,NULL,NULL,NULL,NULL,NULL,82,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,2,NULL,NULL,NULL,NULL,NULL,0),(9,211,'Lazy Wind Gunner Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,140,90,NULL,NULL,NULL,NULL,NULL,400,52,42,0,86,0,NULL,NULL,NULL,NULL,NULL,90,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,3,NULL,NULL,NULL,NULL,NULL,0),(9,212,'Blood Angel Gun Crusher Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,400,56,46,0,110,0,NULL,NULL,NULL,NULL,NULL,74,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,3,NULL,NULL,NULL,NULL,NULL,0),(9,213,'Dark Angel Gun Crasher Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,600,56,46,0,110,0,NULL,NULL,NULL,NULL,NULL,84,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,3,NULL,NULL,NULL,NULL,NULL,0),(9,214,'Holy Angel Gun Crusher Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,800,56,46,0,110,0,NULL,NULL,NULL,NULL,NULL,134,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,3,NULL,NULL,NULL,NULL,NULL,0),(9,215,'Soul Gun Crusher Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,900,56,46,0,110,0,NULL,NULL,NULL,NULL,NULL,179,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,4,NULL,NULL,NULL,NULL,NULL,0),(9,218,'Scaled Pants',4,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,28,255,NULL,NULL,NULL,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,1,NULL,NULL,NULL,NULL,NULL,0),(9,219,'Frere Pants',4,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,59,255,NULL,NULL,NULL,NULL,NULL,150,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,36,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,1,NULL,NULL,NULL,NULL,NULL,0),(9,220,'Frere Pants (Bound)',4,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,100,NULL,NULL,NULL,NULL,NULL,0,50,50,0,0,0,NULL,NULL,NULL,NULL,NULL,53,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,1,NULL,NULL,NULL,NULL,NULL,0),(9,221,'Manticore Knight Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1200,157,45,0,0,0,NULL,NULL,NULL,NULL,NULL,330,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,222,'Manticore Wizard Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1200,44,14,0,0,0,NULL,NULL,NULL,NULL,NULL,304,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,223,'Manticore Elf Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1200,36,80,0,0,0,NULL,NULL,NULL,NULL,NULL,315,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,4,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,224,'Manticore Summoner Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1200,36,12,0,0,0,NULL,NULL,NULL,NULL,NULL,304,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,4,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,225,'Manticore Magic Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1200,136,56,0,0,0,NULL,NULL,NULL,NULL,NULL,316,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,4,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,226,'Manticore Lord Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1200,61,16,0,0,0,NULL,NULL,NULL,NULL,NULL,304,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,4,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,227,'Manticore Fighter Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1200,76,0,0,0,0,NULL,NULL,NULL,NULL,NULL,311,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,4,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,228,'Manticore Lancer Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1200,63,63,0,0,0,NULL,NULL,NULL,NULL,NULL,299,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,4,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,229,'Manticore Elf Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1200,13,27,0,150,0,NULL,NULL,NULL,NULL,NULL,239,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,4,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,230,'Manticore Magic Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1200,33,30,0,153,0,NULL,NULL,NULL,NULL,NULL,312,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,4,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,231,'Manticore Rune Wizard Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1200,38,13,0,123,0,NULL,NULL,NULL,NULL,NULL,309,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,4,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,232,'Manticore Slayer Pants',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1200,45,157,0,0,0,NULL,NULL,NULL,NULL,NULL,327,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,4,0,NULL,NULL,NULL,NULL,NULL,0),(9,233,'Manticore Knight Pants (Conviction)',4,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1200,0,21,0,106,0,NULL,NULL,NULL,NULL,NULL,348,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,0,'Bronze Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13,34,NULL,NULL,NULL,NULL,NULL,0,80,20,0,0,0,NULL,NULL,NULL,4,NULL,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,1,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,1,'Dragon Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,52,68,NULL,NULL,NULL,NULL,NULL,0,120,30,0,0,0,NULL,NULL,NULL,6,NULL,14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,2,'Pad Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,28,NULL,NULL,NULL,NULL,NULL,0,20,0,0,0,0,NULL,NULL,NULL,0,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,3,'Legendary Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,44,42,NULL,NULL,NULL,NULL,NULL,0,20,0,0,0,0,NULL,NULL,NULL,0,NULL,11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,4,'Bone Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14,30,NULL,NULL,NULL,NULL,NULL,0,20,0,0,0,0,NULL,NULL,NULL,0,NULL,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,5,'Leather Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,30,NULL,NULL,NULL,NULL,NULL,0,80,0,0,0,0,NULL,NULL,NULL,8,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,1,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,6,'Scale Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,22,40,NULL,NULL,NULL,NULL,NULL,0,110,0,0,0,0,NULL,NULL,NULL,10,NULL,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,1,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,7,'Sphinx Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,28,36,NULL,NULL,NULL,NULL,NULL,0,20,0,0,0,0,NULL,NULL,NULL,0,NULL,8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,8,'Brass Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,32,44,NULL,NULL,NULL,NULL,NULL,0,100,30,0,0,0,NULL,NULL,NULL,8,NULL,9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,9,'Plate Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,42,50,NULL,NULL,NULL,NULL,NULL,0,130,0,0,0,0,NULL,NULL,NULL,4,NULL,12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,10,'Vine Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,22,NULL,NULL,NULL,NULL,NULL,0,30,60,0,0,0,NULL,NULL,NULL,4,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,11,'Silk Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14,26,NULL,NULL,NULL,NULL,NULL,0,30,70,0,0,0,NULL,NULL,NULL,8,NULL,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,12,'Wind Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,26,32,NULL,NULL,NULL,NULL,NULL,0,30,80,0,0,0,NULL,NULL,NULL,10,NULL,6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,13,'Spirit Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,38,38,NULL,NULL,NULL,NULL,NULL,0,40,80,0,0,0,NULL,NULL,NULL,4,NULL,9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,14,'Guardian Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,45,NULL,NULL,NULL,NULL,NULL,0,40,80,0,0,0,NULL,NULL,NULL,6,NULL,15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,15,'Storm Crow Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,70,80,NULL,NULL,NULL,NULL,NULL,0,150,70,0,0,0,NULL,NULL,NULL,6,NULL,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,16,'Black Dragon Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,76,74,NULL,NULL,NULL,NULL,NULL,0,170,60,0,0,0,NULL,NULL,NULL,6,NULL,22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,17,'Dark Phoenix Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,86,80,NULL,NULL,NULL,NULL,NULL,0,205,63,0,0,0,NULL,NULL,NULL,6,NULL,37,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,18,'Grand Soul Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,70,67,NULL,NULL,NULL,NULL,NULL,0,49,10,0,0,0,NULL,NULL,NULL,5,NULL,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,19,'Holy Spirit Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,72,74,NULL,NULL,NULL,NULL,NULL,0,50,110,0,0,0,NULL,NULL,NULL,6,NULL,29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,2,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,20,'Thunder Hawk Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,88,82,NULL,NULL,NULL,NULL,NULL,0,150,70,0,0,0,NULL,NULL,NULL,7,NULL,34,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,21,'Great Dragon Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,94,86,NULL,NULL,NULL,NULL,NULL,0,200,58,0,0,0,NULL,NULL,NULL,6,NULL,48,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,22,'Dark Soul Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,87,75,NULL,NULL,NULL,NULL,NULL,0,55,18,0,0,0,NULL,NULL,NULL,6,NULL,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,23,'Hurricane Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,102,90,NULL,NULL,NULL,NULL,NULL,0,162,66,0,0,0,NULL,NULL,NULL,7,NULL,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,24,'Red Spirit Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,84,80,NULL,NULL,NULL,NULL,NULL,0,52,115,0,0,0,NULL,NULL,NULL,6,NULL,38,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,2,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,25,'Light Plate Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,42,42,NULL,NULL,NULL,NULL,NULL,0,70,20,0,0,0,NULL,NULL,NULL,7,NULL,12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,26,'Adamantine Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,57,56,NULL,NULL,NULL,NULL,NULL,0,77,21,0,0,0,NULL,NULL,NULL,6,NULL,18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,27,'Dark Steel Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,75,70,NULL,NULL,NULL,NULL,NULL,0,84,22,0,0,0,NULL,NULL,NULL,5,NULL,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,28,'Dark Master Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,89,78,NULL,NULL,NULL,NULL,NULL,0,80,21,0,0,0,NULL,NULL,NULL,4,NULL,29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,29,'Dragon Knight Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,114,90,NULL,NULL,NULL,NULL,NULL,380,170,60,0,0,0,NULL,NULL,NULL,7,NULL,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,30,'Venom Mist Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,111,86,NULL,NULL,NULL,NULL,NULL,380,44,15,0,0,0,NULL,NULL,NULL,7,NULL,44,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,31,'Sylphid Ray Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,111,86,NULL,NULL,NULL,NULL,NULL,380,38,80,0,0,0,NULL,NULL,NULL,7,NULL,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,2,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,32,'Volcano Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,127,95,NULL,NULL,NULL,NULL,NULL,380,145,60,0,0,0,NULL,NULL,NULL,7,NULL,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,33,'Sunlight Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,110,82,NULL,NULL,NULL,NULL,NULL,380,62,16,0,0,0,NULL,NULL,NULL,5,NULL,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,34,'Ashcrow Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,61,72,NULL,NULL,NULL,NULL,NULL,0,160,50,0,0,0,NULL,NULL,NULL,6,NULL,18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,35,'Eclipse Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,61,54,NULL,NULL,NULL,NULL,NULL,0,53,12,0,0,0,NULL,NULL,NULL,6,NULL,15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,36,'Iris Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,61,59,NULL,NULL,NULL,NULL,NULL,0,50,70,0,0,0,NULL,NULL,NULL,6,NULL,22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,37,'Valiant Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,91,81,NULL,NULL,NULL,NULL,NULL,0,155,50,0,0,0,NULL,NULL,NULL,7,NULL,27,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,38,'Glorious Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,91,74,NULL,NULL,NULL,NULL,NULL,0,80,21,0,0,0,NULL,NULL,NULL,5,NULL,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,39,'Violent Wind Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,24,36,NULL,NULL,NULL,NULL,NULL,0,22,0,0,0,0,NULL,NULL,NULL,6,NULL,9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,40,'Red Wing Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,44,42,NULL,NULL,NULL,NULL,NULL,0,18,4,0,0,0,NULL,NULL,NULL,8,NULL,13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,41,'Ancient Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,61,54,NULL,NULL,NULL,NULL,NULL,0,52,16,0,0,0,NULL,NULL,NULL,7,NULL,19,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,42,'Demonic Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,70,67,NULL,NULL,NULL,NULL,NULL,0,50,10,0,0,0,NULL,NULL,NULL,6,NULL,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,2,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,43,'Storm Blitz Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,87,75,NULL,NULL,NULL,NULL,NULL,380,56,20,0,0,0,NULL,NULL,NULL,6,NULL,34,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,2,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,44,'Eternal Wing Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,102,86,NULL,NULL,NULL,NULL,NULL,380,62,20,0,170,0,NULL,NULL,NULL,0,NULL,29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,2,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,45,'Titan Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,100,86,NULL,NULL,NULL,NULL,NULL,380,222,32,0,0,0,NULL,NULL,NULL,7,NULL,56,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,46,'Brave Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,97,86,NULL,NULL,NULL,NULL,NULL,380,74,162,0,0,0,NULL,NULL,NULL,7,NULL,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,47,'Phantom Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,101,86,NULL,NULL,NULL,NULL,NULL,380,212,57,0,0,0,NULL,NULL,NULL,7,NULL,49,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,48,'Destroy Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,99,86,NULL,NULL,NULL,NULL,NULL,380,62,19,0,165,0,NULL,NULL,NULL,7,NULL,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,49,'Seraphim Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,100,86,NULL,NULL,NULL,NULL,NULL,380,55,197,0,0,0,NULL,NULL,NULL,7,NULL,43,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,50,'Divine Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,95,86,NULL,NULL,NULL,NULL,NULL,380,32,29,0,138,0,NULL,NULL,NULL,7,NULL,36,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,51,'Royal Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,101,86,NULL,NULL,NULL,NULL,NULL,380,105,38,0,0,0,NULL,NULL,NULL,7,NULL,34,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,52,'Hades Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,100,86,NULL,NULL,NULL,NULL,NULL,380,60,15,0,181,0,NULL,NULL,NULL,7,NULL,31,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,53,'Succubus Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,142,90,NULL,NULL,NULL,NULL,NULL,400,56,19,0,157,0,NULL,NULL,NULL,6,NULL,38,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,3,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,54,'Lazy Wind Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,142,90,NULL,NULL,NULL,NULL,NULL,400,67,151,0,0,0,NULL,NULL,NULL,7,NULL,59,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,55,'Dark Devil Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,142,90,NULL,NULL,NULL,NULL,NULL,400,45,13,0,171,0,NULL,NULL,NULL,7,NULL,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,56,'Sticky Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,142,90,NULL,NULL,NULL,NULL,NULL,400,48,180,0,0,0,NULL,NULL,NULL,7,NULL,52,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,3,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,57,'Hell Night Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,142,90,NULL,NULL,NULL,NULL,NULL,400,194,52,0,0,0,NULL,NULL,NULL,7,NULL,58,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,3,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,58,'Ambition Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,142,90,NULL,NULL,NULL,NULL,NULL,400,112,22,0,0,0,NULL,NULL,NULL,7,NULL,43,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,3,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,62,'Scale Gloves',5,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,22,255,NULL,NULL,NULL,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,10,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,1,1,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,63,'Silk Gloves',5,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14,255,NULL,NULL,NULL,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,8,NULL,6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,64,'Sphinx Gloves',5,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,28,255,NULL,NULL,NULL,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,0,NULL,12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,65,'Violent Wind Gloves',5,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,24,255,NULL,NULL,NULL,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,6,NULL,13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,66,'Adamantine Gloves',5,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,57,255,NULL,NULL,NULL,NULL,NULL,150,0,0,0,0,0,NULL,NULL,NULL,6,NULL,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,67,'Dragon Gloves',5,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,52,255,NULL,NULL,NULL,NULL,NULL,150,0,0,0,0,0,NULL,NULL,NULL,6,NULL,19,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,68,'Guardian Gloves',5,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,255,NULL,NULL,NULL,NULL,NULL,150,0,0,0,0,0,NULL,NULL,NULL,6,NULL,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,69,'Legendary Gloves',5,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,44,255,NULL,NULL,NULL,NULL,NULL,150,0,0,0,0,0,NULL,NULL,NULL,0,NULL,16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,70,'Red Wing Gloves',5,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,44,255,NULL,NULL,NULL,NULL,NULL,150,0,0,0,0,0,NULL,NULL,NULL,8,NULL,18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,71,'Atlans Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,70,255,NULL,NULL,NULL,NULL,NULL,150,0,0,0,0,0,NULL,NULL,NULL,6,NULL,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,74,'Stormwing Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,142,90,NULL,NULL,NULL,NULL,NULL,400,200,33,0,0,0,NULL,NULL,NULL,7,NULL,65,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,75,'Light Lord Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,142,90,NULL,NULL,NULL,NULL,NULL,400,14,31,0,127,0,NULL,NULL,NULL,7,NULL,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,3,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,76,'Magic Knight Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,142,90,NULL,NULL,NULL,NULL,NULL,400,48,17,0,142,0,NULL,NULL,NULL,7,NULL,49,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,3,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,91,'Robust Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,24,NULL,NULL,NULL,NULL,NULL,0,90,65,0,0,0,NULL,NULL,NULL,5,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,92,'Gru Hill Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,40,40,NULL,NULL,NULL,NULL,NULL,0,200,150,0,0,0,NULL,NULL,NULL,5,NULL,12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,93,'Princie Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,60,60,NULL,NULL,NULL,NULL,NULL,0,160,140,0,0,0,NULL,NULL,NULL,6,NULL,15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,94,'Hirat Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,81,70,NULL,NULL,NULL,NULL,NULL,0,374,93,0,0,0,NULL,NULL,NULL,6,NULL,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,95,'Sate Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,81,70,NULL,NULL,NULL,NULL,NULL,0,93,374,0,0,0,NULL,NULL,NULL,6,NULL,18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,96,'Robust Gloves',5,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,255,NULL,NULL,NULL,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,5,NULL,12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,97,'Princie Gloves',5,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,60,255,NULL,NULL,NULL,NULL,NULL,150,0,0,0,0,0,NULL,NULL,NULL,6,NULL,17,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,98,'Bloodangel Knight Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,400,131,38,0,0,0,NULL,NULL,NULL,6,NULL,58,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,99,'Bloodangel Wizard Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,400,33,11,0,0,0,NULL,NULL,NULL,6,NULL,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,100,'Bloodangel Elf Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,400,31,68,0,0,0,NULL,NULL,NULL,6,NULL,48,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,3,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,101,'Bloodangel Summoner Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,400,25,5,0,0,0,NULL,NULL,NULL,8,NULL,36,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,3,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,102,'Bloodangel Magic Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,400,115,47,0,0,0,NULL,NULL,NULL,7,NULL,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,3,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,103,'Bloodangel Lord Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,400,50,13,0,0,0,NULL,NULL,NULL,5,NULL,39,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,3,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,105,'Bloodangel Lancer Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,400,53,53,0,0,0,NULL,NULL,NULL,8,NULL,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,3,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,106,'Soul Knight Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,900,131,38,0,0,0,NULL,NULL,NULL,6,NULL,178,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,107,'Soul Wizard Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,900,33,11,0,0,0,NULL,NULL,NULL,6,NULL,159,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,108,'Soul Elf Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,900,31,68,0,0,0,NULL,NULL,NULL,6,NULL,170,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,4,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,109,'Soul Summoner Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,900,25,5,0,0,0,NULL,NULL,NULL,8,NULL,158,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,4,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,110,'Soul Magic Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,900,115,47,0,0,0,NULL,NULL,NULL,7,NULL,175,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,4,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,111,'Soul Lord Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,900,50,13,0,0,0,NULL,NULL,NULL,5,NULL,159,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,4,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,113,'Soul Lancer Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,900,53,53,0,0,0,NULL,NULL,NULL,8,NULL,157,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,4,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,114,'Soul Elf Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,900,12,25,0,148,0,NULL,NULL,NULL,7,NULL,93,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,4,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,115,'Soul Magic Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,900,30,27,0,151,0,NULL,NULL,NULL,7,NULL,172,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,4,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,116,'Rune Padded Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,28,NULL,NULL,NULL,NULL,NULL,0,20,0,0,0,0,NULL,NULL,NULL,5,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,117,'Rune Sphinx Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,27,36,NULL,NULL,NULL,NULL,NULL,0,20,0,0,0,0,NULL,NULL,NULL,5,NULL,8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,118,'Legendary Rune Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,43,42,NULL,NULL,NULL,NULL,NULL,0,20,5,0,0,0,NULL,NULL,NULL,6,NULL,14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,119,'Kenaz Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,69,67,NULL,NULL,NULL,NULL,NULL,0,34,12,0,22,0,NULL,NULL,NULL,7,NULL,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,120,'Divine Rune Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,99,86,NULL,NULL,NULL,NULL,NULL,380,40,13,0,112,0,NULL,NULL,NULL,7,NULL,43,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,121,'Light Load Rune Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,141,90,NULL,NULL,NULL,NULL,NULL,400,39,12,0,113,0,NULL,NULL,NULL,8,NULL,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,3,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,122,'Bloodangel Rune Mage Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,400,27,10,0,117,0,NULL,NULL,NULL,9,NULL,62,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,3,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,123,'Darkangel Rune Mage Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,600,27,10,0,117,0,NULL,NULL,NULL,9,NULL,77,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,3,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,124,'Rune Sphinx Gloves',5,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,28,255,NULL,NULL,NULL,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,5,NULL,12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,125,'Legendary Rune Gloves',5,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,44,255,NULL,NULL,NULL,NULL,NULL,150,0,0,0,0,0,NULL,NULL,NULL,6,NULL,16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,126,'Legendary Rune Gloves (Bound)',5,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,100,NULL,NULL,NULL,NULL,NULL,0,50,50,0,0,0,NULL,NULL,NULL,6,NULL,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,127,'Holyangel Rune Mage Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,800,27,10,0,117,0,NULL,NULL,NULL,9,NULL,121,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,3,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,128,'Soul Rune Mage Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,900,27,10,0,117,0,NULL,NULL,NULL,9,NULL,164,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,4,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,129,'Blue Eye Rune Mage Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1000,27,10,0,117,0,NULL,NULL,NULL,9,NULL,210,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,4,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,130,'Dragon Gloves (Bound)',5,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,100,NULL,NULL,NULL,NULL,NULL,0,50,50,0,0,0,NULL,NULL,NULL,6,NULL,29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,131,'Legendary Gloves (Bound)',5,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,100,NULL,NULL,NULL,NULL,NULL,0,50,50,0,0,0,NULL,NULL,NULL,6,NULL,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,132,'Guardian Gloves (Bound)',5,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,100,NULL,NULL,NULL,NULL,NULL,0,50,50,0,0,0,NULL,NULL,NULL,6,NULL,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,133,'Atlans Gloves (Bound)',5,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,100,NULL,NULL,NULL,NULL,NULL,0,50,50,0,0,0,NULL,NULL,NULL,6,NULL,35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,134,'Adamantine Gloves (Bound)',5,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,100,NULL,NULL,NULL,NULL,NULL,0,50,50,0,0,0,NULL,NULL,NULL,6,NULL,33,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,135,'Red Winged Gloves (Bound)',5,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,100,NULL,NULL,NULL,NULL,NULL,0,50,50,0,0,0,NULL,NULL,NULL,6,NULL,28,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,137,'Princie Gloves (Bound)',5,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,100,NULL,NULL,NULL,NULL,NULL,0,50,50,0,0,0,NULL,NULL,NULL,6,NULL,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,138,'Darkangel Knight Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,600,131,38,0,0,0,NULL,NULL,NULL,6,NULL,83,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,139,'Darkangel Wizard Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,600,33,11,0,0,0,NULL,NULL,NULL,6,NULL,65,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,140,'Darkangel Elf Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,600,31,68,0,0,0,NULL,NULL,NULL,6,NULL,73,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,3,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,141,'Darkangel Summoner Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,600,25,5,0,0,0,NULL,NULL,NULL,8,NULL,61,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,3,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,142,'Darkangel Magic Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,600,115,47,0,0,0,NULL,NULL,NULL,7,NULL,80,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,3,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,143,'Darkangel Lord Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,600,50,13,0,0,0,NULL,NULL,NULL,5,NULL,64,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,3,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,145,'Darkangel Lancer Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,600,53,53,0,0,0,NULL,NULL,NULL,8,NULL,70,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,3,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,148,'Grace Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,111,86,NULL,NULL,NULL,NULL,NULL,380,60,41,0,0,0,NULL,NULL,NULL,0,NULL,32,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,149,'Constant Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,143,90,NULL,NULL,NULL,NULL,NULL,400,67,47,0,0,0,NULL,NULL,NULL,0,NULL,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,3,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,150,'Holyangel Knight Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,800,131,38,0,0,0,NULL,NULL,NULL,6,NULL,133,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,151,'Holyangel Wizard Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,800,33,11,0,0,0,NULL,NULL,NULL,6,NULL,115,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,152,'Holyangel Elf Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,800,31,68,0,0,0,NULL,NULL,NULL,6,NULL,123,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,3,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,153,'Holyangel Summoner Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,800,25,5,0,0,0,NULL,NULL,NULL,8,NULL,111,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,3,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,154,'Holyangel Magic Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,800,115,47,0,0,0,NULL,NULL,NULL,7,NULL,130,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,3,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,155,'Holyangel Lord Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,800,50,13,0,0,0,NULL,NULL,NULL,5,NULL,114,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,3,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,157,'Holyangel Lancer Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,800,53,53,0,0,0,NULL,NULL,NULL,8,NULL,113,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,3,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,158,'Bloodangel Elf Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,400,12,25,0,148,0,NULL,NULL,NULL,7,NULL,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,3,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,159,'Darkangel Elf Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,600,12,25,0,148,0,NULL,NULL,NULL,7,NULL,33,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,3,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,160,'Holyangel Elf Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,800,12,25,0,148,0,NULL,NULL,NULL,7,NULL,52,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,3,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,161,'Bloodangel Magic Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,400,30,27,0,151,0,NULL,NULL,NULL,7,NULL,52,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,3,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,162,'Darkangel Magic Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,600,30,27,0,151,0,NULL,NULL,NULL,7,NULL,77,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,3,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,163,'Holyangel Magic Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,800,30,27,0,151,0,NULL,NULL,NULL,7,NULL,127,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,3,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,164,'Blue Eye Knight Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1000,131,38,0,0,0,NULL,NULL,NULL,6,NULL,223,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,165,'Blue Eye Wizard Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1000,33,11,0,0,0,NULL,NULL,NULL,6,NULL,204,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,166,'Blue Eye Elf Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1000,31,68,0,0,0,NULL,NULL,NULL,6,NULL,215,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,4,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,167,'Blue Eye Summoner Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1000,25,5,0,0,0,NULL,NULL,NULL,8,NULL,203,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,4,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,168,'Blue Eye Magic Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1000,115,47,0,0,0,NULL,NULL,NULL,7,NULL,220,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,4,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,169,'Blue Eye Lord Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1000,50,13,0,0,0,NULL,NULL,NULL,5,NULL,204,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,4,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,171,'Blue Eye Lancer Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1000,53,53,0,0,0,NULL,NULL,NULL,8,NULL,202,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,4,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,172,'Blue Eye Elf Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1000,12,25,0,148,0,NULL,NULL,NULL,7,NULL,138,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,4,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,173,'Blue Eye Magic Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1000,30,27,0,151,0,NULL,NULL,NULL,7,NULL,217,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,4,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,174,'Slayer Red Wing Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,30,NULL,NULL,NULL,NULL,NULL,0,0,80,0,0,0,NULL,NULL,NULL,5,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,NULL,NULL,0),(10,175,'Slayer Ancient Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,23,40,NULL,NULL,NULL,NULL,NULL,0,0,110,0,0,0,NULL,NULL,NULL,5,NULL,8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,NULL,NULL,0),(10,176,'Slayer Demonic Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,53,60,NULL,NULL,NULL,NULL,NULL,0,30,120,0,0,0,NULL,NULL,NULL,5,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,NULL,NULL,0),(10,177,'Night Wing Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,95,70,NULL,NULL,NULL,NULL,NULL,0,30,125,0,0,0,NULL,NULL,NULL,5,NULL,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,NULL,NULL,0),(10,178,'Fidelity Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,101,86,NULL,NULL,NULL,NULL,NULL,380,32,130,0,0,0,NULL,NULL,NULL,0,NULL,47,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,2,0,NULL,NULL,NULL,NULL,NULL,0),(10,179,'Trace Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,143,90,NULL,NULL,NULL,NULL,NULL,400,33,135,0,0,0,NULL,NULL,NULL,0,NULL,56,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,NULL,NULL,NULL,NULL,NULL,0),(10,180,'Bloodangel Slayer Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,400,38,131,0,0,0,NULL,NULL,NULL,7,NULL,64,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,NULL,NULL,NULL,NULL,NULL,0),(10,181,'Darkangel Slayer Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,600,38,131,0,0,0,NULL,NULL,NULL,7,NULL,74,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,NULL,NULL,NULL,NULL,NULL,0),(10,182,'Holyangel Slayer Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,800,38,131,0,0,0,NULL,NULL,NULL,7,NULL,124,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,NULL,NULL,NULL,NULL,NULL,0),(10,183,'Soul Slayer Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,900,38,131,0,0,0,NULL,NULL,NULL,7,NULL,169,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,4,0,NULL,NULL,NULL,NULL,NULL,0),(10,184,'Blue Eye Slayer Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1000,38,131,0,0,0,NULL,NULL,NULL,7,NULL,214,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,4,0,NULL,NULL,NULL,NULL,NULL,0),(10,185,'Silver Heart Slayer Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1100,38,131,0,0,0,NULL,NULL,NULL,7,NULL,259,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,4,0,NULL,NULL,NULL,NULL,NULL,0),(10,186,'Slayer Ancient Gloves',5,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,32,255,NULL,NULL,NULL,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,6,NULL,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,NULL,NULL,0),(10,187,'Slayer Demonic Gloves',5,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,255,NULL,NULL,NULL,NULL,NULL,150,0,0,0,0,0,NULL,NULL,NULL,6,NULL,15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,NULL,NULL,0),(10,188,'Slayer Demonic Gloves(Bound)',5,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,100,NULL,NULL,NULL,NULL,NULL,0,50,50,0,0,0,NULL,NULL,NULL,6,NULL,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,NULL,NULL,0),(10,189,'Silver Heart Knight Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1100,131,38,0,0,0,NULL,NULL,NULL,6,NULL,268,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,190,'Silver Heart Wizard Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1100,33,11,0,0,0,NULL,NULL,NULL,6,NULL,249,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,191,'Silver Heart Elf Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1100,31,68,0,0,0,NULL,NULL,NULL,6,NULL,260,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,4,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,192,'Silver Heart Summoner Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1100,25,5,0,0,0,NULL,NULL,NULL,8,NULL,248,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,4,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,193,'Silver Heart Magic Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1100,115,47,0,0,0,NULL,NULL,NULL,7,NULL,265,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,4,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,194,'Silver Heart Lord Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1100,50,13,0,0,0,NULL,NULL,NULL,5,NULL,249,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,4,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,196,'Silver Heart Lancer Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1100,53,53,0,0,0,NULL,NULL,NULL,8,NULL,247,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,4,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,197,'Silver Heart Elf Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1100,12,25,0,148,0,NULL,NULL,NULL,7,NULL,183,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,4,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,198,'Silver Heart Magic Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1100,30,27,0,151,0,NULL,NULL,NULL,7,NULL,262,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,4,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,199,'Silver Heart Rune Wizard Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1100,27,10,0,117,0,NULL,NULL,NULL,9,NULL,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,4,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,200,'Blood Angel Knight Gloves (Conviction)',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,400,0,19,0,104,0,NULL,NULL,NULL,6,NULL,76,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,201,'Dark Angel Knight Gloves (Conviction)',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,600,0,19,0,104,0,NULL,NULL,NULL,6,NULL,101,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,202,'Holy Angel Knight Gloves (Conviction)',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,800,0,19,0,104,0,NULL,NULL,NULL,6,NULL,151,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,203,'Soul Knight Gloves (Conviction)',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,900,0,19,0,104,0,NULL,NULL,NULL,6,NULL,196,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,204,'Blue Eye Night Gloves (Conviction)',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1000,0,19,0,104,0,NULL,NULL,NULL,6,NULL,241,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,205,'Silver Heart Knight Gloves (Conviction)',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1100,0,19,0,104,0,NULL,NULL,NULL,6,NULL,286,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,206,'Leather Gunner Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,30,NULL,NULL,NULL,NULL,NULL,0,38,12,0,0,0,NULL,NULL,NULL,5,NULL,6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,1,NULL,NULL,NULL,NULL,NULL,0),(10,207,'Scaled Glove',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,25,40,NULL,NULL,NULL,NULL,NULL,0,31,14,0,40,0,NULL,NULL,NULL,6,NULL,14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,1,NULL,NULL,NULL,NULL,NULL,0),(10,208,'Light Plate Gunner Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,40,42,NULL,NULL,NULL,NULL,NULL,0,59,32,0,70,0,NULL,NULL,NULL,6,NULL,31,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,1,NULL,NULL,NULL,NULL,NULL,0),(10,209,'Frere Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,100,68,NULL,NULL,NULL,NULL,NULL,0,60,34,0,70,0,NULL,NULL,NULL,7,NULL,51,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,1,NULL,NULL,NULL,NULL,NULL,0),(10,210,'Titan Gunner Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,110,86,NULL,NULL,NULL,NULL,NULL,380,55,43,0,91,0,NULL,NULL,NULL,7,NULL,77,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,2,NULL,NULL,NULL,NULL,NULL,0),(10,211,'Lazy Wind Gunner Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,140,90,NULL,NULL,NULL,NULL,NULL,400,47,37,0,81,0,NULL,NULL,NULL,7,NULL,85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,3,NULL,NULL,NULL,NULL,NULL,0),(10,212,'Blood Angel Gun Crusher Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,400,54,44,0,108,0,NULL,NULL,NULL,7,NULL,72,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,3,NULL,NULL,NULL,NULL,NULL,0),(10,213,'Dark Angel Gun Crusher Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,600,54,44,0,108,0,NULL,NULL,NULL,7,NULL,82,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,3,NULL,NULL,NULL,NULL,NULL,0),(10,214,'Holy Angel Gun Crusher Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,800,54,44,0,108,0,NULL,NULL,NULL,7,NULL,132,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,3,NULL,NULL,NULL,NULL,NULL,0),(10,215,'Soul Gun Crusher Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,900,54,44,0,108,0,NULL,NULL,NULL,7,NULL,177,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,4,NULL,NULL,NULL,NULL,NULL,0),(10,218,'Scaled Gloves',5,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,28,255,NULL,NULL,NULL,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,6,NULL,23,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,1,NULL,NULL,NULL,NULL,NULL,0),(10,219,'Frere Gloves',5,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,59,255,NULL,NULL,NULL,NULL,NULL,150,0,0,0,0,0,NULL,NULL,NULL,7,NULL,34,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,1,NULL,NULL,NULL,NULL,NULL,0),(10,220,'Frere Gloves (Bound)',5,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,100,NULL,NULL,NULL,NULL,NULL,0,50,50,0,0,0,NULL,NULL,NULL,7,NULL,51,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,1,NULL,NULL,NULL,NULL,NULL,0),(10,221,'Manticore Knight Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1200,131,38,0,0,0,NULL,NULL,NULL,6,NULL,313,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,222,'Manticore Wizard Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1200,33,11,0,0,0,NULL,NULL,NULL,6,NULL,294,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,223,'Manticore Elf Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1200,31,68,0,0,0,NULL,NULL,NULL,6,NULL,305,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,4,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,224,'Manticore Summoner Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1200,25,5,0,0,0,NULL,NULL,NULL,8,NULL,293,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,4,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,225,'Manticore Magic Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1200,115,47,0,0,0,NULL,NULL,NULL,7,NULL,310,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,4,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,226,'Manticore Road Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1200,50,13,0,0,0,NULL,NULL,NULL,5,NULL,294,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,4,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,228,'Manticore Lancer Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1200,53,53,0,0,0,NULL,NULL,NULL,8,NULL,292,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,4,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,229,'Manticore Elf Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1200,12,25,0,148,0,NULL,NULL,NULL,7,NULL,228,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,4,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,230,'Manticore Magic Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1200,30,27,0,151,0,NULL,NULL,NULL,7,NULL,307,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,4,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,231,'Manticore Rune Wizard Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1200,27,10,0,117,0,NULL,NULL,NULL,9,NULL,300,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,4,0,0,NULL,NULL,NULL,NULL,NULL,0),(10,232,'Manticore Slayer Gloves',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1200,38,131,0,0,0,NULL,NULL,NULL,7,NULL,304,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,4,0,NULL,NULL,NULL,NULL,NULL,0),(10,233,'Manticore Night Gloves (Conviction)',5,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1200,0,19,0,104,0,NULL,NULL,NULL,6,NULL,331,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,0,'Bronze Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12,34,NULL,NULL,NULL,NULL,NULL,0,80,20,0,0,0,NULL,NULL,NULL,NULL,10,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,1,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,1,'Dragon Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,54,68,NULL,NULL,NULL,NULL,NULL,0,120,30,0,0,0,NULL,NULL,NULL,NULL,2,15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,2,'Pad Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,28,NULL,NULL,NULL,NULL,NULL,0,20,0,0,0,0,NULL,NULL,NULL,NULL,10,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,3,'Legendary Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,46,42,NULL,NULL,NULL,NULL,NULL,0,30,0,0,0,0,NULL,NULL,NULL,NULL,0,12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,4,'Bone Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16,30,NULL,NULL,NULL,NULL,NULL,0,30,0,0,0,0,NULL,NULL,NULL,NULL,6,6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,5,'Leather Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,30,NULL,NULL,NULL,NULL,NULL,0,80,0,0,0,0,NULL,NULL,NULL,NULL,12,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,1,1,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,6,'Scale Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,22,40,NULL,NULL,NULL,NULL,NULL,0,110,0,0,0,0,NULL,NULL,NULL,NULL,8,8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,1,1,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,7,'Sphinx Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,30,36,NULL,NULL,NULL,NULL,NULL,0,30,0,0,0,0,NULL,NULL,NULL,NULL,8,9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,8,'Brass Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,32,44,NULL,NULL,NULL,NULL,NULL,0,100,30,0,0,0,NULL,NULL,NULL,NULL,6,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,1,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,9,'Plate Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,42,50,NULL,NULL,NULL,NULL,NULL,0,130,0,0,0,0,NULL,NULL,NULL,NULL,4,12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,1,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,10,'Vine Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,22,NULL,NULL,NULL,NULL,NULL,0,30,60,0,0,0,NULL,NULL,NULL,NULL,0,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,11,'Silk Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15,26,NULL,NULL,NULL,NULL,NULL,0,30,70,0,0,0,NULL,NULL,NULL,NULL,0,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,12,'Wind Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,27,32,NULL,NULL,NULL,NULL,NULL,0,30,80,0,0,0,NULL,NULL,NULL,NULL,0,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,13,'Spirit Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,40,38,NULL,NULL,NULL,NULL,NULL,0,40,80,0,0,0,NULL,NULL,NULL,NULL,0,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,14,'Guardian Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,52,45,NULL,NULL,NULL,NULL,NULL,0,40,80,0,0,0,NULL,NULL,NULL,NULL,0,16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,15,'Storm Crow Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,72,80,NULL,NULL,NULL,NULL,NULL,0,150,70,0,0,0,NULL,NULL,NULL,NULL,2,22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,16,'Black Dragon Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,78,74,NULL,NULL,NULL,NULL,NULL,0,170,60,0,0,0,NULL,NULL,NULL,NULL,2,24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,17,'Dark Phoenix Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,93,80,NULL,NULL,NULL,NULL,NULL,0,198,60,0,0,0,NULL,NULL,NULL,NULL,2,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,18,'Grand Soul Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,76,67,NULL,NULL,NULL,NULL,NULL,0,59,10,0,0,0,NULL,NULL,NULL,NULL,0,22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,19,'Holy Spirit Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,81,74,NULL,NULL,NULL,NULL,NULL,0,50,110,0,0,0,NULL,NULL,NULL,NULL,0,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,2,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,20,'Thunder Hawk Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,92,82,NULL,NULL,NULL,NULL,NULL,0,150,70,0,0,0,NULL,NULL,NULL,NULL,2,37,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,21,'Great Dragon Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,98,86,NULL,NULL,NULL,NULL,NULL,0,200,58,0,0,0,NULL,NULL,NULL,NULL,0,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,22,'Dark Soul Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,95,75,NULL,NULL,NULL,NULL,NULL,0,55,18,0,0,0,NULL,NULL,NULL,NULL,0,31,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,23,'Hurricane Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,110,90,NULL,NULL,NULL,NULL,NULL,0,162,66,0,0,0,NULL,NULL,NULL,NULL,0,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,24,'Red Spirit Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,87,80,NULL,NULL,NULL,NULL,NULL,0,52,115,0,0,0,NULL,NULL,NULL,NULL,0,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,2,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,25,'Light Plate Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,45,42,NULL,NULL,NULL,NULL,NULL,0,70,20,0,0,0,NULL,NULL,NULL,NULL,0,13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,26,'Adamantine Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,60,56,NULL,NULL,NULL,NULL,NULL,0,77,21,0,0,0,NULL,NULL,NULL,NULL,0,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,27,'Dark Steel Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,83,70,NULL,NULL,NULL,NULL,NULL,0,84,22,0,0,0,NULL,NULL,NULL,NULL,0,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,28,'Dark Master Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,95,78,NULL,NULL,NULL,NULL,NULL,0,80,21,0,0,0,NULL,NULL,NULL,NULL,0,33,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,29,'Dragon Knight Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,119,90,NULL,NULL,NULL,NULL,NULL,380,170,60,0,0,0,NULL,NULL,NULL,NULL,0,63,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,30,'Venom Mist Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,119,86,NULL,NULL,NULL,NULL,NULL,380,44,15,0,0,0,NULL,NULL,NULL,NULL,0,47,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,31,'Sylphid Ray Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,119,86,NULL,NULL,NULL,NULL,NULL,380,38,80,0,0,0,NULL,NULL,NULL,NULL,0,53,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,2,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,32,'Volcano Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,131,95,NULL,NULL,NULL,NULL,NULL,380,145,60,0,0,0,NULL,NULL,NULL,NULL,0,61,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,33,'Sunlight Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,121,82,NULL,NULL,NULL,NULL,NULL,380,62,16,0,0,0,NULL,NULL,NULL,NULL,0,44,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,34,'Ashcrow Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,68,72,NULL,NULL,NULL,NULL,NULL,0,160,50,0,0,0,NULL,NULL,NULL,NULL,0,19,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,35,'Eclipse Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,68,54,NULL,NULL,NULL,NULL,NULL,0,53,12,0,0,0,NULL,NULL,NULL,NULL,0,17,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,36,'Iris Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,68,59,NULL,NULL,NULL,NULL,NULL,0,50,70,0,0,0,NULL,NULL,NULL,NULL,0,23,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,37,'Valiant Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,98,81,NULL,NULL,NULL,NULL,NULL,0,155,50,0,0,0,NULL,NULL,NULL,NULL,0,29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,38,'Glorious Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,98,74,NULL,NULL,NULL,NULL,NULL,0,80,21,0,0,0,NULL,NULL,NULL,NULL,0,29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,39,'Violent Wind Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,26,36,NULL,NULL,NULL,NULL,NULL,0,27,0,0,0,0,NULL,NULL,NULL,NULL,0,11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,40,'Red Wing Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,46,42,NULL,NULL,NULL,NULL,NULL,0,25,4,0,0,0,NULL,NULL,NULL,NULL,0,15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,41,'Ancient Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,65,54,NULL,NULL,NULL,NULL,NULL,0,53,16,0,0,0,NULL,NULL,NULL,NULL,0,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,42,'Demonic Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,76,67,NULL,NULL,NULL,NULL,NULL,0,60,10,0,0,0,NULL,NULL,NULL,NULL,0,28,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,2,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,43,'Storm Blitz Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,95,75,NULL,NULL,NULL,NULL,NULL,380,57,20,0,0,0,NULL,NULL,NULL,NULL,0,38,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,2,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,44,'Eternal Wing Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,99,86,NULL,NULL,NULL,NULL,NULL,380,62,20,0,170,0,NULL,NULL,NULL,NULL,0,32,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,2,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,45,'Titan Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,96,86,NULL,NULL,NULL,NULL,NULL,380,222,32,0,0,0,NULL,NULL,NULL,NULL,0,57,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,46,'Brave Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,93,86,NULL,NULL,NULL,NULL,NULL,380,74,162,0,0,0,NULL,NULL,NULL,NULL,0,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,47,'Phantom Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,97,86,NULL,NULL,NULL,NULL,NULL,380,212,57,0,0,0,NULL,NULL,NULL,NULL,0,54,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,48,'Destroy Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,94,86,NULL,NULL,NULL,NULL,NULL,380,62,19,0,165,0,NULL,NULL,NULL,NULL,0,44,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,49,'Seraphim Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,97,86,NULL,NULL,NULL,NULL,NULL,380,55,197,0,0,0,NULL,NULL,NULL,NULL,0,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,50,'Divine Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,92,86,NULL,NULL,NULL,NULL,NULL,380,32,29,0,138,0,NULL,NULL,NULL,NULL,0,35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,51,'Royal Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,98,86,NULL,NULL,NULL,NULL,NULL,380,105,38,0,0,0,NULL,NULL,NULL,NULL,0,38,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,52,'Hades Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,94,86,NULL,NULL,NULL,NULL,NULL,380,60,15,0,181,0,NULL,NULL,NULL,NULL,0,34,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,53,'Succubus Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,140,90,NULL,NULL,NULL,NULL,NULL,400,56,19,0,157,0,NULL,NULL,NULL,NULL,0,41,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,3,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,54,'Lazy Wind Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,140,90,NULL,NULL,NULL,NULL,NULL,400,67,151,0,0,0,NULL,NULL,NULL,NULL,0,62,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,55,'Dark Devil Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,140,90,NULL,NULL,NULL,NULL,NULL,400,45,13,0,171,0,NULL,NULL,NULL,NULL,0,43,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,56,'Sticky Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,140,90,NULL,NULL,NULL,NULL,NULL,400,48,180,0,0,0,NULL,NULL,NULL,NULL,0,51,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,3,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,57,'Hell Night Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,140,90,NULL,NULL,NULL,NULL,NULL,400,194,52,0,0,0,NULL,NULL,NULL,NULL,0,63,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,3,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,58,'Ambition Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,140,90,NULL,NULL,NULL,NULL,NULL,400,112,22,0,0,0,NULL,NULL,NULL,NULL,0,47,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,3,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,59,'Sacred Fire Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,52,NULL,NULL,NULL,NULL,NULL,0,85,0,75,0,0,NULL,NULL,NULL,NULL,0,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,60,'Storm Jahad Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,62,68,NULL,NULL,NULL,NULL,NULL,0,100,0,90,0,0,NULL,NULL,NULL,NULL,0,28,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,61,'Piercing Groove Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,82,82,NULL,NULL,NULL,NULL,NULL,0,115,0,100,0,0,NULL,NULL,NULL,NULL,0,36,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,62,'Scale Boots',6,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,22,255,NULL,NULL,NULL,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,8,12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,1,1,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,63,'Silk Boots',6,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15,255,NULL,NULL,NULL,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,0,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,64,'Sphinx Boots',6,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,30,255,NULL,NULL,NULL,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,8,13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,65,'Violent Wind Boots',6,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,26,255,NULL,NULL,NULL,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,0,15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,66,'Adamantinel Boots',6,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,60,255,NULL,NULL,NULL,NULL,NULL,150,0,0,0,0,0,NULL,NULL,NULL,NULL,0,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,67,'Dragon Boots',6,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,54,255,NULL,NULL,NULL,NULL,NULL,150,0,0,0,0,0,NULL,NULL,NULL,NULL,2,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,68,'Guardian Boots',6,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,52,255,NULL,NULL,NULL,NULL,NULL,150,0,0,0,0,0,NULL,NULL,NULL,NULL,0,23,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,69,'Legendary Boots',6,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,46,255,NULL,NULL,NULL,NULL,NULL,150,0,0,0,0,0,NULL,NULL,NULL,NULL,0,17,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,70,'Red Wing Boots',6,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,46,255,NULL,NULL,NULL,NULL,NULL,150,0,0,0,0,0,NULL,NULL,NULL,NULL,0,17,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,71,'Atlans Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,72,255,NULL,NULL,NULL,NULL,NULL,150,0,0,0,0,0,NULL,NULL,NULL,NULL,2,27,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,72,'Storm Jahad Boots',6,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,62,255,NULL,NULL,NULL,NULL,NULL,150,0,0,0,0,0,NULL,NULL,NULL,NULL,0,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,73,'Phoenix Soul Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,119,88,NULL,NULL,NULL,NULL,NULL,380,97,0,85,0,0,NULL,NULL,NULL,NULL,0,57,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,74,'Stormwing Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,140,90,NULL,NULL,NULL,NULL,NULL,400,200,33,0,0,0,NULL,NULL,NULL,NULL,0,66,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,75,'Light Lord Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,140,90,NULL,NULL,NULL,NULL,NULL,400,14,31,0,127,0,NULL,NULL,NULL,NULL,0,44,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,3,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,76,'Magic Knight Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,140,90,NULL,NULL,NULL,NULL,NULL,400,48,17,0,142,0,NULL,NULL,NULL,NULL,0,53,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,3,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,91,'Robust Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14,26,NULL,NULL,NULL,NULL,NULL,0,88,65,0,0,0,NULL,NULL,NULL,NULL,0,11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,92,'Gru Hill Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,44,42,NULL,NULL,NULL,NULL,NULL,0,195,150,0,0,0,NULL,NULL,NULL,NULL,0,14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,93,'Princie Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,64,62,NULL,NULL,NULL,NULL,NULL,0,160,140,0,0,0,NULL,NULL,NULL,NULL,0,18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,94,'Hirat Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,85,72,NULL,NULL,NULL,NULL,NULL,0,361,95,0,0,0,NULL,NULL,NULL,NULL,0,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,95,'Sate Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,85,72,NULL,NULL,NULL,NULL,NULL,0,95,361,0,0,0,NULL,NULL,NULL,NULL,0,23,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,96,'Robust Boots',6,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14,255,NULL,NULL,NULL,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,0,13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,97,'Princie Boots',6,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,64,255,NULL,NULL,NULL,NULL,NULL,150,0,0,0,0,0,NULL,NULL,NULL,NULL,0,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,98,'Bloodangel Knight Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,400,137,39,0,0,0,NULL,NULL,NULL,NULL,0,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,99,'Bloodangel Wizard Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,400,36,12,0,0,0,NULL,NULL,NULL,NULL,0,41,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,100,'Bloodangel Elf Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,400,32,70,0,0,0,NULL,NULL,NULL,NULL,0,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,3,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,101,'Bloodangel Summoner Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,400,32,5,0,0,0,NULL,NULL,NULL,NULL,0,38,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,3,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,102,'Bloodangel Magic Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,400,124,50,0,0,0,NULL,NULL,NULL,NULL,0,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,3,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,103,'Bloodangel Lord Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,400,53,14,0,0,0,NULL,NULL,NULL,NULL,0,43,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,3,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,104,'Bloodangel Fighter Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,400,66,0,0,0,0,NULL,NULL,NULL,NULL,0,46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,3,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,105,'Bloodangel Lancer Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,400,57,57,0,0,0,NULL,NULL,NULL,NULL,0,41,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,3,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,106,'Soul Knight Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,900,137,39,0,0,0,NULL,NULL,NULL,NULL,0,182,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,107,'Soul Wizard Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,900,36,12,0,0,0,NULL,NULL,NULL,NULL,0,164,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,108,'Soul Elf Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,900,32,70,0,0,0,NULL,NULL,NULL,NULL,0,172,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,4,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,109,'Soul Summoner Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,900,32,5,0,0,0,NULL,NULL,NULL,NULL,0,161,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,4,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,110,'Soul Magic Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,900,124,50,0,0,0,NULL,NULL,NULL,NULL,0,180,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,4,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,111,'Soul Lord Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,900,53,14,0,0,0,NULL,NULL,NULL,NULL,0,162,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,4,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,112,'Soul Fighter Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,900,66,0,0,0,0,NULL,NULL,NULL,NULL,0,166,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,4,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,113,'Soul Lancer Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,900,57,57,0,0,0,NULL,NULL,NULL,NULL,0,160,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,4,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,114,'Soul Elf Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,900,13,25,0,149,0,NULL,NULL,NULL,NULL,0,96,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,4,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,115,'Soul Magic Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,900,31,28,0,148,0,NULL,NULL,NULL,NULL,0,176,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,4,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,116,'Rune Padded Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,28,NULL,NULL,NULL,NULL,NULL,0,20,0,0,0,0,NULL,NULL,NULL,NULL,0,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,117,'Rune Sphinx Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,29,36,NULL,NULL,NULL,NULL,NULL,0,30,0,0,0,0,NULL,NULL,NULL,NULL,0,9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,118,'Legendary Rune Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,45,42,NULL,NULL,NULL,NULL,NULL,0,30,5,0,0,0,NULL,NULL,NULL,NULL,0,15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,119,'Kenaz Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,75,67,NULL,NULL,NULL,NULL,NULL,0,35,13,0,23,0,NULL,NULL,NULL,NULL,0,32,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,120,'Divine Rune Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,93,86,NULL,NULL,NULL,NULL,NULL,380,40,13,0,114,0,NULL,NULL,NULL,NULL,0,46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,121,'Light Load Rune Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,139,90,NULL,NULL,NULL,NULL,NULL,400,39,12,0,115,0,NULL,NULL,NULL,NULL,0,58,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,3,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,122,'Bloodangel Rune Mage Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,400,30,11,0,119,0,NULL,NULL,NULL,NULL,0,53,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,3,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,123,'Darkangel Rune Mage Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,600,30,11,0,119,0,NULL,NULL,NULL,NULL,0,70,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,3,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,124,'Rune Sphinx Boots',6,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,30,255,NULL,NULL,NULL,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,8,13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,125,'Legendary Rune Boots',6,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,46,255,NULL,NULL,NULL,NULL,NULL,150,0,0,0,0,0,NULL,NULL,NULL,NULL,0,17,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,126,'Legendary Rune Boots (Bound)',6,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,100,NULL,NULL,NULL,NULL,NULL,0,50,50,0,0,0,NULL,NULL,NULL,NULL,2,27,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,127,'Holyangel Rune Mage Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,800,30,11,0,119,0,NULL,NULL,NULL,NULL,0,114,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,3,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,128,'Soul Rune Mage Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,900,30,11,0,119,0,NULL,NULL,NULL,NULL,0,169,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,4,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,129,'Blue Eye Rune Mage Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1000,30,11,0,119,0,NULL,NULL,NULL,NULL,0,214,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,4,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,130,'Dragon Boots (Bound)',6,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,100,NULL,NULL,NULL,NULL,NULL,0,50,50,0,0,0,NULL,NULL,NULL,NULL,2,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,131,'Legendary Boots (Bound)',6,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,100,NULL,NULL,NULL,NULL,NULL,0,50,50,0,0,0,NULL,NULL,NULL,NULL,2,27,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,132,'Guardian Boots (Bound)',6,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,100,NULL,NULL,NULL,NULL,NULL,0,50,50,0,0,0,NULL,NULL,NULL,NULL,2,31,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,133,'Atlans Boots (Bound)',6,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,100,NULL,NULL,NULL,NULL,NULL,0,50,50,0,0,0,NULL,NULL,NULL,NULL,2,37,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,134,'Adamantine Boots (Bound)',6,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,100,NULL,NULL,NULL,NULL,NULL,0,50,50,0,0,0,NULL,NULL,NULL,NULL,2,35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,135,'Red Winged Boots (Bound)',6,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,100,NULL,NULL,NULL,NULL,NULL,0,50,50,0,0,0,NULL,NULL,NULL,NULL,2,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,136,'Storm Zahard Boots (Bound)',6,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,100,NULL,NULL,NULL,NULL,NULL,0,50,50,0,0,0,NULL,NULL,NULL,NULL,2,35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,137,'Princie Boots (Bound)',6,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,100,NULL,NULL,NULL,NULL,NULL,0,50,50,0,0,0,NULL,NULL,NULL,NULL,2,33,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,138,'Darkangel Knight Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,600,137,39,0,0,0,NULL,NULL,NULL,NULL,0,85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,139,'Darkangel Wizard Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,600,36,12,0,0,0,NULL,NULL,NULL,NULL,0,66,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,140,'Darkangel Elf Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,600,32,70,0,0,0,NULL,NULL,NULL,NULL,0,75,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,3,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,141,'Darkangel Summoner Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,600,32,5,0,0,0,NULL,NULL,NULL,NULL,0,63,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,3,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,142,'Darkangel Magic Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,600,124,50,0,0,0,NULL,NULL,NULL,NULL,0,85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,3,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,143,'Darkangel Lord Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,600,53,14,0,0,0,NULL,NULL,NULL,NULL,0,68,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,3,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,144,'Darkangel Fighter Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,600,66,0,0,0,0,NULL,NULL,NULL,NULL,0,71,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,3,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,145,'Darkangel Lancer Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,600,57,57,0,0,0,NULL,NULL,NULL,NULL,0,66,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,3,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,146,'Tigris Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,111,86,NULL,NULL,NULL,NULL,NULL,380,61,15,0,0,0,NULL,NULL,NULL,NULL,0,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,147,'Crimson Skull Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,143,90,NULL,NULL,NULL,NULL,NULL,400,68,17,0,0,0,NULL,NULL,NULL,NULL,0,47,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,3,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,148,'Grace Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,111,86,NULL,NULL,NULL,NULL,NULL,380,58,43,0,0,0,NULL,NULL,NULL,NULL,0,35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,149,'Constant Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,143,90,NULL,NULL,NULL,NULL,NULL,400,64,44,0,0,0,NULL,NULL,NULL,NULL,0,43,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,3,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,150,'Holyangel Knight Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,800,137,39,0,0,0,NULL,NULL,NULL,NULL,0,135,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,151,'Holyangel Wizard Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,800,36,12,0,0,0,NULL,NULL,NULL,NULL,0,116,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,152,'Holyangel Elf Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,800,32,70,0,0,0,NULL,NULL,NULL,NULL,0,125,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,3,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,153,'Holyangel Summoner Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,800,32,5,0,0,0,NULL,NULL,NULL,NULL,0,113,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,3,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,154,'Holyangel Magic Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,800,124,50,0,0,0,NULL,NULL,NULL,NULL,0,135,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,3,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,155,'Holyangel Lord Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,800,53,14,0,0,0,NULL,NULL,NULL,NULL,0,118,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,3,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,156,'Holyangel Fighter Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,800,66,0,0,0,0,NULL,NULL,NULL,NULL,0,121,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,3,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,157,'Holyangel Lancer Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,800,57,57,0,0,0,NULL,NULL,NULL,NULL,0,116,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,3,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,158,'Bloodangel Elf Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,400,13,25,0,149,0,NULL,NULL,NULL,NULL,0,23,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,3,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,159,'Darkangel Elf Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,600,13,25,0,149,0,NULL,NULL,NULL,NULL,0,36,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,3,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,160,'Holyangel Elf Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,800,13,25,0,149,0,NULL,NULL,NULL,NULL,0,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,3,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,161,'Bloodangel Magic Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,400,31,28,0,148,0,NULL,NULL,NULL,NULL,0,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,3,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,162,'Darkangel Magic Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,600,31,28,0,148,0,NULL,NULL,NULL,NULL,0,80,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,3,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,163,'Holyangel Magic Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,800,31,28,0,148,0,NULL,NULL,NULL,NULL,0,130,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,3,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,164,'Blue Eye Knight Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1000,137,39,0,0,0,NULL,NULL,NULL,NULL,0,227,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,165,'Blue Eye Wizard Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1000,36,12,0,0,0,NULL,NULL,NULL,NULL,0,209,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,166,'Blue Eye Elf Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1000,32,70,0,0,0,NULL,NULL,NULL,NULL,0,217,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,4,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,167,'Blue Eye Summoner Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1000,32,5,0,0,0,NULL,NULL,NULL,NULL,0,206,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,4,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,168,'Blue Eye Magic Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1000,124,50,0,0,0,NULL,NULL,NULL,NULL,0,225,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,4,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,169,'Blue Eye Lord Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1000,53,14,0,0,0,NULL,NULL,NULL,NULL,0,207,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,4,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,170,'Blue Eye Fighter Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1000,66,0,0,0,0,NULL,NULL,NULL,NULL,0,211,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,4,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,171,'Blue Eye Lancer Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1000,57,57,0,0,0,NULL,NULL,NULL,NULL,0,205,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,4,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,172,'Blue Eye Elf Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1000,13,25,0,149,0,NULL,NULL,NULL,NULL,0,141,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,4,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,173,'Blue Eye Magic Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1000,31,28,0,148,0,NULL,NULL,NULL,NULL,0,221,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,4,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,174,'Slayer Red Wing Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6,30,NULL,NULL,NULL,NULL,NULL,0,0,80,0,0,0,NULL,NULL,NULL,NULL,0,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,NULL,NULL,0),(11,175,'Slayer Ancient Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,23,40,NULL,NULL,NULL,NULL,NULL,0,0,110,0,0,0,NULL,NULL,NULL,NULL,0,9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,NULL,NULL,0),(11,176,'Slayer Demonic Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,55,60,NULL,NULL,NULL,NULL,NULL,0,30,120,0,0,0,NULL,NULL,NULL,NULL,0,18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,NULL,NULL,0),(11,177,'Night Wing Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,99,70,NULL,NULL,NULL,NULL,NULL,0,30,125,0,0,0,NULL,NULL,NULL,NULL,0,52,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,NULL,NULL,0),(11,178,'Fidelity Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,97,86,NULL,NULL,NULL,NULL,NULL,380,32,130,0,0,0,NULL,NULL,NULL,NULL,0,59,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,2,0,NULL,NULL,NULL,NULL,NULL,0),(11,179,'Trace Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,138,90,NULL,NULL,NULL,NULL,NULL,400,33,135,0,0,0,NULL,NULL,NULL,NULL,0,68,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,NULL,NULL,NULL,NULL,NULL,0),(11,180,'Bloodangel Slayer Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,400,39,137,0,0,0,NULL,NULL,NULL,NULL,0,76,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,NULL,NULL,NULL,NULL,NULL,0),(11,181,'Darkangel Slayer Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,600,39,137,0,0,0,NULL,NULL,NULL,NULL,0,86,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,NULL,NULL,NULL,NULL,NULL,0),(11,182,'Holyangel Slayer Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,800,39,137,0,0,0,NULL,NULL,NULL,NULL,0,136,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,NULL,NULL,NULL,NULL,NULL,0),(11,183,'Soul Slayer Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,900,39,137,0,0,0,NULL,NULL,NULL,NULL,0,181,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,4,0,NULL,NULL,NULL,NULL,NULL,0),(11,184,'Blue Eye Slayer Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1000,39,137,0,0,0,NULL,NULL,NULL,NULL,0,226,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,4,0,NULL,NULL,NULL,NULL,NULL,0),(11,185,'Silver Heart Slayer Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1100,39,137,0,0,0,NULL,NULL,NULL,NULL,0,271,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,4,0,NULL,NULL,NULL,NULL,NULL,0),(11,186,'Slayer Ancient Boots',6,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,32,255,NULL,NULL,NULL,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,0,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,NULL,NULL,0),(11,187,'Slayer Demonic Boots',6,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,255,NULL,NULL,NULL,NULL,NULL,150,0,0,0,0,0,NULL,NULL,NULL,NULL,0,23,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,NULL,NULL,0),(11,188,'Slayer Demonic Boots(Bound)',6,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,100,NULL,NULL,NULL,NULL,NULL,0,50,50,0,0,0,NULL,NULL,NULL,NULL,2,34,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,NULL,NULL,0),(11,189,'Silver Heart Knight Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1100,137,39,0,0,0,NULL,NULL,NULL,NULL,0,272,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,190,'Silver Heart Wizard Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1100,36,12,0,0,0,NULL,NULL,NULL,NULL,0,254,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,191,'Silver Heart Elf Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1100,32,70,0,0,0,NULL,NULL,NULL,NULL,0,262,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,4,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,192,'Silver Heart Summoner Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1100,32,5,0,0,0,NULL,NULL,NULL,NULL,0,251,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,4,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,193,'Silver Heart Magic Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1100,124,50,0,0,0,NULL,NULL,NULL,NULL,0,270,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,4,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,194,'Silver Heart Lord Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1100,53,14,0,0,0,NULL,NULL,NULL,NULL,0,252,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,4,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,195,'Silver Heart Fighter Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1100,66,0,0,0,0,NULL,NULL,NULL,NULL,0,256,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,4,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,196,'Silver Heart Lancer Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1100,57,57,0,0,0,NULL,NULL,NULL,NULL,0,250,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,4,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,197,'Silver Heart Elf Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1100,13,25,0,149,0,NULL,NULL,NULL,NULL,0,186,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,4,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,198,'Silver Heart Magic Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1100,31,28,0,148,0,NULL,NULL,NULL,NULL,0,266,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,4,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,199,'Silver Heart Rune Wizard Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1100,30,11,0,119,0,NULL,NULL,NULL,NULL,0,259,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,4,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,200,'Blood Angel Knight Boots (Conviction)',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,400,0,18,0,105,0,NULL,NULL,NULL,NULL,0,78,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,201,'Dark Angel Knight Boots (Conviction)',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,600,0,18,0,105,0,NULL,NULL,NULL,NULL,0,103,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,202,'Holy Angel Night Boots (Conviction)',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,800,0,18,0,105,0,NULL,NULL,NULL,NULL,0,153,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,203,'Soul Knight Boots (Conviction)',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,900,0,18,0,105,0,NULL,NULL,NULL,NULL,0,200,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,204,'Blue Eye Night Boots (Conviction)',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1000,0,18,0,105,0,NULL,NULL,NULL,NULL,0,245,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,205,'Silver Heart Knight Boots (Conviction)',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1100,0,18,0,105,0,NULL,NULL,NULL,NULL,0,290,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,206,'Leather Gunner Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,30,NULL,NULL,NULL,NULL,NULL,0,36,10,0,0,0,NULL,NULL,NULL,NULL,12,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,1,NULL,NULL,NULL,NULL,NULL,0),(11,207,'Scale Gunner Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,25,40,NULL,NULL,NULL,NULL,NULL,0,29,12,0,38,0,NULL,NULL,NULL,NULL,8,12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,1,NULL,NULL,NULL,NULL,NULL,0),(11,208,'Light Plate Gunner Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,40,42,NULL,NULL,NULL,NULL,NULL,0,57,30,0,68,0,NULL,NULL,NULL,NULL,0,29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,1,NULL,NULL,NULL,NULL,NULL,0),(11,209,'Frere Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,100,68,NULL,NULL,NULL,NULL,NULL,0,58,32,0,68,0,NULL,NULL,NULL,NULL,2,49,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,1,NULL,NULL,NULL,NULL,NULL,0),(11,210,'Titan Gunner Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,110,86,NULL,NULL,NULL,NULL,NULL,380,52,40,0,88,0,NULL,NULL,NULL,NULL,0,74,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,2,NULL,NULL,NULL,NULL,NULL,0),(11,211,'Lazy Wind Gunner Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,140,90,NULL,NULL,NULL,NULL,NULL,400,44,34,0,78,0,NULL,NULL,NULL,NULL,0,82,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,3,NULL,NULL,NULL,NULL,NULL,0),(11,212,'Blood Angel Gun Crasher Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,400,52,42,0,106,0,NULL,NULL,NULL,NULL,0,70,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,3,NULL,NULL,NULL,NULL,NULL,0),(11,213,'Dark Angel Gun Crasher Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,600,52,42,0,106,0,NULL,NULL,NULL,NULL,0,80,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,3,NULL,NULL,NULL,NULL,NULL,0),(11,214,'Holy Angel Gun Crasher Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,800,52,42,0,106,0,NULL,NULL,NULL,NULL,0,130,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,3,NULL,NULL,NULL,NULL,NULL,0),(11,215,'Soul Gun Crasher Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,900,52,42,0,106,0,NULL,NULL,NULL,NULL,0,175,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,4,NULL,NULL,NULL,NULL,NULL,0),(11,218,'Scale Gunner Boots',6,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,28,255,NULL,NULL,NULL,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,0,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,1,NULL,NULL,NULL,NULL,NULL,0),(11,219,'Frere Boots',6,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,59,255,NULL,NULL,NULL,NULL,NULL,150,0,0,0,0,0,NULL,NULL,NULL,NULL,0,32,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,1,NULL,NULL,NULL,NULL,NULL,0),(11,220,'Frere Boots (Bound)',6,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,100,NULL,NULL,NULL,NULL,NULL,0,50,50,0,0,0,NULL,NULL,NULL,NULL,0,49,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,1,NULL,NULL,NULL,NULL,NULL,0),(11,221,'Manticore Knight Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1200,137,39,0,0,0,NULL,NULL,NULL,NULL,0,317,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,222,'Manticore Wizard Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1200,36,12,0,0,0,NULL,NULL,NULL,NULL,0,299,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,223,'Manticore Elf Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1200,32,70,0,0,0,NULL,NULL,NULL,NULL,0,307,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,4,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,224,'Manticore Summer Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1200,32,5,0,0,0,NULL,NULL,NULL,NULL,0,296,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,4,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,225,'Manticore Magic Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1200,124,50,0,0,0,NULL,NULL,NULL,NULL,0,315,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,4,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,226,'Manticore Lord Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1200,53,14,0,0,0,NULL,NULL,NULL,NULL,0,297,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,4,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,227,'Manticore Fighter Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1200,66,0,0,0,0,NULL,NULL,NULL,NULL,0,301,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,4,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,228,'Manticore Lancer Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1200,57,57,0,0,0,NULL,NULL,NULL,NULL,0,295,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,4,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,229,'Manticore Elf Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1200,13,25,0,149,0,NULL,NULL,NULL,NULL,0,231,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,4,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,230,'Manticore Magic Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1200,31,28,0,148,0,NULL,NULL,NULL,NULL,0,311,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,4,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,231,'Manticore Rune Wizard Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1200,30,11,0,119,0,NULL,NULL,NULL,NULL,0,304,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,4,0,0,NULL,NULL,NULL,NULL,NULL,0),(11,232,'Manticore Slayer Boots',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1200,39,137,0,0,0,NULL,NULL,NULL,NULL,0,316,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,4,0,NULL,NULL,NULL,NULL,NULL,0),(11,233,'Manticore Knight Boots (Conviction)',6,2,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,100,NULL,NULL,NULL,NULL,NULL,1200,0,18,0,105,0,NULL,NULL,NULL,NULL,0,335,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,0,'Wings of Elf',7,3,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,100,200,NULL,NULL,NULL,NULL,NULL,150,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,1,'Wings of Heaven',7,5,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,100,200,NULL,NULL,NULL,NULL,NULL,150,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,1,0,0,1,0,1,0,1,NULL,NULL,NULL,NULL,NULL,0),(12,2,'Wings of Satan',7,5,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,100,200,NULL,NULL,NULL,NULL,NULL,150,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,1,0,0,0,0,0,1,0,NULL,NULL,NULL,NULL,NULL,0),(12,3,'Wings of Spirits',7,5,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,200,NULL,NULL,NULL,NULL,NULL,215,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,2,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,4,'Wings of Soul',7,5,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,200,NULL,NULL,NULL,NULL,NULL,215,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,0,0,0,0,0,0,0,2,0,2,NULL,NULL,NULL,NULL,NULL,0),(12,5,'Wings of Dragon',7,3,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,200,NULL,NULL,NULL,NULL,NULL,215,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,0,0,0,0,0,2,0,NULL,NULL,NULL,NULL,NULL,0),(12,6,'Wings of Darkness',7,4,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,200,NULL,NULL,NULL,NULL,NULL,215,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,7,'Orb of Twisting Slash',NULL,1,1,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,47,0,NULL,NULL,NULL,NULL,NULL,80,0,0,0,0,29000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,1,0,0,0,0,0,1,0,NULL,NULL,NULL,NULL,NULL,0),(12,8,'Healing Orb',NULL,1,1,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8,0,NULL,NULL,NULL,NULL,NULL,0,52,0,0,0,800,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,9,'Orb of Greater Fortitude',NULL,1,1,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13,0,NULL,NULL,NULL,NULL,NULL,0,72,0,0,0,3000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,10,'Orb of Greater Damage',NULL,1,1,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,18,0,NULL,NULL,NULL,NULL,NULL,0,92,0,0,0,7000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,11,'Orb of Summoning',NULL,1,1,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,0,NULL,NULL,NULL,NULL,NULL,0,30,0,0,0,150,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,12,'Orb of Rageful Blow',NULL,1,1,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,78,0,NULL,NULL,NULL,NULL,NULL,170,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,0,0,0,0,0,2,0,NULL,NULL,NULL,NULL,NULL,0),(12,13,'Orb of Impale',NULL,1,1,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,20,0,NULL,NULL,NULL,NULL,NULL,28,0,0,0,0,10000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,14,'Orb of Greater Fortitude',NULL,1,1,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,60,0,NULL,NULL,NULL,NULL,NULL,120,0,0,0,0,43000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,15,'Jewel of Chaos',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12,1,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,0,0,0,1,1,0,NULL,NULL,NULL,NULL,NULL,0),(12,16,'Orb of Fire Slash',NULL,1,1,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,60,0,NULL,NULL,NULL,NULL,NULL,0,0,596,0,0,51000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,17,'Orb of Penetration',NULL,1,1,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,64,0,NULL,NULL,NULL,NULL,NULL,130,0,0,0,0,72000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,18,'Orb of Ice Arrow',NULL,1,1,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,81,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,646,195000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,2,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,19,'Orb of Death Stab',NULL,1,1,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,72,0,NULL,NULL,NULL,NULL,NULL,160,0,0,0,0,85000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,21,'Scroll of FireBurst',NULL,1,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,74,0,NULL,NULL,NULL,NULL,NULL,0,79,0,0,0,115000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,22,'Scroll of Summon',NULL,1,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,98,0,NULL,NULL,NULL,NULL,NULL,0,153,0,400,0,375000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,23,'Scroll of Critical Damage',NULL,1,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,82,0,NULL,NULL,NULL,NULL,NULL,0,102,0,300,0,220000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,24,'Scroll of Electric Spark',NULL,1,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,92,0,NULL,NULL,NULL,NULL,NULL,0,126,0,340,0,295000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,26,'Gem of secret',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,0,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,32,'box of red ribbon',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,0,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,33,'box of green ribbon',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,0,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,34,'box of blue ribbon',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,0,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,35,'Scroll of Fire Scream',NULL,1,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,102,0,NULL,NULL,NULL,NULL,NULL,0,150,0,70,0,300000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,36,'Wing of Storm',7,4,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,220,NULL,NULL,NULL,NULL,NULL,400,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,37,'Wing of Eternal',7,4,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,220,NULL,NULL,NULL,NULL,NULL,400,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,38,'Wing of Illusion',7,4,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,220,NULL,NULL,NULL,NULL,NULL,400,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,3,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,39,'Wing of Ruin',7,4,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,220,NULL,NULL,NULL,NULL,NULL,400,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,3,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,40,'Cape of Emperor',7,2,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,220,NULL,NULL,NULL,NULL,NULL,400,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,3,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,41,'Wing of Curse',7,4,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,100,200,NULL,NULL,NULL,NULL,NULL,150,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,1,1,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,42,'Wing of Despair',7,4,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,200,NULL,NULL,NULL,NULL,NULL,215,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,2,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,43,'Wing of Dimension',7,4,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,220,NULL,NULL,NULL,NULL,NULL,400,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,3,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,44,'Crystal of Destruction',NULL,1,1,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,100,0,NULL,NULL,NULL,NULL,NULL,220,0,0,0,0,380000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,45,'Crystal of Multi-Shot',NULL,1,1,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,100,0,NULL,NULL,NULL,NULL,NULL,220,0,0,0,0,380000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,2,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,46,'Crystal of Recovery',NULL,1,1,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,100,0,NULL,NULL,NULL,NULL,NULL,220,168,0,0,0,250000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,2,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,47,'Crystal of Flame Strike',NULL,1,1,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,100,0,NULL,NULL,NULL,NULL,NULL,220,0,0,0,0,380000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,48,'Scroll of Chaotic Diseier',NULL,1,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,100,0,NULL,NULL,NULL,NULL,NULL,220,84,0,0,0,380000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,49,'Cape of Fighter',7,2,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,200,NULL,NULL,NULL,NULL,NULL,180,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,50,'Cape of Overrule',7,2,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,220,NULL,NULL,NULL,NULL,NULL,400,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,3,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,60,'Seed (Fire)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,500000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,61,'Seed (Water)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,500000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,62,'Seed (Ice)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,500000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,63,'Seed (Wind)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,500000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,64,'Seed (Lightning)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,500000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,65,'Seed (Earth)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,500000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,70,'Sphere',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,102,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,30000000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,71,'Sphere (Di)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,122,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,150000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,72,'Sphere (Tri)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,132,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,200000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,73,'Sphere (Tetra)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,132,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,250000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,100,'Seed Sphere (Fire)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1050000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,101,'Seed Sphere (Water)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1050000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,102,'Seed Sphere (Ice)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1050000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,103,'Seed Sphere (Wind)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1050000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,104,'Seed Sphere (Lightning)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1050000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,105,'Seed Sphere (Earth)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1050000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,106,'Seed Sphere (Fire)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1125000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,107,'Seed Sphere (Water)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1125000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,108,'Seed Sphere (Ice)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1125000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,109,'Seed Sphere (Wind)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1125000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,110,'Seed Sphere (Lightning)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1125000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,111,'Seed Sphere (Earth)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1125000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,112,'Seed Sphere (Fire)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1200000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,113,'Seed Sphere (Water)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1200000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,114,'Seed Sphere (Ice)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1200000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,115,'Seed Sphere (Wind)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1200000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,116,'Seed Sphere (Lightning)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1200000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,117,'Seed Sphere (Earth)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1200000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,118,'Seed Sphere (Fire)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1275000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,119,'Seed Sphere (Water)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1275000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,120,'Seed Sphere (Ice)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1275000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,121,'Seed Sphere (Wind)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1275000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,122,'Seed Sphere (Lightning)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1275000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,123,'Seed Sphere (Earth)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1275000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,124,'Seed Sphere (Fire)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1350000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,125,'Seed Sphere (Water)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1350000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,126,'Seed Sphere (Ice)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1350000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,127,'Seed Sphere (Wind)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1350000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,128,'Seed Sphere (Lightning)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1350000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,129,'Seed Sphere (Earth)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1350000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,130,'Small Cape of Lord',7,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,200,NULL,NULL,NULL,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,131,'Small Wing of Curse',7,3,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,200,NULL,NULL,NULL,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,132,'Small Wings of Elf',7,3,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,200,NULL,NULL,NULL,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,133,'Small Wings of Heaven',7,3,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,200,NULL,NULL,NULL,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,1,0,0,0,0,1,0,1,NULL,NULL,NULL,NULL,NULL,0),(12,134,'Small Wings of Satan',7,3,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,200,NULL,NULL,NULL,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,1,0,0,0,0,0,1,0,NULL,NULL,NULL,NULL,NULL,0),(12,135,'Little Warrior\'s Cloak',7,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,200,NULL,NULL,NULL,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,144,'Mithril Fragment',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,145,'Mithril',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1500000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,146,'Elixir Fragment',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,147,'Elixir',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1500000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,148,'Mithril Fragment Bunch',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1500000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,149,'Elixir Fragment Bunch',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1500000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,150,'Jewel Combination Frame',NULL,2,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,151,'Spirit Powder',NULL,1,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,200,'Muren\'s Book of Magic',236,3,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,100,5,NULL,NULL,NULL,NULL,NULL,30,45,0,0,0,0,NULL,NULL,NULL,NULL,NULL,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,201,'Scroll of Etramu',236,3,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,5,NULL,NULL,NULL,NULL,NULL,50,70,0,0,0,0,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,202,'Lorencia Knights\' Iron Shield',236,3,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,5,NULL,NULL,NULL,NULL,NULL,96,129,0,0,0,0,NULL,NULL,NULL,NULL,NULL,231,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,203,'Iron Shield of the Magic',236,3,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,180,5,NULL,NULL,NULL,NULL,NULL,96,129,0,0,0,0,NULL,NULL,NULL,NULL,NULL,231,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,204,'Hero Elixir',236,3,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,5,NULL,NULL,NULL,NULL,NULL,134,180,0,0,0,0,NULL,NULL,NULL,NULL,NULL,184,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,205,'Brave Hero Elixir',236,3,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,180,5,NULL,NULL,NULL,NULL,NULL,134,180,0,0,0,0,NULL,NULL,NULL,NULL,NULL,184,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,206,'Gladiator\'s Dagger',236,3,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,5,NULL,NULL,NULL,NULL,NULL,168,227,0,0,0,0,NULL,NULL,NULL,NULL,NULL,132,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,207,'Merciless Gladiator\'s Dagger',236,3,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,180,5,NULL,NULL,NULL,NULL,NULL,168,227,0,0,0,0,NULL,NULL,NULL,NULL,NULL,132,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,208,'Kundun\'s Madness Blade',236,3,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,300,1,NULL,NULL,NULL,NULL,NULL,181,245,0,0,0,0,NULL,NULL,NULL,NULL,NULL,249,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,209,'Kundun\'s Magic Spell Scroll',236,3,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,300,1,NULL,NULL,NULL,NULL,NULL,181,245,0,0,0,0,NULL,NULL,NULL,NULL,NULL,249,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,210,'Empire Guardians\' Stronghold',236,3,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,300,1,NULL,NULL,NULL,NULL,NULL,181,245,0,0,0,0,NULL,NULL,NULL,NULL,NULL,249,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,211,'Ancient Icarus Scroll',236,3,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,300,1,NULL,NULL,NULL,NULL,NULL,181,245,0,0,0,0,NULL,NULL,NULL,NULL,NULL,249,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,212,'Arca\'s Prophecy',236,3,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,300,1,NULL,NULL,NULL,NULL,NULL,209,284,0,0,0,0,NULL,NULL,NULL,NULL,NULL,288,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,213,'Antonia\'s Sword',236,3,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,300,1,NULL,NULL,NULL,NULL,NULL,209,284,0,0,0,0,NULL,NULL,NULL,NULL,NULL,288,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,214,'Kundun\'s Seal Scroll',236,3,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,300,1,NULL,NULL,NULL,NULL,NULL,209,284,0,0,0,0,NULL,NULL,NULL,NULL,NULL,288,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,215,'Pentagram for Beginners',236,3,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,25,40,0,0,0,0,NULL,NULL,NULL,NULL,NULL,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,216,'Iron Shield (Bound)',236,3,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,0,NULL,NULL,NULL,NULL,NULL,100,140,0,0,0,0,NULL,NULL,NULL,NULL,NULL,231,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,217,'Thoughtful Sage\'s Jewel',236,3,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,180,5,NULL,NULL,NULL,NULL,NULL,96,129,0,0,0,0,NULL,NULL,NULL,NULL,NULL,231,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,218,'Magic Spell Scroll (Bound)',236,3,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,300,0,NULL,NULL,NULL,NULL,NULL,204,267,0,0,0,0,NULL,NULL,NULL,NULL,NULL,270,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,221,'Errtel of Anger',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,110,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,222,'Errtel of Anger for Beginners',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,110,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,231,'Errtel of Blessing',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,115,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,232,'Errtel of Blessing for Beginners',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,115,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,241,'Errtel of Integrity',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,120,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,242,'Errtel of Integrity for Beginners',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,120,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,251,'Errtel of Divinity',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,125,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,252,'Errtel of Divinity for Beginners',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,125,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,261,'Errtel of Radiance',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,130,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,262,'Cloak of Death',7,2,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,210,NULL,NULL,NULL,NULL,NULL,290,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,27,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,1,0,1,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,263,'Wings of Chaos',7,4,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,210,NULL,NULL,NULL,NULL,NULL,290,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,1,0,0,0,0,0,2,0,NULL,NULL,NULL,NULL,NULL,0),(12,264,'Wings of Magic',7,4,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,210,NULL,NULL,NULL,NULL,NULL,290,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,37,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,0,0,1,0,2,0,0,2,0,2,NULL,NULL,NULL,NULL,NULL,0),(12,265,'Wings of Life',7,4,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,210,NULL,NULL,NULL,NULL,NULL,290,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,37,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,2,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,266,'Wings of Conqueror',7,4,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,220,NULL,NULL,NULL,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,200,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,2,2,1,1,2,1,1,2,2,2,NULL,NULL,NULL,NULL,NULL,0),(12,267,'Wings of Angel and Devil',7,4,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,350,220,NULL,NULL,NULL,NULL,NULL,350,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,100,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,2,2,1,1,2,1,1,2,2,2,NULL,NULL,NULL,NULL,NULL,0),(12,268,'Wings of Conqueror',7,4,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,220,NULL,NULL,NULL,NULL,NULL,400,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,3,3,3,3,3,3,3,3,3,3,NULL,NULL,NULL,NULL,NULL,0),(12,269,'Cloak of Limit',7,2,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,200,NULL,NULL,NULL,NULL,NULL,180,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,270,'Cloak of Transcendence',7,2,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,220,NULL,NULL,NULL,NULL,NULL,400,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,3,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,271,'Spin Step Scroll',NULL,1,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,53,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,150,100000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,272,'Obsidian Scroll',NULL,1,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,74,0,NULL,NULL,NULL,NULL,NULL,0,200,0,0,0,120000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,273,'Magic Pin Scroll',NULL,1,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,80,0,NULL,NULL,NULL,NULL,NULL,0,0,300,0,300,200000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,274,'Harsh Strike Scroll',NULL,1,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,58,0,NULL,NULL,NULL,NULL,NULL,0,0,150,0,0,100000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,275,'Shining Peak Scroll',NULL,1,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,92,0,NULL,NULL,NULL,NULL,NULL,220,200,0,0,0,300000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,276,'Wrath Scroll',NULL,1,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,66,0,NULL,NULL,NULL,NULL,NULL,0,0,200,0,200,120000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,277,'Breche Scroll',NULL,1,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,92,0,NULL,NULL,NULL,NULL,NULL,300,0,0,0,0,200000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,278,'Small Cloak of Limit',7,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,200,NULL,NULL,NULL,NULL,NULL,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,279,'Cloak of Death (Bound)',7,2,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,210,NULL,NULL,NULL,NULL,NULL,290,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,27,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,1,0,1,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,280,'Wings of Chaos (Bound)',7,4,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,210,NULL,NULL,NULL,NULL,NULL,290,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,1,0,0,0,0,0,1,0,NULL,NULL,NULL,NULL,NULL,0),(12,281,'Wings of Magic (Bound)',7,4,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,210,NULL,NULL,NULL,NULL,NULL,290,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,37,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,0,0,1,0,0,1,0,1,NULL,NULL,NULL,NULL,NULL,0),(12,282,'Wings of Life (Bound)',7,4,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,210,NULL,NULL,NULL,NULL,NULL,290,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,37,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,283,'[PC Room] Wings of Good and Evil',7,4,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,350,220,NULL,NULL,NULL,NULL,NULL,350,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,100,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,2,2,1,1,2,1,1,2,2,2,NULL,NULL,NULL,NULL,NULL,0),(12,284,'[PC room] Cloak of Death',7,2,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,210,NULL,NULL,NULL,NULL,NULL,290,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,27,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,1,0,1,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,285,'[PC room] Wings of Chaos',7,4,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,210,NULL,NULL,NULL,NULL,NULL,290,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,1,0,0,0,0,0,2,0,NULL,NULL,NULL,NULL,NULL,0),(12,286,'[PC Room] Magic Wings',7,4,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,210,NULL,NULL,NULL,NULL,NULL,290,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,37,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,0,0,1,0,2,0,0,2,0,2,NULL,NULL,NULL,NULL,NULL,0),(12,287,'[PC room] Wings of Life',7,4,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,210,NULL,NULL,NULL,NULL,NULL,290,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,37,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,2,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,288,'Elemental Rune',NULL,1,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,289,'Orb of Fire Blow',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,0,NULL,NULL,NULL,NULL,NULL,400,0,1090,0,0,900000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,290,'Scroll of Meteor Strike(Grand Master)',NULL,1,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,0,NULL,NULL,NULL,NULL,NULL,400,1073,0,0,0,900000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,291,'Scroll of Meteor Storm',NULL,1,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,0,NULL,NULL,NULL,NULL,NULL,400,1160,0,0,0,900000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,292,'Scroll of Soul Seeker',NULL,1,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,0,NULL,NULL,NULL,NULL,NULL,400,1115,0,0,0,900000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,293,'Orb of Focus Shot',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,0,NULL,NULL,NULL,NULL,NULL,400,0,0,0,1302,900000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,3,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,295,'Parchment of Fire Beast',NULL,1,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,0,NULL,NULL,NULL,NULL,NULL,400,1220,0,0,0,900000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,3,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,296,'Parchment of Aqua Beast',NULL,1,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,0,NULL,NULL,NULL,NULL,NULL,400,1220,0,0,0,900000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,3,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,297,'Orb of Ice Blood',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,0,NULL,NULL,NULL,NULL,NULL,400,0,900,0,0,900000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,3,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,298,'Orb of Fire Blood',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,0,NULL,NULL,NULL,NULL,NULL,400,0,900,0,0,900000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,3,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,299,'Scroll of Dark Blast',NULL,1,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,0,NULL,NULL,NULL,NULL,NULL,400,1073,0,0,0,900000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,3,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,300,'Scroll of Meteor Strike(Dual Master)',NULL,1,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,0,NULL,NULL,NULL,NULL,NULL,400,1073,0,0,0,900000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,3,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,303,'Scroll of Wind Soul',NULL,1,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,0,NULL,NULL,NULL,NULL,NULL,400,0,717,0,0,900000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,3,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,305,'Parchment of Dark Phoenix Shot',NULL,1,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,0,NULL,NULL,NULL,NULL,NULL,400,0,0,0,987,900000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,3,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,306,'Runedil\'s Goldentune Harp',236,3,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,300,1,NULL,NULL,NULL,NULL,NULL,181,245,0,0,0,0,NULL,NULL,NULL,NULL,NULL,249,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,307,'Lemuria\'s Orb',236,3,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,300,1,NULL,NULL,NULL,NULL,NULL,181,245,0,0,0,0,NULL,NULL,NULL,NULL,NULL,249,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,308,'Norrwen\'s Bloodstring Lyra',236,3,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,300,1,NULL,NULL,NULL,NULL,NULL,181,245,0,0,0,0,NULL,NULL,NULL,NULL,NULL,249,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,311,'Seed Sphere (Fire)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1425000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,312,'Seed Sphere (Water)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1425000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,313,'Seed Sphere (Ice)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1425000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,314,'Seed Sphere (Wind)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1425000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,315,'Seed Sphere (Lightning)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1425000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,316,'Seed Sphere (Earth)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1425000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,317,'Seed Sphere (Fire)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,7,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1500000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,318,'Seed Sphere (Water)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,7,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1500000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,319,'Seed Sphere (Ice)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,7,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1500000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,320,'Seed Sphere (Wind)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,7,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1500000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,321,'Seed Sphere (Lightning)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,7,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1500000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,322,'Seed Sphere (Earth)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,7,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1500000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,323,'Seed Sphere (Fire)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1575000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,324,'Seed Sphere (Water)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1575000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,325,'Seed Sphere (Ice)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1575000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,326,'Seed Sphere (Wind)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1575000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,327,'Seed Sphere (Lightning)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1575000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,328,'Seed Sphere (Earth)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1575000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,329,'Seed Sphere (Fire)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1650000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,330,'Seed Sphere (Water)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1650000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,331,'Seed Sphere (Ice)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1650000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,332,'Seed Sphere (Wind)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1650000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,333,'Seed Sphere (Lightning)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1650000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,334,'Seed Sphere (Earth)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1650000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,335,'Seed Sphere (Fire)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1725000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,336,'Seed Sphere (Water)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1725000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,337,'Seed Sphere (Ice)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1725000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,338,'Seed Sphere (Wind)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1725000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,339,'Seed Sphere (Lightning)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1725000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,340,'Seed Sphere (Earth)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1725000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,401,'Sphere Upgrade Rune',NULL,1,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,10000000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,404,'Lower Magic Stone',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,50000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,405,'Medium Magic Stone',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,70000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,406,'Higher Magic Stone',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,100000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,407,'[Bound]Loch\'s Magic Solution',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,100000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,408,'[Bound]Finished Loch\'s Magic Solution',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,100000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,409,'[Bound]Condor\'s Magic Solution',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,100000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,410,'[Bound]Finished Condor\'s Magic Solution',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,100000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,413,'Spirit Hook Parchment',NULL,1,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,0,NULL,NULL,NULL,NULL,NULL,400,0,0,0,0,900000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,3,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,414,'Wings of Elysium',7,4,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,153,220,NULL,NULL,NULL,NULL,NULL,800,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,155,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,415,'Wings of Flame God',7,4,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,153,220,NULL,NULL,NULL,NULL,NULL,800,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,170,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,416,'Wing of Celestial Body',7,4,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,153,220,NULL,NULL,NULL,NULL,NULL,800,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,170,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,4,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,417,'Wings of Annihilation',7,4,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,153,220,NULL,NULL,NULL,NULL,NULL,800,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,170,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,4,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,418,'Cloak of Dominator',7,2,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,153,220,NULL,NULL,NULL,NULL,NULL,800,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,155,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,4,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,419,'Wings of Other World',7,4,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,153,220,NULL,NULL,NULL,NULL,NULL,800,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,170,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,4,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,420,'Cloak of Judgment',7,2,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,153,220,NULL,NULL,NULL,NULL,NULL,800,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,170,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,4,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,421,'Cloak of Isolation',7,2,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,153,220,NULL,NULL,NULL,NULL,NULL,800,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,170,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,4,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,422,'[Bound]Wings of Soul',7,5,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,200,NULL,NULL,NULL,NULL,NULL,215,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,0,0,0,0,0,0,0,2,0,2,NULL,NULL,NULL,NULL,NULL,0),(12,423,'[Bound]Wings of Dragon',7,3,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,200,NULL,NULL,NULL,NULL,NULL,215,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,0,0,0,0,0,2,0,NULL,NULL,NULL,NULL,NULL,0),(12,424,'[Bound]Wings of Spirits',7,5,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,200,NULL,NULL,NULL,NULL,NULL,215,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,2,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,425,'[Bound]Wings of Darkness',7,4,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,200,NULL,NULL,NULL,NULL,NULL,215,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,426,'[Bound]Cape of Lord',7,2,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,200,NULL,NULL,NULL,NULL,NULL,180,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,427,'[Bound]Wings of Despair',7,4,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,200,NULL,NULL,NULL,NULL,NULL,215,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,2,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,428,'[Bound]Cape of Fighter',7,2,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,200,NULL,NULL,NULL,NULL,NULL,180,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,429,'[Bound]Cloak of Limit',7,2,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,200,NULL,NULL,NULL,NULL,NULL,180,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,430,'[Bound]Wings of Eternal',7,4,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,220,NULL,NULL,NULL,NULL,NULL,400,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,431,'[Bound]Wings of Storm',7,4,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,220,NULL,NULL,NULL,NULL,NULL,400,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,432,'[Bound]Wings of Illusion',7,4,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,220,NULL,NULL,NULL,NULL,NULL,400,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,3,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,433,'[Bound]Wings of Ruin',7,4,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,220,NULL,NULL,NULL,NULL,NULL,400,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,3,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,434,'[Bound]Cape of Emperor',7,2,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,220,NULL,NULL,NULL,NULL,NULL,400,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,3,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,435,'[Bound]Wings of Dimensiona',7,4,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,220,NULL,NULL,NULL,NULL,NULL,400,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,3,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,436,'[Bound]Cape of Overrule',7,2,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,220,NULL,NULL,NULL,NULL,NULL,400,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,3,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,437,'[Bound]Cloak of Transcendence',7,2,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,220,NULL,NULL,NULL,NULL,NULL,400,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,3,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,446,'Loch Magic Bubble',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,50000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,447,'Condor Magic Bubble',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,70000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,449,'Earring of Wrath (Left)',238,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,300,130,NULL,NULL,NULL,NULL,NULL,17,20,0,0,0,100000,NULL,NULL,NULL,NULL,NULL,15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,450,'Earring of Forefathers (Left)',238,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,700,130,NULL,NULL,NULL,NULL,NULL,66,69,0,0,0,100000,NULL,NULL,NULL,NULL,NULL,36,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,451,'Earring of Honor (Left)',238,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,750,130,NULL,NULL,NULL,NULL,NULL,132,135,0,0,0,100000,NULL,NULL,NULL,NULL,NULL,102,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,457,'Earring of Wrath (Right)',237,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,700,130,NULL,NULL,NULL,NULL,NULL,37,40,0,0,0,100000,NULL,NULL,NULL,NULL,NULL,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,458,'Earring of Forefathers (Right)',237,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,750,130,NULL,NULL,NULL,NULL,NULL,106,109,0,0,0,100000,NULL,NULL,NULL,NULL,NULL,94,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,459,'Earrings of Honor (Right)',237,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,800,130,NULL,NULL,NULL,NULL,NULL,172,175,0,0,0,100000,NULL,NULL,NULL,NULL,NULL,160,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,465,'Baseball Player Ring',10,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,100,NULL,NULL,NULL,NULL,NULL,10,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,466,'Cheerleader Ring',10,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,100,NULL,NULL,NULL,NULL,NULL,10,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,467,'Wings of Disillusion',7,4,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,220,NULL,NULL,NULL,NULL,NULL,400,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,3,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,468,'[Bound] Wings of Disillusion',7,4,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,220,NULL,NULL,NULL,NULL,NULL,400,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,3,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,469,'Wings of Destiny',7,4,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,153,220,NULL,NULL,NULL,NULL,NULL,800,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,155,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,4,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,471,'Phantasmal Steed',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,800,0,0,0,0,9000000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,472,'Wings of Silence',7,4,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,220,NULL,NULL,NULL,NULL,NULL,400,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,NULL,NULL,NULL,NULL,NULL,0),(12,473,'[Bound]Wings of Silence',7,4,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,220,NULL,NULL,NULL,NULL,NULL,400,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,NULL,NULL,NULL,NULL,NULL,0),(12,474,'Wings of Conviction',7,4,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,153,220,NULL,NULL,NULL,NULL,NULL,800,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,170,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,4,0,NULL,NULL,NULL,NULL,NULL,0),(12,476,'Orb of Sword Inertia',NULL,1,1,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,0,NULL,NULL,NULL,NULL,NULL,30,0,50,0,100,10000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,NULL,NULL,0),(12,477,'Orb of Bat Flock',NULL,1,1,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,20,0,NULL,NULL,NULL,NULL,NULL,270,0,100,0,380,200000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,2,0,NULL,NULL,NULL,NULL,NULL,0),(12,478,'Orb of Detection',NULL,1,1,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,30,0,NULL,NULL,NULL,NULL,NULL,400,0,0,0,800,400000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,NULL,NULL,NULL,NULL,NULL,0),(12,479,'Orb of Pierce Attack',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,160,0,NULL,NULL,NULL,NULL,NULL,400,0,300,0,1100,850000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,NULL,NULL,NULL,NULL,NULL,0),(12,480,'Wings of Authority',7,4,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,770,220,NULL,NULL,NULL,NULL,NULL,750,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,700,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,3,3,3,3,3,3,3,3,3,3,NULL,NULL,NULL,NULL,NULL,0),(12,481,'Special Muun Egg',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,482,'Orb of Demolish',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,400,0,NULL,NULL,NULL,NULL,NULL,400,0,0,0,1450,1600000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,3,0,NULL,NULL,NULL,NULL,NULL,0),(12,483,'Ice dragon',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,255,NULL,NULL,NULL,NULL,NULL,900,0,0,0,0,9000000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,484,'Ice Dragon (rare)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,255,NULL,NULL,NULL,NULL,NULL,900,0,0,0,0,9000000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(12,485,'Sword Fury Orb',NULL,1,1,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,78,0,NULL,NULL,NULL,NULL,NULL,0,0,1060,0,0,550000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,486,'Sword Blow Orb',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,78,0,NULL,NULL,NULL,NULL,NULL,0,0,1090,0,0,150000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,487,'Strong Faith Orb',NULL,1,1,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,78,0,NULL,NULL,NULL,NULL,NULL,0,1040,0,0,0,550000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,488,'Sturdy Guardian Orb',NULL,1,1,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,78,0,NULL,NULL,NULL,NULL,NULL,0,1052,0,0,0,600000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,489,'Wings of Hit',7,4,3,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,220,NULL,NULL,NULL,NULL,NULL,400,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,3,NULL,NULL,NULL,NULL,NULL,0),(12,491,'Dark Plasma Orb',NULL,1,1,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,100,0,NULL,NULL,NULL,NULL,NULL,150,0,0,0,0,550000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,2,NULL,NULL,NULL,NULL,NULL,0),(12,492,'Ice Break Orb',NULL,1,1,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,80,0,NULL,NULL,NULL,NULL,NULL,0,295,0,0,0,150000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,1,NULL,NULL,NULL,NULL,NULL,0),(12,493,'Ice Blast Orb',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,0,NULL,NULL,NULL,NULL,NULL,0,1000,0,0,0,550000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,3,NULL,NULL,NULL,NULL,NULL,0),(12,494,'Deathfire Orb',NULL,1,1,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,80,0,NULL,NULL,NULL,NULL,NULL,0,100,0,0,0,600000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,1,NULL,NULL,NULL,NULL,NULL,0),(12,495,'Busting Flare Orb',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,0,NULL,NULL,NULL,NULL,NULL,0,800,100,0,200,600000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,3,NULL,NULL,NULL,NULL,NULL,0),(12,496,'[Bound] Wings of Hit',7,4,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,220,NULL,NULL,NULL,NULL,NULL,400,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,3,NULL,NULL,NULL,NULL,NULL,0),(12,498,'Death Ice Ball',NULL,1,1,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,80,0,NULL,NULL,NULL,NULL,NULL,0,100,0,0,0,600000,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,1,NULL,NULL,NULL,NULL,NULL,0),(13,27,'Pendant of Water',9,1,1,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,46,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,28,'Pendant of Ability',9,1,1,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,29,'Armor of Guardsman',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,30,'Cape of Lord',7,2,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,200,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(13,31,'Spirit',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(13,32,'Splinter of Armor',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,33,'Bless of Guardian',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,34,'Claws of Beast',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,35,'Fragment of Horn',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,36,'Broken Horn',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,37,'Horn of Fenrir',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,300,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,2,2,2,1,1,2,1,1,2,2,2,NULL,NULL,NULL,NULL,NULL,0),(13,38,'Moonstone Pendant',10,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,21,120,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,39,'Eilte Transfer Skeleton Ring',10,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,40,'Jack Olantern Ring',10,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,100,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,41,'Transfer Christmas Ring',10,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,100,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,42,'Ring of GM',10,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,255,255,255,255,255,255,255,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,43,'Seal of Ascension',10,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,44,'Seal of Wealth',10,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,45,'Seal of Sustenance',10,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,46,'Devil Square Ticket',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,47,'Blood Castle Ticket',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,49,'Old Scroll',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,50,'Illusion Sorcerer Covenant ',NULL,1,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,51,'Scroll of Blood',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,52,'Condor Flame',NULL,1,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,53,'Condor Feather',NULL,1,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,54,'Reset Fruit Strength',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,100,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,55,'Reset Fruit Quickness',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,100,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,56,'Reset Fruit Health',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,100,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,57,'Reset Fruit Energy',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,100,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,58,'Reset Fruit Control',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,100,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,59,'Seal of Mobility',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,60,'Indulgence',NULL,1,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,61,'Illusion Temple Ticket',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,62,'Seal of Healing',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,63,'Seal of Divinity',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,64,'Demon',8,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,65,'Spirit of Guardian',8,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,66,'Invitation to Santa Village',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,67,'Pet Rudolph',8,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,28,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,68,'Snowman Transformation Ring',10,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,100,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,69,'Talisman of Resurrection',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,70,'Talisman of Mobility',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,71,'Sword/Mace/Spear',8,2,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,72,'Staff',8,2,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,73,'Bow/Crossbow',8,2,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,74,'Scepter',8,2,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,75,'Stick',8,2,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,76,'Panda Ring',10,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,80,'Pet Panda',8,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,81,'Talisman of Guardian',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,82,'Talisman of Item Protection',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,93,'Master Seal of Ascension',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,94,'Master Seal of Wealth',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,95,'Gladiator\'s Honor',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,97,'Magic Gladiator Card',10,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,98,'Dark Lord Character Card',10,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,99,'Character Slot Key',10,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,103,'Party EXP Scroll',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,109,'Sapphire Ring',10,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,110,'Ruby Ring',10,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,111,'Topaz Ring',10,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,112,'Amethyst Ring',10,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,113,'Ruby Necklace',9,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,114,'Emerald Necklace',9,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,115,'Sapphire Necklace',9,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,116,'Seal of Wealth',10,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,121,'Access Ticket to Chaos Castle',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,122,'Skeleton Transformation Ring',10,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,123,'Pet Skeleton',8,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,128,'Hawk Figurine',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,129,'Goat Figurine',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,130,'Oak Charm',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,131,'Maple Charm',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,132,'Golden Oak Charm',NULL,1,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,133,'Golden Maple Charm',NULL,1,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,134,'Worn Horseshoe',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,135,'1st Lucky Armor Ticket',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,136,'1st Lucky Pants Ticket',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,137,'1st Lucky Helm Ticket',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,138,'1st Lucky Gloves Ticket',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,139,'1st Lucky Boots Ticket',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,140,'2nd Lucky Armor Ticket',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,141,'2nd Lucky Pants Ticket',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,142,'2nd Lucky Helm Ticket',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,143,'2nd Lucky Gloves Ticket',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,144,'2nd Lucky Boots Ticket',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,145,'Spirit Map Fragment',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,146,'Spirit Map',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,147,'Trophies of Battle',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,148,'Green Ink',NULL,1,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,149,'Blue Ink',NULL,1,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,150,'Red Ink',NULL,1,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,151,'Parchment of Soul',NULL,1,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,152,'Scroll of Green Oblivion',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,153,'Scroll of Blue Oblivion',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,154,'Scroll of Red Oblivion',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,155,'Scroll of Gray Oblivion',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,156,'Sealed Green Oblivion Scroll',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,157,'Sealed Blue Oblivion Scroll',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,158,'Sealed Red Oblivion Scroll',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,159,'Sealed Gray Oblivion Scroll',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,160,'Protection Talisman',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,161,'Cooperation Talisman',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,163,'Robot Knight Ring',10,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,164,'Mini Robot Ring',10,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,165,'Great Heavenly Mage Ring',10,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,166,'Brown Panda Transformation Ring',10,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,168,'Gold car',10,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,169,'Decoration Ring',10,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,170,'Blessed Decoration Ring',10,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,100,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,171,'Necklace of Agony',9,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,122,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,172,'Solid Symbol',9,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,110,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,173,'Ring of Ultimatum',10,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,98,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,175,'Protector Protection Ring',10,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,74,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,176,'Protection Ring',10,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,62,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,177,'Talisman of Ascension I',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,178,'Talisman of Ascension II',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,179,'Talisman of Ascension III',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,180,'Seal of Asecnsion II',10,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,181,'Master Seal of Ascension II',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,210,'WereRabbit Egg',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,211,'Evolution Stone',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,212,'Luki',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,213,'Luki (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,214,'Tony',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,215,'Tony (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,216,'Nymph',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,217,'Nymph (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,218,'Safi',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,219,'Safi (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,220,'Lucky Bag Egg',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,221,'Fire Flame Ghost Egg',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,222,'Premium Muun Egg',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,223,'William',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,224,'William (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,225,'Paul',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,226,'Paul (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,227,'Chiron',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,228,'Chiron (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,229,'Wooparoo',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,230,'Wooparoo (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,231,'Tibetton',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,232,'Tibetton (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,233,'Witch',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,234,'Witch (evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,235,'Skull',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,236,'Skull (evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,237,'Pumpy',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,238,'Pumpy (evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,239,'Muun Energy Converter',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,240,'Wizardry Stone',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,241,'Savath',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,242,'Savath (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,243,'Lycan',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,244,'Lycan (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,245,'Torby',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,246,'Torby (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,252,'Seiren',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,253,'Seiren (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,254,'Behemoth',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,255,'Behemoth (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,256,'Loggle',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,257,'Loggle (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,258,'Mino',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,259,'Mino (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,260,'Hound',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,261,'Hound (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,262,'Trive',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,263,'Trive (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,264,'Vogan',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,265,'Vogan (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,266,'Cyclop',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,267,'Cyclop (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,268,'Dark Transformation Ring',10,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,400,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,3,3,3,3,3,3,3,1,3,3,3,NULL,NULL,NULL,NULL,NULL,0),(13,270,'Bonf',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,271,'Bonf (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,272,'Hawk',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,273,'Hawk (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,274,'Muty',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,275,'Muty (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,276,'Conqueror\'s Badge',NULL,3,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,277,'Badge of Hardships',NULL,3,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,278,'Mantis',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,279,'Mantis (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,280,'Scolpy',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,281,'Scolpy (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,282,'Chafer',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,283,'Chafer (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,290,'Cosplay Girl',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,291,'Cosplay Girl (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,292,'Cheer Girl',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,293,'Cheer Girl (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,294,'Sporty Girl',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,295,'Sporty Girl (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,296,'Baal',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,297,'Baal (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,298,'Gaap',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,299,'Gaap (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,300,'Taaf',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,301,'Taaf (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,302,'Frozen',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,303,'Frozen(Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,304,'Loor',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,305,'Loor(Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,306,'Purssil',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,307,'Purssil(Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,308,'Lucky Rabbit',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,309,'Lucky Rabbit (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,310,'Songpyeon Rabbit',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,311,'Songpyeon Rabbit (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,312,'Mortar Rabbit',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,313,'Mortar Rabbit (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,314,'Tarius',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,315,'Tarius (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,316,'Rainer',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,317,'Rainer (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,318,'Alkamo',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,319,'Alkamo (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,320,'Glacuse',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,321,'Glacuse (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,322,'Kenturion',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,323,'Kenturion (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,324,'Rocka',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,325,'Rocka (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,326,'Repen',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,327,'Repen (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,328,'Pawn',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,329,'Pawn (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,330,'Grippus',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,331,'Grippus (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,332,'Polar Bear',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,333,'Polar Bear (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,334,'Present',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,335,'Present (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,336,'Rockinghorse',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,337,'Rockinghorse (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,338,'Aries',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,339,'Aries (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,340,'Lester',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,341,'Lester (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,342,'Merino',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,343,'Merino (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,344,'Splinter',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,345,'Splinter(Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,346,'Mutation',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,347,'Mutation(Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,348,'Pider',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,349,'Pider(Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,350,'Muun Egg',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,351,'Bloodangel Armor of Sealed Fury',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,352,'Bloodangel Helm of Sealed Fury',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,353,'Bloodangel Pants of Sealed Fury',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,354,'Bloodangel Boots of Sealed Fury',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,355,'Bloodangel Armor of Sealed Vengeance',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,356,'Bloodangel Helm of Sealed Vengeance',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,357,'Bloodangel Pants of Sealed Vengeance',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,358,'Bloodangel Gloves of Sealed Vengeance',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,359,'Bloodangel Armor of Sealed Transcendence',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,360,'Bloodangel Helm of Sealed Transcendence',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,361,'Bloodangel Pants of Sealed Transcendence',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,362,'Bloodangel Gloves of Sealed Transcendence',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,363,'Bloodangel Armor of Sealed Flurry',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,364,'Bloodangel Helm of Sealed Flurry',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,365,'Bloodangel Pants of Sealed Flurry',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,366,'Bloodangel Gloves of Sealed Flurry',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,367,'Bloodangel Armor of Sealed Redemption',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,368,'Bloodangel Helm of Sealed Redemption',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,369,'Bloodangel Pants of Sealed Redemption',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,370,'Bloodangel Gloves of Sealed Redemption',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,371,'Bloodangel Armor of Sealed Extremity',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,372,'Bloodangel Boots of Sealed Extremity',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,373,'Bloodangel Pants of Sealed Extremity',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,374,'Bloodangel Gloves of Sealed Extremity',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,375,'Bloodangel Armor of Sealed Captivation',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,376,'Bloodangel Boots of Sealed Captivation',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,377,'Bloodangel Pants of Sealed Captivation',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,378,'Bloodangel Gloves of Sealed Captivation',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,379,'Bloodangel Armor of Sealed Conquest',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,380,'Bloodangel Helm of Sealed Conquest',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,381,'Bloodangel Pants of Sealed Conquest',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,382,'Bloodangel Gloves of Sealed Conquest',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,383,'Sealed Heartless Bloodangel Armor',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,384,'Sealed Heartless Bloodangel Helm',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,385,'Sealed Heartless Bloodangel Pants',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,386,'Sealed Heartless Bloodangel Gloves',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,387,'Bloodangel Armor of Sealed Honor',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,388,'Bloodangel Helm of Sealed Honor',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,389,'Bloodangel Pants of Sealed Honor',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,390,'Bloodangel Gloves of Sealed Honor',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,391,'Bloodangel Armor of Sealed Destruction',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,392,'Bloodangel Helm of Sealed Destruction',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,393,'Bloodangel Pants of Sealed Destruction',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,394,'Bloodangel Boots of Sealed Destruction',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,395,'Bloodangel Armor of Sealed Will',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,396,'Bloodangel Helm of Sealed Will',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,397,'Bloodangel Pants of Sealed Will',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,398,'Bloodangel Boots of Sealed Will',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,399,'Bloodangel Armor of Sealed Tenacity',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,400,'Bloodangel Helm of Sealed Tenacity',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,401,'Bloodangel Pants of Sealed Tenacity',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,402,'Bloodangel Gloves of Sealed Tenacity',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,403,'Bloodangel Helm of Sealed Retribution',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,404,'Bloodangel Armor of Sealed Retribution',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,405,'Bloodangel Pants of Sealed Retribution',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,406,'Bloodangel Boots of Sealed Retribution',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,407,'Bloodangel Soul',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,408,'Pendant of Ability (Bound)',9,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,409,'Heywood',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,410,'Heywood(Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,411,'Branch',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,412,'Branch(Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,413,'Hook',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,414,'Hook(Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,415,'Carnifle',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,416,'Carnifle(Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,417,'Mandora',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,418,'Mandora(Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,419,'Treat',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,420,'Treat(Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,421,'Rose Spirit',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,422,'Rose Spirit(Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,423,'Freesia Spirit',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,424,'Freesia Spirit(Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,425,'Cherry Blossom Spirit',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,426,'Cherry Blossom Spirit Evolve',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,427,'Gigantes',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,428,'Gigantes(Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,429,'Mammoth',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,430,'Mammoth(Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,431,'Walker',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,432,'Walker(Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,433,'Surfing Girl',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,434,'Surfing Girl (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,435,'Tube Girl',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,436,'Tube Girl(Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,437,'Snorkeling Girl',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,438,'Snorkeling Girl (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,439,'Commander',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,440,'Commander(Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,441,'Lance Soldier',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,442,'Lance Soldier(Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,443,'Bow Soldier',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,444,'Bow Soldier(Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,445,'Hammer',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,446,'Hammer(Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,447,'Refear',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,448,'Refear(Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,449,'Axer',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,450,'Axer(Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,451,'Pumpkin Girl',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,452,'Pumpkin Girl(Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,453,'Ghost',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,454,'Ghost(Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,455,'Mummified Boy',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,456,'Mummified Boy(Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,457,'Chrysanthemum',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,458,'Chrysanthemum(Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,459,'Maple',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,460,'Maple(Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,461,'Ginkgo',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,462,'Ginkgo(Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,463,'Ghost(Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,464,'Mummified Boy(Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,466,'Garuda\'s Flame',NULL,1,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,467,'Garuda\'s Feather',NULL,1,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,468,'Golden Crest',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,469,'[PC Room] Panda Pet',8,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,470,'[PC room] Skeleton Pet',8,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,471,'[PC room] Panda transformation ring',10,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,472,'[PC room] Skeleton transformation ring',10,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,473,'[PC Room] Robot Knight Transformation Ring',10,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,474,'[PC room] mini',10,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,476,'[PC Room] Amulet of Rise I',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,477,'[PC room] Aris',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,479,'Event Map Additional Entrance Ticket',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,480,'Toy Soldier',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,481,'Toy Soldier (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,482,'Christmas Tree',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,483,'Christmas Tree (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,484,'Snowman',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,485,'Snowman (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,486,'Busker Monkey',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,487,'Busker Monkey (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,488,'DJ Monkey',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,489,'DJ Monkey (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,490,'Space Monkey',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,491,'Space Monkey (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,492,'Little Cupid',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,493,'Little Cupid (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,494,'Chocolate Cookie',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,495,'Chocolate Cookie (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,496,'Heart Girl',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,497,'Heart Girl (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,498,'Candy Girl',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,499,'Candy Girl (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,500,'Lollipop Mama',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,501,'Lollipop Mama (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,502,'Sweet Muscle Man',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,503,'Sweet Muscle Man (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(13,510,'Lapidary Stone',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,160,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(14,0,'Apple',NULL,1,1,NULL,1,0,NULL,NULL,NULL,NULL,NULL,5,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,1,'Small Healing Potion',NULL,1,1,NULL,1,0,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,2,'Healing Potion',NULL,1,1,NULL,1,0,NULL,NULL,NULL,NULL,NULL,20,NULL,NULL,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,3,'Large Healing Potion',NULL,1,1,NULL,1,0,NULL,NULL,NULL,NULL,NULL,30,NULL,NULL,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,4,'Small Mana Potion',NULL,1,1,NULL,1,0,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,5,'Mana Potion',NULL,1,1,NULL,1,0,NULL,NULL,NULL,NULL,NULL,20,NULL,NULL,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,6,'Large Mana Potion',NULL,1,1,NULL,1,0,NULL,NULL,NULL,NULL,NULL,30,NULL,NULL,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,7,'Siege Potion',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,30,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,8,'Antidote',NULL,1,1,NULL,1,0,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,9,'Ale',NULL,1,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,30,NULL,NULL,15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,10,'Town Portal Scroll',NULL,1,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,30,NULL,NULL,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,11,'Box of Luck',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,12,'Heart',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,13,'Jewel of Bless',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,150,NULL,NULL,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,14,'Jewel of Soul',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,150,NULL,NULL,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,15,'Zen',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,16,'Jewel of Life',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,72,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,17,'Devil\'s Eye',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,18,'Devil\'s Key',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,19,'Devil\'s Invitation',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,20,'Remedy of Love',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,21,'Rena',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,22,'Jewel of Creation',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,78,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,23,'Scroll of the Emperor',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,24,'Broken Sword',NULL,1,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,25,'Tear of Elf',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,26,'Soul Shard of Wizard',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,28,'Lost Map',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,29,'Symbol of Kundun',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,31,'Jewel of Guardian',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,75,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,32,'Pink Chocolate Box',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,33,'Red Chocolate Box',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,34,'Blue Chocolate Box',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,35,'Small SD Potion',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,36,'SD Potion',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,80,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,37,'Large SD Potion',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,100,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,38,'Small Complex Potion',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,20,NULL,NULL,68,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,39,'Complex Potion',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,40,NULL,NULL,96,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,40,'Large Complex Potion',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,60,NULL,NULL,118,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,41,'Gemstone',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,150,NULL,NULL,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,42,'Jewel of Harmony',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,150,NULL,NULL,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,43,'Lower refining stone',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,150,NULL,NULL,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,44,'Higher refining stone',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,150,NULL,NULL,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,45,'Pumpkin of Luck',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,46,'[Boost]Jack O\'Lantern Blessings',NULL,1,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,47,'[Reinforce]Jack O\'Lantern Wrath',NULL,1,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,48,'[Reinforce]Jack O\'Lantern Cry',NULL,1,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,49,'[Boost]Jack O\'Lantern Food',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,50,'[Boost]Jack O\'Lantern Drink',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,51,'Chistmas Star',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,52,'GM Gift',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,53,'Talisman of Luck',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,54,'Chaos Card',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,55,'Green Chaos Box',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,56,'Red Chaos Box',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,57,'Purple Chaos Box',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,58,'Rare Item Ticket1',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,59,'Rare Item Ticket2',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,60,'Rare Item Ticket3',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,63,'Firecracker',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,64,'Cursed Hallow',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,65,'Death-beam Knight Flame',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,66,'Hell-Miner Horn',NULL,1,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,67,'Dark Phoenix Feather',NULL,1,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,68,'Abyssal Eye',NULL,1,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,70,'Elite Healing Potion',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,71,'Elite Mana Potion',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,72,'Scroll of Quickness',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,73,'Scroll of Defense',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,74,'Scroll of Wrath',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,75,'Scroll of Wizardry',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,76,'Scroll of Health',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,77,'Scroll of Mana',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,84,'Cherry Blossom Play-Box',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,85,'[Boost]Cherry Blossom Wine',NULL,1,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,86,'[Boost]Cherry Blossom Rice Cake',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,87,'[Reinforce]Cherry Blossom Flower Petal',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,89,'Red Cherry Blossom Branch',NULL,1,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,90,'Golden Cherry Blossom Branch',NULL,1,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,96,'Talisman of Chaos Assembly',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,99,'Christmas Firecracker',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,100,'Lucky Coin',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,101,'Suspicious Scrap of Paper',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,32,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,102,'Gaion\'s Order',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,103,'First Secromicon Fragment',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,104,'Second Secromicon Fragment',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,105,'Third Secromicon Fragment',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,106,'Fourth Secromicon Fragment',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,107,'Fifth Secromicon Fragment',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,108,'Sixth Secromicon Fragment',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,109,'Complete Secromicon',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,110,'Sign of Dimensions',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,32,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,111,'Mirror of Dimensions',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,112,'Silver Key',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,113,'Gold Key',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,114,'Master Skill Reset',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,115,'Stat Adjustment',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,116,'Character Relocation Service',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,117,'Character Rename Service',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,118,'Server Transfer Service',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,119,'Premium Package',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,120,'Goblin Gold Coin',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,121,'Sealed Golden Box',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,122,'Sealed Silver Box',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,123,'Golden Box',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,124,'Silver Box',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,125,'Package Box',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,126,'30-Day Pass',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,127,'90-Day Pass',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,128,'30-Day Pass - Points',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,129,'90-Day Pass - Points',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,130,'3-Hour Pass',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,131,'5-Hour Pass',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,132,'10-Hour Pass',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,133,'Elite SD Potion',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,134,'Package Box A',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,135,'Package Box B',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,136,'Package Box C',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,137,'Package Box D',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,138,'Package Box E',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,139,'Package Box F',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,141,'Shining Jewelry Case',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,142,'Elegant Jewelry Case',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,143,'Steel Jewelry Case',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,144,'Old Jewelry Case',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,145,'Rare Item Ticket 7',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,151,'Lv. 1 Letter of Request',NULL,1,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,152,'Lv. 1 Completion Certificate',NULL,1,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,153,'Stardust',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,60,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,154,'Kalt Stone',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,60,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,155,'Tantalos\'s Armor',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,60,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,156,'Burnt Murderer\'s Club',NULL,1,3,NULL,0,0,NULL,NULL,NULL,NULL,NULL,60,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,157,'Green Box',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,190,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,158,'Red Box',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,190,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,159,'Purple Box',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,190,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,160,'Jewel of Extension',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,161,'Jewel of Elevation',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,162,'Magic Backpack',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,163,'Vault Expansion Certificate',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,164,'Ancient Statue',NULL,1,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,165,'Magical cloth',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,166,'Rune Cloth',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,170,'Lv. 2 letter of Request',NULL,1,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,171,'Lv. 2 Completion Certificate',NULL,1,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,176,'Death King\'s Bone',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,177,'Hell Maine\'s Leather',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,178,'Dark Phoenix Flame',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,179,'Death Beam Knight Soul',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,180,'Ice Walker\'s Mane',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,181,'Mammoth\'s Bundle of Fur',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,182,'Giant\'s Icicle',NULL,1,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,183,'Coolutin\'s Poison',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,184,'Iron Knight\'s Heart',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,185,'Dark Mammoth\'s Horn',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,186,'Dark Giant\'s Axe',NULL,1,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,187,'Dark Coolutin\'s Blood',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,188,'Dark Iron Knight\'s Sword',NULL,1,4,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,189,'Elemental Talisman of Luck',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,190,'Elemental Talisman of Chaos',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,191,'Sonic Combination Note',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,192,'Cyclone Combination Note',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,193,'Blast Combination Note',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,194,'Magma Combination Note',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,195,'Horn Combination Note',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,196,'Angelic Combination Note',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,197,'Devil Cross Combination Note',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,198,'Miracle Combination Note',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,199,'Spite Combination Note',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,200,'Asura Combination Note',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,201,'Thunder Combination Note',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,202,'Soul Combination Note',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,206,'Lackluster Box',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,207,'Luxurious Box',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,208,'Exciting Box',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,209,'Tradeable Seal',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,210,'Summon Scroll (Lv1)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,32,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,211,'Summon Scroll (Lv2)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,32,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,212,'Summon Scroll (Lv3)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,32,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,213,'Summon Scroll (Lv4)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,32,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,215,'Card Piece',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,216,'Card Deck',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,217,'Titan\'s Anger',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,218,'Tantalose\'s Punishment',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,219,'Erohim\'s Nightmare',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,220,'Hell Maine\'s Insanity',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,221,'Kundun\'s Greed',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,223,'Cursed Hallow',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,224,'Bless of Light (Greater)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,234,'Monster Summoning Scroll',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,236,'Reward Jar',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,237,'Reward Jar',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,238,'Reward Jar',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,239,'Reward Jar',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,240,'Reward Jar',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,241,'Valuable Reward Jar',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,244,'Evomon Summoning Scroll',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,245,'Tetra Crystal (Greater)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,246,'Tetra Crystal (Standard)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,247,'Tetra Crystal (Minor)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,248,'Minor Evomon Box',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,249,'Standard Evomon Box',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,250,'Greater Evomon Box',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,251,'Luxurious Evomon Box',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,252,'Magnificent Evomon Box',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,253,'Legendary Evomon Box',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,254,'Gift of Henchmen',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,256,'Gift of Knights',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,257,'Gift of High Knights',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,258,'Minor Devil\'s Box',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,259,'Devil\'s Box',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,260,'High Devil\'s Box',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,261,'Guardsman\'s Box',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,262,'Guardman Captain\'s Box',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,263,'Bless of Light (Low Grade)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,264,'Bless of Light (Middle Grade)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,265,'Goblin Treasure Box (Green)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,266,'Goblin Treasure Box (Blue)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,267,'Goblin Treasure Box (Red)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,268,'Goblin Treasure Box (Yellow)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,269,'Normal EXP Potion (1)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,270,'Normal EXP Potion (2)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,271,'Normal EXP Potion (3)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,272,'Normal EXP Potion (4)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,273,'Master EXP Potion (1)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,274,'Master EXP Potion (2)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,275,'Master EXP Potion (3)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,276,'Master EXP Potion (4)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,277,'Special Card',NULL,1,1,NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,278,'Piece of Summoning Scroll',NULL,1,1,NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,279,'Master EXP Potion (5)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,280,'Master EXP Potion (6)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,282,'Mastery Box(Minor)',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,283,'Mastery Box(Standard)',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,284,'Mastery Box(Greater)',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,285,'Ruud',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,286,'Pentagram Box',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,287,'Mastery Reward Chest (200,000)',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,288,'Mastery Reward Chest (100,000)',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,289,'Mastery Reward Chest (50,000)',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,290,'Elemental Powder',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,293,'Elemental Capsule(Normal)',NULL,1,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,296,'Capsule(Fire)',NULL,1,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,309,'Fragment of Radiance slot (1)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,310,'Fragment of Radiance slot (2)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,311,'Fragment of Radiance slot (3)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,312,'Fragment of Radiance slot (4)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,316,'Expansion Scroll of Radiance slot',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,317,'Talisman Element Change',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,320,'Blessing of Spirit',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,331,'[PC room] 1 hour gift box',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,332,'[PC room] 3-hour gift box',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,333,'[PC room] 5-hour gift box',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,334,'[PC room] 12 hours gift box',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,336,'Mastery Reward Chest (10,000)',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,337,'Capsule(Earth)',NULL,1,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,338,'Capsule(Water)',NULL,1,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,339,'Capsule(Wind)',NULL,1,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,340,'Capsule(Darkness)',NULL,1,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,341,'Darkangel Soul',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,342,'Steel of Heaven',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,343,'Archangel\'s Hammer',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,344,'[Speed] Archangel Weapon Box',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,345,'Mysterious Stone',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,346,'Fire Symbol',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,347,'Water Symbol',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,348,'Earth Symbol',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,349,'Wind Symbol',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,350,'Darkness Symbol',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,351,'Element Box',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,352,'Ruud Box (1,000)',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,353,'Magic Fragment',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,354,'[14th Anniversary] Gift Box',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,355,'[14th Anniversary] Special Gift Box',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,356,'[PC Cafe] Ruud Box',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,357,'[Speed] Helm Box',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,358,'[Speed] Armor Box',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,359,'[Speed] Pants Box',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,360,'[Speed] Gloves Box',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,361,'[Speed] Boots Box',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,364,'Socket Upgrade Note',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,367,'Roomy Card Box (Lower)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,368,'Roomy Card Box (Medium)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,369,'Roomy Card Box (Higher)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,370,'Seed',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,371,'[Bound] Bless of Light (Greater)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,372,'[Bound] Bless of Light (Middle Grade)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,373,'[Bound] Bless of Light (Low Grade)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,374,'[Event] Lower Box',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,375,'[Event] Medium Box',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,376,'[Event] Higher Box',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,377,'[Event] Luxury Box',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,378,'Seed Capsule (Fire)',NULL,1,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,379,'Seed Capsule (Water)',NULL,1,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,380,'Seed Capsule (Ice)',NULL,1,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,381,'Seed Capsule (Wind)',NULL,1,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,382,'Seed Capsule (Lightning)',NULL,1,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,383,'Seed Capsule (Earth)',NULL,1,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,384,'Sphere Upgrade Rune Capsule',NULL,1,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,385,'Mysterious Box',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,386,'Darkangel Anvil',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,389,'Holyangel Soul',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,390,'Spirit Nixie\'s Shard',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,391,'Event Gift Box',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,392,'Card Box',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,393,'Card Box (10)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,394,'Attacker Type Elf Transform Scroll',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,395,'Supporter Type Elf Transform Scroll',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,396,'Gladiator Type Magic Knight Transform Scroll',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,397,'Mage Type Magic Knight Transform Scroll',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,398,'Elemental Talisman Box',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,399,'(Hero) Bloodangel Soul',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,400,'Ruud Box (10)',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,401,'Ruud Box (50)',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,402,'Ruud Box (100)',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,403,'Lower Maze Of Dimensions Box',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,404,'Medium Maze Of Dimensions Box',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,405,'Higher Maze Of Dimensions Box',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,406,'Timed Mastery Weapon Box',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,407,'Speed Server Limited Reward Box',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,408,'[Jewel Bingo] Lower Box',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,409,'[Jewel Bingo] Medium Box',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,410,'[Jewel Bingo] Higher Box',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,411,'[Jewel Bingo] Luxury Box',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,412,'Timed Mastery Set Box',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,413,'Coin of Miracle',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,414,'Season Level Reward A',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,415,'Awakening Soul',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,416,'Holyangel Anvil',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,417,'Bloodangel Soul Transform Symbol',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,418,'[PC Cafe]Timed Mastery Weapon Box',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,419,'[PC Cafe]Timed Mastery Armor Box',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,420,'[Bound]Mysterious Stone',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,421,'2nd Bound Wings Chest',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,422,'3rd Bound Wings Chest',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,423,'[Balls and Cows] Lower Box',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,424,'[Balls and Cows] Medium Box',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,425,'[Balls and Cows] Higher Box',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,426,'60-Day Mastery Armor Box',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,427,'30-Day Mastery Armor Box',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,428,'3-Day Mastery Armor Box',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,429,'+11 3rd Wings Chest (Bound)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,430,'Elena\'s Letter',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,431,'Key of Dimension (MU Lite)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,432,'[Boost] Arcanum of Health',NULL,1,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,433,'[Boost] Arcanum of Mana',NULL,1,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,434,'[Boost] Arcanum of Speed',NULL,1,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,435,'[Reinforce] Arcanum of Wrath',NULL,1,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,436,'[Reinforce] Arcanum of Wizardry',NULL,1,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,437,'[Reinforce] Arcanum of Defense',NULL,1,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,438,'[Reinforce] Arcanum of Battle',NULL,1,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,439,'[Reinforce] Arcanum of Strength',NULL,1,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,440,'Season Level Reward B',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,441,'Lapidary Stone Box',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,442,'Illuminating Earring Box(Left)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,443,'Illuminating Earring Box(Right)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,444,'Energy Drink',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,445,'Chicken Box',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,446,'[Event] Ruud Box',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,447,'Ruud Box (2,000)',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,448,'Ruud Box (3,000)',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,449,'Frost Soul',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,450,'Soul Anvil',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,451,'[Event] Ruud Box (2nd Week)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,452,'60-Day Mastery Weapon Box',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,453,'Switch Scroll',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,454,'[Speed] Earring Box (Left)',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,455,'Small Gift Box',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,456,'Medium Gift Box',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,457,'Large Gift Box',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,458,'Casting Mold of Forefathers',NULL,1,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,459,'Monster Soul',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,460,'[Lv. 1]Monster Soul Converter',NULL,1,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,461,'[Lv. 2]Monster Soul Converter',NULL,1,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,462,'[Lv. 3]Monster Soul Converter',NULL,1,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,463,'[Lv. 4]Monster Soul Converter',NULL,1,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,464,'[Lv. 5]Monster Soul Converter',NULL,1,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,465,'Guardian Capsule',NULL,1,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,466,'Fragment of Resurrection',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,467,'Guardian Upgrade Stone',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,468,'Elite Guardian Upgrade Stone',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,469,'Guardian Elite Option Conversion Fragment',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,470,'Guardian Elite Option Conversion Stone',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,471,'Sealed Armor Fragment',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,472,'Cracked Bloodangel Sealed Helm',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,473,'Cracked Bloodangel Sealed Armor',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,474,'Cracked Bloodangel Sealed Pants',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,475,'Cracked Bloodangel Sealed Gloves',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,476,'Cracked Bloodangel Sealed Boots',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,477,'Seal of the Phantasmal Steed',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,478,'Moss?? Treasure Box',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,479,'Raffle Ticket for Moss?? Treasure Box',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,480,'[Lv. 1]Monster Soul Converter Ruud Box',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,481,'[Lv. 2]Monster Soul Converter Ruud Box',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,482,'[Lv. 3]Monster Soul Converter Ruud Box',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,483,'[Lv. 4]Monster Soul Converter Ruud Box',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,484,'[Lv. 5]Monster Soul Converter Ruud Box',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,485,'Ruud Box (500)',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,486,'Ruud Box (1,500)',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,489,'Ruud Box (400)',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,490,'[TEST] Mastery Armor Chest',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,491,'[TEST] Mastery Weapon Chest',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,492,'Phantasmal Steed Capsule',NULL,1,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,493,'Perishing Wing Box',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,494,'Soul of the Forefathers',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,495,'Blue Eye Anvil',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,496,'30-Day Master Weapon Box',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,497,'Honorary Craftwork Frame',NULL,1,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,498,'Ice Dragon Seal',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,499,'Attack type',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,500,'Defensive',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,501,'Manticore Soul',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,502,'Silver Heart Anvil',NULL,2,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,503,'Jewel of Level',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,150,NULL,NULL,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,504,'Jewel of Skill',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,150,NULL,NULL,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,505,'Jewel of Luck',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,150,NULL,NULL,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,506,'Jewel of Additional',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,150,NULL,NULL,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,507,'Jewel of Excellent',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,150,NULL,NULL,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,508,'Jewel of Socket',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,150,NULL,NULL,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(15,0,'Scroll of Poison',NULL,1,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,30,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,140,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,1,0,0,0,0,1,0,0,NULL,NULL,NULL,NULL,NULL,0),(15,1,'Scroll of Meteorite',NULL,1,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,11000,NULL,21,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,104,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,1,0,1,0,0,1,0,0,NULL,NULL,NULL,NULL,NULL,0),(15,2,'Scroll of Lighting',NULL,1,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,3000,NULL,13,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,72,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(15,3,'Scroll of Fire Ball',NULL,1,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,300,NULL,5,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,1,0,1,0,0,1,0,0,NULL,NULL,NULL,NULL,NULL,0),(15,4,'Scroll of Flame',NULL,1,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,21000,NULL,35,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,160,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,1,0,0,0,0,1,0,0,NULL,NULL,NULL,NULL,NULL,0),(15,5,'Scroll of Teleport',NULL,1,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,5000,NULL,17,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,88,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(15,6,'Scroll of Ice',NULL,1,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,14000,NULL,25,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,120,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,1,0,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(15,7,'Scroll of Twister',NULL,1,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,25000,NULL,40,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,180,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,1,0,0,0,0,1,0,0,NULL,NULL,NULL,NULL,NULL,0),(15,8,'Scroll of Evil Spirit',NULL,1,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,35000,NULL,50,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,220,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,1,0,0,0,0,1,0,0,NULL,NULL,NULL,NULL,NULL,0),(15,9,'Scroll of Hellfire',NULL,1,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,60000,NULL,60,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,260,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,1,0,0,0,0,1,0,0,NULL,NULL,NULL,NULL,NULL,0),(15,10,'Scroll of Power Wave',NULL,1,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,1150,NULL,9,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,56,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,1,0,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(15,11,'Scroll of Aqua Beam',NULL,1,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,100000,NULL,74,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,345,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(15,12,'Scroll of Cometfall',NULL,1,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,175000,NULL,80,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,500,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,1,0,0,0,0,1,0,0,NULL,NULL,NULL,NULL,NULL,0),(15,13,'Scroll of Inferno',NULL,1,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,265000,NULL,88,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,724,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,1,0,0,0,0,1,0,0,NULL,NULL,NULL,NULL,NULL,0),(15,14,'Scroll of Teleport Ally',NULL,1,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,245000,NULL,83,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,644,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(15,15,'Scroll of Soul Barrier',NULL,1,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,135000,NULL,77,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,408,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(15,16,'Scroll of Decay',NULL,1,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,345000,NULL,96,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,953,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(15,17,'Scroll of Ice Storm',NULL,1,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,315000,NULL,93,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,849,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,0,0,0,0,0,0,0,2,0,0,NULL,NULL,NULL,NULL,NULL,0),(15,18,'Scroll of Nova',NULL,1,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,410000,NULL,100,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,1052,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(15,19,'Chain Lightning Parchment',NULL,1,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,175000,NULL,75,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,245,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(15,20,'Drain Life Parchment',NULL,1,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,100000,NULL,35,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,150,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(15,21,'Lightning Shock Parchment',NULL,1,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,315000,NULL,93,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,823,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(15,22,'Damage Reflection Parchment',NULL,1,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,245000,NULL,80,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,375,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(15,23,'Berserker Parchment',NULL,1,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,265000,NULL,83,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,300,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(15,24,'Sleep Parchment',NULL,1,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,135000,NULL,40,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,180,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(15,26,'Weakness Parchment',NULL,1,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,410000,NULL,93,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,663,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,2,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(15,27,'Innovation Parchment',NULL,1,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,450000,NULL,111,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,912,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,2,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(15,28,'Scroll of Wizardry Enhance',NULL,1,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,425000,NULL,100,NULL,NULL,NULL,NULL,NULL,NULL,220,NULL,NULL,NULL,1058,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,0,0,0,0,0,0,0,2,0,0,NULL,NULL,NULL,NULL,NULL,0),(15,29,'Scroll of Gigantic Storm',NULL,1,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,380000,NULL,100,NULL,NULL,NULL,NULL,NULL,NULL,220,NULL,NULL,NULL,1058,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(15,30,'Chain Drive Parchment',NULL,1,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,100000,NULL,70,NULL,NULL,NULL,NULL,NULL,NULL,150,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(15,31,'Dark Side Parchment',NULL,1,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,175000,NULL,80,NULL,NULL,NULL,NULL,NULL,NULL,180,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(15,32,'Dragon Roar Parchment',NULL,1,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,100000,NULL,70,NULL,NULL,NULL,NULL,NULL,NULL,150,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(15,33,'Dragon Slasher Parchment',NULL,1,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,265000,NULL,90,NULL,NULL,NULL,NULL,NULL,NULL,200,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(15,34,'Ignore Defense Parchment',NULL,1,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,175000,NULL,80,NULL,NULL,NULL,NULL,NULL,NULL,120,NULL,NULL,NULL,404,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(15,35,'Increase Health Parchment',NULL,1,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,35000,NULL,50,NULL,NULL,NULL,NULL,NULL,NULL,80,NULL,NULL,NULL,132,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(15,36,'Increase Block Parchment',NULL,1,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,25000,NULL,40,NULL,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,80,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(15,37,'Scroll of Magic Arrow',NULL,1,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,17000,NULL,50,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,142,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,NULL,NULL,NULL,NULL,NULL,0),(15,38,'Scroll of Plasma Ball',NULL,1,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,120000,NULL,80,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,600,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,2,0,0,NULL,NULL,NULL,NULL,NULL,0),(15,39,'Scroll of Lightning Storm',NULL,1,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,900000,NULL,100,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,1180,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,3,0,0,NULL,NULL,NULL,NULL,NULL,0),(15,40,'Scroll of Burst',NULL,1,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,35000,NULL,90,NULL,NULL,NULL,NULL,NULL,NULL,220,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,2,0,0,NULL,NULL,NULL,NULL,NULL,0),(15,41,'Scroll of Haste',NULL,1,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,40000,NULL,180,NULL,NULL,NULL,NULL,NULL,NULL,400,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,3,0,0,NULL,NULL,NULL,NULL,NULL,0),(15,42,'Explosion Parchment',NULL,1,2,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,175000,NULL,75,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,300,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(15,43,'Requiem Parchment',NULL,1,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,175000,NULL,75,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,416,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(15,44,'Pollution Parchment',NULL,1,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,175000,NULL,75,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,542,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(15,45,'Death Scythe Parchment',NULL,1,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,175000,NULL,75,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,930,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(15,46,'Darkness Parchment',NULL,1,2,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,175000,NULL,75,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,300,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(16,0,'Pinocchio',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,1,'Pinocchio (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,2,'Geppetoo',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,3,'Geppetoo (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,4,'Blue Fairy',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,5,'Blue Fairy (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,6,'Daddy Bear',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,7,'Daddy Bear (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,8,'Baby Bear',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,9,'Baby Bear (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,10,'Mommy Bear',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,11,'Mommy Bear (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,12,'Indio',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,13,'Indio (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,14,'Treasure',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,15,'Treasure (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,16,'Treasure Hunter',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,17,'Treasure Hunter (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,18,'Tree Elf',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,19,'Tree Elf (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,20,'Grass Fairy',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,21,'Grass Fairy (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,22,'Leaf Mage',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,23,'Leaf Mage (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,24,'Samba Girl',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,25,'Samba Girl (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,26,'Rio',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,27,'Rio (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,28,'Bateria',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,29,'Bateria (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,30,'Reporter',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,31,'Dragon Knight',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,32,'Tiger',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,33,'Tiger(Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,34,'Libra',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,35,'Libra (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,36,'Scorpio',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,37,'Scorpio (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,38,'Astro Rabbit',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,39,'Astro Rabbit (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,40,'Dotto',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,41,'Chef Chicken',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,42,'Chef Chicken (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,43,'Chicky',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,44,'Chicky (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,45,'Angry Rooster',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,46,'Angry Rooster (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,47,'Lion Mask',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,48,'Lion Mask (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,49,'Knight Instructor',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,50,'Knight Instructor (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,51,'Black Leopard',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,52,'Black Leopard (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,53,'Toy Robot',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,54,'Toy Robot (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,55,'Adventurous Cat',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,56,'Adventurous Cat (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,57,'Dike',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,58,'Dike (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,59,'Raincoat Girl',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,60,'Raincoat Girl (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,61,'Scarecrow',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,62,'Scarecrow (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,63,'Zombie Knight',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,64,'Zombie Knight (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,65,'Mr. Fisherman',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,66,'Mr. Fisherman (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,67,'Snowflake Fairy',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,68,'Snowflake Fairy (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,69,'Prince',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,70,'King Reksmilon',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,71,'Haughty Poodle',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,72,'Haughty Poodle (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,73,'Excited Beagle',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,74,'Excited Beagle (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,75,'Angry Bulldog',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,76,'Angry Bulldog (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,77,'Skiing Tiger',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,78,'Skiing Tiger (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,79,'Figure Skating Queen',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,80,'Figure Skating Queen (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,81,'Hockey Bear',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,82,'Hockey Bear (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,83,'Pilot',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,84,'Pilot (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,85,'Super Panda',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,86,'Super Panda (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,87,'Belly Dancer',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,88,'Belly Dancer (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,89,'Captain',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,90,'Captain (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,91,'Goalkeeper',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,92,'Goalkeeper (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,93,'Referee',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,94,'Referee (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,95,'Hooded T-rex',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,96,'Hooded T-rex (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,97,'Seaside Beauty',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,98,'Seaside Beauty (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,99,'Marble Magician',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,100,'Marble Magician (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,101,'King of Hangeul',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,102,'King of Hangeul (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,103,'Apple Magician',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,104,'Apple Magician (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,105,'Fish-shaped Bun',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,106,'Fish-shaped Bun (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,107,'Great Elf Kara',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,108,'Great Mage Etramu',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,109,'Bell',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,110,'Lafa',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,111,'Lafa (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,112,'Nix',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,113,'Nix (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,114,'Selupan',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,115,'Selupan (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,116,'Medusa',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,117,'Medusa (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,118,'Balrog',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,119,'Balrog (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,120,'Hell Maine',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,121,'Hell Maine (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,122,'Kundun',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,123,'Kundun (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,124,'Hydra',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,125,'Hydra (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,126,'Lord Silvester',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,127,'Lord Silvester(Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,128,'Nightmare',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,129,'Nightmare (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,130,'Phoenix Of Darknes',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,131,'Phoenix Of Darknes (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,132,'Kairuku',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,133,'Kairuku (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,134,'Legendary Dark Wizard',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,135,'Guardian Elf',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,136,'Deathmodus',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,137,'Deathmodus(Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,138,'Fairy Queen Runedil',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,139,'Magic Gladiator Gaion Karein',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,140,'Mouse in Boots',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,141,'Mouse in Boots(Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,142,'Blossoming Rhea',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,143,'Blossoming Rhea(Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,144,'Shadow Phantom',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,145,'Shadow Phantom (Evolution)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,146,'Warehouse guardian',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,147,'Warehouse Guardian (Evolution)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,148,'Fairy lara',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,149,'Fairy Lara (Evolution)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,150,'Tablet\'s Elpis',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,211,'Evolution Stone',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,212,'Luki',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,213,'Luki (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,214,'Tony',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,215,'Tony (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,216,'Nymph',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,217,'Nymph (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,218,'Safi',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,219,'Safi (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,223,'William',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,224,'William (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,225,'Paul',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,226,'Paul (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,227,'Chiron',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,228,'Chiron (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,229,'Wooparoo',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,230,'Wooparoo (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,231,'Tibetton',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,232,'Tibetton (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,233,'Witch',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,234,'Witch (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,235,'Skull',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,236,'Skull (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,237,'Pumpi',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,238,'Pumpi (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,239,'Muun Energy Converter',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,240,'Wizardry Stone',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,241,'Savath',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,242,'Savath (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,243,'Lycan',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,244,'Lycan (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,245,'Toby',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,246,'Toby (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,252,'Seiren',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,253,'Seiren (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,254,'Behemoth',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,255,'Behemoth (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,256,'Loggle',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,257,'Loggle (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,258,'Mino',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,259,'Mino (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,260,'Hound',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,261,'Hound (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,262,'Trive',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,263,'Trive (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,264,'Vogan',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,265,'Vogan (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,266,'Cyclop',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,267,'Cyclop (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,270,'Bonf',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,271,'Bonf (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,272,'Hawk',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,273,'Hawk (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,274,'Muty',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,275,'Muty (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,278,'Mantis',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,279,'Mantis (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,280,'Scolpi',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,281,'Scolpi (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,282,'Chafer',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,283,'Chafer (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,284,'Shogun',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,285,'Shogun (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,286,'Ninja',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,287,'Ninja (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,288,'Samurai',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,289,'Samurai (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,290,'Cos Girl',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,291,'Cos Girl (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,292,'Cheer Girl',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,293,'Cheer Girl (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,294,'Sporty Girl',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,295,'Sporty Girl (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,296,'Bael',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,297,'Bael (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,298,'Gapp',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,299,'Gapp (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,300,'Taaf',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,301,'Taaf (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,302,'Frozen',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,303,'Frozen (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,304,'Lure',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,305,'Lure (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,306,'Fur Seal',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,307,'Fur Seal (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,308,'Lucky Rabbit',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,309,'Lucky Rabbit (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,310,'Mooncake Rabbit',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,311,'Mooncake Rabbit (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,312,'Mortar Rabbit',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,313,'Mortar Rabbit (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,314,'Tarius',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,315,'Tarius (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,316,'Reyner',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,317,'Reyner (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,318,'Alcamo',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,319,'Alcamo (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,320,'Gracchus',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,321,'Gracchus (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,322,'Kenturion',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,323,'Kenturion (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,324,'Rocka',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,325,'Rocka (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,326,'Repen',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,327,'Repen (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,328,'Pon',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,329,'Pon (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,330,'Griffs',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,331,'Griffs (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,332,'Polar Bear',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,333,'Polar Bear (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,334,'Present',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,335,'Present (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,336,'Rocking Horse',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,337,'Rocking Horse (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,338,'Orris',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,339,'Orris (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,340,'Leicester',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,341,'Leicester (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,342,'Merino',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,343,'Merino (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,344,'Splinter',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,345,'Splinter (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,346,'Mutation',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,347,'Mutation (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,348,'Fighter',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,349,'Fighter (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,409,'Heywood',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,410,'Heywood (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,411,'Branch',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,412,'Branch (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,413,'Hook',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,414,'Hook (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,415,'Carnifle',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,416,'Carnifle (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,417,'Mandora',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,418,'Mandora (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,419,'Treat',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,420,'Treat (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,421,'Rose Spirit',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,422,'Rose Spirit (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,423,'Freesia Spirit',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,424,'Freesia Spirit (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,425,'Cherry Blossom Spirit',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,426,'Cherry Blossom Spirit (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,427,'Gigantes',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,428,'Gigantes (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,429,'Mammoth',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,430,'Mammoth (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,431,'Walker',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,432,'Walker (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,433,'Surfing Girl',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,434,'Surfing Girl (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,435,'Swim Tube Girl',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,436,'Swim Tube Girl (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,437,'Snorkeling Girl',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,438,'Snorkeling Girl (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,439,'Commander',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,440,'Commander (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,441,'Lance Soldier',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,442,'Lance Soldier (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,443,'Bow Soldier',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,444,'Bow Soldier (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,445,'Hammer',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,446,'Hammer (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,447,'Ripieo',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,448,'Ripieo (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,449,'Axer',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,450,'Axer (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,451,'Pumpkin Girl',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,452,'Pumpkin Girl (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,453,'Ghost',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,454,'Ghost (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,455,'Mummy Boy',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,456,'Mummy Boy (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,457,'Chrysanthemum',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,458,'Chrysanthemum (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,459,'Maple',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,460,'Maple (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,461,'Ginkgo',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,462,'Ginkgo (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,463,'Ghost (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,464,'Mummy Boy (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,477,'[PC Cafe] Orris',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,480,'Toy Soldier',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,481,'Toy Soldier (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,482,'Christmas Tree',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,483,'Christmas Tree (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,484,'Snowman',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,485,'Snowman (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,486,'Busker Monkey',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,487,'Busker Monkey (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,488,'DJ Monkey',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,489,'DJ Monkey (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,490,'Space Monkey',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,491,'Space Monkey (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,492,'Little Cupid',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,493,'Little Cupid (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,494,'Chocolate Cookie',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,495,'Chocolate Cookie (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,496,'Heart Girl',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,497,'Heart Girl (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,498,'Candy Girl',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,499,'Candy Girl (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,500,'Lollipop Mama',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,501,'Lollipop Mama (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,502,'Sweet Muscle Man',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(16,503,'Sweet Muscle Man (Evolved)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(19,0,'Pandora Box',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(19,1,'Red Card',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(19,2,'Blue Card',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(19,3,'Premium Muun Box',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(19,4,'1st Lucky Armor Ticket (Lv. 0)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(19,5,'1st Lucky Pants Ticket (Lv. 0)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(19,6,'1st Lucky Helm Ticket (Lv. 0)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(19,7,'1st Lucky Gloves Ticket (Lv. 0)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(19,8,'1st Lucky Boots Ticket (Lv. 0)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(19,9,'2nd Lucky Armor Ticket (Lv. 0)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(19,10,'2nd Lucky Pants Ticket (Lv. 0)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(19,11,'2nd Lucky Helm Ticket (Lv. 0)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(19,12,'2nd Lucky Gloves Ticket (Lv. 0)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(19,13,'2nd Lucky Boots Ticket (Lv. 0)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(19,14,'Red Card(Elemental)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(20,39,'Jasper necklace',9,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,830,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(20,40,'Lapis lazuli necklace',9,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,830,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(20,41,'Battle Jasper Necklace',9,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,830,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(20,42,'Battle Lapis Lazuli Necklace',9,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,830,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(20,43,'Blood Angel Chaos Combination Amulet Fragment (Bound)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(20,44,'Dark Angel Chaos Guild Charm Fragment (Bound)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(20,45,'Holy Angel Chaos Combination Charm Fragment (Bound)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(20,46,'Soul Chaos Guild Charm Fragment (Bound)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(20,47,'Blue Eye Chaos Combination Amulet Fragment (Bound)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(20,48,'Silver Heart Chaos Combination Charm Fragment (Bound)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(20,49,'Manticore Chaos Combination Charm Fragment (Bound)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(20,50,'Blood Angel Chaos Combination Charm (Bound)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,400,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(20,51,'Dark Angel Chaos Combination Charm (Bound)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,600,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(20,52,'Holy Angel Chaos Combination Amulet (Bound)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,800,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(20,53,'Soul Chaos Guild Charm (Bound)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,900,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(20,54,'Blue Eye Chaos Combination Charm (Bound)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1000,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(20,55,'Silver Heart Chaos Combination Charm (Bound)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1100,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(20,56,'Manticore Chaos Combination Charm (Bound)',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1200,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0),(20,57,'Gun Crusher Character Card',NULL,1,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `item_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_transformation`
--

DROP TABLE IF EXISTS `item_transformation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_transformation` (
  `type` tinyint(3) unsigned NOT NULL,
  `index` smallint(5) unsigned NOT NULL,
  `level` tinyint(3) unsigned DEFAULT NULL,
  `skin` smallint(5) unsigned DEFAULT NULL,
  `special` tinyint(4) DEFAULT NULL,
  `disabled` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`type`,`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_transformation`
--

LOCK TABLES `item_transformation` WRITE;
/*!40000 ALTER TABLE `item_transformation` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_transformation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_wing_graded_option`
--

DROP TABLE IF EXISTS `item_wing_graded_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_wing_graded_option` (
  `id` tinyint(3) unsigned NOT NULL,
  `value_1` int(11) DEFAULT NULL,
  `value_2` int(11) DEFAULT NULL,
  `value_3` int(11) DEFAULT NULL,
  `value_4` int(11) DEFAULT NULL,
  `value_5` int(11) DEFAULT NULL,
  `value_6` int(11) DEFAULT NULL,
  `value_7` int(11) DEFAULT NULL,
  `value_8` int(11) DEFAULT NULL,
  `value_9` int(11) DEFAULT NULL,
  `value_10` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_wing_graded_option`
--

LOCK TABLES `item_wing_graded_option` WRITE;
/*!40000 ALTER TABLE `item_wing_graded_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_wing_graded_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_wing_socket_option`
--

DROP TABLE IF EXISTS `item_wing_socket_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_wing_socket_option` (
  `type` tinyint(3) unsigned NOT NULL,
  `id` tinyint(3) unsigned NOT NULL,
  `rate` int(11) DEFAULT NULL,
  `value_1` int(11) DEFAULT NULL,
  `value_2` int(11) DEFAULT NULL,
  `value_3` int(11) DEFAULT NULL,
  `value_4` int(11) DEFAULT NULL,
  `value_5` int(11) DEFAULT NULL,
  `value_6` int(11) DEFAULT NULL,
  `value_7` int(11) DEFAULT NULL,
  `value_8` int(11) DEFAULT NULL,
  `value_9` int(11) DEFAULT NULL,
  `value_10` int(11) DEFAULT NULL,
  `value_11` int(11) DEFAULT NULL,
  `value_12` int(11) DEFAULT NULL,
  `value_13` int(11) DEFAULT NULL,
  `value_14` int(11) DEFAULT NULL,
  `value_15` int(11) DEFAULT NULL,
  `value_16` int(11) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`type`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_wing_socket_option`
--

LOCK TABLES `item_wing_socket_option` WRITE;
/*!40000 ALTER TABLE `item_wing_socket_option` DISABLE KEYS */;
INSERT INTO `item_wing_socket_option` VALUES (2,0,10000,25,35,45,55,65,75,85,96,107,118,130,142,154,167,180,193,'Elemental Defense Increase'),(3,0,8000,20,23,27,32,38,45,53,62,72,83,95,108,122,137,153,170,'Elemental Damage Increase'),(3,1,8000,5,10,15,20,26,32,38,45,52,59,67,75,84,93,104,125,'Elemental Attack Success Rate Increase'),(3,2,8000,5,10,15,20,26,32,38,45,52,59,67,75,84,93,104,125,'Elemental Defense Success Rate Increase'),(3,3,5000,30,34,39,45,52,60,69,79,90,102,115,129,144,160,177,195,'Elemental Damage (II) Increase'),(3,4,8000,4,6,8,10,13,16,19,23,27,31,36,41,46,52,58,64,'Elemental Defense (II) Increase'),(3,5,5000,10,15,25,35,46,57,68,80,92,104,117,130,144,158,174,200,'Elemental Attack Success Rate (II) Increase'),(3,6,5000,10,15,25,35,46,57,68,80,92,104,117,130,144,158,174,200,'Elemental Defense Success Rate (II) Increase');
/*!40000 ALTER TABLE `item_wing_socket_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_wing_socket_upgrade`
--

DROP TABLE IF EXISTS `item_wing_socket_upgrade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_wing_socket_upgrade` (
  `level` tinyint(3) unsigned NOT NULL,
  `rate` int(11) DEFAULT NULL,
  `item_type_1` tinyint(3) unsigned DEFAULT NULL,
  `item_index_1` smallint(5) unsigned DEFAULT NULL,
  `item_count_1` int(11) DEFAULT NULL,
  `item_type_2` tinyint(3) unsigned DEFAULT NULL,
  `item_index_2` smallint(5) unsigned DEFAULT NULL,
  `item_count_2` int(11) DEFAULT NULL,
  `item_type_3` tinyint(3) unsigned DEFAULT NULL,
  `item_index_3` smallint(5) unsigned DEFAULT NULL,
  `item_count_3` int(11) DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_wing_socket_upgrade`
--

LOCK TABLES `item_wing_socket_upgrade` WRITE;
/*!40000 ALTER TABLE `item_wing_socket_upgrade` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_wing_socket_upgrade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_wing_values`
--

DROP TABLE IF EXISTS `item_wing_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_wing_values` (
  `type` tinyint(3) unsigned NOT NULL,
  `index` smallint(5) unsigned NOT NULL,
  `damage_add` int(11) DEFAULT NULL,
  `damage_add_level` int(11) DEFAULT NULL,
  `absorb_add` int(11) DEFAULT NULL,
  `absorb_add_level` int(11) DEFAULT NULL,
  PRIMARY KEY (`type`,`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_wing_values`
--

LOCK TABLES `item_wing_values` WRITE;
/*!40000 ALTER TABLE `item_wing_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_wing_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mini_map`
--

DROP TABLE IF EXISTS `mini_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mini_map` (
  `world` smallint(5) unsigned NOT NULL,
  `index` tinyint(3) unsigned DEFAULT NULL,
  `group` tinyint(3) unsigned DEFAULT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL,
  `x` smallint(6) DEFAULT NULL,
  `y` smallint(6) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `server` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`world`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mini_map`
--

LOCK TABLES `mini_map` WRITE;
/*!40000 ALTER TABLE `mini_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `mini_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mining`
--

DROP TABLE IF EXISTS `mining`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mining` (
  `index` smallint(5) unsigned NOT NULL,
  `stage` tinyint(3) unsigned DEFAULT NULL,
  `value` tinyint(3) unsigned DEFAULT NULL,
  `item_rate` smallint(5) unsigned DEFAULT NULL,
  `item_index` smallint(5) unsigned DEFAULT NULL,
  `item_count` smallint(5) unsigned DEFAULT NULL,
  `bonus_item_rate` smallint(5) unsigned DEFAULT NULL,
  `bonus_item_index` smallint(5) unsigned DEFAULT NULL,
  `bonus_item_count` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mining`
--

LOCK TABLES `mining` WRITE;
/*!40000 ALTER TABLE `mining` DISABLE KEYS */;
/*!40000 ALTER TABLE `mining` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `misc_non_pk_time`
--

DROP TABLE IF EXISTS `misc_non_pk_time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `misc_non_pk_time` (
  `start_hour` tinyint(3) unsigned DEFAULT NULL,
  `start_minute` tinyint(3) unsigned DEFAULT NULL,
  `end_hour` tinyint(3) unsigned DEFAULT NULL,
  `end_minute` tinyint(3) unsigned DEFAULT NULL,
  `server` smallint(5) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `misc_non_pk_time`
--

LOCK TABLES `misc_non_pk_time` WRITE;
/*!40000 ALTER TABLE `misc_non_pk_time` DISABLE KEYS */;
/*!40000 ALTER TABLE `misc_non_pk_time` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mix_disabled`
--

DROP TABLE IF EXISTS `mix_disabled`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mix_disabled` (
  `type` tinyint(3) unsigned NOT NULL,
  `index` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`type`,`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mix_disabled`
--

LOCK TABLES `mix_disabled` WRITE;
/*!40000 ALTER TABLE `mix_disabled` DISABLE KEYS */;
/*!40000 ALTER TABLE `mix_disabled` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mix_guardian`
--

DROP TABLE IF EXISTS `mix_guardian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mix_guardian` (
  `type` tinyint(3) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `id` tinyint(3) unsigned DEFAULT NULL,
  `main_item_type` tinyint(3) unsigned DEFAULT NULL,
  `main_item_index` smallint(5) unsigned DEFAULT NULL,
  `main_item_level` tinyint(3) unsigned DEFAULT NULL,
  `main_item_durability` tinyint(3) unsigned DEFAULT NULL,
  `material_item_type_1` tinyint(3) unsigned DEFAULT NULL,
  `material_item_index_1` smallint(5) unsigned DEFAULT NULL,
  `material_aomunt_1` int(11) DEFAULT NULL,
  `material_item_type_2` tinyint(3) unsigned DEFAULT NULL,
  `material_item_index_2` smallint(5) unsigned DEFAULT NULL,
  `material_aomunt_2` int(11) DEFAULT NULL,
  `material_item_type_3` tinyint(3) unsigned DEFAULT NULL,
  `material_item_index_3` smallint(5) unsigned DEFAULT NULL,
  `material_aomunt_3` int(11) DEFAULT NULL,
  `material_item_type_4` tinyint(3) unsigned DEFAULT NULL,
  `material_item_index_4` smallint(5) unsigned DEFAULT NULL,
  `material_aomunt_4` int(11) DEFAULT NULL,
  `material_item_type_5` tinyint(3) unsigned DEFAULT NULL,
  `material_item_index_5` smallint(5) unsigned DEFAULT NULL,
  `material_aomunt_5` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `success_rate` int(11) DEFAULT NULL,
  `result_item_type` tinyint(3) unsigned DEFAULT NULL,
  `result_item_index` smallint(5) unsigned DEFAULT NULL,
  `result_level` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mix_guardian`
--

LOCK TABLES `mix_guardian` WRITE;
/*!40000 ALTER TABLE `mix_guardian` DISABLE KEYS */;
/*!40000 ALTER TABLE `mix_guardian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mix_jewel_template`
--

DROP TABLE IF EXISTS `mix_jewel_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mix_jewel_template` (
  `ide` tinyint(3) unsigned NOT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL,
  `index` smallint(5) unsigned DEFAULT NULL,
  `level` tinyint(3) unsigned DEFAULT NULL,
  `count` tinyint(3) unsigned DEFAULT NULL,
  `mix_money` int(10) unsigned DEFAULT NULL,
  `unmix_money` int(10) unsigned DEFAULT NULL,
  `pack_type` tinyint(3) unsigned DEFAULT NULL,
  `pack_index` smallint(5) unsigned DEFAULT NULL,
  `flags` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`ide`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mix_jewel_template`
--

LOCK TABLES `mix_jewel_template` WRITE;
/*!40000 ALTER TABLE `mix_jewel_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `mix_jewel_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mix_lucky_template`
--

DROP TABLE IF EXISTS `mix_lucky_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mix_lucky_template` (
  `ticket_type` tinyint(3) unsigned NOT NULL,
  `ticket_index` smallint(5) unsigned NOT NULL,
  `ticket_level` tinyint(3) unsigned DEFAULT NULL,
  `item_type` tinyint(3) unsigned DEFAULT NULL,
  `item_index` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`ticket_type`,`ticket_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mix_lucky_template`
--

LOCK TABLES `mix_lucky_template` WRITE;
/*!40000 ALTER TABLE `mix_lucky_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `mix_lucky_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mix_spellstone`
--

DROP TABLE IF EXISTS `mix_spellstone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mix_spellstone` (
  `type` tinyint(3) unsigned NOT NULL,
  `count` smallint(5) unsigned DEFAULT NULL,
  `rate_1` smallint(5) unsigned DEFAULT NULL,
  `rate_2` smallint(5) unsigned DEFAULT NULL,
  `rate_3` smallint(5) unsigned DEFAULT NULL,
  `rate_4` smallint(5) unsigned DEFAULT NULL,
  `rate_5` smallint(5) unsigned DEFAULT NULL,
  `rate_6` smallint(5) unsigned DEFAULT NULL,
  `rate_7` smallint(5) unsigned DEFAULT NULL,
  `rate_8` smallint(5) unsigned DEFAULT NULL,
  `rate_9` smallint(5) unsigned DEFAULT NULL,
  `rate_10` smallint(5) unsigned DEFAULT NULL,
  `rate_11` smallint(5) unsigned DEFAULT NULL,
  `rate_12` smallint(5) unsigned DEFAULT NULL,
  `rate_13` smallint(5) unsigned DEFAULT NULL,
  `rate_14` smallint(5) unsigned DEFAULT NULL,
  `rate_15` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mix_spellstone`
--

LOCK TABLES `mix_spellstone` WRITE;
/*!40000 ALTER TABLE `mix_spellstone` DISABLE KEYS */;
/*!40000 ALTER TABLE `mix_spellstone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monster`
--

DROP TABLE IF EXISTS `monster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monster` (
  `server` smallint(5) unsigned DEFAULT NULL,
  `guid` smallint(5) unsigned DEFAULT NULL,
  `id` smallint(5) unsigned DEFAULT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `world` smallint(5) unsigned DEFAULT NULL,
  `x1` smallint(6) DEFAULT NULL,
  `y1` smallint(6) DEFAULT NULL,
  `x2` smallint(6) DEFAULT NULL,
  `y2` smallint(6) DEFAULT NULL,
  `direction` tinyint(4) DEFAULT NULL,
  `spawn_delay` int(10) unsigned DEFAULT NULL,
  `spawn_distance` tinyint(3) unsigned DEFAULT NULL,
  `respawn_time_min` int(10) unsigned DEFAULT NULL,
  `respawn_time_max` int(10) unsigned DEFAULT NULL,
  `respawn_id` int(10) unsigned DEFAULT NULL,
  `move_distance` tinyint(3) unsigned DEFAULT NULL,
  `npc_function` varchar(255) DEFAULT NULL,
  `item_bag` varchar(255) DEFAULT NULL,
  `script_name` varchar(255) DEFAULT NULL,
  `elemental_attribute` tinyint(3) unsigned DEFAULT NULL,
  `disabled` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monster`
--

LOCK TABLES `monster` WRITE;
/*!40000 ALTER TABLE `monster` DISABLE KEYS */;
/*!40000 ALTER TABLE `monster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monster_ai_automata`
--

DROP TABLE IF EXISTS `monster_ai_automata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monster_ai_automata` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `priority` tinyint(3) unsigned DEFAULT NULL,
  `current_state` tinyint(3) unsigned DEFAULT NULL,
  `next_state` tinyint(3) unsigned DEFAULT NULL,
  `transaction_type` int(11) DEFAULT NULL,
  `transaction_rate` tinyint(3) unsigned DEFAULT NULL,
  `transaction_value_type` int(11) DEFAULT NULL,
  `transition_value` int(11) DEFAULT NULL,
  `delay` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monster_ai_automata`
--

LOCK TABLES `monster_ai_automata` WRITE;
/*!40000 ALTER TABLE `monster_ai_automata` DISABLE KEYS */;
/*!40000 ALTER TABLE `monster_ai_automata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monster_ai_data`
--

DROP TABLE IF EXISTS `monster_ai_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monster_ai_data` (
  `group` int(10) unsigned NOT NULL,
  `id` int(10) unsigned DEFAULT NULL,
  `ai_order_1` int(10) unsigned DEFAULT NULL,
  `ai_order_2` int(10) unsigned DEFAULT NULL,
  `ai_order_3` int(10) unsigned DEFAULT NULL,
  `ai_order_4` int(10) unsigned DEFAULT NULL,
  `ai_time_1` int(10) unsigned DEFAULT NULL,
  `ai_time_2` int(10) unsigned DEFAULT NULL,
  `ai_time_3` int(10) unsigned DEFAULT NULL,
  `ai_time_4` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monster_ai_data`
--

LOCK TABLES `monster_ai_data` WRITE;
/*!40000 ALTER TABLE `monster_ai_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `monster_ai_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monster_ai_element`
--

DROP TABLE IF EXISTS `monster_ai_element`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monster_ai_element` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `state` tinyint(3) unsigned DEFAULT NULL,
  `class` tinyint(3) unsigned DEFAULT NULL,
  `rate` tinyint(3) unsigned DEFAULT NULL,
  `delay` int(10) unsigned DEFAULT NULL,
  `target` int(11) DEFAULT NULL,
  `x` smallint(6) DEFAULT NULL,
  `y` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monster_ai_element`
--

LOCK TABLES `monster_ai_element` WRITE;
/*!40000 ALTER TABLE `monster_ai_element` DISABLE KEYS */;
/*!40000 ALTER TABLE `monster_ai_element` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monster_ai_unit`
--

DROP TABLE IF EXISTS `monster_ai_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monster_ai_unit` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `delay` int(10) unsigned DEFAULT NULL,
  `automatia` int(11) DEFAULT NULL,
  `ai_class_1` int(11) DEFAULT NULL,
  `ai_class_2` int(11) DEFAULT NULL,
  `ai_class_3` int(11) DEFAULT NULL,
  `ai_class_4` int(11) DEFAULT NULL,
  `ai_class_5` int(11) DEFAULT NULL,
  `ai_class_6` int(11) DEFAULT NULL,
  `ai_class_7` int(11) DEFAULT NULL,
  `ai_class_8` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monster_ai_unit`
--

LOCK TABLES `monster_ai_unit` WRITE;
/*!40000 ALTER TABLE `monster_ai_unit` DISABLE KEYS */;
/*!40000 ALTER TABLE `monster_ai_unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monster_equipment`
--

DROP TABLE IF EXISTS `monster_equipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monster_equipment` (
  `monster` smallint(5) unsigned NOT NULL,
  `slot` tinyint(3) unsigned DEFAULT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL,
  `index` smallint(5) unsigned DEFAULT NULL,
  `level` tinyint(3) unsigned DEFAULT NULL,
  `excellent_ancient` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`monster`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monster_equipment`
--

LOCK TABLES `monster_equipment` WRITE;
/*!40000 ALTER TABLE `monster_equipment` DISABLE KEYS */;
/*!40000 ALTER TABLE `monster_equipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monster_event`
--

DROP TABLE IF EXISTS `monster_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monster_event` (
  `server` smallint(5) unsigned DEFAULT NULL,
  `id` smallint(5) unsigned NOT NULL,
  `world` smallint(5) unsigned DEFAULT NULL,
  `x1` smallint(6) DEFAULT NULL,
  `y1` smallint(6) DEFAULT NULL,
  `x2` smallint(6) DEFAULT NULL,
  `y2` smallint(6) DEFAULT NULL,
  `direction` tinyint(4) DEFAULT NULL,
  `spawn_delay` int(10) unsigned DEFAULT NULL,
  `spawn_distance` tinyint(3) unsigned DEFAULT NULL,
  `respawn_time` int(10) unsigned DEFAULT NULL,
  `respawn_id` int(10) unsigned DEFAULT NULL,
  `move_distance` tinyint(3) unsigned DEFAULT NULL,
  `event_id` tinyint(3) unsigned DEFAULT NULL,
  `data_1` int(11) DEFAULT NULL,
  `data_2` int(11) DEFAULT NULL,
  `data_3` int(11) DEFAULT NULL,
  `data_4` int(11) DEFAULT NULL,
  `data_5` int(11) DEFAULT NULL,
  `npc_function` varchar(255) DEFAULT NULL,
  `item_bag` varchar(255) DEFAULT NULL,
  `script_name` varchar(255) DEFAULT NULL,
  `ai_group` int(10) unsigned DEFAULT NULL,
  `ai_group_member` int(10) unsigned DEFAULT NULL,
  `add_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monster_event`
--

LOCK TABLES `monster_event` WRITE;
/*!40000 ALTER TABLE `monster_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `monster_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monster_exclusive`
--

DROP TABLE IF EXISTS `monster_exclusive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monster_exclusive` (
  `server` smallint(5) unsigned NOT NULL,
  `guid` smallint(5) unsigned NOT NULL,
  `available_server` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`server`,`guid`,`available_server`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monster_exclusive`
--

LOCK TABLES `monster_exclusive` WRITE;
/*!40000 ALTER TABLE `monster_exclusive` DISABLE KEYS */;
/*!40000 ALTER TABLE `monster_exclusive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monster_respawn_location`
--

DROP TABLE IF EXISTS `monster_respawn_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monster_respawn_location` (
  `monster` smallint(5) unsigned NOT NULL,
  `group` int(10) unsigned DEFAULT NULL,
  `world` smallint(5) unsigned DEFAULT NULL,
  `x1` smallint(6) DEFAULT NULL,
  `y1` smallint(6) DEFAULT NULL,
  `x2` smallint(6) DEFAULT NULL,
  `y2` smallint(6) DEFAULT NULL,
  `direction` tinyint(4) DEFAULT NULL,
  `instance` int(11) DEFAULT NULL,
  `rate` tinyint(3) unsigned DEFAULT NULL,
  `server` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`monster`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monster_respawn_location`
--

LOCK TABLES `monster_respawn_location` WRITE;
/*!40000 ALTER TABLE `monster_respawn_location` DISABLE KEYS */;
/*!40000 ALTER TABLE `monster_respawn_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monster_skill`
--

DROP TABLE IF EXISTS `monster_skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monster_skill` (
  `monster` smallint(5) unsigned NOT NULL,
  `skill` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`monster`,`skill`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monster_skill`
--

LOCK TABLES `monster_skill` WRITE;
/*!40000 ALTER TABLE `monster_skill` DISABLE KEYS */;
/*!40000 ALTER TABLE `monster_skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monster_skill_special`
--

DROP TABLE IF EXISTS `monster_skill_special`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monster_skill_special` (
  `monster` smallint(5) unsigned NOT NULL,
  `type` smallint(6) NOT NULL,
  `skill` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`monster`,`type`,`skill`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monster_skill_special`
--

LOCK TABLES `monster_skill_special` WRITE;
/*!40000 ALTER TABLE `monster_skill_special` DISABLE KEYS */;
/*!40000 ALTER TABLE `monster_skill_special` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monster_soul_converter`
--

DROP TABLE IF EXISTS `monster_soul_converter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monster_soul_converter` (
  `id` int(10) unsigned NOT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL,
  `index` smallint(5) unsigned DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monster_soul_converter`
--

LOCK TABLES `monster_soul_converter` WRITE;
/*!40000 ALTER TABLE `monster_soul_converter` DISABLE KEYS */;
/*!40000 ALTER TABLE `monster_soul_converter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monster_soul_reward`
--

DROP TABLE IF EXISTS `monster_soul_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monster_soul_reward` (
  `id` int(10) unsigned NOT NULL,
  `sub_id` tinyint(3) unsigned DEFAULT NULL,
  `item_bag` varchar(255) DEFAULT NULL,
  `random_item_bag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monster_soul_reward`
--

LOCK TABLES `monster_soul_reward` WRITE;
/*!40000 ALTER TABLE `monster_soul_reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `monster_soul_reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monster_soul_transformation`
--

DROP TABLE IF EXISTS `monster_soul_transformation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monster_soul_transformation` (
  `type` int(10) unsigned NOT NULL,
  `id` int(10) unsigned NOT NULL,
  `world` smallint(5) unsigned NOT NULL,
  `monster` smallint(5) unsigned DEFAULT NULL,
  `required_soul` int(11) DEFAULT NULL,
  `drop_rate` int(11) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`type`,`id`,`world`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monster_soul_transformation`
--

LOCK TABLES `monster_soul_transformation` WRITE;
/*!40000 ALTER TABLE `monster_soul_transformation` DISABLE KEYS */;
/*!40000 ALTER TABLE `monster_soul_transformation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monster_template`
--

DROP TABLE IF EXISTS `monster_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monster_template` (
  `id` smallint(5) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `model` smallint(5) unsigned DEFAULT NULL,
  `size` float DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `min_level` smallint(5) unsigned DEFAULT NULL,
  `max_level` smallint(5) unsigned DEFAULT NULL,
  `life` int(11) DEFAULT NULL,
  `mana` int(11) DEFAULT NULL,
  `shield` int(11) DEFAULT NULL,
  `stamina` int(11) DEFAULT NULL,
  `attack_min_damage` int(11) DEFAULT NULL,
  `attack_max_damage` int(11) DEFAULT NULL,
  `magic_min_damage` int(11) DEFAULT NULL,
  `magic_max_damage` int(11) DEFAULT NULL,
  `critical_damage_rate` int(11) DEFAULT NULL,
  `critical_damage_add` int(11) DEFAULT NULL,
  `excellent_damage_rate` int(11) DEFAULT NULL,
  `excellent_damage_add` int(11) DEFAULT NULL,
  `attack_success` int(11) DEFAULT NULL,
  `defense` int(11) DEFAULT NULL,
  `defense_magic` int(11) DEFAULT NULL,
  `defense_success` int(11) DEFAULT NULL,
  `move_range` int(10) unsigned DEFAULT NULL,
  `move_speed` int(10) unsigned DEFAULT NULL,
  `attack_range` int(10) unsigned DEFAULT NULL,
  `attack_speed` int(11) DEFAULT NULL,
  `view_range` int(10) unsigned DEFAULT NULL,
  `resistance_1` tinyint(3) unsigned DEFAULT NULL,
  `resistance_2` tinyint(3) unsigned DEFAULT NULL,
  `resistance_3` tinyint(3) unsigned DEFAULT NULL,
  `resistance_4` tinyint(3) unsigned DEFAULT NULL,
  `resistance_5` tinyint(3) unsigned DEFAULT NULL,
  `resistance_6` tinyint(3) unsigned DEFAULT NULL,
  `resistance_7` tinyint(3) unsigned DEFAULT NULL,
  `respawn_time_min` int(10) unsigned DEFAULT NULL,
  `respawn_time_max` int(10) unsigned DEFAULT NULL,
  `item_rate` int(11) DEFAULT NULL,
  `zen_rate` int(11) DEFAULT NULL,
  `item_max_level` int(11) DEFAULT NULL,
  `life_regen_power` float DEFAULT NULL,
  `life_regen_time` int(10) unsigned DEFAULT NULL,
  `mana_regen_power` float DEFAULT NULL,
  `mana_regen_time` int(10) unsigned DEFAULT NULL,
  `shield_regen_power` float DEFAULT NULL,
  `shiled_regen_time` int(10) unsigned DEFAULT NULL,
  `stamina_regen_power` float DEFAULT NULL,
  `stamina_regen_time` int(10) unsigned DEFAULT NULL,
  `faction` tinyint(3) unsigned DEFAULT NULL,
  `faction_level` tinyint(3) unsigned DEFAULT NULL,
  `script_name` varchar(255) DEFAULT NULL,
  `elemental_attribute` tinyint(3) unsigned DEFAULT NULL,
  `elemental_pattern` int(11) DEFAULT NULL,
  `elemental_defense` int(11) DEFAULT NULL,
  `elemental_damage_min` int(11) DEFAULT NULL,
  `elemental_damage_max` int(11) DEFAULT NULL,
  `elemental_attack_rate` int(11) DEFAULT NULL,
  `elemental_defense_rate` int(11) DEFAULT NULL,
  `radiance_immune` tinyint(3) unsigned DEFAULT NULL,
  `debuff_resistance` int(11) DEFAULT NULL,
  `debuff_defense` int(11) DEFAULT NULL,
  `critical_damage_resistance` tinyint(3) unsigned DEFAULT NULL,
  `excellent_damage_resistance` tinyint(3) unsigned DEFAULT NULL,
  `damage_absorb` tinyint(3) unsigned DEFAULT NULL,
  `elite` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monster_template`
--

LOCK TABLES `monster_template` WRITE;
/*!40000 ALTER TABLE `monster_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `monster_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monster_template_custom`
--

DROP TABLE IF EXISTS `monster_template_custom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monster_template_custom` (
  `id` smallint(5) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `model` smallint(5) unsigned DEFAULT NULL,
  `size` float DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `min_level` smallint(5) unsigned DEFAULT NULL,
  `max_level` smallint(5) unsigned DEFAULT NULL,
  `life` int(11) DEFAULT NULL,
  `mana` int(11) DEFAULT NULL,
  `shield` int(11) DEFAULT NULL,
  `stamina` int(11) DEFAULT NULL,
  `attack_min_damage` int(11) DEFAULT NULL,
  `attack_max_damage` int(11) DEFAULT NULL,
  `magic_min_damage` int(11) DEFAULT NULL,
  `magic_max_damage` int(11) DEFAULT NULL,
  `excellent_damage_rate` int(11) DEFAULT NULL,
  `excellent_damage_add` int(11) DEFAULT NULL,
  `attack_success` int(11) DEFAULT NULL,
  `defense` int(11) DEFAULT NULL,
  `defense_magic` int(11) DEFAULT NULL,
  `defense_success` int(11) DEFAULT NULL,
  `move_range` int(10) unsigned DEFAULT NULL,
  `move_speed` int(10) unsigned DEFAULT NULL,
  `attack_range` int(10) unsigned DEFAULT NULL,
  `attack_speed` int(11) DEFAULT NULL,
  `view_range` int(10) unsigned DEFAULT NULL,
  `resistance_1` tinyint(3) unsigned DEFAULT NULL,
  `resistance_2` tinyint(3) unsigned DEFAULT NULL,
  `resistance_3` tinyint(3) unsigned DEFAULT NULL,
  `resistance_4` tinyint(3) unsigned DEFAULT NULL,
  `resistance_5` tinyint(3) unsigned DEFAULT NULL,
  `resistance_6` tinyint(3) unsigned DEFAULT NULL,
  `resistance_7` tinyint(3) unsigned DEFAULT NULL,
  `respawn_time_min` int(10) unsigned DEFAULT NULL,
  `respawn_time_max` int(10) unsigned DEFAULT NULL,
  `item_rate` int(11) DEFAULT NULL,
  `zen_rate` int(11) DEFAULT NULL,
  `item_max_level` int(11) DEFAULT NULL,
  `life_regen_power` float DEFAULT NULL,
  `life_regen_time` int(10) unsigned DEFAULT NULL,
  `mana_regen_power` float DEFAULT NULL,
  `mana_regen_time` int(10) unsigned DEFAULT NULL,
  `shield_regen_power` float DEFAULT NULL,
  `shiled_regen_time` int(10) unsigned DEFAULT NULL,
  `stamina_regen_power` float DEFAULT NULL,
  `stamina_regen_time` int(10) unsigned DEFAULT NULL,
  `faction` tinyint(3) unsigned DEFAULT NULL,
  `faction_level` tinyint(3) unsigned DEFAULT NULL,
  `script_name` varchar(255) DEFAULT NULL,
  `elemental_attribute` tinyint(3) unsigned DEFAULT NULL,
  `elemental_pattern` int(11) DEFAULT NULL,
  `elemental_defense` int(11) DEFAULT NULL,
  `elemental_damage_min` int(11) DEFAULT NULL,
  `elemental_damage_max` int(11) DEFAULT NULL,
  `elemental_attack_rate` int(11) DEFAULT NULL,
  `elemental_defense_rate` int(11) DEFAULT NULL,
  `radiance_immune` tinyint(3) unsigned DEFAULT NULL,
  `debuff_resistance` int(11) DEFAULT NULL,
  `debuff_defense` int(11) DEFAULT NULL,
  `critical_damage_resistance` tinyint(3) unsigned DEFAULT NULL,
  `excellent_damage_resistance` tinyint(3) unsigned DEFAULT NULL,
  `damage_absorb` tinyint(3) unsigned DEFAULT NULL,
  `elite` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monster_template_custom`
--

LOCK TABLES `monster_template_custom` WRITE;
/*!40000 ALTER TABLE `monster_template_custom` DISABLE KEYS */;
/*!40000 ALTER TABLE `monster_template_custom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `moss_merchant_section`
--

DROP TABLE IF EXISTS `moss_merchant_section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `moss_merchant_section` (
  `id` tinyint(3) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `required_item` smallint(5) unsigned DEFAULT NULL,
  `required_zen` int(10) unsigned DEFAULT NULL,
  `item_bag` varchar(255) DEFAULT NULL,
  `enabled` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moss_merchant_section`
--

LOCK TABLES `moss_merchant_section` WRITE;
/*!40000 ALTER TABLE `moss_merchant_section` DISABLE KEYS */;
/*!40000 ALTER TABLE `moss_merchant_section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `move_level`
--

DROP TABLE IF EXISTS `move_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `move_level` (
  `level` smallint(6) NOT NULL,
  `world` smallint(5) unsigned NOT NULL,
  `x1` smallint(6) DEFAULT NULL,
  `y1` smallint(6) DEFAULT NULL,
  `x2` smallint(6) DEFAULT NULL,
  `y2` smallint(6) DEFAULT NULL,
  `disabled` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`world`,`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `move_level`
--

LOCK TABLES `move_level` WRITE;
/*!40000 ALTER TABLE `move_level` DISABLE KEYS */;
/*!40000 ALTER TABLE `move_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muun`
--

DROP TABLE IF EXISTS `muun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `muun` (
  `index` smallint(5) unsigned NOT NULL,
  `rank` tinyint(3) unsigned DEFAULT NULL,
  `option_index` tinyint(3) unsigned DEFAULT NULL,
  `special_option_type` tinyint(3) unsigned DEFAULT NULL,
  `special_option_value` int(11) DEFAULT NULL,
  `evolution_item_index` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muun`
--

LOCK TABLES `muun` WRITE;
/*!40000 ALTER TABLE `muun` DISABLE KEYS */;
/*!40000 ALTER TABLE `muun` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muun_energy`
--

DROP TABLE IF EXISTS `muun_energy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `muun_energy` (
  `rating` tinyint(3) unsigned DEFAULT NULL,
  `value_1` tinyint(3) unsigned DEFAULT NULL,
  `value_2` tinyint(3) unsigned DEFAULT NULL,
  `value_3` tinyint(3) unsigned DEFAULT NULL,
  `value_4` tinyint(3) unsigned DEFAULT NULL,
  `value_5` tinyint(3) unsigned DEFAULT NULL,
  `evolution_value` tinyint(3) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muun_energy`
--

LOCK TABLES `muun_energy` WRITE;
/*!40000 ALTER TABLE `muun_energy` DISABLE KEYS */;
/*!40000 ALTER TABLE `muun_energy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muun_exchange`
--

DROP TABLE IF EXISTS `muun_exchange`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `muun_exchange` (
  `id` tinyint(3) unsigned NOT NULL,
  `count` tinyint(3) unsigned DEFAULT NULL,
  `muun` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muun_exchange`
--

LOCK TABLES `muun_exchange` WRITE;
/*!40000 ALTER TABLE `muun_exchange` DISABLE KEYS */;
/*!40000 ALTER TABLE `muun_exchange` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muun_option`
--

DROP TABLE IF EXISTS `muun_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `muun_option` (
  `index` tinyint(3) unsigned NOT NULL,
  `option_value_1` int(11) DEFAULT NULL,
  `option_value_2` int(11) DEFAULT NULL,
  `option_value_3` int(11) DEFAULT NULL,
  `option_value_4` int(11) DEFAULT NULL,
  `option_value_5` int(11) DEFAULT NULL,
  `max_option_value` int(11) DEFAULT NULL,
  `max_zone` smallint(5) unsigned DEFAULT NULL,
  `play_time` int(11) DEFAULT NULL,
  `day_of_week` int(11) DEFAULT NULL,
  `min_hour` int(11) DEFAULT NULL,
  `max_hour` int(11) DEFAULT NULL,
  `min_level` int(11) DEFAULT NULL,
  `max_level` int(11) DEFAULT NULL,
  `min_master_level` int(11) DEFAULT NULL,
  `max_master_level` int(11) DEFAULT NULL,
  PRIMARY KEY (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muun_option`
--

LOCK TABLES `muun_option` WRITE;
/*!40000 ALTER TABLE `muun_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `muun_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notice` (
  `notice` varchar(255) DEFAULT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `world` smallint(5) unsigned NOT NULL,
  `flag` tinyint(3) unsigned DEFAULT NULL,
  `time` int(10) unsigned DEFAULT NULL,
  `group` smallint(5) unsigned DEFAULT NULL,
  `sub_group` smallint(5) unsigned DEFAULT NULL,
  `server` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`server`,`world`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice`
--

LOCK TABLES `notice` WRITE;
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `server_code` smallint(5) unsigned NOT NULL,
  `text` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`server_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offline_attack_world`
--

DROP TABLE IF EXISTS `offline_attack_world`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offline_attack_world` (
  `world_id` smallint(5) unsigned NOT NULL,
  `server_id` smallint(5) unsigned NOT NULL,
  `level_min` smallint(6) DEFAULT NULL,
  `level_max` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`world_id`,`server_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offline_attack_world`
--

LOCK TABLES `offline_attack_world` WRITE;
/*!40000 ALTER TABLE `offline_attack_world` DISABLE KEYS */;
/*!40000 ALTER TABLE `offline_attack_world` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offline_attack_zone`
--

DROP TABLE IF EXISTS `offline_attack_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offline_attack_zone` (
  `world` smallint(5) unsigned NOT NULL,
  `x1` smallint(6) DEFAULT NULL,
  `y1` smallint(6) DEFAULT NULL,
  `x2` smallint(6) DEFAULT NULL,
  `y2` smallint(6) DEFAULT NULL,
  `enabled` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`world`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offline_attack_zone`
--

LOCK TABLES `offline_attack_zone` WRITE;
/*!40000 ALTER TABLE `offline_attack_zone` DISABLE KEYS */;
/*!40000 ALTER TABLE `offline_attack_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offset_data`
--

DROP TABLE IF EXISTS `offset_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offset_data` (
  `offset` int(10) unsigned NOT NULL,
  `value` tinyint(3) unsigned DEFAULT NULL,
  `fix` tinyint(3) unsigned DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`offset`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offset_data`
--

LOCK TABLES `offset_data` WRITE;
/*!40000 ALTER TABLE `offset_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `offset_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offset_fps`
--

DROP TABLE IF EXISTS `offset_fps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offset_fps` (
  `offset` int(10) unsigned NOT NULL,
  `mod` tinyint(3) unsigned DEFAULT NULL,
  `original` tinyint(3) unsigned DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`offset`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offset_fps`
--

LOCK TABLES `offset_fps` WRITE;
/*!40000 ALTER TABLE `offset_fps` DISABLE KEYS */;
/*!40000 ALTER TABLE `offset_fps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pentagram_jewel_option`
--

DROP TABLE IF EXISTS `pentagram_jewel_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pentagram_jewel_option` (
  `index` tinyint(3) unsigned NOT NULL,
  `item_type` tinyint(3) unsigned DEFAULT NULL,
  `item_index` smallint(5) unsigned DEFAULT NULL,
  `rank_number` tinyint(3) unsigned DEFAULT NULL,
  `rank_option` tinyint(3) unsigned DEFAULT NULL,
  `rate` smallint(5) unsigned DEFAULT NULL,
  `unknown` tinyint(4) DEFAULT NULL,
  `value_1` int(11) DEFAULT NULL,
  `upgrade_rate_1` smallint(5) unsigned DEFAULT NULL,
  `value_2` int(11) DEFAULT NULL,
  `upgrade_rate_2` smallint(5) unsigned DEFAULT NULL,
  `value_3` int(11) DEFAULT NULL,
  `upgrade_rate_3` smallint(5) unsigned DEFAULT NULL,
  `value_4` int(11) DEFAULT NULL,
  `upgrade_rate_4` smallint(5) unsigned DEFAULT NULL,
  `value_5` int(11) DEFAULT NULL,
  `upgrade_rate_5` smallint(5) unsigned DEFAULT NULL,
  `value_6` int(11) DEFAULT NULL,
  `upgrade_rate_6` smallint(5) unsigned DEFAULT NULL,
  `value_7` int(11) DEFAULT NULL,
  `upgrade_rate_7` smallint(5) unsigned DEFAULT NULL,
  `value_8` int(11) DEFAULT NULL,
  `upgrade_rate_8` smallint(5) unsigned DEFAULT NULL,
  `value_9` int(11) DEFAULT NULL,
  `upgrade_rate_9` smallint(5) unsigned DEFAULT NULL,
  `value_10` int(11) DEFAULT NULL,
  `upgrade_rate_10` smallint(5) unsigned DEFAULT NULL,
  `value_11` int(11) DEFAULT NULL,
  `upgrade_rate_11` smallint(5) unsigned DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `variable_type` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pentagram_jewel_option`
--

LOCK TABLES `pentagram_jewel_option` WRITE;
/*!40000 ALTER TABLE `pentagram_jewel_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `pentagram_jewel_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pentagram_jewel_remove`
--

DROP TABLE IF EXISTS `pentagram_jewel_remove`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pentagram_jewel_remove` (
  `index` tinyint(3) unsigned NOT NULL,
  `mix_rate_1` smallint(5) unsigned DEFAULT NULL,
  `mix_rate_2` smallint(5) unsigned DEFAULT NULL,
  `mix_rate_3` smallint(5) unsigned DEFAULT NULL,
  `mix_rate_4` smallint(5) unsigned DEFAULT NULL,
  `mix_rate_5` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pentagram_jewel_remove`
--

LOCK TABLES `pentagram_jewel_remove` WRITE;
/*!40000 ALTER TABLE `pentagram_jewel_remove` DISABLE KEYS */;
/*!40000 ALTER TABLE `pentagram_jewel_remove` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pentagram_jewel_upgrade_level`
--

DROP TABLE IF EXISTS `pentagram_jewel_upgrade_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pentagram_jewel_upgrade_level` (
  `index` tinyint(3) unsigned NOT NULL,
  `mix_money` int(10) unsigned DEFAULT NULL,
  `mix_rate_1` smallint(5) unsigned DEFAULT NULL,
  `mix_rate_2` smallint(5) unsigned DEFAULT NULL,
  `mix_rate_3` smallint(5) unsigned DEFAULT NULL,
  `mix_rate_4` smallint(5) unsigned DEFAULT NULL,
  `mix_rate_5` smallint(5) unsigned DEFAULT NULL,
  `required_elemental_rune_1` int(11) DEFAULT NULL,
  `required_elemental_rune_2` int(11) DEFAULT NULL,
  `required_elemental_rune_3` int(11) DEFAULT NULL,
  `required_elemental_rune_4` int(11) DEFAULT NULL,
  `required_elemental_rune_5` int(11) DEFAULT NULL,
  PRIMARY KEY (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pentagram_jewel_upgrade_level`
--

LOCK TABLES `pentagram_jewel_upgrade_level` WRITE;
/*!40000 ALTER TABLE `pentagram_jewel_upgrade_level` DISABLE KEYS */;
/*!40000 ALTER TABLE `pentagram_jewel_upgrade_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pentagram_jewel_upgrade_rank`
--

DROP TABLE IF EXISTS `pentagram_jewel_upgrade_rank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pentagram_jewel_upgrade_rank` (
  `index` tinyint(3) unsigned NOT NULL,
  `mix_money` int(10) unsigned DEFAULT NULL,
  `mix_rate` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pentagram_jewel_upgrade_rank`
--

LOCK TABLES `pentagram_jewel_upgrade_rank` WRITE;
/*!40000 ALTER TABLE `pentagram_jewel_upgrade_rank` DISABLE KEYS */;
/*!40000 ALTER TABLE `pentagram_jewel_upgrade_rank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pentagram_option`
--

DROP TABLE IF EXISTS `pentagram_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pentagram_option` (
  `index` tinyint(3) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value` smallint(5) unsigned DEFAULT NULL,
  `type_1` tinyint(3) unsigned DEFAULT NULL,
  `rank_1` tinyint(3) unsigned DEFAULT NULL,
  `level_1` tinyint(3) unsigned DEFAULT NULL,
  `type_2` tinyint(3) unsigned DEFAULT NULL,
  `rank_2` tinyint(3) unsigned DEFAULT NULL,
  `level_2` tinyint(3) unsigned DEFAULT NULL,
  `type_3` tinyint(3) unsigned DEFAULT NULL,
  `rank_3` tinyint(3) unsigned DEFAULT NULL,
  `level_3` tinyint(3) unsigned DEFAULT NULL,
  `type_4` tinyint(3) unsigned DEFAULT NULL,
  `rank_4` tinyint(3) unsigned DEFAULT NULL,
  `level_4` tinyint(3) unsigned DEFAULT NULL,
  `type_5` tinyint(3) unsigned DEFAULT NULL,
  `rank_5` tinyint(3) unsigned DEFAULT NULL,
  `level_5` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pentagram_option`
--

LOCK TABLES `pentagram_option` WRITE;
/*!40000 ALTER TABLE `pentagram_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `pentagram_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pentagram_type`
--

DROP TABLE IF EXISTS `pentagram_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pentagram_type` (
  `index` smallint(5) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `rate` tinyint(3) unsigned DEFAULT NULL,
  `option_1` tinyint(3) unsigned DEFAULT NULL,
  `option_2` tinyint(3) unsigned DEFAULT NULL,
  `option_3` tinyint(3) unsigned DEFAULT NULL,
  `option_4` tinyint(3) unsigned DEFAULT NULL,
  `option_5` tinyint(3) unsigned DEFAULT NULL,
  `option_6` tinyint(3) unsigned DEFAULT NULL,
  `option_7` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pentagram_type`
--

LOCK TABLES `pentagram_type` WRITE;
/*!40000 ALTER TABLE `pentagram_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `pentagram_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quest_evolution_condition`
--

DROP TABLE IF EXISTS `quest_evolution_condition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quest_evolution_condition` (
  `quest` tinyint(3) unsigned NOT NULL,
  `condition_id` int(11) DEFAULT NULL,
  `required_quest_id` tinyint(3) unsigned DEFAULT NULL,
  `min_level` int(10) unsigned DEFAULT NULL,
  `max_level` int(10) unsigned DEFAULT NULL,
  `required_zen` int(10) unsigned DEFAULT NULL,
  `context_start` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`quest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quest_evolution_condition`
--

LOCK TABLES `quest_evolution_condition` WRITE;
/*!40000 ALTER TABLE `quest_evolution_condition` DISABLE KEYS */;
/*!40000 ALTER TABLE `quest_evolution_condition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quest_evolution_data`
--

DROP TABLE IF EXISTS `quest_evolution_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quest_evolution_data` (
  `quest_id` tinyint(3) unsigned NOT NULL,
  `objective_type` tinyint(3) unsigned DEFAULT NULL,
  `item_type` tinyint(3) unsigned DEFAULT NULL,
  `item_index` smallint(5) unsigned DEFAULT NULL,
  `item_level` tinyint(3) unsigned DEFAULT NULL,
  `count` smallint(5) unsigned DEFAULT NULL,
  `monster_id` smallint(6) DEFAULT NULL,
  `monster_min_level` smallint(6) DEFAULT NULL,
  `monster_max_level` smallint(6) DEFAULT NULL,
  `monster_slot` tinyint(3) unsigned DEFAULT NULL,
  `drop_rate` smallint(5) unsigned DEFAULT NULL,
  `reward_type` smallint(5) unsigned DEFAULT NULL,
  `reward_sub_type` smallint(5) unsigned DEFAULT NULL,
  `reward_count` smallint(5) unsigned DEFAULT NULL,
  `condition_index` smallint(6) DEFAULT NULL,
  `context_before_reg` smallint(5) unsigned DEFAULT NULL,
  `context_after_reg` smallint(5) unsigned DEFAULT NULL,
  `context_complete_quest` smallint(5) unsigned DEFAULT NULL,
  `context_clear_quest` smallint(5) unsigned DEFAULT NULL,
  `required_class_dark_wizard` tinyint(3) unsigned DEFAULT NULL,
  `required_class_dark_knight` tinyint(3) unsigned DEFAULT NULL,
  `required_class_fairy_elf` tinyint(3) unsigned DEFAULT NULL,
  `required_class_magic_gladiator` tinyint(3) unsigned DEFAULT NULL,
  `required_class_dark_lord` tinyint(3) unsigned DEFAULT NULL,
  `required_class_summoner` tinyint(3) unsigned DEFAULT NULL,
  `required_class_rage_fighter` tinyint(3) unsigned DEFAULT NULL,
  `required_class_grow_lancer` tinyint(3) unsigned DEFAULT NULL,
  `required_class_rune_wizard` tinyint(3) unsigned DEFAULT NULL,
  `required_class_slayer` tinyint(3) unsigned DEFAULT NULL,
  `required_class_gun_crusher` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`quest_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quest_evolution_data`
--

LOCK TABLES `quest_evolution_data` WRITE;
/*!40000 ALTER TABLE `quest_evolution_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `quest_evolution_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quest_evolution_item_reward`
--

DROP TABLE IF EXISTS `quest_evolution_item_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quest_evolution_item_reward` (
  `quest_id` tinyint(3) unsigned NOT NULL,
  `class_flag` int(10) unsigned DEFAULT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL,
  `index` smallint(5) unsigned DEFAULT NULL,
  `level` tinyint(3) unsigned DEFAULT NULL,
  `qurability` tinyint(3) unsigned DEFAULT NULL,
  `skill` tinyint(3) unsigned DEFAULT NULL,
  `luck` tinyint(3) unsigned DEFAULT NULL,
  `option` tinyint(3) unsigned DEFAULT NULL,
  `excellent` tinyint(3) unsigned DEFAULT NULL,
  `ancient` tinyint(3) unsigned DEFAULT NULL,
  `socket_1` smallint(5) unsigned DEFAULT NULL,
  `socket_2` smallint(5) unsigned DEFAULT NULL,
  `socket_3` smallint(5) unsigned DEFAULT NULL,
  `socket_4` smallint(5) unsigned DEFAULT NULL,
  `socket_5` smallint(5) unsigned DEFAULT NULL,
  `socket_bonus` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`quest_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quest_evolution_item_reward`
--

LOCK TABLES `quest_evolution_item_reward` WRITE;
/*!40000 ALTER TABLE `quest_evolution_item_reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `quest_evolution_item_reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quest_evolution_template`
--

DROP TABLE IF EXISTS `quest_evolution_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quest_evolution_template` (
  `quest_id` tinyint(3) unsigned NOT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL,
  `npc` smallint(5) unsigned DEFAULT NULL,
  `party` tinyint(3) unsigned DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`quest_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quest_evolution_template`
--

LOCK TABLES `quest_evolution_template` WRITE;
/*!40000 ALTER TABLE `quest_evolution_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `quest_evolution_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quest_mu`
--

DROP TABLE IF EXISTS `quest_mu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quest_mu` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `server` smallint(5) unsigned DEFAULT NULL,
  `day` tinyint(3) unsigned DEFAULT NULL,
  `template_type_1` tinyint(3) unsigned DEFAULT NULL,
  `chapter` tinyint(3) unsigned DEFAULT NULL,
  `category` tinyint(3) unsigned DEFAULT NULL,
  `importance` tinyint(3) unsigned DEFAULT NULL,
  `start_type` tinyint(3) unsigned DEFAULT NULL,
  `start_sub_type` smallint(5) unsigned DEFAULT NULL,
  `level_min` smallint(5) unsigned DEFAULT NULL,
  `level_max` smallint(5) unsigned DEFAULT NULL,
  `repeat_cycle` tinyint(4) DEFAULT NULL,
  `precedence_quest` smallint(6) DEFAULT NULL,
  `start_item_type` tinyint(4) DEFAULT NULL,
  `start_item_index` smallint(6) DEFAULT NULL,
  `check_gens` tinyint(4) DEFAULT NULL,
  `zen` int(11) DEFAULT NULL,
  `required_class_dark_wizard` tinyint(3) unsigned DEFAULT NULL,
  `required_class_dark_knight` tinyint(3) unsigned DEFAULT NULL,
  `required_class_fairy_elf` tinyint(3) unsigned DEFAULT NULL,
  `required_class_magic_gladiator` tinyint(3) unsigned DEFAULT NULL,
  `required_class_dark_lord` tinyint(3) unsigned DEFAULT NULL,
  `required_class_summoner` tinyint(3) unsigned DEFAULT NULL,
  `required_class_rage_fighter` tinyint(3) unsigned DEFAULT NULL,
  `required_class_grow_lancer` tinyint(3) unsigned DEFAULT NULL,
  `required_class_rune_wizard` tinyint(3) unsigned DEFAULT NULL,
  `required_class_slayer` tinyint(3) unsigned DEFAULT NULL,
  `required_class_gun_crusher` tinyint(3) unsigned DEFAULT NULL,
  `add_class` tinyint(3) unsigned DEFAULT NULL,
  `template_type_2` tinyint(3) unsigned DEFAULT NULL,
  `objective_type` tinyint(3) unsigned DEFAULT NULL,
  `objective_main_type` smallint(6) DEFAULT NULL,
  `objective_main_sub_type` smallint(6) DEFAULT NULL,
  `target_number` smallint(6) DEFAULT NULL,
  `target_max_level` smallint(6) DEFAULT NULL,
  `drop_rate` smallint(6) DEFAULT NULL,
  `gate_id` smallint(5) unsigned DEFAULT NULL,
  `map_id` smallint(5) unsigned DEFAULT NULL,
  `x` smallint(6) DEFAULT NULL,
  `y` smallint(6) DEFAULT NULL,
  `reward_experience` int(11) DEFAULT NULL,
  `reward_zen` int(11) DEFAULT NULL,
  `reward_gens_points` tinyint(3) unsigned DEFAULT NULL,
  `reward_item_type_1` tinyint(4) DEFAULT NULL,
  `reward_item_index_1` smallint(6) DEFAULT NULL,
  `reward_item_count_1` smallint(6) DEFAULT NULL,
  `reward_item_type_2` tinyint(4) DEFAULT NULL,
  `reward_item_index_2` smallint(6) DEFAULT NULL,
  `reward_item_count_2` smallint(6) DEFAULT NULL,
  `reward_item_type_3` tinyint(4) DEFAULT NULL,
  `reward_item_index_3` smallint(6) DEFAULT NULL,
  `reward_item_count_3` smallint(6) DEFAULT NULL,
  `reward_type` smallint(6) DEFAULT NULL,
  `reward_sub_type` smallint(6) DEFAULT NULL,
  `reward_number` smallint(6) DEFAULT NULL,
  `disabled` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quest_mu`
--

LOCK TABLES `quest_mu` WRITE;
/*!40000 ALTER TABLE `quest_mu` DISABLE KEYS */;
/*!40000 ALTER TABLE `quest_mu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quest_mu_orig`
--

DROP TABLE IF EXISTS `quest_mu_orig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quest_mu_orig` (
  `ID` int(10) unsigned NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Server` smallint(5) unsigned DEFAULT NULL,
  `Day` tinyint(3) unsigned DEFAULT NULL,
  `TemplateType1` tinyint(3) unsigned DEFAULT NULL,
  `Chapter` tinyint(3) unsigned DEFAULT NULL,
  `Category` tinyint(3) unsigned DEFAULT NULL,
  `Importance` tinyint(3) unsigned DEFAULT NULL,
  `StartType` tinyint(3) unsigned DEFAULT NULL,
  `StartSubType` smallint(5) unsigned DEFAULT NULL,
  `LevelMin` smallint(5) unsigned DEFAULT NULL,
  `LevelMax` smallint(5) unsigned DEFAULT NULL,
  `RepeatCycle` tinyint(4) DEFAULT NULL,
  `PrecedenceQuest` smallint(6) DEFAULT NULL,
  `StartItemType` tinyint(4) DEFAULT NULL,
  `StartItemIndex` smallint(6) DEFAULT NULL,
  `CheckGens` tinyint(4) DEFAULT NULL,
  `Zen` int(11) DEFAULT NULL,
  `DarkWizard` tinyint(3) unsigned DEFAULT NULL,
  `DarkKnight` tinyint(3) unsigned DEFAULT NULL,
  `FairyElf` tinyint(3) unsigned DEFAULT NULL,
  `MagicGladiator` tinyint(3) unsigned DEFAULT NULL,
  `DarkLord` tinyint(3) unsigned DEFAULT NULL,
  `Summoner` tinyint(3) unsigned DEFAULT NULL,
  `RageFighter` tinyint(3) unsigned DEFAULT NULL,
  `GrowLancer` tinyint(3) unsigned DEFAULT NULL,
  `RuneWizard` tinyint(3) unsigned DEFAULT NULL,
  `Slayer` tinyint(3) unsigned DEFAULT NULL,
  `GunCrusher` tinyint(3) unsigned DEFAULT NULL,
  `AddClass1` tinyint(3) unsigned DEFAULT NULL,
  `TemplateType2` tinyint(3) unsigned DEFAULT NULL,
  `ObjectiveType` tinyint(3) unsigned DEFAULT NULL,
  `ObjectiveMainType` smallint(6) DEFAULT NULL,
  `ObjectiveMainSubType` smallint(6) DEFAULT NULL,
  `TargetNumber` smallint(6) DEFAULT NULL,
  `TargetMaxLevel` smallint(6) DEFAULT NULL,
  `DropRate` smallint(6) DEFAULT NULL,
  `GateID` smallint(5) unsigned DEFAULT NULL,
  `MapID` smallint(5) unsigned DEFAULT NULL,
  `X` smallint(6) DEFAULT NULL,
  `Y` smallint(6) DEFAULT NULL,
  `RewardExperience` int(11) DEFAULT NULL,
  `RewardZen` int(11) DEFAULT NULL,
  `RewardGensPoints` tinyint(3) unsigned DEFAULT NULL,
  `RewardItemType01` tinyint(4) DEFAULT NULL,
  `RewardItemIndex01` smallint(6) DEFAULT NULL,
  `RewardItemCount01` smallint(6) DEFAULT NULL,
  `RewardItemType02` tinyint(4) DEFAULT NULL,
  `RewardItemIndex02` smallint(6) DEFAULT NULL,
  `RewardItemCount02` smallint(6) DEFAULT NULL,
  `RewardItemType03` tinyint(4) DEFAULT NULL,
  `RewardItemIndex03` smallint(6) DEFAULT NULL,
  `RewardItemCount03` smallint(6) DEFAULT NULL,
  `RewardType` smallint(6) DEFAULT NULL,
  `RewardSubType` smallint(6) DEFAULT NULL,
  `RewardNumber` smallint(6) DEFAULT NULL,
  `Disabled` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quest_mu_orig`
--

LOCK TABLES `quest_mu_orig` WRITE;
/*!40000 ALTER TABLE `quest_mu_orig` DISABLE KEYS */;
/*!40000 ALTER TABLE `quest_mu_orig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scramble_word`
--

DROP TABLE IF EXISTS `scramble_word`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scramble_word` (
  `word` varchar(255) NOT NULL,
  PRIMARY KEY (`word`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scramble_word`
--

LOCK TABLES `scramble_word` WRITE;
/*!40000 ALTER TABLE `scramble_word` DISABLE KEYS */;
/*!40000 ALTER TABLE `scramble_word` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `server_id` smallint(5) NOT NULL DEFAULT '-1',
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`server_id`,`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (-1,'Account.ConnectCheckResetOnAction','0'),(-1,'Account.ConnectCheckTime','0'),(-1,'Account.DarkLordCreate','0'),(-1,'Account.DisconnectTime','0'),(-1,'Account.GameCloseTime','0'),(-1,'Account.GrowLancerCreate','0'),(-1,'Account.MagicGladiatorCreate','0'),(-1,'Account.MaxLoginAttempts','0'),(-1,'Account.RageFighterCreate','0'),(-1,'Account.ServerMoveKickTime','0'),(-1,'Account.Warehouse.GetMoney','0'),(-1,'Account.Warehouse.Lock','0'),(-1,'Account.Warehouse.MaxMoney','0'),(-1,'Account.Warehouse.SaveMoney','0'),(-1,'AntiHack.CoordinateAttackCheck','0'),(-1,'AntiHack.CoordinateVerify','0'),(-1,'AntiHack.CoordinateVerifyTime','0'),(-1,'AntiHack.SkillContinue','0'),(-1,'AntiHack.SkillCount','0'),(-1,'AntiHack.SkillCountContinue','2'),(-1,'AntiHack.SkillHeadcodeCheck','0'),(-1,'AntiHack.SkillKick','0'),(-1,'AntiHack.SkillLogCount','3'),(-1,'AntiHack.WalkCheck1','0'),(-1,'AntiHack.WalkCheck2','0'),(-1,'AntiHack.WalkCheck3','0'),(-1,'AntiHack.WalkCheck4','0'),(-1,'AntiHack.WalkCheck5','0'),(-1,'AntiHack.WalkCheckDistance1','0'),(-1,'AntiHack.WalkCheckError1','0'),(-1,'AntiMacro.ComboEnabled','0'),(-1,'AntiMacro.ComboTime','0'),(-1,'AntiMacro.Enabled','0'),(-1,'AntiMacro.Time','0'),(-1,'ArkaWar.DamageReductionAlly','0'),(-1,'ArkaWar.DamageReductionEnemy','0'),(-1,'ArkaWar.MinGuilds','0'),(-1,'ArkaWar.RegisterMaxMembers','0'),(-1,'ArkaWar.RegisterMinMembers','0'),(-1,'ArkaWar.Server','9999'),(-1,'AttackRangeTolerance','1'),(-1,'AttackTime.NullKick','1'),(-1,'Barracks.MoveCost','0'),(-1,'Barracks.MoveEnabled','0'),(-1,'Barracks.MoveMinLevel','0'),(-1,'Barracks.MoveParty','0'),(-1,'BloodCastle.DeliverWeaponTime','0'),(-1,'BloodCastle.Enabled','0'),(-1,'BloodCastle.RewardScore','0'),(-1,'BloodCastle.SkillRushCheck','0'),(-1,'CashShop.BannerDir',''),(-1,'CashShop.BannerDirTest',''),(-1,'CashShop.BannerIp',''),(-1,'CashShop.BannerMonth','0'),(-1,'CashShop.BannerNumber','0'),(-1,'CashShop.BannerYear','0'),(-1,'CashShop.CoinUpdateTime','0'),(-1,'CashShop.DiscountDate','0'),(-1,'CashShop.DiscountGP','0'),(-1,'CashShop.DiscountWC','0'),(-1,'CashShop.Enabled','0'),(-1,'CashShop.GiftUpdateTime','0'),(-1,'CashShop.ItemDir',''),(-1,'CashShop.ItemDirTest',''),(-1,'CashShop.ItemIp',''),(-1,'CashShop.ItemListMonth','0'),(-1,'CashShop.ItemListNumber','0'),(-1,'CashShop.ItemListYear','0'),(-1,'CashShop.SafeZone','0'),(-1,'CashShop.UseJoin','0'),(-1,'CastleDeep.Enabled','0'),(-1,'CastleSiege.CrownTime','0'),(-1,'CastleSiege.Enabled','0'),(-1,'CastleSiege.LordMixMax','0'),(-1,'CastleSiege.MachineEnabled','0'),(-1,'CastleSiege.ParticipantRewardMinutes','0'),(-1,'CastleSiege.ReduceDamageDifSide','0'),(-1,'CastleSiege.ReduceDamageSameSide','0'),(-1,'CastleSiege.RegisterEnabled','0'),(-1,'CastleSiege.RegisterMinLevel','0'),(-1,'CastleSiege.RegisterMinMembers','0'),(-1,'CastleSiege.RegisterSignEnabled','0'),(-1,'ChaosCastle.Enabled','0'),(-1,'ChaosCastle.SurvivalMaxPerPC','0'),(-1,'ChaosCastle.SurvivalOfTheFittestEnabled','0'),(-1,'Character.AGAutorecuperationCount','0'),(-1,'Character.AGAutorecuperationCountRest','0'),(-1,'Character.AGAutorecuperationEnabled','0'),(-1,'Character.AGAutorecuperationMaxLevel','0'),(-1,'Character.AutoSaveOfflineTime','0'),(-1,'Character.AutosaveTime','0'),(-1,'Character.DieExperienceDecrease','0'),(-1,'Character.DieZenDecrease','0'),(-1,'Character.DKDamageModPVE','0'),(-1,'Character.DKDamageModPVP','0'),(-1,'Character.DLDamageModPVE','0'),(-1,'Character.DLDamageModPVP','0'),(-1,'Character.DWDamageModPVE','0'),(-1,'Character.DWDamageModPVP','0'),(-1,'Character.FEDamageModPVE','0'),(-1,'Character.FEDamageModPVP','0'),(-1,'Character.GCDamageModPVE','100'),(-1,'Character.GCDamageModPVP','100'),(-1,'Character.GLDamageModPVE','0'),(-1,'Character.GLDamageModPVP','0'),(-1,'Character.HeroCount','0'),(-1,'Character.HeroTime','0'),(-1,'Character.HPAutorecuperationCount','0'),(-1,'Character.HPAutorecuperationCountRest','0'),(-1,'Character.HPAutorecuperationEnabled','0'),(-1,'Character.HPAutorecuperationMaxLevel','0'),(-1,'Character.MaxAgility','0'),(-1,'Character.MaxAttackSpeedDK','0'),(-1,'Character.MaxAttackSpeedDL','0'),(-1,'Character.MaxAttackSpeedDW','0'),(-1,'Character.MaxAttackSpeedELF','0'),(-1,'Character.MaxAttackSpeedGC','280'),(-1,'Character.MaxAttackSpeedGL','0'),(-1,'Character.MaxAttackSpeedMG','0'),(-1,'Character.MaxAttackSpeedRF','0'),(-1,'Character.MaxAttackSpeedRW','0'),(-1,'Character.MaxAttackSpeedSL','0'),(-1,'Character.MaxAttackSpeedSUM','0'),(-1,'Character.MaxEnergy','0'),(-1,'Character.MaxExpandedInventory','0'),(-1,'Character.MaxLeadership','0'),(-1,'Character.MaxLevelMajestic','0'),(-1,'Character.MaxLevelMaster','0'),(-1,'Character.MaxLevelNormal','0'),(-1,'Character.MaxStrength','0'),(-1,'Character.MaxVitality','0'),(-1,'Character.MaxZen','0'),(-1,'Character.MGDamageModPVE','0'),(-1,'Character.MGDamageModPVP','0'),(-1,'Character.MinMonsterLevelMajestic','0'),(-1,'Character.MinMonsterLevelMaster','0'),(-1,'Character.MPAutorecuperationCount','0'),(-1,'Character.MPAutorecuperationCountRest','0'),(-1,'Character.MPAutorecuperationEnabled','0'),(-1,'Character.MPAutorecuperationMaxLevel','0'),(-1,'Character.MultiAttackFireScream','0'),(-1,'Character.MultiAttackPenetration','0'),(-1,'Character.MurderCount','0'),(-1,'Character.MurderLimitCount','0'),(-1,'Character.MurderTime','0'),(-1,'Character.OfflineAttack','0'),(-1,'Character.OfflineAttackBuffItem','0'),(-1,'Character.OfflineAttackCount','0'),(-1,'Character.OfflineAttackDetailAutoloot','0'),(-1,'Character.OfflineAttackFlag','0'),(-1,'Character.OfflineAttackGoblinPointsGain','0'),(-1,'Character.OfflineAttackIPCount','0'),(-1,'Character.OfflineAttackMaxLevel','0'),(-1,'Character.OfflineAttackMinLevel','0'),(-1,'Character.OfflineAttackMonsterAICheck','0'),(-1,'Character.OfflineAttackOnDisconnect','0'),(-1,'Character.OfflineAttackTime','0'),(-1,'Character.OfflineAttackZenLoot','0'),(-1,'Character.OfflineCloseWhenWrongLevel','0'),(-1,'Character.OfflineDieDisconnectTime','0'),(-1,'Character.OfflineDisconnectTime','0'),(-1,'Character.OfflineMove','0'),(-1,'Character.OfflineSkillTime','0'),(-1,'Character.PKItemDrop','0'),(-1,'Character.PKItemDrop380','0'),(-1,'Character.PKItemDropAncient','0'),(-1,'Character.PKItemDropExcellent','0'),(-1,'Character.PKItemDropHarmony','0'),(-1,'Character.PKItemDropItemMaxLevel','0'),(-1,'Character.PKItemDropMinLevel','0'),(-1,'Character.PKWarpCostIncrease','0'),(-1,'Character.PVPEnabled','0'),(-1,'Character.PVPMinLevel','0'),(-1,'Character.RepairButton.Enabled','0'),(-1,'Character.RepairButton.MinLevel','0'),(-1,'Character.RFDamageModPVE','0'),(-1,'Character.RFDamageModPVP','0'),(-1,'Character.RWDamageModPVE','0'),(-1,'Character.RWDamageModPVP','0'),(-1,'Character.SD.AttackSuccessRate','0'),(-1,'Character.SD.ComboMissInit','0'),(-1,'Character.SD.DamageToShield','0'),(-1,'Character.SDAutorecuperationCount','0'),(-1,'Character.SDAutorecuperationCountRest','0'),(-1,'Character.SDAutorecuperationEnabled','0'),(-1,'Character.SDAutorecuperationMaxLevel','0'),(-1,'Character.SelfDefenseEnabled','0'),(-1,'Character.SelfDefenseTime','0'),(-1,'Character.SLDamageModPVE','0'),(-1,'Character.SLDamageModPVP','0'),(-1,'Character.SMDamageModPVE','0'),(-1,'Character.SMDamageModPVP','0'),(-1,'CheatScan.Ban','0'),(-1,'CheatScan.Count','0'),(-1,'CheatScan.Enabled','0'),(-1,'CheatScan.Kick','0'),(-1,'CheatScan.Time','0'),(-1,'ComboCheck.Count','0'),(-1,'ComboCheck.DatabaseLog','0'),(-1,'ComboCheck.Enabled','0'),(-1,'ComboCheck.Kick','0'),(-1,'ComboCheck.Stop','0'),(-1,'ComboCheck.TimeDiff','0'),(-1,'Command.AddStat.Cost','0'),(-1,'Command.AddStat.Enabled','0'),(-1,'Command.AddStat.MinLevel','0'),(-1,'Command.Gold.Enabled','0'),(-1,'Command.Gold.MaxDays','0'),(-1,'Command.Gold.Price','0'),(-1,'Command.Master','0'),(-1,'Command.Post.Cost','0'),(-1,'Command.Post.Delay','0'),(-1,'Command.Post.Enabled','0'),(-1,'Command.Post.Head','$name: [POST][$server]: $message'),(-1,'Command.Post.MinLevel','0'),(-1,'Command.Post.Type','0'),(-1,'Command.Refresh.Enabled','0'),(-1,'Command.Refresh.Time','0'),(-1,'Common.FenrirRepairRate','0'),(-1,'Common.ItemDrop.ExeMaxOption','2'),(-1,'Common.ItemDrop.ExeMinOption','1'),(-1,'Common.ItemDrop.LuckRateExe','0'),(-1,'Common.ItemDrop.LuckRateNormal','0'),(-1,'Common.ItemDrop.RateExe','0'),(-1,'Common.ItemDrop.RateNormal','0'),(-1,'Common.ItemDrop.SkillRateNormal','0'),(-1,'Common.ItemDrop.Socket1RateExe','0'),(-1,'Common.ItemDrop.Socket1RateNormal','0'),(-1,'Common.ItemDrop.Socket2RateExe','0'),(-1,'Common.ItemDrop.Socket2RateNormal','0'),(-1,'Common.ItemDrop.Socket3RateExe','0'),(-1,'Common.ItemDrop.Socket3RateNormal','0'),(-1,'Common.ItemDrop.Socket4RateExe','0'),(-1,'Common.ItemDrop.Socket4RateNormal','0'),(-1,'Common.ItemDrop.Socket5RateExe','0'),(-1,'Common.ItemDrop.Socket5RateNormal','0'),(-1,'Common.ItemDurationTime','0'),(-1,'Common.JewelOfLife.Enabled','0'),(-1,'Common.JewelOfLife.Max','0'),(-1,'Common.JewelOfLife.MaxRate','0'),(-1,'Common.JewelOfLife.RateAncient','0'),(-1,'Common.JewelOfLife.RateExe','0'),(-1,'Common.JewelOfLife.RateNormal','0'),(-1,'Common.JewelOfLife.RateSocket','0'),(-1,'Common.JewelOfLife.Reset','0'),(-1,'Common.JewelOfLife.ResetRate','0'),(-1,'Common.JewelOfLife.ResetWarning',''),(-1,'Common.JewelOfSoul.Enabled','0'),(-1,'Common.JewelOfSoul.Rate','0'),(-1,'Common.JewelOfSoul.RateLuck','0'),(-1,'Common.LootingTime','0'),(-1,'Common.PersonalMerchantShop',''),(-1,'Crywolf.AIChange.Time','0'),(-1,'Crywolf.Altar.ContractValidationTime','0'),(-1,'Crywolf.Altar.ContractWaitTime','0'),(-1,'Crywolf.Altar.MaxContract','0'),(-1,'Crywolf.Altar.MinLevel','0'),(-1,'Crywolf.Altar.Score','0'),(-1,'Crywolf.Balgass.StartTime','0'),(-1,'Crywolf.Benefit.Apply','0'),(-1,'Crywolf.Benefit.KundunRefill','0'),(-1,'Crywolf.Benefit.MonsterHp','0'),(-1,'Crywolf.Benefit.PlusRate','0'),(-1,'Crywolf.Enabled','0'),(-1,'Crywolf.Penalty.Apply','0'),(-1,'Crywolf.Penalty.DropGem','0'),(-1,'Crywolf.Penalty.ExpGain','0'),(-1,'CustomBoss.SummonCount','0'),(-1,'CustomBoss.SummonDespawnTime','0'),(-1,'CustomBoss.SummonTime','0'),(-1,'DevilSquare.Enabled','0'),(-1,'Doppelganger.Enabled','0'),(-1,'Doppelganger.MonsterSpeed','0'),(-1,'Doppelganger.PKCheck','0'),(-1,'Doppelganger.PKLevelMax','0'),(-1,'Duel.BuffDisabled','0'),(-1,'Duel.Classic','0'),(-1,'Duel.Damage','0'),(-1,'Duel.Duration','0'),(-1,'Duel.Enabled','0'),(-1,'Duel.MaxWaitInterval','0'),(-1,'Duel.MinLevel','0'),(-1,'Duel.MuunDisabled','0'),(-1,'Duel.PentagramDisabled','0'),(-1,'Duel.RequiredZen','0'),(-1,'Duel.RoundStandby','0'),(-1,'Duel.StandByTime','0'),(-1,'Duel.TestLevel','0'),(-1,'Dungeon.Duration','0'),(-1,'Dungeon.Enabled','0'),(-1,'Dungeon.EndGate','0'),(-1,'Dungeon.GAP','0'),(-1,'Dungeon.MaxPerPC','0'),(-1,'Dungeon.MinParty','0'),(-1,'Dungeon.SilverChestMonster','0'),(-1,'Dungeon.SimpleTrapDamage','0'),(-1,'Dungeon.SimpleTrapTime','0'),(-1,'Dungeon.WaitTime','0'),(-1,'DungeonRace.Enabled','999'),(-1,'DungeonRace.Reward',''),(-1,'Event.KillRankingEnabled','0'),(-1,'Event.TimeRankingEnabled','0'),(-1,'EventInventory.Enabled','0'),(-1,'Evomon.Enabled','0'),(-1,'Evomon.PartyReward','0'),(-1,'Evomon.PartySpecialReward','0'),(-1,'Evomon.Send','0'),(-1,'Friend.AddMinLevel','0'),(-1,'Friend.Enabled','0'),(-1,'Friend.MailCost','0'),(-1,'Friend.MailEnabled','0'),(-1,'Friend.MailUpdateInterval','0'),(-1,'GameServer.Active','0'),(-1,'GameServer.AdministratorAuthorization','0'),(-1,'GameServer.AntiDupeBlock','0'),(-1,'GameServer.AntiDupeBoxCheckTime','0'),(-1,'GameServer.AntiDupeBoxEnabled','0'),(-1,'GameServer.AntiDupeBoxRemove','0'),(-1,'GameServer.AntiDupeBoxServer','9999'),(-1,'GameServer.AntiDupeKick','0'),(-1,'GameServer.AntiFloodCount','0'),(-1,'GameServer.AntiFloodKick','0'),(-1,'GameServer.AntiSpam.Count','0'),(-1,'GameServer.AntiSpam.Enabled','0'),(-1,'GameServer.AntiSpam.MuteTime','0'),(-1,'GameServer.AntiSpam.Time','0'),(-1,'GameServer.AttackDebuffFirstHit','0'),(-1,'GameServer.AttackSafeCount','0'),(-1,'GameServer.AttackSafeEnabled','0'),(-1,'GameServer.AttackSafeKick','0'),(-1,'GameServer.AttackSafeTime','0'),(-1,'GameServer.AttackSpeedBan','0'),(-1,'GameServer.AttackSpeedCheck','0'),(-1,'GameServer.AttackSpeedCount','0'),(-1,'GameServer.AttackSpeedKick','0'),(-1,'GameServer.AttackSpeedRange','0'),(-1,'GameServer.AttackSpeedSendTime','0'),(-1,'GameServer.AttackStunCheck','0'),(-1,'GameServer.AuthServerReconnectEnabled','0'),(-1,'GameServer.AuthServerReconnectTime','0'),(-1,'GameServer.AutoLoginEnabled','0'),(-1,'GameServer.AutoLoginRandomTime','0'),(-1,'GameServer.AutoLoginTime','0'),(-1,'GameServer.BossStackCheck','0'),(-1,'GameServer.ChannelChangeEnabled','0'),(-1,'GameServer.ChaosMachineSafeItemMove','0'),(-1,'GameServer.CharacterOnlineOnLogin','0'),(-1,'GameServer.ConnectServerReconnectEnabled','0'),(-1,'GameServer.ConnectServerReconnectTime','0'),(-1,'GameServer.ConnectTimeKick','0'),(-1,'GameServer.CriticalDamageRateLimit','0'),(-1,'GameServer.DarkRavenAutorepair','0'),(-1,'GameServer.DebuffStopCheck','0'),(-1,'GameServer.Debug','0'),(-1,'GameServer.DecreaseDamageRateLimit','0'),(-1,'GameServer.DobleFrustrum','0'),(-1,'GameServer.DupeCompleteBan','0'),(-1,'GameServer.DuplicatedCharacterCheck','0'),(-1,'GameServer.ElfSkillWeaponCheck','0'),(-1,'GameServer.ElfSoldierMaxLevel','0'),(-1,'GameServer.ElfSoldierRemoveOnDie','0'),(-1,'GameServer.ElfSoldierUpdate','0'),(-1,'GameServer.ExcellentDamageRateLimit','0'),(-1,'GameServer.FereaBossHPRecoveryCount','0'),(-1,'GameServer.FereaBossHPRecoveryTime','0'),(-1,'GameServer.FullInventoryToGremoryCase','0'),(-1,'GameServer.GateHandle','0'),(-1,'GameServer.HackCheckBan','0'),(-1,'GameServer.HackCheckCount','0'),(-1,'GameServer.HackCheckEnabled','0'),(-1,'GameServer.HackCheckFrameCount','0'),(-1,'GameServer.HackCheckFullBan','0'),(-1,'GameServer.HackCheckKick','0'),(-1,'GameServer.HackCheckLoopTime','0'),(-1,'GameServer.HackCheckResetTime','0'),(-1,'GameServer.HackCheckTime','0'),(-1,'GameServer.HostilCancelCommand','0'),(-1,'GameServer.IgnoreDefenseRateLimit','0'),(-1,'GameServer.InactiveTime','0'),(-1,'GameServer.InventoryMountTime','0'),(-1,'GameServer.ItemBuffCheck','0'),(-1,'GameServer.ItemBuyLogDB','0'),(-1,'GameServer.ItemDropLogDB','0'),(-1,'GameServer.ItemLootLogDB','0'),(-1,'GameServer.ItemSellLogDB','0'),(-1,'GameServer.ItemSplitEnabled','0'),(-1,'GameServer.JoinItemsWithExpireTime','0'),(-1,'GameServer.LogDB.PersonalStore','0'),(-1,'GameServer.LogDB.Trade','0'),(-1,'GameServer.LoginDiskSerialMacCheck','0'),(-1,'GameServer.LogRecvPacket','0'),(-1,'GameServer.LogSendPacket','0'),(-1,'GameServer.LuckyItemMixCheck','0'),(-1,'GameServer.MajesticExperienceRate','0'),(-1,'GameServer.MajesticZenRate','0'),(-1,'GameServer.MasterExperienceRate','0'),(-1,'GameServer.MasterZenRate','0'),(-1,'GameServer.MaxMonsters','1000'),(-1,'GameServer.MaxPlayers','1000'),(-1,'GameServer.MaxSocketWear','0'),(-1,'GameServer.MonsterAttackWallCheck','0'),(-1,'GameServer.MonsterStopAction','0'),(-1,'GameServer.MonsterTeleportOutOfRange','0'),(-1,'GameServer.MonsterViewportControl','0'),(-1,'GameServer.MultiAttackSkillCheck','0'),(-1,'GameServer.NormalExperienceRate','0'),(-1,'GameServer.NormalMonsterMovement','0'),(-1,'GameServer.NormalZenRate','0'),(-1,'GameServer.PentagramErrtelFix','0'),(-1,'GameServer.PersonalStoreLockSamePC','0'),(-1,'GameServer.PetComboExperience','0'),(-1,'GameServer.PKBossServer','9999'),(-1,'GameServer.PKBossTime','0'),(-1,'GameServer.PostManager.Count','0'),(-1,'GameServer.PostManager.Enabled','0'),(-1,'GameServer.PostManagerMAC.Count','0'),(-1,'GameServer.PostManagerMAC.Enabled','0'),(-1,'GameServer.RecvPacketQueueKick','0'),(-1,'GameServer.RecvPacketQueueMax','0'),(-1,'GameServer.ReflectDamageRateLimit','0'),(-1,'GameServer.ReflectFix','0'),(-1,'GameServer.ReservedMonsters','500'),(-1,'GameServer.ReservedPlayers','500'),(-1,'GameServer.SecurityCode','0'),(-1,'GameServer.Serial',''),(-1,'GameServer.ServerLinkServerReconnectEnabled','0'),(-1,'GameServer.ServerLinkServerReconnectTime','0'),(-1,'GameServer.ServerWarpTransactionCheck1','0'),(-1,'GameServer.ServerWarpTransactionCheck2','0'),(-1,'GameServer.ServerWarpTransactionCheck3','0'),(-1,'GameServer.SessionTimeout','0'),(-1,'GameServer.ShieldDefenseRateLimit','0'),(-1,'GameServer.ShutdownCheck','0'),(-1,'GameServer.SkillBlessStrenghtenerFix','0'),(-1,'GameServer.SkillCheckEnabled','0'),(-1,'GameServer.SpawnMonsterTime','0'),(-1,'GameServer.StackExpirableItemsOnLoot','0'),(-1,'GameServer.TempDualWeaponDmg1','0'),(-1,'GameServer.TempDualWeaponDmg2','0'),(-1,'GameServer.TestEnabled','0'),(-1,'GameServer.TestKey','0'),(-1,'GameServer.TestKickTime','0'),(-1,'GameServer.TimeCheck','0'),(-1,'GameServer.TimeCheckLevelMax','0'),(-1,'GameServer.TimeCheckLevelMin','0'),(-1,'GameServer.TimeCheckTime','0'),(-1,'GameServer.TradeInterfaceCancelBan','0'),(-1,'GameServer.TransactionRollbackCurrency','0'),(-1,'GameServer.Version',''),(-1,'GameServer.ViewportFrustrum','0'),(-1,'GameServer.WalkSpeedBan','0'),(-1,'GameServer.WalkSpeedCount','0'),(-1,'GameServer.WalkSpeedDistance','0'),(-1,'GameServer.WalkSpeedFix','0'),(-1,'GameServer.WalkSpeedKick','0'),(-1,'GameServer.WelcomeMessage',''),(-1,'GameServer.WelcomeNotice','0'),(-1,'GameServer.WhisperLog','0'),(-1,'GameServer.WrongDecryptCount','0'),(-1,'GameServer.WrongDecryptTime','0'),(-1,'GameServer.WrongSerialCount','0'),(-1,'GameServer.WrongSerialTime','0'),(-1,'Gen.ChangeFamilyTime','0'),(-1,'Gen.JoinMinLevel','0'),(-1,'Gen.Penalization','0'),(-1,'Gen.PenalizationCount','0'),(-1,'Gen.PenalizationTime','0'),(-1,'GLElementalDamageFix','1'),(-1,'GoblinPoint.Enabled','0'),(-1,'GoblinPoint.KillTime','0'),(-1,'GoblinPoint.RequiredTime','0'),(-1,'GoblinPoint.RequiredTimeOffline','0'),(-1,'GremoryCase.FreeSpaceCheck','1'),(-1,'Guardian.DisassembleItemBag',''),(-1,'Guild.Alliance.CastleSiegeCheck','0'),(-1,'Guild.Alliance.Gens','0'),(-1,'Guild.Alliance.Max','0'),(-1,'Guild.Alliance.MinMembers','0'),(-1,'Guild.BattleSoccer.Duration','0'),(-1,'Guild.BattleSoccer.Enabled','0'),(-1,'Guild.BattleSoccer.GoalPoints','0'),(-1,'Guild.BattleSoccer.KillAssistantPoints','0'),(-1,'Guild.BattleSoccer.KillBattlePoints','0'),(-1,'Guild.BattleSoccer.KillMasterPoints','0'),(-1,'Guild.BattleSoccer.KillPoints','0'),(-1,'Guild.BattleSoccer.MaxScore','0'),(-1,'Guild.CreateGens','0'),(-1,'Guild.CreateMinLevel','0'),(-1,'Guild.Delete','0'),(-1,'Guild.Enabled','0'),(-1,'Guild.Hostil.EventKill','0'),(-1,'Guild.JoinGens','0'),(-1,'Guild.MaxWaitInterval','0'),(-1,'Guild.War.Enabled','0'),(-1,'Guild.War.IntervalTime','0'),(-1,'Guild.War.KillAssistantPoints','0'),(-1,'Guild.War.KillBattlePoints','0'),(-1,'Guild.War.KillMasterPoints','0'),(-1,'Guild.War.KillPoints','0'),(-1,'Guild.War.Max','0'),(-1,'Guild.War.MaxPoints','0'),(-1,'Guild.War.MaxWaitInterval','0'),(-1,'GuildScore.ArkaWar','0'),(-1,'GuildScore.CastleSiege','0'),(-1,'GuildScore.CastleSiegeMembers','0'),(-1,'HappyHour.DropAdd','0'),(-1,'HappyHour.ExperienceAdd','0'),(-1,'Harmony.Enabled','0'),(-1,'Harmony.OnAncient','0'),(-1,'Harmony.RefineRate','0'),(-1,'Harmony.SmeltExeRate','0'),(-1,'Harmony.SmeltNormalRate','0'),(-1,'Harmony.StrengthenRate','0'),(-1,'Harmony.StrengthenUpdateExeRate','0'),(-1,'Harmony.StrengthenUpdateNormalRate','0'),(-1,'Helper.AutoLootEnabled','0'),(-1,'Helper.BuffItemUseCheck','0'),(-1,'Helper.LootEnabled','0'),(-1,'Helper.PotionUseEnabled','0'),(-1,'Helper.RepairEnabled','0'),(-1,'HuntingRecord.Clear','0'),(-1,'ImperialFortress.Day','-1'),(-1,'ImperialFortress.Enabled','0'),(-1,'ImperialFortress.EndTime','0'),(-1,'ImperialFortress.InParty','0'),(-1,'ImperialFortress.MoveToPrevious','0'),(-1,'ImperialFortress.PKCheck','0'),(-1,'ImperialFortress.PKLevelMax','0'),(-1,'ImperialFortress.PlayTime','0'),(-1,'ImperialFortress.StandbyTime','0'),(-1,'ImperialFortress.TeleportCheck','0'),(-1,'ImperialFortress.TimeZone1','0'),(-1,'ImperialFortress.TimeZone2','0'),(-1,'ImperialFortress.TimeZone3','0'),(-1,'ImperialFortress.TimeZone4','0'),(-1,'ImperialFortress.WalkCheck','0'),(-1,'ItemUpgrade.SuccessRate10','60'),(-1,'ItemUpgrade.SuccessRate11','60'),(-1,'ItemUpgrade.SuccessRate12','55'),(-1,'ItemUpgrade.SuccessRate13','55'),(-1,'ItemUpgrade.SuccessRate14','50'),(-1,'ItemUpgrade.SuccessRate15','50'),(-1,'JewelBingo.Enabled','0'),(-1,'JewelBingo.RequiredTicket','0'),(-1,'JewelBingo.Reward','0'),(-1,'JewelBingo.ScoreD','0'),(-1,'JewelBingo.ScoreH','0'),(-1,'JewelBingo.ScoreNotMatched','0'),(-1,'JewelBingo.ScoreSpecialH','0'),(-1,'JewelBingo.ScoreSpecialV','0'),(-1,'JewelBingo.ScoreV','0'),(-1,'Kanturu.Enabled','0'),(-1,'Kanturu.MaxPlayers','0'),(-1,'Kanturu.Maya.IceStormRate','0'),(-1,'Kanturu.Maya.SkillTime','0'),(-1,'Kick.Enabled','0'),(-1,'Kick.Type','0'),(-1,'Kundun.RefillHp','0'),(-1,'Kundun.RefillHpSec','0'),(-1,'Kundun.RefillTime','0'),(-1,'LabyrinthOfDimensions.DayFirstScore','0'),(-1,'LabyrinthOfDimensions.GoblinScore','0'),(-1,'LabyrinthOfDimensions.GoblinStage','0'),(-1,'LabyrinthOfDimensions.MissionTime','0'),(-1,'LabyrinthOfDimensions.MoveBronze','0'),(-1,'LabyrinthOfDimensions.MoveGold','0'),(-1,'LabyrinthOfDimensions.MoveLegend','0'),(-1,'LabyrinthOfDimensions.MoveOnFail','0'),(-1,'LabyrinthOfDimensions.MoveSilver','0'),(-1,'LabyrinthOfDimensions.RequiredLevel','0'),(-1,'LabyrinthOfDimensions.RequiredMaster','0'),(-1,'LabyrinthOfDimensions.Server','9999'),(-1,'LabyrinthOfDimensions.StateDuration','0'),(-1,'LabyrinthOfDimensions.TimeScore','0'),(-1,'LastManStanding.Classic','0'),(-1,'LastManStanding.DamageReduction','0'),(-1,'LastManStanding.Duration','0'),(-1,'LastManStanding.HideCharacter','0'),(-1,'LastManStanding.KillScore','0'),(-1,'LastManStanding.LevelRange','0'),(-1,'LastManStanding.MaxPerPC','0'),(-1,'LastManStanding.MinLevel','0'),(-1,'LastManStanding.Server','9999'),(-1,'LastManStanding.WinScore','0'),(-1,'Log.DamagePVP','0'),(-1,'Log.DamagePVPToDB','0'),(-1,'LosttowerRace.Enabled','999'),(-1,'LosttowerRace.Reward',''),(-1,'LuckyItem.Fix','0'),(-1,'LuckyItem.FixCount','0'),(-1,'MajesticAddDamageNormal','1'),(-1,'MajesticSkillDamageNormal','1'),(-1,'MiniBomb.ClearScore','0'),(-1,'MiniBomb.Enabled','0'),(-1,'MiniBomb.FailScore','0'),(-1,'MiniBomb.FoundedBombsScore','0'),(-1,'MiniBomb.RequiredTicket','0'),(-1,'MiniBomb.RevealScore','0'),(-1,'MiniBomb.Reward','0'),(-1,'MiniBomb.WrongBombsScore','0'),(-1,'Mix.GreaterSpellStonePriceDivision','0'),(-1,'Mix.GreaterSpellStoneRate','0'),(-1,'Mix.LesserSpellStonePriceDivision','0'),(-1,'Mix.LesserSpellStoneRate','0'),(-1,'Mix.MediumSpellStonePriceDivision','0'),(-1,'Mix.MediumSpellStoneRate','0'),(-1,'Mix.SealedBloodAngelExcellentMax','0'),(-1,'Mix.SealedBloodAngelExcellentMin','0'),(-1,'MixRecovery.Enabled','0'),(-1,'MixRecovery.ErrtelMixFailCount','1'),(-1,'MixRecovery.ErrtelOnFail','0'),(-1,'MixRecovery.ErrtelRemoveFailCount','5'),(-1,'MixRecovery.FailTime','0'),(-1,'MixRecovery.PriceBless','0'),(-1,'MixRecovery.PriceWC','0'),(-1,'MixRecovery.Time','0'),(-1,'MixRecovery.Warning','0'),(-1,'MonsterSoul.DurationTime','0'),(-1,'MonsterSoul.PurchaseAmount','0'),(-1,'MossMerchant.Enabled','0'),(-1,'MossMerchant.ItemBag.Bow',''),(-1,'MossMerchant.ItemBag.Scepter',''),(-1,'MossMerchant.ItemBag.Staff',''),(-1,'MossMerchant.ItemBag.Stick',''),(-1,'MossMerchant.ItemBag.Sword',''),(-1,'MuRoomy.Enabled','0'),(-1,'MuRoomy.RewardMoneyAmount','0'),(-1,'MuRoomy.SpecialEnabled','0'),(-1,'MuRoomy.TicketRequired','0'),(-1,'Muun.Attack.Delay','0'),(-1,'Muun.Attack.Enabled','0'),(-1,'Muun.Attack.HitDelay','0'),(-1,'Muun.Attack.Range','0'),(-1,'Muun.DurabilityRate','0'),(-1,'Muun.EvolveBonus','0'),(-1,'Muun.EvolveBonusTime','0'),(-1,'Muun.MountTime','0'),(-1,'Network.BindIP','0.0.0.0'),(-1,'Network.MaxConnectionPerIP','0'),(-1,'NixiesLake.BattleTime','0'),(-1,'NixiesLake.BossRecoveryPercent','0'),(-1,'NixiesLake.BossRecoveryStandyTime','0'),(-1,'NixiesLake.BossRecoveryTime','0'),(-1,'NixiesLake.ClosedTime','0'),(-1,'NixiesLake.Free','0'),(-1,'NixiesLake.ItemBag1',''),(-1,'NixiesLake.ItemBag2',''),(-1,'NixiesLake.ItemBag3',''),(-1,'NixiesLake.ItemBag4',''),(-1,'NixiesLake.ItemBag5',''),(-1,'NixiesLake.Server','9999'),(-1,'NixiesLake.StandbyTime','0'),(-1,'NumericBaseball.Enabled','0'),(-1,'NumericBaseball.RequiredTicket','0'),(-1,'NumericBaseball.Reward','0'),(-1,'NumericBaseball.Score1','0'),(-1,'NumericBaseball.Score2','0'),(-1,'NumericBaseball.Score3','0'),(-1,'NumericBaseball.Score4','0'),(-1,'NumericBaseball.Score5','0'),(-1,'NumericBaseball.ScoreBall','0'),(-1,'NumericBaseball.ScoreStrike','0'),(-1,'OnlyBaseStatForEquipment','1'),(-1,'Option380.Enabled','0'),(-1,'Option380.Price','0'),(-1,'Option380.RateGrade1','0'),(-1,'Option380.RateGrade2','0'),(-1,'Option380.RateGrade3','0'),(-1,'Party.AllowDifGens','0'),(-1,'Party.AllowPK','0'),(-1,'Party.BonusExperience2','0'),(-1,'Party.BonusExperience3','0'),(-1,'Party.BonusExperience4','0'),(-1,'Party.BonusExperience5','0'),(-1,'Party.Enabled','0'),(-1,'Party.Experience2','0'),(-1,'Party.Experience3','0'),(-1,'Party.Experience4','0'),(-1,'Party.Experience5','0'),(-1,'Party.InBattlezone','0'),(-1,'Party.LeaderChange','0'),(-1,'Party.MatchingEnabled','0'),(-1,'Party.MatchingLeaderChange','0'),(-1,'Party.MaxLevelDif','0'),(-1,'Party.MaxWaitInterval','0'),(-1,'Party.MemberOfflineInterval','1'),(-1,'Party.MoveCost','0'),(-1,'Party.MoveEnabled','0'),(-1,'PersonalStore.Disconnect','0'),(-1,'PersonalStore.Enabled','0'),(-1,'PersonalStore.MinLevel','0'),(-1,'PersonalStore.Off','0'),(-1,'PersonalStore.OffCount','0'),(-1,'PersonalStore.OffDuration','0'),(-1,'PersonalStore.OffTotalCount','0'),(-1,'PlayerWalkSpeed','400'),(-1,'ProtectorOfAcheron.Enabled','0'),(-1,'QuestMU.Enabled','0'),(-1,'Radiance.BindingDuration','5'),(-1,'Radiance.BleedingDuration','10'),(-1,'Radiance.BleedingRate','5'),(-1,'Radiance.BlindingDuration','10'),(-1,'Radiance.BlindingRate','5'),(-1,'Radiance.ParalysisEffect','90'),(-1,'Radiance.ParalysisRate','5'),(-1,'Raklion.Enabled','0'),(-1,'Raklion.FailTimeMax','0'),(-1,'Raklion.FailTimeMin','0'),(-1,'Raklion.SuccessTimeMax','0'),(-1,'Raklion.SuccessTimeMin','0'),(-1,'RareIceDragonRate','5'),(-1,'Refuge.MoveCost','0'),(-1,'Refuge.MoveEnabled','0'),(-1,'Refuge.MoveMinLevel','0'),(-1,'Refuge.MoveParty','0'),(-1,'SantaVillage.CheckSeason','0'),(-1,'SantaVillage.Enabled','0'),(-1,'SantaVillage.SantaClaus.Enabled','0'),(-1,'SantaVillage.SantaClaus.GiftTime','0'),(-1,'SantaVillage.SantaClaus.ItemBag',''),(-1,'SantaVillage.Season','0'),(-1,'Scramble.Enabled','999'),(-1,'Scramble.RepeatWordCount','0'),(-1,'Scramble.Reward',''),(-1,'Scramble.TotalWordCount','0'),(-1,'SecretShop.List',''),(-1,'SecretShop.WarpTime','0'),(-1,'Skill.AbsorbHPRate','0'),(-1,'Skill.AbsorbSDRate','0'),(-1,'Skill.ArchangelWillDamage','0'),(-1,'Skill.ArchangelWillDuration','0'),(-1,'Skill.ArchangelWillSkillDamage','0'),(-1,'Skill.BastionRate','0'),(-1,'Skill.BastionReduction','0'),(-1,'Skill.BastionSD','0'),(-1,'Skill.BlindAdd','0'),(-1,'Skill.BlindDiv','0'),(-1,'Skill.BlindTime','0'),(-1,'Skill.BlindValue','0'),(-1,'Skill.BloodHowlingDamage','0'),(-1,'Skill.BloodHowlingDuration','0'),(-1,'Skill.BloodHowlingRate','0'),(-1,'Skill.BossDebuffBlow','0'),(-1,'Skill.BurstRWDurationAdd','0'),(-1,'Skill.BurstRWDurationDiv','0'),(-1,'Skill.BurstRWEffect1Div','0'),(-1,'Skill.BurstRWEffect2Div','0'),(-1,'Skill.CircleShieldDuration','0'),(-1,'Skill.CircleShieldReduceAG','0'),(-1,'Skill.CircleShieldReduceAGRate','0'),(-1,'Skill.CureBuffRate','0'),(-1,'Skill.DarkPlasmaAttackDistance','8'),(-1,'Skill.DarkPlasmaAttackSpeed','5'),(-1,'Skill.DarkPlasmaTargetCount','5'),(-1,'Skill.DetectionRange','0'),(-1,'Skill.EarthPrisonStunRate','0'),(-1,'Skill.ElementalBerserkerI','0'),(-1,'Skill.ElementalBerserkerIDamage','0'),(-1,'Skill.ElementalBerserkerIDefense','0'),(-1,'Skill.ElementalImmuneI','0'),(-1,'Skill.ElementalImmuneII','0'),(-1,'Skill.EnergyCheck','0'),(-1,'Skill.FireScreamExplosionRate','0'),(-1,'Skill.FixPowersOnBuff','0'),(-1,'Skill.HasteRWDurationAdd','0'),(-1,'Skill.HasteRWDurationDiv','0'),(-1,'Skill.HasteRWEffect1Div','0'),(-1,'Skill.HasteRWEffect2Div','0'),(-1,'Skill.IllusionDuration','0'),(-1,'Skill.IronDefenseDuration','0'),(-1,'Skill.IronDefenseValue1','0'),(-1,'Skill.IronDefenseValue2','0'),(-1,'Skill.LeadershipCheck','0'),(-1,'Skill.MagicArrowProjectiles','0'),(-1,'Skill.MagicArrowSplashDamage','0'),(-1,'Skill.MagicArrowSplashDistance','0'),(-1,'Skill.MagicArrowSplashTargets','0'),(-1,'Skill.MagicPinExplosionDamage','0'),(-1,'Skill.MagicPinExplosionRate','0'),(-1,'Skill.ManaShieldCastleSiegeLimit','0'),(-1,'Skill.ManaShieldLimit','0'),(-1,'Skill.MultiAttackCount','0'),(-1,'Skill.MultiAttackNew','0'),(-1,'Skill.MultiAttackTime','0'),(-1,'Skill.ParalizeDebuffRate','0'),(-1,'Skill.PlasmaBallAttackCount','0'),(-1,'Skill.PlasmaBallAttackDistance','0'),(-1,'Skill.PlasmaBallAttackSpeed','0'),(-1,'Skill.PlasmaBallMoveDistance','0'),(-1,'Skill.PlasmaBallMoveSpeed','0'),(-1,'Skill.PlasmaBallTargetCount','0'),(-1,'Skill.PoisonArrowDebuffRate','0'),(-1,'Skill.PunishFirstHit','0'),(-1,'Skill.PunishFrequencyPVM','0'),(-1,'Skill.PunishFrequencyPVP','0'),(-1,'Skill.PunishMaxDamage','0'),(-1,'Skill.PunishRatePVM','0'),(-1,'Skill.PunishRatePVP','0'),(-1,'Skill.ReflectLimit','25'),(-1,'Skill.SleepLimit','70'),(-1,'Skill.SleepLimitTime','70'),(-1,'Skill.SleepReuseTime','1000'),(-1,'Skill.SplashDamagePercent','0'),(-1,'SkillTeleport.StateAttack0','0'),(-1,'SkillTeleport.StateAttack1','0'),(-1,'SkillTeleport.StateAttack2','0'),(-1,'SkillTeleport.StateAttack3','0'),(-1,'SkillTeleport.StateRemoveVP0','0'),(-1,'SkillTeleport.StateRemoveVP1','0'),(-1,'SkillTeleport.StateRemoveVP2','0'),(-1,'SkillTeleport.StateRemoveVP3','0'),(-1,'SkillTeleport.StateTime0','0'),(-1,'SkillTeleport.StateTime1','0'),(-1,'SkillTeleport.StateTime2','0'),(-1,'SkillTeleport.StateTime3','0'),(-1,'SpecialMap.CharacterCount','0'),(-1,'SpecialMap.PVP','0'),(-1,'SwampOfDarkness.BattleTime','0'),(-1,'SwampOfDarkness.BossAppearTime','0'),(-1,'SwampOfDarkness.ClosedTimeMax','0'),(-1,'SwampOfDarkness.ClosedTimeMin','0'),(-1,'SwampOfDarkness.Enabled','0'),(-1,'SwampOfDarkness.MaxPlayers','0'),(-1,'TeleportCoordinateBuff','57 241'),(-1,'TeleportFix','1'),(-1,'TeleportRestrictBuff','61 72 146 147'),(-1,'TormentedSquare.Enabled','0'),(-1,'TormentedSquareSurvival.Enabled','0'),(-1,'Trade.Enabled','0'),(-1,'Trade.MaxWaitInterval','0'),(-1,'Trade.MaxZen','0'),(-1,'Transaction.DuplicatedSerialDelete','0'),(-1,'Transaction.SharedDuplicatedSerialDelete','0'),(-1,'Transfer.Enabled','0'),(-1,'Transfer.PartyServer','-1'),(-1,'Transfer.Server','-1'),(-1,'WorldBoss.AOERange','0'),(-1,'WorldBoss.Enabled','0'),(-1,'WorldBoss.GuildPK','0'),(-1,'WorldBoss.IncreaseDamagePerPoint','0'),(-1,'WorldBoss.ItemBag',''),(-1,'WorldBoss.MaxPKPoints','0'),(-1,'WorldBoss.NormalRespawn','0'),(-1,'WorldBoss.PKGAP','0'),(-1,'WorldBoss.PKRange','0'),(-1,'WorldBoss.RequiredPlayer','0'),(-1,'WorldBoss.RequiredPointsToAttack','0'),(-1,'WorldBoss.StartNotification','0'),(0,'Account.ConnectCheckTime','180'),(0,'Character.MaxAgility','32000'),(0,'Character.MaxEnergy','32000'),(0,'Character.MaxLeadership','32000'),(0,'Character.MaxStrength','32000'),(0,'Character.MaxVitality','32000'),(0,'GameServer.Active','1'),(0,'GameServer.LogDB.Trade','1'),(0,'GameServer.Serial','jw45af7xf4wxj198'),(0,'GameServer.Version','1.07.17'),(0,'Network.MaxConnectionPerIP','9999'),(0,'Trade.Enabled','1'),(0,'Trade.MaxZen','999999999');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_items`
--

DROP TABLE IF EXISTS `shop_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop_items` (
  `id` tinyint(3) unsigned DEFAULT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL,
  `index` smallint(5) unsigned DEFAULT NULL,
  `level` tinyint(3) unsigned DEFAULT NULL,
  `durability` tinyint(3) unsigned DEFAULT NULL,
  `skill` tinyint(3) unsigned DEFAULT NULL,
  `luck` tinyint(3) unsigned DEFAULT NULL,
  `option` tinyint(3) unsigned DEFAULT NULL,
  `excellent` tinyint(3) unsigned DEFAULT NULL,
  `ancient` tinyint(3) unsigned DEFAULT NULL,
  `socket_1` smallint(5) unsigned DEFAULT NULL,
  `socket_2` smallint(5) unsigned DEFAULT NULL,
  `socket_3` smallint(5) unsigned DEFAULT NULL,
  `socket_4` smallint(5) unsigned DEFAULT NULL,
  `socket_5` smallint(5) unsigned DEFAULT NULL,
  `price` int(10) unsigned DEFAULT NULL,
  `shop` smallint(5) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_items`
--

LOCK TABLES `shop_items` WRITE;
/*!40000 ALTER TABLE `shop_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_template`
--

DROP TABLE IF EXISTS `shop_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop_template` (
  `id` tinyint(3) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `max_pk_level` tinyint(3) unsigned DEFAULT NULL,
  `pk_text` varchar(255) DEFAULT NULL,
  `flag` tinyint(3) unsigned DEFAULT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL,
  `max_buy_count` int(11) DEFAULT NULL,
  `max_buy_type` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_template`
--

LOCK TABLES `shop_template` WRITE;
/*!40000 ALTER TABLE `shop_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill_attack_time`
--

DROP TABLE IF EXISTS `skill_attack_time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skill_attack_time` (
  `race` tinyint(3) unsigned NOT NULL,
  `skill` smallint(5) unsigned NOT NULL,
  `step` tinyint(3) unsigned DEFAULT NULL,
  `speed_min` int(11) DEFAULT NULL,
  `speed_max` int(11) DEFAULT NULL,
  `time` int(10) unsigned DEFAULT NULL,
  `real_time` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`race`,`skill`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill_attack_time`
--

LOCK TABLES `skill_attack_time` WRITE;
/*!40000 ALTER TABLE `skill_attack_time` DISABLE KEYS */;
/*!40000 ALTER TABLE `skill_attack_time` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill_learn`
--

DROP TABLE IF EXISTS `skill_learn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skill_learn` (
  `type` tinyint(3) unsigned DEFAULT NULL,
  `index` smallint(5) unsigned DEFAULT NULL,
  `level` tinyint(3) unsigned DEFAULT NULL,
  `skill` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`skill`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill_learn`
--

LOCK TABLES `skill_learn` WRITE;
/*!40000 ALTER TABLE `skill_learn` DISABLE KEYS */;
/*!40000 ALTER TABLE `skill_learn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill_require`
--

DROP TABLE IF EXISTS `skill_require`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skill_require` (
  `skill` smallint(5) unsigned NOT NULL,
  `required_skill` smallint(5) unsigned DEFAULT NULL,
  `required_master_skill` smallint(5) unsigned DEFAULT NULL,
  `required_master_level` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`skill`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill_require`
--

LOCK TABLES `skill_require` WRITE;
/*!40000 ALTER TABLE `skill_require` DISABLE KEYS */;
/*!40000 ALTER TABLE `skill_require` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill_special`
--

DROP TABLE IF EXISTS `skill_special`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skill_special` (
  `guid` smallint(5) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `target` tinyint(3) unsigned DEFAULT NULL,
  `scope_type` int(11) DEFAULT NULL,
  `scope_value` tinyint(3) unsigned DEFAULT NULL,
  `element_1` int(11) DEFAULT NULL,
  `element_2` int(11) DEFAULT NULL,
  `element_3` int(11) DEFAULT NULL,
  `element_4` int(11) DEFAULT NULL,
  `element_5` int(11) DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill_special`
--

LOCK TABLES `skill_special` WRITE;
/*!40000 ALTER TABLE `skill_special` DISABLE KEYS */;
/*!40000 ALTER TABLE `skill_special` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill_special_element`
--

DROP TABLE IF EXISTS `skill_special_element`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skill_special_element` (
  `guid` int(10) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL,
  `rate` tinyint(3) unsigned DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `calc_type` tinyint(3) unsigned DEFAULT NULL,
  `calc_value` int(11) DEFAULT NULL,
  `magic` int(11) DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill_special_element`
--

LOCK TABLES `skill_special_element` WRITE;
/*!40000 ALTER TABLE `skill_special_element` DISABLE KEYS */;
/*!40000 ALTER TABLE `skill_special_element` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill_template`
--

DROP TABLE IF EXISTS `skill_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skill_template` (
  `id` smallint(5) unsigned NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `level` smallint(5) unsigned DEFAULT NULL,
  `damage` int(11) DEFAULT NULL,
  `mana_cost` int(11) DEFAULT NULL,
  `stamina_cost` int(11) DEFAULT NULL,
  `effect_range` tinyint(3) unsigned DEFAULT NULL,
  `effect_ratio` tinyint(3) unsigned DEFAULT NULL,
  `cooldown` int(10) unsigned DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `attribute` tinyint(3) unsigned DEFAULT NULL,
  `buff_icon` smallint(5) unsigned DEFAULT NULL,
  `required_level` smallint(6) DEFAULT NULL,
  `required_strength` int(11) DEFAULT NULL,
  `required_agility` int(11) DEFAULT NULL,
  `required_vitality` int(11) DEFAULT NULL,
  `required_energy` int(11) DEFAULT NULL,
  `required_leadership` int(11) DEFAULT NULL,
  `required_skill_count` tinyint(3) unsigned DEFAULT NULL,
  `status_1` tinyint(3) unsigned DEFAULT NULL,
  `status_2` tinyint(3) unsigned DEFAULT NULL,
  `status_3` tinyint(3) unsigned DEFAULT NULL,
  `base_skill` smallint(5) unsigned DEFAULT NULL,
  `required_class_dark_wizard` tinyint(3) unsigned DEFAULT NULL,
  `required_class_dark_knight` tinyint(3) unsigned DEFAULT NULL,
  `required_class_fairy_elf` tinyint(3) unsigned DEFAULT NULL,
  `required_class_magic_gladiator` tinyint(3) unsigned DEFAULT NULL,
  `required_class_dark_lord` tinyint(3) unsigned DEFAULT NULL,
  `required_class_summoner` tinyint(3) unsigned DEFAULT NULL,
  `required_class_rage_fighter` tinyint(3) unsigned DEFAULT NULL,
  `required_class_grow_lancer` tinyint(3) unsigned DEFAULT NULL,
  `required_class_rune_wizard` tinyint(3) unsigned DEFAULT NULL,
  `required_class_slayer` tinyint(3) unsigned DEFAULT NULL,
  `required_class_gun_crusher` tinyint(3) unsigned DEFAULT NULL,
  `animation` tinyint(3) unsigned DEFAULT NULL,
  `elemental_attribute` tinyint(3) unsigned DEFAULT NULL,
  `elemental_bonus_damage` smallint(5) unsigned DEFAULT NULL,
  `attack_delay` int(10) unsigned DEFAULT NULL,
  `mount_check` tinyint(3) unsigned DEFAULT NULL,
  `pvm_damage` tinyint(3) unsigned DEFAULT NULL,
  `pvp_damage` tinyint(3) unsigned DEFAULT NULL,
  `stat_1` int(11) DEFAULT NULL,
  `stat_value_1` int(11) DEFAULT NULL,
  `stat_2` int(11) DEFAULT NULL,
  `state_value_2` int(11) DEFAULT NULL,
  `disabled` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill_template`
--

LOCK TABLES `skill_template` WRITE;
/*!40000 ALTER TABLE `skill_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `skill_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill_tree`
--

DROP TABLE IF EXISTS `skill_tree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skill_tree` (
  `id` tinyint(3) unsigned NOT NULL,
  `race` tinyint(3) unsigned DEFAULT NULL,
  `group` tinyint(3) unsigned DEFAULT NULL,
  `required_points` tinyint(3) unsigned DEFAULT NULL,
  `max_level` tinyint(3) unsigned DEFAULT NULL,
  `link` tinyint(3) unsigned DEFAULT NULL,
  `required_skill_1` smallint(5) unsigned DEFAULT NULL,
  `required_skill_points_1` tinyint(3) unsigned DEFAULT NULL,
  `required_skill_2` smallint(5) unsigned DEFAULT NULL,
  `required_skill_points_2` tinyint(3) unsigned DEFAULT NULL,
  `skill` smallint(5) unsigned DEFAULT NULL,
  `related_skill` smallint(5) unsigned DEFAULT NULL,
  `replace_skill` smallint(5) unsigned DEFAULT NULL,
  `formula_id` smallint(5) unsigned DEFAULT NULL,
  `unknown5` tinyint(3) unsigned DEFAULT NULL,
  `unknown6` tinyint(3) unsigned DEFAULT NULL,
  `unknown7` tinyint(3) unsigned DEFAULT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill_tree`
--

LOCK TABLES `skill_tree` WRITE;
/*!40000 ALTER TABLE `skill_tree` DISABLE KEYS */;
/*!40000 ALTER TABLE `skill_tree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill_tree_majestic`
--

DROP TABLE IF EXISTS `skill_tree_majestic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skill_tree_majestic` (
  `race` tinyint(3) unsigned DEFAULT NULL,
  `id` smallint(5) unsigned NOT NULL,
  `section` tinyint(3) unsigned DEFAULT NULL,
  `ui_group` tinyint(3) unsigned DEFAULT NULL,
  `position_temp` tinyint(3) unsigned DEFAULT NULL,
  `skill_id` smallint(5) unsigned DEFAULT NULL,
  `buff_id` smallint(5) unsigned DEFAULT NULL,
  `rank` tinyint(3) unsigned DEFAULT NULL,
  `formula_id` int(11) DEFAULT NULL,
  `link_slot_1` int(11) DEFAULT NULL,
  `link_line_1` int(11) DEFAULT NULL,
  `link_slot_2` int(11) DEFAULT NULL,
  `link_line_2` int(11) DEFAULT NULL,
  `link_slot_3` int(11) DEFAULT NULL,
  `link_line_3` int(11) DEFAULT NULL,
  `link_slot_4` int(11) DEFAULT NULL,
  `link_line_4` int(11) DEFAULT NULL,
  `link_slot_5` int(11) DEFAULT NULL,
  `link_line_5` int(11) DEFAULT NULL,
  `required_points` tinyint(3) unsigned DEFAULT NULL,
  `max_points` tinyint(3) unsigned DEFAULT NULL,
  `active_next_points` tinyint(3) unsigned DEFAULT NULL,
  `parent_skill_1` smallint(5) unsigned DEFAULT NULL,
  `parent_skill_points_1` tinyint(3) unsigned DEFAULT NULL,
  `parent_skill_2` smallint(5) unsigned DEFAULT NULL,
  `parent_skill_points_2` tinyint(3) unsigned DEFAULT NULL,
  `parent_skill_3` smallint(5) unsigned DEFAULT NULL,
  `parent_skill_points_3` tinyint(3) unsigned DEFAULT NULL,
  `disabled` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill_tree_majestic`
--

LOCK TABLES `skill_tree_majestic` WRITE;
/*!40000 ALTER TABLE `skill_tree_majestic` DISABLE KEYS */;
/*!40000 ALTER TABLE `skill_tree_majestic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill_tree_majestic_stat`
--

DROP TABLE IF EXISTS `skill_tree_majestic_stat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skill_tree_majestic_stat` (
  `race` tinyint(3) unsigned DEFAULT NULL,
  `section` tinyint(3) unsigned DEFAULT NULL,
  `id` tinyint(3) unsigned NOT NULL,
  `skill_id` smallint(5) unsigned DEFAULT NULL,
  `point_condition_1` tinyint(3) unsigned DEFAULT NULL,
  `required_points_1` tinyint(3) unsigned DEFAULT NULL,
  `max_points_1` tinyint(3) unsigned DEFAULT NULL,
  `point_condition_2` tinyint(3) unsigned DEFAULT NULL,
  `required_points_2` tinyint(3) unsigned DEFAULT NULL,
  `max_points_2` tinyint(3) unsigned DEFAULT NULL,
  `point_condition_3` tinyint(3) unsigned DEFAULT NULL,
  `required_points_3` tinyint(3) unsigned DEFAULT NULL,
  `max_points_3` tinyint(3) unsigned DEFAULT NULL,
  `start_point_1` tinyint(3) unsigned DEFAULT NULL,
  `end_point_1` tinyint(3) unsigned DEFAULT NULL,
  `formula_id_1` smallint(5) unsigned DEFAULT NULL,
  `start_point_2` tinyint(3) unsigned DEFAULT NULL,
  `end_point_2` tinyint(3) unsigned DEFAULT NULL,
  `formula_id_2` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill_tree_majestic_stat`
--

LOCK TABLES `skill_tree_majestic_stat` WRITE;
/*!40000 ALTER TABLE `skill_tree_majestic_stat` DISABLE KEYS */;
/*!40000 ALTER TABLE `skill_tree_majestic_stat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `summon_scroll`
--

DROP TABLE IF EXISTS `summon_scroll`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `summon_scroll` (
  `index` smallint(5) unsigned NOT NULL,
  `item` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `summon_scroll`
--

LOCK TABLES `summon_scroll` WRITE;
/*!40000 ALTER TABLE `summon_scroll` DISABLE KEYS */;
/*!40000 ALTER TABLE `summon_scroll` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `summon_scroll_monster`
--

DROP TABLE IF EXISTS `summon_scroll_monster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `summon_scroll_monster` (
  `index` smallint(5) unsigned NOT NULL,
  `group` tinyint(3) unsigned DEFAULT NULL,
  `monster_class` smallint(5) unsigned DEFAULT NULL,
  `create_rate` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `summon_scroll_monster`
--

LOCK TABLES `summon_scroll_monster` WRITE;
/*!40000 ALTER TABLE `summon_scroll_monster` DISABLE KEYS */;
/*!40000 ALTER TABLE `summon_scroll_monster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_message`
--

DROP TABLE IF EXISTS `system_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_message` (
  `id` int(10) unsigned NOT NULL,
  `language` tinyint(3) unsigned DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_message`
--

LOCK TABLES `system_message` WRITE;
/*!40000 ALTER TABLE `system_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teleport_template`
--

DROP TABLE IF EXISTS `teleport_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teleport_template` (
  `id` tinyint(3) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `zen` int(10) unsigned DEFAULT NULL,
  `min_level` smallint(6) DEFAULT NULL,
  `gate` smallint(5) unsigned DEFAULT NULL,
  `monster` smallint(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teleport_template`
--

LOCK TABLES `teleport_template` WRITE;
/*!40000 ALTER TABLE `teleport_template` DISABLE KEYS */;
INSERT INTO `teleport_template` VALUES (1,'Arena',2000,1,50,-1),(2,'Lorencia',2000,10,17,7),(3,'Noria',2000,10,27,32),(4,'Devias',2000,10,22,24),(5,'Devias 2',2500,10,72,19),(6,'Devias 3',3000,10,73,20),(7,'Devias 4',3500,10,74,20),(8,'Dungeon',3000,30,2,11),(9,'Dungeon 2',3500,40,6,13),(10,'Dungeon 3',4000,40,10,8),(11,'Atlans',4000,50,49,45),(12,'Atlans 2',4500,80,75,52),(13,'Atlans 3',5000,90,76,48),(14,'LostTower',5000,50,42,39),(15,'LostTower 2',5500,50,31,34),(16,'LostTower 3',6000,50,33,41),(17,'LostTower 4',6500,50,35,37),(18,'LostTower 5',7000,50,37,40),(19,'LostTower 6',7500,70,39,35),(20,'LostTower 7',8000,70,41,35),(21,'Tarkan',8000,140,57,57),(22,'Tarkan 2',8500,160,77,61),(23,'Icarus',10000,160,63,70),(24,'ValleyOfLoren',0,10,104,-1),(25,'Aida 1',8500,150,119,306),(26,'Crywolf',15000,10,118,-1),(27,'Aida 2',8500,380,140,550),(28,'Kanturu 1',9000,160,138,353),(29,'Kanturu 2',9000,160,141,350),(30,'KanturuRelic',12000,300,139,360),(31,'Elbeland',2000,10,267,418),(32,'Elbeland 2',2500,10,268,422),(33,'SwampOfCalmness',15000,380,273,449),(34,'LaCleon',15000,380,287,458),(42,'Vulcanus',15000,300,294,490),(43,'Elbeland 3',3000,10,269,425),(44,'Loren Market',10000,1,333,-1),(45,'Kanturu 3',15000,380,334,556),(46,'Karutan 1',13000,280,335,574),(47,'Karutan 2',14000,380,344,576),(48,'Event Square',20000,1,503,-1),(49,'Acheron',50000,300,417,591),(50,'Ferea',50000,400,509,730),(51,'Nixies Lake',50000,700,522,744),(52,'Deep Dungeon 1',50000,770,561,767),(53,'Deep Dungeon 2',50000,770,562,772),(54,'Deep Dungeon 3',50000,770,563,773),(55,'Deep Dungeon 4',50000,770,564,769),(56,'Deep Dungeon 5',50000,770,565,777),(57,'Swamp Of Darkness',50000,800,567,788),(58,'Kubera Mine',50000,850,591,810),(59,'Atlans (Abyss) 1',50000,1000,617,832),(60,'Atlans (Abyss) 2',50000,1020,618,834),(61,'Atlans (Abyss) 3',50000,1030,619,836),(62,'Scorched Canyon',50000,1050,620,846),(63,'Scarlet Icarus',50000,1070,631,861);
/*!40000 ALTER TABLE `teleport_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vip_template`
--

DROP TABLE IF EXISTS `vip_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vip_template` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `experience` float DEFAULT NULL,
  `instance` int(10) unsigned DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vip_template`
--

LOCK TABLES `vip_template` WRITE;
/*!40000 ALTER TABLE `vip_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `vip_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `world_ai_path`
--

DROP TABLE IF EXISTS `world_ai_path`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `world_ai_path` (
  `id` int(10) unsigned NOT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL,
  `x` int(11) DEFAULT NULL,
  `y` int(11) DEFAULT NULL,
  `world` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `world_ai_path`
--

LOCK TABLES `world_ai_path` WRITE;
/*!40000 ALTER TABLE `world_ai_path` DISABLE KEYS */;
/*!40000 ALTER TABLE `world_ai_path` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `world_area_attribute`
--

DROP TABLE IF EXISTS `world_area_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `world_area_attribute` (
  `world_id` smallint(5) unsigned NOT NULL,
  `x1` smallint(6) DEFAULT NULL,
  `y1` smallint(6) DEFAULT NULL,
  `x2` smallint(6) DEFAULT NULL,
  `y2` smallint(6) DEFAULT NULL,
  `attribute` tinyint(3) unsigned DEFAULT NULL,
  `apply` tinyint(4) DEFAULT NULL,
  `send` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`world_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `world_area_attribute`
--

LOCK TABLES `world_area_attribute` WRITE;
/*!40000 ALTER TABLE `world_area_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `world_area_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `world_area_restriction`
--

DROP TABLE IF EXISTS `world_area_restriction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `world_area_restriction` (
  `world` smallint(5) unsigned NOT NULL,
  `x` int(11) DEFAULT NULL,
  `y` int(11) DEFAULT NULL,
  `range` tinyint(3) unsigned DEFAULT NULL,
  `flags` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`world`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `world_area_restriction`
--

LOCK TABLES `world_area_restriction` WRITE;
/*!40000 ALTER TABLE `world_area_restriction` DISABLE KEYS */;
/*!40000 ALTER TABLE `world_area_restriction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `world_attribute`
--

DROP TABLE IF EXISTS `world_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `world_attribute` (
  `world` smallint(5) unsigned NOT NULL,
  `state` tinyint(3) unsigned DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`world`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `world_attribute`
--

LOCK TABLES `world_attribute` WRITE;
/*!40000 ALTER TABLE `world_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `world_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `world_buff`
--

DROP TABLE IF EXISTS `world_buff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `world_buff` (
  `buff` int(10) unsigned NOT NULL,
  `flag` tinyint(3) unsigned DEFAULT NULL,
  `world` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`buff`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `world_buff`
--

LOCK TABLES `world_buff` WRITE;
/*!40000 ALTER TABLE `world_buff` DISABLE KEYS */;
/*!40000 ALTER TABLE `world_buff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `world_experience`
--

DROP TABLE IF EXISTS `world_experience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `world_experience` (
  `world` smallint(5) unsigned NOT NULL,
  `rate_party_member_1` int(11) DEFAULT NULL,
  `rate_party_member_2` int(11) DEFAULT NULL,
  `rate_party_member_3` int(11) DEFAULT NULL,
  `rate_party_member_4` int(11) DEFAULT NULL,
  `rate_party_member_5` int(11) DEFAULT NULL,
  PRIMARY KEY (`world`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `world_experience`
--

LOCK TABLES `world_experience` WRITE;
/*!40000 ALTER TABLE `world_experience` DISABLE KEYS */;
/*!40000 ALTER TABLE `world_experience` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `world_free_pk`
--

DROP TABLE IF EXISTS `world_free_pk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `world_free_pk` (
  `world` smallint(5) unsigned NOT NULL,
  `x1` smallint(6) DEFAULT NULL,
  `y1` smallint(6) DEFAULT NULL,
  `x2` smallint(6) DEFAULT NULL,
  `y2` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`world`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `world_free_pk`
--

LOCK TABLES `world_free_pk` WRITE;
/*!40000 ALTER TABLE `world_free_pk` DISABLE KEYS */;
/*!40000 ALTER TABLE `world_free_pk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `world_template`
--

DROP TABLE IF EXISTS `world_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `world_template` (
  `entry` smallint(5) unsigned NOT NULL,
  `display_entry` smallint(5) unsigned DEFAULT NULL,
  `state` tinyint(3) unsigned DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `spawn_gate` smallint(5) unsigned DEFAULT NULL,
  `experience` int(10) unsigned DEFAULT NULL,
  `zen_rate` int(10) unsigned DEFAULT NULL,
  `flags` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`entry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `world_template`
--

LOCK TABLES `world_template` WRITE;
/*!40000 ALTER TABLE `world_template` DISABLE KEYS */;
INSERT INTO `world_template` VALUES (0,0,0,'terrain1.att','Lorencia',17,1,1,2),(1,1,0,'terrain2.att','Dungeon',17,1,1,92270714),(2,2,0,'terrain3.att','Devias',22,1,1,92270714),(3,3,0,'terrain4.att','Noria',27,1,1,92270714),(4,4,0,'terrain5.att','Lost Tower',42,1,1,92270714),(5,5,0,'terrain6.att','Exile',17,1,1,92270714),(6,6,0,'terrain7.att','Stadium',50,1,1,92270714),(7,7,0,'terrain8.att','Atlans',49,1,1,92270714),(8,8,0,'terrain9.att','Tarkan',57,1,1,92270714),(9,9,0,'terrain10.att','Devil Square 1-4',27,1,1,92270714),(10,10,0,'terrain11.att','Icarus',22,1,1,92270714),(11,11,0,'terrain12.att','Blood Castle 1',503,1,1,92270714),(12,12,0,'terrain12.att','Blood Castle 2',503,1,1,92270714),(13,13,0,'terrain12.att','Blood Castle 3',503,1,1,92270714),(14,14,0,'terrain12.att','Blood Castle 4',503,1,1,92270714),(15,15,0,'terrain12.att','Blood Castle 5',503,1,1,92270714),(16,16,0,'terrain12.att','Blood Castle 6',503,1,1,92270714),(17,17,0,'terrain12.att','Blood Castle 7',503,1,1,92270714),(18,18,0,'terrain19.att','Chaos Castle 1',22,1,1,3702784),(19,19,0,'terrain19.att','Chaos Castle 2',22,1,1,3702784),(20,20,0,'terrain19.att','Chaos Castle 3',22,1,1,3702784),(21,21,0,'terrain19.att','Chaos Castle 4',22,1,1,3702784),(22,22,0,'terrain19.att','Chaos Castle 5',22,1,1,3702784),(23,23,0,'terrain19.att','Chaos Castle 6',22,1,1,3702784),(24,24,0,'terrain25.att','Kalima 1',22,1,1,92270714),(25,25,0,'terrain25.att','Kalima 2',22,1,1,92270714),(26,26,0,'terrain25.att','Kalima 3',22,1,1,92270714),(27,27,0,'terrain25.att','Kalima 4',22,1,1,92270714),(28,28,0,'terrain25.att','Kalima 5',22,1,1,92270714),(29,29,0,'terrain25.att','Kalima 6',22,1,1,92270714),(30,30,0,'terrain31.att','Castle Siege',100,1,1,92270714),(31,31,0,'terrain32.att','Land of Trials',106,1,1,92270714),(32,32,0,'terrain33.att','Devil Square 4-7',27,1,1,92270714),(33,33,0,'terrain34.att','Aida',306,1,1,92270714),(34,34,0,'terrain35_Peace.att','Crywolf First Zone - Peace',118,1,1,92270714),(35,35,0,'terrain36.att','Crywolf Second Zone',118,1,1,92270714),(36,36,0,'terrain37.att','Kalima 7',22,1,1,92270714),(37,37,0,'terrain38.att','Kanturu',138,1,1,92270714),(38,38,0,'terrain39.att','Kanturu Core',139,1,1,92270714),(39,39,0,'terrain40_Close.att','Kanturu Boss - Close',137,1,1,92270714),(40,40,0,'terrain41.att','Silent',22,1,1,92270714),(41,41,0,'terrain42.att','Barracks of Balgass',258,1,1,92270714),(42,42,0,'terrain43.att','Refuge of Balgass',258,1,1,92270714),(45,45,0,'terrain46.att','Illusion Temple 1',503,1,1,92270714),(46,46,0,'terrain46.att','Illusion Temple 2',503,1,1,92270714),(47,47,0,'terrain46.att','Illusion Temple 3',503,1,1,92270714),(48,48,0,'terrain46.att','Illusion Temple 4',503,1,1,92270714),(49,49,0,'terrain46.att','Illusion Temple 5',503,1,1,92270714),(50,50,0,'terrain46.att','Illusion Temple 6',503,1,1,92270714),(51,51,0,'terrain52.att','Elbeland',267,1,1,92270714),(52,52,0,'terrain12.att','Blood Castle 8',503,1,1,92270714),(53,53,0,'terrain19.att','Chaos Castle 7',22,1,1,3702784),(56,56,0,'terrain57.att','Swamp of Calmness',273,1,1,92270714),(57,57,0,'terrain58.att','Raklion',286,1,1,92270714),(58,58,0,'terrain59.att','Raklion Boss',286,1,1,92270714),(62,62,0,'terrain63.att','Santa Village',22,1,1,92270714),(63,63,0,'terrain64.att','Vulcanus',294,1,1,1),(64,64,0,'terrain65.att','Vulcanus Room',17,1,1,92270714),(69,69,0,'terrain70.att','Imperial Fortress 1',503,1,1,92270714),(70,70,0,'terrain71.att','Imperial Fortress 2',503,1,1,92270714),(71,71,0,'terrain72.att','Imperial Fortress 3',503,1,1,92270714),(72,72,0,'terrain73.att','Imperial Fortress 4',503,1,1,92270714),(79,79,0,'terrain80.att','Loren Market / Event Map',503,1,1,92270714),(80,80,0,'terrain81.att','Karutan 1',335,1,1,92270714),(81,81,0,'terrain82.att','Karutan 2',335,1,1,92270714),(82,82,0,'terrain83.att','Doppelganger 1',503,1,1,92270714),(83,83,0,'terrain83.att','Doppelganger 2',503,1,1,92270714),(84,84,0,'terrain83.att','Doppelganger 3',503,1,1,92270714),(85,85,0,'terrain83.att','Doppelganger 4',503,1,1,92270714),(86,86,0,'terrain83.att','Doppelganger 5',503,1,1,92270714),(87,87,0,'terrain83.att','Doppelganger 6',503,1,1,92270714),(88,88,0,'terrain83.att','Doppelganger 7',503,1,1,92270714),(89,89,0,'terrain83.att','Doppelganger 8',503,1,1,92270714),(90,90,0,'terrain83.att','Doppelganger 9',503,1,1,92270714),(91,91,0,'terrain92.att','Acheron',417,1,1,92270714),(92,92,0,'terrain93.att','Acheron Battle',426,1,1,92270714),(95,95,0,'terrain96.att','Deventer',417,1,1,92270714),(96,96,0,'terrain97.att','Deventer Battle',426,1,1,92270714),(97,97,0,'terrain19.att','Chaos Castle Survival',333,1,1,92270714),(98,98,0,'terrain99.att','Illusion Temple League 1',333,1,1,92270714),(99,99,0,'terrain100.att','Illusion Temple League 2',333,1,1,92270714),(100,100,0,'terrain101.att','Uruk Mountain',417,1,1,92270714),(101,101,0,'terrain101.att','Uruk Mountain Battle',426,1,1,92270714),(102,102,0,'terrain103.att','Tormented Square',333,1,1,92270714),(103,103,0,'terrain103.att','Tormented Square Battle 1',333,1,1,92270714),(104,104,0,'terrain103.att','Tormented Square Battle 2',333,1,1,92270714),(105,105,0,'terrain103.att','Tormented Square Battle 3',333,1,1,92270714),(106,106,0,'terrain103.att','Tormented Square Battle 4',333,1,1,92270714),(110,110,0,'terrain111.att','Nars',417,1,1,92270714),(112,112,0,'terrain113.att','Ferea',509,1,1,92270714),(113,113,0,'terrain114.att','Nixies Lake',522,1,1,92270714),(114,114,0,'terrain115.att','Labyrinth Safe',503,1,1,92270714),(115,115,0,'terrain116.att','Labyrinth',503,1,1,92270714),(116,116,0,'terrain117.att','Deep Dungeon 1',561,1,1,92270714),(117,117,0,'terrain118.att','Deep Dungeon 2',562,1,1,92270714),(118,118,0,'terrain119.att','Deep Dungeon 3',563,1,1,92270714),(119,119,0,'terrain120.att','Deep Dungeon 4',564,1,1,92270714),(120,120,0,'terrain121.att','Deep Dungeon 5',565,1,1,92270714),(121,121,0,'terrain122.att','Place of Qualification',537,1,1,92270714),(122,122,0,'terrain123.att','Swamp of Darkness',567,1,1,92270714),(123,123,0,'terrain124.att','Kubera Mine 1',591,1,1,92270714),(124,124,0,'terrain124.att','Kubera Mine 2',591,1,1,92270714),(125,125,0,'terrain124.att','Kubera Mine 3',591,1,1,92270714),(126,126,0,'terrain124.att','Kubera Mine 4',591,1,1,92270714),(127,127,0,'terrain124.att','Kubera Mine 5',591,1,1,92270714),(128,128,0,'terrain129.att','Atlans Abyss 1',617,1,1,92270714),(129,129,0,'terrain130.att','Atlans Abyss 2',618,1,1,92270714),(130,130,0,'terrain131.att','Atlans Abyss 3',619,1,1,92270714),(131,131,0,'terrain132.att','Scorched Canyon',620,1,1,92270714),(132,132,0,'terrain133.att','Scarlet Icarus',631,1,1,92270714);
/*!40000 ALTER TABLE `world_template` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-13 12:02:00
