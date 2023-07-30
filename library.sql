-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 22, 2022 at 09:53 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `FullName` varchar(100) DEFAULT NULL,
  `AdminEmail` varchar(120) DEFAULT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `FullName`, `AdminEmail`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'Anuj Kumar', 'phpgurukulofficial@gmail.com', 'admin', '202cb962ac59075b964b07152d234b70', '2022-04-21 15:01:04');

-- --------------------------------------------------------

--
-- Table structure for table `overdue`
--

DROP TABLE IF EXISTS `overdue`;
CREATE TABLE IF NOT EXISTS `overdue` (
  `StudentID` varchar(11) NOT NULL,
  `StudentName` varchar(40) NOT NULL,
  `MobNumber` varchar(11) NOT NULL,
  `Fine` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblauthors`
--

DROP TABLE IF EXISTS `tblauthors`;
CREATE TABLE IF NOT EXISTS `tblauthors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `AuthorName` varchar(159) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblauthors`
--

INSERT INTO `tblauthors` (`id`, `AuthorName`, `creationDate`, `UpdationDate`) VALUES
(2, 'Chetan Bhagatt', '2017-07-08 14:30:23', '2017-07-08 15:15:09'),
(3, 'Anita Desai', '2017-07-08 14:35:08', NULL),
(4, 'HC Verma', '2017-07-08 14:35:21', NULL),
(5, 'Sumangali K', '2022-04-22 19:59:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblbooks`
--

DROP TABLE IF EXISTS `tblbooks`;
CREATE TABLE IF NOT EXISTS `tblbooks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `BookName` varchar(255) DEFAULT NULL,
  `Copies` int(3) NOT NULL,
  `IssuedCopies` int(3) NOT NULL DEFAULT '0',
  `CatId` int(11) DEFAULT NULL,
  `AuthorId` int(11) DEFAULT NULL,
  `ISBNNumber` int(11) DEFAULT NULL,
  `BookPrice` int(11) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooks`
--

INSERT INTO `tblbooks` (`id`, `BookName`, `Copies`, `IssuedCopies`, `CatId`, `AuthorId`, `ISBNNumber`, `BookPrice`, `RegDate`, `UpdationDate`) VALUES
(3, 'Chemistry', 8, 8, 6, 4, 1111, 15, '2017-07-08 20:17:31', '2022-04-22 19:57:20'),
(4, 'physics', 5, 3, 4, 5, 20, 100, '2018-06-06 22:52:21', '2018-07-13 08:51:41'),
(5, 'C Programming', 9, 2, 5, 3, 111, 200, '2018-06-11 17:48:02', '2022-04-22 21:18:46'),
(6, 'Maths', 2, 1, 4, 2, 456, 500, '2018-06-11 17:49:10', '2022-04-22 19:50:43'),
(11, 'pp', 8, 6, 4, 2, 69, 5, '2022-04-21 11:34:30', '2022-04-22 20:24:55'),
(12, 'osp', 10, 3, 1, 3, 69, 400, '2022-04-21 19:53:49', '2022-04-22 19:45:49'),
(13, 'martian', 10, 0, 4, 2, 5248, 600, '2022-04-22 21:28:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

DROP TABLE IF EXISTS `tblcategory`;
CREATE TABLE IF NOT EXISTS `tblcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CategoryName` varchar(150) DEFAULT NULL,
  `CurrentStatus` int(1) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `CurrentStatus`, `CreationDate`, `UpdationDate`) VALUES
(1, 'Programming', 1, '2022-04-21 19:48:13', '2022-04-22 07:38:27'),
(2, 'Technology', 1, '2022-04-21 19:49:16', '2022-04-22 19:35:16'),
(4, 'science fiction', 1, '2022-04-22 07:38:50', '2022-04-22 19:35:24'),
(5, 'history', 0, '2022-04-22 19:35:38', '2022-04-22 19:36:57'),
(6, 'mechanical engineering', 1, '2022-04-22 19:36:35', NULL),
(7, 'civil engineering', 1, '2022-04-22 19:36:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblfine`
--

DROP TABLE IF EXISTS `tblfine`;
CREATE TABLE IF NOT EXISTS `tblfine` (
  `fine` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblfine`
--

INSERT INTO `tblfine` (`fine`) VALUES
(15);

-- --------------------------------------------------------

--
-- Table structure for table `tblissuedbookdetails`
--

DROP TABLE IF EXISTS `tblissuedbookdetails`;
CREATE TABLE IF NOT EXISTS `tblissuedbookdetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `BookId` int(11) DEFAULT NULL,
  `StudentID` varchar(150) DEFAULT NULL,
  `IssuesDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ReturnDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `ReturnStatus` int(1) NOT NULL DEFAULT '0',
  `fine` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblissuedbookdetails`
--

INSERT INTO `tblissuedbookdetails` (`id`, `BookId`, `StudentID`, `IssuesDate`, `ReturnDate`, `ReturnStatus`, `fine`) VALUES
(6, 4, 'SID009', '2018-06-12 20:52:10', '2018-06-13 20:44:28', 1, 20),
(7, 5, 'SID009', '2018-06-12 20:55:24', '2018-06-12 23:46:08', 1, 200),
(8, 3, 'SID009', '2018-06-12 23:27:23', NULL, 0, NULL),
(9, 5, 'SID009', '2018-06-13 21:24:38', '2022-04-21 10:25:23', 1, 70000),
(10, 5, 'SID009', '2018-06-13 21:44:50', '2022-04-21 14:55:18', 1, 70000),
(11, 10, 'SID002', '2018-07-11 18:30:00', '2018-07-18 07:47:46', 1, 10),
(12, 10, 'SID005', '2018-07-18 07:59:30', '2018-07-18 07:59:41', 1, NULL),
(13, 5, 'SID005', '2018-07-18 08:00:25', '2018-07-18 08:00:41', 1, NULL),
(14, 5, 'SID009', '2018-07-20 09:37:03', '2022-04-22 07:41:02', 1, 20475),
(15, 5, 'SID009', '2018-07-20 09:40:40', NULL, 0, NULL),
(16, 11, '1', '2022-04-22 19:33:13', NULL, 0, NULL),
(17, 3, '1', '2022-04-22 19:38:52', NULL, 0, NULL),
(18, 11, '1', '2022-04-22 19:45:49', NULL, 0, NULL),
(19, 5, '1', '2022-04-22 19:49:00', NULL, 0, NULL),
(20, 6, '1', '2022-04-22 19:50:43', NULL, 0, NULL),
(21, 3, '1', '2022-04-22 19:52:08', NULL, 0, NULL),
(22, 3, '1', '2022-04-22 19:57:20', NULL, 0, NULL),
(23, 11, '1', '2022-04-22 20:23:40', NULL, 0, NULL),
(24, 11, '1', '2022-04-22 20:24:55', NULL, 0, NULL),
(25, 5, '1', '2022-04-22 20:25:41', NULL, 0, NULL),
(26, 5, '1', '2022-04-22 20:26:14', NULL, 0, NULL),
(27, 5, '1', '2022-04-22 20:26:28', NULL, 0, NULL),
(28, 5, '1', '2022-04-22 21:15:48', NULL, 0, NULL),
(29, 11, '1', '2022-04-22 21:16:07', NULL, 0, NULL),
(30, 5, '1', '2022-04-22 21:18:05', NULL, 0, NULL),
(31, 5, '1', '2022-04-22 21:18:46', NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblrequestedbookdetails`
--

DROP TABLE IF EXISTS `tblrequestedbookdetails`;
CREATE TABLE IF NOT EXISTS `tblrequestedbookdetails` (
  `StudentID` varchar(20) NOT NULL,
  `StudName` varchar(40) NOT NULL,
  `BookName` varchar(50) NOT NULL,
  `CategoryName` varchar(20) NOT NULL,
  `AuthorName` varchar(50) NOT NULL,
  `ISBNNumber` int(11) NOT NULL,
  `BookPrice` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

DROP TABLE IF EXISTS `tblstudents`;
CREATE TABLE IF NOT EXISTS `tblstudents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `StudentId` varchar(100) DEFAULT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `StudentId` (`StudentId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`id`, `StudentId`, `FullName`, `EmailId`, `MobileNumber`, `Password`, `Status`, `RegDate`, `UpdationDate`) VALUES
(1, 'SID002', 'Anuj kumar', 'anuj.lpu1@gmail.com', '9865472555', 'f925916e2754e5e03f75dd58a5733251', 1, '2017-07-11 15:37:05', '2018-07-13 08:49:22'),
(4, 'SID005', 'sdfsd', 'csfsd@dfsfks.com', '8569710025', '92228410fc8b872914e023160cf4ae8f', 1, '2017-07-11 15:41:27', '2018-06-11 18:26:20'),
(8, 'SID009', 'test', 'pb@gmail.com', '8329629259', 'f925916e2754e5e03f75dd58a5733251', 1, '2017-07-11 15:58:28', '2018-07-18 05:17:54'),
(9, 'SID010', 'Amit', 'amit@gmail.com', '8585856224', 'f925916e2754e5e03f75dd58a5733251', 0, '2017-07-15 13:40:30', '2022-04-21 11:52:32'),
(10, 'SID011', 'Sarita Pandey', 'sarita@gmail.com', '4672423754', 'f925916e2754e5e03f75dd58a5733251', 1, '2017-07-15 18:00:59', NULL),
(11, 'SID012', 'sakshi g', 'sakshi@gmail.com', '1234567890', 'b59c67bf196a4758191e42f76670ceba', 0, '2018-06-11 17:55:21', '2022-04-21 10:29:04'),
(12, '1', 'Shriyansh Sinha', 'shriyanshsinha9@gmail.com', '9818872140', '202cb962ac59075b964b07152d234b70', 1, '2022-04-21 15:04:50', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
