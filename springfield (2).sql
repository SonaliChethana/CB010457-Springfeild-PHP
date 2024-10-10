-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 10, 2024 at 08:09 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `springfield`
--

-- --------------------------------------------------------

--
-- Table structure for table `adoptions`
--

CREATE TABLE `adoptions` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `petName` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adoptions`
--

INSERT INTO `adoptions` (`id`, `name`, `email`, `petName`, `created_at`) VALUES
(1, 'Savi', 'savi@gmail.com', 'Lucas', '2024-10-10 13:50:41'),
(2, 'Mahesh', 'mahee@gmail.com', 'Rocky', '2024-10-10 15:00:29');

-- --------------------------------------------------------

--
-- Table structure for table `petlist`
--

CREATE TABLE `petlist` (
  `id` int(11) NOT NULL,
  `petName` varchar(255) NOT NULL,
  `age` varchar(50) NOT NULL,
  `breed` varchar(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `petlist`
--

INSERT INTO `petlist` (`id`, `petName`, `age`, `breed`, `description`) VALUES
(1, 'rocky', '7 years', 'Street dog', 'white and brown'),
(2, 'lucy', '2 years', 'Street dog', 'White color puppy ');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`) VALUES
(3, 'Savi', 'savi2@gmail.com'),
(4, 'Mahee', 'mahee@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adoptions`
--
ALTER TABLE `adoptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `petlist`
--
ALTER TABLE `petlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adoptions`
--
ALTER TABLE `adoptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `petlist`
--
ALTER TABLE `petlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
