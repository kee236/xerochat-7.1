-- Table to store AI model details
CREATE TABLE IF NOT EXISTS `ai_models` (
    `id` INT(11) NOT NULL AUTO_INCREMENT,
    `model_name` VARCHAR(255) NOT NULL, -- e.g., 'gpt-3.5-turbo'
    `description` TEXT, 
    `capabilities` TEXT, -- JSON array of supported features
    `access_token` VARCHAR(255), -- If required by the AI provider
    `status` ENUM('0','1') NOT NULL DEFAULT '1',
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Table to log AI interactions
CREATE TABLE IF NOT EXISTS `ai_interactions` (
    `id` INT(11) NOT NULL AUTO_INCREMENT,
    `user_id` INT(11) NOT NULL,
    `flow_campaign_id` INT(11) NOT NULL, -- Link to visual_flow_builder_campaign
    `ai_model_id` INT(11) NOT NULL, -- Link to ai_models
    `prompt` TEXT NOT NULL,
    `response` TEXT NOT NULL,
    `created_at` DATETIME NOT NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`flow_campaign_id`) REFERENCES `visual_flow_builder_campaign` (`id`) ON DELETE CASCADE,
    FOREIGN KEY (`ai_model_id`) REFERENCES `ai_models` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `messenger_bot`
ADD COLUMN `is_ai_generated` ENUM('0','1') NOT NULL DEFAULT '0',
ADD COLUMN `ai_model_id` INT(11) DEFAULT NULL,
ADD FOREIGN KEY (`ai_model_id`) REFERENCES `ai_models` (`id`) ON DELETE SET NULL;



-- ตาราง ai_models
CREATE TABLE IF NOT EXISTS `ai_models` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `model_name` varchar(255) NOT NULL, 
    `provider` varchar(255) NOT NULL, -- เช่น OpenAI, Azure, etc.
    `description` text, 
    `capabilities` text, -- JSON array of supported features
    `api_key` varchar(255), 
    `status` enum('0','1') NOT NULL DEFAULT '1',
    `created_at` datetime NOT NULL,
    `updated_at` datetime NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




-- ตาราง line_accounts
CREATE TABLE IF NOT EXISTS `line_accounts` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `user_id` int(11) NOT NULL,
    `channel_id` varchar(255) NOT NULL,
    `channel_secret` varchar(255) NOT NULL,
    `channel_access_token` text NOT NULL,
    `created_at` datetime NOT NULL,
    `updated_at` datetime NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



-- ตาราง line_notify_tokens
CREATE TABLE IF NOT EXISTS `line_notify_tokens` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `user_id` int(11) NOT NULL,
    `token` text NOT NULL,
    `created_at` datetime NOT NULL,
    `updated_at` datetime NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- ตาราง line_group_ids
CREATE TABLE IF NOT EXISTS `line_group_ids` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `user_id` int(11) NOT NULL,
    `group_id` varchar(255) NOT NULL,
    `created_at` datetime NOT NULL,
    `updated_at` datetime NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




-- ตาราง messenger_bot_thirdparty_webhook
ALTER TABLE `messenger_bot_thirdparty_webhook`
ADD COLUMN `line_account_id` int(11) DEFAULT NULL, -- สำหรับเชื่อมโยงกับ Line Account
ADD COLUMN `line_notify_token_id` int(11) DEFAULT NULL, -- สำหรับเชื่อมโยงกับ Line Notify Token
ADD COLUMN `line_group_id` int(11) DEFAULT NULL, -- สำหรับเชื่อมโยงกับ Line Group ID
ADD FOREIGN KEY (`line_account_id`) REFERENCES `line_accounts` (`id`) ON DELETE SET NULL,
ADD FOREIGN KEY (`line_notify_token_id`) REFERENCES `line_notify_tokens` (`id`) ON DELETE SET NULL,
ADD FOREIGN KEY (`line_group_id`) REFERENCES `line_group_ids` (`id`) ON DELETE SET NULL;


-- ตาราง ai_responses
CREATE TABLE IF NOT EXISTS `ai_responses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `request_id` int(11) NOT NULL, -- Foreign key to ai_requests table
  `response_type` enum('text', 'image', 'other') NOT NULL,
  `response_data` longtext NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`request_id`) REFERENCES `ai_requests` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ตาราง ai_requests
CREATE TABLE IF NOT EXISTS `ai_requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `ai_model_id` int(11) NOT NULL, -- Foreign key to ai_models table
  `request_data` longtext NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`ai_model_id`) REFERENCES `ai_models` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ตาราง ai_models
CREATE TABLE IF NOT EXISTS `ai_models` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model_name` varchar(255) NOT NULL,
  `version` varchar(255) NOT NULL,
  `parameters` text, 
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- เพิ่มคอลัมน์ในตาราง messenger_bot
ALTER TABLE `messenger_bot` 
ADD COLUMN `is_ai_generated` enum('0','1') NOT NULL DEFAULT '0',
ADD COLUMN `ai_model_id` int(11) DEFAULT NULL,
ADD FOREIGN KEY (`ai_model_id`) REFERENCES `ai_models` (`id`) ON DELETE SET NULL;

-- เพิ่มคอลัมน์ในตาราง user_input_flow_questions
ALTER TABLE `user_input_flow_questions` 
ADD COLUMN `ai_enabled` enum('0','1') NOT NULL DEFAULT '0',
ADD COLUMN `ai_model_id` int(11) DEFAULT NULL,
ADD FOREIGN KEY (`ai_model_id`) REFERENCES `ai_models` (`id`) ON DELETE SET NULL;