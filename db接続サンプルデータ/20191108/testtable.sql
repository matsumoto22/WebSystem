-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2019 年 11 朁E12 日 06:24
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
('1A', 'qrtest', 'RF01'),
('1B', 'qrtest', 'RF02'),
('1C', 'qrtest', 'RF03'),
('1D', 'qrtest', 'RF04'),
('2A', 'qrtest', 'RF01'),
('3A', 'qrtest', 'RF02'),
('4A', 'qrtest', 'RF03'),
('9D1', 'QR', 'RF03'),
('9D2', 'QR', 'RF03');

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

-- --------------------------------------------------------

--
-- テーブルの構造 `m_lesson`
--

CREATE TABLE `m_lesson` (
  `m_lesson_id` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT '授業番号',
  `m_lesson_name` varchar(90) COLLATE utf8_unicode_ci NOT NULL COMMENT '授業名称',
  `m_lessonclassifcation_id` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT '授業分類番号',
  `m_lesson_implementationday` int(2) NOT NULL COMMENT '実施日数',
  `m_lesson_attendancepercentage` int(3) NOT NULL COMMENT '必要出席割合',
  `m_lesson_getunits` int(2) NOT NULL COMMENT '取得単位数',
  `m_lessondivision_id` varchar(4) COLLATE utf8_unicode_ci NOT NULL COMMENT '授業区分番号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='授業マスタ';

--
-- テーブルのデータのダンプ `m_lesson`
--

INSERT INTO `m_lesson` (`m_lesson_id`, `m_lesson_name`, `m_lessonclassifcation_id`, `m_lesson_implementationday`, `m_lesson_attendancepercentage`, `m_lesson_getunits`, `m_lessondivision_id`) VALUES
('T0001', 'ゼミナール1', 'TC01', 30, 80, 2, 'TD01'),
('T0002', 'ゼミナール2', 'TC01', 30, 80, 2, 'TD01'),
('T0003', 'ゼミナール3', 'TC01', 30, 80, 2, 'TD01'),
('T0004', 'ゼミナール4', 'TC01', 30, 80, 2, 'TD01'),
('T0005', 'COBOL1', 'TC01', 30, 80, 4, 'TD01'),
('T0006', 'COBOL応用', 'TC03', 30, 80, 2, 'TD02');

-- --------------------------------------------------------

--
-- テーブルの構造 `m_lessonclassification`
--

CREATE TABLE `m_lessonclassification` (
  `m_lessonclassification_id` varchar(4) COLLATE utf8_unicode_ci NOT NULL COMMENT '授業分類番号',
  `m_lessonclassification_name` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT '授業分類名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='授業分類マスタ';

--
-- テーブルのデータのダンプ `m_lessonclassification`
--

INSERT INTO `m_lessonclassification` (`m_lessonclassification_id`, `m_lessonclassification_name`) VALUES
('TC01', '選択'),
('TC02', '選択必修'),
('TC03', '自由');

-- --------------------------------------------------------

--
-- テーブルの構造 `m_lessondivision`
--

CREATE TABLE `m_lessondivision` (
  `m_lessondivision_id` varchar(4) COLLATE utf8_unicode_ci NOT NULL COMMENT '授業区分番号',
  `m_lessondivision_name` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT '授業区分名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='授業区分マスタ';

--
-- テーブルのデータのダンプ `m_lessondivision`
--

INSERT INTO `m_lessondivision` (`m_lessondivision_id`, `m_lessondivision_name`) VALUES
('TD01', '専門知識'),
('TD02', '専門応用'),
('TD03', '関連知識');

-- --------------------------------------------------------

--
-- テーブルの構造 `m_lessonperiod`
--

CREATE TABLE `m_lessonperiod` (
  `m_lessonperiod_id` int(1) NOT NULL COMMENT '授業時限番号',
  `m_lessonperiod_starttime` time NOT NULL COMMENT '授業開始時間',
  `m_lessonperiod_endtime` time NOT NULL COMMENT '授業終了時間'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='授業時限マスタ';

--
-- テーブルのデータのダンプ `m_lessonperiod`
--

INSERT INTO `m_lessonperiod` (`m_lessonperiod_id`, `m_lessonperiod_starttime`, `m_lessonperiod_endtime`) VALUES
(1, '09:10:00', '10:40:00'),
(2, '10:50:00', '12:20:00'),
(3, '13:10:00', '14:40:00'),
(4, '14:50:00', '16:20:00'),
(5, '16:30:00', '18:00:00');

-- --------------------------------------------------------

--
-- テーブルの構造 `t_yearlessondetails`
--

CREATE TABLE `t_yearlessondetails` (
  `t_yearlesson_id` varchar(11) COLLATE utf8_unicode_ci NOT NULL COMMENT '年度授業番号',
  `t_yearlessondetails_dayofweek` int(1) NOT NULL COMMENT '曜日番号',
  `m_lessonperiod_id` int(1) NOT NULL COMMENT '授業時限番号',
  `t_yearlessondetails_implementationunittime` int(1) NOT NULL COMMENT '実施コマ数',
  `t_classroom_id` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT '教室番号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='年度授業明細テーブル';

--
-- テーブルのデータのダンプ `t_yearlessondetails`
--

INSERT INTO `t_yearlessondetails` (`t_yearlesson_id`, `t_yearlessondetails_dayofweek`, `m_lessonperiod_id`, `t_yearlessondetails_implementationunittime`, `t_classroom_id`) VALUES
('T000520191A', 2, 2, 1, '8C');

-- --------------------------------------------------------

--
-- テーブルの構造 `t_yearlesson_id`
--

CREATE TABLE `t_yearlesson_id` (
  `t_yearlesson_id` varchar(11) COLLATE utf8_unicode_ci NOT NULL COMMENT '年度授業番号',
  `t_yearlesson_year` year(4) NOT NULL COMMENT '授業年度',
  `t_lesson_id` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT '授業番号',
  `t_class_id` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT '受講クラス番号',
  `t_teacher_id` varchar(6) COLLATE utf8_unicode_ci NOT NULL COMMENT '担当教員番号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='年度授業テーブル';

--
-- テーブルのデータのダンプ `t_yearlesson_id`
--

INSERT INTO `t_yearlesson_id` (`t_yearlesson_id`, `t_yearlesson_year`, `t_lesson_id`, `t_class_id`, `t_teacher_id`) VALUES
('T000520191A', 2019, 'T0005', '1A', 'E00001'),
('T000520191B', 2019, 'T0005', '1B', 'E00002');

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
-- Indexes for table `m_lesson`
--
ALTER TABLE `m_lesson`
  ADD PRIMARY KEY (`m_lesson_id`);

--
-- Indexes for table `m_lessonclassification`
--
ALTER TABLE `m_lessonclassification`
  ADD PRIMARY KEY (`m_lessonclassification_id`);

--
-- Indexes for table `m_lessondivision`
--
ALTER TABLE `m_lessondivision`
  ADD PRIMARY KEY (`m_lessondivision_id`);

--
-- Indexes for table `m_lessonperiod`
--
ALTER TABLE `m_lessonperiod`
  ADD PRIMARY KEY (`m_lessonperiod_id`);

--
-- Indexes for table `t_yearlesson_id`
--
ALTER TABLE `t_yearlesson_id`
  ADD PRIMARY KEY (`t_yearlesson_id`);

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
