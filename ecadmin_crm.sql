-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 26, 2023 at 09:08 AM
-- Server version: 5.7.39
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecadmin_crm`
--

-- --------------------------------------------------------

--
-- Table structure for table `administration`
--

CREATE TABLE `administration` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `administration`
--

INSERT INTO `administration` (`id`, `name`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `a_bank`
--

CREATE TABLE `a_bank` (
  `id` int(11) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `holder_name` varchar(255) NOT NULL,
  `account_number` varchar(255) NOT NULL,
  `center_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `a_bank`
--

INSERT INTO `a_bank` (`id`, `bank_name`, `holder_name`, `account_number`, `center_id`) VALUES
(1, 'Maybank', 'Danny', '512642643065', 9);

-- --------------------------------------------------------

--
-- Table structure for table `a_customer`
--

CREATE TABLE `a_customer` (
  `id` int(11) NOT NULL,
  `center_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `race` varchar(255) NOT NULL,
  `ic` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `passport_on_hand` varchar(255) DEFAULT NULL,
  `martial` varchar(255) DEFAULT NULL,
  `no_child` varchar(255) DEFAULT NULL,
  `current_address` varchar(255) DEFAULT NULL,
  `current_city` varchar(255) DEFAULT NULL,
  `current_post_code` varchar(255) DEFAULT NULL,
  `current_state` varchar(255) DEFAULT NULL,
  `current_remark` varchar(255) DEFAULT NULL,
  `current_ownership` varchar(255) DEFAULT NULL,
  `current_stay` varchar(255) DEFAULT NULL,
  `fixed_address` varchar(255) DEFAULT NULL,
  `fixed_city` varchar(255) DEFAULT NULL,
  `fixed_post_code` varchar(255) DEFAULT NULL,
  `fixed_state` varchar(255) DEFAULT NULL,
  `fixed_remark` varchar(255) DEFAULT NULL,
  `fixed_ownership` varchar(255) DEFAULT NULL,
  `fixed_stay` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `fb` varchar(255) DEFAULT NULL,
  `personal_remark` varchar(255) DEFAULT NULL,
  `car_plate` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `company_date` varchar(255) DEFAULT NULL,
  `employment_type` varchar(255) DEFAULT NULL,
  `employment_no` varchar(255) DEFAULT NULL,
  `company_address` varchar(255) DEFAULT NULL,
  `company_city` varchar(255) DEFAULT NULL,
  `company_post_code` varchar(255) DEFAULT NULL,
  `company_state` varchar(255) DEFAULT NULL,
  `business_remark` varchar(255) DEFAULT NULL,
  `company_ownership` varchar(255) DEFAULT NULL,
  `business_type` varchar(255) DEFAULT NULL,
  `income_type` varchar(255) DEFAULT NULL,
  `occupation` varchar(255) DEFAULT NULL,
  `income_date` varchar(255) DEFAULT NULL,
  `department_position` varchar(255) DEFAULT NULL,
  `income_per_term` varchar(255) DEFAULT NULL,
  `company_tel` varchar(255) DEFAULT NULL,
  `company_remark` varchar(255) DEFAULT NULL,
  `guarantor1_name` varchar(255) DEFAULT NULL,
  `guarantor1_relationship` varchar(255) DEFAULT NULL,
  `guarantor1_ic` varchar(255) DEFAULT NULL,
  `guarantor1_verify` varchar(255) DEFAULT NULL,
  `guarantor1_tel` varchar(255) DEFAULT NULL,
  `guarantor2_name` varchar(255) DEFAULT NULL,
  `guarantor2_relationship` varchar(255) DEFAULT NULL,
  `guarantor2_ic` varchar(255) DEFAULT NULL,
  `guarantor2_verify` varchar(255) DEFAULT NULL,
  `guarantor2_tel` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `bank_card` varchar(255) DEFAULT NULL,
  `bank_account` varchar(255) DEFAULT NULL,
  `bank_pin` varchar(255) DEFAULT NULL,
  `bank_holder` varchar(255) DEFAULT NULL,
  `bank_remark` varchar(255) DEFAULT NULL,
  `ic_copy` varchar(255) DEFAULT NULL,
  `portrait` varchar(255) DEFAULT NULL,
  `ctos` varchar(255) DEFAULT NULL,
  `photo_consent` varchar(255) DEFAULT NULL,
  `vehicle_photo` varchar(255) DEFAULT NULL,
  `loan_agreement` varchar(255) DEFAULT NULL,
  `bank_statement1` varchar(255) DEFAULT NULL,
  `bank_statement2` varchar(255) DEFAULT NULL,
  `bank_statement3` varchar(255) DEFAULT NULL,
  `pay_slip1` varchar(255) DEFAULT NULL,
  `pay_slip2` varchar(255) DEFAULT NULL,
  `pay_slip3` varchar(255) DEFAULT NULL,
  `created_date` date NOT NULL,
  `created_time` time NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `a_customer`
--

INSERT INTO `a_customer` (`id`, `center_id`, `name`, `race`, `ic`, `gender`, `passport_on_hand`, `martial`, `no_child`, `current_address`, `current_city`, `current_post_code`, `current_state`, `current_remark`, `current_ownership`, `current_stay`, `fixed_address`, `fixed_city`, `fixed_post_code`, `fixed_state`, `fixed_remark`, `fixed_ownership`, `fixed_stay`, `mobile`, `email`, `tel`, `fb`, `personal_remark`, `car_plate`, `company_name`, `company_date`, `employment_type`, `employment_no`, `company_address`, `company_city`, `company_post_code`, `company_state`, `business_remark`, `company_ownership`, `business_type`, `income_type`, `occupation`, `income_date`, `department_position`, `income_per_term`, `company_tel`, `company_remark`, `guarantor1_name`, `guarantor1_relationship`, `guarantor1_ic`, `guarantor1_verify`, `guarantor1_tel`, `guarantor2_name`, `guarantor2_relationship`, `guarantor2_ic`, `guarantor2_verify`, `guarantor2_tel`, `bank_name`, `bank_card`, `bank_account`, `bank_pin`, `bank_holder`, `bank_remark`, `ic_copy`, `portrait`, `ctos`, `photo_consent`, `vehicle_photo`, `loan_agreement`, `bank_statement1`, `bank_statement2`, `bank_statement3`, `pay_slip1`, `pay_slip2`, `pay_slip3`, `created_date`, `created_time`, `status`) VALUES
(7, 9, '0987654321Â·', 'Chinese', '0987654321', 'Female', 'No', '--- Select Martial Status ---', '0', '', '', '', '--- Select State ---', '', '--- Select Ownership ---', '', '', '', '', '--- Select State ---', '', '--- Select Ownership ---', '', '', '', '', '', '', '', '', '', '--- Select Employment Type ---', '', '', '', '', '--- Select State ---', '', '--- Select Ownership ---', '', '--- Select Income Type ---', '--- Select Occupation Category ---', '--- Select Income Date ---', '', '', '', '', '', '', '', '--- Select Verify ---', '', '', '', '', '--- Select Verify ---', '', '--- Select Bank ---', 'Not Available', '', '', '', '', 'upload202303071678158514/123.jpeg', NULL, NULL, 'upload202303171679023626/123.jpeg', 'upload202303171679023728/user-logo.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-07', '11:08:34', 'Active'),
(8, 9, '123', '', '213', '', 'No', '--- Select Martial Status ---', '4', '', '', '', '--- Select State ---', '', '--- Select Ownership ---', '', '', '', '', '--- Select State ---', '', '--- Select Ownership ---', '', '', '', '', '', '', '', '', '', '--- Select Employment Type ---', '', '', '', '', '--- Select State ---', '', '--- Select Ownership ---', '', '--- Select Income Type ---', '--- Select Occupation Category ---', '--- Select Income Date ---', '', '', '', '', '', '', '', '--- Select Verify ---', '', '', '', '', '--- Select Verify ---', '', '--- Select Bank ---', 'Not Available', '', '', '', '', NULL, 'upload202303071678158885/123.jpeg', NULL, 'upload202303171679023626/123.jpeg', 'upload202303171679023728/user-logo.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-07', '11:14:45', 'Active'),
(9, 9, '1234', 'Chinese', '1234566778', 'Female', 'No', 'Single', '', '', '', '', '--- Select State ---', '', '--- Select Ownership ---', '', '', '', '', '--- Select State ---', '', '--- Select Ownership ---', '', '', '', '', '', '', '', '', '', '--- Select Employment Type ---', '', '', '', '', '--- Select State ---', '', '--- Select Ownership ---', '', '--- Select Income Type ---', '--- Select Occupation Category ---', '--- Select Income Date ---', '', '', '', '', '', '', '', '--- Select Verify ---', '', '', '', '', '--- Select Verify ---', '', '--- Select Bank ---', 'Not Available', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-18', '16:42:11', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `a_instalment`
--

CREATE TABLE `a_instalment` (
  `id` int(11) NOT NULL,
  `loan_id` int(11) NOT NULL,
  `payment_due` datetime NOT NULL,
  `due_amount` double NOT NULL,
  `late_charge` double NOT NULL,
  `cs_remark` varchar(255) NOT NULL,
  `cs_collector_remark` varchar(255) NOT NULL,
  `dept_collector_remark` varchar(255) NOT NULL,
  `settle_by` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `a_instalment`
--

INSERT INTO `a_instalment` (`id`, `loan_id`, `payment_due`, `due_amount`, `late_charge`, `cs_remark`, `cs_collector_remark`, `dept_collector_remark`, `settle_by`, `status`) VALUES
(4, 7, '2023-03-16 11:41:00', 475, 0, '', '', '', 'Not Yet Settle/Confirm', 'Unpaid'),
(5, 7, '2023-03-23 00:00:00', 475, 0, '', '', '', 'Not Yet Settle/Confirm', 'Unpaid'),
(6, 8, '2023-03-16 11:41:00', 475, 0, '5', '2', '', 'Not Yet Settle/Confirm', 'Unpaid'),
(7, 8, '2023-03-23 00:00:00', 475, 0, '3', '4', '', 'Not Yet Settle/Confirm', 'Unpaid'),
(8, 9, '2023-02-25 15:46:00', 475, 0, '', '', '', 'Not Yet Settle/Confirm', 'Unpaid'),
(9, 9, '2023-03-04 00:00:00', 475, 0, '', '', '', 'Not Yet Settle/Confirm', 'Unpaid'),
(10, 10, '2023-02-25 15:46:00', 475, 0, '1', '2', '', 'Customer', 'Unpaid'),
(11, 10, '2023-03-04 00:00:00', 475, 0, '3', '4', '', 'Customer', 'Unpaid'),
(12, 11, '2023-02-01 16:55:00', 450, 0, '', '', '', 'Not Yet Settle/Confirm', 'Unpaid'),
(13, 11, '2023-02-08 00:00:00', 450, 0, '', '', '', 'Not Yet Settle/Confirm', 'Unpaid');

-- --------------------------------------------------------

--
-- Table structure for table `a_loan`
--

CREATE TABLE `a_loan` (
  `id` int(11) NOT NULL,
  `customer` int(11) NOT NULL,
  `branch1` varchar(255) NOT NULL,
  `branch2` varchar(255) NOT NULL,
  `is_pawn` varchar(255) NOT NULL,
  `pawn_category` varchar(255) NOT NULL,
  `pawn_item` varchar(255) NOT NULL,
  `pawn_image1` varchar(255) NOT NULL,
  `pawn_image2` varchar(255) NOT NULL,
  `pawn_image3` varchar(255) NOT NULL,
  `contra_loan` varchar(255) NOT NULL,
  `contra_amount` double NOT NULL,
  `application_date` datetime NOT NULL,
  `loan_source` varchar(255) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime DEFAULT NULL,
  `loan_method` varchar(255) NOT NULL,
  `dept_period` int(11) NOT NULL,
  `loan_package` varchar(255) NOT NULL,
  `dept_type` varchar(255) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `instalment_period` int(11) NOT NULL,
  `principal_amount` double NOT NULL,
  `instalment_type` varchar(255) NOT NULL,
  `deposit_amount` double NOT NULL,
  `interest` double NOT NULL,
  `application_fee` double NOT NULL,
  `interest_fixed` double NOT NULL,
  `payment_upfront` double NOT NULL,
  `only_interest` int(11) NOT NULL,
  `loan_agreement` varchar(255) DEFAULT NULL,
  `loan_stamping` varchar(255) DEFAULT NULL,
  `collection_in_progress` varchar(255) NOT NULL DEFAULT 'No',
  `follow_up_date` date DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Normal'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `a_loan`
--

INSERT INTO `a_loan` (`id`, `customer`, `branch1`, `branch2`, `is_pawn`, `pawn_category`, `pawn_item`, `pawn_image1`, `pawn_image2`, `pawn_image3`, `contra_loan`, `contra_amount`, `application_date`, `loan_source`, `start_date`, `end_date`, `loan_method`, `dept_period`, `loan_package`, `dept_type`, `remark`, `instalment_period`, `principal_amount`, `instalment_type`, `deposit_amount`, `interest`, `application_fee`, `interest_fixed`, `payment_upfront`, `only_interest`, `loan_agreement`, `loan_stamping`, `collection_in_progress`, `follow_up_date`, `status`) VALUES
(7, 8, '', '', 'No', '', '', '', '', '', '', 0, '2023-03-16 11:41:00', 'JB (Inquiry)', '2023-03-16 11:41:00', NULL, 'OBL Method', 2, 'Normal', 'Weekly', '', 0, 1000, '', 0, 0, 250, 0, 50, 0, NULL, NULL, 'No', '2023-03-16', 'Normal'),
(8, 8, '', '', 'No', '', '', '', '', '', '', 0, '2023-03-16 11:41:00', 'JB (Inquiry)', '2023-03-16 11:41:00', NULL, 'OBL Method', 2, 'Normal', 'Weekly', '', 0, 1000, '', 0, 0, 250, 0, 50, 0, 'upload202303171679038364/123.jpeg', 'upload202303171679038515/user-logo.png', 'No', '2023-03-16', 'Normal'),
(9, 8, '', '', 'No', '', '', '', '', '', '', 0, '2023-02-25 15:46:00', 'JB (Inquiry)', '2023-02-25 15:46:00', '2023-03-11 00:00:00', 'Normal', 2, 'Normal', 'Weekly', '', 0, 1000, 'Weekly', 0, 0, 250, 0, 50, 0, NULL, NULL, 'No', '2023-02-25', 'Normal'),
(10, 8, '', '', 'No', '', '', '', '', '', '', 0, '2023-02-25 15:46:00', 'JB (Inquiry)', '2023-02-25 15:46:00', '2023-03-04 00:00:00', 'Normal', 2, 'Normal', 'Weekly', '', 0, 1000, 'Weekly', 0, 0, 250, 0, 50, 0, NULL, NULL, 'No', '2023-02-25', 'Normal'),
(11, 9, '', '', 'No', '', '', '', '', '', '', 0, '2023-02-01 16:55:00', 'KL (Inquiry)', '2023-02-01 16:55:00', '2023-02-08 00:00:00', 'OBL Method', 2, 'Normal', 'Weekly', '', 0, 1000, '', 100, 0, 100, 0, 100, 0, 'upload202303201679281106/123.jpeg', 'upload202303201679281407/123.jpeg', 'No', '2023-02-01', 'Normal');

-- --------------------------------------------------------

--
-- Table structure for table `a_payment`
--

CREATE TABLE `a_payment` (
  `id` int(11) NOT NULL,
  `loan_id` int(11) NOT NULL,
  `instalment_id` int(11) NOT NULL,
  `by_agent` varchar(255) NOT NULL DEFAULT 'No',
  `slip` varchar(255) NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `payment_on` datetime NOT NULL,
  `payment_amount` double NOT NULL,
  `bank_charge` double NOT NULL,
  `out_bank` varchar(255) NOT NULL,
  `out_name` varchar(255) NOT NULL,
  `out_account` varchar(255) NOT NULL,
  `in_bank` varchar(255) NOT NULL,
  `in_name` varchar(255) NOT NULL,
  `in_account` varchar(255) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `a_payment`
--

INSERT INTO `a_payment` (`id`, `loan_id`, `instalment_id`, `by_agent`, `slip`, `payment_type`, `payment_on`, `payment_amount`, `bank_charge`, `out_bank`, `out_name`, `out_account`, `in_bank`, `in_name`, `in_account`, `remark`, `status`) VALUES
(7, 11, 12, 'No', '', 'Out', '2023-03-20 10:57:36', 900, 0, 'Maybank', 'Danny', '512642643065', '', '', '', '', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `center_detail`
--

CREATE TABLE `center_detail` (
  `id` int(11) NOT NULL,
  `center_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address_1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telephone_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telephone_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_sequence` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `center_detail`
--

INSERT INTO `center_detail` (`id`, `center_name`, `address_1`, `address_2`, `address_3`, `address_4`, `telephone_1`, `telephone_2`, `fax`, `show_sequence`) VALUES
(1, 'Center A', 'Center A address', '', '', '', '0123456789', '', '-', '1'),
(2, 'Center B', 'Center B address', '', '', '', '0123456789', '', '-', '2'),
(3, 'First 1', 'First 1', '', '', '', '0123+', '', '0123+', '3'),
(4, 'Example', '123', '', '', '', '123', '', '123', '4'),
(5, 'System 88', '-', '', '', '', '-', '', '-', '5'),
(6, 'AX Curtain', 'AX Curtain', '', '', '', '-', '', '-', '6'),
(9, 'OBL System', 'OBL', '', '', '', '-', '', '-', '7'),
(10, 'test', 'test', '', '', '', '0123456789', '', '-', '8');

-- --------------------------------------------------------

--
-- Table structure for table `collection`
--

CREATE TABLE `collection` (
  `id` int(11) NOT NULL,
  `card_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` int(11) DEFAULT '0',
  `interest` int(11) DEFAULT '0',
  `center_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `d_date_disp` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `days` int(11) DEFAULT NULL,
  `remark1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` longblob,
  `image_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_size` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `collection`
--

INSERT INTO `collection` (`id`, `card_id`, `amount`, `interest`, `center_id`, `d_date_disp`, `days`, `remark1`, `remark2`, `image`, `image_name`, `image_size`, `image_type`) VALUES
(1, '1', 200, 100, '1', '1665331200', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, '21', 0, 200, '5', '1670342400', 0, 'åˆ©', '', NULL, NULL, NULL, NULL),
(20, '22', 300, 0, '5', '1671206400', 0, 'ä¾†éŒ¢', '', NULL, NULL, NULL, NULL),
(21, '24', 250, 0, '5', '1670774400', 0, 'æ¸…', '', NULL, NULL, NULL, NULL),
(22, '25', 300, 0, '5', '1671033600', 0, 'æ¸…', '', NULL, NULL, NULL, NULL),
(42, '26', 0, 400, '5', '1670947200', 1, 'åˆ†æœŸ', '', NULL, NULL, NULL, NULL),
(43, '26', 0, 200, '5', '1671033600', 0, 'ä¾†æœŸ', '', NULL, NULL, NULL, NULL),
(44, '26', 0, 200, '5', '1671552000', 2, 'åˆ†æœŸ', '', NULL, NULL, NULL, NULL),
(46, '27', 1000, 1000, '5', '1673193600', 1, 'åˆ†æœŸ', '1', NULL, NULL, NULL, NULL),
(48, '29', 100, 100, '5', '1673884800', 6, 'ä¾†åˆ©', '', NULL, NULL, NULL, NULL),
(49, '29', 500, 500, '5', '1673971200', 0, 'æ¸…', '', NULL, NULL, NULL, NULL),
(50, '29', 0, 100, '5', '1673884800', 0, 'ä¾†åˆ©', '', NULL, NULL, NULL, NULL),
(55, '31', 200, 0, '5', '1673366400', 7, 'ä¾†éŒ¢', '', NULL, NULL, NULL, NULL),
(56, '31', 0, 200, '5', '1673971200', 0, 'åˆ©', '', NULL, NULL, NULL, NULL),
(57, '31', 0, 200, '5', '1673971200', 7, 'åˆ©', '', NULL, NULL, NULL, NULL),
(58, '31', 0, 200, '5', '1673798400', 0, 'åˆ©', '', NULL, NULL, NULL, NULL),
(59, '31', 0, 200, '5', '1673971200', 0, 'åˆ©', '', NULL, NULL, NULL, NULL),
(61, '21', 0, 50, '5', '1670515200', 0, 'ä¾†åˆ©', '', NULL, NULL, NULL, NULL),
(63, '31', 0, 200, '5', '1673452800', 1, 'åˆ†æœŸ', '', NULL, NULL, NULL, NULL),
(64, '31', 0, 100, '5', '1673366400', 0, 'ä¾†æœŸ', '', NULL, NULL, NULL, NULL),
(65, '31', 0, 200, '5', '1673971200', 10, 'åˆ†æœŸ', '', NULL, NULL, NULL, NULL),
(66, '31', 1000, 0, '5', '1673971200', 0, 'æ¸…', '', NULL, NULL, NULL, NULL),
(67, '32', 0, 200, '5', '1674057600', 0, 'åˆ©', '', NULL, NULL, NULL, NULL),
(68, '32', 0, 100, '5', '1674144000', 0, 'ä¾†åˆ©', '', NULL, NULL, NULL, NULL),
(69, '32', 0, 800, '5', '1674316800', 0, 'æ¸…', '', NULL, NULL, NULL, NULL),
(70, '28', 1000, 0, '5', '1673539200', 0, 'æ¸…', '', NULL, NULL, NULL, NULL),
(71, '28', 0, 0, '5', '1673539200', 0, 'æ¸…', '', NULL, NULL, NULL, NULL),
(72, '33', 0, 200, '5', '1673971200', 0, 'åˆ©', '', NULL, NULL, NULL, NULL),
(73, '33', 0, 100, '5', '1674057600', 0, 'ä¾†åˆ©', '', NULL, NULL, NULL, NULL),
(75, '34', 350, 0, '5', '1675180800', 1, 'åˆ†æœŸ', 'åˆ†8æœŸ/350 æ¯ä¸ªæœˆ1-2å·è¿˜', NULL, NULL, NULL, NULL),
(93, '20', 0, 300, '5', '1675267200', 0, 'ä¾†éŒ¢', '', NULL, NULL, NULL, NULL),
(94, '33', 0, 150, '5', '1675353600', 0, 'åˆ©', '', NULL, NULL, NULL, NULL),
(95, '33', 100, 0, '5', '1675353600', 0, 'ä¾†éŒ¢', '', NULL, NULL, NULL, NULL),
(96, '35', 100, 0, '5', '1675353600', 0, 'æ¸…', '', NULL, NULL, NULL, NULL),
(97, '33', 0, 150, '5', '1675612800', 1, 'åˆ†æœŸ', '', NULL, NULL, NULL, NULL),
(98, '22', 0, 200, '5', '1675612800', 0, 'åˆ©', '', NULL, NULL, NULL, NULL),
(99, '37', 0, 200, '5', '1675008000', 0, 'åˆ©', '', NULL, NULL, NULL, NULL),
(102, '36', 0, 250, '5', '1675180800', 0, 'åˆ©', '', NULL, NULL, NULL, NULL),
(105, '36', 500, 0, '5', '1676044800', 0, 'æ¸…', '', NULL, NULL, NULL, NULL),
(106, '38', 0, 0, '5', '1675094400', 0, 'åˆ©', 'JAM', NULL, NULL, NULL, NULL),
(111, '20', 0, 150, '5', '1671206400', 9, 'åˆ©', '', NULL, NULL, NULL, NULL),
(112, '20', 0, 150, '5', '1672156800', 9, 'åˆ©', '', NULL, NULL, NULL, NULL),
(113, '61', 500, 0, '5', '1678204800', 0, 'æ¸…', '', NULL, NULL, NULL, NULL),
(114, '62', 500, 0, '5', '1678204800', 0, 'æ¸…', '', NULL, NULL, NULL, NULL),
(117, '63', 0, 0, '10', '1678464000', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(118, '64', 100, 0, '10', '1678464000', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(119, '65', 0, 0, '10', '1678464000', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(120, '66', 100, 0, '10', '1678464000', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672225149_588_administration`
--

CREATE TABLE `crm_1672225149_588_administration` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672225149_588_center_detail`
--

CREATE TABLE `crm_1672225149_588_center_detail` (
  `id` int(11) NOT NULL,
  `center_name` varchar(255) NOT NULL,
  `address_1` varchar(255) NOT NULL,
  `address_2` varchar(255) DEFAULT NULL,
  `address_3` varchar(255) DEFAULT NULL,
  `address_4` varchar(255) DEFAULT NULL,
  `telephone_1` varchar(255) DEFAULT NULL,
  `telephone_2` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `show_sequence` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672225149_588_collection`
--

CREATE TABLE `crm_1672225149_588_collection` (
  `id` int(11) NOT NULL,
  `card_id` varchar(255) NOT NULL,
  `amount` int(11) DEFAULT '0',
  `interest` int(11) DEFAULT '0',
  `center_id` varchar(255) DEFAULT NULL,
  `d_date_disp` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672225149_588_customers_card`
--

CREATE TABLE `crm_1672225149_588_customers_card` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `center_id` int(11) NOT NULL,
  `amt_per_day` varchar(255) DEFAULT NULL,
  `no_of_terms` varchar(255) DEFAULT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `advance` varchar(255) DEFAULT NULL,
  `loan_out` varchar(255) DEFAULT NULL,
  `deposit` varchar(255) DEFAULT NULL,
  `crossed` varchar(255) DEFAULT NULL,
  `crossed_date` varchar(100) DEFAULT NULL,
  `profit` varchar(255) DEFAULT NULL,
  `clear_payment` varchar(50) NOT NULL,
  `user_agent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672225149_588_customer_expenses`
--

CREATE TABLE `crm_1672225149_588_customer_expenses` (
  `id` int(11) NOT NULL,
  `center_id` int(11) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `misc` varchar(255) DEFAULT NULL,
  `repair` varchar(255) DEFAULT NULL,
  `advance` varchar(255) DEFAULT NULL,
  `outbalance` varchar(255) DEFAULT NULL,
  `inbalance` varchar(255) DEFAULT NULL,
  `card_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672225149_588_recently_login`
--

CREATE TABLE `crm_1672225149_588_recently_login` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672225149_588_users`
--

CREATE TABLE `crm_1672225149_588_users` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `center_id` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672225340_385_administration`
--

CREATE TABLE `crm_1672225340_385_administration` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672225340_385_center_detail`
--

CREATE TABLE `crm_1672225340_385_center_detail` (
  `id` int(11) NOT NULL,
  `center_name` varchar(255) NOT NULL,
  `address_1` varchar(255) NOT NULL,
  `address_2` varchar(255) DEFAULT NULL,
  `address_3` varchar(255) DEFAULT NULL,
  `address_4` varchar(255) DEFAULT NULL,
  `telephone_1` varchar(255) DEFAULT NULL,
  `telephone_2` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `show_sequence` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672225340_385_collection`
--

CREATE TABLE `crm_1672225340_385_collection` (
  `id` int(11) NOT NULL,
  `card_id` varchar(255) NOT NULL,
  `amount` int(11) DEFAULT '0',
  `interest` int(11) DEFAULT '0',
  `center_id` varchar(255) DEFAULT NULL,
  `d_date_disp` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672225340_385_customers_card`
--

CREATE TABLE `crm_1672225340_385_customers_card` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `center_id` int(11) NOT NULL,
  `amt_per_day` varchar(255) DEFAULT NULL,
  `no_of_terms` varchar(255) DEFAULT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `advance` varchar(255) DEFAULT NULL,
  `loan_out` varchar(255) DEFAULT NULL,
  `deposit` varchar(255) DEFAULT NULL,
  `crossed` varchar(255) DEFAULT NULL,
  `crossed_date` varchar(100) DEFAULT NULL,
  `profit` varchar(255) DEFAULT NULL,
  `clear_payment` varchar(50) NOT NULL,
  `user_agent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672225340_385_customer_expenses`
--

CREATE TABLE `crm_1672225340_385_customer_expenses` (
  `id` int(11) NOT NULL,
  `center_id` int(11) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `misc` varchar(255) DEFAULT NULL,
  `repair` varchar(255) DEFAULT NULL,
  `advance` varchar(255) DEFAULT NULL,
  `outbalance` varchar(255) DEFAULT NULL,
  `inbalance` varchar(255) DEFAULT NULL,
  `card_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672225340_385_recently_login`
--

CREATE TABLE `crm_1672225340_385_recently_login` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672225340_385_users`
--

CREATE TABLE `crm_1672225340_385_users` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `center_id` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672225785_977_administration`
--

CREATE TABLE `crm_1672225785_977_administration` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672225785_977_center_detail`
--

CREATE TABLE `crm_1672225785_977_center_detail` (
  `id` int(11) NOT NULL,
  `center_name` varchar(255) NOT NULL,
  `address_1` varchar(255) NOT NULL,
  `address_2` varchar(255) DEFAULT NULL,
  `address_3` varchar(255) DEFAULT NULL,
  `address_4` varchar(255) DEFAULT NULL,
  `telephone_1` varchar(255) DEFAULT NULL,
  `telephone_2` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `show_sequence` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672225785_977_collection`
--

CREATE TABLE `crm_1672225785_977_collection` (
  `id` int(11) NOT NULL,
  `card_id` varchar(255) NOT NULL,
  `amount` int(11) DEFAULT '0',
  `interest` int(11) DEFAULT '0',
  `center_id` varchar(255) DEFAULT NULL,
  `d_date_disp` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672225785_977_customers_card`
--

CREATE TABLE `crm_1672225785_977_customers_card` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `center_id` int(11) NOT NULL,
  `amt_per_day` varchar(255) DEFAULT NULL,
  `no_of_terms` varchar(255) DEFAULT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `advance` varchar(255) DEFAULT NULL,
  `loan_out` varchar(255) DEFAULT NULL,
  `deposit` varchar(255) DEFAULT NULL,
  `crossed` varchar(255) DEFAULT NULL,
  `crossed_date` varchar(100) DEFAULT NULL,
  `profit` varchar(255) DEFAULT NULL,
  `clear_payment` varchar(50) NOT NULL,
  `user_agent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672225785_977_customer_expenses`
--

CREATE TABLE `crm_1672225785_977_customer_expenses` (
  `id` int(11) NOT NULL,
  `center_id` int(11) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `misc` varchar(255) DEFAULT NULL,
  `repair` varchar(255) DEFAULT NULL,
  `advance` varchar(255) DEFAULT NULL,
  `outbalance` varchar(255) DEFAULT NULL,
  `inbalance` varchar(255) DEFAULT NULL,
  `card_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672225785_977_recently_login`
--

CREATE TABLE `crm_1672225785_977_recently_login` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672225785_977_users`
--

CREATE TABLE `crm_1672225785_977_users` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `center_id` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672226998_31_administration`
--

CREATE TABLE `crm_1672226998_31_administration` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672226998_31_center_detail`
--

CREATE TABLE `crm_1672226998_31_center_detail` (
  `id` int(11) NOT NULL,
  `center_name` varchar(255) NOT NULL,
  `address_1` varchar(255) NOT NULL,
  `address_2` varchar(255) DEFAULT NULL,
  `address_3` varchar(255) DEFAULT NULL,
  `address_4` varchar(255) DEFAULT NULL,
  `telephone_1` varchar(255) DEFAULT NULL,
  `telephone_2` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `show_sequence` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672226998_31_collection`
--

CREATE TABLE `crm_1672226998_31_collection` (
  `id` int(11) NOT NULL,
  `card_id` varchar(255) NOT NULL,
  `amount` int(11) DEFAULT '0',
  `interest` int(11) DEFAULT '0',
  `center_id` varchar(255) DEFAULT NULL,
  `d_date_disp` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672226998_31_customers_card`
--

CREATE TABLE `crm_1672226998_31_customers_card` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `center_id` int(11) NOT NULL,
  `amt_per_day` varchar(255) DEFAULT NULL,
  `no_of_terms` varchar(255) DEFAULT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `advance` varchar(255) DEFAULT NULL,
  `loan_out` varchar(255) DEFAULT NULL,
  `deposit` varchar(255) DEFAULT NULL,
  `crossed` varchar(255) DEFAULT NULL,
  `crossed_date` varchar(100) DEFAULT NULL,
  `profit` varchar(255) DEFAULT NULL,
  `clear_payment` varchar(50) NOT NULL,
  `user_agent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672226998_31_customer_expenses`
--

CREATE TABLE `crm_1672226998_31_customer_expenses` (
  `id` int(11) NOT NULL,
  `center_id` int(11) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `misc` varchar(255) DEFAULT NULL,
  `repair` varchar(255) DEFAULT NULL,
  `advance` varchar(255) DEFAULT NULL,
  `outbalance` varchar(255) DEFAULT NULL,
  `inbalance` varchar(255) DEFAULT NULL,
  `card_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672226998_31_recently_login`
--

CREATE TABLE `crm_1672226998_31_recently_login` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672226998_31_users`
--

CREATE TABLE `crm_1672226998_31_users` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `center_id` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672227014_785_administration`
--

CREATE TABLE `crm_1672227014_785_administration` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672227014_785_center_detail`
--

CREATE TABLE `crm_1672227014_785_center_detail` (
  `id` int(11) NOT NULL,
  `center_name` varchar(255) NOT NULL,
  `address_1` varchar(255) NOT NULL,
  `address_2` varchar(255) DEFAULT NULL,
  `address_3` varchar(255) DEFAULT NULL,
  `address_4` varchar(255) DEFAULT NULL,
  `telephone_1` varchar(255) DEFAULT NULL,
  `telephone_2` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `show_sequence` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672227014_785_collection`
--

CREATE TABLE `crm_1672227014_785_collection` (
  `id` int(11) NOT NULL,
  `card_id` varchar(255) NOT NULL,
  `amount` int(11) DEFAULT '0',
  `interest` int(11) DEFAULT '0',
  `center_id` varchar(255) DEFAULT NULL,
  `d_date_disp` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672227014_785_customers_card`
--

CREATE TABLE `crm_1672227014_785_customers_card` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `center_id` int(11) NOT NULL,
  `amt_per_day` varchar(255) DEFAULT NULL,
  `no_of_terms` varchar(255) DEFAULT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `advance` varchar(255) DEFAULT NULL,
  `loan_out` varchar(255) DEFAULT NULL,
  `deposit` varchar(255) DEFAULT NULL,
  `crossed` varchar(255) DEFAULT NULL,
  `crossed_date` varchar(100) DEFAULT NULL,
  `profit` varchar(255) DEFAULT NULL,
  `clear_payment` varchar(50) NOT NULL,
  `user_agent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672227014_785_customer_expenses`
--

CREATE TABLE `crm_1672227014_785_customer_expenses` (
  `id` int(11) NOT NULL,
  `center_id` int(11) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `misc` varchar(255) DEFAULT NULL,
  `repair` varchar(255) DEFAULT NULL,
  `advance` varchar(255) DEFAULT NULL,
  `outbalance` varchar(255) DEFAULT NULL,
  `inbalance` varchar(255) DEFAULT NULL,
  `card_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672227014_785_recently_login`
--

CREATE TABLE `crm_1672227014_785_recently_login` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672227014_785_users`
--

CREATE TABLE `crm_1672227014_785_users` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `center_id` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672368458_188_administration`
--

CREATE TABLE `crm_1672368458_188_administration` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672368458_188_center_detail`
--

CREATE TABLE `crm_1672368458_188_center_detail` (
  `id` int(11) NOT NULL,
  `center_name` varchar(255) NOT NULL,
  `address_1` varchar(255) NOT NULL,
  `address_2` varchar(255) DEFAULT NULL,
  `address_3` varchar(255) DEFAULT NULL,
  `address_4` varchar(255) DEFAULT NULL,
  `telephone_1` varchar(255) DEFAULT NULL,
  `telephone_2` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `show_sequence` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672368458_188_collection`
--

CREATE TABLE `crm_1672368458_188_collection` (
  `id` int(11) NOT NULL,
  `card_id` varchar(255) NOT NULL,
  `amount` int(11) DEFAULT '0',
  `interest` int(11) DEFAULT '0',
  `center_id` varchar(255) DEFAULT NULL,
  `d_date_disp` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672368458_188_customers_card`
--

CREATE TABLE `crm_1672368458_188_customers_card` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `center_id` int(11) NOT NULL,
  `amt_per_day` varchar(255) DEFAULT NULL,
  `no_of_terms` varchar(255) DEFAULT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `advance` varchar(255) DEFAULT NULL,
  `loan_out` varchar(255) DEFAULT NULL,
  `deposit` varchar(255) DEFAULT NULL,
  `crossed` varchar(255) DEFAULT NULL,
  `crossed_date` varchar(100) DEFAULT NULL,
  `profit` varchar(255) DEFAULT NULL,
  `clear_payment` varchar(50) NOT NULL,
  `user_agent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672368458_188_customer_expenses`
--

CREATE TABLE `crm_1672368458_188_customer_expenses` (
  `id` int(11) NOT NULL,
  `center_id` int(11) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `misc` varchar(255) DEFAULT NULL,
  `repair` varchar(255) DEFAULT NULL,
  `advance` varchar(255) DEFAULT NULL,
  `outbalance` varchar(255) DEFAULT NULL,
  `inbalance` varchar(255) DEFAULT NULL,
  `card_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672368458_188_recently_login`
--

CREATE TABLE `crm_1672368458_188_recently_login` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672368458_188_users`
--

CREATE TABLE `crm_1672368458_188_users` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `center_id` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672369053_65_administration`
--

CREATE TABLE `crm_1672369053_65_administration` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672369053_65_center_detail`
--

CREATE TABLE `crm_1672369053_65_center_detail` (
  `id` int(11) NOT NULL,
  `center_name` varchar(255) NOT NULL,
  `address_1` varchar(255) NOT NULL,
  `address_2` varchar(255) DEFAULT NULL,
  `address_3` varchar(255) DEFAULT NULL,
  `address_4` varchar(255) DEFAULT NULL,
  `telephone_1` varchar(255) DEFAULT NULL,
  `telephone_2` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `show_sequence` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672369053_65_collection`
--

CREATE TABLE `crm_1672369053_65_collection` (
  `id` int(11) NOT NULL,
  `card_id` varchar(255) NOT NULL,
  `amount` int(11) DEFAULT '0',
  `interest` int(11) DEFAULT '0',
  `center_id` varchar(255) DEFAULT NULL,
  `d_date_disp` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672369053_65_customers_card`
--

CREATE TABLE `crm_1672369053_65_customers_card` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `center_id` int(11) NOT NULL,
  `amt_per_day` varchar(255) DEFAULT NULL,
  `no_of_terms` varchar(255) DEFAULT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `advance` varchar(255) DEFAULT NULL,
  `loan_out` varchar(255) DEFAULT NULL,
  `deposit` varchar(255) DEFAULT NULL,
  `crossed` varchar(255) DEFAULT NULL,
  `crossed_date` varchar(100) DEFAULT NULL,
  `profit` varchar(255) DEFAULT NULL,
  `clear_payment` varchar(50) NOT NULL,
  `user_agent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672369053_65_customer_expenses`
--

CREATE TABLE `crm_1672369053_65_customer_expenses` (
  `id` int(11) NOT NULL,
  `center_id` int(11) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `misc` varchar(255) DEFAULT NULL,
  `repair` varchar(255) DEFAULT NULL,
  `advance` varchar(255) DEFAULT NULL,
  `outbalance` varchar(255) DEFAULT NULL,
  `inbalance` varchar(255) DEFAULT NULL,
  `card_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672369053_65_recently_login`
--

CREATE TABLE `crm_1672369053_65_recently_login` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672369053_65_users`
--

CREATE TABLE `crm_1672369053_65_users` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `center_id` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672464755_306_administration`
--

CREATE TABLE `crm_1672464755_306_administration` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672464755_306_center_detail`
--

CREATE TABLE `crm_1672464755_306_center_detail` (
  `id` int(11) NOT NULL,
  `center_name` varchar(255) NOT NULL,
  `address_1` varchar(255) NOT NULL,
  `address_2` varchar(255) DEFAULT NULL,
  `address_3` varchar(255) DEFAULT NULL,
  `address_4` varchar(255) DEFAULT NULL,
  `telephone_1` varchar(255) DEFAULT NULL,
  `telephone_2` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `show_sequence` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672464755_306_collection`
--

CREATE TABLE `crm_1672464755_306_collection` (
  `id` int(11) NOT NULL,
  `card_id` varchar(255) NOT NULL,
  `amount` int(11) DEFAULT '0',
  `interest` int(11) DEFAULT '0',
  `center_id` varchar(255) DEFAULT NULL,
  `d_date_disp` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672464755_306_customers_card`
--

CREATE TABLE `crm_1672464755_306_customers_card` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `center_id` int(11) NOT NULL,
  `amt_per_day` varchar(255) DEFAULT NULL,
  `no_of_terms` varchar(255) DEFAULT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `advance` varchar(255) DEFAULT NULL,
  `loan_out` varchar(255) DEFAULT NULL,
  `deposit` varchar(255) DEFAULT NULL,
  `crossed` varchar(255) DEFAULT NULL,
  `crossed_date` varchar(100) DEFAULT NULL,
  `profit` varchar(255) DEFAULT NULL,
  `clear_payment` varchar(50) NOT NULL,
  `user_agent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672464755_306_customer_expenses`
--

CREATE TABLE `crm_1672464755_306_customer_expenses` (
  `id` int(11) NOT NULL,
  `center_id` int(11) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `misc` varchar(255) DEFAULT NULL,
  `repair` varchar(255) DEFAULT NULL,
  `advance` varchar(255) DEFAULT NULL,
  `outbalance` varchar(255) DEFAULT NULL,
  `inbalance` varchar(255) DEFAULT NULL,
  `card_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672464755_306_recently_login`
--

CREATE TABLE `crm_1672464755_306_recently_login` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672464755_306_users`
--

CREATE TABLE `crm_1672464755_306_users` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `center_id` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672464806_683_administration`
--

CREATE TABLE `crm_1672464806_683_administration` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672464806_683_center_detail`
--

CREATE TABLE `crm_1672464806_683_center_detail` (
  `id` int(11) NOT NULL,
  `center_name` varchar(255) NOT NULL,
  `address_1` varchar(255) NOT NULL,
  `address_2` varchar(255) DEFAULT NULL,
  `address_3` varchar(255) DEFAULT NULL,
  `address_4` varchar(255) DEFAULT NULL,
  `telephone_1` varchar(255) DEFAULT NULL,
  `telephone_2` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `show_sequence` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672464806_683_collection`
--

CREATE TABLE `crm_1672464806_683_collection` (
  `id` int(11) NOT NULL,
  `card_id` varchar(255) NOT NULL,
  `amount` int(11) DEFAULT '0',
  `interest` int(11) DEFAULT '0',
  `center_id` varchar(255) DEFAULT NULL,
  `d_date_disp` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672464806_683_customers_card`
--

CREATE TABLE `crm_1672464806_683_customers_card` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `center_id` int(11) NOT NULL,
  `amt_per_day` varchar(255) DEFAULT NULL,
  `no_of_terms` varchar(255) DEFAULT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `advance` varchar(255) DEFAULT NULL,
  `loan_out` varchar(255) DEFAULT NULL,
  `deposit` varchar(255) DEFAULT NULL,
  `crossed` varchar(255) DEFAULT NULL,
  `crossed_date` varchar(100) DEFAULT NULL,
  `profit` varchar(255) DEFAULT NULL,
  `clear_payment` varchar(50) NOT NULL,
  `user_agent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672464806_683_customer_expenses`
--

CREATE TABLE `crm_1672464806_683_customer_expenses` (
  `id` int(11) NOT NULL,
  `center_id` int(11) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `misc` varchar(255) DEFAULT NULL,
  `repair` varchar(255) DEFAULT NULL,
  `advance` varchar(255) DEFAULT NULL,
  `outbalance` varchar(255) DEFAULT NULL,
  `inbalance` varchar(255) DEFAULT NULL,
  `card_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672464806_683_recently_login`
--

CREATE TABLE `crm_1672464806_683_recently_login` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672464806_683_users`
--

CREATE TABLE `crm_1672464806_683_users` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `center_id` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672465889_871_administration`
--

CREATE TABLE `crm_1672465889_871_administration` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672465889_871_center_detail`
--

CREATE TABLE `crm_1672465889_871_center_detail` (
  `id` int(11) NOT NULL,
  `center_name` varchar(255) NOT NULL,
  `address_1` varchar(255) NOT NULL,
  `address_2` varchar(255) DEFAULT NULL,
  `address_3` varchar(255) DEFAULT NULL,
  `address_4` varchar(255) DEFAULT NULL,
  `telephone_1` varchar(255) DEFAULT NULL,
  `telephone_2` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `show_sequence` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672465889_871_collection`
--

CREATE TABLE `crm_1672465889_871_collection` (
  `id` int(11) NOT NULL,
  `card_id` varchar(255) NOT NULL,
  `amount` int(11) DEFAULT '0',
  `interest` int(11) DEFAULT '0',
  `center_id` varchar(255) DEFAULT NULL,
  `d_date_disp` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672465889_871_customers_card`
--

CREATE TABLE `crm_1672465889_871_customers_card` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `center_id` int(11) NOT NULL,
  `amt_per_day` varchar(255) DEFAULT NULL,
  `no_of_terms` varchar(255) DEFAULT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `advance` varchar(255) DEFAULT NULL,
  `loan_out` varchar(255) DEFAULT NULL,
  `deposit` varchar(255) DEFAULT NULL,
  `crossed` varchar(255) DEFAULT NULL,
  `crossed_date` varchar(100) DEFAULT NULL,
  `profit` varchar(255) DEFAULT NULL,
  `clear_payment` varchar(50) NOT NULL,
  `user_agent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672465889_871_customer_expenses`
--

CREATE TABLE `crm_1672465889_871_customer_expenses` (
  `id` int(11) NOT NULL,
  `center_id` int(11) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `misc` varchar(255) DEFAULT NULL,
  `repair` varchar(255) DEFAULT NULL,
  `advance` varchar(255) DEFAULT NULL,
  `outbalance` varchar(255) DEFAULT NULL,
  `inbalance` varchar(255) DEFAULT NULL,
  `card_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672465889_871_recently_login`
--

CREATE TABLE `crm_1672465889_871_recently_login` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672465889_871_users`
--

CREATE TABLE `crm_1672465889_871_users` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `center_id` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672493553_901_administration`
--

CREATE TABLE `crm_1672493553_901_administration` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672493553_901_center_detail`
--

CREATE TABLE `crm_1672493553_901_center_detail` (
  `id` int(11) NOT NULL,
  `center_name` varchar(255) NOT NULL,
  `address_1` varchar(255) NOT NULL,
  `address_2` varchar(255) DEFAULT NULL,
  `address_3` varchar(255) DEFAULT NULL,
  `address_4` varchar(255) DEFAULT NULL,
  `telephone_1` varchar(255) DEFAULT NULL,
  `telephone_2` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `show_sequence` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672493553_901_collection`
--

CREATE TABLE `crm_1672493553_901_collection` (
  `id` int(11) NOT NULL,
  `card_id` varchar(255) NOT NULL,
  `amount` int(11) DEFAULT '0',
  `interest` int(11) DEFAULT '0',
  `center_id` varchar(255) DEFAULT NULL,
  `d_date_disp` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672493553_901_customers_card`
--

CREATE TABLE `crm_1672493553_901_customers_card` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `center_id` int(11) NOT NULL,
  `amt_per_day` varchar(255) DEFAULT NULL,
  `no_of_terms` varchar(255) DEFAULT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `advance` varchar(255) DEFAULT NULL,
  `loan_out` varchar(255) DEFAULT NULL,
  `deposit` varchar(255) DEFAULT NULL,
  `crossed` varchar(255) DEFAULT NULL,
  `crossed_date` varchar(100) DEFAULT NULL,
  `profit` varchar(255) DEFAULT NULL,
  `clear_payment` varchar(50) NOT NULL,
  `user_agent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672493553_901_customer_expenses`
--

CREATE TABLE `crm_1672493553_901_customer_expenses` (
  `id` int(11) NOT NULL,
  `center_id` int(11) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `misc` varchar(255) DEFAULT NULL,
  `repair` varchar(255) DEFAULT NULL,
  `advance` varchar(255) DEFAULT NULL,
  `outbalance` varchar(255) DEFAULT NULL,
  `inbalance` varchar(255) DEFAULT NULL,
  `card_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672493553_901_recently_login`
--

CREATE TABLE `crm_1672493553_901_recently_login` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672493553_901_users`
--

CREATE TABLE `crm_1672493553_901_users` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `center_id` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672494306_309_administration`
--

CREATE TABLE `crm_1672494306_309_administration` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672494306_309_center_detail`
--

CREATE TABLE `crm_1672494306_309_center_detail` (
  `id` int(11) NOT NULL,
  `center_name` varchar(255) NOT NULL,
  `address_1` varchar(255) NOT NULL,
  `address_2` varchar(255) DEFAULT NULL,
  `address_3` varchar(255) DEFAULT NULL,
  `address_4` varchar(255) DEFAULT NULL,
  `telephone_1` varchar(255) DEFAULT NULL,
  `telephone_2` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `show_sequence` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672494306_309_collection`
--

CREATE TABLE `crm_1672494306_309_collection` (
  `id` int(11) NOT NULL,
  `card_id` varchar(255) NOT NULL,
  `amount` int(11) DEFAULT '0',
  `interest` int(11) DEFAULT '0',
  `center_id` varchar(255) DEFAULT NULL,
  `d_date_disp` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672494306_309_customers_card`
--

CREATE TABLE `crm_1672494306_309_customers_card` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `center_id` int(11) NOT NULL,
  `amt_per_day` varchar(255) DEFAULT NULL,
  `no_of_terms` varchar(255) DEFAULT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `advance` varchar(255) DEFAULT NULL,
  `loan_out` varchar(255) DEFAULT NULL,
  `deposit` varchar(255) DEFAULT NULL,
  `crossed` varchar(255) DEFAULT NULL,
  `crossed_date` varchar(100) DEFAULT NULL,
  `profit` varchar(255) DEFAULT NULL,
  `clear_payment` varchar(50) NOT NULL,
  `user_agent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672494306_309_customer_expenses`
--

CREATE TABLE `crm_1672494306_309_customer_expenses` (
  `id` int(11) NOT NULL,
  `center_id` int(11) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `misc` varchar(255) DEFAULT NULL,
  `repair` varchar(255) DEFAULT NULL,
  `advance` varchar(255) DEFAULT NULL,
  `outbalance` varchar(255) DEFAULT NULL,
  `inbalance` varchar(255) DEFAULT NULL,
  `card_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672494306_309_recently_login`
--

CREATE TABLE `crm_1672494306_309_recently_login` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672494306_309_users`
--

CREATE TABLE `crm_1672494306_309_users` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `center_id` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672624682_287_administration`
--

CREATE TABLE `crm_1672624682_287_administration` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672624682_287_center_detail`
--

CREATE TABLE `crm_1672624682_287_center_detail` (
  `id` int(11) NOT NULL,
  `center_name` varchar(255) NOT NULL,
  `address_1` varchar(255) NOT NULL,
  `address_2` varchar(255) DEFAULT NULL,
  `address_3` varchar(255) DEFAULT NULL,
  `address_4` varchar(255) DEFAULT NULL,
  `telephone_1` varchar(255) DEFAULT NULL,
  `telephone_2` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `show_sequence` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672624682_287_collection`
--

CREATE TABLE `crm_1672624682_287_collection` (
  `id` int(11) NOT NULL,
  `card_id` varchar(255) NOT NULL,
  `amount` int(11) DEFAULT '0',
  `interest` int(11) DEFAULT '0',
  `center_id` varchar(255) DEFAULT NULL,
  `d_date_disp` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672624682_287_customers_card`
--

CREATE TABLE `crm_1672624682_287_customers_card` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `center_id` int(11) NOT NULL,
  `amt_per_day` varchar(255) DEFAULT NULL,
  `no_of_terms` varchar(255) DEFAULT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `advance` varchar(255) DEFAULT NULL,
  `loan_out` varchar(255) DEFAULT NULL,
  `deposit` varchar(255) DEFAULT NULL,
  `crossed` varchar(255) DEFAULT NULL,
  `crossed_date` varchar(100) DEFAULT NULL,
  `profit` varchar(255) DEFAULT NULL,
  `clear_payment` varchar(50) NOT NULL,
  `user_agent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672624682_287_customer_expenses`
--

CREATE TABLE `crm_1672624682_287_customer_expenses` (
  `id` int(11) NOT NULL,
  `center_id` int(11) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `misc` varchar(255) DEFAULT NULL,
  `repair` varchar(255) DEFAULT NULL,
  `advance` varchar(255) DEFAULT NULL,
  `outbalance` varchar(255) DEFAULT NULL,
  `inbalance` varchar(255) DEFAULT NULL,
  `card_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672624682_287_recently_login`
--

CREATE TABLE `crm_1672624682_287_recently_login` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672624682_287_users`
--

CREATE TABLE `crm_1672624682_287_users` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `center_id` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672626712_34_administration`
--

CREATE TABLE `crm_1672626712_34_administration` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672626712_34_center_detail`
--

CREATE TABLE `crm_1672626712_34_center_detail` (
  `id` int(11) NOT NULL,
  `center_name` varchar(255) NOT NULL,
  `address_1` varchar(255) NOT NULL,
  `address_2` varchar(255) DEFAULT NULL,
  `address_3` varchar(255) DEFAULT NULL,
  `address_4` varchar(255) DEFAULT NULL,
  `telephone_1` varchar(255) DEFAULT NULL,
  `telephone_2` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `show_sequence` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672626712_34_collection`
--

CREATE TABLE `crm_1672626712_34_collection` (
  `id` int(11) NOT NULL,
  `card_id` varchar(255) NOT NULL,
  `amount` int(11) DEFAULT '0',
  `interest` int(11) DEFAULT '0',
  `center_id` varchar(255) DEFAULT NULL,
  `d_date_disp` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672626712_34_customers_card`
--

CREATE TABLE `crm_1672626712_34_customers_card` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `center_id` int(11) NOT NULL,
  `amt_per_day` varchar(255) DEFAULT NULL,
  `no_of_terms` varchar(255) DEFAULT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `advance` varchar(255) DEFAULT NULL,
  `loan_out` varchar(255) DEFAULT NULL,
  `deposit` varchar(255) DEFAULT NULL,
  `crossed` varchar(255) DEFAULT NULL,
  `crossed_date` varchar(100) DEFAULT NULL,
  `profit` varchar(255) DEFAULT NULL,
  `clear_payment` varchar(50) NOT NULL,
  `user_agent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672626712_34_customer_expenses`
--

CREATE TABLE `crm_1672626712_34_customer_expenses` (
  `id` int(11) NOT NULL,
  `center_id` int(11) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `misc` varchar(255) DEFAULT NULL,
  `repair` varchar(255) DEFAULT NULL,
  `advance` varchar(255) DEFAULT NULL,
  `outbalance` varchar(255) DEFAULT NULL,
  `inbalance` varchar(255) DEFAULT NULL,
  `card_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672626712_34_recently_login`
--

CREATE TABLE `crm_1672626712_34_recently_login` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1672626712_34_users`
--

CREATE TABLE `crm_1672626712_34_users` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `center_id` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1675149658_184_administration`
--

CREATE TABLE `crm_1675149658_184_administration` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1675149658_184_center_detail`
--

CREATE TABLE `crm_1675149658_184_center_detail` (
  `id` int(11) NOT NULL,
  `center_name` varchar(255) NOT NULL,
  `address_1` varchar(255) NOT NULL,
  `address_2` varchar(255) DEFAULT NULL,
  `address_3` varchar(255) DEFAULT NULL,
  `address_4` varchar(255) DEFAULT NULL,
  `telephone_1` varchar(255) DEFAULT NULL,
  `telephone_2` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `show_sequence` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1675149658_184_collection`
--

CREATE TABLE `crm_1675149658_184_collection` (
  `id` int(11) NOT NULL,
  `card_id` varchar(255) NOT NULL,
  `amount` int(11) DEFAULT '0',
  `interest` int(11) DEFAULT '0',
  `center_id` varchar(255) DEFAULT NULL,
  `d_date_disp` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1675149658_184_customers_card`
--

CREATE TABLE `crm_1675149658_184_customers_card` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `center_id` int(11) NOT NULL,
  `amt_per_day` varchar(255) DEFAULT NULL,
  `no_of_terms` varchar(255) DEFAULT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `advance` varchar(255) DEFAULT NULL,
  `loan_out` varchar(255) DEFAULT NULL,
  `deposit` varchar(255) DEFAULT NULL,
  `crossed` varchar(255) DEFAULT NULL,
  `crossed_date` varchar(100) DEFAULT NULL,
  `profit` varchar(255) DEFAULT NULL,
  `clear_payment` varchar(50) NOT NULL,
  `user_agent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1675149658_184_customer_expenses`
--

CREATE TABLE `crm_1675149658_184_customer_expenses` (
  `id` int(11) NOT NULL,
  `center_id` int(11) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `misc` varchar(255) DEFAULT NULL,
  `repair` varchar(255) DEFAULT NULL,
  `advance` varchar(255) DEFAULT NULL,
  `outbalance` varchar(255) DEFAULT NULL,
  `inbalance` varchar(255) DEFAULT NULL,
  `card_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1675149658_184_recently_login`
--

CREATE TABLE `crm_1675149658_184_recently_login` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1675149658_184_users`
--

CREATE TABLE `crm_1675149658_184_users` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `center_id` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1675149678_350_administration`
--

CREATE TABLE `crm_1675149678_350_administration` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1675149678_350_center_detail`
--

CREATE TABLE `crm_1675149678_350_center_detail` (
  `id` int(11) NOT NULL,
  `center_name` varchar(255) NOT NULL,
  `address_1` varchar(255) NOT NULL,
  `address_2` varchar(255) DEFAULT NULL,
  `address_3` varchar(255) DEFAULT NULL,
  `address_4` varchar(255) DEFAULT NULL,
  `telephone_1` varchar(255) DEFAULT NULL,
  `telephone_2` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `show_sequence` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1675149678_350_collection`
--

CREATE TABLE `crm_1675149678_350_collection` (
  `id` int(11) NOT NULL,
  `card_id` varchar(255) NOT NULL,
  `amount` int(11) DEFAULT '0',
  `interest` int(11) DEFAULT '0',
  `center_id` varchar(255) DEFAULT NULL,
  `d_date_disp` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1675149678_350_customers_card`
--

CREATE TABLE `crm_1675149678_350_customers_card` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `center_id` int(11) NOT NULL,
  `amt_per_day` varchar(255) DEFAULT NULL,
  `no_of_terms` varchar(255) DEFAULT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `advance` varchar(255) DEFAULT NULL,
  `loan_out` varchar(255) DEFAULT NULL,
  `deposit` varchar(255) DEFAULT NULL,
  `crossed` varchar(255) DEFAULT NULL,
  `crossed_date` varchar(100) DEFAULT NULL,
  `profit` varchar(255) DEFAULT NULL,
  `clear_payment` varchar(50) NOT NULL,
  `user_agent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1675149678_350_customer_expenses`
--

CREATE TABLE `crm_1675149678_350_customer_expenses` (
  `id` int(11) NOT NULL,
  `center_id` int(11) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `misc` varchar(255) DEFAULT NULL,
  `repair` varchar(255) DEFAULT NULL,
  `advance` varchar(255) DEFAULT NULL,
  `outbalance` varchar(255) DEFAULT NULL,
  `inbalance` varchar(255) DEFAULT NULL,
  `card_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1675149678_350_recently_login`
--

CREATE TABLE `crm_1675149678_350_recently_login` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_1675149678_350_users`
--

CREATE TABLE `crm_1675149678_350_users` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `center_id` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `new_IC` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `occupation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telephone_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telephone_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Guarantor_Name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Guarantor_IC` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Guarantor_Telephone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Guarantor_Info` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `customer_pic` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_pic_ic` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_guarantor_pic` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_agent_id` int(11) NOT NULL,
  `how_to_know` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `new_IC`, `address_1`, `address_2`, `address_3`, `address_4`, `occupation`, `telephone_1`, `telephone_2`, `fax`, `gender`, `Guarantor_Name`, `Guarantor_IC`, `Guarantor_Telephone`, `Guarantor_Info`, `password`, `created_at`, `customer_pic`, `customer_pic_ic`, `customer_guarantor_pic`, `user_agent_id`, `how_to_know`, `remark`) VALUES
(1, 'my-customer-01', '000000-00-0000', 'customer address， customer address', 'customer address', '', '', 'Occupation', '0123334444', '', '', 'F', 'my-customer-01 Guarantor', '000000-00-1234', '0123333333', 'Guarantor info', '', '2022-10-10 13:25:48', NULL, NULL, NULL, 1, NULL, NULL),
(11, '123', '123', '123', '', '', '', '123', '213', '', '', 'F', '', '', '', '', '', '2023-01-06 11:37:04', NULL, NULL, NULL, 6, NULL, NULL),
(13, 'customer A', '123456789012', '-', '', '', '', '-', '0123456789', '', '', 'M', '', '', '', '', '', '2023-02-06 13:40:45', NULL, NULL, NULL, 11, NULL, NULL),
(14, '123', '123', '123', '', '', '', '123', '123', '', '', 'F', '', '', '', '', '', '2023-01-31 14:59:12', NULL, NULL, NULL, 1, NULL, NULL),
(15, 'Mira', 'test', 'sfsdsf', 'sdfs', 'sdf', 'sdf', 'sd', 'sdf', 'sdfsdf', '', 'F', 'sdfs', 'sdf', 'sfd', 'sdfs', '', '2023-02-09 14:50:05', NULL, NULL, NULL, 11, NULL, NULL),
(29, 'abc', NULL, 'd3dff', '', '', '', NULL, '013809313', '', NULL, 'F', NULL, NULL, NULL, NULL, NULL, '2023-02-18 08:53:13', NULL, NULL, NULL, 11, 'ed', ''),
(30, 'Annie', NULL, 'B21-08, Zen Condo, Jln Bunga Tanjung, ', 'Bt 14, Puchong, 47100 Selangor.', '', '', NULL, '+60Â 12-280Â 6645', '', NULL, 'F', NULL, NULL, NULL, NULL, NULL, '2023-02-20 06:59:34', NULL, NULL, NULL, 11, '', ''),
(31, '123', NULL, '123', '123', '123', '123', NULL, '123', '123', NULL, 'M', NULL, NULL, NULL, NULL, NULL, '2023-02-21 01:38:18', NULL, NULL, NULL, 11, '123', '123'),
(32, '321', NULL, '123', '321', '321', '321', NULL, '123', '321', NULL, 'F', NULL, NULL, NULL, NULL, NULL, '2023-02-21 01:38:48', NULL, NULL, NULL, 11, '123', '321'),
(33, 'Annie', NULL, 'B21-08, Zen Condo, Jln Bunga Tanjung,', 'Bt 14, Puchong, 47100 Selangor.', '', '', NULL, '+60122806645', '', NULL, 'F', NULL, NULL, NULL, NULL, NULL, '2023-02-27 14:36:10', NULL, NULL, NULL, 11, '', ''),
(34, 'test customer', NULL, '-', '', '', '', NULL, '-', '', NULL, 'M', NULL, NULL, NULL, NULL, NULL, '2023-03-01 09:50:23', '123.jpeg', NULL, NULL, 12, '', ''),
(35, 'test user', NULL, '1, jalan qwe 1', '', '', '', NULL, '0123456789', '', NULL, 'M', NULL, NULL, NULL, NULL, NULL, '2023-03-02 17:43:03', '123.jpeg', 'blue-gradient-background.png', NULL, 15, '-', '-'),
(36, 'test', NULL, '123', NULL, NULL, NULL, NULL, '123', NULL, NULL, 'F', NULL, NULL, NULL, NULL, NULL, '2023-03-10 11:33:34', NULL, NULL, NULL, 11, '123', '123'),
(37, 'alan', '123456', 'aâ€†liâ€†bâ€†bâ€†jâ€†jâ€†kâ€†mâ€†mâ€†bâ€†b', '', '', '', 'ä¹°å–è½¦1234', '12455566', '', '', 'F', '', '', '', '', '', '2023-03-17 00:09:23', NULL, NULL, NULL, 15, NULL, NULL),
(38, 'Sean', NULL, 'Maxwell Towers', NULL, NULL, NULL, NULL, '+6018-781Â 8042', NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, '2023-03-19 21:43:11', NULL, NULL, NULL, 11, 'Others', '');

-- --------------------------------------------------------

--
-- Table structure for table `customers_card`
--

CREATE TABLE `customers_card` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `center_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amt_per_day` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_of_terms` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duration` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `advance` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `loan_out` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deposit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `crossed` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `crossed_date` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `clear_payment` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user_agent_id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customers_card`
--

INSERT INTO `customers_card` (`id`, `customer_id`, `center_id`, `amt_per_day`, `no_of_terms`, `start_date`, `duration`, `advance`, `loan_out`, `deposit`, `crossed`, `crossed_date`, `profit`, `clear_payment`, `user_agent_id`, `code`) VALUES
(1, 1, '1', '200', '5', '10-10-2022', '30', '0', '1000', '200', '', '', '500', '', 1, NULL),
(19, 0, '5', NULL, '12', '01-12-2022', '14', '100', '1000', '200', NULL, '13-12-2022', '200', '', 6, 'M1234'),
(20, 0, '5', NULL, '9', '02-12-2022', '01', '0', '500', '50', NULL, '04-01-2023', '150', '', 6, 'C123'),
(21, 0, '5', NULL, '12', '03-12-2022', '01', '0', '700', '0', NULL, '15-12-2022', '200', '', 6, 'i123'),
(22, 0, '5', NULL, '13', '04-12-2022', '14', '50', '800', '50', NULL, '17-12-2022', '200', '', 6, 'M333'),
(24, 0, '5', NULL, '7', '05-12-2022', '01', '0', '350', '0', NULL, '12-12-2022', '100', '1', 6, 'C222'),
(25, 0, '5', NULL, '6', '06-12-2022', '01', '0', '400', '0', NULL, '12-12-2022', '100', '1', 6, 'i555'),
(26, 0, '5', NULL, '21', '07-12-2022', '01', '0', '1600', '0', NULL, '28-12-2022', '400', '', 10, 'M88'),
(27, 0, '5', NULL, '15', '09-01-2023', '10', '1000', '10000', '1000', NULL, '24-01-2023', '5000', '', 6, 'M1234'),
(28, 0, '5', NULL, '20', '09-01-2023', '01', '0', '1000', '100', NULL, '29-01-2023', '200', '1', 6, 'A1234'),
(29, 0, '5', NULL, '7', '11-01-2023', '07', '0', '500', '50', NULL, '18-01-2023', '150', '1', 6, 'C111'),
(31, 0, '5', NULL, '7', '04-01-2023', '07', '0', '1000', '100', NULL, '25-01-2023', '200', '1', 6, 'C999'),
(32, 0, '5', NULL, '7', '12-01-2023', '07', '0', '1000', '100', NULL, '26-01-2023', '200', '1', 10, 'C333'),
(33, 0, '5', NULL, '5', '13-01-2023', '01', '0', '500', '50', NULL, '28-01-2023', '150', '', 10, 'c444'),
(34, 0, '5', NULL, '20', '12-01-2023', '30', '0', '3000', '0', NULL, '03-03-2023', '1800', '', 10, 'c555'),
(35, 0, '5', NULL, '3', '03-02-2023', '01', '0', '100', '0', NULL, '06-02-2023', '50', '1', 10, 'M111'),
(36, 0, '5', NULL, '6', '25-01-2023', '07', '0', '1000', '150', NULL, '06-02-2023', '250', '1', 13, 'C767'),
(37, 0, '5', NULL, '5', '25-01-2023', '01', '0', '1000', '300', NULL, '30-01-2023', '200', '', 10, 'C709'),
(38, 0, '5', NULL, '9', '26-01-2023', '10', '0', '500', '0', NULL, '04-02-2023', '150', '', 13, 'M387'),
(39, 0, '5', NULL, '9', '25-01-2023', '01', '0', '500', '100', NULL, '03-02-2023', '100', '', 10, 'C529'),
(40, 0, '5', NULL, '6', '26-01-2023', '07', '200', '2000', '0', NULL, '01-02-2023', '500', '', 13, 'M759'),
(41, 0, '5', NULL, '6', '27-01-2023', '07', '100', '1000', '100', NULL, '02-02-2023', '300', '', 10, 'C793'),
(42, 0, '5', NULL, '9', '28-01-2023', '01', '0', '1000', '250', NULL, '06-02-2023', '250', '', 10, 'C773'),
(43, 0, '5', NULL, '6', '29-01-2023', '01', '0', '500', '100', NULL, '04-02-2023', '150', '', 10, 'C767'),
(44, 0, '5', NULL, '9', '30-01-2023', '10', '100', '1000', '200', NULL, '08-02-2023', '200', '', 10, 'C795'),
(45, 0, '5', NULL, '6', '31-01-2023', '07', '100', '1000', '200', NULL, '06-02-2023', '200', '', 10, 'C796'),
(46, 0, '5', NULL, '13', '28-01-2023', '14', '100', '1000', '0', NULL, '10-02-2023', '300', '', 13, 'M798'),
(47, 0, '5', NULL, '7', '30-01-2023', '07', '0', '1000', '0', NULL, '06-02-2023', '400', '', 13, 'M946'),
(48, 0, '5', NULL, '6', '30-01-2023', '07', '100', '1000', '0', NULL, '05-02-2023', '300', '', 13, 'M3482'),
(49, 0, '5', NULL, '7', '31-01-2023', '07', '300', '3000', '0', NULL, '07-02-2023', '300', '', 10, 'C797'),
(50, 0, '5', NULL, '14', '31-01-2023', '15', '0', '500', '0', NULL, '14-02-2023', '100', '', 13, 'C290'),
(51, 0, '5', NULL, '7', '01-02-2023', '07', '200', '1000', '0', NULL, '08-02-2023', '300', '', 13, 'M891'),
(52, 0, '5', NULL, '6', '02-02-2023', '07', '100', '1000', '0', NULL, '08-02-2023', '300', '', 13, 'I858'),
(53, 0, '5', NULL, '6', '02-02-2023', '07', '200', '1000', '0', NULL, '08-02-2023', '300', '', 13, 'M3512'),
(54, 0, '5', NULL, '9', '02-02-2023', '10', '100', '1000', '200', NULL, '11-02-2023', '150', '', 10, 'M3501'),
(55, 0, '5', NULL, '6', '03-02-2023', '07', '50', '1000', '200', NULL, '09-02-2023', '300', '', 10, 'M3479'),
(56, 0, '5', NULL, '7', '04-02-2023', '07', '0', '1000', '0', NULL, '11-02-2023', '300', '', 10, 'C127'),
(57, 0, '5', NULL, '5', '06-02-2023', '01', '0', '1000', '300', NULL, '11-02-2023', '200', '', 10, 'C709'),
(58, 0, '5', NULL, '6', '07-02-2023', '07', '100', '1000', '300', NULL, '13-02-2023', '200', '', 10, 'M3523'),
(60, 0, '5', NULL, '7', '01-03-2023', '7', '0', '1000', '0', NULL, '08-03-2023', '100', '', 6, '1000'),
(61, 0, '5', NULL, '0', '01-03-2023', '1', '0', '0', '0', NULL, '01-03-2023', '500', '1', 10, 'M3046'),
(62, 0, '5', NULL, '0', '08-03-2023', '1', '0', '500', '0', NULL, '08-03-2023', '500', '1', 6, 'C555'),
(63, 35, '10', '500', '7', '10-03-2023', '01', '2000', '1500', '500', '', '', '500', '', 15, NULL),
(64, 35, '10', '100', '10', '11-03-2023', '07', '0', '1000', '0', '', '', '200', '', 15, NULL),
(65, 35, '10', '200', '5', '11-03-2023', '01', '1000', '800', '100', '', '', '200', '', 15, NULL),
(66, 35, '10', '100', '30', '02-03-2023', '01', '3000', '2500', '500', '', '', '500', '', 15, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_expenses`
--

CREATE TABLE `customer_expenses` (
  `id` int(11) NOT NULL,
  `center_id` int(11) NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `misc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `repair` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `advance` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `outbalance` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inbalance` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `card_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customer_expenses`
--

INSERT INTO `customer_expenses` (`id`, `center_id`, `date`, `misc`, `repair`, `advance`, `outbalance`, `inbalance`, `card_id`) VALUES
(1, 1, '1665331200', '', '', '', '', '', 1),
(17, 5, '1672934400', '', '', '', '', '', 19),
(18, 5, '1672934400', '', '', '', '', '', 20),
(19, 5, '1672934400', '', '', '', '', '', 21),
(20, 5, '1672934400', '', '', '', '', '', 22),
(21, 5, '1672934400', '', '', '', '', '', 24),
(22, 5, '1672934400', '', '', '', '', '', 25),
(23, 5, '1672934400', '', '', '', '', '', 26),
(24, 5, '1673020800', '', '', '', '', '', 19),
(25, 5, '1673020800', '', '', '', '', '', 20),
(26, 5, '1673020800', '', '', '', '', '', 21),
(27, 5, '1673020800', '', '', '', '', '', 22),
(28, 5, '1673020800', '', '', '', '', '', 24),
(29, 5, '1673020800', '', '', '', '', '', 25),
(30, 5, '1673020800', '', '', '', '', '', 26),
(31, 10, '1678377600', '', '', '', '', '', 63),
(32, 10, '1678464000', '', '', '', '', '', 63),
(33, 10, '1678464000', '', '', '', '', '', 64),
(34, 10, '1678464000', '', '', '', '', '', 65),
(35, 10, '1678464000', '', '', '', '', '', 66);

-- --------------------------------------------------------

--
-- Table structure for table `cus_status`
--

CREATE TABLE `cus_status` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cus_status`
--

INSERT INTO `cus_status` (`id`, `name`) VALUES
(1, 'Incomplete Documents'),
(2, 'Dealing In Progress'),
(3, 'Considering'),
(4, 'Seen, But No Reply'),
(5, 'Unreachable'),
(6, 'Blacklist (Money Lender)'),
(7, 'Over-Commitment'),
(8, 'Committing Multiple Loans'),
(9, 'Blacklist (Company)'),
(10, 'Unstable Income'),
(11, 'Salary By Cash'),
(12, 'Uncompliable Request'),
(13, 'High Interest'),
(14, 'Low Salary'),
(15, 'Got A New Job'),
(16, 'Got Better Loan Offer'),
(17, 'Competitor Cut-in'),
(18, 'Rejected Without Reason'),
(19, 'Foreigner'),
(20, 'Underage'),
(21, 'Not Interested'),
(22, 'Government Official'),
(23, 'Unstable Hawker'),
(24, 'iPhone User'),
(25, 'Double Inquiry'),
(26, 'Pencen / Retired'),
(27, 'Admin Rejected'),
(28, 'Scammer'),
(29, 'Confirm Don\'t Want'),
(30, 'Unemployed'),
(31, 'Chinese'),
(32, 'Company\'s Client'),
(33, 'Unqualified'),
(34, 'No Apply'),
(35, 'No Online Banking'),
(36, 'No Pick Up');

-- --------------------------------------------------------

--
-- Table structure for table `design_list`
--

CREATE TABLE `design_list` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price_within` double NOT NULL,
  `price_above` double NOT NULL,
  `center_id` int(11) NOT NULL,
  `agent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `design_list`
--

INSERT INTO `design_list` (`id`, `name`, `price_within`, `price_above`, `center_id`, `agent_id`) VALUES
(1, 'French Pleat', 10, 12, 6, 11),
(2, 'Singapore Pleat', 12, 14, 6, 11);

-- --------------------------------------------------------

--
-- Table structure for table `domain_list_setting`
--

CREATE TABLE `domain_list_setting` (
  `id` int(11) NOT NULL,
  `domain_name` varchar(256) NOT NULL,
  `table_prefix` varchar(256) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `first_method` int(11) NOT NULL DEFAULT '1',
  `date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `domain_list_setting`
--

INSERT INTO `domain_list_setting` (`id`, `domain_name`, `table_prefix`, `status`, `first_method`, `date`) VALUES
(1, 'crm.ecomdemo.xyz', '', 1, 1, '2022-12-31 10:42:53.748491'),
(6, 'testingcrm', 'crm_1672226998_31_', 1, 1, '2022-12-28 11:30:00.000000'),
(7, 'testcrm12', 'crm_1672227014_785_', 1, 1, '2022-12-28 11:30:15.000000'),
(9, 'first1', 'crm_1672369053_65_', 1, 1, '2023-01-02 01:52:14.506639'),
(12, 'second1.ecomdemo.xyz', 'crm_1672465889_871_', 1, 0, '2023-01-02 01:52:38.597393'),
(13, 'third1.ecomdemo.xyz', 'crm_1672493553_901_', 1, 1, '2022-12-31 13:44:07.980794'),
(14, 'fourth.ecomdemo.xyz', 'crm_1672494306_309_', 1, 1, '2022-12-31 13:45:07.000000'),
(15, 'example.ecomdemo.xyz', 'crm_1672624682_287_', 1, 1, '2023-01-02 01:58:03.000000'),
(16, 'crm.cometosee.co', 'crm_1672626712_34_', 1, 1, '2023-01-02 08:14:11.267028'),
(18, 'demo001.ecomdemo.xyz', 'crm_1675149678_350_', 1, 1, '2023-01-31 07:21:20.000000');

-- --------------------------------------------------------

--
-- Table structure for table `function_authorized`
--

CREATE TABLE `function_authorized` (
  `id` int(11) NOT NULL,
  `center_id` int(11) NOT NULL,
  `function` varchar(255) NOT NULL,
  `status` int(1) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `function_authorized`
--

INSERT INTO `function_authorized` (`id`, `center_id`, `function`, `status`, `date_time`) VALUES
(1, 1, 'Customer Card', 1, '2023-01-27 06:03:11'),
(2, 1, 'Customer Card', 0, '2023-01-27 06:03:12'),
(3, 1, 'Customer Card', 1, '2023-01-27 06:03:12'),
(4, 2, 'Customer Card', 1, '2023-01-27 06:04:07'),
(5, 3, 'Customer Card', 1, '2023-01-27 06:04:07'),
(6, 4, 'Customer Card', 1, '2023-01-27 06:04:08'),
(7, 5, 'Customer Card', 1, '2023-01-27 06:04:08'),
(13, 1, 'Collection', 1, '2023-01-27 06:05:03'),
(14, 2, 'Collection', 1, '2023-01-27 06:05:04'),
(15, 3, 'Collection', 1, '2023-01-27 06:05:04'),
(16, 4, 'Collection', 1, '2023-01-27 06:05:05'),
(17, 5, 'Collection', 1, '2023-01-27 06:05:05'),
(18, 1, 'Monthly Report', 1, '2023-01-27 06:05:08'),
(19, 2, 'Monthly Report', 1, '2023-01-27 06:05:09'),
(20, 3, 'Monthly Report', 1, '2023-01-27 06:05:09'),
(21, 4, 'Monthly Report', 1, '2023-01-27 06:05:10'),
(22, 5, 'Monthly Report', 1, '2023-01-27 06:05:10'),
(23, 1, 'Daily Report', 1, '2023-01-27 06:05:14'),
(24, 2, 'Daily Report', 1, '2023-01-27 06:05:14'),
(25, 3, 'Daily Report', 1, '2023-01-27 06:05:15'),
(26, 4, 'Daily Report', 1, '2023-01-27 06:05:15'),
(27, 5, 'Daily Report', 1, '2023-01-27 06:05:15'),
(28, 1, 'Uncollected Report', 1, '2023-01-27 06:05:18'),
(29, 2, 'Uncollected Report', 1, '2023-01-27 06:05:19'),
(30, 3, 'Uncollected Report', 1, '2023-01-27 06:05:19'),
(31, 4, 'Uncollected Report', 1, '2023-01-27 06:05:20'),
(32, 5, 'Uncollected Report', 1, '2023-01-27 06:05:20'),
(33, 1, 'Customer Status Check', 1, '2023-01-27 06:05:23'),
(34, 2, 'Customer Status Check', 1, '2023-01-27 06:05:23'),
(35, 3, 'Customer Status Check', 1, '2023-01-27 06:05:24'),
(36, 4, 'Customer Status Check', 1, '2023-01-27 06:05:25'),
(37, 5, 'Customer Status Check', 1, '2023-01-27 06:05:26'),
(38, 1, 'Uncollected Report', 0, '2023-01-27 06:05:55'),
(39, 1, 'Uncollected Report', 1, '2023-01-27 06:05:58'),
(40, 5, 'User Maintenance', 1, '2023-01-27 06:12:51'),
(41, 5, 'Customer Card', 0, '2023-01-27 06:12:58'),
(42, 1, 'User Maintenance', 1, '2023-01-27 07:09:21'),
(43, 2, 'User Maintenance', 1, '2023-01-27 07:09:22'),
(44, 3, 'User Maintenance', 1, '2023-01-27 07:09:23'),
(45, 4, 'User Maintenance', 1, '2023-01-27 07:09:23'),
(46, 4, 'User Maintenance', 0, '2023-01-27 07:09:24'),
(47, 3, 'User Maintenance', 0, '2023-01-27 07:09:24'),
(48, 2, 'User Maintenance', 0, '2023-01-27 07:09:24'),
(49, 1, 'User Maintenance', 0, '2023-01-27 07:09:25'),
(50, 5, 'Customer Status Check', 0, '2023-01-27 08:10:33'),
(51, 1, 'Monthly Report', 0, '2023-01-27 08:20:00'),
(52, 1, 'Monthly Report', 1, '2023-01-27 08:20:08'),
(53, 1, 'Customer Card', 0, '2023-01-27 08:20:24'),
(54, 1, 'Customer Card', 1, '2023-01-27 08:20:29'),
(55, 1, 'Collection', 0, '2023-01-27 08:21:01'),
(56, 1, 'Collection', 1, '2023-01-27 08:21:06'),
(57, 5, 'User Maintenance', 0, '2023-01-27 09:07:01'),
(58, 5, 'User Maintenance', 1, '2023-01-27 09:07:07'),
(59, 5, 'User Maintenance', 0, '2023-01-27 09:11:00'),
(60, 5, 'User Maintenance', 1, '2023-01-27 09:11:04'),
(61, 6, 'Customer Card', 1, '2023-01-28 02:56:56'),
(62, 6, 'Collection', 1, '2023-01-28 02:57:12'),
(63, 6, 'Monthly Report', 1, '2023-01-28 02:57:18'),
(64, 6, 'Daily Report', 1, '2023-01-28 02:57:21'),
(65, 6, 'Uncollected Report', 1, '2023-01-28 02:57:24'),
(66, 6, 'Customer Status Check', 1, '2023-01-28 02:57:29'),
(67, 6, 'Customer Status Check', 0, '2023-01-28 02:57:35'),
(68, 6, 'Customer Status Check', 1, '2023-01-28 02:57:39'),
(69, 6, 'Uncollected Report', 0, '2023-01-28 02:57:42'),
(70, 6, 'Daily Report', 0, '2023-01-28 02:57:46'),
(71, 6, 'Monthly Report', 0, '2023-01-28 02:57:49'),
(72, 6, 'Monthly Report', 1, '2023-01-28 02:57:57'),
(73, 6, 'Customer Status Check', 0, '2023-01-28 02:58:02'),
(74, 6, 'User Maintenance', 1, '2023-01-28 02:58:05'),
(75, 6, 'Customer', 1, '2023-01-28 03:17:03'),
(76, 6, 'Customer', 0, '2023-01-28 03:17:06'),
(77, 6, 'Customer', 1, '2023-01-28 03:17:07'),
(78, 6, 'Product List', 1, '2023-01-28 03:17:10'),
(79, 6, 'Monthly Report', 0, '2023-01-28 03:19:25'),
(80, 6, 'Collection', 0, '2023-01-28 03:19:29'),
(81, 6, 'Customer Card', 0, '2023-01-28 03:19:32'),
(82, 6, 'User Maintenance', 0, '2023-01-28 03:20:07'),
(83, 6, 'User Maintenance', 1, '2023-01-28 03:20:08'),
(84, 6, 'Customer Card', 1, '2023-01-28 03:22:07'),
(85, 6, 'Customer Card', 0, '2023-01-28 03:25:33'),
(86, 6, 'Order List', 1, '2023-02-04 04:28:52'),
(87, 9, 'Customer Card', 1, '2023-02-07 03:48:36'),
(88, 9, 'Collection', 1, '2023-02-07 03:48:39'),
(89, 9, 'Monthly Report', 1, '2023-02-07 03:48:43'),
(90, 9, 'Daily Report', 1, '2023-02-07 03:48:46'),
(91, 9, 'Uncollected Report', 1, '2023-02-07 03:48:49'),
(92, 9, 'Customer Status Check', 1, '2023-02-07 03:48:53'),
(93, 9, 'User Maintenance', 1, '2023-02-07 03:48:57'),
(94, 9, 'Customer', 1, '2023-02-07 07:00:07'),
(95, 9, 'Customer', 0, '2023-02-07 07:00:08'),
(96, 9, 'Customer', 1, '2023-02-07 07:00:11'),
(97, 9, 'Customer', 0, '2023-02-07 07:00:12'),
(98, 9, 'Customer', 1, '2023-02-07 07:00:21'),
(99, 9, 'Customer', 0, '2023-02-07 07:00:22'),
(100, 9, 'Product List', 1, '2023-02-07 07:00:26'),
(101, 9, 'Product List', 0, '2023-02-07 07:00:26'),
(102, 9, 'Product List', 0, '2023-02-07 07:00:28'),
(103, 9, 'Order List', 1, '2023-02-07 07:00:31'),
(104, 9, 'Order List', 0, '2023-02-07 07:00:32'),
(105, 9, 'Inquiry List', 1, '2023-02-15 08:40:02'),
(106, 1, 'Inquiry List', 1, '2023-02-15 08:52:49'),
(107, 1, 'Inquiry List', 0, '2023-02-15 08:52:50'),
(108, 2, 'Inquiry List', 1, '2023-02-15 08:52:51'),
(109, 2, 'Inquiry List', 0, '2023-02-15 08:52:52'),
(110, 3, 'Inquiry List', 1, '2023-02-15 08:52:52'),
(111, 3, 'Inquiry List', 0, '2023-02-15 08:52:54'),
(112, 4, 'Inquiry List', 1, '2023-02-15 08:52:54'),
(113, 4, 'Inquiry List', 0, '2023-02-15 08:52:55'),
(114, 5, 'Inquiry List', 1, '2023-02-15 08:52:56'),
(115, 5, 'Inquiry List', 0, '2023-02-15 08:52:56'),
(116, 5, 'Inquiry List', 0, '2023-02-15 08:52:58'),
(117, 6, 'Inquiry List', 1, '2023-02-15 08:52:59'),
(118, 6, 'Inquiry List', 0, '2023-02-15 08:52:59'),
(119, 6, 'Inquiry List', 0, '2023-02-15 08:53:01'),
(120, 10, 'Customer Card', 1, '2023-03-01 01:48:27'),
(121, 10, 'Collection', 1, '2023-03-01 01:48:32'),
(122, 10, 'Monthly Report', 1, '2023-03-01 01:48:35'),
(123, 10, 'Daily Report', 1, '2023-03-01 01:48:39'),
(124, 10, 'Uncollected Report', 1, '2023-03-01 01:48:43'),
(125, 10, 'Customer Status Check', 1, '2023-03-01 01:48:47'),
(126, 10, 'User Maintenance', 1, '2023-03-01 01:48:50'),
(127, 10, 'Customer', 1, '2023-03-01 01:48:53'),
(128, 10, 'Customer', 0, '2023-03-01 01:48:54'),
(129, 10, 'Product List', 1, '2023-03-01 01:48:57'),
(130, 10, 'Product List', 0, '2023-03-01 01:48:58'),
(131, 10, 'Order List', 1, '2023-03-01 01:49:04'),
(132, 10, 'Order List', 0, '2023-03-01 01:49:05'),
(133, 10, 'Inquiry List', 1, '2023-03-01 01:49:08'),
(134, 10, 'Inquiry List', 0, '2023-03-01 01:49:09');

-- --------------------------------------------------------

--
-- Table structure for table `function_list`
--

CREATE TABLE `function_list` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `function_list`
--

INSERT INTO `function_list` (`id`, `name`, `type`) VALUES
(1, 'Customer Card', 'Loan'),
(2, 'Collection', 'Loan'),
(3, 'Monthly Report', 'Loan'),
(4, 'Daily Report', 'Loan'),
(5, 'Uncollected Report', 'Loan'),
(6, 'Customer Status Check', 'Loan'),
(7, 'User Maintenance', 'All'),
(8, 'Customer', 'Product'),
(9, 'Product List', 'Product'),
(10, 'Order List', 'Product'),
(11, 'Inquiry List', 'Loan');

-- --------------------------------------------------------

--
-- Table structure for table `inquiry`
--

CREATE TABLE `inquiry` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `type2` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `page_name` varchar(255) NOT NULL DEFAULT '---',
  `website` varchar(255) NOT NULL,
  `source` varchar(255) NOT NULL,
  `insert_date` varchar(255) NOT NULL,
  `branch` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `ic` varchar(255) NOT NULL,
  `contact_no` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `race` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `occupation` varchar(255) NOT NULL,
  `job` varchar(255) NOT NULL,
  `income` double NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `bank_acc` varchar(255) NOT NULL,
  `bank_holder` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `post_code` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `state_confirmation` varchar(255) NOT NULL,
  `amount` double NOT NULL,
  `customer_remark` text NOT NULL,
  `cs_remark` text NOT NULL,
  `status` varchar(255) NOT NULL,
  `cus_status` varchar(255) DEFAULT NULL,
  `center` int(11) NOT NULL,
  `agent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inquiry`
--

INSERT INTO `inquiry` (`id`, `type`, `type2`, `item`, `page_name`, `website`, `source`, `insert_date`, `branch`, `name`, `ic`, `contact_no`, `email`, `race`, `gender`, `occupation`, `job`, `income`, `bank_name`, `bank_acc`, `bank_holder`, `address`, `post_code`, `city`, `state`, `state_confirmation`, `amount`, `customer_remark`, `cs_remark`, `status`, `cus_status`, `center`, `agent_id`) VALUES
(12, 'OBL Method', '-- None --', '', '---', 'onebizloan.com', 'Friendintro', '2023-02-24 14:57:07', 'OB - 004 - SEAN', 'WANG LENG CHAI', '740411016845', '0197828095', '', 'Malay', 'Male', '--- Select Ocupation Category ---', '', 0, '--- Select Bank ---', '', '', '', '', '', 'JOHOR', 'Johor', 0, '', '', 'Success', '', 9, 12),
(13, 'OBL Method', '-- None --', '', '---', 'onebizloan.com', 'Friendintro', '2023-02-24 15:04:23', 'OB - 004 - SEAN', 'CHAN KOK WAI', '890813146101', '0126572775', '', 'Malay', 'Male', '-- Select Ocupation Category --', '', 0, '--- Select Bank ---', '', '', '', '', '', 'SELANGOR', 'Selangor', 0, '', '', 'Success', '', 9, 12),
(14, 'OBL Method', '-- None --', '', '---', '', 'Leadform', '2023-02-25 13:13:38', '', 'abc ', '12345', '12345678', '12345@hotmail.com', 'Chinese', 'Male', 'Operator and Security Related', 'operator ', 5000, '--- Select Bank ---', '', '', '', '', 'pudu ', 'kl ', 'Kuala Lumpur', 6000, 'ok ', 'ok \r\n', 'Processing', 'Chinese', 9, 12);

-- --------------------------------------------------------

--
-- Table structure for table `installment`
--

CREATE TABLE `installment` (
  `id` int(11) NOT NULL,
  `installment_id` varchar(255) NOT NULL,
  `user` int(11) NOT NULL,
  `center` int(11) NOT NULL,
  `branch` varchar(255) NOT NULL,
  `application_date` varchar(255) NOT NULL,
  `loan_amount` int(11) NOT NULL,
  `payment_due_date` varchar(255) NOT NULL,
  `installment_amount` double NOT NULL,
  `lates_charge` double NOT NULL,
  `payment_made` double NOT NULL,
  `payment_amount` double NOT NULL,
  `loan_remark` varchar(255) NOT NULL,
  `loan_status` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `job_appointment`
--

CREATE TABLE `job_appointment` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `quotation_id` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `date_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_appointment`
--

INSERT INTO `job_appointment` (`id`, `customer_id`, `quotation_id`, `date`, `date_time`) VALUES
(9, 13, 13, '2023-02-18', '2023-02-18 09:09:56'),
(10, 13, 24, '2023-02-20', '2023-02-20 15:10:53'),
(11, 13, 26, '2023-02-21', '2023-02-21 01:39:48');

-- --------------------------------------------------------

--
-- Table structure for table `product_list`
--

CREATE TABLE `product_list` (
  `id` int(11) NOT NULL,
  `center_id` int(11) NOT NULL,
  `product` varchar(255) NOT NULL,
  `fabric_size` int(11) NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'Blind',
  `price` double NOT NULL,
  `agent_id` int(11) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_list`
--

INSERT INTO `product_list` (`id`, `center_id`, `product`, `fabric_size`, `type`, `price`, `agent_id`, `date_time`) VALUES
(1, 6, 'Jotex - Ultra', 126, 'Curtain', 52.6, 11, '2023-01-28 08:19:18'),
(2, 6, 'Jotex - Como', 126, 'Curtain', 48, 11, '2023-01-28 08:19:18'),
(3, 6, 'Jotex - Moss', 126, 'Curtain', 54, 11, '2023-01-28 08:19:18'),
(4, 6, 'Jotex - Betta', 126, 'Curtain', 44.6, 11, '2023-01-28 08:19:18'),
(5, 6, 'PRO - PW', 126, 'Curtain', 39.6, 11, '2023-01-28 08:19:18'),
(6, 6, 'PRO - YW3', 126, 'Curtain', 42.6, 11, '2023-01-28 08:19:18'),
(7, 6, 'PRO - VIE', 126, 'Curtain', 41, 11, '2023-01-28 08:19:18'),
(8, 6, 'ZM - _9927', 126, 'Curtain', 46.8, 11, '2023-01-28 08:19:18'),
(9, 6, 'ZM - _9928', 126, 'Curtain', 50.4, 11, '2023-01-28 08:19:18'),
(10, 6, 'ZM - _9930', 126, 'Curtain', 46.8, 11, '2023-01-28 08:19:18'),
(11, 6, 'ZM - _9931', 126, 'Curtain', 50.4, 11, '2023-01-28 08:19:18'),
(12, 6, 'ZM - _9932', 126, 'Curtain', 46.8, 11, '2023-01-28 08:19:18'),
(13, 6, 'ZM - _9933', 126, 'Curtain', 50.4, 11, '2023-01-28 08:19:18'),
(14, 6, 'ZM - _9935', 126, 'Curtain', 50.4, 11, '2023-01-28 08:19:18'),
(15, 6, 'ZM - _6330', 126, 'Curtain', 50.4, 11, '2023-01-28 08:19:18'),
(16, 6, 'ZM - _6333', 126, 'Curtain', 38, 11, '2023-01-28 08:19:18'),
(17, 6, 'ZM - _6335', 126, 'Curtain', 38, 11, '2023-01-28 08:19:18'),
(18, 6, 'ZM - _6337', 126, 'Curtain', 46.8, 11, '2023-01-28 08:19:18'),
(19, 6, 'ZM - _6338', 126, 'Curtain', 46.8, 11, '2023-01-28 08:19:18'),
(20, 6, 'ZM - _6339', 126, 'Curtain', 46.8, 11, '2023-01-28 08:19:18'),
(21, 6, 'ZM - Sheer', 130, 'Curtain', 32, 11, '2023-01-28 08:19:18'),
(24, 6, 'Roller Blind - Blackout CMBO 211', 0, 'Blind', 10.5, 11, '2023-02-20 07:54:49'),
(25, 6, 'Roller Blind - Blackout CMBO 212', 0, 'Blind', 10.5, 11, '2023-02-20 07:54:49'),
(26, 6, 'Roller Blind - Blackout CMBO 213', 0, 'Blind', 10.5, 11, '2023-02-20 07:56:23'),
(27, 6, 'Roller Blind - Blackout CMBO 214', 0, 'Blind', 10.5, 11, '2023-02-20 07:56:23'),
(28, 6, 'Roller Blind - Blackout CMBO 215', 0, 'Blind', 10.5, 11, '2023-02-20 07:56:23'),
(29, 6, 'Roller Blind - Blackout CMBO 216', 0, 'Blind', 10.5, 11, '2023-02-20 07:56:23'),
(30, 6, 'Roller Blind - Blackout CMBO 217', 0, 'Blind', 10.5, 11, '2023-02-20 07:56:23'),
(31, 6, 'Roller Blind - Blackout CMBO 218', 0, 'Blind', 10.5, 11, '2023-02-20 07:56:23'),
(32, 6, 'Roller Blind - Non-blackout CST 6011', 0, 'Blind', 10.5, 11, '2023-02-20 07:58:28'),
(33, 6, 'Roller Blind - Non-blackout CST 6012', 0, 'Blind', 10.5, 11, '2023-02-20 08:08:33'),
(34, 6, 'Roller Blind - Non-blackout CST 6013', 0, 'Blind', 10.5, 11, '2023-02-20 08:09:26'),
(35, 6, 'Roller Blind - Non-blackout CST 6014', 0, 'Blind', 10.5, 11, '2023-02-20 08:09:26'),
(36, 6, 'Roller Blind - Non-blackout CST 6015', 0, 'Blind', 10.5, 11, '2023-02-20 08:09:26'),
(37, 6, 'Roller Blind - Non-blackout CST 6016', 0, 'Blind', 10.5, 11, '2023-02-20 08:09:26'),
(38, 6, 'Roller Blind - Non-blackout CST 6017', 0, 'Blind', 10.5, 11, '2023-02-20 08:09:26'),
(39, 6, 'Roller Blind - Sunscreen CMS 001', 0, 'Blind', 10.5, 11, '2023-02-20 08:10:30'),
(40, 6, 'Roller Blind - Sunscreen CMS 002', 0, 'Blind', 10.5, 11, '2023-02-20 08:10:30'),
(41, 6, 'Roller Blind - Sunscreen CMS 003', 0, 'Blind', 10.5, 11, '2023-02-20 08:10:30'),
(42, 6, 'Roller Blind - Sunscreen CMS 004', 0, 'Blind', 10.5, 11, '2023-02-20 08:10:30'),
(43, 6, 'Roller Blind - Sunscreen CMS 005', 0, 'Blind', 10.5, 11, '2023-02-20 08:10:30'),
(44, 6, 'Roller Blind - Sunscreen CMS 006', 0, 'Blind', 10.5, 11, '2023-02-20 08:10:30'),
(45, 6, 'Roller Blind - Sunscreen CMS 007', 0, 'Blind', 10.5, 11, '2023-02-20 08:10:30'),
(46, 6, 'Roller Blind - Sunscreen CMS 008', 0, 'Blind', 10.5, 11, '2023-02-20 08:10:30'),
(47, 6, 'Roller Blind - Sunscreen CMS 009', 0, 'Blind', 10.5, 11, '2023-02-20 08:10:30'),
(48, 6, 'Roller Blind - Sunscreen CMS 010', 0, 'Blind', 10.5, 11, '2023-02-20 08:10:30'),
(58, 6, 'Zebra Blind - CZ 9911', 0, 'Blind', 11.4, 11, '2023-02-20 08:18:31'),
(59, 6, 'Zebra Blind - CZ 9912', 0, 'Blind', 11.4, 11, '2023-02-20 08:22:04'),
(60, 6, 'Zebra Blind - CZ 9913', 0, 'Blind', 11.4, 11, '2023-02-20 08:22:04'),
(61, 6, 'Zebra Blind - CZ 9914', 0, 'Blind', 11.4, 11, '2023-02-20 08:22:04'),
(62, 6, 'Zebra Blind - CZ 9915', 0, 'Blind', 11.4, 11, '2023-02-20 08:22:04'),
(63, 6, 'Zebra Blind - CZ 9916', 0, 'Blind', 11.4, 11, '2023-02-20 08:22:04'),
(64, 6, 'Zebra Blind - CZ 9917', 0, 'Blind', 11.4, 11, '2023-02-20 08:22:04'),
(65, 6, 'Zebra Blind - CZ 9918', 0, 'Blind', 11.4, 11, '2023-02-20 08:22:04'),
(66, 6, 'Zebra Blind - CZ 9919', 0, 'Blind', 11.4, 11, '2023-02-20 08:22:04'),
(67, 6, 'Zebra Blind - CZ 9920', 0, 'Blind', 11.4, 11, '2023-02-20 08:22:04'),
(68, 6, 'Zebra Blind - CZ 9921', 0, 'Blind', 11.4, 11, '2023-02-20 08:22:04'),
(69, 6, 'Zebra Blind - CZ 9922', 0, 'Blind', 11.4, 11, '2023-02-20 08:22:04'),
(70, 6, 'Zebra Blind - CZ 9923', 0, 'Blind', 11.4, 11, '2023-02-20 08:22:04'),
(71, 6, 'Zebra Blind - CZ 9924', 0, 'Blind', 11.4, 11, '2023-02-20 08:22:04'),
(72, 6, 'Zebra Blind - CZ 9925', 0, 'Blind', 11.4, 11, '2023-02-20 08:22:04'),
(73, 6, 'Zebra Blind - CZ 9926', 0, 'Blind', 11.4, 11, '2023-02-20 08:22:04'),
(74, 6, 'Zebra Blind - CZ 9927', 0, 'Blind', 11.4, 11, '2023-02-20 08:22:04'),
(75, 6, 'Zebra Blind - CZ 9928', 0, 'Blind', 11.4, 11, '2023-02-20 08:22:04'),
(76, 6, 'Zebra Blind - CZ 9929', 0, 'Blind', 11.4, 11, '2023-02-20 08:22:04'),
(77, 6, 'Zebra Blind - CZ 9931', 0, 'Blind', 15, 11, '2023-02-20 08:24:12'),
(78, 6, 'Zebra Blind - CZ 9932', 0, 'Blind', 15, 11, '2023-02-20 08:24:12'),
(79, 6, 'Zebra Blind - CZ 9933', 0, 'Blind', 15, 11, '2023-02-20 08:24:12'),
(80, 6, 'Zebra Blind - CZ 9934', 0, 'Blind', 15, 11, '2023-02-20 08:24:12'),
(81, 6, 'Zebra Blind - CZ 9935', 0, 'Blind', 15, 11, '2023-02-20 08:24:12'),
(82, 6, 'Zebra Blind - CZ 9936', 0, 'Blind', 15, 11, '2023-02-20 08:24:12'),
(83, 6, 'Zebra Blind - CZ 9937', 0, 'Blind', 15, 11, '2023-02-20 08:24:12'),
(84, 6, 'Zebra Blind - CZ 9938', 0, 'Blind', 15, 11, '2023-02-20 08:24:12'),
(85, 6, 'Zebra Blind - CZ 9939', 0, 'Blind', 15, 11, '2023-02-20 08:24:12'),
(86, 6, 'Zebra Blind - CZ 2881', 0, 'Blind', 18.8, 11, '2023-02-20 08:25:11'),
(87, 6, 'Zebra Blind - CZ 2882', 0, 'Blind', 18.8, 11, '2023-02-20 08:25:11'),
(88, 6, 'Zebra Blind - CZ 2883', 0, 'Blind', 18.8, 11, '2023-02-20 08:25:11'),
(89, 6, 'Zebra Blind - CZ 2884', 0, 'Blind', 18.8, 11, '2023-02-20 08:25:11'),
(90, 6, 'Zebra Blind - CZ 2885', 0, 'Blind', 18.8, 11, '2023-02-20 08:25:11'),
(91, 6, 'Zebra Blind - CZ 2886', 0, 'Blind', 18.8, 11, '2023-02-20 08:25:11'),
(92, 6, 'Zebra Blind - CZ 2887', 0, 'Blind', 18.8, 11, '2023-02-20 08:25:11'),
(93, 6, 'Zebra Blind - CZ 2888', 0, 'Blind', 18.8, 11, '2023-02-20 08:25:11'),
(94, 6, 'Zebra Blind - CZ 2801 BO', 0, 'Blind', 14.3, 11, '2023-02-20 08:27:11'),
(95, 6, 'Zebra Blind - CZ 2802 BO', 0, 'Blind', 14.3, 11, '2023-02-20 08:27:11'),
(96, 6, 'Zebra Blind - CZ 2803 BO', 0, 'Blind', 14.3, 11, '2023-02-20 08:27:11'),
(97, 6, 'Zebra Blind - CZ 2804 BO', 0, 'Blind', 14.3, 11, '2023-02-20 08:27:11'),
(98, 6, 'Zebra Blind - CZ 2805 BO', 0, 'Blind', 14.3, 11, '2023-02-20 08:27:11'),
(99, 6, 'Zebra Blind - CZ 2806 BO', 0, 'Blind', 14.3, 11, '2023-02-20 08:27:11'),
(100, 6, 'Zebra Blind - CZ 2807 BO', 0, 'Blind', 14.3, 11, '2023-02-20 08:27:11'),
(101, 6, 'Zebra Blind - CZ 2808 BO', 0, 'Blind', 14.3, 11, '2023-02-20 08:27:11'),
(102, 6, 'Zebra Blind - CZ 9951 BO', 0, 'Blind', 23.3, 11, '2023-02-20 08:28:32'),
(103, 6, 'Zebra Blind - CZ 9952 BO', 0, 'Blind', 23.3, 11, '2023-02-20 08:28:32'),
(104, 6, 'Zebra Blind - CZ 9953 BO', 0, 'Blind', 23.3, 11, '2023-02-20 08:28:32'),
(105, 6, 'Zebra Blind - CZ 9954 BO', 0, 'Blind', 23.3, 11, '2023-02-20 08:28:32'),
(106, 6, 'Zebra Blind - CZ 9955 BO', 0, 'Blind', 23.3, 11, '2023-02-20 08:28:32'),
(107, 6, 'Zebra Blind - CZ 9956 BO', 0, 'Blind', 23.3, 11, '2023-02-20 08:28:32'),
(108, 6, 'Zebra Blind - CZ 9957 BO', 0, 'Blind', 23.3, 11, '2023-02-20 08:28:32'),
(109, 6, 'Zebra Blind - CZ 9958 BO', 0, 'Blind', 23.3, 11, '2023-02-20 08:28:32'),
(110, 6, 'Zebra Blind - CZ 9959 BO', 0, 'Blind', 23.3, 11, '2023-02-20 08:28:32'),
(111, 6, 'Zebra Blind - CZ 9960 BO', 0, 'Blind', 23.3, 11, '2023-02-20 08:28:32'),
(112, 6, 'Vertical Blind - Blackout', 0, 'Blind', 8.2, 11, '2023-02-20 08:29:28'),
(113, 6, 'Vertical Blind - Non-blackout', 0, 'Blind', 5, 11, '2023-02-20 08:29:28'),
(114, 6, 'Venetian Blind - White', 0, 'Blind', 9, 11, '2023-02-20 08:29:59'),
(115, 6, 'Venetian Blind - Blue Green', 0, 'Blind', 9, 11, '2023-02-20 08:29:59');

-- --------------------------------------------------------

--
-- Table structure for table `quotation`
--

CREATE TABLE `quotation` (
  `id` int(11) NOT NULL,
  `center_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `state` varchar(255) NOT NULL DEFAULT 'Pending',
  `date` date DEFAULT NULL,
  `agent_id` int(11) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quotation`
--

INSERT INTO `quotation` (`id`, `center_id`, `customer_id`, `state`, `date`, `agent_id`, `date_time`) VALUES
(11, 6, 13, 'Completed', '2023-02-01', 11, '2023-02-01 02:24:16'),
(13, 6, 13, 'Confirmed', '2023-02-04', 11, '2023-02-04 06:08:53'),
(14, 6, 13, 'Pending', '2023-02-04', 11, '2023-02-04 10:27:59'),
(22, 6, 29, 'Pending', '2023-02-18', 11, '2023-02-18 08:53:13'),
(23, 6, 30, 'Pending', '2023-02-20', 11, '2023-02-20 06:59:34'),
(24, 6, 13, 'Completed', '2023-02-20', 11, '2023-02-20 11:57:42'),
(25, 6, 13, 'Pending', '2023-02-21', 11, '2023-02-21 01:32:09'),
(26, 6, 13, 'Confirmed', '2023-02-21', 11, '2023-02-21 01:32:40'),
(27, 6, 31, 'Pending', '2023-02-21', 11, '2023-02-21 01:38:18'),
(28, 6, 32, 'Pending', '2023-02-21', 11, '2023-02-21 01:38:48'),
(29, 6, 33, 'Pending', '2023-02-27', 11, '2023-02-27 14:36:10'),
(31, 6, 13, 'Pending', '2023-03-25', 11, '2023-03-25 01:59:42'),
(32, 6, 36, 'Pending', '2023-03-25', 11, '2023-03-25 11:03:44');

-- --------------------------------------------------------

--
-- Table structure for table `quotation_details`
--

CREATE TABLE `quotation_details` (
  `id` int(11) NOT NULL,
  `quotation_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `track_id` int(11) NOT NULL,
  `design_id` int(11) NOT NULL,
  `quantity` float NOT NULL,
  `width` double NOT NULL,
  `height` double NOT NULL,
  `fabric_size` double NOT NULL,
  `price_1` double NOT NULL,
  `price_2` double NOT NULL,
  `price_3` double NOT NULL,
  `install` int(11) NOT NULL,
  `install_quantity` int(11) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quotation_details`
--

INSERT INTO `quotation_details` (`id`, `quotation_id`, `product_id`, `track_id`, `design_id`, `quantity`, `width`, `height`, `fabric_size`, `price_1`, `price_2`, `price_3`, `install`, `install_quantity`, `price`) VALUES
(22, 11, 1, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 105.2),
(23, 11, 22, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 12),
(25, 13, 16, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 76),
(26, 13, 22, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 12),
(27, 13, 23, 0, 0, 0.5, 0, 0, 0, 0, 0, 0, 0, 0, 7.5),
(28, 14, 7, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 123),
(35, 22, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 52.6),
(36, 23, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 52.6),
(37, 24, 1, 1, 1, 1, 12, 20, 20, 47.34, 12, 10, 0, 0, 69.34),
(40, 24, 4, 1, 1, 1, 12, 20, 20, 40.14, 12, 10, 0, 0, 62.14),
(41, 24, 24, 0, 0, 1, 12, 20, 0, 210, 0, 0, 1, 1, 240),
(42, 25, 115, 0, 0, 1, 10, 10, 0, 180, 0, 0, 1, 1, 210),
(43, 26, 1, 4, 2, 1, 12, 20, 10, 47.34, 20, 12, 0, 0, 79.34),
(44, 27, 2, 5, 2, 1, 12, 30, 10, 43.2, 28, 12, 0, 0, 83.2),
(45, 28, 25, 0, 0, 1, 5, 5, 0, 210, 0, 0, 1, 2, 270),
(46, 29, 1, 1, 1, 1, 100, 100, 126, 284.04, 108, 90, 0, 0, 482.04),
(48, 31, 1, 1, 1, 1, 20, 20, 20, 68.38, 24, 20, 0, 0, 112.38),
(49, 32, 27, 0, 0, 1, 13, 12, 0, 210, 0, 0, 1, 1, 240);

-- --------------------------------------------------------

--
-- Table structure for table `recently_login`
--

CREATE TABLE `recently_login` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recently_login`
--

INSERT INTO `recently_login` (`id`, `user_id`, `date`) VALUES
(1, 1, '1676601697'),
(2, 2, '1672368785'),
(3, 3, '1672632128'),
(4, 4, '1672393422'),
(5, 5, '1672624974'),
(6, 6, '1678506491'),
(7, 7, '1672714915'),
(8, 9, '1672715616'),
(9, 10, '1678265795'),
(10, 11, '1679742182'),
(11, 12, '1679128527'),
(12, 13, '1676104930'),
(13, 15, '1679318490');

-- --------------------------------------------------------

--
-- Table structure for table `super_admin_login`
--

CREATE TABLE `super_admin_login` (
  `id` int(10) NOT NULL,
  `companyid` varchar(256) NOT NULL,
  `loginid` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `group_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `super_admin_login`
--

INSERT INTO `super_admin_login` (`id`, `companyid`, `loginid`, `password`, `group_name`) VALUES
(1, 'admin', 'admin', 'admin123', 'superadmin');

-- --------------------------------------------------------

--
-- Table structure for table `track_list`
--

CREATE TABLE `track_list` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `center_id` int(11) NOT NULL,
  `agent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `track_list`
--

INSERT INTO `track_list` (`id`, `name`, `price`, `center_id`, `agent_id`) VALUES
(1, 'Aluminium Track Silver', 12, 6, 11),
(2, 'Aluminium Track White', 15, 6, 11),
(3, 'Aluminium Track Brown', 15, 6, 11),
(4, 'Wooden Rod', 20, 6, 11),
(5, 'Metal Rod', 28, 6, 11);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `group_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `center_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `user_name`, `group_name`, `center_id`, `password`, `position`) VALUES
(1, 'james', 'james', 'admin', '1', '123456', NULL),
(2, 'john', 'john', 'admin', '2', '123456', NULL),
(3, 'esther', 'esther', 'admin', '4', 'esther', NULL),
(4, 'test', 'test', 'center', '4', 'test', NULL),
(5, 'test2', 'test2', 'center', '4', 'test2', NULL),
(6, 'system88', 'admin88', 'admin', '5', 'admin88', NULL),
(10, 'system88', 'admin89', 'center', '5', 'admin89', NULL),
(11, 'axcurtain', 'admin', 'admin', '6', 'admin123', NULL),
(12, 'oblsystem', 'admin', 'admin', '9', 'admin123', 'admin'),
(13, 'system88', 'admin90', 'center', '5', 'admin90', NULL),
(15, 'test', 'admin', 'admin', '10', 'admin123', NULL),
(16, 'oblsystem', 'agent1', 'center', '9', 'agent1', 'agent');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administration`
--
ALTER TABLE `administration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `a_bank`
--
ALTER TABLE `a_bank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `a_customer`
--
ALTER TABLE `a_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `a_instalment`
--
ALTER TABLE `a_instalment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `a_loan`
--
ALTER TABLE `a_loan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `a_payment`
--
ALTER TABLE `a_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `center_detail`
--
ALTER TABLE `center_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `collection`
--
ALTER TABLE `collection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672225149_588_administration`
--
ALTER TABLE `crm_1672225149_588_administration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672225149_588_center_detail`
--
ALTER TABLE `crm_1672225149_588_center_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672225149_588_collection`
--
ALTER TABLE `crm_1672225149_588_collection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672225149_588_customers_card`
--
ALTER TABLE `crm_1672225149_588_customers_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672225149_588_customer_expenses`
--
ALTER TABLE `crm_1672225149_588_customer_expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672225149_588_recently_login`
--
ALTER TABLE `crm_1672225149_588_recently_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672225149_588_users`
--
ALTER TABLE `crm_1672225149_588_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672225340_385_administration`
--
ALTER TABLE `crm_1672225340_385_administration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672225340_385_center_detail`
--
ALTER TABLE `crm_1672225340_385_center_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672225340_385_collection`
--
ALTER TABLE `crm_1672225340_385_collection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672225340_385_customers_card`
--
ALTER TABLE `crm_1672225340_385_customers_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672225340_385_customer_expenses`
--
ALTER TABLE `crm_1672225340_385_customer_expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672225340_385_recently_login`
--
ALTER TABLE `crm_1672225340_385_recently_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672225340_385_users`
--
ALTER TABLE `crm_1672225340_385_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672225785_977_administration`
--
ALTER TABLE `crm_1672225785_977_administration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672225785_977_center_detail`
--
ALTER TABLE `crm_1672225785_977_center_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672225785_977_collection`
--
ALTER TABLE `crm_1672225785_977_collection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672225785_977_customers_card`
--
ALTER TABLE `crm_1672225785_977_customers_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672225785_977_customer_expenses`
--
ALTER TABLE `crm_1672225785_977_customer_expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672225785_977_recently_login`
--
ALTER TABLE `crm_1672225785_977_recently_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672225785_977_users`
--
ALTER TABLE `crm_1672225785_977_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672226998_31_administration`
--
ALTER TABLE `crm_1672226998_31_administration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672226998_31_center_detail`
--
ALTER TABLE `crm_1672226998_31_center_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672226998_31_collection`
--
ALTER TABLE `crm_1672226998_31_collection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672226998_31_customers_card`
--
ALTER TABLE `crm_1672226998_31_customers_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672226998_31_customer_expenses`
--
ALTER TABLE `crm_1672226998_31_customer_expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672226998_31_recently_login`
--
ALTER TABLE `crm_1672226998_31_recently_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672226998_31_users`
--
ALTER TABLE `crm_1672226998_31_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672227014_785_administration`
--
ALTER TABLE `crm_1672227014_785_administration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672227014_785_center_detail`
--
ALTER TABLE `crm_1672227014_785_center_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672227014_785_collection`
--
ALTER TABLE `crm_1672227014_785_collection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672227014_785_customers_card`
--
ALTER TABLE `crm_1672227014_785_customers_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672227014_785_customer_expenses`
--
ALTER TABLE `crm_1672227014_785_customer_expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672227014_785_recently_login`
--
ALTER TABLE `crm_1672227014_785_recently_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672227014_785_users`
--
ALTER TABLE `crm_1672227014_785_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672368458_188_administration`
--
ALTER TABLE `crm_1672368458_188_administration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672368458_188_center_detail`
--
ALTER TABLE `crm_1672368458_188_center_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672368458_188_collection`
--
ALTER TABLE `crm_1672368458_188_collection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672368458_188_customers_card`
--
ALTER TABLE `crm_1672368458_188_customers_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672368458_188_customer_expenses`
--
ALTER TABLE `crm_1672368458_188_customer_expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672368458_188_recently_login`
--
ALTER TABLE `crm_1672368458_188_recently_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672368458_188_users`
--
ALTER TABLE `crm_1672368458_188_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672369053_65_administration`
--
ALTER TABLE `crm_1672369053_65_administration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672369053_65_center_detail`
--
ALTER TABLE `crm_1672369053_65_center_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672369053_65_collection`
--
ALTER TABLE `crm_1672369053_65_collection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672369053_65_customers_card`
--
ALTER TABLE `crm_1672369053_65_customers_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672369053_65_customer_expenses`
--
ALTER TABLE `crm_1672369053_65_customer_expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672369053_65_recently_login`
--
ALTER TABLE `crm_1672369053_65_recently_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672369053_65_users`
--
ALTER TABLE `crm_1672369053_65_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672464755_306_administration`
--
ALTER TABLE `crm_1672464755_306_administration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672464755_306_center_detail`
--
ALTER TABLE `crm_1672464755_306_center_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672464755_306_collection`
--
ALTER TABLE `crm_1672464755_306_collection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672464755_306_customers_card`
--
ALTER TABLE `crm_1672464755_306_customers_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672464755_306_customer_expenses`
--
ALTER TABLE `crm_1672464755_306_customer_expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672464755_306_recently_login`
--
ALTER TABLE `crm_1672464755_306_recently_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672464755_306_users`
--
ALTER TABLE `crm_1672464755_306_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672464806_683_administration`
--
ALTER TABLE `crm_1672464806_683_administration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672464806_683_center_detail`
--
ALTER TABLE `crm_1672464806_683_center_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672464806_683_collection`
--
ALTER TABLE `crm_1672464806_683_collection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672464806_683_customers_card`
--
ALTER TABLE `crm_1672464806_683_customers_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672464806_683_customer_expenses`
--
ALTER TABLE `crm_1672464806_683_customer_expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672464806_683_recently_login`
--
ALTER TABLE `crm_1672464806_683_recently_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672464806_683_users`
--
ALTER TABLE `crm_1672464806_683_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672465889_871_administration`
--
ALTER TABLE `crm_1672465889_871_administration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672465889_871_center_detail`
--
ALTER TABLE `crm_1672465889_871_center_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672465889_871_collection`
--
ALTER TABLE `crm_1672465889_871_collection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672465889_871_customers_card`
--
ALTER TABLE `crm_1672465889_871_customers_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672465889_871_customer_expenses`
--
ALTER TABLE `crm_1672465889_871_customer_expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672465889_871_recently_login`
--
ALTER TABLE `crm_1672465889_871_recently_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672465889_871_users`
--
ALTER TABLE `crm_1672465889_871_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672493553_901_administration`
--
ALTER TABLE `crm_1672493553_901_administration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672493553_901_center_detail`
--
ALTER TABLE `crm_1672493553_901_center_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672493553_901_collection`
--
ALTER TABLE `crm_1672493553_901_collection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672493553_901_customers_card`
--
ALTER TABLE `crm_1672493553_901_customers_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672493553_901_customer_expenses`
--
ALTER TABLE `crm_1672493553_901_customer_expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672493553_901_recently_login`
--
ALTER TABLE `crm_1672493553_901_recently_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672493553_901_users`
--
ALTER TABLE `crm_1672493553_901_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672494306_309_administration`
--
ALTER TABLE `crm_1672494306_309_administration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672494306_309_center_detail`
--
ALTER TABLE `crm_1672494306_309_center_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672494306_309_collection`
--
ALTER TABLE `crm_1672494306_309_collection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672494306_309_customers_card`
--
ALTER TABLE `crm_1672494306_309_customers_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672494306_309_customer_expenses`
--
ALTER TABLE `crm_1672494306_309_customer_expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672494306_309_recently_login`
--
ALTER TABLE `crm_1672494306_309_recently_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672494306_309_users`
--
ALTER TABLE `crm_1672494306_309_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672624682_287_administration`
--
ALTER TABLE `crm_1672624682_287_administration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672624682_287_center_detail`
--
ALTER TABLE `crm_1672624682_287_center_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672624682_287_collection`
--
ALTER TABLE `crm_1672624682_287_collection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672624682_287_customers_card`
--
ALTER TABLE `crm_1672624682_287_customers_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672624682_287_customer_expenses`
--
ALTER TABLE `crm_1672624682_287_customer_expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672624682_287_recently_login`
--
ALTER TABLE `crm_1672624682_287_recently_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672624682_287_users`
--
ALTER TABLE `crm_1672624682_287_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672626712_34_administration`
--
ALTER TABLE `crm_1672626712_34_administration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672626712_34_center_detail`
--
ALTER TABLE `crm_1672626712_34_center_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672626712_34_collection`
--
ALTER TABLE `crm_1672626712_34_collection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672626712_34_customers_card`
--
ALTER TABLE `crm_1672626712_34_customers_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672626712_34_customer_expenses`
--
ALTER TABLE `crm_1672626712_34_customer_expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672626712_34_recently_login`
--
ALTER TABLE `crm_1672626712_34_recently_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1672626712_34_users`
--
ALTER TABLE `crm_1672626712_34_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1675149658_184_administration`
--
ALTER TABLE `crm_1675149658_184_administration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1675149658_184_center_detail`
--
ALTER TABLE `crm_1675149658_184_center_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1675149658_184_collection`
--
ALTER TABLE `crm_1675149658_184_collection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1675149658_184_customers_card`
--
ALTER TABLE `crm_1675149658_184_customers_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1675149658_184_customer_expenses`
--
ALTER TABLE `crm_1675149658_184_customer_expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1675149658_184_recently_login`
--
ALTER TABLE `crm_1675149658_184_recently_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1675149658_184_users`
--
ALTER TABLE `crm_1675149658_184_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1675149678_350_administration`
--
ALTER TABLE `crm_1675149678_350_administration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1675149678_350_center_detail`
--
ALTER TABLE `crm_1675149678_350_center_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1675149678_350_collection`
--
ALTER TABLE `crm_1675149678_350_collection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1675149678_350_customers_card`
--
ALTER TABLE `crm_1675149678_350_customers_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1675149678_350_customer_expenses`
--
ALTER TABLE `crm_1675149678_350_customer_expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1675149678_350_recently_login`
--
ALTER TABLE `crm_1675149678_350_recently_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_1675149678_350_users`
--
ALTER TABLE `crm_1675149678_350_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers_card`
--
ALTER TABLE `customers_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_expenses`
--
ALTER TABLE `customer_expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cus_status`
--
ALTER TABLE `cus_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `design_list`
--
ALTER TABLE `design_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `domain_list_setting`
--
ALTER TABLE `domain_list_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `function_authorized`
--
ALTER TABLE `function_authorized`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `function_list`
--
ALTER TABLE `function_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inquiry`
--
ALTER TABLE `inquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `installment`
--
ALTER TABLE `installment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_appointment`
--
ALTER TABLE `job_appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_list`
--
ALTER TABLE `product_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quotation`
--
ALTER TABLE `quotation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quotation_details`
--
ALTER TABLE `quotation_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recently_login`
--
ALTER TABLE `recently_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `super_admin_login`
--
ALTER TABLE `super_admin_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `track_list`
--
ALTER TABLE `track_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administration`
--
ALTER TABLE `administration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `a_bank`
--
ALTER TABLE `a_bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `a_customer`
--
ALTER TABLE `a_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `a_instalment`
--
ALTER TABLE `a_instalment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `a_loan`
--
ALTER TABLE `a_loan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `a_payment`
--
ALTER TABLE `a_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `center_detail`
--
ALTER TABLE `center_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `collection`
--
ALTER TABLE `collection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `crm_1672225149_588_administration`
--
ALTER TABLE `crm_1672225149_588_administration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672225149_588_center_detail`
--
ALTER TABLE `crm_1672225149_588_center_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672225149_588_collection`
--
ALTER TABLE `crm_1672225149_588_collection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672225149_588_customers_card`
--
ALTER TABLE `crm_1672225149_588_customers_card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672225149_588_customer_expenses`
--
ALTER TABLE `crm_1672225149_588_customer_expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672225149_588_recently_login`
--
ALTER TABLE `crm_1672225149_588_recently_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672225149_588_users`
--
ALTER TABLE `crm_1672225149_588_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672225340_385_administration`
--
ALTER TABLE `crm_1672225340_385_administration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672225340_385_center_detail`
--
ALTER TABLE `crm_1672225340_385_center_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672225340_385_collection`
--
ALTER TABLE `crm_1672225340_385_collection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672225340_385_customers_card`
--
ALTER TABLE `crm_1672225340_385_customers_card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672225340_385_customer_expenses`
--
ALTER TABLE `crm_1672225340_385_customer_expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672225340_385_recently_login`
--
ALTER TABLE `crm_1672225340_385_recently_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672225340_385_users`
--
ALTER TABLE `crm_1672225340_385_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672225785_977_administration`
--
ALTER TABLE `crm_1672225785_977_administration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672225785_977_center_detail`
--
ALTER TABLE `crm_1672225785_977_center_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672225785_977_collection`
--
ALTER TABLE `crm_1672225785_977_collection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672225785_977_customers_card`
--
ALTER TABLE `crm_1672225785_977_customers_card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672225785_977_customer_expenses`
--
ALTER TABLE `crm_1672225785_977_customer_expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672225785_977_recently_login`
--
ALTER TABLE `crm_1672225785_977_recently_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672225785_977_users`
--
ALTER TABLE `crm_1672225785_977_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672226998_31_administration`
--
ALTER TABLE `crm_1672226998_31_administration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672226998_31_center_detail`
--
ALTER TABLE `crm_1672226998_31_center_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672226998_31_collection`
--
ALTER TABLE `crm_1672226998_31_collection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672226998_31_customers_card`
--
ALTER TABLE `crm_1672226998_31_customers_card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672226998_31_customer_expenses`
--
ALTER TABLE `crm_1672226998_31_customer_expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672226998_31_recently_login`
--
ALTER TABLE `crm_1672226998_31_recently_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672226998_31_users`
--
ALTER TABLE `crm_1672226998_31_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672227014_785_administration`
--
ALTER TABLE `crm_1672227014_785_administration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672227014_785_center_detail`
--
ALTER TABLE `crm_1672227014_785_center_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672227014_785_collection`
--
ALTER TABLE `crm_1672227014_785_collection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672227014_785_customers_card`
--
ALTER TABLE `crm_1672227014_785_customers_card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672227014_785_customer_expenses`
--
ALTER TABLE `crm_1672227014_785_customer_expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672227014_785_recently_login`
--
ALTER TABLE `crm_1672227014_785_recently_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672227014_785_users`
--
ALTER TABLE `crm_1672227014_785_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672368458_188_administration`
--
ALTER TABLE `crm_1672368458_188_administration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672368458_188_center_detail`
--
ALTER TABLE `crm_1672368458_188_center_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672368458_188_collection`
--
ALTER TABLE `crm_1672368458_188_collection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672368458_188_customers_card`
--
ALTER TABLE `crm_1672368458_188_customers_card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672368458_188_customer_expenses`
--
ALTER TABLE `crm_1672368458_188_customer_expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672368458_188_recently_login`
--
ALTER TABLE `crm_1672368458_188_recently_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672368458_188_users`
--
ALTER TABLE `crm_1672368458_188_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672369053_65_administration`
--
ALTER TABLE `crm_1672369053_65_administration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672369053_65_center_detail`
--
ALTER TABLE `crm_1672369053_65_center_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672369053_65_collection`
--
ALTER TABLE `crm_1672369053_65_collection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672369053_65_customers_card`
--
ALTER TABLE `crm_1672369053_65_customers_card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672369053_65_customer_expenses`
--
ALTER TABLE `crm_1672369053_65_customer_expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672369053_65_recently_login`
--
ALTER TABLE `crm_1672369053_65_recently_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672369053_65_users`
--
ALTER TABLE `crm_1672369053_65_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672464755_306_administration`
--
ALTER TABLE `crm_1672464755_306_administration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672464755_306_center_detail`
--
ALTER TABLE `crm_1672464755_306_center_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672464755_306_collection`
--
ALTER TABLE `crm_1672464755_306_collection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672464755_306_customers_card`
--
ALTER TABLE `crm_1672464755_306_customers_card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672464755_306_customer_expenses`
--
ALTER TABLE `crm_1672464755_306_customer_expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672464755_306_recently_login`
--
ALTER TABLE `crm_1672464755_306_recently_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672464755_306_users`
--
ALTER TABLE `crm_1672464755_306_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672464806_683_administration`
--
ALTER TABLE `crm_1672464806_683_administration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672464806_683_center_detail`
--
ALTER TABLE `crm_1672464806_683_center_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672464806_683_collection`
--
ALTER TABLE `crm_1672464806_683_collection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672464806_683_customers_card`
--
ALTER TABLE `crm_1672464806_683_customers_card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672464806_683_customer_expenses`
--
ALTER TABLE `crm_1672464806_683_customer_expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672464806_683_recently_login`
--
ALTER TABLE `crm_1672464806_683_recently_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672464806_683_users`
--
ALTER TABLE `crm_1672464806_683_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672465889_871_administration`
--
ALTER TABLE `crm_1672465889_871_administration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672465889_871_center_detail`
--
ALTER TABLE `crm_1672465889_871_center_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672465889_871_collection`
--
ALTER TABLE `crm_1672465889_871_collection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672465889_871_customers_card`
--
ALTER TABLE `crm_1672465889_871_customers_card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672465889_871_customer_expenses`
--
ALTER TABLE `crm_1672465889_871_customer_expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672465889_871_recently_login`
--
ALTER TABLE `crm_1672465889_871_recently_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672465889_871_users`
--
ALTER TABLE `crm_1672465889_871_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672493553_901_administration`
--
ALTER TABLE `crm_1672493553_901_administration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672493553_901_center_detail`
--
ALTER TABLE `crm_1672493553_901_center_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672493553_901_collection`
--
ALTER TABLE `crm_1672493553_901_collection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672493553_901_customers_card`
--
ALTER TABLE `crm_1672493553_901_customers_card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672493553_901_customer_expenses`
--
ALTER TABLE `crm_1672493553_901_customer_expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672493553_901_recently_login`
--
ALTER TABLE `crm_1672493553_901_recently_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672493553_901_users`
--
ALTER TABLE `crm_1672493553_901_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672494306_309_administration`
--
ALTER TABLE `crm_1672494306_309_administration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672494306_309_center_detail`
--
ALTER TABLE `crm_1672494306_309_center_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672494306_309_collection`
--
ALTER TABLE `crm_1672494306_309_collection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672494306_309_customers_card`
--
ALTER TABLE `crm_1672494306_309_customers_card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672494306_309_customer_expenses`
--
ALTER TABLE `crm_1672494306_309_customer_expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672494306_309_recently_login`
--
ALTER TABLE `crm_1672494306_309_recently_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672494306_309_users`
--
ALTER TABLE `crm_1672494306_309_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672624682_287_administration`
--
ALTER TABLE `crm_1672624682_287_administration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672624682_287_center_detail`
--
ALTER TABLE `crm_1672624682_287_center_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672624682_287_collection`
--
ALTER TABLE `crm_1672624682_287_collection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672624682_287_customers_card`
--
ALTER TABLE `crm_1672624682_287_customers_card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672624682_287_customer_expenses`
--
ALTER TABLE `crm_1672624682_287_customer_expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672624682_287_recently_login`
--
ALTER TABLE `crm_1672624682_287_recently_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672624682_287_users`
--
ALTER TABLE `crm_1672624682_287_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672626712_34_administration`
--
ALTER TABLE `crm_1672626712_34_administration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672626712_34_center_detail`
--
ALTER TABLE `crm_1672626712_34_center_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672626712_34_collection`
--
ALTER TABLE `crm_1672626712_34_collection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672626712_34_customers_card`
--
ALTER TABLE `crm_1672626712_34_customers_card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672626712_34_customer_expenses`
--
ALTER TABLE `crm_1672626712_34_customer_expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672626712_34_recently_login`
--
ALTER TABLE `crm_1672626712_34_recently_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1672626712_34_users`
--
ALTER TABLE `crm_1672626712_34_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1675149658_184_administration`
--
ALTER TABLE `crm_1675149658_184_administration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1675149658_184_center_detail`
--
ALTER TABLE `crm_1675149658_184_center_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1675149658_184_collection`
--
ALTER TABLE `crm_1675149658_184_collection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1675149658_184_customers_card`
--
ALTER TABLE `crm_1675149658_184_customers_card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1675149658_184_customer_expenses`
--
ALTER TABLE `crm_1675149658_184_customer_expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1675149658_184_recently_login`
--
ALTER TABLE `crm_1675149658_184_recently_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1675149658_184_users`
--
ALTER TABLE `crm_1675149658_184_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1675149678_350_administration`
--
ALTER TABLE `crm_1675149678_350_administration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1675149678_350_center_detail`
--
ALTER TABLE `crm_1675149678_350_center_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1675149678_350_collection`
--
ALTER TABLE `crm_1675149678_350_collection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1675149678_350_customers_card`
--
ALTER TABLE `crm_1675149678_350_customers_card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1675149678_350_customer_expenses`
--
ALTER TABLE `crm_1675149678_350_customer_expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1675149678_350_recently_login`
--
ALTER TABLE `crm_1675149678_350_recently_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_1675149678_350_users`
--
ALTER TABLE `crm_1675149678_350_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `customers_card`
--
ALTER TABLE `customers_card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `customer_expenses`
--
ALTER TABLE `customer_expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `cus_status`
--
ALTER TABLE `cus_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `design_list`
--
ALTER TABLE `design_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `domain_list_setting`
--
ALTER TABLE `domain_list_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `function_authorized`
--
ALTER TABLE `function_authorized`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `function_list`
--
ALTER TABLE `function_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `inquiry`
--
ALTER TABLE `inquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `installment`
--
ALTER TABLE `installment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_appointment`
--
ALTER TABLE `job_appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `product_list`
--
ALTER TABLE `product_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `quotation`
--
ALTER TABLE `quotation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `quotation_details`
--
ALTER TABLE `quotation_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `recently_login`
--
ALTER TABLE `recently_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `super_admin_login`
--
ALTER TABLE `super_admin_login`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `track_list`
--
ALTER TABLE `track_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
