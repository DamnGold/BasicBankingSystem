-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2021 at 02:50 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `customer`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer_info`
--

CREATE TABLE `customer_info` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `acnt_no` int(255) NOT NULL,
  `balance` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_info`
--

INSERT INTO `customer_info` (`id`, `name`, `email`, `acnt_no`, `balance`) VALUES
(0, 'Goldy Solanki', 'goldy.solanki.sbg@gmail.com', 111, 88),
(0, 'Harshita Khatri', 'harshita.khatri.sbg@gmail.com', 222, 112),
(0, 'kratika kushwaha', 'kratika.kushwah.sbg@gmail.com', 333, 100),
(0, 'Milind Vani', 'milind@gmail.com', 444, 100);

-- --------------------------------------------------------

--
-- Table structure for table `customer_info1`
--

CREATE TABLE `customer_info1` (
  `id` int(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `acnt_no` int(100) NOT NULL,
  `balance` int(100) NOT NULL,
  `phn_no` bigint(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_info1`
--

INSERT INTO `customer_info1` (`id`, `name`, `email`, `acnt_no`, `balance`, `phn_no`) VALUES
(1, 'Goldy Solanki', 'goldy@gmail.com', 111, 1010, 1111111111),
(2, 'Harshita Khatri', 'haru@gmail.com', 222, 970, 22222222),
(3, 'Hritik Choudhary', 'hritik@gmail.com', 333, 1000, 33333333),
(4, 'Hirendra Singh Rajput', 'hire@gmail.com', 444, 1000, 444444444),
(5, 'Shivani Bhaskar', 'shivani@gmail.com', 555, 1000, 55555555),
(6, 'Neelesh Chouhan', 'nile@gmail.com', 666, 1000, 66666666),
(7, 'Milind Vani', 'vani@gmail.com', 777, 1000, 77777777),
(8, 'Gaurav Prasad', 'gaurav@gmail.com', 888, 1000, 88888888),
(9, 'Karn Singh Mandloi', 'karn@gmail.com', 999, 1000, 99999999),
(10, 'Kratika Kushwaha', 'kratika@gmail.com', 1111, 1000, 1010101010);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `email`, `password`) VALUES
(1, 'goldysolankimhow@gmail.com', 'Gold_kookie07'),
(5, 'Goldy Solanki', 'gfgf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer_info1`
--
ALTER TABLE `customer_info1`
  ADD PRIMARY KEY (`acnt_no`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer_info1`
--
ALTER TABLE `customer_info1`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
