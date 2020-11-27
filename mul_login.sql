-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2020 at 06:02 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mul_login`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `bookid` int(20) NOT NULL,
  `bdate` date NOT NULL,
  `btime` varchar(20) NOT NULL,
  `bname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `pid`, `bookid`, `bdate`, `btime`, `bname`) VALUES
(1, 3, 1, '2019-11-30', '12:30 AM', 'Eashan'),
(1, 4, 2, '2019-11-15', '08:30 AM', 'Vinay'),
(5, 1, 3, '2015-11-04', '08:30 AM', 'Eashan'),
(5, 2, 6, '2019-11-19', '11:30 AM', 'sd'),
(3, 3, 9, '2019-11-19', '11:30 AM', 'Vinay gauns'),
(5, 1, 10, '2019-11-21', '12:30 AM', 'sdsdf'),
(8, 1, 11, '2019-11-20', '02:30 PM', 'ta'),
(1, 1, 12, '2019-11-24', '02:30 PM', 'eashan'),
(12, 5, 13, '2019-11-22', '11:30 AM', 'g');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `payname` varchar(100) NOT NULL,
  `payid` int(11) NOT NULL,
  `pprice` int(11) NOT NULL,
  `pay_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `payname`, `payid`, `pprice`, `pay_date`) VALUES
(1, 'Eashan', 2, 3000, '2019-11-13'),
(1, 'Vinay', 3, 500, '2019-11-14'),
(3, 'Vinay gauns', 8, 1500, '2019-11-19'),
(5, 'sdsdf', 9, 500, '2019-11-19'),
(8, 'ta', 10, 500, '2019-11-19'),
(1, 'eashan', 11, 500, '2019-11-19'),
(12, 'g', 12, 2000, '2019-11-19');

-- --------------------------------------------------------

--
-- Table structure for table `poojas`
--

CREATE TABLE `poojas` (
  `pid` int(11) NOT NULL,
  `pname` varchar(100) NOT NULL,
  `pprice` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `poojas`
--

INSERT INTO `poojas` (`pid`, `pname`, `pprice`) VALUES
(1, 'Aarti', 500),
(2, 'Bhog', 1000),
(3, 'Abhishek', 1500),
(4, 'Rudrabhishek', 3000),
(5, 'Shraddha', 2000);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `user_type`) VALUES
(1, 'Eashan', 'eashandessai@gmail.com', 'asd', 'user'),
(2, 'G5', 'G5@gmail.com', 'G4', 'admin'),
(3, 'vinay', 'vinay@gmail.com', 'vg', 'user'),
(4, 'shivam', 'shivamk@gmail.com', 'qwerty', 'user'),
(5, 'a', 'a@gmail.com', 'a', 'user'),
(6, 'gaurish', 'gaurish@gmail.com', 'abc123', 'user'),
(7, 'qwerty', 'qwerty@gmail.com', 'qwerty', 'user'),
(8, 'tanvi', 'tanvi@gmail.com', '12345', 'user'),
(9, 's', 's@gmail.com', 's123', 'user'),
(10, 'helllo', 'hello@hhhh.com', 'hello', 'user'),
(11, 'helloo', 'heloooooo@hhhh.com', 'hello', 'user'),
(12, 'rehgif', 'rehgid@h.com', 'qwerty', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`bookid`,`pid`,`id`),
  ADD KEY `id` (`id`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payid`,`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `poojas`
--
ALTER TABLE `poojas`
  ADD PRIMARY KEY (`pid`),
  ADD UNIQUE KEY `pprice` (`pprice`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `bookid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `book_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `book_ibfk_2` FOREIGN KEY (`pid`) REFERENCES `poojas` (`pid`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
