-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2021 at 09:42 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chat`
--

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `msg_id` int(11) NOT NULL,
  `incoming_msg_id` int(255) NOT NULL,
  `outgoing_msg_id` int(255) NOT NULL,
  `msg` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`msg_id`, `incoming_msg_id`, `outgoing_msg_id`, `msg`) VALUES
(4, 1354713967, 2147483647, 'how are you'),
(5, 1354713967, 2147483647, 'hyii'),
(6, 2147483647, 1354713967, 'hiii'),
(7, 2147483647, 1354713967, 'how are you'),
(8, 1354713967, 2147483647, 'are you fine'),
(9, 1354713967, 2147483647, 'hello'),
(10, 1354713967, 2147483647, 'hii trisha'),
(11, 2147483647, 1354713967, 'heello'),
(12, 2147483647, 1354713967, 'hii'),
(13, 2147483647, 1354713967, 'hii are you there'),
(14, 2147483647, 1354713967, 'hii'),
(15, 2147483647, 1354713967, 'hello'),
(16, 2147483647, 1354713967, 'how are you'),
(17, 2147483647, 1354713967, 'i am fine'),
(18, 1354713967, 2147483647, 'are you ok'),
(19, 1354713967, 2147483647, 'good morning'),
(20, 1455233424, 2147483647, 'hii'),
(21, 1455233424, 1354713967, 'hii'),
(22, 2147483647, 1354713967, 'are you good'),
(23, 2147483647, 1354713967, 'hii'),
(24, 2147483647, 1354713967, 'are you okay'),
(25, 1275906486, 405112746, 'hii'),
(26, 1275906486, 405112746, 'hello'),
(27, 212437523, 1029596199, 'hii reema'),
(28, 1029596199, 212437523, 'hello sheetal'),
(29, 1029596199, 212437523, 'hii'),
(30, 1029596199, 212437523, 'hii');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `unique_id` int(200) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `img` varchar(400) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `unique_id`, `fname`, `lname`, `email`, `password`, `img`, `status`) VALUES
(16, 212437523, 'Reema', 'Roy', 'roy145@gmail.com', '2a44e4707d60f5cd179d74250c160a42', '1624864504Untitled.png', 'Offline now'),
(17, 1029596199, 'sheetal', 'agarwal', 'shitu789@gmail.com', '8cff17a271af35a81de3887e1c5ce318', '1624864554IMG-20191027-WA0114.jpg', 'Offline now'),
(18, 313884013, 'Pallavi', 'ojha', 'pallavi239@gmail.com', 'a0b25bf2b764a90975309b74772c50f1', '1624865593logo1.png', 'Offline now');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
