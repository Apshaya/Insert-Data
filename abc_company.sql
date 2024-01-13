-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 12, 2022 at 01:40 PM
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
-- Database: `abc_company`
--

-- --------------------------------------------------------

--
-- Table structure for table `table_01`
--

DROP TABLE IF EXISTS `table_01`;
CREATE TABLE IF NOT EXISTS `table_01` (
  `Po_No` int(5) NOT NULL,
  `Po_Date` date NOT NULL,
  `Emp_Code` varchar(10) NOT NULL,
  `Supp_No` int(5) NOT NULL,
  PRIMARY KEY (`Po_No`,`Supp_No`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `table_02`
--

DROP TABLE IF EXISTS `table_02`;
CREATE TABLE IF NOT EXISTS `table_02` (
  `Supp_No` int(5) NOT NULL,
  `Supp_Name` varchar(30) NOT NULL,
  PRIMARY KEY (`Supp_No`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `table_03`
--

DROP TABLE IF EXISTS `table_03`;
CREATE TABLE IF NOT EXISTS `table_03` (
  `Part_No` int(5) NOT NULL,
  `Part_descp` varchar(40) NOT NULL,
  PRIMARY KEY (`Part_No`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `table_04`
--

DROP TABLE IF EXISTS `table_04`;
CREATE TABLE IF NOT EXISTS `table_04` (
  `PO_No` int(5) NOT NULL,
  `Part_No` int(5) NOT NULL,
  `Part_Qty` int(20) NOT NULL,
  PRIMARY KEY (`PO_No`,`Part_No`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
