-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2019 at 05:31 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chatbot`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_tbl`
--
create database chatbot;
CREATE TABLE `admin_tbl` (
  `id` int(11) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_id` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `phone` int(32) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `uimgurl` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `ondate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_tbl`
--

INSERT INTO `admin_tbl` (`id`, `admin_name`, `admin_id`, `designation`, `phone`, `email_address`, `password`, `uimgurl`, `contact`, `position`, `city`, `ondate`) VALUES
(1, 'Mahfuz Reza', 'suvocse@gmail.com', '', 0, 'rk@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '', '', '', '', '2019-07-25 06:43:01'),
(2, 'Mostofa Kamal', 'mostofa@gmail.com', 'Professor', 22421, 'mostofa@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '', '01783213', '', 'Tangail', '2019-07-25 09:40:02'),
(3, 'Riazul Islam', 'riaz@gmail.com', '', 0, 'admin@admin.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '', '', '', '', '2019-07-26 11:06:36'),
(4, 'Admin', 'admin@admin.com', '', 0, 'admin@admin.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '', '', '', '', '2019-07-28 04:16:19'),
(5, 'Alamin', 'almin@gmail.com', '', 0, 'alamin@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '', '', '', '', '2019-07-28 04:18:43'),
(6, 'Riazul Islam', 'rs@gmail.com', '', 0, 'rs@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '', '', '', '', '2019-07-28 04:21:29'),
(7, 'Abdullah', 'abdullah@gmail.com', '', 0, 'abdullah@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '', '', '', '', '2019-07-28 04:24:24'),
(8, 'abc', 'ab@gmail.com', '', 0, 'ab@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '', '', '', '', '2019-07-28 04:27:11'),
(9, 'AB', 'abc@gmail.com', '', 0, 'abc@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '', '', '', '', '2019-07-28 04:37:03'),
(10, 'HR', 'hr@gmail.com', '', 0, 'hr@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '', '', '', '', '2019-07-28 04:50:02');

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` int(11) NOT NULL,
  `user` longtext NOT NULL,
  `chatbot` longtext NOT NULL,
  `date` datetime NOT NULL,
  `username` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chats`
--

INSERT INTO `chats` (`id`, `user`, `chatbot`, `date`, `username`) VALUES
(11, 'how are u', 'I am fine and you?', '2019-07-16 20:03:03', '14013'),
(26, 'class time of c programming', '10AM', '2019-07-21 08:44:49', 'riaz@gmail.com'),
(31, 'class time', '10AM', '2019-07-22 15:03:48', 'riaz@gmail.com'),
(32, 'hi', 'Hello!!', '2019-07-24 20:11:03', 'riaz@gmail.com'),
(33, 'hi', 'Hello!!', '2019-07-25 14:20:18', 'ce1634'),
(34, 'vc', 'vice chancellor', '2019-07-25 16:16:36', ''),
(35, 'vc', 'vice chancellor', '2019-07-25 16:17:03', ''),
(36, 'hi', 'Hello!!', '2019-07-25 16:21:45', 'mostofa@gmail.com'),
(37, 'vc', 'vice chancellor', '2019-07-25 16:29:11', 'mostofa@gmail.com'),
(38, 'hi', 'HELLO', '2019-07-29 18:39:10', 'ce14047');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int(12) NOT NULL,
  `question` longtext NOT NULL,
  `answer` longtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `question`, `answer`, `date`, `username`) VALUES
(1, 'Hi', 'HELLO', '2019-07-29 06:55:57', ''),
(2, 'how are u', 'I am fine and you?', '2019-07-29 06:20:12', ''),
(3, 'what is class time in 2nd year tomorrow?', '10 AM', '2019-07-29 06:20:12', ''),
(4, 'Exam time in 2017-18 session?', '1.30PM', '2019-07-29 06:20:12', ''),
(5, 'Exam time in session 2015-16?', '1.30PM', '2019-07-29 06:20:12', ''),
(6, 'office time?', '10AM -5PM', '2019-07-29 06:20:12', ''),
(7, 'whether will be the CSE1102 LAB on saturday?', 'yes', '2019-07-29 06:20:12', ''),
(8, 'whether will be the CSE1101 class on saturday?', 'no', '2019-07-29 06:20:12', ''),
(9, 'whether will be the CSE1109 class on saturday?', 'yes', '2019-07-29 06:20:12', ''),
(10, 'when will be start the LAB of CSE1102 on saturday?', 'yes', '2019-07-29 06:20:12', ''),
(11, 'when will be start the class of CSE1101 on saturday?', 'yes', '2019-07-29 06:20:12', ''),
(12, 'when will be start the class of CSE1109 on saturday?', '11pm', '2019-07-29 06:20:12', ''),
(13, 'whether will be the CSE2105 class on saturday?', 'yes', '2019-07-29 06:20:12', ''),
(14, 'whether will be the CSE2104 LAB on saturday?\r\n\r\n\r\n', 'no', '2019-07-29 06:20:12', ''),
(15, 'whether will be the CSE2106 LAB on saturday?', 'no', '2019-07-29 06:20:12', ''),
(16, '\r\nwhether will be the CSE2101 class on saturday?', 'yes', '2019-07-29 06:20:12', ''),
(17, 'when will be start the LAB of CSE2105 on saturday?', '10am', '2019-07-29 06:20:12', ''),
(18, 'when will be start the class of CSE2104 on saturday?\r\n', '9am', '2019-07-29 06:20:12', ''),
(19, 'when will be start the class of CSE2106 on saturday?\r\n', '12pm', '2019-07-29 06:20:12', ''),
(20, 'when will be start the class of CSE2101 on saturday?', '2pm', '2019-07-29 06:20:12', ''),
(21, 'whether will be the CSE2211 class on saturday?\r\n', 'no', '2019-07-29 06:20:12', ''),
(22, 'whether will be the CSE2203 class on saturday?\r\n', 'yes', '2019-07-29 06:20:12', ''),
(23, 'whether will be the CSE2207 class on saturday?\r\n', 'no', '2019-07-29 06:20:12', ''),
(24, 'whether will be the CSE2209 class on saturday?\r\n', 'yes', '2019-07-29 06:20:12', ''),
(25, 'whether will be the CSE2201 class on saturday?\r\n', 'yes', '2019-07-29 06:20:12', ''),
(26, 'whether will be the CSE2216 LAB on saturday?\r\n', 'no', '2019-07-29 06:20:12', ''),
(27, 'when will be start the class of CSE2211 on saturday?\r\n', '9am', '2019-07-29 06:20:12', ''),
(28, 'when will be start the class of CSE2203 on saturday?\r\n', '9am', '2019-07-29 06:20:12', ''),
(29, 'when will be start the class of CSE2207 on saturday?\r\n', '11pm', '2019-07-29 06:20:12', ''),
(30, 'when will be start the class of CSE2209 on saturday?\r\n', '10am', '2019-07-29 06:20:12', ''),
(31, 'when will be start the class of CSE2201 on saturday?\r\n', '10am', '2019-07-29 06:20:12', ''),
(32, 'when will be start the LAB of CSE2216 on saturday?', '8am', '2019-07-29 06:20:12', ''),
(33, 'whether will be the CSE3205 LAB on saturday?\r\n', 'no', '2019-07-29 06:20:12', ''),
(34, 'whether will be the CSE3211 class on saturday?\r\n', 'yes', '2019-07-29 06:20:12', ''),
(35, 'whether will be the CSE3209 class on saturday?\r\n', 'yes', '2019-07-29 06:20:12', ''),
(36, 'whether will be the CSE3204 LAB on saturday?\r\n', 'no', '2019-07-29 06:20:12', ''),
(37, 'when will be start the LAB of CSE3205 on saturday?\r\n', '10am', '2019-07-29 06:20:12', ''),
(38, 'when will be start the class of CSE3211 on saturday?\r\n', '11pm', '2019-07-29 06:20:12', ''),
(39, 'when will be start the class of CSE3209 on saturday?\r\n', '12pm', '2019-07-29 06:20:12', ''),
(40, 'when will be start the LAB of CSE3204 on saturday?', '2pm', '2019-07-29 06:20:12', ''),
(41, 'whether will be the CSE4102 LAB on saturday?\r\n', 'no', '2019-07-29 06:20:12', ''),
(42, 'whether will be the CSE4101 class on saturday?\r\n', 'yes', '2019-07-29 06:20:12', ''),
(43, 'whether will be the CSE4116 LAB on saturday?\r\n', 'yes', '2019-07-29 06:20:12', ''),
(44, 'when will be start the LAB of CSE4102 on saturday?\r\n', '2pm', '2019-07-29 06:20:12', ''),
(45, 'when will be start the class of CSE4101 on saturday?\r\n', '9am', '2019-07-29 06:20:12', ''),
(46, 'when will be start the LAB of CSE4116 on saturday?', '11pm', '2019-07-29 06:20:12', ''),
(47, 'whether will be the CSE4207 class on saturday?\r\n', 'yes', '2019-07-29 06:20:12', ''),
(48, 'whether will be the CSE4202 LAB on saturday?\r\n', 'yes', '2019-07-29 06:20:12', ''),
(49, 'when will be start the class of CSE4207 on saturday?\r\n', '9am', '2019-07-29 06:20:12', ''),
(50, 'when will be start the LAB of CSE4202 on saturday?', '11pm', '2019-07-29 06:20:12', ''),
(51, 'whether will be the CSE1107 class on sunday?\r\n', 'yes', '2019-07-29 06:20:12', ''),
(52, 'whether will be the MBS1800 class on sunday?\r\n', 'no', '2019-07-29 06:20:12', ''),
(53, 'when will be start the class of CSE1107 on sunday?\r\n', '3pm', '2019-07-29 06:20:12', ''),
(54, 'when will be start the class of MBS1800 on sunday?', '12pm', '2019-07-29 06:20:12', ''),
(55, 'whether will be the CSE2105 class on sunday?\r\n', 'no', '2019-07-29 06:20:12', ''),
(56, 'whether will be the CSE2111 class on sunday?\r\n', 'yes', '2019-07-29 06:20:12', ''),
(57, 'whether will be the CSE2104 LAB on sunday?\r\n', 'no', '2019-07-29 06:20:12', ''),
(58, 'whether will be the CSE2109 class on sunday?\r\n', 'yes', '2019-07-29 06:20:12', ''),
(59, 'when will be start the class of CSE2105 on sunday?\r\n', '10am', '2019-07-29 06:20:12', ''),
(60, 'when will be start the class of CSE2111 on sunday?\r\n', '11pm', '2019-07-29 06:20:12', ''),
(61, 'when will be start the LAB of CSE2104 on sunday?\r\n', '2pm', '2019-07-29 06:20:12', ''),
(62, 'when will be start the class of CSE2109 on sunday?', '3pm', '2019-07-29 06:20:12', ''),
(63, 'whether will be the CSE2211 class on sunday?\r\n', 'yes', '2019-07-29 06:20:12', ''),
(64, 'whether will be the CSE2203 class on sunday?\r\n', 'no', '2019-07-29 06:20:12', ''),
(65, 'whether will be the CSE2207 class on sunday?\r\n', 'yes', '2019-07-29 06:20:12', ''),
(66, 'whether will be the CSE2209 class on sunday?\r\n', 'yes', '2019-07-29 06:20:12', ''),
(67, 'whether will be the CSE2201 class on sunday?\r\n', 'no', '2019-07-29 06:20:12', ''),
(68, 'whether will be the CSE2206 LAB on sunday?\r\n', 'yes', '2019-07-29 06:20:12', ''),
(69, 'when will be start the class of CSE2211 on sunday?\r\n', '9am', '2019-07-29 06:20:12', ''),
(70, 'when will be start the class of CSE2203 on sunday?\r\n', '10am', '2019-07-29 06:20:12', ''),
(71, 'when will be start the class of CSE2207 on sunday?\r\n', '11pm', '2019-07-29 06:20:12', ''),
(72, 'when will be start the class of CSE2209 on sunday?\r\n', '12pm', '2019-07-29 06:20:12', ''),
(73, 'when will be start the class of CSE2201 on sunday?\r\n', '2pm', '2019-07-29 06:20:12', ''),
(74, 'when will be start the LAB of CSE2216 on sunday?', '3pm', '2019-07-29 06:20:12', ''),
(75, 'whether will be the CSE3205 class on sunday?\r\n', 'yes', '2019-07-29 06:20:12', ''),
(76, 'whether will be the CSE3204 LAB on sunday?\r\n', 'yes', '2019-07-29 06:20:12', ''),
(77, 'whether will be the CSE3209 class on sunday?\r\n', 'no', '2019-07-29 06:20:12', ''),
(78, 'whether will be the CSE3201 class on sunday?\r\n', 'no', '2019-07-29 06:20:12', ''),
(79, 'whether will be the CSE3210 LAB on sunday?\r\n', 'yes', '2019-07-29 06:20:12', ''),
(80, 'when will be start the class of CSE3205 on sunday?\r\n', '9am', '2019-07-29 06:20:12', ''),
(81, 'when will be start the LAB of CSE3204 on sunday?\r\n', '10am', '2019-07-29 06:20:12', ''),
(82, 'when will be start the class of CSE3209 on sunday?\r\n', '11pm', '2019-07-29 06:20:12', ''),
(83, 'when will be start the class of CSE3201 on sunday?\r\n', '12pm', '2019-07-29 06:20:12', ''),
(84, 'when will be start the LAB of CSE3210 on sunday?', '2pm', '2019-07-29 06:20:12', ''),
(85, 'whether will be the CSE4106 class on sunday?\r\n', 'yes', '2019-07-29 06:20:12', ''),
(86, 'whether will be the CSE4113 class on sunday?\r\n', 'no', '2019-07-29 06:20:12', ''),
(87, 'whether will be the CSE4103 class on sunday?\r\n', 'yes', '2019-07-29 06:20:12', ''),
(88, 'whether will be the CSE4108 LAB on sunday?\r\n', 'no', '2019-07-29 06:20:12', ''),
(89, 'when will be start the class of CSE4106 on sunday?\r\n', '9am', '2019-07-29 06:20:12', ''),
(90, 'when will be start the class of CSE4113 on sunday?\r\n', '10am', '2019-07-29 06:20:12', ''),
(91, 'when will be start the class of CSE4103 on sunday?\r\n', '12pm', '2019-07-29 06:20:12', ''),
(92, 'when will be start the LAB of CSE4108 on sunday?', '2pm', '2019-07-29 06:20:12', ''),
(93, 'Break time?', '1.00pm -2.0pm', '2019-07-29 06:20:12', ''),
(94, 'off day', 'thusday and friday', '2019-07-29 06:20:12', ''),
(95, 'office time', '9am-5pm', '2019-07-29 06:20:12', ''),
(96, 'Chairman of cse dept?', 'Md. Musaddek Hossain', '2019-07-29 06:20:12', ''),
(97, 'Next semester class strart?', '20 july', '2019-07-29 06:20:12', ''),
(98, 'Meeting time of sir?', '4.30pm', '2019-07-29 06:20:12', ''),
(99, 'class time of c programming?', '10AM', '2019-07-29 06:20:12', ''),
(100, 'class time of Data structure?', '10AM', '2019-07-29 06:20:12', ''),
(101, 'what is your name?', 'Riaz', '2019-07-29 06:20:12', ''),
(102, 'computer basics and programming fundamentals Course Code?', 'CSE1101', '2019-07-29 06:20:12', ''),
(103, 'computer basics and programming fundamentals lab Course Code?', 'CSE1102', '2019-07-29 06:20:12', ''),
(104, 'the electrical circuit analysis Course Code?', 'CSE1103', '2019-07-29 06:20:12', ''),
(105, 'the electrical circuit analysis lab Course Code?', 'CSE1104', '2019-07-29 06:20:12', ''),
(106, 'What is the mathematics1( differential calculas& coordinate geometry) Course Code?\r\n', 'CSE1105\r\n', '2019-07-29 06:20:12', ''),
(107, 'What is the english Course Code?\r\n', 'CSE1107\r\n', '2019-07-29 06:20:12', ''),
(108, 'What is the economics and sociology Course Code?\r\n', 'CSE1109', '2019-07-29 06:20:12', ''),
(109, 'what do you mean by CSE1101?\r\n', 'computer basics and programming fundamentals\r\n', '2019-07-29 06:20:12', ''),
(110, 'what do you mean by CSE1102?\r\n', 'computer basics and programming fundamentals lab\r\n', '2019-07-29 06:20:12', ''),
(111, 'what do you mean by CSE1103?\r\n', 'electrical circuit analysis\r\n', '2019-07-29 06:20:12', ''),
(112, 'what do you mean by CSE1104?\r\n', 'electrical circuit analysis lab\r\n', '2019-07-29 06:20:12', ''),
(113, 'what do you mean by CSE1105?\r\n', 'mathematics1( differential calculas& coordinate geometry)\r\n', '2019-07-29 06:20:12', ''),
(114, 'what do you mean by CSE1107?\r\n', 'english\r\n', '2019-07-29 06:20:12', ''),
(115, 'what do you mean by CSE1109?\r\n', 'economics and sociology', '2019-07-29 06:20:12', ''),
(116, 'CSE1201 ', ' Electronic Devices and Circuits ', '2019-07-29 06:20:12', ''),
(117, '\r\nCSE1202  ', 'Electronic Devices and Circuits Lab ', '2019-07-29 06:20:12', ''),
(118, '\r\nCSE1203', '  Structured Programming  ', '2019-07-29 06:20:12', ''),
(119, '\r\nCSE1204  ', 'Structured Programming Lab  ', '2019-07-29 06:20:12', ''),
(120, '\r\nCSE1205  ', 'Discrete Mathematics ', '2019-07-29 06:20:12', ''),
(121, ' \r\nCSE1207 ', ' Physics  ', '2019-07-29 06:20:12', ''),
(122, '\r\nCSE1209 ', ' Chemistry ', '2019-07-29 06:20:12', ''),
(123, '\r\nCSE1211  ', 'Mathematics  II', '2019-07-29 06:20:12', ''),
(124, 'CSE2101  ', 'Object Oriented Programming  ', '2019-07-29 06:20:12', ''),
(125, '\r\nCSE2102  ', 'Object Oriented Programming Lab ', '2019-07-29 06:20:12', ''),
(126, '\r\nCSE2103 ', '\r\n Data Structure ', '2019-07-29 06:20:12', ''),
(127, 'CSE2104  ', '\r\nData Structure Lab  ', '2019-07-29 06:20:12', ''),
(128, ' CSE2105 ', '\r\nDigital Electronics  ', '2019-07-29 06:20:12', ''),
(129, ' CSE2106 ', 'Digital Electronics Lab', '2019-07-29 06:20:12', ''),
(130, 'CSE2107  ', '\r\nMathematics  III  (  Matrix,  vector, \r\nSpecial Function ) \r\n', '2019-07-29 06:20:12', ''),
(131, 'CSE2109  ', '\r\nStatistics  ', '2019-07-29 06:20:12', ''),
(132, 'CSE2111 ', '\r\n Accounting  ', '2019-07-29 06:20:12', ''),
(133, 'CSE2112 ', ' Software  Development  Project', '2019-07-29 06:20:12', ''),
(134, 'how many credit in 1-1 semester?', '17.50 credit', '2019-07-29 06:20:12', ''),
(135, 'how many credit in 1-2 semester?\r\n', '19.50 credit\r\n', '2019-07-29 06:20:12', ''),
(136, 'how many credit in 2-1 semester?\r\n', '22.00 credit\r\n', '2019-07-29 06:20:12', ''),
(137, 'how many credit in 2-2 semester?\r\n', '21.50 credit\r\n', '2019-07-29 06:20:12', ''),
(138, 'how many credit in 3-1 semester?\r\n', '20.50 credit\r\n', '2019-07-29 06:20:12', ''),
(139, 'how many credit in 3-2 semester?\r\n', '18.00 credit\r\n', '2019-07-29 06:20:12', ''),
(140, 'how many credit in 4-1 semester?\r\n', '21.00 credit\r\n', '2019-07-29 06:20:12', ''),
(141, 'how many credit in 4-2 semester?\r\n', '20.00 credit\r\n', '2019-07-29 06:20:12', ''),
(142, '\r\nhow many course   1-1 semester?\r\n', '7\r\n', '2019-07-29 06:20:12', ''),
(143, 'how many course   1-2 semester?\r\n', '8\r\n', '2019-07-29 06:20:12', ''),
(144, 'how many course   2-1 semester?\r\n', '10\r\n', '2019-07-29 06:20:12', ''),
(145, 'how many course   2-2 semester?\r\n', '12\r\n', '2019-07-29 06:20:12', ''),
(146, 'how many course   3-1 semester?\r\n', '11\r\n', '2019-07-29 06:20:12', ''),
(147, 'how many course   3-2 semester?\r\n', '10\r\n', '2019-07-29 06:20:12', ''),
(148, 'how many course   4-1 semester?\r\n', '11\r\n', '2019-07-29 06:20:12', ''),
(149, ' how many rteachers of cse dept', '12', '2019-07-29 06:20:12', ''),
(150, 'what is the DM Course teacher name?\r\n', 'Rahmina Rubaiat\r\n', '2019-07-29 06:20:12', ''),
(151, 'what is the OOA Course teacher name?\r\n', 'A.S.M. Delowar Hossain\r\n', '2019-07-29 06:20:12', ''),
(152, 'what is the DSD Course teacher name?\r\n', 'Mohammad Hadifur Rahman\r\n', '2019-07-29 06:20:12', ''),
(153, 'what is the OS Course teacher name?\r\n', 'A.S.M. Delowar Hossain\r\n', '2019-07-29 06:20:12', ''),
(154, 'what is the DMS Course teacher name?\r\n', 'Mohd. Sultan Ahmmad\r\n', '2019-07-29 06:20:12', ''),
(155, 'what is the SE Course teacher name?\r\n', 'Mahbuba Begum\r\n', '2019-07-29 06:20:12', ''),
(156, 'what is the DC Course teacher name?\r\n', 'Rahmina Rubaiat\r\n', '2019-07-29 06:20:12', ''),
(157, 'what is the AI Course teacher name?\r\n', 'Lubna Yasmin Pinky\r\n', '2019-07-29 06:20:12', ''),
(158, 'what is the VLSI Course teacher name?\r\n', 'Mohammad Hadifur Rahman\r\n', '2019-07-29 06:20:12', ''),
(159, 'what is the DIP Course teacher name?\r\n', 'Dr. Mohammad Motiur Rahman\r\n', '2019-07-29 06:20:12', ''),
(160, 'what is the NRS Course teacher name?\r\n', 'Dr. Mostofa Kamal Nasir', '2019-07-29 06:20:12', ''),
(161, 'what is the DSP Course teacher name?\r\n', 'Shisir Mia\r\n', '2019-07-29 06:20:12', ''),
(162, 'what is the CGA Course teacher name?\r\n', 'Lubna Yasmin Pinky\r\n', '2019-07-29 06:20:12', ''),
(163, 'what is the NNF Course teacher name?\r\n', 'Md. Mosaddik Hasan\r\n', '2019-07-29 06:20:12', ''),
(164, 'what is the SM Course teacher name?\r\n', 'Dr. Mohammad Motiur Rahman\r\n', '2019-07-29 06:20:12', ''),
(165, 'what is the DM Course teacher name?\r\n', 'Md. Mahfuz Reza\r\n', '2019-07-29 06:20:12', ''),
(166, 'what is the Electronic Devices Course teacher name?\r\n', 'Mohammad Hadifur Rahman\r\n', '2019-07-29 06:20:12', ''),
(167, 'what is the Structured Programming Course teacher name?\r\n', 'Md. Mezbahul Islam\r\n', '2019-07-29 06:20:12', ''),
(168, 'what is the Algorithm Course teacher name?\r\n', 'Md. Mahfuz Reza\r\n', '2019-07-29 06:20:12', ''),
(169, 'what is the Architecture Course teacher name?\r\n', 'Mohd. Sultan Ahmmad\r\n', '2019-07-29 06:20:12', ''),
(170, 'what is the Numerical Method Course teacher name?\r\n', 'Md. Mosaddik Hasan\r\n', '2019-07-29 06:20:12', ''),
(171, 'what is the Microprocessor Course teacher name?\r\n', 'Mahbuba Begum', '2019-07-29 06:20:12', ''),
(172, 'what is the Theory of Computing Course teacher name?\r\n', 'Shisir Mia\r\n', '2019-07-29 06:20:12', ''),
(173, 'Facaulty member of CSE Department?', 'Dr. Mohammad Motiur Rahman\r\nDr. Mostofa Kamal Nasir\r\nMohammad Hadifur Rahman\r\nA.S.M. Delowar Hossain\r\nMd. Mosaddik Hasan\r\nMd. Mahfuz Reza\r\nMahbuba Begum\r\nLubna Yasmin Pinky\r\nMd. Mezbahul Islam\r\nMohd. Sultan Ahmmad\r\nShisir Mia\r\nRahmina Rubaiat\r\n', '2019-07-29 06:20:12', ''),
(174, 'total number of teacher in CSE department?', '12', '2019-07-29 06:20:12', ''),
(175, 'VC', 'vice chancellor', '2019-07-29 06:20:12', ''),
(176, 'what is the first semester course coordinator name?\r\n', 'Mohd. Sultan Ahmmad\r\n', '2019-07-29 06:20:12', ''),
(177, 'what is the second semester course coordinator name?\r\n', 'Shisir Mia\r\n', '2019-07-29 06:20:12', ''),
(178, 'what is the third semester course coordinator name?\r\n', 'Md. Mahfuz Reza\r\n', '2019-07-29 06:20:12', ''),
(179, 'what is the fourth semester course coordinator name?\r\n', 'Md. Mosaddik Hasan\r\n', '2019-07-29 06:20:12', ''),
(180, 'what is the fifth semester course coordinator name?\r\n', 'A.S.M. Delowar Hossain\r\n', '2019-07-29 06:20:12', ''),
(181, 'what is the sixth semester course coordinator name?\r\n', 'Mohammad Hadifur Rahman\r\n', '2019-07-29 06:20:12', ''),
(182, 'what is the seventh semester course coordinator name?\r\n', 'Dr. Mostofa Kamal Nasir\r\n', '2019-07-29 06:20:12', ''),
(183, 'what is the eighth semester course coordinator name?\r\n\r\n\r\n', 'Dr. Mohammad Motiur Rahman', '2019-07-29 06:20:12', ''),
(184, 'what is Email id  of Dr. Mohammad Motiur Rahman sir?\r\n', 'mm73rahman@gmail.com\r\n', '2019-07-29 06:20:12', ''),
(185, 'what is Email id  of Dr. Mostofa Kamal Nasir sir?\r\n', 'kamal.mostofa@gmail.com\r\n', '2019-07-29 06:20:12', ''),
(186, 'what is designation of Dr. Mohammad Motiur Rahman sir?\r\n', 'professor\r\n', '2019-07-29 06:20:12', ''),
(187, 'what is designation of Dr. Mostofa Kamal Nasir sir?\r\n', 'professor\r\n', '2019-07-29 06:20:12', ''),
(188, 'what is designation of Mohammad Hadifur Rahman sir?\r\n\r\n', 'Associate Prof.', '2019-07-29 06:20:12', ''),
(189, 'what is designation of A.S.M. Delowar Hossain sir?\r\n\r\n', 'Assist. Prof.', '2019-07-29 06:20:12', ''),
(190, 'what is designation of Md. Mosaddik Hasan sir?\r\n\r\n', 'Associate Professor', '2019-07-29 06:20:12', ''),
(191, 'what is designation of Md. Mahfuz Reza sir?\r\n', 'Assistant Professor\r\n', '2019-07-29 06:20:12', ''),
(192, 'what is designation of Md. Mezbahul Islam sir?\r\n', 'Lecturer', '2019-07-29 06:20:12', ''),
(193, '\r\nwhat is designation of Mohd. Sultan Ahmmad sir?\r\n', 'lecturer\r\n', '2019-07-29 06:20:12', ''),
(194, 'what is designation of Shisir Mia sir?\r\n', 'lecturer\r\n', '2019-07-29 06:20:12', ''),
(196, 'what is your name?', 'Riaz', '2019-07-29 08:15:42', 'mostofa@gmail.com'),
(197, 'what is your name?', 'Riaz', '2019-07-29 12:32:39', 'admin@admin.com');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `auto_id` int(11) UNSIGNED NOT NULL,
  `uid` varchar(100) NOT NULL DEFAULT '',
  `uname` varchar(255) NOT NULL,
  `upassword` varchar(100) DEFAULT NULL,
  `ustudentid` varchar(20) NOT NULL,
  `ucity` varchar(1000) DEFAULT NULL,
  `uimgurl` varchar(100) DEFAULT NULL,
  `ondate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `usession` varchar(255) NOT NULL,
  `ubatch` varchar(20) NOT NULL,
  `semester` varchar(255) DEFAULT NULL,
  `uphone` varchar(20) NOT NULL,
  `uemail` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`auto_id`, `uid`, `uname`, `upassword`, `ustudentid`, `ucity`, `uimgurl`, `ondate`, `usession`, `ubatch`, `semester`, `uphone`, `uemail`) VALUES
