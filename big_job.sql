-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2023-07-31 23:23:45
-- 服务器版本： 5.7.38-log
-- PHP 版本： 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `big_job`
--

-- --------------------------------------------------------

--
-- 表的结构 `Class`
--

CREATE TABLE `Class` (
  `Class_id` bigint(20) UNSIGNED NOT NULL COMMENT '班级编号',
  `Class_direction` varchar(200) DEFAULT NULL COMMENT '专业方向',
  `Class_grade` varchar(200) DEFAULT NULL COMMENT '年级信息'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='班级';

--
-- 转存表中的数据 `Class`
--

INSERT INTO `Class` (`Class_id`, `Class_direction`, `Class_grade`) VALUES
(202001, '通信工程', '大三'),
(202002, '计算机与科学', '大三'),
(202003, '微电子', '大三'),
(202201, '电子信息', '大一');

-- --------------------------------------------------------

--
-- 表的结构 `Course`
--

CREATE TABLE `Course` (
  `Course_id` bigint(20) UNSIGNED NOT NULL COMMENT '课程编号',
  `Course_name` varchar(200) NOT NULL COMMENT '课程名称',
  `Course_type` varchar(200) NOT NULL COMMENT '课程类型',
  `Course_time` int(11) NOT NULL COMMENT '学时',
  `Course_score` int(11) NOT NULL COMMENT '学分',
  `Course_properties` varchar(200) NOT NULL COMMENT '课程性质',
  `Teacher_id` bigint(20) UNSIGNED NOT NULL COMMENT '工资号（外键）'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='课程';

--
-- 转存表中的数据 `Course`
--

INSERT INTO `Course` (`Course_id`, `Course_name`, `Course_type`, `Course_time`, `Course_score`, `Course_properties`, `Teacher_id`) VALUES
(9001, '高等数学', '数学', 64, 3, '公共必修', 1001),
(9002, '数据结构', '计算机', 32, 2, '学科必修', 1002),
(9003, '数据库系统', '计算机', 32, 2, '专业选修', 1003);

-- --------------------------------------------------------

--
-- 表的结构 `Student`
--

CREATE TABLE `Student` (
  `Student_id` bigint(20) UNSIGNED NOT NULL COMMENT '学号',
  `Student_name` varchar(200) NOT NULL COMMENT '姓名',
  `Student_sex` tinyint(1) NOT NULL COMMENT '性别',
  `Class_id` bigint(20) UNSIGNED NOT NULL COMMENT '班级编号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='学生';

--
-- 转存表中的数据 `Student`
--

INSERT INTO `Student` (`Student_id`, `Student_name`, `Student_sex`, `Class_id`) VALUES
(2301, '贾天昊', 0, 202003),
(2302, '王磊', 1, 202003),
(2303, '贾淑慧', 1, 202003),
(2304, '钱运昊', 0, 202003),
(2305, '汤诗悦', 0, 202003),
(2306, '杨清妍', 0, 202003),
(2307, '宋浩晨', 1, 202003),
(2308, '梁贺祥', 1, 202003),
(2309, '康瑾昆', 0, 202003),
(2310, '程夫子', 0, 202003),
(2311, '任语晨', 1, 202003),
(2312, '杨超', 0, 202003),
(2313, '赵溶溶', 0, 202003),
(2314, '段宜豪', 0, 202003),
(2315, '任欣汝', 0, 202003),
(2316, '唐洋', 1, 202003),
(2317, '金明', 1, 202003),
(2318, '崔晓庆', 1, 202003),
(2319, '梁嘉怡', 1, 202003),
(2320, '范亦菲', 0, 202003),
(2321, '孙欣欣', 0, 202003),
(2322, '赖佳欣', 1, 202003),
(2323, '文溶溶', 0, 202003),
(2324, '田天昊', 1, 202003),
(2325, '汤艳', 0, 202003),
(2326, '夏苒溪', 1, 202003),
(2327, '廖子辰', 1, 202003),
(2328, '陆淼', 0, 202003),
(2329, '薛语晨', 1, 202003),
(2330, '陆晓庆', 0, 202003),
(2331, '钱若萌', 0, 202003),
(2332, '卢洋', 1, 202003),
(2333, '马欣宜', 0, 202003),
(2334, '郭建林', 1, 202003),
(2335, '余佳玉', 0, 202003),
(2336, '侯雅涵', 0, 202003),
(2337, '马苒溪', 0, 202003),
(2338, '高秀兰', 0, 202003),
(2339, '薛刚', 1, 202003),
(2340, '林凌晶', 1, 202003),
(2341, '易泽惠', 1, 202003),
(2342, '史佳琪', 1, 202003),
(2343, '薛夫子', 1, 202003),
(2344, '罗军', 1, 202003),
(2345, '王晨涵', 0, 202003),
(2346, '龚欣慧', 0, 202003),
(2347, '贾国贤', 1, 202003),
(2348, '熊尚', 0, 202003),
(2349, '罗欣汝', 0, 202003),
(2350, '陈美欣', 0, 202001),
(2351, '苏冰洁', 1, 202002),
(2352, '沈冰枫', 1, 202001),
(2353, '苏雄霖', 1, 202002),
(2354, '段添池', 1, 202001),
(2355, '薛磊', 0, 202001),
(2356, '万建政', 0, 202002),
(2357, '易天昊', 1, 202001),
(2358, '唐国栋', 0, 202002),
(2359, '郑天赫', 1, 202201);

-- --------------------------------------------------------

--
-- 表的结构 `Studen_Course`
--

CREATE TABLE `Studen_Course` (
  `Student_id` bigint(20) UNSIGNED NOT NULL COMMENT '学号',
  `Course_id` bigint(20) UNSIGNED NOT NULL COMMENT '课程号',
  `Achievement_exam` double NOT NULL DEFAULT '0' COMMENT '考试成绩',
  `Achievement_bighomework` double NOT NULL DEFAULT '0' COMMENT '大作业成绩',
  `Achievement_peacetime` double NOT NULL DEFAULT '0' COMMENT '平时成绩'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='学生课程中间表';

--
-- 转存表中的数据 `Studen_Course`
--

INSERT INTO `Studen_Course` (`Student_id`, `Course_id`, `Achievement_exam`, `Achievement_bighomework`, `Achievement_peacetime`) VALUES
(2301, 9002, 0, 0, 0),
(2301, 9003, 0, 0, 0),
(2302, 9002, 0, 0, 0),
(2302, 9003, 0, 0, 0),
(2303, 9002, 0, 0, 0),
(2303, 9003, 0, 0, 0),
(2304, 9002, 0, 0, 0),
(2304, 9003, 0, 0, 0),
(2305, 9002, 0, 0, 0),
(2305, 9003, 0, 0, 0),
(2306, 9002, 0, 0, 0),
(2306, 9003, 0, 0, 0),
(2307, 9002, 0, 0, 0),
(2307, 9003, 0, 0, 0),
(2308, 9002, 0, 0, 0),
(2308, 9003, 0, 0, 0),
(2309, 9002, 0, 0, 0),
(2309, 9003, 0, 0, 0),
(2310, 9002, 0, 0, 0),
(2310, 9003, 0, 0, 0),
(2311, 9002, 0, 0, 0),
(2311, 9003, 0, 0, 0),
(2312, 9002, 0, 0, 0),
(2312, 9003, 0, 0, 0),
(2313, 9002, 0, 0, 0),
(2313, 9003, 0, 0, 0),
(2314, 9002, 0, 0, 0),
(2314, 9003, 0, 0, 0),
(2315, 9002, 0, 0, 0),
(2315, 9003, 0, 0, 0),
(2316, 9002, 0, 0, 0),
(2316, 9003, 0, 0, 0),
(2317, 9002, 0, 0, 0),
(2317, 9003, 0, 0, 0),
(2318, 9002, 0, 0, 0),
(2318, 9003, 0, 0, 0),
(2319, 9002, 0, 0, 0),
(2319, 9003, 0, 0, 0),
(2320, 9002, 0, 0, 0),
(2320, 9003, 0, 0, 0),
(2321, 9002, 0, 0, 0),
(2321, 9003, 0, 0, 0),
(2322, 9002, 0, 0, 0),
(2322, 9003, 0, 0, 0),
(2323, 9002, 0, 0, 0),
(2323, 9003, 0, 0, 0),
(2324, 9002, 0, 0, 0),
(2324, 9003, 0, 0, 0),
(2325, 9002, 0, 0, 0),
(2325, 9003, 0, 0, 0),
(2326, 9002, 0, 0, 0),
(2326, 9003, 0, 0, 0),
(2327, 9002, 0, 0, 0),
(2327, 9003, 0, 0, 0),
(2328, 9002, 0, 0, 0),
(2328, 9003, 0, 0, 0),
(2329, 9002, 0, 0, 0),
(2329, 9003, 0, 0, 0),
(2330, 9002, 0, 0, 0),
(2330, 9003, 0, 0, 0),
(2331, 9002, 0, 0, 0),
(2331, 9003, 0, 0, 0),
(2332, 9002, 0, 0, 0),
(2332, 9003, 0, 0, 0),
(2333, 9002, 0, 0, 0),
(2333, 9003, 0, 0, 0),
(2334, 9002, 0, 0, 0),
(2334, 9003, 0, 0, 0),
(2335, 9002, 0, 0, 0),
(2335, 9003, 0, 0, 0),
(2336, 9002, 0, 0, 0),
(2336, 9003, 0, 0, 0),
(2337, 9002, 0, 0, 0),
(2337, 9003, 0, 0, 0),
(2338, 9002, 0, 0, 0),
(2338, 9003, 0, 0, 0),
(2339, 9002, 0, 0, 0),
(2339, 9003, 0, 0, 0),
(2340, 9002, 0, 0, 0),
(2340, 9003, 0, 0, 0),
(2341, 9002, 0, 0, 0),
(2341, 9003, 0, 0, 0),
(2342, 9002, 0, 0, 0),
(2342, 9003, 0, 0, 0),
(2343, 9002, 0, 0, 0),
(2343, 9003, 0, 0, 0),
(2344, 9002, 0, 0, 0),
(2344, 9003, 0, 0, 0),
(2345, 9002, 0, 0, 0),
(2345, 9003, 0, 0, 0),
(2346, 9002, 0, 0, 0),
(2346, 9003, 0, 0, 0),
(2347, 9002, 0, 0, 0),
(2347, 9003, 0, 0, 0),
(2348, 9002, 0, 0, 0),
(2348, 9003, 0, 0, 0),
(2349, 9002, 0, 0, 0),
(2349, 9003, 0, 0, 0),
(2350, 9001, 0, 0, 27),
(2351, 9001, 100, 20, 12),
(2352, 9001, 77, 88, 99),
(2353, 9001, 0, 0, 13),
(2354, 9001, 0, 0, 0),
(2355, 9001, 2, 0, 20),
(2356, 9001, 0, 0, 11),
(2357, 9001, 0, 0, 0),
(2358, 9001, 0, 0, 0),
(2359, 9002, 0, 0, 0),
(2359, 9003, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `Subject`
--

CREATE TABLE `Subject` (
  `Subject_id` bigint(20) UNSIGNED NOT NULL COMMENT '小题号',
  `Subject_KnowledgePointegers` varchar(200) NOT NULL COMMENT '考察知识点',
  `Subject_difficulty` varchar(200) NOT NULL COMMENT '难易程度',
  `Subject_score` int(10) UNSIGNED NOT NULL COMMENT '标准题分',
  `Subject_properties` varchar(200) NOT NULL COMMENT '题目类型',
  `TestPaper_id` bigint(20) UNSIGNED NOT NULL COMMENT '试卷编号',
  `BigSubject` int(10) UNSIGNED NOT NULL COMMENT '所属大题号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `Subject`
--

INSERT INTO `Subject` (`Subject_id`, `Subject_KnowledgePointegers`, `Subject_difficulty`, `Subject_score`, `Subject_properties`, `TestPaper_id`, `BigSubject`) VALUES
(1, '1、2、3、4', '易', 5, '基本知识题', 3, 1),
(1, '3、5、7', '适中', 10, '基本知识题', 3, 2),
(1, '1、2、3、4、5', '适中', 20, '综合性题', 3, 3),
(2, '5、6、7、8', '适中', 5, '基本知识题', 3, 1),
(2, '1、2、3、4、5、6、7、8、9、10', '较难', 15, '综合性题', 3, 2),
(2, '1、6、7、8、9、10', '较难', 20, '综合性题', 3, 3),
(3, '1、2、3、4、5、6、7、8、9、10', '较难', 10, '综合性题', 3, 1),
(3, '1、2、3、4、5、6、7、8、9、10', '较难', 15, '综合性题', 3, 2);

-- --------------------------------------------------------

--
-- 表的结构 `Teacher`
--

CREATE TABLE `Teacher` (
  `Teacher_id` bigint(20) UNSIGNED NOT NULL COMMENT '工资号',
  `Teacher_name` varchar(200) NOT NULL COMMENT '姓名',
  `Teacher_job` varchar(200) DEFAULT NULL COMMENT '职称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='教师';

--
-- 转存表中的数据 `Teacher`
--

INSERT INTO `Teacher` (`Teacher_id`, `Teacher_name`, `Teacher_job`) VALUES
(1001, '毛嘉乐', '教授'),
(1002, '孔霞', '副教授'),
(1003, '余东东', '讲师'),
(1004, '孔晨涵', '助教'),
(1005, '戴芳', '教授'),
(1006, '郝建林', '副教授');

-- --------------------------------------------------------

--
-- 表的结构 `TestPaper`
--

CREATE TABLE `TestPaper` (
  `TestPaper_id` bigint(20) UNSIGNED NOT NULL COMMENT '试卷编号',
  `TestPaper_num` int(10) UNSIGNED NOT NULL COMMENT '大题数',
  `Course_id` bigint(20) UNSIGNED NOT NULL COMMENT '课程编号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='试卷';

--
-- 转存表中的数据 `TestPaper`
--

INSERT INTO `TestPaper` (`TestPaper_id`, `TestPaper_num`, `Course_id`) VALUES
(1, 3, 9001),
(2, 3, 9002),
(3, 3, 9003);

--
-- 转储表的索引
--

--
-- 表的索引 `Class`
--
ALTER TABLE `Class`
  ADD PRIMARY KEY (`Class_id`);

--
-- 表的索引 `Course`
--
ALTER TABLE `Course`
  ADD PRIMARY KEY (`Course_id`),
  ADD KEY `Teacher_id` (`Teacher_id`);

--
-- 表的索引 `Student`
--
ALTER TABLE `Student`
  ADD PRIMARY KEY (`Student_id`),
  ADD KEY `Class_id` (`Class_id`);

--
-- 表的索引 `Studen_Course`
--
ALTER TABLE `Studen_Course`
  ADD PRIMARY KEY (`Student_id`,`Course_id`),
  ADD KEY `Course_id` (`Course_id`);

--
-- 表的索引 `Subject`
--
ALTER TABLE `Subject`
  ADD PRIMARY KEY (`Subject_id`,`TestPaper_id`,`BigSubject`),
  ADD KEY `TestPaper_id` (`TestPaper_id`);

--
-- 表的索引 `Teacher`
--
ALTER TABLE `Teacher`
  ADD PRIMARY KEY (`Teacher_id`);

--
-- 表的索引 `TestPaper`
--
ALTER TABLE `TestPaper`
  ADD PRIMARY KEY (`TestPaper_id`,`Course_id`),
  ADD KEY `Course_id` (`Course_id`);

--
-- 限制导出的表
--

--
-- 限制表 `Course`
--
ALTER TABLE `Course`
  ADD CONSTRAINT `Course_ibfk_1` FOREIGN KEY (`Teacher_id`) REFERENCES `Teacher` (`Teacher_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `Student`
--
ALTER TABLE `Student`
  ADD CONSTRAINT `Student_ibfk_1` FOREIGN KEY (`Class_id`) REFERENCES `Class` (`Class_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `Studen_Course`
--
ALTER TABLE `Studen_Course`
  ADD CONSTRAINT `Studen_Course_ibfk_1` FOREIGN KEY (`Course_id`) REFERENCES `Course` (`Course_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Studen_Course_ibfk_2` FOREIGN KEY (`Student_id`) REFERENCES `Student` (`Student_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `Subject`
--
ALTER TABLE `Subject`
  ADD CONSTRAINT `Subject_ibfk_1` FOREIGN KEY (`TestPaper_id`) REFERENCES `TestPaper` (`TestPaper_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `TestPaper`
--
ALTER TABLE `TestPaper`
  ADD CONSTRAINT `TestPaper_ibfk_1` FOREIGN KEY (`Course_id`) REFERENCES `Course` (`Course_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
