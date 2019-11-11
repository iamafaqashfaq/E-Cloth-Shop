-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2019 at 02:20 PM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'admin', '2019-05-24 16:21:18', '14-07-2019 05:06:25 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(7, 'Men', 'Fashion', '2019-05-19 02:36:00', NULL),
(8, 'Women', 'Women Fashion.', '2019-05-19 03:02:34', NULL),
(9, 'Girls & Boys', 'Kids Fashion Store.', '2019-05-19 03:03:03', '21-06-2019 03:37:46 PM');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(3, 1, '4', 1, '2017-03-10 19:43:04', 'Debit / Credit card', 'Delivered'),
(4, 1, '17', 1, '2017-03-08 16:14:17', 'COD', 'in Process'),
(5, 1, '3', 1, '2017-03-08 19:21:38', 'COD', NULL),
(6, 1, '4', 1, '2017-03-08 19:21:38', 'COD', NULL),
(7, 4, '1', 1, '2019-05-19 02:21:04', 'COD', NULL),
(8, 5, '54', 1, '2019-06-16 18:39:36', 'COD', 'in Process'),
(9, 5, '56', 1, '2019-06-16 18:39:36', 'COD', NULL),
(10, 5, '56', 1, '2019-06-16 18:43:52', 'COD', NULL),
(11, 5, '62', 1, '2019-06-16 18:57:14', 'COD', NULL),
(12, 5, '53', 1, '2019-06-16 18:59:04', 'COD', NULL),
(13, 5, '62', 1, '2019-06-16 19:02:09', 'COD', NULL),
(14, 5, '75', 1, '2019-06-16 19:03:01', 'COD', NULL),
(15, 5, '55', 1, '2019-06-16 19:08:38', 'COD', NULL),
(16, 5, '54', 1, '2019-06-16 19:19:51', 'COD', NULL),
(17, 5, '53', 1, '2019-06-16 19:20:24', 'COD', NULL),
(18, 5, '53', 1, '2019-06-16 19:22:44', 'COD', NULL),
(19, 5, '54', 1, '2019-06-16 19:23:22', 'COD', NULL),
(20, 5, '56', 1, '2019-06-16 20:00:51', 'COD', NULL),
(21, 5, '55', 1, '2019-06-16 20:01:24', 'COD', NULL),
(22, 5, '53', 1, '2019-06-16 20:02:44', 'COD', NULL),
(23, 5, '55', 1, '2019-06-16 20:02:44', 'COD', NULL),
(24, 5, '62', 1, '2019-06-16 20:02:44', 'COD', NULL),
(25, 5, '76', 1, '2019-06-16 20:02:44', 'COD', NULL),
(26, 6, '74', 1, '2019-06-22 09:43:01', 'COD', NULL),
(27, 6, '53', 1, '2019-06-23 15:13:40', 'COD', NULL),
(28, 6, '55', 1, '2019-06-23 15:13:40', 'COD', NULL),
(29, 1, '54', 1, '2019-06-23 15:23:46', 'COD', NULL),
(30, 6, '101', 1, '2019-06-24 12:56:40', 'COD', NULL),
(31, 6, '53', 1, '2019-06-25 11:11:22', 'COD', NULL),
(32, 7, '130', 1, '2019-06-25 17:03:00', 'COD', NULL),
(33, 6, '75', 1, '2019-06-26 09:19:41', 'COD', NULL),
(34, 6, '92', 1, '2019-06-26 09:19:41', 'COD', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(1, 3, 'in Process', 'Order has been Shipped.', '2017-03-10 19:36:45'),
(2, 1, 'Delivered', 'Order Has been delivered', '2017-03-10 19:37:31'),
(3, 3, 'Delivered', 'Product delivered successfully', '2017-03-10 19:43:04'),
(4, 4, 'in Process', 'Product ready for Shipping', '2017-03-10 19:50:36'),
(5, 8, 'in Process', 'nfgn', '2019-06-23 15:21:40');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext,
  `reviewDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(53, 7, 13, 'KB1841R', 'E-Cloth', 2870, 0, '<div>Volume:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n                    Volume 4 2019</div><div>\r\n                \r\n                            \r\n                    Collection:&nbsp;\r\n                    Festive Collection-II 2019 <br></div><div>Pieces : &nbsp; &nbsp; &nbsp;&nbsp; 2 Piece <br></div><div>Fabric: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n                    Lawn</div>', '30819_1_.jpg', '1.jpg', '', 50, 'In Stock', '2019-05-27 18:49:18', NULL),
(54, 7, 13, 'KB1842R', 'E-Cloth', 2610, 0, '<div>Volume:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n                    Volume 4 2019</div><div>\r\n                \r\n                            \r\n                    Collection:&nbsp;\r\n                    Festive Collection-II 2019 <br></div><div>Pieces : &nbsp; &nbsp; &nbsp;&nbsp; 2 Piece <br></div><div>Fabric: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n                    Lawn</div>', '2.jpg', '2.1.jpg', '', 60, 'In Stock', '2019-05-27 18:50:14', NULL),
(55, 7, 13, 'KB1843R', 'E-Cloth', 2090, 0, '<div>Volume:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n                    Volume 4 2019</div><div>\r\n                \r\n                            \r\n                    Collection:&nbsp;\r\n                    Festive Collection-II 2019 <br></div><div>Pieces : &nbsp; &nbsp; &nbsp;&nbsp; 2 Piece <br></div><div>Fabric: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n                    Lawn</div>', '3.1.jpg', '3.jpg', '', 50, 'In Stock', '2019-05-27 18:54:11', NULL),
(56, 7, 13, 'KB1844R', 'E-Cloth', 1980, 0, '<div>Volume:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n                    Volume 4 2019</div><div>\r\n                \r\n                            \r\n                    Collection:&nbsp;\r\n                    Festive Collection-II 2019 <br></div><div>Pieces : &nbsp; &nbsp; &nbsp;&nbsp; 2 Piece <br></div><div>Fabric: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n                    Lawn</div>', '4.jpg', '4.1.jpg', '', 50, 'In Stock', '2019-05-27 18:55:13', NULL),
(57, 7, 13, 'KB1845R', 'E-Cloth', 1780, 0, '<div>Volume:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n                    Volume 4 2019</div><div>\r\n                \r\n                            \r\n                    Collection:&nbsp;\r\n                    Festive Collection-II 2019 <br></div><div>Pieces : &nbsp; &nbsp; &nbsp;&nbsp; 2 Piece <br></div><div>Fabric: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n                    Lawn</div>', '5.jpg', '5.1.jpg', '', 50, 'In Stock', '2019-05-27 18:56:11', NULL),
(58, 7, 13, 'KB1846R', 'E-Cloth', 1290, 0, '<div>Volume:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n                    Volume 4 2019</div><div>\r\n                \r\n                            \r\n                    Collection:&nbsp;\r\n                    Festive Collection-II 2019 <br></div><div>Pieces : &nbsp; &nbsp; &nbsp;&nbsp; 2 Piece <br></div><div>Fabric: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n                    Lawn</div>', '6.jpg', '6.1.jpg', '', 50, 'In Stock', '2019-05-27 18:57:04', NULL),
(59, 7, 13, 'KB1847R', 'E-Cloth', 1790, 0, '<div>Volume:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n                    Volume 4 2019</div><div>\r\n                \r\n                            \r\n                    Collection:&nbsp;\r\n                    Festive Collection-II 2019 <br></div><div>Pieces : &nbsp; &nbsp; &nbsp;&nbsp; 2 Piece <br></div><div>Fabric: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n                    Lawn</div>', '7.jpg', '7.1.jpg', '', 50, 'In Stock', '2019-05-27 18:57:44', NULL),
(60, 7, 13, 'KB1848R', 'E-Cloth', 2210, 0, '<div>Volume:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n                    Volume 4 2019</div><div>\r\n                \r\n                            \r\n                    Collection:&nbsp;\r\n                    Festive Collection-II 2019 <br></div><div>Pieces : &nbsp; &nbsp; &nbsp;&nbsp; 2 Piece <br></div><div>Fabric: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n                    Lawn</div>', '9.jpg', '9.1.jpg', '', 50, 'In Stock', '2019-05-27 18:58:55', NULL),
(61, 8, 21, 'KB1865R', 'E-Cloth', 5099, 0, '<div>Volume:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n                    Volume 4 2019</div><div>\r\n                \r\n                            \r\n                    Collection:&nbsp;\r\n                    Festive Collection-II 2019 <br></div><div>Pieces : &nbsp; &nbsp; &nbsp;&nbsp; 2 Piece <br></div><div>Fabric: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n                    Lawn</div>', '1.1.jpg', '1.jpg', '', 50, 'In Stock', '2019-05-27 19:27:33', NULL),
(62, 8, 21, 'KB1866R', 'E-Cloth', 4580, 0, '<div>Volume:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n                    Volume 4 2019</div><div>\r\n                \r\n                            \r\n                    Collection:&nbsp;\r\n                    Festive Collection-II 2019 <br></div><div>Pieces : &nbsp; &nbsp; &nbsp;&nbsp; 2 Piece <br></div><div>Fabric: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n                    Lawn</div>', '2.1.jpg', '2.jpg', '', 50, 'In Stock', '2019-05-27 19:28:33', NULL),
(63, 8, 21, 'KB1867R', 'E-Cloth', 3490, 0, '<div>Volume:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n                    Volume 4 2019</div><div>\r\n                \r\n                            \r\n                    Collection:&nbsp;\r\n                    Festive Collection-II 2019 <br></div><div>Pieces : &nbsp; &nbsp; &nbsp;&nbsp; 2 Piece <br></div><div>Fabric: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n                    Lawn</div>', '3.1.jpg', '3.jpg', '', 50, 'In Stock', '2019-05-27 19:29:58', NULL),
(64, 8, 21, 'KB1868R', 'E-Cloth', 6799, 0, '<div>Volume:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n                    Volume 4 2019</div><div>\r\n                \r\n                            \r\n                    Collection:&nbsp;\r\n                    Festive Collection-II 2019 <br></div><div>Pieces : &nbsp; &nbsp; &nbsp;&nbsp; 2 Piece <br></div><div>Fabric: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n                    Lawn</div>', '4.1.jpg', '4.jpg', '', 50, 'In Stock', '2019-05-27 19:30:49', NULL),
(65, 8, 21, 'KB1869R', 'E-Cloth', 7840, 0, '<div>Volume:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n                    Volume 4 2019</div><div>\r\n                \r\n                            \r\n                    Collection:&nbsp;\r\n                    Festive Collection-II 2019 <br></div><div>Pieces : &nbsp; &nbsp; &nbsp;&nbsp; 2 Piece <br></div><div>Fabric: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n                    Lawn</div>', '5.1.jpg', '5.jpg', '', 50, 'In Stock', '2019-05-27 19:31:29', NULL),
(66, 8, 21, 'KB1870R', 'E-Cloth', 5500, 0, '<div>Volume:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n                    Volume 4 2019</div><div>\r\n                \r\n                            \r\n                    Collection:&nbsp;\r\n                    Festive Collection-II 2019 <br></div><div>Pieces : &nbsp; &nbsp; &nbsp;&nbsp; 2 Piece <br></div><div>Fabric: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n                    Lawn</div>', '6.1.jpg', '6.jpg', '', 50, 'In Stock', '2019-05-27 19:32:05', NULL),
(67, 8, 21, 'KB1871R', 'E-Cloth', 6799, 0, '<div>Volume:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n                    Volume 4 2019</div><div>\r\n                \r\n                            \r\n                    Collection:&nbsp;\r\n                    Festive Collection-II 2019 <br></div><div>Pieces : &nbsp; &nbsp; &nbsp;&nbsp; 2 Piece <br></div><div>Fabric: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n                    Lawn</div>', '7.1.jpg', '7.jpg', '', 50, 'In Stock', '2019-05-27 19:33:02', NULL),
(68, 8, 21, 'KB1872R', 'E-Cloth', 6600, 0, '<div>Volume:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n                    Volume 4 2019</div><div>\r\n                \r\n                            \r\n                    Collection:&nbsp;\r\n                    Festive Collection-II 2019 <br></div><div>Pieces : &nbsp; &nbsp; &nbsp;&nbsp; 2 Piece <br></div><div>Fabric: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n                    Lawn</div>', '8.1.jpg', '8.jpg', '', 50, 'In Stock', '2019-05-27 19:33:37', NULL),
(69, 8, 22, 'KB1877R', 'E-Cloth', 7490, 7700, '<div>Volume:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n                    Volume 4 2019</div><div>\r\n                \r\n                            \r\n                    Collection:&nbsp;\r\n                    Festive Collection-II 2019 <br></div><div>Pieces : &nbsp; &nbsp; &nbsp;&nbsp; 2 Piece <br></div><div>Fabric: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n                    Lawn</div>', '10.1.jpg', '10.jpg', '', 50, 'In Stock', '2019-05-27 19:34:41', NULL),
(70, 8, 22, 'KB1878R', 'E-Cloth', 4290, 4500, '<br>', '11.1.jpg', '11.jpg', '', 50, 'In Stock', '2019-05-27 19:37:50', NULL),
(71, 8, 22, 'KB1879R', 'E-Cloth', 7500, 7899, '<div>Volume:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n                    Volume 4 2019</div><div>\r\n                \r\n                            \r\n                    Collection:&nbsp;\r\n                    Festive Collection-II 2019 <br></div><div>Pieces : &nbsp; &nbsp; &nbsp;&nbsp; 2 Piece <br></div><div>Fabric: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n                    Lawn</div>', '12.1.jpg', '12.jpg', '', 50, 'In Stock', '2019-05-27 19:38:32', NULL),
(72, 8, 22, 'KB1880R', 'E-Cloth', 6480, 6700, '<div>Volume:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n                    Volume 4 2019</div><div>\r\n                \r\n                            \r\n                    Collection:&nbsp;\r\n                    Festive Collection-II 2019 <br></div><div>Pieces : &nbsp; &nbsp; &nbsp;&nbsp; 2 Piece <br></div><div>Fabric: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n                    Lawn</div>', '13.1.jpg', '13.jpg', '', 50, 'In Stock', '2019-05-27 19:39:31', NULL),
(73, 8, 22, 'KB1881R', 'E-Cloth', 5100, 5699, '<div>Volume:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n                    Volume 4 2019</div><div>\r\n                \r\n                            \r\n                    Collection:&nbsp;\r\n                    Festive Collection-II 2019 <br></div><div>Pieces : &nbsp; &nbsp; &nbsp;&nbsp; 2 Piece <br></div><div>Fabric: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n                    Lawn</div>', '14.1.jpg', '14.jpg', '', 50, 'In Stock', '2019-05-27 19:40:24', NULL),
(74, 9, 23, 'KB1889R', 'E-Cloth', 1899, 0, '<div>Volume:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n                    Volume 4 2019</div><div>\r\n                \r\n                            \r\n                    Collection:&nbsp;\r\n                    Festive Collection-II 2019 <br></div><div>Pieces : &nbsp; &nbsp; &nbsp;&nbsp; 2 Piece <br></div><div>Fabric: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n                    Lawn</div>', '1.1.jpg', '1.jpg', '', 50, 'In Stock', '2019-05-27 19:41:58', NULL),
(75, 9, 23, 'KB1890R', 'E-Cloth', 2299, 0, '<div>Volume:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n                    Volume 4 2019</div><div>\r\n                \r\n                            \r\n                    Collection:&nbsp;\r\n                    Festive Collection-II 2019 <br></div><div>Pieces : &nbsp; &nbsp; &nbsp;&nbsp; 2 Piece <br></div><div>Fabric: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n                    Lawn</div>', '21.webp', '21.1.webp', '', 50, 'In Stock', '2019-05-27 19:42:33', NULL),
(76, 9, 23, 'KB1891R', 'E-Cloth', 2800, 0, '<div>Volume:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n                    Volume 4 2019</div><div>\r\n                \r\n                            \r\n                    Collection:&nbsp;\r\n                    Festive Collection-II 2019 <br></div><div>Pieces : &nbsp; &nbsp; &nbsp;&nbsp; 2 Piece <br></div><div>Fabric: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n                    Lawn</div>', '3.1.jpg', '3.jpg', '', 50, 'In Stock', '2019-05-27 19:43:09', NULL),
(77, 9, 23, 'KB1892R', 'E-Cloth', 2699, 0, '<div>Volume:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n                    Volume 4 2019</div><div>\r\n                \r\n                            \r\n                    Collection:&nbsp;\r\n                    Festive Collection-II 2019 <br></div><div>Pieces : &nbsp; &nbsp; &nbsp;&nbsp; 2 Piece <br></div><div>Fabric: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n                    Lawn</div>', '18.webp', '18.1.webp', '', 50, 'In Stock', '2019-05-27 19:44:02', NULL),
(78, 9, 23, 'KB1893R', 'E-Cloth', 2200, 0, '<div>Volume:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n                    Volume 4 2019</div><div>\r\n                \r\n                            \r\n                    Collection:&nbsp;\r\n                    Festive Collection-II 2019 <br></div><div>Pieces : &nbsp; &nbsp; &nbsp;&nbsp; 2 Piece <br></div><div>Fabric: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n                    Lawn</div>', '5.1.jpg', '5.jpg', '', 50, 'In Stock', '2019-05-27 19:44:35', NULL),
(79, 9, 23, 'KB1894R', 'E-Cloth', 1299, 0, '<div>Volume:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n                    Volume 4 2019</div><div>\r\n                \r\n                            \r\n                    Collection:&nbsp;\r\n                    Festive Collection-II 2019 <br></div><div>Pieces : &nbsp; &nbsp; &nbsp;&nbsp; 2 Piece <br></div><div>Fabric: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n                    Lawn</div>', '19.webp', '19.1.webp', '', 50, 'In Stock', '2019-05-27 19:45:15', NULL),
(80, 9, 23, 'KB1895R', 'E-Cloth', 2800, 0, '<div>Volume:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n                    Volume 4 2019</div><div>\r\n                \r\n                            \r\n                    Collection:&nbsp;\r\n                    Festive Collection-II 2019 <br></div><div>Pieces : &nbsp; &nbsp; &nbsp;&nbsp; 2 Piece <br></div><div>Fabric: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n                    Lawn</div>', '7.1.jpg', '7.jpg', '', 50, 'In Stock', '2019-05-27 19:45:56', NULL),
(81, 9, 23, 'KB1896R', 'E-Cloth', 3299, 0, '<div>Volume:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n                    Volume 4 2019</div><div>\r\n                \r\n                            \r\n                    Collection:&nbsp;\r\n                    Festive Collection-II 2019 <br></div><div>Pieces : &nbsp; &nbsp; &nbsp;&nbsp; 2 Piece <br></div><div>Fabric: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n                    Lawn</div>', '20.webp', '20.1.webp', '', 50, 'In Stock', '2019-05-27 19:46:30', NULL),
(82, 9, 23, 'KB1897R', 'E-Cloth', 3099, 0, '<div>Volume:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n                    Volume 4 2019</div><div>\r\n                \r\n                            \r\n                    Collection:&nbsp;\r\n                    Festive Collection-II 2019 <br></div><div>Pieces : &nbsp; &nbsp; &nbsp;&nbsp; 2 Piece <br></div><div>Fabric: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n                    Lawn</div>', '9.1.jpg', '9.jpg', '', 50, 'In Stock', '2019-05-27 19:47:09', NULL),
(83, 9, 24, 'KB1904R', 'E-Cloth', 2000, 2200, '<div>Volume:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n                    Volume 4 2019</div><div>\r\n                \r\n                            \r\n                    Collection:&nbsp;\r\n                    Festive Collection-II 2019 <br></div><div>Pieces : &nbsp; &nbsp; &nbsp;&nbsp; 2 Piece <br></div><div>Fabric: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n                    Lawn</div>', '10.1.jpg', '10.jpg', '', 50, 'In Stock', '2019-05-27 19:47:42', NULL),
(84, 9, 24, 'KB1905R', 'E-Cloth', 2899, 3099, '<div>Volume:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n                    Volume 4 2019</div><div>\r\n                \r\n                            \r\n                    Collection:&nbsp;\r\n                    Festive Collection-II 2019 <br></div><div>Pieces : &nbsp; &nbsp; &nbsp;&nbsp; 2 Piece <br></div><div>Fabric: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n                    Lawn</div>', '25.webp', '25.1.webp', '', 50, 'In Stock', '2019-05-27 19:48:22', NULL),
(85, 9, 24, 'KB1906R', 'E-Cloth', 2900, 3280, '<div>Volume:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n                    Volume 4 2019</div><div>\r\n                \r\n                            \r\n                    Collection:&nbsp;\r\n                    Festive Collection-II 2019 <br></div><div>Pieces : &nbsp; &nbsp; &nbsp;&nbsp; 2 Piece <br></div><div>Fabric: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n                    Lawn</div>', '12.1.jpg', '12.jpg', '', 60, 'In Stock', '2019-05-27 19:49:37', NULL),
(86, 9, 24, 'KB1907R', 'E-Cloth', 3000, 3200, '<div>Volume:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n                    Volume 4 2019</div><div>\r\n                \r\n                            \r\n                    Collection:&nbsp;\r\n                    Festive Collection-II 2019 <br></div><div>Pieces : &nbsp; &nbsp; &nbsp;&nbsp; 2 Piece <br></div><div>Fabric: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n                    Lawn</div>', '26.webp', '26.1.webp', '', 50, 'In Stock', '2019-05-27 19:50:17', NULL),
(87, 9, 24, 'KB1908R', 'E-Cloth', 1999, 2200, '<div>Volume:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n                    Volume 4 2019</div><div>\r\n                \r\n                            \r\n                    Collection:&nbsp;\r\n                    Festive Collection-II 2019 <br></div><div>Pieces : &nbsp; &nbsp; &nbsp;&nbsp; 2 Piece <br></div><div>Fabric: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n                    Lawn</div>', '14.1.jpg', '14.jpg', '', 50, 'In Stock', '2019-05-27 19:50:58', NULL),
(88, 9, 24, 'KB1909R', 'E-Cloth', 5300, 5600, '<div>Volume:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n                    Volume 4 2019</div><div>\r\n                \r\n                            \r\n                    Collection:&nbsp;\r\n                    Festive Collection-II 2019 <br></div><div>Pieces : &nbsp; &nbsp; &nbsp;&nbsp; 2 Piece <br></div><div>Fabric: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n                    Lawn</div>', '27.webp', '27.1.webp', '', 50, 'In Stock', '2019-05-27 19:51:42', NULL),
(89, 9, 24, 'KB1910R', 'E-Cloth', 4260, 4300, '<div>Volume:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n                    Volume 4 2019</div><div>\r\n                \r\n                            \r\n                    Collection:&nbsp;\r\n                    Festive Collection-II 2019 <br></div><div>Pieces : &nbsp; &nbsp; &nbsp;&nbsp; 2 Piece <br></div><div>Fabric: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n                    Lawn</div>', '16.1.jpg', '16.jpg', '', 50, 'In Stock', '2019-05-27 19:52:21', NULL),
(90, 7, 14, 'KB1853R', 'E-Cloth', 5200, 5600, '<div>Volume:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n                    Volume 4 2019</div><div>\r\n                \r\n                            \r\n                    Collection:&nbsp;\r\n                    Festive Collection-II 2019 <br></div><div>Pieces : &nbsp; &nbsp; &nbsp;&nbsp; 2 Piece <br></div><div>Fabric: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n                    Lawn</div>', '10.1.jpg', '10.jpg', '', 50, 'In Stock', '2019-05-27 19:53:33', NULL),
(91, 7, 14, 'KB1854R', 'E-Cloth', 4099, 4390, '<div>Volume:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n                    Volume 4 2019</div><div>\r\n                \r\n                            \r\n                    Collection:&nbsp;\r\n                    Festive Collection-II 2019 <br></div><div>Pieces : &nbsp; &nbsp; &nbsp;&nbsp; 2 Piece <br></div><div>Fabric: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n                    Lawn</div>', '11.1.jpg', '11.jpg', '', 50, 'In Stock', '2019-05-27 19:54:31', NULL),
(92, 7, 14, 'KB1855R', 'E-Cloth', 6299, 6700, '<div>Volume:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n                    Volume 4 2019</div><div>\r\n                \r\n                            \r\n                    Collection:&nbsp;\r\n                    Festive Collection-II 2019 <br></div><div>Pieces : &nbsp; &nbsp; &nbsp;&nbsp; 2 Piece <br></div><div>Fabric: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n                    Lawn</div>', '12.1.jpg', '12.jpg', '', 50, 'In Stock', '2019-05-27 19:55:03', NULL),
(93, 7, 14, 'KB1856R', 'E-Cloth', 3420, 3980, '<div>Volume:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n                    Volume 4 2019</div><div>\r\n                \r\n                            \r\n                    Collection:&nbsp;\r\n                    Festive Collection-II 2019 <br></div><div>Pieces : &nbsp; &nbsp; &nbsp;&nbsp; 2 Piece <br></div><div>Fabric: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n                    Lawn</div>', '13.1.jpg', '13.jpg', '', 50, 'In Stock', '2019-05-27 19:55:47', NULL),
(94, 7, 14, 'KB1857R', 'E-Cloth', 6099, 6500, '<div>Volume:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n                    Volume 4 2019</div><div>\r\n                \r\n                            \r\n                    Collection:&nbsp;\r\n                    Festive Collection-II 2019 <br></div><div>Pieces : &nbsp; &nbsp; &nbsp;&nbsp; 2 Piece <br></div><div>Fabric: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n                    Lawn</div>', '14.1.jpg', '14.jpg', '', 50, 'Out of Stock', '2019-05-27 19:56:42', NULL),
(95, 7, 14, 'KB1858R', 'E-Cloth', 2000, 2299, '<div>Volume:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n                    Volume 4 2019</div><div>\r\n                \r\n                            \r\n                    Collection:&nbsp;\r\n                    Festive Collection-II 2019 <br></div><div>Pieces : &nbsp; &nbsp; &nbsp;&nbsp; 2 Piece <br></div><div>Fabric: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n                    Lawn</div>', '15.1.jpg', '15.jpg', '', 50, 'In Stock', '2019-05-27 19:57:24', NULL),
(96, 7, 14, 'KB1859R', 'E-Cloth', 1600, 1800, '<div>Volume:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n                    Volume 4 2019</div><div>\r\n                \r\n                            \r\n                    Collection:&nbsp;\r\n                    Festive Collection-II 2019 <br></div><div>Pieces : &nbsp; &nbsp; &nbsp;&nbsp; 2 Piece <br></div><div>Fabric: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n                    Lawn</div>', '16.1.jpg', '16.jpg', '', 50, 'In Stock', '2019-05-27 19:58:19', NULL),
(97, 7, 14, 'KB1860R', 'E-Cloth', 3444, 4000, '<div>Volume:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n                    Volume 4 2019</div><div>\r\n                \r\n                            \r\n                    Collection:&nbsp;\r\n                    Festive Collection-II 2019 <br></div><div>Pieces : &nbsp; &nbsp; &nbsp;&nbsp; 2 Piece <br></div><div>Fabric: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n                    Lawn</div>', '17.1.jpg', '17.jpg', '', 50, 'In Stock', '2019-06-20 15:40:49', NULL),
(98, 7, 13, 'KB1849R', 'E-Cloth', 3333, 0, '<div>Volume:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n                    Volume 4 2019</div><div>\r\n                \r\n                            \r\n                    Collection:&nbsp;\r\n                    Festive Collection-II 2019 <br></div><div>Pieces : &nbsp; &nbsp; &nbsp;&nbsp; 2 Piece <br></div><div>Fabric: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n                    Lawn</div>', '18.webp', '18.1.webp', '', 50, 'In Stock', '2019-06-20 15:49:15', NULL),
(99, 7, 13, 'KB1850R', 'E-Cloth', 3923, 0, '<div>Volume:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n                    Volume 4 2019</div><div>\r\n                \r\n                            \r\n                    Collection:&nbsp;\r\n                    Festive Collection-II 2019 <br></div><div>Pieces : &nbsp; &nbsp; &nbsp;&nbsp; 2 Piece <br></div><div>Fabric: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n                    Lawn</div>', '19.webp', '19.1.webp', '', 50, 'In Stock', '2019-06-20 16:23:21', NULL),
(100, 7, 14, 'KB1861R', 'E-Cloth', 3750, 4030, '<div>Volume:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n                    Volume 4 2019</div><div>\r\n                \r\n                            \r\n                    Collection:&nbsp;\r\n                    Festive Collection-II 2019 <br></div><div>Pieces : &nbsp; &nbsp; &nbsp;&nbsp; 2 Piece <br></div><div>Fabric: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n                    Lawn</div>', '20.webp', '20.1.webp', '', 50, 'In Stock', '2019-06-20 16:24:28', NULL),
(101, 7, 14, 'KB1862R', 'E-Cloth', 4000, 4500, '<div>Volume:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n                    Volume 4 2019</div><div>\r\n                \r\n                            \r\n                    Collection:&nbsp;\r\n                    Festive Collection-II 2019 <br></div><div>Pieces : &nbsp; &nbsp; &nbsp;&nbsp; 2 Piece <br></div><div>Fabric: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n                    Lawn</div>', '21.webp', '21.1.webp', '', 50, 'In Stock', '2019-06-20 16:25:20', NULL),
(102, 7, 13, 'KB1851R', 'E-Cloth', 3880, 0, '<div>Volume:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n                    Volume 4 2019</div><div>\r\n                \r\n                            \r\n                    Collection:&nbsp;\r\n                    Festive Collection-II 2019 <br></div><div>Pieces : &nbsp; &nbsp; &nbsp;&nbsp; 2 Piece <br></div><div>Fabric: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n                    Lawn</div>', '22.webp', '22.1.webp', '', 50, 'In Stock', '2019-06-20 16:28:13', NULL),
(103, 7, 13, 'KB1852R', 'E-Cloth', 3533, 0, '<div>Volume:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n                    Volume 4 2019</div><div>\r\n                \r\n                            \r\n                    Collection:&nbsp;\r\n                    Festive Collection-II 2019 <br></div><div>Pieces : &nbsp; &nbsp; &nbsp;&nbsp; 2 Piece <br></div><div>Fabric: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n                    Lawn</div>', '23.webp', '23.1.webp', '', 50, 'In Stock', '2019-06-20 16:29:00', NULL),
(104, 7, 14, 'KB1863R', 'E-Cloth', 4330, 5000, '<div>Volume:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n                    Volume 4 2019</div><div>\r\n                \r\n                            \r\n                    Collection:&nbsp;\r\n                    Festive Collection-II 2019 <br></div><div>Pieces : &nbsp; &nbsp; &nbsp;&nbsp; 2 Piece <br></div><div>Fabric: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n                    Lawn</div>', '24.webp', '24.1.webp', '', 50, 'In Stock', '2019-06-20 16:29:46', NULL),
(105, 7, 14, 'KB1864R', 'E-Cloth', 4030, 4540, '<div>Volume:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n                    Volume 4 2019</div><div>\r\n                \r\n                            \r\n                    Collection:&nbsp;\r\n                    Festive Collection-II 2019 <br></div><div>Pieces : &nbsp; &nbsp; &nbsp;&nbsp; 2 Piece <br></div><div>Fabric: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n                    Lawn</div>', '25.webp', '25.1.webp', '', 50, 'In Stock', '2019-06-20 16:30:56', NULL),
(107, 8, 21, 'KB1873R', 'E-Cloth', 2500, 0, '<div>Volume:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n                    Volume 4 2019</div><div>\r\n                \r\n                            \r\n                    Collection:&nbsp;\r\n                    Festive Collection-II 2019 <br></div><div>Pieces : &nbsp; &nbsp; &nbsp;&nbsp; 2 Piece <br></div><div>Fabric: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n                    Lawn</div>', '16.1.jpg', '16.jpg', '', 50, 'In Stock', '2019-06-20 16:42:38', NULL),
(108, 8, 21, 'KB1874R', 'E-Cloth', 3500, 0, '<div>Volume:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n                    Volume 4 2019</div><div>\r\n                \r\n                            \r\n                    Collection:&nbsp;\r\n                    Festive Collection-II 2019 <br></div><div>Pieces : &nbsp; &nbsp; &nbsp;&nbsp; 2 Piece <br></div><div>Fabric: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n                    Lawn</div>', '18.1.jpg', '18.jpg', '', 50, 'In Stock', '2019-06-20 16:43:36', NULL),
(109, 8, 21, 'KB1875R', 'E-Cloth', 3333, 0, '<div>Volume:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n                    Volume 4 2019</div><div>\r\n                \r\n                            \r\n                    Collection:&nbsp;\r\n                    Festive Collection-II 2019 <br></div><div>Pieces : &nbsp; &nbsp; &nbsp;&nbsp; 2 Piece <br></div><div>Fabric: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n                    Lawn</div>', '19.webp', '19.1.webp', '', 50, 'In Stock', '2019-06-20 16:44:26', NULL),
(110, 8, 22, 'KB1882R', 'E-Cloth', 2500, 2700, '<div>Volume:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n                    Volume 4 2019</div><div>\r\n                \r\n                            \r\n                    Collection:&nbsp;\r\n                    Festive Collection-II 2019 <br></div><div>Pieces : &nbsp; &nbsp; &nbsp;&nbsp; 2 Piece <br></div><div>Fabric: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n                    Lawn</div>', '20.webp', '20.1.webp', '', 50, 'In Stock', '2019-06-20 16:45:49', NULL),
(111, 8, 22, 'KB1883R', 'E-Cloth', 7080, 9000, '<div>Volume:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n                    Volume 4 2019</div><div>\r\n                \r\n                            \r\n                    Collection:&nbsp;\r\n                    Festive Collection-II 2019 <br></div><div>Pieces : &nbsp; &nbsp; &nbsp;&nbsp; 2 Piece <br></div><div>Fabric: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n                    Lawn</div>', '21.webp', '21.1.webp', '', 50, 'In Stock', '2019-06-20 16:47:06', NULL),
(112, 8, 22, 'KB1884R', 'E-Cloth', 12000, 15000, '<div>Volume:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n                    Volume 4 2019</div><div>\r\n                \r\n                            \r\n                    Collection:&nbsp;\r\n                    Festive Collection-II 2019 <br></div><div>Pieces : &nbsp; &nbsp; &nbsp;&nbsp; 2 Piece <br></div><div>Fabric: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n                    Lawn</div>', '22.webp', '22.1.webp', '', 50, 'In Stock', '2019-06-20 16:48:16', NULL),
(113, 8, 21, 'KB1876R', 'E-Cloth', 3000, 0, '<div>Volume:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n                    Volume 4 2019</div><div>\r\n                \r\n                            \r\n                    Collection:&nbsp;\r\n                    Festive Collection-II 2019 <br></div><div>Pieces : &nbsp; &nbsp; &nbsp;&nbsp; 2 Piece <br></div><div>Fabric: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n                    Lawn</div>', '15.1.jpg', '15.jpg', '', 50, 'In Stock', '2019-06-20 16:49:17', NULL),
(114, 8, 22, 'KB1885R', 'E-Cloth', 3090, 4000, '<div>Volume:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n                    Volume 4 2019</div><div>\r\n                \r\n                            \r\n                    Collection:&nbsp;\r\n                    Festive Collection-II 2019 <br></div><div>Pieces : &nbsp; &nbsp; &nbsp;&nbsp; 2 Piece <br></div><div>Fabric: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n                    Lawn</div>', '23.webp', '23.1.webp', '', 50, 'In Stock', '2019-06-20 16:50:04', NULL),
(115, 8, 22, 'KB1886R', 'E-Cloth', 2200, 2500, '<div>Volume:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n                    Volume 4 2019</div><div>\r\n                \r\n                            \r\n                    Collection:&nbsp;\r\n                    Festive Collection-II 2019 <br></div><div>Pieces : &nbsp; &nbsp; &nbsp;&nbsp; 2 Piece <br></div><div>Fabric: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n                    Lawn</div>', '24.webp', '24.1.webp', '', 50, 'In Stock', '2019-06-20 16:50:52', NULL),
(116, 8, 22, 'KB1887R', 'E-Cloth', 2830, 2900, '<div>Volume:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n                    Volume 4 2019</div><div>\r\n                \r\n                            \r\n                    Collection:&nbsp;\r\n                    Festive Collection-II 2019 <br></div><div>Pieces : &nbsp; &nbsp; &nbsp;&nbsp; 2 Piece <br></div><div>Fabric: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n                    Lawn</div>', '25.webp', '25.1.webp', '', 50, 'In Stock', '2019-06-20 16:54:08', NULL),
(117, 8, 22, 'KB1888R', 'E-Cloth', 3000, 3300, '<div>Volume:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n                    Volume 4 2019</div><div>\r\n                \r\n                            \r\n                    Collection:&nbsp;\r\n                    Festive Collection-II 2019 <br></div><div>Pieces : &nbsp; &nbsp; &nbsp;&nbsp; 2 Piece <br></div><div>Fabric: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n                    Lawn</div>', '26.webp', '26.1.webp', '', 50, 'In Stock', '2019-06-20 16:54:53', NULL),
(118, 9, 23, 'KB1898R', 'E-Cloth', 15000, 0, '<div>Volume:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n                    Volume 4 2019</div><div>\r\n                \r\n                            \r\n                    Collection:&nbsp;\r\n                    Festive Collection-II 2019 <br></div><div>Pieces : &nbsp; &nbsp; &nbsp;&nbsp; 2 Piece <br></div><div>Fabric: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n                    Lawn</div>', '2.1.jpg', '2.jpg', '', 50, 'In Stock', '2019-06-21 10:18:13', NULL),
(119, 9, 23, 'KB1899R', 'E-Cloth', 1900, 0, '<div>Volume:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n                    Volume 4 2019</div><div>\r\n                \r\n                            \r\n                    Collection:&nbsp;\r\n                    Festive Collection-II 2019 <br></div><div>Pieces : &nbsp; &nbsp; &nbsp;&nbsp; 2 Piece <br></div><div>Fabric: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n                    Lawn</div>', '22.webp', '22.1.webp', '', 50, 'In Stock', '2019-06-21 10:18:57', NULL),
(120, 9, 23, 'KB1900R', 'E-Cloth', 2000, 0, '<div>Volume:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n                    Volume 4 2019</div><div>\r\n                \r\n                            \r\n                    Collection:&nbsp;\r\n                    Festive Collection-II 2019 <br></div><div>Pieces : &nbsp; &nbsp; &nbsp;&nbsp; 2 Piece <br></div><div>Fabric: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n                    Lawn</div>', '4.1.jpg', '4.jpg', '', 50, 'In Stock', '2019-06-21 10:19:45', NULL),
(121, 9, 23, 'KB1901R', 'E-Cloth', 2200, 0, '<div>Volume:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n                    Volume 4 2019</div><div>\r\n                \r\n                            \r\n                    Collection:&nbsp;\r\n                    Festive Collection-II 2019 <br></div><div>Pieces : &nbsp; &nbsp; &nbsp;&nbsp; 2 Piece <br></div><div>Fabric: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n                    Lawn</div>', '23.webp', '23.1.webp', '', 50, 'In Stock', '2019-06-21 10:20:27', NULL),
(122, 9, 23, 'KB1902R', 'E-Cloth', 2800, 0, '<div>Volume:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n                    Volume 4 2019</div><div>\r\n                \r\n                            \r\n                    Collection:&nbsp;\r\n                    Festive Collection-II 2019 <br></div><div>Pieces : &nbsp; &nbsp; &nbsp;&nbsp; 2 Piece <br></div><div>Fabric: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n                    Lawn</div>', '6.1.jpg', '6.jpg', '', 50, 'In Stock', '2019-06-21 10:33:22', NULL),
(123, 9, 23, 'KB1903R', 'E-Cloth', 2300, 0, '<div>Volume:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n                    Volume 4 2019</div><div>\r\n                \r\n                            \r\n                    Collection:&nbsp;\r\n                    Festive Collection-II 2019 <br></div><div>Pieces : &nbsp; &nbsp; &nbsp;&nbsp; 2 Piece <br></div><div>Fabric: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n                    Lawn</div>', '24.webp', '24.1.webp', '', 50, 'In Stock', '2019-06-21 10:35:51', NULL),
(124, 9, 24, 'KB1911R', 'E-Cloth', 2900, 3300, '<div>Volume:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n                    Volume 4 2019</div><div>\r\n                \r\n                            \r\n                    Collection:&nbsp;\r\n                    Festive Collection-II 2019 <br></div><div>Pieces : &nbsp; &nbsp; &nbsp;&nbsp; 2 Piece <br></div><div>Fabric: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n                    Lawn</div>', '28.webp', '28.1.webp', '', 50, 'In Stock', '2019-06-21 10:44:07', NULL),
(125, 9, 24, 'KB1912R', 'E-Cloth', 3500, 3920, '<div>Volume:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n                    Volume 4 2019</div><div>\r\n                \r\n                            \r\n                    Collection:&nbsp;\r\n                    Festive Collection-II 2019 <br></div><div>Pieces : &nbsp; &nbsp; &nbsp;&nbsp; 2 Piece <br></div><div>Fabric: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n                    Lawn</div>', '13.1.jpg', '13.jpg', '', 50, 'In Stock', '2019-06-21 10:45:21', NULL),
(126, 9, 24, 'KB1913R', 'E-Cloth', 3300, 3800, '<div>Volume:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n                    Volume 4 2019</div><div>\r\n                \r\n                            \r\n                    Collection:&nbsp;\r\n                    Festive Collection-II 2019 <br></div><div>Pieces : &nbsp; &nbsp; &nbsp;&nbsp; 2 Piece <br></div><div>Fabric: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n                    Lawn</div>', '29.webp', '29.1.webp', '', 50, 'In Stock', '2019-06-21 10:48:19', NULL),
(127, 9, 24, 'KB1914R', 'E-Cloth', 3200, 3500, '<br>', '8.1.jpg', '8.jpg', '', 50, 'In Stock', '2019-06-21 10:49:30', NULL),
(128, 9, 24, 'KB1915R', 'E-Cloth', 2800, 3300, '<div>Volume:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n                    Volume 4 2019</div><div>\r\n                \r\n                            \r\n                    Collection:&nbsp;\r\n                    Festive Collection-II 2019 <br></div><div>Pieces : &nbsp; &nbsp; &nbsp;&nbsp; 2 Piece <br></div><div>Fabric: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n                    Lawn</div>', '30.webp', '30.1.webp', '', 50, 'In Stock', '2019-06-21 10:50:34', NULL),
(129, 9, 24, 'KB1916R', 'E-Cloth', 3300, 3500, '<div>Volume:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n                    Volume 4 2019</div><div>\r\n                \r\n                            \r\n                    Collection:&nbsp;\r\n                    Festive Collection-II 2019 <br></div><div>Pieces : &nbsp; &nbsp; &nbsp;&nbsp; 2 Piece <br></div><div>Fabric: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n                    Lawn</div>', '33.webp', '33.1.webp', '', 50, 'In Stock', '2019-06-21 10:55:31', NULL),
(130, 9, 24, 'KB1917R', 'E-Cloth', 2800, 3000, '<br>', '31.webp', '31.1.webp', '', 50, 'In Stock', '2019-06-21 10:56:23', NULL),
(131, 9, 24, 'KB1918R', 'E-Cloth', 3700, 4000, '<div>Volume:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n                    Volume 4 2019</div><div>\r\n                \r\n                            \r\n                    Collection:&nbsp;\r\n                    Festive Collection-II 2019 <br></div><div>Pieces : &nbsp; &nbsp; &nbsp;&nbsp; 2 Piece <br></div><div>Fabric: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n                    Lawn</div>', '34.webp', '34.1.webp', '', 50, 'In Stock', '2019-06-21 10:57:18', NULL),
(132, 9, 24, 'KB1919R', 'E-Cloth', 3500, 3900, '<div>Volume:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n                    Volume 4 2019</div><div>\r\n                \r\n                            \r\n                    Collection:&nbsp;\r\n                    Festive Collection-II 2019 <br></div><div>Pieces : &nbsp; &nbsp; &nbsp;&nbsp; 2 Piece <br></div><div>Fabric: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n                    Lawn</div>', '32.webp', '32.1.webp', '', 50, 'In Stock', '2019-06-21 10:58:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(13, 7, 'New Arrival', '2019-05-19 02:36:24', '22-06-2019 02:54:01 PM'),
(14, 7, 'Sale items', '2019-05-19 02:36:31', '22-06-2019 02:55:54 PM'),
(21, 8, 'New Arrival', '2019-05-25 13:24:11', '22-06-2019 02:54:48 PM'),
(22, 8, 'Sale items', '2019-05-25 13:25:02', '22-06-2019 02:56:09 PM'),
(23, 9, 'New Arrival', '2019-05-25 13:25:22', '22-06-2019 02:56:28 PM'),
(24, 9, 'Sale items', '2019-05-25 13:25:26', '22-06-2019 02:56:41 PM');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(25, 'abc@abc.com', 0x3a3a3100000000000000000000000000, '2019-05-19 04:06:16', NULL, 0),
(26, 'abc@gmail.com', 0x3132372e302e302e3100000000000000, '2019-06-11 17:22:07', NULL, 0),
(27, 'abc@gmail.com', 0x3a3a3100000000000000000000000000, '2019-06-16 18:38:24', '17-06-2019 12:10:26 AM', 1),
(28, 'abc@gmail.com', 0x3a3a3100000000000000000000000000, '2019-06-16 18:42:54', '17-06-2019 12:14:38 AM', 1),
(29, 'abc@gmail.com', 0x3a3a3100000000000000000000000000, '2019-06-16 18:47:56', '17-06-2019 12:20:42 AM', 1),
(30, 'abc@gmail.com', 0x3a3a3100000000000000000000000000, '2019-06-16 18:52:12', '17-06-2019 12:25:20 AM', 1),
(31, 'abc@gmail.com', 0x3a3a3100000000000000000000000000, '2019-06-16 18:56:42', '17-06-2019 12:26:52 AM', 1),
(32, 'abc@gmail.com', 0x3a3a3100000000000000000000000000, '2019-06-16 18:57:12', '17-06-2019 12:38:22 AM', 1),
(33, 'abc@gmail.com', 0x3a3a3100000000000000000000000000, '2019-06-16 19:08:36', '17-06-2019 01:31:32 AM', 1),
(34, 'abc@gmail.com', 0x3a3a3100000000000000000000000000, '2019-06-16 20:02:41', '17-06-2019 01:32:52 AM', 1),
(35, 'abc@gmail.com', 0x3a3a3100000000000000000000000000, '2019-06-16 20:04:00', NULL, 1),
(36, 'xyz@gmail.com', 0x3a3a3100000000000000000000000000, '2019-06-22 09:42:36', NULL, 1),
(37, 'xyz@gmail.com', 0x3a3a3100000000000000000000000000, '2019-06-22 10:00:02', '22-06-2019 03:30:16 PM', 1),
(38, 'xyz@gmail.com', 0x3a3a3100000000000000000000000000, '2019-06-23 15:13:29', '23-06-2019 08:57:37 PM', 1),
(39, 'xyz@gmail.com', 0x3a3a3100000000000000000000000000, '2019-06-23 15:28:11', '23-06-2019 08:58:45 PM', 1),
(40, 'xyz@gmail.com', 0x3a3a3100000000000000000000000000, '2019-06-23 15:29:39', NULL, 0),
(41, 'xyz@gmail.com', 0x3a3a3100000000000000000000000000, '2019-06-23 15:30:02', NULL, 1),
(42, 'xyz@gmail.com', 0x3a3a3100000000000000000000000000, '2019-06-24 12:56:35', '24-06-2019 06:28:17 PM', 1),
(43, 'xyz@gmail.com', 0x3a3a3100000000000000000000000000, '2019-06-24 12:58:47', '24-06-2019 06:29:11 PM', 1),
(44, 'xyz@gmail.com', 0x3a3a3100000000000000000000000000, '2019-06-25 11:08:23', NULL, 1),
(45, 'amnaashraf550@gmail.com', 0x3a3a3100000000000000000000000000, '2019-06-25 17:02:51', NULL, 1),
(46, 'xyz@gmail.com', 0x3a3a3100000000000000000000000000, '2019-06-26 09:19:29', '26-06-2019 02:50:51 PM', 1),
(47, 'xyz@gmail.com', 0x3a3a3100000000000000000000000000, '2019-07-12 13:43:57', '12-07-2019 07:27:24 PM', 1),
(48, 'xyz@gmail.com', 0x3a3a3100000000000000000000000000, '2019-07-12 14:03:50', '12-07-2019 07:37:39 PM', 1),
(49, 'xyz@gmail.com', 0x3a3a3100000000000000000000000000, '2019-07-12 14:08:55', '12-07-2019 07:47:26 PM', 1),
(50, 'xyz@gmail.com', 0x3a3a3100000000000000000000000000, '2019-07-12 14:17:36', '12-07-2019 07:48:18 PM', 1),
(51, 'amna@gmail.com', 0x3a3a3100000000000000000000000000, '2019-07-12 14:19:13', NULL, 1),
(52, 'xyz@gmail.com', 0x3a3a3100000000000000000000000000, '2019-07-13 09:59:18', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(4, 'bgbb', 'abc@abc.com', 0, 'd8578edf8458ce06fbc5bb76a58c5ca4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-19 02:20:43', NULL),
(5, 'abc', 'abc@gmail.com', 90078601, '3f009d72559f51e7e454b16e5d0687a1', 'jkjk', 'jhvj', 'kk', 0, 'vjv', 'vjh', 'vjh', 767, '2019-06-16 18:38:13', NULL),
(6, 'xyz', 'xyz@gmail.com', 90078601, 'd16fb36f0911f878998c136191af705e', 'karachi , behria town', 'pakistan', 'karachi', 2121, 'church road', 'pakistan', 'ryk', 2311, '2019-06-22 09:42:16', NULL),
(7, 'Amna Ashraf', 'amnaashraf550@gmail.com', 90078601, 'fe64655948fe14be8d78b67ff31c212a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-06-25 17:02:28', NULL),
(8, 'Amna Ashraf', 'amna@gmail.com', 0, 'fe64655948fe14be8d78b67ff31c212a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-12 14:19:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(1, 1, 0, '2017-02-27 18:53:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
