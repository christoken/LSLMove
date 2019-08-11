-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 27, 2019 at 08:49 AM
-- Server version: 10.2.17-MariaDB
-- PHP Version: 7.1.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_LocationLog`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_locationlog_distances`
--

CREATE TABLE `tbl_locationlog_distances` (
  `ID` int(20) NOT NULL,
  `pointsNames` varchar(40) NOT NULL,
  `pointsDis` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_locationlog_locations`
--

CREATE TABLE `tbl_locationlog_locations` (
  `simSerial` varchar(30) NOT NULL,
  `LocID` int(10) NOT NULL,
  `latitude` varchar(30) NOT NULL,
  `longitude` varchar(30) NOT NULL,
  `fingerOrPin` varchar(20) NOT NULL,
  `client` varchar(50) NOT NULL,
  `location` varchar(60) NOT NULL,
  `point` varchar(40) NOT NULL,
  `address` varchar(40) NOT NULL,
  `deviceID` varchar(20) NOT NULL,
  `devicemodel` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_locationlog_locations`
--

INSERT INTO `tbl_locationlog_locations` (`simSerial`, `LocID`, `latitude`, `longitude`, `fingerOrPin`, `client`, `location`, `point`, `address`, `deviceID`, `devicemodel`) VALUES
('353384095744026', 2, '1.268342', '36.80573026', 'Fingerprint', 'KU', 'Nairobi', 'Point A', ' Prof Mourice Alala Road, Nairobi, Kenya', 'yyyyy', 'xxxxxx'),
('353384095744026', 3, '1.268342', '36.80573026', 'Fingerprint', 'UoN', 'Nairobi', 'Point B', ' Prof Mourice Alala Road, Nairobi, Kenya', 'yyyyy', 'xxxxxx'),
('353384095744026', 4, '1.268342', '36.80573026', 'Fingerprint', 'Laico', 'Nairobi', 'Point C', ' Prof Mourice Alala Road, Nairobi, Kenya', 'yyyyy', 'xxxxxx'),
('353384095744026', 5, '-1.2754944', '36.879113599999996', 'Fingerprint', 'Lavington', 'Nairobi', 'Gate', 'Prof Mourice Alala Road, Nairobi, Kenya', 'yyyyyy', 'xxxxxx'),
('353384095744026', 6, '-1.2754944', '36.809113599999996', 'Fingerprint', 'University', 'Chiromo gate', 'Gate A', 'Prof Mourice Alala Road, Nairobi, Kenya', 'yyyyyy', 'xxxxxx'),
('89254021024017837701', 7, '-1.2734724', '36.806887', 'Fingerprint', 'UoN', 'Chiromo', 'SCI gate', 'Chemistry Department, Nairobi, Kenya', '025b06aee8768f26', 'Nokia 6.1 Plus'),
('89254021024017837701', 8, '-1.2727444', '36.8069066', 'Fingerprint', 'UoN', 'Chiromo', 'Exam centre entry', 'Prof David Wasawo Dr, Nairobi, Kenya', '025b06aee8768f26', 'Nokia 6.1 Plus'),
('89254021024017837701', 9, '-1.2727444', '36.8069066', 'Fingerprint', 'UoN', 'Chiromo', 'Exam centre entry', 'Prof David Wasawo Dr, Nairobi, Kenya', '025b06aee8768f26', 'Nokia 6.1 Plus'),
('89254021024017837701', 10, '-1.2726488', '36.8068522', 'Fingerprint', 'UoN', 'Chiromo', 'Exam centre 1st floor', 'Prof David Wasawo Dr, Nairobi, Kenya', '025b06aee8768f26', 'Nokia 6.1 Plus'),
('89254021024017837701', 11, '-1.2729914', '36.8071906', 'Fingerprint', 'Chris', 'Office', 'Desk', 'Prof David Wasawo Dr, Nairobi, Kenya', '025b06aee8768f26', 'Nokia 6.1 Plus'),
('89254021024017837701', 12, '-1.2732984', '36.807376', 'Fingerprint', 'Chepken', 'Office', 'Office area', 'Prof David Wasawo Dr, Nairobi, Kenya', '025b06aee8768f26', 'Nokia 6.1 Plus'),
('89254021024017837701', 13, '-1.2731248', '36.8071728', 'Fingerprint', 'Sci', 'Office block', 'G12', 'Prof David Wasawo Dr, Nairobi, Kenya', '025b06aee8768f26', 'Nokia 6.1 Plus'),
('89254021024017837701', 14, '-1.2849605', '36.7868315', 'Fingerprint', 'Lavington', 'Lavington house', 'Training School', 'Likoni Rd, Nairobi, Kenya', '025b06aee8768f26', 'Nokia 6.1 Plus'),
('89254021024017837701', 15, '-1.2852033', '36.7877496', 'Fingerprint', 'Lavington', 'Lavington house', 'Garage', 'Dennis Pritt, Nairobi, Kenya', '025b06aee8768f26', 'Nokia 6.1 Plus'),
('89254021024017837701', 16, '-1.2855031', '36.7876091', 'Fingerprint', 'Lavington', 'Lavington house', 'Directors office', 'Dennis Pritt, Nairobi, Kenya', '025b06aee8768f26', 'Nokia 6.1 Plus'),
('89254021024017837701', 17, '-1.2847009', '36.7870862', 'Fingerprint', 'Lavington', 'Lavington house', 'Booster', 'Dennis Pritt, Nairobi, Kenya', '025b06aee8768f26', 'Nokia 6.1 Plus'),
('89254021024017837701', 18, '0.5397648', '35.3063265', 'Fingerprint', 'Johannas', 'Johanas Residence', 'Well area', 'Unnamed Road, Kenya', '025b06aee8768f26', 'Nokia 6.1 Plus');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_locationlog_logs`
--

CREATE TABLE `tbl_locationlog_logs` (
  `id` int(30) NOT NULL,
  `telNo` varchar(15) NOT NULL,
  `simSerial` varchar(40) NOT NULL,
  `deviceID` varchar(40) NOT NULL,
  `devicemodel` varchar(40) NOT NULL,
  `streetName` varchar(50) DEFAULT NULL,
  `cityName` varchar(40) DEFAULT NULL,
  `country` varchar(40) DEFAULT NULL,
  `latitude` varchar(30) NOT NULL,
  `longitude` varchar(30) NOT NULL,
  `fingerOrPin` varchar(20) NOT NULL,
  `logTime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_locationlog_logs`
--

INSERT INTO `tbl_locationlog_logs` (`id`, `telNo`, `simSerial`, `deviceID`, `devicemodel`, `streetName`, `cityName`, `country`, `latitude`, `longitude`, `fingerOrPin`, `logTime`) VALUES
(4, '0722977672', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Prof David Wasawo Dr', ' Nairobi', ' Kenya', '-1.2732729', '36.8073668', '', '2019-04-08 09:21:01'),
(5, '0722977672', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Museum', ' Nairobi', ' Kenya', '-1.2734097', '36.8097177', '', '2019-04-08 09:21:01'),
(6, '0722977672', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Chiromo Lane', ' Nairobi', ' Kenya', '-1.2703085', '36.8072536', '', '2019-04-08 09:21:01'),
(7, '0722977672', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Chiromo/ Mirage', ' Nairobi', ' Kenya', '-1.2700925', '36.8073094', '', '2019-04-08 09:21:01'),
(8, '0722977672', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'ICEA', ' Nairobi', ' Kenya', '-1.2692503', '36.8053966', '', '2019-04-08 09:21:01'),
(9, '0722977672', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Westlands Stage', ' Nairobi', ' Kenya', '-1.2654626', '36.8029449', '', '2019-04-08 09:21:01'),
(10, '0722977672', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'P.O. Box 66283', ' Nairobi', ' Kenya', '-1.2647037', '36.8026399', '', '2019-04-08 09:21:01'),
(11, '0722977672', '', '025b06aee8768f26', 'Nokia 6.1 Plus', '15 Woodvale Grove', ' Nairobi', ' Kenya', '-1.2624942', '36.8031143', '', '2019-04-08 09:21:01'),
(12, '0722977672', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Sarit Centre', ' Karuna Rd', ' Nairobi', '-1.2608476', '36.8023239', '', '2019-04-08 09:21:01'),
(13, '0722977672', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Chiromo Court', ' Nairobi', ' Kenya', '-1.268342', '36.80573026', '', '2019-04-08 09:21:01'),
(91, '0722977672', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Prof David Wasawo Dr', ' Nairobi', ' Kenya', '-1.2732729', '36.8073668', 'Fingerprint', '2019-04-08 09:21:01'),
(92, '0722977672', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Chemistry Department', ' Nairobi', ' Kenya', '-1.2734676', '36.8068922', 'Fingerprint', '2019-04-08 09:21:01'),
(93, '0722977672', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Prof David Wasawo Dr', ' Nairobi', ' Kenya', '-1.2732729', '36.8073668', 'Fingerprint', '2019-04-08 09:21:01'),
(94, '0722977672', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Prof David Wasawo Dr', ' Nairobi', ' Kenya', '-1.2733259', '36.8070868', 'Fingerprint', '2019-04-08 09:21:01'),
(95, '0722977672', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Chemistry Department', ' Nairobi', ' Kenya', '-1.2734676', '36.8068922', 'Fingerprint', '2019-04-08 09:21:01'),
(96, '0722977672', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Prof David Wasawo Dr', ' Nairobi', ' Kenya', '-1.2732691', '36.8072517', 'Pin', '2019-04-08 09:21:01'),
(97, '0722977672', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Prof David Wasawo Dr', ' Nairobi', ' Kenya', '-1.2730848', '36.8071026', 'Fingerprint', '2019-04-08 09:21:01'),
(98, '0722977672', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Museum', ' Nairobi', ' Kenya', '-1.2745953', '36.8114003', 'Fingerprint', '2019-04-08 09:21:01'),
(99, '0722977672', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Science Theatre University Way', '', ' Kenya', '-1.2805568', '36.816471', 'Fingerprint', '2019-04-08 09:21:01'),
(100, '0722977672', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'University of Nairobi', ' Nairobi', ' Kenya', '-1.2813416', '36.816016', 'Fingerprint', '2019-04-08 09:21:01'),
(101, '0722977672', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'CFC Life Building Nyerere Rd', '', ' Kenya', '-1.2863306', '36.813809', 'Fingerprint', '2019-04-08 09:21:01'),
(102, '0722977672', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Unnamed Road', ' Nairobi', ' Kenya', '-1.2859116', '36.8126694', 'Fingerprint', '2019-04-08 09:21:01'),
(103, '0722977672', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Mamlaka Rd', ' Nairobi', ' Kenya', '-1.2844213', '36.812618', 'Fingerprint', '2019-04-08 09:21:01'),
(104, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Mamlaka Rd', ' Nairobi', ' Kenya', '-1.2845689', '36.8125613', 'Fingerprint', '2019-04-08 09:23:22'),
(105, '0722977672', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Mamlaka Rd', ' Nairobi', ' Kenya', '-1.284847', '36.8123968', 'Fingerprint', '2019-04-01 19:38:36'),
(106, '0722977672', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Mamlaka Rd', ' Nairobi', ' Kenya', '-1.2845676', '36.8125603', 'Fingerprint', '2019-04-01 20:06:10'),
(107, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Unnamed Road', ' Nairobi', ' Kenya', '-1.2824009', '36.812955', 'Fingerprint', '2019-04-08 09:23:22'),
(108, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'State House road', ' Nairobi', ' Kenya', '-1.281284', '36.8141301', 'Fingerprint', '2019-04-08 09:23:22'),
(109, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', '30 State House Rd', ' Nairobi', ' Kenya', '-1.2787051', '36.8124098', 'Fingerprint', '2019-04-08 09:23:22'),
(110, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'University of Nairobi', ' Nairobi', ' Kenya', '-1.2811851', '36.8160097', 'Fingerprint', '2019-04-08 09:23:22'),
(111, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Prof Mourice Alala Road', ' Nairobi', ' Kenya', '-1.2762656', '36.8112458', 'Fingerprint', '2019-04-08 09:23:22'),
(112, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Prof Mourice Alala Road', ' Nairobi', ' Kenya', '-1.2741273', '36.8074552', 'Fingerprint', '2019-04-08 09:23:22'),
(113, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Prof Mourice Alala Road', ' Nairobi', ' Kenya', '-1.2741518', '36.8072603', 'Fingerprint', '2019-04-08 09:23:22'),
(114, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Prof David Wasawo Dr', ' Nairobi', ' Kenya', '-1.2720259', '36.8066237', 'Fingerprint', '2019-04-08 09:23:22'),
(115, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Kolobot Dr', ' Nairobi', ' Kenya', '-1.2758538', '36.8087082', 'Fingerprint', '2019-04-08 09:23:22'),
(116, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Kolobot Dr', ' Nairobi', ' Kenya', '-1.2758538', '36.8087082', 'Fingerprint', '2019-04-08 09:23:22'),
(117, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Museum', ' Nairobi', ' Kenya', '-1.2734097', '36.8097177', 'Fingerprint', '2019-04-08 09:23:22'),
(118, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Chemistry Department', ' Nairobi', ' Kenya', '-1.2734685', '36.8068988', 'Fingerprint', '2019-04-08 09:23:22'),
(119, '0722977672', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Prof Mourice Alala Road', ' Nairobi', ' Kenya', '-1.2749053', '36.8073621', 'Fingerprint', '2019-04-02 07:57:22'),
(120, '0722977672', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Prof Mourice Alala Road', ' Nairobi', ' Kenya', '-1.2749053', '36.8073621', 'Fingerprint', '2019-04-02 08:00:49'),
(121, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Shell/Arboretum', ' Nairobi', ' Kenya', '-1.2742834', '36.800968', 'Fingerprint', '2019-04-08 09:23:22'),
(122, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Shell/Arboretum', ' Nairobi', ' Kenya', '-1.2742834', '36.800968', 'Fingerprint', '2019-04-08 09:23:22'),
(123, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Shell/Arboretum', ' Nairobi', ' Kenya', '-1.2742834', '36.800968', 'Fingerprint', '2019-04-08 09:23:22'),
(124, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Taj Apartments Stage', ' Nairobi', ' Kenya', '-1.2725104', '36.8031913', 'Fingerprint', '2019-04-08 09:23:22'),
(125, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Taj Apartments Stage', ' Nairobi', ' Kenya', '-1.2725104', '36.8031913', 'Fingerprint', '2019-04-08 09:23:22'),
(126, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Taj Apartments Stage', ' Nairobi', ' Kenya', '-1.2725104', '36.8031913', 'Fingerprint', '2019-04-08 09:23:22'),
(127, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Kileleshwa Primary School', ' Nairobi', ' Kenya', '-1.2781169', '36.7921221', 'Fingerprint', '2019-04-08 09:23:22'),
(128, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Kileleshwa Primary School', ' Nairobi', ' Kenya', '-1.2781169', '36.7921221', 'Fingerprint', '2019-04-08 09:23:22'),
(129, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', '74250 Oloitokitok Road', ' Nairobi', ' Kenya', '-1.2802316', '36.7896514', 'Fingerprint', '2019-04-08 09:23:22'),
(130, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', '74250 Oloitokitok Road', ' Nairobi', ' Kenya', '-1.2802316', '36.7896514', 'Fingerprint', '2019-04-08 09:23:22'),
(131, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Nyangumi Road', ' Nairobi', ' Kenya', '-1.2854011', '36.7895244', 'Fingerprint', '2019-04-08 09:23:22'),
(132, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Nyangumi Road', ' Nairobi', ' Kenya', '-1.2854011', '36.7895244', 'Fingerprint', '2019-04-08 09:23:22'),
(133, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Nyangumi Road', ' Nairobi', ' Kenya', '-1.2854011', '36.7895244', 'Fingerprint', '2019-04-08 09:23:22'),
(134, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Lavington Security House Denis Pritt Rd', '', ' Kenya', '-1.2853954', '36.7874193', 'Fingerprint', '2019-04-08 09:23:22'),
(135, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Lavington Security House Denis Pritt Rd', '', ' Kenya', '-1.2853954', '36.7874193', 'Fingerprint', '2019-04-08 09:23:22'),
(136, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Dennis Pritt', ' Nairobi', ' Kenya', '-1.2854552', '36.7876195', 'Fingerprint', '2019-04-08 09:23:22'),
(137, '0754191441', '', 'f1d311899374b7d7', 'SM-N960F', 'Dennis Pritt', ' Nairobi', ' Kenya', '-1.2854609', '36.7876036', 'Fingerprint', '2019-04-08 09:23:22'),
(138, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Lavington Security House Denis Pritt Rd', '', ' Kenya', '-1.2856261', '36.7874998', 'Fingerprint', '2019-04-08 09:23:22'),
(139, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Ring Rd Kilimani', ' Nairobi', ' Kenya', '-1.2875449', '36.7873126', 'Fingerprint', '2019-04-08 09:23:22'),
(140, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Ring Rd Kilimani', ' Nairobi', ' Kenya', '-1.2875449', '36.7873126', 'Fingerprint', '2019-04-08 09:23:22'),
(141, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Yaya', ' Nairobi', ' Kenya', '-1.2909835', '36.7870831', 'Fingerprint', '2019-04-08 09:23:22'),
(142, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Yaya', ' Nairobi', ' Kenya', '-1.2909835', '36.7870831', 'Fingerprint', '2019-04-08 09:23:22'),
(143, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Priory Place Argwings Kodhek Rd', '', ' Kenya', '-1.2931547', '36.7915197', 'Fingerprint', '2019-04-08 09:23:22'),
(144, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Integrity Center', ' Nairobi', ' Kenya', '-1.2897766', '36.8091027', 'Fingerprint', '2019-04-08 09:23:22'),
(145, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Integrity Center', ' Nairobi', ' Kenya', '-1.2897766', '36.8091027', 'Fingerprint', '2019-04-08 09:23:22'),
(146, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Langoni', ' Nairobi', ' Kenya', '-1.2849', '36.8130297', 'Fingerprint', '2019-04-08 09:23:22'),
(147, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Mamlaka Rd', ' Nairobi', ' Kenya', '-1.2845469', '36.8125473', 'Fingerprint', '2019-04-08 09:23:22'),
(148, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Mamlaka Rd', ' Nairobi', ' Kenya', '-1.2845469', '36.8125473', 'Fingerprint', '2019-04-08 09:23:22'),
(149, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Nyerere Rd', ' Nairobi', ' Kenya', '-1.2830415', '36.8141995', 'Fingerprint', '2019-04-08 09:23:22'),
(150, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Nyerere Rd', ' Nairobi', ' Kenya', '-1.2830415', '36.8141995', 'Fingerprint', '2019-04-08 09:23:22'),
(151, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Nyerere Rd', ' Nairobi', ' Kenya', '-1.2830415', '36.8141995', 'Fingerprint', '2019-04-08 09:23:22'),
(152, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', '30 State House Rd', ' Nairobi', ' Kenya', '-1.278379', '36.8121463', 'Fingerprint', '2019-04-08 09:23:22'),
(153, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', '30 State House Rd', ' Nairobi', ' Kenya', '-1.278379', '36.8121463', 'Fingerprint', '2019-04-08 09:23:22'),
(154, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Kolobot Dr', ' Nairobi', ' Kenya', '-1.2760596', '36.8096501', 'Fingerprint', '2019-04-08 09:23:22'),
(155, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Kolobot Dr', ' Nairobi', ' Kenya', '-1.2760596', '36.8096501', 'Fingerprint', '2019-04-08 09:23:22'),
(156, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Prof David Wasawo Dr', ' Nairobi', ' Kenya', '-1.273325', '36.8070868', 'Fingerprint', '2019-04-08 09:23:22'),
(157, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Chemistry Department', ' Nairobi', ' Kenya', '-1.2734685', '36.8068988', 'Fingerprint', '2019-04-08 09:23:22'),
(158, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Chemistry Department', ' Nairobi', ' Kenya', '-1.2734685', '36.8068988', 'Fingerprint', '2019-04-08 09:23:22'),
(159, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Prof David Wasawo Dr', ' Nairobi', ' Kenya', '-1.2732754', '36.8073904', 'Fingerprint', '2019-04-08 09:23:22'),
(160, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Prof David Wasawo Dr', ' Nairobi', ' Kenya', '-1.2732754', '36.8073904', 'Fingerprint', '2019-04-08 09:23:22'),
(161, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Prof David Wasawo Dr', ' Nairobi', ' Kenya', '-1.2732754', '36.8073904', 'Fingerprint', '2019-04-08 09:23:22'),
(162, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Prof David Wasawo Dr', ' Nairobi', ' Kenya', '-1.2732754', '36.8073904', 'Fingerprint', '2019-04-08 09:23:22'),
(163, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Prof David Wasawo Dr', ' Nairobi', ' Kenya', '-1.2732754', '36.8073904', 'Fingerprint', '2019-04-08 09:23:22'),
(164, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Prof David Wasawo Dr', ' Nairobi', ' Kenya', '-1.2732754', '36.8073904', 'Fingerprint', '2019-04-08 09:23:22'),
(165, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Prof David Wasawo Dr', ' Nairobi', ' Kenya', '-1.2732754', '36.8073904', 'Fingerprint', '2019-04-08 09:23:22'),
(166, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Prof David Wasawo Dr', ' Nairobi', ' Kenya', '-1.2732754', '36.8073904', 'Fingerprint', '2019-04-08 09:23:22'),
(167, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Prof Mourice Alala Road', ' Nairobi', ' Kenya', '-1.274156', '36.8074539', 'Fingerprint', '2019-04-08 09:23:22'),
(168, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Prof Mourice Alala Road', ' Nairobi', ' Kenya', '-1.274156', '36.8074539', 'Fingerprint', '2019-04-08 09:23:22'),
(169, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Prof Mourice Alala Road', ' Nairobi', ' Kenya', '-1.274156', '36.8074539', 'Fingerprint', '2019-04-08 09:23:22'),
(170, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Prof Mourice Alala Road', ' Nairobi', ' Kenya', '-1.274156', '36.8074539', 'Fingerprint', '2019-04-08 09:23:22'),
(171, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Prof David Wasawo Dr', ' Nairobi', ' Kenya', '-1.2730589', '36.807121', 'Fingerprint', '2019-04-08 09:23:22'),
(172, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Prof David Wasawo Dr', ' Nairobi', ' Kenya', '-1.273325', '36.8070868', 'Fingerprint', '2019-04-08 09:23:22'),
(173, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Prof David Wasawo Dr', ' Nairobi', ' Kenya', '-1.273325', '36.8070868', 'Fingerprint', '2019-04-08 09:23:22'),
(174, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Prof David Wasawo Dr', ' Nairobi', ' Kenya', '-1.273325', '36.8070868', 'Fingerprint', '2019-04-08 09:23:22'),
(175, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Prof David Wasawo Dr', ' Nairobi', ' Kenya', '-1.273325', '36.8070868', 'Fingerprint', '2019-04-08 09:23:22'),
(176, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Prof David Wasawo Dr', ' Nairobi', ' Kenya', '-1.273325', '36.8070868', 'Fingerprint', '2019-04-08 09:23:22'),
(177, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Prof David Wasawo Dr', ' Nairobi', ' Kenya', '-1.273325', '36.8070868', 'Fingerprint', '2019-04-08 09:23:22'),
(178, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Prof David Wasawo Dr', ' Nairobi', ' Kenya', '-1.273325', '36.8070868', 'Fingerprint', '2019-04-08 09:23:22'),
(179, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Prof David Wasawo Dr', ' Nairobi', ' Kenya', '-1.273325', '36.8070868', 'Fingerprint', '2019-04-08 09:23:22'),
(180, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Prof Mourice Alala Road', ' Nairobi', ' Kenya', '-1.2741826', '36.8073553', 'Fingerprint', '2019-04-08 09:23:22'),
(181, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Prof Mourice Alala Road', ' Nairobi', ' Kenya', '-1.2741826', '36.8073553', 'Fingerprint', '2019-04-08 09:23:22'),
(182, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Prof Mourice Alala Road', ' Nairobi', ' Kenya', '-1.2741826', '36.8073553', 'Fingerprint', '2019-04-08 09:23:22'),
(183, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Prof Mourice Alala Road', ' Nairobi', ' Kenya', '-1.2741826', '36.8073553', 'Fingerprint', '2019-04-08 09:23:22'),
(184, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Prof Mourice Alala Road', ' Nairobi', ' Kenya', '-1.2741826', '36.8073553', 'Fingerprint', '2019-04-08 09:23:22'),
(185, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Prof Mourice Alala Road', ' Nairobi', ' Kenya', '-1.2741826', '36.8073553', 'Fingerprint', '2019-04-08 09:23:22'),
(186, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Prof David Wasawo Dr', ' Nairobi', ' Kenya', '-1.2733086', '36.8072628', 'Fingerprint', '2019-04-08 09:23:22'),
(187, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Chemistry Department', ' Nairobi', ' Kenya', '-1.2734685', '36.8068988', 'Fingerprint', '2019-04-08 09:23:22'),
(188, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Prof David Wasawo Dr', ' Nairobi', ' Kenya', '-1.2733953', '36.8069947', 'Fingerprint', '2019-04-08 09:23:22'),
(189, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Chemistry Department', ' Nairobi', ' Kenya', '-1.2734685', '36.8068988', 'Fingerprint', '2019-04-08 09:23:22'),
(190, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Prof Mourice Alala Road', ' Nairobi', ' Kenya', '-1.2741428', '36.8073424', 'Fingerprint', '2019-04-08 09:23:22'),
(191, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Block B Ground Floor', ' Nairobi', ' Kenya', '-1.2774259', '36.8138629', 'Fingerprint', '2019-04-08 09:23:22'),
(192, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', '30 State House Rd', ' Nairobi', ' Kenya', '-1.2792018', '36.8117368', 'Fingerprint', '2019-04-08 09:23:22'),
(193, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Nyerere Rd', ' Nairobi', ' Kenya', '-1.2859878', '36.813898', 'Fingerprint', '2019-04-08 09:23:22'),
(194, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'GTZ Processional Way', ' Nairobi', ' Kenya', '-1.2861291', '36.813411', 'Fingerprint', '2019-04-08 09:23:22'),
(195, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Unnamed Road', ' Nairobi', ' Kenya', '-1.2859116', '36.8126694', 'Fingerprint', '2019-04-08 09:23:22'),
(196, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Mamlaka Rd', ' Nairobi', ' Kenya', '-1.2848887', '36.8133419', 'Fingerprint', '2019-04-08 09:23:22'),
(197, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Mamlaka Rd', ' Nairobi', ' Kenya', '-1.2843751', '36.8125219', 'Fingerprint', '2019-04-08 09:23:22'),
(198, '0722977672', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Prof David Wasawo Dr', ' Nairobi', ' Kenya', '-1.2732754', '36.8073904', 'Fingerprint', '2019-04-03 15:12:19'),
(199, '0754191441', '', '0d1fe3d29aae0be2', 'Infinix X5515', '25A Terminal', ' Nairobi', ' Kenya', '-1.2825317', '36.8246607', 'Fingerprint', '2019-04-08 09:23:22'),
(200, '0754191441', '', '0d1fe3d29aae0be2', 'Infinix X5515', 'Main Stage', ' Nairobi', ' Kenya', '-1.2825108', '36.8245576', 'Fingerprint', '2019-04-08 09:23:22'),
(201, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Mamlaka Rd', ' Nairobi', ' Kenya', '-1.2845656', '36.8125616', 'Fingerprint', '2019-04-08 09:23:22'),
(202, '0754191441', '', '47a224694a36cebc', 'Lenovo K520', 'Kitale - Cherangani Rd', ' Eldoret', ' Kenya', '0.5364869', '35.2946597', 'Fingerprint', '2019-04-08 09:23:22'),
(203, '0754191441', '', '47a224694a36cebc', 'Lenovo K520', 'Kitale - Cherangani Rd', ' Eldoret', ' Kenya', '0.5364869', '35.2946597', 'Fingerprint', '2019-04-08 09:23:22'),
(204, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Lavington Security House Denis Pritt Rd', '', ' Kenya', '-1.2854123', '36.7873513', 'Fingerprint', '2019-04-08 09:23:22'),
(205, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Loreto Msongari', ' Nairobi', ' Kenya', '-1.2620313', '36.7741003', 'Fingerprint', '2019-04-08 09:23:22'),
(206, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Mountain/total bus stop Waiyaki Way', '', ' Kenya', '-1.2650689', '36.7382265', 'Fingerprint', '2019-04-08 09:23:22'),
(207, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Marigu-ini', ' Nairobi', ' Kenya', '-1.260112', '36.7189261', 'Fingerprint', '2019-04-08 09:23:22'),
(208, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'P.O.Box 1017', ' Kenya', '', '-1.1408218', '36.6354167', 'Fingerprint', '2019-04-08 09:23:22'),
(209, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'A104', ' Kenya', '', '-1.0345015', '36.6264302', 'Fingerprint', '2019-04-08 09:23:22'),
(210, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'P.O.Box 1017', ' Kenya', '', '-1.1408218', '36.6354167', 'Fingerprint', '2019-04-08 09:23:22'),
(211, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'A104', ' Kenya', '', '-0.6751921', '36.3921852', 'Fingerprint', '2019-04-08 09:23:22'),
(212, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'A104', ' Gilgil', ' Kenya', '-0.4986068', '36.3154363', 'Fingerprint', '2019-04-08 09:23:22'),
(213, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Old Nairobi Rd', ' Nakuru', ' Kenya', '-0.3252671', '36.1541135', 'Fingerprint', '2019-04-08 09:23:22'),
(214, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Unnamed Road', ' Nakuru', ' Kenya', '-0.2844545', '36.0626029', 'Fingerprint', '2019-04-08 09:23:22'),
(215, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Public Works Bus Stop Show Ground Rd', '', ' Kenya', '-0.2810571', '36.0572506', 'Fingerprint', '2019-04-08 09:23:22'),
(216, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'A104', ' Kenya', '', '-0.2143356', '35.7821371', 'Fingerprint', '2019-04-08 09:23:22'),
(217, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'A104', ' Kenya', '', '-0.2143356', '35.7821371', 'Fingerprint', '2019-04-08 09:23:22'),
(218, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'A104', ' Kenya', '', '-0.2143356', '35.7821371', 'Fingerprint', '2019-04-08 09:23:22'),
(219, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Muserechi Bus Stop C55', '', ' Kenya', '-0.0265775', '35.8731466', 'Fingerprint', '2019-04-08 09:23:22'),
(220, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Baringo County', ' Kenya', '', '0.1038677', '35.6022152', 'Fingerprint', '2019-04-08 09:23:22'),
(221, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Uasin Gishu County', ' Kenya', '', '0.1411923', '35.5910747', 'Fingerprint', '2019-04-08 09:23:22'),
(222, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Eldoret - Nakuru Rd', ' Nabkoi', ' Kenya', '0.0890538', '35.5107678', 'Fingerprint', '2019-04-08 09:23:22'),
(223, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Eldoret - Nakuru Rd', ' Nabkoi', ' Kenya', '0.0890538', '35.5107678', 'Fingerprint', '2019-04-08 09:23:22'),
(224, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Dennis Bus Stop', ' B 54', ' Kenya', '0.4394531', '35.4253871', 'Fingerprint', '2019-04-08 09:23:22'),
(225, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Unnamed Road', ' Eldoret', ' Kenya', '0.4890565', '35.3035802', 'Fingerprint', '2019-04-08 09:23:22'),
(226, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Unnamed Road', ' Eldoret', ' Kenya', '0.4890565', '35.3035802', 'Fingerprint', '2019-04-08 09:23:22'),
(227, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Stendi Kisa - Yala Rd', ' Eldoret', ' Kenya', '0.4886222', '35.2697404', 'Fingerprint', '2019-04-08 09:23:22'),
(228, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Stendi Kisa - Yala Rd', ' Eldoret', ' Kenya', '0.4886222', '35.2697404', 'Fingerprint', '2019-04-08 09:23:22'),
(229, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Stendi Kisa - Yala Rd', ' Eldoret', ' Kenya', '0.4886222', '35.2697404', 'Fingerprint', '2019-04-08 09:23:22'),
(230, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Unnamed Road', ' Eldoret', ' Kenya', '0.5355398', '35.2915716', 'Fingerprint', '2019-04-08 09:23:22'),
(231, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Kitale - Cherangani Rd', ' Kenya', '', '0.5384107', '35.2963753', 'Fingerprint', '2019-04-08 09:23:22'),
(232, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Kitale - Cherangani Rd', ' Kenya', '', '0.5384107', '35.2963753', 'Fingerprint', '2019-04-08 09:23:22'),
(233, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Kitale - Cherangani Rd', ' Kenya', '', '0.5384107', '35.2963753', 'Fingerprint', '2019-04-08 09:23:22'),
(234, '0754191441', '', '47a224694a36cebc', 'Lenovo K520', 'Kitale - Cherangani Rd', ' Kenya', '', '0.5420004', '35.3022079', 'Fingerprint', '2019-04-08 09:23:22'),
(235, '0754191441', '', '47a224694a36cebc', 'Lenovo K520', 'Kitale - Cherangani Rd', ' Kenya', '', '0.5420004', '35.3022079', 'Fingerprint', '2019-04-08 09:23:22'),
(236, '0754191441', '', '47a224694a36cebc', 'Lenovo K520', 'Kitale - Cherangani Rd', ' Kenya', '', '0.5420004', '35.3022079', 'Fingerprint', '2019-04-08 09:23:22'),
(237, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Unnamed Road', ' Eldoret', ' Kenya', '0.5355398', '35.2915716', 'Fingerprint', '2019-04-08 09:23:22'),
(238, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Unnamed Road', ' Eldoret', ' Kenya', '0.5355398', '35.2915716', 'Fingerprint', '2019-04-08 09:23:22'),
(239, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Unnamed Road', ' Eldoret', ' Kenya', '0.5355398', '35.2915716', 'Fingerprint', '2019-04-08 09:23:22'),
(240, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Kitale - Cherangani Rd', ' Eldoret', ' Kenya', '0.529305', '35.2833361', 'Fingerprint', '2019-04-08 09:23:22'),
(241, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Kitale - Cherangani Rd', ' Eldoret', ' Kenya', '0.5290698', '35.2823066', 'Fingerprint', '2019-04-08 09:23:22'),
(242, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Kitale - Cherangani Rd', ' Eldoret', ' Kenya', '0.5290698', '35.2823066', 'Fingerprint', '2019-04-08 09:23:22'),
(243, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Elgeyo Rd', ' Eldoret', ' Kenya', '0.5207049', '35.2767198', 'Fingerprint', '2019-04-08 09:23:22'),
(244, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'MUSCO Towers Elgeyo Rd', '', ' Kenya', '0.5206779', '35.2755027', 'Fingerprint', '2019-04-08 09:23:22'),
(245, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Utalii St', ' Eldoret', ' Kenya', '0.5196546', '35.2749253', 'Fingerprint', '2019-04-08 09:23:22'),
(246, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Oloo St', ' Eldoret', ' Kenya', '0.5188936', '35.2746641', 'Fingerprint', '2019-04-08 09:23:22'),
(247, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Oloo Street - Malaba Road Junction Eldoret', '', ' Eldoret', '0.518308', '35.2744876', 'Fingerprint', '2019-04-08 09:23:22'),
(248, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Highland Arcade Kenyatta St', '', ' Kenya', '0.517083', '35.2750046', 'Fingerprint', '2019-04-08 09:23:22'),
(249, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Highland Arcade Kenyatta St', '', ' Kenya', '0.5169362', '35.2750315', 'Fingerprint', '2019-04-08 09:23:22'),
(250, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Highland Arcade Kenyatta St', '', ' Kenya', '0.5169794', '35.2749904', 'Fingerprint', '2019-04-08 09:23:22'),
(251, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Nandi Rd', ' Eldoret', ' Kenya', '0.5141036', '35.2776115', 'Fingerprint', '2019-04-08 09:23:22'),
(252, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Kitmatt Centre Nandi Road', '', ' Kenya', '0.5143578', '35.2775352', 'Fingerprint', '2019-04-08 09:23:22'),
(253, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Unnamed Road', ' Eldoret', ' Kenya', '0.4890565', '35.3035802', 'Fingerprint', '2019-04-08 09:23:22'),
(254, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Unnamed Road', ' Eldoret', ' Kenya', '0.4890565', '35.3035802', 'Fingerprint', '2019-04-08 09:23:22'),
(255, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Unnamed Road', ' Eldoret', ' Kenya', '0.483443', '35.2730406', 'Fingerprint', '2019-04-08 09:23:22'),
(256, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Malaba Rd', ' Eldoret', ' Kenya', '0.5169981', '35.2792181', 'Fingerprint', '2019-04-08 09:23:22'),
(257, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Vision Arcade', ' Eldoret', ' Kenya', '0.5151214', '35.2776123', 'Fingerprint', '2019-04-08 09:23:22'),
(258, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Ziwa', ' Eldoret', ' Kenya', '0.5140375', '35.2806143', 'Fingerprint', '2019-04-08 09:23:22'),
(259, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Ziwa', ' Eldoret', ' Kenya', '0.5140319', '35.2806297', 'Fingerprint', '2019-04-08 09:23:22'),
(260, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Unnamed Road', ' Eldoret', ' Kenya', '0.5149491', '35.2780895', 'Fingerprint', '2019-04-08 09:23:22'),
(261, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Vision Arcade', ' Eldoret', ' Kenya', '0.5150836', '35.2777171', 'Fingerprint', '2019-04-08 09:23:22'),
(262, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Ziwa', ' Eldoret', ' Kenya', '0.5140223', '35.2806564', 'Fingerprint', '2019-04-08 09:23:22'),
(263, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Ziwa', ' Eldoret', ' Kenya', '0.5140182', '35.2806677', 'Fingerprint', '2019-04-08 09:23:22'),
(264, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Vision Arcade', ' Eldoret', ' Kenya', '0.5150977', '35.277678', 'Fingerprint', '2019-04-08 09:23:22'),
(265, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Vision Arcade', ' Eldoret', ' Kenya', '0.5151131', '35.2776352', 'Fingerprint', '2019-04-08 09:23:22'),
(266, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Vision Arcade', ' Eldoret', ' Kenya', '0.5151173', '35.2776236', 'Fingerprint', '2019-04-08 09:23:22'),
(267, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Makasembo Rd', ' Eldoret', ' Kenya', '0.5144277', '35.2792982', 'Fingerprint', '2019-04-08 09:23:22'),
(268, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Waiganjo St', ' Eldoret', ' Kenya', '0.5139141', '35.2805459', 'Fingerprint', '2019-04-08 09:23:22'),
(269, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Ziwa', ' Eldoret', ' Kenya', '0.5140181', '35.2806679', 'Fingerprint', '2019-04-08 09:23:22'),
(270, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Ziwa', ' Eldoret', ' Kenya', '0.5140574', '35.2806206', 'Fingerprint', '2019-04-08 09:23:22'),
(271, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Ramogi Dr', ' Eldoret', ' Kenya', '0.5077725', '35.2853951', 'Fingerprint', '2019-04-08 09:23:22'),
(272, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', '30100 Stendi Kisa - Yala Rd', ' Eldoret', ' Kenya', '0.5151889', '35.2756841', 'Fingerprint', '2019-04-08 09:23:22'),
(273, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', '30100 Kisumu Rd', ' Eldoret', ' Kenya', '0.5153204', '35.2756572', 'Fingerprint', '2019-04-08 09:23:22'),
(274, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Nandi Rd', ' Eldoret', ' Kenya', '0.5141036', '35.2776115', 'Fingerprint', '2019-04-08 09:23:22'),
(275, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Local Matatus Nandi Rd', '', ' Kenya', '0.5142494', '35.2772588', 'Fingerprint', '2019-04-08 09:23:22'),
(276, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Sosian House Nandi Rd', '', ' Kenya', '0.5149072', '35.2762934', 'Fingerprint', '2019-04-08 09:23:22'),
(277, '0754191441', '', '47a224694a36cebc', 'Lenovo K520', 'Unnamed Road', ' Eldoret', ' Kenya', '0.5338737', '35.287454', 'Fingerprint', '2019-04-08 09:23:22'),
(278, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Unnamed Road', ' Eldoret', ' Kenya', '0.4890565', '35.3035802', 'Fingerprint', '2019-04-08 09:23:22'),
(279, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Unnamed Road', ' Eldoret', ' Kenya', '0.4890565', '35.3035802', 'Fingerprint', '2019-04-08 09:23:22'),
(280, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'A104', ' Kenya', '', '-1.0006778', '36.6281169', 'Fingerprint', '2019-04-08 09:23:22'),
(281, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Mountain View', ' Nairobi', ' Kenya', '-1.2644168', '36.739983', 'Fingerprint', '2019-04-08 09:23:22'),
(282, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Mountain View', ' Nairobi', ' Kenya', '-1.2644168', '36.739983', 'Fingerprint', '2019-04-08 09:23:22'),
(283, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Sugarboard / Shell', ' Nairobi', ' Kenya', '-1.2643099', '36.7433956', 'Fingerprint', '2019-04-08 09:23:22'),
(284, '0754191441', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'CFC/Delta', ' Nairobi', ' Kenya', '-1.265214', '36.8027855', 'Fingerprint', '2019-04-08 09:23:22'),
(285, '600109', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Mamlaka Rd', ' Nairobi', ' Kenya', '-1.2821995', '36.812629', 'Fingerprint', '2019-04-08 10:00:33'),
(286, '600109', '', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Mamlaka Rd', ' Nairobi', ' Kenya', '-1.2821995', '36.812629', 'Fingerprint', '2019-04-08 10:01:03'),
(287, '0722977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Museum', ' Nairobi', ' Kenya', '-1.2734097', '36.8097177', 'Fingerprint', '2019-04-08 13:20:59'),
(288, '0722977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'State House Rd', ' Nairobi', ' Kenya', '-1.2778239', '36.8070256', 'Fingerprint', '2019-04-08 13:22:48'),
(289, '0722977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Chemistry Department', ' Nairobi', ' Kenya', '-1.2734685', '36.8068988', 'Fingerprint', '2019-04-08 13:43:02'),
(290, '0733977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Chemistry Department', ' Nairobi', ' Kenya', '-1.2734685', '36.8068988', 'Fingerprint', '2019-04-08 13:44:07'),
(291, '0734977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Museum', ' Nairobi', ' Kenya', '-1.2733646', '36.8097522', 'Fingerprint', '2019-04-08 13:46:15'),
(292, '0734977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Museum', ' Nairobi', ' Kenya', '-1.2728437', '36.8096527', 'Fingerprint', '2019-04-08 13:54:02'),
(293, '0734977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Prof David Wasawo Dr', ' Nairobi', ' Kenya', '-1.273325', '36.8070868', 'Fingerprint', '2019-04-08 13:54:10'),
(294, '0734977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Chemistry Department', ' Nairobi', ' Kenya', '-1.2736162', '36.8070237', 'Fingerprint', '2019-04-08 13:55:30'),
(295, '0734977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Prof David Wasawo Dr', ' Nairobi', ' Kenya', '-1.2730679', '36.8070309', 'Fingerprint', '2019-04-08 13:56:24'),
(296, '0734977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Prof David Wasawo Dr', ' Nairobi', ' Kenya', '-1.2730952', '36.8070501', 'Fingerprint', '2019-04-08 13:57:11'),
(297, '0734977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Prof David Wasawo Dr', ' Nairobi', ' Kenya', '-1.2733156', '36.8073252', 'Fingerprint', '2019-04-08 13:57:41'),
(298, '0734977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Chemistry Department', ' Nairobi', ' Kenya', '-1.2734685', '36.8068988', 'Fingerprint', '2019-04-08 13:58:46'),
(299, '0734977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Prof David Wasawo Dr', ' Nairobi', ' Kenya', '-1.2730886', '36.807046', 'Fingerprint', '2019-04-08 13:59:44'),
(300, '0734977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Prof David Wasawo Dr', ' Nairobi', ' Kenya', '-1.2730886', '36.807046', 'Fingerprint', '2019-04-08 14:00:24'),
(301, '0734977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Prof Mourice Alala Road', ' Nairobi', ' Kenya', '-1.2759479', '36.8108938', 'Fingerprint', '2019-04-08 14:49:16'),
(302, '0734977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Prof Mourice Alala Road', ' Nairobi', ' Kenya', '-1.2767777', '36.8103466', 'Fingerprint', '2019-04-08 14:51:13'),
(303, '0734977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Prof Mourice Alala Road', ' Nairobi', ' Kenya', '-1.2767777', '36.8103466', 'Fingerprint', '2019-04-08 14:52:35'),
(304, '0734977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Prof Mourice Alala Road', ' Nairobi', ' Kenya', '-1.276288', '36.8111614', 'Fingerprint', '2019-04-08 14:53:33'),
(305, '0734977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Block B Ground Floor', ' Nairobi', ' Kenya', '-1.2774259', '36.8138629', 'Fingerprint', '2019-04-08 14:54:31'),
(306, '0734977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Prof Mourice Alala Road', ' Nairobi', ' Kenya', '-1.2768706', '36.8102364', 'Fingerprint', '2019-04-08 14:57:08'),
(307, '0734977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'University Way', ' Nairobi', ' Kenya', '-1.2818761', '36.8143704', 'Fingerprint', '2019-04-08 16:44:03'),
(308, '0734977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'University Way Roundabout', ' Nairobi', ' Kenya', '-1.2818699', '36.8152073', 'Fingerprint', '2019-04-08 16:44:58'),
(309, '0734977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Nyerere Rd', ' Nairobi', ' Kenya', '-1.2828472', '36.814199', 'Fingerprint', '2019-04-08 16:45:32'),
(310, '0734977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'CFC Life Building Nyerere Rd', '', ' Kenya', '-1.2863789', '36.8137233', 'Fingerprint', '2019-04-08 16:46:22'),
(311, '0733977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Muindi Mbingu Standard St', '', ' Kenya', '-1.2861587', '36.8210378', 'Fingerprint', '2019-04-09 05:14:35'),
(312, '0733977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Travel House General Kago St', '', ' Kenya', '-1.2861575', '36.8213844', 'Fingerprint', '2019-04-09 05:15:07'),
(313, '0733977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Kaunda Junction', ' Nairobi', ' Kenya', '-1.2861705', '36.8219058', 'Fingerprint', '2019-04-09 05:16:10'),
(314, '0733977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', '3rd Floor Building 2', '', ' Wabera St', '-1.2865141', '36.8230219', 'Fingerprint', '2019-04-09 05:17:35'),
(315, '0733977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', '65071 Mfangano St', ' Nairobi', ' Kenya', '-1.286235', '36.8278742', 'Fingerprint', '2019-04-09 05:25:07'),
(316, '0733977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Posta St', ' Nairobi', ' Kenya', '-1.2867882', '36.8184503', 'Fingerprint', '2019-04-09 06:02:44'),
(317, '0733977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Mamlaka Rd', ' Nairobi', ' Kenya', '-1.2844585', '36.8125763', 'Fingerprint', '2019-04-09 06:38:42'),
(318, '0722977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Prof David Wasawo Dr', ' Nairobi', ' Kenya', '-1.2732984', '36.807376', 'Fingerprint', '2019-04-09 14:50:40'),
(319, '0722977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', '', ' Nairobi', ' Kenya', '-1.2732984', '36.807376', 'Fingerprint', '2019-04-09 14:51:43'),
(320, '0722977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Chemistry Department', ' Nairobi', ' Kenya', '-1.2734724', '36.806887', 'Fingerprint', '2019-04-09 15:06:58'),
(321, '0722977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', '', ' Nairobi', ' Kenya', '-1.2729914', '36.8071906', 'Fingerprint', '2019-04-09 15:07:45'),
(322, '0722977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Desk', ' Kenya', '', '-1.2719701', '36.8087082', 'Fingerprint', '2019-04-09 15:17:47'),
(323, '0722977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Desk', ' Nairobi', ' Kenya', '-1.2729914', '36.8071906', 'Fingerprint', '2019-04-09 15:18:42'),
(324, '0733977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Museum', ' Nairobi', ' Kenya', '-1.2725705', '36.8096071', 'Fingerprint', '2019-04-09 15:22:32'),
(325, '0733977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Desk', ' Nairobi', ' Kenya', '-1.2729914', '36.8071906', 'Fingerprint', '2019-04-09 15:23:33'),
(326, '0722977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Prof David Wasawo Dr', ' Nairobi', ' Kenya', '-1.2733347', '36.8070763', 'Fingerprint', '2019-04-09 15:40:34'),
(327, '0722977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Office area', ' Nairobi', ' Kenya', '-1.2734029', '36.8071883', 'Fingerprint', '2019-04-09 15:41:10'),
(328, '0722977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Lavington Security House Denis Pritt Rd', '', ' Kenya', '-1.2853191', '36.7874403', 'Fingerprint', '2019-04-10 06:46:02'),
(329, '0722977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Directors office', '', ' Kenya', '-1.2854743', '36.7874266', 'Fingerprint', '2019-04-10 09:01:46'),
(330, '0722977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Directors office', '', ' Kenya', '-1.2852765', '36.7871966', 'Fingerprint', '2019-04-10 09:02:42'),
(331, '0722977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Booster', ' Nairobi', ' Kenya', '-1.2846952', '36.787085', 'Fingerprint', '2019-04-10 09:05:04'),
(332, '0722977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Garage', '', ' Kenya', '-1.2851664', '36.7873806', 'Fingerprint', '2019-04-10 09:05:55'),
(333, '0722977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Directors office', '', ' Kenya', '-1.2856042', '36.7875367', 'Fingerprint', '2019-04-10 09:06:49'),
(334, '0722977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Directors office', '', ' Kenya', '-1.2853946', '36.7873801', 'Fingerprint', '2019-04-10 09:07:35'),
(335, '0722977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', '3 Riverside Dr', ' Nairobi', ' Kenya', '-1.272551', '36.8054489', 'Fingerprint', '2019-04-10 18:17:50'),
(336, '0722977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Exam centre 1st floor', ' Nairobi', ' Kenya', '-1.272551', '36.8054489', 'Fingerprint', '2019-04-10 18:20:45'),
(337, '0722977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Lavington Security House Denis Pritt Rd', '', ' Kenya', '-1.2854198', '36.787298', 'Fingerprint', '2019-04-11 05:11:46'),
(338, '0722977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', '3 Riverside Dr', ' Nairobi', ' Kenya', '-1.2724439', '36.8054449', 'Fingerprint', '2019-04-11 15:46:31'),
(339, '0722977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Mamlaka Rd', ' Nairobi', ' Kenya', '-1.2845626', '36.8125685', 'Fingerprint', '2019-04-13 05:53:38'),
(340, '0722977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Kenyatta Ave', ' Nairobi', ' Kenya', '-1.2853184', '36.8198135', 'Fingerprint', '2019-04-14 15:01:36'),
(341, '0722977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Science and Physics Labs', ' Nairobi', ' Kenya', '-1.2725958', '36.8073181', 'Fingerprint', '2019-04-16 09:39:56'),
(342, '0722977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Prof David Wasawo Dr', ' Nairobi', ' Kenya', '-1.2731358', '36.8069493', 'Fingerprint', '2019-04-18 10:42:10'),
(343, '0722977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', '30 State House Rd', ' Nairobi', ' Kenya', '-1.2769468', '36.8115123', 'Fingerprint', '2019-04-18 10:51:42'),
(344, '0722977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Embassy Building Nyerere Rd', ' Nairobi', ' Kenya', '-1.2835176', '36.8132829', 'Fingerprint', '2019-04-18 11:56:11'),
(345, '0722977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Prof Mourice Alala Road', ' Nairobi', ' Kenya', '-1.2740903', '36.80755', 'Fingerprint', '2019-04-22 10:38:22'),
(346, '0722977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Museum', ' Nairobi', ' Kenya', '-1.2729242', '36.8097177', 'Fingerprint', '2019-04-22 10:47:17'),
(347, '0722977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Museum', ' Nairobi', ' Kenya', '-1.2729242', '36.8097177', 'Fingerprint', '2019-04-22 10:47:35'),
(348, '0722977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'State House Rd', ' Nairobi', ' Kenya', '-1.2793366', '36.812952', 'Fingerprint', '2019-04-22 10:48:22'),
(349, '0722977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Saint Andrews Road', ' Nairobi', ' Kenya', '-1.2821067', '36.8130666', 'Fingerprint', '2019-04-22 10:55:11'),
(350, '0722977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Mamlaka Rd', ' Nairobi', ' Kenya', '-1.2845655', '36.8125577', 'Fingerprint', '2019-04-22 11:03:48'),
(351, '0722977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Kimathi Ln', ' Nairobi', ' Kenya', '-1.2831429', '36.8228404', 'Fingerprint', '2019-04-23 13:40:23'),
(352, '0722977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Cabral St', ' Nairobi', ' Kenya', '-1.2832164', '36.8242765', 'Fingerprint', '2019-04-23 14:00:09'),
(353, '0722977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Unnamed Road', ' Eldoret', ' Kenya', '0.483445', '35.2726974', 'Fingerprint', '2019-04-24 16:54:46'),
(354, '0722977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Offf Iten Road Kimumu Estate', '', ' Kenya', '0.5504054', '35.3114707', 'Fingerprint', '2019-04-25 13:08:25'),
(355, '0722977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Unnamed Road', ' Eldoret', ' Kenya', '0.5362564', '35.2929441', 'Fingerprint', '2019-04-25 13:20:11'),
(356, '0722977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Mamlaka Rd', ' Nairobi', ' Kenya', '-1.284552', '36.8125693', 'Fingerprint', '2019-04-28 13:56:41'),
(357, '0722977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Mamlaka Rd', ' Nairobi', ' Kenya', '-1.2854983', '36.8134462', 'Fingerprint', '2019-05-01 12:59:39'),
(358, '0722977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Mamlaka Rd', ' Nairobi', ' Kenya', '-1.2854983', '36.8134462', 'Fingerprint', '2019-05-01 13:10:41'),
(359, '0722977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Mamlaka Rd', ' Nairobi', ' Kenya', '-1.285493', '36.8134226', 'Fingerprint', '2019-05-08 10:43:32'),
(360, '0722977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Prof Mourice Alala Road', ' Nairobi', ' Kenya', '-1.2741548', '36.8072581', 'Fingerprint', '2019-05-08 11:50:36'),
(361, '0722977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Prof David Wasawo Dr', ' Nairobi', ' Kenya', '-1.2739099', '36.8065255', 'Fingerprint', '2019-05-08 11:51:33'),
(362, '0722977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Chemistry Department', ' Nairobi', ' Kenya', '-1.2734875', '36.8068967', 'Fingerprint', '2019-05-08 11:51:48'),
(363, '0722977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Prof David Wasawo Dr', ' Nairobi', ' Kenya', '-1.2731264', '36.8071267', 'Fingerprint', '2019-05-08 11:52:37'),
(364, '0722977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Unnamed Road', ' Kenya', '', '0.5397648', '35.3063265', 'Fingerprint', '2019-05-11 12:48:09'),
(365, '0722977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Well area', ' Kenya', '', '0.5397648', '35.3063265', 'Fingerprint', '2019-05-11 12:53:21'),
(366, '0722977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Prof David Wasawo Dr', ' Nairobi', ' Kenya', '-1.2733432', '36.8071685', 'Fingerprint', '2019-05-14 06:21:46'),
(367, '0722977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Eldoret - Nakuru Rd', ' Kenya', '', '-0.0074388', '35.569931', 'Fingerprint', '2019-05-24 10:49:06'),
(368, '0722977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Eldoret - Nakuru Rd', ' Kenya', '', '-0.0074388', '35.569931', 'Fingerprint', '2019-05-24 10:49:16');
INSERT INTO `tbl_locationlog_logs` (`id`, `telNo`, `simSerial`, `deviceID`, `devicemodel`, `streetName`, `cityName`, `country`, `latitude`, `longitude`, `fingerOrPin`, `logTime`) VALUES
(369, '0722977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Eldoret - Nakuru Rd', ' Kenya', '', '-0.0074388', '35.569931', 'Fingerprint', '2019-05-24 10:49:27'),
(370, '0722977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Eldoret - Nakuru Rd', ' Kenya', '', '-0.0074388', '35.569931', 'Fingerprint', '2019-05-24 10:49:46'),
(371, '0722977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Eldoret - Nakuru Rd', ' Kenya', '', '-0.0074388', '35.569931', 'Fingerprint', '2019-05-24 10:50:01'),
(372, '0722977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Eldoret - Nakuru Rd', ' Kenya', '', '-0.0074388', '35.569931', 'Fingerprint', '2019-05-24 10:50:16'),
(373, '0722977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', 'Eldoret - Nakuru Rd', ' Kenya', '', '-0.0074388', '35.569931', 'Fingerprint', '2019-05-24 10:50:44'),
(374, '0722977672', '89254021024017837701', '025b06aee8768f26', 'Nokia 6.1 Plus', '1023 Eldoret - Nakuru Rd', ' Timboroa', ' Kenya', '0.0832841', '35.5284846', 'Fingerprint', '2019-05-24 11:02:11');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_locationlog_user`
--

CREATE TABLE `tbl_locationlog_user` (
  `id` int(20) NOT NULL,
  `telNo` varchar(20) NOT NULL,
  `simSerial` varchar(40) NOT NULL,
  `deviceModel` varchar(40) DEFAULT NULL,
  `surname` varchar(50) NOT NULL,
  `othernames` varchar(50) DEFAULT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `orgtel` varchar(30) DEFAULT NULL,
  `email` varchar(30) NOT NULL,
  `userlevel` int(5) NOT NULL,
  `organization` varchar(50) DEFAULT NULL,
  `verified` int(11) NOT NULL DEFAULT 0,
  `verification_code` varchar(264) DEFAULT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `regdate` date NOT NULL,
  `trial` varchar(10) NOT NULL DEFAULT 'yes',
  `endtrialdate` date DEFAULT NULL,
  `passwordchange` int(11) NOT NULL DEFAULT 0,
  `idNo` varchar(30) DEFAULT NULL,
  `partnerArea` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_locationlog_user`
--

INSERT INTO `tbl_locationlog_user` (`id`, `telNo`, `simSerial`, `deviceModel`, `surname`, `othernames`, `username`, `password`, `orgtel`, `email`, `userlevel`, `organization`, `verified`, `verification_code`, `modified`, `regdate`, `trial`, `endtrialdate`, `passwordchange`, `idNo`, `partnerArea`) VALUES
(1, '0722977672', '89254021024017837701', 'Nokia 6.1 Plus', 'Chepken', 'Christopher', 'chris', '112c6fea138b09ce03f0bba6a924bcd3', '0722977672', 'chepken@gmail.com', 9, 'ActionAid', 1, '', '2019-04-08 13:20:59', '0000-00-00', 'yes', NULL, 1, NULL, NULL),
(27, '600109', '', '', 'Mwaniki', 'Boss', 'franco', '9f027b9ef65e7752d36fd0995c00ac7e', '0722600109', 'francis@gmail.com', 7, 'Uniliver', 0, '00bbca98cd01c6105eaa344b11858df7', '2019-04-08 10:47:23', '2019-02-12', 'yes', NULL, 1, NULL, NULL),
(30, '0754191441', '353384097744024', 'Nokia 6.1 Plus', 'Kipchumba', 'Chepken', 'chumba', 'bf791ec5d5309e366c9c3759c50a1d24', '0722977672', '444', 2, 'ActionAid', 0, '', '2019-04-08 07:50:57', '2019-02-21', 'yes', NULL, 1, NULL, NULL),
(34, '0733977672', '89254021024017837701', NULL, 'Joel', 'Davidson', 'Marwa', '1723ffcb2390be520f8b69fee6c06e84', NULL, 'david@g.com', 2, NULL, 1, NULL, '2019-04-08 13:44:07', '2019-04-08', 'yes', NULL, 0, NULL, NULL),
(35, '0734977672', '89254021024017837701', NULL, 'Opiyo', 'jahanes', 'opiyo', 'd8c722033829d7207e2f0efc0cb01712', NULL, 'cgr@fggg', 2, NULL, 1, NULL, '2019-04-08 13:46:15', '2019-04-08', 'yes', NULL, 0, '12345678', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_locationlog_distances`
--
ALTER TABLE `tbl_locationlog_distances`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_locationlog_locations`
--
ALTER TABLE `tbl_locationlog_locations`
  ADD PRIMARY KEY (`LocID`);

--
-- Indexes for table `tbl_locationlog_logs`
--
ALTER TABLE `tbl_locationlog_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_locationlog_user`
--
ALTER TABLE `tbl_locationlog_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_locationlog_distances`
--
ALTER TABLE `tbl_locationlog_distances`
  MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_locationlog_locations`
--
ALTER TABLE `tbl_locationlog_locations`
  MODIFY `LocID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_locationlog_logs`
--
ALTER TABLE `tbl_locationlog_logs`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=375;

--
-- AUTO_INCREMENT for table `tbl_locationlog_user`
--
ALTER TABLE `tbl_locationlog_user`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
