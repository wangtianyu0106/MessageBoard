-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2020-04-30 15:02:17
-- 服务器版本： 5.5.57-log
-- PHP Version: 5.4.45

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `submitinformati`
--

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL COMMENT 'ID',
  `user` varchar(10) NOT NULL COMMENT '用户',
  `age` int(11) NOT NULL COMMENT '年龄'
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=gbk;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `user`, `age`) VALUES
(1, '踏雪', 28),
(2, '琉璃', 20),
(3, '子规', 18),
(4, '安辞镜', 19),
(5, '晓夜', 17),
(6, '球', 18),
(7, '123', 256),
(8, '我', 12),
(9, '123', 456),
(10, '发的', 18),
(11, '小榄', 18),
(12, '小榄', 28),
(13, '读书方法', 0),
(14, '小风', 25),
(15, 'df', 18),
(16, '潇潇', 20),
(17, '23', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',AUTO_INCREMENT=18;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
