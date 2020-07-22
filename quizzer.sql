-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2020 at 12:45 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quizzer`
--
CREATE DATABASE IF NOT EXISTS `quizzer` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `quizzer`;

-- --------------------------------------------------------

--
-- Table structure for table `choices`
--

CREATE TABLE `choices` (
  `id` int(11) NOT NULL,
  `question_number` int(11) NOT NULL,
  `is_correct` tinyint(1) NOT NULL DEFAULT 0,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `choices`
--

INSERT INTO `choices` (`id`, `question_number`, `is_correct`, `text`) VALUES
(1, 1, 1, ' Php Hypertext Preprocessor'),
(2, 1, 0, 'Private home page'),
(3, 1, 0, 'Personal home page'),
(4, 1, 0, 'Personal Hypermarkup Preprocessor'),
(6, 2, 0, ' \"Hello World\";'),
(7, 2, 0, ' Document.Write(\"Hello World\");'),
(8, 2, 1, ' echo \"Hello World\";'),
(9, 3, 0, ' Recipient'),
(10, 3, 1, '&ltrecipient&gt&lt/recipient&gt\r\n'),
(11, 3, 0, 'recipient'),
(12, 3, 0, 'RECIPIENT'),
(13, 4, 1, ' Frameset'),
(14, 4, 0, 'Master Document'),
(15, 4, 0, 'Template'),
(16, 4, 0, 'Timeline'),
(17, 5, 0, 'Be close'),
(18, 5, 0, 'Contain a Color'),
(19, 5, 1, 'Be larger than the target table'),
(20, 5, 0, 'Overlap'),
(22, 6, 0, '&ltscript&gt'),
(23, 6, 0, '&ltcss&gt'),
(24, 6, 0, 'none of them'),
(25, 6, 1, '&ltstyle&gt'),
(26, 7, 0, 'font'),
(27, 7, 0, 'class'),
(28, 7, 1, 'styles'),
(29, 7, 0, 'style'),
(30, 8, 0, 'body:color=black'),
(31, 8, 0, '{body;color:black}'),
(32, 8, 0, '{body:color=black(body}'),
(33, 8, 1, 'body {color: black}'),
(34, 9, 0, 'text-color='),
(35, 9, 0, 'text-color:'),
(36, 9, 1, 'color:'),
(37, 9, 0, 'fgcolor:'),
(38, 10, 1, 'a {text-decoration:none}'),
(39, 10, 0, 'a {underline:none}'),
(40, 10, 0, 'a {text-decoration:no underline}'),
(41, 10, 0, 'a {decoration:no underline}'),
(42, 11, 0, 'font='),
(43, 11, 0, ' f:'),
(44, 11, 1, 'font-family:'),
(45, 11, 0, 'None of the above'),
(46, 12, 0, 'text-indent:'),
(47, 12, 0, 'margin:'),
(48, 12, 1, 'margin-left:'),
(49, 12, 0, 'indent:'),
(50, 13, 0, 'Select'),
(51, 13, 1, 'If'),
(52, 13, 0, 'Switch'),
(53, 13, 0, 'For'),
(54, 14, 1, 'a.) dateObjectName = new Date([parameters])\r\n'),
(55, 14, 0, 'b.) dateObjectName.new Date([parameters])\r\n'),
(56, 14, 0, 'c.) dateObjectName := new Date([parameters])\r\n'),
(57, 14, 0, 'd.) dateObjectName Date([parameters])\r\n'),
(58, 15, 0, 'Reverse'),
(59, 15, 0, 'Shift'),
(60, 15, 0, 'Slice'),
(61, 15, 1, 'Splice'),
(62, 16, 1, 'a.) window.captureEvents(Event.CLICK);\r\n'),
(63, 16, 0, 'b.) window.handleEvents (Event.CLICK);\r\n'),
(64, 16, 0, 'c.) window.routeEvents(Event.CLICK );\r\n'),
(65, 16, 0, 'd.) window.raiseEvents(Event.CLICK );\r\n'),
(66, 17, 0, 'Mozilla'),
(67, 17, 0, 'Microsoft'),
(68, 17, 1, 'The World Wide Web Consortium'),
(69, 17, 0, 'NVDIA'),
(70, 18, 0, 'a.) &lth6&gt\r\n'),
(71, 18, 0, 'b.) &ltheading&gt\r\n'),
(72, 18, 0, 'c.) &lthead&gt\r\n'),
(73, 18, 1, 'd.) &lth1&gt'),
(74, 19, 1, 'a.) &ltbr /&gt\r\n'),
(75, 19, 0, 'b.) &ltbreak /&gt\r\n'),
(76, 19, 0, 'c.) &ltlb /&gt\r\n'),
(77, 19, 0, 'd.) &ltnbsp&gt\r\n'),
(80, 20, 0, 'a.) &ltscroll&gt\r\n'),
(81, 20, 1, 'b.) &ltmarquee&gt\r\n'),
(82, 20, 0, 'c.) &ltciruler&gt\r\n'),
(83, 20, 0, 'd.) &lttab&gt\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `question_number` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`question_number`, `text`) VALUES
(1, 'PHP stands for what ?'),
(2, 'How do you write \"Hello World\" in PHP'),
(3, 'When you create a \"recipient\" hidden field for a form, which of the following is the ONLY correct way to type the word \"recipient?\"'),
(4, 'Which file controls how your frames will appear?'),
(5, 'What can\'t layers do if you want to convert them to tables?'),
(6, 'Which HTML tag is used to define an internal style sheet?'),
(7, 'Which HTML attribute is used to define inline styles?'),
(8, 'Which is the correct CSS syntax?'),
(9, 'How do you change the text color of an element?'),
(10, 'How do you display hyperlinks without an underline?'),
(11, 'How do you change the font of an element?'),
(12, 'How do you change the left margin of an element?'),
(13, 'Using _______ statement is how you test for a specific condition.'),
(14, 'How to create a Date object in JavaScript?'),
(15, 'The _______ method of an Array object adds and/or removes elements from an array. '),
(16, 'To set up the window to capture all Click events, we use which of the following statement?'),
(17, 'Who is making the Web standards? '),
(18, 'Choose the correct HTML tag for the largest heading '),
(19, 'What is the correct HTML tag for inserting a line break?'),
(20, 'How do I add scrolling text to my page?');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `choices`
--
ALTER TABLE `choices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`question_number`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `choices`
--
ALTER TABLE `choices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
