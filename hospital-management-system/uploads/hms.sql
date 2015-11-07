-- phpMyAdmin SQL Dump
-- version 2.11.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 07, 2013 at 07:51 AM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `accountant`
--

DROP TABLE IF EXISTS `accountant`;
CREATE TABLE IF NOT EXISTS `accountant` (
  `accountant_id` int(11) NOT NULL auto_increment,
  `name` longtext character set utf8 collate utf8_unicode_ci NOT NULL,
  `email` longtext character set utf8 collate utf8_unicode_ci NOT NULL,
  `password` longtext character set utf8 collate utf8_unicode_ci NOT NULL,
  `address` longtext character set utf8 collate utf8_unicode_ci NOT NULL,
  `phone` longtext character set utf8 collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`accountant_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=0 ;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(11) NOT NULL auto_increment,
  `name` longtext character set utf8 collate utf8_unicode_ci NOT NULL,
  `email` longtext character set utf8 collate utf8_unicode_ci NOT NULL,
  `password` longtext character set utf8 collate utf8_unicode_ci NOT NULL,
  `address` longtext character set utf8 collate utf8_unicode_ci NOT NULL,
  `phone` longtext character set utf8 collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`admin_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=0 ;

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
CREATE TABLE IF NOT EXISTS `appointment` (
  `appointment_id` int(11) NOT NULL auto_increment,
  `appointment_timestamp` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  PRIMARY KEY  (`appointment_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=0 ;

-- --------------------------------------------------------

--
-- Table structure for table `bed`
--

DROP TABLE IF EXISTS `bed`;
CREATE TABLE IF NOT EXISTS `bed` (
  `bed_id` int(11) NOT NULL auto_increment,
  `bed_number` longtext character set utf8 collate utf8_unicode_ci NOT NULL,
  `type` longtext NOT NULL COMMENT 'ward,cabin,ICU',
  `status` int(11) NOT NULL default '0' ,
  `description` longtext character set utf8 collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`bed_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=0 ;

-- --------------------------------------------------------

--
-- Table structure for table `bed_allotment`
--

DROP TABLE IF EXISTS `bed_allotment`;
CREATE TABLE IF NOT EXISTS `bed_allotment` (
  `bed_allotment_id` int(11) NOT NULL auto_increment,
  `bed_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `allotment_timestamp` int(11) NOT NULL,
  `discharge_timestamp` int(11) NOT NULL,
  PRIMARY KEY  (`bed_allotment_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=0 ;

-- --------------------------------------------------------

--
-- Table structure for table `blood_bank`
--

DROP TABLE IF EXISTS `blood_bank`;
CREATE TABLE IF NOT EXISTS `blood_bank` (
  `blood_group_id` int(11) NOT NULL auto_increment,
  `blood_group` longtext character set utf8 collate utf8_unicode_ci NOT NULL,
  `status` longtext character set utf8 collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`blood_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=0 ;


--
-- Dumping data for table `blood_bank`
--

INSERT INTO `blood_bank` (`blood_group_id`, `blood_group`, `status`) VALUES
(1, 'A+', ''),
(2, 'A-', ''),
(3, 'B+', ''),
(4, 'B-', ''),
(5, 'AB+', ''),
(6, 'AB-', ''),
(7, 'O+', ''),
(8, 'O-', '');
-- --------------------------------------------------------

--
-- Table structure for table `blood_donor`
--

DROP TABLE IF EXISTS `blood_donor`;
CREATE TABLE IF NOT EXISTS `blood_donor` (
  `blood_donor_id` int(11) NOT NULL auto_increment,
  `name` longtext character set utf8 collate utf8_unicode_ci NOT NULL,
  `blood_group` longtext character set utf8 collate utf8_unicode_ci NOT NULL,
  `sex` longtext character set utf8 collate utf8_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  `phone` longtext character set utf8 collate utf8_unicode_ci NOT NULL,
  `email` longtext character set utf8 collate utf8_unicode_ci NOT NULL,
  `address` longtext character set utf8 collate utf8_unicode_ci NOT NULL,
  `last_donation_timestamp` int(11) NOT NULL,
  PRIMARY KEY  (`blood_donor_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=0 ;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
CREATE TABLE IF NOT EXISTS `department` (
  `department_id` int(11) NOT NULL auto_increment,
  `name` longtext character set utf8 collate utf8_unicode_ci NOT NULL,
  `description` longtext character set utf8 collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`department_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=0 ;

-- --------------------------------------------------------

--
-- Table structure for table `diagnosis_report`
--

DROP TABLE IF EXISTS `diagnosis_report`;
CREATE TABLE IF NOT EXISTS `diagnosis_report` (
  `diagnosis_report_id` int(11) NOT NULL auto_increment,
  `report_type` longtext collate utf8_unicode_ci NOT NULL COMMENT 'xray,blood test',
  `document_type` longtext collate utf8_unicode_ci NOT NULL COMMENT 'text,photo',
  `file_name` longtext collate utf8_unicode_ci NOT NULL,
  `prescription_id` int(11) NOT NULL,
  `description` longtext collate utf8_unicode_ci NOT NULL,
  `timestamp` int(11) NOT NULL,
  `laboratorist_id` int(11) NOT NULL,
  PRIMARY KEY  (`diagnosis_report_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=0 ;

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
CREATE TABLE IF NOT EXISTS `doctor` (
  `doctor_id` int(11) NOT NULL auto_increment,
  `name` longtext character set utf8 collate utf8_unicode_ci NOT NULL,
  `email` longtext character set utf8 collate utf8_unicode_ci NOT NULL,
  `password` longtext character set utf8 collate utf8_unicode_ci NOT NULL,
  `address` longtext character set utf8 collate utf8_unicode_ci NOT NULL,
  `phone` longtext character set utf8 collate utf8_unicode_ci NOT NULL,
  `department_id` int(11) NOT NULL,
  `profile` longtext character set utf8 collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`doctor_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=0 ;

-- --------------------------------------------------------

--
-- Table structure for table `email_template`
--

DROP TABLE IF EXISTS `email_template`;
CREATE TABLE IF NOT EXISTS `email_template` (
  `email_template_id` int(11) NOT NULL auto_increment,
  `task` longtext character set latin1 NOT NULL,
  `subject` longtext character set latin1 NOT NULL,
  `body` longtext character set latin1 NOT NULL,
  PRIMARY KEY  (`email_template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=0 ;

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
CREATE TABLE IF NOT EXISTS `invoice` (
  `invoice_id` int(11) NOT NULL auto_increment,
  `patient_id` int(11) NOT NULL,
  `title` longtext collate utf8_unicode_ci NOT NULL,
  `description` longtext collate utf8_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `creation_timestamp` int(11) NOT NULL,
  `status` longtext collate utf8_unicode_ci NOT NULL COMMENT 'paid or unpaid',
  PRIMARY KEY  (`invoice_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=0 ;

-- --------------------------------------------------------

--
-- Table structure for table `laboratorist`
--

DROP TABLE IF EXISTS `laboratorist`;
CREATE TABLE IF NOT EXISTS `laboratorist` (
  `laboratorist_id` int(11) NOT NULL auto_increment,
  `name` longtext character set utf8 collate utf8_unicode_ci NOT NULL,
  `email` longtext character set utf8 collate utf8_unicode_ci NOT NULL,
  `password` longtext character set utf8 collate utf8_unicode_ci NOT NULL,
  `address` longtext character set utf8 collate utf8_unicode_ci NOT NULL,
  `phone` longtext character set utf8 collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`laboratorist_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=0 ;

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

DROP TABLE IF EXISTS `language`;
CREATE TABLE IF NOT EXISTS `language` (
  `phrase_id` int(11) NOT NULL auto_increment,
  `phrase` longtext collate utf8_unicode_ci NOT NULL,
  `english` longtext collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`phrase_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=234 ;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES
(1, 'admin_dashboard', 'admin dashboard'),
(2, 'login', 'login'),
(3, 'email', 'email'),
(4, 'password', 'password'),
(5, 'forgot_password?', 'forgot password?'),
(6, 'account_type', 'account type'),
(7, 'admin', 'admin'),
(8, 'doctor', 'doctor'),
(9, 'patient', 'patient'),
(10, 'pharmacist', 'pharmacist'),
(11, 'laboratorist', 'laboratorist,eo'),
(12, 'accountant', 'accountant'),
(13, 'monitor_hospital', 'monitor hospital'),
(14, 'nurse', 'nurse'),
(15, 'department', 'department'),
(16, 'dashboard', 'dashboard'),
(17, 'settings', 'settings'),
(18, 'profile', 'profile'),
(19, 'settings_updated', 'settings updated'),
(20, 'logout', 'logout'),
(21, 'logged_out', 'logged out'),
(22, 'reset_password', 'reset password'),
(23, 'reset', 'reset'),
(24, 'account', 'account'),
(25, 'select_language', 'select language'),
(26, 'panel', 'panel'),
(27, 'view_appointment', 'view appointment'),
(28, 'view_payment', 'view payment'),
(29, 'view_bed_status', 'view bed status'),
(30, 'view_blood_bank', 'view blood bank'),
(31, 'view_medicine', 'view medicine'),
(32, 'view_operation', 'view operation'),
(33, 'view_birth_report', 'view birth report'),
(34, 'view_death_report', 'view death report'),
(35, 'manage_email_template', 'manage email template'),
(36, 'manage_noticeboard', 'manage noticeboard'),
(37, 'system_settings', 'system settings'),
(38, 'manage_language', 'manage language'),
(39, 'backup_restore', 'backup restore'),
(40, 'appointment', 'appointment'),
(41, 'payment', 'payment'),
(42, 'blood_bank', 'blood bank'),
(43, 'medicine', 'medicine'),
(44, 'operation_report', 'operation report'),
(45, 'birth_report', 'birth report'),
(46, 'death_report', 'death report'),
(47, 'bed_allotment', 'bed allotment'),
(48, 'noticeboard', 'noticeboard'),
(49, 'language', 'language'),
(50, 'backup', 'backup'),
(51, 'calendar_schedule', 'calendar schedule'),
(52, 'manage_department', 'manage department'),
(53, 'department_list', 'department list'),
(54, 'add_department', 'add department'),
(55, 'department_name', 'department name'),
(56, 'description', 'description'),
(57, 'options', 'options'),
(58, 'edit', 'edit'),
(59, 'delete', 'delete'),
(60, 'department_description', 'department description'),
(61, 'manage_doctor', 'manage doctor'),
(62, 'doctor_list', 'doctor list'),
(63, 'add_doctor', 'add doctor'),
(64, 'doctor_name', 'doctor name'),
(65, 'name', 'name'),
(66, 'address', 'address'),
(67, 'phone', 'phone'),
(68, 'manage_patient', 'manage patient'),
(69, 'patient_list', 'patient list'),
(70, 'add_patient', 'add patient'),
(71, 'patient_name', 'patient name'),
(72, 'age', 'age'),
(73, 'sex', 'sex'),
(74, 'blood_group', 'blood group'),
(75, 'birth_date', 'birth date'),
(76, 'male', 'male'),
(77, 'female', 'female'),
(78, 'manage_nurse', 'manage nurse'),
(79, 'nurse_list', 'nurse list'),
(80, 'add_nurse', 'add nurse'),
(81, 'nurse_name', 'nurse name'),
(82, 'manage_pharmacist', 'manage pharmacist'),
(83, 'pharmacist_list', 'pharmacist list'),
(84, 'add_pharmacist', 'add pharmacist'),
(85, 'pharmacist_name', 'pharmacist name'),
(86, 'manage_laboratorist', 'manage laboratorist,eo'),
(87, 'laboratorist_list', 'laboratorist list,eo'),
(88, 'add_laboratorist', 'add laboratorist,eo'),
(89, 'laboratorist_name', 'laboratorist name,sl'),
(90, 'manage_accountant', 'manage accountant'),
(91, 'accountant_list', 'accountant list'),
(92, 'add_accountant', 'add accountant'),
(93, 'accountant_name', 'accountant name'),
(94, 'phrase_list', 'phrase list'),
(95, 'add_phrase', 'add phrase'),
(96, 'add_language', 'add language'),
(97, 'phrase', 'phrase'),
(98, 'delete_language', 'delete language'),
(99, 'update_phrase', 'update phrase'),
(100, 'time', 'time'),
(101, 'amount', 'amount'),
(102, 'payment_type', 'payment type'),
(103, 'transaction_id', 'transaction id'),
(104, 'invoice_id', 'invoice id'),
(105, 'method', 'method'),
(106, 'bed_list', 'bed list'),
(107, 'bed_id', 'bed id'),
(108, 'bed_type', 'bed type'),
(109, 'allotment_time', 'allotment time'),
(110, 'discharge_time', 'discharge time'),
(111, 'bed_number', 'bed number'),
(112, 'type', 'type'),
(113, 'blood_donor_list', 'blood donor list'),
(114, 'last_donation_date', 'last donation date'),
(115, 'status', 'status'),
(116, 'category', 'category'),
(117, 'price', 'price'),
(118, 'manufacturing_company', 'manufacturing company'),
(119, 'view_operation_report', 'view operation report'),
(120, 'view_report', 'view report'),
(121, 'date', 'date'),
(122, 'noticeboard_list', 'noticeboard list'),
(123, 'add_noticeboard', 'add noticeboard'),
(124, 'title', 'title'),
(125, 'notice', 'notice'),
(126, 'system_name', 'system name'),
(127, 'save', 'save'),
(128, 'system_email', 'system email'),
(129, 'system_title', 'system title'),
(130, 'paypal_email', 'paypal email'),
(131, 'currency', 'currency'),
(132, 'restore', 'restore'),
(133, 'report', 'report'),
(134, 'all', 'all'),
(135, 'upload_&_restore_from_backup', 'upload & restore from backup'),
(136, 'manage_profile', 'manage profile'),
(137, 'update_profile', 'update profile'),
(138, 'change_password', 'change password'),
(139, 'new_password', 'new password'),
(140, 'confirm_new_password', 'confirm new password'),
(141, 'update_password', 'update password'),
(142, 'option', 'option'),
(143, 'edit_phrase', 'edit phrase'),
(144, 'edit_noticeboard', 'edit noticeboard'),
(145, 'doctor_dashboard', 'doctor dashboard'),
(146, 'manage_appointment', 'manage appointment'),
(147, 'manage_prescription', 'manage prescription'),
(148, 'manage_report', 'manage report'),
(149, 'prescription', 'prescription'),
(150, 'edit_patient', 'edit patient'),
(151, 'appointment_list', 'appointment list'),
(152, 'add_appointment', 'add appointment'),
(153, 'edit_appointment', 'edit appointment'),
(154, 'prescription_list', 'prescription list'),
(155, 'add_prescription', 'add prescription'),
(156, 'case_history', 'case history'),
(157, 'add_description', 'add description'),
(158, 'medication', 'medication'),
(159, 'medication_from_pharmacist', 'medication from pharmacist'),
(160, 'edit_prescription', 'edit prescription'),
(161, 'diagnosis_report', 'diagnosis report'),
(162, 'report_type', 'report type'),
(163, 'document_type', 'document type'),
(164, 'download', 'download'),
(165, 'manage_bed_allotment', 'manage bed allotment'),
(166, 'bed_allotment_list', 'bed allotment list'),
(167, 'add_bed_allotment', 'add bed allotment'),
(168, 'allotment_date_time', 'allotment date time'),
(169, 'discharge_date_time', 'discharge date time'),
(170, 'operation', 'operation'),
(171, 'birth', 'birth'),
(172, 'death', 'death'),
(173, 'other', 'other'),
(174, 'add_report', 'add report'),
(175, 'patient_dashboard', 'patient dashboard'),
(176, 'view_prescription', 'view prescription'),
(177, 'view_doctor', 'view doctor'),
(178, 'admit_history', 'admit history'),
(179, 'operation_history', 'operation history'),
(180, 'view_invoice', 'view invoice'),
(181, 'payment_history', 'payment history'),
(182, 'view_admit_history', 'view admit history'),
(183, 'view_operation_history', 'view operation history'),
(184, 'invoice_list', 'invoice list'),
(185, 'creation_timestamp', 'creation timestamp'),
(186, 'nurse_dashboard', 'nurse dashboard'),
(187, 'bed_ward', 'bed ward'),
(188, 'manage_bed', 'manage bed'),
(189, 'manage_blood_bank', 'manage blood bank'),
(190, 'manage_blood_donor', 'manage blood donor'),
(191, 'add_bed', 'add bed'),
(192, 'ward', 'ward'),
(193, 'cabin', 'cabin'),
(194, 'icu', 'icu'),
(195, 'edit_bed', 'edit bed'),
(196, 'edit_bed_allotment', 'edit bed allotment'),
(197, 'blood_bank_list', 'blood bank list'),
(198, 'edit_blood_bank', 'edit blood bank'),
(199, 'add_blood_donor', 'add blood donor'),
(200, 'edit_blood_donor', 'edit blood donor'),
(201, 'pharmacist_dashboard', 'pharmacist dashboard'),
(202, 'medicine_category', 'medicine category'),
(203, 'manage_medicine', 'manage medicine'),
(204, 'provide_medication', 'provide medication'),
(205, 'manage_medicine_category', 'manage medicine category'),
(206, 'medicine_category_list', 'medicine category list'),
(207, 'add_medicine_category', 'add medicine category'),
(208, 'medicine_category_name', 'medicine category name'),
(209, 'medicine_category_description', 'medicine category description'),
(210, 'medicine_list', 'medicine list'),
(211, 'add_medicine', 'add medicine'),
(212, 'medicine_name', 'medicine name'),
(213, 'medicine_catogory', 'medicine catogory'),
(214, 'edit_medicine_category', 'edit medicine category'),
(215, 'edit_medicine', 'edit medicine'),
(216, 'laboratorist_dashboard', 'laboratorist dashboard,eo'),
(217, 'add_diagnosis_report', 'add diagnosis report'),
(218, 'report_status', 'report status'),
(219, 'add_diagnostic_report', 'add diagnostic report'),
(220, 'image', 'image'),
(221, 'doc', 'doc'),
(222, 'pdf', 'pdf'),
(223, 'excel', 'excel'),
(224, 'upload_document', 'upload document'),
(225, 'accountant_dashboard', 'accountant dashboard'),
(226, 'invoice / take_payment', 'invoice / take payment'),
(227, 'manage_invoice', 'manage invoice'),
(228, 'add_invoice', 'add invoice'),
(229, 'unpaid', 'unpaid'),
(230, 'take_cash_payment', 'take cash payment'),
(231, 'paid', 'paid'),
(232, 'edit_invoice', 'edit invoice'),
(233, 'edit_nurse', '');

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
CREATE TABLE IF NOT EXISTS `log` (
  `log_id` int(11) NOT NULL auto_increment,
  `type` longtext character set utf8 collate utf8_unicode_ci NOT NULL,
  `timestamp` int(11) NOT NULL,
  `user_type` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `description` longtext character set utf8 collate utf8_unicode_ci NOT NULL,
  `ip` longtext character set utf8 collate utf8_unicode_ci NOT NULL,
  `location` longtext character set utf8 collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`log_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=0 ;

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

DROP TABLE IF EXISTS `medicine`;
CREATE TABLE IF NOT EXISTS `medicine` (
  `medicine_id` int(11) NOT NULL auto_increment,
  `name` longtext collate utf8_unicode_ci NOT NULL,
  `medicine_category_id` int(11) NOT NULL,
  `description` longtext collate utf8_unicode_ci NOT NULL,
  `price` longtext collate utf8_unicode_ci NOT NULL,
  `manufacturing_company` longtext collate utf8_unicode_ci NOT NULL,
  `status` longtext collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`medicine_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=0 ;

-- --------------------------------------------------------

--
-- Table structure for table `medicine_category`
--

DROP TABLE IF EXISTS `medicine_category`;
CREATE TABLE IF NOT EXISTS `medicine_category` (
  `medicine_category_id` int(11) NOT NULL auto_increment,
  `name` longtext collate utf8_unicode_ci NOT NULL,
  `description` longtext collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`medicine_category_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=0 ;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
CREATE TABLE IF NOT EXISTS `message` (
  `message_id` int(11) NOT NULL,
  `message` longtext collate utf8_unicode_ci NOT NULL,
  `user_from_type` longtext collate utf8_unicode_ci NOT NULL,
  `user_from_id` int(11) NOT NULL,
  `user_to_type` longtext collate utf8_unicode_ci NOT NULL,
  `user_type_id` int(11) NOT NULL,
  `timestamp` longtext collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`message_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `noticeboard`
--

DROP TABLE IF EXISTS `noticeboard`;
CREATE TABLE IF NOT EXISTS `noticeboard` (
  `notice_id` int(11) NOT NULL auto_increment,
  `notice_title` longtext collate utf8_unicode_ci NOT NULL,
  `notice` longtext collate utf8_unicode_ci NOT NULL,
  `create_timestamp` int(11) NOT NULL,
  PRIMARY KEY  (`notice_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=0 ;

-- --------------------------------------------------------

--
-- Table structure for table `nurse`
--

DROP TABLE IF EXISTS `nurse`;
CREATE TABLE IF NOT EXISTS `nurse` (
  `nurse_id` int(11) NOT NULL auto_increment,
  `name` longtext character set utf8 collate utf8_unicode_ci NOT NULL,
  `email` longtext character set utf8 collate utf8_unicode_ci NOT NULL,
  `password` longtext character set utf8 collate utf8_unicode_ci NOT NULL,
  `address` longtext character set utf8 collate utf8_unicode_ci NOT NULL,
  `phone` longtext character set utf8 collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`nurse_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=0 ;

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
CREATE TABLE IF NOT EXISTS `patient` (
  `patient_id` int(11) NOT NULL auto_increment,
  `name` longtext collate utf8_unicode_ci NOT NULL,
  `email` longtext collate utf8_unicode_ci NOT NULL,
  `password` longtext collate utf8_unicode_ci NOT NULL,
  `address` longtext collate utf8_unicode_ci NOT NULL,
  `phone` longtext collate utf8_unicode_ci NOT NULL,
  `sex` longtext collate utf8_unicode_ci NOT NULL,
  `birth_date` longtext collate utf8_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  `blood_group` longtext collate utf8_unicode_ci NOT NULL,
  `account_opening_timestamp` int(11) NOT NULL,
  PRIMARY KEY  (`patient_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=0 ;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `payment_id` int(11) NOT NULL auto_increment,
  `payment_type` longtext collate utf8_unicode_ci NOT NULL,
  `transaction_id` longtext collate utf8_unicode_ci NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `method` longtext collate utf8_unicode_ci NOT NULL,
  `description` longtext collate utf8_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL,
  PRIMARY KEY  (`payment_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=0 ;

-- --------------------------------------------------------

--
-- Table structure for table `pharmacist`
--

DROP TABLE IF EXISTS `pharmacist`;
CREATE TABLE IF NOT EXISTS `pharmacist` (
  `pharmacist_id` int(11) NOT NULL auto_increment,
  `name` longtext character set utf8 collate utf8_unicode_ci NOT NULL,
  `email` longtext character set utf8 collate utf8_unicode_ci NOT NULL,
  `password` longtext character set utf8 collate utf8_unicode_ci NOT NULL,
  `address` longtext character set utf8 collate utf8_unicode_ci NOT NULL,
  `phone` longtext character set utf8 collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`pharmacist_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=0 ;

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

DROP TABLE IF EXISTS `prescription`;
CREATE TABLE IF NOT EXISTS `prescription` (
  `prescription_id` int(11) NOT NULL auto_increment,
  `creation_timestamp` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `case_history` longtext collate utf8_unicode_ci NOT NULL,
  `medication` longtext collate utf8_unicode_ci NOT NULL,
  `medication_from_pharmacist` longtext collate utf8_unicode_ci NOT NULL,
  `description` longtext collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`prescription_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=0 ;

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
CREATE TABLE IF NOT EXISTS `report` (
  `report_id` int(11) NOT NULL auto_increment,
  `type` longtext collate utf8_unicode_ci NOT NULL COMMENT 'operation,birth,death',
  `description` longtext collate utf8_unicode_ci NOT NULL,
  `timestamp` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  PRIMARY KEY  (`report_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=0 ;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `settings_id` int(11) NOT NULL auto_increment,
  `type` longtext character set utf8 collate utf8_unicode_ci NOT NULL,
  `description` longtext character set utf8 collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`settings_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=0 ;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`settings_id`, `type`, `description`) VALUES
(1, 'system_name', 'Bayanno Hospital Manager PRO'),
(2, 'system_email', 'info@hms.com'),
(3, 'system_title', 'Bayanno Hospital Mananagement System'),
(4, 'address', 'Dhaka, Bangladesh'),
(5, 'phone', ''),
(6, 'paypal_email', ''),
(7, 'currency', 'USD'),
(8, 'buyer', ''),
(9, 'purchase_code', ''),
(10, 'language', 'english'),
(11, 'text_align', 'left-to-right');