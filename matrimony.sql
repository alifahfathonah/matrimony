-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 28, 2020 at 11:09 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `matrimony`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` bigint(20) NOT NULL,
  `admin_name` varchar(250) NOT NULL,
  `admin_email` varchar(150) NOT NULL,
  `admin_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_email`, `admin_password`) VALUES
(1, 'Techno', 'tech@demo.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `advertisement`
--

CREATE TABLE `advertisement` (
  `adv_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `reach_id` bigint(20) DEFAULT NULL,
  `adv_name` varchar(500) DEFAULT NULL,
  `adv_amount` double DEFAULT NULL,
  `adv_image` varchar(250) DEFAULT NULL,
  `adv_status` varchar(50) NOT NULL DEFAULT 'active',
  `adv_addedby` varchar(50) DEFAULT NULL,
  `adv_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `advertisement`
--

INSERT INTO `advertisement` (`adv_id`, `company_id`, `reach_id`, `adv_name`, `adv_amount`, `adv_image`, `adv_status`, `adv_addedby`, `adv_date`) VALUES
(8, 3, 3, 'Newspaper ', 5000, NULL, 'active', NULL, '2020-01-14 12:29:37'),
(9, 3, 3, 'Social Media Marketing', 50, NULL, 'active', NULL, '2020-01-14 12:29:07'),
(10, 3, 3, 'www', 1000, NULL, 'active', NULL, '2020-01-15 05:26:24'),
(11, 3, 3, 'www', 1000, NULL, 'active', NULL, '2020-01-15 05:26:57'),
(12, 3, 3, 'www', 1000, 'adv_12_1579066098.jpg', 'active', NULL, '2020-01-15 05:28:18'),
(13, 3, 3, 'ppp', 500, 'adv_13_1579066891.jpg', 'active', '3', '2020-01-15 05:42:01');

-- --------------------------------------------------------

--
-- Table structure for table `advertisement_reach`
--

CREATE TABLE `advertisement_reach` (
  `reach_id` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `reach_name` varchar(50) NOT NULL,
  `reach_status` varchar(50) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `advertisement_reach`
--

INSERT INTO `advertisement_reach` (`reach_id`, `company_id`, `reach_name`, `reach_status`) VALUES
(2, 3, 'Pan India', 'yes'),
(3, 3, 'Pan State', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `blood_group`
--

CREATE TABLE `blood_group` (
  `blood_group_id` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `blood_group_name` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blood_group`
--

INSERT INTO `blood_group` (`blood_group_id`, `company_id`, `user_id`, `blood_group_name`, `date`) VALUES
(2, 3, 3, 'O +Ve', '2019-12-26 08:08:46');

-- --------------------------------------------------------

--
-- Table structure for table `body_type`
--

CREATE TABLE `body_type` (
  `body_type_id` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `body_type_name` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `body_type`
--

INSERT INTO `body_type` (`body_type_id`, `company_id`, `user_id`, `body_type_name`, `date`) VALUES
(3, 3, 3, 'slim', '2019-12-26 09:48:06');

-- --------------------------------------------------------

--
-- Table structure for table `cast`
--

CREATE TABLE `cast` (
  `cast_id` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `religion_id` bigint(20) NOT NULL,
  `cast_name` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cast`
--

INSERT INTO `cast` (`cast_id`, `company_id`, `user_id`, `religion_id`, `cast_name`, `date`) VALUES
(1, 3, 3, 3, 'Kunabi', '2019-12-27 07:33:23'),
(3, 3, 3, 3, 'Maratha', '2019-12-27 07:33:37'),
(4, 3, 3, 3, 'Lohar', '2019-12-27 07:33:49');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_id` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `country_id` bigint(20) NOT NULL,
  `state_id` bigint(20) NOT NULL,
  `district_id` bigint(20) NOT NULL,
  `tahasil_id` bigint(20) NOT NULL,
  `city_name` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `company_id`, `user_id`, `country_id`, `state_id`, `district_id`, `tahasil_id`, `city_name`, `date`) VALUES
(7, 3, 3, 3, 5, 4, 3, 'sangav', '2020-01-14 10:28:09'),
(8, 3, 3, 3, 5, 5, 3, 'wagholi', '2020-01-14 10:29:03');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `company_id` bigint(20) NOT NULL,
  `company_name` varchar(250) NOT NULL,
  `company_address` varchar(350) NOT NULL,
  `company_city` varchar(150) NOT NULL,
  `company_state` varchar(150) NOT NULL,
  `company_district` varchar(150) NOT NULL,
  `company_pincode` bigint(20) DEFAULT NULL,
  `company_mob1` varchar(12) NOT NULL,
  `company_mob2` varchar(12) NOT NULL,
  `company_email` varchar(150) NOT NULL,
  `company_website` varchar(150) NOT NULL,
  `company_pan_no` varchar(12) NOT NULL,
  `company_gst_no` varchar(100) NOT NULL,
  `company_lic1` varchar(150) NOT NULL,
  `company_lic2` varchar(150) NOT NULL,
  `company_start_date` varchar(15) NOT NULL,
  `company_end_date` varchar(15) NOT NULL,
  `company_logo` varchar(200) NOT NULL,
  `admin_roll_id` int(11) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`company_id`, `company_name`, `company_address`, `company_city`, `company_state`, `company_district`, `company_pincode`, `company_mob1`, `company_mob2`, `company_email`, `company_website`, `company_pan_no`, `company_gst_no`, `company_lic1`, `company_lic2`, `company_start_date`, `company_end_date`, `company_logo`, `admin_roll_id`, `date`) VALUES
