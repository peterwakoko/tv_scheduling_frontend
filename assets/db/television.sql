-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 27, 2022 at 02:27 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `television`
--

-- --------------------------------------------------------

--
-- Table structure for table `activitylog`
--

DROP TABLE IF EXISTS `activitylog`;
CREATE TABLE IF NOT EXISTS `activitylog` (
  `logId` varchar(50) NOT NULL,
  `logUserName` char(50) NOT NULL,
  `AdminId` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`logId`),
  KEY `AdminId` (`AdminId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `AdminId` varchar(20) NOT NULL,
  `name` char(50) NOT NULL,
  `userName` char(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`AdminId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
CREATE TABLE IF NOT EXISTS `schedule` (
  `progId` varchar(50) NOT NULL,
  `progName` char(50) NOT NULL,
  `scheduleDate` date DEFAULT NULL,
  `startTime` time DEFAULT NULL,
  `endTime` time DEFAULT NULL,
  `AdminId` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`progId`),
  KEY `AdminId` (`AdminId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `staffaccount`
--

DROP TABLE IF EXISTS `staffaccount`;
CREATE TABLE IF NOT EXISTS `staffaccount` (
  `staffId` varchar(20) NOT NULL,
  `name` char(50) NOT NULL,
  `userName` char(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `AdminId` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`staffId`),
  KEY `AdminId` (`AdminId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `userId` varchar(30) NOT NULL,
  `firstNmame` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `progId` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`userId`),
  KEY `progId` (`progId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `usercontact`
--

DROP TABLE IF EXISTS `usercontact`;
CREATE TABLE IF NOT EXISTS `usercontact` (
  `telephoneContact` int(11) NOT NULL,
  `userId` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`telephoneContact`),
  KEY `userId` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `viewing`
--

DROP TABLE IF EXISTS `viewing`;
CREATE TABLE IF NOT EXISTS `viewing` (
  `userId` varchar(30) NOT NULL,
  `progId` varchar(50) NOT NULL,
  PRIMARY KEY (`userId`,`progId`),
  KEY `progId` (`progId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activitylog`
--
ALTER TABLE `activitylog`
  ADD CONSTRAINT `activitylog_ibfk_1` FOREIGN KEY (`AdminId`) REFERENCES `admin` (`AdminId`);

--
-- Constraints for table `schedule`
--
ALTER TABLE `schedule`
  ADD CONSTRAINT `schedule_ibfk_1` FOREIGN KEY (`AdminId`) REFERENCES `admin` (`AdminId`);

--
-- Constraints for table `staffaccount`
--
ALTER TABLE `staffaccount`
  ADD CONSTRAINT `staffaccount_ibfk_1` FOREIGN KEY (`AdminId`) REFERENCES `admin` (`AdminId`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`progId`) REFERENCES `schedule` (`progId`);

--
-- Constraints for table `usercontact`
--
ALTER TABLE `usercontact`
  ADD CONSTRAINT `usercontact_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`);

--
-- Constraints for table `viewing`
--
ALTER TABLE `viewing`
  ADD CONSTRAINT `viewing_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`),
  ADD CONSTRAINT `viewing_ibfk_2` FOREIGN KEY (`progId`) REFERENCES `schedule` (`progId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
