-- --------------------------------------------------------
-- Host:                         103.93.17.59
-- Server version:               8.0.16 - MySQL Community Server - GPL
-- Server OS:                    Linux
-- HeidiSQL Version:             10.1.0.5464
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for stepzart
CREATE DATABASE IF NOT EXISTS `stepzart` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
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
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(50) DEFAULT NULL,
  `expiryDate` varchar(50) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `is_expired` varchar(10) DEFAULT 'false',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table stepzart.offers: ~0 rows (approximately)
/*!40000 ALTER TABLE `offers` DISABLE KEYS */;
INSERT INTO `offers` (`id`, `description`, `expiryDate`, `product_id`, `is_expired`) VALUES
	(1, '50% off', '2019-12-07', 4, 'true');
/*!40000 ALTER TABLE `offers` ENABLE KEYS */;

-- Dumping structure for table stepzart.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category` varchar(50) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `description` longtext,
  `image1` varchar(50) DEFAULT NULL,
  `image2` varchar(50) DEFAULT NULL,
  `image3` varchar(50) DEFAULT NULL,
  `image4` varchar(50) DEFAULT NULL,
  `image5` varchar(50) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Dumping data for table stepzart.products: ~3 rows (approximately)
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`id`, `category`, `title`, `description`, `image1`, `image2`, `image3`, `image4`, `image5`, `price`, `location`, `user_id`) VALUES
	(1, 'MOBILES', 'test Title', 'sss', 'onlineServer.jpg', NULL, NULL, NULL, NULL, 999, 'Lucknow', 1),
	(3, 'ELECTRONICS', 'test Title', 'qqqqq', 'onlineServer.jpg', NULL, NULL, NULL, NULL, 1112, 'Kanpur', 1),
	(4, 'CARS', 'Cheap Car', 'Fell like ferrari but in your dreams', 'car1.jpg', 'car2.jpg', 'car3.jpg', NULL, NULL, 123456, 'Lucknow', 3);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- Dumping structure for table stepzart.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Dumping data for table stepzart.users: ~5 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `category`, `email`, `password`, `contact`, `addressLine1`, `addressLine2`, `roleLevel`, `city`, `state`, `pincode`) VALUES
	(2, 'Admin', 'Admin', 'admin@gmail.com', '1234', '9335105662', 'Lko', 'lko', 'Admin', 'Lucknow', 'UP', '226022'),
	(3, 'User', 'Electronics', 'user@gmail.com', '1234', '7007586179', 'Lucknow', 'Lucknow', 'USER', 'Lucknow', 'UP', '226021'),
	(4, 'Arifkhan', NULL, 'khanarf01@gmail.com', 'arif1234', '09919144430', 'Nyay vihar', 'Colony', 'User', 'Lucknow', 'Uttar Pradesh', '211003'),
	(5, 'Aman siddiqui', NULL, 'mr.siddiqui5544@gmail.com', 'aman@zehen', '7311129837', 'Aliganj', 'Lucknow ', 'User', 'Lucknow ', 'Utter pradesh ', '226021'),
	(6, 'xyz', NULL, 'xyz@gmail.com', '1234', '9999999999', 'ihgkj', 'nh.;l;', 'User', 'lucknow', 'up', '226021');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
