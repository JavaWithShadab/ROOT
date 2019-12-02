-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.3.13-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             10.1.0.5464
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for stepzart
CREATE DATABASE IF NOT EXISTS `stepzart` /*!40100 DEFAULT CHARACTER SET latin1 */;
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

-- Dumping structure for table stepzart.offers
CREATE TABLE IF NOT EXISTS `offers` (
  `id` bigint(20) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `expiryDate` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table stepzart.offers: ~0 rows (approximately)
/*!40000 ALTER TABLE `offers` DISABLE KEYS */;
/*!40000 ALTER TABLE `offers` ENABLE KEYS */;

-- Dumping structure for table stepzart.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category` varchar(50) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `image1` varchar(200) DEFAULT NULL,
  `image2` varchar(200) DEFAULT NULL,
  `image3` varchar(200) DEFAULT NULL,
  `image4` varchar(200) DEFAULT NULL,
  `image5` varchar(200) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `offer_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Dumping data for table stepzart.products: ~5 rows (approximately)
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`id`, `category`, `title`, `description`, `image1`, `image2`, `image3`, `image4`, `image5`, `price`, `offer_id`, `user_id`) VALUES
	(1, 'MOBILES', 'test Title', 'sss', 'onlineServer.png', NULL, NULL, NULL, NULL, 999, 1, 1),
	(3, 'ELECTRONICS', 'test Title', 'qqqqq', 'onlineServer.png', NULL, NULL, NULL, NULL, 1112, 1, 1),
	(4, 'BIKES', 'Farzi Car', 'ZXX', 'IMG_20151227_152226038.jpg', NULL, NULL, NULL, NULL, 12000, 1, 3),
	(5, 'CARS', 'Farzi Car', 'Bahut Buri Call hai', 'IMG_20151227_151804989.jpg', NULL, NULL, NULL, NULL, 1234, 1, 3),
	(6, 'CARS', 'Farzi Car', 'Farzi', 'IMG_20151227_151253302.jpg', 'IMG_20151227_151857059.jpg', 'IMG_20151227_151857059.jpg', 'IMG_20151227_151857059.jpg', 'IMG_20151227_152231042.jpg', 1234, 1, 3);
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
  `category` varchar(50) DEFAULT NULL,
  `pincode` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table stepzart.users: ~2 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `password`, `contact`, `addressLine1`, `addressLine2`, `roleLevel`, `city`, `state`, `category`, `pincode`) VALUES
	(2, 'Admin', 'admin@gmail.com', '1234', '9335105662', 'Lko', 'lko', 'Admin', 'Lucknow', 'UP', NULL, '226022'),
	(3, 'Afroz', 'user@gmail.com', '1234', '9876543210', 'KKK', 'UUUU', 'User', 'Lucknow', 'UP', NULL, '226031');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
