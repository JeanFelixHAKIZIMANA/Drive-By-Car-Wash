-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 02, 2022 at 10:50 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carwash`
--

-- --------------------------------------------------------

--
-- Table structure for table `booked`
--

CREATE TABLE `booked` (
  `firstname` varchar(80) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `tire_number` int(11) NOT NULL,
  `brand` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` int(80) NOT NULL,
  `phone` int(20) NOT NULL,
  `done at:` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booked`
--

INSERT INTO `booked` (`firstname`, `lastname`, `tire_number`, `brand`, `date`, `email`, `password`, `phone`, `done at:`) VALUES
('', '', 4, 'toyota', '0000-00-00', '', 0, 0, '2022-08-02 08:03:08'),
('ABIJURU', 'Happiness', 4, 'mazda', '2022-08-11', 'abijuru@hapiness.com', 0, 789878787, '2022-08-02 00:43:33'),
('ABIJURU', 'Happiness', 4, 'mazda', '2022-08-11', 'abijuru@hapiness.rw', 0, 789878787, '2022-08-02 00:41:30'),
('UWANYAGASANI', 'Eric', 4, 'hyundai', '2022-08-12', 'badman@carwash.rw', 0, 789898989, '2022-08-02 00:41:30'),
('UWANYAGASANI', 'dasf', 3, 'hager', '2022-08-02', 'hello@gmail.com', 0, 789878787, '2022-08-02 00:41:30'),
('KANYABUNYOBWA', 'Eric', 4, 'benz', '2022-08-11', 'starkfelix89@yahoo.fr', 0, 789878787, '2022-08-02 00:41:30');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `clientID` int(11) NOT NULL,
  `clientName` varchar(100) NOT NULL,
  `clientEmail` varchar(100) NOT NULL,
  `sex` varchar(100) DEFAULT NULL,
  `district` varchar(100) DEFAULT NULL,
  `member_type` varchar(100) DEFAULT NULL,
  `password` varchar(80) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`clientID`, `clientName`, `clientEmail`, `sex`, `district`, `member_type`, `password`, `date`) VALUES
(6, 'stark felix', 'hakfelix90@gmail.com', 'male', 'Huye', 'admin', '$2y$10$Xm0dMSFfWbe570xM0wq6YeuLtTD8pwEHPiDfzaour.WAyFCjYdVky', '2022-07-31 22:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `name` varchar(80) NOT NULL,
  `phone` int(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`name`, `phone`, `email`, `subject`, `message`) VALUES
('', 789878787, 'badman@carwash.rw', 'claiming', 'i paid more than the amount hat was on the bill, so, i request for the change'),
('felix', 789773530, 'hakfelix90@gmail.com', 'claiming', 'come back home brother!! :-( , please!!'),
('', 0, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staffID` int(11) NOT NULL,
  `staffName` int(100) NOT NULL,
  `staffEmail` int(100) NOT NULL,
  `staffTelno` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `worker`
--

CREATE TABLE `worker` (
  `workerID` int(11) NOT NULL,
  `workerName` int(100) NOT NULL,
  `workerEmail` int(100) NOT NULL,
  `workerTelno` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booked`
--
ALTER TABLE `booked`
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`clientID`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staffID`);

--
-- Indexes for table `worker`
--
ALTER TABLE `worker`
  ADD PRIMARY KEY (`workerID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `clientID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `staffID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `worker`
--
ALTER TABLE `worker`
  MODIFY `workerID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
