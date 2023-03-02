-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versione server:              8.0.32 - MySQL Community Server - GPL
-- S.O. server:                  Win64
-- HeidiSQL Versione:            12.3.0.6589
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dump della struttura del database ecommerce_academy
CREATE DATABASE IF NOT EXISTS `ecommerce_academy` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ecommerce_academy`;

-- Dump della struttura di tabella ecommerce_academy.addresses
CREATE TABLE IF NOT EXISTS `addresses` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `cap` int NOT NULL,
  `citta` varchar(255) DEFAULT NULL,
  `n_civ` int NOT NULL,
  `provincia` varchar(255) DEFAULT NULL,
  `via` varchar(255) DEFAULT NULL,
  `id_customer` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKioxkaxqveviwmlrxs996qmtnq` (`id_customer`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dump dei dati della tabella ecommerce_academy.addresses: 0 rows
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;

-- Dump della struttura di tabella ecommerce_academy.customers
CREATE TABLE IF NOT EXISTS `customers` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dump dei dati della tabella ecommerce_academy.customers: 0 rows
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;

-- Dump della struttura di tabella ecommerce_academy.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `codice` varchar(255) DEFAULT NULL,
  `costo` float DEFAULT NULL,
  `descrizione` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `marca` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `categoria` varchar(255) DEFAULT NULL,
  `immagine` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dump dei dati della tabella ecommerce_academy.products: 3 rows
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`id`, `codice`, `costo`, `descrizione`, `marca`, `nome`, `categoria`, `immagine`) VALUES
	(1, 'A', 220, 'Xiaomi Redmi Note 11S Smartphone 6+128GB, Display AMOLED 6.43” 90Hz FHD+, MediaTek Helio G96, fotocamera professionale 108MP, 5000mAh, Graphite Grey (versione IT + 2 anni di garanzia)', 'Xiaomi', 'Smartphone', 'Mobiles', 'https://m.media-amazon.com/images/I/51YxFQpw+QL._AC_SL1001_.jpg'),
	(2, 'B', 12, 'Cover per Xiaomi Redmi Note 11 4G / Xiaomi Redmi Note 11S 4G, Antiurto Custodia con Paraurti in TPU Morbido e 3 Pezzi Pellicola Vetro Temperato, Sottile Trasparente Silicone Protettiva Case', 'iVoler', 'Cover', 'Mobiles', 'https://m.media-amazon.com/images/I/71BncQolQDL._AC_SL1500_.jpg'),
	(3, 'C', 235, 'HONOR X7a Smartphone, Display Fullview da 6,74" a 90 Hz, Fotocamera Quadrupla da 50MP con Batteria da 5330 mAh, 4 GB + 128 GB, Android 12, Oceano Blu', 'Honor', 'Smartphone', 'Mobiles', 'https://m.media-amazon.com/images/I/51IeAknTL7L._AC_SL1200_.jpg');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
