-- Insert into add_ons table
INSERT INTO `add_ons` (`add_on_name`, `unique_name`, `version`, `project_id`) 
VALUES 
('Messenger Bot Enhancers', 'messenger_bot_enhancers', '2.0.3', 30),
('User Input & Custom Fields', 'custom_field_manager', '2.0.1', 49),
('Messenger Bot Connectivity ', 'messenger_bot_connectivity', '2.5.7', 31),
('Ultra Post', 'ultrapost', '1.0', 19),
('WooCommerce Abandoned Cart Recovery ', 'woocommerce_abandoned_cart', '1.0.3', 33),
('Simple support desk', 'SimplesupportDesk', '1.0', 0),
('NVX Task Manager', 'n_task', '1.21', 1101),
('SMS & Email Sequence', 'sms_email_sequence', '2.0', 40),
('Hidden Interest Explorer', 'hidden_interest_explorer', '1.7', 1013),
('Flowbuilder Conditional Reply', 'flowbuilder_condition', '1.0', 63),
('E-commerce Product Price Variation ', 'ecommerce_product_price_variation', '1.0', 45),
('WooCommerce Abandoned Cart Recovery ', 'woocommerce_abandoned_cart', '1.0.2', 33),
('VidCasterLive', 'vidcasterlive', '1.0', 41),
('WooCommerce Integration', 'woocommerce_integration', '2.0', 50),
('Ecommerce Product Rating & Comment', 'ecommerce_review_comment', '1.0', 48),
('Facebook Group Poster', 'facebook_group_poster', '1.0', 32);


-- Insert into modules table
INSERT INTO `modules` (`id`, `module_name`, `add_ons_id`, `extra_text`, `limit_enabled`, `bulk_limit_enabled`, `deleted`) 
VALUES 
(220, (SELECT id FROM add_ons WHERE unique_name='comboposter'), 'Comboposter', '', '1', '0', '0'),
(211, (SELECT id FROM add_ons WHERE unique_name='messenger_bot_enhancers'), 'Messenger Bot - Enhancers : Broadcast : Subscriber Bulk Message Send', 'month', '1', '1', '0'),
(213, (SELECT id FROM add_ons WHERE unique_name='messenger_bot_enhancers'), 'Messenger Bot - Enhancers : Engagement : Checkbox Plugin', '', '1', '0', '0'),
(214, (SELECT id FROM add_ons WHERE unique_name='messenger_bot_enhancers'), 'Messenger Bot - Enhancers : Engagement : Send to Messenger', '', '1', '0', '0'),
(215, (SELECT id FROM add_ons WHERE unique_name='messenger_bot_enhancers'), 'Messenger Bot - Enhancers : Engagement : m.me Links', '', '1', '0', '0'),
(217, (SELECT id FROM add_ons WHERE unique_name='messenger_bot_enhancers'), 'Messenger Bot - Enhancers : Engagement : Customer Chat Plugin', '', '1', '0', '0'),
(218, (SELECT id FROM add_ons WHERE unique_name='messenger_bot_enhancers'), 'Messenger Bot - Enhancers : Sequence Messaging : Message Send', '', '1', '0', '0'),
(219, (SELECT id FROM add_ons WHERE unique_name='messenger_bot_enhancers'), 'Messenger Bot - Enhancers : Sequence Messaging Campaign', '', '1', '0', '0'),
(266, (SELECT id FROM add_ons WHERE unique_name='woocommerce_abandoned_cart'), 'WooCommerce Abandoned Cart Recovery', '', '1', '0', '0'),
(252, (SELECT id FROM add_ons WHERE unique_name='vidcasterlive'), 'Facebook Live Streaming - Campaigns', 'month', '1', '0', '0'),
(254, (SELECT id FROM add_ons WHERE unique_name='vidcasterlive'), 'Facebook Live Streaming - Crossposting/Auto Share/Comment', '', '1', '0', '0'),
(3003, (SELECT id FROM add_ons WHERE unique_name='hidden_interest_explorer'), 'Hidden Interest Explorer', '', '0', '0', '0'),
(270, (SELECT id FROM add_ons WHERE unique_name='sms_email_sequence'), 'SMS Broadcast - Sequence Campaign', 'month', '1', '0', '0'),
(271, (SELECT id FROM add_ons WHERE unique_name='sms_email_sequence'), 'Email Broadcast - Sequence Campaign', 'month', '1', '0', '0'),
(258, (SELECT id FROM add_ons WHERE unique_name='messenger_bot_connectivity'), 'Messenger Bot - Connectivity : JSON API', '', '1', '0', '0'),
(261, (SELECT id FROM add_ons WHERE unique_name='messenger_bot_connectivity'), 'Messenger Bot - Connectivity : Webview Builder', '', '1', '0', '0'),
(293, (SELECT id FROM add_ons WHERE unique_name='woocommerce_integration'), 'WooCommerce Integration', '', '1', '0', '0'),
(325, (SELECT id FROM add_ons WHERE unique_name='flowbuilder_condition'), 'Flowbuilder Conditional Reply', '', '0', '0', '0'),
(281, (SELECT id FROM add_ons WHERE unique_name='ecommerce_product_price_variation'), 'E-commerce Product Price Variation', '', '0', '0', '0'),
(292, (SELECT id FROM add_ons WHERE unique_name='custom_field_manager'), 'User Input Flow Campaign', 'month', '1', '0', '0');