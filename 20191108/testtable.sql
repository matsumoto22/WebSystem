-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2019 年 11 朁E08 日 11:14
-- サーバのバージョン： 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testtable`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `m_class`
--

CREATE TABLE `m_class` (
  `m_class_year` date NOT NULL COMMENT 'クラス年度',
  `m_class_id` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'クラス番号',
  `m_class_studentid` varchar(6) COLLATE utf8_unicode_ci NOT NULL COMMENT '生徒クラス番号',
  `m_student_id` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT '学籍番号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='クラスマスタ';

--
-- テーブルのデータのダンプ `m_class`
--

INSERT INTO `m_class` (`m_class_year`, `m_class_id`, `m_class_studentid`, `m_student_id`) VALUES
('2010-04-01', '1A', '1A01SI', 'A0001'),
('2010-04-01', '1A', '1A02SI', 'A0002'),
('2010-04-01', '1A', '1A03SI', 'A0003'),
('2010-04-01', '1A', '1A04SI', 'A0004');

-- --------------------------------------------------------

--
-- テーブルの構造 `m_classroom`
--

CREATE TABLE `m_classroom` (
  `m_classroom_id` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT '教室番号',
  `m_classroom_qrdate` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '教室QRデータ',
  `m_classroomform_id` varchar(4) COLLATE utf8_unicode_ci NOT NULL COMMENT '教室形態番号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `m_classroom`
--

INSERT INTO `m_classroom` (`m_classroom_id`, `m_classroom_qrdate`, `m_classroomform_id`) VALUES
('1-A', 'qrtest', 'RF01'),
('1-B', 'qrtest', 'RF02'),
('1-C', 'qrtest', 'RF03'),
('1-D', 'qrtest', 'RF04'),
('2-A', 'qrtest', 'RF01'),
('3-A', 'qrtest', 'RF02'),
('4-A', 'qrtest', 'RF03');

-- --------------------------------------------------------

--
-- テーブルの構造 `m_classroomform`
--

CREATE TABLE `m_classroomform` (
  `m_classroomform_id` varchar(4) COLLATE utf8_unicode_ci NOT NULL COMMENT '教室形態番号',
  `m_classroomform_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT '教室形態名'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='教室形態マスタ';

--
-- テーブルのデータのダンプ `m_classroomform`
--

INSERT INTO `m_classroomform` (`m_classroomform_id`, `m_classroomform_name`) VALUES
('RF01', '通常'),
('RF02', 'PC常設'),
('RF03', 'PC可'),
('RF04', 'その他');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `m_class`
--
ALTER TABLE `m_class`
  ADD PRIMARY KEY (`m_class_studentid`);

--
-- Indexes for table `m_classroom`
--
ALTER TABLE `m_classroom`
  ADD PRIMARY KEY (`m_classroom_id`),
  ADD KEY `m_classroomform_id` (`m_classroomform_id`);

--
-- Indexes for table `m_classroomform`
--
ALTER TABLE `m_classroomform`
  ADD PRIMARY KEY (`m_classroomform_id`);

--
-- ダンプしたテーブルの制約
--

--
-- テーブルの制約 `m_classroom`
--
ALTER TABLE `m_classroom`
  ADD CONSTRAINT `m_classroom_ibfk_1` FOREIGN KEY (`m_classroomform_id`) REFERENCES `m_classroomform` (`m_classroomform_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
