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

-- Dump dei dati della tabella ecommerce_academy.products: 22 rows
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`id`, `codice`, `costo`, `descrizione`, `marca`, `nome`, `categoria`, `immagine`) VALUES
	(1, 'A', 220, 'Xiaomi Redmi Note 11S Smartphone 6+128GB, Display AMOLED 6.43” 90Hz FHD+, MediaTek Helio G96, fotocamera professionale 108MP, 5000mAh, Graphite Grey (versione IT + 2 anni di garanzia)', 'Xiaomi', 'Smartphone', 'Mobiles', 'https://m.media-amazon.com/images/I/51YxFQpw+QL._AC_SL1001_.jpg'),
	(2, 'B', 12, 'Cover per Xiaomi Redmi Note 11 4G / Xiaomi Redmi Note 11S 4G, Antiurto Custodia con Paraurti in TPU Morbido e 3 Pezzi Pellicola Vetro Temperato, Sottile Trasparente Silicone Protettiva Case', 'iVoler', 'Cover', 'Mobiles', 'https://m.media-amazon.com/images/I/71BncQolQDL._AC_SL1500_.jpg'),
	(3, 'C', 235, 'HONOR X7a Smartphone, Display Fullview da 6,74" a 90 Hz, Fotocamera Quadrupla da 50MP con Batteria da 5330 mAh, 4 GB + 128 GB, Android 12, Oceano Blu', 'Honor', 'Smartphone', 'Mobiles', 'https://m.media-amazon.com/images/I/51IeAknTL7L._AC_SL1200_.jpg'),
	(4, 'D', 139, 'Apple AirPods con custodia di ricarica tramite cavo (seconda generazione)', 'Apple', 'Airpods', 'Electronics', 'https://m.media-amazon.com/images/I/71NLN1HgFkL._AC_SL1500_.jpg'),
	(5, 'E', 39, 'Apple AirTag', 'Apple', 'AirTag', 'Electronics', 'https://m.media-amazon.com/images/I/71+5mYCqy7S._AC_SL1500_.jpg'),
	(8, 'F', 69, 'Smartwatch Uomo Donna, Smart Watch 1,69" Orologio Intelligente con Contapassi Sonno Stress Cardiofrequenzimetro, Impermeabil IP68, 24 Sportivo, Notifiche Messaggi, Fitness Tracker per Android iOS-Nero', 'MOLOCY', 'Smartwatch', 'Electronics', 'https://m.media-amazon.com/images/I/61JVYr9m+CL._AC_SL1500_.jpg'),
	(9, 'G', 39, 'AXNEB Power Bank 13800mAh,Ultra Sottile & Leggero Caricatore Portatile con Display LCD,3A PD USB C Ingressi&Uscite Powrbank con Torcia LED Batteria Esterna per iPhone Samsung Huawei Xiaomi ECC-Nero', 'AXNEB', 'Powerbank', 'Electronics', 'https://m.media-amazon.com/images/I/61AYI31QRkL._AC_SL1500_.jpg'),
	(12, 'L', 13, 'Sakahyro 20W USB C Rapido Caricatore with 2M Cavo for iPhone 14/14 Pro/ 14 Pro Max/ 14 Plus/ 13/12/11/XS/XR/X/8, AirPods, USBC Caricabatterie Spina Adattatore Alimentatore Presa Carica Muro Ricarica', 'Sakahyro', 'Powerbank', 'Electronics', 'https://m.media-amazon.com/images/I/513wCAG6l4L._AC_SL1500_.jpg'),
	(13, 'M', 44, 'Fire TV Stick con telecomando vocale Alexa (con comandi per la TV) | Streaming in HD', 'Amazon', 'Fire TV Stick', 'Electronics', 'https://m.media-amazon.com/images/I/81h8WRVlcyL._AC_SL1500_.jpg'),
	(14, 'N', 99, 'Nuovo Kindle (modello 2022) | Il nostro Kindle più leggero e compatto, ora con uno schermo da 6’’ ad alta risoluzione (300 ppi) e doppio spazio di archiviazione | Con pubblicità | Blu', 'Amazon', 'Kindle', 'Electronics', 'https://m.media-amazon.com/images/I/61hv6MP0WNL._AC_SL1000_.jpg'),
	(15, 'O', 32, 'TP-Link TL-SG108 Switch 8 Porte Gigabit, 10/100/1000 Mbps, Plug & Play, 802.1p/DSCP QoS, IGMP Snooping, Involucro in Metallo Resistente, Installazione Facile, Tecnologia Green Ethernet, IEEE 802.3x', 'TP-Link', 'TP-Link', 'Electronics', 'https://m.media-amazon.com/images/I/51g3tIv6p2L._AC_SL1000_.jpg'),
	(16, 'P', 69, 'TP-Link TL-MR6400 Router 4G LTE fino a 150 Mbps/Wireless N fino a 300Mbps, Porta LAN/WAN, Senza configurazione, Antenne Staccabili', 'TP-Link', 'TP-Link', 'Electronics', 'https://m.media-amazon.com/images/I/41gYEcYr-ZL._AC_SL1000_.jpg'),
	(17, 'Q', 74, 'Echo Dot (5ª generazione, modello 2022) con orologio | Altoparlante Bluetooth intelligente con orologio e integrazione Alexa | Azzurro tenue', 'Amazon', 'Echo Dot', 'Electronics', 'https://m.media-amazon.com/images/I/61QrARFfXEL._AC_SL1000_.jpg'),
	(18, 'R', 649, 'Google Pixel 7 - Smartphone Android 5G sbloccato con grandangolo e batteria che dura 24 ore, 128GB - Bianco ghiaccio', 'Google', 'Smartphone', 'Mobiles', 'https://m.media-amazon.com/images/I/614Gij3tGwL._AC_SL1500_.jpg'),
	(19, 'S', 699, 'Apple iPhone 12 Pro, 256GB, Blu - (Ricondizionato)', 'Apple', 'Smartphone', 'Mobiles', 'https://m.media-amazon.com/images/I/61DkzK6sHOL._AC_SL1500_.jpg'),
	(20, 'T', 549, 'SAMSUNG Galaxy Z Flip3 5G SM-F711B 17 cm (6.7") Android 11 USB Tipo-C 8 GB 128 GB 3300 mAh Crema', 'Samsung', 'Smartphone', 'Mobiles', 'https://m.media-amazon.com/images/I/61bMbrl7jgL._AC_SL1500_.jpg'),
	(21, 'U', 549, 'DOOGEE V30 2023 Rugged Smartphone 5g, Batteria 10800mAh, 15GB+256GB(TF 2TB), 108 MP Tripla Fotocamera, 6.6" FHD+ 120Hz, Dimensity 900, Telefono Indistruttibile Android 12, IP68/IP69K, NFC/eSIM/OTG', 'DOOGEE', 'Smartphone', 'Mobiles', 'https://m.media-amazon.com/images/I/71Nz4OPxA0L._AC_SL1500_.jpg'),
	(22, 'V', 299, 'SAMSUNG Galaxy XCover 5 SM-G525F/DS 13.5 cm (5.3) Dual SIM Android 11 4G USB Type-C 4 GB 64 GB 3000 mAh Black', 'Samsung', 'Smartphone', 'Mobiles', 'https://m.media-amazon.com/images/I/81IuT97LYnL._AC_SL1500_.jpg'),
	(23, 'U', 1229, 'Samsung Galaxy S23+, Caricatore incluso, Smartphone Android, Display 6.6\' Dynamic AMOLED 2X, Fotocamera 50MP, RAM 8GB, 256 GB, 4.700 mAh, Phantom Black [Versione italiana]', 'Samsung', 'Smartphone', 'Mobiles', 'https://m.media-amazon.com/images/I/71RTnjIG3-L._AC_SL1500_.jpg'),
	(24, 'Z', 23, 'Miracase 2023-2a Generazione Porta Cellulare Auto e Supporto Telefono Flessibile per la Ventilazione Auto Porta Smartphone Universale Compatibile con iPhone Serie 13/14 e Samsung', 'Miracase', 'Appoggio Auto', 'Mobiles', 'https://m.media-amazon.com/images/I/61J+JbM38KL._AC_SL1186_.jpg'),
	(25, 'AA', 6, 'NEW C 3 Pezzi, Vetro Temperato per Samsung Galaxy A53 5G, Pellicola Prottetiva Anti Graffio, Anti-Impronte, Senza Bolle, Durezza 9H, 0,26mm Ultra Trasparente, Ultra Resistente', 'NEW C', 'Pellicola', 'Mobiles', 'https://m.media-amazon.com/images/I/610RrWzMerL._AC_SL1500_.jpg'),
	(26, 'AB', 5, 'NEW C Cover per iPhone 12/12 Pro (6,1 pollici), Custodia Gel Trasparente Morbida Silicone Sottile TPU [Ultra Leggera e Chiaro]', 'NEW C', 'Cover', 'Mobiles', 'https://m.media-amazon.com/images/I/71LPvn-YGeL._AC_SL1500_.jpg');

/*!40000 ALTER TABLE `products` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
