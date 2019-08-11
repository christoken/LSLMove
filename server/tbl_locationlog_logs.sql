-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 29, 2019 at 02:26 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_locationlog`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_locationlog_logs`
--

CREATE TABLE IF NOT EXISTS `tbl_locationlog_logs` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `deviceID` varchar(40) NOT NULL,
  `devicemodel` varchar(40) NOT NULL,
  `streetName` varchar(50) NOT NULL,
  `cityName` varchar(40) NOT NULL,
  `country` varchar(40) NOT NULL,
  `latitude` varchar(30) NOT NULL,
  `longitude` varchar(30) NOT NULL,
  `logTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `tbl_locationlog_logs`
--

INSERT INTO `tbl_locationlog_logs` (`id`, `deviceID`, `devicemodel`, `streetName`, `cityName`, `country`, `latitude`, `longitude`, `logTime`) VALUES
(4, '025b06aee8768f26', 'Nokia 6.1 Plus', 'Prof David Wasawo Dr', ' Nairobi', ' Kenya', '-1.2732729', '36.8073668', '2019-03-29 15:39:42'),
(5, '025b06aee8768f26', 'Nokia 6.1 Plus', 'Museum', ' Nairobi', ' Kenya', '-1.2734097', '36.8097177', '2019-03-29 15:45:24'),
(6, '025b06aee8768f26', 'Nokia 6.1 Plus', 'Chiromo Lane', ' Nairobi', ' Kenya', '-1.2703085', '36.8072536', '2019-03-29 15:47:00'),
(7, '025b06aee8768f26', 'Nokia 6.1 Plus', 'Chiromo/ Mirage', ' Nairobi', ' Kenya', '-1.2700925', '36.8073094', '2019-03-29 15:50:35'),
(8, '025b06aee8768f26', 'Nokia 6.1 Plus', 'ICEA', ' Nairobi', ' Kenya', '-1.2692503', '36.8053966', '2019-03-29 15:54:48'),
(9, '025b06aee8768f26', 'Nokia 6.1 Plus', 'Westlands Stage', ' Nairobi', ' Kenya', '-1.2654626', '36.8029449', '2019-03-29 16:13:52'),
(10, '025b06aee8768f26', 'Nokia 6.1 Plus', 'P.O. Box 66283', ' Nairobi', ' Kenya', '-1.2647037', '36.8026399', '2019-03-29 17:25:42'),
(11, '025b06aee8768f26', 'Nokia 6.1 Plus', '15 Woodvale Grove', ' Nairobi', ' Kenya', '-1.2624942', '36.8031143', '2019-03-29 16:34:45'),
(12, '025b06aee8768f26', 'Nokia 6.1 Plus', 'Sarit Centre', ' Karuna Rd', ' Nairobi', '-1.2608476', '36.8023239', '2019-03-29 17:00:48'),
(13, '025b06aee8768f26', 'Nokia 6.1 Plus', 'Chiromo Court', ' Nairobi', ' Kenya', '-1.268342', '36.80573026', '2019-03-29 17:21:41');
