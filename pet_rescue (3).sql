-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 10, 2024 at 08:33 PM
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
-- Database: `pet_rescue`
--

-- --------------------------------------------------------

--
-- Table structure for table `adopt`
--

CREATE TABLE `adopt` (
  `adopt_id` int(5) NOT NULL,
  `pet_id` int(5) NOT NULL,
  `full_name` varchar(30) NOT NULL,
  `district` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `phone_number` int(10) NOT NULL,
  `is_confirmed` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adopt`
--

INSERT INTO `adopt` (`adopt_id`, `pet_id`, `full_name`, `district`, `city`, `phone_number`, `is_confirmed`) VALUES
(44, 38, 'Savi', 'Gampaha', 'Seeduwa', 75, 1),
(46, 39, 'sonali', 'gampaha', 'gampaha', 75, 0);

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `answer_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `answer` text NOT NULL,
  `answer_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pet`
--

CREATE TABLE `pet` (
  `pet_id` int(5) NOT NULL,
  `user_name` varchar(12) NOT NULL,
  `name` varchar(12) NOT NULL,
  `pet_type` varchar(16) NOT NULL,
  `age` int(2) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `district` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `phone_number` int(10) NOT NULL,
  `description` varchar(150) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_adopted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pet`
--

INSERT INTO `pet` (`pet_id`, `user_name`, `name`, `pet_type`, `age`, `gender`, `district`, `city`, `phone_number`, `description`, `photo`, `created_at`, `is_adopted`) VALUES
(38, 'Savi', 'Duddy', 'Shih Tzu', 3, 'Male', 'Colombo', 'Wattala', 71, 'Little puppy', 'uploads/44cb276521f85526a020bcae79c3fb55.jpg', '2024-10-08 11:47:58', 1),
(39, 'Savi', 'Max', 'Basset Hound ', 5, 'Male', 'Kaluthara', 'Kaluthara', 72, 'Brown color friendly dog', 'uploads/118bc9166d7cca1b59b13b4f470d1ee6.jpg', '2024-10-08 15:57:21', 0);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `question` text NOT NULL,
  `submission_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `name`, `email`, `question`, `submission_date`) VALUES
(2, 'Savi', 'savi@gmail.com', 'Can I adopt 2 pets at once?', '2024-10-08 15:36:26'),
(5, 'Madhavee', 'madu@gmail.com', 'How can I contact the shelter?', '2024-10-08 15:41:17'),
(7, 'Devid', 'devid@gmail.com', 'Can I meet the pet before adopt?', '2024-10-08 15:49:21'),
(8, 'Praveen', 'praveen@gmail.com', 'How can I get more information about pets? ', '2024-10-09 17:59:11'),
(9, 'Praveen ', 'praveen@gmail.com', 'Question: How can I get more information about pets?', '2024-10-09 18:05:10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_name` varchar(12) NOT NULL,
  `full_name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(225) NOT NULL,
  `is_admin` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_name`, `full_name`, `email`, `password`, `is_admin`) VALUES
('Madu', 'Madhusha', 'madu@gmail.com', '$2y$10$Xc2unRu55UJfL.a608Q2O.wISg4dRcEvHkWtKLJhozc1uoRFDQ1Fm', 0),
('Sahasri', 'Sahasri', 'sahasri@gmail.com', 'Sahasri1234', 1),
('Savi', 'Savithri', 'savi@gmail.com', 'Savi@1234', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adopt`
--
ALTER TABLE `adopt`
  ADD PRIMARY KEY (`adopt_id`);

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`answer_id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `pet`
--
ALTER TABLE `pet`
  ADD PRIMARY KEY (`pet_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adopt`
--
ALTER TABLE `adopt`
  MODIFY `adopt_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `answer_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pet`
--
ALTER TABLE `pet`
  MODIFY `pet_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_ibfk_1` FOREIGN KEY (`id`) REFERENCES `questions` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
