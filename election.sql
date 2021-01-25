-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 28, 2020 at 09:03 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `election`
--

-- --------------------------------------------------------

--
-- Table structure for table `activites`
--

DROP TABLE IF EXISTS `activites`;
CREATE TABLE IF NOT EXISTS `activites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `note` varchar(45) DEFAULT NULL,
  `url` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `regtime` datetime DEFAULT NULL,
  `order` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `activites`
--

INSERT INTO `activites` (`id`, `name`, `note`, `url`, `status`, `regtime`, `order`) VALUES
(1, 'Dashboard', NULL, 'Dashboard', 1, NULL, '1'),
(2, 'Person Register', NULL, 'personregister', 1, NULL, '1'),
(3, 'Home', NULL, 'Home', 1, NULL, '1'),
(4, 'Send OTP Email', NULL, 'sendData', 1, NULL, '1'),
(5, 'Reports', NULL, 'reports', 1, NULL, '1'),
(6, 'Vote Report', NULL, 'customer_visit_report', 1, NULL, '1'),
(7, 'Citizen details', NULL, 'citizen_page', 1, NULL, '1'),
(8, 'Politicion Details', NULL, 'politicion_page', 1, NULL, '1');

-- --------------------------------------------------------

--
-- Table structure for table `citizens`
--

DROP TABLE IF EXISTS `citizens`;
CREATE TABLE IF NOT EXISTS `citizens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reff_no` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `person_id` int(11) NOT NULL,
  `district_id` int(11) NOT NULL,
  `code` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_citizens_person1_idx` (`person_id`),
  KEY `fk_citizens_district1_idx` (`district_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `citizens`
--

INSERT INTO `citizens` (`id`, `reff_no`, `status`, `person_id`, `district_id`, `code`) VALUES
(2, '#555889', 2, 1, 2, '45555');

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

DROP TABLE IF EXISTS `district`;
CREATE TABLE IF NOT EXISTS `district` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`id`, `name`, `status`) VALUES
(1, 'Westren point', 1),
(2, 'South Province', 1);

-- --------------------------------------------------------

--
-- Table structure for table `election`
--

DROP TABLE IF EXISTS `election`;
CREATE TABLE IF NOT EXISTS `election` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `regtime` datetime DEFAULT NULL,
  `max_count` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `election`
--

INSERT INTO `election` (`id`, `name`, `status`, `regtime`, `max_count`) VALUES
(1, 'Distric vise', 1, NULL, '3');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `regtime` datetime DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `logincol` varchar(45) DEFAULT NULL,
  `person_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_login_person1_idx` (`person_id`),
  KEY `fk_login_role1_idx` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `status`, `regtime`, `role`, `logincol`, `person_id`, `role_id`) VALUES
(2, 'test', '1', 1, NULL, 2, NULL, 1, 2),
(3, 'SS@GMAI.COM', 'DD', 1, '2020-09-28 08:29:08', 0, '', 3, 2),
(4, 'SS@GMAI.COM', 'DD', 1, '2020-09-28 08:32:33', 0, '', 4, 2),
(5, 'SS@GMAI.COM', 'DD', 1, '2020-09-28 08:33:45', 0, '', 5, 2),
(6, 'SS@GMA.COM', 'SS', 1, '2020-09-28 08:34:49', 0, '', 6, 2),
(7, 'SS@GMA.COM', 'SS', 1, '2020-09-28 08:35:43', 0, '', 7, 2),
(8, 'SS@GMA.COM', 'SS', 1, '2020-09-28 08:36:51', 0, '', 8, 2),
(9, 'ss@gmail.com', 's', 1, '2020-09-28 08:37:39', 0, '', 9, 2),
(10, 'ss@g.com', 's', 1, '2020-09-28 08:38:38', 0, '', 10, 2),
(11, 'hj', 'jhjk', 1, '2020-09-28 08:40:17', 0, '', 11, 2),
(12, 's', 's', 1, '2020-09-28 11:30:23', 0, '', 12, 2),
(13, 'sd', 'dsd', 1, '2020-09-28 11:35:43', 0, '', 13, 2),
(14, 'thilina2u@gmail.com', 'sdsd', 1, '2020-09-28 12:43:15', 0, '', 14, 2);

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
CREATE TABLE IF NOT EXISTS `person` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(45) DEFAULT NULL,
  `mname` varchar(45) DEFAULT NULL,
  `lname` varchar(45) DEFAULT NULL,
  `regtime` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `add1` varchar(45) DEFAULT NULL,
  `add2` varchar(45) DEFAULT NULL,
  `add3` varchar(45) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `mobile1` varchar(45) DEFAULT NULL,
  `mobile2` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `fax` varchar(45) DEFAULT NULL,
  `nic` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`id`, `fname`, `mname`, `lname`, `regtime`, `status`, `add1`, `add2`, `add3`, `dob`, `mobile1`, `mobile2`, `email`, `fax`, `nic`) VALUES
(1, 'thilina', 'FUCKRERRRRRRR', 'FUCKRERRRRRRR', '2020-09-28 14:37:47', 1, 'FUCKRERRRRRRR', 'FUCKRERRRRRRR', 'FUCKRERRRRRRR', '1992-09-02', '01122222', '232322323', 'OrizonTechnology.01@gmail.com', 'rrrrrr', '23132132132V'),
(2, 'thilina', 'sss', 'dddd', '2020-09-24 04:01:42', 1, '2222', '333', '444', '1992-09-02', '01122222', '232322323', 'fnhproject123@gmail.com', 'rrrrrr', '23132132132V'),
(3, 'ASAS', 'SAS', 'AS', '2020-09-28 08:29:08', 1, 'AS', 'AS', 'AS', '2020-09-01', 'SDS', 'SD', 'SS@GMAI.COM', 'DD', 'DD'),
(4, 'ASAS', 'SAS', 'AS', '2020-09-28 08:32:33', 1, 'AS', 'AS', 'AS', '2020-09-01', 'SDS', 'SD', 'SS@GMAI.COM', 'DD', 'DD'),
(5, 'ASAS', 'SAS', 'AS', '2020-09-28 08:33:45', 1, 'AS', 'AS', 'AS', '2020-09-01', 'SDS', 'SD', 'SS@GMAI.COM', 'DD', 'DD'),
(6, 'SDS', 'SD', 'SD', '2020-09-28 08:34:49', 1, 'SD', 'SD', 'SD', '2020-09-01', 'SSS', 'SDS', 'SS@GMA.COM', 'SS', 'SS'),
(7, 'SDS', 'SD', 'SD', '2020-09-28 08:35:43', 1, 'SD', 'SD', 'SD', '2020-09-01', 'SSS', 'SDS', 'SS@GMA.COM', 'SS', 'SS'),
(8, 'SDS', 'SD', 'SD', '2020-09-28 08:36:51', 1, 'SD', 'SD', 'SD', '2020-09-01', 'SSS', 'SDS', 'SS@GMA.COM', 'SS', 'SS'),
(9, 'sds', 'sdsd', 'sdsd', '2020-09-28 08:37:39', 1, 'sdsdsdsd', 'sdsd', 'sd', '2020-09-01', 's', 's', 'ss@gmail.com', 's', 's'),
(10, 'ss', 'jkh', 'jkhkj', '2020-09-28 08:38:38', 1, 'jkh', 'kjhkjh', 'jkh', '2020-09-01', 's', 's', 'ss@g.com', 's', 's'),
(11, 'hjg', 'gjhg', 'jhghjg', '2020-09-28 08:40:16', 1, 'hgjh', 'hjgh', 'hjghj', '2020-09-01', 'jhj', 'jhjk', 'hj', 'j', 'jhjk'),
(12, 'sds', 'sd', 'sd', '2020-09-28 11:30:22', 1, 'sd', 'sd', 'sd', '2020-09-01', '', 'ss', 's', 'SS', 's'),
(13, 'sd', 'sd', 'sd', '2020-09-28 11:35:43', 1, 'sd', 'sd', 'dsd', '2020-09-01', 'sd', 'sd', 'sd', 'sd', 'dsd'),
(14, 'zxczxc', 'xcxc', 'xccx', '2020-09-28 15:27:21', 1, 'xcxc', 'xcxc', 'xcxc', '2020-09-01', 'sdsd', 'sdsd', 'thilina2u@gmail.com', 'sdsd', 'sdsd');

-- --------------------------------------------------------

--
-- Table structure for table `politicions`
--

DROP TABLE IF EXISTS `politicions`;
CREATE TABLE IF NOT EXISTS `politicions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reff_code` varchar(45) DEFAULT NULL,
  `otp_code` varchar(45) DEFAULT NULL,
  `regtime` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `person_id` int(11) NOT NULL,
  `team_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_politicions_person_idx` (`person_id`),
  KEY `fk_politicions_team1_idx` (`team_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `politicions`
--

INSERT INTO `politicions` (`id`, `reff_code`, `otp_code`, `regtime`, `status`, `person_id`, `team_id`) VALUES
(1, '#4444', '7654', NULL, 1, 1, 1),
(2, '#4444', '7658', NULL, 1, 2, 2),
(3, 'SSSSS', '[C@7c8969b5', '2020-09-28 08:32:33', 1, 4, 1),
(4, 'SSSSS', '[C@3743374b', '2020-09-28 08:33:45', 1, 5, 1),
(5, '1212', '[C@490d18fa', '2020-09-28 08:34:49', 1, 6, 1),
(6, '1212', '[C@657e5d91', '2020-09-28 08:35:43', 1, 7, 1),
(7, '1212', '[C@306b6d3c', '2020-09-28 08:36:51', 1, 8, 1),
(8, 'ss', '[C@75d02723', '2020-09-28 08:37:39', 1, 9, 2),
(9, 'ss', '[C@7d45a91f', '2020-09-28 08:38:38', 1, 10, 1),
(10, 'ss', '[C@71c39489', '2020-09-28 08:40:17', 1, 11, 1),
(11, 'ss', '[C@79635a12', '2020-09-28 11:30:23', 1, 12, 1),
(12, 'sdsdsd', '[C@63a42d91', '2020-09-28 11:35:43', 1, 13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `politicions_has_election`
--

DROP TABLE IF EXISTS `politicions_has_election`;
CREATE TABLE IF NOT EXISTS `politicions_has_election` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `politicions_id` int(11) NOT NULL,
  `election_id` int(11) NOT NULL,
  `regtime` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `district_id` int(11) NOT NULL,
  `number_ele` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_politicions_has_election_election1_idx` (`election_id`),
  KEY `fk_politicions_has_election_politicions1_idx` (`politicions_id`),
  KEY `fk_politicions_has_election_district1_idx` (`district_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `politicions_has_election`
--

INSERT INTO `politicions_has_election` (`id`, `politicions_id`, `election_id`, `regtime`, `status`, `district_id`, `number_ele`) VALUES
(1, 1, 1, NULL, 1, 1, '2222'),
(2, 2, 1, NULL, 1, 2, '3333');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
CREATE TABLE IF NOT EXISTS `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `regtime` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`, `regtime`, `status`) VALUES
(1, 'Admin', NULL, 1),
(2, 'Mobile', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `role_has_activites`
--

DROP TABLE IF EXISTS `role_has_activites`;
CREATE TABLE IF NOT EXISTS `role_has_activites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `activites_id` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `regtime` datetime DEFAULT NULL,
  `token` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_role_has_activites_activites1_idx` (`activites_id`),
  KEY `fk_role_has_activites_role1_idx` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role_has_activites`
--

INSERT INTO `role_has_activites` (`id`, `role_id`, `activites_id`, `status`, `regtime`, `token`) VALUES
(2, 1, 3, 1, NULL, NULL),
(3, 1, 4, 1, NULL, NULL),
(4, 1, 2, 1, NULL, NULL),
(5, 1, 5, 1, NULL, NULL),
(6, 1, 6, 1, NULL, NULL),
(7, 1, 7, 1, NULL, NULL),
(8, 1, 8, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
CREATE TABLE IF NOT EXISTS `team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`id`, `name`, `status`) VALUES
(1, 'UNP', 1),
(2, 'Sri Lanka Podujana Peramuna', 1),
(3, 'New Democratic Front', 1),
(4, 'National Movement for People\'s Power', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vote`
--

DROP TABLE IF EXISTS `vote`;
CREATE TABLE IF NOT EXISTS `vote` (
  `id` int(11) NOT NULL,
  `citizens_id` int(11) NOT NULL,
  `politicions_has_election_id` int(11) NOT NULL,
  `regtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_citizens_has_politicions_has_election_citizens1_idx` (`citizens_id`),
  KEY `fk_vote_politicions_has_election1_idx` (`politicions_has_election_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `citizens`
--
ALTER TABLE `citizens`
  ADD CONSTRAINT `fk_citizens_district1` FOREIGN KEY (`district_id`) REFERENCES `district` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_citizens_person1` FOREIGN KEY (`person_id`) REFERENCES `person` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `fk_login_person1` FOREIGN KEY (`person_id`) REFERENCES `person` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_login_role1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `politicions`
--
ALTER TABLE `politicions`
  ADD CONSTRAINT `fk_politicions_person` FOREIGN KEY (`person_id`) REFERENCES `person` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_politicions_team1` FOREIGN KEY (`team_id`) REFERENCES `team` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `politicions_has_election`
--
ALTER TABLE `politicions_has_election`
  ADD CONSTRAINT `fk_politicions_has_election_district1` FOREIGN KEY (`district_id`) REFERENCES `district` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_politicions_has_election_election1` FOREIGN KEY (`election_id`) REFERENCES `election` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_politicions_has_election_politicions1` FOREIGN KEY (`politicions_id`) REFERENCES `politicions` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `role_has_activites`
--
ALTER TABLE `role_has_activites`
  ADD CONSTRAINT `fk_role_has_activites_activites1` FOREIGN KEY (`activites_id`) REFERENCES `activites` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_role_has_activites_role1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `vote`
--
ALTER TABLE `vote`
  ADD CONSTRAINT `fk_citizens_has_politicions_has_election_citizens1` FOREIGN KEY (`citizens_id`) REFERENCES `citizens` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_vote_politicions_has_election1` FOREIGN KEY (`politicions_has_election_id`) REFERENCES `politicions_has_election` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
