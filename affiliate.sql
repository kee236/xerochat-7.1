CREATE TABLE `affiliate_earning_history` (
  `id` int(11) NOT NULL,
  `affiliate_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `event` enum('signup','payment','recurring') NOT NULL,
  `amount` float NOT NULL,
  `event_date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `affiliate_forgot_password`
--

CREATE TABLE `affiliate_forgot_password` (
  `id` int(11) NOT NULL,
  `confirmation_code` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `success` int(11) NOT NULL DEFAULT 0,
  `expiration` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `affiliate_payment_settings`
--

CREATE TABLE `affiliate_payment_settings` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `signup_commission` enum('0','1') NOT NULL DEFAULT '0',
  `payment_commission` enum('0','1') NOT NULL DEFAULT '0',
  `payment_type` varchar(50) NOT NULL,
  `sign_up_amount` varchar(255) NOT NULL,
  `percentage` varchar(255) NOT NULL,
  `fixed_amount` varchar(255) NOT NULL,
  `is_recurring` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `affiliate_payment_settings`
--

INSERT INTO `affiliate_payment_settings` (`id`, `user_id`, `signup_commission`, `payment_commission`, `payment_type`, `sign_up_amount`, `percentage`, `fixed_amount`, `is_recurring`) VALUES
(1, 0, '1', '1', 'fixed', '.0', '', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `affiliate_users`
--

CREATE TABLE `affiliate_users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `username` varchar(255) NOT NULL,
  `profile_img` text NOT NULL,
  `activation_code` varchar(20) NOT NULL,
  `total_earn` double NOT NULL,
  `is_overwritten` enum('0','1') NOT NULL DEFAULT '0',
  `is_signup_commission` enum('0','1') NOT NULL DEFAULT '0',
  `signup_amount` varchar(100) NOT NULL,
  `is_payment` enum('0','1') NOT NULL DEFAULT '0',
  `payment_type` varchar(100) NOT NULL,
  `fixed_amount` varchar(255) NOT NULL,
  `percentage_amount` varchar(255) NOT NULL,
  `is_recurring` enum('0','1') NOT NULL DEFAULT '0',
  `last_login_at` datetime NOT NULL,
  `last_login_ip` varchar(30) NOT NULL,
  `add_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `affiliate_users`
--

INSERT INTO `affiliate_users` (`id`, `name`, `email`, `password`, `mobile`, `address`, `username`, `profile_img`, `activation_code`, `total_earn`, `is_overwritten`, `is_signup_commission`, `signup_amount`, `is_payment`, `payment_type`, `fixed_amount`, `percentage_amount`, `is_recurring`, `last_login_at`, `last_login_ip`, `add_date`, `status`) VALUES
(4, 'Gaxa_Affiliate', 'Info@gaxa-bot.com', '07fa63558df59ebfe357cabb0eed3e10', '0201118136665', '', 'Gaxa_Offical_Affiliate', '', '176666', 0, '0', '1', '.5', '1', 'fixed', '5', '', '0', '2021-04-17 00:23:20', '45.243.228.246', '2021-04-16 10:08:22', '1');

-- --------------------------------------------------------

--
-- Table structure for table `affiliate_visitors_action`
--

CREATE TABLE `affiliate_visitors_action` (
  `id` int(11) NOT NULL,
  `affiliate_id` int(11) NOT NULL,
  `type` enum('click','signup','payment') NOT NULL,
  `clicked_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL COMMENT 'visitors sign up id',
  `ip_address` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `affiliate_withdrawal_methods`
--

CREATE TABLE `affiliate_withdrawal_methods` (
  `id` int(11) NOT NULL,
  `affiliate_id` int(11) NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `paypal_email` varchar(150) NOT NULL,
  `bank_acc_no` text NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `affiliate_withdrawal_requests`
--

CREATE TABLE `affiliate_withdrawal_requests` (
  `id` int(11) NOT NULL,
  `affiliate_id` int(11) NOT NULL,
  `method_id` int(11) NOT NULL,
  `requested_amount` double NOT NULL,
  `request_status` enum('0','1','2') NOT NULL DEFAULT '0' COMMENT '0(pending),1(approved),2(canceled)',
  `created_at` datetime NOT NULL,
  `completed_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
