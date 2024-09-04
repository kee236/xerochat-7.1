

--
-- Table structure for table `add_ons`
--

CREATE TABLE `add_ons` (
  `id` int(11) NOT NULL,
  `add_on_name` varchar(255) NOT NULL,
  `unique_name` varchar(255) NOT NULL,
  `version` varchar(255) NOT NULL,
  `installed_at` datetime NOT NULL,
  `update_at` datetime NOT NULL,
  `purchase_code` varchar(100) NOT NULL,
  `module_folder_name` varchar(255) NOT NULL,
  `project_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `add_ons`
--

INSERT INTO `add_ons` (`id`, `add_on_name`, `unique_name`, `version`, `installed_at`, `update_at`, `purchase_code`, `module_folder_name`, `project_id`) VALUES
(1, 'Facebook Poster', 'ultrapost', '1.0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'ultrapost', 19),
(2, 'Visual Flow Builder', 'visual_flow_builder', '1.6.9', '2022-01-19 12:00:00', '2022-01-19 12:00:00', '', 'visual_flow_builder', 59),
(3, 'Instagram Bot & Private Reply', 'instagram_bot', '1.0', '2022-01-19 12:00:00', '2022-01-19 12:00:00', '', 'instagram_bot', 62),
(4, 'Whatsapp Order Send', 'whatsapp_order_send', '1.1', '2021-07-27 01:19:13', '0000-00-00 00:00:00', 'r0306292628833360ff42', 'whatsapp_order_send', 58),
(5, 'E-commerce Related Products', 'ecommerce_related_products', '1.0', '2021-07-27 01:23:04', '0000-00-00 00:00:00', 'r03062123194079260ff4', 'ecommerce_related_products', 61),
(6, 'Affiliate Manager', 'affiliate_system', '1.1', '2021-03-22 19:54:10', '0000-00-00 00:00:00', 'r0306211058160156058d', 'affiliate_system', 57),
(7, 'Facebook Group Poster', 'facebook_group_poster', '1.0', '2021-03-23 01:05:53', '0000-00-00 00:00:00', 'r03062185445456605922', 'facebook_group_poster', 32),
(8, 'Flowbuilder Insignt', 'message_sent_stat', '1.0', '2021-07-27 01:23:04', '0000-00-00 00:00:00', 'r03062123194079260ff4', 'message_sent_stat', 64),
(10, 'API Documentation', 'api_documentation', '2.0', '2021-07-27 01:23:04', '0000-00-00 00:00:00', 'r03062123194079260ff4', 'api', 46),
(11, 'Blog', 'blog', '1.0', '2021-07-27 01:23:04', '0000-00-00 00:00:00', '', 'blog', 0),
(12, 'Comment Automation : Auto Reply Posts', 'comment_automation_auto_reply_posts', '1.0', '2023-08-30 14:22:00', '2023-08-30 14:22:00', '', 'comment_automation_auto_reply_posts', 1),
(13, 'Conversation Promo Broadcast Send', 'conversation_promo_broadcast_send', '1.0', '2023-08-30 14:22:00', '2023-08-30 14:22:00', '', 'conversation_promo_broadcast_send', 1),
(14, 'Email Broadcast - Email Send', 'email_broadcast_email_send', '1.0', '2023-08-30 14:22:00', '2023-08-30 14:22:00', '', 'email_broadcast_email_send', 1),
(15, 'Facebook Accounts', 'facebook_accounts', '1.0', '2023-08-30 14:22:00', '2023-08-30 14:22:00', '', 'facebook_accounts', 1),
(16, 'Facebook Pages', 'facebook_pages', '1.0', '2023-08-30 14:22:00', '2023-08-30 14:22:00', '', 'facebook_pages', 1),
(17, 'Facebook Pages - Subscribers/Page', 'facebook_pages_subscribers_page', '1.0', '2023-08-30 14:22:00', '2023-08-30 14:22:00', '', 'facebook_pages_subscribers_page', 1),
(18, 'Facebook Posting :  Text/Image/Link/Video Post', 'facebook_posting_text_image_link_video_post', '1.0', '2023-08-30 14:22:00', '2023-08-30 14:22:00', '', 'facebook_posting_text_image_link_video_post', 1),
(19, 'Facebook Posting : Carousel/Slider Post', 'facebook_posting_carousel_slider_post', '1.0', '2023-08-30 14:22:00', '2023-08-30 14:22:00', '', 'facebook_posting_carousel_slider_post', 1),
(20, 'Facebook Posting : CTA Post', 'facebook_posting_cta_post', '1.0', '2023-08-30 14:22:00', '2023-08-30 14:22:00', '', 'facebook_posting_cta_post', 1),
(21, 'Comment Automation : Auto Comment Campaign', 'comment_automation_auto_comment_campaign', '1.0', '2023-08-30 14:22:00', '2023-08-30 14:22:00', '', 'comment_automation_auto_comment_campaign', 1),
(22, 'Menu Manager', 'menu_menager', '1.0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'menu_menager', 0),
(24, 'Flowbuilder Conditional', 'flowbuilder_condition', '1.0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'flowbuilder_condition', 63),
(25, 'Google My Business Made Easy', 'gmb', '1.0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'gmb', 55),
(26, 'Hidden Interest Explorer', 'hidden_interest_explorer', '1.7', '2024-08-31 10:02:43', '2024-08-31 10:02:43', '', 'hidden_interest_explorer', 1013),
(27, 'Messenger Bot Connectivity', 'messenger_bot_connectivity', '2.5.7', '2024-08-31 16:53:38', '2024-08-31 16:53:38', '', 'messenger_bot_connectivity', 31),
(28, 'User Input & Custom Fields', 'custom_field_manager', '2.0.1', '2024-08-31 16:58:05', '2024-08-31 16:58:05', '', 'custom_field_manager', 49),
(29, 'Messenger Bot Enhancers', 'messenger_bot_enhancers', '2.0.3', '2024-08-31 16:59:24', '2024-08-31 16:59:24', '', 'messenger_bot_enhancers', 30),
(30, ' NVX Task Manager', 'n_task', '1.2.1', '2024-08-31 16:53:38', '2024-08-31 16:53:38', '', 'n_task', 1101);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_ons`
--
ALTER TABLE `add_ons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_name` (`unique_name`),
  ADD KEY `project_id` (`project_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_ons`
--
ALTER TABLE `add_ons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;