(1, '14012', 'Tanzir Mehedi Shawon', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'IT-14012', 'Dhaka', '14012.jpg', '2017-10-06 08:14:21', '2013-2014', '11th Batch', 'AB+', '+8801521447020', 'tanzirmehedi.ict@gmail.com'),
(142, '14013', 'Alamin Hossain', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '', NULL, '14013.jpg', '2019-07-16 17:51:26', '', '', '', '', 'alamin@gmail.com'),
(141, '14047', 'Riazul Islam', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '', NULL, NULL, '2019-07-16 17:47:47', '', '', '', '', 'abcd@gmail.com'),
(146, 'ce1232', 'Riazul', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'ce14048', 'magura', NULL, '2019-07-24 15:30:30', '2013-14', '11th', '8th', '0197328732', 'ri@gmail.con'),
(144, 'CE14047', 'Riazul Islam', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '', NULL, 'ce14047.png', '2019-07-21 12:51:58', '', '', '', '', 'rk@gmail.com'),
(147, 'ce14054', 'Riazul Islam', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '', NULL, NULL, '2019-07-25 05:30:41', '', '', NULL, '', 'riaj@gmail.com'),
(145, 'ce15057', 'Abdullah hasan', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'ce15057', 'Dhaka', 'ce15057.png', '2019-07-21 14:03:10', '2015-16', '12', '5th', '0195723224', 'abdullah@gmail.com'),
(148, 'ce1634', 'Riazul Islam', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '', NULL, NULL, '2019-07-25 05:33:10', '', '', NULL, '', 'riajul@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_tbl`
--
ALTER TABLE `admin_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `auto_id` (`auto_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_tbl`
--
ALTER TABLE `admin_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=198;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `auto_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
