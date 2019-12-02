-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.3.13-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for stepzart
CREATE DATABASE IF NOT EXISTS `stepzart` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `stepzart`;

-- Dumping structure for table stepzart.category
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table stepzart.category: ~7 rows (approximately)
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` (`id`, `name`) VALUES
	(1, 'Mobiles'),
	(2, 'Electronics'),
	(3, 'Cars'),
	(4, 'Bikes'),
	(5, 'Furniture'),
	(6, 'Fashion'),
	(7, 'Real Estate');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;

-- Dumping structure for table stepzart.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category` varchar(50) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `offer` varchar(50) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table stepzart.products: ~2 rows (approximately)
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`id`, `category`, `title`, `description`, `image`, `price`, `offer`, `user_id`) VALUES
	(1, 'MOBILES', 'test Title', 'sss', 'onlineServer.png', 999, 'Test Offer', 1),
	(3, 'ELECTRONICS', 'test Title', 'qqqqq', 'onlineServer.png', 1112, 'Test Offer', 1);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- Dumping structure for table stepzart.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `contact` varchar(50) DEFAULT NULL,
  `addressLine1` varchar(50) DEFAULT NULL,
  `addressLine2` varchar(50) DEFAULT NULL,
  `roleLevel` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `pincode` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table stepzart.users: ~2 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `password`, `contact`, `addressLine1`, `addressLine2`, `roleLevel`, `city`, `state`, `pincode`) VALUES
	(1, 'Shadab', 'shadab@gmail.com', '1234', '7007586179', 'Vikas Nagar', 'Sector-6', 'User', 'Lucknow', 'UP', '226022'),
	(2, 'Admin', 'admin@gmail.com', '1234', '9335105662', 'Lko', 'lko', 'Admin', 'Lucknow', 'UP', '226022');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
