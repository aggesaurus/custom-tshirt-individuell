-- --------------------------------------------------------
-- Värd:                         127.0.0.1
-- Serverversion:                5.6.37 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for testdatabas
CREATE DATABASE IF NOT EXISTS `testdatabas` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `testdatabas`;

-- Dumping structure for tabell testdatabas.orders
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `packed` tinyint(4) DEFAULT '0',
  `sent` tinyint(4) DEFAULT '0',
  `delivered` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1064 DEFAULT CHARSET=latin1;

-- Dumpar data för tabell testdatabas.orders: ~5 rows (ungefär)
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` (`id`, `userid`, `packed`, `sent`, `delivered`) VALUES
	(1059, 1068, 1, 1, 0),
	(1060, 1069, 1, 1, 0),
	(1061, 1070, 1, 1, 0),
	(1062, 1071, 1, 1, 1),
	(1063, 1072, 1, 0, 0);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;

-- Dumping structure for tabell testdatabas.order_rows
CREATE TABLE IF NOT EXISTS `order_rows` (
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `quantity` int(11) DEFAULT NULL,
  `ok_to_share` tinyint(4) DEFAULT '1',
  `text` varchar(50) DEFAULT NULL,
  `image` varchar(1000) DEFAULT NULL,
  `material` char(50) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1118 DEFAULT CHARSET=latin1;

-- Dumpar data för tabell testdatabas.order_rows: ~2 rows (ungefär)
/*!40000 ALTER TABLE `order_rows` DISABLE KEYS */;
INSERT INTO `order_rows` (`order_id`, `product_id`, `quantity`, `ok_to_share`, `text`, `image`, `material`) VALUES
	(12, 1112, 0, 0, 'David', 'flagga', NULL),
	(17, 1117, NULL, 0, 'David', 'flagga', NULL);
/*!40000 ALTER TABLE `order_rows` ENABLE KEYS */;

-- Dumping structure for tabell testdatabas.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `vat_percent` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1018 DEFAULT CHARSET=latin1;

-- Dumpar data för tabell testdatabas.products: ~2 rows (ungefär)
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`id`, `name`, `description`, `price`, `vat_percent`) VALUES
	(1012, '100', NULL, NULL, NULL),
	(1017, '100', NULL, NULL, NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- Dumping structure for tabell testdatabas.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `firstName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1073 DEFAULT CHARSET=utf8;

-- Dumpar data för tabell testdatabas.users: ~5 rows (ungefär)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `firstName`, `lastName`, `email`, `password`) VALUES
	(1068, 'Jyoti', 'Ollarenshaw', 'jollarenshaw0@wikia.com', 'EyepxpnYjV'),
	(1069, 'Chaunce', 'Vatini', 'cvatini1@studiopress.com', 'iSNbZV'),
	(1070, 'Maurine', 'Gerardet', 'mgerardet2@boston.com', 'g9m0Yf'),
	(1071, 'Harri', 'Denniss', 'hdenniss3@twitpic.com', 'HJY8wAnQ9'),
	(1072, 'Nolie', 'Fabbri', 'nfabbri4@noaa.gov', 'y9Sjfx');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
