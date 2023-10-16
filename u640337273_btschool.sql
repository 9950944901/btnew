-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 13, 2023 at 05:24 AM
-- Server version: 10.5.19-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u640337273_btschool`
--

-- --------------------------------------------------------

--
-- Table structure for table `addmission_enquiry`
--

CREATE TABLE `addmission_enquiry` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `desc` longtext DEFAULT NULL,
  `note` longtext DEFAULT NULL,
  `date` longtext DEFAULT NULL,
  `follow_date` varchar(255) DEFAULT NULL,
  `assigned` varchar(255) DEFAULT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `number_of_child` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1 = ACTIVE , 0 = INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addmission_enquiry`
--

INSERT INTO `addmission_enquiry` (`id`, `user_id`, `name`, `email`, `phone`, `address`, `desc`, `note`, `date`, `follow_date`, `assigned`, `reference`, `source`, `class`, `number_of_child`, `status`, `created_at`, `updated_at`) VALUES
(1, '2', 'Amit Kumar', 'amitkumar@gmail.com', '9090909090', 'Mansarovar, Jaipur', 'I am here for admission enquiry.', 'So please provide me some details about your school.', '2023-06-28', '2023-06-29', 'Akshay Kumar', 'Self', 'Self', '10', '2', 1, '2023-06-28 13:17:11', '2023-06-28 13:20:27'),
(2, '2', 'Sooraj Singh', 'sooraj@gmail.com', '7887788778', 'Jaipur', 'I am here for the admission enquiry.', 'So please provide me some details about your school.', '2023-06-29', '2023-06-29', 'Harshita', 'Self', 'Self', '12', '2', 1, '2023-06-29 04:15:10', '2023-06-29 04:15:10'),
(3, '2', 'Abhishek Kumawat', 'abhishek@gmail.com', '6776677666', 'Jaipur', 'I am here for the admission enquiry.', 'So please provide me some details about your school.', '2023-06-29', '2023-06-29', 'Harshita', 'Self', 'Self', '11', '2', 1, '2023-06-29 04:17:11', '2023-06-29 04:17:11'),
(4, '2', 'Neha Saini', 'nehasaini@gmail.com', '8778877887', 'Jaipur', 'I am here for admission enquiry.', 'So please provide me some details about your school.', '2023-06-29', '2023-06-29', 'Harshita', 'Self', 'Self', '10', '2', 1, '2023-06-29 04:18:46', '2023-06-29 04:18:46'),
(5, '2', 'Rahul Yadav', 'rahul@gmail.com', '9898898998', 'Jaipur', 'I am here for admission enquiry.', 'So please provide me some details about n your school.', '2023-06-29', '2023-06-29', 'Harshita', 'Self', 'Self', '10', '2', 1, '2023-06-29 04:20:27', '2023-06-29 04:20:27'),
(6, '4', 'Shubham Sharma', 'shubham@gmail.com', '8000008567', 'Jaipur', 'I am here for admission enquiry.', 'So please provide me some details about your school.', '2023-06-29', '2023-06-30', 'Geetika', 'Select', NULL, NULL, NULL, 1, '2023-06-29 07:05:08', '2023-06-29 07:05:08'),
(7, '4', 'Sunil Sharma', 'sunil@gmail.com', '9852653246', 'Jaipur', 'I am here for some admission enquiry.', 'So please provide me some details about your school.', '2023-06-14', '2023-06-22', 'Geetika', 'Self', 'Self', NULL, '2', 1, '2023-06-29 07:10:48', '2023-06-29 07:10:48'),
(8, '4', 'Prashant Sharma', 'prashant@gmail.com', '9088768676', 'Jaipur', 'I am here for some enquiry', 'So please provide me some details about your school.', '2023-06-29', '2023-06-29', 'Geetika', 'Self', 'Self', '7', '2', 1, '2023-06-29 07:31:48', '2023-06-29 07:31:48'),
(9, '4', 'Naveen Kumar', 'naveen@gmail.com', '8347873678', 'Jaipur', 'I am here for some admission enquiry.', 'So please provide me some details about your school.', '2023-06-29', '2023-06-29', 'Geetika', 'Google', 'Google', '11', '2', 1, '2023-06-29 08:22:36', '2023-06-30 06:08:40'),
(10, '4', 'Neelesh Kumar', 'neelesh@gmail.com', '8000000001', 'Jaipur', 'I am here for admission enquiry.', 'So please provide e some details about your school.', '2023-06-30', '2023-06-30', 'Ritika', 'Social Media', 'Social Media', '11', '2', 1, '2023-06-30 06:10:33', '2023-06-30 06:10:33'),
(12, '2', 'Ajay Kumar', 'ajay@gmail.com', '8000000002', 'Jaipur', 'Admission', 'Admission enquiry', '2023-09-04', '2023-09-04', 'Harshita', 'Friend', 'Relative', '10', '2', 1, '2023-09-04 11:24:13', '2023-09-04 11:24:13');

-- --------------------------------------------------------

--
-- Table structure for table `add_attend_staff`
--

CREATE TABLE `add_attend_staff` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `staff_id` varchar(255) DEFAULT NULL,
  `attendance` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1 = ACTIVE , 0 = INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `add_attend_staff`
--

INSERT INTO `add_attend_staff` (`id`, `user_id`, `staff_id`, `attendance`, `desc`, `date`, `status`, `created_at`, `updated_at`) VALUES
(70, '2', '2', 'Present', NULL, '2023-09-04', 1, '2023-09-04 12:31:44', '2023-09-04 12:31:44'),
(71, '2', '3', 'Absent', NULL, '2023-09-04', 1, '2023-09-04 12:31:44', '2023-09-04 12:31:44'),
(72, '2', '5', 'Present', NULL, '2023-09-04', 1, '2023-09-04 12:31:44', '2023-09-04 12:31:44'),
(73, '2', '6', 'Absent', NULL, '2023-09-04', 1, '2023-09-04 12:31:44', '2023-09-04 12:31:44'),
(74, '2', '12', 'Present', NULL, '2023-09-04', 1, '2023-09-04 12:31:44', '2023-09-04 12:31:44'),
(75, '2', '13', 'Absent', NULL, '2023-09-04', 1, '2023-09-04 12:31:44', '2023-09-04 12:31:44'),
(76, '2', '14', 'Present', NULL, '2023-09-04', 1, '2023-09-04 12:31:44', '2023-09-04 12:31:44'),
(77, '2', '2', 'Present', NULL, '2023-09-03', 1, '2023-09-04 12:32:08', '2023-09-04 12:32:08'),
(78, '2', '3', 'Late', NULL, '2023-09-03', 1, '2023-09-04 12:32:08', '2023-09-04 12:32:08'),
(79, '2', '5', 'Present', NULL, '2023-09-03', 1, '2023-09-04 12:32:08', '2023-09-04 12:32:08'),
(80, '2', '6', 'Late', NULL, '2023-09-03', 1, '2023-09-04 12:32:08', '2023-09-04 12:32:08'),
(81, '2', '12', 'Half Day', NULL, '2023-09-03', 1, '2023-09-04 12:32:08', '2023-09-04 12:32:08'),
(82, '2', '13', 'Absent', NULL, '2023-09-03', 1, '2023-09-04 12:32:08', '2023-09-04 12:32:08'),
(83, '2', '14', 'Present', NULL, '2023-09-03', 1, '2023-09-04 12:32:08', '2023-09-04 12:32:08'),
(84, '2', '2', 'Present', NULL, '2023-09-02', 1, '2023-09-04 12:32:54', '2023-09-04 12:32:54'),
(85, '2', '3', 'Late', NULL, '2023-09-02', 1, '2023-09-04 12:32:54', '2023-09-04 12:32:54'),
(86, '2', '5', 'Late', NULL, '2023-09-02', 1, '2023-09-04 12:32:54', '2023-09-04 12:32:54'),
(87, '2', '6', 'Present', NULL, '2023-09-02', 1, '2023-09-04 12:32:54', '2023-09-04 12:32:54'),
(88, '2', '12', 'Late', NULL, '2023-09-02', 1, '2023-09-04 12:32:54', '2023-09-04 12:32:54'),
(89, '2', '13', 'Present', NULL, '2023-09-02', 1, '2023-09-04 12:32:54', '2023-09-04 12:32:54'),
(90, '2', '14', 'Absent', NULL, '2023-09-02', 1, '2023-09-04 12:32:54', '2023-09-04 12:32:54'),
(91, '2', '2', 'Present', NULL, '2023-09-01', 1, '2023-09-04 12:33:35', '2023-09-04 12:33:35'),
(92, '2', '3', 'Late', NULL, '2023-09-01', 1, '2023-09-04 12:33:35', '2023-09-04 12:33:35'),
(93, '2', '5', 'Absent', NULL, '2023-09-01', 1, '2023-09-04 12:33:35', '2023-09-04 12:33:35'),
(94, '2', '6', 'Half Day', NULL, '2023-09-01', 1, '2023-09-04 12:33:35', '2023-09-04 12:33:35'),
(95, '2', '12', 'Absent', NULL, '2023-09-01', 1, '2023-09-04 12:33:35', '2023-09-04 12:33:35'),
(96, '2', '13', 'Late', NULL, '2023-09-01', 1, '2023-09-04 12:33:35', '2023-09-04 12:33:35'),
(97, '2', '14', 'Present', NULL, '2023-09-01', 1, '2023-09-04 12:33:35', '2023-09-04 12:33:35');

-- --------------------------------------------------------

--
-- Table structure for table `add_class`
--

CREATE TABLE `add_class` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1 = ACTIVE , 0 = INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `add_class`
--

INSERT INTO `add_class` (`id`, `user_id`, `class`, `name`, `status`, `created_at`, `updated_at`) VALUES
(3, '2', '10', NULL, 1, '2023-06-28 12:54:19', '2023-06-28 12:54:19'),
(4, '2', '9', NULL, 1, '2023-06-28 12:56:33', '2023-06-28 12:56:33'),
(5, '2', '8', NULL, 1, '2023-06-28 12:56:50', '2023-06-28 12:56:58'),
(6, '2', '7', NULL, 1, '2023-06-28 12:57:02', '2023-06-28 12:57:02'),
(7, '2', '6', NULL, 1, '2023-06-28 12:57:06', '2023-06-28 12:57:06'),
(8, '2', '5', NULL, 1, '2023-06-28 12:57:12', '2023-06-28 12:57:12'),
(9, '2', '4', NULL, 1, '2023-06-28 12:57:17', '2023-06-28 12:57:17'),
(10, '2', '3', NULL, 1, '2023-06-28 12:57:26', '2023-06-28 12:57:26'),
(11, '2', '2', NULL, 1, '2023-06-28 12:57:34', '2023-06-28 12:57:34'),
(12, '2', '1', NULL, 1, '2023-06-28 12:57:39', '2023-06-28 12:57:39'),
(13, '4', '12', NULL, 1, '2023-06-29 07:12:13', '2023-06-29 07:12:13'),
(14, '4', '11', NULL, 1, '2023-06-29 07:12:18', '2023-06-29 07:12:18'),
(15, '4', '10', NULL, 1, '2023-06-29 07:12:58', '2023-06-29 07:12:58'),
(16, '4', '9', NULL, 1, '2023-06-29 07:13:05', '2023-06-29 07:13:05'),
(17, '4', '8', NULL, 1, '2023-06-29 07:13:10', '2023-06-29 07:13:10'),
(18, '4', '7', NULL, 1, '2023-06-29 07:13:14', '2023-06-29 07:13:14'),
(19, '4', '6', NULL, 1, '2023-06-29 07:13:19', '2023-06-29 07:13:19'),
(20, '4', '5', NULL, 1, '2023-06-29 07:13:23', '2023-06-29 07:13:23'),
(21, '4', '4', NULL, 1, '2023-06-29 07:13:29', '2023-06-29 07:13:29'),
(22, '4', '3', NULL, 1, '2023-06-29 07:13:34', '2023-06-29 07:13:34'),
(23, '4', '2', NULL, 1, '2023-06-29 07:13:39', '2023-06-29 07:13:39'),
(24, '4', '1', NULL, 1, '2023-06-29 07:13:55', '2023-06-29 07:13:55');

-- --------------------------------------------------------

--
-- Table structure for table `add_class_time`
--

CREATE TABLE `add_class_time` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `staff_id` varchar(255) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `section` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `subject_group` varchar(255) DEFAULT NULL,
  `start_time` varchar(255) DEFAULT NULL,
  `end_time` varchar(255) DEFAULT NULL,
  `room_no` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1 = ACTIVE , 0 = INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `add_collect_fees`
--

CREATE TABLE `add_collect_fees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `stu_id` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `fees_group` varchar(255) DEFAULT NULL,
  `fees_type` varchar(255) DEFAULT NULL,
  `payment_mode` varchar(255) DEFAULT NULL,
  `note` longtext DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1 = ACTIVE , 0 = INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `add_collect_fees`
--

INSERT INTO `add_collect_fees` (`id`, `session`, `user_id`, `stu_id`, `date`, `fees_group`, `fees_type`, `payment_mode`, `note`, `total`, `status`, `created_at`, `updated_at`) VALUES
(27, '2023-24', '2', '719', '2023-09-04', '2', NULL, 'Cash', NULL, '19000', 1, '2023-09-04 12:17:27', '2023-09-04 12:17:27'),
(28, '2023-24', '2', '698', '2023-09-04', '3', NULL, 'Cash', NULL, '26000', 1, '2023-09-04 12:17:54', '2023-09-04 12:17:54'),
(30, '2023-24', '2', '771', '2023-09-04', '1', NULL, 'Cash', NULL, '18000', 1, '2023-09-04 12:29:38', '2023-09-04 12:29:38'),
(31, '2023-24', '2', '771', '2023-09-04', '1', NULL, 'Cash', NULL, '18000', 1, '2023-09-04 12:29:38', '2023-09-04 12:29:38'),
(32, '2023-24', '2', '768', '2023-09-04', '9', NULL, 'Cash', NULL, '42000', 1, '2023-09-04 12:30:21', '2023-09-04 12:30:21'),
(33, '2023-24', '2', '767', '2023-09-04', '8', NULL, 'Cash', NULL, '36000', 1, '2023-09-04 12:30:52', '2023-09-04 12:30:52'),
(34, '2023-24', '2', '733', '2023-09-04', '2', NULL, 'Cash', NULL, '22000', 1, '2023-09-04 12:33:58', '2023-09-04 12:33:58'),
(35, '2023-24', '2', '699', '2023-09-04', '3', NULL, 'Cash', NULL, '29000', 1, '2023-09-04 12:34:38', '2023-09-04 12:34:38'),
(36, '2023-24', '2', '621', '2023-09-04', '4', NULL, 'Cash', NULL, '28000', 1, '2023-09-04 12:35:06', '2023-09-04 12:35:06'),
(37, '2023-24', '2', '574', '2023-09-04', '5', NULL, 'Cash', NULL, '30000', 1, '2023-09-04 12:35:43', '2023-09-04 12:35:43'),
(38, '2023-24', '2', '763', '2023-09-04', '1', NULL, 'Cash', NULL, '20000', 1, '2023-09-04 12:39:18', '2023-09-04 12:39:18'),
(39, '2023-24', '2', '767', '2023-09-04', '8', NULL, 'Cash', NULL, '10000', 1, '2023-09-04 12:39:50', '2023-09-04 12:39:50'),
(40, '2023-24', '2', '770', '2023-09-08', '10', NULL, 'Cash', NULL, '5000', 1, '2023-09-08 05:49:15', '2023-09-08 05:49:15'),
(41, '2023-24', '2', '770', '2023-09-08', '10', NULL, 'UPI', NULL, '10000', 1, '2023-09-08 05:49:40', '2023-09-08 05:49:40'),
(42, '2023-24', '2', '772', '2023-10-06', '10', NULL, 'Cash', NULL, '35000', 1, '2023-10-06 09:26:56', '2023-10-06 09:26:56');

-- --------------------------------------------------------

--
-- Table structure for table `add_department`
--

CREATE TABLE `add_department` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1 = ACTIVE , 0 = INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `add_department`
--

INSERT INTO `add_department` (`id`, `user_id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(9, NULL, 'Department 1', 1, '2023-06-20 05:00:48', '2023-06-20 05:00:48'),
(10, '1', 'Department 1', 1, '2023-06-20 05:09:22', '2023-06-20 05:09:22'),
(14, '2', 'Teaching Department', 1, '2023-06-29 05:44:53', '2023-06-29 05:44:53'),
(15, '2', 'Accounts Department', 1, '2023-06-29 05:45:01', '2023-06-29 05:45:12'),
(16, '2', 'Sports Department', 1, '2023-06-29 05:45:21', '2023-06-29 05:45:21'),
(17, '2', 'Library Department', 1, '2023-06-29 05:45:30', '2023-06-29 05:45:30'),
(18, '4', 'Accounts', 1, '2023-06-29 10:22:11', '2023-06-29 12:58:37'),
(19, '4', 'Education', 1, '2023-06-29 10:22:18', '2023-06-29 12:58:46'),
(20, '4', 'Sports', 1, '2023-06-29 12:58:59', '2023-06-29 12:58:59');

-- --------------------------------------------------------

--
-- Table structure for table `add_exam_group`
--

CREATE TABLE `add_exam_group` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `exam_type` varchar(255) DEFAULT NULL,
  `desc` longtext DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1 = ACTIVE , 0 = INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `add_exam_group`
--

INSERT INTO `add_exam_group` (`id`, `user_id`, `name`, `exam_type`, `desc`, `status`, `created_at`, `updated_at`) VALUES
(2, NULL, 'Half Yearly Examination', 'GPA Grading System', 'AAAA', 1, '2023-01-02 05:13:05', '2023-05-05 04:58:15'),
(3, NULL, 'annual examination', 'School Based Grading System', 'AAAAAA', 1, '2023-01-02 05:13:13', '2023-05-05 04:57:26');

-- --------------------------------------------------------

--
-- Table structure for table `add_expense`
--

CREATE TABLE `add_expense` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `expense_head` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `invoice_no` longtext DEFAULT NULL,
  `amount` longtext DEFAULT NULL,
  `date` longtext DEFAULT NULL,
  `document` longtext DEFAULT NULL,
  `desc` longtext DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1 = ACTIVE , 0 = INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `add_expense`
--

INSERT INTO `add_expense` (`id`, `user_id`, `expense_head`, `name`, `invoice_no`, `amount`, `date`, `document`, `desc`, `status`, `created_at`, `updated_at`) VALUES
(1, '2', 'Rahul Yadav', 'Projectors', '87657', '300000', '2023-06-29', NULL, 'Bought projectors for classes.', 1, '2023-06-29 05:38:34', '2023-06-29 05:38:34'),
(2, '2', 'Neha Saini', 'Computers', '24522', '350000', '2023-06-29', NULL, 'Bought Computer for all classes.', 1, '2023-06-29 05:39:56', '2023-06-29 05:39:56'),
(3, '2', 'Abhishek Kumawat', 'Transportation', '125252', '2200000', '2023-06-29', NULL, 'Bought 2 buses', 1, '2023-06-29 05:40:37', '2023-06-29 05:40:37'),
(4, '2', 'Amit Kumar', 'Staff Salary', '441223', '150000', '2023-06-29', NULL, 'Salary paid to complete staff.', 1, '2023-06-29 05:41:41', '2023-06-29 05:41:41'),
(5, '2', 'Sooraj Singh Khatri', 'Electricity & Electrical Equipment', '6323', '500000', '2023-06-27', NULL, 'Bought complete electrical equipment and paid complete electricity bill.', 1, '2023-06-29 05:43:17', '2023-06-29 05:43:48'),
(6, '4', 'Abhishek', 'Transportation', '7438', '3000000', '2023-06-29', NULL, 'Bought Buses', 1, '2023-06-29 10:16:17', '2023-06-29 10:16:17'),
(7, '4', 'Sooraj', 'Library', '7656', '100000', '2023-06-27', NULL, 'Bought books for library', 1, '2023-06-29 10:17:00', '2023-06-29 10:17:00'),
(8, '4', 'Iyer', 'Electrical Equipment', '7834', '874643', '2023-06-14', NULL, 'Bought AC and Paid Electricity bill', 1, '2023-06-29 10:20:36', '2023-06-29 10:20:36'),
(9, '4', 'Swamy', 'Staff Fees', '67473', '2000000', '2023-06-29', NULL, 'Paid staff Fees', 1, '2023-06-29 10:21:27', '2023-06-29 10:21:38');

-- --------------------------------------------------------

--
-- Table structure for table `add_income`
--

CREATE TABLE `add_income` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `income_head` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `invoice_no` longtext DEFAULT NULL,
  `amount` longtext DEFAULT NULL,
  `date` longtext DEFAULT NULL,
  `document` longtext DEFAULT NULL,
  `desc` longtext DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1 = ACTIVE , 0 = INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `add_leave_type`
--

CREATE TABLE `add_leave_type` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1 = ACTIVE , 0 = INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `add_leave_type`
--

