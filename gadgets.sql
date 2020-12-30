-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2020 at 08:41 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `evaluation`
--

-- --------------------------------------------------------

--
-- Table structure for table `gadgets`
--

CREATE TABLE `gadgets` (
  `id` int(5) UNSIGNED NOT NULL,
  `title` varchar(50) NOT NULL,
  `parent_id` int(5) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gadgets`
--

INSERT INTO `gadgets` (`id`, `title`, `parent_id`) VALUES
(1, 'Electronics', NULL),
(2, 'Laptops & PC', 1),
(3, 'Laptops', 2),
(4, 'PC', 2),
(5, 'Cameras & photo', 1),
(6, 'Camera', 5),
(7, 'Phones & Accessories', 1),
(8, 'Smartphones', 7),
(9, 'Android', 8),
(10, 'iOS', 8),
(11, 'Other Smartphones', 8),
(12, 'Batteries', 7),
(13, 'Headsets', 7),
(14, 'Screen Protectors', 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gadgets`
--
ALTER TABLE `gadgets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gadgets`
--
ALTER TABLE `gadgets`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `gadgets`
--
ALTER TABLE `gadgets`
  ADD CONSTRAINT `gadgets_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `gadgets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
