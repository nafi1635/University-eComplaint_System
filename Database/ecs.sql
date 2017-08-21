-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 21, 2017 at 12:21 PM
-- Server version: 5.6.33-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ecs`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE IF NOT EXISTS `admins` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `lid` int(10) NOT NULL,
  `did` int(10) NOT NULL,
  `name` varchar(250) NOT NULL,
  `pwd` varchar(100) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `email` varchar(250) NOT NULL,
  `cabin` varchar(100) NOT NULL,
  `imagepath` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `lid`, `did`, `name`, `pwd`, `phone`, `email`, `cabin`, `imagepath`) VALUES
(1, 1001, 101, 'Venkateshwarlu', 'puli123', '0', '', '', ''),
(2, 1002, 102, 'Samith pradhan ', 'samit123', '9652598983', 'samitcs@gmail.com', 'sg-123', 'image/admins/samit.jpg'),
(3, 1003, 102, 'Anjaneyulu', 'anjaneyulu123', '9573352355', 'anjaneyuluendurthi@gmail.com', '', ''),
(4, 1004, 103, 'Hareen', 'hareen123', '0', '', '', ''),
(6, 1005, 105, 'Shyam', 'shyam123', '0', '', '', ''),
(7, 1006, 104, 'Ranjith Sir', 'ranjith123', '9000911819', 'ranjithgarnepudi@gmail.com', '', 'image/admins/ranjit.jpg'),
(8, 1008, 104, 'Raj kumar', 'raj123', '0', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE IF NOT EXISTS `complaint` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `aid` int(10) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `complaint` varchar(500) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `statu` int(10) NOT NULL,
  `stata` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=53 ;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`id`, `uid`, `aid`, `subject`, `complaint`, `created_at`, `statu`, `stata`) VALUES
(27, 4, 4, 'Network problem', 'Hello Sir, We are not able to access eenadu website since past few weeks. Please reolve this problem very fastly.', '2017-03-24 11:03:04', 1, 1),
(28, 4, 2, 'I had not register for placement cell', 'Sir, I had not registered for placement cell because i was not here at the time of registration. So please give the permission to register again.', '2017-03-24 16:05:40', 1, 1),
(34, 5, 1, 'Nothing', 'Just checking', '2017-03-28 04:27:26', 0, 0),
(36, 6, 4, 'switch was not working sir.', 'we are not getting google properly please try to solve that issue.', '2017-03-28 09:14:49', 0, 0),
(40, 9, 1, 'about lunch', 'today lunch was worst', '2017-04-04 08:52:42', 1, 0),
(41, 8, 4, 'Regarding Projector', 'Projector is not working in our class AB-1 103 E3CSE', '2017-04-04 08:55:22', 0, 1),
(42, 9, 4, 'Regarding Lan', 'Lanport is not working properly in class AB-1 103 E3CSE', '2017-04-04 09:07:17', 0, 0),
(44, 6, 1, 'chicken', 'chicken was not good please try to cook well.\r\n', '2017-04-04 09:58:24', 0, 0),
(47, 4, 7, 'I had not enrolled for placement cell', 'Sir I am student of the class ABI-103, i have not enrolled for placement cell beacause i am not in the campus at the time of placement cell registration. So please give the permission to accept my registration.', '2017-04-14 16:39:27', 1, 1),
(48, 12, 3, 'Not enrolled for placment', 'Sir i dont have time to register so please register your self', '2017-04-14 16:55:07', 1, 1),
(49, 13, 2, 'clfme', 'fwgwg', '2017-04-15 06:22:44', 1, 1),
(50, 13, 1, 'edfd', 'ssss', '2017-04-15 06:23:45', 0, 0),
(51, 4, 2, 'hi sir', 'how r u', '2017-04-15 07:44:47', 0, 0),
(52, 5, 4, 'asd', 'asfd', '2017-04-15 09:01:18', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE IF NOT EXISTS `contact_us` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `subject` varchar(250) NOT NULL,
  `message` varchar(500) NOT NULL,
  `timestamp` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `subject`, `message`, `timestamp`) VALUES
(11, 'Md Nazeemoddeen', 'nazeemoddin.cs1635@gmail.com', 'interface in not good', 'ajskd', '2017-03-21 05:50:32.000000'),
(12, 'Nazeemoddin', 'nafi.tycoon1635@gmail.com', 'interface in not good', 'afd', '2017-03-21 05:56:22.000000'),
(13, 'asdfdsasda', 'nazeemoddin.cs1635@gmail.com', 'interface in not good', 'asf', '2017-03-21 06:27:53.000000'),
(14, 'nafi', 'nafi.tycoon1635@gmail.com', 'interface in not good', 'jhji;', '2017-03-21 06:41:10.000000'),
(15, 'Pallamolla Sai', 'pallamollasai@gmail.com', 'Nothing', 'Just Checking', '2017-03-28 04:27:07.000000'),
(16, 'Nazeemoddin', 'nazeemoddin.cs1635@gmail.com', 'interface in not good', 'jgjhfjgh', '2017-03-28 05:37:26.000000'),
(17, 'fghjk', 'nazeemoddin.cs1635@gmail.com', 'dfghj', 'fgh', '2017-03-28 12:45:30.000000'),
(18, 'AQW', 'd@gmail.com', 'DSA', 'Sd', '2017-04-04 09:38:22.000000'),
(19, 'Rajashekar', 'singarapurajashekar@gmail.com', 'Thank you.', 'Thanks for visiting our web site.', '2017-04-04 10:02:02.000000');

-- --------------------------------------------------------

--
-- Table structure for table `dept_name`
--

CREATE TABLE IF NOT EXISTS `dept_name` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `did` int(10) NOT NULL,
  `name` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `dept_name`
--

INSERT INTO `dept_name` (`id`, `did`, `name`) VALUES
(1, 101, 'Mess'),
(3, 103, 'Network'),
(4, 104, 'Hod'),
(5, 105, 'Sports'),
(6, 102, 'Placement');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `aid` int(10) NOT NULL,
  `feedback` varchar(250) NOT NULL,
  `rating` double NOT NULL,
  `time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `uid`, `aid`, `feedback`, `rating`, `time`) VALUES