INSERT INTO `add_leave_type` (`id`, `user_id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Paid leave', 1, '2022-12-27 02:05:55', '2022-12-27 02:05:55'),
(3, NULL, 'SDSD', 1, '2022-12-27 02:06:07', '2022-12-27 02:20:20'),
(6, NULL, '0123', 1, '2023-01-02 04:29:08', '2023-01-02 04:29:08');

-- --------------------------------------------------------

--
-- Table structure for table `add_lesson`
--

CREATE TABLE `add_lesson` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `section` varchar(255) DEFAULT NULL,
  `subject_group` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `lesson` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1 = ACTIVE , 0 = INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `add_notice`
--

CREATE TABLE `add_notice` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `title` longtext DEFAULT NULL,
  `desc` longtext DEFAULT NULL,
  `notice_date` varchar(255) DEFAULT NULL,
  `publish_on` varchar(255) DEFAULT NULL,
  `send_to` varchar(255) DEFAULT NULL,
  `other` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1 = ACTIVE , 0 = INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `add_notice`
--

INSERT INTO `add_notice` (`id`, `user_id`, `title`, `desc`, `notice_date`, `publish_on`, `send_to`, `other`, `status`, `created_at`, `updated_at`) VALUES
(6, NULL, 'HOLIDAY', '<p>Every school holiday period, there&rsquo;s a good chance you&rsquo;ll see a dip in your social media engagement</p>', '2023-01-12', '2023-01-12', '[\"Admin\",\"Teacher\"]', NULL, 1, '2023-01-10 23:48:42', '2023-05-26 02:21:22');

-- --------------------------------------------------------

--
-- Table structure for table `add_phone_call`
--

CREATE TABLE `add_phone_call` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `desc` longtext DEFAULT NULL,
  `follow_date` varchar(255) DEFAULT NULL,
  `call_duration` varchar(255) DEFAULT NULL,
  `note` longtext DEFAULT NULL,
  `call_type` varchar(255) DEFAULT NULL,
  `other` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1 = ACTIVE , 0 = INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `add_phone_call`
--

INSERT INTO `add_phone_call` (`id`, `user_id`, `phone`, `name`, `date`, `desc`, `follow_date`, `call_duration`, `note`, `call_type`, `other`, `status`, `created_at`, `updated_at`) VALUES
(1, '2', '8000000011', 'Gagan Kumar', '2023-06-29', 'Called for some basic enqiuries', '2023-06-29', '10:20', NULL, 'Incoming', NULL, 1, '2023-06-29 04:50:59', '2023-06-29 04:50:59'),
(2, '2', '8000000012', 'Rajveer Kumar', '2023-06-29', 'Called for some basic enquiry.', '2023-06-29', '10:23', NULL, 'Incoming', NULL, 1, '2023-06-29 04:53:46', '2023-06-29 04:53:46'),
(4, '2', '8000000013', 'Vaibhav Kumar', '2023-06-29', 'Called for some basic enquiry.', '2023-06-29', '10:28', NULL, 'Outgoing', NULL, 1, '2023-06-29 04:59:05', '2023-06-29 04:59:05'),
(5, '2', '8000000111', 'Sanjay Kumar', '2023-06-29', NULL, '2023-06-29', '11:29', NULL, 'Outgoing', NULL, 1, '2023-06-29 04:59:46', '2023-06-29 04:59:46'),
(6, '2', '8000000122', 'Ravi Kumar', '2023-06-29', NULL, '2023-06-29', '12:30', NULL, 'Incoming', NULL, 1, '2023-06-29 05:00:25', '2023-06-29 05:00:25'),
(7, '4', '8765467897', 'Archna Singh', '2023-06-23', NULL, '2023-06-26', '14:08', NULL, 'Incoming', NULL, 1, '2023-06-29 08:38:51', '2023-06-29 08:38:51'),
(8, '4', '8000005446', 'Arti Devi', '2023-06-26', NULL, '2023-06-29', '14:14', NULL, 'Incoming', NULL, 1, '2023-06-29 08:45:02', '2023-06-29 08:45:02'),
(9, '4', '7865766678', 'Swati Mittal', '2023-06-29', NULL, '2023-07-08', NULL, NULL, 'Incoming', NULL, 1, '2023-06-29 08:45:34', '2023-06-29 08:45:34'),
(10, '4', '6349208937', 'Seema Sharma', '2023-06-30', NULL, NULL, '11:53', NULL, 'Incoming', NULL, 1, '2023-06-30 06:23:53', '2023-06-30 06:23:53'),
(11, '4', '4938794929', 'Anjali', '2023-07-01', NULL, '2023-06-30', '12:01', NULL, 'Incoming', NULL, 1, '2023-06-30 06:31:36', '2023-06-30 06:31:36'),
(12, '2', '8754878345', 'Sanju Samson', '2023-09-04', 'Calling......', '2023-09-04', '18:01', 'Note', 'Incoming', NULL, 1, '2023-09-04 11:31:29', '2023-09-04 11:31:29'),
(13, '2', '8754878345', 'Sanju Samson', '2023-09-04', 'Calling......', '2023-09-04', '18:01', 'Note', 'Incoming', NULL, 1, '2023-09-04 11:31:29', '2023-09-04 11:31:29');

-- --------------------------------------------------------

--
-- Table structure for table `add_promote_student`
--

CREATE TABLE `add_promote_student` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `student_id` varchar(255) DEFAULT NULL,
  `current_result` varchar(255) DEFAULT NULL,
  `session_status` varchar(255) DEFAULT NULL,
  `session` varchar(255) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `section` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1 = ACTIVE , 0 = INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `add_promote_student`
--

INSERT INTO `add_promote_student` (`id`, `user_id`, `student_id`, `current_result`, `session_status`, `session`, `class`, `section`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, 'Continue', '2023-24', '2', NULL, 1, '2023-06-29 05:01:20', '2023-06-29 05:01:20'),
(2, NULL, NULL, NULL, 'Continue', '2023-24', '2', NULL, 1, '2023-06-29 05:01:40', '2023-06-29 05:01:40'),
(3, NULL, NULL, NULL, 'Continue', '2023-24', '2', NULL, 1, '2023-06-29 05:02:00', '2023-06-29 05:02:00'),
(4, NULL, NULL, NULL, 'Continue', '2023-24', '2', NULL, 1, '2023-06-29 05:02:34', '2023-06-29 05:02:34'),
(5, NULL, NULL, NULL, 'Continue', '2023-24', '2', NULL, 1, '2023-06-29 05:02:47', '2023-06-29 05:02:47'),
(6, NULL, NULL, NULL, 'Continue', '2023-24', '8', NULL, 1, '2023-06-29 09:38:53', '2023-06-29 09:38:53'),
(7, NULL, NULL, NULL, 'Continue', '2023-24', '10', NULL, 1, '2023-06-29 09:41:14', '2023-06-29 09:41:14'),
(8, NULL, NULL, NULL, 'Continue', '2023-24', '8', NULL, 1, '2023-06-29 11:36:59', '2023-06-29 11:36:59'),
(9, NULL, NULL, NULL, 'Continue', '2023-24', '2', 'Section-A', 1, '2023-06-29 12:47:31', '2023-06-29 12:47:31'),
(10, NULL, NULL, NULL, 'Continue', '2024-25', '3', 'Section-A', 1, '2023-06-30 04:04:56', '2023-06-30 04:04:56'),
(11, NULL, NULL, NULL, 'Continue', '2024-25', '9', NULL, 1, '2023-06-30 04:27:00', '2023-06-30 04:27:00'),
(12, NULL, NULL, NULL, 'Continue', '2024-25', '2', 'Section-B', 1, '2023-06-30 04:27:56', '2023-06-30 04:27:56'),
(13, NULL, NULL, NULL, 'Continue', '2023-24', '3', 'Section-A', 1, '2023-06-30 04:30:33', '2023-06-30 04:30:33'),
(14, NULL, NULL, NULL, 'Continue', '2023-24', '11', 'Section-A', 1, '2023-06-30 06:41:56', '2023-06-30 06:41:56'),
(15, NULL, NULL, NULL, 'Continue', '2023-24', '11', 'Section-A', 1, '2023-06-30 06:41:57', '2023-06-30 06:41:57'),
(16, NULL, NULL, NULL, 'Continue', '2023-24', '2', 'Section-B', 1, '2023-06-30 07:01:15', '2023-06-30 07:01:15'),
(17, NULL, NULL, NULL, 'Continue', '2023-24', '10', 'Section-B', 1, '2023-09-04 11:46:05', '2023-09-04 11:46:05');

-- --------------------------------------------------------

--
-- Table structure for table `add_section`
--

CREATE TABLE `add_section` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `section` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1 = ACTIVE , 0 = INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `add_section`
--

INSERT INTO `add_section` (`id`, `user_id`, `class`, `section`, `name`, `status`, `created_at`, `updated_at`) VALUES
(17, '2', '10', 'Section-A', NULL, 1, '2023-06-28 13:04:54', '2023-06-28 13:04:54'),
(18, '2', '10', 'Section-B', NULL, 1, '2023-06-28 13:05:06', '2023-06-28 13:05:06'),
(19, '2', '9', 'Section-A', NULL, 1, '2023-06-28 13:05:16', '2023-06-28 13:05:16'),
(20, '2', '9', 'Section-B', NULL, 1, '2023-06-28 13:05:23', '2023-06-28 13:05:23'),
(21, '2', '8', 'Section-A', NULL, 1, '2023-06-28 13:05:31', '2023-06-28 13:05:31'),
(22, '2', '8', 'Section-B', NULL, 1, '2023-06-28 13:05:46', '2023-06-28 13:05:46'),
(23, '2', '7', 'Section-A', NULL, 1, '2023-06-28 13:05:53', '2023-06-28 13:05:53'),
(24, '2', '7', 'Section-B', NULL, 1, '2023-06-28 13:06:01', '2023-06-28 13:06:01'),
(25, '2', '6', 'Section-A', NULL, 1, '2023-06-28 13:08:58', '2023-06-28 13:08:58'),
(26, '2', '6', 'Section-B', NULL, 1, '2023-06-28 13:09:58', '2023-06-28 13:09:58'),
(28, '2', '5', 'Section-A', NULL, 1, '2023-06-28 13:12:16', '2023-06-28 13:12:16'),
(29, '2', '5', 'Section-B', NULL, 1, '2023-06-28 13:12:23', '2023-06-28 13:12:23'),
(30, '2', '4', 'Section-A', NULL, 1, '2023-06-28 13:12:46', '2023-06-28 13:12:46'),
(31, '2', '4', 'Section-B', NULL, 1, '2023-06-28 13:12:53', '2023-06-28 13:12:53'),
(32, '2', '3', 'Section-A', NULL, 1, '2023-06-28 13:13:08', '2023-06-28 13:13:08'),
(33, '2', '3', 'Section-B', NULL, 1, '2023-06-28 13:13:17', '2023-06-28 13:13:17'),
(34, '2', '2', 'Section-A', NULL, 1, '2023-06-28 13:13:41', '2023-06-28 13:13:41'),
(35, '2', '2', 'Section-B', NULL, 1, '2023-06-28 13:13:49', '2023-06-28 13:13:49'),
(36, '2', '1', 'Section-A', NULL, 1, '2023-06-28 13:13:58', '2023-06-28 13:13:58'),
(37, '2', '1', 'Section-B', NULL, 1, '2023-06-28 13:14:14', '2023-06-28 13:14:14'),
(38, '4', '12', 'Section-A', NULL, 1, '2023-06-29 07:14:15', '2023-06-29 07:14:15'),
(39, '4', '12', 'Section-B', NULL, 1, '2023-06-29 07:14:26', '2023-06-29 07:14:26'),
(40, '4', '11', 'Section-A', NULL, 1, '2023-06-29 07:14:34', '2023-06-29 07:14:34'),
(41, '4', '11', 'Section-B', NULL, 1, '2023-06-29 07:14:42', '2023-06-29 07:14:42'),
(42, '4', '10', 'Section-A', NULL, 1, '2023-06-29 07:14:53', '2023-06-29 07:14:53'),
(43, '4', '10', 'Section-B', NULL, 1, '2023-06-29 07:15:44', '2023-06-29 07:15:44'),
(44, '4', '9', 'Section-A', NULL, 1, '2023-06-29 07:15:53', '2023-06-29 07:15:53'),
(45, '4', '9', 'Section-B', NULL, 1, '2023-06-29 07:16:04', '2023-06-29 07:16:04'),
(46, '4', '8', 'Section-A', NULL, 1, '2023-06-29 07:16:14', '2023-06-29 07:16:14'),
(48, '4', '8', 'Section-B', NULL, 1, '2023-06-29 07:16:22', '2023-06-29 07:16:22'),
(49, '4', '7', 'Section-A', NULL, 1, '2023-06-29 07:16:31', '2023-06-29 07:16:31'),
(50, '4', '7', 'Section-B', NULL, 1, '2023-06-29 07:17:34', '2023-06-29 07:17:34'),
(51, '4', '6', 'Section-A', NULL, 1, '2023-06-29 07:17:45', '2023-06-29 07:17:45'),
(52, '4', '6', 'Section-B', NULL, 1, '2023-06-29 07:17:55', '2023-06-29 07:17:55'),
(53, '4', '5', 'Section-A', NULL, 1, '2023-06-29 07:18:03', '2023-06-29 07:18:03'),
(54, '4', '5', 'Section-B', NULL, 1, '2023-06-29 07:18:10', '2023-06-29 07:18:10'),
(55, '4', '4', 'Section-A', NULL, 1, '2023-06-29 07:18:35', '2023-06-29 07:18:35'),
(56, '4', '4', 'Section-B', NULL, 1, '2023-06-29 07:18:45', '2023-06-29 07:18:45'),
(57, '4', '3', 'Section-A', NULL, 1, '2023-06-29 07:18:56', '2023-06-29 07:18:56'),
(58, '4', '3', 'Section-B', NULL, 1, '2023-06-29 07:19:25', '2023-06-29 07:19:25'),
(59, '4', '2', 'Section-A', NULL, 1, '2023-06-29 07:19:57', '2023-06-29 07:19:57'),
(60, '4', '2', 'Section-B', NULL, 1, '2023-06-29 07:20:07', '2023-06-29 07:20:07'),
(61, '4', '1', 'Section-A', NULL, 1, '2023-06-29 07:20:15', '2023-06-29 07:21:05'),
(62, '4', '1', 'Section-B', NULL, 1, '2023-06-29 07:21:13', '2023-06-29 07:21:13');

-- --------------------------------------------------------

--
-- Table structure for table `add_staff`
--

CREATE TABLE `add_staff` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `staff_id` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `father_name` varchar(255) DEFAULT NULL,
  `mother_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `joining_date` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `contact_no` varchar(255) DEFAULT NULL,
  `marital_status` varchar(255) DEFAULT NULL,
  `staff_image` varchar(255) DEFAULT NULL,
  `cadd` longtext DEFAULT NULL,
  `padd` longtext DEFAULT NULL,
  `qualification` longtext DEFAULT NULL,
  `work_exp` longtext DEFAULT NULL,
  `note` longtext DEFAULT NULL,
  `other` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1 = ACTIVE , 0 = INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `add_staff`
--

INSERT INTO `add_staff` (`id`, `user_id`, `staff_id`, `role`, `designation`, `department`, `firstname`, `lastname`, `father_name`, `mother_name`, `email`, `gender`, `dob`, `joining_date`, `phone`, `contact_no`, `marital_status`, `staff_image`, `cadd`, `padd`, `qualification`, `work_exp`, `note`, `other`, `status`, `created_at`, `updated_at`) VALUES
(1, '2', 'STF001', 'Teacher', 'Hindi Teacher', 'Teaching Department', 'Vikas', 'Dutt', 'Vivek Dutt', 'Veena Dutt', 'vikas@gmail.com', 'Male', '1990-07-07', '2023-06-29', '8000015336', '4378973476', 'Married', 'staff1688017788.jfif', 'Rajatpath Mansarovar, Jaipur', 'Jodhpur', 'M.A (Hindi)', '4+ Years', 'Eminent personality in the field of Hindi teaching.', NULL, 0, '2023-06-29 05:49:48', '2023-06-29 06:09:45'),
(2, '2', 'STF002', 'Other', 'Sr. Accountant', 'Accounts Department', 'Dinesh', 'Kumar', 'Bheem Rao', 'Shanti Devi', 'dinesh@gmail.com', 'Male', '1995-06-29', '2023-06-29', '9785017635', '9554543324', 'Single', 'staff1688017976.jpg', 'Gopalpura, Jaipur', 'Delhi', 'Mcom', '2+ Years', 'Skillful Accountant', NULL, 0, '2023-06-29 05:52:56', '2023-09-04 12:36:58'),
(3, '2', 'STF003', 'Other', 'PT Teacher', 'Sports Department', 'Deepak', 'Sharma', 'Magan Lal', 'Munni Devi', 'deepak@gmail.com', 'Male', '1993-06-29', '2023-06-29', '9765343435', '7897664624', 'Single', 'staff1688018150.jpg', 'Ridhi Sidhi, Jaipur', 'Dausa', 'BPed', '5+ Years', 'Good PT Teacher', NULL, 1, '2023-06-29 05:55:50', '2023-06-29 05:55:50'),
(5, '2', 'STF005', 'Other', 'Librarian', 'Library Department', 'Divya', 'Agrawal', 'Deen Dayal Agrawal', 'Deepika Agrawal', 'divya@gmail.com', 'Male', '1998-06-29', '2023-06-29', '6664736373', '6634226444', 'Single', NULL, 'Jaipur', 'Jaipur', 'B.A', '1 year', 'Good librarian', NULL, 1, '2023-06-29 06:02:36', '2023-06-29 06:02:36'),
(6, '2', 'STF005', 'Teacher', 'English Teacher', 'Teaching Department', 'Lavisha', 'Agrawal', 'Manish Agrawal', 'Manisha Agrawal', 'lavisha@gmail.com', 'Female', '1997-06-29', '2023-06-29', '8659478394', '9472647575', 'Single', NULL, 'Jaipur', 'Jaipur', 'M.A (English)', '2 Years', 'Eminent personality in the field of English Teaching.', NULL, 1, '2023-06-29 06:06:05', '2023-06-29 06:06:05'),
(7, '4', 'STF001', 'Teacher', 'Physics Teacher', 'Teaching Department', 'Gajodhar', 'Singh', 'Gajanand Singh', 'Anandi Bai', 'gajodhar@gmail.com', 'Male', '1990-06-29', '2023-06-29', '67890', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-06-29 10:23:43', '2023-06-29 10:42:38'),
(8, '4', 'STF002', 'Other', 'Accountant', 'Accounts Department', 'Ramanand', 'Sagar', 'Rajanand Sagar', 'Bhakti Sagar', 'ramanand@gmail.com', 'Male', NULL, '2023-06-28', '7857567558', '4555666789', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-06-29 10:31:03', '2023-06-29 10:31:03'),
(9, '4', 'STF003', 'Sports', 'PT Teacher', 'Teaching Department', 'Deepak', 'Das', 'Champak Das', 'Champa Das', 'deepak@gmail.com', 'Male', NULL, '2023-06-26', '6726232781', '4838672888', 'Single', 'staff1688034914.jpg', 'Jaipur', 'Jaipur', 'B.A', '3 Years', 'Good Teacher', NULL, 1, '2023-06-29 10:35:14', '2023-06-29 10:35:14'),
(10, '4', 'STF004', 'Teacher', 'English Teacher', 'Education', 'Shweta', 'Singh', 'Rati Ram', 'Sudha Devi', 'shweta@gamil.com', 'Female', NULL, '2023-06-29', '6734312368', '4564567896', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-06-29 13:01:41', '2023-06-29 13:01:41'),
(11, '4', 'STF005', 'Teacher', 'Science Teacher', 'Education', 'Kamaljeet', 'Singh', 'Dhawaljeet Singh', 'Kamla Singh', 'kamaljeet@gmail.com', 'Male', '2023-06-30', '2023-06-30', '4798398239', '3678654356', 'Single', 'staff1688110045.jpg', 'Jaipur', 'Delhi', 'MSc', '2 years', 'Good teacher', NULL, 1, '2023-06-30 07:27:25', '2023-06-30 07:27:25'),
(12, '2', 'STF006', 'Teacher', 'English Teacher', 'Teaching Department', 'Suman', 'sharma', 'Aman Sharma', 'Champa Sharma', 'suman@gmail.com', 'Female', '2023-09-12', '2023-11-04', '7864784784', '8745678579', 'Single', NULL, 'Jaipur', 'Jaipur', 'M.A', '2 Years', 'Good teacher', NULL, 1, '2023-09-04 12:23:43', '2023-09-04 12:23:43'),
(13, '2', 'STF007', 'Teacher', 'Hindi Teacher', 'Teaching Department', 'Gopi', 'Gupta', 'Govind Gupta', 'Gayatri Gupta', 'gopi@gmail.com', 'Male', '2023-09-04', '2023-09-04', '8745789387', '5444895787', 'Single', NULL, 'Jaipur', 'Jaipur', 'M.A', '2 Years', 'Good teacher', NULL, 1, '2023-09-04 12:26:34', '2023-09-04 12:26:34'),
(14, '2', 'STF007', 'Teacher', 'Hindi Teacher', 'Teaching Department', 'Gopi', 'Gupta', 'Govind Gupta', 'Gayatri Gupta', 'gopi@gmail.com', 'Male', '2023-09-04', '2023-09-04', '8745789387', '5444895787', 'Single', NULL, 'Jaipur', 'Jaipur', 'M.A', '2 Years', 'Good teacher', NULL, 1, '2023-09-04 12:26:34', '2023-09-04 12:26:34');

-- --------------------------------------------------------

--
-- Table structure for table `add_subject`
--

CREATE TABLE `add_subject` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `subject_type` varchar(255) DEFAULT NULL,
  `subject_code` varchar(255) DEFAULT NULL,
  `other` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1 = ACTIVE , 0 = INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `add_subject`
--

INSERT INTO `add_subject` (`id`, `user_id`, `name`, `subject_type`, `subject_code`, `other`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Maths', 'Theory', '1971', NULL, 1, '2022-12-28 05:15:34', '2022-12-28 05:29:42'),
(2, NULL, 'Physics', 'Practical', '1175', NULL, 1, '2022-12-28 05:15:50', '2022-12-28 05:29:46'),
(3, NULL, 'English', 'Theory', '1225', NULL, 1, '2022-12-28 05:16:04', '2022-12-28 05:16:04'),
(4, NULL, 'Chemistry', 'Practical', '3175', NULL, 1, '2022-12-28 05:16:23', '2022-12-28 05:28:20'),
(12, NULL, 'Hindi', 'Theory', '2345', NULL, 1, '2023-06-15 04:27:51', '2023-06-15 04:27:51');

-- --------------------------------------------------------

--
-- Table structure for table `add_teacher_time`
--

CREATE TABLE `add_teacher_time` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `staff_id` varchar(255) DEFAULT NULL,
  `teacher_name` varchar(255) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `section` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `start_time` varchar(255) DEFAULT NULL,
  `end_time` varchar(255) DEFAULT NULL,
  `room_no` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1 = ACTIVE , 0 = INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `add_topic`
--

CREATE TABLE `add_topic` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `section` varchar(255) DEFAULT NULL,
  `subject_group` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `lesson` varchar(255) DEFAULT NULL,
  `topic` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1 = ACTIVE , 0 = INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `add_topic`
--

INSERT INTO `add_topic` (`id`, `user_id`, `class`, `section`, `subject_group`, `subject`, `lesson`, `topic`, `status`, `created_at`, `updated_at`) VALUES
(6, NULL, 'Class-10', 'Section-D', 'Test user', 'English', 'test', '[\"AAA\"]', 0, '2023-01-02 02:04:01', '2023-01-02 03:30:17'),
(7, NULL, 'Class-9', 'Section-A', 'SDSD', 'Maths', 'test123', '[\"aaaaaaaaaa\"]', 0, '2023-01-02 02:04:37', '2023-01-10 02:14:46'),
(8, NULL, 'Class-1', 'Section-C', 'SDSD', 'Physics', 'test', '[\"AAA\"]', 0, '2023-01-10 02:15:41', '2023-06-17 05:21:25');

-- --------------------------------------------------------

--
-- Table structure for table `add_visitor`
--

CREATE TABLE `add_visitor` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `purpose` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `id_number` varchar(255) DEFAULT NULL,
  `number_person` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `intime` varchar(255) DEFAULT NULL,
  `outtime` varchar(255) DEFAULT NULL,
  `desc` longtext DEFAULT NULL,
  `document` varchar(255) DEFAULT NULL,
  `other` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1 = ACTIVE , 0 = INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `add_visitor`
--

INSERT INTO `add_visitor` (`id`, `user_id`, `purpose`, `name`, `phone`, `id_number`, `number_person`, `date`, `intime`, `outtime`, `desc`, `document`, `other`, `status`, `created_at`, `updated_at`) VALUES
(1, '2', 'School Visit', 'Akshay Kumar', '9119911991', '4532', '2', '2023-06-29', '10:12', '11:45', NULL, NULL, NULL, 1, '2023-06-29 04:42:40', '2023-06-29 04:42:40'),
(4, '2', 'PTM', 'Vivek Kumar', '8000000001', '5665', '2', '2023-06-29', '10:15', '11:15', NULL, NULL, NULL, 1, '2023-06-29 04:45:26', '2023-06-29 04:45:26'),
(5, '2', 'General Visit', 'Naman Yadav', '8000000002', '43345', '2', '2023-06-29', '13:15', '14:16', NULL, NULL, NULL, 1, '2023-06-29 04:46:16', '2023-06-29 04:46:16'),
(9, '4', 'PTM', 'Govind Kumar', '6478748376', '34787', '2', '2023-06-16', '13:56', '14:56', 'Visited for PTM', NULL, NULL, 1, '2023-06-29 08:27:11', '2023-06-29 08:27:11'),
(10, '4', 'General Visit', 'Prem Prakash', '7656776437', '765', '3', '2023-06-23', '14:58', '15:41', NULL, NULL, NULL, 1, '2023-06-29 08:28:51', '2023-06-29 08:28:51'),
(11, '4', 'School Tour', 'Shivam Gupta', '4657896578', '5565', '2', '2023-06-29', '14:00', '16:00', NULL, NULL, NULL, 1, '2023-06-29 08:30:40', '2023-06-29 08:30:40'),
(12, '4', 'School Visit', 'Sameer', '7859843043', '3467', '1', '2023-06-30', '11:42', '12:37', NULL, NULL, NULL, 1, '2023-06-30 06:12:23', '2023-06-30 06:12:23');

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT '1' COMMENT '1=Active,2=inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_logins`
--

CREATE TABLE `admin_logins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT '1' COMMENT '1=Active,2=inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assign_teacher`
--

CREATE TABLE `assign_teacher` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `class_teacher` varchar(255) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `section` varchar(255) DEFAULT NULL,
  `other` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1 = ACTIVE , 0 = INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assign_teacher`
--

INSERT INTO `assign_teacher` (`id`, `user_id`, `class_teacher`, `class`, `section`, `other`, `status`, `created_at`, `updated_at`) VALUES
(13, NULL, 'amit kumawat', 'Class-10', 'Section-A', NULL, 1, '2023-06-17 05:41:18', '2023-06-17 05:41:18');

-- --------------------------------------------------------

--
-- Table structure for table `exam_results`
--

CREATE TABLE `exam_results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sname` varchar(255) DEFAULT NULL,
  `add_no` int(11) NOT NULL,
  `session` varchar(255) DEFAULT NULL,
  `exam_group` varchar(255) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `section` varchar(255) DEFAULT NULL,
  `roll_no` int(11) DEFAULT NULL,
  `total_marks` int(11) DEFAULT NULL,
  `rec_marks` int(11) DEFAULT NULL,
  `percent` varchar(255) DEFAULT NULL,
  `result` varchar(255) DEFAULT NULL,
  `other` varchar(255) DEFAULT NULL,
  `st_english` int(11) DEFAULT NULL,
  `st_hindi` int(11) DEFAULT NULL,
  `st_math` int(11) DEFAULT NULL,
  `st_science` int(11) DEFAULT NULL,
  `st_social` int(11) DEFAULT NULL,
  `st_sanskrit` int(11) DEFAULT NULL,
  `half_english` int(11) DEFAULT NULL,
  `half_hindi` int(11) DEFAULT NULL,
  `half_math` int(11) DEFAULT NULL,
  `half_science` int(11) DEFAULT NULL,
  `half_social` int(11) DEFAULT NULL,
  `half_sanskrit` int(11) DEFAULT NULL,
  `anul_english` int(11) DEFAULT NULL,
  `anul_hindi` int(11) DEFAULT NULL,
  `anul_math` int(11) DEFAULT NULL,
  `anul_science` int(11) DEFAULT NULL,
  `anul_social` int(11) DEFAULT NULL,
  `anul_sanskrit` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1 = ACTIVE , 0 = INACTIVE',
  `exam_status` int(11) NOT NULL DEFAULT 1 COMMENT '1=Active,0=Inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_results`
--

INSERT INTO `exam_results` (`id`, `sname`, `add_no`, `session`, `exam_group`, `class`, `section`, `roll_no`, `total_marks`, `rec_marks`, `percent`, `result`, `other`, `st_english`, `st_hindi`, `st_math`, `st_science`, `st_social`, `st_sanskrit`, `half_english`, `half_hindi`, `half_math`, `half_science`, `half_social`, `half_sanskrit`, `anul_english`, `anul_hindi`, `anul_math`, `anul_science`, `anul_social`, `anul_sanskrit`, `status`, `exam_status`, `created_at`, `updated_at`) VALUES
(8, NULL, 103, '2022-2023', 'annual examination', 'Class-10', 'Section-B', 3, NULL, NULL, NULL, NULL, NULL, 17, 17, 19, 20, 20, 16, 20, 12, 16, 18, 17, 19, 40, 35, 37, 30, 18, 24, 1, 1, '2023-05-25 23:32:49', '2023-06-13 04:49:39'),
(9, NULL, 104, '2022-2023', 'annual examination', 'Class-9', 'Section-B', 4, NULL, NULL, NULL, NULL, NULL, 17, 16, 19, 19, 20, 16, 20, 15, 20, 19, 17, 18, 10, 15, 2, 5, 15, 30, 1, 1, '2023-05-25 23:54:01', '2023-06-15 03:38:09'),
(12, NULL, 101, '2022-2023', 'Half Yearly Examination', 'Class-9', 'Section-A', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50, 45, 40, 44, 49, 35, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2023-06-15 03:56:20', '2023-06-15 03:56:20');

-- --------------------------------------------------------

--
-- Table structure for table `exam_schedule`
--

CREATE TABLE `exam_schedule` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `exam_group` varchar(255) DEFAULT NULL,
  `date_from` varchar(255) DEFAULT NULL,
  `start_time` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `room_no` varchar(255) DEFAULT NULL,
  `max_marks` varchar(255) DEFAULT NULL,
  `min_marks` varchar(255) DEFAULT NULL,
  `other` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1 = ACTIVE , 0 = INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_schedule`
--

INSERT INTO `exam_schedule` (`id`, `subject`, `exam_group`, `date_from`, `start_time`, `duration`, `room_no`, `max_marks`, `min_marks`, `other`, `status`, `created_at`, `updated_at`) VALUES
(1, 'English', 'annual examination', '2023-01-07', '17:39', '60', '10', '100', '50', NULL, 1, '2023-01-05 05:39:48', '2023-05-26 01:01:11'),
(2, 'Physics', 'annual examination', '2023-01-07', '09:45', '90', '5', NULL, NULL, NULL, 1, '2023-01-05 05:40:24', '2023-05-26 01:01:03'),
(5, 'Physics', 'annual examination', '2023-01-07', '22:12', '30', '4', NULL, NULL, NULL, 1, '2023-01-05 23:12:22', '2023-05-26 01:06:42'),
(7, 'Chemistry', 'Half Yearly Examination', '2023-01-13', '12:49', '60', '10', NULL, NULL, NULL, 1, '2023-01-10 01:50:09', '2023-05-26 01:06:47');

-- --------------------------------------------------------

--
-- Table structure for table `expense_head`
--

CREATE TABLE `expense_head` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `desc` longtext DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1 = ACTIVE , 0 = INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expense_head`
--

INSERT INTO `expense_head` (`id`, `user_id`, `name`, `desc`, `status`, `created_at`, `updated_at`) VALUES
(7, '2', 'Sooraj Singh Khatri', NULL, 1, '2023-06-29 05:36:52', '2023-06-29 05:36:52'),
(8, '2', 'Amit Kumar', NULL, 1, '2023-06-29 05:37:00', '2023-06-29 05:37:00'),
(9, '2', 'Abhishek Kumawat', NULL, 1, '2023-06-29 05:37:05', '2023-06-29 05:37:05'),
(10, '2', 'Neha Saini', NULL, 1, '2023-06-29 05:37:21', '2023-06-29 05:37:29'),
(11, '2', 'Rahul Yadav', NULL, 1, '2023-06-29 05:37:35', '2023-06-29 05:37:35'),
(12, '4', 'Swamy', NULL, 1, '2023-06-29 10:11:52', '2023-06-29 10:11:52'),
(13, '4', 'Iyer', NULL, 1, '2023-06-29 10:12:03', '2023-06-29 10:12:03'),
(14, '4', 'Sooraj', NULL, 1, '2023-06-29 10:12:26', '2023-06-29 10:12:26'),
(15, '4', 'Abhishek', NULL, 1, '2023-06-29 10:15:32', '2023-06-29 10:15:32');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fees_discount`
--

CREATE TABLE `fees_discount` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `discount` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fees_discount`
--

INSERT INTO `fees_discount` (`id`, `user_id`, `name`, `discount`, `amount`, `desc`, `created_at`, `updated_at`) VALUES
(51, 2, '2023-24', '10', '40000', '[\"Tuition Fees\",\"Library Fees\",\"Exam Fees\",\"Computer Fees\",\"Bus Fees\",\"Annual Fees\",\"Admission Fees\"]', '2023-09-04 12:03:44', '2023-09-04 12:03:44'),
(52, 2, '2023-24', '9', '38000', '[\"Tuition Fees\",\"Library Fees\",\"Exam Fees\",\"Computer Fees\",\"Bus Fees\",\"Annual Fees\",\"Admission Fees\"]', '2023-09-04 12:04:07', '2023-09-04 12:04:07'),
(53, 2, '2023-24', '8', '36000', '[\"Tuition Fees\",\"Library Fees\",\"Exam Fees\",\"Computer Fees\",\"Bus Fees\",\"Annual Fees\",\"Admission Fees\"]', '2023-09-04 12:04:21', '2023-09-04 12:04:21'),
(54, 2, '2023-24', '7', '34000', '[\"Tuition Fees\",\"Library Fees\",\"Exam Fees\",\"Computer Fees\",\"Bus Fees\",\"Annual Fees\",\"Admission Fees\"]', '2023-09-04 12:04:40', '2023-09-04 12:04:40'),
(55, 2, '2023-24', '6', '32000', '[\"Tuition Fees\",\"Library Fees\",\"Exam Fees\",\"Computer Fees\",\"Bus Fees\",\"Annual Fees\",\"Admission Fees\"]', '2023-09-04 12:05:12', '2023-09-04 12:05:12'),
(56, 2, '2023-24', '5', '30000', '[\"Tuition Fees\",\"Library Fees\",\"Exam Fees\",\"Computer Fees\",\"Bus Fees\",\"Annual Fees\",\"Admission Fees\"]', '2023-09-04 12:05:26', '2023-09-04 12:05:26'),
(57, 2, '2023-24', '4', '28000', '[\"Tuition Fees\",\"Library Fees\",\"Exam Fees\",\"Computer Fees\",\"Bus Fees\",\"Annual Fees\",\"Admission Fees\"]', '2023-09-04 12:05:45', '2023-09-04 12:05:45'),
(58, 2, '2023-24', '3', '26000', '[\"Tuition Fees\",\"Library Fees\",\"Exam Fees\",\"Computer Fees\",\"Bus Fees\",\"Annual Fees\",\"Admission Fees\"]', '2023-09-04 12:06:11', '2023-09-04 12:06:11'),
(59, 2, '2023-24', '2', '24000', '[\"Tuition Fees\",\"Library Fees\",\"Exam Fees\",\"Computer Fees\",\"Bus Fees\",\"Annual Fees\",\"Admission Fees\"]', '2023-09-04 12:06:22', '2023-09-04 12:06:22'),
(60, 2, '2023-24', '1', '20000', '[\"Tuition Fees\",\"Library Fees\",\"Exam Fees\",\"Computer Fees\",\"Bus Fees\",\"Annual Fees\",\"Admission Fees\"]', '2023-09-04 12:06:34', '2023-09-04 12:06:34');

-- --------------------------------------------------------

--
-- Table structure for table `fees_group`
--

CREATE TABLE `fees_group` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1 = ACTIVE , 0 = INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fees_master`
--

CREATE TABLE `fees_master` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `group` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `due_date` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `fine_type` varchar(255) DEFAULT NULL,
  `percentage` varchar(255) DEFAULT NULL,
  `fine_amount` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1 = ACTIVE , 0 = INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fees_master`
--

INSERT INTO `fees_master` (`id`, `user_id`, `group`, `type`, `due_date`, `amount`, `fine_type`, `percentage`, `fine_amount`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'GHI', 'Computer Fees', '2023-01-01', '10000', 'Fix Amount', NULL, NULL, 1, '2022-12-26 06:33:39', '2023-01-02 23:38:57'),
(3, NULL, 'GHI', 'Annual fees', '2023-01-20', '5000', 'None', NULL, NULL, 1, '2023-01-02 05:32:35', '2023-01-02 23:39:09'),
(4, NULL, 'DEF', 'Annual fees', '2022-12-30', '10', 'None', NULL, NULL, 1, '2023-01-02 05:32:58', '2023-01-02 23:39:33'),
(5, NULL, 'ADC', 'Annual fees', '2023-05-27', '25000', 'Fix Amount', NULL, NULL, 1, '2023-05-01 22:50:09', '2023-05-01 22:50:09');

-- --------------------------------------------------------

--
-- Table structure for table `fees_type`
--

CREATE TABLE `fees_type` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `fess_code` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1 = ACTIVE , 0 = INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fees_type`
--

INSERT INTO `fees_type` (`id`, `user_id`, `name`, `fess_code`, `desc`, `status`, `created_at`, `updated_at`) VALUES
(9, 2, 'Annual Fees', NULL, NULL, 1, '2023-06-20 06:46:09', '2023-06-20 06:46:09'),
(11, 2, 'Computer Fees', NULL, NULL, 1, '2023-06-20 06:57:28', '2023-06-20 06:57:28'),
(12, 2, 'Exam Fees', NULL, NULL, 1, '2023-06-20 06:57:51', '2023-06-20 06:57:58'),
(14, 2, 'Tuition Fees', NULL, NULL, 1, '2023-06-29 05:17:21', '2023-06-29 05:17:21'),
(15, 2, 'Admission Fees', NULL, NULL, 1, '2023-06-29 05:17:29', '2023-06-29 05:17:29'),
(16, 2, 'Bus Fees', NULL, NULL, 1, '2023-06-29 05:18:10', '2023-06-29 05:18:10'),
(17, 2, 'Library Fees', NULL, NULL, 1, '2023-06-29 05:18:19', '2023-06-29 05:18:19'),
(18, 4, 'Admission Fees', NULL, NULL, 1, '2023-06-29 09:51:02', '2023-06-29 09:51:02'),
(19, 4, 'Tuition Fees', NULL, NULL, 1, '2023-06-29 09:51:10', '2023-06-29 09:51:10'),
(20, 4, 'Exam Fees', NULL, NULL, 1, '2023-06-29 09:51:16', '2023-06-29 09:51:23'),
(21, 4, 'Library Fees', NULL, NULL, 1, '2023-06-29 09:51:36', '2023-06-29 09:51:36'),
(22, 4, 'Sports Fees', NULL, NULL, 1, '2023-06-29 09:52:16', '2023-06-29 09:52:28');

-- --------------------------------------------------------

--
-- Table structure for table `front_cms_career_request`
--

CREATE TABLE `front_cms_career_request` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `job_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `qualification` varchar(255) DEFAULT NULL,
  `experience` varchar(255) DEFAULT NULL,
  `apply_for` varchar(255) DEFAULT NULL,
  `resume` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1 = ACTIVE , 0 = INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `front_cms_contact_request`
--

CREATE TABLE `front_cms_contact_request` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `msg` longtext DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1 = ACTIVE , 0 = INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `front_cms_contact_request`
--

INSERT INTO `front_cms_contact_request` (`id`, `user_id`, `name`, `email`, `number`, `msg`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Developer Rahul', 'rahul@yopmail.com', '9191166116', 'test', 1, '2023-06-28 12:01:51', '2023-06-28 12:01:51'),
(2, NULL, 'Sub admin', 'info@trucks24.in', '9785653157', 'test', 1, '2023-06-28 12:29:27', '2023-06-28 12:29:27'),
(3, NULL, 'Developer Rahul', 'rahul@yopmail.com', '9191166116', 'test', 1, '2023-06-30 05:53:14', '2023-06-30 05:53:14');

-- --------------------------------------------------------

--
-- Table structure for table `front_cms_gallery`
--

CREATE TABLE `front_cms_gallery` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `gallery` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1 = ACTIVE , 0 = INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `front_cms_openings`
--

CREATE TABLE `front_cms_openings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `job_id` varchar(255) DEFAULT NULL,
  `post` varchar(255) DEFAULT NULL,
  `vacancies` varchar(255) DEFAULT NULL,
  `work_status` varchar(255) DEFAULT NULL,
  `experience` varchar(255) DEFAULT NULL,
  `qualification` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1 = ACTIVE , 0 = INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `front_cms_openings_request`
--

CREATE TABLE `front_cms_openings_request` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `job_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `resume` varchar(255) DEFAULT NULL,
  `other` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1 = ACTIVE , 0 = INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `front_cms_parents`
--

CREATE TABLE `front_cms_parents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `says` longtext DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1 = ACTIVE , 0 = INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `front_cms_setting`
--

CREATE TABLE `front_cms_setting` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `school_name` varchar(255) DEFAULT NULL,
  `school_code` varchar(255) DEFAULT NULL,
  `school_phone` varchar(255) DEFAULT NULL,
  `school_email` varchar(255) DEFAULT NULL,
  `school_address` longtext DEFAULT NULL,
  `open_start_time` varchar(255) DEFAULT NULL,
  `open_end_time` varchar(255) DEFAULT NULL,
  `web_logo` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `skype` varchar(255) DEFAULT NULL,
  `google` varchar(255) DEFAULT NULL,
  `copy_by` varchar(255) DEFAULT NULL,
  `copy_by_url` varchar(255) DEFAULT NULL,
  `about` longtext DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1 = ACTIVE , 0 = INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `front_cms_teacher`
--

CREATE TABLE `front_cms_teacher` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `contact` longtext DEFAULT NULL,
  `email` longtext DEFAULT NULL,
  `about` longtext DEFAULT NULL,
  `personal_statement` longtext DEFAULT NULL,
  `image` longtext DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1 = ACTIVE , 0 = INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `general_setting`
--

CREATE TABLE `general_setting` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `school_name` longtext DEFAULT NULL,
  `school_code` varchar(255) DEFAULT NULL,
  `school_phone` varchar(255) DEFAULT NULL,
  `school_email` varchar(255) DEFAULT NULL,
  `school_address` longtext DEFAULT NULL,
  `session` varchar(255) DEFAULT NULL,
  `session_month` varchar(255) DEFAULT NULL,
  `other` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1 = ACTIVE , 0 = INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_setting`
--

INSERT INTO `general_setting` (`id`, `user_id`, `school_name`, `school_code`, `school_phone`, `school_email`, `school_address`, `session`, `session_month`, `other`, `status`, `created_at`, `updated_at`) VALUES
(1, '3', 'logo1687957436.png', NULL, NULL, NULL, NULL, '2022-23', 'July', NULL, 1, '2023-06-28 13:03:57', '2023-06-28 13:03:57'),
(2, '2', 'logo1688101886.png', NULL, NULL, NULL, NULL, '2023-24', 'July', NULL, 1, '2023-06-29 04:22:05', '2023-06-30 05:11:26'),
(3, '4', 'logo1688035881.png', NULL, NULL, NULL, NULL, '2022-23', 'July', NULL, 1, '2023-06-29 08:59:05', '2023-06-29 10:51:21');

-- --------------------------------------------------------

--
-- Table structure for table `homework`
--

CREATE TABLE `homework` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `teacher` varchar(255) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `section` varchar(255) DEFAULT NULL,
  `subject_group` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `homework_date` varchar(255) DEFAULT NULL,
  `sub_date` varchar(255) DEFAULT NULL,
  `evalu_date` varchar(255) DEFAULT NULL,
  `document` varchar(255) DEFAULT NULL,
  `desc` longtext DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1 = ACTIVE , 0 = INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `homework`
--

INSERT INTO `homework` (`id`, `user_id`, `teacher`, `class`, `section`, `subject_group`, `subject`, `homework_date`, `sub_date`, `evalu_date`, `document`, `desc`, `status`, `created_at`, `updated_at`) VALUES
(4, '2', 'Admin', 'Class-10', 'Section-C', 'Maths01', 'Maths', '2023-01-11', '2023-01-15', '2023-01-17', NULL, '<p>test</p>', 1, '2023-01-11 04:24:24', '2023-01-19 00:42:09'),
(5, '10', 'Abhi', 'Class-8', 'Section-B', 'SDSD', 'English', '2023-01-11', '2023-01-14', '2023-01-15', '1673431824.pdf', '<p>test</p>', 1, '2023-01-11 04:32:40', '2023-01-11 04:40:24'),
(6, '10', 'Abhi', 'Class-5', 'Section-A', 'SDSD', 'English', '2023-01-11', '2023-01-14', '2023-01-15', '1673431842.csv', '<p>test</p>', 1, '2023-01-11 04:33:34', '2023-01-11 04:40:42'),
(7, '8', 'Raj Kumar', 'Class-1', 'Section-A', 'Test user', 'English', '2023-01-11', '2023-01-12', '2023-01-13', NULL, NULL, 1, '2023-01-11 04:44:16', '2023-01-11 04:44:16'),
(11, '2', 'Admin', 'Class-10', 'Section-A', 'text', 'Maths', '2023-06-12', '2023-06-13', NULL, NULL, NULL, 1, '2023-06-12 00:08:18', '2023-06-12 00:08:18');

-- --------------------------------------------------------

--
-- Table structure for table `income_head`
--

CREATE TABLE `income_head` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `desc` longtext DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1 = ACTIVE , 0 = INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `income_head`
--

INSERT INTO `income_head` (`id`, `user_id`, `name`, `desc`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Fees', 'test', 1, '2022-12-26 07:01:32', '2022-12-26 07:01:32'),
(2, NULL, 'Fess-1', NULL, 1, '2022-12-26 07:01:44', '2022-12-26 07:11:44');

-- --------------------------------------------------------

--
-- Table structure for table `leave_request`
--

CREATE TABLE `leave_request` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `leave_type` varchar(255) DEFAULT NULL,
  `from_date` varchar(255) DEFAULT NULL,
  `todate` varchar(255) DEFAULT NULL,
  `reason` longtext DEFAULT NULL,
  `note` longtext DEFAULT NULL,
  `document` longtext DEFAULT NULL,
  `same` longtext DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1 = ACTIVE , 0 = INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leave_request`
--

INSERT INTO `leave_request` (`id`, `user_id`, `role`, `name`, `date`, `leave_type`, `from_date`, `todate`, `reason`, `note`, `document`, `same`, `status`, `created_at`, `updated_at`) VALUES
(2, NULL, 'Student', 'Test user', '2022-12-16', 'Paid leave', '2022-12-29', '2022-12-29', 'ssssssss', NULL, NULL, 'Pending', 1, '2022-12-27 05:49:16', '2022-12-27 05:49:16'),
(3, NULL, 'Teacher', 'Test user', '2022-12-28', 'Paid leave', '2022-12-22', '2022-12-29', 'hello', 'test', NULL, 'Approve', 1, '2022-12-27 05:52:15', '2022-12-27 06:28:01'),
(7, NULL, 'other', 'aaaaaa', '2022-12-31', 'SDSD', '2022-12-23', '2022-12-29', 'tttttttttttttttttt', 'tttttttttttttttttttttt', '1672141684.pdf', 'Approve', 1, '2022-12-27 06:18:04', '2022-12-27 06:18:04'),
(8, NULL, 'Student', 'Rahul', '2022-12-03', 'SDSD', '2022-12-10', '2022-12-28', 'aaaaaaaaaaaaaaa', 'aaaaaaaaaaaaaaaaaa', '1672141789.pdf', 'Disapprove', 1, '2022-12-27 06:19:49', '2023-06-12 04:11:40'),
(12, NULL, 'Student', 'admin', '2023-01-14', 'Paid leave', '2023-01-11', '2023-01-15', 'rest', 'message', NULL, 'Approve', 1, '2023-01-10 05:57:09', '2023-06-12 05:34:34'),
(14, NULL, 'Teacher', 'Test user', '2023-01-12', 'Paid leave', '2023-01-12', '2023-01-15', 'REST', NULL, NULL, 'Pending', 1, '2023-01-10 23:44:31', '2023-06-12 05:34:47');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(27, '2022_12_26_091652_create_fees_type', 4),
(28, '2022_12_26_094844_create_fees_discount', 5),
(30, '2022_12_26_114841_create_fees_master', 6),
(31, '2022_12_26_122612_create_income_head', 7),
(36, '2022_12_27_073002_create_add_leave_type', 11),
(37, '2022_12_27_075744_create_add_department', 12),
(38, '2022_12_27_105207_create_leave_request', 13),
(41, '2022_12_28_065126_create_add_notice', 15),
(42, '2022_12_28_084727_create_upload_content', 16),
(43, '2022_12_28_104352_create_add_subject', 17),
(44, '2022_12_28_112236_create_subject_group', 18),
(45, '2022_12_28_120214_create_assign_teacher', 19),
(50, '2022_12_29_093107_create_add_lesson', 23),
(51, '2022_12_29_104900_create_add_topic', 24),
(52, '2023_01_02_103650_create_add_exam_group', 25),
(61, '2023_01_05_074416_create_student_leave_request', 31),
(62, '2023_01_05_105708_create_exam_schedule', 31),
(64, '2023_01_06_055328_create_exam_result', 32),
(67, '2023_01_06_121420_create_syllabus', 34),
(68, '2023_01_11_090853_create_homework', 35),
(69, '2023_01_12_052938_create_student_attendance', 36),
(78, '2023_01_06_055328_create_exam_result2', 45),
(79, '2023_05_04_054344_create_report_cards_table', 45),
(80, '2023_05_05_121003_create_exam_results_table', 46),
(81, '2023_05_05_121003_create_exam_result_table', 47),
(82, '2023_05_05_122919_create_exam_result_table', 48),
(89, '2023_05_05_123553_create_exam_results_table', 49),
(395, '2014_10_12_000000_create_users_table', 50),
(396, '2014_10_12_100000_create_password_resets_table', 50),
(397, '2019_08_19_000000_create_failed_jobs_table', 50),
(398, '2019_12_14_000001_create_personal_access_tokens_table', 50),
(399, '2022_12_23_085110_create_student_admission', 50),
(400, '2022_12_23_112633_create_add_class', 50),
(401, '2022_12_23_114951_create_add_section', 50),
(402, '2022_12_26_083517_create_fees_group', 50),
(403, '2022_12_27_043054_create_add_income', 50),
(404, '2022_12_27_054143_create_expense_head', 50),
(405, '2022_12_27_061103_create_add_expense', 50),
(406, '2022_12_27_121555_create_add_staff', 50),
(407, '2022_12_29_052421_create_add_visitor', 50),
(408, '2022_12_29_063247_create_add_phone_call', 50),
(409, '2022_12_29_071728_create_addmission_enquiry', 50),
(410, '2023_01_02_110953_create_add_collect_fees', 50),
(411, '2023_01_03_074212_create_add_attend_staff', 50),
(412, '2023_01_03_120215_create_add_teacher_time', 50),
(413, '2023_01_04_054237_create_add_class_time', 50),
(414, '2023_01_04_084810_create_add_promote_student', 50),
(415, '2023_01_06_090030_create_general_setting', 50),
(416, '2023_01_24_070257_create_front_cms_setting', 50),
(417, '2023_01_24_075435_create_front_cms_gallery', 50),
(418, '2023_01_24_092712_create_front_cms_parents', 50),
(419, '2023_01_24_103841_create_front_cms_teacher', 50),
(420, '2023_01_25_061338_create_front_cms_contact_request', 50),
(421, '2023_01_25_072408_create_front_cms_career_request', 50),
(422, '2023_01_25_085344_create_front_cms_openings', 50),
(423, '2023_01_25_100636_create_front_cms_openings_request', 50),
(424, '2023_05_10_072219_create_school__information_table', 50),
(425, '2023_06_27_094138_create_admin_login', 50),
(426, '2023_06_27_103112_create_admin_logins', 50);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `report_cards`
--

CREATE TABLE `report_cards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `school__information`
--

CREATE TABLE `school__information` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `addmisan_number` varchar(255) DEFAULT NULL,
  `roll_number` varchar(255) DEFAULT NULL,
  `scode` varchar(255) DEFAULT NULL,
  `semail` varchar(255) DEFAULT NULL,
  `logoimg` varchar(255) DEFAULT NULL,
  `background_img` varchar(255) DEFAULT NULL,
  `ssection` varchar(255) DEFAULT NULL,
  `saddress` varchar(255) DEFAULT NULL,
  `smobile` varchar(255) DEFAULT NULL,
  `sname` varchar(255) DEFAULT NULL,
  `status_school` varchar(255) NOT NULL DEFAULT '0' COMMENT '1=Active,0=inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_admission`
--

CREATE TABLE `student_admission` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `admission_no` varchar(255) DEFAULT NULL,
  `roll_no` varchar(255) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `section` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `religion` varchar(255) DEFAULT NULL,
  `caste` varchar(255) DEFAULT NULL,
  `mobile_no` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `conform_password` varchar(255) DEFAULT NULL,
  `admission_date` varchar(255) DEFAULT NULL,
  `student_image` varchar(255) DEFAULT NULL,
  `blood_group` varchar(255) DEFAULT NULL,
  `stu_house` varchar(255) DEFAULT NULL,
  `height` varchar(255) DEFAULT NULL,
  `weight` varchar(255) DEFAULT NULL,
  `as_on_date` varchar(255) DEFAULT NULL,
  `father_name` varchar(255) DEFAULT NULL,
  `father_mobile` varchar(255) DEFAULT NULL,
  `father_accu` varchar(255) DEFAULT NULL,
  `father_photo` varchar(255) DEFAULT NULL,
  `mother_name` varchar(255) DEFAULT NULL,
  `mother_phone` varchar(255) DEFAULT NULL,
  `mother_occu` varchar(255) DEFAULT NULL,
  `mother_photo` varchar(255) DEFAULT NULL,
  `guardian` varchar(255) DEFAULT NULL,
  `gur_name` varchar(255) DEFAULT NULL,
  `gur_relation` varchar(255) DEFAULT NULL,
  `gur_email` varchar(255) DEFAULT NULL,
  `gur_photo` varchar(255) DEFAULT NULL,
  `gur_phone` varchar(255) DEFAULT NULL,
  `gur_occu` varchar(255) DEFAULT NULL,
  `gur_address` varchar(255) DEFAULT NULL,
  `bank_no` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `ifsc` varchar(255) DEFAULT NULL,
  `nin_no` varchar(255) DEFAULT NULL,
  `lin_no` varchar(255) DEFAULT NULL,
  `rte` varchar(255) DEFAULT NULL,
  `pre_school` longtext DEFAULT NULL,
  `notes` longtext DEFAULT NULL,
  `balance` varchar(255) DEFAULT NULL,
  `current_result` varchar(255) DEFAULT NULL,
  `session_status` varchar(255) DEFAULT NULL,
  `session` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1 = ACTIVE , 0 = INACTIVE',
  `active_status` int(11) NOT NULL DEFAULT 1 COMMENT '1 = ACTIVE , 0 = INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_admission`
--

INSERT INTO `student_admission` (`id`, `user_id`, `admission_no`, `roll_no`, `class`, `section`, `first_name`, `last_name`, `gender`, `dob`, `category`, `religion`, `caste`, `mobile_no`, `email`, `password`, `conform_password`, `admission_date`, `student_image`, `blood_group`, `stu_house`, `height`, `weight`, `as_on_date`, `father_name`, `father_mobile`, `father_accu`, `father_photo`, `mother_name`, `mother_phone`, `mother_occu`, `mother_photo`, `guardian`, `gur_name`, `gur_relation`, `gur_email`, `gur_photo`, `gur_phone`, `gur_occu`, `gur_address`, `bank_no`, `bank_name`, `ifsc`, `nin_no`, `lin_no`, `rte`, `pre_school`, `notes`, `balance`, `current_result`, `session_status`, `session`, `status`, `active_status`, `created_at`, `updated_at`) VALUES
(1, '2', '6000', '6000', '10', 'Section-A', 'Manish', 'Sharma', 'Male', '2000-05-25', 'Student', 'Hindu', 'obc', '6100000001', 'manishsharma2000@gmail.com', NULL, NULL, '2023-05-27', NULL, NULL, '12', '5.3', '65', '2023-05-26', 'Mr. ramswroop', '8000000201', 'In words, the control occupation of a person depicts the work that he truly does to make a kind of revenue for him and his family as his loved ones.', NULL, 'pinki', '3000000201', 'mother \'s occupation will allude to the work, work or business done by the person\'s mother to get by.', NULL, NULL, 'ramswaroop', 'father', 'ramswaroop@gmail.com', NULL, '9982593754', 'In the field of English Sentence structure, the term \'occupation\' can be depicted as a job, work or calling of a person.', 'chomu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 0, '2023-09-04 11:08:31', '2023-09-04 11:48:57'),
(2, '2', '6001', '6001', '8', 'Section-A', 'Manish', 'Sharma', 'Male', '2000-05-25', 'Student', 'Hindu', 'obc', '6000000002', 'manishsharma2001@gmail.com', NULL, NULL, '2023-05-27', NULL, NULL, '12', '5.3', '65', '2023-05-26', 'Mr. ramswroop', '8000000202', 'In words, the control occupation of a person depicts the work that he truly does to make a kind of revenue for him and his family as his loved ones.', NULL, 'pinki', '3000000202', 'mother \'s occupation will allude to the work, work or business done by the person\'s mother to get by.', NULL, NULL, 'ramswaroop', 'father', 'ramswaroop@gmail.com', NULL, '9982593754', 'In the field of English Sentence structure, the term \'occupation\' can be depicted as a job, work or calling of a person.', 'chomu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 0, '2023-09-04 11:08:31', '2023-09-04 11:49:13'),
(3, '2', '6002', '6002', '4', 'Section-A', 'Abhi', 'kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000003', 'abhi2002@gmail.com', NULL, NULL, '2023-05-20', NULL, NULL, '15', '5.5', '70', '2023-05-03', 'Mr.Ramesh', '8000000203', NULL, NULL, 'Shikha', '3000000203', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:31', '2023-09-04 11:08:31'),
(4, '2', '6003', '6003', '10', 'Section-B', 'Dinesh', 'yadav', 'Male', '1995-05-26', 'Student', 'Hindu', 'obc', '6000000004', 'dineshyadav2003@gmail.com', NULL, NULL, '2023-05-04', NULL, NULL, '12', '5.5', '65', '2023-05-21', 'Mr.Umesh', '8000000204', NULL, NULL, 'Raju Devi', '3000000204', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:31', '2023-09-04 11:08:31'),
(5, '2', '6004', '6004', '6', 'Section-A', 'Abhishek', 'kumawat', 'Male', '1999-05-04', 'Student', 'Hindu', 'obc', '6000000005', 'abhishek1kumawat2004@gmail.com', NULL, NULL, '2000-03-31', NULL, NULL, '12', '5.3', '80', '1999-06-09', 'Mr. ramswroop', '8000000205', NULL, NULL, NULL, '3000000205', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:31', '2023-09-04 11:08:31'),
(6, '2', '6005', '6005', '5', 'Section-A', 'Ajay', 'Sharma', 'Male', '2000-05-25', 'Student', 'Hindu', 'obc', '6000000006', 'manishsharma2005@gmail.com', NULL, NULL, '2023-05-27', NULL, NULL, '12', '5.3', '65', '2023-05-26', 'Mr. ramswroop', '8000000206', 'In words, the control occupation of a person depicts the work that he truly does to make a kind of revenue for him and his family as his loved ones.', NULL, 'pinki', '3000000206', 'mother \'s occupation will allude to the work, work or business done by the person\'s mother to get by.', NULL, NULL, 'ramswaroop', 'father', 'ramswaroop@gmail.com', NULL, '9982593754', 'In the field of English Sentence structure, the term \'occupation\' can be depicted as a job, work or calling of a person.', 'chomu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:31', '2023-09-04 11:08:31'),
(7, '2', '6006', '6006', '10', 'Section-A', 'umesh', 'kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000007', 'abhi2006@gmail.com', NULL, NULL, '2023-05-20', NULL, NULL, '15', '5.5', '70', '2023-05-03', 'Mr.Ramesh', '8000000207', NULL, NULL, 'Shikha', '3000000207', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:31', '2023-09-04 11:08:31'),
(8, '2', '6007', '6007', '8', 'Section-B', 'neha', 'yadav', 'Male', '1995-05-26', 'Student', 'Hindu', 'obc', '6000000008', 'dineshyadav2007@gmail.com', NULL, NULL, '2023-05-04', NULL, NULL, '12', '5.5', '65', '2023-05-21', 'Mr.Umesh', '8000000208', NULL, NULL, 'Raju Devi', '3000000208', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:31', '2023-09-04 11:08:31'),
(9, '2', '6008', '6008', '7', 'Section-A', 'gajal', 'kumawat', 'Male', '1999-05-04', 'Student', 'Hindu', 'obc', '6000000009', 'abhishek1kumawat2008@gmail.com', NULL, NULL, '2000-03-31', NULL, NULL, '12', '5.3', '80', '1999-06-09', 'Mr. ramswroop', '8000000209', NULL, NULL, NULL, '3000000209', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:31', '2023-09-04 11:08:31'),
(10, '2', '6009', '6009', '9', 'Section-A', 'Ritika', 'sharma', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000010', 'ankitsharma2009@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '15', '5.3', '65', '2023-06-07', 'Rajaram sharma', '8000000210', 'In words, the control occupation of a person depicts the work that he truly does to make a kind of revenue for him and his family as his loved ones.', NULL, 'Raju Devi', '3000000210', 'mother \'s occupation will allude to the work, work or business done by the person\'s mother to get by.', NULL, NULL, 'rajaram sharma', 'father', 'rajaram@gmail.com', NULL, '9982593059', 'In the field of English Sentence structure, the term \'occupation\' can be depicted as a job, work or calling of a person.', 'chomu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:31', '2023-09-04 11:08:31'),
(11, '2', '6010', '6010', '10', 'Section-B', 'sonu', 'kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6100000011', 'sonukumawat2010@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '17', NULL, '80', '1999-06-09', 'Mr. ramswroop', '8110000211', NULL, NULL, NULL, '3000000211', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:31', '2023-09-04 11:08:31'),
(12, '2', '6011', '6011', '10', 'Section-A', 'Monu', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000012', 'monu2011@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000212', NULL, NULL, NULL, '3000000212', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:31', '2023-09-04 11:08:31'),
(13, '2', '6012', '6012', '10', 'Section-B', 'Ronu', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000013', 'ronu2012@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000213', NULL, NULL, NULL, '3000000213', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:31', '2023-09-04 11:08:31'),
(14, '2', '6013', '6013', '10', 'Section-B', 'Jonu', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000014', 'jonu2013@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000214', NULL, NULL, 'Raju Devi', '3000000214', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:31', '2023-09-04 11:08:31'),
(15, '2', '6014', '6014', '10', 'Section-A', 'Akshay', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000015', 'aksha2014y@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000215', NULL, NULL, NULL, '3000000215', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:31', '2023-09-04 11:08:31'),
(16, '2', '6015', '6015', '10', 'Section-B', 'Ajay', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000016', 'ajay@2015gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000216', NULL, NULL, 'Raju Devi', '3000000216', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:31', '2023-09-04 11:08:31'),
(17, '2', '6016', '6016', '9', 'Section-A', 'Sohan', 'kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000017', 'sohan2016@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '17', NULL, '80', '1999-06-09', 'Mr. ramswroop', '8000000217', NULL, NULL, NULL, '3000000217', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:31', '2023-09-04 11:08:31'),
(18, '2', '6017', '6017', '9', 'Section-A', 'Mohan', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000018', 'mohan2017@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000218', NULL, NULL, NULL, '3000000218', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:31', '2023-09-04 11:08:31'),
(19, '2', '6018', '6018', '9', 'Section-A', 'Rohan', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000019', 'rohan2018@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000219', NULL, NULL, NULL, '3000000219', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:31', '2023-09-04 11:08:31'),
(20, '2', '6019', '6019', '9', 'Section-A', 'John', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000020', 'john2019@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000220', NULL, NULL, 'Raju Devi', '3000000220', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:31', '2023-09-04 11:08:31'),
(21, '2', '6020', '6020', '9', 'Section-B', 'Akshay', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000021', 'akshay1-2020@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000221', NULL, NULL, NULL, '3000000221', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:31', '2023-09-04 11:08:31'),
(22, '2', '6021', '6021', '9', 'Section-B', 'Ajay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000022', 'ajay2021@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000222', NULL, NULL, 'Raju Devi', '3000000222', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:31', '2023-09-04 11:08:31'),
(23, '2', '6022', '6022', '9', 'Section-A', 'Mohan', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000023', 'mohan2022@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000223', NULL, NULL, NULL, '3000000223', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:31', '2023-09-04 11:08:31'),
(24, '2', '6023', '6023', '9', 'Section-A', 'Rohan', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000024', 'rohan2023@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000224', NULL, NULL, NULL, '3000000224', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:31', '2023-09-04 11:08:31'),
(25, '2', '6024', '6024', '9', 'Section-A', 'John', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000025', 'john2024@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000225', NULL, NULL, 'Raju Devi', '3000000225', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:31', '2023-09-04 11:08:31'),
(26, '2', '6025', '6025', '9', 'Section-A', 'Akash ', 'Garg', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000026', 'akash2025@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000226', NULL, NULL, NULL, '3000000226', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:31', '2023-09-04 11:08:31'),
(27, '2', '6026', '6026', '9', 'Section-B', 'Akshay', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000027', 'akshay2026@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000227', NULL, NULL, NULL, '3000000227', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:31', '2023-09-04 11:08:31'),
(28, '2', '6027', '6027', '9', 'Section-B', 'Ajay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000028', 'ajay2027@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000228', NULL, NULL, 'Raju Devi', '3000000228', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:31', '2023-09-04 11:08:31'),
(29, '2', '6028', '6028', '9', 'Section-B', 'Daksh', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000029', 'daksh2028@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000229', NULL, NULL, NULL, '3000000229', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:31', '2023-09-04 11:08:31'),
(30, '2', '6029', '6029', '9', 'Section-B', 'Vijay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000030', 'vijay2029@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000230', NULL, NULL, 'Raju Devi', '3000000230', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:31', '2023-09-04 11:08:31'),
(31, '2', '6030', '6030', '9', 'Section-B', 'Sanjay', 'Gupta', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000031', 'sanjay2030@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000231', NULL, NULL, NULL, '3000000231', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:31', '2023-09-04 11:08:31'),
(32, '2', '6031', '6031', '8', 'Section-A', 'Mohan', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000032', 'sumit2031@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000232', NULL, NULL, NULL, '3000000232', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:31', '2023-09-04 11:08:31'),
(33, '2', '6032', '6032', '8', 'Section-A', 'Rohan', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000033', 'rohan2032@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000233', NULL, NULL, NULL, '3000000233', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:31', '2023-09-04 11:08:31'),
(34, '2', '6033', '6033', '8', 'Section-A', 'John', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000034', 'john2033@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000234', NULL, NULL, 'Raju Devi', '3000000234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:31', '2023-09-04 11:08:31'),
(35, '2', '6034', '6034', '8', 'Section-A', 'Akash ', 'Garg', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000035', 'akash2034@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000235', NULL, NULL, NULL, '3000000235', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:31', '2023-09-04 11:08:31'),
(36, '2', '6035', '6035', '8', 'Section-A', 'Akshay', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000036', 'akshay2035@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000236', NULL, NULL, NULL, '3000000236', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:31', '2023-09-04 11:08:31'),
(37, '2', '6036', '6036', '8', 'Section-B', 'Ajay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000037', 'ajay2036@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000237', NULL, NULL, 'Raju Devi', '3000000237', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:31', '2023-09-04 11:08:31'),
(38, '2', '6037', '6037', '8', 'Section-B', 'Daksh', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000038', 'daksh2037@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000238', NULL, NULL, NULL, '3000000238', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:31', '2023-09-04 11:08:31'),
(39, '2', '6038', '6038', '8', 'Section-B', 'Vijay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000039', 'vijay2038@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000239', NULL, NULL, 'Raju Devi', '3000000239', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:31', '2023-09-04 11:08:31'),
(40, '2', '6039', '6039', '8', 'Section-B', 'Sanjay', 'Gupta', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000040', 'sanjay2039@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000240', NULL, NULL, NULL, '3000000240', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:31', '2023-09-04 11:08:31'),
(41, '2', '6040', '6040', '8', 'Section-B', 'Sumit', 'Saini', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000041', 'sumit2040@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '17', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000241', NULL, NULL, NULL, '3000000241', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:31', '2023-09-04 11:08:31'),
(42, '2', '6041', '6041', '7', 'Section-A', 'Mohan', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000042', 'mohan2041@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000242', NULL, NULL, NULL, '3000000242', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:31', '2023-09-04 11:08:31'),
(43, '2', '6042', '6042', '7', 'Section-A', 'Rohan', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000043', 'rohan2042@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000243', NULL, NULL, NULL, '3000000243', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:31', '2023-09-04 11:08:31'),
(44, '2', '6043', '6043', '7', 'Section-A', 'John', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000044', 'john2043@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000244', NULL, NULL, 'Raju Devi', '3000000244', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(45, '2', '6044', '6044', '7', 'Section-A', 'Akash ', 'Garg', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000045', 'akash2044@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000245', NULL, NULL, NULL, '3000000245', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(46, '2', '6045', '6045', '7', 'Section-A', 'Akshay', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000046', 'akshay2045@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000246', NULL, NULL, NULL, '3000000246', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(47, '2', '6046', '6046', '7', 'Section-B', 'Ajay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000047', 'ajay2046@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000247', NULL, NULL, 'Raju Devi', '3000000247', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(48, '2', '6047', '6047', '7', 'Section-B', 'Daksh', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000048', 'daksh2047@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000248', NULL, NULL, NULL, '3000000248', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(49, '2', '6048', '6048', '7', 'Section-B', 'Vijay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000049', 'vijay2048@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000249', NULL, NULL, 'Raju Devi', '3000000249', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(50, '2', '6049', '6049', '7', 'Section-B', 'Sanjay', 'Gupta', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000050', 'sanjay2049@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000250', NULL, NULL, NULL, '3000000250', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(51, '2', '6050', '6050', '7', 'Section-B', 'Sumit', 'Saini', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000051', 'sumit2050@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '17', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000251', NULL, NULL, NULL, '3000000251', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(52, '2', '6051', '6051', '6', 'Section-A', 'Mohan', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000052', 'mohan2051@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000252', NULL, NULL, NULL, '3000000252', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(53, '2', '6052', '6052', '6', 'Section-A', 'Rohan', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000053', 'rohan2052@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000253', NULL, NULL, NULL, '3000000253', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(54, '2', '6053', '6053', '6', 'Section-A', 'John', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000054', 'john2053@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000254', NULL, NULL, 'Raju Devi', '3000000254', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(55, '2', '6054', '6054', '6', 'Section-A', 'Akash ', 'Garg', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000055', 'akash2054@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000255', NULL, NULL, NULL, '3000000255', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(56, '2', '6055', '6055', '6', 'Section-A', 'Akshay', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000056', 'akshay2055@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000256', NULL, NULL, NULL, '3000000256', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(57, '2', '6056', '6056', '6', 'Section-B', 'Ajay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000057', 'ajay2056@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000257', NULL, NULL, 'Raju Devi', '3000000257', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(58, '2', '6000', '6000', '10', 'Section-A', 'Manish', 'Sharma', 'Male', '2000-05-25', 'Student', 'Hindu', 'obc', '6100000001', 'manishsharma2000@gmail.com', NULL, NULL, '2023-05-27', NULL, NULL, '12', '5.3', '65', '2023-05-26', 'Mr. ramswroop', '8000000201', 'In words, the control occupation of a person depicts the work that he truly does to make a kind of revenue for him and his family as his loved ones.', NULL, 'pinki', '3000000201', 'mother \'s occupation will allude to the work, work or business done by the person\'s mother to get by.', NULL, NULL, 'ramswaroop', 'father', 'ramswaroop@gmail.com', NULL, '9982593754', 'In the field of English Sentence structure, the term \'occupation\' can be depicted as a job, work or calling of a person.', 'chomu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(59, '2', '6057', '6057', '6', 'Section-B', 'Daksh', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000058', 'daksh2057@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000258', NULL, NULL, NULL, '3000000258', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(60, '2', '6001', '6001', '8', 'Section-A', 'Manish', 'Sharma', 'Male', '2000-05-25', 'Student', 'Hindu', 'obc', '6000000002', 'manishsharma2001@gmail.com', NULL, NULL, '2023-05-27', NULL, NULL, '12', '5.3', '65', '2023-05-26', 'Mr. ramswroop', '8000000202', 'In words, the control occupation of a person depicts the work that he truly does to make a kind of revenue for him and his family as his loved ones.', NULL, 'pinki', '3000000202', 'mother \'s occupation will allude to the work, work or business done by the person\'s mother to get by.', NULL, NULL, 'ramswaroop', 'father', 'ramswaroop@gmail.com', NULL, '9982593754', 'In the field of English Sentence structure, the term \'occupation\' can be depicted as a job, work or calling of a person.', 'chomu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(61, '2', '6058', '6058', '4', 'Section-B', 'Vijay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000059', 'vijay2058@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000259', NULL, NULL, 'Raju Devi', '3000000259', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(62, '2', '6002', '6002', '4', 'Section-A', 'Abhi', 'kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000003', 'abhi2002@gmail.com', NULL, NULL, '2023-05-20', NULL, NULL, '15', '5.5', '70', '2023-05-03', 'Mr.Ramesh', '8000000203', NULL, NULL, 'Shikha', '3000000203', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(63, '2', '6003', '6003', '10', 'Section-B', 'Dinesh', 'yadav', 'Male', '1995-05-26', 'Student', 'Hindu', 'obc', '6000000004', 'dineshyadav2003@gmail.com', NULL, NULL, '2023-05-04', NULL, NULL, '12', '5.5', '65', '2023-05-21', 'Mr.Umesh', '8000000204', NULL, NULL, 'Raju Devi', '3000000204', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(64, '2', '6059', '6059', '6', 'Section-B', 'Sanjay', 'Gupta', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000060', 'sanjay2059@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000260', NULL, NULL, NULL, '3000000260', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(65, '2', '6004', '6004', '6', 'Section-A', 'Abhishek', 'kumawat', 'Male', '1999-05-04', 'Student', 'Hindu', 'obc', '6000000005', 'abhishek1kumawat2004@gmail.com', NULL, NULL, '2000-03-31', NULL, NULL, '12', '5.3', '80', '1999-06-09', 'Mr. ramswroop', '8000000205', NULL, NULL, NULL, '3000000205', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(66, '2', '6060', '6060', '6', 'Section-B', 'Sumit', 'Saini', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000061', 'sumit2060@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '17', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000261', NULL, NULL, NULL, '3000000261', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(67, '2', '6005', '6005', '5', 'Section-A', 'Ajay', 'Sharma', 'Male', '2000-05-25', 'Student', 'Hindu', 'obc', '6000000006', 'manishsharma2005@gmail.com', NULL, NULL, '2023-05-27', NULL, NULL, '12', '5.3', '65', '2023-05-26', 'Mr. ramswroop', '8000000206', 'In words, the control occupation of a person depicts the work that he truly does to make a kind of revenue for him and his family as his loved ones.', NULL, 'pinki', '3000000206', 'mother \'s occupation will allude to the work, work or business done by the person\'s mother to get by.', NULL, NULL, 'ramswaroop', 'father', 'ramswaroop@gmail.com', NULL, '9982593754', 'In the field of English Sentence structure, the term \'occupation\' can be depicted as a job, work or calling of a person.', 'chomu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(68, '2', '6061', '6061', '5', 'Section-A', 'Mohan', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000062', 'mohan2061@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000262', NULL, NULL, NULL, '3000000262', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(69, '2', '6006', '6006', '10', 'Section-A', 'umesh', 'kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000007', 'abhi2006@gmail.com', NULL, NULL, '2023-05-20', NULL, NULL, '15', '5.5', '70', '2023-05-03', 'Mr.Ramesh', '8000000207', NULL, NULL, 'Shikha', '3000000207', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(70, '2', '6062', '6062', '5', 'Section-A', 'Rohan', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000063', 'rohan2062@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000263', NULL, NULL, NULL, '3000000263', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(71, '2', '6007', '6007', '8', 'Section-B', 'neha', 'yadav', 'Male', '1995-05-26', 'Student', 'Hindu', 'obc', '6000000008', 'dineshyadav2007@gmail.com', NULL, NULL, '2023-05-04', NULL, NULL, '12', '5.5', '65', '2023-05-21', 'Mr.Umesh', '8000000208', NULL, NULL, 'Raju Devi', '3000000208', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(72, '2', '6063', '6063', '5', 'Section-A', 'John', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000064', 'john2063@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000264', NULL, NULL, 'Raju Devi', '3000000264', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(73, '2', '6008', '6008', '7', 'Section-A', 'gajal', 'kumawat', 'Male', '1999-05-04', 'Student', 'Hindu', 'obc', '6000000009', 'abhishek1kumawat2008@gmail.com', NULL, NULL, '2000-03-31', NULL, NULL, '12', '5.3', '80', '1999-06-09', 'Mr. ramswroop', '8000000209', NULL, NULL, NULL, '3000000209', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(74, '2', '6064', '6064', '5', 'Section-A', 'Akash ', 'Garg', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000065', 'akash2064@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000265', NULL, NULL, NULL, '3000000265', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(75, '2', '6009', '6009', '9', 'Section-A', 'Ritika', 'sharma', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000010', 'ankitsharma2009@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '15', '5.3', '65', '2023-06-07', 'Rajaram sharma', '8000000210', 'In words, the control occupation of a person depicts the work that he truly does to make a kind of revenue for him and his family as his loved ones.', NULL, 'Raju Devi', '3000000210', 'mother \'s occupation will allude to the work, work or business done by the person\'s mother to get by.', NULL, NULL, 'rajaram sharma', 'father', 'rajaram@gmail.com', NULL, '9982593059', 'In the field of English Sentence structure, the term \'occupation\' can be depicted as a job, work or calling of a person.', 'chomu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(76, '2', '6065', '6065', '5', 'Section-A', 'Akshay', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000066', 'akshay2065@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000266', NULL, NULL, NULL, '3000000266', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(77, '2', '6010', '6010', '10', 'Section-B', 'sonu', 'kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6100000011', 'sonukumawat2010@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '17', NULL, '80', '1999-06-09', 'Mr. ramswroop', '8110000211', NULL, NULL, NULL, '3000000211', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(78, '2', '6066', '6066', '5', 'Section-B', 'Ajay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000067', 'ajay2066@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000267', NULL, NULL, 'Raju Devi', '3000000267', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(79, '2', '6011', '6011', '10', 'Section-A', 'Monu', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000012', 'monu2011@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000212', NULL, NULL, NULL, '3000000212', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(80, '2', '6012', '6012', '10', 'Section-B', 'Ronu', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000013', 'ronu2012@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000213', NULL, NULL, NULL, '3000000213', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(81, '2', '6067', '6067', '5', 'Section-B', 'Daksh', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000068', 'daksh2067@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000268', NULL, NULL, NULL, '3000000268', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(82, '2', '6013', '6013', '10', 'Section-B', 'Jonu', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000014', 'jonu2013@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000214', NULL, NULL, 'Raju Devi', '3000000214', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(83, '2', '6068', '6068', '5', 'Section-B', 'Vijay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000069', 'vijay2068@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000269', NULL, NULL, 'Raju Devi', '3000000269', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(84, '2', '6014', '6014', '10', 'Section-A', 'Akshay', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000015', 'aksha2014y@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000215', NULL, NULL, NULL, '3000000215', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(85, '2', '6069', '6069', '5', 'Section-B', 'Sanjay', 'Gupta', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000070', 'sanjay2069@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000270', NULL, NULL, NULL, '3000000270', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(86, '2', '6015', '6015', '10', 'Section-B', 'Ajay', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000016', 'ajay@2015gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000216', NULL, NULL, 'Raju Devi', '3000000216', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(87, '2', '6016', '6016', '9', 'Section-A', 'Sohan', 'kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000017', 'sohan2016@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '17', NULL, '80', '1999-06-09', 'Mr. ramswroop', '8000000217', NULL, NULL, NULL, '3000000217', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(88, '2', '6070', '6070', '5', 'Section-B', 'Sumit', 'Saini', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000071', 'sumit2070@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '17', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000271', NULL, NULL, NULL, '3000000271', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(89, '2', '6017', '6017', '9', 'Section-A', 'Mohan', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000018', 'mohan2017@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000218', NULL, NULL, NULL, '3000000218', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(90, '2', '6071', '6071', '4', 'Section-A', 'Mohan', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000072', 'mohan2071@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000272', NULL, NULL, NULL, '3000000272', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(91, '2', '6018', '6018', '9', 'Section-A', 'Rohan', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000019', 'rohan2018@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000219', NULL, NULL, NULL, '3000000219', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(92, '2', '6072', '6072', '4', 'Section-A', 'Rohan', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000073', 'rohan2072@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000273', NULL, NULL, NULL, '3000000273', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(93, '2', '6073', '6073', '4', 'Section-A', 'John', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000074', 'john2073@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000274', NULL, NULL, 'Raju Devi', '3000000274', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(94, '2', '6019', '6019', '9', 'Section-A', 'John', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000020', 'john2019@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000220', NULL, NULL, 'Raju Devi', '3000000220', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(95, '2', '6074', '6074', '4', 'Section-A', 'Akash ', 'Garg', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000075', 'akash2074@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000275', NULL, NULL, NULL, '3000000275', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(96, '2', '6020', '6020', '9', 'Section-B', 'Akshay', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000021', 'akshay1-2020@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000221', NULL, NULL, NULL, '3000000221', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32');
INSERT INTO `student_admission` (`id`, `user_id`, `admission_no`, `roll_no`, `class`, `section`, `first_name`, `last_name`, `gender`, `dob`, `category`, `religion`, `caste`, `mobile_no`, `email`, `password`, `conform_password`, `admission_date`, `student_image`, `blood_group`, `stu_house`, `height`, `weight`, `as_on_date`, `father_name`, `father_mobile`, `father_accu`, `father_photo`, `mother_name`, `mother_phone`, `mother_occu`, `mother_photo`, `guardian`, `gur_name`, `gur_relation`, `gur_email`, `gur_photo`, `gur_phone`, `gur_occu`, `gur_address`, `bank_no`, `bank_name`, `ifsc`, `nin_no`, `lin_no`, `rte`, `pre_school`, `notes`, `balance`, `current_result`, `session_status`, `session`, `status`, `active_status`, `created_at`, `updated_at`) VALUES
(97, '2', '6021', '6021', '9', 'Section-B', 'Ajay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000022', 'ajay2021@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000222', NULL, NULL, 'Raju Devi', '3000000222', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(98, '2', '6075', '6075', '4', 'Section-A', 'Akshay', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000076', 'akshay2075@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000276', NULL, NULL, NULL, '3000000276', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(99, '2', '6022', '6022', '9', 'Section-A', 'Mohan', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000023', 'mohan2022@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000223', NULL, NULL, NULL, '3000000223', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(100, '2', '6076', '6076', '4', 'Section-A', 'Ajay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000077', 'ajay2076@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000277', NULL, NULL, 'Raju Devi', '3000000277', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(101, '2', '6023', '6023', '9', 'Section-A', 'Rohan', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000024', 'rohan2023@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000224', NULL, NULL, NULL, '3000000224', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(102, '2', '6024', '6024', '9', 'Section-A', 'John', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000025', 'john2024@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000225', NULL, NULL, 'Raju Devi', '3000000225', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(103, '2', '6077', '6077', '4', 'Section-A', 'Daksh', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000078', 'daksh2077@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000278', NULL, NULL, NULL, '3000000278', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(104, '2', '6025', '6025', '9', 'Section-A', 'Akash ', 'Garg', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000026', 'akash2025@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000226', NULL, NULL, NULL, '3000000226', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(105, '2', '6026', '6026', '9', 'Section-B', 'Akshay', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000027', 'akshay2026@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000227', NULL, NULL, NULL, '3000000227', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(106, '2', '6078', '6078', '4', 'Section-A', 'Vijay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000079', 'vijay2078@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000279', NULL, NULL, 'Raju Devi', '3000000279', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(107, '2', '6027', '6027', '9', 'Section-B', 'Ajay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000028', 'ajay2027@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000228', NULL, NULL, 'Raju Devi', '3000000228', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(108, '2', '6079', '6079', '4', 'Section-A', 'Sanjay', 'Gupta', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000080', 'sanjay2079@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000280', NULL, NULL, NULL, '3000000280', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(109, '2', '6028', '6028', '9', 'Section-B', 'Daksh', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000029', 'daksh2028@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000229', NULL, NULL, NULL, '3000000229', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(110, '2', '6080', '6080', '4', 'Section-A', 'Sumit', 'Saini', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000081', 'sumit2080@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '17', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000281', NULL, NULL, NULL, '3000000281', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(111, '2', '6029', '6029', '9', 'Section-B', 'Vijay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000030', 'vijay2029@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000230', NULL, NULL, 'Raju Devi', '3000000230', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(112, '2', '6081', '6081', '4', 'Section-A', 'Mohan', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000082', 'mohan2081@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000282', NULL, NULL, NULL, '3000000282', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(113, '2', '6030', '6030', '9', 'Section-B', 'Sanjay', 'Gupta', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000031', 'sanjay2030@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000231', NULL, NULL, NULL, '3000000231', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(114, '2', '6082', '6082', '4', 'Section-A', 'Rohan', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000083', 'rohan2082@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000283', NULL, NULL, NULL, '3000000283', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(115, '2', '6031', '6031', '8', 'Section-A', 'Mohan', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000032', 'sumit2031@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000232', NULL, NULL, NULL, '3000000232', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(116, '2', '6083', '6083', '4', 'Section-A', 'John', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000084', 'john2083@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000284', NULL, NULL, 'Raju Devi', '3000000284', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(117, '2', '6032', '6032', '8', 'Section-A', 'Rohan', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000033', 'rohan2032@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000233', NULL, NULL, NULL, '3000000233', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(118, '2', '6084', '6084', '4', 'Section-A', 'Akash ', 'Garg', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000085', 'akash2084@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000285', NULL, NULL, NULL, '3000000285', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(119, '2', '6033', '6033', '8', 'Section-A', 'John', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000034', 'john2033@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000234', NULL, NULL, 'Raju Devi', '3000000234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(120, '2', '6085', '6085', '4', 'Section-A', 'Akshay', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000086', 'akshay2085@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000286', NULL, NULL, NULL, '3000000286', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(121, '2', '6086', '6086', '4', 'Section-B', 'Ajay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000087', 'ajay2086@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000287', NULL, NULL, 'Raju Devi', '3000000287', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(122, '2', '6034', '6034', '8', 'Section-A', 'Akash ', 'Garg', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000035', 'akash2034@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000235', NULL, NULL, NULL, '3000000235', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(123, '2', '6087', '6087', '4', 'Section-B', 'Daksh', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000088', 'daksh2087@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000288', NULL, NULL, NULL, '3000000288', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(124, '2', '6035', '6035', '8', 'Section-A', 'Akshay', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000036', 'akshay2035@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000236', NULL, NULL, NULL, '3000000236', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(125, '2', '6088', '6088', '4', 'Section-B', 'Vijay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000089', 'vijay2088@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000289', NULL, NULL, 'Raju Devi', '3000000289', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(126, '2', '6036', '6036', '8', 'Section-B', 'Ajay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000037', 'ajay2036@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000237', NULL, NULL, 'Raju Devi', '3000000237', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(127, '2', '6089', '6089', '4', 'Section-B', 'Sanjay', 'Gupta', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000090', 'sanjay2089@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000290', NULL, NULL, NULL, '3000000290', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(128, '2', '6037', '6037', '8', 'Section-B', 'Daksh', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000038', 'daksh2037@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000238', NULL, NULL, NULL, '3000000238', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(129, '2', '6090', '6090', '4', 'Section-B', 'Sumit', 'Saini', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000091', 'sumit2090@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '17', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000291', NULL, NULL, NULL, '3000000291', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(130, '2', '6038', '6038', '8', 'Section-B', 'Vijay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000039', 'vijay2038@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000239', NULL, NULL, 'Raju Devi', '3000000239', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(131, '2', '6091', '6091', '4', 'Section-A', 'Mohan', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000092', 'mohan2091@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000292', NULL, NULL, NULL, '3000000292', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(132, '2', '6039', '6039', '8', 'Section-B', 'Sanjay', 'Gupta', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000040', 'sanjay2039@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000240', NULL, NULL, NULL, '3000000240', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(133, '2', '6092', '6092', '4', 'Section-A', 'Rohan', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000093', 'rohan2092@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000293', NULL, NULL, NULL, '3000000293', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(134, '2', '6040', '6040', '8', 'Section-B', 'Sumit', 'Saini', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000041', 'sumit2040@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '17', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000241', NULL, NULL, NULL, '3000000241', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(135, '2', '6093', '6093', '4', 'Section-A', 'John', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000094', 'john2093@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000294', NULL, NULL, 'Raju Devi', '3000000294', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(136, '2', '6041', '6041', '7', 'Section-A', 'Mohan', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000042', 'mohan2041@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000242', NULL, NULL, NULL, '3000000242', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(137, '2', '6094', '6094', '4', 'Section-A', 'Akash ', 'Garg', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000095', 'akash2094@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000295', NULL, NULL, NULL, '3000000295', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(138, '2', '6042', '6042', '7', 'Section-A', 'Rohan', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000043', 'rohan2042@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000243', NULL, NULL, NULL, '3000000243', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(139, '2', '6095', '6095', '4', 'Section-A', 'Akshay', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000096', 'akshay2095@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000296', NULL, NULL, NULL, '3000000296', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(140, '2', '6043', '6043', '7', 'Section-A', 'John', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000044', 'john2043@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000244', NULL, NULL, 'Raju Devi', '3000000244', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(141, '2', '6096', '6096', '4', 'Section-B', 'Ajay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000097', 'ajay2096@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000297', NULL, NULL, 'Raju Devi', '3000000297', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(142, '2', '6044', '6044', '7', 'Section-A', 'Akash ', 'Garg', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000045', 'akash2044@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000245', NULL, NULL, NULL, '3000000245', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(143, '2', '6045', '6045', '7', 'Section-A', 'Akshay', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000046', 'akshay2045@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000246', NULL, NULL, NULL, '3000000246', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(144, '2', '6097', '6097', '4', 'Section-B', 'Daksh', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000098', 'daksh2097@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000298', NULL, NULL, NULL, '3000000298', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(145, '2', '6046', '6046', '7', 'Section-B', 'Ajay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000047', 'ajay2046@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000247', NULL, NULL, 'Raju Devi', '3000000247', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(146, '2', '6098', '6098', '4', 'Section-B', 'Vijay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000099', 'vijay2098@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000299', NULL, NULL, 'Raju Devi', '3000000299', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(147, '2', '6047', '6047', '7', 'Section-B', 'Daksh', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000048', 'daksh2047@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000248', NULL, NULL, NULL, '3000000248', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(148, '2', '6099', '6099', '4', 'Section-B', 'Sanjay', 'Gupta', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000100', 'sanjay2099@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000300', NULL, NULL, NULL, '3000000300', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(149, '2', '6048', '6048', '7', 'Section-B', 'Vijay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000049', 'vijay2048@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000249', NULL, NULL, 'Raju Devi', '3000000249', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(150, '2', '6100', '6100', '4', 'Section-B', 'Sumit', 'Saini', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000101', 'sumit2100@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '17', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000301', NULL, NULL, NULL, '3000000301', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(151, '2', '6049', '6049', '7', 'Section-B', 'Sanjay', 'Gupta', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000050', 'sanjay2049@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000250', NULL, NULL, NULL, '3000000250', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(152, '2', '6101', '6101', '3', 'Section-A', 'Mohan', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000102', 'mohan2101@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000302', NULL, NULL, NULL, '3000000302', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(153, '2', '6050', '6050', '7', 'Section-B', 'Sumit', 'Saini', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000051', 'sumit2050@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '17', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000251', NULL, NULL, NULL, '3000000251', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(154, '2', '6102', '6102', '3', 'Section-A', 'Rohan', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000103', 'rohan2102@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000303', NULL, NULL, NULL, '3000000303', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(155, '2', '6051', '6051', '6', 'Section-A', 'Mohan', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000052', 'mohan2051@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000252', NULL, NULL, NULL, '3000000252', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(156, '2', '6052', '6052', '6', 'Section-A', 'Rohan', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000053', 'rohan2052@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000253', NULL, NULL, NULL, '3000000253', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(157, '2', '6103', '6103', '3', 'Section-A', 'John', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000104', 'john2103@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000304', NULL, NULL, 'Raju Devi', '3000000304', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(158, '2', '6053', '6053', '6', 'Section-A', 'John', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000054', 'john2053@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000254', NULL, NULL, 'Raju Devi', '3000000254', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(159, '2', '6104', '6104', '3', 'Section-A', 'Akash ', 'Garg', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000105', 'akash2104@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000305', NULL, NULL, NULL, '3000000305', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(160, '2', '6054', '6054', '6', 'Section-A', 'Akash ', 'Garg', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000055', 'akash2054@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000255', NULL, NULL, NULL, '3000000255', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(161, '2', '6105', '6105', '3', 'Section-A', 'Akshay', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000106', 'akshay2105@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000306', NULL, NULL, NULL, '3000000306', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(162, '2', '6055', '6055', '6', 'Section-A', 'Akshay', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000056', 'akshay2055@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000256', NULL, NULL, NULL, '3000000256', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(163, '2', '6106', '6106', '3', 'Section-A', 'Ajay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000107', 'ajay2106@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000307', NULL, NULL, 'Raju Devi', '3000000307', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(164, '2', '6056', '6056', '6', 'Section-B', 'Ajay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000057', 'ajay2056@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000257', NULL, NULL, 'Raju Devi', '3000000257', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(165, '2', '6107', '6107', '3', 'Section-A', 'Daksh', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000108', 'daksh2107@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000308', NULL, NULL, NULL, '3000000308', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(166, '2', '6057', '6057', '6', 'Section-B', 'Daksh', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000058', 'daksh2057@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000258', NULL, NULL, NULL, '3000000258', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(167, '2', '6108', '6108', '3', 'Section-A', 'Vijay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000109', 'vijay2108@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000309', NULL, NULL, 'Raju Devi', '3000000309', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(168, '2', '6058', '6058', '6', 'Section-B', 'Vijay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000059', 'vijay2058@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000259', NULL, NULL, 'Raju Devi', '3000000259', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(169, '2', '6109', '6109', '3', 'Section-A', 'Sanjay', 'Gupta', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000110', 'sanjay2109@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000310', NULL, NULL, NULL, '3000000310', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(170, '2', '6059', '6059', '6', 'Section-B', 'Sanjay', 'Gupta', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000060', 'sanjay2059@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000260', NULL, NULL, NULL, '3000000260', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(171, '2', '6110', '6110', '3', 'Section-A', 'Sumit', 'Saini', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6100000111', 'sumit2110@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '17', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000311', NULL, NULL, NULL, '3000000311', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(172, '2', '6060', '6060', '6', 'Section-B', 'Sumit', 'Saini', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000061', 'sumit2060@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '17', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000261', NULL, NULL, NULL, '3000000261', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(173, '2', '6111', '6111', '3', 'Section-A', 'Mohan', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000112', 'mohan2111@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000312', NULL, NULL, NULL, '3000000312', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(174, '2', '6061', '6061', '5', 'Section-A', 'Mohan', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000062', 'mohan2061@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000262', NULL, NULL, NULL, '3000000262', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(175, '2', '6112', '6112', '3', 'Section-A', 'Rohan', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000113', 'rohan2112@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000313', NULL, NULL, NULL, '3000000313', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(176, '2', '6062', '6062', '5', 'Section-A', 'Rohan', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000063', 'rohan2062@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000263', NULL, NULL, NULL, '3000000263', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(177, '2', '6113', '6113', '3', 'Section-A', 'John', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000114', 'john2113@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000314', NULL, NULL, 'Raju Devi', '3000000314', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(178, '2', '6063', '6063', '5', 'Section-A', 'John', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000064', 'john2063@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000264', NULL, NULL, 'Raju Devi', '3000000264', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(179, '2', '6114', '6114', '3', 'Section-A', 'Akash ', 'Garg', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000115', 'akash2114@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000315', NULL, NULL, NULL, '3000000315', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(180, '2', '6064', '6064', '5', 'Section-A', 'Akash ', 'Garg', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000065', 'akash2064@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000265', NULL, NULL, NULL, '3000000265', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(181, '2', '6115', '6115', '3', 'Section-A', 'Akshay', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000116', 'akshay2115@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000316', NULL, NULL, NULL, '3000000316', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(182, '2', '6065', '6065', '5', 'Section-A', 'Akshay', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000066', 'akshay2065@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000266', NULL, NULL, NULL, '3000000266', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(183, '2', '6116', '6116', '3', 'Section-B', 'Ajay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000117', 'ajay2116@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000317', NULL, NULL, 'Raju Devi', '3000000317', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(184, '2', '6066', '6066', '5', 'Section-B', 'Ajay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000067', 'ajay2066@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000267', NULL, NULL, 'Raju Devi', '3000000267', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(185, '2', '6117', '6117', '3', 'Section-B', 'Daksh', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000118', 'daksh2117@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000318', NULL, NULL, NULL, '3000000318', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(186, '2', '6067', '6067', '5', 'Section-B', 'Daksh', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000068', 'daksh2067@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000268', NULL, NULL, NULL, '3000000268', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(187, '2', '6118', '6118', '3', 'Section-B', 'Vijay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000119', 'vijay2218@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000319', NULL, NULL, 'Raju Devi', '3000000319', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(188, '2', '6119', '6119', '3', 'Section-B', 'Sanjay', 'Gupta', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000120', 'sanjay2219@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000320', NULL, NULL, NULL, '3000000320', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(189, '2', '6068', '6068', '5', 'Section-B', 'Vijay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000069', 'vijay2068@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000269', NULL, NULL, 'Raju Devi', '3000000269', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(190, '2', '6120', '6120', '3', 'Section-B', 'Sumit', 'Saini', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000121', 'sumit2120@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '17', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000321', NULL, NULL, NULL, '3000000321', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(191, '2', '6069', '6069', '5', 'Section-B', 'Sanjay', 'Gupta', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000070', 'sanjay2069@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000270', NULL, NULL, NULL, '3000000270', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(192, '2', '6121', '6121', '3', 'Section-A', 'Mohan', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000122', 'mohan2121@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000322', NULL, NULL, NULL, '3000000322', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(193, '2', '6070', '6070', '5', 'Section-B', 'Sumit', 'Saini', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000071', 'sumit2070@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '17', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000271', NULL, NULL, NULL, '3000000271', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(194, '2', '6122', '6122', '3', 'Section-A', 'Rohan', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000123', 'rohan2122@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000323', NULL, NULL, NULL, '3000000323', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(195, '2', '6071', '6071', '4', 'Section-A', 'Mohan', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000072', 'mohan2071@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000272', NULL, NULL, NULL, '3000000272', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(196, '2', '6123', '6123', '3', 'Section-A', 'John', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000124', 'john2123@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000324', NULL, NULL, 'Raju Devi', '3000000324', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(197, '2', '6072', '6072', '4', 'Section-A', 'Rohan', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000073', 'rohan2072@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000273', NULL, NULL, NULL, '3000000273', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(198, '2', '6124', '6124', '3', 'Section-A', 'Akash ', 'Garg', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000125', 'akash2124@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000325', NULL, NULL, NULL, '3000000325', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(199, '2', '6125', '6125', '3', 'Section-A', 'Akshay', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000126', 'akshay2125@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000326', NULL, NULL, NULL, '3000000326', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32');
INSERT INTO `student_admission` (`id`, `user_id`, `admission_no`, `roll_no`, `class`, `section`, `first_name`, `last_name`, `gender`, `dob`, `category`, `religion`, `caste`, `mobile_no`, `email`, `password`, `conform_password`, `admission_date`, `student_image`, `blood_group`, `stu_house`, `height`, `weight`, `as_on_date`, `father_name`, `father_mobile`, `father_accu`, `father_photo`, `mother_name`, `mother_phone`, `mother_occu`, `mother_photo`, `guardian`, `gur_name`, `gur_relation`, `gur_email`, `gur_photo`, `gur_phone`, `gur_occu`, `gur_address`, `bank_no`, `bank_name`, `ifsc`, `nin_no`, `lin_no`, `rte`, `pre_school`, `notes`, `balance`, `current_result`, `session_status`, `session`, `status`, `active_status`, `created_at`, `updated_at`) VALUES
(200, '2', '6073', '6073', '4', 'Section-A', 'John', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000074', 'john2073@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000274', NULL, NULL, 'Raju Devi', '3000000274', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(201, '2', '6126', '6126', '3', 'Section-B', 'Ajay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000127', 'ajay2126@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000327', NULL, NULL, 'Raju Devi', '3000000327', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(202, '2', '6074', '6074', '4', 'Section-A', 'Akash ', 'Garg', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000075', 'akash2074@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000275', NULL, NULL, NULL, '3000000275', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(203, '2', '6127', '6127', '3', 'Section-B', 'Daksh', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000128', 'daksh2127@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000328', NULL, NULL, NULL, '3000000328', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(204, '2', '6075', '6075', '4', 'Section-A', 'Akshay', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000076', 'akshay2075@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000276', NULL, NULL, NULL, '3000000276', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(205, '2', '6076', '6076', '4', 'Section-A', 'Ajay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000077', 'ajay2076@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000277', NULL, NULL, 'Raju Devi', '3000000277', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(206, '2', '6128', '6128', '3', 'Section-B', 'Vijay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000129', 'vijay2128@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000329', NULL, NULL, 'Raju Devi', '3000000329', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(207, '2', '6077', '6077', '4', 'Section-A', 'Daksh', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000078', 'daksh2077@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000278', NULL, NULL, NULL, '3000000278', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(208, '2', '6129', '6129', '3', 'Section-B', 'Sanjay', 'Gupta', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000130', 'sanjay2129@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000330', NULL, NULL, NULL, '3000000330', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(209, '2', '6078', '6078', '4', 'Section-A', 'Vijay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000079', 'vijay2078@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000279', NULL, NULL, 'Raju Devi', '3000000279', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(210, '2', '6130', '6130', '3', 'Section-B', 'Sumit', 'Saini', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000131', 'sumit2130@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '17', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000331', NULL, NULL, NULL, '3000000331', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(211, '2', '6079', '6079', '4', 'Section-A', 'Sanjay', 'Gupta', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000080', 'sanjay2079@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000280', NULL, NULL, NULL, '3000000280', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(212, '2', '6131', '6131', '2', 'Section-A', 'Mohan', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000132', 'mohan2131@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000332', NULL, NULL, NULL, '3000000332', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(213, '2', '6080', '6080', '4', 'Section-A', 'Sumit', 'Saini', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000081', 'sumit2080@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '17', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000281', NULL, NULL, NULL, '3000000281', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(214, '2', '6132', '6132', '2', 'Section-A', 'Rohan', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000133', 'rohan2132@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000333', NULL, NULL, NULL, '3000000333', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(215, '2', '6081', '6081', '4', 'Section-A', 'Mohan', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000082', 'mohan2081@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000282', NULL, NULL, NULL, '3000000282', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(216, '2', '6133', '6133', '2', 'Section-A', 'John', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000134', 'john2133@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000334', NULL, NULL, 'Raju Devi', '3000000334', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(217, '2', '6082', '6082', '4', 'Section-A', 'Rohan', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000083', 'rohan2082@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000283', NULL, NULL, NULL, '3000000283', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(218, '2', '6134', '6134', '2', 'Section-A', 'Akash ', 'Garg', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000135', 'akash2134@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000335', NULL, NULL, NULL, '3000000335', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(219, '2', '6083', '6083', '4', 'Section-A', 'John', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000084', 'john2083@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000284', NULL, NULL, 'Raju Devi', '3000000284', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(220, '2', '6135', '6135', '2', 'Section-A', 'Akshay', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000136', 'akshay2135@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000336', NULL, NULL, NULL, '3000000336', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(221, '2', '6084', '6084', '4', 'Section-A', 'Akash ', 'Garg', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000085', 'akash2084@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000285', NULL, NULL, NULL, '3000000285', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(222, '2', '6136', '6136', '2', 'Section-A', 'Ajay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000137', 'ajay2136@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000337', NULL, NULL, 'Raju Devi', '3000000337', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(223, '2', '6085', '6085', '4', 'Section-A', 'Akshay', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000086', 'akshay2085@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000286', NULL, NULL, NULL, '3000000286', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(224, '2', '6137', '6137', '2', 'Section-A', 'Daksh', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000138', 'daksh2137@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000338', NULL, NULL, NULL, '3000000338', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(225, '2', '6086', '6086', '4', 'Section-B', 'Ajay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000087', 'ajay2086@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000287', NULL, NULL, 'Raju Devi', '3000000287', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(226, '2', '6138', '6138', '2', 'Section-A', 'Vijay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000139', 'vijay2138@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000339', NULL, NULL, 'Raju Devi', '3000000339', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(227, '2', '6139', '6139', '2', 'Section-A', 'Sanjay', 'Gupta', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000140', 'sanjay2139@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000340', NULL, NULL, NULL, '3000000340', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(228, '2', '6087', '6087', '4', 'Section-B', 'Daksh', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000088', 'daksh2087@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000288', NULL, NULL, NULL, '3000000288', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(229, '2', '6140', '6140', '2', 'Section-A', 'Sumit', 'Saini', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000141', 'sumit2140@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '17', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000341', NULL, NULL, NULL, '3000000341', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(230, '2', '6088', '6088', '4', 'Section-B', 'Vijay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000089', 'vijay2088@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000289', NULL, NULL, 'Raju Devi', '3000000289', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(231, '2', '6141', '6141', '2', 'Section-A', 'Mohan', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000142', 'mohan2141@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000342', NULL, NULL, NULL, '3000000342', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(232, '2', '6089', '6089', '4', 'Section-B', 'Sanjay', 'Gupta', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000090', 'sanjay2089@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000290', NULL, NULL, NULL, '3000000290', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(233, '2', '6142', '6142', '2', 'Section-A', 'Rohan', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000143', 'rohan2142@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000343', NULL, NULL, NULL, '3000000343', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(234, '2', '6090', '6090', '4', 'Section-B', 'Sumit', 'Saini', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000091', 'sumit2090@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '17', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000291', NULL, NULL, NULL, '3000000291', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(235, '2', '6143', '6143', '2', 'Section-A', 'John', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000144', 'john2143@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000344', NULL, NULL, 'Raju Devi', '3000000344', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(236, '2', '6091', '6091', '4', 'Section-A', 'Mohan', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000092', 'mohan2091@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000292', NULL, NULL, NULL, '3000000292', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(237, '2', '6144', '6144', '2', 'Section-A', 'Akash ', 'Garg', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000145', 'akash2144@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000345', NULL, NULL, NULL, '3000000345', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(238, '2', '6092', '6092', '4', 'Section-A', 'Rohan', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000093', 'rohan2092@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000293', NULL, NULL, NULL, '3000000293', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(239, '2', '6093', '6093', '4', 'Section-A', 'John', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000094', 'john2093@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000294', NULL, NULL, 'Raju Devi', '3000000294', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(240, '2', '6145', '6145', '2', 'Section-A', 'Akshay', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000146', 'akshay2145@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000346', NULL, NULL, NULL, '3000000346', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(241, '2', '6094', '6094', '4', 'Section-A', 'Akash ', 'Garg', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000095', 'akash2094@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000295', NULL, NULL, NULL, '3000000295', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(242, '2', '6146', '6146', '2', 'Section-B', 'Ajay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000147', 'ajay2146@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000347', NULL, NULL, 'Raju Devi', '3000000347', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(243, '2', '6095', '6095', '4', 'Section-A', 'Akshay', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000096', 'akshay2095@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000296', NULL, NULL, NULL, '3000000296', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(244, '2', '6147', '6147', '2', 'Section-B', 'Daksh', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000148', 'daksh2147@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000348', NULL, NULL, NULL, '3000000348', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(245, '2', '6148', '6148', '2', 'Section-B', 'Vijay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000149', 'vijay2148@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000349', NULL, NULL, 'Raju Devi', '3000000349', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(246, '2', '6096', '6096', '4', 'Section-B', 'Ajay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000097', 'ajay2096@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000297', NULL, NULL, 'Raju Devi', '3000000297', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(247, '2', '6149', '6149', '2', 'Section-B', 'Sanjay', 'Gupta', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000150', 'sanjay2149@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000350', NULL, NULL, NULL, '3000000350', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(248, '2', '6097', '6097', '4', 'Section-B', 'Daksh', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000098', 'daksh2097@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000298', NULL, NULL, NULL, '3000000298', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(249, '2', '6150', '6150', '2', 'Section-B', 'Sumit', 'Saini', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000151', 'sumit2150@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '17', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000351', NULL, NULL, NULL, '3000000351', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(250, '2', '6151', '6151', '2', 'Section-B', 'Mohan', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000152', 'mohan2151@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000352', NULL, NULL, NULL, '3000000352', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(251, '2', '6098', '6098', '4', 'Section-B', 'Vijay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000099', 'vijay2098@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000299', NULL, NULL, 'Raju Devi', '3000000299', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(252, '2', '6152', '6152', '2', 'Section-B', 'Rohan', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000153', 'rohan2152@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000353', NULL, NULL, NULL, '3000000353', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(253, '2', '6099', '6099', '4', 'Section-B', 'Sanjay', 'Gupta', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000100', 'sanjay2099@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000300', NULL, NULL, NULL, '3000000300', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(254, '2', '6153', '6153', '2', 'Section-B', 'John', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000154', 'john2153@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000354', NULL, NULL, 'Raju Devi', '3000000354', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(255, '2', '6100', '6100', '4', 'Section-B', 'Sumit', 'Saini', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000101', 'sumit2100@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '17', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000301', NULL, NULL, NULL, '3000000301', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(256, '2', '6154', '6154', '2', 'Section-B', 'Akash ', 'Garg', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000155', 'akash2154@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000355', NULL, NULL, NULL, '3000000355', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(257, '2', '6101', '6101', '3', 'Section-A', 'Mohan', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000102', 'mohan2101@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000302', NULL, NULL, NULL, '3000000302', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:32', '2023-09-04 11:08:32'),
(258, '2', '6155', '6155', '2', 'Section-B', 'Akshay', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000156', 'akshay2155@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000356', NULL, NULL, NULL, '3000000356', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(259, '2', '6102', '6102', '3', 'Section-A', 'Rohan', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000103', 'rohan2102@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000303', NULL, NULL, NULL, '3000000303', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(260, '2', '6156', '6156', '2', 'Section-B', 'Ajay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000157', 'ajay2156@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000357', NULL, NULL, 'Raju Devi', '3000000357', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(261, '2', '6103', '6103', '3', 'Section-A', 'John', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000104', 'john2103@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000304', NULL, NULL, 'Raju Devi', '3000000304', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(262, '2', '6157', '6157', '2', 'Section-B', 'Daksh', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000158', 'daksh2157@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000358', NULL, NULL, NULL, '3000000358', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(263, '2', '6104', '6104', '3', 'Section-A', 'Akash ', 'Garg', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000105', 'akash2104@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000305', NULL, NULL, NULL, '3000000305', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(264, '2', '6158', '6158', '2', 'Section-B', 'Vijay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000159', 'vijay2158@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000359', NULL, NULL, 'Raju Devi', '3000000359', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(265, '2', '6105', '6105', '3', 'Section-A', 'Akshay', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000106', 'akshay2105@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000306', NULL, NULL, NULL, '3000000306', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(266, '2', '6159', '6159', '2', 'Section-B', 'Sanjay', 'Gupta', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000160', 'sanjay2159@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000360', NULL, NULL, NULL, '3000000360', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(267, '2', '6160', '6160', '2', 'Section-B', 'Sumit', 'Saini', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000161', 'sumit2160@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '17', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000361', NULL, NULL, NULL, '3000000361', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(268, '2', '6106', '6106', '3', 'Section-A', 'Ajay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000107', 'ajay2106@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000307', NULL, NULL, 'Raju Devi', '3000000307', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(269, '2', '6161', '6161', '1', 'Section-A', 'Mohan', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000162', 'mohan2162@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000362', NULL, NULL, NULL, '3000000362', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(270, '2', '6107', '6107', '3', 'Section-A', 'Daksh', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000108', 'daksh2107@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000308', NULL, NULL, NULL, '3000000308', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(271, '2', '6162', '6162', '1', 'Section-A', 'Rohan', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000163', 'rohan2163@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000363', NULL, NULL, NULL, '3000000363', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(272, '2', '6108', '6108', '3', 'Section-A', 'Vijay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000109', 'vijay2108@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000309', NULL, NULL, 'Raju Devi', '3000000309', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(273, '2', '6109', '6109', '3', 'Section-A', 'Sanjay', 'Gupta', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000110', 'sanjay2109@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000310', NULL, NULL, NULL, '3000000310', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(274, '2', '6163', '6163', '1', 'Section-A', 'John', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000164', 'john2164@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000364', NULL, NULL, 'Raju Devi', '3000000364', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(275, '2', '6110', '6110', '3', 'Section-A', 'Sumit', 'Saini', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6100000111', 'sumit2110@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '17', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000311', NULL, NULL, NULL, '3000000311', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(276, '2', '6164', '6164', '1', 'Section-A', 'Akash ', 'Garg', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000165', 'akash2165@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000365', NULL, NULL, NULL, '3000000365', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(277, '2', '6111', '6111', '3', 'Section-A', 'Mohan', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000112', 'mohan2111@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000312', NULL, NULL, NULL, '3000000312', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(278, '2', '6165', '6165', '1', 'Section-A', 'Akshay', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000166', 'akshay2166@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000366', NULL, NULL, NULL, '3000000366', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(279, '2', '6166', '6166', '1', 'Section-A', 'Ajay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000167', 'ajay2166@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000367', NULL, NULL, 'Raju Devi', '3000000367', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(280, '2', '6112', '6112', '3', 'Section-A', 'Rohan', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000113', 'rohan2112@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000313', NULL, NULL, NULL, '3000000313', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(281, '2', '6167', '6167', '1', 'Section-A', 'Daksh', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000168', 'daksh2167@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000368', NULL, NULL, NULL, '3000000368', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(282, '2', '6113', '6113', '3', 'Section-A', 'John', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000114', 'john2113@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000314', NULL, NULL, 'Raju Devi', '3000000314', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(283, '2', '6168', '6168', '1', 'Section-A', 'Vijay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000169', 'vijay2168@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000369', NULL, NULL, 'Raju Devi', '3000000369', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(284, '2', '6114', '6114', '3', 'Section-A', 'Akash ', 'Garg', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000115', 'akash2114@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000315', NULL, NULL, NULL, '3000000315', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(285, '2', '6169', '6169', '1', 'Section-A', 'Sanjay', 'Gupta', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000170', 'sanjay2169@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000370', NULL, NULL, NULL, '3000000370', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(286, '2', '6115', '6115', '3', 'Section-A', 'Akshay', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000116', 'akshay2115@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000316', NULL, NULL, NULL, '3000000316', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(287, '2', '6170', '6170', '1', 'Section-A', 'Sumit', 'Saini', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000171', 'sumit2170@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '17', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000371', NULL, NULL, NULL, '3000000371', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(288, '2', '6171', '6171', '1', 'Section-A', 'Mohan', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000172', 'mohan2171@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000372', NULL, NULL, NULL, '3000000372', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(289, '2', '6116', '6116', '3', 'Section-B', 'Ajay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000117', 'ajay2116@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000317', NULL, NULL, 'Raju Devi', '3000000317', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(290, '2', '6172', '6172', '1', 'Section-A', 'Rohan', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000173', 'rohan2172@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000373', NULL, NULL, NULL, '3000000373', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(291, '2', '6117', '6117', '3', 'Section-B', 'Daksh', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000118', 'daksh2117@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000318', NULL, NULL, NULL, '3000000318', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(292, '2', '6173', '6173', '1', 'Section-A', 'John', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000174', 'john2173@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000374', NULL, NULL, 'Raju Devi', '3000000374', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(293, '2', '6118', '6118', '3', 'Section-B', 'Vijay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000119', 'vijay2218@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000319', NULL, NULL, 'Raju Devi', '3000000319', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(294, '2', '6174', '6174', '1', 'Section-A', 'Akash ', 'Garg', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000175', 'akash2174@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000375', NULL, NULL, NULL, '3000000375', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(295, '2', '6119', '6119', '3', 'Section-B', 'Sanjay', 'Gupta', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000120', 'sanjay2219@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000320', NULL, NULL, NULL, '3000000320', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(296, '2', '6175', '6175', '1', 'Section-A', 'Akshay', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000176', 'akshay2175@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000376', NULL, NULL, NULL, '3000000376', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(297, '2', '6120', '6120', '3', 'Section-B', 'Sumit', 'Saini', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000121', 'sumit2120@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '17', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000321', NULL, NULL, NULL, '3000000321', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(298, '2', '6176', '6176', '1', 'Section-B', 'Ajay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000177', 'ajay2176@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000173', NULL, NULL, 'Raju Devi', '3000000173', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(299, '2', '6121', '6121', '3', 'Section-A', 'Mohan', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000122', 'mohan2121@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000322', NULL, NULL, NULL, '3000000322', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(300, '2', '6177', '6177', '1', 'Section-B', 'Daksh', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000178', 'daksh2177@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000378', NULL, NULL, NULL, '3000000378', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(301, '2', '6179', '6179', '1', 'Section-B', 'Vijay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000179', 'vijay2178@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000379', NULL, NULL, 'Raju Devi', '3000000379', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(302, '2', '6122', '6122', '3', 'Section-A', 'Rohan', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000123', 'rohan2122@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000323', NULL, NULL, NULL, '3000000323', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33');
INSERT INTO `student_admission` (`id`, `user_id`, `admission_no`, `roll_no`, `class`, `section`, `first_name`, `last_name`, `gender`, `dob`, `category`, `religion`, `caste`, `mobile_no`, `email`, `password`, `conform_password`, `admission_date`, `student_image`, `blood_group`, `stu_house`, `height`, `weight`, `as_on_date`, `father_name`, `father_mobile`, `father_accu`, `father_photo`, `mother_name`, `mother_phone`, `mother_occu`, `mother_photo`, `guardian`, `gur_name`, `gur_relation`, `gur_email`, `gur_photo`, `gur_phone`, `gur_occu`, `gur_address`, `bank_no`, `bank_name`, `ifsc`, `nin_no`, `lin_no`, `rte`, `pre_school`, `notes`, `balance`, `current_result`, `session_status`, `session`, `status`, `active_status`, `created_at`, `updated_at`) VALUES
(303, '2', '6180', '6180', '1', 'Section-B', 'Sanjay', 'Gupta', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000180', 'sanjay2179@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000380', NULL, NULL, NULL, '3000000380', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(304, '2', '6123', '6123', '3', 'Section-A', 'John', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000124', 'john2123@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000324', NULL, NULL, 'Raju Devi', '3000000324', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(305, '2', '6181', '6181', '1', 'Section-B', 'Sumit', 'Saini', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000181', 'sumit2180@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '17', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000381', NULL, NULL, NULL, '3000000381', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(306, '2', '6124', '6124', '3', 'Section-A', 'Akash ', 'Garg', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000125', 'akash2124@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000325', NULL, NULL, NULL, '3000000325', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(307, '2', '6182', '6182', '1', 'Section-B', 'Mohan', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000182', 'mohan2181@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000382', NULL, NULL, NULL, '3000000382', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(308, '2', '6125', '6125', '3', 'Section-A', 'Akshay', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000126', 'akshay2125@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000326', NULL, NULL, NULL, '3000000326', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(309, '2', '6183', '6183', '1', 'Section-B', 'Rohan', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000183', 'rohan2182@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000383', NULL, NULL, NULL, '3000000383', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(310, '2', '6126', '6126', '3', 'Section-B', 'Ajay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000127', 'ajay2126@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000327', NULL, NULL, 'Raju Devi', '3000000327', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(311, '2', '6184', '6184', '1', 'Section-B', 'John', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000184', 'john2183@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000384', NULL, NULL, 'Raju Devi', '3000000384', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(312, '2', '6127', '6127', '3', 'Section-B', 'Daksh', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000128', 'daksh2127@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000328', NULL, NULL, NULL, '3000000328', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(313, '2', '6185', '6185', '1', 'Section-B', 'Akash ', 'Garg', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000185', 'akash2184@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000385', NULL, NULL, NULL, '3000000385', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(314, '2', '6186', '6186', '1', 'Section-B', 'Akshay', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000186', 'akshay2185@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000386', NULL, NULL, NULL, '3000000386', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(315, '2', '6128', '6128', '3', 'Section-B', 'Vijay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000129', 'vijay2128@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000329', NULL, NULL, 'Raju Devi', '3000000329', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(316, '2', '6187', '6187', '1', 'Section-B', 'Ajay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000187', 'ajay2186@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000387', NULL, NULL, 'Raju Devi', '3000000387', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(317, '2', '6129', '6129', '3', 'Section-B', 'Sanjay', 'Gupta', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000130', 'sanjay2129@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000330', NULL, NULL, NULL, '3000000330', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(318, '2', '6188', '6188', '1', 'Section-B', 'Daksh', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000188', 'daksh2187@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000388', NULL, NULL, NULL, '3000000388', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(319, '2', '6130', '6130', '3', 'Section-B', 'Sumit', 'Saini', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000131', 'sumit2130@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '17', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000331', NULL, NULL, NULL, '3000000331', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(320, '2', '6189', '6189', '1', 'Section-B', 'Vijay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000189', 'vijay2188@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000389', NULL, NULL, 'Raju Devi', '3000000389', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(321, '2', '6131', '6131', '2', 'Section-A', 'Mohan', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000132', 'mohan2131@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000332', NULL, NULL, NULL, '3000000332', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(322, '2', '6190', '6190', '1', 'Section-B', 'Sanjay', 'Gupta', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000190', 'sanjay2189@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000390', NULL, NULL, NULL, '3000000390', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(323, '2', '6132', '6132', '2', 'Section-A', 'Rohan', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000133', 'rohan2132@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000333', NULL, NULL, NULL, '3000000333', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(324, '2', '6191', '6191', '1', 'Section-B', 'Sumit', 'Saini', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000191', 'sumit2190@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '17', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000391', NULL, NULL, NULL, '3000000391', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(325, '2', '6133', '6133', '2', 'Section-A', 'John', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000134', 'john2133@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000334', NULL, NULL, 'Raju Devi', '3000000334', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(326, '2', '6192', '6192', '10', 'Section-A', 'Manish', 'Sharma', 'Male', '2000-05-25', 'Student', 'Hindu', 'obc', '7100000001', 'manishsharma2191@gmail.com', NULL, NULL, '2023-05-27', NULL, NULL, '12', '5.3', '65', '2023-05-26', 'Mr. ramswroop', '9000000201', 'In words, the control occupation of a person depicts the work that he truly does to make a kind of revenue for him and his family as his loved ones.', NULL, 'pinki', '4000000201', 'mother \'s occupation will allude to the work, work or business done by the person\'s mother to get by.', NULL, NULL, 'ramswaroop', 'father', 'ramswaroop@gmail.com', NULL, '9982593754', 'In the field of English Sentence structure, the term \'occupation\' can be depicted as a job, work or calling of a person.', 'chomu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(327, '2', '6134', '6134', '2', 'Section-A', 'Akash ', 'Garg', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000135', 'akash2134@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000335', NULL, NULL, NULL, '3000000335', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(328, '2', '6193', '6193', '8', 'Section-A', 'Manish', 'Sharma', 'Male', '2000-05-25', 'Student', 'Hindu', 'obc', '7000000002', 'manishsharma2192@gmail.com', NULL, NULL, '2023-05-27', NULL, NULL, '12', '5.3', '65', '2023-05-26', 'Mr. ramswroop', '9000000202', 'In words, the control occupation of a person depicts the work that he truly does to make a kind of revenue for him and his family as his loved ones.', NULL, 'pinki', '4000000202', 'mother \'s occupation will allude to the work, work or business done by the person\'s mother to get by.', NULL, NULL, 'ramswaroop', 'father', 'ramswaroop@gmail.com', NULL, '9982593754', 'In the field of English Sentence structure, the term \'occupation\' can be depicted as a job, work or calling of a person.', 'chomu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(329, '2', '6135', '6135', '2', 'Section-A', 'Akshay', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000136', 'akshay2135@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000336', NULL, NULL, NULL, '3000000336', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(330, '2', '6194', '6194', '4', 'Section-A', 'Abhi', 'kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000003', 'abhi2193@gmail.com', NULL, NULL, '2023-05-20', NULL, NULL, '15', '5.5', '70', '2023-05-03', 'Mr.Ramesh', '9000000203', NULL, NULL, 'Shikha', '4000000203', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(331, '2', '6136', '6136', '2', 'Section-A', 'Ajay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000137', 'ajay2136@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000337', NULL, NULL, 'Raju Devi', '3000000337', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(332, '2', '6195', '6195', '10', 'Section-B', 'Dinesh', 'yadav', 'Male', '1995-05-26', 'Student', 'Hindu', 'obc', '7000000004', 'dineshyadav2194@gmail.com', NULL, NULL, '2023-05-04', NULL, NULL, '12', '5.5', '65', '2023-05-21', 'Mr.Umesh', '9000000204', NULL, NULL, 'Raju Devi', '4000000204', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(333, '2', '6137', '6137', '2', 'Section-A', 'Daksh', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000138', 'daksh2137@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000338', NULL, NULL, NULL, '3000000338', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(334, '2', '6196', '6196', '6', 'Section-A', 'Abhishek', 'kumawat', 'Male', '1999-05-04', 'Student', 'Hindu', 'obc', '7000000005', 'abhishek1kumawat2195@gmail.com', NULL, NULL, '2000-03-31', NULL, NULL, '12', '5.3', '80', '1999-06-09', 'Mr. ramswroop', '9000000205', NULL, NULL, NULL, '4000000205', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(335, '2', '6197', '6197', '5', 'Section-A', 'Ajay', 'Sharma', 'Male', '2000-05-25', 'Student', 'Hindu', 'obc', '7000000006', 'manishsharma2196@gmail.com', NULL, NULL, '2023-05-27', NULL, NULL, '12', '5.3', '65', '2023-05-26', 'Mr. ramswroop', '9000000206', 'In words, the control occupation of a person depicts the work that he truly does to make a kind of revenue for him and his family as his loved ones.', NULL, 'pinki', '4000000206', 'mother \'s occupation will allude to the work, work or business done by the person\'s mother to get by.', NULL, NULL, 'ramswaroop', 'father', 'ramswaroop@gmail.com', NULL, '9982593754', 'In the field of English Sentence structure, the term \'occupation\' can be depicted as a job, work or calling of a person.', 'chomu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(336, '2', '6138', '6138', '2', 'Section-A', 'Vijay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000139', 'vijay2138@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000339', NULL, NULL, 'Raju Devi', '3000000339', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(337, '2', '6198', '6198', '10', 'Section-A', 'umesh', 'kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000007', 'abhi2197@gmail.com', NULL, NULL, '2023-05-20', NULL, NULL, '15', '5.5', '70', '2023-05-03', 'Mr.Ramesh', '9000000207', NULL, NULL, 'Shikha', '4000000207', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(338, '2', '6139', '6139', '2', 'Section-A', 'Sanjay', 'Gupta', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000140', 'sanjay2139@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000340', NULL, NULL, NULL, '3000000340', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(339, '2', '6199', '6199', '8', 'Section-B', 'neha', 'yadav', 'Male', '1995-05-26', 'Student', 'Hindu', 'obc', '7000000008', 'dineshyadav2198@gmail.com', NULL, NULL, '2023-05-04', NULL, NULL, '12', '5.5', '65', '2023-05-21', 'Mr.Umesh', '9000000208', NULL, NULL, 'Raju Devi', '4000000208', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(340, '2', '6140', '6140', '2', 'Section-A', 'Sumit', 'Saini', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000141', 'sumit2140@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '17', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000341', NULL, NULL, NULL, '3000000341', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(341, '2', '6200', '6200', '7', 'Section-A', 'gajal', 'kumawat', 'Male', '1999-05-04', 'Student', 'Hindu', 'obc', '7000000009', 'abhishek1kumawat2199@gmail.com', NULL, NULL, '2000-03-31', NULL, NULL, '12', '5.3', '80', '1999-06-09', 'Mr. ramswroop', '9000000209', NULL, NULL, NULL, '4000000209', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(342, '2', '6141', '6141', '2', 'Section-A', 'Mohan', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000142', 'mohan2141@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000342', NULL, NULL, NULL, '3000000342', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(343, '2', '6201', '6201', '9', 'Section-A', 'Ritika', 'sharma', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000010', 'ankitsharma2200@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '15', '5.3', '65', '2023-06-07', 'Rajaram sharma', '9000000210', 'In words, the control occupation of a person depicts the work that he truly does to make a kind of revenue for him and his family as his loved ones.', NULL, 'Raju Devi', '4000000210', 'mother \'s occupation will allude to the work, work or business done by the person\'s mother to get by.', NULL, NULL, 'rajaram sharma', 'father', 'rajaram@gmail.com', NULL, '9982593059', 'In the field of English Sentence structure, the term \'occupation\' can be depicted as a job, work or calling of a person.', 'chomu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(344, '2', '6142', '6142', '2', 'Section-A', 'Rohan', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000143', 'rohan2142@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000343', NULL, NULL, NULL, '3000000343', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(345, '2', '6202', '6202', '10', 'Section-B', 'sonu', 'kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7100000011', 'sonukumawat2201@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '17', NULL, '80', '1999-06-09', 'Mr. ramswroop', '9000000211', NULL, NULL, NULL, '4000000211', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(346, '2', '6143', '6143', '2', 'Section-A', 'John', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000144', 'john2143@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000344', NULL, NULL, 'Raju Devi', '3000000344', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(347, '2', '6203', '6203', '10', 'Section-A', 'Monu', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000012', 'monu2202@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000212', NULL, NULL, NULL, '4000000212', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(348, '2', '6144', '6144', '2', 'Section-A', 'Akash ', 'Garg', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000145', 'akash2144@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000345', NULL, NULL, NULL, '3000000345', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(349, '2', '6204', '6204', '10', 'Section-B', 'Ronu', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000013', 'ronu2203@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000213', NULL, NULL, NULL, '4000000213', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(350, '2', '6205', '6205', '10', 'Section-B', 'Jonu', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000014', 'jonu2204@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000214', NULL, NULL, 'Raju Devi', '4000000214', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(351, '2', '6145', '6145', '2', 'Section-A', 'Akshay', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000146', 'akshay2145@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000346', NULL, NULL, NULL, '3000000346', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(352, '2', '6206', '6206', '10', 'Section-A', 'Akshay', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000015', 'akshay2205@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000215', NULL, NULL, NULL, '4000000215', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(353, '2', '6146', '6146', '2', 'Section-B', 'Ajay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000147', 'ajay2146@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000347', NULL, NULL, 'Raju Devi', '3000000347', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(354, '2', '6207', '6207', '10', 'Section-B', 'Ajay', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000016', 'ajay2206@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000216', NULL, NULL, 'Raju Devi', '4000000216', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(355, '2', '6147', '6147', '2', 'Section-B', 'Daksh', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000148', 'daksh2147@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000348', NULL, NULL, NULL, '3000000348', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(356, '2', '6148', '6148', '2', 'Section-B', 'Vijay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000149', 'vijay2148@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000349', NULL, NULL, 'Raju Devi', '3000000349', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(357, '2', '6208', '6208', '9', 'Section-A', 'Sohan', 'kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000017', 'sohan2207@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '17', NULL, '80', '1999-06-09', 'Mr. ramswroop', '9000000217', NULL, NULL, NULL, '4000000217', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(358, '2', '6149', '6149', '2', 'Section-B', 'Sanjay', 'Gupta', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000150', 'sanjay2149@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000350', NULL, NULL, NULL, '3000000350', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(359, '2', '6150', '6150', '2', 'Section-B', 'Sumit', 'Saini', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000151', 'sumit2150@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '17', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000351', NULL, NULL, NULL, '3000000351', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(360, '2', '6209', '6209', '9', 'Section-A', 'Mohan', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000018', 'mohan2208@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000218', NULL, NULL, NULL, '4000000218', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(361, '2', '6151', '6151', '2', 'Section-B', 'Mohan', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000152', 'mohan2151@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000352', NULL, NULL, NULL, '3000000352', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(362, '2', '6210', '6210', '9', 'Section-A', 'Rohan', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000019', 'rohan2209@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000219', NULL, NULL, NULL, '4000000219', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(363, '2', '6152', '6152', '2', 'Section-B', 'Rohan', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000153', 'rohan2152@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000353', NULL, NULL, NULL, '3000000353', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(364, '2', '6211', '6211', '9', 'Section-A', 'John', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000020', 'john2210@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000220', NULL, NULL, 'Raju Devi', '4000000220', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(365, '2', '6153', '6153', '2', 'Section-B', 'John', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000154', 'john2153@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000354', NULL, NULL, 'Raju Devi', '3000000354', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(366, '2', '6212', '6212', '9', 'Section-B', 'Akshay', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000021', 'akshay2211@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000221', NULL, NULL, NULL, '4000000221', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(367, '2', '6154', '6154', '2', 'Section-B', 'Akash ', 'Garg', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000155', 'akash2154@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000355', NULL, NULL, NULL, '3000000355', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(368, '2', '6213', '6213', '9', 'Section-B', 'Ajay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000022', 'ajay2212@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000222', NULL, NULL, 'Raju Devi', '4000000222', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(369, '2', '6155', '6155', '2', 'Section-B', 'Akshay', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000156', 'akshay2155@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000356', NULL, NULL, NULL, '3000000356', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(370, '2', '6214', '6214', '9', 'Section-A', 'Mohan', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000023', 'mohan2213@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000223', NULL, NULL, NULL, '4000000223', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(371, '2', '6156', '6156', '2', 'Section-B', 'Ajay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000157', 'ajay2156@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000357', NULL, NULL, 'Raju Devi', '3000000357', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(372, '2', '6215', '6215', '9', 'Section-A', 'Rohan', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000024', 'rohan2214@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000224', NULL, NULL, NULL, '4000000224', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(373, '2', '6216', '6216', '9', 'Section-A', 'John', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000025', 'john2215@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000225', NULL, NULL, 'Raju Devi', '4000000225', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(374, '2', '6157', '6157', '2', 'Section-B', 'Daksh', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000158', 'daksh2157@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000358', NULL, NULL, NULL, '3000000358', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(375, '2', '6217', '6217', '9', 'Section-A', 'Akash ', 'Garg', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000026', 'akash2216@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000226', NULL, NULL, NULL, '4000000226', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(376, '2', '6158', '6158', '2', 'Section-B', 'Vijay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000159', 'vijay2158@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000359', NULL, NULL, 'Raju Devi', '3000000359', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(377, '2', '6218', '6218', '9', 'Section-B', 'Akshay', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000027', 'akshay2217@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000227', NULL, NULL, NULL, '4000000227', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(378, '2', '6159', '6159', '2', 'Section-B', 'Sanjay', 'Gupta', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000160', 'sanjay2159@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000360', NULL, NULL, NULL, '3000000360', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(379, '2', '6219', '6219', '9', 'Section-B', 'Ajay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000028', 'ajay2218@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000228', NULL, NULL, 'Raju Devi', '4000000228', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(380, '2', '6160', '6160', '2', 'Section-B', 'Sumit', 'Saini', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000161', 'sumit2160@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '17', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000361', NULL, NULL, NULL, '3000000361', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(381, '2', '6220', '6220', '9', 'Section-B', 'Daksh', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000029', 'daksh2219@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000229', NULL, NULL, NULL, '4000000229', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(382, '2', '6161', '6161', '1', 'Section-A', 'Mohan', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000162', 'mohan2162@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000362', NULL, NULL, NULL, '3000000362', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(383, '2', '6221', '6221', '9', 'Section-B', 'Vijay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000030', 'vijay2220@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000230', NULL, NULL, 'Raju Devi', '4000000230', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(384, '2', '6162', '6162', '1', 'Section-A', 'Rohan', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000163', 'rohan2163@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000363', NULL, NULL, NULL, '3000000363', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(385, '2', '6222', '6222', '9', 'Section-B', 'Sanjay', 'Gupta', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000031', 'sanjay2221@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000231', NULL, NULL, NULL, '4000000231', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(386, '2', '6223', '6223', '8', 'Section-A', 'Mohan', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000032', 'mohan2222@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000232', NULL, NULL, NULL, '4000000232', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(387, '2', '6163', '6163', '1', 'Section-A', 'John', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000164', 'john2164@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000364', NULL, NULL, 'Raju Devi', '3000000364', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(388, '2', '6224', '6224', '8', 'Section-A', 'Rohan', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000033', 'rohan2223@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000233', NULL, NULL, NULL, '4000000233', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(389, '2', '6225', '6225', '8', 'Section-A', 'John', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000034', 'john2224@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000234', NULL, NULL, 'Raju Devi', '4000000234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(390, '2', '6226', '6226', '8', 'Section-A', 'Akash ', 'Garg', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000035', 'akash2225@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000235', NULL, NULL, NULL, '4000000235', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(391, '2', '6164', '6164', '1', 'Section-A', 'Akash ', 'Garg', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000165', 'akash2165@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000365', NULL, NULL, NULL, '3000000365', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(392, '2', '6165', '6165', '1', 'Section-A', 'Akshay', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000166', 'akshay2166@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000366', NULL, NULL, NULL, '3000000366', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(393, '2', '6227', '6227', '8', 'Section-A', 'Akshay', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000036', 'akshay2226@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000236', NULL, NULL, NULL, '4000000236', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(394, '2', '6166', '6166', '1', 'Section-A', 'Ajay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000167', 'ajay2166@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000367', NULL, NULL, 'Raju Devi', '3000000367', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(395, '2', '6228', '6228', '8', 'Section-B', 'Ajay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000037', 'ajay2227@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000237', NULL, NULL, 'Raju Devi', '4000000237', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(396, '2', '6167', '6167', '1', 'Section-A', 'Daksh', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000168', 'daksh2167@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000368', NULL, NULL, NULL, '3000000368', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(397, '2', '6229', '6229', '8', 'Section-B', 'Daksh', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000038', 'daksh2228@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000238', NULL, NULL, NULL, '4000000238', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(398, '2', '6168', '6168', '1', 'Section-A', 'Vijay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000169', 'vijay2168@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000369', NULL, NULL, 'Raju Devi', '3000000369', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(399, '2', '6230', '6230', '8', 'Section-B', 'Vijay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000039', 'vijay2229@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000239', NULL, NULL, 'Raju Devi', '4000000239', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(400, '2', '6169', '6169', '1', 'Section-A', 'Sanjay', 'Gupta', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000170', 'sanjay2169@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000370', NULL, NULL, NULL, '3000000370', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(401, '2', '6231', '6231', '8', 'Section-B', 'Sanjay', 'Gupta', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000040', 'sanjay2230@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000240', NULL, NULL, NULL, '4000000240', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33');
INSERT INTO `student_admission` (`id`, `user_id`, `admission_no`, `roll_no`, `class`, `section`, `first_name`, `last_name`, `gender`, `dob`, `category`, `religion`, `caste`, `mobile_no`, `email`, `password`, `conform_password`, `admission_date`, `student_image`, `blood_group`, `stu_house`, `height`, `weight`, `as_on_date`, `father_name`, `father_mobile`, `father_accu`, `father_photo`, `mother_name`, `mother_phone`, `mother_occu`, `mother_photo`, `guardian`, `gur_name`, `gur_relation`, `gur_email`, `gur_photo`, `gur_phone`, `gur_occu`, `gur_address`, `bank_no`, `bank_name`, `ifsc`, `nin_no`, `lin_no`, `rte`, `pre_school`, `notes`, `balance`, `current_result`, `session_status`, `session`, `status`, `active_status`, `created_at`, `updated_at`) VALUES
(402, '2', '6170', '6170', '1', 'Section-A', 'Sumit', 'Saini', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000171', 'sumit2170@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '17', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000371', NULL, NULL, NULL, '3000000371', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(403, '2', '6232', '6232', '8', 'Section-B', 'Sumit', 'Saini', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000041', 'sumit2231@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '17', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000241', NULL, NULL, NULL, '4000000241', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(404, '2', '6171', '6171', '1', 'Section-A', 'Mohan', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000172', 'mohan2171@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000372', NULL, NULL, NULL, '3000000372', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(405, '2', '6233', '6233', '7', 'Section-A', 'Mohan', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000042', 'mohan2232@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000242', NULL, NULL, NULL, '4000000242', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(406, '2', '6172', '6172', '1', 'Section-A', 'Rohan', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000173', 'rohan2172@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000373', NULL, NULL, NULL, '3000000373', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(407, '2', '6234', '6234', '7', 'Section-A', 'Rohan', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000043', 'rohan2233@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000243', NULL, NULL, NULL, '4000000243', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(408, '2', '6173', '6173', '1', 'Section-A', 'John', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000174', 'john2173@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000374', NULL, NULL, 'Raju Devi', '3000000374', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(409, '2', '6235', '6235', '7', 'Section-A', 'John', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000044', 'john2234@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000244', NULL, NULL, 'Raju Devi', '4000000244', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(410, '2', '6174', '6174', '1', 'Section-A', 'Akash ', 'Garg', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000175', 'akash2174@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000375', NULL, NULL, NULL, '3000000375', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(411, '2', '6236', '6236', '7', 'Section-A', 'Akash ', 'Garg', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000045', 'akash2235@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000245', NULL, NULL, NULL, '4000000245', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(412, '2', '6175', '6175', '1', 'Section-A', 'Akshay', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000176', 'akshay2175@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000376', NULL, NULL, NULL, '3000000376', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(413, '2', '6237', '6237', '7', 'Section-A', 'Akshay', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000046', 'akshay2236@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000246', NULL, NULL, NULL, '4000000246', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(414, '2', '6176', '6176', '1', 'Section-B', 'Ajay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000177', 'ajay2176@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000173', NULL, NULL, 'Raju Devi', '3000000173', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(415, '2', '6238', '6238', '7', 'Section-B', 'Ajay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000047', 'ajay2237@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000247', NULL, NULL, 'Raju Devi', '4000000247', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(416, '2', '6177', '6177', '1', 'Section-B', 'Daksh', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000178', 'daksh2177@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000378', NULL, NULL, NULL, '3000000378', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(417, '2', '6179', '6179', '1', 'Section-B', 'Vijay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000179', 'vijay2178@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000379', NULL, NULL, 'Raju Devi', '3000000379', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(418, '2', '6239', '6239', '7', 'Section-B', 'Daksh', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000048', 'daksh2238@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000248', NULL, NULL, NULL, '4000000248', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(419, '2', '6180', '6180', '1', 'Section-B', 'Sanjay', 'Gupta', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000180', 'sanjay2179@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000380', NULL, NULL, NULL, '3000000380', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(420, '2', '6240', '6240', '7', 'Section-B', 'Vijay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000049', 'vijay2239@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000249', NULL, NULL, 'Raju Devi', '4000000249', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(421, '2', '6181', '6181', '1', 'Section-B', 'Sumit', 'Saini', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000181', 'sumit2180@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '17', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000381', NULL, NULL, NULL, '3000000381', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(422, '2', '6241', '6241', '7', 'Section-B', 'Sanjay', 'Gupta', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000050', 'sanjay2240@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000250', NULL, NULL, NULL, '4000000250', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(423, '2', '6182', '6182', '1', 'Section-B', 'Mohan', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000182', 'mohan2181@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000382', NULL, NULL, NULL, '3000000382', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(424, '2', '6242', '6242', '7', 'Section-B', 'Sumit', 'Saini', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000051', 'sumit2241@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '17', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000251', NULL, NULL, NULL, '4000000251', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(425, '2', '6183', '6183', '1', 'Section-B', 'Rohan', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000183', 'rohan2182@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000383', NULL, NULL, NULL, '3000000383', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(426, '2', '6243', '6243', '6', 'Section-A', 'Mohan', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000052', 'mohan2242@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000252', NULL, NULL, NULL, '4000000252', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(427, '2', '6184', '6184', '1', 'Section-B', 'John', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000184', 'john2183@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000384', NULL, NULL, 'Raju Devi', '3000000384', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(428, '2', '6244', '6244', '6', 'Section-A', 'Rohan', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000053', 'rohan2243@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000253', NULL, NULL, NULL, '4000000253', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(429, '2', '6185', '6185', '1', 'Section-B', 'Akash ', 'Garg', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000185', 'akash2184@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000385', NULL, NULL, NULL, '3000000385', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(430, '2', '6245', '6245', '6', 'Section-A', 'John', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000054', 'john2244@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000254', NULL, NULL, 'Raju Devi', '4000000254', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(431, '2', '6246', '6246', '6', 'Section-A', 'Akash ', 'Garg', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000055', 'akash2245@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000255', NULL, NULL, NULL, '4000000255', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(432, '2', '6186', '6186', '1', 'Section-B', 'Akshay', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000186', 'akshay2185@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000386', NULL, NULL, NULL, '3000000386', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(433, '2', '6247', '6247', '6', 'Section-A', 'Akshay', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000056', 'akshay2246@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000256', NULL, NULL, NULL, '4000000256', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:33', '2023-09-04 11:08:33'),
(434, '2', '6187', '6187', '1', 'Section-B', 'Ajay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '6000000187', 'ajay2186@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000387', NULL, NULL, 'Raju Devi', '3000000387', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(435, '2', '6248', '6248', '6', 'Section-B', 'Ajay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000057', 'ajay2247@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000257', NULL, NULL, 'Raju Devi', '4000000257', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(436, '2', '6188', '6188', '1', 'Section-B', 'Daksh', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000188', 'daksh2187@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000388', NULL, NULL, NULL, '3000000388', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(437, '2', '6249', '6249', '6', 'Section-B', 'Daksh', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000058', 'daksh2248@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000258', NULL, NULL, NULL, '4000000258', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(438, '2', '6189', '6189', '1', 'Section-B', 'Vijay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000189', 'vijay2188@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000389', NULL, NULL, 'Raju Devi', '3000000389', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(439, '2', '6250', '6250', '6', 'Section-B', 'Vijay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000059', 'vijay2249@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000259', NULL, NULL, 'Raju Devi', '4000000259', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(440, '2', '6190', '6190', '1', 'Section-B', 'Sanjay', 'Gupta', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000190', 'sanjay2189@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000390', NULL, NULL, NULL, '3000000390', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(441, '2', '6191', '6191', '1', 'Section-B', 'Sumit', 'Saini', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '6000000191', 'sumit2190@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '17', NULL, '65', '2023-06-07', 'Rajaram sharma', '8000000391', NULL, NULL, NULL, '3000000391', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(442, '2', '6251', '6251', '6', 'Section-B', 'Sanjay', 'Gupta', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000060', 'sanjay2250@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000260', NULL, NULL, NULL, '4000000260', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(443, '2', '6192', '6192', '10', 'Section-A', 'Manish', 'Sharma', 'Male', '2000-05-25', 'Student', 'Hindu', 'obc', '7100000001', 'manishsharma2191@gmail.com', NULL, NULL, '2023-05-27', NULL, NULL, '12', '5.3', '65', '2023-05-26', 'Mr. ramswroop', '9000000201', 'In words, the control occupation of a person depicts the work that he truly does to make a kind of revenue for him and his family as his loved ones.', NULL, 'pinki', '4000000201', 'mother \'s occupation will allude to the work, work or business done by the person\'s mother to get by.', NULL, NULL, 'ramswaroop', 'father', 'ramswaroop@gmail.com', NULL, '9982593754', 'In the field of English Sentence structure, the term \'occupation\' can be depicted as a job, work or calling of a person.', 'chomu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(444, '2', '6252', '6252', '6', 'Section-B', 'Sumit', 'Saini', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000061', 'sumit2251@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '17', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000261', NULL, NULL, NULL, '4000000261', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(445, '2', '6193', '6193', '8', 'Section-A', 'Manish', 'Sharma', 'Male', '2000-05-25', 'Student', 'Hindu', 'obc', '7000000002', 'manishsharma2192@gmail.com', NULL, NULL, '2023-05-27', NULL, NULL, '12', '5.3', '65', '2023-05-26', 'Mr. ramswroop', '9000000202', 'In words, the control occupation of a person depicts the work that he truly does to make a kind of revenue for him and his family as his loved ones.', NULL, 'pinki', '4000000202', 'mother \'s occupation will allude to the work, work or business done by the person\'s mother to get by.', NULL, NULL, 'ramswaroop', 'father', 'ramswaroop@gmail.com', NULL, '9982593754', 'In the field of English Sentence structure, the term \'occupation\' can be depicted as a job, work or calling of a person.', 'chomu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(446, '2', '6253', '6253', '5', 'Section-A', 'Mohan', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000062', 'mohan2252@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000262', NULL, NULL, NULL, '4000000262', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(447, '2', '6254', '6254', '5', 'Section-A', 'Rohan', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000063', 'rohan2253@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000263', NULL, NULL, NULL, '4000000263', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(448, '2', '6194', '6194', '4', 'Section-A', 'Abhi', 'kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000003', 'abhi2193@gmail.com', NULL, NULL, '2023-05-20', NULL, NULL, '15', '5.5', '70', '2023-05-03', 'Mr.Ramesh', '9000000203', NULL, NULL, 'Shikha', '4000000203', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(449, '2', '6195', '6195', '10', 'Section-B', 'Dinesh', 'yadav', 'Male', '1995-05-26', 'Student', 'Hindu', 'obc', '7000000004', 'dineshyadav2194@gmail.com', NULL, NULL, '2023-05-04', NULL, NULL, '12', '5.5', '65', '2023-05-21', 'Mr.Umesh', '9000000204', NULL, NULL, 'Raju Devi', '4000000204', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(450, '2', '6255', '6255', '5', 'Section-A', 'John', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000064', 'john2254@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000264', NULL, NULL, 'Raju Devi', '4000000264', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(451, '2', '6196', '6196', '6', 'Section-A', 'Abhishek', 'kumawat', 'Male', '1999-05-04', 'Student', 'Hindu', 'obc', '7000000005', 'abhishek1kumawat2195@gmail.com', NULL, NULL, '2000-03-31', NULL, NULL, '12', '5.3', '80', '1999-06-09', 'Mr. ramswroop', '9000000205', NULL, NULL, NULL, '4000000205', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(452, '2', '6256', '6256', '5', 'Section-A', 'Akash ', 'Garg', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000065', 'akash2255@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000265', NULL, NULL, NULL, '4000000265', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(453, '2', '6197', '6197', '5', 'Section-A', 'Ajay', 'Sharma', 'Male', '2000-05-25', 'Student', 'Hindu', 'obc', '7000000006', 'manishsharma2196@gmail.com', NULL, NULL, '2023-05-27', NULL, NULL, '12', '5.3', '65', '2023-05-26', 'Mr. ramswroop', '9000000206', 'In words, the control occupation of a person depicts the work that he truly does to make a kind of revenue for him and his family as his loved ones.', NULL, 'pinki', '4000000206', 'mother \'s occupation will allude to the work, work or business done by the person\'s mother to get by.', NULL, NULL, 'ramswaroop', 'father', 'ramswaroop@gmail.com', NULL, '9982593754', 'In the field of English Sentence structure, the term \'occupation\' can be depicted as a job, work or calling of a person.', 'chomu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(454, '2', '6257', '6257', '5', 'Section-A', 'Akshay', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000066', 'akshay2256@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000266', NULL, NULL, NULL, '4000000266', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(455, '2', '6258', '6258', '5', 'Section-B', 'Ajay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000067', 'ajay2257@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000267', NULL, NULL, 'Raju Devi', '4000000267', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(456, '2', '6198', '6198', '10', 'Section-A', 'umesh', 'kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000007', 'abhi2197@gmail.com', NULL, NULL, '2023-05-20', NULL, NULL, '15', '5.5', '70', '2023-05-03', 'Mr.Ramesh', '9000000207', NULL, NULL, 'Shikha', '4000000207', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(457, '2', '6259', '6259', '5', 'Section-B', 'Daksh', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000068', 'daksh2258@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000268', NULL, NULL, NULL, '4000000268', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(458, '2', '6199', '6199', '8', 'Section-B', 'neha', 'yadav', 'Male', '1995-05-26', 'Student', 'Hindu', 'obc', '7000000008', 'dineshyadav2198@gmail.com', NULL, NULL, '2023-05-04', NULL, NULL, '12', '5.5', '65', '2023-05-21', 'Mr.Umesh', '9000000208', NULL, NULL, 'Raju Devi', '4000000208', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(459, '2', '6260', '6260', '5', 'Section-B', 'Vijay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000069', 'vijay2259@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000269', NULL, NULL, 'Raju Devi', '4000000269', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(460, '2', '6200', '6200', '7', 'Section-A', 'gajal', 'kumawat', 'Male', '1999-05-04', 'Student', 'Hindu', 'obc', '7000000009', 'abhishek1kumawat2199@gmail.com', NULL, NULL, '2000-03-31', NULL, NULL, '12', '5.3', '80', '1999-06-09', 'Mr. ramswroop', '9000000209', NULL, NULL, NULL, '4000000209', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(461, '2', '6261', '6261', '5', 'Section-B', 'Sanjay', 'Gupta', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000070', 'sanjay2260@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000270', NULL, NULL, NULL, '4000000270', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(462, '2', '6201', '6201', '9', 'Section-A', 'Ritika', 'sharma', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000010', 'ankitsharma2200@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '15', '5.3', '65', '2023-06-07', 'Rajaram sharma', '9000000210', 'In words, the control occupation of a person depicts the work that he truly does to make a kind of revenue for him and his family as his loved ones.', NULL, 'Raju Devi', '4000000210', 'mother \'s occupation will allude to the work, work or business done by the person\'s mother to get by.', NULL, NULL, 'rajaram sharma', 'father', 'rajaram@gmail.com', NULL, '9982593059', 'In the field of English Sentence structure, the term \'occupation\' can be depicted as a job, work or calling of a person.', 'chomu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(463, '2', '6262', '6262', '5', 'Section-B', 'Sumit', 'Saini', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000071', 'sumit2261@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '17', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000271', NULL, NULL, NULL, '4000000271', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(464, '2', '6202', '6202', '10', 'Section-B', 'sonu', 'kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7100000011', 'sonukumawat2201@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '17', NULL, '80', '1999-06-09', 'Mr. ramswroop', '9000000211', NULL, NULL, NULL, '4000000211', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(465, '2', '6263', '6263', '4', 'Section-A', 'Mohan', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000072', 'mohan2262@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000272', NULL, NULL, NULL, '4000000272', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(466, '2', '6203', '6203', '10', 'Section-A', 'Monu', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000012', 'monu2202@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000212', NULL, NULL, NULL, '4000000212', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(467, '2', '6264', '6264', '4', 'Section-A', 'Rohan', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000073', 'rohan2263@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000273', NULL, NULL, NULL, '4000000273', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(468, '2', '6204', '6204', '10', 'Section-B', 'Ronu', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000013', 'ronu2203@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000213', NULL, NULL, NULL, '4000000213', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(469, '2', '6265', '6265', '4', 'Section-A', 'John', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000074', 'john2264@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000274', NULL, NULL, 'Raju Devi', '4000000274', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(470, '2', '6266', '6266', '4', 'Section-A', 'Akash ', 'Garg', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000075', 'akash2265@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000275', NULL, NULL, NULL, '4000000275', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(471, '2', '6205', '6205', '10', 'Section-B', 'Jonu', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000014', 'jonu2204@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000214', NULL, NULL, 'Raju Devi', '4000000214', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(472, '2', '6267', '6267', '4', 'Section-A', 'Akshay', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000076', 'akshay2266@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000276', NULL, NULL, NULL, '4000000276', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(473, '2', '6206', '6206', '10', 'Section-A', 'Akshay', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000015', 'akshay2205@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000215', NULL, NULL, NULL, '4000000215', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(474, '2', '6268', '6268', '4', 'Section-A', 'Ajay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000077', 'ajay2267@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000277', NULL, NULL, 'Raju Devi', '4000000277', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(475, '2', '6207', '6207', '10', 'Section-B', 'Ajay', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000016', 'ajay2206@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000216', NULL, NULL, 'Raju Devi', '4000000216', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(476, '2', '6269', '6269', '4', 'Section-A', 'Daksh', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000078', 'daksh2268@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000278', NULL, NULL, NULL, '4000000278', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(477, '2', '6208', '6208', '9', 'Section-A', 'Sohan', 'kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000017', 'sohan2207@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '17', NULL, '80', '1999-06-09', 'Mr. ramswroop', '9000000217', NULL, NULL, NULL, '4000000217', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(478, '2', '6270', '6270', '4', 'Section-A', 'Vijay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000079', 'vijay2269@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000279', NULL, NULL, 'Raju Devi', '4000000279', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(479, '2', '6209', '6209', '9', 'Section-A', 'Mohan', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000018', 'mohan2208@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000218', NULL, NULL, NULL, '4000000218', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(480, '2', '6271', '6271', '4', 'Section-A', 'Sanjay', 'Gupta', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000080', 'sanjay2270@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000280', NULL, NULL, NULL, '4000000280', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(481, '2', '6210', '6210', '9', 'Section-A', 'Rohan', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000019', 'rohan2209@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000219', NULL, NULL, NULL, '4000000219', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(482, '2', '6272', '6272', '4', 'Section-A', 'Sumit', 'Saini', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000081', 'sumit2271@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '17', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000281', NULL, NULL, NULL, '4000000281', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(483, '2', '6211', '6211', '9', 'Section-A', 'John', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000020', 'john2210@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000220', NULL, NULL, 'Raju Devi', '4000000220', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(484, '2', '6273', '6273', '4', 'Section-A', 'Mohan', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000082', 'mohan2272@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000282', NULL, NULL, NULL, '4000000282', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(485, '2', '6212', '6212', '9', 'Section-B', 'Akshay', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000021', 'akshay2211@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000221', NULL, NULL, NULL, '4000000221', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(486, '2', '6274', '6274', '4', 'Section-A', 'Rohan', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000083', 'rohan2273@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000283', NULL, NULL, NULL, '4000000283', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(487, '2', '6213', '6213', '9', 'Section-B', 'Ajay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000022', 'ajay2212@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000222', NULL, NULL, 'Raju Devi', '4000000222', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(488, '2', '6275', '6275', '4', 'Section-A', 'John', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000084', 'john2274@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000284', NULL, NULL, 'Raju Devi', '4000000284', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(489, '2', '6214', '6214', '9', 'Section-A', 'Mohan', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000023', 'mohan2213@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000223', NULL, NULL, NULL, '4000000223', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(490, '2', '6276', '6276', '4', 'Section-A', 'Akash ', 'Garg', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000085', 'akash2275@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000285', NULL, NULL, NULL, '4000000285', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(491, '2', '6215', '6215', '9', 'Section-A', 'Rohan', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000024', 'rohan2214@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000224', NULL, NULL, NULL, '4000000224', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(492, '2', '6277', '6277', '4', 'Section-A', 'Akshay', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000086', 'akshay2276@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000286', NULL, NULL, NULL, '4000000286', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(493, '2', '6216', '6216', '9', 'Section-A', 'John', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000025', 'john2215@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000225', NULL, NULL, 'Raju Devi', '4000000225', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(494, '2', '6278', '6278', '4', 'Section-B', 'Ajay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000087', 'ajay2277@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000287', NULL, NULL, 'Raju Devi', '4000000287', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(495, '2', '6217', '6217', '9', 'Section-A', 'Akash ', 'Garg', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000026', 'akash2216@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000226', NULL, NULL, NULL, '4000000226', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(496, '2', '6279', '6279', '4', 'Section-B', 'Daksh', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000088', 'daksh2278@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000288', NULL, NULL, NULL, '4000000288', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(497, '2', '6218', '6218', '9', 'Section-B', 'Akshay', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000027', 'akshay2217@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000227', NULL, NULL, NULL, '4000000227', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(498, '2', '6280', '6280', '4', 'Section-B', 'Vijay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000089', 'vijay2279@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000289', NULL, NULL, 'Raju Devi', '4000000289', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(499, '2', '6219', '6219', '9', 'Section-B', 'Ajay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000028', 'ajay2218@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000228', NULL, NULL, 'Raju Devi', '4000000228', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(500, '2', '6281', '6281', '4', 'Section-B', 'Sanjay', 'Gupta', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000090', 'sanjay2280@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000290', NULL, NULL, NULL, '4000000290', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34');
INSERT INTO `student_admission` (`id`, `user_id`, `admission_no`, `roll_no`, `class`, `section`, `first_name`, `last_name`, `gender`, `dob`, `category`, `religion`, `caste`, `mobile_no`, `email`, `password`, `conform_password`, `admission_date`, `student_image`, `blood_group`, `stu_house`, `height`, `weight`, `as_on_date`, `father_name`, `father_mobile`, `father_accu`, `father_photo`, `mother_name`, `mother_phone`, `mother_occu`, `mother_photo`, `guardian`, `gur_name`, `gur_relation`, `gur_email`, `gur_photo`, `gur_phone`, `gur_occu`, `gur_address`, `bank_no`, `bank_name`, `ifsc`, `nin_no`, `lin_no`, `rte`, `pre_school`, `notes`, `balance`, `current_result`, `session_status`, `session`, `status`, `active_status`, `created_at`, `updated_at`) VALUES
(501, '2', '6220', '6220', '9', 'Section-B', 'Daksh', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000029', 'daksh2219@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000229', NULL, NULL, NULL, '4000000229', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(502, '2', '6282', '6282', '4', 'Section-B', 'Sumit', 'Saini', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000091', 'sumit2281@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '17', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000291', NULL, NULL, NULL, '4000000291', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(503, '2', '6221', '6221', '9', 'Section-B', 'Vijay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000030', 'vijay2220@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000230', NULL, NULL, 'Raju Devi', '4000000230', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(504, '2', '6283', '6283', '4', 'Section-A', 'Mohan', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000092', 'mohan2282@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000292', NULL, NULL, NULL, '4000000292', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(505, '2', '6222', '6222', '9', 'Section-B', 'Sanjay', 'Gupta', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000031', 'sanjay2221@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000231', NULL, NULL, NULL, '4000000231', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(506, '2', '6284', '6284', '4', 'Section-A', 'Rohan', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000093', 'rohan2283@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000293', NULL, NULL, NULL, '4000000293', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(507, '2', '6223', '6223', '8', 'Section-A', 'Mohan', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000032', 'mohan2222@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000232', NULL, NULL, NULL, '4000000232', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(508, '2', '6285', '6285', '4', 'Section-A', 'John', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000094', 'john2284@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000294', NULL, NULL, 'Raju Devi', '4000000294', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(509, '2', '6224', '6224', '8', 'Section-A', 'Rohan', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000033', 'rohan2223@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000233', NULL, NULL, NULL, '4000000233', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(510, '2', '6286', '6286', '4', 'Section-A', 'Akash ', 'Garg', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000095', 'akash2285@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000295', NULL, NULL, NULL, '4000000295', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(511, '2', '6225', '6225', '8', 'Section-A', 'John', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000034', 'john2224@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000234', NULL, NULL, 'Raju Devi', '4000000234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(512, '2', '6287', '6287', '4', 'Section-A', 'Akshay', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000096', 'akshay2286@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000296', NULL, NULL, NULL, '4000000296', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(513, '2', '6226', '6226', '8', 'Section-A', 'Akash ', 'Garg', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000035', 'akash2225@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000235', NULL, NULL, NULL, '4000000235', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(514, '2', '6288', '6288', '4', 'Section-B', 'Ajay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000097', 'ajay2287@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000297', NULL, NULL, 'Raju Devi', '4000000297', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(515, '2', '6289', '6289', '4', 'Section-B', 'Daksh', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000098', 'daksh2288@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000298', NULL, NULL, NULL, '4000000298', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(516, '2', '6227', '6227', '8', 'Section-A', 'Akshay', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000036', 'akshay2226@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000236', NULL, NULL, NULL, '4000000236', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(517, '2', '6290', '6290', '4', 'Section-B', 'Vijay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000099', 'vijay2289@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000299', NULL, NULL, 'Raju Devi', '4000000299', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(518, '2', '6228', '6228', '8', 'Section-B', 'Ajay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000037', 'ajay2227@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000237', NULL, NULL, 'Raju Devi', '4000000237', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(519, '2', '6291', '6291', '4', 'Section-B', 'Sanjay', 'Gupta', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000100', 'sanjay2290@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000300', NULL, NULL, NULL, '4000000300', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(520, '2', '6229', '6229', '8', 'Section-B', 'Daksh', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000038', 'daksh2228@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000238', NULL, NULL, NULL, '4000000238', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(521, '2', '6292', '6292', '4', 'Section-B', 'Sumit', 'Saini', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000101', 'sumit2291@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '17', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000301', NULL, NULL, NULL, '4000000301', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(522, '2', '6230', '6230', '8', 'Section-B', 'Vijay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000039', 'vijay2229@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000239', NULL, NULL, 'Raju Devi', '4000000239', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(523, '2', '6293', '6293', '3', 'Section-A', 'Mohan', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000102', 'mohan2292@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000302', NULL, NULL, NULL, '4000000302', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(524, '2', '6231', '6231', '8', 'Section-B', 'Sanjay', 'Gupta', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000040', 'sanjay2230@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000240', NULL, NULL, NULL, '4000000240', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(525, '2', '6294', '6294', '3', 'Section-A', 'Rohan', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000103', 'rohan2293@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000303', NULL, NULL, NULL, '4000000303', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(526, '2', '6232', '6232', '8', 'Section-B', 'Sumit', 'Saini', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000041', 'sumit2231@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '17', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000241', NULL, NULL, NULL, '4000000241', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(527, '2', '6295', '6295', '3', 'Section-A', 'John', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000104', 'john2294@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000304', NULL, NULL, 'Raju Devi', '4000000304', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(528, '2', '6233', '6233', '7', 'Section-A', 'Mohan', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000042', 'mohan2232@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000242', NULL, NULL, NULL, '4000000242', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(529, '2', '6296', '6296', '3', 'Section-A', 'Akash ', 'Garg', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000105', 'akash2295@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000305', NULL, NULL, NULL, '4000000305', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(530, '2', '6297', '6297', '3', 'Section-A', 'Akshay', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000106', 'akshay2296@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000306', NULL, NULL, NULL, '4000000306', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(531, '2', '6234', '6234', '7', 'Section-A', 'Rohan', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000043', 'rohan2233@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000243', NULL, NULL, NULL, '4000000243', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(532, '2', '6298', '6298', '3', 'Section-A', 'Ajay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000107', 'ajay2297@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000307', NULL, NULL, 'Raju Devi', '4000000307', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(533, '2', '6235', '6235', '7', 'Section-A', 'John', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000044', 'john2234@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000244', NULL, NULL, 'Raju Devi', '4000000244', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(534, '2', '6299', '6299', '3', 'Section-A', 'Daksh', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000108', 'daksh2298@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000308', NULL, NULL, NULL, '4000000308', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(535, '2', '6236', '6236', '7', 'Section-A', 'Akash ', 'Garg', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000045', 'akash2235@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000245', NULL, NULL, NULL, '4000000245', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(536, '2', '6300', '6300', '3', 'Section-A', 'Vijay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000109', 'vijay2299@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000309', NULL, NULL, 'Raju Devi', '4000000309', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(537, '2', '6237', '6237', '7', 'Section-A', 'Akshay', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000046', 'akshay2236@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000246', NULL, NULL, NULL, '4000000246', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(538, '2', '6301', '6301', '3', 'Section-A', 'Sanjay', 'Gupta', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000110', 'sanjay2300@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000310', NULL, NULL, NULL, '4000000310', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(539, '2', '6238', '6238', '7', 'Section-B', 'Ajay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000047', 'ajay2237@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000247', NULL, NULL, 'Raju Devi', '4000000247', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(540, '2', '6302', '6302', '3', 'Section-A', 'Sumit', 'Saini', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7100000111', 'sumit2301@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '17', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000311', NULL, NULL, NULL, '4000000311', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(541, '2', '6239', '6239', '7', 'Section-B', 'Daksh', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000048', 'daksh2238@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000248', NULL, NULL, NULL, '4000000248', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(542, '2', '6303', '6303', '3', 'Section-A', 'Mohan', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000112', 'mohan2302@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000312', NULL, NULL, NULL, '4000000312', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(543, '2', '6240', '6240', '7', 'Section-B', 'Vijay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000049', 'vijay2239@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000249', NULL, NULL, 'Raju Devi', '4000000249', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(544, '2', '6304', '6304', '3', 'Section-A', 'Rohan', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000113', 'rohan2303@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000313', NULL, NULL, NULL, '4000000313', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(545, '2', '6241', '6241', '7', 'Section-B', 'Sanjay', 'Gupta', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000050', 'sanjay2240@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000250', NULL, NULL, NULL, '4000000250', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(546, '2', '6305', '6305', '3', 'Section-A', 'John', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000114', 'john2304@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000314', NULL, NULL, 'Raju Devi', '4000000314', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(547, '2', '6242', '6242', '7', 'Section-B', 'Sumit', 'Saini', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000051', 'sumit2241@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '17', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000251', NULL, NULL, NULL, '4000000251', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(548, '2', '6306', '6306', '3', 'Section-A', 'Akash ', 'Garg', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000115', 'akash2305@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000315', NULL, NULL, NULL, '4000000315', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(549, '2', '6243', '6243', '6', 'Section-A', 'Mohan', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000052', 'mohan2242@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000252', NULL, NULL, NULL, '4000000252', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(550, '2', '6307', '6307', '3', 'Section-A', 'Akshay', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000116', 'akshay2306@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000316', NULL, NULL, NULL, '4000000316', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(551, '2', '6244', '6244', '6', 'Section-A', 'Rohan', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000053', 'rohan2243@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000253', NULL, NULL, NULL, '4000000253', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(552, '2', '6308', '6308', '3', 'Section-B', 'Ajay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000117', 'ajay2307@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000317', NULL, NULL, 'Raju Devi', '4000000317', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(553, '2', '6245', '6245', '6', 'Section-A', 'John', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000054', 'john2244@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000254', NULL, NULL, 'Raju Devi', '4000000254', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(554, '2', '6309', '6309', '3', 'Section-B', 'Daksh', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000118', 'daksh2308@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000318', NULL, NULL, NULL, '4000000318', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(555, '2', '6310', '6310', '3', 'Section-B', 'Vijay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000119', 'vijay2309@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000319', NULL, NULL, 'Raju Devi', '4000000319', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(556, '2', '6246', '6246', '6', 'Section-A', 'Akash ', 'Garg', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000055', 'akash2245@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000255', NULL, NULL, NULL, '4000000255', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(557, '2', '6311', '6311', '3', 'Section-B', 'Sanjay', 'Gupta', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000120', 'sanjay2310@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000320', NULL, NULL, NULL, '4000000320', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(558, '2', '6247', '6247', '6', 'Section-A', 'Akshay', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000056', 'akshay2246@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000256', NULL, NULL, NULL, '4000000256', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(559, '2', '6312', '6312', '3', 'Section-B', 'Sumit', 'Saini', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000121', 'sumit2311@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '17', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000321', NULL, NULL, NULL, '4000000321', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(560, '2', '6248', '6248', '6', 'Section-B', 'Ajay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000057', 'ajay2247@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000257', NULL, NULL, 'Raju Devi', '4000000257', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(561, '2', '6313', '6313', '3', 'Section-A', 'Mohan', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000122', 'mohan2312@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000322', NULL, NULL, NULL, '4000000322', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(562, '2', '6249', '6249', '6', 'Section-B', 'Daksh', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000058', 'daksh2248@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000258', NULL, NULL, NULL, '4000000258', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(563, '2', '6314', '6314', '3', 'Section-A', 'Rohan', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000123', 'rohan2313@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000323', NULL, NULL, NULL, '4000000323', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(564, '2', '6250', '6250', '6', 'Section-B', 'Vijay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000059', 'vijay2249@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000259', NULL, NULL, 'Raju Devi', '4000000259', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(565, '2', '6315', '6315', '3', 'Section-A', 'John', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000124', 'john2314@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000324', NULL, NULL, 'Raju Devi', '4000000324', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(566, '2', '6251', '6251', '6', 'Section-B', 'Sanjay', 'Gupta', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000060', 'sanjay2250@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000260', NULL, NULL, NULL, '4000000260', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(567, '2', '6316', '6316', '3', 'Section-A', 'Akash ', 'Garg', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000125', 'akash2315@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000325', NULL, NULL, NULL, '4000000325', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(568, '2', '6252', '6252', '6', 'Section-B', 'Sumit', 'Saini', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000061', 'sumit2251@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '17', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000261', NULL, NULL, NULL, '4000000261', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(569, '2', '6317', '6317', '3', 'Section-A', 'Akshay', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000126', 'akshay2316@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000326', NULL, NULL, NULL, '4000000326', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(570, '2', '6253', '6253', '5', 'Section-A', 'Mohan', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000062', 'mohan2252@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000262', NULL, NULL, NULL, '4000000262', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(571, '2', '6318', '6318', '3', 'Section-B', 'Ajay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000127', 'ajay2317@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000327', NULL, NULL, 'Raju Devi', '4000000327', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(572, '2', '6254', '6254', '5', 'Section-A', 'Rohan', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000063', 'rohan2253@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000263', NULL, NULL, NULL, '4000000263', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(573, '2', '6319', '6319', '3', 'Section-B', 'Daksh', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000128', 'daksh2318@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000328', NULL, NULL, NULL, '4000000328', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(574, '2', '6255', '6255', '5', 'Section-A', 'John', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000064', 'john2254@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000264', NULL, NULL, 'Raju Devi', '4000000264', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(575, '2', '6320', '6320', '3', 'Section-B', 'Vijay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000129', 'vijay2319@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000329', NULL, NULL, 'Raju Devi', '4000000329', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(576, '2', '6256', '6256', '5', 'Section-A', 'Akash ', 'Garg', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000065', 'akash2255@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000265', NULL, NULL, NULL, '4000000265', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(577, '2', '6321', '6321', '3', 'Section-B', 'Sanjay', 'Gupta', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000130', 'sanjay2320@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000330', NULL, NULL, NULL, '4000000330', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(578, '2', '6257', '6257', '5', 'Section-A', 'Akshay', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000066', 'akshay2256@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000266', NULL, NULL, NULL, '4000000266', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(579, '2', '6258', '6258', '5', 'Section-B', 'Ajay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000067', 'ajay2257@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000267', NULL, NULL, 'Raju Devi', '4000000267', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(580, '2', '6322', '6322', '3', 'Section-B', 'Sumit', 'Saini', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000131', 'sumit2321@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '17', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000331', NULL, NULL, NULL, '4000000331', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(581, '2', '6323', '6323', '2', 'Section-A', 'Mohan', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000132', 'mohan2322@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000332', NULL, NULL, NULL, '4000000332', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:34', '2023-09-04 11:08:34'),
(582, '2', '6259', '6259', '5', 'Section-B', 'Daksh', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000068', 'daksh2258@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000268', NULL, NULL, NULL, '4000000268', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(583, '2', '6324', '6324', '2', 'Section-A', 'Rohan', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000133', 'rohan2323@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000333', NULL, NULL, NULL, '4000000333', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(584, '2', '6260', '6260', '5', 'Section-B', 'Vijay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000069', 'vijay2259@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000269', NULL, NULL, 'Raju Devi', '4000000269', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(585, '2', '6325', '6325', '2', 'Section-A', 'John', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000134', 'john2324@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000334', NULL, NULL, 'Raju Devi', '4000000334', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(586, '2', '6261', '6261', '5', 'Section-B', 'Sanjay', 'Gupta', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000070', 'sanjay2260@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000270', NULL, NULL, NULL, '4000000270', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(587, '2', '6326', '6326', '2', 'Section-A', 'Akash ', 'Garg', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000135', 'akash2325@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000335', NULL, NULL, NULL, '4000000335', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(588, '2', '6327', '6327', '2', 'Section-A', 'Akshay', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000136', 'akshay2326@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000336', NULL, NULL, NULL, '4000000336', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(589, '2', '6262', '6262', '5', 'Section-B', 'Sumit', 'Saini', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000071', 'sumit2261@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '17', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000271', NULL, NULL, NULL, '4000000271', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(590, '2', '6328', '6328', '2', 'Section-A', 'Ajay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000137', 'ajay2327@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000337', NULL, NULL, 'Raju Devi', '4000000337', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(591, '2', '6263', '6263', '4', 'Section-A', 'Mohan', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000072', 'mohan2262@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000272', NULL, NULL, NULL, '4000000272', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(592, '2', '6329', '6329', '2', 'Section-A', 'Daksh', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000138', 'daksh2328@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000338', NULL, NULL, NULL, '4000000338', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(593, '2', '6264', '6264', '4', 'Section-A', 'Rohan', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000073', 'rohan2263@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000273', NULL, NULL, NULL, '4000000273', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(594, '2', '6330', '6330', '2', 'Section-A', 'Vijay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000139', 'vijay2329@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000339', NULL, NULL, 'Raju Devi', '4000000339', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(595, '2', '6265', '6265', '4', 'Section-A', 'John', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000074', 'john2264@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000274', NULL, NULL, 'Raju Devi', '4000000274', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(596, '2', '6331', '6331', '2', 'Section-A', 'Sanjay', 'Gupta', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000140', 'sanjay2330@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000340', NULL, NULL, NULL, '4000000340', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(597, '2', '6266', '6266', '4', 'Section-A', 'Akash ', 'Garg', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000075', 'akash2265@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000275', NULL, NULL, NULL, '4000000275', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(598, '2', '6332', '6332', '2', 'Section-A', 'Sumit', 'Saini', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000141', 'sumit2331@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '17', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000341', NULL, NULL, NULL, '4000000341', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(599, '2', '6267', '6267', '4', 'Section-A', 'Akshay', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000076', 'akshay2266@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000276', NULL, NULL, NULL, '4000000276', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(600, '2', '6333', '6333', '2', 'Section-A', 'Mohan', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000142', 'mohan2332@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000342', NULL, NULL, NULL, '4000000342', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(601, '2', '6334', '6334', '2', 'Section-A', 'Rohan', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000143', 'rohan2333@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000343', NULL, NULL, NULL, '4000000343', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(602, '2', '6268', '6268', '4', 'Section-A', 'Ajay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000077', 'ajay2267@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000277', NULL, NULL, 'Raju Devi', '4000000277', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(603, '2', '6335', '6335', '2', 'Section-A', 'John', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000144', 'john2334@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000344', NULL, NULL, 'Raju Devi', '4000000344', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35');
INSERT INTO `student_admission` (`id`, `user_id`, `admission_no`, `roll_no`, `class`, `section`, `first_name`, `last_name`, `gender`, `dob`, `category`, `religion`, `caste`, `mobile_no`, `email`, `password`, `conform_password`, `admission_date`, `student_image`, `blood_group`, `stu_house`, `height`, `weight`, `as_on_date`, `father_name`, `father_mobile`, `father_accu`, `father_photo`, `mother_name`, `mother_phone`, `mother_occu`, `mother_photo`, `guardian`, `gur_name`, `gur_relation`, `gur_email`, `gur_photo`, `gur_phone`, `gur_occu`, `gur_address`, `bank_no`, `bank_name`, `ifsc`, `nin_no`, `lin_no`, `rte`, `pre_school`, `notes`, `balance`, `current_result`, `session_status`, `session`, `status`, `active_status`, `created_at`, `updated_at`) VALUES
(604, '2', '6269', '6269', '4', 'Section-A', 'Daksh', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000078', 'daksh2268@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000278', NULL, NULL, NULL, '4000000278', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(605, '2', '6336', '6336', '2', 'Section-A', 'Akash ', 'Garg', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000145', 'akash2335@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000345', NULL, NULL, NULL, '4000000345', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(606, '2', '6270', '6270', '4', 'Section-A', 'Vijay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000079', 'vijay2269@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000279', NULL, NULL, 'Raju Devi', '4000000279', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(607, '2', '6337', '6337', '2', 'Section-A', 'Akshay', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000146', 'akshay2336@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000346', NULL, NULL, NULL, '4000000346', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(608, '2', '6271', '6271', '4', 'Section-A', 'Sanjay', 'Gupta', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000080', 'sanjay2270@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000280', NULL, NULL, NULL, '4000000280', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(609, '2', '6338', '6338', '2', 'Section-B', 'Ajay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000147', 'ajay2337@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000347', NULL, NULL, 'Raju Devi', '4000000347', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(610, '2', '6272', '6272', '4', 'Section-A', 'Sumit', 'Saini', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000081', 'sumit2271@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '17', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000281', NULL, NULL, NULL, '4000000281', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(611, '2', '6339', '6339', '2', 'Section-B', 'Daksh', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000148', 'daksh2338@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000348', NULL, NULL, NULL, '4000000348', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(612, '2', '6273', '6273', '4', 'Section-A', 'Mohan', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000082', 'mohan2272@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000282', NULL, NULL, NULL, '4000000282', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(613, '2', '6340', '6340', '2', 'Section-B', 'Vijay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000149', 'vijay2339@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000349', NULL, NULL, 'Raju Devi', '4000000349', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(614, '2', '6274', '6274', '4', 'Section-A', 'Rohan', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000083', 'rohan2273@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000283', NULL, NULL, NULL, '4000000283', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(615, '2', '6341', '6341', '2', 'Section-B', 'Sanjay', 'Gupta', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000150', 'sanjay2340@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000350', NULL, NULL, NULL, '4000000350', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(616, '2', '6275', '6275', '4', 'Section-A', 'John', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000084', 'john2274@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000284', NULL, NULL, 'Raju Devi', '4000000284', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(617, '2', '6342', '6342', '2', 'Section-B', 'Sumit', 'Saini', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000151', 'sumit2341@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '17', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000351', NULL, NULL, NULL, '4000000351', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(618, '2', '6276', '6276', '4', 'Section-A', 'Akash ', 'Garg', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000085', 'akash2275@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000285', NULL, NULL, NULL, '4000000285', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(619, '2', '6343', '6343', '2', 'Section-B', 'Mohan', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000152', 'mohan2342@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000352', NULL, NULL, NULL, '4000000352', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(620, '2', '6344', '6344', '2', 'Section-B', 'Rohan', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000153', 'rohan2343@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000353', NULL, NULL, NULL, '4000000353', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(621, '2', '6277', '6277', '4', 'Section-A', 'Akshay', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000086', 'akshay2276@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000286', NULL, NULL, NULL, '4000000286', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(622, '2', '6345', '6345', '2', 'Section-B', 'John', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000154', 'john2344@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000354', NULL, NULL, 'Raju Devi', '4000000354', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(623, '2', '6278', '6278', '4', 'Section-B', 'Ajay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000087', 'ajay2277@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000287', NULL, NULL, 'Raju Devi', '4000000287', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(624, '2', '6346', '6346', '2', 'Section-B', 'Akash ', 'Garg', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000155', 'akash2345@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000355', NULL, NULL, NULL, '4000000355', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(625, '2', '6279', '6279', '4', 'Section-B', 'Daksh', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000088', 'daksh2278@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000288', NULL, NULL, NULL, '4000000288', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(626, '2', '6347', '6347', '2', 'Section-B', 'Akshay', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000156', 'akshay2346@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000356', NULL, NULL, NULL, '4000000356', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(627, '2', '6280', '6280', '4', 'Section-B', 'Vijay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000089', 'vijay2279@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000289', NULL, NULL, 'Raju Devi', '4000000289', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(628, '2', '6348', '6348', '2', 'Section-B', 'Ajay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000157', 'ajay2347@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000357', NULL, NULL, 'Raju Devi', '4000000357', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(629, '2', '6281', '6281', '4', 'Section-B', 'Sanjay', 'Gupta', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000090', 'sanjay2280@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000290', NULL, NULL, NULL, '4000000290', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(630, '2', '6349', '6349', '2', 'Section-B', 'Daksh', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000158', 'daksh2348@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000358', NULL, NULL, NULL, '4000000358', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(631, '2', '6350', '6350', '2', 'Section-B', 'Vijay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000159', 'vijay2349@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000359', NULL, NULL, 'Raju Devi', '4000000359', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(632, '2', '6282', '6282', '4', 'Section-B', 'Sumit', 'Saini', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000091', 'sumit2281@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '17', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000291', NULL, NULL, NULL, '4000000291', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(633, '2', '6351', '6351', '2', 'Section-B', 'Sanjay', 'Gupta', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000160', 'sanjay2350@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000360', NULL, NULL, NULL, '4000000360', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(634, '2', '6283', '6283', '2', 'Section-A', 'Mohan', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000092', 'mohan2282@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000292', NULL, NULL, NULL, '4000000292', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(635, '2', '6284', '6284', '4', 'Section-A', 'Rohan', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000093', 'rohan2283@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000293', NULL, NULL, NULL, '4000000293', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(636, '2', '6352', '6352', '2', 'Section-B', 'Sumit', 'Saini', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000161', 'sumit2351@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '17', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000361', NULL, NULL, NULL, '4000000361', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(637, '2', '6285', '6285', '4', 'Section-A', 'John', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000094', 'john2284@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000294', NULL, NULL, 'Raju Devi', '4000000294', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(638, '2', '6353', '6353', '1', 'Section-A', 'Mohan', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000162', 'mohan2352@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000362', NULL, NULL, NULL, '4000000362', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(639, '2', '6286', '6286', '4', 'Section-A', 'Akash ', 'Garg', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000095', 'akash2285@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000295', NULL, NULL, NULL, '4000000295', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(640, '2', '6354', '6354', '1', 'Section-A', 'Rohan', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000163', 'rohan2353@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000363', NULL, NULL, NULL, '4000000363', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(641, '2', '6287', '6287', '4', 'Section-A', 'Akshay', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000096', 'akshay2286@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000296', NULL, NULL, NULL, '4000000296', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(642, '2', '6355', '6355', '1', 'Section-A', 'John', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000164', 'john2354@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000364', NULL, NULL, 'Raju Devi', '4000000364', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(643, '2', '6356', '6356', '1', 'Section-A', 'Akash ', 'Garg', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000165', 'akash2355@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000365', NULL, NULL, NULL, '4000000365', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(644, '2', '6288', '6288', '4', 'Section-B', 'Ajay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000097', 'ajay2287@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000297', NULL, NULL, 'Raju Devi', '4000000297', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(645, '2', '6357', '6357', '1', 'Section-A', 'Akshay', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000166', 'akshay2356@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000366', NULL, NULL, NULL, '4000000366', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(646, '2', '6289', '6289', '4', 'Section-B', 'Daksh', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000098', 'daksh2288@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000298', NULL, NULL, NULL, '4000000298', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(647, '2', '6358', '6358', '1', 'Section-A', 'Ajay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000167', 'ajay2357@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000367', NULL, NULL, 'Raju Devi', '4000000367', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(648, '2', '6290', '6290', '4', 'Section-B', 'Vijay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000099', 'vijay2289@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000299', NULL, NULL, 'Raju Devi', '4000000299', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(649, '2', '6359', '6359', '1', 'Section-A', 'Daksh', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000168', 'daksh2358@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000368', NULL, NULL, NULL, '4000000368', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(650, '2', '6291', '6291', '4', 'Section-B', 'Sanjay', 'Gupta', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000100', 'sanjay2290@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000300', NULL, NULL, NULL, '4000000300', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(651, '2', '6360', '6360', '1', 'Section-A', 'Vijay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000169', 'vijay2359@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000369', NULL, NULL, 'Raju Devi', '4000000369', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(652, '2', '6292', '6292', '4', 'Section-B', 'Sumit', 'Saini', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000101', 'sumit2291@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '17', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000301', NULL, NULL, NULL, '4000000301', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(653, '2', '6361', '6361', '1', 'Section-A', 'Sanjay', 'Gupta', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000170', 'sanjay2360@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000370', NULL, NULL, NULL, '4000000370', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(654, '2', '6293', '6293', '3', 'Section-A', 'Mohan', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000102', 'mohan2292@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000302', NULL, NULL, NULL, '4000000302', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(655, '2', '6362', '6362', '1', 'Section-A', 'Sumit', 'Saini', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000171', 'sumit2361@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '17', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000371', NULL, NULL, NULL, '4000000371', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(656, '2', '6294', '6294', '3', 'Section-A', 'Rohan', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000103', 'rohan2293@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000303', NULL, NULL, NULL, '4000000303', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(657, '2', '6363', '6363', '1', 'Section-A', 'Mohan', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000172', 'mohan2362@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000372', NULL, NULL, NULL, '4000000372', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(658, '2', '6295', '6295', '3', 'Section-A', 'John', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000104', 'john2294@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000304', NULL, NULL, 'Raju Devi', '4000000304', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(659, '2', '6296', '6296', '3', 'Section-A', 'Akash ', 'Garg', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000105', 'akash2295@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000305', NULL, NULL, NULL, '4000000305', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(660, '2', '6364', '6364', '1', 'Section-A', 'Rohan', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000173', 'rohan2363@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000373', NULL, NULL, NULL, '4000000373', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(661, '2', '6297', '6297', '3', 'Section-A', 'Akshay', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000106', 'akshay2296@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000306', NULL, NULL, NULL, '4000000306', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(662, '2', '6365', '6365', '1', 'Section-A', 'John', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000174', 'john2364@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000374', NULL, NULL, 'Raju Devi', '4000000374', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(663, '2', '6298', '6298', '3', 'Section-A', 'Ajay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000107', 'ajay2297@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000307', NULL, NULL, 'Raju Devi', '4000000307', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(664, '2', '6366', '6366', '1', 'Section-A', 'Akash ', 'Garg', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000175', 'akash2365@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000375', NULL, NULL, NULL, '4000000375', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(665, '2', '6299', '6299', '3', 'Section-A', 'Daksh', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000108', 'daksh2298@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000308', NULL, NULL, NULL, '4000000308', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(666, '2', '6367', '6367', '1', 'Section-A', 'Akshay', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000176', 'akshay2366@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000376', NULL, NULL, NULL, '4000000376', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(667, '2', '6300', '6300', '3', 'Section-A', 'Vijay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000109', 'vijay2299@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000309', NULL, NULL, 'Raju Devi', '4000000309', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(668, '2', '6301', '6301', '3', 'Section-A', 'Sanjay', 'Gupta', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000110', 'sanjay2300@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000310', NULL, NULL, NULL, '4000000310', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(669, '2', '6368', '6368', '1', 'Section-B', 'Ajay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000177', 'ajay2367@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000173', NULL, NULL, 'Raju Devi', '4000000173', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(670, '2', '6302', '6302', '3', 'Section-A', 'Sumit', 'Saini', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7100000111', 'sumit2301@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '17', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000311', NULL, NULL, NULL, '4000000311', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(671, '2', '6369', '6369', '1', 'Section-B', 'Daksh', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000178', 'daksh2368@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000378', NULL, NULL, NULL, '4000000174', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(672, '2', '6303', '6303', '3', 'Section-A', 'Mohan', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000112', 'mohan2302@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000312', NULL, NULL, NULL, '4000000312', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(673, '2', '6370', '6370', '1', 'Section-B', 'Vijay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000179', 'vijay2369@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000379', NULL, NULL, 'Raju Devi', '4000000379', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(674, '2', '6304', '6304', '3', 'Section-A', 'Rohan', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000113', 'rohan2303@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000313', NULL, NULL, NULL, '4000000313', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(675, '2', '6371', '6371', '1', 'Section-B', 'Sanjay', 'Gupta', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000180', 'sanjay2370@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000380', NULL, NULL, NULL, '4000000380', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(676, '2', '6372', '6372', '1', 'Section-B', 'Sumit', 'Saini', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000181', 'sumit2380@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '17', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000381', NULL, NULL, NULL, '4000000381', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(677, '2', '6305', '6305', '3', 'Section-A', 'John', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000114', 'john2304@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000314', NULL, NULL, 'Raju Devi', '4000000314', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(678, '2', '6373', '6373', '1', 'Section-B', 'Mohan', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000182', 'mohan2381@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000382', NULL, NULL, NULL, '4000000382', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(679, '2', '6306', '6306', '3', 'Section-A', 'Akash ', 'Garg', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000115', 'akash2305@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000315', NULL, NULL, NULL, '4000000315', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(680, '2', '6374', '6374', '1', 'Section-B', 'Rohan', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000183', 'rohan2382@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000383', NULL, NULL, NULL, '4000000383', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(681, '2', '6307', '6307', '3', 'Section-A', 'Akshay', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000116', 'akshay2306@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000316', NULL, NULL, NULL, '4000000316', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(682, '2', '6375', '6375', '1', 'Section-B', 'John', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000184', 'john2383@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000384', NULL, NULL, 'Raju Devi', '4000000384', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(683, '2', '6308', '6308', '3', 'Section-B', 'Ajay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000117', 'ajay2307@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000317', NULL, NULL, 'Raju Devi', '4000000317', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(684, '2', '6376', '6376', '1', 'Section-B', 'Akash ', 'Garg', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000185', 'akash2384@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000385', NULL, NULL, NULL, '4000000385', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(685, '2', '6309', '6309', '3', 'Section-B', 'Daksh', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000118', 'daksh2308@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000318', NULL, NULL, NULL, '4000000318', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(686, '2', '6377', '6377', '1', 'Section-B', 'Akshay', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000186', 'akshay2385@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000386', NULL, NULL, NULL, '4000000386', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(687, '2', '6310', '6310', '3', 'Section-B', 'Vijay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000119', 'vijay2309@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000319', NULL, NULL, 'Raju Devi', '4000000319', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(688, '2', '6378', '6378', '1', 'Section-B', 'Ajay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000187', 'ajay2386@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000387', NULL, NULL, 'Raju Devi', '4000000387', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(689, '2', '6311', '6311', '3', 'Section-B', 'Sanjay', 'Gupta', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000120', 'sanjay2310@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000320', NULL, NULL, NULL, '4000000320', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(690, '2', '6379', '6379', '1', 'Section-B', 'Daksh', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000188', 'daksh2387@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000388', NULL, NULL, NULL, '4000000388', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(691, '2', '6312', '6312', '3', 'Section-B', 'Sumit', 'Saini', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000121', 'sumit2311@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '17', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000321', NULL, NULL, NULL, '4000000321', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(692, '2', '6380', '6380', '1', 'Section-B', 'Vijay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000189', 'vijay2388@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000389', NULL, NULL, 'Raju Devi', '4000000389', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(693, '2', '6313', '6313', '3', 'Section-A', 'Mohan', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000122', 'mohan2312@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000322', NULL, NULL, NULL, '4000000322', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(694, '2', '6381', '6381', '1', 'Section-B', 'Sanjay', 'Gupta', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000190', 'sanjay2389@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000390', NULL, NULL, NULL, '4000000390', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(695, '2', '6382', '6382', '1', 'Section-B', 'Sumit', 'Saini', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000191', 'sumit2390@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '17', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000391', NULL, NULL, NULL, '4000000391', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(696, '2', '6314', '6314', '3', 'Section-A', 'Rohan', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000123', 'rohan2313@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000323', NULL, NULL, NULL, '4000000323', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(697, '2', '6315', '6315', '3', 'Section-A', 'John', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000124', 'john2314@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000324', NULL, NULL, 'Raju Devi', '4000000324', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(698, '2', '6316', '6316', '3', 'Section-A', 'Akash ', 'Garg', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000125', 'akash2315@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000325', NULL, NULL, NULL, '4000000325', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(699, '2', '6317', '6317', '3', 'Section-A', 'Akshay', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000126', 'akshay2316@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000326', NULL, NULL, NULL, '4000000326', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(700, '2', '6318', '6318', '3', 'Section-B', 'Ajay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000127', 'ajay2317@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000327', NULL, NULL, 'Raju Devi', '4000000327', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(701, '2', '6319', '6319', '3', 'Section-B', 'Daksh', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000128', 'daksh2318@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000328', NULL, NULL, NULL, '4000000328', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(702, '2', '6320', '6320', '3', 'Section-B', 'Vijay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000129', 'vijay2319@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000329', NULL, NULL, 'Raju Devi', '4000000329', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(703, '2', '6321', '6321', '3', 'Section-B', 'Sanjay', 'Gupta', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000130', 'sanjay2320@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000330', NULL, NULL, NULL, '4000000330', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(704, '2', '6322', '6322', '3', 'Section-B', 'Sumit', 'Saini', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000131', 'sumit2321@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '17', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000331', NULL, NULL, NULL, '4000000331', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(705, '2', '6323', '6323', '2', 'Section-A', 'Mohan', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000132', 'mohan2322@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000332', NULL, NULL, NULL, '4000000332', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(706, '2', '6324', '6324', '2', 'Section-A', 'Rohan', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000133', 'rohan2323@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000333', NULL, NULL, NULL, '4000000333', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35');
INSERT INTO `student_admission` (`id`, `user_id`, `admission_no`, `roll_no`, `class`, `section`, `first_name`, `last_name`, `gender`, `dob`, `category`, `religion`, `caste`, `mobile_no`, `email`, `password`, `conform_password`, `admission_date`, `student_image`, `blood_group`, `stu_house`, `height`, `weight`, `as_on_date`, `father_name`, `father_mobile`, `father_accu`, `father_photo`, `mother_name`, `mother_phone`, `mother_occu`, `mother_photo`, `guardian`, `gur_name`, `gur_relation`, `gur_email`, `gur_photo`, `gur_phone`, `gur_occu`, `gur_address`, `bank_no`, `bank_name`, `ifsc`, `nin_no`, `lin_no`, `rte`, `pre_school`, `notes`, `balance`, `current_result`, `session_status`, `session`, `status`, `active_status`, `created_at`, `updated_at`) VALUES
(707, '2', '6325', '6325', '2', 'Section-A', 'John', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000134', 'john2324@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000334', NULL, NULL, 'Raju Devi', '4000000334', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(708, '2', '6326', '6326', '2', 'Section-A', 'Akash ', 'Garg', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000135', 'akash2325@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000335', NULL, NULL, NULL, '4000000335', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(709, '2', '6327', '6327', '2', 'Section-A', 'Akshay', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000136', 'akshay2326@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000336', NULL, NULL, NULL, '4000000336', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(710, '2', '6328', '6328', '2', 'Section-A', 'Ajay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000137', 'ajay2327@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000337', NULL, NULL, 'Raju Devi', '4000000337', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(711, '2', '6329', '6329', '2', 'Section-A', 'Daksh', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000138', 'daksh2328@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000338', NULL, NULL, NULL, '4000000338', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:35', '2023-09-04 11:08:35'),
(712, '2', '6330', '6330', '2', 'Section-A', 'Vijay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000139', 'vijay2329@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000339', NULL, NULL, 'Raju Devi', '4000000339', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:36', '2023-09-04 11:08:36'),
(713, '2', '6331', '6331', '2', 'Section-A', 'Sanjay', 'Gupta', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000140', 'sanjay2330@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000340', NULL, NULL, NULL, '4000000340', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:36', '2023-09-04 11:08:36'),
(714, '2', '6332', '6332', '2', 'Section-A', 'Sumit', 'Saini', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000141', 'sumit2331@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '17', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000341', NULL, NULL, NULL, '4000000341', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:36', '2023-09-04 11:08:36'),
(715, '2', '6333', '6333', '2', 'Section-A', 'Mohan', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000142', 'mohan2332@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000342', NULL, NULL, NULL, '4000000342', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:36', '2023-09-04 11:08:36'),
(716, '2', '6334', '6334', '2', 'Section-A', 'Rohan', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000143', 'rohan2333@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000343', NULL, NULL, NULL, '4000000343', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:36', '2023-09-04 11:08:36'),
(717, '2', '6335', '6335', '2', 'Section-A', 'John', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000144', 'john2334@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000344', NULL, NULL, 'Raju Devi', '4000000344', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:36', '2023-09-04 11:08:36'),
(718, '2', '6336', '6336', '2', 'Section-A', 'Akash ', 'Garg', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000145', 'akash2335@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000345', NULL, NULL, NULL, '4000000345', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:36', '2023-09-04 11:08:36'),
(719, '2', '6337', '6337', '2', 'Section-A', 'Akshay', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000146', 'akshay2336@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000346', NULL, NULL, NULL, '4000000346', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:36', '2023-09-04 11:08:36'),
(720, '2', '6338', '6338', '2', 'Section-B', 'Ajay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000147', 'ajay2337@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000347', NULL, NULL, 'Raju Devi', '4000000347', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:36', '2023-09-04 11:08:36'),
(721, '2', '6339', '6339', '2', 'Section-B', 'Daksh', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000148', 'daksh2338@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000348', NULL, NULL, NULL, '4000000348', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:36', '2023-09-04 11:08:36'),
(722, '2', '6340', '6340', '2', 'Section-B', 'Vijay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000149', 'vijay2339@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000349', NULL, NULL, 'Raju Devi', '4000000349', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:36', '2023-09-04 11:08:36'),
(723, '2', '6341', '6341', '2', 'Section-B', 'Sanjay', 'Gupta', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000150', 'sanjay2340@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000350', NULL, NULL, NULL, '4000000350', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:36', '2023-09-04 11:08:36'),
(724, '2', '6342', '6342', '2', 'Section-B', 'Sumit', 'Saini', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000151', 'sumit2341@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '17', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000351', NULL, NULL, NULL, '4000000351', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:36', '2023-09-04 11:08:36'),
(725, '2', '6343', '6343', '2', 'Section-B', 'Mohan', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000152', 'mohan2342@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000352', NULL, NULL, NULL, '4000000352', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:36', '2023-09-04 11:08:36'),
(726, '2', '6344', '6344', '2', 'Section-B', 'Rohan', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000153', 'rohan2343@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000353', NULL, NULL, NULL, '4000000353', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:36', '2023-09-04 11:08:36'),
(727, '2', '6345', '6345', '2', 'Section-B', 'John', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000154', 'john2344@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000354', NULL, NULL, 'Raju Devi', '4000000354', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:36', '2023-09-04 11:08:36'),
(728, '2', '6346', '6346', '2', 'Section-B', 'Akash ', 'Garg', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000155', 'akash2345@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000355', NULL, NULL, NULL, '4000000355', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:36', '2023-09-04 11:08:36'),
(729, '2', '6347', '6347', '2', 'Section-B', 'Akshay', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000156', 'akshay2346@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000356', NULL, NULL, NULL, '4000000356', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:36', '2023-09-04 11:08:36'),
(730, '2', '6348', '6348', '2', 'Section-B', 'Ajay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000157', 'ajay2347@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000357', NULL, NULL, 'Raju Devi', '4000000357', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:36', '2023-09-04 11:08:36'),
(731, '2', '6349', '6349', '2', 'Section-B', 'Daksh', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000158', 'daksh2348@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000358', NULL, NULL, NULL, '4000000358', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:36', '2023-09-04 11:08:36'),
(732, '2', '6350', '6350', '2', 'Section-B', 'Vijay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000159', 'vijay2349@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000359', NULL, NULL, 'Raju Devi', '4000000359', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:36', '2023-09-04 11:08:36'),
(733, '2', '6351', '6351', '2', 'Section-B', 'Sanjay', 'Gupta', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000160', 'sanjay2350@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000360', NULL, NULL, NULL, '4000000360', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:36', '2023-09-04 11:08:36'),
(734, '2', '6352', '6352', '2', 'Section-B', 'Sumit', 'Saini', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000161', 'sumit2351@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '17', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000361', NULL, NULL, NULL, '4000000361', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:36', '2023-09-04 11:08:36'),
(735, '2', '6353', '6353', '1', 'Section-A', 'Mohan', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000162', 'mohan2352@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000362', NULL, NULL, NULL, '4000000362', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:36', '2023-09-04 11:08:36'),
(736, '2', '6354', '6354', '1', 'Section-A', 'Rohan', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000163', 'rohan2353@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000363', NULL, NULL, NULL, '4000000363', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:36', '2023-09-04 11:08:36'),
(737, '2', '6355', '6355', '1', 'Section-A', 'John', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000164', 'john2354@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000364', NULL, NULL, 'Raju Devi', '4000000364', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:36', '2023-09-04 11:08:36'),
(738, '2', '6356', '6356', '1', 'Section-A', 'Akash ', 'Garg', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000165', 'akash2355@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000365', NULL, NULL, NULL, '4000000365', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:36', '2023-09-04 11:08:36'),
(739, '2', '6357', '6357', '1', 'Section-A', 'Akshay', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000166', 'akshay2356@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000366', NULL, NULL, NULL, '4000000366', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:36', '2023-09-04 11:08:36'),
(740, '2', '6358', '6358', '1', 'Section-A', 'Ajay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000167', 'ajay2357@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000367', NULL, NULL, 'Raju Devi', '4000000367', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:36', '2023-09-04 11:08:36'),
(741, '2', '6359', '6359', '1', 'Section-A', 'Daksh', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000168', 'daksh2358@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000368', NULL, NULL, NULL, '4000000368', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:36', '2023-09-04 11:08:36'),
(742, '2', '6360', '6360', '1', 'Section-A', 'Vijay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000169', 'vijay2359@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000369', NULL, NULL, 'Raju Devi', '4000000369', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:36', '2023-09-04 11:08:36'),
(743, '2', '6361', '6361', '1', 'Section-A', 'Sanjay', 'Gupta', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000170', 'sanjay2360@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000370', NULL, NULL, NULL, '4000000370', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:36', '2023-09-04 11:08:36'),
(744, '2', '6362', '6362', '1', 'Section-A', 'Sumit', 'Saini', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000171', 'sumit2361@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '17', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000371', NULL, NULL, NULL, '4000000371', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:36', '2023-09-04 11:08:36'),
(745, '2', '6363', '6363', '1', 'Section-A', 'Mohan', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000172', 'mohan2362@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000372', NULL, NULL, NULL, '4000000372', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:36', '2023-09-04 11:08:36'),
(746, '2', '6364', '6364', '1', 'Section-A', 'Rohan', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000173', 'rohan2363@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000373', NULL, NULL, NULL, '4000000373', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:36', '2023-09-04 11:08:36'),
(747, '2', '6365', '6365', '1', 'Section-A', 'John', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000174', 'john2364@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000374', NULL, NULL, 'Raju Devi', '4000000374', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:36', '2023-09-04 11:08:36'),
(748, '2', '6366', '6366', '1', 'Section-A', 'Akash ', 'Garg', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000175', 'akash2365@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000375', NULL, NULL, NULL, '4000000375', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:36', '2023-09-04 11:08:36'),
(749, '2', '6367', '6367', '1', 'Section-A', 'Akshay', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000176', 'akshay2366@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000376', NULL, NULL, NULL, '4000000376', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:36', '2023-09-04 11:08:36'),
(750, '2', '6368', '6368', '1', 'Section-B', 'Ajay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000177', 'ajay2367@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000173', NULL, NULL, 'Raju Devi', '4000000173', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:36', '2023-09-04 11:08:36'),
(751, '2', '6369', '6369', '1', 'Section-B', 'Daksh', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000178', 'daksh2368@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000378', NULL, NULL, NULL, '4000000174', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:36', '2023-09-04 11:08:36'),
(752, '2', '6370', '6370', '1', 'Section-B', 'Vijay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000179', 'vijay2369@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000379', NULL, NULL, 'Raju Devi', '4000000379', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:36', '2023-09-04 11:08:36'),
(753, '2', '6371', '6371', '1', 'Section-B', 'Sanjay', 'Gupta', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000180', 'sanjay2370@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000380', NULL, NULL, NULL, '4000000380', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:36', '2023-09-04 11:08:36'),
(754, '2', '6372', '6372', '1', 'Section-B', 'Sumit', 'Saini', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000181', 'sumit2380@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '17', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000381', NULL, NULL, NULL, '4000000381', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:36', '2023-09-04 11:08:36'),
(755, '2', '6373', '6373', '1', 'Section-B', 'Mohan', 'Kumawat', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000182', 'mohan2381@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000382', NULL, NULL, NULL, '4000000382', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:36', '2023-09-04 11:08:36'),
(756, '2', '6374', '6374', '1', 'Section-B', 'Rohan', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000183', 'rohan2382@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000383', NULL, NULL, NULL, '4000000383', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:36', '2023-09-04 11:08:36'),
(757, '2', '6375', '6375', '1', 'Section-B', 'John', 'Kumawat', 'Female', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000184', 'john2383@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000384', NULL, NULL, 'Raju Devi', '4000000384', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:36', '2023-09-04 11:08:36'),
(758, '2', '6376', '6376', '1', 'Section-B', 'Akash ', 'Garg', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000185', 'akash2384@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000385', NULL, NULL, NULL, '4000000385', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:36', '2023-09-04 11:08:36'),
(759, '2', '6377', '6377', '1', 'Section-B', 'Akshay', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000186', 'akshay2385@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000386', NULL, NULL, NULL, '4000000386', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:36', '2023-09-04 11:08:36'),
(760, '2', '6378', '6378', '1', 'Section-B', 'Ajay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'obc', '7000000187', 'ajay2386@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000387', NULL, NULL, 'Raju Devi', '4000000387', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:36', '2023-09-04 11:08:36'),
(761, '2', '6379', '6379', '1', 'Section-B', 'Daksh', 'Singh', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000188', 'daksh2387@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '16', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000388', NULL, NULL, NULL, '4000000388', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:36', '2023-09-04 11:08:36'),
(762, '2', '6380', '6380', '1', 'Section-B', 'Vijay', 'Agrawal', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000189', 'vijay2388@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000389', NULL, NULL, 'Raju Devi', '4000000389', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:36', '2023-09-04 11:08:36'),
(763, '2', '6381', '6381', '1', 'Section-B', 'Sanjay', 'Gupta', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000190', 'sanjay2389@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '18', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000390', NULL, NULL, NULL, '4000000390', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:36', '2023-09-04 11:08:36'),
(764, '2', '6382', '6382', '1', 'Section-B', 'Sumit', 'Saini', 'Male', '2000-12-08', 'Student', 'Hindu', 'General', '7000000191', 'sumit2390@gmail.com', NULL, NULL, '2023-06-16', NULL, NULL, '17', NULL, '65', '2023-06-07', 'Rajaram sharma', '9000000391', NULL, NULL, NULL, '4000000391', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:36', '2023-09-04 11:08:36'),
(765, '2', '9999', '9999', '4', 'Section-B', 'Keshav', 'Dubey', 'Male', '2016-06-27', 'Student', 'Hindu', 'General', '3856481945', 'keshav@gmail.com', NULL, NULL, '2023-06-27', NULL, 'O+', 'Jaipur', '4.3', '39', '2023-06-27', 'RamLal Dubey', '7867', 'Teacher', NULL, 'Seeta Dubey', '675', 'Teacher', NULL, NULL, 'RamSingh', 'Uncle', 'ramsingh@gmai.com', NULL, '56434', 'Teacher', 'Jaipur', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:36', '2023-09-04 11:08:36'),
(766, '2', '6198', '6198', '4', 'Section-B', 'Girish', 'Kumar', 'Male', '2015-06-27', 'Student', 'Hindu', 'General', '5467345765', 'girishkumar@gmail.com', NULL, NULL, '2023-06-27', NULL, 'A+', 'Jaipur', '4.1', '35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:36', '2023-09-04 11:08:36'),
(767, '2', '9999', '9999', '8', 'Section-B', 'Aman', 'Agrawal', 'Male', '2023-06-27', 'Student', NULL, NULL, '5467115765', 'keshav@gmail.com', NULL, NULL, '2023-06-27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:36', '2023-09-04 11:08:36'),
(768, '2', '99999', '99999', '9', 'Section-B', 'Shivam', 'Kumar', 'Male', '2023-06-27', 'Student', NULL, NULL, '0000000001', 'shivam@gmail.com', NULL, NULL, '2023-06-27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:36', '2023-09-04 11:08:36'),
(769, '2', '1111111', '1111111', '10', 'Section-B', 'Sooraj', 'Singh Khatri', 'Male', '2023-09-04', 'Student', 'Hindu', 'Rajpoot', '7634298765', 'sooraj@gmail.com', NULL, NULL, '2023-09-04', NULL, 'O+', 'Jaipur', '5.6', '64', '2023-09-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:36', '2023-09-04 11:08:36'),
(770, '2', '222222', '222222', '10', 'Section-B', 'Sanjay', 'Kumar', 'Male', '2023-09-04', 'Student', 'Hindu', 'General', '7588948786', 'sanjay@gmail.com', NULL, NULL, '2023-09-04', NULL, 'O+', 'Rajatpath, Jaipur', '5.6', '67', '2023-09-04', 'Ram Kumar', '8764893889', 'Teacher', NULL, 'Asha Devi', '6898643767', 'Housewife', NULL, NULL, 'Rajesh Kumar', 'Uncle', 'rajesh@gmail.com', NULL, '8747388975', 'Shopkeeper', 'Mansarovar, Jaipur', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:36', '2023-09-04 11:08:36'),
(771, '2', '8548945', '87458943', '1', 'Section-B', 'Rudra', 'Singh', 'Male', '2023-09-04', 'Student', 'Hindu', 'General', '7458945987', 'rudra@gmail.com', NULL, NULL, '2023-09-04', NULL, 'O+', 'Jaipur', '3.5', '26', '2023-09-04', 'Roman Singh', '8767453875', 'Doctor', NULL, 'Sakshi Singh', '4783089875', 'Teacher', NULL, NULL, 'Ramavtar Singh', 'Uncle', 'ramavtar@gmail.com', NULL, '8745387866', 'Engineer', 'Jaipur', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-24', 1, 1, '2023-09-04 11:08:36', '2023-09-04 11:08:36'),
(772, '2', '6347434', '6347434', '10', 'Section-B', 'Rajendra', 'Kumar', 'Male', '2023-09-04', 'Student', 'Hindu', 'General', '7874789784', 'rajendra@gmail.com', NULL, NULL, '2023-09-04', NULL, NULL, 'Rajatpath', '5.6', '61', '2023-09-04', 'Mahendra Kumar', '8746789546', 'Teacher', NULL, 'Mohini Devi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Continue', '2023-24', 1, 1, '2023-09-04 11:38:40', '2023-09-04 11:46:05');

-- --------------------------------------------------------

--
-- Table structure for table `student_attendance`
--

CREATE TABLE `student_attendance` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` varchar(255) DEFAULT NULL,
  `teacher_name` varchar(255) DEFAULT NULL,
  `stu_id` varchar(255) DEFAULT NULL,
  `admission_no` varchar(255) DEFAULT NULL,
  `roll_no` varchar(255) DEFAULT NULL,
  `student_name` varchar(255) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `section` varchar(255) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `attendance` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `note` longtext DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1 = ACTIVE , 0 = INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_attendance`
--

INSERT INTO `student_attendance` (`id`, `teacher_id`, `teacher_name`, `stu_id`, `admission_no`, `roll_no`, `student_name`, `class`, `section`, `dob`, `attendance`, `date`, `note`, `status`, `created_at`, `updated_at`) VALUES
(151, '8', 'Raj Kumar', '7', NULL, NULL, NULL, 'Class-7', 'Section-D', NULL, 'Late', '2023-01-19', NULL, 1, '2023-01-19 01:15:57', '2023-01-19 01:15:57'),
(152, '8', 'Raj Kumar', '6', NULL, NULL, NULL, 'Class-10', 'Section-D', NULL, 'Absent', '2023-01-19', NULL, 1, '2023-01-19 01:15:57', '2023-01-19 01:15:57'),
(153, '8', 'Raj Kumar', '1', NULL, NULL, NULL, 'Class-8', 'Section-C', NULL, 'Present', '2023-01-19', NULL, 1, '2023-01-19 01:18:07', '2023-01-19 01:18:07'),
(154, '8', 'Raj Kumar', '7', NULL, NULL, NULL, 'Class-10', 'Section-D', NULL, 'Absent', '2023-01-19', NULL, 1, '2023-01-19 01:18:35', '2023-01-19 01:18:35'),
(155, '8', 'Raj Kumar', '4', NULL, NULL, NULL, 'Class-10', 'Section-D', NULL, 'Half Day', '2023-01-19', NULL, 1, '2023-01-19 01:18:35', '2023-01-19 01:18:35'),
(156, '8', 'Raj Kumar', '7', NULL, NULL, NULL, 'Class-10', 'Section-D', NULL, 'Present', '2023-01-19', NULL, 1, '2023-01-19 01:19:35', '2023-01-19 01:19:35'),
(157, '8', 'Raj Kumar', '4', NULL, NULL, NULL, 'Class-10', 'Section-D', NULL, 'Half Day', '2023-01-19', NULL, 1, '2023-01-19 01:19:35', '2023-01-19 01:19:35'),
(158, '8', 'Raj Kumar', '7', NULL, NULL, NULL, 'Class-10', 'Section-D', NULL, 'Present', '2023-01-19', NULL, 1, '2023-01-19 02:15:18', '2023-01-19 02:15:18'),
(159, '8', 'Raj Kumar', '4', NULL, NULL, NULL, 'Class-10', 'Section-D', NULL, 'Absent', '2023-02-19', NULL, 1, '2023-01-19 02:15:18', '2023-01-19 02:15:18'),
(160, '8', 'Raj Kumar', '7', NULL, NULL, NULL, 'Class-10', 'Section-D', NULL, 'Late', '2023-03-21', NULL, 1, '2023-01-20 22:56:49', '2023-01-20 22:56:49'),
(161, '8', 'Raj Kumar', '4', NULL, NULL, NULL, 'Class-10', 'Section-D', NULL, 'Present', '2023-02-21', NULL, 1, '2023-01-20 22:56:49', '2023-01-20 22:56:49'),
(162, '8', 'Raj Kumar', '161', NULL, NULL, NULL, 'Class-10', 'Section-A', NULL, 'Present', '2023-05-26', NULL, 1, '2023-05-26 00:47:09', '2023-05-26 00:47:09'),
(163, '8', 'Raj Kumar', '160', NULL, NULL, NULL, 'Class-10', 'Section-A', NULL, 'Late', '2023-05-26', NULL, 1, '2023-05-26 00:47:09', '2023-05-26 00:47:09'),
(164, '8', 'Raj Kumar', '162', NULL, NULL, NULL, 'Class-10', 'Section-B', NULL, 'Half Day', '2023-05-26', NULL, 1, '2023-05-26 00:49:32', '2023-05-26 00:49:32');

-- --------------------------------------------------------

--
-- Table structure for table `student_leave_request`
--

CREATE TABLE `student_leave_request` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `section` varchar(255) DEFAULT NULL,
  `Student_name` varchar(255) DEFAULT NULL,
  `Apply_date` varchar(255) DEFAULT NULL,
  `from_date` varchar(255) DEFAULT NULL,
  `to_date` varchar(255) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `document` longtext DEFAULT NULL,
  `approvalby` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1 = ACTIVE , 0 = INACTIVE 2 = NONE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_leave_request`
--

INSERT INTO `student_leave_request` (`id`, `user_id`, `class`, `section`, `Student_name`, `Apply_date`, `from_date`, `to_date`, `reason`, `document`, `approvalby`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Class-10', 'Section-D', 'Kavya Singh', '2023-01-05', '2023-01-06', '2023-01-08', 'testing', '1672916664.pdf', 'Admin', 0, '2023-01-05 05:34:24', '2023-01-05 05:34:34'),
(2, NULL, 'Class-9', 'Section-C', 'Rahul Yadav', '2023-01-05', '2023-01-06', '2023-01-18', NULL, NULL, 'Raj Kumar(teacher)', 0, '2023-01-05 05:35:05', '2023-06-15 23:39:16'),
(3, NULL, 'Class-10', 'Section-D', 'Abhi kumawat', '2023-01-11', '2023-01-12', '2023-01-13', 'rest', NULL, 'Abhi(teacher)', 0, '2023-01-11 05:30:51', '2023-01-11 05:34:06'),
(4, NULL, 'Class-6', 'Section-B', 'Kavya Singh', '2023-01-12', '2023-01-21', '2023-01-26', 'आराम', NULL, 'Abhi(teacher)', 0, '2023-01-11 23:18:44', '2023-01-11 23:19:05'),
(5, '6', 'Class-7', 'Section-A', 'Deepak Sharma', '19-Jan-2023', '2023-01-20', '2023-01-20', 'tet', '1674126276.csv', 'Admin', 0, '2023-01-19 05:34:36', '2023-06-11 23:26:25'),
(6, '160', 'Class-10', 'Section-A', 'Manish Sharma', '26-May-2023', '2023-05-27', '2023-05-27', 'To go home', '1685084697.pdf', NULL, 1, '2023-05-26 01:34:57', '2023-05-26 01:34:57'),
(7, NULL, 'Class-2', 'Section-D', 'Dinesh yadav', '2023-06-12', '9888-05-05', '275760-03-04', 'bgfxngf', NULL, NULL, 1, '2023-06-11 23:33:46', '2023-06-11 23:33:46'),
(8, NULL, 'Class-10', 'Section-D', 'Dinesh yadav', '2023-06-12', '2023-05-12', '2023-01-05', 'rtfxt', NULL, NULL, 1, '2023-06-11 23:35:34', '2023-06-11 23:35:34'),
(9, '168', 'Class-10', 'Section-A', 'ankit sharma', '17-Jun-2023', '2023-06-17', '2023-06-18', 'Rest', '1686995881.pdf', NULL, 1, '2023-06-17 04:28:01', '2023-06-17 04:28:01');

-- --------------------------------------------------------

--
-- Table structure for table `subject_group`
--

CREATE TABLE `subject_group` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `section` varchar(255) DEFAULT NULL,
  `Subject` varchar(255) DEFAULT NULL,
  `desc` longtext DEFAULT NULL,
  `other` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1 = ACTIVE , 0 = INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subject_group`
--

INSERT INTO `subject_group` (`id`, `user_id`, `name`, `class`, `section`, `Subject`, `desc`, `other`, `status`, `created_at`, `updated_at`) VALUES
(17, NULL, 'Probability and Statistics.', 'Class-10', 'Section-A', '[\"Maths\"]', 'Probability', NULL, 1, '2023-06-17 05:40:26', '2023-06-17 05:40:26');

-- --------------------------------------------------------

--
-- Table structure for table `syllabus`
--

CREATE TABLE `syllabus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session` varchar(255) DEFAULT NULL,
  `content_title` longtext DEFAULT NULL,
  `availabe_for` varchar(255) DEFAULT NULL,
  `syllabus_type` longtext DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `syllabus_file` varchar(255) DEFAULT NULL,
  `other` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1 = ACTIVE , 0 = INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `syllabus`
--

INSERT INTO `syllabus` (`id`, `session`, `content_title`, `availabe_for`, `syllabus_type`, `class`, `subject`, `syllabus_file`, `other`, `status`, `created_at`, `updated_at`) VALUES
(1, '2022-23', 'Testing', 'Students', 'Basic', 'Class-10', 'English', '1673007561.pdf', NULL, 1, '2023-01-06 06:49:21', '2023-01-06 06:49:21'),
(2, '2022-23', 'Testing223', 'Teachers', 'Basic2', 'Class-9', 'Chemistry', '1673010273.pdf', NULL, 1, '2023-01-06 06:50:54', '2023-01-06 07:34:33'),
(4, '2022-23', 'Testing223', 'All', 'Basic', 'Class-10', 'Maths', '1673354083.pdf', NULL, 1, '2023-01-10 07:04:43', '2023-01-10 07:04:43'),
(6, '2022-23', 'Testing223', 'Students', 'Basic', 'Class-6', 'Physics', '1673415499.pdf', NULL, 1, '2023-01-11 00:08:19', '2023-01-11 00:08:19');

-- --------------------------------------------------------

--
-- Table structure for table `upload_content`
--

CREATE TABLE `upload_content` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `content_type` varchar(255) DEFAULT NULL,
  `availabe_for` varchar(255) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `section` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `desc` longtext DEFAULT NULL,
  `document` varchar(255) DEFAULT NULL,
  `other` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1 = ACTIVE , 0 = INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `upload_content`
--

INSERT INTO `upload_content` (`id`, `user_id`, `name`, `content_type`, `availabe_for`, `class`, `section`, `date`, `desc`, `document`, `other`, `status`, `created_at`, `updated_at`) VALUES
(2, NULL, 'SDSD', 'syllabus', '[\"All Admin\",\"All Student\",\"Available For All Classes\"]', 'Class-9', 'Section-D', '2022-12-15', 'test', NULL, NULL, 1, '2022-12-28 03:34:20', '2022-12-28 04:36:56'),
(3, NULL, 'Test user', 'Study Material', '[\"All Admin\"]', 'Class-4', 'Section-C', '2022-12-15', '00000000', '1672218322.pdf', NULL, 1, '2022-12-28 03:35:22', '2022-12-28 04:38:11'),
(5, NULL, 'annual', 'syllabus', '[\"All Admin\",\"All Student\",\"Available For All Classes\"]', 'Class-9', 'Section-D', '2022-12-22', 'test', NULL, NULL, 1, '2022-12-28 03:34:20', '2023-05-05 04:56:59'),
(10, NULL, 'annual examination', 'Study Material', '[\"All Student\",\"Available For All Classes\"]', 'Class-10', 'Section-A', '2023-05-26', 'When I was a junior in high school in East Orange', '1685085150.pdf', NULL, 1, '2023-05-26 01:42:30', '2023-05-26 01:42:30');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rand_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `school_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` int(11) NOT NULL DEFAULT 1 COMMENT '1=Admin',
  `conform_password` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `about` varchar(255) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `otp` int(11) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `add` longtext DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `plan_type` varchar(255) DEFAULT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `end_date` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1 = ACTIVE , 0 = INACTIVE',
  `user_block` int(11) NOT NULL DEFAULT 0 COMMENT '1 = ACTIVE , 0 = INACTIVE',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `rand_id`, `name`, `school_name`, `email`, `password`, `role`, `conform_password`, `image`, `about`, `job`, `otp`, `country`, `add`, `phone`, `plan_type`, `start_date`, `end_date`, `status`, `user_block`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'BTS494548', 'Amit Kumar', 'BT School', 'brixcodetechnologies@gmail.com', '$2y$10$mdzdYLf3773ePN.7/p6Jp.Ya4ZLIsjSnFjfOEjKwhSF/ywr5hASLi', 1, 'bt@1234567', NULL, NULL, NULL, NULL, NULL, 'Mansarovar Jaipur', '9116611645', '365', '2023-06-28 12:47:38', '2024-06-27 12:47:37', 1, 0, NULL, '2023-06-28 12:47:38', '2023-06-28 12:47:38'),
(3, 'BTS452131', 'Ashok Kumar', 'Test School', 'vaishnavamit2@gmail.com', '$2y$10$fNV0/senfwZj/GTkqCYBh.6aEERrbLNhRCfXCVywC.yIQUJg73TD2', 1, 'Amitk@2207', NULL, NULL, NULL, NULL, NULL, 'Mansarovar Jaipur', '9829577677', '365', '2023-06-28 12:59:30', '2024-06-27 12:59:30', 1, 0, NULL, '2023-06-28 12:59:30', '2023-06-28 12:59:30'),
(4, 'BTS919761', 'Sooraj Singh Khatri', 'Convent School', 'sooraj@gmail.com', '$2y$10$GEjhFG0HhpvLkyFXXuHFD.irftqAjQt05uld6nZP4/Jm4KsKY64xC', 1, 'sooraj@123456', NULL, NULL, NULL, NULL, NULL, 'Rajatpath(Mansarovar), Jaipur', '9116611645', '365', '2023-06-29 06:30:56', '2024-06-28 06:30:56', 1, 0, NULL, '2023-06-29 06:30:56', '2023-06-29 10:52:31'),
(5, 'BTS800931', 'Sooraj Singh Khatri', 'India Public School', 'india@gmail.com', '$2y$10$VPDdvseR27YdOOfzVfJNkebTZlB1MGpXRYFTUVu3zX2Qrn.6dYqUO', 1, 'india@1234567', NULL, NULL, NULL, NULL, NULL, 'Rajatpath(Mansarovar), Jaipur', '9116611645', '730', '2023-06-29 06:38:51', '2025-06-28 06:38:51', 1, 0, NULL, '2023-06-29 06:38:51', '2023-06-29 06:38:51'),
(6, 'BTS595436', 'Rahul Yadav', 'Rahul Public Sr,. Sec. School', 'rahul@gmail.com', '$2y$10$B1X.lh4/AkWUPzUD9/9NKOsVNX.G91c6zkwIxm29tZWxM8tjvfUIS', 1, '123456', NULL, NULL, NULL, NULL, NULL, 'Jaipur', '9116611645', '730', '2023-06-30 05:50:04', '2025-06-29 05:50:04', 1, 0, NULL, '2023-06-30 05:50:04', '2023-06-30 05:50:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addmission_enquiry`
--
ALTER TABLE `addmission_enquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_attend_staff`
--
ALTER TABLE `add_attend_staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_class`
--
ALTER TABLE `add_class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_class_time`
--
ALTER TABLE `add_class_time`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_collect_fees`
--
ALTER TABLE `add_collect_fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_department`
--
ALTER TABLE `add_department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_exam_group`
--
ALTER TABLE `add_exam_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_expense`
--
ALTER TABLE `add_expense`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_income`
--
ALTER TABLE `add_income`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_leave_type`
--
ALTER TABLE `add_leave_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_lesson`
--
ALTER TABLE `add_lesson`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_notice`
--
ALTER TABLE `add_notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_phone_call`
--
ALTER TABLE `add_phone_call`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_promote_student`
--
ALTER TABLE `add_promote_student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_section`
--
ALTER TABLE `add_section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_staff`
--
ALTER TABLE `add_staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_subject`
--
ALTER TABLE `add_subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_teacher_time`
--
ALTER TABLE `add_teacher_time`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_topic`
--
ALTER TABLE `add_topic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_visitor`
--
ALTER TABLE `add_visitor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_logins`
--
ALTER TABLE `admin_logins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assign_teacher`
--
ALTER TABLE `assign_teacher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_results`
--
ALTER TABLE `exam_results`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `exam_results_add_no_unique` (`add_no`);

--
-- Indexes for table `exam_schedule`
--
ALTER TABLE `exam_schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_head`
--
ALTER TABLE `expense_head`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `fees_discount`
--
ALTER TABLE `fees_discount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fees_group`
--
ALTER TABLE `fees_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fees_master`
--
ALTER TABLE `fees_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fees_type`
--
ALTER TABLE `fees_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `front_cms_career_request`
--
ALTER TABLE `front_cms_career_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `front_cms_contact_request`
--
ALTER TABLE `front_cms_contact_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `front_cms_gallery`
--
ALTER TABLE `front_cms_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `front_cms_openings`
--
ALTER TABLE `front_cms_openings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `front_cms_openings_request`
--
ALTER TABLE `front_cms_openings_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `front_cms_parents`
--
ALTER TABLE `front_cms_parents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `front_cms_setting`
--
ALTER TABLE `front_cms_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `front_cms_teacher`
--
ALTER TABLE `front_cms_teacher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_setting`
--
ALTER TABLE `general_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homework`
--
ALTER TABLE `homework`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `income_head`
--
ALTER TABLE `income_head`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_request`
--
ALTER TABLE `leave_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `report_cards`
--
ALTER TABLE `report_cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `school__information`
--
ALTER TABLE `school__information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_admission`
--
ALTER TABLE `student_admission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_attendance`
--
ALTER TABLE `student_attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_leave_request`
--
ALTER TABLE `student_leave_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject_group`
--
ALTER TABLE `subject_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `syllabus`
--
ALTER TABLE `syllabus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upload_content`
--
ALTER TABLE `upload_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addmission_enquiry`
--
ALTER TABLE `addmission_enquiry`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `add_attend_staff`
--
ALTER TABLE `add_attend_staff`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `add_class`
--
ALTER TABLE `add_class`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `add_class_time`
--
ALTER TABLE `add_class_time`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `add_collect_fees`
--
ALTER TABLE `add_collect_fees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `add_department`
--
ALTER TABLE `add_department`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `add_exam_group`
--
ALTER TABLE `add_exam_group`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `add_expense`
--
ALTER TABLE `add_expense`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `add_income`
--
ALTER TABLE `add_income`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `add_leave_type`
--
ALTER TABLE `add_leave_type`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `add_lesson`
--
ALTER TABLE `add_lesson`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `add_notice`
--
ALTER TABLE `add_notice`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `add_phone_call`
--
ALTER TABLE `add_phone_call`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `add_promote_student`
--
ALTER TABLE `add_promote_student`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `add_section`
--
ALTER TABLE `add_section`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `add_staff`
--
ALTER TABLE `add_staff`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `add_subject`
--
ALTER TABLE `add_subject`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `add_teacher_time`
--
ALTER TABLE `add_teacher_time`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `add_topic`
--
ALTER TABLE `add_topic`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `add_visitor`
--
ALTER TABLE `add_visitor`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_logins`
--
ALTER TABLE `admin_logins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assign_teacher`
--
ALTER TABLE `assign_teacher`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `exam_results`
--
ALTER TABLE `exam_results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `exam_schedule`
--
ALTER TABLE `exam_schedule`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `expense_head`
--
ALTER TABLE `expense_head`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fees_discount`
--
ALTER TABLE `fees_discount`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `fees_group`
--
ALTER TABLE `fees_group`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fees_master`
--
ALTER TABLE `fees_master`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `fees_type`
--
ALTER TABLE `fees_type`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `front_cms_career_request`
--
ALTER TABLE `front_cms_career_request`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `front_cms_contact_request`
--
ALTER TABLE `front_cms_contact_request`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `front_cms_gallery`
--
ALTER TABLE `front_cms_gallery`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `front_cms_openings`
--
ALTER TABLE `front_cms_openings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `front_cms_openings_request`
--
ALTER TABLE `front_cms_openings_request`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `front_cms_parents`
--
ALTER TABLE `front_cms_parents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `front_cms_setting`
--
ALTER TABLE `front_cms_setting`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `front_cms_teacher`
--
ALTER TABLE `front_cms_teacher`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `general_setting`
--
ALTER TABLE `general_setting`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `homework`
--
ALTER TABLE `homework`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `income_head`
--
ALTER TABLE `income_head`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `leave_request`
--
ALTER TABLE `leave_request`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=427;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `report_cards`
--
ALTER TABLE `report_cards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `school__information`
--
ALTER TABLE `school__information`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_admission`
--
ALTER TABLE `student_admission`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=773;

--
-- AUTO_INCREMENT for table `student_attendance`
--
ALTER TABLE `student_attendance`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `student_leave_request`
--
ALTER TABLE `student_leave_request`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `subject_group`
--
ALTER TABLE `subject_group`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `syllabus`
--
ALTER TABLE `syllabus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `upload_content`
--
ALTER TABLE `upload_content`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
