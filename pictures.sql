-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 07, 2013 at 11:48 PM
-- Server version: 5.0.90
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `kelseyj_gallery`
--

-- --------------------------------------------------------

--
-- Table structure for table `pictures`
--

CREATE TABLE IF NOT EXISTS `pictures` (
  `id` int(11) NOT NULL auto_increment,
  `parent_id` int(11) default NULL,
  `size` int(11) default NULL,
  `width` int(11) default NULL,
  `height` int(11) default NULL,
  `content_type` varchar(255) default NULL,
  `filename` varchar(255) default NULL,
  `thumbnail` varchar(255) default NULL,
  `title` varchar(255) default NULL,
  `date` varchar(255) default NULL,
  `medium` varchar(255) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `physical_height` varchar(255) default NULL,
  `physical_width` varchar(255) default NULL,
  `category_id` int(11) default NULL,
  `is_front_page` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=197 ;

--
-- Dumping data for table `pictures`
--

INSERT INTO `pictures` (`id`, `parent_id`, `size`, `width`, `height`, `content_type`, `filename`, `thumbnail`, `title`, `date`, `medium`, `created_at`, `updated_at`, `physical_height`, `physical_width`, `category_id`, `is_front_page`) VALUES
(13, NULL, 31154, 200, 153, 'image/jpeg', 'gobie_small_copy.jpg', NULL, 'Brain Coral Gobie', 'March 2008', 'Pencil', '2009-06-02 03:40:56', '2009-06-02 03:40:56', '1.5', '2', 2, 0),
(14, 13, 19040, 150, 115, 'image/jpeg', 'gobie_small_copy_medium.jpg', 'medium', NULL, NULL, NULL, '2009-06-02 03:40:56', '2009-06-02 03:40:56', NULL, NULL, NULL, 0),
(15, 13, 9531, 100, 77, 'image/jpeg', 'gobie_small_copy_small.jpg', 'small', NULL, NULL, NULL, '2009-06-02 03:40:56', '2009-06-02 03:40:56', NULL, NULL, NULL, 0),
(16, 13, 31146, 200, 153, 'image/jpeg', 'gobie_small_copy_large.jpg', 'large', NULL, NULL, NULL, '2009-06-02 03:40:56', '2009-06-02 03:40:56', NULL, NULL, NULL, 0),
(17, NULL, 29976, 152, 200, 'image/jpeg', 'clownfish_small_copy.jpg', NULL, 'Clownfish', 'March 2008', 'Pencil', '2009-06-02 03:42:10', '2009-06-02 03:42:10', '2', '1.5', 2, 0),
(18, 17, 19552, 114, 150, 'image/jpeg', 'clownfish_small_copy_medium.jpg', 'medium', NULL, NULL, NULL, '2009-06-02 03:42:10', '2009-06-02 03:42:10', NULL, NULL, NULL, 0),
(19, 17, 9910, 76, 100, 'image/jpeg', 'clownfish_small_copy_small.jpg', 'small', NULL, NULL, NULL, '2009-06-02 03:42:10', '2009-06-02 03:42:10', NULL, NULL, NULL, 0),
(20, 17, 30032, 152, 200, 'image/jpeg', 'clownfish_small_copy_large.jpg', 'large', NULL, NULL, NULL, '2009-06-02 03:42:10', '2009-06-02 03:42:10', NULL, NULL, NULL, 0),
(21, NULL, 29128, 196, 149, 'image/jpeg', 'lionfish_small_copy.jpg', NULL, 'Lionfish', 'March 2008', 'Pencil', '2009-06-02 03:46:25', '2009-06-02 03:46:25', '1.5', '2', 2, 0),
(22, 21, 19380, 150, 114, 'image/jpeg', 'lionfish_small_copy_medium.jpg', 'medium', NULL, NULL, NULL, '2009-06-02 03:46:25', '2009-06-02 03:46:25', NULL, NULL, NULL, 0),
(23, 21, 9665, 100, 76, 'image/jpeg', 'lionfish_small_copy_small.jpg', 'small', NULL, NULL, NULL, '2009-06-02 03:46:25', '2009-06-02 03:46:25', NULL, NULL, NULL, 0),
(24, 21, 29201, 196, 149, 'image/jpeg', 'lionfish_small_copy_large.jpg', 'large', NULL, NULL, NULL, '2009-06-02 03:46:25', '2009-06-02 03:46:25', NULL, NULL, NULL, 0),
(25, NULL, 31803, 200, 150, 'image/jpeg', 'octopus_small_copy.jpg', NULL, 'Octopus', 'March 2008', 'Pencil', '2009-06-02 03:47:39', '2009-06-02 05:13:49', '1.5', '2', 2, 1),
(26, 25, 18601, 150, 113, 'image/jpeg', 'octopus_small_copy_medium.jpg', 'medium', NULL, NULL, NULL, '2009-06-02 03:47:39', '2009-06-02 05:13:49', NULL, NULL, NULL, 0),
(27, 25, 9265, 100, 75, 'image/jpeg', 'octopus_small_copy_small.jpg', 'small', NULL, NULL, NULL, '2009-06-02 03:47:39', '2009-06-02 05:13:49', NULL, NULL, NULL, 0),
(28, 25, 31770, 200, 150, 'image/jpeg', 'octopus_small_copy_large.jpg', 'large', NULL, NULL, NULL, '2009-06-02 03:47:39', '2009-06-02 05:13:49', NULL, NULL, NULL, 0),
(29, NULL, 31882, 157, 200, 'image/jpeg', 'barracuda_small_copy.jpg', NULL, 'Barracuda', 'April 2008', 'Pencil', '2009-06-02 03:49:07', '2009-06-02 03:49:07', '2', '1.5', 2, 0),
(30, 29, 18532, 118, 150, 'image/jpeg', 'barracuda_small_copy_medium.jpg', 'medium', NULL, NULL, NULL, '2009-06-02 03:49:07', '2009-06-02 03:49:07', NULL, NULL, NULL, 0),
(31, 29, 8979, 79, 100, 'image/jpeg', 'barracuda_small_copy_small.jpg', 'small', NULL, NULL, NULL, '2009-06-02 03:49:07', '2009-06-02 03:49:07', NULL, NULL, NULL, 0),
(32, 29, 31881, 157, 200, 'image/jpeg', 'barracuda_small_copy_large.jpg', 'large', NULL, NULL, NULL, '2009-06-02 03:49:07', '2009-06-02 03:49:07', NULL, NULL, NULL, 0),
(37, NULL, 24436, 192, 144, 'image/jpeg', 'whales_small_copy.jpg', NULL, 'Humpack Whales', 'April 2008', 'Pencil', '2009-06-02 03:53:29', '2009-06-02 05:13:49', '1.5', '2', 2, 0),
(38, 37, 16700, 150, 113, 'image/jpeg', 'whales_small_copy_medium.jpg', 'medium', NULL, NULL, NULL, '2009-06-02 03:53:29', '2009-06-02 05:13:49', NULL, NULL, NULL, 0),
(39, 37, 8518, 100, 75, 'image/jpeg', 'whales_small_copy_small.jpg', 'small', NULL, NULL, NULL, '2009-06-02 03:53:29', '2009-06-02 05:13:49', NULL, NULL, NULL, 0),
(40, 37, 24470, 192, 144, 'image/jpeg', 'whales_small_copy_large.jpg', 'large', NULL, NULL, NULL, '2009-06-02 03:53:29', '2009-06-02 05:13:49', NULL, NULL, NULL, 0),
(41, NULL, 54901, 304, 232, 'image/jpeg', 'blackfishedited.jpg', NULL, 'Blackfish', 'June 2008', 'Pencil', '2009-06-02 04:02:21', '2009-06-02 04:02:21', '2', '1.5', 2, 0),
(42, 41, 15418, 150, 114, 'image/jpeg', 'blackfishedited_medium.jpg', 'medium', NULL, NULL, NULL, '2009-06-02 04:02:21', '2009-06-02 04:02:21', NULL, NULL, NULL, 0),
(43, 41, 7641, 100, 76, 'image/jpeg', 'blackfishedited_small.jpg', 'small', NULL, NULL, NULL, '2009-06-02 04:02:21', '2009-06-02 04:02:21', NULL, NULL, NULL, 0),
(44, 41, 55070, 304, 232, 'image/jpeg', 'blackfishedited_large.jpg', 'large', NULL, NULL, NULL, '2009-06-02 04:02:21', '2009-06-02 04:02:21', NULL, NULL, NULL, 0),
(49, NULL, 40343, 211, 159, 'image/jpeg', 'lobstersmall.jpg', NULL, 'Lobster', 'June 2008', 'Pencil', '2009-06-02 04:06:45', '2009-06-02 04:06:45', '1.5', '2', 2, 0),
(50, 49, 20653, 150, 113, 'image/jpeg', 'lobstersmall_medium.jpg', 'medium', NULL, NULL, NULL, '2009-06-02 04:06:45', '2009-06-02 04:06:45', NULL, NULL, NULL, 0),
(51, 49, 10344, 100, 75, 'image/jpeg', 'lobstersmall_small.jpg', 'small', NULL, NULL, NULL, '2009-06-02 04:06:45', '2009-06-02 04:06:45', NULL, NULL, NULL, 0),
(52, 49, 40186, 211, 159, 'image/jpeg', 'lobstersmall_large.jpg', 'large', NULL, NULL, NULL, '2009-06-02 04:06:45', '2009-06-02 04:06:45', NULL, NULL, NULL, 0),
(53, NULL, 25891, 276, 234, 'image/jpeg', 'seagull-small.jpg', NULL, 'Seagull', 'August 2008', 'Pencil', '2009-06-02 04:14:01', '2009-06-02 04:14:01', '2', '1.5', 2, 0),
(54, 53, 12144, 150, 127, 'image/jpeg', 'seagull-small_medium.jpg', 'medium', NULL, NULL, NULL, '2009-06-02 04:14:01', '2009-06-02 04:14:01', NULL, NULL, NULL, 0),
(55, 53, 6342, 100, 85, 'image/jpeg', 'seagull-small_small.jpg', 'small', NULL, NULL, NULL, '2009-06-02 04:14:01', '2009-06-02 04:14:01', NULL, NULL, NULL, 0),
(56, 53, 26215, 276, 234, 'image/jpeg', 'seagull-small_large.jpg', 'large', NULL, NULL, NULL, '2009-06-02 04:14:01', '2009-06-02 04:14:01', NULL, NULL, NULL, 0),
(57, NULL, 35222, 310, 243, 'image/jpeg', 'sandpiper-small.jpg', NULL, 'Sandpiper', 'August 2008', 'Pencil', '2009-06-02 04:17:13', '2009-06-02 04:17:13', '1.5', '2', 2, 0),
(58, 57, 12589, 150, 118, 'image/jpeg', 'sandpiper-small_medium.jpg', 'medium', NULL, NULL, NULL, '2009-06-02 04:17:13', '2009-06-02 04:17:13', NULL, NULL, NULL, 0),
(59, 57, 6372, 100, 78, 'image/jpeg', 'sandpiper-small_small.jpg', 'small', NULL, NULL, NULL, '2009-06-02 04:17:13', '2009-06-02 04:17:13', NULL, NULL, NULL, 0),
(60, 57, 35528, 310, 243, 'image/jpeg', 'sandpiper-small_large.jpg', 'large', NULL, NULL, NULL, '2009-06-02 04:17:13', '2009-06-02 04:17:13', NULL, NULL, NULL, 0),
(61, NULL, 30881, 228, 279, 'image/jpeg', 'rose-small.jpg', NULL, 'Sitka Rose', 'August 2008', 'Pencil', '2009-06-02 04:19:30', '2009-06-02 04:19:30', '2', '1.5', 2, 0),
(62, 61, 13896, 123, 150, 'image/jpeg', 'rose-small_medium.jpg', 'medium', NULL, NULL, NULL, '2009-06-02 04:19:30', '2009-06-02 04:19:30', NULL, NULL, NULL, 0),
(63, 61, 7245, 82, 100, 'image/jpeg', 'rose-small_small.jpg', 'small', NULL, NULL, NULL, '2009-06-02 04:19:30', '2009-06-02 04:19:30', NULL, NULL, NULL, 0),
(64, 61, 31176, 228, 279, 'image/jpeg', 'rose-small_large.jpg', 'large', NULL, NULL, NULL, '2009-06-02 04:19:30', '2009-06-02 04:19:30', NULL, NULL, NULL, 0),
(65, NULL, 31924, 321, 264, 'image/jpeg', 'rose-2.jpg', NULL, 'Sitka Rose 2', 'May 2009', 'Pencil', '2009-06-02 04:27:51', '2009-06-02 04:27:51', '1.5', '2', 2, 0),
(66, 65, 10765, 150, 123, 'image/jpeg', 'rose-2_medium.jpg', 'medium', NULL, NULL, NULL, '2009-06-02 04:27:51', '2009-06-02 04:27:51', NULL, NULL, NULL, 0),
(67, 65, 5811, 100, 82, 'image/jpeg', 'rose-2_small.jpg', 'small', NULL, NULL, NULL, '2009-06-02 04:27:51', '2009-06-02 04:27:51', NULL, NULL, NULL, 0),
(68, 65, 32089, 321, 264, 'image/jpeg', 'rose-2_large.jpg', 'large', NULL, NULL, NULL, '2009-06-02 04:27:51', '2009-06-02 04:27:51', NULL, NULL, NULL, 0),
(69, NULL, 46545, 312, 310, 'image/jpeg', 'bluejay_small.jpg', NULL, 'Bluejay', 'August 2008', 'Pencil', '2009-06-02 04:29:28', '2009-06-02 04:29:28', '1.5', '1.5', 2, 0),
(70, 69, 12424, 150, 149, 'image/jpeg', 'bluejay_small_medium.jpg', 'medium', NULL, NULL, NULL, '2009-06-02 04:29:28', '2009-06-02 04:29:28', NULL, NULL, NULL, 0),
(71, 69, 6083, 100, 99, 'image/jpeg', 'bluejay_small_small.jpg', 'small', NULL, NULL, NULL, '2009-06-02 04:29:28', '2009-06-02 04:29:28', NULL, NULL, NULL, 0),
(72, 69, 47098, 312, 310, 'image/jpeg', 'bluejay_small_large.jpg', 'large', NULL, NULL, NULL, '2009-06-02 04:29:28', '2009-06-02 04:29:28', NULL, NULL, NULL, 0),
(73, NULL, 37177, 389, 360, 'image/jpeg', 'jellyfish038.jpg', NULL, 'Jellyfish', 'May 2008', 'Pencil', '2009-06-02 04:41:08', '2009-06-02 04:41:08', '4', '4', 4, 0),
(74, 73, 37251, 389, 360, 'image/jpeg', 'jellyfish038_large.jpg', 'large', NULL, NULL, NULL, '2009-06-02 04:41:08', '2009-06-02 04:41:08', NULL, NULL, NULL, 0),
(75, 73, 8219, 150, 139, 'image/jpeg', 'jellyfish038_medium.jpg', 'medium', NULL, NULL, NULL, '2009-06-02 04:41:08', '2009-06-02 04:41:08', NULL, NULL, NULL, 0),
(76, 73, 4381, 100, 93, 'image/jpeg', 'jellyfish038_small.jpg', 'small', NULL, NULL, NULL, '2009-06-02 04:41:08', '2009-06-02 04:41:08', NULL, NULL, NULL, 0),
(77, NULL, 166484, 500, 418, 'image/jpeg', 'lpdrawing_small.jpg', NULL, 'Sitka Seaside', 'July 2008', 'Pencil', '2009-06-02 04:50:17', '2009-06-02 04:50:17', '3.5', '5', 4, 0),
(78, 77, 130357, 450, 376, 'image/jpeg', 'lpdrawing_small_large.jpg', 'large', NULL, NULL, NULL, '2009-06-02 04:50:17', '2009-06-02 04:50:17', NULL, NULL, NULL, 0),
(79, 77, 15321, 150, 125, 'image/jpeg', 'lpdrawing_small_medium.jpg', 'medium', NULL, NULL, NULL, '2009-06-02 04:50:17', '2009-06-02 04:50:17', NULL, NULL, NULL, 0),
(80, 77, 7554, 100, 84, 'image/jpeg', 'lpdrawing_small_small.jpg', 'small', NULL, NULL, NULL, '2009-06-02 04:50:17', '2009-06-02 04:50:17', NULL, NULL, NULL, 0),
(85, NULL, 180225, 500, 358, 'image/jpeg', 'butterflyfish037.jpg', NULL, 'Butterflyfish', 'November 2008', 'Acrylic on Canvas', '2009-06-02 05:11:34', '2009-06-02 05:11:34', '5', '7', 5, 0),
(86, 85, 135796, 450, 322, 'image/jpeg', 'butterflyfish037_large.jpg', 'large', NULL, NULL, NULL, '2009-06-02 05:11:34', '2009-06-02 05:11:34', NULL, NULL, NULL, 0),
(87, 85, 17236, 150, 107, 'image/jpeg', 'butterflyfish037_medium.jpg', 'medium', NULL, NULL, NULL, '2009-06-02 05:11:34', '2009-06-02 05:11:34', NULL, NULL, NULL, 0),
(88, 85, 8633, 100, 72, 'image/jpeg', 'butterflyfish037_small.jpg', 'small', NULL, NULL, NULL, '2009-06-02 05:11:34', '2009-06-02 05:11:34', NULL, NULL, NULL, 0),
(101, NULL, 81427, 357, 500, 'image/jpeg', '_MG_0069edited.jpg', NULL, 'African Woman (front)', 'November 2006', 'Clay', '2009-06-30 04:09:24', '2009-06-30 04:09:24', '12', '10', 7, 0),
(102, 101, 9696, 107, 150, 'image/jpeg', '_MG_0069edited_medium.jpg', 'medium', NULL, NULL, NULL, '2009-06-30 04:09:24', '2009-06-30 04:09:24', NULL, NULL, NULL, 0),
(103, 101, 4890, 71, 100, 'image/jpeg', '_MG_0069edited_small.jpg', 'small', NULL, NULL, NULL, '2009-06-30 04:09:24', '2009-06-30 04:09:24', NULL, NULL, NULL, 0),
(104, 101, 74873, 321, 450, 'image/jpeg', '_MG_0069edited_large.jpg', 'large', NULL, NULL, NULL, '2009-06-30 04:09:24', '2009-06-30 04:09:24', NULL, NULL, NULL, 0),
(105, NULL, 180503, 500, 700, 'image/jpeg', '_MG_0070edited.jpg', NULL, 'African Woman (side)', 'November 2006', 'Clay', '2009-06-30 04:10:15', '2009-06-30 04:11:05', '12', '10', 7, 0),
(106, 105, 9989, 107, 150, 'image/jpeg', '_MG_0070edited_medium.jpg', 'medium', NULL, NULL, NULL, '2009-06-30 04:10:15', '2009-06-30 04:11:05', NULL, NULL, NULL, 0),
(107, 105, 5046, 71, 100, 'image/jpeg', '_MG_0070edited_small.jpg', 'small', NULL, NULL, NULL, '2009-06-30 04:10:16', '2009-06-30 04:11:05', NULL, NULL, NULL, 0),
(108, 105, 82099, 321, 450, 'image/jpeg', '_MG_0070edited_large.jpg', 'large', NULL, NULL, NULL, '2009-06-30 04:10:16', '2009-06-30 04:11:05', NULL, NULL, NULL, 0),
(109, NULL, 162801, 500, 700, 'image/jpeg', '_MG_0073edited.jpg', NULL, 'African Woman (back)', 'November 2006', 'Clay', '2009-06-30 04:12:03', '2009-06-30 04:12:03', '12', '10', 7, 0),
(110, 109, 9757, 107, 150, 'image/jpeg', '_MG_0073edited_medium.jpg', 'medium', NULL, NULL, NULL, '2009-06-30 04:12:03', '2009-06-30 04:12:03', NULL, NULL, NULL, 0),
(111, 109, 5027, 71, 100, 'image/jpeg', '_MG_0073edited_small.jpg', 'small', NULL, NULL, NULL, '2009-06-30 04:12:03', '2009-06-30 04:12:03', NULL, NULL, NULL, 0),
(112, 109, 77832, 321, 450, 'image/jpeg', '_MG_0073edited_large.jpg', 'large', NULL, NULL, NULL, '2009-06-30 04:12:03', '2009-06-30 04:12:03', NULL, NULL, NULL, 0),
(113, NULL, 101138, 500, 333, 'image/jpeg', '_MG_0075edited.jpg', NULL, 'Abstract Octopus', 'October 2006', 'Aluminum', '2009-06-30 04:30:27', '2009-06-30 04:30:27', '8', '15', 7, 0),
(114, 113, 10073, 150, 100, 'image/jpeg', '_MG_0075edited_medium.jpg', 'medium', NULL, NULL, NULL, '2009-06-30 04:30:27', '2009-06-30 04:30:27', NULL, NULL, NULL, 0),
(115, 113, 5397, 100, 67, 'image/jpeg', '_MG_0075edited_small.jpg', 'small', NULL, NULL, NULL, '2009-06-30 04:30:27', '2009-06-30 04:30:27', NULL, NULL, NULL, 0),
(116, 113, 78785, 450, 300, 'image/jpeg', '_MG_0075edited_large.jpg', 'large', NULL, NULL, NULL, '2009-06-30 04:30:27', '2009-06-30 04:30:27', NULL, NULL, NULL, 0),
(117, NULL, 197022, 500, 497, 'image/jpeg', '_MG_0076edited.jpg', NULL, 'Fractilian Doodle', 'September 2004', 'Cut Paper', '2009-06-30 05:20:29', '2009-06-30 05:29:23', '11', '11', 6, 0),
(118, 117, 31219, 150, 149, 'image/jpeg', '_MG_0076edited_medium.jpg', 'medium', NULL, NULL, NULL, '2009-06-30 05:20:29', '2009-06-30 05:29:23', NULL, NULL, NULL, 0),
(119, 117, 16100, 100, 99, 'image/jpeg', '_MG_0076edited_small.jpg', 'small', NULL, NULL, NULL, '2009-06-30 05:20:29', '2009-06-30 05:29:23', NULL, NULL, NULL, 0),
(120, 117, 173723, 450, 447, 'image/jpeg', '_MG_0076edited_large.jpg', 'large', NULL, NULL, NULL, '2009-06-30 05:20:29', '2009-06-30 05:29:23', NULL, NULL, NULL, 0),
(121, NULL, 223199, 500, 499, 'image/jpeg', '_MG_0077edited.jpg', NULL, 'Driving in the Rain', 'September 2004', 'Acrylic', '2009-06-30 05:24:17', '2009-06-30 05:24:17', '11', '11', 6, 0),
(122, 121, 30698, 150, 150, 'image/jpeg', '_MG_0077edited_medium.jpg', 'medium', NULL, NULL, NULL, '2009-06-30 05:24:17', '2009-06-30 05:24:17', NULL, NULL, NULL, 0),
(123, 121, 15129, 100, 100, 'image/jpeg', '_MG_0077edited_small.jpg', 'small', NULL, NULL, NULL, '2009-06-30 05:24:17', '2009-06-30 05:24:17', NULL, NULL, NULL, 0),
(124, 121, 191085, 450, 449, 'image/jpeg', '_MG_0077edited_large.jpg', 'large', NULL, NULL, NULL, '2009-06-30 05:24:17', '2009-06-30 05:24:17', NULL, NULL, NULL, 0),
(125, NULL, 128374, 500, 401, 'image/jpeg', '_MG_0579edited2.jpg', NULL, 'Abstract 1', 'February 2008', 'India Ink', '2009-07-01 04:07:25', '2009-07-01 04:07:25', '18', '24', 6, 0),
(126, 125, 15425, 150, 120, 'image/jpeg', '_MG_0579edited2_medium.jpg', 'medium', NULL, NULL, NULL, '2009-07-01 04:07:25', '2009-07-01 04:07:25', NULL, NULL, NULL, 0),
(127, 125, 8336, 100, 80, 'image/jpeg', '_MG_0579edited2_small.jpg', 'small', NULL, NULL, NULL, '2009-07-01 04:07:25', '2009-07-01 04:07:25', NULL, NULL, NULL, 0),
(128, 125, 103093, 450, 361, 'image/jpeg', '_MG_0579edited2_large.jpg', 'large', NULL, NULL, NULL, '2009-07-01 04:07:25', '2009-07-01 04:07:25', NULL, NULL, NULL, 0),
(129, NULL, 122878, 500, 375, 'image/jpeg', '_MG_0581edited3.jpg', NULL, 'Abstract 2', 'February 2008', 'Charcoal, ContÃ©, Acrylic', '2009-07-01 04:17:43', '2009-07-01 04:17:43', '18', '24', 6, 0),
(130, 129, 13050, 150, 113, 'image/jpeg', '_MG_0581edited3_medium.jpg', 'medium', NULL, NULL, NULL, '2009-07-01 04:17:43', '2009-07-01 04:17:43', NULL, NULL, NULL, 0),
(131, 129, 6500, 100, 75, 'image/jpeg', '_MG_0581edited3_small.jpg', 'small', NULL, NULL, NULL, '2009-07-01 04:17:43', '2009-07-01 04:17:43', NULL, NULL, NULL, 0),
(132, 129, 98722, 450, 338, 'image/jpeg', '_MG_0581edited3_large.jpg', 'large', NULL, NULL, NULL, '2009-07-01 04:17:43', '2009-07-01 04:17:43', NULL, NULL, NULL, 0),
(133, NULL, 122953, 270, 750, 'image/jpeg', '_MG_0121edured.jpg', NULL, 'Self-Portrait', 'May 2008', 'Pencil', '2009-07-11 22:42:40', '2009-07-11 22:42:40', '71', '24', 4, 0),
(134, 133, 6613, 54, 150, 'image/jpeg', '_MG_0121edured_medium.jpg', 'medium', NULL, NULL, NULL, '2009-07-11 22:42:40', '2009-07-11 22:42:40', NULL, NULL, NULL, 0),
(135, 133, 3675, 36, 100, 'image/jpeg', '_MG_0121edured_small.jpg', 'small', NULL, NULL, NULL, '2009-07-11 22:42:40', '2009-07-11 22:42:40', NULL, NULL, NULL, 0),
(136, 133, 46509, 162, 450, 'image/jpeg', '_MG_0121edured_large.jpg', 'large', NULL, NULL, NULL, '2009-07-11 22:42:40', '2009-07-11 22:42:40', NULL, NULL, NULL, 0),
(137, NULL, 217250, 500, 731, 'image/jpeg', '_MG_0122edited.jpg', NULL, 'Self-Portrait (Detail 1)', 'May 2008', 'Pencil', '2009-07-11 22:44:49', '2009-07-11 22:44:49', '71', '24', 4, 0),
(138, 137, 12408, 103, 150, 'image/jpeg', '_MG_0122edited_medium.jpg', 'medium', NULL, NULL, NULL, '2009-07-11 22:44:49', '2009-07-11 22:44:49', NULL, NULL, NULL, 0),
(139, 137, 6585, 68, 100, 'image/jpeg', '_MG_0122edited_small.jpg', 'small', NULL, NULL, NULL, '2009-07-11 22:44:49', '2009-07-11 22:44:49', NULL, NULL, NULL, 0),
(140, 137, 92008, 308, 450, 'image/jpeg', '_MG_0122edited_large.jpg', 'large', NULL, NULL, NULL, '2009-07-11 22:44:49', '2009-07-11 22:44:49', NULL, NULL, NULL, 0),
(157, NULL, 121927, 500, 333, 'image/jpeg', '_MG_0124edited.jpg', NULL, 'Self-Portrait (Detail 2)', 'May 2008', 'Pencil', '2009-07-11 22:55:52', '2009-07-11 22:55:52', '71', '24', 4, 0),
(158, 157, 11848, 150, 100, 'image/jpeg', '_MG_0124edited_medium.jpg', 'medium', NULL, NULL, NULL, '2009-07-11 22:55:52', '2009-07-11 22:55:52', NULL, NULL, NULL, 0),
(159, 157, 6134, 100, 67, 'image/jpeg', '_MG_0124edited_small.jpg', 'small', NULL, NULL, NULL, '2009-07-11 22:55:52', '2009-07-11 22:55:52', NULL, NULL, NULL, 0),
(160, 157, 94716, 450, 300, 'image/jpeg', '_MG_0124edited_large.jpg', 'large', NULL, NULL, NULL, '2009-07-11 22:55:52', '2009-07-11 22:55:52', NULL, NULL, NULL, 0),
(161, NULL, 119265, 500, 320, 'image/jpeg', '_MG_0125edited.jpg', NULL, 'Self-Portrait (Detail 3)', 'May 2008', 'Pencil', '2009-07-11 22:56:48', '2009-07-11 22:56:48', '71', '24', 4, 0),
(162, 161, 10845, 150, 96, 'image/jpeg', '_MG_0125edited_medium.jpg', 'medium', NULL, NULL, NULL, '2009-07-11 22:56:48', '2009-07-11 22:56:48', NULL, NULL, NULL, 0),
(163, 161, 5439, 100, 64, 'image/jpeg', '_MG_0125edited_small.jpg', 'small', NULL, NULL, NULL, '2009-07-11 22:56:48', '2009-07-11 22:56:48', NULL, NULL, NULL, 0),
(164, 161, 91894, 450, 288, 'image/jpeg', '_MG_0125edited_large.jpg', 'large', NULL, NULL, NULL, '2009-07-11 22:56:48', '2009-07-11 22:56:48', NULL, NULL, NULL, 0),
(165, NULL, 232714, 500, 749, 'image/jpeg', '_MG_0126edited.jpg', NULL, 'Self-Portrait (Detail 4)', 'May 2008', 'Pencil', '2009-07-11 22:57:45', '2009-07-11 22:57:45', '71', '24', 4, 0),
(166, 165, 11170, 100, 150, 'image/jpeg', '_MG_0126edited_medium.jpg', 'medium', NULL, NULL, NULL, '2009-07-11 22:57:45', '2009-07-11 22:57:45', NULL, NULL, NULL, 0),
(167, 165, 5812, 67, 100, 'image/jpeg', '_MG_0126edited_small.jpg', 'small', NULL, NULL, NULL, '2009-07-11 22:57:45', '2009-07-11 22:57:45', NULL, NULL, NULL, 0),
(168, 165, 89536, 300, 450, 'image/jpeg', '_MG_0126edited_large.jpg', 'large', NULL, NULL, NULL, '2009-07-11 22:57:46', '2009-07-11 22:57:46', NULL, NULL, NULL, 0),
(173, NULL, 361136, 500, 431, 'image/png', 'big_whales_final600_small.png', NULL, 'Humpback Whales II', 'September 2009', 'Pencil', '2009-10-30 06:07:36', '2009-10-30 06:07:36', '5.5', '5.5', 4, 0),
(174, 173, 289545, 450, 388, 'image/png', 'big_whales_final600_small_large.png', 'large', NULL, NULL, NULL, '2009-10-30 06:07:36', '2009-10-30 06:07:36', NULL, NULL, NULL, 0),
(175, 173, 32284, 150, 129, 'image/png', 'big_whales_final600_small_medium.png', 'medium', NULL, NULL, NULL, '2009-10-30 06:07:36', '2009-10-30 06:07:36', NULL, NULL, NULL, 0),
(176, 173, 14474, 100, 86, 'image/png', 'big_whales_final600_small_small.png', 'small', NULL, NULL, NULL, '2009-10-30 06:07:36', '2009-10-30 06:07:36', NULL, NULL, NULL, 0),
(181, NULL, 122976, 500, 396, 'image/gif', 'kelp-crab-350.gif', NULL, 'Kelp Crab', 'August 2010', 'Pencil', '2010-12-15 04:50:18', '2010-12-16 00:03:34', '4', '5.5', 4, 0),
(182, 181, 122976, 450, 356, 'image/gif', 'kelp-crab-350_large.gif', 'large', NULL, NULL, NULL, '2010-12-15 04:50:19', '2010-12-15 04:50:19', NULL, NULL, NULL, 0),
(183, 181, 122976, 150, 119, 'image/gif', 'kelp-crab-350_medium.gif', 'medium', NULL, NULL, NULL, '2010-12-15 04:50:19', '2010-12-15 04:50:19', NULL, NULL, NULL, 0),
(184, 181, 122976, 100, 79, 'image/gif', 'kelp-crab-350_small.gif', 'small', NULL, NULL, NULL, '2010-12-15 04:50:19', '2010-12-15 04:50:19', NULL, NULL, NULL, 0),
(185, NULL, 219099, 500, 393, 'image/gif', 'big-octopus-small.gif', NULL, 'Octopus II', 'November 2009', 'Pencil', '2010-12-15 04:52:16', '2010-12-15 04:52:16', '5', '3.5', 4, 0),
(186, 185, 91205, 450, 354, 'image/gif', 'big-octopus-small_large.gif', 'large', NULL, NULL, NULL, '2010-12-15 04:52:17', '2010-12-15 04:52:17', NULL, NULL, NULL, 0),
(187, 185, 91205, 150, 118, 'image/gif', 'big-octopus-small_medium.gif', 'medium', NULL, NULL, NULL, '2010-12-15 04:52:17', '2010-12-15 04:52:17', NULL, NULL, NULL, 0),
(188, 185, 91205, 100, 79, 'image/gif', 'big-octopus-small_small.gif', 'small', NULL, NULL, NULL, '2010-12-15 04:52:17', '2010-12-15 04:52:17', NULL, NULL, NULL, 0),
(189, NULL, 56591, 250, 189, 'image/gif', 'wolf-eel-small.gif', NULL, 'Wolf Eel', 'June 2010', 'Pencil', '2010-12-15 04:53:43', '2010-12-15 04:53:43', '2', '1.5', 2, 0),
(190, 189, 56583, 250, 189, 'image/gif', 'wolf-eel-small_large.gif', 'large', NULL, NULL, NULL, '2010-12-15 04:53:43', '2010-12-15 04:53:43', NULL, NULL, NULL, 0),
(191, 189, 56583, 150, 113, 'image/gif', 'wolf-eel-small_medium.gif', 'medium', NULL, NULL, NULL, '2010-12-15 04:53:44', '2010-12-15 04:53:44', NULL, NULL, NULL, 0),
(192, 189, 56583, 100, 76, 'image/gif', 'wolf-eel-small_small.gif', 'small', NULL, NULL, NULL, '2010-12-15 04:53:44', '2010-12-15 04:53:44', NULL, NULL, NULL, 0),
(193, NULL, 49340, 250, 187, 'image/gif', 'salmon-small.gif', NULL, 'Salmon Run', 'June 2010', 'Pencil', '2010-12-15 04:55:03', '2010-12-15 04:55:03', '2', '1.5', 2, 0),
(194, 193, 49332, 250, 187, 'image/gif', 'salmon-small_large.gif', 'large', NULL, NULL, NULL, '2010-12-15 04:55:03', '2010-12-15 04:55:03', NULL, NULL, NULL, 0),
(195, 193, 49332, 150, 112, 'image/gif', 'salmon-small_medium.gif', 'medium', NULL, NULL, NULL, '2010-12-15 04:55:04', '2010-12-15 04:55:04', NULL, NULL, NULL, 0),
(196, 193, 49332, 100, 75, 'image/gif', 'salmon-small_small.gif', 'small', NULL, NULL, NULL, '2010-12-15 04:55:04', '2010-12-15 04:55:04', NULL, NULL, NULL, 0);
