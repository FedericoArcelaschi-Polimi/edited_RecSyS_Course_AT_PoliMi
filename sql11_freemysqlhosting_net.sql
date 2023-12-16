-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Host: sql11.freemysqlhosting.net
-- Generation Time: Dec 16, 2023 at 12:42 PM
-- Server version: 5.5.62-0ubuntu0.14.04.1
-- PHP Version: 7.0.33-0ubuntu0.16.04.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sql11670751`
--
CREATE DATABASE IF NOT EXISTS `sql11670751` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sql11670751`;

-- --------------------------------------------------------

--
-- Table structure for table `alembic_version`
--

CREATE TABLE `alembic_version` (
  `version_num` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alembic_version`
--

INSERT INTO `alembic_version` (`version_num`) VALUES
('v3.2.0.a');

-- --------------------------------------------------------

--
-- Table structure for table `studies`
--

CREATE TABLE `studies` (
  `study_id` int(11) NOT NULL,
  `study_name` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studies`
--

INSERT INTO `studies` (`study_id`, `study_name`) VALUES
(1, 'SLIM_EN_DB');

-- --------------------------------------------------------

--
-- Table structure for table `study_directions`
--

CREATE TABLE `study_directions` (
  `study_direction_id` int(11) NOT NULL,
  `direction` enum('NOT_SET','MINIMIZE','MAXIMIZE') NOT NULL,
  `study_id` int(11) NOT NULL,
  `objective` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `study_directions`
--

INSERT INTO `study_directions` (`study_direction_id`, `direction`, `study_id`, `objective`) VALUES
(1, 'MAXIMIZE', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `study_system_attributes`
--

CREATE TABLE `study_system_attributes` (
  `study_system_attribute_id` int(11) NOT NULL,
  `study_id` int(11) DEFAULT NULL,
  `key` varchar(512) DEFAULT NULL,
  `value_json` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `study_user_attributes`
--

CREATE TABLE `study_user_attributes` (
  `study_user_attribute_id` int(11) NOT NULL,
  `study_id` int(11) DEFAULT NULL,
  `key` varchar(512) DEFAULT NULL,
  `value_json` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `trial_heartbeats`
--

CREATE TABLE `trial_heartbeats` (
  `trial_heartbeat_id` int(11) NOT NULL,
  `trial_id` int(11) NOT NULL,
  `heartbeat` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `trial_intermediate_values`
--

CREATE TABLE `trial_intermediate_values` (
  `trial_intermediate_value_id` int(11) NOT NULL,
  `trial_id` int(11) NOT NULL,
  `step` int(11) NOT NULL,
  `intermediate_value` double DEFAULT NULL,
  `intermediate_value_type` enum('FINITE','INF_POS','INF_NEG','NAN') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `trial_params`
--

CREATE TABLE `trial_params` (
  `param_id` int(11) NOT NULL,
  `trial_id` int(11) DEFAULT NULL,
  `param_name` varchar(512) DEFAULT NULL,
  `param_value` double DEFAULT NULL,
  `distribution_json` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trial_params`
--

INSERT INTO `trial_params` (`param_id`, `trial_id`, `param_name`, `param_value`, `distribution_json`) VALUES
(1, 1, 'topK', 2434, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(2, 2, 'topK', 952, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(3, 1, 'alpha', 0.09329541724991748, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(4, 2, 'alpha', 0.09369879386982438, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(5, 2, 'l1_ratio', 0.18708426875206996, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(6, 1, 'l1_ratio', 0.5703347007124095, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(7, 3, 'topK', 1103, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(8, 3, 'alpha', 0.08201585860856929, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(9, 3, 'l1_ratio', 0.44882268348410415, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(10, 4, 'topK', 1401, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(11, 4, 'alpha', 0.09838772258641448, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(12, 4, 'l1_ratio', 0.6861014243375663, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(13, 5, 'topK', 962, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(14, 5, 'alpha', 0.02417294674073066, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(15, 5, 'l1_ratio', 0.48251969673572204, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(16, 6, 'topK', 1708, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(17, 6, 'alpha', 0.09402471164205391, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(18, 6, 'l1_ratio', 0.24956108484388773, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(19, 7, 'topK', 3456, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(20, 7, 'alpha', 0.09999644221672832, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(21, 7, 'l1_ratio', 0.661215975833879, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(22, 8, 'topK', 3435, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(23, 8, 'alpha', 0.023249228859626728, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(24, 8, 'l1_ratio', 0.4072246559155823, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(25, 9, 'topK', 1372, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(26, 9, 'alpha', 0.05059583072026291, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(27, 9, 'l1_ratio', 0.03908248476089726, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(28, 10, 'topK', 2182, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(29, 10, 'alpha', 0.041937031594460196, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(30, 10, 'l1_ratio', 0.07576867962777056, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(31, 11, 'topK', 558, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(32, 11, 'alpha', 0.01596966452342179, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(33, 11, 'l1_ratio', 0.3942801823943032, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(34, 12, 'topK', 515, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(35, 12, 'alpha', 0.038145508388128774, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(36, 12, 'l1_ratio', 0.2929946868460255, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(37, 13, 'topK', 2041, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(38, 13, 'alpha', 0.05918998992547569, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(39, 13, 'l1_ratio', 0.8152104986162941, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(40, 14, 'topK', 399, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(41, 14, 'alpha', 0.04083525910355983, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(42, 14, 'l1_ratio', 0.450043560420901, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(43, 15, 'topK', 825, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(44, 15, 'alpha', 0.014620762901100693, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(45, 15, 'l1_ratio', 0.8161310816779219, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(46, 16, 'topK', 464, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(47, 16, 'alpha', 0.00454602410501902, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(48, 16, 'l1_ratio', 0.7211366926398002, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(49, 17, 'topK', 2425, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(50, 17, 'alpha', 0.000045490343459034244, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(51, 17, 'l1_ratio', 0.02094308495853514, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(52, 18, 'topK', 2476, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(53, 18, 'alpha', 0.0663283026754416, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(54, 18, 'l1_ratio', 0.036100825998533155, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(55, 19, 'topK', 2405, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(56, 19, 'alpha', 0.06240163711532074, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(57, 19, 'l1_ratio', 0.026369059280713165, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(58, 20, 'topK', 2663, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(59, 20, 'alpha', 0.061786757296508656, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(60, 20, 'l1_ratio', 0.02934271835338742, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(61, 21, 'topK', 2629, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(62, 21, 'alpha', 0.0633432083492889, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(63, 21, 'l1_ratio', 0.022622395211658652, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(64, 22, 'topK', 2437, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(65, 22, 'alpha', 0.06280865795651684, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(66, 22, 'l1_ratio', 0.016759250969633654, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(67, 23, 'topK', 111, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(68, 23, 'alpha', 0.002583345718736007, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(69, 23, 'l1_ratio', 0.00039843608165256866, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(70, 24, 'topK', 186, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(71, 24, 'alpha', 0.0014098527207351895, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(72, 24, 'l1_ratio', 0.9516500764775004, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(73, 25, 'topK', 2961, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(74, 25, 'alpha', 0.005845102779026314, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(75, 25, 'l1_ratio', 0.8806260141685461, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(76, 26, 'topK', 38, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(77, 26, 'alpha', 0.0007696046120376511, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(78, 27, 'topK', 3003, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(79, 27, 'alpha', 0.07597711815065734, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(80, 26, 'l1_ratio', 0.9848036445110767, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(81, 27, 'l1_ratio', 0.971022202708203, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(82, 28, 'topK', 2983, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(83, 28, 'alpha', 0.0728893102886424, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(84, 28, 'l1_ratio', 0.14972207172357396, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(85, 29, 'topK', 3016, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(86, 29, 'alpha', 0.07601007439308094, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(87, 29, 'l1_ratio', 0.16626325952958765, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(88, 30, 'topK', 45, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(89, 30, 'alpha', 0.07634874048085327, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(90, 30, 'l1_ratio', 0.17336375093130352, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(91, 31, 'topK', 12, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(92, 31, 'alpha', 0.07236194975984991, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(93, 31, 'l1_ratio', 0.1887265863817337, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(94, 32, 'topK', 27, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(95, 32, 'alpha', 0.0018136918646630348, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(96, 32, 'l1_ratio', 0.9826838427556186, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(97, 33, 'topK', 1, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(98, 33, 'alpha', 0.002164073482889238, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(99, 33, 'l1_ratio', 0.9099636087010342, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(100, 34, 'topK', 56, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(101, 34, 'alpha', 0.0017318499916141785, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(102, 34, 'l1_ratio', 0.9969315027707071, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(103, 35, 'topK', 32, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(104, 35, 'alpha', 0.0003462433083372546, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(105, 35, 'l1_ratio', 0.9522683070692691, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(106, 36, 'topK', 46, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(107, 36, 'alpha', 0.0013883285151282563, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(108, 36, 'l1_ratio', 0.9832066224520994, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(109, 37, 'topK', 223, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(110, 37, 'alpha', 0.001810892520992557, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(111, 37, 'l1_ratio', 0.962306463087275, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(112, 38, 'topK', 187, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(113, 38, 'alpha', 0.0008324443020857292, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(114, 38, 'l1_ratio', 0.9728517338759983, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(115, 39, 'topK', 238, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(116, 39, 'alpha', 0.010763908931626086, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(117, 39, 'l1_ratio', 0.9915648689536304, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(118, 40, 'topK', 258, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(119, 40, 'alpha', 0.01122318593261355, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(120, 40, 'l1_ratio', 0.9874051948648638, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(121, 41, 'topK', 312, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(122, 41, 'alpha', 0.010370387313004884, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(123, 41, 'l1_ratio', 0.5874480313497181, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(124, 42, 'topK', 283, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(125, 42, 'alpha', 0.012473396588361777, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(126, 42, 'l1_ratio', 0.549924952649036, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(127, 44, 'topK', 706, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(128, 44, 'alpha', 0.010175823711988307, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(129, 44, 'l1_ratio', 0.5749839122761006, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(130, 43, 'topK', 742, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(131, 43, 'alpha', 0.011211150484901245, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(132, 43, 'l1_ratio', 0.5522552890093634, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(133, 45, 'topK', 964, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(134, 45, 'alpha', 0.023745571761002462, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(135, 45, 'l1_ratio', 0.5828807976681112, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(136, 46, 'topK', 766, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(137, 46, 'alpha', 0.02217998067294398, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(138, 46, 'l1_ratio', 0.5535073953610656, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(139, 47, 'topK', 734, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(140, 47, 'alpha', 0.02396105018142691, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(141, 47, 'l1_ratio', 0.58289929157273, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(142, 48, 'topK', 765, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(143, 48, 'alpha', 0.025517175400720463, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(144, 48, 'l1_ratio', 0.8512710508154822, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(145, 49, 'topK', 750, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(146, 49, 'alpha', 0.024690237981875175, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(147, 49, 'l1_ratio', 0.8450712463386764, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(148, 50, 'topK', 731, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(149, 50, 'alpha', 0.03004172637708398, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(150, 50, 'l1_ratio', 0.8620817905787429, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(151, 51, 'topK', 1265, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(152, 51, 'alpha', 0.021328719167269725, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(153, 51, 'l1_ratio', 0.8482931066686554, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(154, 52, 'topK', 1422, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(155, 52, 'alpha', 0.029333409861477144, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(156, 52, 'l1_ratio', 0.8422273369966395, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(157, 53, 'topK', 532, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(158, 53, 'alpha', 0.030793815302972552, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(159, 53, 'l1_ratio', 0.914174542831579, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(160, 54, 'topK', 1262, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(161, 54, 'alpha', 0.0172072248008399, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(162, 54, 'l1_ratio', 0.7514438284254095, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(163, 55, 'topK', 1297, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(164, 55, 'alpha', 0.0181161369684242, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(165, 55, 'l1_ratio', 0.7606695598916463, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(166, 56, 'topK', 1397, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(167, 56, 'alpha', 0.017413268373963252, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(168, 56, 'l1_ratio', 0.7227266210787222, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(169, 57, 'topK', 1303, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(170, 57, 'alpha', 0.018225790274465394, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(171, 57, 'l1_ratio', 0.7460288066631333, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(172, 58, 'topK', 1227, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(173, 58, 'alpha', 0.0178477621791363, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(174, 58, 'l1_ratio', 0.7692144847872788, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(175, 59, 'topK', 1734, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(176, 59, 'alpha', 0.007664524849178497, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(177, 59, 'l1_ratio', 0.9256801197163855, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(178, 60, 'topK', 420, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(179, 60, 'alpha', 0.006457069623349252, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(180, 60, 'l1_ratio', 0.7748654882366435, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(181, 61, 'topK', 420, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(182, 61, 'alpha', 0.006428131165929923, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(183, 61, 'l1_ratio', 0.9327760066820334, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(184, 62, 'topK', 441, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(185, 62, 'alpha', 0.0065884201123082645, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(186, 62, 'l1_ratio', 0.9331155366523134, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(187, 63, 'topK', 511, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(188, 63, 'alpha', 0.005938227996527328, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(189, 63, 'l1_ratio', 0.9269015589829616, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(190, 64, 'topK', 428, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(191, 64, 'alpha', 0.00700008592688325, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(192, 64, 'l1_ratio', 0.9255861975435964, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(193, 65, 'topK', 3756, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(194, 65, 'alpha', 0.005594355491736012, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(195, 65, 'l1_ratio', 0.9226985513488843, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(196, 66, 'topK', 450, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(197, 66, 'alpha', 0.006066929379143474, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(198, 66, 'l1_ratio', 0.3319654168875044, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(199, 67, 'topK', 3891, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(200, 67, 'alpha', 0.0038970075006613124, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(201, 67, 'l1_ratio', 0.9417645933828961, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(202, 68, 'topK', 158, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(203, 68, 'alpha', 0.0038000035872431575, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(204, 68, 'l1_ratio', 0.33875369326429267, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(205, 69, 'topK', 145, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(206, 69, 'alpha', 0.0025006535534745087, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(207, 69, 'l1_ratio', 0.3445341913310558, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(208, 70, 'topK', 147, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(209, 70, 'alpha', 0.00037539593377397193, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(210, 70, 'l1_ratio', 0.349884064014444, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(211, 71, 'topK', 139, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(212, 71, 'alpha', 0.0006118586249698238, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(213, 71, 'l1_ratio', 0.8853667383832148, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(214, 72, 'topK', 118, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(215, 72, 'alpha', 0.0007915569211969825, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(216, 72, 'l1_ratio', 0.8921452455948885, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(217, 73, 'topK', 149, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(218, 73, 'alpha', 0.08734537242758802, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(219, 73, 'l1_ratio', 0.32766499184170683, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(220, 74, 'topK', 163, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(221, 74, 'alpha', 0.08868568221945518, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(222, 74, 'l1_ratio', 0.33934838954946206, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(223, 75, 'topK', 155, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(224, 75, 'alpha', 0.00015013057016873498, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(225, 75, 'l1_ratio', 0.3758092337010428, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(226, 76, 'topK', 147, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(227, 76, 'alpha', 0.08824617518610674, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(228, 76, 'l1_ratio', 0.37879748438428196, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(229, 77, 'topK', 100, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(230, 77, 'alpha', 0.04684181070122716, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(231, 77, 'l1_ratio', 0.10989412113835378, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(232, 78, 'topK', 138, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(233, 78, 'alpha', 0.0009824538032303406, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(234, 78, 'l1_ratio', 0.4898708337995345, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(235, 79, 'topK', 131, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(236, 79, 'alpha', 0.00004829866872317493, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(237, 79, 'l1_ratio', 0.2466427378764306, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(238, 80, 'topK', 329, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(239, 80, 'alpha', 0.0003145051761908198, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(240, 80, 'l1_ratio', 0.8868616735177591, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(241, 81, 'topK', 310, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(242, 81, 'alpha', 0.05025383287530618, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(243, 81, 'l1_ratio', 0.07992769187620219, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(244, 82, 'topK', 310, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(245, 82, 'alpha', 0.001233799068234153, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(246, 82, 'l1_ratio', 0.23688261120735482, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(247, 83, 'topK', 309, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(248, 83, 'alpha', 0.013622379185520186, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(249, 83, 'l1_ratio', 0.6438471989922021, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(250, 84, 'topK', 320, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(251, 84, 'alpha', 0.014091678368050153, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(252, 84, 'l1_ratio', 0.2338006697374468, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(253, 85, 'topK', 652, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(254, 85, 'alpha', 0.008515368953354849, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(255, 85, 'l1_ratio', 0.2492951643568685, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(256, 86, 'topK', 580, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(257, 86, 'alpha', 0.008572578644992562, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(258, 86, 'l1_ratio', 0.23449332851487253, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(259, 87, 'topK', 623, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(260, 87, 'alpha', 0.00007238970079244508, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(261, 87, 'l1_ratio', 0.2432620167753993, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(262, 88, 'topK', 610, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(263, 88, 'alpha', 0.00015924632376358564, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(264, 88, 'l1_ratio', 0.46184227266273453, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(265, 89, 'topK', 951, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(266, 89, 'alpha', 0.009130466137549849, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(267, 89, 'l1_ratio', 0.47759062726063134, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(268, 90, 'topK', 591, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(269, 90, 'alpha', 0.003717789155319826, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(270, 90, 'l1_ratio', 0.44464449110034765, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(271, 91, 'topK', 349, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(272, 91, 'alpha', 0.0002752882396434373, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(273, 91, 'l1_ratio', 0.4570579289577787, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(274, 92, 'topK', 598, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(275, 92, 'alpha', 0.00004420890450399916, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(276, 92, 'l1_ratio', 0.4326255499774111, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(277, 93, 'topK', 275, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(278, 93, 'alpha', 0.00017627221080046345, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(279, 93, 'l1_ratio', 0.8894796786207043, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(280, 94, 'topK', 347, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(281, 94, 'alpha', 0.0007513101912623156, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(282, 94, 'l1_ratio', 0.28112038717215326, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(283, 95, 'topK', 355, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(284, 95, 'alpha', 0.0001200749450719909, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(285, 95, 'l1_ratio', 0.4144712517811154, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(286, 96, 'topK', 347, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(287, 96, 'alpha', 0.003707563406504146, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(288, 96, 'l1_ratio', 0.423484533233822, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(289, 97, 'topK', 341, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(290, 97, 'alpha', 0.003497124318256801, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(291, 97, 'l1_ratio', 0.41976690807536154, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(292, 98, 'topK', 346, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(293, 99, 'topK', 349, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(294, 98, 'alpha', 0.004787843498835107, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(295, 99, 'alpha', 0.0039240507669615005, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(296, 98, 'l1_ratio', 0.43522624598616333, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(297, 99, 'l1_ratio', 0.4225277125404546, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(298, 100, 'topK', 353, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(299, 100, 'alpha', 0.003577607376282895, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(300, 100, 'l1_ratio', 0.5100829706023031, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}'),
(301, 101, 'topK', 892, '{\"name\": \"IntDistribution\", \"attributes\": {\"log\": false, \"step\": 1, \"low\": 1, \"high\": 4000}}'),
(302, 101, 'alpha', 0.0038352263292413934, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 0.1, \"log\": false}}'),
(303, 101, 'l1_ratio', 0.5114131374246772, '{\"name\": \"FloatDistribution\", \"attributes\": {\"step\": null, \"low\": 0.0, \"high\": 1.0, \"log\": false}}');

-- --------------------------------------------------------

--
-- Table structure for table `trial_system_attributes`
--

CREATE TABLE `trial_system_attributes` (
  `trial_system_attribute_id` int(11) NOT NULL,
  `trial_id` int(11) DEFAULT NULL,
  `key` varchar(512) DEFAULT NULL,
  `value_json` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `trial_user_attributes`
--

CREATE TABLE `trial_user_attributes` (
  `trial_user_attribute_id` int(11) NOT NULL,
  `trial_id` int(11) DEFAULT NULL,
  `key` varchar(512) DEFAULT NULL,
  `value_json` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `trial_values`
--

CREATE TABLE `trial_values` (
  `trial_value_id` int(11) NOT NULL,
  `trial_id` int(11) NOT NULL,
  `objective` int(11) NOT NULL,
  `value` double DEFAULT NULL,
  `value_type` enum('FINITE','INF_POS','INF_NEG') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trial_values`
--

INSERT INTO `trial_values` (`trial_value_id`, `trial_id`, `objective`, `value`, `value_type`) VALUES
(1, 2, 0, 0.00809118069467749, 'FINITE'),
(2, 1, 0, 0.000029097221954945803, 'FINITE'),
(3, 3, 0, 0.00003313605515700255, 'FINITE'),
(4, 4, 0, 0.00003548939973700379, 'FINITE'),
(5, 5, 0, 0.018850087529533027, 'FINITE'),
(6, 6, 0, 0.0013865464365591775, 'FINITE'),
(7, 7, 0, 0.00003313605515700255, 'FINITE'),
(8, 8, 0, 0.02196931024351236, 'FINITE'),
(9, 9, 0, 0.032652477767988665, 'FINITE'),
(10, 12, 0, 0.0195045863716735, 'FINITE'),
(11, 10, 0, 0.02995881731610817, 'FINITE'),
(12, 11, 0, 0.025577951071194344, 'FINITE'),
(13, 14, 0, 0.006752315611335738, 'FINITE'),
(14, 13, 0, 0.00003313605515700255, 'FINITE'),
(15, 15, 0, 0.01805392303957953, 'FINITE'),
(16, 16, 0, 0.032788084458856614, 'FINITE'),
(17, 18, 0, 0.0304783527504945, 'FINITE'),
(18, 19, 0, 0.03274316809727809, 'FINITE'),
(19, 21, 0, 0.033334482599246484, 'FINITE'),
(20, 20, 0, 0.03223696159204285, 'FINITE'),
(21, 22, 0, 0.033847832102199986, 'FINITE'),
(22, 24, 0, 0.039507973232612015, 'FINITE'),
(23, 25, 0, 0.028084436212436656, 'FINITE'),
(24, 27, 0, 0.00003313605515700255, 'FINITE'),
(25, 26, 0, 0.04500027761428673, 'FINITE'),
(26, 28, 0, 0.019355078510653448, 'FINITE'),
(27, 29, 0, 0.01680947197830668, 'FINITE'),
(28, 23, 0, 0.04921088836560585, 'FINITE'),
(29, 30, 0, 0.015546328917141208, 'FINITE'),
(30, 31, 0, 0.015223769586746956, 'FINITE'),
(31, 32, 0, 0.038155834923308866, 'FINITE'),
(32, 33, 0, 0.029169830796488373, 'FINITE'),
(33, 17, 0, 0.034170471123348194, 'FINITE'),
(34, 34, 0, 0.03748141126573499, 'FINITE'),
(35, 35, 0, 0.04798487066007898, 'FINITE'),
(36, 36, 0, 0.039945054283064364, 'FINITE'),
(37, 37, 0, 0.03764860569257906, 'FINITE'),
(38, 40, 0, 0.019849764829619233, 'FINITE'),
(39, 39, 0, 0.02011322006237566, 'FINITE'),
(40, 38, 0, 0.04429441492993846, 'FINITE'),
(41, 42, 0, 0.02510449795588369, 'FINITE'),
(42, 41, 0, 0.025762353682622266, 'FINITE'),
(43, 45, 0, 0.01443984800423899, 'FINITE'),
(44, 43, 0, 0.02587788405222582, 'FINITE'),
(45, 44, 0, 0.026470468833068705, 'FINITE'),
(46, 48, 0, 0.0040735607508995955, 'FINITE'),
(47, 47, 0, 0.014529945013153231, 'FINITE'),
(48, 46, 0, 0.01737519031968338, 'FINITE'),
(49, 50, 0, 0.0002360528097096321, 'FINITE'),
(50, 49, 0, 0.004846963121994338, 'FINITE'),
(51, 53, 0, 0.00005661069594814599, 'FINITE'),
(52, 51, 0, 0.007120836344676067, 'FINITE'),
(53, 52, 0, 0.0002431696605338626, 'FINITE'),
(54, 54, 0, 0.016356116630581684, 'FINITE'),
(55, 56, 0, 0.01684020229890872, 'FINITE'),
(56, 55, 0, 0.014599153010713267, 'FINITE'),
(57, 58, 0, 0.015088928026886111, 'FINITE'),
(58, 57, 0, 0.01487332100688532, 'FINITE'),
(59, 59, 0, 0.02470230475234801, 'FINITE'),
(60, 60, 0, 0.02822642620709487, 'FINITE'),
(61, 62, 0, 0.026006875363612108, 'FINITE'),
(62, 64, 0, 0.025701030219560755, 'FINITE'),
(63, 61, 0, 0.02645814360243536, 'FINITE'),
(64, 63, 0, 0.027244893006677887, 'FINITE'),
(65, 65, 0, 0.027650820155411867, 'FINITE'),
(66, 69, 0, 0.04253616374978897, 'FINITE'),
(67, 68, 0, 0.03959292362650172, 'FINITE'),
(68, 66, 0, 0.03597427587726696, 'FINITE'),
(69, 67, 0, 0.03151983678466187, 'FINITE'),
(70, 73, 0, 0.00005661069594814599, 'FINITE'),
(71, 74, 0, 0.00003369725840022607, 'FINITE'),
(72, 72, 0, 0.04402881036468042, 'FINITE'),
(73, 71, 0, 0.04603159063583225, 'FINITE'),
(74, 76, 0, 0.00003313605515700255, 'FINITE'),
(75, 77, 0, 0.027056593118839883, 'FINITE'),
(76, 78, 0, 0.04667201021635257, 'FINITE'),
(77, 81, 0, 0.028351033725576694, 'FINITE'),
(78, 70, 0, 0.05045618206115337, 'FINITE'),
(79, 82, 0, 0.04798636485196497, 'FINITE'),
(80, 83, 0, 0.02277717703665505, 'FINITE'),
(81, 85, 0, 0.035329980688833106, 'FINITE'),
(82, 80, 0, 0.04895066094843442, 'FINITE'),
(83, 84, 0, 0.03149206503947708, 'FINITE'),
(84, 86, 0, 0.035869294837367775, 'FINITE'),
(85, 89, 0, 0.02934173686510555, 'FINITE'),
(86, 90, 0, 0.03758455040078554, 'FINITE'),
(87, 75, 0, 0.04597142148645075, 'FINITE'),
(88, 88, 0, 0.048563780414231185, 'FINITE'),
(89, 87, 0, 0.040552020713975345, 'FINITE'),
(90, 79, 0, 0.029331901682070793, 'FINITE'),
(91, 91, 0, 0.05054792213164174, 'FINITE'),
(92, 94, 0, 0.04971394128605517, 'FINITE'),
(93, 93, 0, 0.04966165713908175, 'FINITE'),
(94, 96, 0, 0.03821449292076821, 'FINITE');

-- --------------------------------------------------------

--
-- Table structure for table `trials`
--

CREATE TABLE `trials` (
  `trial_id` int(11) NOT NULL,
  `number` int(11) DEFAULT NULL,
  `study_id` int(11) DEFAULT NULL,
  `state` enum('RUNNING','COMPLETE','PRUNED','FAIL','WAITING') NOT NULL,
  `datetime_start` datetime DEFAULT NULL,
  `datetime_complete` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trials`
--

INSERT INTO `trials` (`trial_id`, `number`, `study_id`, `state`, `datetime_start`, `datetime_complete`) VALUES
(1, 0, 1, 'COMPLETE', '2023-12-16 11:31:40', '2023-12-16 11:35:22'),
(2, 1, 1, 'COMPLETE', '2023-12-16 11:31:43', '2023-12-16 11:35:21'),
(3, 2, 1, 'COMPLETE', '2023-12-16 11:31:58', '2023-12-16 11:35:44'),
(4, 3, 1, 'COMPLETE', '2023-12-16 11:32:15', '2023-12-16 11:35:50'),
(5, 4, 1, 'COMPLETE', '2023-12-16 11:35:22', '2023-12-16 11:39:03'),
(6, 5, 1, 'COMPLETE', '2023-12-16 11:35:27', '2023-12-16 11:39:09'),
(7, 6, 1, 'COMPLETE', '2023-12-16 11:35:45', '2023-12-16 11:39:29'),
(8, 7, 1, 'COMPLETE', '2023-12-16 11:35:56', '2023-12-16 11:39:32'),
(9, 8, 1, 'COMPLETE', '2023-12-16 11:39:03', '2023-12-16 11:41:37'),
(10, 9, 1, 'COMPLETE', '2023-12-16 11:39:04', '2023-12-16 11:42:50'),
(11, 10, 1, 'COMPLETE', '2023-12-16 11:39:14', '2023-12-16 11:42:59'),
(12, 11, 1, 'COMPLETE', '2023-12-16 11:39:16', '2023-12-16 11:41:52'),
(13, 12, 1, 'COMPLETE', '2023-12-16 11:39:30', '2023-12-16 11:43:17'),
(14, 13, 1, 'COMPLETE', '2023-12-16 11:39:38', '2023-12-16 11:43:14'),
(15, 14, 1, 'COMPLETE', '2023-12-16 11:39:43', '2023-12-16 11:43:35'),
(16, 15, 1, 'COMPLETE', '2023-12-16 11:41:38', '2023-12-16 11:44:08'),
(17, 16, 1, 'COMPLETE', '2023-12-16 11:41:57', '2023-12-16 11:57:13'),
(18, 17, 1, 'COMPLETE', '2023-12-16 11:42:51', '2023-12-16 11:46:40'),
(19, 18, 1, 'COMPLETE', '2023-12-16 11:43:04', '2023-12-16 11:47:08'),
(20, 19, 1, 'COMPLETE', '2023-12-16 11:43:17', '2023-12-16 11:47:24'),
(21, 20, 1, 'COMPLETE', '2023-12-16 11:43:19', '2023-12-16 11:47:14'),
(22, 21, 1, 'COMPLETE', '2023-12-16 11:43:42', '2023-12-16 11:48:02'),
(23, 22, 1, 'COMPLETE', '2023-12-16 11:44:09', '2023-12-16 11:54:38'),
(24, 23, 1, 'COMPLETE', '2023-12-16 11:46:41', '2023-12-16 11:50:47'),
(25, 24, 1, 'COMPLETE', '2023-12-16 11:47:13', '2023-12-16 11:51:03'),
(26, 25, 1, 'COMPLETE', '2023-12-16 11:47:20', '2023-12-16 11:51:48'),
(27, 26, 1, 'COMPLETE', '2023-12-16 11:47:25', '2023-12-16 11:51:13'),
(28, 27, 1, 'COMPLETE', '2023-12-16 11:48:09', '2023-12-16 11:52:02'),
(29, 28, 1, 'COMPLETE', '2023-12-16 11:50:48', '2023-12-16 11:54:29'),
(30, 29, 1, 'COMPLETE', '2023-12-16 11:51:07', '2023-12-16 11:54:54'),
(31, 30, 1, 'COMPLETE', '2023-12-16 11:51:13', '2023-12-16 11:55:06'),
(32, 31, 1, 'COMPLETE', '2023-12-16 11:51:53', '2023-12-16 11:55:50'),
(33, 32, 1, 'COMPLETE', '2023-12-16 11:52:09', '2023-12-16 11:56:12'),
(34, 33, 1, 'COMPLETE', '2023-12-16 11:54:30', '2023-12-16 11:58:26'),
(35, 34, 1, 'COMPLETE', '2023-12-16 11:54:39', '2023-12-16 11:58:55'),
(36, 35, 1, 'COMPLETE', '2023-12-16 11:54:59', '2023-12-16 11:59:06'),
(37, 36, 1, 'COMPLETE', '2023-12-16 11:55:07', '2023-12-16 11:59:13'),
(38, 37, 1, 'COMPLETE', '2023-12-16 11:55:55', '2023-12-16 12:00:21'),
(39, 38, 1, 'COMPLETE', '2023-12-16 11:56:19', '2023-12-16 12:00:12'),
(40, 39, 1, 'COMPLETE', '2023-12-16 11:57:18', '2023-12-16 11:59:57'),
(41, 40, 1, 'COMPLETE', '2023-12-16 11:58:27', '2023-12-16 12:02:09'),
(42, 41, 1, 'COMPLETE', '2023-12-16 11:58:56', '2023-12-16 12:01:23'),
(43, 42, 1, 'COMPLETE', '2023-12-16 11:59:11', '2023-12-16 12:02:58'),
(44, 43, 1, 'COMPLETE', '2023-12-16 11:59:14', '2023-12-16 12:03:09'),
(45, 44, 1, 'COMPLETE', '2023-12-16 12:00:02', '2023-12-16 12:02:43'),
(46, 45, 1, 'COMPLETE', '2023-12-16 12:00:19', '2023-12-16 12:04:16'),
(47, 46, 1, 'COMPLETE', '2023-12-16 12:00:26', '2023-12-16 12:04:15'),
(48, 47, 1, 'COMPLETE', '2023-12-16 12:01:24', '2023-12-16 12:03:49'),
(49, 48, 1, 'COMPLETE', '2023-12-16 12:02:10', '2023-12-16 12:05:48'),
(50, 49, 1, 'COMPLETE', '2023-12-16 12:02:48', '2023-12-16 12:05:28'),
(51, 50, 1, 'COMPLETE', '2023-12-16 12:03:03', '2023-12-16 12:06:46'),
(52, 51, 1, 'COMPLETE', '2023-12-16 12:03:09', '2023-12-16 12:07:04'),
(53, 52, 1, 'COMPLETE', '2023-12-16 12:03:50', '2023-12-16 12:06:17'),
(54, 53, 1, 'COMPLETE', '2023-12-16 12:04:21', '2023-12-16 12:08:05'),
(55, 54, 1, 'COMPLETE', '2023-12-16 12:04:23', '2023-12-16 12:08:20'),
(56, 55, 1, 'COMPLETE', '2023-12-16 12:05:33', '2023-12-16 12:08:13'),
(57, 56, 1, 'COMPLETE', '2023-12-16 12:05:49', '2023-12-16 12:09:29'),
(58, 57, 1, 'COMPLETE', '2023-12-16 12:06:17', '2023-12-16 12:08:43'),
(59, 58, 1, 'COMPLETE', '2023-12-16 12:06:51', '2023-12-16 12:10:37'),
(60, 59, 1, 'COMPLETE', '2023-12-16 12:07:05', '2023-12-16 12:11:01'),
(61, 60, 1, 'COMPLETE', '2023-12-16 12:08:11', '2023-12-16 12:11:55'),
(62, 61, 1, 'COMPLETE', '2023-12-16 12:08:18', '2023-12-16 12:11:02'),
(63, 62, 1, 'COMPLETE', '2023-12-16 12:08:27', '2023-12-16 12:12:32'),
(64, 63, 1, 'COMPLETE', '2023-12-16 12:08:44', '2023-12-16 12:11:11'),
(65, 64, 1, 'COMPLETE', '2023-12-16 12:09:30', '2023-12-16 12:13:15'),
(66, 65, 1, 'COMPLETE', '2023-12-16 12:10:42', '2023-12-16 12:14:40'),
(67, 66, 1, 'COMPLETE', '2023-12-16 12:11:02', '2023-12-16 12:14:57'),
(68, 67, 1, 'COMPLETE', '2023-12-16 12:11:07', '2023-12-16 12:14:09'),
(69, 68, 1, 'COMPLETE', '2023-12-16 12:11:12', '2023-12-16 12:14:07'),
(70, 69, 1, 'COMPLETE', '2023-12-16 12:12:01', '2023-12-16 12:23:35'),
(71, 70, 1, 'COMPLETE', '2023-12-16 12:12:39', '2023-12-16 12:18:16'),
(72, 71, 1, 'COMPLETE', '2023-12-16 12:13:16', '2023-12-16 12:17:54'),
(73, 72, 1, 'COMPLETE', '2023-12-16 12:14:08', '2023-12-16 12:16:34'),
(74, 73, 1, 'COMPLETE', '2023-12-16 12:14:14', '2023-12-16 12:16:58'),
(75, 74, 1, 'COMPLETE', '2023-12-16 12:14:45', '2023-12-16 12:30:59'),
(76, 75, 1, 'COMPLETE', '2023-12-16 12:14:58', '2023-12-16 12:18:46'),
(77, 76, 1, 'COMPLETE', '2023-12-16 12:16:35', '2023-12-16 12:19:02'),
(78, 77, 1, 'COMPLETE', '2023-12-16 12:17:03', '2023-12-16 12:20:52'),
(79, 78, 1, 'COMPLETE', '2023-12-16 12:17:54', '2023-12-16 12:38:36'),
(80, 79, 1, 'COMPLETE', '2023-12-16 12:18:24', '2023-12-16 12:26:15'),
(81, 80, 1, 'COMPLETE', '2023-12-16 12:18:46', '2023-12-16 12:22:38'),
(82, 81, 1, 'COMPLETE', '2023-12-16 12:19:02', '2023-12-16 12:23:39'),
(83, 82, 1, 'COMPLETE', '2023-12-16 12:20:57', '2023-12-16 12:23:39'),
(84, 83, 1, 'COMPLETE', '2023-12-16 12:22:39', '2023-12-16 12:26:35'),
(85, 84, 1, 'COMPLETE', '2023-12-16 12:23:40', '2023-12-16 12:26:14'),
(86, 85, 1, 'COMPLETE', '2023-12-16 12:23:41', '2023-12-16 12:27:38'),
(87, 86, 1, 'COMPLETE', '2023-12-16 12:23:45', '2023-12-16 12:38:05'),
(88, 87, 1, 'COMPLETE', '2023-12-16 12:26:15', '2023-12-16 12:36:27'),
(89, 88, 1, 'COMPLETE', '2023-12-16 12:26:22', '2023-12-16 12:30:17'),
(90, 89, 1, 'COMPLETE', '2023-12-16 12:26:36', '2023-12-16 12:30:45'),
(91, 90, 1, 'COMPLETE', '2023-12-16 12:27:44', '2023-12-16 12:39:38'),
(92, 91, 1, 'RUNNING', '2023-12-16 12:30:24', NULL),
(93, 92, 1, 'COMPLETE', '2023-12-16 12:30:46', '2023-12-16 12:40:47'),
(94, 93, 1, 'COMPLETE', '2023-12-16 12:31:04', '2023-12-16 12:39:38'),
(95, 94, 1, 'RUNNING', '2023-12-16 12:36:28', NULL),
(96, 95, 1, 'COMPLETE', '2023-12-16 12:38:10', '2023-12-16 12:41:05'),
(97, 96, 1, 'RUNNING', '2023-12-16 12:38:36', NULL),
(98, 97, 1, 'RUNNING', '2023-12-16 12:39:43', NULL),
(99, 98, 1, 'RUNNING', '2023-12-16 12:39:44', NULL),
(100, 99, 1, 'RUNNING', '2023-12-16 12:40:47', NULL),
(101, 100, 1, 'RUNNING', '2023-12-16 12:41:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `version_info`
--

CREATE TABLE `version_info` (
  `version_info_id` int(11) NOT NULL,
  `schema_version` int(11) DEFAULT NULL,
  `library_version` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `version_info`
--

INSERT INTO `version_info` (`version_info_id`, `schema_version`, `library_version`) VALUES
(1, 12, '3.5.0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alembic_version`
--
ALTER TABLE `alembic_version`
  ADD PRIMARY KEY (`version_num`);

--
-- Indexes for table `studies`
--
ALTER TABLE `studies`
  ADD PRIMARY KEY (`study_id`),
  ADD UNIQUE KEY `ix_studies_study_name` (`study_name`);

--
-- Indexes for table `study_directions`
--
ALTER TABLE `study_directions`
  ADD PRIMARY KEY (`study_direction_id`),
  ADD UNIQUE KEY `study_id` (`study_id`,`objective`);

--
-- Indexes for table `study_system_attributes`
--
ALTER TABLE `study_system_attributes`
  ADD PRIMARY KEY (`study_system_attribute_id`),
  ADD UNIQUE KEY `study_id` (`study_id`,`key`);

--
-- Indexes for table `study_user_attributes`
--
ALTER TABLE `study_user_attributes`
  ADD PRIMARY KEY (`study_user_attribute_id`),
  ADD UNIQUE KEY `study_id` (`study_id`,`key`);

--
-- Indexes for table `trial_heartbeats`
--
ALTER TABLE `trial_heartbeats`
  ADD PRIMARY KEY (`trial_heartbeat_id`),
  ADD UNIQUE KEY `trial_id` (`trial_id`);

--
-- Indexes for table `trial_intermediate_values`
--
ALTER TABLE `trial_intermediate_values`
  ADD PRIMARY KEY (`trial_intermediate_value_id`),
  ADD UNIQUE KEY `trial_id` (`trial_id`,`step`);

--
-- Indexes for table `trial_params`
--
ALTER TABLE `trial_params`
  ADD PRIMARY KEY (`param_id`),
  ADD UNIQUE KEY `trial_id` (`trial_id`,`param_name`);

--
-- Indexes for table `trial_system_attributes`
--
ALTER TABLE `trial_system_attributes`
  ADD PRIMARY KEY (`trial_system_attribute_id`),
  ADD UNIQUE KEY `trial_id` (`trial_id`,`key`);

--
-- Indexes for table `trial_user_attributes`
--
ALTER TABLE `trial_user_attributes`
  ADD PRIMARY KEY (`trial_user_attribute_id`),
  ADD UNIQUE KEY `trial_id` (`trial_id`,`key`);

--
-- Indexes for table `trial_values`
--
ALTER TABLE `trial_values`
  ADD PRIMARY KEY (`trial_value_id`),
  ADD UNIQUE KEY `trial_id` (`trial_id`,`objective`);

--
-- Indexes for table `trials`
--
ALTER TABLE `trials`
  ADD PRIMARY KEY (`trial_id`),
  ADD KEY `ix_trials_study_id` (`study_id`);

--
-- Indexes for table `version_info`
--
ALTER TABLE `version_info`
  ADD PRIMARY KEY (`version_info_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `studies`
--
ALTER TABLE `studies`
  MODIFY `study_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `study_directions`
--
ALTER TABLE `study_directions`
  MODIFY `study_direction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `study_system_attributes`
--
ALTER TABLE `study_system_attributes`
  MODIFY `study_system_attribute_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `study_user_attributes`
--
ALTER TABLE `study_user_attributes`
  MODIFY `study_user_attribute_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `trial_heartbeats`
--
ALTER TABLE `trial_heartbeats`
  MODIFY `trial_heartbeat_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `trial_intermediate_values`
--
ALTER TABLE `trial_intermediate_values`
  MODIFY `trial_intermediate_value_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `trial_params`
--
ALTER TABLE `trial_params`
  MODIFY `param_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=304;
--
-- AUTO_INCREMENT for table `trial_system_attributes`
--
ALTER TABLE `trial_system_attributes`
  MODIFY `trial_system_attribute_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `trial_user_attributes`
--
ALTER TABLE `trial_user_attributes`
  MODIFY `trial_user_attribute_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `trial_values`
--
ALTER TABLE `trial_values`
  MODIFY `trial_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;
--
-- AUTO_INCREMENT for table `trials`
--
ALTER TABLE `trials`
  MODIFY `trial_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `study_directions`
--
ALTER TABLE `study_directions`
  ADD CONSTRAINT `study_directions_ibfk_1` FOREIGN KEY (`study_id`) REFERENCES `studies` (`study_id`);

--
-- Constraints for table `study_system_attributes`
--
ALTER TABLE `study_system_attributes`
  ADD CONSTRAINT `study_system_attributes_ibfk_1` FOREIGN KEY (`study_id`) REFERENCES `studies` (`study_id`);

--
-- Constraints for table `study_user_attributes`
--
ALTER TABLE `study_user_attributes`
  ADD CONSTRAINT `study_user_attributes_ibfk_1` FOREIGN KEY (`study_id`) REFERENCES `studies` (`study_id`);

--
-- Constraints for table `trial_heartbeats`
--
ALTER TABLE `trial_heartbeats`
  ADD CONSTRAINT `trial_heartbeats_ibfk_1` FOREIGN KEY (`trial_id`) REFERENCES `trials` (`trial_id`);

--
-- Constraints for table `trial_intermediate_values`
--
ALTER TABLE `trial_intermediate_values`
  ADD CONSTRAINT `trial_intermediate_values_ibfk_1` FOREIGN KEY (`trial_id`) REFERENCES `trials` (`trial_id`);

--
-- Constraints for table `trial_params`
--
ALTER TABLE `trial_params`
  ADD CONSTRAINT `trial_params_ibfk_1` FOREIGN KEY (`trial_id`) REFERENCES `trials` (`trial_id`);

--
-- Constraints for table `trial_system_attributes`
--
ALTER TABLE `trial_system_attributes`
  ADD CONSTRAINT `trial_system_attributes_ibfk_1` FOREIGN KEY (`trial_id`) REFERENCES `trials` (`trial_id`);

--
-- Constraints for table `trial_user_attributes`
--
ALTER TABLE `trial_user_attributes`
  ADD CONSTRAINT `trial_user_attributes_ibfk_1` FOREIGN KEY (`trial_id`) REFERENCES `trials` (`trial_id`);

--
-- Constraints for table `trial_values`
--
ALTER TABLE `trial_values`
  ADD CONSTRAINT `trial_values_ibfk_1` FOREIGN KEY (`trial_id`) REFERENCES `trials` (`trial_id`);

--
-- Constraints for table `trials`
--
ALTER TABLE `trials`
  ADD CONSTRAINT `trials_ibfk_1` FOREIGN KEY (`study_id`) REFERENCES `studies` (`study_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