(3, 'BHARTIYA SHADI ', 'RAJARAMPURI KOLHAPUR', 'KOLHAPUR', 'MAHARASHTRA', 'KOLHAPUR', 416004, '9876543210', '9876543210', 'root@gmail.com', 'dcs.com', 'abcd1234', '1245678', '12457', '1245', '01-04-2019', '31-03-2020', '', 1, '2019-12-26 06:43:33');

-- --------------------------------------------------------

--
-- Table structure for table `complexion`
--

CREATE TABLE `complexion` (
  `complexion_id` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `complexion_name` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `complexion`
--

INSERT INTO `complexion` (`complexion_id`, `company_id`, `user_id`, `complexion_name`, `date`) VALUES
(1, 3, 3, 'abcd', '2019-12-27 07:59:54'),
(2, 3, 3, 'pqrs', '2019-12-27 07:56:13');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `country_id` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `country_name` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `company_id`, `user_id`, `country_name`, `date`) VALUES
(2, 3, 3, 'china', '2019-12-26 10:01:42'),
(3, 3, 3, 'India', '2019-12-26 10:19:01');

-- --------------------------------------------------------

--
-- Table structure for table `diet`
--

CREATE TABLE `diet` (
  `diet_id` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `diet_name` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `diet`
--

INSERT INTO `diet` (`diet_id`, `company_id`, `user_id`, `diet_name`, `date`) VALUES
(2, 3, 3, 'Non-veg', '2019-12-26 10:26:06'),
(4, 3, 3, 'Vegiterian', '2019-12-26 10:27:38');

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `district_id` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `country_id` bigint(20) NOT NULL,
  `state_id` bigint(20) NOT NULL,
  `district_name` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`district_id`, `company_id`, `user_id`, `country_id`, `state_id`, `district_name`, `date`) VALUES
(3, 3, 3, 3, 8, 'Panjim', '2020-01-14 06:49:35'),
(4, 3, 3, 3, 5, 'Kolhapur', '2020-01-14 07:27:36'),
(5, 3, 3, 3, 5, 'Pune', '2020-01-14 07:27:47');

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `education_id` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `education_name` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`education_id`, `company_id`, `user_id`, `education_name`, `date`) VALUES
(2, 3, 3, 'C A', '2019-12-26 10:32:54'),
(3, 3, 3, 'M com', '2019-12-26 10:33:13');

-- --------------------------------------------------------

--
-- Table structure for table `family_status`
--

