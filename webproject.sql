-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2019 at 01:41 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `game`
--

CREATE TABLE `game` (
  `gname` varchar(100) NOT NULL,
  `gid` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `game`
--

INSERT INTO `game` (`gname`, `gid`) VALUES
('csgo', 1),
('pubg', 2),
('pubgm', 3),
('codm', 4),
('apex', 5),
('dota', 6),
('fortnite', 7),
('r6', 8),
('clash royale', 9);

-- --------------------------------------------------------

--
-- Table structure for table `hosted`
--

CREATE TABLE `hosted` (
  `eid` int(3) NOT NULL,
  `gid` int(2) NOT NULL,
  `uid` int(3) NOT NULL,
  `ename` varchar(30) DEFAULT NULL,
  `eloc` varchar(30) DEFAULT NULL,
  `erules` varchar(500) NOT NULL,
  `edate` date NOT NULL,
  `price` int(4) DEFAULT NULL,
  `place` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hosted`
--

INSERT INTO `hosted` (`eid`, `gid`, `uid`, `ename`, `eloc`, `erules`, `edate`, `price`, `place`) VALUES
(1, 1, 1, 'Dream Hack 2020', 'Mumbai, India', 'bring your own device', '2020-04-01', 100, 'stadium'),
(2, 1, 1, 'ESL India', 'Sahyadri', 'check our website for rules and regulations.', '2020-04-01', 100, 'sahyadri college of engineering '),
(3, 1, 1, 'Gamer Connect', 'Sahyadri, Manglore', '', '2019-11-23', 100, 'sahyadri college of engineering '),
(4, 1, 1, 'PMCO Spring split 2019', 'Kuala Lumpur', 'check our website for rules and regulation', '2019-11-30', 100, 'stadium'),
(5, 1, 1, 'gully pubg', 'mumbai', 'no rules', '2019-11-30', 5, 'stadium'),
(20, 1, 1, '	dell', 'bang', 'fazf', '2019-11-15', 2525, 'dfaf'),
(21, 1, 1, 'sosc', 'sahyadri', 'visit website', '2019-11-29', 1, 'sahyadri'),
(22, 1, 1, '--', '--', '--', '2019-11-21', 3, '--'),
(23, 1, 2, '	--', '--', '--', '2019-11-22', 1, '--'),
(24, 1, 9, '	SAHYADRI CSGO TOURNAMENT', 'Manglore', '--', '2020-01-01', 10, 'Sahyadri');

-- --------------------------------------------------------

--
-- Table structure for table `joined`
--

CREATE TABLE `joined` (
  `uid` int(3) NOT NULL,
  `eid` int(2) NOT NULL,
  `tname` varchar(20) NOT NULL,
  `mbrs` varchar(50) NOT NULL,
  `altphone` bigint(10) NOT NULL,
  `pay` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `joined`
--

INSERT INTO `joined` (`uid`, `eid`, `tname`, `mbrs`, `altphone`, `pay`) VALUES
(1, 1, 'timesout', '5', 123456789, 'y'),
(1, 3, 'fnatic', '5', 4512369877, 'y'),
(2, 1, '', '', 0, 'n'),
(2, 2, '', '', 0, 'n'),
(2, 3, 'qwertyX', '5', 911, 'n'),
(2, 4, '', '', 0, 'n'),
(2, 22, '', '', 0, 'n'),
(9, 1, '', '', 0, 'n'),
(9, 2, '', '', 0, 'n'),
(9, 3, '', '', 0, 'n');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int(3) NOT NULL,
  `uname` varchar(30) NOT NULL,
  `uemail` varchar(50) NOT NULL,
  `upwd` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `uname`, `uemail`, `upwd`) VALUES
(1, 'admin', 'admin@admin.in', 'admin'),
(2, 'admin', 'a@s', '1'),
(4, 'kk', 'kk@gmail.com', 'asderrgt'),
(5, 'kkk', 'kkk@gmail.com', 'qwer'),
(6, 'bb', 'bb@bb.in', 'qwerty'),
(7, 'qqq', 'qq@qq.com', 'Qwerty@22'),
(8, 'pewcy', 'pewcy@gmail.com', 'Pewcy@22'),
(9, 'Kaushik', 'kaushi@k.com', 'Kaushik@98'),
(10, 'storm', 'storm@d.com', 'Storm@98'),
(12, 'qqqq', 'qqq@qq.in', 'qwertyuio'),
(13, 'qqq', 'qqq@gmail.com', 'qwertyuiop'),
(14, 'qqqq', 'qqqqq@qqq.in', 'qwertyui'),
(15, 'gg', 'gg@wp.com', 'Ggwp@1998'),
(16, 'ggg', 'ggg@wp.in', 'qwertyuio'),
(17, 'qqqqq', 'qwe@qwe.in', 'qwertyuio'),
(18, 'kkk', 'kk@kk.in', '111');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`gid`);

--
-- Indexes for table `hosted`
--
ALTER TABLE `hosted`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `joined`
--
ALTER TABLE `joined`
  ADD PRIMARY KEY (`uid`,`eid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `game`
--
ALTER TABLE `game`
  MODIFY `gid` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `hosted`
--
ALTER TABLE `hosted`
  MODIFY `eid` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
