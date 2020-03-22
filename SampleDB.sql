-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 22, 2020 at 03:56 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my.didi_connectionLog`
--

-- --------------------------------------------------------

--
-- Table structure for table `connectionlog`
--

DROP TABLE IF EXISTS `connectionlog`;
CREATE TABLE IF NOT EXISTS `connectionlog` (
  `id` int(11) NOT NULL,
  `service` varchar(13) COLLATE utf8_persian_ci NOT NULL,
  `ip` varchar(15) COLLATE utf8_persian_ci NOT NULL,
  `mac` varchar(17) COLLATE utf8_persian_ci NOT NULL,
  `upload` varchar(10) COLLATE utf8_persian_ci NOT NULL,
  `download` varchar(10) COLLATE utf8_persian_ci NOT NULL,
  `credit` decimal(8,2) NOT NULL,
  `duration` time NOT NULL,
  `logout` datetime NOT NULL,
  `login` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `service_2` (`service`,`logout`,`login`),
  KEY `service` (`service`),
  KEY `login` (`login`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
