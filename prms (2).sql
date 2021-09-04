-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2019 at 05:54 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `email`, `password`) VALUES
(1, 'britta', '123123'),
(4, 'rashed', '123');

-- --------------------------------------------------------

--
-- Table structure for table `patients_info`
--

CREATE TABLE `patients_info` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(20) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `bloodgrp` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patients_info`
--

INSERT INTO `patients_info` (`id`, `email`, `dob`, `gender`, `lastname`, `firstname`, `bloodgrp`, `phone`) VALUES
(9, 'britta@gmail.com', '1997-04-27', 'Male', 'Britta', 'kazi shafkat', 'O+', '01681558114'),
(11, 'zahid@gmail.com', '2001-12-10', 'Male', 'hossen', 'zahid', 'b+', '01730903810'),
(12, 'zahid@gmail.com', '2019-12-11', 'Male', 'bc', 'ab', 'b+', '888');

-- --------------------------------------------------------

--
-- Table structure for table `patient_info`
--

CREATE TABLE `patient_info` (
  `patient_id` int(50) NOT NULL,
  `name` varchar(200) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `age` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `admission_date` varchar(100) NOT NULL,
  `reffered_by` varchar(100) NOT NULL,
  `blood_group` varchar(50) NOT NULL,
  `diagnosis` varchar(250) NOT NULL,
  `doctor_info` varchar(250) NOT NULL,
  `medication` varchar(250) NOT NULL,
  `cabin_no` varchar(150) NOT NULL,
  `total_bill` varchar(250) NOT NULL,
  `paid` varchar(200) NOT NULL,
  `due` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patients_info`
--
ALTER TABLE `patients_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient_info`
--
ALTER TABLE `patient_info`
  ADD PRIMARY KEY (`patient_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `patients_info`
--
ALTER TABLE `patients_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
