-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2023 at 05:30 AM
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
-- Database: `task`
--

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `menu_type` varchar(255) DEFAULT NULL,
  `feature` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `parentId`, `name`, `category`, `menu_type`, `feature`, `slug`, `createdAt`, `updatedAt`) VALUES
(65, NULL, 'hfh', NULL, 'daal', NULL, 'hgh gughujh', '2023-06-27 03:11:43', '2023-06-27 03:11:43'),
(66, 65, NULL, 'moong', NULL, 'with tarka', NULL, '2023-06-27 03:11:43', '2023-06-27 03:11:43'),
(67, NULL, 'ii', NULL, 'daal', NULL, 'dfdsfs', '2023-06-27 03:12:33', '2023-06-27 03:12:33'),
(68, 67, NULL, 'moong', NULL, 'with tarka', NULL, '2023-06-27 03:12:33', '2023-06-27 03:12:33'),
(69, NULL, 'uy', NULL, 'daal', NULL, 'uyuyby uuhhjh', '2023-06-27 03:13:16', '2023-06-27 03:13:16'),
(70, 69, NULL, 'moong', NULL, 'with tarka', NULL, '2023-06-27 03:13:16', '2023-06-27 03:13:16'),
(71, NULL, 'uy', NULL, 'daal', NULL, 'uyuyby uuhhjh', '2023-06-27 03:14:56', '2023-06-27 03:14:56'),
(72, 71, NULL, 'moong', NULL, 'with tarka', NULL, '2023-06-27 03:14:56', '2023-06-27 03:14:56'),
(73, NULL, 'jkhhk', NULL, 'daal', NULL, 'jhj hjhj', '2023-06-27 03:15:18', '2023-06-27 03:15:18'),
(74, 73, NULL, 'moong', NULL, 'with tarka', NULL, '2023-06-27 03:15:18', '2023-06-27 03:15:18'),
(75, NULL, 'cvbv', NULL, 'daal', NULL, 'sdgdfg fdg', '2023-06-27 03:16:17', '2023-06-27 03:16:17'),
(76, 75, NULL, 'moong', NULL, 'with tarka', NULL, '2023-06-27 03:16:17', '2023-06-27 03:16:17'),
(77, NULL, 'dcf', NULL, 'daal', NULL, 'sadsa', '2023-06-27 03:16:51', '2023-06-27 03:16:51'),
(78, 77, NULL, 'moong', NULL, 'with tarka', NULL, '2023-06-27 03:16:51', '2023-06-27 03:16:51'),
(79, NULL, 'xc', NULL, 'daal', NULL, 'dsdsa', '2023-06-27 03:17:35', '2023-06-27 03:17:35'),
(80, 79, NULL, 'moong', NULL, 'with tarka', NULL, '2023-06-27 03:17:35', '2023-06-27 03:17:35'),
(81, NULL, 'jgj', NULL, 'daal', NULL, 'gujh ', '2023-06-27 03:18:35', '2023-06-27 03:18:35'),
(82, 81, NULL, 'moong', NULL, 'with tarka', NULL, '2023-06-27 03:18:35', '2023-06-27 03:18:35'),
(83, NULL, 'ghjh', NULL, 'daal', NULL, 'fyfhg', '2023-06-27 03:19:27', '2023-06-27 03:19:27'),
(84, 83, NULL, 'moong', NULL, 'with tarka', NULL, '2023-06-27 03:19:27', '2023-06-27 03:19:27'),
(85, NULL, 'jshfjds', NULL, 'daal', NULL, ' sdf eferre', '2023-06-27 03:21:03', '2023-06-27 03:21:03'),
(86, 85, NULL, 'moong', NULL, 'with tarka', NULL, '2023-06-27 03:21:03', '2023-06-27 03:21:03'),
(87, NULL, 'fhdk', NULL, 'daal', NULL, 'jdif jsdjfkdskdslf', '2023-06-27 03:24:08', '2023-06-27 03:24:08'),
(88, 87, NULL, 'moong', NULL, 'with tarka', NULL, '2023-06-27 03:24:08', '2023-06-27 03:24:08'),
(89, NULL, 'dfd', NULL, 'daal', NULL, 'sdtvr fsf', '2023-06-27 03:25:02', '2023-06-27 03:25:02'),
(90, 89, NULL, 'moong', NULL, 'with tarka', NULL, '2023-06-27 03:25:02', '2023-06-27 03:25:02'),
(91, NULL, 'uhjk', NULL, 'daal', NULL, 'jyhiyi ihi', '2023-06-27 03:26:05', '2023-06-27 03:26:05'),
(92, 91, NULL, 'moong', NULL, 'with tarka', NULL, '2023-06-27 03:26:05', '2023-06-27 03:26:05'),
(93, NULL, 'hhgg', NULL, 'daal', NULL, 'ffhg', '2023-06-27 03:27:52', '2023-06-27 03:27:52'),
(94, 93, NULL, 'moong', NULL, 'with tarka', NULL, '2023-06-27 03:27:53', '2023-06-27 03:27:53'),
(95, NULL, 'jhjk', NULL, 'daal', NULL, 'hik', '2023-06-27 03:28:24', '2023-06-27 03:28:24'),
(96, 95, NULL, 'moong', NULL, 'with tarka', NULL, '2023-06-27 03:28:25', '2023-06-27 03:28:25'),
(97, NULL, 'huhhik', NULL, 'daal', NULL, 'uyiy', '2023-06-27 03:29:04', '2023-06-27 03:29:04'),
(98, 97, NULL, 'moong', NULL, 'with tarka', NULL, '2023-06-27 03:29:04', '2023-06-27 03:29:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