(9, 1, 7, 'Yeah, Ranjith Sir reacted fastly..Thank you sir', 9.5, '2017-03-24 09:50:26'),
(10, 5, 4, 'Fine Sir', 9.5, '2017-03-28 05:01:00'),
(11, 6, 4, 'ok', 8, '2017-03-28 09:17:36'),
(12, 9, 1, 'bokke', 0, '2017-04-04 08:57:12'),
(13, 9, 4, 'ok', 7, '2017-04-04 09:05:43'),
(14, 6, 1, 'Not bad.', 5, '2017-04-04 09:59:15'),
(15, 4, 7, 'Thank you very much for supporting me.', 10, '2017-04-14 17:08:02'),
(16, 13, 4, 'vvv', -10, '2017-04-15 06:28:06'),
(17, 4, 4, 'superb sir', 10, '2017-04-15 07:48:26');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE IF NOT EXISTS `images` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `uid`) VALUES
(1, 0),
(2, 0),
(3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `uid` int(255) NOT NULL AUTO_INCREMENT,
  `bid` varchar(7) NOT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `fullname` varchar(200) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `bday` varchar(100) DEFAULT NULL,
  `class` varchar(100) NOT NULL,
  `dorm` varchar(100) NOT NULL,
  `sem` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `pwd` varchar(200) NOT NULL,
  `uname` varchar(200) DEFAULT NULL,
  `time` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `branch` varchar(100) NOT NULL,
  `imagepath` varchar(200) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `bid`, `fname`, `lname`, `fullname`, `gender`, `bday`, `class`, `dorm`, `sem`, `email`, `phone`, `pwd`, `uname`, `time`, `branch`, `imagepath`) VALUES
(4, 'B121635', '', '', 'Nazeemoddin Mohammad', 'Male', '', '', '', '', '', '', 'swathi', '', '2017-04-14 10:05:21.977944', 'CSE', 'uploads/IMG_20161120_193400.jpg'),
(5, 'B121911', '', '', 'Pallamolla Sai', 'Male', '', '', '', '', 'pallamollasai@gmail.com', '0', 'rgukt123', '', '2017-04-04 11:19:37.598934', 'CSE', 'uploads/_allinone_photo.jpg'),
(6, 'B111277', 'Rajashekar', 'shingarapu', 'Rajashekar singarapu', 'Male', '10/05/1996', 'ABI-103', 'SOUTH BLOCK ', 'SEM-II', 'singarapurajashekar@gmail.com', '9010904914', 'sraja123', 'sraja123', '2017-04-14 10:21:55.856065', 'CSE', 'uploads/Raja.png'),
(7, 'B121633', '', '', 'Yashwanth', 'Male', '', '', '', '', 'yashwanth@gmail.com', '', 'rgukt123', '', '2017-03-28 15:17:34.000000', 'CSE', ''),
(8, 'B121876', 'Rajendar', 'Oddepally', 'Rajendar Oddepally', 'Male', '06031997', 'AB-1  103', 'BH-2  S103', 'E3 Sem2', '8897090354raj@gmail.com', '8897090354', '8897090354', 'Rajendar Oddepally', '2017-04-04 09:59:17.736736', 'CSE', 'uploads/IMG_20150817_104311_691.jpg'),
(9, 'hello', 'hii', 'hii', 'hii', 'Male', '', '', '', '', 'hii@gmail.com', '', 'hello', 'hii', '2017-04-04 08:55:59.558846', 'CSE', ''),
(10, 'B121781', '', '', '', 'Male', '', '', '', '', 'nazeemoddin.cs1635@gmail.com', '', 'rgukt123', '', '2017-04-04 09:29:59.000000', 'CSE', ''),
(12, 'B121918', 'Srikanth', 'Dasari', '', 'Male', '18021996', 'ab1-103', 'bh1-s125', 'e3-s2', 'srikanthdasari1918@gmail.com', '8008341852', 'rgukt132', 'Srikanth', '2017-04-14 16:53:52.866029', 'CSE', 'uploads/12.jpeg'),
(13, 'db', '', '', '', 'Male', '', '', '', '', 'abc@abc.com', '', '12345', '', '2017-04-15 06:20:48.000000', 'CSE', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
