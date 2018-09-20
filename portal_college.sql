-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 15, 2018 at 04:38 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portal_college`
--

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `date_of_birth` date NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `address` varchar(50) NOT NULL,
  `course_type` varchar(50) NOT NULL DEFAULT 'Bsc. IT'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `name`, `email`, `password`, `date_of_birth`, `Gender`, `photo`, `address`, `course_type`) VALUES
(1, 'Indra Bahadur Oli', 'indraoli429@gmail.com', 'indra1234', '1997-02-26', 'Male', 'unlimited youTH.PNG', 'Balaju', 'Computing'),
(2, 'Swaraj Agrawal', 'swaraj@gmail.com', 'swaraj123', '1997-02-26', 'Male', 'Screenshot from 2018-09-14 22-16-47.png', 'Rato Bridge', 'Networking');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `teacher_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `Date_of_birth` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `salary` double NOT NULL,
  `department` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `name`, `email`, `password`, `address`, `Date_of_birth`, `gender`, `photo`, `salary`, `department`) VALUES
(1, 'Saroj', 'saroj@gmail.com', 'saroj2345', 'Kamalpokhari', '1992-02-26', 'Male', 'Screenshot from 2018-09-14 22-12-51.png', 50000, 'ING'),
(2, 'Bhim Sir', 'bhim@gmail.com', 'bhim12345', 'Kathmandu', '1990-02-26', 'Male', 'Screenshot from 2018-09-14 22-12-51.png', 50000, 'IT');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
