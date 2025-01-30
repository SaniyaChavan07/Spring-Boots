-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 26, 2023 at 08:04 AM
-- Server version: 8.0.27
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `springboots`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`) VALUES
(1, 'thv', 'fc7a734dba518f032608dfeb04f4eeb79f025aa7');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `pid` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int NOT NULL,
  `quantity` int NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(99, 11, 14, 'Iced Cappuccino', 60, 2, 'Iced Cappuccino.jpg'),
(100, 11, 20, 'Borgia', 30, 1, 'Borgia.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
CREATE TABLE IF NOT EXISTS `employees` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `number` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `address`, `number`) VALUES
(1, 'ABC', '', 65748396),
(2, 'XYZ', '', 897645976),
(3, 'PQR', '', 657456789),
(4, 'Kim-Min', '4e8bd0474cd8700ed840090671c6f4be559c9984', 0);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(1, 0, 'qwerty', 'qwerty123@gmail.com', '4536218744', 'Hi ! SpringBoots'),
(4, 1, 'admin', 'abc123@gmail.com', '4576421345', 'hi'),
(5, 1, 'abc', 'abc123@gmail.com', '9870543065', 'Nice Desserts');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `payment_status`) VALUES
(5, 1, 'abc', '4321567890', 'abc123@gmail.com', 'credit card', '12, 7, nkwejfd, rjifjeifj , Delhi, Delhi, India - 342516', 'coffee (50 x 1) - desserts (100 x 1) - ', 150, 'completed'),
(6, 1, 'abc', '4321567890', 'abc123@gmail.com', 'cash on delivery', '12, 7, nkwejfd, rjifjeifj , Delhi, Delhi, India - 342516', 'desserts (100 x 1) - Burger (75 x 2) - ', 250, 'completed'),
(7, 1, 'abc', '4321567890', 'abc123@gmail.com', 'cash on delivery', '12, 7, nkwejfd, rjifjeifj , Delhi, Delhi, India - 342516', 'coffee (50 x 1) - ', 50, 'completed'),
(8, 1, 'abc', '4321567890', 'abc123@gmail.com', 'cash on delivery', '12, 7, nkwejfd, rjifjeifj , Delhi, Delhi, India - 342516', 'desserts (100 x 1) - ', 100, 'completed'),
(10, 1, 'abc', '4321567890', 'abc123@gmail.com', 'cash on delivery', '12,qwerty,Pune, -897065', 'desserts (100 x 2) - Burger (75 x 2) - ', 350, 'completed'),
(11, 1, 'abc', '4321567890', 'abc123@gmail.com', 'cash on delivery', '12,qwerty,Pune, -897065', 'Burger (75 x 2) - ', 150, 'completed'),
(13, 1, 'abc', '4321567890', 'abc123@gmail.com', 'cash on delivery', '12,qwerty,Pune, -897065', 'Burger (75 x 2) - ', 150, 'completed'),
(14, 4, 'json', '4565432178', 'json@gmail.com', 'cash on delivery', '1,camp,Pune, -411056', 'Veg Kebabs (60 x 2) - Cheese Cake (120 x 1) -  Frappé (100 x 2) - ', 440, 'completed'),
(15, 5, 'jiya', '5674301927', 'jiya@gmail.com', 'cash on delivery', '5,abcd,xyz, -999999', 'Veg Kebabs (60 x 2) - Chocolate Brownie (100 x 2) - ', 320, 'completed'),
(16, 6, 'Durva', '9739563219', 'durva123@gmail.com', 'cash on delivery', '7,Sun Orbit,Pune, -212134', 'Chocolate Brownie (100 x 2) -  Frappé (100 x 1) - Cheese Corn Pizza (120 x 1) - ', 420, 'completed'),
(17, 7, 'Moon', '4356789432', 'moon123@gmail.com', 'credit card', '9,Moon City,Moon, -10001', 'Chocolate Brownie (100 x 2) - Iced Cappuccino (60 x 2) - Blueberry Smothie (120 x 1) - Bacon Cheese Fries (80 x 1) - ', 520, 'completed'),
(18, 8, 'springboots', '4345697832', 'springboots@gmail.com', 'cash on delivery', '11,springboots,xyz, -653421', 'Red Jelly (60 x 1) - Paneer Roll (120 x 1) - Mocha Latte (70 x 1) - Cheese Corn Pizza (120 x 1) - Bacon Cheese Fries (80 x 2) - Pastry (50 x 2) - ', 630, 'completed'),
(19, 1, 'abc', '4321567890', 'abc123@gmail.com', 'credit card', '12,qwerty,Pune, -897065', 'Veg Kebabs (60 x 1) - Mocha Latte (70 x 1) - Cosmopolitan Drink (90 x 1) - Cheese Corn Pizza (120 x 1) - Pastry (50 x 1) - ', 390, 'completed'),
(20, 1, 'abc', '4321567890', 'abc123@gmail.com', 'cash on delivery', '12,qwerty,Pune, -897065', 'Canape (80 x 1) - ', 80, 'completed'),
(21, 5, 'jiya', '5674301927', 'jiya@gmail.com', 'cash on delivery', '5,abcd,xyz, -999999', 'Bacon Cheese Fries (80 x 1) - Pastry (50 x 2) - macchiato (55 x 2) - ', 290, 'completed'),
(23, 1, 'abc', '4321567890', 'abc123@gmail.com', 'cash on delivery', '12,qwerty,Pune, -897065', 'macchiato (55 x 1) - ', 55, 'completed'),
(25, 2, 'xyz', '4657382901', 'xyz123@gmail.com', 'cash on delivery', 'php myadmin', 'Bacon Cheese Fries (80 x 1) - ', 80, 'completed'),
(26, 1, 'abc', '4321567890', 'abc123@gmail.com', 'cash on delivery', '12,qwerty,Pune, -897065', 'Milk Latte (70 x 1) - Chocolate Brownie (100 x 2) - ', 270, 'completed'),
(31, 1, 'abc', '4321567890', 'abc123@gmail.com', 'credit card', '12,qwerty,Pune, -897065', 'Borgia (30 x 1) - Blue Mojito (60 x 2) - ', 150, 'completed'),
(33, 1, 'abc', '4321567890', 'abc123@gmail.com', 'credit card', '12,qwerty,Pune, -897065', 'Milk Latte (70 x 1) - ', 70, 'pending'),
(39, 2, 'xyz', '4657382901', 'xyz123@gmail.com', 'cash on delivery', 'php myadmin', 'Mocha Latte (70 x 1) - ', 70, 'completed'),
(41, 1, 'abc', '4321567890', 'abc123@gmail.com', 'cash on delivery', '12,qwerty,Pune, -897065', 'Veg Kebabs (60 x 1) - ', 60, 'pending'),
(42, 1, 'abc', '4321567890', 'abc123@gmail.com', 'cash on delivery', '12,qwerty,Pune, -897065', 'Traditional  Turkish Coffee (120 x 1) - ', 120, 'pending'),
(43, 1, 'abc', '4321567890', 'abc123@gmail.com', 'cash on delivery', '12,qwerty,Pune, -897065', 'Dalgona Coffee (50 x 2) - Blue Mojito (60 x 1) - ', 160, 'completed'),
(44, 2, 'xyz', '4657382901', 'xyz123@gmail.com', 'cash on delivery', 'php myadmin', 'Dalgona Coffee (50 x 1) - ', 50, 'completed'),
(45, 1, 'abc', '4321567890', 'abc123@gmail.com', 'cash on delivery', '12,qwerty,Pune, -897065', 'Cheese Cake (120 x 3) - ', 360, 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `price` int NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `price`, `image`) VALUES
(4, 'Canape', 'main dish', 80, 'A1.jpg'),
(5, 'Veg Kebabs', 'main dish', 60, 'A2.jpg'),
(6, 'Paneer Roll', 'main dish', 120, 'A3.jpg'),
(7, 'Chocolate Brownie', 'desserts', 100, 'D1.jpg'),
(8, 'Cheese Cake', 'desserts', 120, 'D2.jpg'),
(9, 'Americano', 'coffee', 70, 'Americano.jpg'),
(10, 'Iced Americano', 'coffee', 80, 'Iced Americano.jpg'),
(11, 'Milk Latte', 'coffee', 70, 'Milk Latte.jpg'),
(12, 'Mocha Latte', 'coffee', 70, 'Mocha Latte.jpg'),
(13, 'Iced Latte', 'coffee', 60, 'Iced Latte.jpg'),
(14, 'Iced Cappuccino', 'coffee', 60, 'Iced Cappuccino.jpg'),
(15, 'Espresso', 'coffee', 40, 'Espresso.jpg'),
(16, 'Doppio', 'coffee', 45, 'Doppio.jpg'),
(17, 'macchiato', 'coffee', 55, 'machiato.jpg'),
(18, 'Traditional  Turkish Coffee', 'coffee', 120, 'Turkish.jpg'),
(19, ' Frappé', 'coffee', 100, 'Frappé.jpg'),
(20, 'Borgia', 'coffee', 30, 'Borgia.jpg'),
(21, 'Brew Coffee', 'coffee', 30, 'Brew.jpg'),
(22, 'Cortado', 'coffee', 25, 'Cortado.jpg'),
(23, 'Dalgona Coffee', 'coffee', 50, 'Dlagona Coffee.jpg'),
(24, 'Cosmopolitan Drink', 'drinks', 90, 'Cosmopolitan.jpg'),
(25, 'Fruit Punch', 'drinks', 30, 'Fruit punch.jpg'),
(26, 'Blue Mojito', 'drinks', 60, 'Blue mojito.jpg'),
(27, 'Blueberry Smothie', 'drinks', 120, 'Blueberry.jpg'),
(28, 'Falooda', 'drinks', 50, 'Falooda.jpg'),
(29, 'Mango Mastani', 'drinks', 75, 'Mastani.jpg'),
(30, 'Cheese Corn Pizza', 'main dish', 120, 'pizza.jpg'),
(31, 'Bacon Cheese Fries', 'main dish', 80, 'fries.jpg'),
(32, 'Veg Burger', 'main dish', 50, 'Burger.jpg'),
(33, 'Pastry', 'desserts', 50, 'Pastry.jpg'),
(34, 'Black & White Cookies', 'desserts', 70, 'black-and-white-cookies.jpg'),
(35, 'Donut', 'desserts', 30, 'Donut.jpg'),
(36, 'Red Jelly', 'desserts', 60, 'red-jelly.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `number` varchar(10) NOT NULL,
  `password` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `number`, `password`, `address`) VALUES
(1, 'abc', 'abc123@gmail.com', '4321567890', '6367c48dd193d56ea7b0baad25b19455e529f5ee', '12,qwerty,Pune, -897065'),
(2, 'xyz', 'xyz123@gmail.com', '4657382901', '2b743ea5699560665032496d957cd8c0075029d5', 'php myadmin'),
(4, 'json', 'json@gmail.com', '4565432178', '05d97e6e9834ccf063c552e404b9ecafc5e4d662', '1,camp,Pune, -411056'),
(5, 'jiya', 'jiya@gmail.com', '5674301927', '32d8a40dbb6d903498fa35b00f400b71f14e624f', '5,abcd,xyz, -999999'),
(6, 'Durva', 'durva123@gmail.com', '9739563219', '5b7018b030075c5c574bed3eafcd07c93821109d', '7,Sun Orbit,Pune, -212134'),
(7, 'Moon', 'moon123@gmail.com', '4356789432', '46dcd4dd65b63d106b8cfb4aad906b23716cc613', '9,Moon City,Moon, -10001'),
(8, 'springboots', 'springboots@gmail.com', '4345697832', '91831476aea89eb8c4e3c57ea48c4cf7ce1795c3', '11,springboots,xyz, -653421'),
(11, 'user', 'user@gmail.com', '9340215076', '12dea96fec20593566ab75692c9949596833adc9', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
