-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2021 at 06:45 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.17

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
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `Book_Id` int(5) NOT NULL,
  `Book_Name` varchar(15) NOT NULL,
  `Author` varchar(15) NOT NULL,
  `Quantity` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`Book_Id`, `Book_Name`, `Author`, `Quantity`) VALUES
(1, 'HTML', 'J.S.Katre', 100),
(2, 'C', 'G.R.Jadhav', 150),
(3, 'C++', 'D.B.Hande', 120),
(4, 'Java', 'P.D.Kumar', 160);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Enrollment_No` int(10) NOT NULL,
  `First_Name` varchar(15) NOT NULL,
  `Last_Name` varchar(15) NOT NULL,
  `Mobile_No` varchar(10) NOT NULL,
  `Book_Issue` int(1) DEFAULT NULL,
  `Issue_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Enrollment_No`, `First_Name`, `Last_Name`, `Mobile_No`, `Book_Issue`, `Issue_Date`) VALUES
(1810510301, 'Suraj', 'Pansare', '987546342', 0, NULL),
(1810510302, 'Akash', 'Jadhav', '897634217', 0, NULL),
(1810510303, 'Sai', 'Salunkhe', '7657538833', 0, NULL),
(1810510354, 'Sainath', 'Deshmukh', '9325008664', 0, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`Book_Id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Enrollment_No`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
