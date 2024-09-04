-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 04, 2024 at 07:37 AM
-- Server version: 10.11.6-MariaDB-0+deb12u1-log
-- PHP Version: 8.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Db_Gaxa-Bot_master`
--

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int(11) NOT NULL,
  `module_name` varchar(250) DEFAULT NULL,
  `add_ons_id` int(11) NOT NULL,
  `extra_text` varchar(50) NOT NULL DEFAULT 'month',
  `limit_enabled` enum('0','1') NOT NULL DEFAULT '1',
  `bulk_limit_enabled` enum('0','1') NOT NULL DEFAULT '0',
  `deleted` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `module_name`, `add_ons_id`, `extra_text`, `limit_enabled`, `bulk_limit_enabled`, `deleted`) VALUES
(33, 'Social Poster - Account Import : Youtube', 0, '', '1', '0', '0'),
(65, 'Facebook Accounts', 0, '', '1', '0', '0'),
(66, 'Facebook Pages - Subscribers/Page', 0, '', '1', '0', '0'),
(78, 'Subscriber Manager : Background Lead Scan', 0, '', '0', '0', '0'),
(79, 'Conversation Promo Broadcast Send', 0, 'month', '1', '1', '0'),
(80, 'Comment Automation : Auto Reply Posts', 0, 'month', '1', '0', '0'),
(82, 'Inbox Conversation Manager', 0, '', '0', '0', '0'),
(100, 'Social Poster - Access', 0, '', '0', '0', '0'),
(101, 'Social Poster - Account Import : Pinterest', 0, '', '1', '0', '0'),
(102, 'Social Poster - Account Import : Twitter', 0, '', '1', '0', '0'),
(103, 'Social Poster - Account Import :  Linkedin', 0, '', '1', '0', '0'),
(105, 'Social Poster - Account Import : Reddit', 0, '', '1', '0', '0'),
(107, 'Social Poster - Account Import : Blogger', 0, '', '1', '0', '0'),
(108, 'Social Poster - Account Import :  WordPress', 0, '', '1', '0', '0'),
(109, 'Social Poster - Account Import :  WordPress (Self hosted) ', 0, '', '1', '0', '0'),
(110, 'Social Poster - Text Post', 0, 'month', '1', '1', '0'),
(111, 'Social Poster - Image Post', 0, 'month', '1', '1', '0'),
(112, 'Social Poster - Video Post', 0, 'month', '1', '1', '0'),
(113, 'Social Poster - Link Post', 0, 'month', '1', '1', '0'),
(114, 'Social Poster - HTML Post', 0, 'month', '1', '1', '0'),
(197, 'Messenger Bot - Persistent Menu', 0, '', '0', '0', '0'),
(198, 'Messenger Bot - Persistent Menu : Copyright Enabled', 0, '', '0', '0', '0'),
(199, 'Messenger Bot', 0, '', '0', '0', '0'),
(200, 'Facebook Pages', 0, '', '1', '0', '0'),
(220, 'Facebook Posting : CTA Post', 0, 'month', '1', '0', '0'),
(222, 'Facebook Posting : Carousel/Slider Post', 0, 'month', '1', '0', '0'),
(223, 'Facebook Posting :  Text/Image/Link/Video Post', 0, 'month', '1', '0', '0'),
(251, 'Comment Automation : Auto Comment Campaign', 0, '', '1', '0', '0'),
(256, 'RSS Auto Posting', 0, '', '1', '0', '0'),
(257, 'Messenger Bot : Export, Import & Tree View', 0, '', '1', '', '0'),
(263, 'Email Broadcast - Email Send', 0, 'month', '1', '0', '0'),
(264, 'SMS Broadcast - SMS Send', 0, 'month', '1', '0', '0'),
(265, 'Messenger Bot - Email Auto Responder', 0, '', '1', '0', '0'),
(267, 'Utility Search Tools', 0, 'month', '1', '0', '0'),
(268, 'Messenger E-commerce', 0, '', '1', '0', '0'),
(275, 'One Time Notification Send', 0, 'month', '1', '0', '0'),
(277, 'Social Poster - Account Import :  Medium', 0, '', '1', '0', '0'),
(279, 'Instagram Auto Comment Reply Enable Post', 0, 'month', '1', '0', '0'),
(296, 'Instagram Posting : Image/Video Post', 0, 'month', '1', '1', '0'),
(310, 'Whatsapp Send Order', 4, '', '0', '0', '0'),
(315, 'Visual Flow Builder', 2, '', '1', '0', '0'),
(317, 'E-commerce Related Products', 5, '', '1', '0', '0'),
(318, 'Messenger Bot - Connectivity : JSON API', 6, '', '1', '0', '0'),
(319, 'Messenger Bot - Connectivity : Webview Builder', 6, '', '1', '0', '0'),
(320, 'Instagram Bot', 3, 'month', '1', '0', '0'),
(321, 'Visual flow builder access', 2, '', '', '', '0'),
(322, 'Visual flow builder access', 2, '', '', '', '0'),
(324, 'Hidden Interest Explorer', 30, '', '1', '0', '0'),
(325, 'Hidden Interest Explorer', 30, '', '1', '0', '0'),
(326, 'Messenger Bot - Connectivity : JSON API', 27, '', '1', '0', '0'),
(327, 'Messenger Bot - Connectivity : Webview Builder', 27, '', '1', '0', '0'),
(328, 'User Input Flow Campaign', 28, 'month', '1', '0', '0'),
(329, 'Messenger Bot - Enhancers : Broadcast : Subscriber Bulk Message Send', 29, 'month', '1', '1', '0'),
(330, 'Messenger Bot - Enhancers : Engagement : Checkbox Plugin', 29, '', '1', '0', '0'),
(331, 'Messenger Bot - Enhancers : Engagement : Send to Messenger', 29, '', '1', '0', '0'),
(332, 'Messenger Bot - Enhancers : Engagement : m.me Links', 29, '', '1', '0', '0'),
(333, 'Messenger Bot - Enhancers : Engagement : Customer Chat Plugin', 29, '', '1', '0', '0'),
(334, 'Messenger Bot - Enhancers : Sequence Messaging : Message Send', 29, '', '1', '0', '0'),
(335, 'Messenger Bot - Enhancers : Sequence Messaging Campaign', 29, '', '1', '0', '0'),
(336, 'To Do List / Kanban', 30, '', '0', '0', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=353;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;