CREATE TABLE `family_status` (
  `family_status_id` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `family_status_name` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `family_status`
--

INSERT INTO `family_status` (`family_status_id`, `company_id`, `user_id`, `family_status_name`, `date`) VALUES
(2, 3, 3, 'high class 2', '2019-12-26 10:47:31');

-- --------------------------------------------------------

--
-- Table structure for table `family_type`
--

CREATE TABLE `family_type` (
  `family_type_id` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `family_type_name` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `family_type`
--

INSERT INTO `family_type` (`family_type_id`, `company_id`, `user_id`, `family_type_name`, `date`) VALUES
(1, 3, 3, 'high class', '2019-12-26 10:44:09');

-- --------------------------------------------------------

--
-- Table structure for table `family_value`
--

CREATE TABLE `family_value` (
  `family_value_id` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `family_value_name` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `family_value`
--

INSERT INTO `family_value` (`family_value_id`, `company_id`, `user_id`, `family_value_name`, `date`) VALUES
(1, 3, 3, 'high class 1', '2019-12-26 10:47:11'),
(2, 3, 3, 'high class 3', '2019-12-26 10:47:18');

-- --------------------------------------------------------

--
-- Table structure for table `franchise`
--

CREATE TABLE `franchise` (
  `franchise_id` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `franchise_type_id` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `district_id` int(11) DEFAULT NULL,
  `tahasil_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `franchise_name` varchar(250) DEFAULT NULL,
  `franchise_address` text DEFAULT NULL,
  `franchise_gender` varchar(50) DEFAULT NULL,
  `franchise_email` varchar(150) DEFAULT NULL,
  `franchise_mobile` varchar(15) DEFAULT NULL,
  `franchise_password` varchar(50) DEFAULT NULL,
  `franchise_status` varchar(50) NOT NULL DEFAULT 'active',
  `franchise_addedby` varchar(50) NOT NULL,
  `franchise_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `franchise`
--

INSERT INTO `franchise` (`franchise_id`, `company_id`, `franchise_type_id`, `country_id`, `state_id`, `district_id`, `tahasil_id`, `user_id`, `franchise_name`, `franchise_address`, `franchise_gender`, `franchise_email`, `franchise_mobile`, `franchise_password`, `franchise_status`, `franchise_addedby`, `franchise_date`) VALUES
(3, 3, 1, 3, 5, 4, 2, 8, 'Demo Franc', 'Kolhapur', 'Male', 'demofranc@ooo.com', '9876543211', '123456', 'active', '7', '2020-01-21 11:48:41'),
(4, 3, 5, 3, 5, 4, 2, 9, 'Demo Franc Local', 'Kolhapur', 'Male', 'ggg@jjj.com', '9876543212', '123456', 'active', '8', '2020-01-21 12:14:53');

-- --------------------------------------------------------

--
-- Table structure for table `franchise_type`
--

CREATE TABLE `franchise_type` (
  `franchise_type_id` int(11) NOT NULL,
  `franchise_type_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `franchise_type`
--

INSERT INTO `franchise_type` (`franchise_type_id`, `franchise_type_name`) VALUES
(1, 'State'),
(2, 'District'),
(3, 'Tehasil'),
(4, 'BPL'),
(5, 'Local');

-- --------------------------------------------------------

--
-- Table structure for table `gothram`
--

CREATE TABLE `gothram` (
  `gothram_id` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `gothram_name` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gothram`
--

INSERT INTO `gothram` (`gothram_id`, `company_id`, `user_id`, `gothram_name`, `date`) VALUES
(2, 3, 3, 'sinh', '2019-12-26 11:53:48');

-- --------------------------------------------------------

--
-- Table structure for table `height`
--

CREATE TABLE `height` (
  `height_id` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `height_name` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `height`
--

INSERT INTO `height` (`height_id`, `company_id`, `user_id`, `height_name`, `date`) VALUES
(3, 3, 3, '4', '2019-12-26 11:59:19'),
(4, 3, 3, '7', '2019-12-26 12:04:55');

-- --------------------------------------------------------

--
-- Table structure for table `income`
--

CREATE TABLE `income` (
  `income_id` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `min_income` varchar(100) NOT NULL,
  `max_income` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `income`
--

INSERT INTO `income` (`income_id`, `company_id`, `user_id`, `min_income`, `max_income`, `date`) VALUES
(2, 3, 3, '15500', '20000', '2019-12-27 09:31:13');

-- --------------------------------------------------------

--
-- Table structure for table `interest`
--

CREATE TABLE `interest` (
  `interest_id` bigint(20) NOT NULL,
  `from_member_id` int(11) NOT NULL,
  `to_member_id` int(11) NOT NULL,
  `interest_status` int(11) DEFAULT 0,
  `interest_date` varchar(20) NOT NULL,
  `interest_time` varchar(20) NOT NULL,
  `interest_date2` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `interest`
--

INSERT INTO `interest` (`interest_id`, `from_member_id`, `to_member_id`, `interest_status`, `interest_date`, `interest_time`, `interest_date2`) VALUES
(1, 5, 4, 2, '24-01-2020', '09:01:14 AM', '2020-01-25 09:46:05'),
(2, 4, 5, 1, '24-01-2020', '11:01:47 AM', '2020-01-24 12:40:52'),
(7, 4, 2, 0, '25-01-2020', '10:01:06 AM', '2020-01-25 10:57:06'),
(8, 4, 3, 0, '25-01-2020', '11:01:50 AM', '2020-01-25 11:05:50'),
(9, 7, 4, 0, '28-01-2020', '08:01:01 AM', '2020-01-28 08:21:01');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `language_id` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `language_name` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`language_id`, `company_id`, `user_id`, `language_name`, `date`) VALUES
(2, 3, 3, 'English', '2019-12-26 12:08:15'),
(3, 3, 3, 'Marathi', '2019-12-26 12:08:31');

-- --------------------------------------------------------

--
-- Table structure for table `marital_status`
--

CREATE TABLE `marital_status` (
  `marital_status_id` int(11) NOT NULL,
  `marital_status_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marital_status`
--

INSERT INTO `marital_status` (`marital_status_id`, `marital_status_name`) VALUES
(1, 'Never Married'),
(2, 'Divorcee'),
(3, 'Widow');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `member_id` bigint(20) NOT NULL,
  `member_user_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `member_name` varchar(250) NOT NULL,
  `member_address` text DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `district_id` int(11) DEFAULT NULL,
  `tahasil_id` int(11) NOT NULL,
  `city_id` int(11) DEFAULT NULL,
  `member_area` varchar(250) DEFAULT NULL,
  `member_gender` varchar(20) NOT NULL,
  `member_birth_date` varchar(20) NOT NULL,
  `member_age` int(11) DEFAULT NULL,
  `language_id` bigint(20) DEFAULT NULL,
  `religion_id` bigint(20) DEFAULT NULL,
  `member_email` varchar(150) NOT NULL,
  `member_mobile` varchar(20) NOT NULL,
  `member_otp` varchar(20) DEFAULT NULL,
  `is_otp_check` int(11) NOT NULL DEFAULT 0 COMMENT '0=Ne, 1=Yes',
  `member_password` varchar(100) NOT NULL,
  `member_img` varchar(250) DEFAULT NULL,
  `member_img_num` int(11) NOT NULL DEFAULT 4,
  `onbehalf_id` int(11) DEFAULT NULL COMMENT 'Created By',
  `marital_status` varchar(50) DEFAULT NULL,
  `cast_id` int(11) NOT NULL,
  `mamber_date` varchar(20) DEFAULT NULL,
  `member_status` varchar(50) NOT NULL DEFAULT 'deactivate',
  `member_addedby` varchar(50) NOT NULL,
  `member_date2` timestamp NOT NULL DEFAULT current_timestamp(),
  `sub_cast_id` int(11) DEFAULT NULL,
  `blood_group_id` int(11) DEFAULT NULL,
  `body_type_id` int(11) DEFAULT NULL,
  `complexion_id` int(11) DEFAULT NULL,
  `diet_id` int(11) DEFAULT NULL,
  `education_id` int(11) DEFAULT NULL,
  `family_status_id` int(11) DEFAULT NULL,
  `family_type_id` int(11) DEFAULT NULL,
  `family_value_id` int(11) DEFAULT NULL,
  `gothram_id` int(11) DEFAULT NULL,
  `height_id` int(11) DEFAULT NULL,
  `income_id` int(11) DEFAULT NULL,
  `moonsign_id` int(11) DEFAULT NULL,
  `occupation_id` int(11) DEFAULT NULL,
  `resident_status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`member_id`, `member_user_id`, `company_id`, `member_name`, `member_address`, `country_id`, `state_id`, `district_id`, `tahasil_id`, `city_id`, `member_area`, `member_gender`, `member_birth_date`, `member_age`, `language_id`, `religion_id`, `member_email`, `member_mobile`, `member_otp`, `is_otp_check`, `member_password`, `member_img`, `member_img_num`, `onbehalf_id`, `marital_status`, `cast_id`, `mamber_date`, `member_status`, `member_addedby`, `member_date2`, `sub_cast_id`, `blood_group_id`, `body_type_id`, `complexion_id`, `diet_id`, `education_id`, `family_status_id`, `family_type_id`, `family_value_id`, `gothram_id`, `height_id`, `income_id`, `moonsign_id`, `occupation_id`, `resident_status_id`) VALUES
(2, 0, 3, 'Pravin Patil', 'Kolhapur ', 3, 5, 4, 2, 7, 'Rajarampuri', 'Male', '01-01-2000', NULL, 3, 3, 'abc@gmail.com', '9876543211', NULL, 0, '123456', NULL, 4, 0, '0', 3, NULL, 'active', '3', '2020-01-14 10:44:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 0, 3, 'Pruthvi kadam', 'a/p Kaneri  Math', 3, 5, 4, 2, 7, 'kaneri Math', 'Male', '01-01-1993', NULL, 3, 3, 'abc@gmail.com', '9876543212', '555666', 1, '123456', NULL, 4, 0, '0', 3, NULL, 'active', '3', '2020-01-14 11:08:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 0, 3, 'demo', 'ttt', 3, 5, 4, 2, 8, 'ooo', 'Female', '01-02-1990', NULL, 3, 3, 'ddd@mmm.com', '9988556633', '222333', 1, '123456', 'profile_4_1580194865.jpg', 4, 1, '1', 3, NULL, 'active', '3', '2020-01-22 06:32:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 0, 3, 'Dhananjay ', 'Kagal', 3, 5, 4, 2, 7, 'area1', 'Male', '04-02-1989', NULL, 3, 3, 'aaaa@gmail.com', '9955447788', NULL, 0, '123', NULL, 4, NULL, '1', 3, NULL, 'active', '0', '2020-01-22 06:32:12', 2, 2, 3, 1, 2, 3, 2, 1, 2, 2, 3, 2, 2, 3, 2),
(6, 0, 0, 'dfgdsfg', 'dsfg', 3, 5, 4, 3, 7, 'dfg', 'Male', '02-01-1992', NULL, 2, 3, 'demo@qqq.com', '9966332255', NULL, 0, '123', NULL, 4, NULL, '1', 3, NULL, 'active', '0', '2020-01-22 06:31:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 18, 0, 'Demo Add Lead', 'dfgdfg', 3, 5, 4, 2, 8, 'dsfg', 'Male', '15-06-1991', NULL, 3, 3, 'fgdf@sdf.com', '9673454383', '400367', 1, '123456', NULL, 4, NULL, '1', 3, '28-01-2020', 'deactivate', '0', '2020-01-28 10:03:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `member_image`
--

CREATE TABLE `member_image` (
  `member_image_id` bigint(20) NOT NULL,
  `member_id` int(11) NOT NULL,
  `member_image_name` varchar(250) NOT NULL,
  `member_image_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member_image`
--

INSERT INTO `member_image` (`member_image_id`, `member_id`, `member_image_name`, `member_image_date`) VALUES
(1, 4, 'member_image_4_1580194823.jpg', '2020-01-28 07:00:23'),
(3, 4, 'member_image_4_1580194596.jpg', '2020-01-28 06:56:36'),
(6, 4, 'member_image_4_1580194834.jpg', '2020-01-28 07:00:34'),
(9, 4, 'member_image_4_1580194845.jpg', '2020-01-28 07:00:45');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` bigint(20) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `from_member_id` int(11) NOT NULL,
  `to_member_id` int(11) NOT NULL,
  `message_text` text NOT NULL,
  `message_date` varchar(20) NOT NULL,
  `message_time` varchar(20) NOT NULL,
  `message_date2` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`message_id`, `company_id`, `from_member_id`, `to_member_id`, `message_text`, `message_date`, `message_time`, `message_date2`) VALUES
(1, 0, 5, 4, 'Hello', '24-01-2020', '10:01:28 AM', '2020-01-24 10:02:28'),
(2, 0, 4, 6, 'hhhjjj', '24-01-2020', '11:01:03 AM', '2020-01-25 04:46:17'),
(3, 0, 6, 4, 'fdgdfg', '25-01-2020', '05:01:40 AM', '2020-01-25 06:40:56'),
(4, NULL, 4, 6, 'uuu', '25-01-2020', '06:01:21 AM', '2020-01-25 06:57:21'),
(5, NULL, 4, 6, 'fghgh', '25-01-2020', '07:01:06 AM', '2020-01-25 07:08:06'),
(6, NULL, 4, 6, 'dfgdfg', '25-01-2020', '07:01:41 AM', '2020-01-25 07:08:41'),
(7, NULL, 4, 6, 'dfsdf', '25-01-2020', '07:01:59 AM', '2020-01-25 07:08:59'),
(8, NULL, 4, 6, 'gvdg', '25-01-2020', '07:01:49 AM', '2020-01-25 07:09:49'),
(9, NULL, 4, 6, 'kkk', '25-01-2020', '07:01:54 AM', '2020-01-25 07:09:54'),
(10, NULL, 4, 6, 'uuy', '25-01-2020', '07:01:00 AM', '2020-01-25 07:10:00'),
(11, NULL, 4, 6, 'fdgdfg', '25-01-2020', '07:01:46 AM', '2020-01-25 07:10:46'),
(12, NULL, 4, 6, 'hii', '25-01-2020', '07:01:33 AM', '2020-01-25 07:23:33');

-- --------------------------------------------------------

--
-- Table structure for table `moonsign`
--

CREATE TABLE `moonsign` (
  `moonsign_id` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `moonsign_name` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `moonsign`
--

INSERT INTO `moonsign` (`moonsign_id`, `company_id`, `user_id`, `moonsign_name`, `date`) VALUES
(2, 3, 3, 'Mithun', '2019-12-26 12:13:39');

-- --------------------------------------------------------

--
-- Table structure for table `occupation`
--

CREATE TABLE `occupation` (
  `occupation_id` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `occupation_name` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `occupation`
--

INSERT INTO `occupation` (`occupation_id`, `company_id`, `user_id`, `occupation_name`, `date`) VALUES
(2, 3, 3, 'Businessman', '2019-12-26 12:18:00'),
(3, 3, 3, 'Manager', '2019-12-26 12:18:12');

-- --------------------------------------------------------

--
-- Table structure for table `onbehalf`
--

CREATE TABLE `onbehalf` (
  `onbehalf_id` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `onbehalf_name` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `onbehalf`
--

INSERT INTO `onbehalf` (`onbehalf_id`, `company_id`, `user_id`, `onbehalf_name`, `date`) VALUES
(1, 3, 3, 'abcd', '2019-12-26 12:24:08');

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `package_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `package_name` varchar(250) NOT NULL,
  `package_amount` double NOT NULL,
  `package_int_cnt` int(11) NOT NULL,
  `package_photo_cnt` int(11) NOT NULL,
  `package_img` varchar(250) NOT NULL,
  `package_status` varchar(50) NOT NULL DEFAULT 'active',
  `package_addedby` varchar(50) NOT NULL,
  `package_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `package`
--

INSERT INTO `package` (`package_id`, `company_id`, `package_name`, `package_amount`, `package_int_cnt`, `package_photo_cnt`, `package_img`, `package_status`, `package_addedby`, `package_date`) VALUES
(1, 3, 'www2', 1112, 22, 32, 'package_1_1579069485.jpg', 'deactivate', '3', '2020-01-15 06:25:45');

-- --------------------------------------------------------

--
-- Table structure for table `reference_by`
--

CREATE TABLE `reference_by` (
  `reference_by_id` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `reference_by_name` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reference_by`
--

INSERT INTO `reference_by` (`reference_by_id`, `company_id`, `user_id`, `reference_by_name`, `date`) VALUES
(3, 3, 3, 'abcd', '2019-12-26 12:32:06');

-- --------------------------------------------------------

--
-- Table structure for table `religion`
--

CREATE TABLE `religion` (
  `religion_id` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `religion_name` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `religion`
--

INSERT INTO `religion` (`religion_id`, `company_id`, `user_id`, `religion_name`, `date`) VALUES
(2, 3, 3, 'Muslim', '2019-12-27 07:08:56'),
(3, 3, 3, 'Hindu', '2019-12-27 07:10:04'),
(4, 3, 3, 'Shikh', '2019-12-27 07:10:16'),
(5, 3, 3, 'Parasi', '2019-12-27 07:10:25');

-- --------------------------------------------------------

--
-- Table structure for table `resident_status`
--

CREATE TABLE `resident_status` (
  `resident_status_id` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `resident_status_name` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `resident_status`
--

INSERT INTO `resident_status` (`resident_status_id`, `company_id`, `user_id`, `resident_status_name`, `date`) VALUES
(2, 3, 3, 'pqrs', '2019-12-27 09:39:57');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `role_id` bigint(20) NOT NULL,
  `role_name` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `role_name`, `date`) VALUES
(1, 'Admin', '2020-01-15 09:29:41'),
(2, 'Office Employee', '2020-01-15 09:28:50'),
(3, 'Telecaller', '2020-01-15 09:28:50'),
(4, 'Dealer', '2020-01-15 09:28:50'),
(5, 'Sub Dealer', '2020-01-15 09:28:50'),
(6, 'Member', '2020-01-28 04:53:14');

-- --------------------------------------------------------

--
-- Table structure for table `shortlist`
--

CREATE TABLE `shortlist` (
  `shortlist_id` bigint(20) NOT NULL,
  `from_member_id` int(11) NOT NULL,
  `to_member_id` int(11) NOT NULL,
  `shortlist_date` varchar(20) NOT NULL,
  `shortlist_time` varchar(20) NOT NULL,
  `shortlist_date2` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shortlist`
--

INSERT INTO `shortlist` (`shortlist_id`, `from_member_id`, `to_member_id`, `shortlist_date`, `shortlist_time`, `shortlist_date2`) VALUES
(1, 5, 4, '24-01-2020', '07:01:42 AM', '2020-01-24 07:19:42');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staff_id` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `roll_id` int(11) NOT NULL DEFAULT 1,
  `user_id` int(11) DEFAULT NULL,
  `staff_name` varchar(250) NOT NULL,
  `staff_city` varchar(150) NOT NULL,
  `staff_gender` varchar(250) NOT NULL,
  `staff_email` varchar(250) NOT NULL,
  `staff_mobile` varchar(12) NOT NULL,
  `staff_password` varchar(100) NOT NULL,
  `staff_status` varchar(20) NOT NULL DEFAULT 'active',
  `staff_addedby` varchar(100) NOT NULL,
  `staff_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_id`, `company_id`, `roll_id`, `user_id`, `staff_name`, `staff_city`, `staff_gender`, `staff_email`, `staff_mobile`, `staff_password`, `staff_status`, `staff_addedby`, `staff_date`) VALUES
(3, 1, 2, 7, 'Emp Demo', 'kop', 'Male', 'ddd@ggg.com', '9988556622', '123', 'active', '3', '2020-01-18 05:51:32');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `state_id` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `country_id` bigint(20) NOT NULL,
  `state_name` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`state_id`, `company_id`, `user_id`, `country_id`, `state_name`, `date`) VALUES
(5, 3, 3, 3, 'MAHARASHTRA ', '2019-12-27 06:46:47'),
(8, 3, 3, 3, 'Goa', '2019-12-27 06:13:09'),
(9, 3, 3, 3, 'Karnataka', '2020-01-04 06:37:45');

-- --------------------------------------------------------

--
-- Table structure for table `sub_cast`
--

CREATE TABLE `sub_cast` (
  `sub_cast_id` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `religion_id` bigint(20) NOT NULL,
  `cast_id` bigint(20) NOT NULL,
  `sub_cast_name` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sub_cast`
--

INSERT INTO `sub_cast` (`sub_cast_id`, `company_id`, `user_id`, `religion_id`, `cast_id`, `sub_cast_name`, `date`) VALUES
(2, 3, 3, 3, 3, 'Kunabi', '2019-12-28 04:25:14');

-- --------------------------------------------------------

--
-- Table structure for table `tahasil`
--

CREATE TABLE `tahasil` (
  `tahasil_id` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `country_id` bigint(20) NOT NULL,
  `state_id` bigint(20) NOT NULL,
  `district_id` bigint(20) NOT NULL,
  `tahasil_name` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tahasil`
--

INSERT INTO `tahasil` (`tahasil_id`, `company_id`, `user_id`, `country_id`, `state_id`, `district_id`, `tahasil_name`, `date`) VALUES
(2, 3, 3, 3, 5, 4, 'Karveer', '2020-01-14 07:54:48'),
(3, 3, 3, 3, 5, 4, 'Kagal', '2020-01-14 07:55:08');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT 1,
  `user_name` varchar(250) NOT NULL,
  `user_city` varchar(150) NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `user_mobile` varchar(12) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_status` varchar(20) NOT NULL DEFAULT 'active',
  `user_addedby` varchar(100) NOT NULL,
  `user_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `is_admin` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `company_id`, `role_id`, `user_name`, `user_city`, `user_email`, `user_mobile`, `user_password`, `user_status`, `user_addedby`, `user_date`, `is_admin`) VALUES
(3, 3, 1, 'Admin', 'KOLHAPUR', 'demo@mail.com', '9876543210', '123456', 'active', 'Admin', '2019-12-26 06:07:57', 1),
(7, 3, 2, 'Emp Demo', 'kop', 'ddd@ggg.com', '9988556622', '123', 'active', '3', '2020-01-21 11:47:39', 0),
(8, 3, 4, 'Demo Franc', '', 'demofranc@ooo.com', '9876543211', '123456', 'active', '7', '2020-01-21 11:48:41', 0),
(9, 3, 5, 'Demo Franc Local', '', 'ggg@jjj.com', '9876543212', '123456', 'active', '8', '2020-01-21 12:17:36', 0),
(18, 0, 6, 'Demo Add Lead', '', '', '9673454383', '123456', 'deactivate', '0', '2020-01-28 10:03:48', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `advertisement`
--
ALTER TABLE `advertisement`
  ADD PRIMARY KEY (`adv_id`);

--
-- Indexes for table `advertisement_reach`
--
ALTER TABLE `advertisement_reach`
  ADD PRIMARY KEY (`reach_id`);

--
-- Indexes for table `blood_group`
--
ALTER TABLE `blood_group`
  ADD PRIMARY KEY (`blood_group_id`);

--
-- Indexes for table `body_type`
--
ALTER TABLE `body_type`
  ADD PRIMARY KEY (`body_type_id`);

--
-- Indexes for table `cast`
--
ALTER TABLE `cast`
  ADD PRIMARY KEY (`cast_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`company_id`);

--
-- Indexes for table `complexion`
--
ALTER TABLE `complexion`
  ADD PRIMARY KEY (`complexion_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `diet`
--
ALTER TABLE `diet`
  ADD PRIMARY KEY (`diet_id`);

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`district_id`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`education_id`);

--
-- Indexes for table `family_status`
--
ALTER TABLE `family_status`
  ADD PRIMARY KEY (`family_status_id`);

--
-- Indexes for table `family_type`
--
ALTER TABLE `family_type`
  ADD PRIMARY KEY (`family_type_id`);

--
-- Indexes for table `family_value`
--
ALTER TABLE `family_value`
  ADD PRIMARY KEY (`family_value_id`);

--
-- Indexes for table `franchise`
--
ALTER TABLE `franchise`
  ADD PRIMARY KEY (`franchise_id`);

--
-- Indexes for table `franchise_type`
--
ALTER TABLE `franchise_type`
  ADD PRIMARY KEY (`franchise_type_id`);

--
-- Indexes for table `gothram`
--
ALTER TABLE `gothram`
  ADD PRIMARY KEY (`gothram_id`);

--
-- Indexes for table `height`
--
ALTER TABLE `height`
  ADD PRIMARY KEY (`height_id`);

--
-- Indexes for table `income`
--
ALTER TABLE `income`
  ADD PRIMARY KEY (`income_id`);

--
-- Indexes for table `interest`
--
ALTER TABLE `interest`
  ADD PRIMARY KEY (`interest_id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`language_id`);

--
-- Indexes for table `marital_status`
--
ALTER TABLE `marital_status`
  ADD PRIMARY KEY (`marital_status_id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `member_image`
--
ALTER TABLE `member_image`
  ADD PRIMARY KEY (`member_image_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `moonsign`
--
ALTER TABLE `moonsign`
  ADD PRIMARY KEY (`moonsign_id`);

--
-- Indexes for table `occupation`
--
ALTER TABLE `occupation`
  ADD PRIMARY KEY (`occupation_id`);

--
-- Indexes for table `onbehalf`
--
ALTER TABLE `onbehalf`
  ADD PRIMARY KEY (`onbehalf_id`);

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`package_id`);

--
-- Indexes for table `reference_by`
--
ALTER TABLE `reference_by`
  ADD PRIMARY KEY (`reference_by_id`);

--
-- Indexes for table `religion`
--
ALTER TABLE `religion`
  ADD PRIMARY KEY (`religion_id`);

--
-- Indexes for table `resident_status`
--
ALTER TABLE `resident_status`
  ADD PRIMARY KEY (`resident_status_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `shortlist`
--
ALTER TABLE `shortlist`
  ADD PRIMARY KEY (`shortlist_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`state_id`);

--
-- Indexes for table `sub_cast`
--
ALTER TABLE `sub_cast`
  ADD PRIMARY KEY (`sub_cast_id`);

--
-- Indexes for table `tahasil`
--
ALTER TABLE `tahasil`
  ADD PRIMARY KEY (`tahasil_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `advertisement`
--
ALTER TABLE `advertisement`
  MODIFY `adv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `advertisement_reach`
--
ALTER TABLE `advertisement_reach`
  MODIFY `reach_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `blood_group`
--
ALTER TABLE `blood_group`
  MODIFY `blood_group_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `body_type`
--
ALTER TABLE `body_type`
  MODIFY `body_type_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cast`
--
ALTER TABLE `cast`
  MODIFY `cast_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `company_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `complexion`
--
ALTER TABLE `complexion`
  MODIFY `complexion_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `country_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `diet`
--
ALTER TABLE `diet`
  MODIFY `diet_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `district`
--
ALTER TABLE `district`
  MODIFY `district_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `education_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `family_status`
--
ALTER TABLE `family_status`
  MODIFY `family_status_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `family_type`
--
ALTER TABLE `family_type`
  MODIFY `family_type_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `family_value`
--
ALTER TABLE `family_value`
  MODIFY `family_value_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `franchise`
--
ALTER TABLE `franchise`
  MODIFY `franchise_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `franchise_type`
--
ALTER TABLE `franchise_type`
  MODIFY `franchise_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `gothram`
--
ALTER TABLE `gothram`
  MODIFY `gothram_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `height`
--
ALTER TABLE `height`
  MODIFY `height_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `income`
--
ALTER TABLE `income`
  MODIFY `income_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `interest`
--
ALTER TABLE `interest`
  MODIFY `interest_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `language_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `marital_status`
--
ALTER TABLE `marital_status`
  MODIFY `marital_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `member_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `member_image`
--
ALTER TABLE `member_image`
  MODIFY `member_image_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `moonsign`
--
ALTER TABLE `moonsign`
  MODIFY `moonsign_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `occupation`
--
ALTER TABLE `occupation`
  MODIFY `occupation_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `onbehalf`
--
ALTER TABLE `onbehalf`
  MODIFY `onbehalf_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `package`
--
ALTER TABLE `package`
  MODIFY `package_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reference_by`
--
ALTER TABLE `reference_by`
  MODIFY `reference_by_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `religion`
--
ALTER TABLE `religion`
  MODIFY `religion_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `resident_status`
--
ALTER TABLE `resident_status`
  MODIFY `resident_status_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `role_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `shortlist`
--
ALTER TABLE `shortlist`
  MODIFY `shortlist_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `staff_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `state_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sub_cast`
--
ALTER TABLE `sub_cast`
  MODIFY `sub_cast_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tahasil`
--
ALTER TABLE `tahasil`
  MODIFY `tahasil_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;