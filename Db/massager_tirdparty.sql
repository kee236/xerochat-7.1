CREATE TABLE IF NOT EXISTS `messenger_bot_thirdparty_webhook_trigger` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `webhook_id` int(11) NOT NULL, 
  `trigger_type` varchar(50) NOT NULL,
  `trigger_value` varchar(255) NOT NULL,
  `comparison_operator` varchar(10) NOT NULL,
  `trigger_data` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`webhook_id`) REFERENCES `messenger_bot_thirdparty_webhook` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




ALTER TABLE `messenger_bot_thirdparty_webhook` 
ADD COLUMN `postback_id` VARCHAR(255) DEFAULT NULL AFTER `last_triggered_at`;