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
  `orderid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `packed` tinyint(4) DEFAULT '0',
  `sent` tinyint(4) DEFAULT '0',
  `delivered` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1249 DEFAULT CHARSET=latin1;

-- Dumpar data för tabell testdatabas.orders: ~5 rows (ungefär)
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` (`orderid`, `userid`, `packed`, `sent`, `delivered`) VALUES
	(1244, 1253, 1, 1, 0),
	(1245, 1254, 1, 1, 0),
	(1246, 1255, 1, 1, 0),
	(1247, 1256, 1, 1, 1),
	(1248, 1257, 1, 0, 0);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;

-- Dumping structure for tabell testdatabas.order_rows
CREATE TABLE IF NOT EXISTS `order_rows` (
  `orderid` int(11) DEFAULT NULL,
  `productid` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `ok_to_share` tinyint(4) DEFAULT '0',
  `text` varchar(50) DEFAULT NULL,
  `image` varchar(1000) DEFAULT NULL,
  `material` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumpar data för tabell testdatabas.order_rows: ~5 rows (ungefär)
/*!40000 ALTER TABLE `order_rows` DISABLE KEYS */;
INSERT INTO `order_rows` (`orderid`, `productid`, `quantity`, `ok_to_share`, `text`, `image`, `material`) VALUES
	(1244, 132, 5, 1, 'free hong kong', 'flag.jpg', 'cotton'),
	(1245, 133, 1, 1, 'I am boss', '0', 'linen'),
	(1246, 134, 1, 1, '#1 dad', 'cup.jpg', 'cotton'),
	(1247, 135, 3, 1, 'casual friday', 'bears.jpg', 'cotton'),
	(1248, 136, 1, 1, 'heavy metal', 'guitar.jpg', 'cotton');
/*!40000 ALTER TABLE `order_rows` ENABLE KEYS */;

-- Dumping structure for tabell testdatabas.products
CREATE TABLE IF NOT EXISTS `products` (
  `productid` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` int(11) NOT NULL DEFAULT '0',
  `name` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `vat_percent` int(11) DEFAULT NULL,
  PRIMARY KEY (`productid`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=latin1;

-- Dumpar data för tabell testdatabas.products: ~5 rows (ungefär)
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`productid`, `orderid`, `name`, `description`, `price`, `vat_percent`) VALUES
	(132, 1244, 'adidas', 'hoodie', 199, 20),
	(133, 1245, 'nike', 'tshirt', 159, 20),
	(134, 1246, 'levis', 'tshirt', 239, 20),
	(135, 1247, 'puma', 'tshirt', 199, 20),
	(136, 1248, 'gant', 'hoodie', 499, 20);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- Dumping structure for tabell testdatabas.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `firstName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1258 DEFAULT CHARSET=utf8;

-- Dumpar data för tabell testdatabas.users: ~5 rows (ungefär)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `firstName`, `lastName`, `email`, `password`) VALUES
	(1253, 'Jyoti', 'Ollarenshaw', 'jollarenshaw0@wikia.com', 'EyepxpnYjV'),
	(1254, 'Chaunce', 'Vatini', 'cvatini1@studiopress.com', 'iSNbZV'),
	(1255, 'Maurine', 'Gerardet', 'mgerardet2@boston.com', 'g9m0Yf'),
	(1256, 'Harri', 'Denniss', 'hdenniss3@twitpic.com', 'HJY8wAnQ9'),
	(1257, 'Nolie', 'Fabbri', 'nfabbri4@noaa.gov', 'y9Sjfx');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
