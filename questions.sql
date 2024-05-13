-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2024 at 04:21 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `questions`
--

-- --------------------------------------------------------

--
-- Table structure for table `form_submissions`
--

CREATE TABLE `form_submissions` (
  `id` int(11) NOT NULL,
  `submission_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `purpose` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `agree_terms` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `form_submissions`
--

INSERT INTO `form_submissions` (`id`, `submission_date`, `name`, `email`, `phone_number`, `company`, `purpose`, `message`, `agree_terms`) VALUES
(21, '2024-04-25 12:40:12', 'dfsdfsd', 'dssdgs@r', '', '', '', 'fad', 0),
(22, '2024-04-25 12:42:16', 'Ana Stojković', 'anarukometasica77@gmail.com', '', '', '', '', 0),
(23, '2024-04-25 12:42:37', 'Ana Stojković', 'anarukometasica77@gmail.com', '', '', '', '', 0),
(24, '2024-04-25 14:50:07', 'Jernej P', 'anarukometasica77@gmail.com', '', '', '', 'sdads', 0),
(25, '2024-04-26 10:10:58', 'Mina', 'mina.z@gmail.com', '', '', '', 'dsfsdfsf', 0),
(26, '2024-04-26 13:58:26', 'Petronija', 'dffsds@gmail.com', '', '', '', '', 0),
(27, '2024-05-10 06:15:33', 'Ana Stojković', 'anarukometasica77@gmail.com', '', '', '', 's', 0),
(28, '2024-05-10 06:15:57', 'Ana Stojković', 'anarukometasica77@gmail.com', '', '', '', 'a', 0),
(29, '2024-05-10 07:06:46', 'Ana Stojković', 'anarukometasica77@gmail.com', '', '', '', 'sdad', 0);

-- --------------------------------------------------------

--
-- Table structure for table `survey_responses`
--

CREATE TABLE `survey_responses` (
  `id` int(11) NOT NULL,
  `question1` varchar(255) DEFAULT NULL,
  `question2` varchar(255) DEFAULT NULL,
  `question3` varchar(255) DEFAULT NULL,
  `question4` varchar(255) DEFAULT NULL,
  `question5` varchar(255) DEFAULT NULL,
  `question6` varchar(255) DEFAULT NULL,
  `question7` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `survey_responses`
--

INSERT INTO `survey_responses` (`id`, `question1`, `question2`, `question3`, `question4`, `question5`, `question6`, `question7`) VALUES
(38, 'Povsem se strinjam', 'Povsem se strinjam', 'Povsem se strinjam', 'Meni', 'Povsem se strinjam', 'Povsem se strinjam', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `form_submissions`
--
ALTER TABLE `form_submissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `survey_responses`
--
ALTER TABLE `survey_responses`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `form_submissions`
--
ALTER TABLE `form_submissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `survey_responses`
--
ALTER TABLE `survey_responses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
