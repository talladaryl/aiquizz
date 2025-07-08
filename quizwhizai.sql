-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 08, 2025 at 12:44 PM
-- Server version: 8.0.30
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quizwhizai`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

DROP TABLE IF EXISTS `answers`;
CREATE TABLE IF NOT EXISTS `answers` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_id` bigint UNSIGNED NOT NULL,
  `is_correct` tinyint(1) NOT NULL DEFAULT '0',
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `answers_question_id_foreign` (`question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `title`, `question_id`, `is_correct`, `type`, `file_path`, `label`, `created_at`, `updated_at`) VALUES
(37, 'dimanche', 28, 0, 'text', NULL, NULL, '2025-07-07 08:43:38', '2025-07-07 08:43:38'),
(38, 'mardi', 28, 1, 'text', NULL, NULL, '2025-07-07 08:43:38', '2025-07-07 08:43:38'),
(41, 'Audio', 30, 0, 'audio', NULL, NULL, '2025-07-08 06:49:57', '2025-07-08 06:49:57'),
(44, 'mercredi', 32, 1, 'text', NULL, NULL, '2025-07-08 10:07:30', '2025-07-08 10:07:30'),
(45, 'lundi', 32, 0, 'audio', NULL, NULL, '2025-07-08 10:07:31', '2025-07-08 10:07:31');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'stacke backend', '2025-07-02 07:46:01', '2025-07-02 07:46:01');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
CREATE TABLE IF NOT EXISTS `currencies` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `code`, `symbol`, `created_at`, `updated_at`) VALUES
(1, 'USD Dollar', 'USD', '$', '2025-05-20 05:07:53', '2025-05-20 05:07:53');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
CREATE TABLE IF NOT EXISTS `faqs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `question` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
CREATE TABLE IF NOT EXISTS `languages` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', 1, '2025-05-20 05:07:53', '2025-05-20 05:07:53'),
(2, 'Arabic', 'ar', 1, '2025-05-20 05:07:53', '2025-05-20 05:07:53'),
(3, 'French', 'fr', 1, '2025-05-20 05:07:53', '2025-05-20 05:07:53'),
(4, 'German', 'de', 1, '2025-05-20 05:07:53', '2025-05-20 05:07:53'),
(5, 'Spanish', 'es', 1, '2025-05-20 05:07:53', '2025-05-20 05:07:53'),
(6, 'Portuguese', 'pt', 1, '2025-05-20 05:07:53', '2025-05-20 05:07:53'),
(7, 'Italian', 'it', 1, '2025-05-20 05:07:53', '2025-05-20 05:07:53'),
(8, 'Russian', 'ru', 1, '2025-05-20 05:07:53', '2025-05-20 05:07:53'),
(9, 'Turkish', 'tr', 1, '2025-05-20 05:07:53', '2025-05-20 05:07:53'),
(10, 'Chinese', 'zh', 1, '2025-05-20 05:07:53', '2025-05-20 05:07:53'),
(11, 'Vietnamese', 'vi', 1, '2025-05-20 05:07:53', '2025-05-20 05:07:53'),
(12, 'Polish', 'pl', 1, '2025-05-20 05:07:53', '2025-05-20 05:07:53');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
CREATE TABLE IF NOT EXISTS `media` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversions_disk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint UNSIGNED NOT NULL,
  `manipulations` json NOT NULL,
  `custom_properties` json NOT NULL,
  `generated_conversions` json NOT NULL,
  `responsive_images` json NOT NULL,
  `order_column` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `media_uuid_unique` (`uuid`),
  KEY `media_model_type_model_id_index` (`model_type`,`model_id`),
  KEY `media_order_column_index` (`order_column`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_08_08_072141_create_permission_tables', 1),
(6, '2024_08_08_073937_create_media_table', 1),
(7, '2024_08_08_121551_create_quizzes_table', 1),
(8, '2024_08_12_112209_create_questions_table', 1),
(9, '2024_08_12_112300_create_answers_table', 1),
(10, '2024_08_13_051004_add_quiz_description_field_in_quizzes_table', 1),
(11, '2024_08_17_042851_add_quiz_id_field_in_questions_table', 1),
(12, '2024_08_21_070311_create_user_quizzes_table', 1),
(13, '2024_08_21_103711_create_question_answers_table', 1),
(14, '2024_08_28_110927_create_plans_table', 1),
(15, '2024_08_28_121714_create_settings_table', 1),
(16, '2024_08_29_052804_create_currencies_table', 1),
(17, '2024_08_29_054701_add_currency_id_field_in_plans_table', 1),
(18, '2024_08_29_091902_create_transactions_table', 1),
(19, '2024_08_29_092128_create_subscriptions_table', 1),
(20, '2024_08_29_110638_create_payment_settings_table', 1),
(21, '2024_09_02_045902_add_field_view_count_in_quizzes_table', 1),
(22, '2024_09_04_055550_create_polls_table', 1),
(23, '2024_09_04_074832_create_poll_results_table', 1),
(24, '2024_09_06_074311_add_status_in_users_table', 1),
(25, '2024_09_09_072955_add_result_field_at_user_quizzes_table', 1),
(26, '2024_09_13_060227_add_column_completd_at_column_in_question_answers_table', 1),
(27, '2024_09_17_061252_add_score_column_in_user_quizzes_table', 1),
(28, '2024_09_18_040524_add_country_column_in_poll_results_table', 1),
(29, '2024_09_20_071308_add_image_column_in_user_quizzes_table', 1),
(30, '2024_09_23_111448_add_end_at_field_in_polls_table', 1),
(31, '2024_09_26_055823_add_uuid_column_in_user_quizzes', 1),
(32, '2024_10_03_093719_add_default_plan_and_currency_seeder', 1),
(33, '2024_10_04_100221_add_language_field_in_quizzes_table', 1),
(34, '2024_12_18_071817_add_google_id_to_users_table', 1),
(35, '2025_04_17_073243_create_testimonials_table', 1),
(36, '2025_04_17_120900_add_description_to_plans_table', 1),
(37, '2025_04_18_034601_create_categories_table', 1),
(38, '2025_04_18_034623_add_category_to_quizzes_table', 1),
(39, '2025_04_21_070908_add_social_links_and_policies_to_settings_table', 1),
(40, '2025_04_25_055537_add_hero_fields_to_settings_table', 1),
(41, '2025_04_25_070753_create_faqs_table', 1),
(42, '2025_04_29_052534_create_languages_table', 1),
(43, '2025_04_29_053638_add_default_languages_seeder', 1),
(44, '2025_04_29_065148_add_columns_in_settings_table', 1),
(45, '2025_04_30_122649_add_time_fields_in_quizzes_table', 1),
(46, '2025_05_01_043005_add_open_ai_model_filed_in_settings_table', 1),
(47, '2025_05_01_065601_add_timed_out_filed_in_question_answers_table', 1),
(48, '2025_05_06_053644_add_recptacha_in_settings_table', 1),
(49, '2025_05_07_114526_add_quiz_expiry_date_in_quizzes_table', 1),
(50, '2025_05_14_102654_add_gemini_ai_fields_in_settings_table', 2),
(51, '2025_05_19_043730_add_is_show_home_column_in_quizzes_table', 2),
(52, '2025_05_26_122901_add_multi_answer_to_question_answers_table', 2),
(53, '2025_05_29_122007_add_enable_landing_page_columns_in_settings_table', 2),
(54, '2025_05_31_052330_create_user_settings_table', 2),
(55, '2025_07_05_121303_add_type_and_file_path_to_answers_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE IF NOT EXISTS `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE IF NOT EXISTS `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 3),
(2, 'App\\Models\\User', 4),
(2, 'App\\Models\\User', 5),
(2, 'App\\Models\\User', 6);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_settings`
--

DROP TABLE IF EXISTS `payment_settings`;
CREATE TABLE IF NOT EXISTS `payment_settings` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `razorpay_enabled` tinyint(1) DEFAULT NULL,
  `razorpay_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `razorpay_secret` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paypal_enabled` tinyint(1) DEFAULT NULL,
  `paypal_client_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paypal_secret` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paypal_mode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manually_enabled` tinyint(1) DEFAULT NULL,
  `manual_payment_guide` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `stripe_enabled` tinyint(1) DEFAULT NULL,
  `stripe_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_secret` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_settings`
--

INSERT INTO `payment_settings` (`id`, `razorpay_enabled`, `razorpay_key`, `razorpay_secret`, `paypal_enabled`, `paypal_client_id`, `paypal_secret`, `paypal_mode`, `manually_enabled`, `manual_payment_guide`, `stripe_enabled`, `stripe_key`, `stripe_secret`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, '2025-05-20 05:07:54', '2025-05-20 05:07:54');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

DROP TABLE IF EXISTS `plans`;
CREATE TABLE IF NOT EXISTS `plans` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `frequency` int NOT NULL DEFAULT '1',
  `no_of_quiz` int NOT NULL,
  `price` double NOT NULL,
  `trial_days` int DEFAULT NULL,
  `assign_default` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `currency_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `plans_currency_id_foreign` (`currency_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `name`, `description`, `frequency`, `no_of_quiz`, `price`, `trial_days`, `assign_default`, `status`, `currency_id`, `created_at`, `updated_at`) VALUES
(1, 'Default Plan', NULL, 1, 2, 0, NULL, 1, 1, 1, '2025-05-20 05:07:53', '2025-05-20 05:07:53');

-- --------------------------------------------------------

--
-- Table structure for table `polls`
--

DROP TABLE IF EXISTS `polls`;
CREATE TABLE IF NOT EXISTS `polls` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `question` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `option1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option4` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unique_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `polls_unique_code_unique` (`unique_code`),
  KEY `polls_user_id_foreign` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `poll_results`
--

DROP TABLE IF EXISTS `poll_results`;
CREATE TABLE IF NOT EXISTS `poll_results` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `poll_id` bigint UNSIGNED NOT NULL,
  `answer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `poll_results_poll_id_foreign` (`poll_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
CREATE TABLE IF NOT EXISTS `questions` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `quiz_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `questions_quiz_id_foreign` (`quiz_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `title`, `status`, `quiz_id`, `created_at`, `updated_at`) VALUES
(28, 'demain c\'est quand ?', 1, 9, '2025-07-07 08:43:37', '2025-07-07 08:43:37'),
(30, 'demain c\'est quand ?', 1, 11, '2025-07-08 06:49:57', '2025-07-08 06:49:57'),
(32, 'demain cest quznd', 1, 13, '2025-07-08 10:07:30', '2025-07-08 10:07:30');

-- --------------------------------------------------------

--
-- Table structure for table `question_answers`
--

DROP TABLE IF EXISTS `question_answers`;
CREATE TABLE IF NOT EXISTS `question_answers` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `quiz_user_id` bigint UNSIGNED NOT NULL,
  `question_id` bigint UNSIGNED NOT NULL,
  `question_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `answer_id` bigint UNSIGNED DEFAULT NULL,
  `multi_answer` json DEFAULT NULL,
  `answer_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_correct` tinyint(1) NOT NULL DEFAULT '0',
  `ans_text` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_time_out` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `question_answers_quiz_user_id_foreign` (`quiz_user_id`),
  KEY `question_answers_question_id_foreign` (`question_id`),
  KEY `question_answers_answer_id_foreign` (`answer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quizzes`
--

DROP TABLE IF EXISTS `quizzes`;
CREATE TABLE IF NOT EXISTS `quizzes` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `quiz_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `user_id` bigint UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `type` int NOT NULL,
  `category_id` bigint UNSIGNED DEFAULT NULL,
  `diff_level` int NOT NULL,
  `quiz_type` int NOT NULL,
  `max_questions` int NOT NULL,
  `unique_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `view_count` int DEFAULT '0',
  `language` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `time_configuration` tinyint(1) NOT NULL DEFAULT '0',
  `time` int NOT NULL DEFAULT '0',
  `time_type` int DEFAULT NULL,
  `quiz_expiry_date` datetime DEFAULT NULL,
  `is_show_home` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `quizzes_unique_code_unique` (`unique_code`),
  KEY `quizzes_user_id_foreign` (`user_id`),
  KEY `quizzes_category_id_foreign` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quizzes`
--

INSERT INTO `quizzes` (`id`, `title`, `quiz_description`, `user_id`, `status`, `type`, `category_id`, `diff_level`, `quiz_type`, `max_questions`, `unique_code`, `view_count`, `language`, `created_at`, `updated_at`, `time_configuration`, `time`, `time_type`, `quiz_expiry_date`, `is_show_home`) VALUES
(9, 'teste', 'teste', 5, 1, 1, 1, 0, 0, 1, '2FIXKKBB', 1, 'en', '2025-07-07 08:43:37', '2025-07-07 08:44:08', 0, 0, NULL, NULL, 1),
(11, 'Technologie', 'test python', 5, 1, 1, 1, 0, 0, 1, 'YRR8CKRJ', 1, 'en', '2025-07-08 06:49:57', '2025-07-08 06:50:40', 0, 0, NULL, NULL, 1),
(13, 'fhgh,b', 'dfcgvb', 6, 1, 1, 1, 0, 0, 1, 'BO5TLQH6', 1, 'en', '2025-07-08 10:07:29', '2025-07-08 10:08:15', 0, 0, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2025-05-20 05:07:54', '2025-05-20 05:07:54'),
(2, 'user', 'web', '2025-05-20 05:07:54', '2025-05-20 05:07:54');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE IF NOT EXISTS `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `app_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `facebook_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pinterest_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `terms_and_condition` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `privacy_policy` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cookie_policy` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `open_api_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_sub_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `default_language` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `currency_before_amount` tinyint(1) NOT NULL DEFAULT '1',
  `send_mail_verification` tinyint(1) NOT NULL DEFAULT '1',
  `seo_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `seo_keywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_ai_model` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enable_captcha` tinyint(1) NOT NULL DEFAULT '0',
  `captcha_site_key` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `captcha_secret_key` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `enabled_captcha_in_login` tinyint(1) NOT NULL DEFAULT '0',
  `enabled_captcha_in_register` tinyint(1) NOT NULL DEFAULT '0',
  `enabled_captcha_in_quiz` tinyint(1) NOT NULL DEFAULT '0',
  `ai_type` int NOT NULL DEFAULT '1',
  `gemini_api_key` text COLLATE utf8mb4_unicode_ci,
  `gemini_ai_model` text COLLATE utf8mb4_unicode_ci,
  `enable_landing_page` tinyint(1) NOT NULL DEFAULT '1',
  `new_participant_mail_to_creator` tinyint(1) NOT NULL DEFAULT '1',
  `quiz_complete_mail_to_participant` tinyint(1) NOT NULL DEFAULT '1',
  `quiz_complete_mail_to_creator` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `app_name`, `email`, `contact`, `prefix_code`, `created_at`, `updated_at`, `facebook_url`, `twitter_url`, `linkedin_url`, `instagram_url`, `pinterest_url`, `terms_and_condition`, `privacy_policy`, `cookie_policy`, `open_api_key`, `hero_sub_title`, `hero_title`, `hero_description`, `default_language`, `currency_before_amount`, `send_mail_verification`, `seo_title`, `seo_description`, `seo_keywords`, `open_ai_model`, `enable_captcha`, `captcha_site_key`, `captcha_secret_key`, `enabled_captcha_in_login`, `enabled_captcha_in_register`, `enabled_captcha_in_quiz`, `ai_type`, `gemini_api_key`, `gemini_ai_model`, `enable_landing_page`, `new_participant_mail_to_creator`, `quiz_complete_mail_to_participant`, `quiz_complete_mail_to_creator`) VALUES
(1, 'QuizWhiz AI', 'admin@gmail.com', '', 'IN', '2025-05-20 05:07:54', '2025-05-20 05:07:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'en', 1, 1, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, 1, NULL, NULL, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

DROP TABLE IF EXISTS `subscriptions`;
CREATE TABLE IF NOT EXISTS `subscriptions` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL,
  `plan_id` bigint UNSIGNED DEFAULT NULL,
  `transaction_id` bigint UNSIGNED DEFAULT NULL,
  `plan_amount` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `payable_amount` double DEFAULT NULL,
  `plan_frequency` int DEFAULT NULL,
  `starts_at` datetime DEFAULT NULL,
  `ends_at` datetime DEFAULT NULL,
  `trial_ends_at` datetime DEFAULT NULL,
  `status` int NOT NULL,
  `notes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payment_type` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subscriptions_plan_id_foreign` (`plan_id`),
  KEY `subscriptions_user_id_foreign` (`user_id`),
  KEY `subscriptions_transaction_id_foreign` (`transaction_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `user_id`, `plan_id`, `transaction_id`, `plan_amount`, `discount`, `payable_amount`, `plan_frequency`, `starts_at`, `ends_at`, `trial_ends_at`, `status`, `notes`, `payment_type`, `created_at`, `updated_at`) VALUES
(1, 3, 1, NULL, 0, NULL, NULL, 1, '2025-07-02 01:10:01', '2025-07-09 23:59:59', NULL, 1, NULL, 0, '2025-07-01 23:10:01', '2025-07-01 23:10:01'),
(2, 4, 1, NULL, 0, NULL, NULL, 1, '2025-07-02 01:14:27', '2025-07-09 23:59:59', NULL, 1, NULL, 0, '2025-07-01 23:14:27', '2025-07-01 23:14:27'),
(3, 5, 1, NULL, 0, NULL, NULL, 1, '2025-07-02 09:18:52', '2025-07-09 23:59:59', NULL, 1, NULL, 0, '2025-07-02 07:18:52', '2025-07-02 07:18:52'),
(4, 6, 1, NULL, 0, NULL, NULL, 1, '2025-07-08 09:09:05', '2025-07-15 23:59:59', NULL, 1, NULL, 0, '2025-07-08 07:09:05', '2025-07-08 07:09:05');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
CREATE TABLE IF NOT EXISTS `testimonials` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
CREATE TABLE IF NOT EXISTS `transactions` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `transaction_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `type` int NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `meta` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `transactions_user_id_foreign` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `google_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `status`, `google_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'admin@gmail.com', '2025-05-20 05:07:54', '$2y$12$//MuZfpMzKeaF.M3HrGXoebxnn7kEXbIZQUp76uPY0Kn/PtjlyjnO', 1, NULL, 'FRzTHu6XVzGW1Akvzhfi3v8qa2pg5euBhCXXZzljK016aRjdpG6NaEBAMvA8', '2025-05-20 05:07:54', '2025-05-20 05:07:54'),
(2, 'User', 'user@gmail.com', '2025-05-20 05:07:54', '$2y$12$NCPsrsZwsUn7PF05ckkZTu2u.7h5myIjr6CrUgapsh4.h/YDbef3m', 1, NULL, 'uqbzPXSg9smWyoIUQG4vPZbMnl130P6T4qPNCcPBQBqi1R8Il2yfLE1gM9iV', '2025-05-20 05:07:54', '2025-05-20 05:07:54'),
(3, 'Daryl', 'talladarylarsen@gmail.com', NULL, '$2y$12$j1RUT2QiIPz1VtpZTGYJde5cmjIJd6K0Ov/IFoHW4TJJ05KaN4eGm', 1, NULL, NULL, '2025-07-01 23:09:59', '2025-07-01 23:09:59'),
(4, 'Daryl', 'talladarylarsen85@gmail.com', NULL, '$2y$12$UdJoYo5Bw.gjesuPTp6QOOxMZHITV6sRDfQG7U/aNRJN/s5g7X1BC', 1, NULL, NULL, '2025-07-01 23:14:26', '2025-07-01 23:14:26'),
(5, 'dar', 'talladarylarseL@gmail.com', NULL, '$2y$12$yMIqIXIJKVMycMoUp1WFT.n0vIC0v.to7WICCyd/gGdhxuQ8FSTNW', 1, NULL, 'l7WTnLFypHBRkwU1A9gWsE8IdggR6iVy0G2hsAdrG5mT2HlpvoDsNnqLXjtL', '2025-07-02 07:18:51', '2025-07-02 07:18:51'),
(6, 'junior', 'junio@gmail.com', NULL, '$2y$12$j0TJd6vN.wwcgpvyAWTnx.GiZtD2inS3pLPgz5oYsBGdwmrtjk8gm', 1, NULL, NULL, '2025-07-08 07:09:03', '2025-07-08 07:09:03');

-- --------------------------------------------------------

--
-- Table structure for table `user_quizzes`
--

DROP TABLE IF EXISTS `user_quizzes`;
CREATE TABLE IF NOT EXISTS `user_quizzes` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` int DEFAULT NULL,
  `quiz_id` bigint UNSIGNED NOT NULL,
  `started_at` timestamp NOT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `last_question_id` bigint UNSIGNED DEFAULT NULL,
  `score` int NOT NULL DEFAULT '0',
  `result` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_quizzes_quiz_id_foreign` (`quiz_id`),
  KEY `user_quizzes_last_question_id_foreign` (`last_question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_settings`
--

DROP TABLE IF EXISTS `user_settings`;
CREATE TABLE IF NOT EXISTS `user_settings` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_settings_user_id_foreign` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `plans`
--
ALTER TABLE `plans`
  ADD CONSTRAINT `plans_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `polls`
--
ALTER TABLE `polls`
  ADD CONSTRAINT `polls_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `poll_results`
--
ALTER TABLE `poll_results`
  ADD CONSTRAINT `poll_results_poll_id_foreign` FOREIGN KEY (`poll_id`) REFERENCES `polls` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_quiz_id_foreign` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `question_answers`
--
ALTER TABLE `question_answers`
  ADD CONSTRAINT `question_answers_answer_id_foreign` FOREIGN KEY (`answer_id`) REFERENCES `answers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `question_answers_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `question_answers_quiz_user_id_foreign` FOREIGN KEY (`quiz_user_id`) REFERENCES `user_quizzes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD CONSTRAINT `quizzes_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `quizzes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD CONSTRAINT `subscriptions_plan_id_foreign` FOREIGN KEY (`plan_id`) REFERENCES `plans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `subscriptions_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `subscriptions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_quizzes`
--
ALTER TABLE `user_quizzes`
  ADD CONSTRAINT `user_quizzes_last_question_id_foreign` FOREIGN KEY (`last_question_id`) REFERENCES `questions` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `user_quizzes_quiz_id_foreign` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_settings`
--
ALTER TABLE `user_settings`
  ADD CONSTRAINT `user_settings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
