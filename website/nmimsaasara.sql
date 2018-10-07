-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2018 at 04:33 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nmimsaasara`
--

-- --------------------------------------------------------

--
-- Table structure for table `donations`
--

CREATE TABLE `donations` (
  `donation_id` int(11) NOT NULL,
  `donor_name` text NOT NULL,
  `donation_amount` float NOT NULL,
  `donor_email` varchar(30) NOT NULL,
  `donation_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donations`
--

INSERT INTO `donations` (`donation_id`, `donor_name`, `donation_amount`, `donor_email`, `donation_time`) VALUES
(1, 'Raj', 200, 'sanghavi.ra@somaiya.edu', '2018-10-07 13:45:08'),
(2, 'Neel', 300, 'neel19@somaiya.edu', '2018-10-07 13:45:27'),
(3, 'Punit', 100, 'punit.kp@somaiya.edu', '2018-10-07 13:45:48'),
(4, 'Neel', 0, 'neels66@yahoo.in', '2018-10-07 14:10:57'),
(5, 'Neel', 0, 'neels66@yahoo.in', '2018-10-07 14:12:52'),
(6, '', 0, '', '2018-10-07 14:24:58');

-- --------------------------------------------------------

--
-- Table structure for table `volunteers`
--

CREATE TABLE `volunteers` (
  `volunteer_id` int(11) NOT NULL,
  `volunteer_name` text NOT NULL,
  `volunteer_address` varchar(100) NOT NULL,
  `volunteer_phoneno` int(12) NOT NULL,
  `volunteer_email` varchar(50) NOT NULL,
  `volunteer_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `volunteers`
--

INSERT INTO `volunteers` (`volunteer_id`, `volunteer_name`, `volunteer_address`, `volunteer_phoneno`, `volunteer_email`, `volunteer_time`) VALUES
(1, 'Neel', 'B-205,Shantinath Apts.,S.V.Road,Borivali(W),Mumbai', 56456456, 'neels66@yahoo.in', '2018-10-07 14:22:38'),
(2, 'Raj', 'Prathana Samaj, Girgaon', 889384429, 'sanghavi.ra@somaiya.edu', '2018-10-07 14:30:05'),
(3, 'Punit', 'Goregaon, Mumbai', 2147483623, 'punit.kp@somaiya.edu', '2018-10-07 14:31:13'),
(4, 'Nitin', 'Dadar, Mumbai', 983748287, 'nitin.bhansali@somaiya.edu', '2018-10-07 14:31:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `donations`
--
ALTER TABLE `donations`
  ADD PRIMARY KEY (`donation_id`);

--
-- Indexes for table `volunteers`
--
ALTER TABLE `volunteers`
  ADD PRIMARY KEY (`volunteer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `donations`
--
ALTER TABLE `donations`
  MODIFY `donation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `volunteers`
--
ALTER TABLE `volunteers`
  MODIFY `volunteer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
