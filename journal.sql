-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2016 at 11:06 PM
-- Server version: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `journal`
--

-- --------------------------------------------------------

--
-- Table structure for table `entries_tbl`
--

CREATE TABLE IF NOT EXISTS `entries_tbl` (
`ID` int(10) unsigned NOT NULL,
  `Date` date NOT NULL,
  `TimeSlot` varchar(200) NOT NULL,
  `Log` varchar(5000) NOT NULL,
  `Tasks` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `entries_tbl`
--

INSERT INTO `entries_tbl` (`ID`, `Date`, `TimeSlot`, `Log`, `Tasks`) VALUES
(1, '2015-11-25', '00:00 to 00:30', '1\r\n2\r\n3\r\n4\r\n5\r\n\r\n', 5),
(3, '2015-11-25', '1:00 to 1:30', '1\r\n22\r\n333\r\n4444\r\n55555', 5),
(4, '2015-11-25', '10:00 to 10:30', 'Woke up & Morning Ritual\r\nCooking Pasta', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `entries_tbl`
--
ALTER TABLE `entries_tbl`
 ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `entries_tbl`
--
ALTER TABLE `entries_tbl`
MODIFY `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
