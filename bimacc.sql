-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.29-log - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for bimacc_production1
CREATE DATABASE IF NOT EXISTS `bimacc_production1` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `bimacc_production1`;

-- Dumping structure for table bimacc_production1.additional_payment_email
CREATE TABLE IF NOT EXISTS `additional_payment_email` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `claim_notice_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `email_id` varchar(250) DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `updated_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payment_status` varchar(250) DEFAULT NULL,
  `amount` int(100) DEFAULT NULL,
  `transaction_id` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table bimacc_production1.additional_payment_email: ~0 rows (approximately)
/*!40000 ALTER TABLE `additional_payment_email` DISABLE KEYS */;
/*!40000 ALTER TABLE `additional_payment_email` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.administration_fees
CREATE TABLE IF NOT EXISTS `administration_fees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `disputecategory_id` int(11) DEFAULT NULL,
  `disputsubecategory_id` int(11) DEFAULT NULL,
  `administration_fees` decimal(20,2) DEFAULT NULL,
  `valid_from` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `valid_to` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_id` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `fees_description` varchar(255) DEFAULT NULL,
  `claim_amount_from` decimal(13,2) DEFAULT NULL,
  `claim_amount_to` decimal(13,2) DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bimacc_production1.administration_fees: ~0 rows (approximately)
/*!40000 ALTER TABLE `administration_fees` DISABLE KEYS */;
/*!40000 ALTER TABLE `administration_fees` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.alfresco_log
CREATE TABLE IF NOT EXISTS `alfresco_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT NULL,
  `claimnotice_id` int(10) DEFAULT NULL,
  `start_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `end_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `doc_type` varchar(100) DEFAULT NULL,
  `claimnotice_no` varchar(100) DEFAULT NULL,
  `document_name` varchar(100) DEFAULT NULL,
  `stage_id` int(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table bimacc_production1.alfresco_log: ~77 rows (approximately)
/*!40000 ALTER TABLE `alfresco_log` DISABLE KEYS */;
REPLACE INTO `alfresco_log` (`id`, `user_id`, `claimnotice_id`, `start_time`, `end_time`, `doc_type`, `claimnotice_no`, `document_name`, `stage_id`) VALUES
	(1, 1039, NULL, '2023-09-13 11:55:16', '0000-00-00 00:00:00', 'claimant register', NULL, NULL, NULL),
	(2, 1040, NULL, '2023-11-01 15:32:19', '2023-11-01 15:32:19', 'claimant register', NULL, 'sample-1.pdf', NULL),
	(3, 1041, NULL, '2023-11-01 15:34:26', '2023-11-01 15:34:26', 'claimant register', NULL, 'sample-1.pdf', NULL),
	(4, 1042, NULL, '2023-11-01 15:40:33', '2023-11-01 15:40:33', 'claimant register', NULL, 'sample-1.pdf', NULL),
	(5, 1042, NULL, '2023-11-01 15:43:14', '2023-11-01 15:43:14', 'claimant_details', 'CN/EAS/2023/001', 'sample-1.pdf', NULL),
	(6, 1042, NULL, '2023-11-01 15:48:47', '2023-11-01 15:48:47', 'claimant_details', 'CN/EAS/2023/002', 'sample2.pdf', NULL),
	(7, 1042, NULL, '2023-11-01 15:52:43', '2023-11-01 15:52:43', 'claimant_details', 'CN/EAS/2023/003', 'sample2.pdf', NULL),
	(8, 1042, NULL, '2023-11-01 15:54:38', '2023-11-01 15:54:38', 'claimant_details', 'CN/EAS/2023/004', 'sample2.pdf', NULL),
	(9, 1042, NULL, '2023-11-01 15:59:21', '2023-11-01 15:59:21', 'claimant_details', 'CN/EAS/2023/005', 'sample2.pdf', NULL),
	(10, 1042, NULL, '2023-11-01 16:01:10', '2023-11-01 16:01:10', 'claimant_details', 'CN/EAS/2023/006', 'sample-1.pdf', NULL),
	(11, 1044, NULL, '2023-11-02 11:05:38', '2023-11-02 11:05:38', 'claimant register', NULL, 'sample-1.pdf', NULL),
	(12, 1046, NULL, '2023-11-02 15:53:00', '2023-11-02 15:53:00', 'claimant register', NULL, 'sample-1.pdf', NULL),
	(13, 1047, NULL, '2023-11-02 15:54:52', '2023-11-02 15:54:52', 'claimant register', NULL, 'sample-1.pdf', NULL),
	(14, 1048, NULL, '2023-11-02 15:58:43', '2023-11-02 15:58:43', 'claimant register', NULL, 'sample-1.pdf', NULL),
	(15, 1049, NULL, '2023-11-02 16:02:52', '2023-11-02 16:02:52', 'claimant register', NULL, 'sample-1.pdf', NULL),
	(16, 1050, NULL, '2023-11-02 16:10:17', '2023-11-02 16:10:17', 'claimant register', NULL, 'sample2.pdf', NULL),
	(17, 1051, NULL, '2023-11-02 16:13:16', '2023-11-02 16:13:16', 'claimant register', NULL, 'sample-1.pdf', NULL),
	(18, 1052, NULL, '2023-11-02 16:15:17', '2023-11-02 16:15:17', 'claimant register', NULL, 'sample2.pdf', NULL),
	(19, 1053, NULL, '2023-11-02 16:16:26', '2023-11-02 16:16:26', 'claimant register', NULL, 'sample2.pdf', NULL),
	(20, 1054, NULL, '2023-11-02 16:18:05', '2023-11-02 16:18:05', 'claimant register', NULL, 'sample2.pdf', NULL),
	(21, 1055, NULL, '2023-11-02 16:19:41', '2023-11-02 16:19:41', 'claimant register', NULL, 'sample2.pdf', NULL),
	(22, 1056, NULL, '2023-11-02 16:22:56', '2023-11-02 16:22:56', 'claimant register', NULL, 'sample2.pdf', NULL),
	(23, 1057, NULL, '2023-11-02 16:25:09', '2023-11-02 16:25:09', 'claimant register', NULL, 'sample2.pdf', NULL),
	(24, 1058, NULL, '2023-11-02 16:32:58', '2023-11-02 16:32:58', 'claimant register', NULL, 'sample2.pdf', NULL),
	(25, 1059, NULL, '2023-11-03 11:17:49', '2023-11-03 11:17:49', 'claimant register', NULL, 'sample2.pdf', NULL),
	(26, 1060, NULL, '2023-11-03 11:22:11', '2023-11-03 11:22:11', 'claimant register', NULL, 'sample2.pdf', NULL),
	(27, 1061, NULL, '2023-11-03 14:47:45', '2023-11-03 14:47:45', 'claimant register', NULL, 'sample2.pdf', NULL),
	(28, 1062, NULL, '2023-11-03 14:58:11', '2023-11-03 14:58:11', 'claimant register', NULL, 'sample2.pdf', NULL),
	(29, 1063, NULL, '2023-11-03 14:59:48', '2023-11-03 14:59:48', 'claimant register', NULL, 'sample-1.pdf', NULL),
	(30, 1064, NULL, '2023-11-03 15:01:12', '2023-11-03 15:01:12', 'claimant register', NULL, 'sample2.pdf', NULL),
	(31, 1065, NULL, '2023-11-03 15:03:03', '2023-11-03 15:03:03', 'claimant register', NULL, 'sample2.pdf', NULL),
	(32, 1066, NULL, '2023-11-03 15:04:53', '2023-11-03 15:04:53', 'claimant register', NULL, 'sample-1.pdf', NULL),
	(33, 1067, NULL, '2023-11-03 15:07:40', '2023-11-03 15:07:40', 'claimant register', NULL, 'sample2.pdf', NULL),
	(34, 1068, NULL, '2023-11-06 17:56:47', '2023-11-06 17:56:47', 'claimant register', NULL, 'sample-1.pdf', NULL),
	(35, 1069, NULL, '2023-11-06 18:01:49', '2023-11-06 18:01:49', 'claimant register', NULL, 'sample-1.pdf', NULL),
	(36, 1070, NULL, '2023-11-06 18:12:02', '2023-11-06 18:12:02', 'claimant register', NULL, 'sample-1.pdf', NULL),
	(37, 1071, NULL, '2023-11-06 18:16:39', '2023-11-06 18:16:39', 'claimant register', NULL, 'sample2.pdf', NULL),
	(38, 1072, NULL, '2023-11-07 15:21:46', '0000-00-00 00:00:00', 'claimant register', NULL, NULL, NULL),
	(39, 1073, NULL, '2023-11-07 15:24:25', '2023-11-07 15:24:25', 'claimant register', NULL, 'sample-1.pdf', NULL),
	(40, 1074, NULL, '2023-11-07 15:30:32', '2023-11-07 15:30:32', 'claimant register', NULL, 'sample-1.pdf', NULL),
	(41, 1075, NULL, '2023-11-07 15:35:51', '2023-11-07 15:35:51', 'claimant register', NULL, 'sample-1.pdf', NULL),
	(42, 1076, NULL, '2023-11-07 15:42:28', '2023-11-07 15:42:28', 'claimant register', NULL, 'sample-1.pdf', NULL),
	(43, 1077, NULL, '2023-11-07 15:50:27', '2023-11-07 15:50:27', 'claimant register', NULL, 'sample-1.pdf', NULL),
	(44, 1078, NULL, '2023-11-07 15:54:04', '2023-11-07 15:54:04', 'claimant register', NULL, 'sample-1.pdf', NULL),
	(45, 1079, NULL, '2023-11-07 16:13:11', '2023-11-07 16:13:11', 'claimant register', NULL, 'sample-1.pdf', NULL),
	(46, 1080, NULL, '2023-11-07 16:18:23', '2023-11-07 16:18:23', 'claimant register', NULL, 'sample-1.pdf', NULL),
	(47, 1081, NULL, '2023-11-07 16:25:06', '2023-11-07 16:25:06', 'claimant register', NULL, 'sample-1.pdf', NULL),
	(48, 1082, NULL, '2023-11-07 16:27:22', '2023-11-07 16:27:22', 'claimant register', NULL, 'sample-1.pdf', NULL),
	(49, 1083, NULL, '2023-11-07 16:44:06', '2023-11-07 16:44:06', 'claimant register', NULL, 'sample-1.pdf', NULL),
	(50, 1084, NULL, '2023-11-07 16:47:22', '2023-11-07 16:47:22', 'claimant register', NULL, 'sample-1.pdf', NULL),
	(51, 1085, NULL, '2023-11-07 16:55:47', '2023-11-07 16:55:47', 'claimant register', NULL, 'sample-1.pdf', NULL),
	(52, 1086, NULL, '2023-11-07 17:02:39', '2023-11-07 17:02:39', 'claimant register', NULL, 'sample-1.pdf', NULL),
	(53, 1087, NULL, '2023-11-08 17:10:13', '2023-11-08 17:10:13', 'claimant register', NULL, 'sample-1.pdf', NULL),
	(54, 1088, NULL, '2023-11-08 17:19:52', '2023-11-08 17:19:52', 'claimant register', NULL, 'sample2.pdf', NULL),
	(55, 1089, NULL, '2023-11-08 17:27:17', '2023-11-08 17:27:17', 'claimant register', NULL, 'sample2.pdf', NULL),
	(56, 1090, NULL, '2023-11-08 17:31:55', '2023-11-08 17:31:55', 'claimant register', NULL, 'sample2.pdf', NULL),
	(57, 1091, NULL, '2023-11-08 17:34:07', '2023-11-08 17:34:07', 'claimant register', NULL, 'sample2.pdf', NULL),
	(58, 1092, NULL, '2023-11-08 17:41:14', '2023-11-08 17:41:14', 'claimant register', NULL, 'sample2.pdf', NULL),
	(59, 1093, NULL, '2023-11-08 17:45:47', '2023-11-08 17:45:47', 'claimant register', NULL, 'sample-1.pdf', NULL),
	(60, 1094, NULL, '2023-11-08 17:46:54', '2023-11-08 17:46:54', 'claimant register', NULL, 'pic.png', NULL),
	(61, 1095, NULL, '2023-11-08 17:53:25', '2023-11-08 17:53:25', 'claimant register', NULL, 'sample2.pdf', NULL),
	(62, 1096, NULL, '2023-11-08 17:54:55', '2023-11-08 17:54:55', 'claimant register', NULL, 'pic.png', NULL),
	(63, 1097, NULL, '2023-11-08 18:31:25', '2023-11-08 18:31:25', 'claimant register', NULL, 'sample2.pdf', NULL),
	(64, 1098, NULL, '2023-11-08 18:35:03', '2023-11-08 18:35:03', 'claimant register', NULL, 'sample2.pdf', NULL),
	(65, 1099, NULL, '2023-11-08 18:45:16', '2023-11-08 18:45:16', 'claimant register', NULL, 'sample2.pdf', NULL),
	(66, 1100, NULL, '2023-11-08 18:47:26', '2023-11-08 18:47:26', 'claimant register', NULL, 'sample2.pdf', NULL),
	(67, 1101, NULL, '2023-11-08 18:49:04', '2023-11-08 18:49:04', 'claimant register', NULL, 'sample2.pdf', NULL),
	(68, 1102, NULL, '2023-11-09 09:44:20', '2023-11-09 09:44:20', 'claimant register', NULL, 'sample.pdf', NULL),
	(69, 1102, NULL, '2023-11-09 09:46:07', '2023-11-09 09:46:07', 'claimant_details', 'CN/EAS/2023/007', 'sample.pdf', NULL),
	(70, 1102, NULL, '2023-11-09 09:55:45', '2023-11-09 09:55:45', 'claimant_details', 'CN/EAS/2023/008', 'sample.pdf', NULL),
	(71, 1102, NULL, '2023-11-09 11:29:18', '2023-11-09 11:29:18', 'claimant_details', 'CN/EAS/2023/009', 'sample.pdf', NULL),
	(72, 1102, NULL, '2023-11-09 11:33:23', '2023-11-09 11:33:23', 'claimant_details', 'CN/EAS/2023/010', 'sample.pdf', NULL),
	(73, 1107, NULL, '2023-11-09 11:53:42', '2023-11-09 11:53:42', 'claimant register', NULL, 'sample.pdf', NULL),
	(74, 1108, NULL, '2023-11-11 14:32:49', '2023-11-11 14:32:49', 'claimant register', NULL, 'lingaraju filing rcpt eDRT-Portal.pdf', NULL),
	(75, 1109, NULL, '2023-11-12 06:11:40', '2023-11-12 06:11:40', 'claimant register', NULL, 'lingaraju filing rcpt eDRT-Portal.pdf', NULL),
	(76, 1109, NULL, '2023-11-12 06:14:07', '2023-11-12 06:14:07', 'claimant_details', 'CN/EAS/2023/001', 'lingaraju filing rcpt eDRT-Portal.pdf', NULL),
	(77, 1111, NULL, '2023-11-14 09:50:13', '2023-11-14 09:50:13', 'claimant register', NULL, 'sample.pdf', NULL);
/*!40000 ALTER TABLE `alfresco_log` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.amend_details
CREATE TABLE IF NOT EXISTS `amend_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `organization_details` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `roles_id` int(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `claimnoticeid` int(20) DEFAULT NULL,
  `user_type` varchar(200) DEFAULT NULL,
  `poa_holder` varchar(100) DEFAULT NULL,
  `age` int(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bimacc_production1.amend_details: ~0 rows (approximately)
/*!40000 ALTER TABLE `amend_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `amend_details` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.arbitration_masters
CREATE TABLE IF NOT EXISTS `arbitration_masters` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zipcode` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `user_id` int(10) unsigned DEFAULT NULL,
  `roles_id` int(10) unsigned DEFAULT NULL,
  `usertype` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `dispute_categories_id` int(10) unsigned DEFAULT NULL,
  `dispute_subcategories_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `alt_phone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `arbitrator_code` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `miiddlename` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qualification` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language_prof` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `age` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `experience` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `training` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_of_arbitration` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_of_arbitration_rep` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `present_prof` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prior_position` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `membership` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `litigation` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prof_experience` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `conf_interest` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_arbitration_masters_id` (`user_id`),
  CONSTRAINT `fk_arbitration_masters_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table bimacc_production1.arbitration_masters: ~0 rows (approximately)
/*!40000 ALTER TABLE `arbitration_masters` DISABLE KEYS */;
/*!40000 ALTER TABLE `arbitration_masters` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.arbitrator_allocation_fees
CREATE TABLE IF NOT EXISTS `arbitrator_allocation_fees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `claim_amount_form` decimal(20,2) DEFAULT NULL,
  `claim_amount_to` decimal(20,2) DEFAULT NULL,
  `arbitrator_fees` decimal(20,2) DEFAULT NULL,
  `fees_description` varchar(255) DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_id` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `adminstration_fees` decimal(12,2) DEFAULT NULL,
  `total_fees` decimal(12,2) DEFAULT NULL,
  `currency` varchar(50) DEFAULT NULL,
  `arbitartion_percentage` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- Dumping data for table bimacc_production1.arbitrator_allocation_fees: ~17 rows (approximately)
/*!40000 ALTER TABLE `arbitrator_allocation_fees` DISABLE KEYS */;
REPLACE INTO `arbitrator_allocation_fees` (`id`, `claim_amount_form`, `claim_amount_to`, `arbitrator_fees`, `fees_description`, `created_id`, `created_at`, `updated_id`, `updated_at`, `deleted_at`, `adminstration_fees`, `total_fees`, `currency`, `arbitartion_percentage`) VALUES
	(1, 1.00, 10000.00, 0.00, '18%', 252, '2021-09-04 07:27:52', NULL, '2021-11-09 10:10:57', NULL, 1.00, 500.00, 'INR', '1'),
	(2, 10001.00, 50000.00, 0.00, '18%', 252, '2021-09-04 07:28:25', NULL, '2021-11-09 04:24:51', NULL, 1.00, 500.00, 'INR', '18'),
	(3, 50001.00, 100000.00, 9000.00, '9000 + 11% in excess of  50,000', 252, '2021-09-04 07:29:57', NULL, '2021-09-04 07:29:57', NULL, 1000.00, 10000.00, 'INR', '11'),
	(4, 100001.00, 2000000.00, 14500.00, '14,500 + 9% in excess of 1,00,000', 252, '2021-09-04 07:31:39', NULL, '2021-09-04 11:12:12', NULL, 2000.00, 21000.00, 'INR', '9'),
	(5, 20000001.00, 5000000.00, 185000.00, '1,85,000 + 8% in excess of 20,00,000', 252, '2021-09-04 07:32:37', NULL, '2021-09-04 11:13:02', NULL, 3000.00, 202000.00, 'INR', '8'),
	(6, 5000001.00, 10000000.00, 425500.00, '4,25,000 + 7% in excess of  50,00,000', 252, '2021-09-04 07:35:38', NULL, '2021-09-04 11:14:01', NULL, 5000.00, 365000.00, 'INR', '7'),
	(7, 10000001.00, 50000000.00, 775000.00, '7,75,000 + 5% in excess of 1,00,00,000', 252, '2021-09-04 07:40:04', NULL, '2021-09-07 07:23:02', NULL, 7000.00, 717000.00, 'INR', '5'),
	(8, 50000001.00, 100000001.00, 2375000.00, '23,75,000 + 4% in excess of 5,00,00,000', 252, '2021-09-04 07:40:48', NULL, '2021-09-07 10:01:07', NULL, 10000.00, 1218000.00, 'INR', '4'),
	(10, 1001.00, 2000.00, 0.00, '18%', 252, '2021-09-04 07:27:52', NULL, '2021-09-07 07:25:31', NULL, 10.00, 68.00, 'USD', '18'),
	(11, 2001.00, 5000.00, 260.00, '260 + 15% in excess of 2000', 252, '2021-09-04 07:28:25', NULL, '2021-09-07 07:07:17', NULL, 20.00, 68.00, 'USD', '15'),
	(12, 5001.00, 10000.00, 710.00, '710 + 12% in excess of 5000', 252, '2021-09-04 07:29:57', NULL, '2021-09-07 07:09:11', NULL, 50.00, 10000.00, 'USD', '12'),
	(13, 10001.00, 20000.00, 2310.00, '2310 + 11% in excess of 10000', 252, '2021-09-04 07:31:39', NULL, '2021-09-07 07:10:24', NULL, 100.00, 21000.00, 'USD', '11'),
	(14, 20001.00, 50000.00, 3410.00, '3410 + 10 % in excess of  20000', 252, '2021-09-04 07:32:37', NULL, '2021-09-07 07:11:24', NULL, 200.00, 202000.00, 'USD', '10'),
	(15, 50001.00, 100000.00, 6410.00, '6410 + 8% in excess of 100000', 252, '2021-09-04 07:35:38', NULL, '2021-09-07 07:12:12', NULL, 500.00, 365000.00, 'USD', '8'),
	(16, 100001.00, 1000000.00, 10410.00, '10410 + 7% in excess of 100000', 252, '2021-09-04 07:40:04', NULL, '2021-09-07 07:12:58', NULL, 800.00, 717000.00, 'USD', '7'),
	(17, 1000001.00, 10000000.00, 73410.00, '73410 + 5% in ecxess  of  100000000', 252, '2021-09-04 07:40:48', NULL, '2021-09-07 07:13:56', NULL, 1000.00, 1218000.00, 'USD', '5'),
	(19, 1.00, 1000.00, 0.00, '18%', 252, '2021-09-07 07:24:59', NULL, '2021-09-07 07:24:59', NULL, 10.00, 10.00, 'USD', '18');
/*!40000 ALTER TABLE `arbitrator_allocation_fees` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.arbitrator_check_list
CREATE TABLE IF NOT EXISTS `arbitrator_check_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `checklistcode` varchar(10) DEFAULT NULL,
  `checklistname` varchar(1000) DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_id` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bimacc_production1.arbitrator_check_list: ~0 rows (approximately)
/*!40000 ALTER TABLE `arbitrator_check_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `arbitrator_check_list` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.arbitrator_disagreement
CREATE TABLE IF NOT EXISTS `arbitrator_disagreement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reason_disagree` varchar(255) DEFAULT NULL,
  `dispute_name` varchar(255) DEFAULT NULL,
  `claim_notice_id` int(11) DEFAULT NULL,
  `arbitrator_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_id` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bimacc_production1.arbitrator_disagreement: ~0 rows (approximately)
/*!40000 ALTER TABLE `arbitrator_disagreement` DISABLE KEYS */;
/*!40000 ALTER TABLE `arbitrator_disagreement` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.arbitrator_domain_detail
CREATE TABLE IF NOT EXISTS `arbitrator_domain_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(30) DEFAULT NULL,
  `year_of_exp` varchar(30) DEFAULT NULL,
  `arbitrator_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_id` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table bimacc_production1.arbitrator_domain_detail: ~7 rows (approximately)
/*!40000 ALTER TABLE `arbitrator_domain_detail` DISABLE KEYS */;
REPLACE INTO `arbitrator_domain_detail` (`id`, `domain`, `year_of_exp`, `arbitrator_id`, `created_at`, `updated_id`, `updated_at`, `deleted_at`, `created_id`) VALUES
	(2, 'domain1', '4', 22, '2021-05-05 11:03:21', NULL, NULL, NULL, 252),
	(3, 'domain2', '5', 22, '2021-05-05 11:03:21', NULL, NULL, NULL, 252),
	(4, '11', '11', 23, '2021-06-04 12:23:08', NULL, NULL, NULL, 252),
	(5, 'domain', '3', 1, '2021-09-04 18:46:23', NULL, NULL, NULL, 252),
	(6, 'Ram', '5', 2, '2021-09-07 16:31:15', NULL, NULL, NULL, 252),
	(7, 'ED', '2', 1, '2021-09-27 15:37:40', NULL, NULL, NULL, 252),
	(8, 'Gst Road', '3', 2, '2021-11-15 12:16:48', NULL, NULL, NULL, 252);
/*!40000 ALTER TABLE `arbitrator_domain_detail` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.auditlog
CREATE TABLE IF NOT EXISTS `auditlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `tablename` varchar(100) DEFAULT NULL,
  `tablenameprimarykeyid` int(11) DEFAULT NULL,
  `transactionname` varchar(1000) DEFAULT NULL,
  `screenname` varchar(1000) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bimacc_production1.auditlog: ~0 rows (approximately)
/*!40000 ALTER TABLE `auditlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `auditlog` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.award_list
CREATE TABLE IF NOT EXISTS `award_list` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `claiment_id` int(10) unsigned DEFAULT NULL,
  `respondant_id` int(10) unsigned DEFAULT NULL,
  `arbitrator_id` int(10) unsigned DEFAULT NULL,
  `claiment_status` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `created_id` int(10) unsigned DEFAULT NULL,
  `modified_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table bimacc_production1.award_list: ~0 rows (approximately)
/*!40000 ALTER TABLE `award_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `award_list` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.banking_account_detail
CREATE TABLE IF NOT EXISTS `banking_account_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loan_acc_bank` varchar(100) DEFAULT NULL,
  `date_of_application_bank` varchar(100) DEFAULT NULL,
  `date_of_sanction_bank` varchar(100) DEFAULT NULL,
  `amount_as_date` varchar(100) DEFAULT NULL,
  `sanction_ammount` decimal(20,2) DEFAULT NULL,
  `date_of_dafault` varchar(30) DEFAULT NULL,
  `npa_date_bank` varchar(30) DEFAULT NULL,
  `amount_as_account` decimal(20,2) DEFAULT NULL,
  `interest_bank` varchar(30) DEFAULT NULL,
  `penel_interest_bank` varchar(30) DEFAULT NULL,
  `other_charges_bank` decimal(20,2) DEFAULT NULL,
  `outstanding_amount` decimal(20,2) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `claim_notice_id` int(11) DEFAULT NULL,
  `claim_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_id` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `is_respondant` int(11) DEFAULT NULL,
  `is_deleted` varchar(3) DEFAULT 'N',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table bimacc_production1.banking_account_detail: ~1 rows (approximately)
/*!40000 ALTER TABLE `banking_account_detail` DISABLE KEYS */;
REPLACE INTO `banking_account_detail` (`id`, `loan_acc_bank`, `date_of_application_bank`, `date_of_sanction_bank`, `amount_as_date`, `sanction_ammount`, `date_of_dafault`, `npa_date_bank`, `amount_as_account`, `interest_bank`, `penel_interest_bank`, `other_charges_bank`, `outstanding_amount`, `user_id`, `claim_notice_id`, `claim_id`, `created_at`, `updated_id`, `updated_at`, `deleted_at`, `created_id`, `is_respondant`, `is_deleted`) VALUES
	(1, '378498290289948', '2014-02-12', '2014-02-20', '2023-11-07', 34000000.00, '2023-10-18', '2023-11-01', 3456789567.00, '2', '2', 344567.00, 234567895.00, 1109, 11, 5, '2023-11-12 06:18:45', NULL, NULL, NULL, 1109, NULL, 'N');
/*!40000 ALTER TABLE `banking_account_detail` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.banking_claim_corporate
CREATE TABLE IF NOT EXISTS `banking_claim_corporate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_guar_name` varchar(100) DEFAULT NULL,
  `compnay_cid` varchar(100) DEFAULT NULL,
  `company_address` varchar(100) DEFAULT NULL,
  `company_date` varchar(100) DEFAULT NULL,
  `claim_notice_id` int(11) DEFAULT NULL,
  `claim_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_id` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bimacc_production1.banking_claim_corporate: ~0 rows (approximately)
/*!40000 ALTER TABLE `banking_claim_corporate` DISABLE KEYS */;
/*!40000 ALTER TABLE `banking_claim_corporate` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.banking_claim_hypo
CREATE TABLE IF NOT EXISTS `banking_claim_hypo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description_hypo_bank` varchar(255) DEFAULT NULL,
  `value_hypo_bank` varchar(100) DEFAULT NULL,
  `vehicle_hypo_bank` varchar(100) DEFAULT NULL,
  `chassis_hypo_bank` varchar(100) DEFAULT NULL,
  `date_hypo_bank` varchar(100) DEFAULT NULL,
  `location_hypo` varchar(100) DEFAULT NULL,
  `claim_notice_id` int(11) DEFAULT NULL,
  `claim_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_id` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bimacc_production1.banking_claim_hypo: ~0 rows (approximately)
/*!40000 ALTER TABLE `banking_claim_hypo` DISABLE KEYS */;
/*!40000 ALTER TABLE `banking_claim_hypo` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.banking_claim_hypo_details
CREATE TABLE IF NOT EXISTS `banking_claim_hypo_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hypo_name` varchar(100) DEFAULT NULL,
  `hypo_dob` varchar(100) DEFAULT NULL,
  `hypo_father` varchar(100) DEFAULT NULL,
  `hypo_address` varchar(100) DEFAULT NULL,
  `hypo_description` varchar(100) DEFAULT NULL,
  `hypo_location` varchar(100) DEFAULT NULL,
  `hypo_vehicle` varchar(100) DEFAULT NULL,
  `hypo_chassis` varchar(100) DEFAULT NULL,
  `hypo_date_hypo` varchar(100) DEFAULT NULL,
  `claim_notice_id` int(11) DEFAULT NULL,
  `claim_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_id` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `value_hypo_bank` int(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bimacc_production1.banking_claim_hypo_details: ~0 rows (approximately)
/*!40000 ALTER TABLE `banking_claim_hypo_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `banking_claim_hypo_details` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.banking_claim_mort
CREATE TABLE IF NOT EXISTS `banking_claim_mort` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description_mort_bank` varchar(255) DEFAULT NULL,
  `value_mort_bank` varchar(255) DEFAULT NULL,
  `schedule_mort_bank` varchar(255) DEFAULT NULL,
  `date_mort_bank` varchar(255) DEFAULT NULL,
  `claim_notice_id` int(11) DEFAULT NULL,
  `claim_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_id` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `mortgage_mortgagor` varchar(100) DEFAULT NULL,
  `mortgage_company` varchar(100) DEFAULT NULL,
  `mortgage_property` varchar(100) DEFAULT NULL,
  `mortgage_schedule` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bimacc_production1.banking_claim_mort: ~0 rows (approximately)
/*!40000 ALTER TABLE `banking_claim_mort` DISABLE KEYS */;
/*!40000 ALTER TABLE `banking_claim_mort` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.banking_claim_mort_details
CREATE TABLE IF NOT EXISTS `banking_claim_mort_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mortgage_mortgagor` varchar(100) DEFAULT NULL,
  `mortgage_company` varchar(100) DEFAULT NULL,
  `mortgage_property` varchar(100) DEFAULT NULL,
  `mortgage_schedule` varchar(100) DEFAULT NULL,
  `claim_notice_id` int(11) DEFAULT NULL,
  `claim_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_id` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bimacc_production1.banking_claim_mort_details: ~0 rows (approximately)
/*!40000 ALTER TABLE `banking_claim_mort_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `banking_claim_mort_details` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.banking_claim_personal
CREATE TABLE IF NOT EXISTS `banking_claim_personal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `personnel_guar_name` varchar(100) DEFAULT NULL,
  `personnel_dob` varchar(100) DEFAULT NULL,
  `personnel_father` varchar(100) DEFAULT NULL,
  `personnel_adddress` varchar(100) DEFAULT NULL,
  `claim_notice_id` int(11) DEFAULT NULL,
  `claim_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_id` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bimacc_production1.banking_claim_personal: ~0 rows (approximately)
/*!40000 ALTER TABLE `banking_claim_personal` DISABLE KEYS */;
/*!40000 ALTER TABLE `banking_claim_personal` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.banking_claim_pledge
CREATE TABLE IF NOT EXISTS `banking_claim_pledge` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pledge_nature` varchar(100) DEFAULT NULL,
  `pledge_date` varchar(100) DEFAULT NULL,
  `pledge_date_maturity` varchar(100) DEFAULT NULL,
  `pledge_value` varchar(100) DEFAULT NULL,
  `claim_notice_id` int(11) DEFAULT NULL,
  `claim_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_id` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bimacc_production1.banking_claim_pledge: ~0 rows (approximately)
/*!40000 ALTER TABLE `banking_claim_pledge` DISABLE KEYS */;
/*!40000 ALTER TABLE `banking_claim_pledge` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.banking_claim_pledge_details
CREATE TABLE IF NOT EXISTS `banking_claim_pledge_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pledgor_name` varchar(100) DEFAULT NULL,
  `pledgor_dob` varchar(100) DEFAULT NULL,
  `pledgor_father` varchar(100) DEFAULT NULL,
  `pledgor_address` varchar(100) DEFAULT NULL,
  `pledgor_nature` varchar(100) DEFAULT NULL,
  `pledgor_date` date DEFAULT NULL,
  `pledgor_date_maturity` varchar(100) DEFAULT NULL,
  `pledgor_value` varchar(100) DEFAULT NULL,
  `claim_notice_id` int(11) DEFAULT NULL,
  `claim_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_id` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `pledge_nature` varchar(100) DEFAULT NULL,
  `pledge_date` varchar(100) DEFAULT NULL,
  `pledge_date_maturity` varchar(100) DEFAULT NULL,
  `pledge_value` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bimacc_production1.banking_claim_pledge_details: ~0 rows (approximately)
/*!40000 ALTER TABLE `banking_claim_pledge_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `banking_claim_pledge_details` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.banking_claim_pro_details
CREATE TABLE IF NOT EXISTS `banking_claim_pro_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pro_date` varchar(100) DEFAULT NULL,
  `revival_letter` varchar(100) DEFAULT NULL,
  `document_other` varchar(100) DEFAULT NULL,
  `claim_notice_id` int(11) DEFAULT NULL,
  `claim_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_id` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bimacc_production1.banking_claim_pro_details: ~0 rows (approximately)
/*!40000 ALTER TABLE `banking_claim_pro_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `banking_claim_pro_details` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.banking_relief
CREATE TABLE IF NOT EXISTS `banking_relief` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mortgaged_property` varchar(255) DEFAULT NULL,
  `claim_notice_id` int(11) DEFAULT NULL,
  `relief_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_id` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bimacc_production1.banking_relief: ~0 rows (approximately)
/*!40000 ALTER TABLE `banking_relief` DISABLE KEYS */;
/*!40000 ALTER TABLE `banking_relief` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.bank_cliam
CREATE TABLE IF NOT EXISTS `bank_cliam` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description_mort_bank` varchar(255) DEFAULT NULL,
  `value_mort_bank` varchar(255) DEFAULT NULL,
  `schedule_mort_bank` varchar(255) DEFAULT NULL,
  `date_mort_bank` varchar(255) DEFAULT NULL,
  `description_hypo_bank` varchar(255) DEFAULT NULL,
  `value_hypo_bank` varchar(100) DEFAULT NULL,
  `vehicle_hypo_bank` varchar(100) DEFAULT NULL,
  `chassis_hypo_bank` varchar(100) DEFAULT NULL,
  `date_hypo_bank` varchar(100) DEFAULT NULL,
  `pledge_nature` varchar(100) DEFAULT NULL,
  `pledge_date` varchar(100) DEFAULT NULL,
  `pledge_date_maturity` varchar(100) DEFAULT NULL,
  `pledge_value` varchar(100) DEFAULT NULL,
  `personnel_guar_name` varchar(100) DEFAULT NULL,
  `personnel_dob` varchar(100) DEFAULT NULL,
  `personnel_father` varchar(100) DEFAULT NULL,
  `personnel_adddress` varchar(100) DEFAULT NULL,
  `company_guar_name` varchar(100) DEFAULT NULL,
  `compnay_cid` varchar(100) DEFAULT NULL,
  `company_address` varchar(100) DEFAULT NULL,
  `company_date` varchar(100) DEFAULT NULL,
  `mortgage_mortgagor` varchar(100) DEFAULT NULL,
  `mortgage_company` varchar(100) DEFAULT NULL,
  `mortgage_property` varchar(100) DEFAULT NULL,
  `mortgage_schedule` varchar(100) DEFAULT NULL,
  `hypo_name` varchar(100) DEFAULT NULL,
  `hypo_dob` varchar(100) DEFAULT NULL,
  `hypo_father` varchar(100) DEFAULT NULL,
  `hypo_address` varchar(100) DEFAULT NULL,
  `hypo_description` varchar(100) DEFAULT NULL,
  `hypo_location` varchar(100) DEFAULT NULL,
  `hypo_vehicle` varchar(100) DEFAULT NULL,
  `hypo_chassis` varchar(100) DEFAULT NULL,
  `hypo_date_hypo` varchar(100) DEFAULT NULL,
  `pledgor_name` varchar(100) DEFAULT NULL,
  `pledgor_dob` varchar(100) DEFAULT NULL,
  `pledgor_father` varchar(100) DEFAULT NULL,
  `pledgor_address` varchar(100) DEFAULT NULL,
  `pledgor_nature` varchar(100) DEFAULT NULL,
  `pledgor_date` varchar(100) DEFAULT NULL,
  `pledgor_date_maturity` varchar(100) DEFAULT NULL,
  `pledgor_value` varchar(100) DEFAULT NULL,
  `pro_date` varchar(100) DEFAULT NULL,
  `revival_letter` varchar(100) DEFAULT NULL,
  `document_other` varchar(100) DEFAULT NULL,
  `claim_notice_id` int(11) DEFAULT NULL,
  `claim_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_id` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `location_hypo` varchar(100) DEFAULT NULL,
  `date_of_default_bank` varchar(100) DEFAULT NULL,
  `date_of_npa_bank` varchar(100) DEFAULT NULL,
  `date_of_breach_bank` varchar(100) DEFAULT NULL,
  `date_of_default_amount_bank` varchar(100) DEFAULT NULL,
  `due_date_bank` varchar(100) DEFAULT NULL,
  `date_demand_bank` varchar(100) DEFAULT NULL,
  `rate_interest_bank` varchar(100) DEFAULT NULL,
  `penal_interest_bank` varchar(100) DEFAULT NULL,
  `other_charges_bank` varchar(100) DEFAULT NULL,
  `charges_due_bank` varchar(100) DEFAULT NULL,
  `total_amount_bank` varchar(100) DEFAULT NULL,
  `date_of_app_lication_bank` varchar(100) DEFAULT NULL,
  `date_of_sanction_bank` varchar(100) DEFAULT NULL,
  `nature_of_agreement_bank` varchar(100) DEFAULT NULL,
  `laon_ac_bank` varchar(100) DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bimacc_production1.bank_cliam: ~0 rows (approximately)
/*!40000 ALTER TABLE `bank_cliam` DISABLE KEYS */;
/*!40000 ALTER TABLE `bank_cliam` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.cache
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL,
  UNIQUE KEY `cache_key_unique` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table bimacc_production1.cache: ~0 rows (approximately)
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.claimantnotice
CREATE TABLE IF NOT EXISTS `claimantnotice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `claimnoticeno` varchar(1000) DEFAULT NULL,
  `claimnoticestatus` varchar(100) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `alfrescouniquefolder_id` varchar(1000) DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `updated_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `systemfees` decimal(20,2) DEFAULT NULL,
  `registrationamount` decimal(20,2) DEFAULT NULL,
  `paymentid` int(11) DEFAULT NULL,
  `isAccessToSendRespondent` varchar(10) DEFAULT NULL,
  `isArbitratorAllocated` varchar(10) DEFAULT NULL,
  `ArbitrationNo` varchar(100) DEFAULT NULL,
  `isstageinitiated` varchar(10) DEFAULT 'N',
  `awardedstatement` varchar(1000) DEFAULT NULL,
  `respondant_status` varchar(100) DEFAULT NULL,
  `claimpetitionalfrescouniquefolder_id` varchar(500) DEFAULT NULL,
  `del_status` int(50) DEFAULT '0',
  `no_email` varchar(10) DEFAULT '0',
  `access_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- Dumping data for table bimacc_production1.claimantnotice: ~1 rows (approximately)
/*!40000 ALTER TABLE `claimantnotice` DISABLE KEYS */;
REPLACE INTO `claimantnotice` (`id`, `claimnoticeno`, `claimnoticestatus`, `userid`, `alfrescouniquefolder_id`, `created_id`, `updated_id`, `created_at`, `updated_at`, `deleted_at`, `systemfees`, `registrationamount`, `paymentid`, `isAccessToSendRespondent`, `isArbitratorAllocated`, `ArbitrationNo`, `isstageinitiated`, `awardedstatement`, `respondant_status`, `claimpetitionalfrescouniquefolder_id`, `del_status`, `no_email`, `access_time`) VALUES
	(11, 'CN/EAS/2023/001', 'New Claim', 1109, 'workspace://SpacesStore/076d2fe7-6a06-48b0-80b8-32733051f092', 1109, NULL, '2023-11-12 06:14:06', '2023-11-12 00:44:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', NULL, NULL, NULL, 0, '0', '0000-00-00 00:00:00');
/*!40000 ALTER TABLE `claimantnotice` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.claimantnoticestatus
CREATE TABLE IF NOT EXISTS `claimantnoticestatus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `claimantnoticeid` int(11) DEFAULT NULL,
  `userid` int(11) unsigned DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `updated_id` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `claimantnoticestatus` varchar(100) DEFAULT NULL,
  `remarks` varchar(2000) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_claimantnoticestatus_userid` (`userid`),
  KEY `fk_claimantnoticestatus_claimantnoticeid` (`claimantnoticeid`),
  CONSTRAINT `fk_claimantnoticestatus_userid` FOREIGN KEY (`userid`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table bimacc_production1.claimantnoticestatus: ~0 rows (approximately)
/*!40000 ALTER TABLE `claimantnoticestatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `claimantnoticestatus` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.claimantnotice_stage
CREATE TABLE IF NOT EXISTS `claimantnotice_stage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `claimantnotice_Stage` varchar(100) DEFAULT NULL,
  `claimantnotice_stage_description` varchar(1000) DEFAULT NULL,
  `alfresco_stage_folderuniqueid` varchar(1000) DEFAULT NULL,
  `stagefromdate` date DEFAULT NULL,
  `stagetodate` date DEFAULT NULL,
  `claimnoticeid` int(11) DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_id` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `claimantnotice_stage_status` varchar(1000) DEFAULT NULL,
  `isstageinitiated` varchar(10) DEFAULT NULL,
  `nature_of_award` varchar(250) DEFAULT NULL,
  `notes` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bimacc_production1.claimantnotice_stage: ~0 rows (approximately)
/*!40000 ALTER TABLE `claimantnotice_stage` DISABLE KEYS */;
/*!40000 ALTER TABLE `claimantnotice_stage` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.claimantregister
CREATE TABLE IF NOT EXISTS `claimantregister` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `organization_name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `organization_details` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt_phone` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zipcode` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `user_id` int(10) DEFAULT NULL,
  `roles_id` int(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `usertype` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alfrescouniquefolderid` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `claimstatus` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `middlename` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `claimant_type` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `official_designation` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `govt_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dept_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auth_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auth_email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auth_others` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `authorised` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `aadhar_num` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `claimantregister_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table bimacc_production1.claimantregister: ~4 rows (approximately)
/*!40000 ALTER TABLE `claimantregister` DISABLE KEYS */;
REPLACE INTO `claimantregister` (`id`, `organization_name`, `organization_details`, `firstname`, `lastname`, `username`, `email`, `password`, `phone`, `alt_phone`, `city`, `state`, `country`, `zipcode`, `address`, `user_id`, `roles_id`, `created_at`, `updated_at`, `deleted_at`, `usertype`, `alfrescouniquefolderid`, `claimstatus`, `middlename`, `claimant_type`, `official_designation`, `govt_name`, `dept_name`, `auth_name`, `auth_email`, `auth_others`, `authorised`, `aadhar_num`) VALUES
	(61, NULL, NULL, 'Test', 'S', 'otwysczbswz', 'otwysczbswz@hldrive.com', '$2y$10$2UZktsObssilkf/PmWUNPOu9E6dF7PwkLmj7.sTsUM2SmwKgcyXzC', '9876789098', NULL, 'chennai', 'Tamilnadu', 'IN', '789076', 'A', 1107, 2, '2023-11-09 06:23:42', '2023-11-09 06:23:42', NULL, '{"id":2,"name":"claiment","display_name":"Claimant","description":"Claiment","created_at":"2019-03-20 11:23:32","updated_at":"2019-03-20 11:23:32"}', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(62, NULL, NULL, 'Vihaan', 'Vihaan', 'Vihaan', 'eas.bimacc@gmail.com', '$2y$10$q2vJn/Gq76uanPThNn0nH.BbaS6drBWjd1TFtAw1x64g7BY72ux5i', '9677077646', NULL, 'Blore', 'Karnataka', 'IN', '560046', 'B\'lore', 1108, 2, '2023-11-11 09:02:49', '2023-11-11 09:02:49', NULL, '{"id":2,"name":"claiment","display_name":"Claimant","description":"Claiment","created_at":"2019-03-20 11:23:32","updated_at":"2019-03-20 11:23:32"}', NULL, NULL, NULL, '13', NULL, NULL, '123', NULL, NULL, NULL, NULL, '1234'),
	(63, NULL, NULL, 'Monika', 'MM', 'MM', 'monika.muru@gmail.com', '$2y$10$eQCSyELBkA5.QbtJA3VN7eiNRgnWk0kF45q7zssUswethmyP6ObvW', '8105874004', NULL, 'Ben', 'Kar', 'IN', '489279', 'Den', 1109, 2, '2023-11-12 00:41:40', '2023-11-12 00:41:40', NULL, '{"id":2,"name":"claiment","display_name":"Claimant","description":"Claiment","created_at":"2019-03-20 11:23:32","updated_at":"2019-03-20 11:23:32"}', NULL, NULL, NULL, '13', NULL, NULL, 'MMM', NULL, NULL, NULL, NULL, NULL),
	(64, NULL, NULL, 'Test', 'Test', 'sfvbtne', 'sfvbtne@hldrive.com', '$2y$10$Y4KPYJAlEDurbuYCee.fiuFU80mgRvOS91eQGTJTfha.DA2L/C8Aa', '8765432134', NULL, 'A', 'B', 'IN', '909890', 'A', 1111, 2, '2023-11-14 04:20:13', '2023-11-14 04:20:13', NULL, '{"id":2,"name":"claiment","display_name":"Claimant","description":"Claiment","created_at":"2019-03-20 11:23:32","updated_at":"2019-03-20 11:23:32"}', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `claimantregister` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.claimant_arbitrator_configuration
CREATE TABLE IF NOT EXISTS `claimant_arbitrator_configuration` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `claiment_id` int(10) unsigned DEFAULT NULL,
  `arbitrator_id` int(10) unsigned DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `created_id` int(10) unsigned DEFAULT NULL,
  `modified_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `claimnoticeid` int(11) DEFAULT NULL,
  `remarks` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isAgreeorDisagree` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isundertake` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `arbitratorRemarks` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_claimant_arbitrator_configuration_id1` (`claiment_id`),
  KEY `fk_claimant_arbitrator_configuration_id2` (`arbitrator_id`),
  KEY `fk_claimant_arbitrator_configuration_id3` (`user_id`),
  KEY `fk_claimant_arbitrator_configuration_claimnoticeid` (`claimnoticeid`),
  CONSTRAINT `fk_claimant_arbitrator_configuration_id1` FOREIGN KEY (`claiment_id`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_claimant_arbitrator_configuration_id2` FOREIGN KEY (`arbitrator_id`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_claimant_arbitrator_configuration_id3` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table bimacc_production1.claimant_arbitrator_configuration: ~0 rows (approximately)
/*!40000 ALTER TABLE `claimant_arbitrator_configuration` DISABLE KEYS */;
/*!40000 ALTER TABLE `claimant_arbitrator_configuration` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.claimant_informations
CREATE TABLE IF NOT EXISTS `claimant_informations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `country` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zipcode` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `daytimetelephone` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `claimant_type` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `created_id` int(10) unsigned DEFAULT NULL,
  `modified_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `claimnoticeid` int(11) DEFAULT NULL,
  `company_individual` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dispute_categories_id` int(11) DEFAULT NULL,
  `dispute_subcategories_id` int(11) DEFAULT NULL,
  `currency` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `organization_name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `organization_details` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `middlename` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `official_designation` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `poa_holder` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dept_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `govt_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `others` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `aadhar_num` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_claimant_informations_id` (`user_id`),
  KEY `fk_claimnotice_id` (`claimnoticeid`),
  CONSTRAINT `fk_claimant_informations_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table bimacc_production1.claimant_informations: ~1 rows (approximately)
/*!40000 ALTER TABLE `claimant_informations` DISABLE KEYS */;
REPLACE INTO `claimant_informations` (`id`, `name`, `address`, `country`, `state`, `city`, `zipcode`, `daytimetelephone`, `email`, `claimant_type`, `user_id`, `created_id`, `modified_id`, `created_at`, `updated_at`, `deleted_at`, `claimnoticeid`, `company_individual`, `dispute_categories_id`, `dispute_subcategories_id`, `currency`, `age`, `organization_name`, `organization_details`, `firstname`, `middlename`, `lastname`, `official_designation`, `company_name`, `poa_holder`, `dept_name`, `govt_name`, `others`, `aadhar_num`) VALUES
	(5, 'Monika', 'Den', 'IN', 'Kar', 'Ben', '489279', '8105874004', 'monika.muru@gmail.com', 'Bank', NULL, 1109, NULL, '2023-11-12 00:44:07', '2023-11-12 00:44:07', NULL, 11, NULL, 2, 150, 'INR', 29, NULL, 'Sunu', 'Monika', NULL, 'MM', 'Supervisor', NULL, NULL, 'MMM', NULL, NULL, NULL);
/*!40000 ALTER TABLE `claimant_informations` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.claimant_respondant_type
CREATE TABLE IF NOT EXISTS `claimant_respondant_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(100) DEFAULT NULL,
  `claimant_respondant_type_name` varchar(100) DEFAULT NULL,
  `claimant_respondant_type_description` varchar(500) DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_id` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `claimant_respondant_type_Code` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- Dumping data for table bimacc_production1.claimant_respondant_type: ~13 rows (approximately)
/*!40000 ALTER TABLE `claimant_respondant_type` DISABLE KEYS */;
REPLACE INTO `claimant_respondant_type` (`id`, `type`, `claimant_respondant_type_name`, `claimant_respondant_type_description`, `created_id`, `created_at`, `updated_id`, `updated_at`, `deleted_at`, `claimant_respondant_type_Code`) VALUES
	(1, 'claimant', 'Individual', 'Individual/Proprietary Concern', 1, '2020-02-29 15:32:54', NULL, '2020-02-29 09:58:17', NULL, 'IS'),
	(2, 'claimant', 'Partnership /LLP', 'Names of partners must be included and partnership deed must be uploaded', 1, '2020-02-29 15:53:14', NULL, '2019-05-06 07:37:36', NULL, 'PA'),
	(3, 'claimant', 'Limited Liability Company / Official Liquidator', 'Name  , Registered Address  , Registration particulars ,	Details of Directors/Office Bearers  , Registration Certificate to be uploaded', 1, '2020-02-29 15:29:49', NULL, '2019-05-06 07:40:28', NULL, 'CA'),
	(4, 'claimant', 'Proprietary Concern / HUF', 'Proprietary Concern', 1, '2021-04-15 11:36:37', NULL, '2019-05-06 07:41:27', NULL, 'TR'),
	(5, 'claimant', 'Trust / Society', 'Hindu Undivided Family / Trust / Society', 1, '2021-04-15 11:36:18', NULL, '2020-02-29 15:30:42', '2020-02-29 15:30:42', 'HU'),
	(6, 'respondant', 'Government / Government Department', 'Government / Government Department', 1, '2020-02-29 17:26:18', NULL, '2020-02-29 15:31:41', '2020-02-29 15:31:42', 'GG'),
	(7, 'respondant', 'Limited Liability Company / Official Liquidator', 'Name  , Registered Address  , Registration particulars ,	Details of Directors/Office Bearers  , Registration Certificate to be uploaded', 1, '2020-02-29 17:26:13', NULL, '2019-05-06 07:40:28', NULL, 'CA'),
	(8, 'claimant', 'Government / Government Department', 'Government / Government Department', 1, '2020-02-29 15:31:35', NULL, '2020-02-29 15:31:41', '2020-02-29 15:31:42', 'GG'),
	(9, 'respondant', 'Trust / Society', 'Hindu Undivided Family / Trust / Society', 1, '2021-04-15 11:36:29', NULL, '2020-02-29 15:30:42', '2020-02-29 15:30:42', 'HU'),
	(10, 'respondant', 'Partnership /LLP', 'Names of partners must be included and partnership deed must be uploaded', 1, '2020-02-29 17:26:12', NULL, '2019-05-06 07:37:36', NULL, 'PA'),
	(11, 'respondant', 'Individual', 'Individual/Proprietary Concern', 1, '2020-02-29 17:26:11', NULL, '2020-02-29 09:58:17', NULL, 'IS'),
	(12, 'respondant', 'Proprietary Concern / HUF', 'Proprietary Concern', 1, '2021-04-15 11:36:33', NULL, '2019-05-06 07:41:27', NULL, 'TR'),
	(13, 'claimant', 'Bank', 'Bank', 252, '2020-09-17 16:00:44', NULL, '2020-09-17 16:00:44', NULL, 'BA');
/*!40000 ALTER TABLE `claimant_respondant_type` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.claimnoticedocumentdetails
CREATE TABLE IF NOT EXISTS `claimnoticedocumentdetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `claimnoticeid` int(11) DEFAULT NULL,
  `alfrescouniquedocumentid` varchar(1000) DEFAULT NULL,
  `documentname` varchar(1000) DEFAULT NULL,
  `documentversion` varchar(1000) DEFAULT NULL,
  `documentextension` varchar(1000) DEFAULT NULL,
  `documentpath` varchar(1000) DEFAULT NULL,
  `stageid` int(11) DEFAULT NULL,
  `alfrescodocumentname` varchar(1000) DEFAULT NULL,
  `node_ref` varchar(255) DEFAULT NULL,
  `work_space` varchar(255) DEFAULT NULL,
  `space_store` varchar(255) DEFAULT NULL,
  `alfresco_document_name` varchar(255) DEFAULT NULL,
  `document_name` varchar(255) DEFAULT NULL,
  `file_extension` varchar(255) DEFAULT NULL,
  `document_type` varchar(255) DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `System_Document_Type` varchar(1000) DEFAULT NULL,
  `remarks` varchar(2000) DEFAULT NULL,
  `claimant_respondent_type` varchar(100) DEFAULT NULL,
  `claimant_respondent_id` int(11) DEFAULT NULL,
  `is_delete` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=latin1;

-- Dumping data for table bimacc_production1.claimnoticedocumentdetails: ~86 rows (approximately)
/*!40000 ALTER TABLE `claimnoticedocumentdetails` DISABLE KEYS */;
REPLACE INTO `claimnoticedocumentdetails` (`id`, `claimnoticeid`, `alfrescouniquedocumentid`, `documentname`, `documentversion`, `documentextension`, `documentpath`, `stageid`, `alfrescodocumentname`, `node_ref`, `work_space`, `space_store`, `alfresco_document_name`, `document_name`, `file_extension`, `document_type`, `created_id`, `created_at`, `System_Document_Type`, `remarks`, `claimant_respondent_type`, `claimant_respondent_id`, `is_delete`) VALUES
	(1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/39c50438-0e79-4937-9ba5-1dc22ed910ae', 'workspace', 'SpacesStore', '39c50438-0e79-4937-9ba5-1dc22ed910ae', 'sample-1.pdf', 'pdf', 'UAA', 1040, '2023-11-01 10:02:19', NULL, NULL, 'Claimant Registration', 1040, NULL),
	(2, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/3efea7ea-9363-44c6-bbc8-83229b9ad8c5', 'workspace', 'SpacesStore', '3efea7ea-9363-44c6-bbc8-83229b9ad8c5', 'sample-1.pdf', 'pdf', 'UAA', 1041, '2023-11-01 10:04:26', NULL, NULL, 'Claimant Registration', 1041, NULL),
	(3, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/13e64bed-7f28-405f-a41b-62d7b24255cf', 'workspace', 'SpacesStore', '13e64bed-7f28-405f-a41b-62d7b24255cf', 'sample-1.pdf', 'pdf', 'UAA', 1042, '2023-11-01 10:10:33', NULL, NULL, 'Claimant Registration', 1042, NULL),
	(4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/f0a04cb0-62e1-4cdc-a58f-105e855bfe59', 'workspace', 'SpacesStore', 'f0a04cb0-62e1-4cdc-a58f-105e855bfe59', 'sample-1.pdf', 'pdf', 'GPA', 1042, '2023-11-01 15:43:14', NULL, NULL, 'Claimant', 1042, NULL),
	(5, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/f0a04cb0-62e1-4cdc-a58f-105e855bfe59', 'workspace', 'SpacesStore', 'f0a04cb0-62e1-4cdc-a58f-105e855bfe59', 'sample-1.pdf', 'pdf', 'IDPROOF', 1042, '2023-11-01 15:43:14', NULL, NULL, 'Claimant', 1042, NULL),
	(6, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/c4952972-0ef7-4a6c-b52b-010966a5407b', 'workspace', 'SpacesStore', 'c4952972-0ef7-4a6c-b52b-010966a5407b', 'sample-1.pdf', 'pdf', 'GPA', 1042, '2023-11-01 15:48:47', NULL, NULL, 'Claimant', 1042, NULL),
	(7, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/b4343332-225a-4b00-a5cf-8a12bdcf7ca6', 'workspace', 'SpacesStore', 'b4343332-225a-4b00-a5cf-8a12bdcf7ca6', 'sample2.pdf', 'pdf', 'IDPROOF', 1042, '2023-11-01 15:48:47', NULL, NULL, 'Claimant', 1042, NULL),
	(8, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/0d0b43b3-24e6-4f7e-a056-1738dd7b170d', 'workspace', 'SpacesStore', '0d0b43b3-24e6-4f7e-a056-1738dd7b170d', 'sample-1.pdf', 'pdf', 'GPA', 1042, '2023-11-01 15:52:42', NULL, NULL, 'Claimant', 1042, NULL),
	(9, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/e24416c7-7705-4d4b-858f-008f3692e908', 'workspace', 'SpacesStore', 'e24416c7-7705-4d4b-858f-008f3692e908', 'sample2.pdf', 'pdf', 'IDPROOF', 1042, '2023-11-01 15:52:43', NULL, NULL, 'Claimant', 1042, NULL),
	(10, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/253bab79-c849-41c4-ba41-12dce469d765', 'workspace', 'SpacesStore', '253bab79-c849-41c4-ba41-12dce469d765', 'sample-1.pdf', 'pdf', 'GPA', 1042, '2023-11-01 15:54:37', NULL, NULL, 'Claimant', 1042, NULL),
	(11, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/a3705500-ed72-40e1-8bf7-d0fd6c1ba326', 'workspace', 'SpacesStore', 'a3705500-ed72-40e1-8bf7-d0fd6c1ba326', 'sample2.pdf', 'pdf', 'IDPROOF', 1042, '2023-11-01 15:54:38', NULL, NULL, 'Claimant', 1042, NULL),
	(12, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/0dc6e1dc-80dc-4eda-bc98-98fdcfff2665', 'workspace', 'SpacesStore', '0dc6e1dc-80dc-4eda-bc98-98fdcfff2665', 'sample-1.pdf', 'pdf', 'GPA', 1042, '2023-11-01 15:59:20', NULL, NULL, 'Claimant', 1042, NULL),
	(13, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/560bb35f-09e5-4b4b-aa77-b8a88a980d53', 'workspace', 'SpacesStore', '560bb35f-09e5-4b4b-aa77-b8a88a980d53', 'sample2.pdf', 'pdf', 'IDPROOF', 1042, '2023-11-01 15:59:21', NULL, NULL, 'Claimant', 1042, NULL),
	(14, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/c527bac1-36fc-4b2b-96f0-59b3006d6206', 'workspace', 'SpacesStore', 'c527bac1-36fc-4b2b-96f0-59b3006d6206', 'sample2.pdf', 'pdf', 'GPA', 1042, '2023-11-01 16:01:09', NULL, NULL, 'Claimant', 1042, NULL),
	(15, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/29cd6da4-9efd-492b-baeb-1f819f2636eb', 'workspace', 'SpacesStore', '29cd6da4-9efd-492b-baeb-1f819f2636eb', 'sample-1.pdf', 'pdf', 'IDPROOF', 1042, '2023-11-01 16:01:10', NULL, NULL, 'Claimant', 1042, NULL),
	(16, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/877deb82-8adf-41d3-9e1c-2be726ad56f7', 'workspace', 'SpacesStore', '877deb82-8adf-41d3-9e1c-2be726ad56f7', 'sample-1.pdf', 'pdf', 'UAA', 1044, '2023-11-02 05:35:38', NULL, NULL, 'Claimant Registration', 1044, NULL),
	(17, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/df2ec859-866e-4996-a043-5fbf56d5d27d', 'workspace', 'SpacesStore', 'df2ec859-866e-4996-a043-5fbf56d5d27d', 'sample-1.pdf', 'pdf', 'UAA', 1046, '2023-11-02 10:23:00', NULL, NULL, 'Claimant Registration', 1046, NULL),
	(18, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/e0d40008-d0c2-4a4a-b58a-69e0f8370dcd', 'workspace', 'SpacesStore', 'e0d40008-d0c2-4a4a-b58a-69e0f8370dcd', 'sample-1.pdf', 'pdf', 'UAA', 1047, '2023-11-02 10:24:52', NULL, NULL, 'Claimant Registration', 1047, NULL),
	(19, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/6bc4f847-327c-4393-a33e-124c16db9da9', 'workspace', 'SpacesStore', '6bc4f847-327c-4393-a33e-124c16db9da9', 'sample-1.pdf', 'pdf', 'UAA', 1048, '2023-11-02 10:28:43', NULL, NULL, 'Claimant Registration', 1048, NULL),
	(20, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/aeee6097-37e0-42b1-bd49-f6da9640f3e4', 'workspace', 'SpacesStore', 'aeee6097-37e0-42b1-bd49-f6da9640f3e4', 'sample-1.pdf', 'pdf', 'UAA', 1049, '2023-11-02 10:32:52', NULL, NULL, 'Claimant Registration', 1049, NULL),
	(21, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/494de300-72c7-4a35-89e3-6b97c7e599bd', 'workspace', 'SpacesStore', '494de300-72c7-4a35-89e3-6b97c7e599bd', 'sample2.pdf', 'pdf', 'UAA', 1050, '2023-11-02 10:40:17', NULL, NULL, 'Claimant Registration', 1050, NULL),
	(22, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/627a79ee-cfed-43fb-b676-6891824b74e7', 'workspace', 'SpacesStore', '627a79ee-cfed-43fb-b676-6891824b74e7', 'sample-1.pdf', 'pdf', 'UAA', 1051, '2023-11-02 10:43:16', NULL, NULL, 'Claimant Registration', 1051, NULL),
	(23, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/bdbee605-89ac-40d8-a353-c28e7e9927f9', 'workspace', 'SpacesStore', 'bdbee605-89ac-40d8-a353-c28e7e9927f9', 'sample2.pdf', 'pdf', 'UAA', 1052, '2023-11-02 10:45:17', NULL, NULL, 'Claimant Registration', 1052, NULL),
	(24, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/0d1dcb48-3df0-4417-80c8-b8a39b9f3c45', 'workspace', 'SpacesStore', '0d1dcb48-3df0-4417-80c8-b8a39b9f3c45', 'sample2.pdf', 'pdf', 'UAA', 1053, '2023-11-02 10:46:26', NULL, NULL, 'Claimant Registration', 1053, NULL),
	(25, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/7ba906e0-c6af-4fd2-b39e-c416b81f7798', 'workspace', 'SpacesStore', '7ba906e0-c6af-4fd2-b39e-c416b81f7798', 'sample2.pdf', 'pdf', 'UAA', 1054, '2023-11-02 10:48:05', NULL, NULL, 'Claimant Registration', 1054, NULL),
	(26, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/471343d7-1b5b-41ea-9a85-7927fcfbf65a', 'workspace', 'SpacesStore', '471343d7-1b5b-41ea-9a85-7927fcfbf65a', 'sample2.pdf', 'pdf', 'UAA', 1055, '2023-11-02 10:49:41', NULL, NULL, 'Claimant Registration', 1055, NULL),
	(27, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/851d3dd7-17d7-450d-9ad9-4a372007538e', 'workspace', 'SpacesStore', '851d3dd7-17d7-450d-9ad9-4a372007538e', 'sample2.pdf', 'pdf', 'UAA', 1056, '2023-11-02 10:52:56', NULL, NULL, 'Claimant Registration', 1056, NULL),
	(28, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/6203f610-2608-4fba-9e35-216696bfe036', 'workspace', 'SpacesStore', '6203f610-2608-4fba-9e35-216696bfe036', 'sample2.pdf', 'pdf', 'UAA', 1057, '2023-11-02 10:55:09', NULL, NULL, 'Claimant Registration', 1057, NULL),
	(29, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/ecbca321-8910-4d69-bdce-b999dd96483b', 'workspace', 'SpacesStore', 'ecbca321-8910-4d69-bdce-b999dd96483b', 'sample2.pdf', 'pdf', 'UAA', 1058, '2023-11-02 11:02:58', NULL, NULL, 'Claimant Registration', 1058, NULL),
	(30, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/c939f456-96e9-4823-a0fe-e7516814761f', 'workspace', 'SpacesStore', 'c939f456-96e9-4823-a0fe-e7516814761f', 'sample2.pdf', 'pdf', 'UAA', 1059, '2023-11-03 05:47:49', NULL, NULL, 'Claimant Registration', 1059, NULL),
	(31, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/7bfe9a34-9ba6-4ca9-9f64-9282b6a599cc', 'workspace', 'SpacesStore', '7bfe9a34-9ba6-4ca9-9f64-9282b6a599cc', 'sample2.pdf', 'pdf', 'UAA', 1060, '2023-11-03 05:52:11', NULL, NULL, 'Claimant Registration', 1060, NULL),
	(32, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/7fe1e2a8-a6c7-474f-b9bb-279218a7301d', 'workspace', 'SpacesStore', '7fe1e2a8-a6c7-474f-b9bb-279218a7301d', 'sample2.pdf', 'pdf', 'UAA', 1061, '2023-11-03 09:17:45', NULL, NULL, 'Claimant Registration', 1061, NULL),
	(33, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/3d41cd24-c332-4375-836b-57b89912ecc6', 'workspace', 'SpacesStore', '3d41cd24-c332-4375-836b-57b89912ecc6', 'sample2.pdf', 'pdf', 'UAA', 1062, '2023-11-03 09:28:11', NULL, NULL, 'Claimant Registration', 1062, NULL),
	(34, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/18e52ed4-03e6-4f2d-a2eb-4792ff65a0cd', 'workspace', 'SpacesStore', '18e52ed4-03e6-4f2d-a2eb-4792ff65a0cd', 'sample-1.pdf', 'pdf', 'UAA', 1063, '2023-11-03 09:29:48', NULL, NULL, 'Claimant Registration', 1063, NULL),
	(35, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/b2ed77e3-b371-4166-9ba8-3c3a0be60f72', 'workspace', 'SpacesStore', 'b2ed77e3-b371-4166-9ba8-3c3a0be60f72', 'sample2.pdf', 'pdf', 'UAA', 1064, '2023-11-03 09:31:12', NULL, NULL, 'Claimant Registration', 1064, NULL),
	(36, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/37a7425a-8228-4047-8854-4b1a4dd9e7f8', 'workspace', 'SpacesStore', '37a7425a-8228-4047-8854-4b1a4dd9e7f8', 'sample2.pdf', 'pdf', 'UAA', 1065, '2023-11-03 09:33:03', NULL, NULL, 'Claimant Registration', 1065, NULL),
	(37, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/183f45b1-7c1f-4a21-a395-a567fda2a179', 'workspace', 'SpacesStore', '183f45b1-7c1f-4a21-a395-a567fda2a179', 'sample-1.pdf', 'pdf', 'UAA', 1066, '2023-11-03 09:34:53', NULL, NULL, 'Claimant Registration', 1066, NULL),
	(38, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/180e42ea-7cb3-4edb-a223-75ff04bdac69', 'workspace', 'SpacesStore', '180e42ea-7cb3-4edb-a223-75ff04bdac69', 'sample2.pdf', 'pdf', 'UAA', 1067, '2023-11-03 09:37:40', NULL, NULL, 'Claimant Registration', 1067, NULL),
	(39, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/8dc65a6d-2c15-4382-9b81-90ad2c51b3be', 'workspace', 'SpacesStore', '8dc65a6d-2c15-4382-9b81-90ad2c51b3be', 'sample-1.pdf', 'pdf', 'UAA', 1068, '2023-11-06 12:26:47', NULL, NULL, 'Claimant Registration', 1068, NULL),
	(40, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/8cb0e3ac-d0ed-48dc-ab81-df83ba0c3bec', 'workspace', 'SpacesStore', '8cb0e3ac-d0ed-48dc-ab81-df83ba0c3bec', 'sample-1.pdf', 'pdf', 'UAA', 1069, '2023-11-06 12:31:49', NULL, NULL, 'Claimant Registration', 1069, NULL),
	(41, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/01dc661f-cdfe-4a00-8b32-826e55a1c87f', 'workspace', 'SpacesStore', '01dc661f-cdfe-4a00-8b32-826e55a1c87f', 'sample-1.pdf', 'pdf', 'UAA', 1070, '2023-11-06 12:42:02', NULL, NULL, 'Claimant Registration', 1070, NULL),
	(42, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/d599aa4a-c8e2-49a8-b962-8bcc69206f06', 'workspace', 'SpacesStore', 'd599aa4a-c8e2-49a8-b962-8bcc69206f06', 'sample2.pdf', 'pdf', 'UAA', 1071, '2023-11-06 12:46:39', NULL, NULL, 'Claimant Registration', 1071, NULL),
	(43, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/eae4ead3-3d0e-4325-9f6f-7ebd82916030', 'workspace', 'SpacesStore', 'eae4ead3-3d0e-4325-9f6f-7ebd82916030', 'sample-1.pdf', 'pdf', 'UAA', 1073, '2023-11-07 09:54:25', NULL, NULL, 'Claimant Registration', 1073, NULL),
	(44, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/019f031a-79e9-49c7-8edb-c513e7350f90', 'workspace', 'SpacesStore', '019f031a-79e9-49c7-8edb-c513e7350f90', 'sample-1.pdf', 'pdf', 'UAA', 1074, '2023-11-07 10:00:32', NULL, NULL, 'Claimant Registration', 1074, NULL),
	(45, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/32208fc9-989c-454c-a773-23e0de45446a', 'workspace', 'SpacesStore', '32208fc9-989c-454c-a773-23e0de45446a', 'sample-1.pdf', 'pdf', 'UAA', 1075, '2023-11-07 10:05:51', NULL, NULL, 'Claimant Registration', 1075, NULL),
	(46, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/96c39b52-9dd1-417f-ac51-b9df64a1c53c', 'workspace', 'SpacesStore', '96c39b52-9dd1-417f-ac51-b9df64a1c53c', 'sample-1.pdf', 'pdf', 'UAA', 1076, '2023-11-07 10:12:28', NULL, NULL, 'Claimant Registration', 1076, NULL),
	(47, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/30fe9106-5033-4ebb-b6c5-bb4828254905', 'workspace', 'SpacesStore', '30fe9106-5033-4ebb-b6c5-bb4828254905', 'sample-1.pdf', 'pdf', 'UAA', 1077, '2023-11-07 10:20:27', NULL, NULL, 'Claimant Registration', 1077, NULL),
	(48, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/9290106b-f502-448d-aab2-529368baa2a6', 'workspace', 'SpacesStore', '9290106b-f502-448d-aab2-529368baa2a6', 'sample-1.pdf', 'pdf', 'UAA', 1078, '2023-11-07 10:24:04', NULL, NULL, 'Claimant Registration', 1078, NULL),
	(49, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/8147ac08-84e0-4384-91c5-5a3e547fb7d3', 'workspace', 'SpacesStore', '8147ac08-84e0-4384-91c5-5a3e547fb7d3', 'sample-1.pdf', 'pdf', 'UAA', 1079, '2023-11-07 10:43:11', NULL, NULL, 'Claimant Registration', 1079, NULL),
	(50, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/073990f5-2d1e-44a8-a294-a3a133b7692e', 'workspace', 'SpacesStore', '073990f5-2d1e-44a8-a294-a3a133b7692e', 'sample-1.pdf', 'pdf', 'UAA', 1080, '2023-11-07 10:48:23', NULL, NULL, 'Claimant Registration', 1080, NULL),
	(51, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/53fd2178-e5ab-4516-bf2d-3df116d78451', 'workspace', 'SpacesStore', '53fd2178-e5ab-4516-bf2d-3df116d78451', 'sample-1.pdf', 'pdf', 'UAA', 1081, '2023-11-07 10:55:06', NULL, NULL, 'Claimant Registration', 1081, NULL),
	(52, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/4f4344be-4c4f-4e06-b557-13ccf3ac59f6', 'workspace', 'SpacesStore', '4f4344be-4c4f-4e06-b557-13ccf3ac59f6', 'sample-1.pdf', 'pdf', 'UAA', 1082, '2023-11-07 10:57:22', NULL, NULL, 'Claimant Registration', 1082, NULL),
	(53, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/993936d5-ca27-4cfc-8d52-f18ca7bef5c9', 'workspace', 'SpacesStore', '993936d5-ca27-4cfc-8d52-f18ca7bef5c9', 'sample-1.pdf', 'pdf', 'UAA', 1083, '2023-11-07 11:14:06', NULL, NULL, 'Claimant Registration', 1083, NULL),
	(54, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/e98202fe-5780-4b9a-bba7-257f38102300', 'workspace', 'SpacesStore', 'e98202fe-5780-4b9a-bba7-257f38102300', 'sample-1.pdf', 'pdf', 'UAA', 1084, '2023-11-07 11:17:22', NULL, NULL, 'Claimant Registration', 1084, NULL),
	(55, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/0c89851f-2abe-4b56-9c56-8fd796e27ce1', 'workspace', 'SpacesStore', '0c89851f-2abe-4b56-9c56-8fd796e27ce1', 'sample-1.pdf', 'pdf', 'UAA', 1085, '2023-11-07 11:25:47', NULL, NULL, 'Claimant Registration', 1085, NULL),
	(56, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/03169531-1033-4444-830a-4d0f21f4bac4', 'workspace', 'SpacesStore', '03169531-1033-4444-830a-4d0f21f4bac4', 'sample-1.pdf', 'pdf', 'UAA', 1086, '2023-11-07 11:32:39', NULL, NULL, 'Claimant Registration', 1086, NULL),
	(57, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/737eb48e-20bd-4745-aaef-c40c89631834', 'workspace', 'SpacesStore', '737eb48e-20bd-4745-aaef-c40c89631834', 'sample-1.pdf', 'pdf', 'UAA', 1087, '2023-11-08 11:40:13', NULL, NULL, 'Claimant Registration', 1087, NULL),
	(58, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/1c36a923-50dd-415d-8e0c-4895c384dcc9', 'workspace', 'SpacesStore', '1c36a923-50dd-415d-8e0c-4895c384dcc9', 'sample2.pdf', 'pdf', 'UAA', 1088, '2023-11-08 11:49:52', NULL, NULL, 'Claimant Registration', 1088, NULL),
	(59, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/d1ece9bf-1e5d-4a5b-b6c8-4e6e45bd71a8', 'workspace', 'SpacesStore', 'd1ece9bf-1e5d-4a5b-b6c8-4e6e45bd71a8', 'sample2.pdf', 'pdf', 'UAA', 1089, '2023-11-08 11:57:17', NULL, NULL, 'Claimant Registration', 1089, NULL),
	(60, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/83448240-30ce-4545-bf75-53a79c4479b4', 'workspace', 'SpacesStore', '83448240-30ce-4545-bf75-53a79c4479b4', 'sample2.pdf', 'pdf', 'UAA', 1090, '2023-11-08 12:01:55', NULL, NULL, 'Claimant Registration', 1090, NULL),
	(61, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/b8b770c8-d90a-49de-99fb-4a78d7c981d7', 'workspace', 'SpacesStore', 'b8b770c8-d90a-49de-99fb-4a78d7c981d7', 'sample2.pdf', 'pdf', 'UAA', 1091, '2023-11-08 12:04:07', NULL, NULL, 'Claimant Registration', 1091, NULL),
	(62, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/ef66f5b4-2152-40a6-83c2-54fd8cced94c', 'workspace', 'SpacesStore', 'ef66f5b4-2152-40a6-83c2-54fd8cced94c', 'sample2.pdf', 'pdf', 'UAA', 1092, '2023-11-08 12:11:14', NULL, NULL, 'Claimant Registration', 1092, NULL),
	(63, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/3429c304-61a8-4f53-a4a6-8089a628c8bb', 'workspace', 'SpacesStore', '3429c304-61a8-4f53-a4a6-8089a628c8bb', 'sample-1.pdf', 'pdf', 'UAA', 1093, '2023-11-08 12:15:47', NULL, NULL, 'Claimant Registration', 1093, NULL),
	(64, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/c41c3218-cc81-4e05-a8f9-193304fdaa8e', 'workspace', 'SpacesStore', 'c41c3218-cc81-4e05-a8f9-193304fdaa8e', 'pic.png', 'png', 'UAA', 1094, '2023-11-08 12:16:54', NULL, NULL, 'Claimant Registration', 1094, NULL),
	(65, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/aeb2da05-53c6-4d42-b669-906036f6350c', 'workspace', 'SpacesStore', 'aeb2da05-53c6-4d42-b669-906036f6350c', 'sample2.pdf', 'pdf', 'UAA', 1095, '2023-11-08 12:23:25', NULL, NULL, 'Claimant Registration', 1095, NULL),
	(66, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/8878541b-c1d0-40d2-bb50-668d0852deca', 'workspace', 'SpacesStore', '8878541b-c1d0-40d2-bb50-668d0852deca', 'pic.png', 'png', 'UAA', 1096, '2023-11-08 12:24:55', NULL, NULL, 'Claimant Registration', 1096, NULL),
	(67, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/eb7cd93d-16cc-4159-800a-7158746aa235', 'workspace', 'SpacesStore', 'eb7cd93d-16cc-4159-800a-7158746aa235', 'sample2.pdf', 'pdf', 'UAA', 1097, '2023-11-08 13:01:25', NULL, NULL, 'Claimant Registration', 1097, NULL),
	(68, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/db9491d2-3a6b-4507-a9ff-b02f155dae94', 'workspace', 'SpacesStore', 'db9491d2-3a6b-4507-a9ff-b02f155dae94', 'sample2.pdf', 'pdf', 'UAA', 1098, '2023-11-08 13:05:03', NULL, NULL, 'Claimant Registration', 1098, NULL),
	(69, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/c81d8353-87f4-4811-9ecc-0426cc05550f', 'workspace', 'SpacesStore', 'c81d8353-87f4-4811-9ecc-0426cc05550f', 'sample2.pdf', 'pdf', 'UAA', 1099, '2023-11-08 13:15:16', NULL, NULL, 'Claimant Registration', 1099, NULL),
	(70, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/1004ad1b-6911-4094-b549-afb681c35656', 'workspace', 'SpacesStore', '1004ad1b-6911-4094-b549-afb681c35656', 'sample2.pdf', 'pdf', 'UAA', 1100, '2023-11-08 13:17:26', NULL, NULL, 'Claimant Registration', 1100, NULL),
	(71, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/664f0fc3-c23a-468b-b11a-0b73138e9bf6', 'workspace', 'SpacesStore', '664f0fc3-c23a-468b-b11a-0b73138e9bf6', 'sample2.pdf', 'pdf', 'UAA', 1101, '2023-11-08 13:19:04', NULL, NULL, 'Claimant Registration', 1101, NULL),
	(72, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/ea15d281-45a9-4290-b7d3-ae3dcc92772e', 'workspace', 'SpacesStore', 'ea15d281-45a9-4290-b7d3-ae3dcc92772e', 'sample.pdf', 'pdf', 'UAA', 1102, '2023-11-09 04:14:20', NULL, NULL, 'Claimant Registration', 1102, NULL),
	(73, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/09ea3f03-3746-4b30-a690-a3f89de8e736', 'workspace', 'SpacesStore', '09ea3f03-3746-4b30-a690-a3f89de8e736', 'sample.pdf', 'pdf', 'GPA', 1102, '2023-11-09 09:46:06', NULL, NULL, 'Claimant', 1102, NULL),
	(74, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/09ea3f03-3746-4b30-a690-a3f89de8e736', 'workspace', 'SpacesStore', '09ea3f03-3746-4b30-a690-a3f89de8e736', 'sample.pdf', 'pdf', 'IDPROOF', 1102, '2023-11-09 09:46:07', NULL, NULL, 'Claimant', 1102, NULL),
	(75, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/f175db2a-3ea8-4dff-8356-2e3048e6f062', 'workspace', 'SpacesStore', 'f175db2a-3ea8-4dff-8356-2e3048e6f062', 'sample.pdf', 'pdf', 'GPA', 1102, '2023-11-09 09:55:45', NULL, NULL, 'Claimant', 1102, NULL),
	(76, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/f175db2a-3ea8-4dff-8356-2e3048e6f062', 'workspace', 'SpacesStore', 'f175db2a-3ea8-4dff-8356-2e3048e6f062', 'sample.pdf', 'pdf', 'IDPROOF', 1102, '2023-11-09 09:55:45', NULL, NULL, 'Claimant', 1102, NULL),
	(77, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/f683a7f3-a7ac-4e07-a942-4b17d489b6a8', 'workspace', 'SpacesStore', 'f683a7f3-a7ac-4e07-a942-4b17d489b6a8', 'sample.pdf', 'pdf', 'GPA', 1102, '2023-11-09 11:29:17', NULL, NULL, 'Claimant', 1102, NULL),
	(78, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/f683a7f3-a7ac-4e07-a942-4b17d489b6a8', 'workspace', 'SpacesStore', 'f683a7f3-a7ac-4e07-a942-4b17d489b6a8', 'sample.pdf', 'pdf', 'IDPROOF', 1102, '2023-11-09 11:29:18', NULL, NULL, 'Claimant', 1102, NULL),
	(79, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/234b140a-5093-4f02-aead-897216febb69', 'workspace', 'SpacesStore', '234b140a-5093-4f02-aead-897216febb69', 'sample.pdf', 'pdf', 'GPA', 1102, '2023-11-09 11:33:22', NULL, NULL, 'Claimant', 1102, NULL),
	(80, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/234b140a-5093-4f02-aead-897216febb69', 'workspace', 'SpacesStore', '234b140a-5093-4f02-aead-897216febb69', 'sample.pdf', 'pdf', 'IDPROOF', 1102, '2023-11-09 11:33:23', NULL, NULL, 'Claimant', 1102, NULL),
	(81, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/387d28d3-bde8-46f6-904a-42ea0933eee9', 'workspace', 'SpacesStore', '387d28d3-bde8-46f6-904a-42ea0933eee9', 'sample.pdf', 'pdf', 'UAA', 1107, '2023-11-09 06:23:42', NULL, NULL, 'Claimant Registration', 1107, NULL),
	(82, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/4b740efa-bc2d-4c7d-91a9-a485bfa68fca', 'workspace', 'SpacesStore', '4b740efa-bc2d-4c7d-91a9-a485bfa68fca', 'lingaraju filing rcpt eDRT-Portal.pdf', 'pdf', 'UAA', 1108, '2023-11-11 09:02:49', NULL, NULL, 'Claimant Registration', 1108, NULL),
	(83, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/0f84aada-94e4-4ee6-bb82-013204273fb2', 'workspace', 'SpacesStore', '0f84aada-94e4-4ee6-bb82-013204273fb2', 'lingaraju filing rcpt eDRT-Portal.pdf', 'pdf', 'UAA', 1109, '2023-11-12 00:41:40', NULL, NULL, 'Claimant Registration', 1109, NULL),
	(84, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/f1a04319-2631-4d74-ae92-765bbda4a34c', 'workspace', 'SpacesStore', 'f1a04319-2631-4d74-ae92-765bbda4a34c', 'lingaraju filing rcpt eDRT-Portal.pdf', 'pdf', 'GPA', 1109, '2023-11-12 06:14:06', NULL, NULL, 'Claimant', 1109, NULL),
	(85, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/f1a04319-2631-4d74-ae92-765bbda4a34c', 'workspace', 'SpacesStore', 'f1a04319-2631-4d74-ae92-765bbda4a34c', 'lingaraju filing rcpt eDRT-Portal.pdf', 'pdf', 'IDPROOF', 1109, '2023-11-12 06:14:07', NULL, NULL, 'Claimant', 1109, NULL),
	(86, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'workspace://SpacesStore/70390932-04fe-45e9-8da3-4cf08823eb70', 'workspace', 'SpacesStore', '70390932-04fe-45e9-8da3-4cf08823eb70', 'sample.pdf', 'pdf', 'UAA', 1111, '2023-11-14 04:20:13', NULL, NULL, 'Claimant Registration', 1111, NULL);
/*!40000 ALTER TABLE `claimnoticedocumentdetails` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.claimnoticeremarks
CREATE TABLE IF NOT EXISTS `claimnoticeremarks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `claimnoticeid` int(11) DEFAULT NULL,
  `remarks` varchar(1000) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bimacc_production1.claimnoticeremarks: ~0 rows (approximately)
/*!40000 ALTER TABLE `claimnoticeremarks` DISABLE KEYS */;
/*!40000 ALTER TABLE `claimnoticeremarks` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.claimnoticestagestatus
CREATE TABLE IF NOT EXISTS `claimnoticestagestatus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stageid` int(11) DEFAULT NULL,
  `claimnoticestatus` varchar(1000) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_id` int(11) DEFAULT NULL,
  `updated_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bimacc_production1.claimnoticestagestatus: ~0 rows (approximately)
/*!40000 ALTER TABLE `claimnoticestagestatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `claimnoticestagestatus` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.claimnotice_invoices
CREATE TABLE IF NOT EXISTS `claimnotice_invoices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `claimnoticeid` int(11) DEFAULT NULL,
  `invoiceno` varchar(1000) DEFAULT NULL,
  `invoicedate` date DEFAULT NULL,
  `invoiceamount` decimal(13,2) DEFAULT NULL,
  `invoice_type` varchar(50) DEFAULT NULL,
  `isdeleted` varchar(50) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `admin_fee` varchar(100) DEFAULT NULL,
  `arbitrtor_fee` varchar(100) DEFAULT NULL,
  `platform_fee` varchar(100) DEFAULT NULL,
  `transaction_id` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table bimacc_production1.claimnotice_invoices: ~0 rows (approximately)
/*!40000 ALTER TABLE `claimnotice_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `claimnotice_invoices` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.claimnotice_payment_receipt
CREATE TABLE IF NOT EXISTS `claimnotice_payment_receipt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `claimnoticeid` int(11) DEFAULT NULL,
  `receiptno` varchar(1000) DEFAULT NULL,
  `receiptdate` date DEFAULT NULL,
  `receiptamount` decimal(13,2) DEFAULT NULL,
  `receipt_type` varchar(50) DEFAULT NULL,
  `isdeleted` varchar(50) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bimacc_production1.claimnotice_payment_receipt: ~0 rows (approximately)
/*!40000 ALTER TABLE `claimnotice_payment_receipt` DISABLE KEYS */;
/*!40000 ALTER TABLE `claimnotice_payment_receipt` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.claimnotice_petion_arbitrationno
CREATE TABLE IF NOT EXISTS `claimnotice_petion_arbitrationno` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `claimnoticeid` int(11) DEFAULT NULL,
  `arbitration_petionno` varchar(1000) DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `updated_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bimacc_production1.claimnotice_petion_arbitrationno: ~0 rows (approximately)
/*!40000 ALTER TABLE `claimnotice_petion_arbitrationno` DISABLE KEYS */;
/*!40000 ALTER TABLE `claimnotice_petion_arbitrationno` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.claim_details
CREATE TABLE IF NOT EXISTS `claim_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `account_name` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `type_account` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_of_the_branch` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_of_account_opened` datetime DEFAULT NULL,
  `name_of_the_registered_representative` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `dispute_categories_id` int(10) unsigned DEFAULT NULL,
  `dispute_subcategories_id` int(10) unsigned DEFAULT NULL,
  `created_id` int(10) unsigned DEFAULT NULL,
  `modified_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `claimnoticeid` int(11) DEFAULT NULL,
  `commercial_monthly` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `loan_taken_date` date DEFAULT NULL,
  `loan_type_id` int(11) DEFAULT NULL,
  `percentage_interest` decimal(20,2) DEFAULT NULL,
  `NPADate` date DEFAULT NULL,
  `Applicants` int(11) DEFAULT NULL,
  `total_amount` decimal(20,2) DEFAULT NULL,
  `Total_Outstanding_Amount` decimal(20,2) DEFAULT NULL,
  `Total_Outstanding_Amount_Compund_Monthly` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `claim_details_Remarks` varchar(9000) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `loanaccountno` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `rate_penalinterest` decimal(20,2) DEFAULT NULL,
  `sequirity` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateofrevival` date DEFAULT NULL,
  `subcategoryid` int(11) DEFAULT NULL,
  `vesselname` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cargoname` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `lossdetails` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `claimamount` decimal(20,2) DEFAULT NULL,
  `contractdate` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `bill_of_lading_details_date_no` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `passenger_ticket_booking_no` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `passenger_ticket_booking_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `noticedate` date DEFAULT NULL,
  `carriername` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `charterparty` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `pnrno` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cargonature` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `natureofincident` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `loan_acc` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_of_application` date DEFAULT NULL,
  `sanction` decimal(20,2) DEFAULT NULL,
  `mortgage` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `hypothecation` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `pledge` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `pro_note` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `revival_letter` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_of_demand` date DEFAULT NULL,
  `date_of_default` date DEFAULT NULL,
  `npa_date` date DEFAULT NULL,
  `date_of_breach` date DEFAULT NULL,
  `loan_agreement` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `claim_amount` decimal(20,2) DEFAULT NULL,
  `details_of_goods` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `details_of_service` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_of_contract` date DEFAULT NULL,
  `date_of_invoice` date DEFAULT NULL,
  `date_of_warranty` date DEFAULT NULL,
  `default_date_of_cause_of_action` date DEFAULT NULL,
  `date_of_notice` date DEFAULT NULL,
  `nature_of_breach` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `partnership_deed_date` date DEFAULT NULL,
  `date_of_reconstitution` date DEFAULT NULL,
  `date_of_dissolution` date DEFAULT NULL,
  `date_of_agreement` date DEFAULT NULL,
  `par_dispute_amount` decimal(20,2) DEFAULT NULL,
  `details_of_documents` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `details_of_contract` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_of_employment` date DEFAULT NULL,
  `date_of_consultancy_contract` date DEFAULT NULL,
  `claim_value` decimal(20,2) DEFAULT NULL,
  `date_of_cause_of_action` date DEFAULT NULL,
  `date_of_notification` date DEFAULT NULL,
  `date_of_tender` date DEFAULT NULL,
  `date_of_registration` date DEFAULT NULL,
  `date_of_licence` date DEFAULT NULL,
  `earliest_date_of_prior_use` date DEFAULT NULL,
  `date_of_breach_or_infringement` date DEFAULT NULL,
  `policy_details` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `maturity_date` date DEFAULT NULL,
  `lorry_reciept_date` date DEFAULT NULL,
  `warehousing_receipt_date` date DEFAULT NULL,
  `contract_details` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `reason_for_claim` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `claim_interest` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `claimamountwithinterest` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_of_warranty_end` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_of_possessor` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_of_property` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `property_description` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `schedule_boundary` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `nature_and_specific` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `nature_of_cause_of_action` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `average_annnual` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `owner_movable` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `possessor_movable` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `nature_of_immovable` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount_due_per_coount` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `rate_of_interest` int(11) DEFAULT NULL,
  `penel_interest` int(11) DEFAULT NULL,
  `other_charges` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_due_date` date DEFAULT NULL,
  `loan_account_no` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `date_of_sanction` date DEFAULT NULL,
  `nature_of_aggrement` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `amount_due_per_account` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `is_respondant` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_amount_bank` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table bimacc_production1.claim_details: ~1 rows (approximately)
/*!40000 ALTER TABLE `claim_details` DISABLE KEYS */;
REPLACE INTO `claim_details` (`id`, `account_name`, `type_account`, `name_of_the_branch`, `date_of_account_opened`, `name_of_the_registered_representative`, `user_id`, `dispute_categories_id`, `dispute_subcategories_id`, `created_id`, `modified_id`, `created_at`, `updated_at`, `deleted_at`, `claimnoticeid`, `commercial_monthly`, `loan_taken_date`, `loan_type_id`, `percentage_interest`, `NPADate`, `Applicants`, `total_amount`, `Total_Outstanding_Amount`, `Total_Outstanding_Amount_Compund_Monthly`, `claim_details_Remarks`, `loanaccountno`, `rate_penalinterest`, `sequirity`, `dateofrevival`, `subcategoryid`, `vesselname`, `cargoname`, `quantity`, `lossdetails`, `claimamount`, `contractdate`, `bill_of_lading_details_date_no`, `passenger_ticket_booking_no`, `passenger_ticket_booking_date`, `due_date`, `noticedate`, `carriername`, `charterparty`, `pnrno`, `cargonature`, `natureofincident`, `loan_acc`, `date_of_application`, `sanction`, `mortgage`, `hypothecation`, `pledge`, `pro_note`, `revival_letter`, `date_of_demand`, `date_of_default`, `npa_date`, `date_of_breach`, `loan_agreement`, `claim_amount`, `details_of_goods`, `details_of_service`, `date_of_contract`, `date_of_invoice`, `date_of_warranty`, `default_date_of_cause_of_action`, `date_of_notice`, `nature_of_breach`, `partnership_deed_date`, `date_of_reconstitution`, `date_of_dissolution`, `date_of_agreement`, `par_dispute_amount`, `details_of_documents`, `details_of_contract`, `date_of_employment`, `date_of_consultancy_contract`, `claim_value`, `date_of_cause_of_action`, `date_of_notification`, `date_of_tender`, `date_of_registration`, `date_of_licence`, `earliest_date_of_prior_use`, `date_of_breach_or_infringement`, `policy_details`, `maturity_date`, `lorry_reciept_date`, `warehousing_receipt_date`, `contract_details`, `reason_for_claim`, `claim_interest`, `claimamountwithinterest`, `date_of_warranty_end`, `name_of_possessor`, `name_of_property`, `property_description`, `schedule_boundary`, `nature_and_specific`, `nature_of_cause_of_action`, `average_annnual`, `owner_movable`, `possessor_movable`, `nature_of_immovable`, `amount_due_per_coount`, `rate_of_interest`, `penel_interest`, `other_charges`, `total_due_date`, `loan_account_no`, `date_of_sanction`, `nature_of_aggrement`, `amount_due_per_account`, `is_respondant`, `total_amount_bank`) VALUES
	(5, NULL, NULL, NULL, NULL, NULL, 1109, NULL, NULL, 1109, NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '234567895.00');
/*!40000 ALTER TABLE `claim_details` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.claim_fees
CREATE TABLE IF NOT EXISTS `claim_fees` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dispute_categories_id` int(10) unsigned DEFAULT NULL,
  `dispute_subcategories_id` int(10) unsigned DEFAULT NULL,
  `security_type_id` int(10) unsigned DEFAULT NULL,
  `claim_amount` decimal(20,2) DEFAULT NULL,
  `claim_amount_purpose` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `created_id` int(10) unsigned DEFAULT NULL,
  `modified_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `claimnoticeid` int(11) DEFAULT NULL,
  `claim_registration_fees` decimal(65,2) DEFAULT NULL,
  `remarks` varchar(9000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `registration_fees` decimal(20,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_claim_fees_id` (`user_id`),
  KEY `fk_dispute_categorie_id` (`dispute_categories_id`),
  KEY `fk_dispute_subcategories_id1` (`dispute_subcategories_id`),
  KEY `fk_security_type_id` (`security_type_id`),
  KEY `fk_claim_fees_claimnoticeid` (`claimnoticeid`),
  CONSTRAINT `fk_claim_fees_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_dispute_categorie_id` FOREIGN KEY (`dispute_categories_id`) REFERENCES `dispute_categories` (`id`),
  CONSTRAINT `fk_dispute_subcategories_id1` FOREIGN KEY (`dispute_subcategories_id`) REFERENCES `dispute_subcategories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table bimacc_production1.claim_fees: ~0 rows (approximately)
/*!40000 ALTER TABLE `claim_fees` DISABLE KEYS */;
/*!40000 ALTER TABLE `claim_fees` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.claim_information_payment_status
CREATE TABLE IF NOT EXISTS `claim_information_payment_status` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regirtration_fee_status` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `registration_fee_amount` decimal(8,2) NOT NULL,
  `regirtration_fee_link` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `claiment_id` int(10) unsigned DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `created_id` int(10) unsigned DEFAULT NULL,
  `modified_id` int(10) unsigned DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_claim_information_payment_status_id` (`user_id`),
  CONSTRAINT `fk_claim_information_payment_status_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table bimacc_production1.claim_information_payment_status: ~0 rows (approximately)
/*!40000 ALTER TABLE `claim_information_payment_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `claim_information_payment_status` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.contract_relief
CREATE TABLE IF NOT EXISTS `contract_relief` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contract_price` decimal(13,2) DEFAULT NULL,
  `claim_for_refund_lines` varchar(255) DEFAULT NULL,
  `claim_notice_id` int(11) DEFAULT NULL,
  `relief_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_id` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bimacc_production1.contract_relief: ~0 rows (approximately)
/*!40000 ALTER TABLE `contract_relief` DISABLE KEYS */;
/*!40000 ALTER TABLE `contract_relief` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.countries
CREATE TABLE IF NOT EXISTS `countries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `country_description` text COLLATE utf8_unicode_ci NOT NULL,
  `country_Code` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table bimacc_production1.countries: ~0 rows (approximately)
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.dispute_categories
CREATE TABLE IF NOT EXISTS `dispute_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `category_description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `dispute_category_Code` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table bimacc_production1.dispute_categories: ~19 rows (approximately)
/*!40000 ALTER TABLE `dispute_categories` DISABLE KEYS */;
REPLACE INTO `dispute_categories` (`id`, `category_name`, `category_description`, `created_at`, `updated_at`, `deleted_at`, `dispute_category_Code`, `order_by`) VALUES
	(1, 'Admiralty and Shipping', 'Admirality And Shipping', '2019-05-06 09:24:00', '2020-01-07 13:30:54', NULL, 'AAS', 1),
	(2, 'Banking and Financial Disputes', 'Banking And Financial Disputes', '2019-05-06 09:26:09', '2019-05-06 09:40:46', NULL, 'B&F', 1),
	(3, 'Consumer Disputes', 'Consumer Disputes', '2019-05-06 09:51:44', '2019-05-06 09:51:44', NULL, 'CD', 1),
	(4, 'Contracts/ Commercial Disputes', 'Contracts/ Commercial Disputes', '2019-05-06 10:01:15', '2019-05-06 10:01:15', NULL, 'CCD', 1),
	(5, 'Partnership Disputes', 'Corporate And partnership Disputes', '2019-05-06 10:10:04', '2020-01-07 13:46:11', NULL, 'CPD', 1),
	(6, 'Community Disputes', 'COMMUNITY DISPUTES', '2019-05-06 10:11:24', '2019-05-06 10:11:24', NULL, 'COD', 1),
	(7, 'Government Disputes', 'GOVERNMENT DISPUTES', '2019-05-06 10:12:23', '2019-05-06 10:12:23', NULL, 'GOV', 1),
	(8, 'Employment Disputes', 'EMPLOYMENT DISPUTES', '2019-05-06 10:13:01', '2020-01-07 07:07:28', NULL, 'EMD', 1),
	(9, 'Energy and Infrastructure Disputes', 'ENERGY AND INFRASTRUCTURE DISPUTES', '2019-05-06 10:13:59', '2019-05-06 10:13:59', NULL, 'EID', 1),
	(10, 'Family Disputes', 'FAMILY DISPUTES', '2019-05-06 10:14:53', '2019-05-06 10:14:53', NULL, 'FAD', 1),
	(11, 'Insurance Disputes', 'INSURANCE DISPUTES', '2019-05-06 10:15:46', '2019-05-06 10:15:46', NULL, 'IND', 1),
	(12, 'IPR and Technology Disputes', 'IPR AND TECHNOLOGY DISPUTES', '2019-05-06 10:16:59', '2019-05-06 10:16:59', NULL, 'IPR', 1),
	(13, 'Real Estate Disputes', 'REAL ESTATE DISPUTES', '2019-05-06 10:18:07', '2019-05-06 10:18:07', NULL, 'RED', 1),
	(15, 'Aviation Disputes', 'Aviation Disputes', NULL, NULL, NULL, 'ADS', 1),
	(16, 'Corporate and Investment Disputes', 'Corporate and Investment Disputes', '2019-08-05 07:53:02', '2019-08-05 07:53:02', NULL, 'CID', 1),
	(17, 'Media and Sports', 'Media and Sports', '2019-08-07 14:17:19', '2019-08-07 14:17:19', NULL, 'MAS', 1),
	(18, 'Other Disputes', 'All other disputes', '2020-03-13 06:25:19', '2020-12-30 05:04:19', NULL, 'AOD', 2),
	(19, 'Admiralty', 'description', '2020-08-13 14:40:14', '2020-08-13 14:44:25', '2020-08-13 14:44:25', 'Ad', NULL),
	(20, 'COVID-19 Disputes', 'COVID-19 Disputes', '2020-12-30 05:04:07', '2020-12-30 05:04:07', NULL, 'COV', 1);
/*!40000 ALTER TABLE `dispute_categories` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.dispute_subcategories
CREATE TABLE IF NOT EXISTS `dispute_subcategories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subcategory_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `subcategory_description` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `dispute_categories_id` int(20) unsigned NOT NULL,
  `dispute_subcategory_Code` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_by` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_dispute_subcategories_id` (`dispute_categories_id`),
  CONSTRAINT `fk_dispute_subcategories_id` FOREIGN KEY (`dispute_categories_id`) REFERENCES `dispute_categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table bimacc_production1.dispute_subcategories: ~108 rows (approximately)
/*!40000 ALTER TABLE `dispute_subcategories` DISABLE KEYS */;
REPLACE INTO `dispute_subcategories` (`id`, `subcategory_name`, `subcategory_description`, `deleted_at`, `created_at`, `updated_at`, `user_id`, `dispute_categories_id`, `dispute_subcategory_Code`, `order_by`) VALUES
	(135, 'Marine casualties/ Collisions, etc.', 'Marine', NULL, '2019-12-18 06:21:29', '2020-01-07 10:28:13', NULL, 1, 'MAR', 1),
	(136, 'Charterparty Disputes', 'Charter', NULL, '2019-12-18 06:21:47', '2019-12-18 06:21:47', NULL, 1, 'CHA', 1),
	(137, 'Vessel Construction / Shipbuilding Disputes', 'Vessel', NULL, '2019-12-18 06:22:06', '2019-12-18 06:22:06', NULL, 1, 'VES', 1),
	(138, 'Cargo Claims', 'Cargo', NULL, '2019-12-18 06:22:25', '2019-12-18 06:22:25', NULL, 1, 'CAR', 1),
	(139, 'Protection and Indemnity', 'Protection', NULL, '2019-12-18 06:22:51', '2019-12-18 06:22:51', NULL, 1, 'PRO', 1),
	(140, 'Freight and Demurrage', 'Freight', NULL, '2019-12-18 06:24:19', '2019-12-18 06:24:19', NULL, 1, 'FRE', 1),
	(141, 'Insurance Coverage and Subrogation', 'Insurance', NULL, '2019-12-18 06:24:39', '2019-12-18 06:24:39', NULL, 1, 'INS', 1),
	(142, 'Tug and Tow', 'Tug', NULL, '2019-12-18 06:25:06', '2019-12-18 06:25:06', NULL, 1, 'TU', 1),
	(143, 'Maritime Personal Injury Claims', 'Maritime', NULL, '2019-12-18 06:25:32', '2019-12-18 06:25:32', NULL, 1, 'MAR', 1),
	(144, 'Aircraft Leases/ Purchase/ Charter', 'Aircraft', NULL, '2019-12-18 06:26:20', '2019-12-18 06:26:20', NULL, 15, 'AIR', 1),
	(145, 'Ground /Aviation Contracts', 'Ground', NULL, '2019-12-18 06:27:31', '2019-12-18 06:27:31', NULL, 15, 'GRO', 1),
	(146, 'Air Cargo and Demurrage', 'Air cargo', NULL, '2019-12-18 06:46:54', '2019-12-18 06:46:54', NULL, 15, 'AC', 1),
	(147, 'Passenger\'s  Personal Injury', 'Passengers', NULL, '2019-12-18 06:47:13', '2019-12-18 06:47:13', NULL, 15, 'PAS', 1),
	(148, 'Passenger\'s  Baggage Loss/ Damage', 'Baggage', NULL, '2019-12-18 06:48:17', '2019-12-18 06:48:17', NULL, 15, 'BAG', 1),
	(149, 'Airlines  and Agency Ticketing Disputes', 'Airlines', NULL, '2019-12-18 06:48:59', '2019-12-18 06:48:59', NULL, 15, 'AAA', 1),
	(150, 'Agricultural Loan', 'Agriculture', NULL, '2019-12-18 06:49:26', '2019-12-18 06:49:26', NULL, 2, 'AGR', 1),
	(151, 'Bills Discounting', 'Bills', NULL, '2019-12-18 06:49:50', '2019-12-18 06:49:50', NULL, 2, 'BIL', 1),
	(152, 'Cash Credit/ Overdraft Loan', 'Cash credit', NULL, '2019-12-18 06:50:19', '2019-12-18 06:50:19', NULL, 2, 'CC', 1),
	(153, 'Debentures', 'Debentures', NULL, '2019-12-18 06:50:49', '2019-12-18 06:50:49', NULL, 2, 'DEB', 1),
	(154, 'Export Credit/ Packing Credit', 'Export', NULL, '2019-12-18 06:51:20', '2019-12-18 06:51:20', NULL, 2, 'EX', 1),
	(155, 'Factoring', 'Factoring', NULL, '2019-12-18 06:51:40', '2019-12-18 06:51:40', NULL, 2, 'FAC', 1),
	(156, 'Guarantees', 'Guarntees', NULL, '2019-12-18 06:52:05', '2019-12-18 06:52:05', NULL, 2, 'GUA', 1),
	(157, 'Hire Purchase / Lease', 'Hire Purchase', NULL, '2019-12-18 06:52:32', '2019-12-18 06:52:32', NULL, 2, 'HP', 1),
	(158, 'Letter of Credit', 'Letter', NULL, '2019-12-18 06:53:01', '2019-12-18 06:53:01', NULL, 2, 'LOC', 1),
	(159, 'Personal Loan Ã¢â‚¬â€œ Housing/ Education/ Asset etc.', 'Personal Loan', NULL, '2019-12-18 06:53:39', '2019-12-18 06:53:39', NULL, 2, 'PL', 1),
	(160, 'Term Loan', 'Term Loan', NULL, '2019-12-18 06:54:02', '2019-12-18 06:54:02', NULL, 2, 'TL', 1),
	(161, 'Others', 'Others', NULL, '2019-12-18 06:54:24', '2019-12-18 06:54:24', NULL, 2, 'OTH', 2),
	(162, 'Purchase of Goods and Services', 'sale', NULL, '2019-12-18 06:58:19', '2020-03-09 05:54:14', NULL, 3, 'SOG', 1),
	(164, 'E-Commerce Transactions', 'E-commerce', NULL, '2019-12-18 06:59:20', '2020-03-09 05:54:46', NULL, 3, 'EC', 1),
	(165, 'Commercial Contracts', 'Commercial', NULL, '2019-12-18 06:59:40', '2019-12-18 06:59:40', NULL, 4, 'COM', 1),
	(166, 'Construction Contracts', 'Construction', NULL, '2019-12-18 07:00:00', '2019-12-18 07:00:00', NULL, 4, 'CON', 1),
	(167, 'Engineering Contracts', 'Engineering', NULL, '2019-12-18 07:00:15', '2019-12-18 07:00:15', NULL, 4, 'ENG', 1),
	(168, 'Infrastructure Contracts', 'Infrastructure', NULL, '2019-12-18 07:00:31', '2019-12-18 07:00:31', NULL, 4, 'INF', 1),
	(169, 'International Trade', 'International', NULL, '2019-12-18 07:00:58', '2019-12-18 07:00:58', NULL, 4, 'INT', 1),
	(170, 'Service Contracts', 'Service', NULL, '2019-12-18 07:01:10', '2019-12-18 07:01:10', NULL, 4, 'SER', 1),
	(172, 'Dissolution/ Reconstitution, Rendition of Accounts, Valuation of Firm and Goodwill', 'Register', NULL, '2019-12-18 07:02:10', '2020-03-09 07:38:35', NULL, 5, 'REG', 1),
	(173, 'Cancellation of Expulsion/ Induction of Partners', 'Unregister', NULL, '2019-12-18 07:02:29', '2020-03-09 07:39:07', NULL, 5, 'UNR', 1),
	(175, 'Shareholders Disputes', 'Shareholders', NULL, '2019-12-18 07:03:16', '2019-12-18 07:03:16', NULL, 16, 'SD', 1),
	(178, 'Venture Capital and Private Equity Disputes', 'Capital', NULL, '2019-12-18 07:03:58', '2019-12-18 07:03:58', NULL, 16, 'CAP', 1),
	(179, 'Debenture Trustee Disputes', 'Debentures', NULL, '2019-12-18 07:04:21', '2019-12-18 07:04:21', NULL, 16, 'DTD', 1),
	(180, 'Apartment/ Colony/ Society/ Trust Members Disputes', 'Apartments', NULL, '2019-12-18 07:05:02', '2019-12-18 07:05:02', NULL, 6, 'ACS', 1),
	(181, 'Associations/ Societies/ Club Members Dispute', 'Associations', NULL, '2019-12-18 07:05:20', '2020-12-29 10:46:39', NULL, 6, 'ASS', 1),
	(182, 'Dismissal', 'Dismissal', NULL, '2019-12-18 07:05:51', '2019-12-18 07:05:51', NULL, 8, 'DIS', 1),
	(183, 'Misconduct', 'Misconduct', NULL, '2019-12-18 07:06:08', '2019-12-18 07:06:08', NULL, 8, 'MIS', 1),
	(184, 'Backwages', 'Backwages', NULL, '2019-12-18 07:06:35', '2019-12-18 07:06:35', NULL, 8, 'BAC', 1),
	(185, 'Stock Options', 'Stock', NULL, '2019-12-18 07:07:00', '2019-12-18 07:07:00', NULL, 8, 'STO', 1),
	(186, 'Reimbursement of Expenses', 'Reimbursement', NULL, '2019-12-18 07:07:18', '2019-12-18 07:07:18', NULL, 8, 'ROE', 1),
	(187, 'Confidentiality, Non-compete and Trade Secret Disputes', 'Confidentiality', NULL, '2019-12-18 07:07:39', '2019-12-18 07:07:39', NULL, 8, 'CNA', 1),
	(188, 'Consultancy Contracts Disputes', 'Consultancy', NULL, '2019-12-18 07:07:58', '2019-12-18 07:07:58', NULL, 8, 'CCD', 1),
	(189, 'Construction', 'Construction', NULL, '2019-12-18 07:08:28', '2019-12-18 07:08:28', NULL, 9, 'CS', 1),
	(190, 'Power Purchase Disputes', 'power purchase', NULL, '2019-12-18 07:08:45', '2020-12-29 10:54:43', NULL, 9, 'PPA', 1),
	(198, 'Partition Disputes', 'Shares', NULL, '2019-12-18 07:11:36', '2020-03-10 09:15:09', NULL, 10, 'SHF', 1),
	(199, 'Maintenance', 'Cash', NULL, '2019-12-18 07:11:53', '2020-03-10 09:15:29', NULL, 10, 'CD', 1),
	(201, 'Breach of Tender Amount', 'Breach', NULL, '2019-12-18 07:12:56', '2019-12-18 07:12:56', NULL, 7, 'BOF', 1),
	(202, 'Escalation of Cost', 'Escalation', NULL, '2019-12-18 07:13:10', '2019-12-18 07:13:10', NULL, 7, 'EOC', 1),
	(203, 'Time Over Run Penalty', 'Time over Run Penality', NULL, '2019-12-18 07:13:33', '2019-12-18 07:13:33', NULL, 7, 'TOR', 1),
	(204, 'Deficient Service', 'Deficient', NULL, '2019-12-18 07:13:55', '2019-12-18 07:13:55', NULL, 7, 'DEF', 1),
	(205, 'Defective Goods', 'Defective Goods', NULL, '2019-12-18 07:14:13', '2019-12-18 07:14:13', NULL, 7, 'DEG', 1),
	(206, 'Money Claim', 'money', NULL, '2019-12-18 07:14:33', '2019-12-18 07:14:33', NULL, 7, 'MON', 1),
	(207, 'Damages', 'Damages', NULL, '2019-12-18 07:14:48', '2019-12-18 07:14:48', NULL, 7, 'DAM', 1),
	(208, 'Intra-State Dispute', 'Intra-state', NULL, '2019-12-18 07:15:12', '2019-12-18 07:15:12', NULL, 7, 'ISD', 1),
	(209, 'Marine', 'Marine', NULL, '2019-12-18 07:17:13', '2019-12-18 07:17:13', NULL, 11, 'M', 1),
	(210, 'Fire and Average Clause', 'Fire', NULL, '2019-12-18 07:17:39', '2019-12-18 07:17:39', NULL, 11, 'FAA', 1),
	(211, 'Theft,Natural Calamities,Rioting,War,Strikes etc.', 'Theft', NULL, '2019-12-18 07:18:00', '2019-12-18 07:18:00', NULL, 11, 'TN', 1),
	(212, 'Motor Vehicle', 'Motor', NULL, '2019-12-18 07:18:22', '2019-12-18 07:18:22', NULL, 11, 'MV', 1),
	(213, 'Health and Life', 'Health', NULL, '2019-12-18 07:18:40', '2019-12-18 07:18:40', NULL, 11, 'HAL', 1),
	(214, 'Transport and Travel', 'Travel', NULL, '2019-12-18 07:19:02', '2019-12-18 07:19:02', NULL, 11, 'TRA', 1),
	(215, 'Professional', 'Professional', NULL, '2019-12-18 07:19:33', '2019-12-18 07:19:33', NULL, 11, 'P', 1),
	(216, 'Franchise Disputes', 'Franchise', NULL, '2019-12-18 07:20:10', '2019-12-18 07:20:10', NULL, 17, 'FD', 1),
	(217, 'Advertisement Disputes', 'Advertisement', NULL, '2019-12-18 07:20:27', '2019-12-18 07:20:27', NULL, 17, 'AD', 1),
	(218, 'Product Promotion', 'Product', NULL, '2019-12-18 07:21:37', '2019-12-18 07:21:37', NULL, 17, 'PD', 1),
	(219, 'Royalty', 'Royalty', NULL, '2019-12-18 07:21:53', '2019-12-18 07:21:53', NULL, 17, 'ROY', 1),
	(220, 'Publication', 'Publication', NULL, '2019-12-18 07:22:07', '2019-12-18 07:22:07', NULL, 17, 'PU', 1),
	(221, 'Film Production', 'flim', NULL, '2019-12-18 07:22:22', '2019-12-18 07:22:22', NULL, 17, 'FP', 1),
	(222, 'Damages', 'Damages', NULL, '2019-12-18 07:22:54', '2019-12-18 07:22:54', NULL, 17, 'D', 1),
	(223, 'Money Claims', 'Money Claims', NULL, '2019-12-18 07:23:21', '2019-12-18 07:23:21', NULL, 17, 'MOC', 1),
	(224, 'Joint Development', 'Joint development', NULL, '2019-12-18 07:23:56', '2019-12-18 07:23:56', NULL, 13, 'JOD', 1),
	(225, 'Lease and Licenses', 'Lease', NULL, '2019-12-18 07:24:17', '2019-12-18 07:24:17', NULL, 13, 'LAL', 1),
	(226, 'Mortgages', 'Mortages', NULL, '2019-12-18 07:24:43', '2019-12-18 07:24:43', NULL, 13, 'MOR', 1),
	(227, 'Boundary', 'boundary', NULL, '2019-12-18 07:25:05', '2019-12-18 07:25:05', NULL, 13, 'BON', 1),
	(228, 'Partition', 'partition', NULL, '2019-12-18 07:25:37', '2019-12-18 07:25:37', NULL, 13, 'PA', 1),
	(229, 'Construction', 'Construction', NULL, '2019-12-18 07:26:12', '2019-12-18 07:26:12', NULL, 13, 'C', 1),
	(230, 'Trademark Infringement and Passing Off Disputes', 'trademark', NULL, '2019-12-19 12:36:45', '2019-12-19 12:36:45', NULL, 12, 'TM', 1),
	(231, 'Patent Infringement Disputes', 'patent', NULL, '2019-12-19 12:37:14', '2019-12-19 12:37:14', NULL, 12, 'PAT', 1),
	(232, 'Technology Transfer and Licence Disputes', 'Technology', NULL, '2019-12-19 12:37:41', '2019-12-19 12:37:41', NULL, 12, 'TEC', 1),
	(233, 'Confidentiality, Trade Secret and Non Compete Disputes', 'Confidentiality', NULL, '2019-12-19 12:38:10', '2019-12-19 12:38:10', NULL, 12, 'CT', 1),
	(234, 'Domain Name', 'Domain', NULL, '2019-12-19 12:38:46', '2019-12-19 12:38:46', NULL, 12, 'DOM', 1),
	(235, 'Money Claims', 'Joint', '2020-01-07 08:37:18', '2020-01-07 08:20:54', '2020-01-07 08:37:18', NULL, 1, NULL, 1),
	(236, 'Copyright Infringement', 'Copyright infringement', NULL, '2020-03-11 06:34:16', '2020-03-11 06:34:16', NULL, 12, 'CPY', 1),
	(237, 'Others', 'Other Subdisputes', NULL, '2020-03-13 06:27:05', '2020-12-30 05:05:36', NULL, 18, 'AO', 2),
	(238, 'Salary / Perquisites/ ESOP', 'Add Salary / Perquisites/ ESOP', NULL, '2020-12-29 10:48:25', '2020-12-29 10:48:25', NULL, 8, 'ESO', 1),
	(239, 'Sale and Purchase', 'Sale and Purchase', NULL, '2020-12-29 10:56:43', '2020-12-29 10:56:43', NULL, 13, 'SAP', 1),
	(240, 'Others', 'Others', NULL, '2020-12-30 04:59:17', '2020-12-30 04:59:17', NULL, 1, 'OTA', 2),
	(241, 'Others', 'Others', NULL, '2020-12-30 04:59:37', '2020-12-30 04:59:37', NULL, 3, 'OTC', 2),
	(242, 'Others', 'Others', NULL, '2020-12-30 05:00:01', '2020-12-30 05:00:01', NULL, 4, 'OTD', 2),
	(243, 'Others', 'Others', NULL, '2020-12-30 05:00:21', '2020-12-30 05:00:21', NULL, 5, 'OTP', 2),
	(244, 'Others', 'Others', NULL, '2020-12-30 05:00:39', '2020-12-30 05:00:39', NULL, 6, 'OTM', 2),
	(245, 'Others', 'Others', NULL, '2020-12-30 05:00:53', '2020-12-30 05:00:53', NULL, 7, 'OTG', 2),
	(246, 'Others', 'Others', NULL, '2020-12-30 05:01:09', '2020-12-30 05:01:09', NULL, 8, 'OEM', 2),
	(247, 'Others', 'Others', NULL, '2020-12-30 05:01:25', '2020-12-30 05:01:25', NULL, 9, 'OEN', 2),
	(248, 'Others', 'Others', NULL, '2020-12-30 05:01:38', '2020-12-30 05:01:38', NULL, 10, 'OTF', 2),
	(249, 'Others', 'Others', NULL, '2020-12-30 05:01:50', '2020-12-30 05:01:50', NULL, 11, 'OTI', 2),
	(250, 'Others', 'Others', NULL, '2020-12-30 05:02:02', '2020-12-30 05:02:02', NULL, 12, 'OIP', 2),
	(251, 'Others', 'Others', NULL, '2020-12-30 05:02:14', '2020-12-30 05:02:14', NULL, 13, 'OTR', 2),
	(252, 'Others', 'Others', NULL, '2020-12-30 05:02:52', '2020-12-30 05:02:52', NULL, 15, 'OAV', 2),
	(253, 'Others', 'Others', NULL, '2020-12-30 05:03:03', '2020-12-30 05:03:03', NULL, 16, 'OCO', 2),
	(254, 'Others', 'Others', NULL, '2020-12-30 05:03:17', '2020-12-30 05:03:17', NULL, 17, 'OME', 2),
	(255, 'Others', 'Others', NULL, '2020-12-30 05:06:00', '2020-12-30 05:06:00', NULL, 20, 'COV', 2);
/*!40000 ALTER TABLE `dispute_subcategories` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.family_claim
CREATE TABLE IF NOT EXISTS `family_claim` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `immovable_possessor` varchar(255) DEFAULT NULL,
  `immovable_owner` varchar(255) DEFAULT NULL,
  `immovable_description` varchar(255) DEFAULT NULL,
  `immovable_schedule` varchar(255) DEFAULT NULL,
  `immovable_market` varchar(255) DEFAULT NULL,
  `movable_possessor` varchar(255) DEFAULT NULL,
  `movable_owner` varchar(255) DEFAULT NULL,
  `movable_value` varchar(255) DEFAULT NULL,
  `claim_notice_id` int(11) DEFAULT NULL,
  `claim_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_id` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `immovable_nature` varchar(50) DEFAULT NULL,
  `movable_nature` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bimacc_production1.family_claim: ~0 rows (approximately)
/*!40000 ALTER TABLE `family_claim` DISABLE KEYS */;
/*!40000 ALTER TABLE `family_claim` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.family_claim_movable
CREATE TABLE IF NOT EXISTS `family_claim_movable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `movable_possessor` varchar(255) DEFAULT NULL,
  `movable_owner` varchar(255) DEFAULT NULL,
  `movable_value` varchar(255) DEFAULT NULL,
  `claim_notice_id` int(11) DEFAULT NULL,
  `claim_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_id` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `immovable_nature` varchar(50) DEFAULT NULL,
  `movable_nature` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bimacc_production1.family_claim_movable: ~0 rows (approximately)
/*!40000 ALTER TABLE `family_claim_movable` DISABLE KEYS */;
/*!40000 ALTER TABLE `family_claim_movable` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.faq
CREATE TABLE IF NOT EXISTS `faq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modulename` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `question` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `answer` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `module_id` int(11) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `flag` int(11) DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table bimacc_production1.faq: ~23 rows (approximately)
/*!40000 ALTER TABLE `faq` DISABLE KEYS */;
REPLACE INTO `faq` (`id`, `modulename`, `question`, `answer`, `module_id`, `user_id`, `created_at`, `updated_at`, `deleted_at`, `status`, `flag`) VALUES
	(1, NULL, 'What exactly is Electronic Arbitration System ?', 'E-Arbitration is a new form of alternative dispute resolution. \r\nDisputants having an EAS arbitration clause in their contracts digitally lodge their claims against their opponents.\r\nThe opponents respond on the portal to either settle or contest the claim. Parties need not be present at the same time and place to participate in the proceedings and can do so at their convenience.', 1, 252, '2021-08-08 12:26:21', '2021-08-08 12:26:21', NULL, 0, 0),
	(3, NULL, 'Does EAS arbitrate cross-border/ international disputes ?', 'EAS provides for resolution of domestic (within India)as well as cross-border (international disputes).', 1, 252, '2021-08-08 14:02:15', '2021-08-08 14:02:15', NULL, 0, 0),
	(4, NULL, 'Is the arbitrator independent and neutral ?', 'Yes. Before one is appointed as an arbitrator for a dispute, they have to disclose to the EAS registry, conflict of interest, if any, concerning any of the parties or the nature of the dispute.', 1, 252, '2021-08-08 14:06:59', '2021-08-08 14:06:59', NULL, 0, 0),
	(5, NULL, 'Who can initiate or defend the arbitration ?', 'Any Adult, who is competent to contract under the Applicable Law agreed by the parties to a contract; any person duly authorised by a power of attorney, or a Letter of Authority, or Board Resolution, authorised government official, court-appointed - receiver, administrator, executor, insolvency resolution professional or liquidator with documentary proof can represent a party in an arbitration. ', 1, 252, '2021-08-08 14:07:48', '2021-08-08 14:07:48', NULL, 0, 0),
	(6, NULL, 'Can a party be represented by a lawyer ?', 'Yes, provided that the party shares the log-in details with the lawyer. No separate log-in details are provided for a partyÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢s lawyer or legal representative.', 1, 252, '2021-08-08 14:08:36', '2021-08-08 14:08:36', NULL, 0, 0),
	(7, NULL, 'What is the technology that one would require to use EAS ?', 'EAS recommends 4G internet bandwidth for efficient access and usage. However, 2G connection will work too but may be slow.  The user needs to have a desktop/laptop/tablet/ smartphone (android or apple).', 1, 252, '2021-08-08 14:09:24', '2021-08-08 14:09:24', NULL, 0, 0),
	(8, NULL, 'Are the timelines provided in EAS flexible ?', 'EAS being a Fast Track and low-cost arbitration, the timelines are strict and will not be relaxed unless under exceptional circumstances, and only at the stage of hearing and at the discretion of the arbitrator', 1, 252, '2021-08-08 14:10:13', '2021-08-08 14:10:13', NULL, 0, 0),
	(9, NULL, 'What are the remedies available through such arbitral proceedings ?', 'The tribunal can order specific performance and award damages, permanent injunctions, declarations, costs and interest.', 1, 252, '2021-08-08 14:11:01', '2021-08-08 14:11:01', NULL, 0, 0),
	(10, NULL, 'How is the evidence established in EAS arbitration ?', 'Evidence is by way of affidavit only. A party may file affidavits of witnesses. There is no right of cross-examination. The arbitrator, may at their discretion, examine any witness. Please refer tothe EAS rules.', 1, 252, '2021-08-08 14:11:50', '2021-08-08 14:11:50', NULL, 0, 0),
	(11, NULL, 'Is the Award binding on the parties ?', 'An Arbitral Award is final and binding on the parties.  If there are any mistakes, the Arbitration and Conciliation Act allows the tribunal to , correct any computation, clerical, typographical or similar error; provide its interpretation of a specific point or part of an Award; and make an additional award as to claims omitted from the original Award.\r\n', 1, 252, '2021-08-08 14:12:39', '2021-08-08 14:12:39', NULL, 0, 0),
	(12, NULL, 'How is the Arbitral Award in a Domestic Arbitration enforced ?', 'Domestic Awards are enforced under Section 36 of the Arbitration and Conciliation Act, 1996 of India and are executed as a court decree by moving a court of competent jurisdiction to execute the Award. However, the Award needs to be duly stamped in accordance with the Stamp Act of the State in which the Award is to be enforced. ', 1, 252, '2021-08-08 14:13:28', '2021-08-08 14:13:28', NULL, 0, 0),
	(13, NULL, 'How is an International or Cross Border Award enforced in India ?', 'Such awards are enforced in accordance with Section 48 Of the Arbitration and Conciliation Act 1996.', 1, 252, '2021-08-08 14:14:15', '2021-08-08 14:14:15', NULL, 0, 0),
	(14, NULL, 'Can an EAS Award of an International Dispute be enforced outside India  ?', ' If the parties to the dispute belong to member countries of the New York Convention, the EAS Arbitral Awards can be enforced in the appropriate member country through the applicable law as agreed by the parties in their agreement. ', 1, 252, '2021-08-08 14:15:04', '2021-08-08 14:15:04', NULL, 0, 0),
	(15, NULL, 'If the Claimant finds the outcome of the proceedings non-satisfactory, can they contest the Arbitral Award in the court of law ?', 'There is no right to appeal against an Award; however, the Award may be challenged on limited grounds in an appropriate forum, depending upon the applicable law agreed by the parties to the dispute.', 1, 252, '2021-08-08 14:15:51', '2021-08-08 14:15:51', NULL, 0, 0),
	(16, NULL, 'How safe is EAS ?', 'EAS is safe, and the data is encrypted. The notice of information is shared with prospective arbitrators on the basis of confidentiality for the purpose of obtaining consent.  EAS does not share any other information about the identities of parties to arbitration with any third party. ', 1, 252, '2021-08-08 14:16:39', '2021-08-08 14:16:39', NULL, 0, 0),
	(17, NULL, 'What exactly is the procedure for registration for online arbitration through the EAS portal?', 'Kindly visit the EAS Rules (hyperlink) for more information regarding the procedure for registration.', 2, 252, '2021-08-08 14:42:43', '2021-08-08 14:42:43', NULL, 0, 0),
	(18, NULL, 'Do I need to have an arbitration agreement or a Dispute resolution clause in my contract to participate in EAS ?', 'Yes, arbitration can only take place if both parties have agreed to it. An existing dispute can be referred to arbitration using an arbitration clause in a dispute resolution agreement between the parties.  The model arbitration clause is \r\nÃƒÂ¢Ã¢â€šÂ¬Ã…â€œThe parties to agree that all disputes shall be resolved by way of a sole arbitrator under  BIMACCÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢s EAS (Electronic  Arbitration System) rules onlyÃƒÂ¢Ã¢â€šÂ¬Ã‚Â.  The seat of Arbitration shall be Bangalore* and the applicab', 2, 252, '2021-08-08 14:43:54', '2021-08-08 14:43:54', NULL, 0, 0),
	(19, NULL, 'What currency does EAS accept ?', 'For domestic disputes, payments have to be made in Indian Rupees. For all international or cross border disputes, the payments have to be made in U.S. dollars.', 2, 252, '2021-08-08 14:44:40', '2021-08-08 14:44:40', NULL, 0, 0),
	(20, NULL, 'What would be the fee structure ?', 'Upon visiting the website, if the Claimant wishes to further their claim through the EAS online portal, the necessary details need to be filled in by the Claimant regarding their dispute. A nominal registration fee is chargeable towards the Claimant. (hyperlink fee structure)\r\nSubject to the Respondent contesting the claim notice and whether the Claimant wants to proceed, depending on whether the proceedings would continue to the stage of arbitration, an ÃƒÂ¢Ã¢â€šÂ¬Ã…â€œarbitration feeÃƒÂ¢Ã¢â€šÂ', 3, 252, '2021-08-08 14:53:25', '2021-08-08 14:53:25', NULL, 0, 0),
	(21, NULL, 'Is the Respondent expected to pay any fee ?', 'The Respondent has to pay an ÃƒÂ¢Ã¢â€šÂ¬Ã…â€œarbitration feeÃƒÂ¢Ã¢â€šÂ¬Ã‚Â and an ÃƒÂ¢Ã¢â€šÂ¬Ã…â€œadministrative feeÃƒÂ¢Ã¢â€šÂ¬Ã‚Â if the Respondent prefers a Counter-Claim. The fee may be revised upwards once the final valuation is determined by Arbitrator/ EAS.', 3, 252, '2021-08-08 14:54:12', '2021-08-08 14:54:12', NULL, 0, 0),
	(22, NULL, 'Will the fee be refunded to the party who succeeds in the arbitration ?', 'If the Claimant succeeds partly or fully, the respondent/s has/have to bear the cost of arbitration, including both the Administration fee and Arbitration fee paid by the Claimant.  If a Respondent succeeds in getting the Claimant\'s claim rejected and if a Counter Claim is preferred and allowed partly or fully, the Claimant has to bear the cost of Administration fee and Arbitration fee paid by the Respondent on the Counter Claim.', 3, 252, '2021-08-08 14:54:58', '2021-08-08 14:54:58', NULL, 0, 0),
	(23, NULL, 'Will there be a refund of the fee if the Claimant settles the dispute outside the Arbitral Tribunal ?', 'No, as EAS is a low cost and fast-track portal, EAS will not refund the fees.', 3, 252, '2021-08-08 14:55:45', '2021-08-08 14:55:45', NULL, 0, 0),
	(24, NULL, 'What types of disputes can be arbitrated ?', 'All types of disputes which do not require a court decree in rem, such as probate of wills, dissolution of marriages, custody of children, declaration of bankruptcy and insolvency and winding up of companies, can be resolved through arbitration.', 4, 252, '2021-08-08 14:56:32', '2021-08-08 14:56:32', NULL, 0, 0);
/*!40000 ALTER TABLE `faq` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.hearing_configuration
CREATE TABLE IF NOT EXISTS `hearing_configuration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `claim_id` bigint(20) NOT NULL,
  `user_status` tinyint(1) NOT NULL DEFAULT '0',
  `hearing_status` tinyint(1) NOT NULL DEFAULT '0',
  `display_order` tinyint(1) NOT NULL DEFAULT '0',
  `hearing_number` tinyint(1) NOT NULL DEFAULT '0',
  `created_id` int(11) DEFAULT NULL,
  `updated_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bimacc_production1.hearing_configuration: ~0 rows (approximately)
/*!40000 ALTER TABLE `hearing_configuration` DISABLE KEYS */;
/*!40000 ALTER TABLE `hearing_configuration` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.hearing_messages
CREATE TABLE IF NOT EXISTS `hearing_messages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `claim_id` bigint(20) unsigned NOT NULL,
  `hearing_number` tinyint(4) NOT NULL DEFAULT '0',
  `from_user_id` bigint(20) unsigned NOT NULL,
  `to_user_id` bigint(20) unsigned NOT NULL,
  `message_type` enum('Private','Public') COLLATE utf8mb4_unicode_ci NOT NULL,
  `message_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachment` tinyint(1) NOT NULL DEFAULT '0',
  `file_link` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_extension` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message_read` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bimacc_production1.hearing_messages: ~0 rows (approximately)
/*!40000 ALTER TABLE `hearing_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `hearing_messages` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.insurance_claim
CREATE TABLE IF NOT EXISTS `insurance_claim` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `policy_no` varchar(255) DEFAULT NULL,
  `nature_of_cover` varchar(255) DEFAULT NULL,
  `date_insurance` varchar(255) DEFAULT NULL,
  `policy_value` varchar(255) DEFAULT NULL,
  `policy_maturity_date` varchar(255) DEFAULT NULL,
  `surrender_value` varchar(255) DEFAULT NULL,
  `claim_nature` varchar(255) DEFAULT NULL,
  `claim_value_insurance` varchar(255) DEFAULT NULL,
  `date_of_claim` varchar(255) DEFAULT NULL,
  `date_of_notice_insurance` varchar(255) DEFAULT NULL,
  `date_of_breach_insurance` varchar(255) DEFAULT NULL,
  `claim_amount_insurance` varchar(255) DEFAULT NULL,
  `claim_amount_int` varchar(255) DEFAULT NULL,
  `claim_amount_withoutint` varchar(255) DEFAULT NULL,
  `document_no` varchar(255) DEFAULT NULL,
  `date_document` varchar(255) DEFAULT NULL,
  `freight_charges` varchar(255) DEFAULT NULL,
  `demurrage_charges` varchar(255) DEFAULT NULL,
  `goods_nature` varchar(255) DEFAULT NULL,
  `value_of_good` varchar(255) DEFAULT NULL,
  `loss_nature` varchar(255) DEFAULT NULL,
  `claim_notice_id` int(11) DEFAULT NULL,
  `claim_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_id` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bimacc_production1.insurance_claim: ~0 rows (approximately)
/*!40000 ALTER TABLE `insurance_claim` DISABLE KEYS */;
/*!40000 ALTER TABLE `insurance_claim` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.insurance_claim_part_2
CREATE TABLE IF NOT EXISTS `insurance_claim_part_2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `document_no` varchar(255) DEFAULT NULL,
  `date_document` varchar(255) DEFAULT NULL,
  `freight_charges` varchar(255) DEFAULT NULL,
  `demurrage_charges` varchar(255) DEFAULT NULL,
  `goods_nature` varchar(255) DEFAULT NULL,
  `value_of_good` varchar(255) DEFAULT NULL,
  `loss_nature` varchar(255) DEFAULT NULL,
  `claim_notice_id` int(11) DEFAULT NULL,
  `claim_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_id` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bimacc_production1.insurance_claim_part_2: ~0 rows (approximately)
/*!40000 ALTER TABLE `insurance_claim_part_2` DISABLE KEYS */;
/*!40000 ALTER TABLE `insurance_claim_part_2` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.legal_notice
CREATE TABLE IF NOT EXISTS `legal_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `legal_notice` varchar(30) DEFAULT NULL,
  `claim_notice_id` int(11) DEFAULT NULL,
  `claim_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_id` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `is_respondant` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bimacc_production1.legal_notice: ~0 rows (approximately)
/*!40000 ALTER TABLE `legal_notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `legal_notice` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.loan_type
CREATE TABLE IF NOT EXISTS `loan_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loan_type_code` varchar(10) DEFAULT NULL,
  `loan_type_name` varchar(300) DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `updated_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `loan_description` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- Dumping data for table bimacc_production1.loan_type: ~20 rows (approximately)
/*!40000 ALTER TABLE `loan_type` DISABLE KEYS */;
REPLACE INTO `loan_type` (`id`, `loan_type_code`, `loan_type_name`, `created_id`, `updated_id`, `created_at`, `updated_at`, `deleted_at`, `loan_description`) VALUES
	(1, 'AC', 'Agricultural Credit Facilities', 1, 252, '2020-01-07 16:43:12', '2020-01-07 11:13:12', NULL, 'Agriculture credit is an important prerequisite for agricultural growth'),
	(2, 'BD', 'Bills Discounting', 1, NULL, '2019-05-06 07:56:38', '2019-05-06 07:56:38', NULL, 'Bills Discounting'),
	(3, 'CC', 'Cash Credit/Overdraft Loan', 1, 252, '2020-01-08 13:57:48', '2020-01-08 08:27:48', NULL, 'Cash Credit/Overdraft Loan'),
	(4, 'EP', 'Export Credit/Packing Credit', 1, NULL, '2019-05-06 07:59:49', '2019-05-06 07:59:49', NULL, 'Export Credit/Packing Credit'),
	(5, 'GU', 'Guarantees', 1, NULL, '2019-05-06 08:00:51', '2019-05-06 08:00:51', NULL, 'Guarantees'),
	(6, 'LC', 'Letter of Credit', 1, NULL, '2019-05-06 08:01:34', '2019-05-06 08:01:34', NULL, 'Letter of Credit'),
	(7, 'PL', 'Personal Loan', 1, NULL, '2019-05-06 08:03:44', '2019-05-06 08:03:44', NULL, 'Housing/Education/Asset etc'),
	(8, 'TL', 'Term Loan', 1, NULL, '2019-05-06 08:05:06', '2019-05-06 08:05:06', NULL, 'Term Loan'),
	(9, 'VL', 'Vehicle Loan', 1, NULL, '2019-05-06 08:05:34', '2019-05-06 08:05:34', NULL, 'Vehicle Loan'),
	(10, 'OT', 'Others', 1, NULL, '2019-05-06 08:06:21', '2019-05-06 08:06:21', NULL, 'Others'),
	(11, 'OT', 'Others', 1, NULL, '2019-05-06 13:39:28', '2019-05-06 08:09:28', '2019-05-06 08:09:28', 'Others'),
	(12, '12312', '221', 252, NULL, '2020-01-07 16:39:08', '2020-01-07 11:09:08', '2020-01-07 11:09:08', 'mnbmnb'),
	(13, NULL, NULL, 252, NULL, '2020-01-07 16:18:25', '2020-01-07 10:48:25', '2020-01-07 10:48:25', NULL),
	(14, NULL, NULL, 252, NULL, '2020-01-07 16:18:29', '2020-01-07 10:48:29', '2020-01-07 10:48:29', NULL),
	(15, NULL, NULL, 252, NULL, '2020-01-07 16:18:34', '2020-01-07 10:48:34', '2020-01-07 10:48:34', NULL),
	(16, NULL, NULL, 252, NULL, '2020-01-07 16:38:40', '2020-01-07 11:08:40', '2020-01-07 11:08:40', NULL),
	(17, NULL, NULL, 252, NULL, '2020-01-07 16:38:53', '2020-01-07 11:08:53', '2020-01-07 11:08:53', NULL),
	(18, NULL, NULL, 252, NULL, '2020-01-07 16:38:58', '2020-01-07 11:08:58', '2020-01-07 11:08:58', NULL),
	(19, NULL, NULL, 252, NULL, '2020-01-07 16:39:03', '2020-01-07 11:09:03', '2020-01-07 11:09:03', NULL),
	(20, '12312', '221', 252, NULL, '2020-01-07 16:39:12', '2020-01-07 11:09:12', '2020-01-07 11:09:12', NULL);
/*!40000 ALTER TABLE `loan_type` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.media_claim
CREATE TABLE IF NOT EXISTS `media_claim` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fileupload_media` varchar(255) DEFAULT NULL,
  `claim_notice_id` int(11) DEFAULT NULL,
  `claim_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_id` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bimacc_production1.media_claim: ~0 rows (approximately)
/*!40000 ALTER TABLE `media_claim` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_claim` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table bimacc_production1.migrations: ~30 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
REPLACE INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2019_03_14_075344_create_dispute_category_table', 1),
	(2, '2019_03_14_124013_create_claimantregister_table', 1),
	(3, '2019_03_20_110633_create_users_table', 2),
	(4, '2019_03_20_110837_laratrust_setup_tables', 3),
	(5, '2019_03_20_131214_create_cache_table', 4),
	(6, '2019_03_20_131933_create_claimantregister_table', 5),
	(7, '2019_03_20_132258_add_usertype_to_claimentregister_table', 6),
	(8, '2019_03_15_102418_add_admin_to_users_table', 7),
	(9, '2019_03_22_092354_create_password_resets_table', 8),
	(10, '2019_03_23_050750_create_dispute_subcategories_table', 9),
	(11, '2019_03_23_052047_add_user_id_dispute_subcategories_table', 10),
	(12, '2019_03_23_064239_create_arbitrationregister_table', 11),
	(13, '2019_03_23_070346_add_arbitrationregister_usertype_table', 12),
	(14, '2019_03_23_071345_create_arbitrationregister_table', 13),
	(15, '2019_03_25_052919_create_security_types_table', 14),
	(16, '2019_03_25_055311_create_feesmaster_table', 15),
	(17, '2019_03_27_090626_create_claim_information_table', 16),
	(18, '2019_03_27_090702_create_respondantdetails_table', 16),
	(19, '2019_03_27_093714_create_users_table', 17),
	(20, '2019_03_27_094837_create_claim_details_table', 18),
	(21, '2019_03_27_094913_create_relief_request_table', 18),
	(22, '2019_03_27_094956_create_claim_fees_table', 18),
	(23, '2019_03_27_102357_create_alfresco_integration_folder_table', 19),
	(24, '2019_03_27_102734_create_alfresco_document_table', 20),
	(25, '2019_03_27_103531_create_alfresco_integration_document_version_list_table', 21),
	(26, '2019_03_27_103911_create_hearing_process_table', 22),
	(27, '2019_03_27_104800_create_award_list_table', 23),
	(28, '2019_03_27_105152_create_claimant_arbitrator_configuration_table', 24),
	(29, '2019_03_27_105423_create_claim_information_payment_status_table', 25),
	(30, '2019_03_27_110244_create_alfresco_unique_document_table', 26);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.module_name
CREATE TABLE IF NOT EXISTS `module_name` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `flag` int(11) DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table bimacc_production1.module_name: ~4 rows (approximately)
/*!40000 ALTER TABLE `module_name` DISABLE KEYS */;
REPLACE INTO `module_name` (`id`, `module_name`, `user_id`, `created_at`, `updated_at`, `deleted_at`, `status`, `flag`) VALUES
	(1, 'About EAS', 252, '2021-08-08 12:19:08', '2021-08-08 12:19:08', NULL, 0, 0),
	(2, 'Registration Process', 252, '2021-08-08 12:19:56', '2021-08-08 12:19:56', NULL, 0, 0),
	(3, 'Arbitration Fee Structure', 252, '2021-08-08 12:20:41', '2021-08-08 12:20:41', NULL, 0, 0),
	(4, 'Types of disputes handled by EAS', 252, '2021-08-08 12:21:26', '2021-08-08 12:21:26', NULL, 0, 0);
/*!40000 ALTER TABLE `module_name` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.notifications
CREATE TABLE IF NOT EXISTS `notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latest` int(11) DEFAULT '1',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) unsigned NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `registration_claimnotice_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bimacc_production1.notifications: ~65 rows (approximately)
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
REPLACE INTO `notifications` (`id`, `type`, `latest`, `name`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`, `registration_claimnotice_id`) VALUES
	(1, 'Registration', 1, 'Claimant Registration', 'Claimant Registration', 1, '{"body":"New Claimant Registered","actionURL":"New Claimant Registered"}', NULL, '2023-11-01 10:02:19', '2023-11-01 10:02:19', 1),
	(2, 'Registration', 1, 'Claimant Registration', 'Claimant Registration', 1, '{"body":"New Claimant Registered","actionURL":"New Claimant Registered"}', NULL, '2023-11-01 10:04:26', '2023-11-01 10:04:26', 2),
	(3, 'Registration', 1, 'Claimant Registration', 'Claimant Registration', 1, '{"body":"New Claimant Registered","actionURL":"New Claimant Registered"}', NULL, '2023-11-01 10:10:33', '2023-11-01 10:10:33', 3),
	(4, 'Registration', 1, 'Claimant Registration', 'Claimant Registration', 1, '{"body":"New Claimant Registered","actionURL":"New Claimant Registered"}', NULL, '2023-11-02 05:35:38', '2023-11-02 05:35:38', 4),
	(5, 'Registration', 1, 'Claimant Registration', 'Claimant Registration', 1, '{"body":"New Claimant Registered","actionURL":"New Claimant Registered"}', NULL, '2023-11-02 10:23:00', '2023-11-02 10:23:00', 5),
	(6, 'Registration', 1, 'Claimant Registration', 'Claimant Registration', 1, '{"body":"New Claimant Registered","actionURL":"New Claimant Registered"}', NULL, '2023-11-02 10:24:52', '2023-11-02 10:24:52', 6),
	(7, 'Registration', 1, 'Claimant Registration', 'Claimant Registration', 1, '{"body":"New Claimant Registered","actionURL":"New Claimant Registered"}', NULL, '2023-11-02 10:28:43', '2023-11-02 10:28:43', 7),
	(8, 'Registration', 1, 'Claimant Registration', 'Claimant Registration', 1, '{"body":"New Claimant Registered","actionURL":"New Claimant Registered"}', NULL, '2023-11-02 10:32:52', '2023-11-02 10:32:52', 8),
	(9, 'Registration', 1, 'Claimant Registration', 'Claimant Registration', 1, '{"body":"New Claimant Registered","actionURL":"New Claimant Registered"}', NULL, '2023-11-02 10:40:17', '2023-11-02 10:40:17', 9),
	(10, 'Registration', 1, 'Claimant Registration', 'Claimant Registration', 1, '{"body":"New Claimant Registered","actionURL":"New Claimant Registered"}', NULL, '2023-11-02 10:43:16', '2023-11-02 10:43:16', 10),
	(11, 'Registration', 1, 'Claimant Registration', 'Claimant Registration', 1, '{"body":"New Claimant Registered","actionURL":"New Claimant Registered"}', NULL, '2023-11-02 10:45:17', '2023-11-02 10:45:17', 11),
	(12, 'Registration', 1, 'Claimant Registration', 'Claimant Registration', 1, '{"body":"New Claimant Registered","actionURL":"New Claimant Registered"}', NULL, '2023-11-02 10:46:26', '2023-11-02 10:46:26', 12),
	(13, 'Registration', 1, 'Claimant Registration', 'Claimant Registration', 1, '{"body":"New Claimant Registered","actionURL":"New Claimant Registered"}', NULL, '2023-11-02 10:48:05', '2023-11-02 10:48:05', 13),
	(14, 'Registration', 1, 'Claimant Registration', 'Claimant Registration', 1, '{"body":"New Claimant Registered","actionURL":"New Claimant Registered"}', NULL, '2023-11-02 10:49:41', '2023-11-02 10:49:41', 14),
	(15, 'Registration', 1, 'Claimant Registration', 'Claimant Registration', 1, '{"body":"New Claimant Registered","actionURL":"New Claimant Registered"}', NULL, '2023-11-02 10:52:56', '2023-11-02 10:52:56', 15),
	(16, 'Registration', 1, 'Claimant Registration', 'Claimant Registration', 1, '{"body":"New Claimant Registered","actionURL":"New Claimant Registered"}', NULL, '2023-11-02 10:55:09', '2023-11-02 10:55:09', 16),
	(17, 'Registration', 1, 'Claimant Registration', 'Claimant Registration', 1, '{"body":"New Claimant Registered","actionURL":"New Claimant Registered"}', NULL, '2023-11-02 11:02:58', '2023-11-02 11:02:58', 17),
	(18, 'Registration', 1, 'Claimant Registration', 'Claimant Registration', 1, '{"body":"New Claimant Registered","actionURL":"New Claimant Registered"}', NULL, '2023-11-03 05:47:49', '2023-11-03 05:47:49', 18),
	(19, 'Registration', 1, 'Claimant Registration', 'Claimant Registration', 1, '{"body":"New Claimant Registered","actionURL":"New Claimant Registered"}', NULL, '2023-11-03 05:52:11', '2023-11-03 05:52:11', 19),
	(20, 'Registration', 1, 'Claimant Registration', 'Claimant Registration', 1, '{"body":"New Claimant Registered","actionURL":"New Claimant Registered"}', NULL, '2023-11-03 09:17:45', '2023-11-03 09:17:45', 20),
	(21, 'Registration', 1, 'Claimant Registration', 'Claimant Registration', 1, '{"body":"New Claimant Registered","actionURL":"New Claimant Registered"}', NULL, '2023-11-03 09:28:11', '2023-11-03 09:28:11', 21),
	(22, 'Registration', 1, 'Claimant Registration', 'Claimant Registration', 1, '{"body":"New Claimant Registered","actionURL":"New Claimant Registered"}', NULL, '2023-11-03 09:29:48', '2023-11-03 09:29:48', 22),
	(23, 'Registration', 1, 'Claimant Registration', 'Claimant Registration', 1, '{"body":"New Claimant Registered","actionURL":"New Claimant Registered"}', NULL, '2023-11-03 09:31:12', '2023-11-03 09:31:12', 23),
	(24, 'Registration', 1, 'Claimant Registration', 'Claimant Registration', 1, '{"body":"New Claimant Registered","actionURL":"New Claimant Registered"}', NULL, '2023-11-03 09:33:04', '2023-11-03 09:33:04', 24),
	(25, 'Registration', 1, 'Claimant Registration', 'Claimant Registration', 1, '{"body":"New Claimant Registered","actionURL":"New Claimant Registered"}', NULL, '2023-11-03 09:34:53', '2023-11-03 09:34:53', 25),
	(26, 'Registration', 1, 'Claimant Registration', 'Claimant Registration', 1, '{"body":"New Claimant Registered","actionURL":"New Claimant Registered"}', NULL, '2023-11-03 09:37:40', '2023-11-03 09:37:40', 26),
	(27, 'Registration', 1, 'Claimant Registration', 'Claimant Registration', 1, '{"body":"New Claimant Registered","actionURL":"New Claimant Registered"}', NULL, '2023-11-06 12:26:48', '2023-11-06 12:26:48', 27),
	(28, 'Registration', 1, 'Claimant Registration', 'Claimant Registration', 1, '{"body":"New Claimant Registered","actionURL":"New Claimant Registered"}', NULL, '2023-11-06 12:31:49', '2023-11-06 12:31:49', 28),
	(29, 'Registration', 1, 'Claimant Registration', 'Claimant Registration', 1, '{"body":"New Claimant Registered","actionURL":"New Claimant Registered"}', NULL, '2023-11-06 12:42:03', '2023-11-06 12:42:03', 29),
	(30, 'Registration', 1, 'Claimant Registration', 'Claimant Registration', 1, '{"body":"New Claimant Registered","actionURL":"New Claimant Registered"}', NULL, '2023-11-06 12:46:39', '2023-11-06 12:46:39', 30),
	(31, 'Registration', 1, 'Claimant Registration', 'Claimant Registration', 1, '{"body":"New Claimant Registered","actionURL":"New Claimant Registered"}', NULL, '2023-11-07 09:54:25', '2023-11-07 09:54:25', 31),
	(32, 'Registration', 1, 'Claimant Registration', 'Claimant Registration', 1, '{"body":"New Claimant Registered","actionURL":"New Claimant Registered"}', NULL, '2023-11-07 10:00:32', '2023-11-07 10:00:32', 32),
	(33, 'Registration', 1, 'Claimant Registration', 'Claimant Registration', 1, '{"body":"New Claimant Registered","actionURL":"New Claimant Registered"}', NULL, '2023-11-07 10:05:51', '2023-11-07 10:05:51', 33),
	(34, 'Registration', 1, 'Claimant Registration', 'Claimant Registration', 1, '{"body":"New Claimant Registered","actionURL":"New Claimant Registered"}', NULL, '2023-11-07 10:12:28', '2023-11-07 10:12:28', 34),
	(35, 'Registration', 1, 'Claimant Registration', 'Claimant Registration', 1, '{"body":"New Claimant Registered","actionURL":"New Claimant Registered"}', NULL, '2023-11-07 10:20:27', '2023-11-07 10:20:27', 35),
	(36, 'Registration', 1, 'Claimant Registration', 'Claimant Registration', 1, '{"body":"New Claimant Registered","actionURL":"New Claimant Registered"}', NULL, '2023-11-07 10:24:04', '2023-11-07 10:24:04', 36),
	(37, 'Registration', 1, 'Claimant Registration', 'Claimant Registration', 1, '{"body":"New Claimant Registered","actionURL":"New Claimant Registered"}', NULL, '2023-11-07 10:43:11', '2023-11-07 10:43:11', 37),
	(38, 'Registration', 1, 'Claimant Registration', 'Claimant Registration', 1, '{"body":"New Claimant Registered","actionURL":"New Claimant Registered"}', NULL, '2023-11-07 10:48:23', '2023-11-07 10:48:23', 38),
	(39, 'Registration', 1, 'Claimant Registration', 'Claimant Registration', 1, '{"body":"New Claimant Registered","actionURL":"New Claimant Registered"}', NULL, '2023-11-07 10:55:06', '2023-11-07 10:55:06', 39),
	(40, 'Registration', 1, 'Claimant Registration', 'Claimant Registration', 1, '{"body":"New Claimant Registered","actionURL":"New Claimant Registered"}', NULL, '2023-11-07 10:57:22', '2023-11-07 10:57:22', 40),
	(41, 'Registration', 1, 'Claimant Registration', 'Claimant Registration', 1, '{"body":"New Claimant Registered","actionURL":"New Claimant Registered"}', NULL, '2023-11-07 11:14:06', '2023-11-07 11:14:06', 41),
	(42, 'Registration', 1, 'Claimant Registration', 'Claimant Registration', 1, '{"body":"New Claimant Registered","actionURL":"New Claimant Registered"}', NULL, '2023-11-07 11:17:22', '2023-11-07 11:17:22', 42),
	(43, 'Registration', 1, 'Claimant Registration', 'Claimant Registration', 1, '{"body":"New Claimant Registered","actionURL":"New Claimant Registered"}', NULL, '2023-11-07 11:25:47', '2023-11-07 11:25:47', 43),
	(44, 'Registration', 1, 'Claimant Registration', 'Claimant Registration', 1, '{"body":"New Claimant Registered","actionURL":"New Claimant Registered"}', NULL, '2023-11-07 11:32:39', '2023-11-07 11:32:39', 44),
	(45, 'Registration', 1, 'Claimant Registration', 'Claimant Registration', 1, '{"body":"New Claimant Registered","actionURL":"New Claimant Registered"}', NULL, '2023-11-08 11:40:13', '2023-11-08 11:40:13', 45),
	(46, 'Registration', 1, 'Claimant Registration', 'Claimant Registration', 1, '{"body":"New Claimant Registered","actionURL":"New Claimant Registered"}', NULL, '2023-11-08 11:49:52', '2023-11-08 11:49:52', 46),
	(47, 'Registration', 1, 'Claimant Registration', 'Claimant Registration', 1, '{"body":"New Claimant Registered","actionURL":"New Claimant Registered"}', NULL, '2023-11-08 11:57:17', '2023-11-08 11:57:17', 47),
	(48, 'Registration', 1, 'Claimant Registration', 'Claimant Registration', 1, '{"body":"New Claimant Registered","actionURL":"New Claimant Registered"}', NULL, '2023-11-08 12:01:55', '2023-11-08 12:01:55', 48),
	(49, 'Registration', 1, 'Claimant Registration', 'Claimant Registration', 1, '{"body":"New Claimant Registered","actionURL":"New Claimant Registered"}', NULL, '2023-11-08 12:04:07', '2023-11-08 12:04:07', 49),
	(50, 'Registration', 1, 'Claimant Registration', 'Claimant Registration', 1, '{"body":"New Claimant Registered","actionURL":"New Claimant Registered"}', NULL, '2023-11-08 12:11:14', '2023-11-08 12:11:14', 50),
	(51, 'Registration', 1, 'Claimant Registration', 'Claimant Registration', 1, '{"body":"New Claimant Registered","actionURL":"New Claimant Registered"}', NULL, '2023-11-08 12:15:47', '2023-11-08 12:15:47', 51),
	(52, 'Registration', 1, 'Claimant Registration', 'Claimant Registration', 1, '{"body":"New Claimant Registered","actionURL":"New Claimant Registered"}', NULL, '2023-11-08 12:16:54', '2023-11-08 12:16:54', 52),
	(53, 'Registration', 1, 'Claimant Registration', 'Claimant Registration', 1, '{"body":"New Claimant Registered","actionURL":"New Claimant Registered"}', NULL, '2023-11-08 12:23:26', '2023-11-08 12:23:26', 53),
	(54, 'Registration', 1, 'Claimant Registration', 'Claimant Registration', 1, '{"body":"New Claimant Registered","actionURL":"New Claimant Registered"}', NULL, '2023-11-08 12:24:56', '2023-11-08 12:24:56', 54),
	(55, 'Registration', 1, 'Claimant Registration', 'Claimant Registration', 1, '{"body":"New Claimant Registered","actionURL":"New Claimant Registered"}', NULL, '2023-11-08 13:01:25', '2023-11-08 13:01:25', 55),
	(56, 'Registration', 1, 'Claimant Registration', 'Claimant Registration', 1, '{"body":"New Claimant Registered","actionURL":"New Claimant Registered"}', NULL, '2023-11-08 13:05:04', '2023-11-08 13:05:04', 56),
	(57, 'Registration', 1, 'Claimant Registration', 'Claimant Registration', 1, '{"body":"New Claimant Registered","actionURL":"New Claimant Registered"}', NULL, '2023-11-08 13:15:16', '2023-11-08 13:15:16', 57),
	(58, 'Registration', 1, 'Claimant Registration', 'Claimant Registration', 1, '{"body":"New Claimant Registered","actionURL":"New Claimant Registered"}', NULL, '2023-11-08 13:17:26', '2023-11-08 13:17:26', 58),
	(59, 'Registration', 1, 'Claimant Registration', 'Claimant Registration', 1, '{"body":"New Claimant Registered","actionURL":"New Claimant Registered"}', NULL, '2023-11-08 13:19:04', '2023-11-08 13:19:04', 59),
	(60, 'Registration', 1, 'Claimant Registration', 'Claimant Registration', 1, '{"body":"New Claimant Registered","actionURL":"New Claimant Registered"}', NULL, '2023-11-09 04:14:20', '2023-11-09 04:14:20', 60),
	(61, 'ClaimNotice', 1, 'CN/EAS/2023/010  New Claim Notice Created', 'New Claim Created', 252, '{"body":"CN\\/EAS\\/2023\\/010  New Claim Notice Created","actionURL":"http:\\/\\/35.154.135.58\\/claimantsnoticelist"}', NULL, '2023-11-09 06:09:52', '2023-11-09 06:09:52', 10),
	(62, 'Registration', 1, 'Claimant Registration', 'Claimant Registration', 1, '{"body":"New Claimant Registered","actionURL":"New Claimant Registered"}', NULL, '2023-11-09 06:23:42', '2023-11-09 06:23:42', 61),
	(63, 'Registration', 1, 'Claimant Registration', 'Claimant Registration', 1, '{"body":"New Claimant Registered","actionURL":"New Claimant Registered"}', NULL, '2023-11-11 09:02:49', '2023-11-11 09:02:49', 62),
	(64, 'Registration', 1, 'Claimant Registration', 'Claimant Registration', 1, '{"body":"New Claimant Registered","actionURL":"New Claimant Registered"}', NULL, '2023-11-12 00:41:40', '2023-11-12 00:41:40', 63),
	(65, 'Registration', 1, 'Claimant Registration', 'Claimant Registration', 1, '{"body":"New Claimant Registered","actionURL":"New Claimant Registered"}', NULL, '2023-11-14 04:20:13', '2023-11-14 04:20:13', 64);
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.oauth_access_tokens
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table bimacc_production1.oauth_access_tokens: ~0 rows (approximately)
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
REPLACE INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
	('5820468b554f0968242b647e57f42176b406fc54b124e8224a0abc77ed6258aaf854c404b016a404', 1, 2, NULL, '[]', 0, '2019-09-23 21:55:03', '2019-09-23 21:55:03', '2020-09-24 03:25:03');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.oauth_auth_codes
CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) unsigned NOT NULL,
  `scopes` text COLLATE utf8_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table bimacc_production1.oauth_auth_codes: ~0 rows (approximately)
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.oauth_clients
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table bimacc_production1.oauth_clients: ~2 rows (approximately)
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
REPLACE INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
	(1, NULL, 'Online Arbitration System Personal Access Client', 'fSb2SoA5FfTsGlHpcWSMyVTrdhKi9mVsHsj7qaLw', 'http://localhost', 1, 0, 0, '2019-09-23 21:50:37', '2019-09-23 21:50:37'),
	(2, NULL, 'Online Arbitration System Password Grant Client', 'SGje6AVWHh7wjxxCYYREiuzNcSEfMfq1VnTIXj3B', 'http://localhost', 0, 1, 0, '2019-09-23 21:50:37', '2019-09-23 21:50:37');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.oauth_personal_access_clients
CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table bimacc_production1.oauth_personal_access_clients: ~0 rows (approximately)
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
REPLACE INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
	(1, 1, '2019-09-23 21:50:37', '2019-09-23 21:50:37');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.oauth_refresh_tokens
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table bimacc_production1.oauth_refresh_tokens: ~0 rows (approximately)
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
REPLACE INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
	('ee7f733ffba8a76dd03f9c41885dc44a81b725d3351b4aa2e1e879e0f9a5a56b057f0ce220722640', '5820468b554f0968242b647e57f42176b406fc54b124e8224a0abc77ed6258aaf854c404b016a404', 0, '2020-09-24 03:25:03');
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.other_document
CREATE TABLE IF NOT EXISTS `other_document` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `other_document` varchar(30) DEFAULT NULL,
  `claim_notice_id` int(11) DEFAULT NULL,
  `claim_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_id` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `is_respondant` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=220 DEFAULT CHARSET=latin1;

-- Dumping data for table bimacc_production1.other_document: ~194 rows (approximately)
/*!40000 ALTER TABLE `other_document` DISABLE KEYS */;
REPLACE INTO `other_document` (`id`, `other_document`, `claim_notice_id`, `claim_id`, `created_at`, `updated_id`, `updated_at`, `deleted_at`, `created_id`, `is_respondant`) VALUES
	(3, 'document Pesrsonel', 15, 5, '2020-10-29 17:48:54', NULL, NULL, NULL, 897, NULL),
	(4, 'document Pesrsonel', 15, 5, '2020-10-29 17:48:54', NULL, NULL, NULL, 897, NULL),
	(5, 'document', 15, 6, '2020-10-29 19:00:37', NULL, NULL, NULL, 889, 1),
	(6, 'document Pesrsonel', 15, 6, '2020-10-29 19:00:37', NULL, NULL, NULL, 889, 1),
	(7, 'document', 15, 7, '2020-10-29 19:01:45', NULL, NULL, NULL, 889, 1),
	(8, 'document Pesrsonel', 15, 7, '2020-10-29 19:01:45', NULL, NULL, NULL, 889, 1),
	(9, NULL, 16, 8, '2020-10-30 10:19:56', NULL, NULL, NULL, 897, NULL),
	(10, NULL, 24, 20, '2020-12-02 10:43:58', NULL, NULL, NULL, 906, NULL),
	(11, NULL, 24, 21, '2020-12-02 10:44:00', NULL, NULL, NULL, 906, NULL),
	(12, 'document', 25, 22, '2020-12-02 17:51:29', NULL, NULL, NULL, 887, NULL),
	(13, 'Private Document', 25, 22, '2020-12-02 17:51:29', NULL, NULL, NULL, 887, NULL),
	(14, NULL, 26, 23, '2020-12-02 18:01:04', NULL, NULL, NULL, 887, NULL),
	(15, NULL, 26, 24, '2020-12-02 18:16:59', NULL, NULL, NULL, 889, 1),
	(16, 'sample', 14, 25, '2020-12-14 13:57:27', NULL, NULL, NULL, 890, NULL),
	(17, 'NA', 14, 26, '2020-12-14 14:16:37', NULL, NULL, NULL, 890, NULL),
	(18, NULL, 29, 27, '2020-12-24 19:01:32', NULL, NULL, NULL, 910, NULL),
	(19, NULL, 29, 28, '2020-12-24 19:01:32', NULL, NULL, NULL, 910, NULL),
	(20, NULL, 29, 29, '2020-12-24 19:03:11', NULL, NULL, NULL, 910, NULL),
	(21, 'Pro note', 30, 30, '2020-12-24 20:45:43', NULL, NULL, NULL, 913, NULL),
	(22, NULL, 30, 31, '2020-12-24 20:50:14', NULL, NULL, NULL, 913, NULL),
	(23, NULL, 30, 32, '2020-12-24 20:50:14', NULL, NULL, NULL, 913, NULL),
	(24, NULL, 33, 33, '2020-12-26 16:44:52', NULL, NULL, NULL, 915, NULL),
	(25, NULL, 33, 34, '2020-12-26 16:44:54', NULL, NULL, NULL, 915, NULL),
	(26, NULL, 33, 35, '2020-12-26 16:44:54', NULL, NULL, NULL, 915, NULL),
	(27, NULL, 33, 36, '2020-12-26 16:44:54', NULL, NULL, NULL, 915, NULL),
	(28, NULL, 33, 37, '2020-12-26 16:48:22', NULL, NULL, NULL, 915, NULL),
	(29, NULL, 33, 38, '2020-12-26 17:14:15', NULL, NULL, NULL, 915, NULL),
	(30, NULL, 53, 39, '2020-12-26 18:15:26', NULL, NULL, NULL, 915, NULL),
	(31, NULL, 53, 40, '2020-12-26 18:16:17', NULL, NULL, NULL, 915, NULL),
	(32, NULL, 49, 41, '2020-12-27 16:54:44', NULL, NULL, NULL, 915, NULL),
	(33, NULL, 37, 42, '2020-12-28 21:07:18', NULL, NULL, NULL, 915, NULL),
	(34, NULL, 38, 43, '2020-12-28 21:37:12', NULL, NULL, NULL, 915, NULL),
	(35, 'FEF', 77, 44, '2021-01-11 12:12:11', NULL, NULL, NULL, 927, NULL),
	(36, NULL, 77, 45, '2021-01-11 12:12:32', NULL, NULL, NULL, 927, NULL),
	(39, 'DOC-PDF', 78, 46, '2021-01-11 11:53:08', NULL, NULL, NULL, 927, NULL),
	(40, 'DOC_NOC', 78, 46, '2021-01-11 11:53:08', NULL, NULL, NULL, 927, NULL),
	(41, 'pdf', 78, 47, '2021-01-11 11:56:05', NULL, NULL, NULL, 927, NULL),
	(42, 'ERD', 78, 48, '2021-01-11 12:00:28', NULL, NULL, NULL, 927, NULL),
	(43, 'RD', 74, 49, '2021-01-11 11:14:41', NULL, NULL, NULL, 927, NULL),
	(44, 'pdf', 94, 50, '2021-01-11 11:21:46', NULL, NULL, NULL, 927, NULL),
	(45, '12', 97, 51, '2021-01-11 11:17:15', NULL, NULL, NULL, 934, NULL),
	(46, 'pdf', 103, 52, '2021-01-18 13:33:13', NULL, NULL, NULL, 923, NULL),
	(47, 'PDF', 104, 53, '2021-01-18 13:42:02', NULL, NULL, NULL, 923, NULL),
	(48, 'PDF', 104, 54, '2021-01-18 13:42:04', NULL, NULL, NULL, 923, NULL),
	(49, 'pdf', 111, 55, '2021-01-19 15:05:44', NULL, NULL, NULL, 923, NULL),
	(50, NULL, 129, 56, '2021-01-20 18:39:56', NULL, NULL, NULL, 923, NULL),
	(51, NULL, 129, 57, '2021-01-20 18:39:57', NULL, NULL, NULL, 923, NULL),
	(52, NULL, 138, 58, '2021-01-22 17:07:56', NULL, NULL, NULL, 935, 1),
	(53, 'few', 141, 59, '2021-01-23 14:00:24', NULL, NULL, NULL, 923, NULL),
	(54, 'job', 141, 59, '2021-01-23 14:00:24', NULL, NULL, NULL, 923, NULL),
	(55, 'Pdf', 144, 60, '2021-01-25 12:17:37', NULL, NULL, NULL, 944, NULL),
	(56, 'IOp', 144, 60, '2021-01-25 12:17:37', NULL, NULL, NULL, 944, NULL),
	(57, ',,', 162, 61, '2021-01-29 15:06:27', NULL, NULL, NULL, 935, 1),
	(58, 'jj', 162, 61, '2021-01-29 15:06:27', NULL, NULL, NULL, 935, 1),
	(59, NULL, 163, 62, '2021-01-29 15:20:24', NULL, NULL, NULL, 927, NULL),
	(60, 'oo', 171, 63, '2021-01-29 17:43:12', NULL, NULL, NULL, 935, 1),
	(61, NULL, 173, 64, '2021-01-29 19:00:43', NULL, NULL, NULL, 947, NULL),
	(62, NULL, 173, 65, '2021-01-29 19:09:21', NULL, NULL, NULL, 947, NULL),
	(63, NULL, 117, 66, '2021-01-29 19:37:46', NULL, NULL, NULL, 927, NULL),
	(64, NULL, 117, 67, '2021-01-29 19:39:28', NULL, NULL, NULL, 927, NULL),
	(65, 'PDF', 191, 68, '2021-02-01 17:24:42', NULL, NULL, NULL, 923, NULL),
	(66, 'PDF', 191, 69, '2021-02-01 17:26:11', NULL, NULL, NULL, 923, NULL),
	(67, 'jj', 191, 70, '2021-02-01 17:41:15', NULL, NULL, NULL, 923, NULL),
	(73, 'GH', 193, 71, '2021-02-01 18:31:16', NULL, NULL, NULL, 923, NULL),
	(74, 'ty', 193, 71, '2021-02-01 18:31:16', NULL, NULL, NULL, 923, NULL),
	(75, 'PDF', 194, 74, '2021-02-01 19:44:57', NULL, NULL, NULL, 923, NULL),
	(79, 'Document', 193, 76, '2021-02-01 20:44:39', NULL, NULL, NULL, 923, NULL),
	(80, 'pFD', 193, 73, '2021-02-01 20:45:28', NULL, NULL, NULL, 923, NULL),
	(81, 'iuuj', 193, 72, '2021-02-01 20:47:01', NULL, NULL, NULL, 923, NULL),
	(82, NULL, 193, 72, '2021-02-01 20:47:01', NULL, NULL, NULL, 923, NULL),
	(83, 'PDF', 194, 77, '2021-02-01 20:56:04', NULL, NULL, NULL, 923, NULL),
	(84, 'PDF', 194, 77, '2021-02-01 20:56:05', NULL, NULL, NULL, 923, NULL),
	(85, 'PDF', 194, 75, '2021-02-01 20:59:36', NULL, NULL, NULL, 923, NULL),
	(86, 'PDF', 195, 78, '2021-02-01 21:06:27', NULL, NULL, NULL, 923, NULL),
	(88, 'PGD', 195, 79, '2021-02-01 21:08:57', NULL, NULL, NULL, 923, NULL),
	(89, 'PDF', 195, 80, '2021-02-01 21:13:24', NULL, NULL, NULL, 923, NULL),
	(90, 'PDF', 196, 81, '2021-02-01 21:19:22', NULL, NULL, NULL, 923, NULL),
	(91, NULL, 196, 82, '2021-02-01 21:20:18', NULL, NULL, NULL, 923, NULL),
	(92, NULL, 196, 83, '2021-02-01 21:20:19', NULL, NULL, NULL, 923, NULL),
	(93, 'PDR', 198, 84, '2021-02-02 12:54:41', NULL, NULL, NULL, 923, NULL),
	(94, NULL, 198, 85, '2021-02-02 12:57:18', NULL, NULL, NULL, 923, NULL),
	(95, NULL, 198, 86, '2021-02-02 12:57:20', NULL, NULL, NULL, 923, NULL),
	(96, 'pig', 199, 87, '2021-02-02 15:31:13', NULL, NULL, NULL, 923, NULL),
	(97, NULL, 199, 88, '2021-02-02 15:31:50', NULL, NULL, NULL, 923, NULL),
	(98, NULL, 199, 89, '2021-02-02 15:33:33', NULL, NULL, NULL, 923, NULL),
	(99, NULL, 200, 90, '2021-02-02 15:50:13', NULL, NULL, NULL, 923, NULL),
	(100, NULL, 200, 91, '2021-02-02 15:56:33', NULL, NULL, NULL, 923, NULL),
	(101, NULL, 200, 92, '2021-02-02 16:04:59', NULL, NULL, NULL, 923, NULL),
	(103, NULL, 200, 93, '2021-02-02 16:10:54', NULL, NULL, NULL, 923, NULL),
	(104, NULL, 200, 94, '2021-02-02 16:12:29', NULL, NULL, NULL, 923, NULL),
	(107, NULL, 204, 95, '2021-02-03 15:54:18', NULL, NULL, NULL, 958, NULL),
	(108, 'Amend Document', 204, 96, '2021-02-03 15:55:45', NULL, NULL, NULL, 958, NULL),
	(109, 'LOP', 214, 97, '2021-02-09 12:24:40', NULL, NULL, NULL, 923, NULL),
	(110, 'LOP', 214, 98, '2021-02-09 12:24:41', NULL, NULL, NULL, 923, NULL),
	(111, 'PDF', 214, 99, '2021-02-09 16:09:35', NULL, NULL, NULL, 935, 1),
	(112, 'PDF', 216, 100, '2021-02-10 18:29:26', NULL, NULL, NULL, 923, NULL),
	(113, 'IHH', 216, 101, '2021-02-10 18:36:44', NULL, NULL, NULL, 923, NULL),
	(114, 'DOC-PDF', 218, 102, '2021-02-16 15:21:30', NULL, NULL, NULL, 923, NULL),
	(115, 'RD', 218, 103, '2021-02-16 15:22:52', NULL, NULL, NULL, 923, NULL),
	(116, 'DOC-PDF', 218, 104, '2021-02-16 15:29:57', NULL, NULL, NULL, 923, NULL),
	(119, 'FINANACE', 220, 105, '2021-02-23 11:11:57', NULL, NULL, NULL, 923, NULL),
	(120, 'Private Document', 220, 107, '2021-02-23 11:13:27', NULL, NULL, NULL, 923, NULL),
	(121, 'Cash', 220, 106, '2021-02-23 11:14:01', NULL, NULL, NULL, 923, NULL),
	(122, 'top', 221, 108, '2021-02-23 16:27:32', NULL, NULL, NULL, 923, NULL),
	(123, 'too', 221, 108, '2021-02-23 16:27:32', NULL, NULL, NULL, 923, NULL),
	(124, 'top', 221, 109, '2021-02-23 16:27:33', NULL, NULL, NULL, 923, NULL),
	(125, 'too', 221, 109, '2021-02-23 16:27:33', NULL, NULL, NULL, 923, NULL),
	(126, 'PDF', 221, 110, '2021-02-23 16:29:35', NULL, NULL, NULL, 923, NULL),
	(127, 'PDF', 221, 111, '2021-02-23 16:29:35', NULL, NULL, NULL, 923, NULL),
	(129, '555', 222, 113, '2021-02-23 16:55:17', NULL, NULL, NULL, 923, NULL),
	(130, 'pdf', 222, 112, '2021-02-23 17:28:58', NULL, NULL, NULL, 923, NULL),
	(131, 'PDF', 222, 114, '2021-02-23 19:23:04', NULL, NULL, NULL, 935, 1),
	(132, 'iooo', 222, 115, '2021-02-23 19:28:11', NULL, NULL, NULL, 935, 1),
	(133, 'iooo', 222, 116, '2021-02-23 19:28:12', NULL, NULL, NULL, 935, 1),
	(134, 'iooo', 222, 117, '2021-02-23 19:28:12', NULL, NULL, NULL, 935, 1),
	(135, 'PDF', 223, 118, '2021-02-24 11:15:33', NULL, NULL, NULL, 923, NULL),
	(136, 'UIJ', 223, 119, '2021-02-24 11:22:06', NULL, NULL, NULL, 923, NULL),
	(137, 'UIJ', 223, 120, '2021-02-24 11:22:06', NULL, NULL, NULL, 923, NULL),
	(139, 'Pdf', 229, 122, '2021-03-05 13:22:21', NULL, NULL, NULL, 961, NULL),
	(140, 'pdf', 229, 123, '2021-03-05 13:51:18', NULL, NULL, NULL, 961, NULL),
	(141, 'PDF', 230, 124, '2021-03-09 07:27:46', NULL, NULL, NULL, 923, NULL),
	(143, 'PDF', 230, 125, '2021-03-09 07:30:01', NULL, NULL, NULL, 923, NULL),
	(144, 'PDF', 230, 125, '2021-03-09 07:30:01', NULL, NULL, NULL, 923, NULL),
	(145, 'DOC-PDF', 240, 135, '2021-03-19 15:47:38', NULL, NULL, NULL, 938, NULL),
	(146, 'document', 241, 137, '2021-03-19 16:38:34', NULL, NULL, NULL, 923, NULL),
	(147, 'DOC-PDF', 242, 138, '2021-03-19 16:59:52', NULL, NULL, NULL, 938, NULL),
	(148, 'DOC-PDF', 243, 139, '2021-03-22 09:52:16', NULL, NULL, NULL, 961, NULL),
	(149, 'DOC-PDF', 243, 140, '2021-03-22 09:56:58', NULL, NULL, NULL, 961, NULL),
	(150, 'DOC-PDF', 245, 142, '2021-03-23 11:17:11', NULL, NULL, NULL, 908, NULL),
	(151, 'pdf', 248, 147, '2021-03-23 21:46:57', NULL, NULL, NULL, 961, NULL),
	(152, 'pij', 248, 148, '2021-03-23 21:53:35', NULL, NULL, NULL, 935, 1),
	(153, 'Private Document', 176, 149, '2021-03-24 09:28:56', NULL, NULL, NULL, 935, 1),
	(154, 'PDF', 250, 151, '2021-03-24 12:26:18', NULL, NULL, NULL, 961, NULL),
	(155, 'document', 250, 152, '2021-03-24 12:31:11', NULL, NULL, NULL, 935, 1),
	(156, 'PDF', 251, 153, '2021-03-24 13:25:28', NULL, NULL, NULL, 961, NULL),
	(157, 'DOC-PDF', 253, 155, '2021-03-24 16:47:10', NULL, NULL, NULL, 961, NULL),
	(158, 'DOC-PDF', 256, 156, '2021-03-27 14:21:16', NULL, NULL, NULL, 923, NULL),
	(159, 'NA', 239, 157, '2021-03-30 11:55:49', NULL, NULL, NULL, 915, NULL),
	(160, 'document Pesrsonel', 258, 158, '2021-04-02 18:45:47', NULL, NULL, NULL, 923, NULL),
	(161, 'document Pesrsonel', 259, 159, '2021-04-02 18:54:44', NULL, NULL, NULL, 923, NULL),
	(162, 'document', 259, 160, '2021-04-02 19:24:45', NULL, NULL, NULL, 935, 1),
	(163, 'othere', 266, 163, '2021-04-15 11:18:00', NULL, NULL, NULL, 923, NULL),
	(164, 'ither', 266, 164, '2021-04-15 11:20:08', NULL, NULL, NULL, 923, NULL),
	(165, 'other', 266, 165, '2021-04-15 11:25:55', NULL, NULL, NULL, 935, 1),
	(166, 'PDF', 277, 172, '2021-05-03 12:35:17', NULL, NULL, NULL, 938, NULL),
	(167, 'ty', 279, 173, '2021-05-03 13:19:31', NULL, NULL, NULL, 923, NULL),
	(168, 'pdf', 279, 174, '2021-05-03 13:20:51', NULL, NULL, NULL, 923, NULL),
	(169, 'PDF', 280, 175, '2021-05-03 14:22:59', NULL, NULL, NULL, 923, NULL),
	(170, 'PDF', 281, 178, '2021-05-03 14:52:21', NULL, NULL, NULL, 923, NULL),
	(171, 'PDF', 281, 179, '2021-05-03 14:52:21', NULL, NULL, NULL, 923, NULL),
	(172, 'PDF', 281, 180, '2021-05-03 14:52:22', NULL, NULL, NULL, 923, NULL),
	(173, 'PDF', 281, 181, '2021-05-03 14:52:22', NULL, NULL, NULL, 923, NULL),
	(174, 'PDF', 281, 182, '2021-05-03 14:52:22', NULL, NULL, NULL, 923, NULL),
	(175, 'PDF', 281, 183, '2021-05-03 14:52:23', NULL, NULL, NULL, 923, NULL),
	(176, 'oHHD', 282, 184, '2021-05-03 16:03:39', NULL, NULL, NULL, 923, NULL),
	(177, 'II', 295, 185, '2021-05-05 14:59:20', NULL, NULL, NULL, 923, NULL),
	(180, 'PDF', 296, 186, '2021-05-05 15:29:32', NULL, NULL, NULL, 923, NULL),
	(181, 'Kip', 296, 186, '2021-05-05 15:29:32', NULL, NULL, NULL, 923, NULL),
	(182, 'kk', 282, 188, '2021-05-06 20:50:46', NULL, NULL, NULL, 935, 1),
	(183, 'pDF', 322, 191, '2021-05-19 15:25:54', NULL, NULL, NULL, 995, 1),
	(184, 'pdf', 326, 192, '2021-05-21 11:48:52', NULL, NULL, NULL, 923, NULL),
	(185, 'pdF', 326, 193, '2021-05-21 11:50:04', NULL, NULL, NULL, 923, NULL),
	(186, 'other', 326, 194, '2021-05-21 12:19:46', NULL, NULL, NULL, 935, 1),
	(187, 'PDF', 331, 196, '2021-05-26 15:10:48', NULL, NULL, NULL, 923, NULL),
	(188, 'YY', 331, 197, '2021-05-26 15:24:44', NULL, NULL, NULL, 1004, 1),
	(189, 'priva', 332, 198, '2021-06-03 10:38:37', NULL, NULL, NULL, 935, 1),
	(190, 'PF', 333, 199, '2021-06-03 18:31:40', NULL, NULL, NULL, 923, NULL),
	(191, 'oio', 333, 200, '2021-06-03 18:45:31', NULL, NULL, NULL, 935, 1),
	(192, 'PDF', 334, 201, '2021-06-04 14:26:58', NULL, NULL, NULL, 935, 1),
	(193, 'Mor', 338, 202, '2021-06-08 18:22:34', NULL, NULL, NULL, 980, NULL),
	(194, 'Car', 338, 202, '2021-06-08 18:22:34', NULL, NULL, NULL, 980, NULL),
	(195, 'others', 345, 205, '2021-06-10 11:17:46', NULL, NULL, NULL, 923, NULL),
	(196, 'private', 346, 206, '2021-06-16 22:50:58', NULL, NULL, NULL, 923, NULL),
	(197, 'PDF', 347, 207, '2021-06-17 15:20:01', NULL, NULL, NULL, 923, NULL),
	(198, 'PDF', 348, 209, '2021-06-17 15:58:53', NULL, NULL, NULL, 923, NULL),
	(199, 'PDF', 348, 211, '2021-06-17 15:39:16', NULL, NULL, NULL, 923, NULL),
	(200, 'YY', 350, 212, '2021-06-19 09:32:22', NULL, NULL, NULL, 923, NULL),
	(201, 'Pdf', 350, 213, '2021-06-19 08:55:56', NULL, NULL, NULL, 935, 1),
	(202, 'PDF', 354, 214, '2021-06-28 07:21:35', NULL, NULL, NULL, 923, NULL),
	(203, 'Pdf', 355, 216, '2021-07-22 14:02:27', NULL, NULL, NULL, 923, NULL),
	(204, 'PGH', 362, 217, '2021-08-10 15:58:53', NULL, NULL, NULL, 923, NULL),
	(206, 'others', 370, 218, '2021-09-04 15:06:26', NULL, NULL, NULL, 923, NULL),
	(207, 'others', 370, 219, '2021-09-04 15:08:48', NULL, NULL, NULL, 923, NULL),
	(208, 'PDF', 372, 1, '2021-09-07 15:34:29', NULL, NULL, NULL, 1018, NULL),
	(209, 'PDF', 374, 2, '2021-09-13 11:17:58', NULL, NULL, NULL, 1018, NULL),
	(210, 'lll', 373, 3, '2021-09-13 12:42:39', NULL, NULL, NULL, 1019, 1),
	(212, 'PDF', 377, 4, '2021-09-17 11:05:03', NULL, NULL, NULL, 1022, NULL),
	(213, 'pdf', 6, 1, '2021-10-01 08:30:07', NULL, NULL, NULL, 1024, NULL),
	(214, 'pdf', 6, 2, '2021-10-01 09:35:50', NULL, NULL, NULL, 1025, 1),
	(215, 'pdf', 11, 5, '2021-11-08 07:45:08', NULL, NULL, NULL, 1024, NULL),
	(216, 'PF', 13, 6, '2021-11-08 18:21:00', NULL, NULL, NULL, 1024, NULL),
	(217, 'Pdf', 14, 7, '2021-11-09 09:15:43', NULL, NULL, NULL, 1024, NULL),
	(218, 'PDF', 14, 8, '2021-11-09 09:46:08', NULL, NULL, NULL, 1025, 1),
	(219, 'Pdf', 21, 9, '2021-11-15 10:07:25', NULL, NULL, NULL, 1024, NULL);
/*!40000 ALTER TABLE `other_document` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table bimacc_production1.password_resets: ~81 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
REPLACE INTO `password_resets` (`email`, `token`, `created_at`) VALUES
	('Aravinth002@gmail.com', '$2y$10$l2KVNFVcKSXNsvAh3yBuwuOp44zm/78WQ.xd4JNQXXmTybDvaFQoG', '2019-04-08 12:30:14'),
	('sam.gg@talentakeaways.com', '$2y$10$1xnwj3e0cuqjihZnNjWPx.aClevhL0hRVUcQ7vIa/mjYKNQxh0rEi', '2019-04-12 08:55:04'),
	('claiment@app.com', '$2y$10$IUPszLhQv/9kklX4ZkhR1OMbg1FOtuSVCwn9JEpmvZhaptFqEN6Xq', '2019-04-16 07:01:12'),
	('claiment12@app.com', '$2y$10$NUik47OfTJkm44IulcPRounhDchcssGlNpzZBjJKxDK8wI6IOgk8a', '2019-04-17 04:49:30'),
	('124545@gmail.com', '$2y$10$AOFzsCxEKFWIB6jtWTuAjeIUrFhF03tnUOAGipNIb2cgV2WnahKUG', '2019-04-17 06:20:20'),
	('centre123@app.com', '$2y$10$eKPvXnspeXXjAAqriwQffuNNTfaj0zBVAaxXbbI5vX5Ag9Me7qWyu', '2019-04-17 06:50:03'),
	('1234@gmail.com', '$2y$10$A3TqH03MbGv6NDbTACc8HuiZgPD0LTyqnSjZlw4TOGNssyU6Ufyu.', '2019-04-17 08:08:44'),
	('vignesh@taalentakeaways.com', '$2y$10$OhnFJHEe8sV9mE72ZbteiOXNyYXRwcGx4HlABEW1MAX22ddR1iUcy', '2019-04-19 05:03:59'),
	('claiment123@app.com', '$2y$10$/lnKa3NKSf6VsZnhuaPkaewDFzwqUVsdx7TheguZjrHaNOSn2IQaO', '2019-04-19 06:26:42'),
	('1@gmail.com', '$2y$10$Wjj8ZEu2FTb6ocwJ5CZz4e2jFR5xntrJhCYW4QsFIgnfIGXT108HW', '2019-04-19 06:27:31'),
	('test1@gmail.com', '$2y$10$g8.VqjgIlXr7s2UkptadteNaG9rrakV.zAyWf8Jotr9Of4b2cWJ36', '2019-05-10 06:39:25'),
	('centrwwjknknje@app.com', '$2y$10$x8zbQSbLyGQWtZc//ZVdl.RIApVaogcwzzq1naJfS7PxRPBK15dny', '2019-05-10 12:27:48'),
	('arunkumar@gmail.com', '$2y$10$F4fh9kZ8JszhETBj1ICqnOCj1JvKsVp8BDmZSDfBs3mQyD7k8QkLK', '2019-05-16 06:45:44'),
	('elango.b@talentakeaways.com', '$2y$10$mkTqDihz1Ay/6pJNbCGJweS1OanYozs./HZk8zRzQG7We2k.dDmXy', '2019-06-06 13:51:07'),
	('rsasi30@gmail.com', '$2y$10$esfXa97y725fD4s/NnB9EuBhIU3/a7VokAmmdzM7mjEx9/fiTokUS', '2019-06-16 14:15:17'),
	('Aravinth002@gmail.com', '$2y$10$l2KVNFVcKSXNsvAh3yBuwuOp44zm/78WQ.xd4JNQXXmTybDvaFQoG', '2019-04-08 12:30:14'),
	('sam.gg@talentakeaways.com', '$2y$10$1xnwj3e0cuqjihZnNjWPx.aClevhL0hRVUcQ7vIa/mjYKNQxh0rEi', '2019-04-12 08:55:04'),
	('claiment@app.com', '$2y$10$IUPszLhQv/9kklX4ZkhR1OMbg1FOtuSVCwn9JEpmvZhaptFqEN6Xq', '2019-04-16 07:01:12'),
	('claiment12@app.com', '$2y$10$NUik47OfTJkm44IulcPRounhDchcssGlNpzZBjJKxDK8wI6IOgk8a', '2019-04-17 04:49:30'),
	('124545@gmail.com', '$2y$10$AOFzsCxEKFWIB6jtWTuAjeIUrFhF03tnUOAGipNIb2cgV2WnahKUG', '2019-04-17 06:20:20'),
	('centre123@app.com', '$2y$10$eKPvXnspeXXjAAqriwQffuNNTfaj0zBVAaxXbbI5vX5Ag9Me7qWyu', '2019-04-17 06:50:03'),
	('1234@gmail.com', '$2y$10$A3TqH03MbGv6NDbTACc8HuiZgPD0LTyqnSjZlw4TOGNssyU6Ufyu.', '2019-04-17 08:08:44'),
	('vignesh@taalentakeaways.com', '$2y$10$OhnFJHEe8sV9mE72ZbteiOXNyYXRwcGx4HlABEW1MAX22ddR1iUcy', '2019-04-19 05:03:59'),
	('claiment123@app.com', '$2y$10$/lnKa3NKSf6VsZnhuaPkaewDFzwqUVsdx7TheguZjrHaNOSn2IQaO', '2019-04-19 06:26:42'),
	('1@gmail.com', '$2y$10$Wjj8ZEu2FTb6ocwJ5CZz4e2jFR5xntrJhCYW4QsFIgnfIGXT108HW', '2019-04-19 06:27:31'),
	('test1@gmail.com', '$2y$10$g8.VqjgIlXr7s2UkptadteNaG9rrakV.zAyWf8Jotr9Of4b2cWJ36', '2019-05-10 06:39:25'),
	('centrwwjknknje@app.com', '$2y$10$x8zbQSbLyGQWtZc//ZVdl.RIApVaogcwzzq1naJfS7PxRPBK15dny', '2019-05-10 12:27:48'),
	('arunkumar@gmail.com', '$2y$10$F4fh9kZ8JszhETBj1ICqnOCj1JvKsVp8BDmZSDfBs3mQyD7k8QkLK', '2019-05-16 06:45:44'),
	('elango.b@talentakeaways.com', '$2y$10$mkTqDihz1Ay/6pJNbCGJweS1OanYozs./HZk8zRzQG7We2k.dDmXy', '2019-06-06 13:51:07'),
	('rsasi30@gmail.com', '$2y$10$esfXa97y725fD4s/NnB9EuBhIU3/a7VokAmmdzM7mjEx9/fiTokUS', '2019-06-16 14:15:17'),
	('keeruthikadevi98@gmail.com', '$2y$10$JymtJXs5aLzLxyrY3Dl/c.i9C6PolJGKeyu.spkon4LGDK5OP.cey', '2019-12-20 04:53:50'),
	('keeruthika@gmail.com', '$2y$10$6SS0f4LgF/0n1Uu18SPhBuLGk2oVd2kaHMbxJoEYeet4XSNZXNdOu', '2019-12-20 05:03:43'),
	('Aravinth002@gmail.com', '$2y$10$l2KVNFVcKSXNsvAh3yBuwuOp44zm/78WQ.xd4JNQXXmTybDvaFQoG', '2019-04-08 12:30:14'),
	('sam.gg@talentakeaways.com', '$2y$10$1xnwj3e0cuqjihZnNjWPx.aClevhL0hRVUcQ7vIa/mjYKNQxh0rEi', '2019-04-12 08:55:04'),
	('claiment@app.com', '$2y$10$IUPszLhQv/9kklX4ZkhR1OMbg1FOtuSVCwn9JEpmvZhaptFqEN6Xq', '2019-04-16 07:01:12'),
	('claiment12@app.com', '$2y$10$NUik47OfTJkm44IulcPRounhDchcssGlNpzZBjJKxDK8wI6IOgk8a', '2019-04-17 04:49:30'),
	('124545@gmail.com', '$2y$10$AOFzsCxEKFWIB6jtWTuAjeIUrFhF03tnUOAGipNIb2cgV2WnahKUG', '2019-04-17 06:20:20'),
	('centre123@app.com', '$2y$10$eKPvXnspeXXjAAqriwQffuNNTfaj0zBVAaxXbbI5vX5Ag9Me7qWyu', '2019-04-17 06:50:03'),
	('1234@gmail.com', '$2y$10$A3TqH03MbGv6NDbTACc8HuiZgPD0LTyqnSjZlw4TOGNssyU6Ufyu.', '2019-04-17 08:08:44'),
	('vignesh@taalentakeaways.com', '$2y$10$OhnFJHEe8sV9mE72ZbteiOXNyYXRwcGx4HlABEW1MAX22ddR1iUcy', '2019-04-19 05:03:59'),
	('claiment123@app.com', '$2y$10$/lnKa3NKSf6VsZnhuaPkaewDFzwqUVsdx7TheguZjrHaNOSn2IQaO', '2019-04-19 06:26:42'),
	('1@gmail.com', '$2y$10$Wjj8ZEu2FTb6ocwJ5CZz4e2jFR5xntrJhCYW4QsFIgnfIGXT108HW', '2019-04-19 06:27:31'),
	('test1@gmail.com', '$2y$10$g8.VqjgIlXr7s2UkptadteNaG9rrakV.zAyWf8Jotr9Of4b2cWJ36', '2019-05-10 06:39:25'),
	('centrwwjknknje@app.com', '$2y$10$x8zbQSbLyGQWtZc//ZVdl.RIApVaogcwzzq1naJfS7PxRPBK15dny', '2019-05-10 12:27:48'),
	('arunkumar@gmail.com', '$2y$10$F4fh9kZ8JszhETBj1ICqnOCj1JvKsVp8BDmZSDfBs3mQyD7k8QkLK', '2019-05-16 06:45:44'),
	('elango.b@talentakeaways.com', '$2y$10$mkTqDihz1Ay/6pJNbCGJweS1OanYozs./HZk8zRzQG7We2k.dDmXy', '2019-06-06 13:51:07'),
	('rsasi30@gmail.com', '$2y$10$esfXa97y725fD4s/NnB9EuBhIU3/a7VokAmmdzM7mjEx9/fiTokUS', '2019-06-16 14:15:17'),
	('Aravinth002@gmail.com', '$2y$10$l2KVNFVcKSXNsvAh3yBuwuOp44zm/78WQ.xd4JNQXXmTybDvaFQoG', '2019-04-08 12:30:14'),
	('sam.gg@talentakeaways.com', '$2y$10$1xnwj3e0cuqjihZnNjWPx.aClevhL0hRVUcQ7vIa/mjYKNQxh0rEi', '2019-04-12 08:55:04'),
	('claiment@app.com', '$2y$10$IUPszLhQv/9kklX4ZkhR1OMbg1FOtuSVCwn9JEpmvZhaptFqEN6Xq', '2019-04-16 07:01:12'),
	('claiment12@app.com', '$2y$10$NUik47OfTJkm44IulcPRounhDchcssGlNpzZBjJKxDK8wI6IOgk8a', '2019-04-17 04:49:30'),
	('124545@gmail.com', '$2y$10$AOFzsCxEKFWIB6jtWTuAjeIUrFhF03tnUOAGipNIb2cgV2WnahKUG', '2019-04-17 06:20:20'),
	('centre123@app.com', '$2y$10$eKPvXnspeXXjAAqriwQffuNNTfaj0zBVAaxXbbI5vX5Ag9Me7qWyu', '2019-04-17 06:50:03'),
	('1234@gmail.com', '$2y$10$A3TqH03MbGv6NDbTACc8HuiZgPD0LTyqnSjZlw4TOGNssyU6Ufyu.', '2019-04-17 08:08:44'),
	('vignesh@taalentakeaways.com', '$2y$10$OhnFJHEe8sV9mE72ZbteiOXNyYXRwcGx4HlABEW1MAX22ddR1iUcy', '2019-04-19 05:03:59'),
	('claiment123@app.com', '$2y$10$/lnKa3NKSf6VsZnhuaPkaewDFzwqUVsdx7TheguZjrHaNOSn2IQaO', '2019-04-19 06:26:42'),
	('1@gmail.com', '$2y$10$Wjj8ZEu2FTb6ocwJ5CZz4e2jFR5xntrJhCYW4QsFIgnfIGXT108HW', '2019-04-19 06:27:31'),
	('test1@gmail.com', '$2y$10$g8.VqjgIlXr7s2UkptadteNaG9rrakV.zAyWf8Jotr9Of4b2cWJ36', '2019-05-10 06:39:25'),
	('centrwwjknknje@app.com', '$2y$10$x8zbQSbLyGQWtZc//ZVdl.RIApVaogcwzzq1naJfS7PxRPBK15dny', '2019-05-10 12:27:48'),
	('arunkumar@gmail.com', '$2y$10$F4fh9kZ8JszhETBj1ICqnOCj1JvKsVp8BDmZSDfBs3mQyD7k8QkLK', '2019-05-16 06:45:44'),
	('elango.b@talentakeaways.com', '$2y$10$mkTqDihz1Ay/6pJNbCGJweS1OanYozs./HZk8zRzQG7We2k.dDmXy', '2019-06-06 13:51:07'),
	('rsasi30@gmail.com', '$2y$10$esfXa97y725fD4s/NnB9EuBhIU3/a7VokAmmdzM7mjEx9/fiTokUS', '2019-06-16 14:15:17'),
	('pavithrapragati@gmail.com', '$2y$10$PDw/t9Zaa2ceGDnHgukBRuX6P0k.53kK2Puk8mt8m/qyxytDUb7qq', '2020-01-08 07:59:34'),
	('keerthigasmca@gmail.com', '$2y$10$BTPpDFf6xwNAhnKHByrCxO/e8C8uFXbXC86v/7S4jK.MVV4yaRp/i', '2020-01-30 07:06:45'),
	('keeruthikadeviv98@gmail.com', '$2y$10$H1pTpcQsh0sQwU7qCUsf5O6VqiW.9xLu.QslkCZPmi05FZBPrkCGS', '2020-01-31 10:52:48'),
	('keeruthikadeviv98j@gmail.com', '$2y$10$A3TmCZZgLRzC7sw/tMnwV.d2MhgOsC.982.jlPndx94QU1SZhAUPK', '2020-08-13 05:48:26'),
	('keeruthika1998k@gmail.com', '$2y$10$N/9J/e228e8wJiLzeBVrFe73/7bNouN655BYJe/1y0to/xlDkgX8m', '2020-08-14 05:06:25'),
	('maniac.m91@gmail.com', '$2y$10$BCbFpt.9jDDwOXMYzDemLu0C3jd5/F5/lTvKDnJ61MHV8R/kQB5WK', '2020-12-27 11:19:08'),
	('claimantest2@gmail.com', '$2y$10$LrOehckD.9FwT3KtgblT2ePIz0kJ9iFuOxwlVfxy6EXmN78Qoseei', '2020-12-27 11:19:54'),
	('hrpmo@gmail.com', '$2y$10$7nfOnAKANfIz2VcAvofAT.nLaQ5rtDY7DkmACMAIeAjx/XCX95dw2', '2021-01-08 08:06:18'),
	('bimacc1@gmail.com', '$2y$10$RhDZDIUwOFzQdEsce1F5r.DpLeF6kEqsljGsaQTPdqAHrmRxkc2Hu', '2021-01-28 07:43:12'),
	('ramya1067@gmail.com', '$2y$10$UpGtAPluUcdu3d6WMPpcOexxQKk5NYIz1a4cVlVecMz13hDX0/iPe', '2021-01-30 07:20:38'),
	('revathiru10@gmail.com', '$2y$10$X8KyshXyF4mSuHmN0lYe0.HQn7gMw78jWqHovgb9.KmHVKC2s36Dy', '2021-01-30 07:23:46'),
	('arbitator@gmail.com', '$2y$10$qCgoDjz.P1J2UTix/vOcieTTAkP1xdGBVHgDor5nP86Qbrk9xk4U.', '2021-03-05 09:11:29'),
	('arbitatorbimacc@gmail.com', '$2y$10$9in/kHO6SKaqVqpbZxHjYOIRNxfYUStQsOCff42obzSMk2SDjhoMq', '2021-03-05 09:18:26'),
	('keeruthika1998@gmail.com', '$2y$10$hoIN0np9cBYVSJgbaciG2e4ZJWA7MTNxh8Wpce8xOzg8C5IcPjCei', '2021-03-08 12:26:04'),
	('vignesh@talentakeaways.com', '$2y$10$aLhjVf9qxAOY.6i/BPTT5.EMled1kkBJGKUwzg8GgvHgNBd8uXMiy', '2021-03-08 12:36:47'),
	('arbitrator3@gmail.com', '$2y$10$A6VtmhGAcnHWQ67KYBd21eT7E.oSg5wKIi8bNFRU6hqMzG8WixYIe', '2021-05-05 05:28:41'),
	('aerovky@gmail.com', '$2y$10$b0.TvexqFJ/4rgGabFp4Oes7lIVHAHcvFUM84q6ebaJL7In433uVW', '2021-06-04 06:53:02'),
	('bimaccarbitrator123@gmail.com', '$2y$10$V0YMLcrBejwkqQ/Po7YiPeKk/nyuAhoM5QRqvvSs5MoEsoOsGk4ZG', '2021-09-04 13:16:18'),
	('vigneshalivein@gmail.com', '$2y$10$sb6ZjDF/hbiZEUFs2LICWuVBEJfqsI8TM/9Nbc6zMijBWcekdiDFG', '2021-09-27 10:07:34');
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.paymentdetails
CREATE TABLE IF NOT EXISTS `paymentdetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `BRN` varchar(1000) DEFAULT NULL,
  `STC` varchar(1000) DEFAULT NULL,
  `TRN` varchar(1000) DEFAULT NULL,
  `TET` datetime DEFAULT NULL,
  `PMD` varchar(1000) DEFAULT NULL,
  `RID` varchar(1000) DEFAULT NULL,
  `VER` varchar(1000) DEFAULT NULL,
  `TYP` varchar(1000) DEFAULT NULL,
  `CRN` varchar(1000) DEFAULT NULL,
  `CNY` varchar(1000) DEFAULT NULL,
  `AMT` varchar(1000) DEFAULT NULL,
  `CKS` varchar(1000) DEFAULT NULL,
  `CREATEDDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CREATED_ID` int(11) DEFAULT NULL,
  `paymentstatus` varchar(1000) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `RMK` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bimacc_production1.paymentdetails: ~0 rows (approximately)
/*!40000 ALTER TABLE `paymentdetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `paymentdetails` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.payment_receipt
CREATE TABLE IF NOT EXISTS `payment_receipt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_status` varchar(100) DEFAULT NULL,
  `mode` varchar(1000) DEFAULT NULL,
  `txnid` varchar(100) DEFAULT NULL,
  `amount` decimal(13,2) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `cardCategory` varchar(100) DEFAULT NULL,
  `discount` decimal(13,2) DEFAULT NULL,
  `net_amount_debit` decimal(13,2) DEFAULT NULL,
  `addedon` varchar(100) DEFAULT NULL,
  `productinfo` varchar(1000) DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `cardnum` varchar(100) DEFAULT NULL,
  `issuing_bank` varchar(100) DEFAULT NULL,
  `card_type` varchar(100) DEFAULT NULL,
  `name_on_card` varchar(100) DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_id` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_id` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `claimnoticeid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bimacc_production1.payment_receipt: ~0 rows (approximately)
/*!40000 ALTER TABLE `payment_receipt` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_receipt` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.payment_services_charge
CREATE TABLE IF NOT EXISTS `payment_services_charge` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `service_provider_id` varchar(100) DEFAULT NULL,
  `service_provider_name` varchar(100) DEFAULT NULL,
  `service1_percentage` int(10) DEFAULT NULL,
  `start_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `end_date` timestamp NULL DEFAULT NULL,
  `active_flag` int(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table bimacc_production1.payment_services_charge: ~0 rows (approximately)
/*!40000 ALTER TABLE `payment_services_charge` DISABLE KEYS */;
REPLACE INTO `payment_services_charge` (`id`, `service_provider_id`, `service_provider_name`, `service1_percentage`, `start_date`, `end_date`, `active_flag`) VALUES
	(1, 'rzp_test_iBKU99rgt3icgn', 'Razorpay', 2, '2021-09-24 10:33:43', NULL, 1);
/*!40000 ALTER TABLE `payment_services_charge` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.permissions
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table bimacc_production1.permissions: ~11 rows (approximately)
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
REPLACE INTO `permissions` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
	(1, 'create-users', 'Create Users', 'Create Users', '2019-03-20 11:23:32', '2019-03-20 11:23:32'),
	(2, 'read-users', 'Read Users', 'Read Users', '2019-03-20 11:23:32', '2019-03-20 11:23:32'),
	(3, 'update-users', 'Update Users', 'Update Users', '2019-03-20 11:23:32', '2019-03-20 11:23:32'),
	(4, 'delete-users', 'Delete Users', 'Delete Users', '2019-03-20 11:23:32', '2019-03-20 11:23:32'),
	(5, 'create-acl', 'Create Acl', 'Create Acl', '2019-03-20 11:23:32', '2019-03-20 11:23:32'),
	(6, 'read-acl', 'Read Acl', 'Read Acl', '2019-03-20 11:23:32', '2019-03-20 11:23:32'),
	(7, 'update-acl', 'Update Acl', 'Update Acl', '2019-03-20 11:23:32', '2019-03-20 11:23:32'),
	(8, 'delete-acl', 'Delete Acl', 'Delete Acl', '2019-03-20 11:23:32', '2019-03-20 11:23:32'),
	(9, 'read-profile', 'Read Profile', 'Read Profile', '2019-03-20 11:23:32', '2019-03-20 11:23:32'),
	(10, 'update-profile', 'Update Profile', 'Update Profile', '2019-03-20 11:23:32', '2019-03-20 11:23:32'),
	(11, 'create-profile', 'Create Profile', 'Create Profile', '2019-03-20 11:23:34', '2019-03-20 11:23:34');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.permission_role
CREATE TABLE IF NOT EXISTS `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_role_id_foreign` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table bimacc_production1.permission_role: ~28 rows (approximately)
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
REPLACE INTO `permission_role` (`permission_id`, `role_id`) VALUES
	(1, 1),
	(2, 1),
	(3, 1),
	(4, 1),
	(5, 1),
	(6, 1),
	(7, 1),
	(8, 1),
	(9, 1),
	(10, 1),
	(1, 2),
	(2, 2),
	(3, 2),
	(4, 2),
	(9, 2),
	(10, 2),
	(1, 3),
	(2, 3),
	(3, 3),
	(4, 3),
	(9, 3),
	(10, 3),
	(1, 4),
	(2, 4),
	(3, 4),
	(4, 4),
	(9, 4),
	(10, 4);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.permission_user
CREATE TABLE IF NOT EXISTS `permission_user` (
  `permission_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `user_type` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`,`permission_id`,`user_type`),
  KEY `permission_user_permission_id_foreign` (`permission_id`),
  CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table bimacc_production1.permission_user: ~3 rows (approximately)
/*!40000 ALTER TABLE `permission_user` DISABLE KEYS */;
REPLACE INTO `permission_user` (`permission_id`, `user_id`, `user_type`) VALUES
	(9, 6, 'App\\User'),
	(10, 6, 'App\\User'),
	(11, 6, 'App\\User');
/*!40000 ALTER TABLE `permission_user` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.realestate_claim
CREATE TABLE IF NOT EXISTS `realestate_claim` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nature_of_contract_real` varchar(255) DEFAULT NULL,
  `date_of_cintract_real` varchar(255) DEFAULT NULL,
  `annual_value_real` varchar(255) DEFAULT NULL,
  `natue_of_immovable_real` varchar(255) DEFAULT NULL,
  `name_of_possessor_real` varchar(255) DEFAULT NULL,
  `name_of_owner_real` varchar(250) DEFAULT NULL,
  `description_real` varchar(250) DEFAULT NULL,
  `schedule_real` varchar(250) DEFAULT NULL,
  `market_value_real` varchar(250) DEFAULT NULL,
  `mortgage_value` varchar(250) DEFAULT NULL,
  `claim_notice_id` int(11) DEFAULT NULL,
  `claim_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_id` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `date_of_breach` int(10) DEFAULT NULL,
  `date_of_notice` date DEFAULT NULL,
  `date_of_breach_real` date DEFAULT NULL,
  `date_of_notice_real` date DEFAULT NULL,
  `created_by` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bimacc_production1.realestate_claim: ~0 rows (approximately)
/*!40000 ALTER TABLE `realestate_claim` DISABLE KEYS */;
/*!40000 ALTER TABLE `realestate_claim` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.realestate_claim_details
CREATE TABLE IF NOT EXISTS `realestate_claim_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `claim_notice_id` int(11) DEFAULT NULL,
  `claim_id` int(11) DEFAULT NULL,
  `nature_of_contract_real` varchar(250) DEFAULT NULL,
  `date_of_cintract_real` date DEFAULT NULL,
  `annual_value_real` varchar(250) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bimacc_production1.realestate_claim_details: ~0 rows (approximately)
/*!40000 ALTER TABLE `realestate_claim_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `realestate_claim_details` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.registration_fees
CREATE TABLE IF NOT EXISTS `registration_fees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `registration_fees` decimal(20,2) DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_id` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `fees_description` varchar(255) DEFAULT NULL,
  `claim_amount_from` decimal(13,2) DEFAULT NULL,
  `claim_amount_to` decimal(13,2) DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `currency_type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- Dumping data for table bimacc_production1.registration_fees: ~17 rows (approximately)
/*!40000 ALTER TABLE `registration_fees` DISABLE KEYS */;
REPLACE INTO `registration_fees` (`id`, `registration_fees`, `created_id`, `created_at`, `updated_id`, `updated_at`, `deleted_at`, `fees_description`, `claim_amount_from`, `claim_amount_to`, `currency`, `currency_type`) VALUES
	(1, 1.00, 252, '2021-09-04 07:01:13', NULL, '2021-09-04 07:01:13', NULL, NULL, 1.00, 10000.00, 'INR', NULL),
	(2, 200.00, 252, '2021-09-04 07:03:35', NULL, '2021-09-04 07:03:35', NULL, NULL, 10001.00, 50000.00, 'INR', NULL),
	(3, 200.00, 252, '2021-09-04 07:04:10', NULL, '2021-09-04 07:04:10', NULL, NULL, 50001.00, 100000.00, 'INR', NULL),
	(4, 500.00, 252, '2021-09-04 07:04:38', NULL, '2021-09-04 07:04:38', NULL, NULL, 100001.00, 2000000.00, 'INR', NULL),
	(5, 500.00, 252, '2021-09-04 07:05:11', NULL, '2021-09-04 07:05:11', NULL, NULL, 2000001.00, 5000000.00, 'INR', NULL),
	(6, 1000.00, 252, '2021-09-04 07:05:37', NULL, '2021-09-04 07:05:37', NULL, NULL, 5000001.00, 10000000.00, 'INR', NULL),
	(7, 2000.00, 252, '2021-09-04 07:06:04', NULL, '2021-09-04 07:06:04', NULL, NULL, 10000001.00, 50000000.00, 'INR', NULL),
	(9, 3000.00, 252, '2021-09-04 07:07:23', NULL, '2021-09-04 07:07:23', NULL, NULL, 50000001.00, 100000001.00, 'INR', NULL),
	(10, 10.00, 252, '2021-09-04 07:01:13', NULL, '2021-09-04 07:01:13', NULL, NULL, 1001.00, 2000.00, 'USD', NULL),
	(11, 20.00, 252, '2021-09-04 07:03:35', NULL, '2021-09-04 07:03:35', NULL, NULL, 2001.00, 5000.00, 'USD', NULL),
	(12, 30.00, 252, '2021-09-04 07:04:10', NULL, '2021-09-04 07:04:10', NULL, NULL, 5001.00, 10000.00, 'USD', NULL),
	(13, 50.00, 252, '2021-09-04 07:04:38', NULL, '2021-09-04 07:04:38', NULL, NULL, 10001.00, 20000.00, 'USD', NULL),
	(14, 100.00, 252, '2021-09-04 07:05:11', NULL, '2021-09-04 07:05:11', NULL, NULL, 20001.00, 50000.00, 'USD', NULL),
	(15, 150.00, 252, '2021-09-04 07:05:37', NULL, '2021-09-04 07:05:37', NULL, NULL, 500001.00, 100000.00, 'USD', NULL),
	(16, 200.00, 252, '2021-09-04 07:06:04', NULL, '2021-09-04 07:06:04', NULL, NULL, 100001.00, 1000000.00, 'USD', NULL),
	(17, 500.00, 252, '2021-09-04 07:07:02', NULL, '2021-09-04 07:07:02', NULL, NULL, 1000001.00, 10000000.00, 'USD', NULL),
	(19, 10.00, 252, '2021-09-07 07:25:51', NULL, '2021-09-07 07:25:51', NULL, NULL, 1.00, 1000.00, 'USD', NULL);
/*!40000 ALTER TABLE `registration_fees` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.relief_request
CREATE TABLE IF NOT EXISTS `relief_request` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `created_id` int(10) unsigned DEFAULT NULL,
  `modified_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `claimnoticeid` int(11) DEFAULT NULL,
  `claim_for_delivery_of_cargo` char(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cargo_nature` varchar(125) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nature_and_details_of_cargo` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `claim_for_payment_of_freight_amount` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `freight_amount_interest` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `damage_amount` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `damage_amount_interest` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remarks` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estimated_value_of_contract` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `freightrefundamount` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `frightrefundamountinerest` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `debt_recovery` text COLLATE utf8_unicode_ci,
  `rate_of_interest` text COLLATE utf8_unicode_ci,
  `amount_of_debt` text COLLATE utf8_unicode_ci,
  `damages_rs` text COLLATE utf8_unicode_ci,
  `rate_of_penal_interest` text COLLATE utf8_unicode_ci,
  `nature_of_goods` text COLLATE utf8_unicode_ci,
  `quantity_of_goods` text COLLATE utf8_unicode_ci,
  `replacement_of_goods` text COLLATE utf8_unicode_ci,
  `refund_of_price` text COLLATE utf8_unicode_ci,
  `price_of_goods` text COLLATE utf8_unicode_ci,
  `price_of_goods_interest` text COLLATE utf8_unicode_ci,
  `damages` text COLLATE utf8_unicode_ci,
  `claim_for_contract_price` text COLLATE utf8_unicode_ci,
  `claim_for_contract_price_interest` text COLLATE utf8_unicode_ci,
  `escalation_of_costs` text COLLATE utf8_unicode_ci,
  `claim_for_refund` text COLLATE utf8_unicode_ci,
  `refund_withinterest` text COLLATE utf8_unicode_ci,
  `refund_withoutinterest` text COLLATE utf8_unicode_ci,
  `claim_for_damages` text COLLATE utf8_unicode_ci,
  `specific_performance_of_contract` text COLLATE utf8_unicode_ci,
  `specific_estimated_value_of_contract` text COLLATE utf8_unicode_ci,
  `tocancel_estimated_value_of_contract` text COLLATE utf8_unicode_ci,
  `amount_guaranteed` text COLLATE utf8_unicode_ci,
  `dissolution_of_firm` text COLLATE utf8_unicode_ci,
  `rendition_of_accounts` text COLLATE utf8_unicode_ci,
  `for_allotment_of_shares_stock` text COLLATE utf8_unicode_ci,
  `for_cancellation_of_allotments` text COLLATE utf8_unicode_ci,
  `compel_promoters_to_purchase_ofinvestors_shares` text COLLATE utf8_unicode_ci,
  `compel_or_cancel_push_or_put_options` text COLLATE utf8_unicode_ci,
  `for_company_to_buy_back_of_shares` text COLLATE utf8_unicode_ci,
  `demand_valuation_of_shares` text COLLATE utf8_unicode_ci,
  `demand_redemption_of_preference_shares_or_debentures` text COLLATE utf8_unicode_ci,
  `chairman_and_key_employees` text COLLATE utf8_unicode_ci,
  `general_meetings` text COLLATE utf8_unicode_ci,
  `for_enforcement_of_preferential_rights` text COLLATE utf8_unicode_ci,
  `demand_to_move_resolutions` text COLLATE utf8_unicode_ci,
  `agreement_value` text COLLATE utf8_unicode_ci,
  `aggregate_value_of_debentures` text COLLATE utf8_unicode_ci,
  `claim_subs_contrib_amount` text COLLATE utf8_unicode_ci,
  `claim_subs_contrib_amount_interest` text COLLATE utf8_unicode_ci,
  `claim_subs_contrib_amount_withoutinterest` text COLLATE utf8_unicode_ci,
  `claim_refund_deposit_amount` text COLLATE utf8_unicode_ci,
  `claim_refund_deposit_amount_interest` text COLLATE utf8_unicode_ci,
  `claim_refund_deposit_amount_withoutinterest` text COLLATE utf8_unicode_ci,
  `claim_for_admission_and_removal_of_members` text COLLATE utf8_unicode_ci,
  `claim_to_remove_or_reinstate_office_bearers` text COLLATE utf8_unicode_ci,
  `claim_for_holding_or_postponement_of_elections` text COLLATE utf8_unicode_ci,
  `claim_to_appoint_auditors_or_investigators` text COLLATE utf8_unicode_ci,
  `claim_to_appoint_auditors` text COLLATE utf8_unicode_ci,
  `claim_to_render_accounts` text COLLATE utf8_unicode_ci,
  `claim_against_members_for_damages_and_nuisance` text COLLATE utf8_unicode_ci,
  `claim_to_carryout_repairs_or_renovation` text COLLATE utf8_unicode_ci,
  `claim_reinstatement` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `claim_for_salary_and_benefits` text COLLATE utf8_unicode_ci,
  `value_of_stock_options` text COLLATE utf8_unicode_ci,
  `emd_amount` text COLLATE utf8_unicode_ci,
  `estimated_value_of_data` text COLLATE utf8_unicode_ci,
  `eid_claim_for_contract_price` text COLLATE utf8_unicode_ci,
  `eid_claim_for_contract_price_interest` text COLLATE utf8_unicode_ci,
  `eid_claim_for_contract_price_withoutinterest` text COLLATE utf8_unicode_ci,
  `eid_claim_for_refund` text COLLATE utf8_unicode_ci,
  `eid_claim_for_refund_interest` text COLLATE utf8_unicode_ci,
  `eid_claim_for_refund_withoutinterest` text COLLATE utf8_unicode_ci,
  `claim_for_escalation_of_costs` text COLLATE utf8_unicode_ci,
  `claimforontractprice` text COLLATE utf8_unicode_ci,
  `claimforcontractpriceinerest` text COLLATE utf8_unicode_ci,
  `to_terminate_contract` text COLLATE utf8_unicode_ci,
  `to_vacate_contractual_site` text COLLATE utf8_unicode_ci,
  `to_claim_for_specific_performance` text COLLATE utf8_unicode_ci,
  `nop_value` text COLLATE utf8_unicode_ci,
  `to_return_materials` text COLLATE utf8_unicode_ci,
  `to_cancel_performance_guarantees` text COLLATE utf8_unicode_ci,
  `extent` text COLLATE utf8_unicode_ci,
  `rendition_and_distribution_of_mense_profits` text COLLATE utf8_unicode_ci,
  `to_claim_for_specific_performance_to_purchase_power` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `demand_for_licence_fee` text COLLATE utf8_unicode_ci,
  `demand_for_licence_fee_interest` text COLLATE utf8_unicode_ci,
  `demand_to_stop_infringement` text COLLATE utf8_unicode_ci,
  `demand_damages_for_infringement` text COLLATE utf8_unicode_ci,
  `damages_for_breach_of_contract` text COLLATE utf8_unicode_ci,
  `demand_to_surrender_infringed_materials` text COLLATE utf8_unicode_ci,
  `claim_for_refund_of_fare_or_freight` text COLLATE utf8_unicode_ci,
  `claim_for_refund_of_fare_or_freight_interest` text COLLATE utf8_unicode_ci,
  `claim_for_payment_of_freight` text COLLATE utf8_unicode_ci,
  `claim_for_payment_of_freight_interest` text COLLATE utf8_unicode_ci,
  `claim_for_payment_of_damages` text COLLATE utf8_unicode_ci,
  `claim_for_payment_of_damages_interest` text COLLATE utf8_unicode_ci,
  `claim_for_demurrages` text COLLATE utf8_unicode_ci,
  `claim_for_demurrages_interest` text COLLATE utf8_unicode_ci,
  `demanding_policy_claim_amount` text COLLATE utf8_unicode_ci,
  `challenging_cancellation_of_policy` text COLLATE utf8_unicode_ci,
  `subrogation_value` text COLLATE utf8_unicode_ci,
  `claim_for_specific_performance` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `money_claim_amount` text COLLATE utf8_unicode_ci,
  `money_claim_amount_interest` text COLLATE utf8_unicode_ci,
  `rendition_of_accounts_contract_value` text COLLATE utf8_unicode_ci,
  `contract_value` text COLLATE utf8_unicode_ci,
  `cancellation_of_agreement` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `claim_for_consideration_amount` text COLLATE utf8_unicode_ci,
  `claim_for_arrears_of_rent_maintenance_amount` text COLLATE utf8_unicode_ci,
  `enforcement_of_mortgage_debt_amount` text COLLATE utf8_unicode_ci,
  `claim_for_contractual_built_up_or_land_share_area` text COLLATE utf8_unicode_ci,
  `claim_for_contractual_built_up_or_land_share_value` text COLLATE utf8_unicode_ci,
  `division_of_property_area` text COLLATE utf8_unicode_ci,
  `division_of_property_value` text COLLATE utf8_unicode_ci,
  `redemption_of_mortgage_market_value_of_property` text COLLATE utf8_unicode_ci,
  `termination_of_lease_mortgage_joint_development_agreement` text COLLATE utf8_unicode_ci,
  `sp_project_value` text COLLATE utf8_unicode_ci,
  `demanding_surrender_value_amount` text COLLATE utf8_unicode_ci,
  `interest_amount` text COLLATE utf8_unicode_ci,
  `damage_with_interest` text COLLATE utf8_unicode_ci,
  `benefit_withinterest` text COLLATE utf8_unicode_ci,
  `benefit_withoutinterest` text COLLATE utf8_unicode_ci,
  `termination` text COLLATE utf8_unicode_ci,
  `average_value` text COLLATE utf8_unicode_ci,
  `average_value_interest` text COLLATE utf8_unicode_ci,
  `average_value_withoutinterest` text COLLATE utf8_unicode_ci,
  `restraint` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `claim_for_escalation_of_costs_interest` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `claim_for_escalation_of_costs_withoutinterest` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `claim_for_damages_interest` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `to_invoke_guarntee` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `return_material` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `substitute_contractor` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value_claims` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value_claims_interest` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value_claims_withoutinterest` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `demanding_policy_claim_amount_withoutinterest` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `demanding_policy_claim_amount_interest` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `demanding_surrender_value_amount_withoutinterest` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `demanding_surrender_value_amount_interest` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subrogation_value_interest` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subrogation_value_withoutinterest` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value_performance` text COLLATE utf8_unicode_ci,
  `demand_to_stop_infringement_select` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cancellation_license` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cancellation_license_value` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `damages_for_breach_of_contract_interest` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `damages_for_breach_of_contract_withoutinterest` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `demand_for_licence_fee_withoutinterest` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `claim_for_consideration_amount_interest` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `claim_for_consideration_amount_withoutinterest` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `claim_for_arrears_of_rent_maintenance_amount_interest` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `claim_for_arrears_of_rent_maintenance_withoutinterest` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enforcement_of_mortgage_debt_amount_int` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enforcement_of_mortgage_debt_amount_withoutint` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `claim_for_contractual_built_up_or_land_share_area_select` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `redemption_of_mortgage` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `possession_property` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `possession_property_market_value` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `termination_of_lease_mortgage_select` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `damage_amount_interest_without` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `specific_perf` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `division_of_property_unit` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `termination_of_contract` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estimated_value_of_property` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_consideration` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_consideration_withoutinterest` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_consideration_interest` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fightrefundamountamountinterestwithinterest` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `frightamountwithpoutinterest` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `damageamountinterestwithinterest` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `claim_for_demurrages_withoutinterest` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `return_of_property` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value_performance_int` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value_performance_withoutint` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `claim_restrain` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `claim_for_withoutinterest` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `claim_for_royalty` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `claim_for_royalty_interest` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `claim_for_royalty_withoutinterest` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `money_claim_amount_withoutinterest` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cancellation_of_agreement_value` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rendition_and_distribution_of_mense_profits_withoutint` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rendition_and_distribution_of_mense_profits_int` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `to_vacate_contractual_site_value` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `to_terminate_contract_value` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `return_material_value` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `redo_service` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value_infringing` int(10) DEFAULT NULL,
  `value_infringing_withoutinterest` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estimated_value_of_material` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `claimforcontractpriceinerestwithoutinterest` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `aggregate_salary` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `claim_for_admission_and_removal_of_members_check` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `claim_to_remove_or_reinstate_office_bearers_check` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `claim_for_holding_or_postponement_of_elections_check` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `claim_to_appoint_auditors_or_investigators_check` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `claim_to_appoint_auditors_check` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `claim_to_render_accounts_check` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `claim_against_members_for_damages_and_nuisance_check` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `claim_to_carryout_repairs_or_renovation_check` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_respondant` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nature_of_property` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `claim_for_damages_withoutinterest` char(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `claim_for_refund_of_fare_or_freight_withoutinterest` char(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `claim_for_payment_of_freight_withoutinterest` char(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `claim_for_payment_of_damages_withoutinterest` char(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `fk_relief_request_id` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table bimacc_production1.relief_request: ~0 rows (approximately)
/*!40000 ALTER TABLE `relief_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `relief_request` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.renewal_date
CREATE TABLE IF NOT EXISTS `renewal_date` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `renewal_date` varchar(30) DEFAULT NULL,
  `claim_notice_id` int(11) DEFAULT NULL,
  `claim_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_id` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `is_respondant` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table bimacc_production1.renewal_date: ~2 rows (approximately)
/*!40000 ALTER TABLE `renewal_date` DISABLE KEYS */;
REPLACE INTO `renewal_date` (`id`, `renewal_date`, `claim_notice_id`, `claim_id`, `created_at`, `updated_id`, `updated_at`, `deleted_at`, `created_id`, `is_respondant`) VALUES
	(1, '2021-02-10', 11, 1, '2023-11-12 06:18:45', NULL, NULL, NULL, 1109, NULL),
	(2, NULL, 11, 1, '2023-11-12 06:18:45', NULL, NULL, NULL, 1109, NULL);
/*!40000 ALTER TABLE `renewal_date` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.repondent_dispute_information
CREATE TABLE IF NOT EXISTS `repondent_dispute_information` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dispute_categories_id` int(11) DEFAULT NULL,
  `dispute_subcategories_id` int(11) DEFAULT NULL,
  `claimnoticeid` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_id` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `others` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bimacc_production1.repondent_dispute_information: ~0 rows (approximately)
/*!40000 ALTER TABLE `repondent_dispute_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `repondent_dispute_information` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.respondantdetails
CREATE TABLE IF NOT EXISTS `respondantdetails` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `country` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zipcode` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `daytimetelephone` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `respondant_type` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `created_id` int(10) unsigned DEFAULT NULL,
  `modified_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `claimnoticeid` int(11) DEFAULT NULL,
  `roles_id` int(11) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `respondentidproof` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `organization_name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `organization_details` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `middlename` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `official_designation` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `proprietar_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auth_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auth_designation` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `poa_holder` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `aadhar_num` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_email` varchar(10) COLLATE utf8_unicode_ci DEFAULT '0',
  `auth_age` int(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_respondantdetails_user_id` (`user_id`),
  KEY `fk_respondantdetails_claimnoticeid` (`claimnoticeid`),
  CONSTRAINT `fk_respondantdetails_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table bimacc_production1.respondantdetails: ~1 rows (approximately)
/*!40000 ALTER TABLE `respondantdetails` DISABLE KEYS */;
REPLACE INTO `respondantdetails` (`id`, `name`, `address`, `country`, `state`, `city`, `zipcode`, `daytimetelephone`, `email`, `respondant_type`, `user_id`, `created_id`, `modified_id`, `created_at`, `updated_at`, `deleted_at`, `claimnoticeid`, `roles_id`, `age`, `respondentidproof`, `organization_name`, `organization_details`, `firstname`, `middlename`, `lastname`, `official_designation`, `company_name`, `proprietar_name`, `auth_name`, `auth_designation`, `poa_holder`, `aadhar_num`, `no_email`, `auth_age`) VALUES
	(5, NULL, 'ram', 'VU', 'Sam', 'Ham', '347957', '9444055791', 'Manik.bt@thiruandthiru.co.in', '11', 1110, 1109, NULL, '2023-11-12 00:45:37', '2023-11-12 00:45:37', NULL, 11, NULL, 45, NULL, NULL, NULL, 'Sunu', NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL);
/*!40000 ALTER TABLE `respondantdetails` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.respondentfees
CREATE TABLE IF NOT EXISTS `respondentfees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `claim_amount_purpose` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `fees_amount` decimal(20,2) DEFAULT NULL,
  `claimnoticeid` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_id` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `fees_type` varchar(100) DEFAULT NULL,
  `admin_fee` varchar(100) DEFAULT NULL,
  `arbitrtor_fee` varchar(100) DEFAULT NULL,
  `platform_fee` varchar(100) DEFAULT NULL,
  `transaction_id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bimacc_production1.respondentfees: ~0 rows (approximately)
/*!40000 ALTER TABLE `respondentfees` DISABLE KEYS */;
/*!40000 ALTER TABLE `respondentfees` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.respondents_decision
CREATE TABLE IF NOT EXISTS `respondents_decision` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `claim_notice_id` int(11) DEFAULT NULL,
  `respondent_decision` varchar(100) DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `updated_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table bimacc_production1.respondents_decision: ~0 rows (approximately)
/*!40000 ALTER TABLE `respondents_decision` DISABLE KEYS */;
/*!40000 ALTER TABLE `respondents_decision` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.revival_date
CREATE TABLE IF NOT EXISTS `revival_date` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `revival_date` varchar(30) DEFAULT NULL,
  `claim_notice_id` int(11) DEFAULT NULL,
  `claim_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_id` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `is_respondant` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bimacc_production1.revival_date: ~0 rows (approximately)
/*!40000 ALTER TABLE `revival_date` DISABLE KEYS */;
/*!40000 ALTER TABLE `revival_date` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table bimacc_production1.roles: ~4 rows (approximately)
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
REPLACE INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
	(1, 'centre', 'Centre', 'Centre', '2019-03-20 11:23:32', '2019-03-20 11:23:32'),
	(2, 'claiment', 'Claimant', 'Claiment', '2019-03-20 11:23:32', '2019-03-20 11:23:32'),
	(3, 'arbitrator', 'Arbitrator', 'Arbitrator', '2019-03-20 11:23:33', '2019-03-20 11:23:33'),
	(4, 'respondent', 'Respondent', 'Respondent', '2019-03-20 11:23:33', '2019-03-20 11:23:33');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.role_user
CREATE TABLE IF NOT EXISTS `role_user` (
  `role_id` int(10) unsigned NOT NULL,
  `user_id` int(10) NOT NULL,
  `user_type` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`,`user_type`),
  KEY `role_user_role_id_foreign` (`role_id`),
  CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table bimacc_production1.role_user: ~4 rows (approximately)
/*!40000 ALTER TABLE `role_user` DISABLE KEYS */;
REPLACE INTO `role_user` (`role_id`, `user_id`, `user_type`) VALUES
	(1, 1, 'App\\User'),
	(2, 2, 'App\\User'),
	(3, 3, 'App\\User'),
	(4, 4, 'App\\User');
/*!40000 ALTER TABLE `role_user` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.security_type
CREATE TABLE IF NOT EXISTS `security_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mortgage_property` varchar(30) DEFAULT NULL,
  `mortgage_value_bank` decimal(20,2) DEFAULT NULL,
  `mortgage_schedule` varchar(30) DEFAULT NULL,
  `mortgage_name` varchar(30) DEFAULT NULL,
  `mortgage_date` varchar(30) DEFAULT NULL,
  `hypo_property` varchar(30) DEFAULT NULL,
  `hypo_schedule` varchar(30) DEFAULT NULL,
  `hypo_value` decimal(20,2) DEFAULT NULL,
  `hypo_name` varchar(30) DEFAULT NULL,
  `hypo_date` varchar(30) DEFAULT NULL,
  `hypo_scheule` varchar(30) DEFAULT NULL,
  `hypo_engine` varchar(30) DEFAULT NULL,
  `hypo_chassis` varchar(30) DEFAULT NULL,
  `guarntee_name` varchar(30) DEFAULT NULL,
  `guarntor_agreement` varchar(30) DEFAULT NULL,
  `others_details` varchar(50) DEFAULT NULL,
  `others_date` varchar(30) DEFAULT NULL,
  `security_type` varchar(20) DEFAULT NULL,
  `claim_notice_id` int(11) DEFAULT NULL,
  `claim_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_id` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `is_respondant` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

-- Dumping data for table bimacc_production1.security_type: ~15 rows (approximately)
/*!40000 ALTER TABLE `security_type` DISABLE KEYS */;
REPLACE INTO `security_type` (`id`, `mortgage_property`, `mortgage_value_bank`, `mortgage_schedule`, `mortgage_name`, `mortgage_date`, `hypo_property`, `hypo_schedule`, `hypo_value`, `hypo_name`, `hypo_date`, `hypo_scheule`, `hypo_engine`, `hypo_chassis`, `guarntee_name`, `guarntor_agreement`, `others_details`, `others_date`, `security_type`, `claim_notice_id`, `claim_id`, `created_at`, `updated_id`, `updated_at`, `deleted_at`, `created_id`, `is_respondant`) VALUES
	(1, 'TSD', 77899099.00, 'TSD', 'TSD', '2021-09-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mortgage', 372, 1, '2021-09-07 15:34:29', NULL, NULL, NULL, 1018, NULL),
	(2, '5666', 20000.00, '20', 'Arjuna', '2021-09-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mortgage', 374, 2, '2021-09-13 11:17:58', NULL, NULL, NULL, 1018, NULL),
	(6, '1', 1.00, '1', '1', '2021-10-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mortgage', 6, 1, '2021-10-01 08:30:07', NULL, NULL, NULL, 1024, NULL),
	(7, '31', 10.00, '20', '100', '2021-10-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mortgage', 6, 2, '2021-10-01 09:35:50', NULL, NULL, NULL, 1025, 1),
	(10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gold', '2019-03-13', 'other', 7, 3, '2021-10-02 11:50:16', NULL, NULL, NULL, 1027, NULL),
	(12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'others', '2021-10-16', 'other', 10, 4, '2021-10-15 14:18:15', NULL, NULL, NULL, 1024, NULL),
	(13, 'Tom', 3300.00, '5455', 'Riyan', '2021-11-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mortgage', 11, 5, '2021-11-08 07:45:08', NULL, NULL, NULL, 1024, NULL),
	(14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, 5, '2021-11-08 07:45:08', NULL, NULL, NULL, 1024, NULL),
	(15, 'FF', 500.00, '100', '100', '2021-11-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mortgage', 13, 6, '2021-11-08 18:21:00', NULL, NULL, NULL, 1024, NULL),
	(16, NULL, NULL, NULL, NULL, NULL, NULL, '4566', 4566.00, 'Tony', '2021-11-10', NULL, 'Tn11h8781', 'est58781', NULL, NULL, NULL, NULL, 'hypothecation', 14, 7, '2021-11-09 09:15:43', NULL, NULL, NULL, 1024, NULL),
	(17, NULL, NULL, NULL, NULL, NULL, NULL, '455', 5677.00, 'Tony', '2021-11-10', NULL, 'TN11H8781', 'TR8781', NULL, NULL, NULL, NULL, 'hypothecation', 14, 8, '2021-11-09 09:46:08', NULL, NULL, NULL, 1025, 1),
	(18, 'RT', 45677.00, '5667', 'Team', '2021-11-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mortgage', 21, 9, '2021-11-15 10:07:25', NULL, NULL, NULL, 1024, NULL),
	(19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ram', '2021-11-16', NULL, NULL, 'guarntee', 21, 9, '2021-11-15 10:07:25', NULL, NULL, NULL, 1024, NULL),
	(20, 'ndffhhf', 122.00, 'mcmcmc', 'mdmmd', '2021-11-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mortgage', 24, 10, '2021-11-15 15:52:28', NULL, NULL, NULL, 1024, NULL),
	(21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ukmm m', '2014-02-18', 'other', 11, 1, '2023-11-12 06:18:45', NULL, NULL, NULL, 1109, NULL);
/*!40000 ALTER TABLE `security_type` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.security_types
CREATE TABLE IF NOT EXISTS `security_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `security_type_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `security_type_description` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `security_type_code` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table bimacc_production1.security_types: ~0 rows (approximately)
/*!40000 ALTER TABLE `security_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `security_types` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `usertype` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `roles_id` int(11) DEFAULT NULL,
  `image_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `encrypt_pass` text COLLATE utf8_unicode_ci,
  `phone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mail_verify` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1112 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table bimacc_production1.users: ~29 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
REPLACE INTO `users` (`id`, `name`, `username`, `email`, `password`, `usertype`, `roles_id`, `image_name`, `remember_token`, `created_at`, `updated_at`, `encrypt_pass`, `phone`, `address`, `mail_verify`) VALUES
	(251, 'Anbukani', 'AnbuKani', 'anbu.s@talentakeaways.com', '$2y$10$VKvyE8iSHildkgwTVY/NeOeJ.lZQG0mPZ7JEtcWQ/dD7YZTqm.FLW', '{"id":3,"name":"arbitrator","display_name":"Arbitrator","description":"Arbitrator","created_at":"2019-03-20 11:23:33","updated_at":"2019-03-20 11:23:33"}', 3, NULL, 'NJwenRDYu1GiJ1jNCmkJYf3h6j4QQLIm97RIXKRFxUEJDgdOuZmIR80nEBvP', '2019-06-11 06:22:25', '2019-06-11 06:22:25', NULL, NULL, NULL, 1),
	(252, 'BIMACC Center', 'BIMACC Center', 'bimacc1@gmail.com', '$2y$10$5wQV2QkCEK/2Y60F7kbMJuOO898oZt3uxOzlw52w/fkhOAiA9D77.', '{"id":3,"name":"arbitrator","display_name":"Arbitrator","description":"Arbitrator","created_at":"2019-03-20 11:23:33","updated_at":"2019-03-20 11:23:33"}', 1, NULL, 'j3kGc7X8bOBFJuDLBZ6srGy9DE2Eib1Bdd79qqXDrKR3PcKZFRrnvWK5tibg', '2019-06-16 14:15:17', '2021-11-03 11:36:38', NULL, NULL, NULL, 1),
	(1023, 'BHEL HR', 'BHEL HR', 'monikamurugesan21@gmail.com', '$2y$10$5wQV2QkCEK/2Y60F7kbMJuOO898oZt3uxOzlw52w/fkhOAiA9D77.', '{"id":3,"name":"arbitrator","display_name":"Arbitrator","description":"Arbitrator","created_at":"2019-03-20 11:23:33","updated_at":"2019-03-20 11:23:33"}', 3, NULL, '0gFENvmFWmHa7kFIUQHBMlpWgVMyrmve3eWpEiY31BPBWdJhu8ZGXnVHifw7', '2021-09-27 10:07:34', '2021-09-27 10:07:34', 'eyJpdiI6IlRRZWxlUGRjWkRiKzMzd2hjcW5ONFE9PSIsInZhbHVlIjoicGNzb05qVlc5SklcL2tIcWRBQUJENmc9PSIsIm1hYyI6IjI0YTg1M2MwNjE1MDAwNDZjZjM3ZDg0OTg4YjczYzIxZWQ1ZmU1MjU1MzAxNmY1NDU1YTlmOTE0MDZlOGM1NDMifQ==', NULL, NULL, 1),
	(1024, 'SBI Chrompet', 'SBI Chrompet', 'vignesh@talentakeaways.com', '$2y$10$425NMSk.3GrjApG7USwGAufL/er05Ku1enPJBJI1b8WjPBFwiGFci', '{"id":2,"name":"claiment","display_name":"Claimant","description":"Claiment","created_at":"2019-03-20 11:23:32","updated_at":"2019-03-20 11:23:32"}', 2, NULL, 'xFi3Qt2esP5ulhj8YVrq2BSpyBTyhBhcjd7T22wfhi9XGyEWuT044OD6s2Iq', '2021-09-27 10:51:07', '2021-09-27 11:04:09', 'eyJpdiI6IkJBbDdPMXpOQlwvZnhMSExlMWhRNXhnPT0iLCJ2YWx1ZSI6IklhVm5qR0x2ZnZJU2xBQW8rK1dKTkE9PSIsIm1hYyI6IjYwOWY0YzBiNThjZTFlODZmYTNiNzVkNzZjOTYwNmM5YWEyOWNkNDM4ODQ4NmY1Njg1NTg1NGViZmVhMTQ2NDUifQ==', '98887767767', '656Y street', 1),
	(1025, 'BHEL', 'BHEL', 'ttcipmo@gmail.com', '$2y$10$4aI0Eukbr1gMTM2VoVENGuvlmp/qsfVgrMbSUlWOa1voHqsOo/g0a', '{"id":4,"name":"respondent","display_name":"Respondent","description":"Respondent","created_at":"2019-03-20 11:23:33","updated_at":"2019-03-20 11:23:33"}', 4, NULL, 'yrZPPVDGauFeegbDy4uo7o6AkvKTF4Z6qamDB9yzBJYqktzByoFIuYCzpEVr', '2021-09-27 10:56:18', '2021-11-15 06:24:57', 'eyJpdiI6InlUT2YyVUIwQlVxSkJuaytJZUYrbUE9PSIsInZhbHVlIjoiY3hEOVNJWXBEa0JuaThNOXpEUXY1UT09IiwibWFjIjoiY2ZhNmVlN2ZjYTk5YTdlYmE1YTRjYTUxNDZhYzFmYWE2NGMwNzQ1ZjU0YzZmZTMzZTUxZmNmNGQzODNmMzBmNiJ9', '98887767767', NULL, 1),
	(1026, 'Keeruthika', 'Keeruthika', 'v.keeruthikadevi@talentakeaways.com', '$2y$10$dDq2zbhQenSbWyPDhYuCDON5VxWyyOVUkMtw.9GocuHXJ3XPO1t6q', '{"id":4,"name":"respondent","display_name":"Respondent","description":"Respondent","created_at":"2019-03-20 11:23:33","updated_at":"2019-03-20 11:23:33"}', 4, NULL, NULL, '2021-09-27 11:51:16', '2021-09-27 11:51:16', 'eyJpdiI6IjZVcDBhTFwvUUErWEt4UDltNzNSaXZRPT0iLCJ2YWx1ZSI6ImZLVnpqZmZjUFVXR2dnbFByWHBoZXc9PSIsIm1hYyI6ImYwMjY2YzA1MWE3YjJjNDQ4ZTlhMTU3OTQ5NTYxYzI0NTY4ZjRmNTMwMzFmMWNmZmZlOTNhYzIwM2MzOTFlYTkifQ==', '08798989789', NULL, NULL),
	(1027, 'HDFC Padma Complex', 'HDFC Padma Complex', 'monikamurugesan212@gmail.com', '$2y$10$5wQV2QkCEK/2Y60F7kbMJuOO898oZt3uxOzlw52w/fkhOAiA9D77.', '{"id":2,"name":"claiment","display_name":"Claimant","description":"Claiment","created_at":"2019-03-20 11:23:32","updated_at":"2019-03-20 11:23:32"}', 2, NULL, 'Dhb4L39G6jKB6WOrpP1QwouEjoV2PDfmvpYFEPEdYsX3EkcwT75iXYdbQ0R5', '2021-10-02 06:04:43', '2021-10-02 06:04:43', 'eyJpdiI6IlE0Nlg3MTZxRFZ0c2xDT3ZlVTRvbGc9PSIsInZhbHVlIjoiSkxYWVBsM3Q0XC92ZzUwdTdYTmhPS2c9PSIsIm1hYyI6IjhiMWExYzEzNWZkMTg4MmUzZjMwMzI2MGI4YmY1Mjg4ZDQzNmNkNjY0OGVkYjIxZjdkOTQ2NDIxNDZkYTFiMjQifQ==', '9677077646', 'Cenotaph Road', 1),
	(1028, 'Aastha Chawla', 'Aastha Chawla', 'aasthachawla26@gmail.com', '$2y$10$5wQV2QkCEK/2Y60F7kbMJuOO898oZt3uxOzlw52w/fkhOAiA9D77.', '{"id":2,"name":"claiment","display_name":"Claimant","description":"Claiment","created_at":"2019-03-20 11:23:32","updated_at":"2019-03-20 11:23:32"}', 2, NULL, 'gldwCWIu2pCXkmRUA4AM0MYgdd7dW0fA71ZvuEeiab7tYmXeXTeNq7in0XaX', '2021-10-02 06:57:26', '2021-10-02 06:57:26', 'eyJpdiI6IkdLeE9mVFFuczNDcWlYXC94Um0zTmp3PT0iLCJ2YWx1ZSI6IkdaTkdhR1B6UWlheHhmNjVZc0N1dDBrOEhMTXY2cjF3SVZ3Y29JSmhRV1E9IiwibWFjIjoiNDA5OWU1ODA5NjJkZDc3Y2UyN2RmNmJhNTA1NzcyNGRkMjRmZTE0NWEzZGQyOTM3YTU2OGRiZGNlYWI1ZjA0YiJ9', '9896395181', '20, 2', 0),
	(1029, 'Pushpendra Sharma', 'Pushpendra Sharma', 'pushpendrasharma@rgnul.ac.in', '$2y$10$X7YqV8herefxNyJWqE4bV.m5673MTYAysqhgzlThA27xaH6X2C6mq', '{"id":2,"name":"claiment","display_name":"Claimant","description":"Claiment","created_at":"2019-03-20 11:23:32","updated_at":"2019-03-20 11:23:32"}', 2, NULL, 'AgYWrB2F2dAoYs80lOVDd7TT927rNeubGVMeJ0FmyyB0xHjQQKuJrv01DDhY', '2021-10-04 08:44:30', '2021-10-04 08:44:30', 'eyJpdiI6IjJnMjd0aEJWaDRwRDBHU0tyQ2pFR1E9PSIsInZhbHVlIjoiYzFFOUYrNmdVM1M4bm4rS3pSUWVXdno1K3ZHeElHc1pDS1R4eFdGRmUwUT0iLCJtYWMiOiJmMGEyYzc2NjA5ODNkNDU0NWE4Y2ZhYTFjY2RhOTMzMmJiMzFkOGExZTYyNjhiY2EyNjFkNDI3NDFiM2Y0MGM1In0=', '7300252667', 'Bassi, Jaipur, Rajasthan', 1),
	(1030, 'Pushpendra Sharma', 'Pushpendra Sharma', 'pushpanderoo70@gmail.com', '$2y$10$v13LkcKDafjvq9uTv4ws9udSqoCqU6k6dX7/oDvaddnic7kB2PvX.', '{"id":2,"name":"claiment","display_name":"Claimant","description":"Claiment","created_at":"2019-03-20 11:23:32","updated_at":"2019-03-20 11:23:32"}', 2, NULL, 'GForNuOvDIUuELxgkzvfdcnDsprf2nMtFQY6bwBlcZ8sphejoY2KKCB1FrLk', '2021-10-04 08:46:37', '2021-10-04 08:46:37', 'eyJpdiI6IjAwdEZBNURXWW1NRnJSY1ZHQ1wvWDZnPT0iLCJ2YWx1ZSI6ImZxeHoxRTBWYlI4MERaXC8wbVwvR0Frb1JBNUlDRFVzc3pQVWlnaVRwdFErMD0iLCJtYWMiOiI4N2YyYmNmZWE1NzRlMDM1MDU5YzFlYjg3ZDVlMTFhM2I2NzBlYWZkZDc3NGExMGY1NjJmZTM2MjA5ZTU2NDcxIn0=', '07300252667', 'Bassi, Jaipur, Rajasthan', 1),
	(1031, 'John Doe', 'John Doe', 'johndoe123@gmail.com', '$2y$10$R89cwir4afNUdnv1knqrROlSo9hcT5MHxkd2i3FyScJnT0BkFBwGC', '{"id":2,"name":"claiment","display_name":"Claimant","description":"Claiment","created_at":"2019-03-20 11:23:32","updated_at":"2019-03-20 11:23:32"}', 2, NULL, NULL, '2021-10-11 17:26:55', '2021-10-11 17:26:55', 'eyJpdiI6IityeGhcL0IzNEx5VkN6Vis5bWxrVmV3PT0iLCJ2YWx1ZSI6IkhqdlNTc1VyU0drOWdYaWowZTF1OVZzdjhjWVdKQmhaeWEzd0Z6ZXBCMWM9IiwibWFjIjoiYjkzOWY5NWM4MzVkMWQ1YWRlYjQ4Zjg3ZjAxYWU5MjFkNjcxNGNhZDk0YTU2NGM5YThiZjUxYjczNzQwNjBiMiJ9', '7812345691', '15 Indiranagar 100 Feet Road', NULL),
	(1032, 'RAM', 'RAM', 'augustinthomas@talentakeaways.com', '$2y$10$3Qls5EZz8NbtCjTIOeqJsOoxO5TWn70pPI4lcazNfN64h9T2mz4yW', '{"id":4,"name":"respondent","display_name":"Respondent","description":"Respondent","created_at":"2019-03-20 11:23:33","updated_at":"2019-03-20 11:23:33"}', 4, NULL, NULL, '2021-10-15 08:46:13', '2021-10-15 08:46:13', 'eyJpdiI6InREUEZXV1oxV2lmOURcLzB0Y1BkU0hnPT0iLCJ2YWx1ZSI6IlJvQWMzdmZsVWdGelErNmcxRXhIdXc9PSIsIm1hYyI6Ijk0NWMzMjY5NzI4NzM2YTliNWQ4NTZkMWY0YTQ0OGFiODY1ZDEzOGM1YjAwZTI0YzcyMTMzZDg0Y2ZhYWNmNWMifQ==', '788779898998', NULL, NULL),
	(1033, 'xxx xcv', 'xxx xcv', 'siri96prasad@gmail.com', '$2y$10$KBJbOSvn0bxW2qX8NhRxOuj7M0ePcKTwBBni7W8B.yCBVVReYQFeu', '{"id":2,"name":"claiment","display_name":"Claimant","description":"Claiment","created_at":"2019-03-20 11:23:32","updated_at":"2019-03-20 11:23:32"}', 2, NULL, 'RIIulkPWCAedOIBOqUZNCkYuOIF1TpHF6qlTbB1Q1J0BCY4k6zz8WulTs1yh', '2021-11-10 09:04:19', '2021-11-15 07:43:08', 'eyJpdiI6IjhMUzRkc0YwaWdFVkxSU2ZLcWVYc0E9PSIsInZhbHVlIjoicVlORHBnWGJQcnJvQXd2OEJnSkQrM2pMTUtaR2NteFZROGxyZWxubWxFOD0iLCJtYWMiOiI4NzMyZmQwYmE5Zjk0N2RjNTgyNGY4MGU1MjBiYzIwMGE2NTA1MDBjNzc5MjhjYTczYTI1NWVlZTk4NmI4NWM4In0=', '917353297024', '#311, Mahajala, 3rd Cross, GKVK Layout, Jakkur, Bengaluru - 560064', NULL),
	(1034, 'mm', 'mm', 'siri.prasad@law.chrsituniversity.in', '$2y$10$/8hTM9ClOt/F/JFID5jN9uWreH.QV4aVnOcol0L6gDr98p6I.xNLu', '{"id":4,"name":"respondent","display_name":"Respondent","description":"Respondent","created_at":"2019-03-20 11:23:33","updated_at":"2019-03-20 11:23:33"}', 4, NULL, NULL, '2021-11-10 09:19:24', '2021-11-10 09:19:24', 'eyJpdiI6IlVjNEJCN2VUdStcL0VUTmVXa0tGNG9BPT0iLCJ2YWx1ZSI6ImRsVzNJOWRwaHd2ZkZNdFFTK3BHckE9PSIsIm1hYyI6Ijg3ZThmNjFkZTc2NmRkMWRmNTIyZDI2ZDhmZWQzNzE3NzMwYmY4OGEzMWI5NjFiNmUyODc4OTIxOTYyYTczNDcifQ==', '23455', NULL, NULL),
	(1035, 'ama', 'ama', 'siri.prasad@gmail.com', '$2y$10$5vpuk1tTrwAfIyY/beLHOOhLB5.XjblCMSqSYmYjeBnXPpnqHCdt6', '{"id":4,"name":"respondent","display_name":"Respondent","description":"Respondent","created_at":"2019-03-20 11:23:33","updated_at":"2019-03-20 11:23:33"}', 4, NULL, NULL, '2021-11-10 09:28:17', '2021-11-10 09:28:17', 'eyJpdiI6IjFicHJOUU1YNk1KNmNZQVlCakJ3bXc9PSIsInZhbHVlIjoia2s3WE1URGo4dU9FRXQzbWJPMHRvQT09IiwibWFjIjoiYmZhMGRhNDM5MGMxMTY3Njg1ZDNkMzU5YWRiNGQ2Yjg2YWUxZTZlNDQxMWRjNjcwOTkwNTMyMTAyMGFkMzI4MSJ9', '917353297024', NULL, NULL),
	(1036, 'AXA', 'AXA', 'siri.prasad@law.christuniversity.in', '$2y$10$nwu6NMAWBJH8lQuPlgITdOe.EOvNL1YR3IaH5bbH3uSnLnpWDLIWq', '{"id":4,"name":"respondent","display_name":"Respondent","description":"Respondent","created_at":"2019-03-20 11:23:33","updated_at":"2019-03-20 11:23:33"}', 4, NULL, NULL, '2021-11-10 09:36:01', '2021-11-10 09:36:01', 'eyJpdiI6IjRsbDY3YjVoUHgyZ3lvQ0FmYXVtQXc9PSIsInZhbHVlIjoiSlpnZU56bWduVVlOR0hSZWw1dmJKUT09IiwibWFjIjoiZjE4ZDQ0MjhmY2RhMTM3MmU4ZDIxZTJjYzUwYmNmYjI1ODM3YjQ0NzRmMmM5ODg3MzE1Y2YyYzVlMWY5OGE4ZCJ9', '3211', NULL, NULL),
	(1037, 'Vignesh K', 'Vignesh K', 'vpvsgp@gmail.com', '$2y$10$PquhHlyHUKweXE/V8G8T6OKfRkGHYGMQ6qU7S0EoeBlBdW3j3aYZG', '{"id":3,"name":"arbitrator","display_name":"Arbitrator","description":"Arbitrator","created_at":"2019-03-20 11:23:33","updated_at":"2019-03-20 11:23:33"}', 3, NULL, 'zJPFymrMAGOv8uMCy5Grjm39PdYUbCeezxYuHDem25vOZ752fgdaIKG7NMBg', '2021-11-15 06:46:42', '2021-11-15 06:49:51', 'eyJpdiI6IkhqeGpsc1B0YmxHbFBIcFlwZ09YOHc9PSIsInZhbHVlIjoidjIwSWxNNkpnQk02VmZKc2I2Tjc1Zz09IiwibWFjIjoiODcwZGU5ZWI5NTU3ODg1OTg1NWUzOWNmNzViODU1ODZjYjJhMzc5ZDllYWY4YjAxZTRjODc0ZTVhNTI2NzUzZSJ9', NULL, NULL, 1),
	(1038, 'TOM', 'TOM', 'vignesh@talentakeaways.com', '$2y$10$.6K73rLpWtlBf1o5Zr4Ow.mJD2V7vFb4DszLC61p8pMCz2e0jn8fa', '{"id":4,"name":"respondent","display_name":"Respondent","description":"Respondent","created_at":"2019-03-20 11:23:33","updated_at":"2019-03-20 11:23:33"}', 4, NULL, NULL, '2021-11-15 10:18:04', '2021-11-15 10:18:04', 'eyJpdiI6IjNiMURtRHhsMytUeVQ1WlFKQWFDcmc9PSIsInZhbHVlIjoibW4yc0tBRjN1MTVoWEJXSW55dlhvZz09IiwibWFjIjoiOTE5OTQ4Y2VjYWJmYzE5ZjYyOWE2Njk3OTQ3MjI3Y2Q5M2JlYmUyZTRiM2VhZjJhYWYxYTE0ZjI5NDc3NGZhZCJ9', '09789991876', NULL, NULL),
	(1039, 'Bimacc Nandi Durga Road', 'Bimacc Nandi Durga Road', 'Bimacc.eas@gmail.com', '$2y$10$9LrutJvNtjB/esj1gZJqTeYR9wg5yHRYuY/K1Fw84ye7A3rbeIULG', '{"id":2,"name":"claiment","display_name":"Claimant","description":"Claiment","created_at":"2019-03-20 11:23:32","updated_at":"2019-03-20 11:23:32"}', 2, NULL, NULL, '2023-09-13 06:25:16', '2023-09-13 06:25:16', 'eyJpdiI6IldBczI5R2EwK09SdEhFb0RDM0xlVEE9PSIsInZhbHVlIjoiY0VhdEFkRWRSNzhRbjduNlpNRVR0Zz09IiwibWFjIjoiYWExNWQ2YzVlYWQwZTliYzBjNGMwMmZiNTRlZjE3YzhlMjdkMGE5ODEzNzQ5MGM3NmFjMzljZGJiOTZjZGM0YiJ9', '09677077646', 'xyz Street', NULL),
	(1102, 'Test1 Test1', 'Test1 Test1', 'yxkdyfv@hldrive.com', '$2y$10$F.j7PA35AGizeZK0bzFpN.QPthK68ni5rLERLn/am4AUoGJiJg8QS', '{"id":2,"name":"claiment","display_name":"Claimant","description":"Claiment","created_at":"2019-03-20 11:23:32","updated_at":"2019-03-20 11:23:32"}', 2, NULL, 'St6Rr7a3Or5Ug1GziWA4Wwgx5asMFhkkTl7wF9EPlDtCpTwYIGbu8Z0GXbs7', '2023-11-09 04:14:08', '2023-11-09 04:14:08', 'eyJpdiI6IkpVdE14YUNvcDBId1RpdmhqaWdQTWc9PSIsInZhbHVlIjoiVngyYXl5a2VnaU54azNucDdyWkFGdz09IiwibWFjIjoiMTJhYjg0YzQxZmE5NDkwNjJhOTQ0ODk3ODE1NTIyYTY1MTFiYWE1ZDlmMTY3ODRhM2MyZmExNTg0ZDIxM2RkOSJ9', '8765432109', '890', 1),
	(1103, 'Test', 'Test', 'uwayzmw@hldrive.com', '$2y$10$RN4yk52/QTYcEJOVWqT4RevmzIwbH9abnVNpJHEd4OsJfEc77Cawm', '{"id":4,"name":"respondent","display_name":"Respondent","description":"Respondent","created_at":"2019-03-20 11:23:33","updated_at":"2019-03-20 11:23:33"}', 4, NULL, NULL, '2023-11-09 04:18:06', '2023-11-09 04:18:06', 'eyJpdiI6Inp1aXpKdnFWTlpMRkt1b1BNZ0Y5OHc9PSIsInZhbHVlIjoicVVob3NIU3ZWWnpmMlNGM2x0cG51dz09IiwibWFjIjoiMGUyYzkwNDU5NWJlMGJiMDg0MTAyMmIxZjg3ZDk3NmVmMGU0OTgxYjMxNjUxNDNmMzUzNzJkZDMwZTdmMmNhZCJ9', '9808765437', NULL, NULL),
	(1104, 'N', 'N', 'auwnin@hldrive.com', '$2y$10$0d9ltH1lEIfuUSSB4RwaL.KTBm2DUK7SXYjqdx/x0EZx8IWXco23G', '{"id":4,"name":"respondent","display_name":"Respondent","description":"Respondent","created_at":"2019-03-20 11:23:33","updated_at":"2019-03-20 11:23:33"}', 4, NULL, NULL, '2023-11-09 04:26:50', '2023-11-09 04:26:50', 'eyJpdiI6IkY3NFNRRGR3RUZiempVampBcVwvZW13PT0iLCJ2YWx1ZSI6Ikw4UUhaWHFYaTBKRkVtdWFUV0lcL1hBPT0iLCJtYWMiOiI0NzlhNTlhOWJjODQ2M2I0ZmFhMjBlYmQ0MmQ3MTZiMTk2MWE3NjJlYTMwNzRhODI4NDRhNGQ2YTMwNDZmMTI1In0=', '9876000000', NULL, NULL),
	(1105, 'J', 'J', 'prrorzxp@hldrive.com', '$2y$10$MJ7aL5ZQoU26aaERRvfWruz/KAkiihRxJpvnYX79NTA4DBOUvzMZm', '{"id":4,"name":"respondent","display_name":"Respondent","description":"Respondent","created_at":"2019-03-20 11:23:33","updated_at":"2019-03-20 11:23:33"}', 4, NULL, NULL, '2023-11-09 06:00:28', '2023-11-09 06:00:28', 'eyJpdiI6ImE3aTVUOTBxYmd1UGxcL1NsZW5qVENBPT0iLCJ2YWx1ZSI6IlpJRGFGSGN0XC96cFNvVitZOTBVZCtBPT0iLCJtYWMiOiI1YjhiZTk5ZmViZTBlZDE1NDUzZTcyNGJhMmY0OWZkZDc5OTY1YjA0ZjVjMjEyNzliY2YxYTc4YTdhY2M3YzU5In0=', '9879898989', NULL, NULL),
	(1106, 'A', 'A', 'khumhoedxy@hldrive.com', '$2y$10$2zhIlIN.MhQ9wbzoikgRauaQIh/islzmdRsSAGXUPIg41lfH2AynC', '{"id":4,"name":"respondent","display_name":"Respondent","description":"Respondent","created_at":"2019-03-20 11:23:33","updated_at":"2019-03-20 11:23:33"}', 4, NULL, NULL, '2023-11-09 06:04:38', '2023-11-09 06:04:38', 'eyJpdiI6Inl3RFVCa1dHUFlGenlLQzl4a2ozVVE9PSIsInZhbHVlIjoiR3JObXkyNnFvblpzcmdMcFU5VzFhQT09IiwibWFjIjoiMGY5YzU3NzU3ZmNkMTQwZjFmYWMzMzk5MTk1ZTcwNjdjNmYzMzFhNGU5YjU1ZDIwZDE4NWEzYzNlMDgxYjg3NCJ9', '9876700000', NULL, NULL),
	(1107, 'Test S', 'Test S', 'otwysczbswz@hldrive.com', '$2y$10$q4fyz5UaTo6LSk.xHcRSlOXICGSpYuOl7nOGMgiLEy.MvHUaNtb7.', '{"id":2,"name":"claiment","display_name":"Claimant","description":"Claiment","created_at":"2019-03-20 11:23:32","updated_at":"2019-03-20 11:23:32"}', 2, NULL, 'fJpc9DTAuCI93V6pYiz7LL4Jaq64pl8YP0W0WGB8BcxNNic6EwF1AV7GuaCQ', '2023-11-09 06:23:41', '2023-11-09 06:23:41', 'eyJpdiI6Im00cGs0UnlPTHZ0NWt1dUxYd1wvdGZRPT0iLCJ2YWx1ZSI6IlwvSDdsMlhveFwvMm9LWm9TMWI4TUN1dz09IiwibWFjIjoiOTAwNzc0Y2I3NTg5M2I1ODdjMjYzMTJlY2U4MzllMmViMzI2NmRhNjU2NzY5MzgxZDgxMWM4MGFkNDJkM2JhZiJ9', '9876789098', 'A', 1),
	(1108, 'Vihaan Vihaan', 'Vihaan Vihaan', 'eas.bimacc@gmail.com', '$2y$10$GPaNl8VrU8md8HyvyJa6T.MPbqB5uUMSb6CAd0JeRdgE0V0bg9IxW', '{"id":2,"name":"claiment","display_name":"Claimant","description":"Claiment","created_at":"2019-03-20 11:23:32","updated_at":"2019-03-20 11:23:32"}', 2, NULL, NULL, '2023-11-11 09:02:47', '2023-11-11 09:02:47', 'eyJpdiI6IlF2bHV4cDlydDMwWjFqcjFaRkVidXc9PSIsInZhbHVlIjoiREpEK09zSCtDdEY2ZnJTYXRGWlh6dz09IiwibWFjIjoiNWY4YTcwNjM5OTVkN2YwMjRlMzA2YWVmZjg4NDk2Yzc4ODE2YWVmZTdiMzlmZjZhMWQ4YTAxODIyMWE3MDI0NyJ9', '9677077646', 'B\'lore', NULL),
	(1109, 'Monika MM', 'Monika MM', 'monika.muru@gmail.com', '$2y$10$OVM/3YE3W5vewYUdSQB55Oq31bFFKdzkQy4rI97OxjkQo4h5GzvoS', '{"id":2,"name":"claiment","display_name":"Claimant","description":"Claiment","created_at":"2019-03-20 11:23:32","updated_at":"2019-03-20 11:23:32"}', 2, NULL, NULL, '2023-11-12 00:41:38', '2023-11-12 00:41:38', 'eyJpdiI6IitzbEZEc1lyRXFxeW45Qzc1RzZuQXc9PSIsInZhbHVlIjoiNGU1VjZzUDh0RFwvR1lPbnhGT3lwenc9PSIsIm1hYyI6IjFiMzg5NmM1NGM1ZjAzNmExOThlMWY4ZTQwODhiYjM0ZGY4YjBjNjJmM2ZlZWU4MGNkNDU0MjA2Zjg4ZDM2ZjgifQ==', '8105874004', 'Den', 1),
	(1110, 'Sunu', 'Sunu', 'Manik.bt@thiruandthiru.co.in', '$2y$10$4lSAsRl9WzgyafRGfuG/Q.axl9QSZJCF3CkWMJu2AqwL0tZsg54hC', '{"id":4,"name":"respondent","display_name":"Respondent","description":"Respondent","created_at":"2019-03-20 11:23:33","updated_at":"2019-03-20 11:23:33"}', 4, NULL, NULL, '2023-11-12 00:45:37', '2023-11-12 00:45:37', 'eyJpdiI6IjhQcnN6N0NjN3NXMjlsSk4weWNpZkE9PSIsInZhbHVlIjoia1FvU3ZXYmJ2U1ZJdHNPUEZYVHVLQT09IiwibWFjIjoiOGMxNDZjMWIwYWE0ZDcxYTkyZWY0NWI5ZmQxNDViZWNkZmU0MTI1NzUxYzdmNWRjYmU3NDc0MTJjOTI0ZWEwZiJ9', '9444055791', NULL, NULL),
	(1111, 'Test Test', 'Test Test', 'sfvbtne@hldrive.com', '$2y$10$kXiSWRSvbwUc9J8salbYc.KxbiGMCuvOg/A3npaq6O8R7gnDsrtru', '{"id":2,"name":"claiment","display_name":"Claimant","description":"Claiment","created_at":"2019-03-20 11:23:32","updated_at":"2019-03-20 11:23:32"}', 2, NULL, NULL, '2023-11-14 04:20:11', '2023-11-14 04:20:11', 'eyJpdiI6ImZHZUVjVVBDK3Q1U01ydTQ2cW5XQ3c9PSIsInZhbHVlIjoiR3V5dThSNkhMMUdcL2crcmUwQ0lPUEE9PSIsIm1hYyI6IjkyNGZkYjQ4Y2ViMTcyNjQ3NTFiMTM0OGI1YmRmODI5ZTJjZmNlNzQ4ODhhYmZmMTQ1MzE2MDEzMzIxZmZkZWIifQ==', '8765432134', 'A', 1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.video_conferencing
CREATE TABLE IF NOT EXISTS `video_conferencing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `claim_notice_id` int(11) DEFAULT NULL,
  `link` longtext,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `video_conferencing_header` longtext,
  `description` longtext,
  `created_id` int(11) DEFAULT NULL,
  `updated_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(300) DEFAULT NULL,
  `meeting_id` varchar(300) DEFAULT NULL,
  `meeting_passcode` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table bimacc_production1.video_conferencing: ~0 rows (approximately)
/*!40000 ALTER TABLE `video_conferencing` DISABLE KEYS */;
/*!40000 ALTER TABLE `video_conferencing` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.video_conferencing_emails
CREATE TABLE IF NOT EXISTS `video_conferencing_emails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `claim_notice_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `email_id` varchar(250) DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `updated_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `video_conferencing_link_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table bimacc_production1.video_conferencing_emails: ~0 rows (approximately)
/*!40000 ALTER TABLE `video_conferencing_emails` DISABLE KEYS */;
/*!40000 ALTER TABLE `video_conferencing_emails` ENABLE KEYS */;

-- Dumping structure for table bimacc_production1.video_message
CREATE TABLE IF NOT EXISTS `video_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `claimnoticeid` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_id` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bimacc_production1.video_message: ~0 rows (approximately)
/*!40000 ALTER TABLE `video_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `video_message` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
