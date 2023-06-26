-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 26 2023 г., 15:18
-- Версия сервера: 5.7.39
-- Версия PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `joymee`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_06_04_065442_create_categories_table', 1),
(7, '2023_06_05_065431_create_posts_table', 1),
(8, '2023_06_05_065452_create_tags_table', 1),
(9, '2023_06_05_065600_create_post_tags_table', 1),
(10, '2023_06_09_122112_add_column_to_categories_table', 1),
(11, '2023_06_09_122751_add_column_soft_deletes_to_categories_table', 1),
(12, '2023_06_12_093651_add_columns_for_images_to_posts_table', 1),
(13, '2023_06_14_080131_add_soft_deletes_to_posts_table', 1),
(14, '2023_06_17_081126_add_soft_deletes_to_users_table', 1),
(15, '2023_06_17_222927_add_column_role_to_users_table', 1),
(16, '2023_06_22_112920_create_uni_category_board_table', 1),
(17, '2023_06_23_112920_create_uni_ads_table', 1),
(18, '2023_06_24_061146_create_post_user_likes_table', 1),
(19, '2023_06_24_064629_create_comments_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `preview_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `post_tags`
--

CREATE TABLE `post_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `post_user_likes`
--

CREATE TABLE `post_user_likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `uni_action_statistics`
--

CREATE TABLE `uni_action_statistics` (
  `action_statistics_id` int(11) NOT NULL,
  `action_statistics_date` timestamp NULL DEFAULT NULL,
  `action_statistics_ad_id` int(11) NOT NULL DEFAULT '0',
  `action_statistics_from_user_id` int(11) NOT NULL DEFAULT '0',
  `action_statistics_to_user_id` int(11) NOT NULL DEFAULT '0',
  `action_statistics_action` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `uni_action_statistics`
--

INSERT INTO `uni_action_statistics` (`action_statistics_id`, `action_statistics_date`, `action_statistics_ad_id`, `action_statistics_from_user_id`, `action_statistics_to_user_id`, `action_statistics_action`) VALUES
(1, '2023-04-24 12:12:39', 1, 2, 1, 'favorite'),
(2, '2023-05-31 14:10:34', 5, 1, 1, 'favorite'),
(3, '2023-06-01 06:07:48', 6, 3, 1, 'favorite');

-- --------------------------------------------------------

--
-- Структура таблицы `uni_admin`
--

CREATE TABLE `uni_admin` (
  `id` int(11) NOT NULL,
  `pass` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `fio` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `image` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `role` int(1) NOT NULL DEFAULT '1',
  `datetime_view` timestamp NULL DEFAULT NULL,
  `main_admin` int(1) NOT NULL DEFAULT '0',
  `privileges` text CHARACTER SET utf8
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `uni_admin`
--

INSERT INTO `uni_admin` (`id`, `pass`, `fio`, `image`, `email`, `phone`, `role`, `datetime_view`, `main_admin`, `privileges`) VALUES
(1, '$2y$10$KtZ6UDV0w7k1JwBtUsFpGewwHgI/8kv3I7Cxq2ZBUTOpP6WqKCyzy', 'Admin', NULL, 'shuhaaka@mail.ru', '', 1, '2023-05-30 06:45:43', 1, 'control_statistics,control_blog,control_page,control_clients,control_banner,control_city,control_manager,control_seo,control_admin,control_tpl,control_settings,control_orders,view_orders,control_board,processing_board,control_transactions,control_chat');

-- --------------------------------------------------------

--
-- Структура таблицы `uni_ads`
--

CREATE TABLE `uni_ads` (
  `ads_id` int(11) NOT NULL,
  `ads_title` text COLLATE utf8mb4_unicode_ci,
  `ads_alias` text COLLATE utf8mb4_unicode_ci,
  `ads_text` text COLLATE utf8mb4_unicode_ci,
  `ads_id_cat` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `ads_datetime_add` timestamp NULL DEFAULT NULL,
  `ads_datetime_view` timestamp NULL DEFAULT NULL,
  `ads_id_user` int(11) NOT NULL DEFAULT '0',
  `ads_images` text COLLATE utf8mb4_unicode_ci,
  `ads_price` double NOT NULL DEFAULT '0',
  `ads_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ads_latitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ads_longitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ads_metro_ids` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ads_period_publication` timestamp NULL DEFAULT NULL,
  `ads_city_id` int(11) NOT NULL DEFAULT '0',
  `ads_status` int(11) NOT NULL DEFAULT '0',
  `ads_region_id` int(11) NOT NULL DEFAULT '0',
  `ads_country_id` int(11) NOT NULL DEFAULT '0',
  `ads_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ads_count_display` int(11) NOT NULL DEFAULT '0',
  `ads_currency` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ads_period_day` int(11) NOT NULL DEFAULT '0',
  `ads_update` timestamp NULL DEFAULT NULL,
  `ads_sorting` int(11) NOT NULL DEFAULT '0',
  `ads_auction` int(11) NOT NULL DEFAULT '0',
  `ads_auction_duration` timestamp NULL DEFAULT NULL,
  `ads_auction_price_sell` double NOT NULL DEFAULT '0',
  `ads_auction_day` int(11) NOT NULL DEFAULT '1',
  `ads_area_ids` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ads_id_import` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ads_import_images` text COLLATE utf8mb4_unicode_ci,
  `ads_video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ads_tour` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ads_vip` int(11) NOT NULL DEFAULT '0',
  `ads_auto_renewal` int(11) NOT NULL DEFAULT '0',
  `ads_online_view` int(11) NOT NULL DEFAULT '0',
  `ads_price_old` double NOT NULL DEFAULT '0',
  `ads_filter_tags` text COLLATE utf8mb4_unicode_ci,
  `ads_price_free` int(11) NOT NULL DEFAULT '0',
  `ads_available` int(11) NOT NULL DEFAULT '0',
  `ads_available_unlimitedly` int(11) NOT NULL DEFAULT '0',
  `ads_booking` int(11) NOT NULL DEFAULT '0',
  `ads_price_measure` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ads_price_from` int(11) NOT NULL DEFAULT '0',
  `ads_booking_additional_services` text COLLATE utf8mb4_unicode_ci,
  `ads_booking_prepayment_percent` int(11) NOT NULL DEFAULT '0',
  `ads_booking_max_guests` int(11) NOT NULL DEFAULT '0',
  `ads_booking_min_days` int(11) NOT NULL DEFAULT '0',
  `ads_booking_max_days` int(11) NOT NULL DEFAULT '0',
  `ads_booking_available` int(11) NOT NULL DEFAULT '0',
  `ads_booking_available_unlimitedly` int(11) NOT NULL DEFAULT '0',
  `ads_electron_product_links` text COLLATE utf8mb4_unicode_ci,
  `ads_electron_product_text` text COLLATE utf8mb4_unicode_ci,
  `ads_delivery_status` int(11) NOT NULL DEFAULT '0',
  `ads_delivery_weight` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `uni_ads_auction`
--

CREATE TABLE `uni_ads_auction` (
  `ads_auction_id` int(11) NOT NULL,
  `ads_auction_id_ad` int(11) NOT NULL DEFAULT '0',
  `ads_auction_date` timestamp NULL DEFAULT NULL,
  `ads_auction_price` float NOT NULL DEFAULT '0',
  `ads_auction_id_user` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `uni_ads_booking`
--

CREATE TABLE `uni_ads_booking` (
  `ads_booking_id` int(11) NOT NULL,
  `ads_booking_id_ad` int(11) NOT NULL DEFAULT '0',
  `ads_booking_id_user_from` int(11) NOT NULL DEFAULT '0',
  `ads_booking_id_user_to` int(11) NOT NULL DEFAULT '0',
  `ads_booking_date_start` timestamp NULL DEFAULT NULL,
  `ads_booking_date_end` timestamp NULL DEFAULT NULL,
  `ads_booking_guests` int(11) NOT NULL DEFAULT '0',
  `ads_booking_status` int(1) NOT NULL DEFAULT '0',
  `ads_booking_number_days` int(11) NOT NULL DEFAULT '0',
  `ads_booking_date_add` timestamp NULL DEFAULT NULL,
  `ads_booking_additional_services` text,
  `ads_booking_status_pay` int(1) NOT NULL DEFAULT '0',
  `ads_booking_id_order` int(11) NOT NULL DEFAULT '0',
  `ads_booking_total_price` float NOT NULL DEFAULT '0',
  `ads_booking_variant` int(1) NOT NULL DEFAULT '0',
  `ads_booking_hour_start` varchar(255) DEFAULT NULL,
  `ads_booking_hour_count` int(11) NOT NULL DEFAULT '0',
  `ads_booking_measure` varchar(50) DEFAULT NULL,
  `ads_booking_reason_cancel` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `uni_ads_booking_dates`
--

CREATE TABLE `uni_ads_booking_dates` (
  `ads_booking_dates_id` int(11) NOT NULL,
  `ads_booking_dates_date` timestamp NULL DEFAULT NULL,
  `ads_booking_dates_id_ad` int(11) NOT NULL DEFAULT '0',
  `ads_booking_dates_id_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `uni_ads_booking_prepayments`
--

CREATE TABLE `uni_ads_booking_prepayments` (
  `ads_booking_prepayments_id` int(11) NOT NULL,
  `ads_booking_prepayments_id_order` int(11) NOT NULL DEFAULT '0',
  `ads_booking_prepayments_amount` float NOT NULL DEFAULT '0',
  `ads_booking_prepayments_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `uni_ads_change`
--

CREATE TABLE `uni_ads_change` (
  `ads_change_id` int(11) NOT NULL,
  `ads_change_id_ad` int(11) NOT NULL DEFAULT '0',
  `ads_change_date` timestamp NULL DEFAULT NULL,
  `ads_change_status` int(11) NOT NULL DEFAULT '0',
  `ads_change_action` varchar(255) DEFAULT NULL,
  `ads_change_note` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `uni_ads_change`
--

INSERT INTO `uni_ads_change` (`ads_change_id`, `ads_change_id_ad`, `ads_change_date`, `ads_change_status`, `ads_change_action`, `ads_change_note`) VALUES
(1, 1, '2023-04-15 19:34:52', 1, '', ''),
(2, 1, '2023-04-15 19:38:05', 0, 'update', ''),
(3, 1, '2023-04-15 19:40:09', 1, '', ''),
(4, 1, '2023-04-15 19:40:10', 1, '', ''),
(5, 1, '2023-04-15 20:32:27', 1, 'update', ''),
(6, 1, '2023-04-16 16:02:04', 1, 'update', ''),
(7, 2, '2023-04-17 19:46:14', 0, 'update', ''),
(8, 2, '2023-04-17 20:00:55', 0, 'update', ''),
(9, 2, '2023-04-17 20:06:55', 0, 'update', ''),
(10, 2, '2023-04-17 20:07:14', 0, 'update', ''),
(11, 2, '2023-04-18 14:47:54', 1, '', ''),
(12, 2, '2023-04-19 17:28:44', 0, 'update', ''),
(13, 2, '2023-04-19 17:29:27', 1, '', ''),
(14, 2, '2023-04-26 17:35:49', 1, 'update', ''),
(15, 3, '2023-05-13 09:53:37', 1, '', ''),
(16, 3, '2023-05-13 10:07:12', 0, 'update', ''),
(17, 3, '2023-05-13 10:07:47', 0, 'update', ''),
(18, 3, '2023-05-13 10:26:43', 1, '', ''),
(19, 4, '2023-05-13 10:41:00', 0, 'update', ''),
(20, 5, '2023-05-13 11:04:09', 1, '', ''),
(21, 4, '2023-05-13 11:04:13', 1, '', ''),
(22, 5, '2023-05-13 11:07:16', 1, 'update', ''),
(23, 5, '2023-05-13 11:10:42', 1, 'update', ''),
(24, 3, '2023-05-15 11:16:13', 1, '', ''),
(25, 4, '2023-05-15 11:16:14', 1, '', ''),
(26, 5, '2023-05-15 11:16:15', 1, '', ''),
(27, 7, '2023-05-16 09:33:32', 1, '', ''),
(28, 6, '2023-05-16 09:33:37', 1, '', ''),
(29, 8, '2023-05-16 09:36:13', 1, '', ''),
(30, 8, '2023-05-16 09:36:32', 1, 'update', ''),
(31, 7, '2023-05-16 09:36:57', 1, 'update', '');

-- --------------------------------------------------------

--
-- Структура таблицы `uni_ads_comments`
--

CREATE TABLE `uni_ads_comments` (
  `ads_comments_id` int(11) NOT NULL,
  `ads_comments_id_user` int(11) NOT NULL DEFAULT '0',
  `ads_comments_text` varchar(5000) DEFAULT NULL,
  `ads_comments_date` timestamp NULL DEFAULT NULL,
  `ads_comments_id_parent` int(11) NOT NULL DEFAULT '0',
  `ads_comments_id_ad` int(11) NOT NULL DEFAULT '0',
  `ads_comments_notification` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `uni_ads_complain`
--

CREATE TABLE `uni_ads_complain` (
  `ads_complain_id` int(11) NOT NULL,
  `ads_complain_id_ad` int(11) NOT NULL DEFAULT '0',
  `ads_complain_date` timestamp NULL DEFAULT NULL,
  `ads_complain_text` text CHARACTER SET utf8,
  `ads_complain_status` int(1) NOT NULL DEFAULT '0',
  `ads_complain_from_user_id` int(11) NOT NULL DEFAULT '0',
  `ads_complain_to_user_id` int(11) NOT NULL DEFAULT '0',
  `ads_complain_action` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `uni_ads_complain`
--

INSERT INTO `uni_ads_complain` (`ads_complain_id`, `ads_complain_id_ad`, `ads_complain_date`, `ads_complain_text`, `ads_complain_status`, `ads_complain_from_user_id`, `ads_complain_to_user_id`, `ads_complain_action`) VALUES
(1, 1, '2023-04-16 15:50:14', 'Test', 0, 1, 1, 'ad');

-- --------------------------------------------------------

--
-- Структура таблицы `uni_ads_filters`
--

CREATE TABLE `uni_ads_filters` (
  `ads_filters_id` int(11) NOT NULL,
  `ads_filters_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ads_filters_visible` int(1) NOT NULL DEFAULT '1',
  `ads_filters_type` varchar(50) CHARACTER SET utf8 NOT NULL,
  `ads_filters_position` int(11) NOT NULL DEFAULT '0',
  `ads_filters_podcat` int(1) NOT NULL DEFAULT '1',
  `ads_filters_id_parent` int(11) NOT NULL DEFAULT '0',
  `ads_filters_alias` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ads_filters_required` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `uni_ads_filters`
--

INSERT INTO `uni_ads_filters` (`ads_filters_id`, `ads_filters_name`, `ads_filters_visible`, `ads_filters_type`, `ads_filters_position`, `ads_filters_podcat`, `ads_filters_id_parent`, `ads_filters_alias`, `ads_filters_required`) VALUES
(3, 'Тип квартиры', 0, 'select', 2, 1, 0, 'tip-kvartiri', 1),
(4, 'Количество комнат', 0, 'select', 3, 1, 0, 'kolichestvo-komnat', 1),
(5, 'Площадь, м²', 1, 'input', 4, 1, 0, 'ploshchad-m2', 1),
(6, 'Кто разместил', 0, 'select', 1, 1, 0, 'kto-razmestil', 1),
(7, 'Этаж', 0, 'input', 5, 1, 0, 'etazh', 0),
(8, 'Балкон', 0, 'select', 6, 1, 0, 'balkon', 0),
(328, 'Отопление', 0, 'select', 49, 1, 0, 'otoplenie', 0),
(13, 'Этажность дома', 0, 'input', 9, 1, 0, 'etazhnost-doma', 0),
(14, 'Тип дома', 0, 'select', 10, 1, 0, 'tip-doma', 0),
(15, 'Санузлы', 0, 'select', 11, 1, 0, 'sanuzli', 0),
(327, 'Назначение', 0, 'select', 48, 1, 0, 'naznachenie', 0),
(17, 'Ремонт', 1, 'select', 13, 1, 0, 'remont', 0),
(18, 'Год постройки', 0, 'input', 14, 1, 0, 'god-postroyki', 0),
(21, 'Тип дома', 0, 'select', 15, 1, 0, 'tip-doma', 0),
(22, 'Электричество', 0, 'select', 16, 1, 0, 'elektrichestvo', 0),
(23, 'Газ', 0, 'select', 17, 1, 0, 'gaz', 0),
(25, 'Водоснабжение', 0, 'select', 19, 1, 0, 'vodosnabzhenie', 0),
(26, 'Материал дома', 0, 'select', 20, 1, 0, 'material-doma', 0),
(27, 'Тип участка', 0, 'select', 21, 1, 0, 'tip-uchastka', 0),
(28, 'Площадь', 1, 'input', 22, 1, 0, 'ploshchad', 1),
(29, 'Санузлы', 0, 'select', 23, 1, 0, 'sanuzli', 0),
(329, 'Комиссионные', 0, 'select', 50, 1, 0, 'komissionnye', 1),
(32, 'Гараж', 0, 'select', 26, 1, 0, 'garazh', 0),
(33, 'Этажей', 0, 'input', 27, 1, 0, 'etazhey', 0),
(45, 'Коммунальные услуги', 0, 'select', 36, 1, 0, 'kommunalnie-uslugi', 0),
(52, 'Тип строения', 0, 'select', 43, 1, 0, 'tip-stroeniya', 1),
(53, 'Тип сделки', 0, 'select', 44, 1, 0, 'tip-sdelki', 1),
(54, 'Площадь, м²', 1, 'input', 45, 1, 0, 'ploshchad-m2', 1),
(56, 'Торг', 0, 'select', 47, 1, 0, 'torg', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `uni_ads_filters_alias`
--

CREATE TABLE `uni_ads_filters_alias` (
  `ads_filters_alias_id` int(11) NOT NULL,
  `ads_filters_alias_id_filter_item` int(11) NOT NULL DEFAULT '0',
  `ads_filters_alias_title` varchar(255) DEFAULT NULL,
  `ads_filters_alias_alias` varchar(255) DEFAULT NULL,
  `ads_filters_alias_id_cat` int(11) NOT NULL DEFAULT '0',
  `ads_filters_alias_desc` text,
  `ads_filters_alias_h1` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `uni_ads_filters_alias`
--

INSERT INTO `uni_ads_filters_alias` (`ads_filters_alias_id`, `ads_filters_alias_id_filter_item`, `ads_filters_alias_title`, `ads_filters_alias_alias`, `ads_filters_alias_id_cat`, `ads_filters_alias_desc`, `ads_filters_alias_h1`) VALUES
(72, 8, 'Однокомнатная', 'odnokomnatnaya', 150, '', 'Однокомнатная'),
(73, 9, 'Двухкомнатная', 'dvuhkomnatnaya', 150, '', 'Двухкомнатная'),
(74, 14, 'Студия', 'studiya', 150, '', 'Студия'),
(108, 17, 'От собственника', 'ot-sobstvennika', 150, '', 'От собственника');

-- --------------------------------------------------------

--
-- Структура таблицы `uni_ads_filters_category`
--

CREATE TABLE `uni_ads_filters_category` (
  `ads_filters_category_id` int(11) NOT NULL,
  `ads_filters_category_id_cat` int(11) NOT NULL DEFAULT '0',
  `ads_filters_category_id_filter` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `uni_ads_filters_category`
--

INSERT INTO `uni_ads_filters_category` (`ads_filters_category_id`, `ads_filters_category_id_cat`, `ads_filters_category_id_filter`) VALUES
(1115, 150, 8),
(1138, 150, 5),
(1140, 150, 17),
(1050, 150, 4),
(1117, 150, 7),
(1113, 150, 13),
(1111, 150, 14),
(1109, 150, 15),
(1105, 150, 18),
(1066, 150, 3),
(1088, 150, 329),
(1082, 150, 45),
(1119, 150, 6);

-- --------------------------------------------------------

--
-- Структура таблицы `uni_ads_filters_items`
--

CREATE TABLE `uni_ads_filters_items` (
  `ads_filters_items_id` int(11) NOT NULL,
  `ads_filters_items_id_filter` int(11) NOT NULL DEFAULT '0',
  `ads_filters_items_value` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ads_filters_items_id_item_parent` int(11) NOT NULL DEFAULT '0',
  `ads_filters_items_alias` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ads_filters_items_sort` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `uni_ads_filters_items`
--

INSERT INTO `uni_ads_filters_items` (`ads_filters_items_id`, `ads_filters_items_id_filter`, `ads_filters_items_value`, `ads_filters_items_id_item_parent`, `ads_filters_items_alias`, `ads_filters_items_sort`) VALUES
(6, 3, 'Вторичка', 0, 'vtorichka', 1),
(7, 3, 'Новостройка', 0, 'novostroyka', 2),
(8, 4, '1 комната', 0, '1-komnata', 1),
(9, 4, '2 комнаты', 0, '2-komnaty', 2),
(10, 4, '3 комнаты', 0, '3-komnaty', 3),
(11, 4, '4 комнаты', 0, '4-komnaty', 4),
(12, 4, '5 и более комнат', 0, '5-i-bolee-komnat', 5),
(13, 4, 'Свободная планировка', 0, 'svobodnaya-planirovka', 6),
(14, 4, 'Студия', 0, 'studiya', 7),
(15, 5, '1', 0, '1', 1),
(16, 5, '1000000', 0, '1000000', 2),
(17, 6, 'Собственник', 0, 'sobstvennik', 1),
(18, 6, 'Агент', 0, 'agent', 2),
(19, 7, '1', 0, '1', 1),
(20, 7, '500', 0, '500', 2),
(21, 8, 'Нет', 0, 'net', 1),
(22, 8, 'Балкон', 0, 'balkon', 2),
(23, 8, 'Лоджия', 0, 'lodzhiya', 3),
(24, 8, 'Несколько балконов', 0, 'neskolko-balkonov', 4),
(6315, 25, 'Возможно подведение', 0, 'vozmozhno-podvedenie', 4),
(37, 13, '1', 0, '1', 1),
(38, 13, '500', 0, '500', 2),
(39, 14, 'Панельный', 0, 'panelnyy', 1),
(40, 14, 'Кирпичный', 0, 'kirpichnyy', 2),
(41, 14, 'Монолит', 0, 'monolit', 3),
(42, 14, 'Кирпично-монолитный', 0, 'kirpichno-monolitnyy', 4),
(43, 14, 'Блочный', 0, 'blochnyy', 5),
(44, 14, 'Деревянный', 0, 'derevyannyy', 6),
(45, 15, 'Совмещенный', 0, 'sovmeshchennyy', 1),
(46, 15, 'Раздельный', 0, 'razdelnyy', 2),
(47, 15, '2 и более', 0, '2-i-bolee', 3),
(6312, 327, 'Земля промышленного назначения', 0, 'zemlya-promyshlennogo-naznacheniya', 1),
(6311, 327, 'Земля с/х назначения', 0, 'zemlya-s-h-naznacheniya', 2),
(52, 17, 'Требуется ремонт', 0, 'trebuetsya-remont', 1),
(53, 17, 'Не требуется', 0, 'ne-trebuetsya', 2),
(54, 17, 'Косметический', 0, 'kosmeticheskiy', 3),
(55, 17, 'Евроремонт', 0, 'evroremont', 4),
(56, 17, 'Дизайнерский', 0, 'dizaynerskiy', 5),
(57, 17, 'Капитальный ремонт', 0, 'kapitalnyy-remont', 6),
(58, 18, 'старше 1960', 0, 'starshe-1960', 1),
(59, 18, '1960 - 1979', 0, '1960-1979', 2),
(65, 21, 'Дом', 0, 'dom', 1),
(66, 21, 'Таунхаус', 0, 'taunhaus', 2),
(67, 21, 'Коттедж', 0, 'kottedzh', 3),
(68, 21, 'Дача', 0, 'dacha', 4),
(69, 22, 'Нет', 0, 'net', 1),
(70, 22, 'Есть', 0, 'est', 2),
(71, 23, 'Нет', 0, 'net', 1),
(72, 23, 'По границе', 0, 'po-granice', 2),
(73, 23, 'Подведен', 0, 'podveden', 3),
(76, 25, 'Нет', 0, 'net', 1),
(77, 25, 'В доме', 0, 'v-dome', 2),
(78, 25, 'Центральное водоснабжение', 0, 'centralnoe-vodosnabzhenie', 3),
(79, 26, 'Кирпичный', 0, 'kirpichnyy', 1),
(80, 26, 'Деревянный', 0, 'derevyannyy', 2),
(81, 26, 'Щитовой', 0, 'shchitovoy', 3),
(82, 26, 'Монолитный', 0, 'monolitnyy', 4),
(83, 26, 'Блочный', 0, 'blochnyy', 5),
(84, 27, 'Делимый', 0, 'delimyy', 1),
(85, 27, 'Неделимый', 0, 'nedelimyy', 2),
(6310, 327, 'Земля под сад/огород', 0, 'zemlya-pod-sad-ogorod', 3),
(6309, 327, 'Земля под строительство', 0, 'zemlya-pod-stroitelstvo', 4),
(89, 28, '1', 0, '1', 1),
(90, 28, '1000000', 0, '1000000', 2),
(91, 29, 'На улице', 0, 'na-ulice', 1),
(92, 29, 'В доме', 0, 'v-dome', 2),
(93, 29, 'Несколько санузлов', 0, 'neskolko-sanuzlov', 3),
(6314, 22, 'Есть возможность подключения', 0, 'est-vozmozhnost-podklyucheniya', 3),
(99, 32, 'Нет', 0, 'net', 1),
(100, 32, 'В доме', 0, 'v-dome', 2),
(101, 32, 'Отдельно стоящий', 0, 'otdelno-stoyashchiy', 3),
(102, 33, '1', 0, '1', 1),
(103, 33, '100', 0, '100', 2),
(6326, 329, 'Нет', 0, 'net', 1),
(6325, 329, 'Да', 0, 'da', 2),
(6324, 328, 'Без отопления', 0, 'bez-otopleniya', 1),
(6323, 328, 'Смешанное', 0, 'smeshannoe', 2),
(6322, 328, 'Электрическое', 0, 'elektricheskoe', 3),
(6321, 328, 'На твердом топливе', 0, 'na-tverdom-toplive', 4),
(6320, 328, 'На газе', 0, 'na-gaze', 5),
(6319, 328, 'Центральное', 0, 'centralnoe', 6),
(6318, 25, 'Скважина', 0, 'skvazhina', 7),
(6313, 327, 'Другое', 0, 'drugoe', 5),
(141, 45, 'Включены', 0, 'vklyucheny', 1),
(142, 45, 'Не включены', 0, 'ne-vklyucheny', 2),
(6317, 25, 'На границе', 0, 'na-granice', 6),
(6316, 25, 'Колодец на участке', 0, 'kolodec-na-uchastke', 5),
(188, 52, 'Помещение свободного назначения', 0, 'pomeshchenie-svobodnogo-naznacheniya', 1),
(189, 52, 'Торговое помещение', 0, 'torgovoe-pomeshchenie', 2),
(190, 52, 'Офисное помещение', 0, 'ofisnoe-pomeshchenie', 3),
(191, 52, 'Производство', 0, 'proizvodstvo', 4),
(192, 52, 'Склад', 0, 'sklad', 5),
(193, 52, 'Другая коммерческая недвижимость', 0, 'drugaya-kommercheskaya-nedvizhimost', 6),
(194, 53, 'Аренда', 0, 'arenda', 1),
(195, 53, 'Продажа', 0, 'prodazha', 2),
(196, 54, '1', 0, '1', 1),
(197, 54, '1000000', 0, '1000000', 2),
(204, 56, 'Да', 0, 'da', 1),
(205, 56, 'Нет', 0, 'net', 2),
(6327, 18, '1980 - 1989', 0, '1980-1989', 3),
(6328, 18, '1990 - 2000', 0, '1990-2000', 4),
(6329, 18, '2001 - 2010', 0, '2001-2010', 5),
(6330, 18, '2011 - 2017', 0, '2011-2017', 6),
(6331, 18, 'Сдача в 2018', 0, 'sdacha-v-2018', 7);

-- --------------------------------------------------------

--
-- Структура таблицы `uni_ads_filters_variants`
--

CREATE TABLE `uni_ads_filters_variants` (
  `ads_filters_variants_id` int(11) NOT NULL,
  `ads_filters_variants_id_filter` int(11) NOT NULL DEFAULT '0',
  `ads_filters_variants_val` varchar(255) DEFAULT NULL,
  `ads_filters_variants_product_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `uni_ads_filters_variants`
--

INSERT INTO `uni_ads_filters_variants` (`ads_filters_variants_id`, `ads_filters_variants_id_filter`, `ads_filters_variants_val`, `ads_filters_variants_product_id`) VALUES
(16, 54, '600', 1),
(15, 53, '195', 1),
(14, 52, '190', 1),
(13, 6, '17', 1),
(43, 5, '96', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `uni_ads_import`
--

CREATE TABLE `uni_ads_import` (
  `ads_import_id` int(11) NOT NULL,
  `ads_import_uniq` varchar(255) DEFAULT NULL,
  `ads_import_file` varchar(255) DEFAULT NULL,
  `ads_import_count` int(11) NOT NULL DEFAULT '0',
  `ads_import_status` int(11) NOT NULL DEFAULT '0',
  `ads_import_params` text,
  `ads_import_step` varchar(255) DEFAULT NULL,
  `ads_import_count_loaded` int(11) NOT NULL DEFAULT '0',
  `ads_import_errors` int(11) NOT NULL DEFAULT '0',
  `ads_import_date` timestamp NULL DEFAULT NULL,
  `ads_import_status_images` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `uni_ads_keywords`
--

CREATE TABLE `uni_ads_keywords` (
  `ads_keywords_id` int(11) NOT NULL,
  `ads_keywords_tag` varchar(255) DEFAULT NULL,
  `ads_keywords_params` varchar(255) DEFAULT NULL,
  `ads_keywords_id_cat` int(11) NOT NULL DEFAULT '0',
  `ads_keywords_count_click` int(11) NOT NULL DEFAULT '0',
  `ads_keywords_macros` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `uni_ads_keywords`
--

INSERT INTO `uni_ads_keywords` (`ads_keywords_id`, `ads_keywords_tag`, `ads_keywords_params`, `ads_keywords_id_cat`, `ads_keywords_count_click`, `ads_keywords_macros`) VALUES
(4, 'Купить студию в новостройке', 'filter[4][]=14&filter[3][]=7', 159, 1, '{4:studiya},{3:novostroyka}'),
(5, 'Студия в новостройке', 'filter[4][]=14&filter[3][]=7', 159, 1, '{4:studiya},{3:novostroyka}'),
(6, 'Квартира рядом с метро', 'filter[11][]=32&filter[11][]=31', 159, 3, '{11:5-15-min-peshkom},{11:do-5-min-peshkom}'),
(12, 'Купить дом', 'filter[21][]=65', 148, 7, '{21:dom}'),
(13, 'Купить квартиру-студию', 'filter[4][]=14', 159, 8, '{4:studiya}'),
(14, 'Купить однакомнатную квартиру', 'filter[4][]=8', 159, 6, '{4:1-komnata}'),
(15, 'Купить дом с газом', 'filter[21][]=65&filter[23][]=73', 148, 6, '{21:dom},{23:podveden}'),
(16, 'Купить коттедж', 'filter[21][]=67', 148, 6, '{21:kottedzh}'),
(17, 'Купить автомобиль', '', 27, 2, ''),
(18, 'Купить машину', '', 27, 1, ''),
(19, 'Купить bmw', 'filter[90][]=2798', 27, 1, '{90:bmw}');

-- --------------------------------------------------------

--
-- Структура таблицы `uni_ads_keywords_users`
--

CREATE TABLE `uni_ads_keywords_users` (
  `ads_keywords_users_id` int(11) NOT NULL,
  `ads_keywords_users_text` varchar(255) DEFAULT NULL,
  `ads_keywords_users_ip` varchar(255) DEFAULT NULL,
  `ads_keywords_users_count_view` int(11) NOT NULL DEFAULT '0',
  `ads_keywords_users_date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `uni_ads_keywords_users`
--

INSERT INTO `uni_ads_keywords_users` (`ads_keywords_users_id`, `ads_keywords_users_text`, `ads_keywords_users_ip`, `ads_keywords_users_count_view`, `ads_keywords_users_date`) VALUES
(1, 'ом', '46.159.61.59', 0, '0000-00-00 00:00:00'),
(2, 'дом', '46.159.61.59', 3, '0000-00-00 00:00:00'),
(3, 'купить дом', '46.159.61.59', 0, '0000-00-00 00:00:00'),
(4, 'машина', '31.181.161.45', 0, '2022-03-12 17:27:19'),
(5, 'Купить автомобиль', '31.181.161.45', 0, '2022-03-13 15:01:04'),
(6, 'x\" onmouseover=alert(0x000F32) x=\"', '46.159.68.255', 0, '2022-03-27 17:47:29'),
(7, 'onmouseover=alert(0x000F32) x=\"', '46.159.68.255', 0, '2022-03-27 17:47:42'),
(8, '\" onmouseover=alert(0x000F32) x=\"', '46.159.68.255', 0, '2022-03-27 17:47:56'),
(9, 'onmouseover=alert(0x000F32)', '46.159.68.255', 0, '2022-03-27 17:48:03'),
(10, 'reg', '46.159.68.255', 0, '2022-03-30 13:07:10'),
(11, 'купи', '46.159.68.255', 0, '2022-03-30 13:07:14'),
(12, 'дом (444)', '46.159.69.112', 0, '2022-04-05 06:35:15'),
(13, 'велосипед', '46.159.50.15', 0, '2022-04-18 13:36:23'),
(14, 'велоси', '46.159.50.15', 0, '2022-04-18 16:55:12'),
(15, 'bmw', '31.181.244.125', 1, '2022-05-30 08:46:44'),
(16, 'купить до москва', '85.174.192.141', 0, '2022-06-13 04:51:51'),
(17, 'купить bmw в москве', '85.174.192.141', 0, '2022-06-13 06:08:35'),
(18, 'купить коттедж в Уфе', '85.174.192.141', 0, '2022-06-13 06:20:45'),
(19, 'купить коттедж в саратове', '85.174.192.141', 0, '2022-06-13 06:21:23'),
(20, 'зонт', '85.174.192.141', 0, '2022-06-13 08:11:20'),
(21, 'зонт сочи', '85.174.192.141', 0, '2022-06-13 08:11:32'),
(22, 'квартира в москве', '85.174.192.141', 0, '2022-06-13 08:12:19'),
(23, 'ewr', '46.158.18.216', 0, '2022-06-24 05:03:51'),
(24, 'купить', '46.158.250.104', 1, '2022-09-16 06:31:39'),
(25, '<script>alert(\'нет так нет\')</script>', '37.144.233.203', 0, '2022-10-27 04:51:04'),
(26, '<script>alertнет так нет</script>', '37.144.233.203', 0, '2022-10-27 04:54:12'),
(27, 'куплю дом', '37.144.233.203', 0, '2022-10-27 04:54:40'),
(28, 'куплю дом 4', '37.144.233.203', 0, '2022-10-27 04:54:47'),
(29, 'alertнет так нет', '37.144.233.203', 0, '2022-10-27 04:58:18'),
(30, '</title><scRipt>alert0x001D73</scRipt>', '37.144.233.224', 0, '2022-11-08 05:17:54'),
(31, 'titlescriptalert0x001d73script', '37.144.233.224', 0, '2022-11-08 05:30:05'),
(32, 'квартира студия', '37.144.233.224', 0, '2022-11-08 05:30:46'),
(33, 'ташкент', '127.0.0.1', 1, '2023-04-23 15:29:00'),
(34, 'квартика', '127.0.0.1', 0, '2023-04-23 15:29:21'),
(35, 'квартира', '127.0.0.1', 0, '2023-04-23 15:29:38'),
(36, 'офис', '127.0.0.1', 0, '2023-04-23 15:29:58'),
(37, 'буюк ипак йули', '127.0.0.1', 0, '2023-04-23 15:30:35'),
(38, 'ввввввввввввввввввв', '127.0.0.1', 0, '2023-04-24 04:40:28'),
(39, 'ввввв', '127.0.0.1', 0, '2023-04-24 04:40:39'),
(40, 'офисное помещение', '127.0.0.1', 0, '2023-04-24 04:40:52');

-- --------------------------------------------------------

--
-- Структура таблицы `uni_ads_subscriptions`
--

CREATE TABLE `uni_ads_subscriptions` (
  `ads_subscriptions_id` int(11) NOT NULL,
  `ads_subscriptions_email` varchar(255) DEFAULT NULL,
  `ads_subscriptions_id_user` int(11) NOT NULL DEFAULT '0',
  `ads_subscriptions_params` text,
  `ads_subscriptions_date` timestamp NULL DEFAULT NULL,
  `ads_subscriptions_period` int(11) NOT NULL DEFAULT '0',
  `ads_subscriptions_date_update` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `uni_ads_views`
--

CREATE TABLE `uni_ads_views` (
  `ads_views_id` int(11) NOT NULL,
  `ads_views_id_ad` int(11) NOT NULL DEFAULT '0',
  `ads_views_date` timestamp NULL DEFAULT NULL,
  `ads_views_id_user` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `uni_ads_views`
--

INSERT INTO `uni_ads_views` (`ads_views_id`, `ads_views_id_ad`, `ads_views_date`, `ads_views_id_user`) VALUES
(1, 1, '2023-04-15 19:32:37', 1),
(2, 1, '2023-04-15 19:40:40', 1),
(3, 1, '2023-04-16 15:44:25', 1),
(4, 2, '2023-04-17 19:38:20', 1),
(5, 1, '2023-04-18 14:45:09', 1),
(6, 2, '2023-04-18 15:21:20', 1),
(7, 1, '2023-04-19 16:57:55', 1),
(8, 2, '2023-04-19 16:58:43', 1),
(9, 1, '2023-04-23 15:30:19', 1),
(10, 2, '2023-04-24 04:40:15', 1),
(11, 1, '2023-04-24 05:19:50', 1),
(12, 1, '2023-04-24 06:25:56', 1),
(13, 2, '2023-04-24 06:40:04', 1),
(14, 2, '2023-04-26 17:34:42', 1),
(15, 1, '2023-04-26 17:37:32', 1),
(16, 2, '2023-05-10 07:13:37', 1),
(17, 2, '2023-05-10 07:37:32', 1),
(18, 1, '2023-05-10 10:39:54', 1),
(19, 3, '2023-05-12 09:19:31', 1),
(20, 3, '2023-05-13 10:07:14', 1),
(21, 4, '2023-05-13 10:37:12', 1),
(22, 5, '2023-05-13 11:03:59', 1),
(23, 5, '2023-05-13 11:06:38', 1),
(24, 4, '2023-05-15 11:13:52', 1),
(25, 3, '2023-05-15 11:14:55', 1),
(26, 5, '2023-05-16 07:50:23', 1),
(27, 6, '2023-05-16 09:30:53', 1),
(28, 7, '2023-05-16 09:33:03', 1),
(29, 8, '2023-05-16 09:35:59', 1),
(30, 8, '2023-05-18 05:40:05', 1),
(31, 5, '2023-05-31 14:10:29', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `uni_ads_views_display`
--

CREATE TABLE `uni_ads_views_display` (
  `ads_views_display_id` int(11) NOT NULL,
  `ads_views_display_id_ad` int(11) NOT NULL DEFAULT '0',
  `ads_views_display_date` timestamp NULL DEFAULT NULL,
  `ads_views_display_count` int(11) NOT NULL DEFAULT '0',
  `ads_views_display_id_user` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `uni_ads_views_display`
--

INSERT INTO `uni_ads_views_display` (`ads_views_display_id`, `ads_views_display_id_ad`, `ads_views_display_date`, `ads_views_display_count`, `ads_views_display_id_user`) VALUES
(1, 1, '2023-04-15 19:00:00', 18, 1),
(2, 1, '2023-04-16 19:00:00', 1, 1),
(3, 1, '2023-04-17 19:00:00', 65, 1),
(4, 2, '2023-04-17 19:00:00', 59, 1),
(5, 2, '2023-04-18 19:00:00', 30, 1),
(6, 1, '2023-04-18 19:00:00', 31, 1),
(7, 2, '2023-04-19 19:00:00', 22, 1),
(8, 1, '2023-04-19 19:00:00', 29, 1),
(9, 2, '2023-04-22 19:00:00', 51, 1),
(10, 1, '2023-04-22 19:00:00', 51, 1),
(11, 2, '2023-04-23 19:00:00', 126, 1),
(12, 1, '2023-04-23 19:00:00', 126, 1),
(13, 2, '2023-04-24 19:00:00', 9, 1),
(14, 1, '2023-04-24 19:00:00', 9, 1),
(15, 2, '2023-04-25 19:00:00', 9, 1),
(16, 1, '2023-04-25 19:00:00', 16, 1),
(17, 2, '2023-04-26 19:00:00', 3, 1),
(18, 1, '2023-04-26 19:00:00', 2, 1),
(19, 2, '2023-04-29 19:00:00', 2, 1),
(20, 1, '2023-04-29 19:00:00', 2, 1),
(21, 2, '2023-05-07 19:00:00', 4, 1),
(22, 1, '2023-05-07 19:00:00', 4, 1),
(23, 2, '2023-05-09 19:00:00', 53, 1),
(24, 1, '2023-05-09 19:00:00', 50, 1),
(25, 2, '2023-05-10 19:00:00', 5, 1),
(26, 1, '2023-05-10 19:00:00', 5, 1),
(27, 3, '2023-05-12 19:00:00', 15, 1),
(28, 5, '2023-05-12 19:00:00', 9, 1),
(29, 4, '2023-05-12 19:00:00', 15, 1),
(30, 5, '2023-05-14 19:00:00', 38, 1),
(31, 4, '2023-05-14 19:00:00', 36, 1),
(32, 3, '2023-05-14 19:00:00', 36, 1),
(33, 5, '2023-05-15 19:00:00', 92, 1),
(34, 4, '2023-05-15 19:00:00', 100, 1),
(35, 3, '2023-05-15 19:00:00', 98, 1),
(36, 7, '2023-05-15 19:00:00', 21, 1),
(37, 6, '2023-05-15 19:00:00', 18, 1),
(38, 8, '2023-05-15 19:00:00', 24, 1),
(39, 8, '2023-05-16 19:00:00', 14, 1),
(40, 7, '2023-05-16 19:00:00', 15, 1),
(41, 6, '2023-05-16 19:00:00', 10, 1),
(42, 5, '2023-05-16 19:00:00', 14, 1),
(43, 4, '2023-05-16 19:00:00', 14, 1),
(44, 3, '2023-05-16 19:00:00', 14, 1),
(45, 8, '2023-05-17 19:00:00', 10, 1),
(46, 7, '2023-05-17 19:00:00', 9, 1),
(47, 6, '2023-05-17 19:00:00', 9, 1),
(48, 5, '2023-05-17 19:00:00', 9, 1),
(49, 4, '2023-05-17 19:00:00', 9, 1),
(50, 3, '2023-05-17 19:00:00', 10, 1),
(51, 8, '2023-05-18 19:00:00', 9, 1),
(52, 3, '2023-05-18 19:00:00', 9, 1),
(53, 7, '2023-05-18 19:00:00', 11, 1),
(54, 5, '2023-05-18 19:00:00', 10, 1),
(55, 4, '2023-05-18 19:00:00', 8, 1),
(56, 6, '2023-05-18 19:00:00', 2, 1),
(57, 8, '2023-05-22 19:00:00', 37, 1),
(58, 7, '2023-05-22 19:00:00', 37, 1),
(59, 6, '2023-05-22 19:00:00', 29, 1),
(60, 5, '2023-05-22 19:00:00', 37, 1),
(61, 4, '2023-05-22 19:00:00', 37, 1),
(62, 3, '2023-05-22 19:00:00', 37, 1),
(63, 8, '2023-05-23 19:00:00', 3, 1),
(64, 7, '2023-05-23 19:00:00', 4, 1),
(65, 6, '2023-05-23 19:00:00', 1, 1),
(66, 5, '2023-05-23 19:00:00', 4, 1),
(67, 4, '2023-05-23 19:00:00', 3, 1),
(68, 3, '2023-05-23 19:00:00', 3, 1),
(69, 8, '2023-05-25 19:00:00', 2, 1),
(70, 7, '2023-05-25 19:00:00', 2, 1),
(71, 6, '2023-05-25 19:00:00', 1, 1),
(72, 5, '2023-05-25 19:00:00', 2, 1),
(73, 4, '2023-05-25 19:00:00', 2, 1),
(74, 3, '2023-05-25 19:00:00', 2, 1),
(75, 8, '2023-05-29 19:00:00', 17, 1),
(76, 7, '2023-05-29 19:00:00', 18, 1),
(77, 6, '2023-05-29 19:00:00', 17, 1),
(78, 5, '2023-05-29 19:00:00', 17, 1),
(79, 4, '2023-05-29 19:00:00', 17, 1),
(80, 3, '2023-05-29 19:00:00', 17, 1),
(81, 8, '2023-05-30 19:00:00', 5, 1),
(82, 7, '2023-05-30 19:00:00', 5, 1),
(83, 6, '2023-05-30 19:00:00', 3, 1),
(84, 5, '2023-05-30 19:00:00', 5, 1),
(85, 4, '2023-05-30 19:00:00', 6, 1),
(86, 3, '2023-05-30 19:00:00', 5, 1),
(87, 8, '2023-05-31 19:00:00', 7, 1),
(88, 7, '2023-05-31 19:00:00', 7, 1),
(89, 6, '2023-05-31 19:00:00', 6, 1),
(90, 5, '2023-05-31 19:00:00', 7, 1),
(91, 4, '2023-05-31 19:00:00', 7, 1),
(92, 3, '2023-05-31 19:00:00', 7, 1),
(93, 8, '2023-06-01 19:00:00', 14, 1),
(94, 7, '2023-06-01 19:00:00', 14, 1),
(95, 6, '2023-06-01 19:00:00', 12, 1),
(96, 5, '2023-06-01 19:00:00', 14, 1),
(97, 4, '2023-06-01 19:00:00', 14, 1),
(98, 3, '2023-06-01 19:00:00', 14, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `uni_advertising`
--

CREATE TABLE `uni_advertising` (
  `advertising_id` int(11) NOT NULL,
  `advertising_title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `advertising_image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `advertising_visible` int(11) NOT NULL DEFAULT '1',
  `advertising_ids_cat` text CHARACTER SET utf8,
  `advertising_click` int(11) NOT NULL DEFAULT '0',
  `advertising_type_banner` int(11) NOT NULL DEFAULT '0',
  `advertising_date_start` timestamp NULL DEFAULT NULL,
  `advertising_date_end` timestamp NULL DEFAULT NULL,
  `advertising_geo` text CHARACTER SET utf8,
  `advertising_banner_position` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `advertising_code_script` text CHARACTER SET utf8,
  `advertising_index_out` int(11) NOT NULL DEFAULT '0',
  `advertising_out_podcat` int(11) NOT NULL DEFAULT '0',
  `advertising_link_site` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `advertising_pages` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `advertising_var_out` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `uni_advertising`
--

INSERT INTO `uni_advertising` (`advertising_id`, `advertising_title`, `advertising_image`, `advertising_visible`, `advertising_ids_cat`, `advertising_click`, `advertising_type_banner`, `advertising_date_start`, `advertising_date_end`, `advertising_geo`, `advertising_banner_position`, `advertising_code_script`, `advertising_index_out`, `advertising_out_podcat`, `advertising_link_site`, `advertising_pages`, `advertising_var_out`) VALUES
(1, 'Растяжка - Баннер под шапкой', 'f30d831d0f5198291575a2c2baaa42e1.png', 0, '', 4, 1, '2023-04-13 08:00:00', '0000-00-00 00:00:00', '', 'stretching', '', 6, 1, '%23', 'index', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `uni_blog_articles`
--

CREATE TABLE `uni_blog_articles` (
  `blog_articles_id` int(11) NOT NULL,
  `blog_articles_title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `blog_articles_text` longtext CHARACTER SET utf8,
  `blog_articles_date_add` timestamp NULL DEFAULT NULL,
  `blog_articles_visible` int(1) NOT NULL DEFAULT '1',
  `blog_articles_desc` text CHARACTER SET utf8,
  `blog_articles_count_view` int(11) DEFAULT '0',
  `blog_articles_image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `blog_articles_alias` varchar(255) CHARACTER SET utf8 NOT NULL,
  `blog_articles_id_cat` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `uni_blog_articles`
--

INSERT INTO `uni_blog_articles` (`blog_articles_id`, `blog_articles_title`, `blog_articles_text`, `blog_articles_date_add`, `blog_articles_visible`, `blog_articles_desc`, `blog_articles_count_view`, `blog_articles_image`, `blog_articles_alias`, `blog_articles_id_cat`) VALUES
(1, 'Спрос на недвижимость за прошедший год вырос менее чем на 4% — ЦЭИР', '%3Cp%3E%D0%94%D0%BB%D1%8F%20%D1%80%D1%8B%D0%BD%D0%BA%D0%B0%20%D0%B6%D0%B8%D0%BB%D1%8C%D1%8F%20%D0%A3%D0%B7%D0%B1%D0%B5%D0%BA%D0%B8%D1%81%D1%82%D0%B0%D0%BD%D0%B0%202022%20%D0%B3%D0%BE%D0%B4%20%D1%81%D1%82%D0%B0%D0%BB%20%D1%87%D0%B5%D1%80%D0%B5%D0%B4%D0%BE%D0%B9%20%D0%BA%D0%BE%D1%80%D0%BE%D1%82%D0%BA%D0%B8%D1%85%20%D1%86%D0%B8%D0%BA%D0%BB%D0%BE%D0%B2%20%D0%BF%D0%BE%D0%B4%D1%8A%D1%91%D0%BC%D0%B0%20%D0%B8%26nbsp%3B%D1%81%D0%BF%D0%B0%D0%B4%D0%B0.%20%D0%9F%D0%B8%D0%BA%20%D1%81%D0%BF%D1%80%D0%BE%D1%81%D0%B0%26nbsp%3B%3Ca%20href%3D%22https%3A%2F%2Fwww.spot.uz%2Fru%2F2022%2F09%2F23%2Freal-estate-review%2F%22%20rel%3D%22noopener%20noreferrer%22%20target%3D%22_blank%22%3E%D0%BF%D1%80%D0%B8%D1%88%D1%91%D0%BB%D1%81%D1%8F%3C%2Fa%3E%26nbsp%3B%D0%BD%D0%B0%26nbsp%3B%D0%B0%D0%B2%D0%B3%D1%83%D1%81%D1%82%2C%20%D0%BA%D0%BE%D0%B3%D0%B4%D0%B0%20%D0%BC%D0%B5%D1%81%D1%8F%D1%87%D0%BD%D0%BE%D0%B5%20%D1%87%D0%B8%D1%81%D0%BB%D0%BE%20%D1%81%D0%B4%D0%B5%D0%BB%D0%BE%D0%BA%20%D0%B4%D0%BE%D1%81%D1%82%D0%B8%D0%B3%D0%BB%D0%BE%20%D0%BC%D0%B0%D0%BA%D1%81%D0%B8%D0%BC%D1%83%D0%BC%D0%B0%20%D1%81%26nbsp%3B%D0%B8%D1%8E%D0%BB%D1%8F%202020%20%D0%B3%D0%BE%D0%B4%D0%B0.%20%D0%9E%D0%B4%D0%BD%D0%B0%D0%BA%D0%BE%20%D0%B2%26nbsp%3B%D0%BF%D0%BE%D1%81%D0%BB%D0%B5%D0%B4%D1%83%D1%8E%D1%89%D0%B8%D0%B5%20%D0%B4%D0%B2%D0%B0%20%D0%BC%D0%B5%D1%81%D1%8F%D1%86%D0%B0%26nbsp%3B%3Ca%20href%3D%22https%3A%2F%2Fwww.spot.uz%2Fru%2F2022%2F10%2F24%2Freal-estate-9m%2F%22%20rel%3D%22noopener%20noreferrer%22%20target%3D%22_blank%22%3E%D0%BE%D1%82%D0%BC%D0%B5%D1%87%D0%B0%D0%BB%D0%BE%D1%81%D1%8C%3C%2Fa%3E%26nbsp%3B%D0%B5%D0%B3%D0%BE%20%D0%BD%D0%B5%D0%B1%D0%BE%D0%BB%D1%8C%D1%88%D0%BE%D0%B5%26nbsp%3B%3Ca%20href%3D%22https%3A%2F%2Fwww.spot.uz%2Fru%2F2022%2F11%2F23%2Freal-estate-slowdown%2F%22%20rel%3D%22noopener%20noreferrer%22%20target%3D%22_blank%22%3E%D1%81%D0%BE%D0%BA%D1%80%D0%B0%D1%89%D0%B5%D0%BD%D0%B8%D0%B5%3C%2Fa%3E.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%92%26nbsp%3B%D0%BD%D0%BE%D1%8F%D0%B1%D1%80%D0%B5%2C%20%D1%81%26nbsp%3B%3Ca%20href%3D%22https%3A%2F%2Fwww.spot.uz%2Fru%2F2022%2F09%2F23%2Fmortgage-provision%2F%22%20rel%3D%22noopener%20noreferrer%22%20target%3D%22_blank%22%3E%D1%80%D0%B0%D1%81%D1%88%D0%B8%D1%80%D0%B5%D0%BD%D0%B8%D0%B5%D0%BC%3C%2Fa%3E%26nbsp%3B%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%BC%D1%8B%20%D0%B8%D0%BF%D0%BE%D1%82%D0%B5%D1%87%D0%BD%D0%BE%D0%B3%D0%BE%20%D0%BA%D1%80%D0%B5%D0%B4%D0%B8%D1%82%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D1%8F%2C%26nbsp%3B%3Ca%20href%3D%22https%3A%2F%2Fwww.spot.uz%2Fru%2F2022%2F12%2F14%2Freal-estate-situation%2F%22%20rel%3D%22noopener%20noreferrer%22%20target%3D%22_blank%22%3E%D0%BF%D1%80%D0%BE%D0%B8%D0%B7%D0%BE%D1%88%D1%91%D0%BB%3C%2Fa%3E%26nbsp%3B%D0%B5%D1%89%D1%91%20%D0%BE%D0%B4%D0%B8%D0%BD%20%D0%B2%D1%81%D0%BF%D0%BB%D0%B5%D1%81%D0%BA%20%D0%B0%D0%BA%D1%82%D0%B8%D0%B2%D0%BD%D0%BE%D1%81%D1%82%D0%B8%26nbsp%3B%26mdash%3B%20%D0%BF%D0%BE%D1%81%D0%BB%D0%B5%D0%B4%D0%BD%D0%B8%D0%B9%20%D0%B2%26nbsp%3B%D0%B3%D0%BE%D0%B4%D1%83.%20%D0%94%D0%B5%D0%BA%D0%B0%D0%B1%D1%80%D1%8C%26nbsp%3B%D0%B6%D0%B5%20%D1%81%D1%82%D0%B0%D0%BB%20%D0%B2%D1%80%D0%B5%D0%BC%D0%B5%D0%BD%D0%B5%D0%BC%20%D0%B7%D0%BD%D0%B0%D1%87%D0%B8%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D0%BE%D0%B3%D0%BE%20%D0%BF%D0%B0%D0%B4%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%BF%D1%80%D0%BE%D0%B4%D0%B0%D0%B6%20%D0%BD%D0%B5%D0%B4%D0%B2%D0%B8%D0%B6%D0%B8%D0%BC%D0%BE%D0%B3%D0%BE%20%D0%B8%D0%BC%D1%83%D1%89%D0%B5%D1%81%D1%82%D0%B2%D0%B0.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9F%D1%80%D0%B8%20%D1%8D%D1%82%D0%BE%D0%BC%20%D0%BE%D1%81%D1%82%D0%B0%D1%82%D0%BE%D0%BA%20%D0%BF%D0%BE%26nbsp%3B%D0%B8%D0%BF%D0%BE%D1%82%D0%B5%D1%87%D0%BD%D1%8B%D0%BC%20%D0%BA%D1%80%D0%B5%D0%B4%D0%B8%D1%82%D0%B0%D0%BC%20%D1%83%D0%B2%D0%B5%D0%BB%D0%B8%D1%87%D0%B8%D0%BB%D1%81%D1%8F%20%D0%B1%D0%BE%D0%BB%D0%B5%D0%B5%20%D1%87%D0%B5%D0%BC%20%D0%BD%D0%B0%26nbsp%3B%3Cstrong%3E30%25%3C%2Fstrong%3E%26nbsp%3B%26mdash%3B%20%D0%B4%D0%BE%26nbsp%3B46%2C4%20%D1%82%D1%80%D0%BB%D0%BD%20%D1%81%D1%83%D0%BC%D0%BE%D0%B2.%20%D0%A1%26nbsp%3B2017%20%D0%B3%D0%BE%D0%B4%D0%B0%20%D0%BE%D0%BD%26nbsp%3B%D0%B2%D1%8B%D1%80%D0%BE%D1%81%20%D0%B2%26nbsp%3B6%20%D1%80%D0%B0%D0%B7%2C%20%D1%87%D1%82%D0%BE%20%D1%83%D0%BA%D0%B0%D0%B7%D1%8B%D0%B2%D0%B0%D0%B5%D1%82%20%D0%BD%D0%B0%26nbsp%3B%D0%B7%D0%BD%D0%B0%D1%87%D0%B5%D0%BD%D0%B8%D0%B5%20%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%BC%20%D0%B4%D0%BE%D1%81%D1%82%D1%83%D0%BF%D0%BD%D0%BE%D0%B9%20%D0%B8%D0%BF%D0%BE%D1%82%D0%B5%D0%BA%D0%B8%20%D0%B4%D0%BB%D1%8F%20%D1%80%D1%8B%D0%BD%D0%BA%D0%B0%20%D0%BD%D0%B5%D0%B4%D0%B2%D0%B8%D0%B6%D0%B8%D0%BC%D0%BE%D1%81%D1%82%D0%B8.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9C%D0%B5%D1%81%D1%8F%D1%87%D0%BD%D1%8B%D0%B5%20%D1%82%D0%B5%D0%BC%D0%BF%D1%8B%20%D1%80%D0%BE%D1%81%D1%82%D0%B0%20%D1%86%D0%B5%D0%BD%20%D0%BD%D0%B0%26nbsp%3B%D0%B6%D0%B8%D0%BB%D1%8C%D1%91%20%D1%83%D0%BF%D0%B0%D0%BB%D0%B8%20%D0%B4%D0%BE%26nbsp%3B%3Cstrong%3E0%2C6%25%3C%2Fstrong%3E.%20%D0%A1%D0%B8%D0%BB%D1%8C%D0%BD%D0%B5%D0%B5%20%D0%B2%D1%81%D0%B5%D0%B3%D0%BE%20%D0%BA%D0%B2%D0%B0%D0%B4%D1%80%D0%B0%D1%82%D0%BD%D1%8B%D0%B5%20%D0%BC%D0%B5%D1%82%D1%80%D1%8B%20%D0%BF%D0%BE%D0%B4%D0%BE%D1%80%D0%BE%D0%B6%D0%B0%D0%BB%D0%B8%20%D0%B2%26nbsp%3B%D0%A2%D0%B5%D1%80%D0%BC%D0%B5%D0%B7%D0%B5%20(%2B5%2C8%25)%20%D0%B8%26nbsp%3B%D0%9D%D0%B0%D0%B2%D0%BE%D0%B8%20(%2B4%2C7%25).%20%D0%92%26nbsp%3B%D1%81%D1%82%D0%BE%D0%BB%D0%B8%D1%86%D0%B5%20%D1%81%D1%80%D0%B5%D0%B4%D0%BD%D0%B8%D0%B9%20%D0%BF%D1%80%D0%B8%D1%80%D0%BE%D1%81%D1%82%20%D1%81%D0%BE%D1%81%D1%82%D0%B0%D0%B2%D0%B8%D0%BB%26nbsp%3B%3Cstrong%3E1%2C1%25%3C%2Fstrong%3E%2C%20%D0%B0%26nbsp%3B%D1%81%D1%80%D0%B5%D0%B4%D0%B8%20%D1%80%D0%B0%D0%B9%D0%BE%D0%BD%D0%BE%D0%B2%20%D0%BB%D0%B8%D0%B4%D0%B5%D1%80%D0%B0%D0%BC%D0%B8%20%D1%81%D1%82%D0%B0%D0%BB%D0%B8%20%D0%A8%D0%B0%D0%B9%D1%85%D0%B0%D0%BD%D1%82%D0%B0%D1%85%D1%83%D1%80%D1%81%D0%BA%D0%B8%D0%B9%20(%2B4%2C1%25)%2C%20%D0%A7%D0%B8%D0%BB%D0%B0%D0%BD%D0%B7%D0%B0%D1%80%D1%81%D0%BA%D0%B8%D0%B9%20(%2B3%2C9%25)%20%D0%B8%26nbsp%3B%D0%A3%D1%87%D1%82%D0%B5%D0%BF%D0%B8%D0%BD%D1%81%D0%BA%D0%B8%D0%B9%20(%2B2%2C7%25).%3C%2Fp%3E%0A%0A%3Cp%3E%D0%92%26nbsp%3B%D0%BF%D1%80%D0%BE%D1%88%D0%B5%D0%B4%D1%88%D0%B5%D0%BC%20%D0%B3%D0%BE%D0%B4%D1%83%20%D0%BD%D0%B5%D0%B4%D0%B2%D0%B8%D0%B6%D0%B8%D0%BC%D0%BE%D1%81%D1%82%D1%8C%20%D0%BD%D0%B0%26nbsp%3B%D0%B2%D1%82%D0%BE%D1%80%D0%B8%D1%87%D0%BD%D0%BE%D0%BC%20%D1%80%D1%8B%D0%BD%D0%BA%D0%B5%20%D1%81%D1%82%D0%B0%D0%BB%D0%B0%20%D0%B4%D0%BE%D1%80%D0%BE%D0%B6%D0%B5%20%D0%BD%D0%B0%26nbsp%3B%3Cstrong%3E16%2C5%25%3C%2Fstrong%3E.%20%D0%9D%D0%B0%D0%B8%D0%B1%D0%BE%D0%BB%D1%8C%D1%88%D0%B8%D0%B9%20%D0%BF%D1%80%D0%B8%D1%80%D0%BE%D1%81%D1%82%20%D0%BE%D1%82%D0%BC%D0%B5%D1%87%D0%B5%D0%BD%20%D0%B2%26nbsp%3B%D0%9D%D0%B0%D0%B2%D0%BE%D0%B8%20(27%2C7%25)%2C%20%D1%81%D0%BB%D0%B5%D0%B4%D0%BE%D0%BC%20%D0%B8%D0%B4%D1%83%D1%82%20%D0%A2%D0%B0%D1%88%D0%BA%D0%B5%D0%BD%D1%82%D1%81%D0%BA%D0%B0%D1%8F%20%D0%BE%D0%B1%D0%BB%D0%B0%D1%81%D1%82%D1%8C%20(%2B25%2C1%25)%2C%20%D0%A2%D0%B0%D1%88%D0%BA%D0%B5%D0%BD%D1%82%20%D0%B8%26nbsp%3B%D0%A4%D0%B5%D1%80%D0%B3%D0%B0%D0%BD%D0%B0%20(%2B24%25).%3C%2Fp%3E%0A%0A%3Cblockquote%3E%0A%3Cp%3E%D0%A1%D1%82%D0%BE%D0%B8%D0%BC%D0%BE%D1%81%D1%82%D1%8C%20%D0%B0%D1%80%D0%B5%D0%BD%D0%B4%D1%8B%20%D0%B6%D0%B8%D0%BB%D1%8C%D1%8F%20%D0%B2%26nbsp%3B%D0%B4%D0%B5%D0%BA%D0%B0%D0%B1%D1%80%D0%B5%20%D1%81%D1%82%D0%B0%D0%B1%D0%B8%D0%BB%D0%B8%D0%B7%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BB%D0%B0%D1%81%D1%8C%20%D0%BD%D0%B0%26nbsp%3B%D1%83%D1%80%D0%BE%D0%B2%D0%BD%D0%B5%26nbsp%3B%3Cstrong%3E%249%2C9%3C%2Fstrong%3E%26nbsp%3B%D0%B7%D0%B0%26nbsp%3B%D0%BA%D0%B2.%20%D0%BC.%20%D0%AD%D1%82%D0%BE%20%D0%BD%D0%B0%26nbsp%3B34%2C6%25%20%D0%B1%D0%BE%D0%BB%D1%8C%D1%88%D0%B5%2C%20%D1%87%D0%B5%D0%BC%20%D0%B1%D1%8B%D0%BB%D0%BE%20%D0%B2%26nbsp%3B%D0%BD%D0%B0%D1%87%D0%B0%D0%BB%D0%B5%20%D0%B3%D0%BE%D0%B4%D0%B0.%3C%2Fp%3E%0A%3C%2Fblockquote%3E%0A%0A%3Cp%3E%D0%9D%D0%B0%D0%B8%D0%B1%D0%BE%D0%BB%D0%B5%D0%B5%20%D0%B4%D0%BE%D1%80%D0%BE%D0%B3%D0%B8%D0%BC%20%D0%B4%D0%BB%D1%8F%20%D0%B0%D1%80%D0%B5%D0%BD%D0%B4%D0%B0%D1%82%D0%BE%D1%80%D0%BE%D0%B2%20%D1%80%D0%B0%D0%B9%D0%BE%D0%BD%D0%BE%D0%BC%20%D0%BE%D1%81%D1%82%D0%B0%D1%91%D1%82%D1%81%D1%8F%20%D0%A8%D0%B0%D0%B9%D1%85%D0%B0%D0%BD%D1%82%D0%B0%D1%85%D1%83%D1%80%D1%81%D0%BA%D0%B8%D0%B9%20(%2413%2C3).%20%D0%92%D1%82%D0%BE%D1%80%D0%BE%D0%B5%20%D0%BC%D0%B5%D1%81%D1%82%D0%BE%20%D0%B7%D0%B0%D0%BD%D0%B8%D0%BC%D0%B0%D0%B5%D1%82%20%D0%AF%D0%BA%D0%BA%D0%B0%D1%81%D0%B0%D1%80%D0%B0%D0%B9%D1%81%D0%BA%D0%B8%D0%B9%20(%2412%2C2)%2C%20%D1%82%D1%80%D0%B5%D1%82%D1%8C%D0%B5%26nbsp%3B%26mdash%3B%20%D0%AF%D1%88%D0%BD%D0%B0%D0%B1%D0%B0%D0%B4%D1%81%D0%BA%D0%B8%D0%B9%20(%2410).%20%D0%94%D0%BE%D1%81%D1%82%D1%83%D0%BF%D0%BD%D0%B5%D0%B5%20%D0%B2%D1%81%D0%B5%D0%B3%D0%BE%20%D0%BA%D0%B2%D0%B0%D1%80%D1%82%D0%B8%D1%80%D1%8B%20%D0%B2%26nbsp%3B%D0%91%D0%B5%D0%BA%D1%82%D0%B5%D0%BC%D0%B8%D1%80%D1%81%D0%BA%D0%BE%D0%BC%2C%20%D0%A1%D0%B5%D1%80%D0%B3%D0%B5%D0%BB%D0%B8%D0%B9%D1%81%D0%BA%D0%BE%D0%BC%20(%247)%20%D0%B8%26nbsp%3B%D0%A3%D1%87%D1%82%D0%B5%D0%BF%D0%B8%D0%BD%D1%81%D0%BA%D0%BE%D0%BC%20%D1%80%D0%B0%D0%B9%D0%BE%D0%BD%D0%B0%D1%85%20(%248).%3C%2Fp%3E%0A', '2023-04-14 11:19:38', 1, 'В декабре число сделок резко упало, хотя в предыдущие годы последний месяц был пиковым.', 2, '357812f13d68c763249331f2a291440f.jpg', 'spros-na-nedvizhimost-za-proshedshiy-god-vyros-menee-chem-na-4-ceir', 1),
(2, 'some title', '%3Cp%3Ehttps%3A%2F%2Fwww.youtube.com%2Fwatch%3Fv%3DZ7wUyXJSHnk%3C%2Fp%3E%0A', '2023-05-17 10:33:58', 1, '', 1, '', 'some-title', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `uni_blog_category`
--

CREATE TABLE `uni_blog_category` (
  `blog_category_id` int(11) NOT NULL,
  `blog_category_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `blog_category_visible` int(1) NOT NULL DEFAULT '1',
  `blog_category_title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `blog_category_id_position` int(11) NOT NULL DEFAULT '0',
  `blog_category_desc` text CHARACTER SET utf8,
  `blog_category_id_parent` int(11) NOT NULL DEFAULT '0',
  `blog_category_image` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `blog_category_text` text CHARACTER SET utf8,
  `blog_category_alias` varchar(255) CHARACTER SET utf8 NOT NULL,
  `blog_category_h1` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `uni_blog_category`
--

INSERT INTO `uni_blog_category` (`blog_category_id`, `blog_category_name`, `blog_category_visible`, `blog_category_title`, `blog_category_id_position`, `blog_category_desc`, `blog_category_id_parent`, `blog_category_image`, `blog_category_text`, `blog_category_alias`, `blog_category_h1`) VALUES
(1, 'Новости', 1, 'Новости', 0, '', 0, NULL, '', 'novosti', 'Новости'),
(2, 'reels', 1, 'reels', 0, '', 0, NULL, '', 'reels', 'reels');

-- --------------------------------------------------------

--
-- Структура таблицы `uni_blog_comments`
--

CREATE TABLE `uni_blog_comments` (
  `blog_comments_id` int(11) NOT NULL,
  `blog_comments_id_article` int(11) NOT NULL DEFAULT '0',
  `blog_comments_id_user` int(11) NOT NULL DEFAULT '0',
  `blog_comments_date` timestamp NULL DEFAULT NULL,
  `blog_comments_text` varchar(5000) DEFAULT NULL,
  `blog_comments_id_parent` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `uni_boxberry_cities`
--

CREATE TABLE `uni_boxberry_cities` (
  `boxberry_cities_id` int(11) NOT NULL,
  `boxberry_cities_name` varchar(255) DEFAULT NULL,
  `boxberry_cities_code` varchar(255) DEFAULT NULL,
  `boxberry_cities_region` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `uni_boxberry_points`
--

CREATE TABLE `uni_boxberry_points` (
  `boxberry_points_id` int(11) NOT NULL,
  `boxberry_points_code` varchar(255) DEFAULT NULL,
  `boxberry_points_address` varchar(255) DEFAULT NULL,
  `boxberry_points_phone` varchar(255) DEFAULT NULL,
  `boxberry_points_workshedule` varchar(255) DEFAULT NULL,
  `boxberry_points_gps` varchar(255) DEFAULT NULL,
  `boxberry_points_city_code` varchar(255) DEFAULT NULL,
  `boxberry_points_send` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `uni_cart`
--

CREATE TABLE `uni_cart` (
  `cart_id` int(11) NOT NULL,
  `cart_ad_id` int(11) NOT NULL DEFAULT '0',
  `cart_user_id` int(11) NOT NULL DEFAULT '0',
  `cart_date_add` timestamp NULL DEFAULT NULL,
  `cart_count` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `uni_category_board`
--

CREATE TABLE `uni_category_board` (
  `category_board_id` bigint(20) UNSIGNED NOT NULL,
  `category_board_name` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_board_visible` int(11) NOT NULL DEFAULT '1',
  `category_board_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_board_id_position` int(11) NOT NULL DEFAULT '0',
  `category_board_text` text COLLATE utf8mb4_unicode_ci,
  `category_board_id_parent` int(11) NOT NULL DEFAULT '0',
  `category_board_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_board_description` text COLLATE utf8mb4_unicode_ci,
  `category_board_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_board_count_view` int(11) NOT NULL DEFAULT '0',
  `category_board_date_view` timestamp NULL DEFAULT NULL,
  `category_board_price` double NOT NULL DEFAULT '0',
  `category_board_count_free` int(11) NOT NULL DEFAULT '0',
  `category_board_status_paid` int(11) NOT NULL DEFAULT '0',
  `category_board_display_price` int(11) NOT NULL DEFAULT '1',
  `category_board_auction` int(11) NOT NULL DEFAULT '0',
  `category_board_secure` int(11) NOT NULL DEFAULT '0',
  `category_board_h1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_board_auto_title` int(11) NOT NULL DEFAULT '0',
  `category_board_auto_title_template` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_board_show_index` int(11) NOT NULL DEFAULT '0',
  `category_board_marketplace` int(11) NOT NULL DEFAULT '0',
  `category_board_booking` int(11) NOT NULL DEFAULT '0',
  `category_board_booking_variant` int(11) NOT NULL DEFAULT '0',
  `category_board_variant_price_id` int(11) NOT NULL DEFAULT '0',
  `category_board_measures_price` text COLLATE utf8mb4_unicode_ci,
  `category_board_rules` text COLLATE utf8mb4_unicode_ci,
  `category_board_online_view` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `uni_chat_locked`
--

CREATE TABLE `uni_chat_locked` (
  `chat_locked_id` int(11) NOT NULL,
  `chat_locked_user_id` int(11) NOT NULL DEFAULT '0',
  `chat_locked_user_id_locked` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `uni_chat_messages`
--

CREATE TABLE `uni_chat_messages` (
  `chat_messages_id` int(11) NOT NULL,
  `chat_messages_text` text CHARACTER SET utf8,
  `chat_messages_date` timestamp NULL DEFAULT NULL,
  `chat_messages_status` int(1) DEFAULT '0',
  `chat_messages_id_hash` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `chat_messages_action` int(11) NOT NULL DEFAULT '0',
  `chat_messages_id_user` int(11) NOT NULL DEFAULT '0',
  `chat_messages_notification` int(11) NOT NULL DEFAULT '0',
  `chat_messages_attach` text,
  `chat_messages_id_responder` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `uni_chat_messages`
--

INSERT INTO `uni_chat_messages` (`chat_messages_id`, `chat_messages_text`, `chat_messages_date`, `chat_messages_status`, `chat_messages_id_hash`, `chat_messages_action`, `chat_messages_id_user`, `chat_messages_notification`, `chat_messages_attach`, `chat_messages_id_responder`) VALUES
(1, 'UvRgJeQrpSfbatvks5lrruB0UsawO6gZR864nKqg8/vPjtFPKQBz6B3Jqg1L3nmzrxvVMPGvr+z2YdzOdSscKQ==', '2023-04-17 17:59:23', 1, '20784f6187084788d5184fe39d96584f', 0, 1, 0, '[]', 0),
(2, 'r1cFuz6nNU1ZAKPr6BBbAcBdGyBJLGKbGKrd8uluQJpGVogWEvmYh3I2fAtH1OMlvhPttA3kC7PzaxNkHOqJZw==', '2023-04-17 17:59:52', 1, '20784f6187084788d5184fe39d96584f', 0, 0, 0, '[]', 0),
(3, 'AUNl9lwNArYnaBGaJn2aewYjMLcSMFn5fwGj0rRsKye7ebgSQrNvtRTG+oeoDujzKVLluU2BjnQjxW8suZ6Fp9mYYzvFgyXTvkl7l8y3PyY=', '2023-04-17 18:00:13', 1, '20784f6187084788d5184fe39d96584f', 0, 0, 0, '[]', 0),
(4, NULL, '2023-04-24 12:12:39', 1, 'c20ad4d76fe97759aa27a0c99bff6710', 1, 2, 0, '[]', 0),
(5, 'jlZJ1vtoQd0KtweTRmE1n++JcyvEMP0ns7AkYyMybvF3c5yUHt1Ipiz7mTCqqH0QhAudzCI3iNDjSHBhKApCuQ==', '2023-05-13 11:12:09', 1, '20784f6187084788d5184fe39d96584f', 0, 0, 0, '[]', 0),
(6, '3y9snOXJOqmAoO3qhPO37boR4sjokmQ1kcn3OSZtA7LG5ZSxZbZmlTVhLlJ2kSXDG2+EYFLGxvAlkQiJQvfwcw==', '2023-05-13 11:13:03', 1, '20784f6187084788d5184fe39d96584f', 0, 1, 0, '[]', 0),
(7, '92YKHpXeExwjbtg+n4jNZA2no1nrYUsqGLggm5K04BiCw9gewn5kz8EAlzDxNgZTK7V7P96l9mQnBZ9SbwQl/w==', '2023-05-13 11:13:20', 1, '20784f6187084788d5184fe39d96584f', 0, 1, 0, '[]', 0),
(8, NULL, '2023-05-31 14:10:34', 0, '2838023a778dfaecdc212708f721b788', 1, 1, 0, '[]', 0),
(9, NULL, '2023-06-01 06:07:48', 1, '03afdbd66e7929b125f8597834fa83a4', 1, 3, 0, '[]', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `uni_chat_responders`
--

CREATE TABLE `uni_chat_responders` (
  `chat_responders_id` int(11) NOT NULL,
  `chat_responders_name` varchar(255) DEFAULT NULL,
  `chat_responders_text` text,
  `chat_responders_date` timestamp NULL DEFAULT NULL,
  `chat_responders_count_users` int(11) NOT NULL DEFAULT '0',
  `chat_responders_status` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `uni_chat_users`
--

CREATE TABLE `uni_chat_users` (
  `chat_users_id` int(11) NOT NULL,
  `chat_users_id_ad` int(11) NOT NULL DEFAULT '0',
  `chat_users_id_user` int(11) NOT NULL DEFAULT '0',
  `chat_users_id_hash` varchar(255) DEFAULT NULL,
  `chat_users_id_interlocutor` int(11) NOT NULL DEFAULT '0',
  `chat_users_id_responder` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `uni_chat_users`
--

INSERT INTO `uni_chat_users` (`chat_users_id`, `chat_users_id_ad`, `chat_users_id_user`, `chat_users_id_hash`, `chat_users_id_interlocutor`, `chat_users_id_responder`) VALUES
(1, 0, 1, '20784f6187084788d5184fe39d96584f', 0, 0),
(2, 0, 0, '20784f6187084788d5184fe39d96584f', 1, 0),
(3, 0, 0, '20784f6187084788d5184fe39d96584f', 1, 0),
(4, 0, 1, '20784f6187084788d5184fe39d96584f', 0, 0),
(5, 0, 0, '20784f6187084788d5184fe39d96584f', 1, 0),
(6, 0, 1, '20784f6187084788d5184fe39d96584f', 0, 0),
(7, 1, 1, 'c20ad4d76fe97759aa27a0c99bff6710', 2, 0),
(8, 0, 0, '20784f6187084788d5184fe39d96584f', 1, 0),
(9, 0, 1, '20784f6187084788d5184fe39d96584f', 0, 0),
(10, 0, 1, '20784f6187084788d5184fe39d96584f', 0, 0),
(11, 0, 0, '20784f6187084788d5184fe39d96584f', 1, 0),
(12, 0, 1, '20784f6187084788d5184fe39d96584f', 0, 0),
(13, 0, 0, '20784f6187084788d5184fe39d96584f', 1, 0),
(14, 5, 1, '2838023a778dfaecdc212708f721b788', 1, 0),
(15, 6, 1, '03afdbd66e7929b125f8597834fa83a4', 3, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `uni_city`
--

CREATE TABLE `uni_city` (
  `city_id` int(11) UNSIGNED NOT NULL,
  `country_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `region_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `city_name` varchar(128) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `city_alias` varchar(255) CHARACTER SET utf8 NOT NULL,
  `city_count_view` int(11) NOT NULL DEFAULT '0',
  `city_default` int(1) NOT NULL DEFAULT '0',
  `city_desc` text CHARACTER SET utf8,
  `city_declination` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `uni_city`
--

INSERT INTO `uni_city` (`city_id`, `country_id`, `region_id`, `city_name`, `city_alias`, `city_count_view`, `city_default`, `city_desc`, `city_declination`) VALUES
(1, 1, 1, 'Майкоп', 'maykop', 0, 0, '', 'в Майкопе'),
(2, 1, 1, 'Адыгейск', 'adygeysk', 0, 0, '', 'в Адыгейске'),
(3, 1, 2, 'Горно-Алтайск', 'gorno-altaysk', 0, 0, '', 'в Горно-Алтайске'),
(4, 1, 3, 'Яровое', 'yarovoe', 0, 0, '', 'в Яровом'),
(5, 1, 3, 'Славгород', 'slavgorod', 0, 0, '', 'в Славгороде'),
(6, 1, 3, 'Рубцовск', 'rubcovsk', 0, 0, '', 'в Рубцовске'),
(7, 1, 3, 'Новоалтайск', 'novoaltaysk', 0, 0, '', 'в Новоалтайске'),
(8, 1, 3, 'Змеиногорск', 'zmeinogorsk', 0, 0, '', 'в Змеиногорске'),
(9, 1, 3, 'Камень-на-Оби', 'kamen-na-obi', 0, 0, '', 'в Камне-на-Оби'),
(10, 1, 3, 'Заринск', 'zarinsk', 0, 0, '', 'в Заринске'),
(11, 1, 3, 'Горняк', 'gornyak', 0, 0, '', 'в Горняке'),
(12, 1, 3, 'Бийск', 'biysk', 0, 0, '', 'в Бийске'),
(13, 1, 3, 'Алейск', 'aleysk', 0, 0, '', 'в Алейске'),
(14, 1, 3, 'Барнаул', 'barnaul', 0, 0, '', 'в Барнауле'),
(15, 1, 3, 'Белокуриха', 'belokuriha', 0, 0, '', 'в Белокурихе'),
(16, 1, 4, 'Циолковский', 'ciolkovskiy', 0, 0, '', ''),
(17, 1, 4, 'Шимановск', 'shimanovsk', 0, 0, '', 'в Шимановске'),
(18, 1, 4, 'Сковородино', 'skovorodino', 0, 0, '', 'в Сковородино'),
(19, 1, 4, 'Тында', 'tynda', 0, 0, '', 'в Тынде'),
(20, 1, 4, 'Райчихинск', 'raychihinsk', 0, 0, '', 'в Райчихинске'),
(21, 1, 4, 'Свободный', 'svobodnyy', 0, 0, '', 'в Свободном'),
(22, 1, 4, 'Завитинск', 'zavitinsk', 0, 0, '', 'в Завитинске'),
(23, 1, 4, 'Зея', 'zeya', 0, 0, '', 'в Зее'),
(24, 1, 4, 'Белогорск', 'belogorsk', 0, 0, '', 'в Белогорске'),
(25, 1, 4, 'Благовещенск', 'blagoveshchensk', 0, 0, '', 'в Благовещенске'),
(26, 1, 5, 'Шенкурск', 'shenkursk', 0, 0, '', 'в Шенкурске'),
(27, 1, 5, 'Сольвычегодск', 'solvychegodsk', 0, 0, '', 'в Сольвычегодске'),
(28, 1, 5, 'Северодвинск', 'severodvinsk', 0, 0, '', 'в Северодвинске'),
(29, 1, 5, 'Няндома', 'nyandoma', 0, 0, '', 'в Няндоме'),
(30, 1, 5, 'Онега', 'onega', 0, 0, '', 'в Онеге'),
(31, 1, 5, 'Новодвинск', 'novodvinsk', 0, 0, '', 'в Новодвинске'),
(32, 1, 5, 'Мирный', 'mirnyy', 0, 0, '', 'в Мирном'),
(33, 1, 5, 'Мезень', 'mezen', 0, 0, '', 'в Мезени'),
(34, 1, 5, 'Коряжма', 'koryazhma', 0, 0, '', 'в Коряжме'),
(35, 1, 5, 'Котлас', 'kotlas', 0, 0, '', 'в Котласе'),
(36, 1, 5, 'Каргополь', 'kargopol', 0, 0, '', 'в Каргополе'),
(37, 1, 5, 'Вельск', 'velsk', 0, 0, '', 'в Вельске'),
(38, 1, 5, 'Архангельск', 'arhangelsk', 0, 0, '', 'в Архангельске'),
(39, 1, 6, 'Харабали', 'harabali', 0, 0, '', 'в Харабали'),
(40, 1, 6, 'Нариманов', 'narimanov', 0, 0, '', 'в Нариманове'),
(41, 1, 6, 'Знаменск', 'znamensk', 0, 0, '', 'в Знаменске'),
(42, 1, 6, 'Камызяк', 'kamyzyak', 0, 0, '', 'в Камызяке'),
(43, 1, 6, 'Астрахань', 'astrahan', 0, 0, '', 'в Астрахани'),
(44, 1, 6, 'Ахтубинск', 'ahtubinsk', 0, 0, '', 'в Ахтубинске'),
(1149, 2, 88, 'Эмба', 'emba', 0, 0, '', ''),
(46, 1, 8, 'Янаул', 'yanaul', 0, 0, '', 'в Янауле'),
(47, 1, 8, 'Уфа', 'ufa', 0, 1, '', 'в Уфе'),
(48, 1, 8, 'Учалы', 'uchaly', 0, 0, '', 'в Учалах'),
(49, 1, 8, 'Туймазы', 'tuymazy', 0, 0, '', 'в Туймазах'),
(50, 1, 8, 'Стерлитамак', 'sterlitamak', 0, 0, '', 'в Стерлитамаке'),
(51, 1, 8, 'Сибай', 'sibay', 0, 0, '', 'в Сибае'),
(52, 1, 8, 'Салават', 'salavat', 0, 0, '', 'в Салавате'),
(53, 1, 8, 'Октябрьский', 'oktyabrskiy', 0, 0, '', 'в Октябрьском'),
(54, 1, 8, 'Нефтекамск', 'neftekamsk', 0, 0, '', 'в Нефтекамске'),
(55, 1, 8, 'Межгорье', 'mezhgore', 0, 0, '', 'в Межгорье'),
(56, 1, 8, 'Мелеуз', 'meleuz', 0, 0, '', 'в Мелеузе'),
(57, 1, 8, 'Кумертау', 'kumertau', 0, 0, '', 'в Кумертау'),
(58, 1, 8, 'Ишимбай', 'ishimbay', 0, 0, '', 'в Ишимбае'),
(59, 1, 8, 'Дюртюли', 'dyurtyuli', 0, 0, '', 'в Дюртюлях'),
(60, 1, 8, 'Давлеканово', 'davlekanovo', 0, 0, '', 'в Давлеканово'),
(61, 1, 8, 'Бирск', 'birsk', 0, 0, '', 'в Бирске'),
(62, 1, 8, 'Благовещенск', 'blagoveshchensk', 0, 0, '', 'в Благовещенске'),
(63, 1, 8, 'Белебей', 'belebey', 0, 0, '', 'в Белебее'),
(64, 1, 8, 'Белорецк', 'beloreck', 0, 0, '', 'в Белорецке'),
(65, 1, 8, 'Баймак', 'baymak', 0, 0, '', 'в Баймаке'),
(66, 1, 8, 'Агидель', 'agidel', 0, 0, '', 'в Агидели'),
(67, 1, 9, 'Шебекино', 'shebekino', 0, 0, '', 'в Шебекино'),
(68, 1, 9, 'Старый Оскол', 'staryy-oskol', 0, 0, '', 'в Старом Осколе'),
(69, 1, 9, 'Строитель', 'stroitel', 0, 0, '', 'в Строителе'),
(70, 1, 9, 'Новый Оскол', 'novyy-oskol', 0, 0, '', 'в Новом Осколе'),
(71, 1, 9, 'Короча', 'korocha', 0, 0, '', 'в Короче'),
(72, 1, 9, 'Грайворон', 'grayvoron', 0, 0, '', 'в Грайвороне'),
(73, 1, 9, 'Губкин', 'gubkin', 0, 0, '', 'в Губкине'),
(74, 1, 9, 'Бирюч', 'biryuch', 0, 0, '', 'в Бирюче'),
(75, 1, 9, 'Валуйки', 'valuyki', 0, 0, '', 'в Валуйках'),
(76, 1, 9, 'Алексеевка', 'alekseevka', 0, 0, '', 'в Алексеевке'),
(77, 1, 9, 'Белгород', 'belgorod', 0, 0, '', 'в Белгороде'),
(78, 1, 10, 'Унеча', 'unecha', 0, 0, '', 'в Унече'),
(79, 1, 10, 'Фокино', 'fokino', 0, 0, '', 'в Фокино'),
(80, 1, 10, 'Сураж', 'surazh', 0, 0, '', 'в Сураже'),
(81, 1, 10, 'Трубчевск', 'trubchevsk', 0, 0, '', 'в Трубчевске'),
(82, 1, 10, 'Стародуб', 'starodub', 0, 0, '', 'в Стародубе'),
(83, 1, 10, 'Севск', 'sevsk', 0, 0, '', 'в Севске'),
(84, 1, 10, 'Сельцо', 'selco', 0, 0, '', 'в Сельце'),
(85, 1, 10, 'Почеп', 'pochep', 0, 0, '', 'в Почепе'),
(86, 1, 10, 'Новозыбков', 'novozybkov', 0, 0, '', 'в Новозыбкове'),
(87, 1, 10, 'Мглин', 'mglin', 0, 0, '', 'в Мглине'),
(88, 1, 10, 'Клинцы', 'klincy', 0, 0, '', 'в Клинцах'),
(89, 1, 10, 'Карачев', 'karachev', 0, 0, '', 'в Карачеве'),
(90, 1, 10, 'Злынка', 'zlynka', 0, 0, '', 'в Злынке'),
(91, 1, 10, 'Дятьково', 'dyatkovo', 0, 0, '', 'в Дятьково'),
(92, 1, 10, 'Жуковка', 'zhukovka', 0, 0, '', 'в Жуковке'),
(93, 1, 10, 'Брянск', 'bryansk', 0, 0, '', 'в Брянске'),
(94, 1, 11, 'Улан-Удэ', 'ulan-ude', 0, 0, '', 'в Улан-Удэ'),
(95, 1, 11, 'Северобайкальск', 'severobaykalsk', 0, 0, '', 'в Северобайкальске'),
(96, 1, 11, 'Кяхта', 'kyahta', 0, 0, '', 'в Кяхте'),
(97, 1, 11, 'Гусиноозерск', 'gusinoozersk', 0, 0, '', ''),
(98, 1, 11, 'Закаменск', 'zakamensk', 0, 0, '', 'в Закаменске'),
(99, 1, 11, 'Бабушкин', 'babushkin', 0, 0, '', 'в Бабушкине'),
(100, 1, 12, 'Юрьев-Польский', 'yurev-polskiy', 0, 0, '', 'в Юрьев-Польском'),
(101, 1, 12, 'Струнино', 'strunino', 0, 0, '', 'в Струнино'),
(102, 1, 12, 'Судогда', 'sudogda', 0, 0, '', 'в Судогде'),
(103, 1, 12, 'Суздаль', 'suzdal', 0, 0, '', 'в Суздале'),
(104, 1, 12, 'Собинка', 'sobinka', 0, 0, '', 'в Собинке'),
(105, 1, 12, 'Радужный', 'raduzhnyy', 0, 0, '', 'в Радужном'),
(106, 1, 12, 'Петушки', 'petushki', 0, 0, '', 'в Петушках'),
(107, 1, 12, 'Покров', 'pokrov', 0, 0, '', 'в Покрове'),
(108, 1, 12, 'Муром', 'murom', 0, 0, '', 'в Муроме'),
(109, 1, 12, 'Меленки', 'melenki', 0, 0, '', 'в Меленках'),
(110, 1, 12, 'Курлово', 'kurlovo', 0, 0, '', 'в Курлово'),
(111, 1, 12, 'Лакинск', 'lakinsk', 0, 0, '', 'в Лакинске'),
(112, 1, 12, 'Костерево', 'kosterevo', 0, 0, '', 'в Костерево'),
(113, 1, 12, 'Киржач', 'kirzhach', 0, 0, '', 'в Киржаче'),
(114, 1, 12, 'Ковров', 'kovrov', 0, 0, '', 'в Коврове'),
(115, 1, 12, 'Кольчугино', 'kolchugino', 0, 0, '', 'в Кольчугино'),
(116, 1, 12, 'Камешково', 'kameshkovo', 0, 0, '', 'в Камешково'),
(117, 1, 12, 'Карабаново', 'karabanovo', 0, 0, '', 'в Карабаново'),
(118, 1, 12, 'Гороховец', 'gorohovec', 0, 0, '', 'в Гороховце'),
(119, 1, 12, 'Гусь-Хрустальный', 'gus-hrustalnyy', 0, 0, '', 'в Гусь-Хрустальном'),
(120, 1, 12, 'Вязники', 'vyazniki', 0, 0, '', 'в Вязниках'),
(121, 1, 12, 'Владимир', 'vladimir', 0, 0, '', 'в Владимире'),
(122, 1, 12, 'Александров', 'aleksandrov', 0, 0, '', 'в Александрове'),
(123, 1, 13, 'Фролово', 'frolovo', 0, 0, '', 'в Фролово'),
(124, 1, 13, 'Суровикино', 'surovikino', 0, 0, '', 'в Суровикино'),
(125, 1, 13, 'Урюпинск', 'uryupinsk', 0, 0, '', 'в Урюпинске'),
(126, 1, 13, 'Серафимович', 'serafimovich', 0, 0, '', 'в Серафимовиче'),
(127, 1, 13, 'Петров Вал', 'petrov-val', 0, 0, '', 'в Петрове Вале'),
(128, 1, 13, 'Палласовка', 'pallasovka', 0, 0, '', 'в Палласовке'),
(129, 1, 13, 'Михайловка', 'mihaylovka', 0, 0, '', 'в Михайловке'),
(130, 1, 13, 'Николаевск', 'nikolaevsk', 0, 0, '', 'в Николаевске'),
(131, 1, 13, 'Новоаннинский', 'novoanninskiy', 0, 0, '', 'в Новоаннинском'),
(132, 1, 13, 'Ленинск', 'leninsk', 0, 0, '', 'в Ленинске'),
(133, 1, 13, 'Котово', 'kotovo', 0, 0, '', 'в Котово'),
(134, 1, 13, 'Краснослободск', 'krasnoslobodsk', 0, 0, '', 'в Краснослободске'),
(135, 1, 13, 'Камышин', 'kamyshin', 0, 0, '', 'в Камышине'),
(136, 1, 13, 'Котельниково', 'kotelnikovo', 0, 0, '', 'в Котельниково'),
(137, 1, 13, 'Калач-на-Дону', 'kalach-na-donu', 0, 0, '', 'в Калаче-на-Дону'),
(138, 1, 13, 'Дубовка', 'dubovka', 0, 0, '', 'в Дубовке'),
(139, 1, 13, 'Жирновск', 'zhirnovsk', 0, 0, '', 'в Жирновске'),
(140, 1, 13, 'Волгоград', 'volgograd', 0, 1, '', 'в Волгограде'),
(141, 1, 13, 'Волжский', 'volzhskiy', 0, 0, '', 'в Волжском'),
(142, 1, 14, 'Череповец', 'cherepovec', 0, 0, '', 'в Череповце'),
(143, 1, 14, 'Харовск', 'harovsk', 0, 0, '', 'в Харовске'),
(144, 1, 14, 'Устюжна', 'ustyuzhna', 0, 0, '', 'в Устюжне'),
(145, 1, 14, 'Тотьма', 'totma', 0, 0, '', 'в Тотьме'),
(146, 1, 14, 'Сокол', 'sokol', 0, 0, '', 'в Соколе'),
(147, 1, 14, 'Никольск', 'nikolsk', 0, 0, '', 'в Никольске'),
(148, 1, 14, 'Красавино', 'krasavino', 0, 0, '', 'в Красавино'),
(149, 1, 14, 'Кириллов', 'kirillov', 0, 0, '', 'в Кириллове'),
(150, 1, 14, 'Кадников', 'kadnikov', 0, 0, '', 'в Кадникове'),
(151, 1, 14, 'Грязовец', 'gryazovec', 0, 0, '', 'в Грязовце'),
(152, 1, 14, 'Вытегра', 'vytegra', 0, 0, '', 'в Вытегре'),
(153, 1, 14, 'Вологда', 'vologda', 0, 0, '', 'в Вологде'),
(154, 1, 14, 'Великий Устюг', 'velikiy-ustyug', 0, 0, '', 'в Великом Устюге'),
(155, 1, 14, 'Белозерск', 'belozersk', 0, 0, '', 'в Белозерске'),
(156, 1, 14, 'Бабаево', 'babaevo', 0, 0, '', 'в Бабаево'),
(157, 1, 15, 'Эртиль', 'ertil', 0, 0, '', 'в Эртиле'),
(158, 1, 15, 'Семилуки', 'semiluki', 0, 0, '', 'в Семилуках'),
(159, 1, 15, 'Россошь', 'rossosh', 0, 0, '', 'в Россоши'),
(160, 1, 15, 'Поворино', 'povorino', 0, 0, '', 'в Поворино'),
(161, 1, 15, 'Острогожск', 'ostrogozhsk', 0, 0, '', 'в Острогожске'),
(162, 1, 15, 'Павловск', 'pavlovsk', 0, 0, '', 'в Павловске'),
(163, 1, 15, 'Нововоронеж', 'novovoronezh', 0, 0, '', 'в Нововоронеже'),
(164, 1, 15, 'Новохоперск', 'novohopersk', 0, 0, '', 'в Новохоперске'),
(165, 1, 15, 'Лиски', 'liski', 0, 0, '', 'в Лисках'),
(166, 1, 15, 'Калач', 'kalach', 0, 0, '', 'в Калаче'),
(167, 1, 15, 'Воронеж', 'voronezh', 0, 1, '', 'в Воронеже'),
(168, 1, 15, 'Бобров', 'bobrov', 0, 0, '', 'в Боброве'),
(169, 1, 15, 'Богучар', 'boguchar', 0, 0, '', 'в Богучаре'),
(170, 1, 15, 'Борисоглебск', 'borisoglebsk', 0, 0, '', 'в Борисоглебске'),
(171, 1, 15, 'Бутурлиновка', 'buturlinovka', 0, 0, '', 'в Бутурлиновке'),
(172, 1, 16, 'Южно-Сухокумск', 'yuzhno-suhokumsk', 0, 0, '', 'в Южно-Сухокумске'),
(173, 1, 16, 'Хасавюрт', 'hasavyurt', 0, 0, '', 'в Хасавюрте'),
(174, 1, 16, 'Махачкала', 'mahachkala', 0, 0, '', 'в Махачкале'),
(175, 1, 16, 'Кизилюрт', 'kizilyurt', 0, 0, '', 'в Кизилюрте'),
(176, 1, 16, 'Кизляр', 'kizlyar', 0, 0, '', 'в Кизляре'),
(177, 1, 16, 'Каспийск', 'kaspiysk', 0, 0, '', 'в Каспийске'),
(178, 1, 16, 'Дербент', 'derbent', 0, 0, '', 'в Дербенте'),
(179, 1, 16, 'Избербаш', 'izberbash', 0, 0, '', 'в Избербаше'),
(180, 1, 16, 'Дагестанские Огни', 'dagestanskie-ogni', 0, 0, '', 'в Дагестанских Огнях'),
(181, 1, 16, 'Буйнакск', 'buynaksk', 0, 0, '', 'в Буйнакске'),
(182, 1, 17, 'Биробиджан', 'birobidzhan', 0, 0, '', 'в Биробиджане'),
(183, 1, 17, 'Облучье', 'obluche', 0, 0, '', 'в Облучье'),
(184, 1, 18, 'Чита', 'chita', 0, 0, '', 'в Чите'),
(185, 1, 18, 'Шилка', 'shilka', 0, 0, '', 'в Шилке'),
(186, 1, 18, 'Хилок', 'hilok', 0, 0, '', 'в Хилке'),
(187, 1, 18, 'Сретенск', 'sretensk', 0, 0, '', 'в Сретенске'),
(188, 1, 18, 'Петровск-Забайкальский', 'petrovsk-zabaykalskiy', 0, 0, '', 'в Петровске-Забайкальском'),
(189, 1, 18, 'Могоча', 'mogocha', 0, 0, '', 'в Могоче'),
(190, 1, 18, 'Нерчинск', 'nerchinsk', 0, 0, '', 'в Нерчинске'),
(191, 1, 18, 'Краснокаменск', 'krasnokamensk', 0, 0, '', 'в Краснокаменске'),
(192, 1, 18, 'Борзя', 'borzya', 0, 0, '', 'в Борзе'),
(193, 1, 18, 'Балей', 'baley', 0, 0, '', 'в Балее'),
(194, 1, 19, 'Юрьевец', 'yurevec', 0, 0, '', 'в Юрьевце'),
(195, 1, 19, 'Шуя', 'shuya', 0, 0, '', 'в Шуе'),
(196, 1, 19, 'Южа', 'yuzha', 0, 0, '', 'в Юже'),
(197, 1, 19, 'Фурманов', 'furmanov', 0, 0, '', 'в Фурманове'),
(198, 1, 19, 'Тейково', 'teykovo', 0, 0, '', 'в Тейково'),
(199, 1, 19, 'Пучеж', 'puchezh', 0, 0, '', 'в Пучеже'),
(200, 1, 19, 'Родники', 'rodniki', 0, 0, '', 'в Родниках'),
(201, 1, 19, 'Приволжск', 'privolzhsk', 0, 0, '', 'в Приволжске'),
(202, 1, 19, 'Плес', 'ples', 0, 0, '', 'в Плесе'),
(203, 1, 19, 'Наволоки', 'navoloki', 0, 0, '', 'в Наволоках'),
(204, 1, 19, 'Кохма', 'kohma', 0, 0, '', 'в Кохме'),
(205, 1, 19, 'Комсомольск', 'komsomolsk', 0, 0, '', 'в Комсомольске'),
(206, 1, 19, 'Кинешма', 'kineshma', 0, 0, '', 'в Кинешме'),
(207, 1, 19, 'Иваново', 'ivanovo', 0, 0, '', 'в Иваново'),
(208, 1, 19, 'Заволжск', 'zavolzhsk', 0, 0, '', 'в Заволжске'),
(209, 1, 19, 'Гаврилов Посад', 'gavrilov-posad', 0, 0, '', 'в Гавриловом Посаде'),
(210, 1, 19, 'Вичуга', 'vichuga', 0, 0, '', 'в Вичуге'),
(211, 1, 20, 'Карабулак', 'karabulak', 0, 0, '', 'в Карабулаке'),
(212, 1, 20, 'Магас', 'magas', 0, 0, '', 'в Магасе'),
(213, 1, 20, 'Малгобек', 'malgobek', 0, 0, '', 'в Малгобеке'),
(214, 1, 20, 'Назрань', 'nazran', 0, 0, '', 'в Назрани'),
(215, 1, 20, 'Сунжа', 'sunzha', 0, 0, '', ''),
(216, 1, 21, 'Шелехов', 'shelehov', 0, 0, '', 'в Шелехове'),
(217, 1, 21, 'Черемхово', 'cheremhovo', 0, 0, '', 'в Черемхово'),
(218, 1, 21, 'Тулун', 'tulun', 0, 0, '', 'в Тулуне'),
(219, 1, 21, 'Усолье-Сибирское', 'usole-sibirskoe', 0, 0, '', 'в Усолье-Сибирском'),
(220, 1, 21, 'Усть-Илимск', 'ust-ilimsk', 0, 0, '', 'в Усть-Илимске'),
(221, 1, 21, 'Усть-Кут', 'ust-kut', 0, 0, '', 'в Усть-Куте'),
(222, 1, 21, 'Слюдянка', 'slyudyanka', 0, 0, '', 'в Слюдянке'),
(223, 1, 21, 'Тайшет', 'tayshet', 0, 0, '', 'в Тайшете'),
(224, 1, 21, 'Саянск', 'sayansk', 0, 0, '', 'в Саянске'),
(225, 1, 21, 'Свирск', 'svirsk', 0, 0, '', 'в Свирске'),
(226, 1, 21, 'Нижнеудинск', 'nizhneudinsk', 0, 0, '', 'в Нижнеудинске'),
(227, 1, 21, 'Киренск', 'kirensk', 0, 0, '', 'в Киренске'),
(228, 1, 21, 'Зима', 'zima', 0, 0, '', 'в Зиме'),
(229, 1, 21, 'Иркутск', 'irkutsk', 0, 1, '', 'в Иркутске'),
(230, 1, 21, 'Железногорск-Илимский', 'zheleznogorsk-ilimskiy', 0, 0, '', 'в Железногорске-Илимском'),
(231, 1, 21, 'Братск', 'bratsk', 0, 0, '', 'в Братске'),
(232, 1, 21, 'Вихоревка', 'vihorevka', 0, 0, '', 'в Вихоревке'),
(233, 1, 21, 'Байкальск', 'baykalsk', 0, 0, '', 'в Байкальске'),
(234, 1, 21, 'Бирюсинск', 'biryusinsk', 0, 0, '', 'в Бирюсинске'),
(235, 1, 21, 'Бодайбо', 'bodaybo', 0, 0, '', 'в Бодайбо'),
(236, 1, 21, 'Алзамай', 'alzamay', 0, 0, '', 'в Алзамае'),
(237, 1, 21, 'Ангарск', 'angarsk', 0, 0, '', 'в Ангарске'),
(238, 1, 22, 'Нарткала', 'nartkala', 0, 0, '', 'в Нарткале'),
(239, 1, 22, 'Прохладный', 'prohladnyy', 0, 0, '', 'в Прохладном'),
(240, 1, 22, 'Терек', 'terek', 0, 0, '', 'в Тереке'),
(241, 1, 22, 'Тырныауз', 'tyrnyauz', 0, 0, '', 'в Тырныаузе'),
(242, 1, 22, 'Чегем', 'chegem', 0, 0, '', 'в Чегеме'),
(243, 1, 22, 'Баксан', 'baksan', 0, 0, '', 'в Баксане'),
(244, 1, 22, 'Майский', 'mayskiy', 0, 0, '', 'в Майском'),
(245, 1, 22, 'Нальчик', 'nalchik', 0, 0, '', 'в Нальчике'),
(246, 1, 23, 'Черняховск', 'chernyahovsk', 0, 0, '', 'в Черняховске'),
(247, 1, 23, 'Славск', 'slavsk', 0, 0, '', 'в Славске'),
(248, 1, 23, 'Советск', 'sovetsk', 0, 0, '', 'в Советске'),
(249, 1, 23, 'Светлогорск', 'svetlogorsk', 0, 0, '', 'в Светлогорске'),
(250, 1, 23, 'Светлый', 'svetlyy', 0, 0, '', 'в Светлом'),
(251, 1, 23, 'Пионерский', 'pionerskiy', 0, 0, '', 'в Пионерском'),
(252, 1, 23, 'Полесск', 'polessk', 0, 0, '', 'в Полесске'),
(253, 1, 23, 'Правдинск', 'pravdinsk', 0, 0, '', 'в Правдинске'),
(254, 1, 23, 'Приморск', 'primorsk', 0, 0, '', 'в Приморске'),
(255, 1, 23, 'Неман', 'neman', 0, 0, '', 'в Немане'),
(256, 1, 23, 'Нестеров', 'nesterov', 0, 0, '', 'в Нестерове'),
(257, 1, 23, 'Озерск', 'ozersk', 0, 0, '', 'в Озерске'),
(258, 1, 23, 'Мамоново', 'mamonovo', 0, 0, '', 'в Мамоново'),
(259, 1, 23, 'Краснознаменск', 'krasnoznamensk', 0, 0, '', 'в Краснознаменске'),
(260, 1, 23, 'Ладушкин', 'ladushkin', 0, 0, '', 'в Ладушкине'),
(261, 1, 23, 'Калининград', 'kaliningrad', 0, 0, '', 'в Калининграде'),
(262, 1, 23, 'Зеленоградск', 'zelenogradsk', 0, 0, '', 'в Зеленоградске'),
(263, 1, 23, 'Гвардейск', 'gvardeysk', 0, 0, '', 'в Гвардейске'),
(264, 1, 23, 'Гурьевск', 'gurevsk', 0, 0, '', 'в Гурьевске'),
(265, 1, 23, 'Гусев', 'gusev', 0, 0, '', 'в Гусеве'),
(266, 1, 23, 'Багратионовск', 'bagrationovsk', 0, 0, '', 'в Багратионовске'),
(267, 1, 23, 'Балтийск', 'baltiysk', 0, 0, '', 'в Балтийске'),
(268, 1, 24, 'Элиста', 'elista', 0, 0, '', 'в Элисте'),
(269, 1, 24, 'Лагань', 'lagan', 0, 0, '', 'в Лагани'),
(270, 1, 24, 'Городовиковск', 'gorodovikovsk', 0, 0, '', 'в Городовиковске'),
(271, 1, 25, 'Юхнов', 'yuhnov', 0, 0, '', 'в Юхнове'),
(272, 1, 25, 'Таруса', 'tarusa', 0, 0, '', 'в Тарусе'),
(273, 1, 25, 'Сухиничи', 'suhinichi', 0, 0, '', 'в Сухиничах'),
(274, 1, 25, 'Сосенский', 'sosenskiy', 0, 0, '', 'в Сосенском'),
(275, 1, 25, 'Спас-Деменск', 'spas-demensk', 0, 0, '', 'в Спас-Деменске'),
(276, 1, 25, 'Обнинск', 'obninsk', 0, 0, '', 'в Обнинске'),
(277, 1, 25, 'Медынь', 'medyn', 0, 0, '', 'в Медыни'),
(278, 1, 25, 'Мещовск', 'meshchovsk', 0, 0, '', ''),
(279, 1, 25, 'Мосальск', 'mosalsk', 0, 0, '', 'в Мосальске'),
(280, 1, 25, 'Малоярославец', 'maloyaroslavec', 0, 0, '', 'в Малоярославце'),
(281, 1, 25, 'Людиново', 'lyudinovo', 0, 0, '', 'в Людиново'),
(282, 1, 25, 'Кременки', 'kremenki', 0, 0, '', ''),
(283, 1, 25, 'Козельск', 'kozelsk', 0, 0, '', 'в Козельске'),
(284, 1, 25, 'Кондрово', 'kondrovo', 0, 0, '', 'в Кондрово'),
(285, 1, 25, 'Киров', 'kirov', 0, 0, '', 'в Кирове'),
(286, 1, 25, 'Калуга', 'kaluga', 0, 0, '', 'в Калуге'),
(287, 1, 25, 'Ермолино', 'ermolino', 0, 0, '', 'в Ермолино'),
(288, 1, 25, 'Жиздра', 'zhizdra', 0, 0, '', 'в Жиздре'),
(289, 1, 25, 'Жуков', 'zhukov', 0, 0, '', 'в Жукове'),
(290, 1, 25, 'Боровск', 'borovsk', 0, 0, '', 'в Боровске'),
(291, 1, 25, 'Белоусово', 'belousovo', 0, 0, '', 'в Белоусово'),
(292, 1, 25, 'Балабаново', 'balabanovo', 0, 0, '', 'в Балабаново'),
(293, 1, 26, 'Вилючинск', 'vilyuchinsk', 0, 0, '', 'в Вилючинске'),
(294, 1, 26, 'Елизово', 'elizovo', 0, 0, '', 'в Елизово'),
(295, 1, 26, 'Петропавловск-Камчатский', 'petropavlovsk-kamchatskiy', 0, 0, '', 'в Петропавловске-Камчатском'),
(296, 1, 27, 'Теберда', 'teberda', 0, 0, '', 'в Теберде'),
(297, 1, 27, 'Усть-Джегута', 'ust-dzheguta', 0, 0, '', 'в Усть-Джегуте'),
(298, 1, 27, 'Черкесск', 'cherkessk', 0, 0, '', 'в Черкесске'),
(299, 1, 27, 'Карачаевск', 'karachaevsk', 0, 0, '', 'в Карачаевске'),
(300, 1, 28, 'Сортавала', 'sortavala', 0, 0, '', 'в Сортавале'),
(301, 1, 28, 'Суоярви', 'suoyarvi', 0, 0, '', 'в Суоярви'),
(302, 1, 28, 'Пудож', 'pudozh', 0, 0, '', 'в Пудоже'),
(303, 1, 28, 'Сегежа', 'segezha', 0, 0, '', 'в Сегеже'),
(304, 1, 28, 'Олонец', 'olonec', 0, 0, '', 'в Олонце'),
(305, 1, 28, 'Петрозаводск', 'petrozavodsk', 0, 0, '', 'в Петрозаводске'),
(306, 1, 28, 'Питкяранта', 'pitkyaranta', 0, 0, '', 'в Питкяранте'),
(307, 1, 28, 'Медвежьегорск', 'medvezhegorsk', 0, 0, '', 'в Медвежьегорске'),
(308, 1, 28, 'Лахденпохья', 'lahdenpohya', 0, 0, '', 'в Лахденпохье'),
(309, 1, 28, 'Кемь', 'kem', 0, 0, '', 'в Кемеровской области'),
(310, 1, 28, 'Кондопога', 'kondopoga', 0, 0, '', 'в Кондопоге'),
(311, 1, 28, 'Костомукша', 'kostomuksha', 0, 0, '', 'в Костомукше'),
(312, 1, 28, 'Беломорск', 'belomorsk', 0, 0, '', 'в Беломорске'),
(313, 1, 29, 'Юрга', 'yurga', 0, 0, '', 'в Юрге'),
(314, 1, 29, 'Тайга', 'tayga', 0, 0, '', 'в Тайге'),
(315, 1, 29, 'Таштагол', 'tashtagol', 0, 0, '', 'в Таштаголе'),
(316, 1, 29, 'Топки', 'topki', 0, 0, '', 'в Топках'),
(317, 1, 29, 'Прокопьевск', 'prokopevsk', 0, 0, '', 'в Прокопьевске'),
(318, 1, 29, 'Салаир', 'salair', 0, 0, '', 'в Салаире'),
(319, 1, 29, 'Осинники', 'osinniki', 0, 0, '', 'в Осинниках'),
(320, 1, 29, 'Полысаево', 'polysaevo', 0, 0, '', 'в Полысаево'),
(321, 1, 29, 'Междуреченск', 'mezhdurechensk', 0, 0, '', 'в Междуреченске'),
(322, 1, 29, 'Мыски', 'myski', 0, 0, '', 'в Мысках'),
(323, 1, 29, 'Новокузнецк', 'novokuzneck', 0, 0, '', 'в Новокузнецке'),
(324, 1, 29, 'Ленинск-Кузнецкий', 'leninsk-kuzneckiy', 0, 0, '', 'в Ленинске-Кузнецком'),
(325, 1, 29, 'Мариинск', 'mariinsk', 0, 0, '', 'в Мариинске'),
(326, 1, 29, 'Калтан', 'kaltan', 0, 0, '', 'в Калтане'),
(327, 1, 29, 'Кемерово', 'kemerovo', 0, 0, '', 'в Кемерово'),
(328, 1, 29, 'Киселевск', 'kiselevsk', 0, 0, '', 'в Киселевске'),
(329, 1, 29, 'Гурьевск', 'gurevsk', 0, 0, '', 'в Гурьевске'),
(330, 1, 29, 'Анжеро-Судженск', 'anzhero-sudzhensk', 0, 0, '', 'в Анжеро-Судженске'),
(331, 1, 29, 'Белово', 'belovo', 0, 0, '', 'в Белово'),
(332, 1, 29, 'Березовский', 'berezovskiy', 0, 0, '', 'в Березовском'),
(333, 1, 30, 'Яранск', 'yaransk', 0, 0, '', 'в Яранске'),
(334, 1, 30, 'Уржум', 'urzhum', 0, 0, '', 'в Уржуме'),
(335, 1, 30, 'Сосновка', 'sosnovka', 0, 0, '', 'в Сосновке'),
(336, 1, 30, 'Слободской', 'slobodskoy', 0, 0, '', 'в Слободском'),
(337, 1, 30, 'Советск', 'sovetsk', 0, 0, '', ''),
(338, 1, 30, 'Омутнинск', 'omutninsk', 0, 0, '', 'в Омутнинске'),
(339, 1, 30, 'Орлов', 'orlov', 0, 0, '', 'в Орлове'),
(340, 1, 30, 'Нолинск', 'nolinsk', 0, 0, '', 'в Нолинске'),
(341, 1, 30, 'Мураши', 'murashi', 0, 0, '', 'в Мурашах'),
(342, 1, 30, 'Малмыж', 'malmyzh', 0, 0, '', 'в Малмыже'),
(343, 1, 30, 'Луза', 'luza', 0, 0, '', 'в Лузе'),
(344, 1, 30, 'Котельнич', 'kotelnich', 0, 0, '', 'в Котельниче'),
(345, 1, 30, 'Киров', 'kirov', 0, 0, '', 'в Кирове'),
(346, 1, 30, 'Кирово-Чепецк', 'kirovo-chepeck', 0, 0, '', 'в Кирово-Чепецке'),
(347, 1, 30, 'Кирс', 'kirs', 0, 0, '', 'в Кирсе'),
(348, 1, 30, 'Зуевка', 'zuevka', 0, 0, '', 'в Зуевке'),
(349, 1, 30, 'Вятские Поляны', 'vyatskie-polyany', 0, 0, '', 'в Вятских Полянах'),
(350, 1, 30, 'Белая Холуница', 'belaya-holunica', 0, 0, '', 'в Белой Холунице'),
(351, 1, 31, 'Сосногорск', 'sosnogorsk', 0, 0, '', 'в Сосногорске'),
(352, 1, 31, 'Сыктывкар', 'syktyvkar', 0, 0, '', 'в Сыктывкаре'),
(353, 1, 31, 'Усинск', 'usinsk', 0, 0, '', 'в Усинске'),
(354, 1, 31, 'Ухта', 'uhta', 0, 0, '', 'в Ухте'),
(355, 1, 31, 'Печора', 'pechora', 0, 0, '', 'в Печоре'),
(356, 1, 31, 'Микунь', 'mikun', 0, 0, '', 'в Микуни'),
(357, 1, 31, 'Инта', 'inta', 0, 0, '', 'в Инте'),
(358, 1, 31, 'Воркута', 'vorkuta', 0, 0, '', 'в Воркуте'),
(359, 1, 31, 'Вуктыл', 'vuktyl', 0, 0, '', 'в Вуктыле'),
(360, 1, 31, 'Емва', 'emva', 0, 0, '', 'в Емве'),
(361, 1, 32, 'Чухлома', 'chuhloma', 0, 0, '', 'в Чухломе'),
(362, 1, 32, 'Шарья', 'sharya', 0, 0, '', 'в Шарье'),
(363, 1, 32, 'Солигалич', 'soligalich', 0, 0, '', 'в Солигаличе'),
(364, 1, 32, 'Нерехта', 'nerehta', 0, 0, '', 'в Нерехте'),
(365, 1, 32, 'Нея', 'neya', 0, 0, '', 'в Нее'),
(366, 1, 32, 'Мантурово', 'manturovo', 0, 0, '', 'в Мантурово'),
(367, 1, 32, 'Макарьев', 'makarev', 0, 0, '', 'в Макарьеве'),
(368, 1, 32, 'Кострома', 'kostroma', 0, 0, '', 'в Костроме'),
(369, 1, 32, 'Кологрив', 'kologriv', 0, 0, '', 'в Кологриве'),
(370, 1, 32, 'Галич', 'galich', 0, 0, '', 'в Галиче'),
(371, 1, 32, 'Волгореченск', 'volgorechensk', 0, 0, '', 'в Волгореченске'),
(372, 1, 32, 'Буй', 'buy', 0, 0, '', 'в Буе'),
(373, 1, 33, 'Туапсе', 'tuapse', 0, 0, '', 'в Туапсе'),
(374, 1, 33, 'Усть-Лабинск', 'ust-labinsk', 0, 0, '', 'в Усть-Лабинске'),
(375, 1, 33, 'Хадыженск', 'hadyzhensk', 0, 0, '', 'в Хадыженске'),
(376, 1, 33, 'Сочи', 'sochi', 0, 1, '', 'в Сочи'),
(377, 1, 33, 'Темрюк', 'temryuk', 0, 0, '', 'в Темрюке'),
(378, 1, 33, 'Тимашевск', 'timashevsk', 0, 0, '', 'в Тимашевске'),
(379, 1, 33, 'Тихорецк', 'tihoreck', 0, 0, '', 'в Тихорецке'),
(380, 1, 33, 'Славянск-на-Кубани', 'slavyansk-na-kubani', 0, 0, '', 'в Славянске-на-Кубани'),
(381, 1, 33, 'Приморско-Ахтарск', 'primorsko-ahtarsk', 0, 0, '', 'в Приморско-Ахтарске'),
(382, 1, 33, 'Новокубанск', 'novokubansk', 0, 0, '', 'в Новокубанске'),
(383, 1, 33, 'Новороссийск', 'novorossiysk', 0, 0, '', 'в Новороссийске'),
(384, 1, 33, 'Кропоткин', 'kropotkin', 0, 0, '', 'в Кропоткине'),
(385, 1, 33, 'Крымск', 'krymsk', 0, 0, '', 'в Крымске'),
(386, 1, 33, 'Курганинск', 'kurganinsk', 0, 0, '', 'в Курганинске'),
(387, 1, 33, 'Лабинск', 'labinsk', 0, 0, '', 'в Лабинске'),
(388, 1, 33, 'Кореновск', 'korenovsk', 0, 0, '', 'в Кореновске'),
(389, 1, 33, 'Краснодар', 'krasnodar', 0, 1, '', 'в Краснодаре'),
(390, 1, 33, 'Ейск', 'eysk', 0, 0, '', 'в Ейске'),
(391, 1, 33, 'Геленджик', 'gelendzhik', 0, 0, '', 'в Геленджике'),
(392, 1, 33, 'Горячий Ключ', 'goryachiy-klyuch', 0, 0, '', 'в Горячем Ключе'),
(393, 1, 33, 'Гулькевичи', 'gulkevichi', 0, 0, '', 'в Гулькевичах'),
(394, 1, 33, 'Абинск', 'abinsk', 0, 0, '', 'в Абинске'),
(395, 1, 33, 'Анапа', 'anapa', 0, 0, '', 'в Анапе'),
(396, 1, 33, 'Апшеронск', 'apsheronsk', 0, 0, '', 'в Апшеронске'),
(397, 1, 33, 'Армавир', 'armavir', 0, 0, '', 'в Армавире'),
(398, 1, 33, 'Белореченск', 'belorechensk', 0, 0, '', 'в Белореченске'),
(399, 1, 34, 'Шарыпово', 'sharypovo', 0, 0, '', 'в Шарыпово'),
(400, 1, 34, 'Ужур', 'uzhur', 0, 0, '', 'в Ужуре'),
(401, 1, 34, 'Уяр', 'uyar', 0, 0, '', 'в Уяре'),
(402, 1, 34, 'Сосновоборск', 'sosnovoborsk', 0, 0, '', 'в Сосновоборске'),
(403, 1, 34, 'Норильск', 'norilsk', 0, 0, '', 'в Норильске'),
(404, 1, 34, 'Назарово', 'nazarovo', 0, 0, '', 'в Назарово'),
(405, 1, 34, 'Минусинск', 'minusinsk', 0, 0, '', 'в Минусинске'),
(406, 1, 34, 'Лесосибирск', 'lesosibirsk', 0, 0, '', 'в Лесосибирске'),
(407, 1, 34, 'Красноярск', 'krasnoyarsk', 0, 1, '', 'в Красноярске'),
(408, 1, 34, 'Кодинск', 'kodinsk', 0, 0, '', 'в Кодинске'),
(409, 1, 34, 'Игарка', 'igarka', 0, 0, '', 'в Игарке'),
(410, 1, 34, 'Иланский', 'ilanskiy', 0, 0, '', 'в Иланском'),
(411, 1, 34, 'Канск', 'kansk', 0, 0, '', 'в Канске'),
(412, 1, 34, 'Железногорск', 'zheleznogorsk', 0, 0, '', 'в Железногорске'),
(413, 1, 34, 'Заозерный', 'zaozernyy', 0, 0, '', 'в Заозерном'),
(414, 1, 34, 'Зеленогорск', 'zelenogorsk', 0, 0, '', 'в Зеленогорске'),
(415, 1, 34, 'Дивногорск', 'divnogorsk', 0, 0, '', 'в Дивногорске'),
(416, 1, 34, 'Дудинка', 'dudinka', 0, 0, '', 'в Дудинке'),
(417, 1, 34, 'Енисейск', 'eniseysk', 0, 0, '', 'в Енисейске'),
(418, 1, 34, 'Бородино', 'borodino', 0, 0, '', 'в Бородино'),
(419, 1, 34, 'Боготол', 'bogotol', 0, 0, '', 'в Боготоле'),
(420, 1, 34, 'Артемовск', 'artemovsk', 0, 0, '', 'в Артемовске'),
(421, 1, 34, 'Ачинск', 'achinsk', 0, 0, '', 'в Ачинске'),
(422, 1, 35, 'Щелкино', 'shchelkino', 0, 0, '', 'в Щёлкине'),
(423, 1, 35, 'Ялта', 'yalta', 0, 0, '', 'в Ялте'),
(424, 1, 35, 'Феодосия', 'feodosiya', 0, 0, '', 'в Феодосии'),
(425, 1, 35, 'Симферополь', 'simferopol', 0, 0, '', 'в Симферополе'),
(426, 1, 35, 'Старый Крым', 'staryy-krym', 0, 0, '', ''),
(427, 1, 35, 'Судак', 'sudak', 0, 0, '', 'в Судаке'),
(428, 1, 35, 'Саки', 'saki', 0, 0, '', 'в Саках'),
(429, 1, 35, 'Керчь', 'kerch', 0, 0, '', 'в Керчи'),
(430, 1, 35, 'Красноперекопск', 'krasnoperekopsk', 0, 0, '', 'в Красноперекопске'),
(431, 1, 35, 'Евпатория', 'evpatoriya', 0, 0, '', 'в Евпатории'),
(432, 1, 35, 'Джанкой', 'dzhankoy', 0, 0, '', 'в Джанкое'),
(433, 1, 35, 'Алупка', 'alupka', 0, 0, '', 'в Алупке'),
(434, 1, 35, 'Алушта', 'alushta', 0, 0, '', 'в Алуште'),
(435, 1, 35, 'Армянск', 'armyansk', 0, 0, '', 'в Армянске'),
(436, 1, 35, 'Бахчисарай', 'bahchisaray', 0, 0, '', ''),
(437, 1, 35, 'Белогорск', 'belogorsk', 0, 0, '', 'в Белогорске'),
(438, 1, 36, 'Шумиха', 'shumiha', 0, 0, '', 'в Шумихе'),
(439, 1, 36, 'Щучье', 'shchuche', 0, 0, '', ''),
(440, 1, 36, 'Шадринск', 'shadrinsk', 0, 0, '', 'в Шадринске'),
(441, 1, 36, 'Петухово', 'petuhovo', 0, 0, '', 'в Петухово'),
(442, 1, 36, 'Курган', 'kurgan', 0, 0, '', 'в Кургане'),
(443, 1, 36, 'Куртамыш', 'kurtamysh', 0, 0, '', 'в Куртамыше'),
(444, 1, 36, 'Макушино', 'makushino', 0, 0, '', 'в Макушино'),
(445, 1, 36, 'Катайск', 'kataysk', 0, 0, '', 'в Катайске'),
(446, 1, 36, 'Далматово', 'dalmatovo', 0, 0, '', 'в Далматово'),
(447, 1, 37, 'Щигры', 'shchigry', 0, 0, '', ''),
(448, 1, 37, 'Фатеж', 'fatezh', 0, 0, '', 'в Фатеже'),
(449, 1, 37, 'Суджа', 'sudzha', 0, 0, '', 'в Судже'),
(450, 1, 37, 'Рыльск', 'rylsk', 0, 0, '', 'в Рыльске'),
(451, 1, 37, 'Обоянь', 'oboyan', 0, 0, '', 'в Обояни'),
(452, 1, 37, 'Льгов', 'lgov', 0, 0, '', 'в Льгове'),
(453, 1, 37, 'Курск', 'kursk', 0, 0, '', 'в Курске'),
(454, 1, 37, 'Курчатов', 'kurchatov', 0, 0, '', 'в Курчатове'),
(455, 1, 37, 'Железногорск', 'zheleznogorsk', 0, 0, '', 'в Железногорске'),
(456, 1, 37, 'Дмитриев', 'dmitriev', 0, 0, '', 'в Дмитриеве'),
(457, 1, 38, 'Шлиссельбург', 'shlisselburg', 0, 0, '', 'в Шлиссельбурге'),
(458, 1, 38, 'Тихвин', 'tihvin', 0, 0, '', 'в Тихвине'),
(459, 1, 38, 'Тосно', 'tosno', 0, 0, '', 'в Тосно'),
(460, 1, 38, 'Сясьстрой', 'syasstroy', 0, 0, '', 'в Сясьстрое'),
(461, 1, 38, 'Сосновый Бор', 'sosnovyy-bor', 0, 0, '', 'в Сосновом Боре'),
(462, 1, 38, 'Сертолово', 'sertolovo', 0, 0, '', 'в Сертолово'),
(463, 1, 38, 'Сланцы', 'slancy', 0, 0, '', 'в Сланцах'),
(464, 1, 38, 'Светогорск', 'svetogorsk', 0, 0, '', 'в Светогорске'),
(465, 1, 38, 'Приморск', 'primorsk', 0, 0, '', 'в Приморске'),
(466, 1, 38, 'Приозерск', 'priozersk', 0, 0, '', 'в Приозерске'),
(467, 1, 38, 'Пикалево', 'pikalevo', 0, 0, '', ''),
(468, 1, 38, 'Подпорожье', 'podporozhe', 0, 0, '', 'в Подпорожье'),
(469, 1, 38, 'Отрадное', 'otradnoe', 0, 0, '', 'в Отрадном'),
(470, 1, 38, 'Никольское', 'nikolskoe', 0, 0, '', 'в Никольском'),
(471, 1, 38, 'Новая Ладога', 'novaya-ladoga', 0, 0, '', ''),
(472, 1, 38, 'Мурино', 'murino', 0, 0, '', 'в Мурино'),
(473, 1, 38, 'Лодейное Поле', 'lodeynoe-pole', 0, 0, '', 'в Лодейном Поле'),
(474, 1, 38, 'Луга', 'luga', 0, 0, '', 'в Лугах'),
(475, 1, 38, 'Любань', 'lyuban', 0, 0, '', 'в Любани'),
(476, 1, 38, 'Кудрово', 'kudrovo', 0, 0, '', 'в Кудрово'),
(477, 1, 38, 'Коммунар', 'kommunar', 0, 0, '', 'в Коммунаре'),
(478, 1, 38, 'Каменногорск', 'kamennogorsk', 0, 0, '', 'в Каменногорске'),
(479, 1, 38, 'Кингисепп', 'kingisepp', 0, 0, '', 'в Кингисеппе'),
(480, 1, 38, 'Кириши', 'kirishi', 0, 0, '', 'в Киришах'),
(481, 1, 38, 'Кировск', 'kirovsk', 0, 0, '', 'в Кировске'),
(482, 1, 38, 'Ивангород', 'ivangorod', 0, 0, '', 'в Ивангороде'),
(483, 1, 38, 'Волосово', 'volosovo', 0, 0, '', 'в Волосово'),
(484, 1, 38, 'Волхов', 'volhov', 0, 0, '', 'в Волхове'),
(485, 1, 38, 'Всеволожск', 'vsevolozhsk', 0, 0, '', 'в Всеволожске'),
(486, 1, 38, 'Выборг', 'vyborg', 0, 0, '', 'в Выборге'),
(487, 1, 38, 'Высоцк', 'vysock', 0, 0, '', 'в Высоцке'),
(488, 1, 38, 'Гатчина', 'gatchina', 0, 0, '', 'в Гатчине'),
(489, 1, 38, 'Бокситогорск', 'boksitogorsk', 0, 0, '', 'в Бокситогорске'),
(490, 1, 39, 'Чаплыгин', 'chaplygin', 0, 0, '', 'в Чаплыгине'),
(491, 1, 39, 'Усмань', 'usman', 0, 0, '', 'в Усмани'),
(492, 1, 39, 'Лебедянь', 'lebedyan', 0, 0, '', 'в Лебедяни'),
(493, 1, 39, 'Липецк', 'lipeck', 0, 0, '', 'в Липецке'),
(494, 1, 39, 'Елец', 'elec', 0, 0, '', 'в Ельце'),
(495, 1, 39, 'Задонск', 'zadonsk', 0, 0, '', 'в Задонске'),
(496, 1, 39, 'Грязи', 'gryazi', 0, 0, '', 'в Грязях'),
(497, 1, 39, 'Данков', 'dankov', 0, 0, '', 'в Данкове'),
(498, 1, 40, 'Магадан', 'magadan', 0, 0, '', 'в Магадане'),
(499, 1, 40, 'Сусуман', 'susuman', 0, 0, '', 'в Сусумане'),
(500, 1, 41, 'Козьмодемьянск', 'kozmodemyansk', 0, 0, '', 'в Козьмодемьянске'),
(501, 1, 41, 'Звенигово', 'zvenigovo', 0, 0, '', 'в Звенигово'),
(502, 1, 41, 'Йошкар-Ола', 'yoshkar-ola', 0, 0, '', 'в Йошкар-Оле'),
(503, 1, 41, 'Волжск', 'volzhsk', 0, 0, '', 'в Волжске'),
(504, 1, 42, 'Темников', 'temnikov', 0, 0, '', 'в Темникове'),
(505, 1, 42, 'Рузаевка', 'ruzaevka', 0, 0, '', 'в Рузаевке'),
(506, 1, 42, 'Саранск', 'saransk', 0, 0, '', 'в Саранске'),
(507, 1, 42, 'Краснослободск', 'krasnoslobodsk', 0, 0, '', 'в Краснослободске'),
(508, 1, 42, 'Инсар', 'insar', 0, 0, '', 'в Инсаре'),
(509, 1, 42, 'Ковылкино', 'kovylkino', 0, 0, '', 'в Ковылкино'),
(510, 1, 42, 'Ардатов', 'ardatov', 0, 0, '', 'в Ардатове'),
(1148, 2, 88, 'Шалкар', 'shalkar', 0, 0, '', ''),
(1147, 2, 88, 'Хромтау', 'hromtau', 0, 0, '', ''),
(1146, 2, 88, 'Темир', 'temir', 0, 0, '', ''),
(1145, 2, 87, 'Атбасар', 'atbasar', 0, 0, '', ''),
(1144, 2, 87, 'Акколь', 'akkol', 0, 1, '', ''),
(516, 1, 44, 'Яхрома', 'yahroma', 0, 0, '', 'в Яхроме'),
(517, 1, 44, 'Щелково', 'shchelkovo', 0, 0, '', 'в Щелкове'),
(518, 1, 44, 'Электрогорск', 'elektrogorsk', 0, 0, '', 'в Электрогорске'),
(519, 1, 44, 'Электросталь', 'elektrostal', 0, 0, '', 'в Электростали'),
(520, 1, 44, 'Электроугли', 'elektrougli', 0, 0, '', 'в Электроуглях'),
(521, 1, 44, 'Черноголовка', 'chernogolovka', 0, 0, '', 'в Черноголовке'),
(522, 1, 44, 'Чехов', 'chehov', 0, 0, '', 'в Чехове'),
(523, 1, 44, 'Шатура', 'shatura', 0, 0, '', 'в Шатуре'),
(524, 1, 44, 'Хотьково', 'hotkovo', 0, 0, '', 'в Хотьково'),
(525, 1, 44, 'Фрязино', 'fryazino', 0, 0, '', 'в Фрязино'),
(526, 1, 44, 'Химки', 'himki', 0, 0, '', 'в Химках'),
(527, 1, 44, 'Ступино', 'stupino', 0, 0, '', 'в Ступино'),
(528, 1, 44, 'Талдом', 'taldom', 0, 0, '', 'в Талдоме'),
(529, 1, 44, 'Старая Купавна', 'staraya-kupavna', 0, 0, '', 'в Старой Купавне'),
(530, 1, 44, 'Солнечногорск', 'solnechnogorsk', 0, 0, '', 'в Солнечногорске'),
(531, 1, 44, 'Сергиев Посад', 'sergiev-posad', 0, 0, '', 'в Сергиевом Посаде'),
(532, 1, 44, 'Серпухов', 'serpuhov', 0, 0, '', 'в Серпухове'),
(533, 1, 44, 'Реутов', 'reutov', 0, 0, '', 'в Реутове'),
(534, 1, 44, 'Рошаль', 'roshal', 0, 0, '', 'в Рошале'),
(535, 1, 44, 'Руза', 'ruza', 0, 0, '', 'в Рузе'),
(536, 1, 44, 'Пушкино', 'pushkino', 0, 0, '', 'в Пушкино'),
(537, 1, 44, 'Пущино', 'pushchino', 0, 0, '', ''),
(538, 1, 44, 'Раменское', 'ramenskoe', 0, 0, '', 'в Раменском'),
(539, 1, 44, 'Протвино', 'protvino', 0, 0, '', 'в Протвино'),
(540, 1, 44, 'Подольск', 'podolsk', 0, 0, '', 'в Подольске'),
(541, 1, 44, 'Пересвет', 'peresvet', 0, 0, '', 'в Пересвете'),
(542, 1, 44, 'Павловский Посад', 'pavlovskiy-posad', 0, 0, '', 'в Павловском Посаде'),
(543, 1, 44, 'Ногинск', 'noginsk', 0, 0, '', 'в Ногинске'),
(544, 1, 44, 'Одинцово', 'odincovo', 0, 0, '', 'в Одинцово'),
(545, 1, 44, 'Озёры', 'ozery', 0, 0, '', 'в Озерах'),
(546, 1, 44, 'Орехово-Зуево', 'orehovo-zuevo', 0, 0, '', 'в Орехово-Зуево'),
(547, 1, 44, 'Мытищи', 'mytishchi', 0, 0, '', 'в Мытищи'),
(548, 1, 44, 'Наро-Фоминск', 'naro-fominsk', 0, 0, '', 'в Наро-Фоминске'),
(549, 1, 44, 'Можайск', 'mozhaysk', 0, 0, '', 'в Можайске'),
(550, 1, 44, 'Лосино-Петровский', 'losino-petrovskiy', 0, 0, '', 'в Лосино-Петровском'),
(551, 1, 44, 'Луховицы', 'luhovicy', 0, 0, '', 'в Луховицах'),
(552, 1, 44, 'Лыткарино', 'lytkarino', 0, 0, '', 'в Лыткарино'),
(553, 1, 44, 'Люберцы', 'lyubercy', 0, 0, '', 'в Люберцах'),
(554, 1, 44, 'Ликино-Дулёво', 'likino-dulevo', 0, 0, '', 'в Ликино-Дулево'),
(555, 1, 44, 'Лобня', 'lobnya', 0, 0, '', 'в Лобне'),
(556, 1, 44, 'Куровское', 'kurovskoe', 0, 0, '', 'в Куровском'),
(557, 1, 44, 'Кубинка', 'kubinka', 0, 0, '', 'в Кубинке'),
(558, 1, 44, 'Котельники', 'kotelniki', 0, 0, '', 'в Котельниках'),
(559, 1, 44, 'Красноармейск', 'krasnoarmeysk', 0, 0, '', 'в Красноармейске'),
(560, 1, 44, 'Красногорск', 'krasnogorsk', 0, 0, '', 'в Красногорске'),
(561, 1, 44, 'Краснозаводск', 'krasnozavodsk', 0, 0, '', 'в Краснозаводске'),
(562, 1, 44, 'Краснознаменск', 'krasnoznamensk', 0, 0, '', 'в Краснознаменске'),
(563, 1, 44, 'Королёв', 'korolev', 0, 0, '', 'в Королёве'),
(564, 1, 44, 'Коломна', 'kolomna', 0, 0, '', 'в Коломне'),
(565, 1, 44, 'Кашира', 'kashira', 0, 0, '', 'в Кашире'),
(566, 1, 44, 'Климовск', 'klimovsk', 0, 0, '', 'в Климовске'),
(567, 1, 44, 'Клин', 'klin', 0, 0, '', 'в Клине'),
(568, 1, 44, 'Истра', 'istra', 0, 0, '', 'в Истре'),
(569, 1, 44, 'Ивантеевка', 'ivanteevka', 0, 0, '', 'в Ивантеевке'),
(570, 1, 44, 'Звенигород', 'zvenigorod', 0, 0, '', 'в Звенигороде'),
(571, 1, 44, 'Жуковский', 'zhukovskiy', 0, 0, '', 'в Жуковском'),
(572, 1, 44, 'Зарайск', 'zaraysk', 0, 0, '', 'в Зарайске'),
(573, 1, 44, 'Егорьевск', 'egorevsk', 0, 0, '', 'в Егорьевске'),
(574, 1, 44, 'Долгопрудный', 'dolgoprudnyy', 0, 0, '', 'в Долгопрудном'),
(575, 1, 44, 'Домодедово', 'domodedovo', 0, 0, '', 'в Домодедово'),
(576, 1, 44, 'Дрезна', 'drezna', 0, 0, '', 'в Дрезне'),
(577, 1, 44, 'Дубна', 'dubna', 0, 0, '', 'в Дубне'),
(578, 1, 44, 'Дедовск', 'dedovsk', 0, 0, '', 'в Дедовске'),
(579, 1, 44, 'Дзержинский', 'dzerzhinskiy', 0, 0, '', 'в Дзержинском'),
(580, 1, 44, 'Дмитров', 'dmitrov', 0, 0, '', 'в Дмитрове'),
(581, 1, 44, 'Голицыно', 'golicyno', 0, 0, '', 'в Голицыно'),
(582, 1, 44, 'Воскресенск', 'voskresensk', 0, 0, '', 'в Воскресенске'),
(583, 1, 44, 'Высоковск', 'vysokovsk', 0, 0, '', 'в Высоковске'),
(584, 1, 44, 'Видное', 'vidnoe', 0, 0, '', 'в Видном'),
(585, 1, 44, 'Волоколамск', 'volokolamsk', 0, 0, '', 'в Волоколамске'),
(586, 1, 44, 'Верея', 'vereya', 0, 0, '', 'в Верее'),
(587, 1, 44, 'Бронницы', 'bronnicy', 0, 0, '', 'в Бронницах'),
(588, 1, 44, 'Белоозёрский', 'beloozerskiy', 0, 0, '', 'в Белоозёрском'),
(589, 1, 44, 'Балашиха', 'balashiha', 0, 0, '', 'в Балашихе'),
(590, 1, 44, 'Апрелевка', 'aprelevka', 0, 0, '', 'в Апрелевке'),
(591, 1, 45, 'Североморск', 'severomorsk', 0, 0, '', 'в Североморске'),
(592, 1, 45, 'Снежногорск', 'snezhnogorsk', 0, 0, '', 'в Снежногорске'),
(593, 1, 45, 'Апатиты', 'apatity', 0, 0, '', 'в Апатитах'),
(594, 1, 45, 'Гаджиево', 'gadzhievo', 0, 0, '', 'в Гаджиево'),
(595, 1, 45, 'Заозерск', 'zaozersk', 0, 0, '', 'в Заозерске'),
(596, 1, 45, 'Заполярный', 'zapolyarnyy', 0, 0, '', 'в Заполярном'),
(597, 1, 45, 'Кандалакша', 'kandalaksha', 0, 0, '', 'в Кандалакше'),
(598, 1, 45, 'Кировск', 'kirovsk', 0, 0, '', 'в Кировске'),
(599, 1, 45, 'Ковдор', 'kovdor', 0, 0, '', 'в Ковдоре'),
(600, 1, 45, 'Кола', 'kola', 0, 0, '', 'в Коле'),
(601, 1, 45, 'Мончегорск', 'monchegorsk', 0, 0, '', 'в Мончегорске'),
(602, 1, 45, 'Мурманск', 'murmansk', 0, 0, '', 'в Мурманске'),
(603, 1, 45, 'Оленегорск', 'olenegorsk', 0, 0, '', 'в Оленегорске'),
(604, 1, 45, 'Островной', 'ostrovnoy', 0, 0, '', 'в Островном'),
(605, 1, 45, 'Полярные Зори', 'polyarnye-zori', 0, 0, '', ''),
(606, 1, 45, 'Полярный', 'polyarnyy', 0, 0, '', 'в Полярном'),
(607, 1, 46, 'Нарьян-Мар', 'naryan-mar', 0, 0, '', 'в Нарьян-Маре'),
(608, 1, 47, 'Шахунья', 'shahunya', 0, 0, '', 'в Шахунье'),
(609, 1, 47, 'Чкаловск', 'chkalovsk', 0, 0, '', 'в Чкаловск'),
(610, 1, 47, 'Урень', 'uren', 0, 0, '', 'в Урене'),
(611, 1, 47, 'Саров', 'sarov', 0, 0, '', 'в Сарове'),
(612, 1, 47, 'Семенов', 'semenov', 0, 0, '', 'в Семенове'),
(613, 1, 47, 'Сергач', 'sergach', 0, 0, '', 'в Сергаче'),
(614, 1, 47, 'Павлово', 'pavlovo', 0, 0, '', 'в Павлово'),
(615, 1, 47, 'Первомайск', 'pervomaysk', 0, 0, '', 'в Первомайске'),
(616, 1, 47, 'Перевоз', 'perevoz', 0, 0, '', 'в Перевозе'),
(617, 1, 47, 'Нижний Новгород', 'nizhniy-novgorod', 0, 0, '', 'в Нижнем Новгороде'),
(618, 1, 47, 'Навашино', 'navashino', 0, 0, '', 'в Навашино'),
(619, 1, 47, 'Лукоянов', 'lukoyanov', 0, 0, '', 'в Лукоянове'),
(620, 1, 47, 'Лысково', 'lyskovo', 0, 0, '', 'в Лысково'),
(621, 1, 47, 'Кулебаки', 'kulebaki', 0, 0, '', 'в Кулебаках'),
(622, 1, 47, 'Кстово', 'kstovo', 0, 0, '', 'в Кстово'),
(623, 1, 47, 'Княгинино', 'knyaginino', 0, 0, '', 'в Княгинино'),
(624, 1, 47, 'Заволжье', 'zavolzhe', 0, 0, '', 'в Заволжье'),
(625, 1, 47, 'Дзержинск', 'dzerzhinsk', 0, 0, '', 'в Дзержинске'),
(626, 1, 47, 'Горбатов', 'gorbatov', 0, 0, '', 'в Горбатове'),
(627, 1, 47, 'Городец', 'gorodec', 0, 0, '', 'в Городце'),
(628, 1, 47, 'Володарск', 'volodarsk', 0, 0, '', 'в Володарске'),
(629, 1, 47, 'Ворсма', 'vorsma', 0, 0, '', 'в Ворсме'),
(630, 1, 47, 'Выкса', 'vyksa', 0, 0, '', 'в Выксе'),
(631, 1, 47, 'Ветлуга', 'vetluga', 0, 0, '', 'в Ветлуге'),
(632, 1, 47, 'Бор', 'bor', 0, 0, '', 'в Боре'),
(633, 1, 47, 'Богородск', 'bogorodsk', 0, 0, '', 'в Богородске'),
(634, 1, 47, 'Арзамас', 'arzamas', 0, 0, '', 'в Арзамасе'),
(635, 1, 47, 'Балахна', 'balahna', 0, 0, '', 'в Балахне'),
(636, 1, 48, 'Холм', 'holm', 0, 0, '', 'в Холме'),
(637, 1, 48, 'Чудово', 'chudovo', 0, 0, '', 'в Чудово'),
(638, 1, 48, 'Старая Русса', 'staraya-russa', 0, 0, '', 'в Старой Руссе'),
(639, 1, 48, 'Сольцы', 'solcy', 0, 0, '', 'в Сольцах'),
(640, 1, 48, 'Пестово', 'pestovo', 0, 0, '', 'в Пестово'),
(641, 1, 48, 'Окуловка', 'okulovka', 0, 0, '', 'в Окуловке'),
(642, 1, 48, 'Малая Вишера', 'malaya-vishera', 0, 0, '', 'в Малой Вишере'),
(643, 1, 48, 'Великий Новгород', 'velikiy-novgorod', 0, 0, '', 'в Великом Новгороде'),
(644, 1, 48, 'Боровичи', 'borovichi', 0, 0, '', 'в Боровичах'),
(645, 1, 48, 'Валдай', 'valday', 0, 0, '', 'в Валдае'),
(646, 1, 49, 'Черепаново', 'cherepanovo', 0, 0, '', 'в Черепаново'),
(647, 1, 49, 'Чулым', 'chulym', 0, 0, '', 'в Чулыме'),
(648, 1, 49, 'Татарск', 'tatarsk', 0, 0, '', 'в Татарске'),
(649, 1, 49, 'Тогучин', 'toguchin', 0, 0, '', 'в Тогучине'),
(650, 1, 49, 'Новосибирск', 'novosibirsk', 0, 1, '', 'в Новосибирске'),
(651, 1, 49, 'Обь', 'ob', 0, 0, '', 'в Оби'),
(652, 1, 49, 'Куйбышев', 'kuybyshev', 0, 0, '', 'в Куйбышеве'),
(653, 1, 49, 'Купино', 'kupino', 0, 0, '', 'в Купино'),
(654, 1, 49, 'Карасук', 'karasuk', 0, 0, '', 'в Карасуке'),
(655, 1, 49, 'Каргат', 'kargat', 0, 0, '', 'в Каргате'),
(656, 1, 49, 'Искитим', 'iskitim', 0, 0, '', 'в Искитиме'),
(657, 1, 49, 'Бердск', 'berdsk', 0, 0, '', 'в Бердске'),
(658, 1, 49, 'Болотное', 'bolotnoe', 0, 0, '', 'в Болотном'),
(659, 1, 49, 'Барабинск', 'barabinsk', 0, 0, '', 'в Барабинске'),
(660, 1, 50, 'Тара', 'tara', 0, 0, '', 'в Таре'),
(661, 1, 50, 'Тюкалинск', 'tyukalinsk', 0, 0, '', 'в Тюкалинске'),
(662, 1, 50, 'Омск', 'omsk', 0, 1, '', 'в Омске'),
(663, 1, 50, 'Называевск', 'nazyvaevsk', 0, 0, '', 'в Называевске'),
(664, 1, 50, 'Исилькуль', 'isilkul', 0, 0, '', 'в Исилькуле'),
(665, 1, 50, 'Калачинск', 'kalachinsk', 0, 0, '', 'в Калачинске'),
(666, 1, 51, 'Ясный', 'yasnyy', 0, 0, '', 'в Ясном'),
(667, 1, 51, 'Соль-Илецк', 'sol-ileck', 0, 0, '', 'в Соль-Илецке'),
(668, 1, 51, 'Сорочинск', 'sorochinsk', 0, 0, '', 'в Сорочинске'),
(669, 1, 51, 'Оренбург', 'orenburg', 0, 0, '', 'в Оренбурге'),
(670, 1, 51, 'Орск', 'orsk', 0, 0, '', 'в Орске'),
(671, 1, 51, 'Новотроицк', 'novotroick', 0, 0, '', 'в Новотроицке'),
(672, 1, 51, 'Медногорск', 'mednogorsk', 0, 0, '', 'в Медногорске'),
(673, 1, 51, 'Кувандык', 'kuvandyk', 0, 0, '', 'в Кувандыке'),
(674, 1, 51, 'Гай', 'gay', 0, 0, '', 'в Гае'),
(675, 1, 51, 'Бугуруслан', 'buguruslan', 0, 0, '', 'в Бугуруслане'),
(676, 1, 51, 'Бузулук', 'buzuluk', 0, 0, '', 'в Бузулуке'),
(677, 1, 51, 'Абдулино', 'abdulino', 0, 0, '', 'в Абдулино'),
(678, 1, 52, 'Орёл', 'orel', 0, 0, '', 'в Орле'),
(679, 1, 52, 'Новосиль', 'novosil', 0, 0, '', 'в Новосиле'),
(680, 1, 52, 'Мценск', 'mcensk', 0, 0, '', 'в Мценске'),
(681, 1, 52, 'Малоархангельск', 'maloarhangelsk', 0, 0, '', 'в Малоархангельске'),
(682, 1, 52, 'Ливны', 'livny', 0, 0, '', 'в Ливнах'),
(683, 1, 52, 'Дмитровск', 'dmitrovsk', 0, 0, '', 'в Дмитровске'),
(684, 1, 52, 'Болхов', 'bolhov', 0, 0, '', 'в Болхове'),
(685, 1, 53, 'Спасск', 'spassk', 0, 0, '', 'в Спасске'),
(686, 1, 53, 'Сурск', 'sursk', 0, 0, '', 'в Сурске'),
(687, 1, 53, 'Сердобск', 'serdobsk', 0, 0, '', 'в Сердобске'),
(688, 1, 53, 'Пенза', 'penza', 0, 1, '', 'в Пензе'),
(689, 1, 53, 'Нижний Ломов', 'nizhniy-lomov', 0, 0, '', 'в Нижнем Ломове'),
(690, 1, 53, 'Никольск', 'nikolsk', 0, 0, '', 'в Никольске'),
(691, 1, 53, 'Кузнецк', 'kuzneck', 0, 0, '', 'в Кузнецке'),
(692, 1, 53, 'Каменка', 'kamenka', 0, 0, '', 'в Каменке'),
(693, 1, 53, 'Заречный', 'zarechnyy', 0, 0, '', 'в Заречном'),
(694, 1, 53, 'Городище', 'gorodishche', 0, 0, '', ''),
(695, 1, 53, 'Белинский', 'belinskiy', 0, 0, '', 'в Белинском'),
(696, 1, 54, 'Чусовой', 'chusovoy', 0, 0, '', 'в Чусовом'),
(697, 1, 54, 'Чайковский', 'chaykovskiy', 0, 0, '', 'в Чайковском'),
(698, 1, 54, 'Чердынь', 'cherdyn', 0, 0, '', 'в Чердыни'),
(699, 1, 54, 'Чермоз', 'chermoz', 0, 0, '', 'в Чермозе'),
(700, 1, 54, 'Чернушка', 'chernushka', 0, 0, '', 'в Чернушке'),
(701, 1, 54, 'Усолье', 'usole', 0, 0, '', 'в Усолье'),
(702, 1, 54, 'Соликамск', 'solikamsk', 0, 0, '', 'в Соликамске'),
(703, 1, 54, 'Пермь', 'perm', 0, 1, '', 'в Перми'),
(704, 1, 54, 'Оса', 'osa', 0, 0, '', 'в Осе'),
(705, 1, 54, 'Оханск', 'ohansk', 0, 0, '', 'в Оханске'),
(706, 1, 54, 'Очер', 'ocher', 0, 0, '', 'в Очере'),
(707, 1, 54, 'Нытва', 'nytva', 0, 0, '', 'в Нытве'),
(708, 1, 54, 'Лысьва', 'lysva', 0, 0, '', 'в Лысьве'),
(709, 1, 54, 'Кудымкар', 'kudymkar', 0, 0, '', 'в Кудымкаре'),
(710, 1, 54, 'Кунгур', 'kungur', 0, 0, '', 'в Кунгуре'),
(711, 1, 54, 'Красновишерск', 'krasnovishersk', 0, 0, '', 'в Красновишерске'),
(712, 1, 54, 'Краснокамск', 'krasnokamsk', 0, 0, '', 'в Краснокамске'),
(713, 1, 54, 'Кизел', 'kizel', 0, 0, '', 'в Кизеле'),
(714, 1, 54, 'Добрянка', 'dobryanka', 0, 0, '', 'в Добрянке'),
(715, 1, 54, 'Горнозаводск', 'gornozavodsk', 0, 0, '', 'в Горнозаводске'),
(716, 1, 54, 'Гремячинск', 'gremyachinsk', 0, 0, '', 'в Гремячинске'),
(717, 1, 54, 'Губаха', 'gubaha', 0, 0, '', 'в Губахе'),
(718, 1, 54, 'Верещагино', 'vereshchagino', 0, 0, '', 'в Верещагино'),
(719, 1, 54, 'Березники', 'berezniki', 0, 0, '', 'в Березниках'),
(720, 1, 54, 'Александровск', 'aleksandrovsk', 0, 0, '', 'в Александровске'),
(721, 1, 55, 'Спасск-Дальний', 'spassk-dalniy', 0, 0, '', 'в Спасске-Дальнем'),
(722, 1, 55, 'Уссурийск', 'ussuriysk', 0, 0, '', 'в Уссурийске'),
(723, 1, 55, 'Фокино', 'fokino', 0, 0, '', 'в Фокино'),
(724, 1, 55, 'Партизанск', 'partizansk', 0, 0, '', 'в Партизанске'),
(725, 1, 55, 'Находка', 'nahodka', 0, 0, '', 'в Находке'),
(726, 1, 55, 'Лесозаводск', 'lesozavodsk', 0, 0, '', 'в Лесозаводске'),
(727, 1, 55, 'Дальнегорск', 'dalnegorsk', 0, 0, '', 'в Дальнегорске'),
(728, 1, 55, 'Дальнереченск', 'dalnerechensk', 0, 0, '', 'в Дальнереченске'),
(729, 1, 55, 'Арсеньев', 'arsenev', 0, 0, '', 'в Арсеньеве'),
(730, 1, 55, 'Артем', 'artem', 0, 0, '', 'в Артеме'),
(731, 1, 55, 'Большой Камень', 'bolshoy-kamen', 0, 0, '', 'в Большом Камне'),
(732, 1, 55, 'Владивосток', 'vladivostok', 0, 1, '', 'в Владивостоке'),
(733, 1, 56, 'Себеж', 'sebezh', 0, 0, '', 'в Себеже'),
(734, 1, 56, 'Пустошка', 'pustoshka', 0, 0, '', 'в Пустошке'),
(735, 1, 56, 'Пыталово', 'pytalovo', 0, 0, '', 'в Пыталово'),
(736, 1, 56, 'Псков', 'pskov', 0, 0, '', 'в Пскове'),
(737, 1, 56, 'Порхов', 'porhov', 0, 0, '', 'в Порхове'),
(738, 1, 56, 'Печоры', 'pechory', 0, 0, '', 'в Печорах'),
(739, 1, 56, 'Опочка', 'opochka', 0, 0, '', 'в Опочке'),
(740, 1, 56, 'Остров', 'ostrov', 0, 0, '', 'в Острове'),
(741, 1, 56, 'Новоржев', 'novorzhev', 0, 0, '', 'в Новоржеве'),
(742, 1, 56, 'Новосокольники', 'novosokolniki', 0, 0, '', 'в Новосокольниках'),
(743, 1, 56, 'Невель', 'nevel', 0, 0, '', 'в Невеле'),
(744, 1, 56, 'Дно', 'dno', 0, 0, '', 'в Дно'),
(745, 1, 56, 'Гдов', 'gdov', 0, 0, '', 'в Гдове'),
(746, 1, 56, 'Великие Луки', 'velikie-luki', 0, 0, '', 'в Великих Луках'),
(747, 1, 57, 'Шахты', 'shahty', 0, 0, '', 'в Шахтах'),
(748, 1, 57, 'Цимлянск', 'cimlyansk', 0, 0, '', 'в Цимлянске'),
(749, 1, 57, 'Таганрог', 'taganrog', 0, 0, '', 'в Таганроге'),
(750, 1, 57, 'Сальск', 'salsk', 0, 0, '', 'в Сальске'),
(751, 1, 57, 'Семикаракорск', 'semikarakorsk', 0, 0, '', 'в Семикаракорске'),
(752, 1, 57, 'Ростов-на-Дону', 'rostov-na-donu', 0, 1, '', 'в Ростове-на-Дону'),
(753, 1, 57, 'Пролетарск', 'proletarsk', 0, 0, '', 'в Пролетарске'),
(754, 1, 57, 'Новочеркасск', 'novocherkassk', 0, 0, '', 'в Новочеркасске'),
(755, 1, 57, 'Новошахтинск', 'novoshahtinsk', 0, 0, '', 'в Новошахтинске'),
(756, 1, 57, 'Миллерово', 'millerovo', 0, 0, '', 'в Миллерово'),
(757, 1, 57, 'Морозовск', 'morozovsk', 0, 0, '', 'в Морозовске'),
(758, 1, 57, 'Красный Сулин', 'krasnyy-sulin', 0, 0, '', 'в Красном Сулине'),
(759, 1, 57, 'Константиновск', 'konstantinovsk', 0, 0, '', 'в Константиновске'),
(760, 1, 57, 'Каменск-Шахтинский', 'kamensk-shahtinskiy', 0, 0, '', 'в Каменске-Шахтинском'),
(761, 1, 57, 'Зверево', 'zverevo', 0, 0, '', 'в Зверево'),
(762, 1, 57, 'Зерноград', 'zernograd', 0, 0, '', 'в Зернограде'),
(763, 1, 57, 'Донецк', 'doneck', 0, 0, '', 'в Донецке'),
(764, 1, 57, 'Гуково', 'gukovo', 0, 0, '', 'в Гуково'),
(765, 1, 57, 'Волгодонск', 'volgodonsk', 0, 0, '', 'в Волгодонске'),
(766, 1, 57, 'Батайск', 'bataysk', 0, 0, '', 'в Батайске'),
(767, 1, 57, 'Белая Калитва', 'belaya-kalitva', 0, 0, '', 'в Белой Калитве'),
(768, 1, 57, 'Азов', 'azov', 0, 0, '', 'в Азове'),
(769, 1, 57, 'Аксай', 'aksay', 0, 0, '', 'в Аксае'),
(770, 1, 58, 'Шацк', 'shack', 0, 0, '', 'в Шацке'),
(771, 1, 58, 'Спас-Клепики', 'spas-klepiki', 0, 0, '', 'в Спас-Клепиках'),
(772, 1, 58, 'Спасск-Рязанский', 'spassk-ryazanskiy', 0, 0, '', 'в Спасск-Рязанском'),
(773, 1, 58, 'Скопин', 'skopin', 0, 0, '', 'в Скопине'),
(774, 1, 58, 'Рыбное', 'rybnoe', 0, 0, '', 'в Рыбном'),
(775, 1, 58, 'Ряжск', 'ryazhsk', 0, 0, '', 'в Ряжске'),
(776, 1, 58, 'Рязань', 'ryazan', 0, 0, '', 'в Рязани'),
(777, 1, 58, 'Сасово', 'sasovo', 0, 0, '', 'в Сасово'),
(778, 1, 58, 'Новомичуринск', 'novomichurinsk', 0, 0, '', 'в Новомичуринске'),
(779, 1, 58, 'Михайлов', 'mihaylov', 0, 0, '', 'в Михайлове'),
(780, 1, 58, 'Кораблино', 'korablino', 0, 0, '', 'в Кораблино'),
(781, 1, 58, 'Касимов', 'kasimov', 0, 0, '', 'в Касимове'),
(782, 1, 59, 'Чапаевск', 'chapaevsk', 0, 0, '', 'в Чапаевске'),
(783, 1, 59, 'Сызрань', 'syzran', 0, 0, '', 'в Сызрани'),
(784, 1, 59, 'Тольятти', 'tolyatti', 0, 1, '', 'в Тольятти'),
(785, 1, 59, 'Похвистнево', 'pohvistnevo', 0, 0, '', 'в Похвистнево'),
(786, 1, 59, 'Самара', 'samara', 0, 1, '', 'в Самаре'),
(787, 1, 59, 'Октябрьск', 'oktyabrsk', 0, 0, '', 'в Октябрьске'),
(788, 1, 59, 'Отрадный', 'otradnyy', 0, 0, '', 'В Отрадном'),
(789, 1, 59, 'Новокуйбышевск', 'novokuybyshevsk', 0, 0, '', 'в Новокуйбышевске'),
(790, 1, 59, 'Нефтегорск', 'neftegorsk', 0, 0, '', 'в Нефтегорске'),
(791, 1, 59, 'Кинель', 'kinel', 0, 0, '', 'в Кинеле'),
(792, 1, 59, 'Жигулевск', 'zhigulevsk', 0, 0, '', 'в Жигулевске'),
(1141, 2, 87, 'Державинск', 'derzhavinsk', 0, 0, '', ''),
(1140, 2, 87, 'Макинск', 'makinsk', 0, 0, '', ''),
(1139, 2, 87, 'Кокшетау', 'kokshetau', 0, 1, '', ''),
(1138, 2, 87, 'Степняк', 'stepnyak', 0, 0, '', ''),
(1137, 2, 87, 'Степногорск', 'stepnogorsk', 0, 1, '', ''),
(1136, 2, 87, 'Щучинск', 'shchuchinsk', 0, 1, '', ''),
(1135, 1, 38, 'Санкт-Петербург', 'sankt-peterburg', 0, 1, '', 'в Санкт-Петербурге'),
(1134, 1, 44, 'Москва', 'moskva', 0, 1, '', 'в Москве'),
(803, 1, 61, 'Шиханы', 'shihany', 0, 0, '', 'в Шиханах'),
(804, 1, 61, 'Энгельс', 'engels', 0, 0, '', 'в Энгельсе'),
(805, 1, 61, 'Хвалынск', 'hvalynsk', 0, 0, '', 'в Хвалынске'),
(806, 1, 61, 'Саратов', 'saratov', 0, 0, '', 'в Саратове'),
(807, 1, 61, 'Пугачев', 'pugachev', 0, 0, '', 'в Пугачеве'),
(808, 1, 61, 'Ртищево', 'rtishchevo', 0, 0, '', 'в Ртищеве'),
(809, 1, 61, 'Петровск', 'petrovsk', 0, 0, '', 'в Петровске'),
(810, 1, 61, 'Новоузенск', 'novouzensk', 0, 0, '', 'в Новоузенске'),
(811, 1, 61, 'Маркс', 'marks', 0, 0, '', 'в Марксе'),
(812, 1, 61, 'Красноармейск', 'krasnoarmeysk', 0, 0, '', 'в Красноармейске'),
(813, 1, 61, 'Красный Кут', 'krasnyy-kut', 0, 0, '', 'в Красном Куту'),
(814, 1, 61, 'Калининск', 'kalininsk', 0, 0, '', 'в Калининске'),
(815, 1, 61, 'Ершов', 'ershov', 0, 0, '', 'в Ершове'),
(816, 1, 61, 'Вольск', 'volsk', 0, 0, '', 'в Вольске'),
(817, 1, 61, 'Аткарск', 'atkarsk', 0, 0, '', 'в Аткарске'),
(818, 1, 61, 'Балаково', 'balakovo', 0, 0, '', 'в Балаково'),
(819, 1, 61, 'Балашов', 'balashov', 0, 0, '', 'в Балашове'),
(820, 1, 61, 'Аркадак', 'arkadak', 0, 0, '', 'в Аркадаке'),
(821, 1, 62, 'Томари', 'tomari', 0, 0, '', 'в Томари'),
(822, 1, 62, 'Углегорск', 'uglegorsk', 0, 0, '', 'в Углегорске');
INSERT INTO `uni_city` (`city_id`, `country_id`, `region_id`, `city_name`, `city_alias`, `city_count_view`, `city_default`, `city_desc`, `city_declination`) VALUES
(823, 1, 62, 'Холмск', 'holmsk', 0, 0, '', 'в Холмске'),
(824, 1, 62, 'Южно-Сахалинск', 'yuzhno-sahalinsk', 0, 0, '', 'в Южно-Сахалинске'),
(825, 1, 62, 'Макаров', 'makarov', 0, 0, '', 'в Макарове'),
(826, 1, 62, 'Невельск', 'nevelsk', 0, 0, '', 'в Невельске'),
(827, 1, 62, 'Оха', 'oha', 0, 0, '', 'в Охе'),
(828, 1, 62, 'Поронайск', 'poronaysk', 0, 0, '', 'в Поронайске'),
(829, 1, 62, 'Северо-Курильск', 'severo-kurilsk', 0, 0, '', 'в Северо-Курильске'),
(830, 1, 62, 'Александровск-Сахалинский', 'aleksandrovsk-sahalinskiy', 0, 0, '', 'в Александровске-Сахалинском'),
(831, 1, 62, 'Анива', 'aniva', 0, 0, '', 'в Аниве'),
(832, 1, 62, 'Долинск', 'dolinsk', 0, 0, '', 'в Долинске'),
(833, 1, 62, 'Корсаков', 'korsakov', 0, 0, '', 'в Корсакове'),
(834, 1, 62, 'Курильск', 'kurilsk', 0, 0, '', 'в Курильске'),
(835, 1, 63, 'Якутск', 'yakutsk', 0, 0, '', 'в Якутске'),
(836, 1, 63, 'Томмот', 'tommot', 0, 0, '', 'в Томмоте'),
(837, 1, 63, 'Удачный', 'udachnyy', 0, 0, '', 'в Удачном'),
(838, 1, 63, 'Нюрба', 'nyurba', 0, 0, '', 'в Нюрбе'),
(839, 1, 63, 'Олекминск', 'olekminsk', 0, 0, '', 'в Олекминске'),
(840, 1, 63, 'Покровск', 'pokrovsk', 0, 0, '', 'в Покровске'),
(841, 1, 63, 'Среднеколымск', 'srednekolymsk', 0, 0, '', 'в Среднеколымске'),
(842, 1, 63, 'Ленск', 'lensk', 0, 0, '', 'в Ленске'),
(843, 1, 63, 'Мирный', 'mirnyy', 0, 0, '', 'в Мирном'),
(844, 1, 63, 'Нерюнгри', 'neryungri', 0, 0, '', 'в Нерюнгри'),
(845, 1, 63, 'Верхоянск', 'verhoyansk', 0, 0, '', 'в Верхоянске'),
(846, 1, 63, 'Вилюйск', 'vilyuysk', 0, 0, '', 'в Вилюйске'),
(847, 1, 63, 'Алдан', 'aldan', 0, 0, '', 'в Алдане'),
(848, 1, 64, 'Туринск', 'turinsk', 0, 0, '', 'в Туринске'),
(849, 1, 64, 'Среднеуральск', 'sredneuralsk', 0, 0, '', 'в Среднеуральске'),
(850, 1, 64, 'Сухой Лог', 'suhoy-log', 0, 0, '', 'в Сухом Логе'),
(851, 1, 64, 'Сысерть', 'sysert', 0, 0, '', 'в Сысерти'),
(852, 1, 64, 'Тавда', 'tavda', 0, 0, '', 'в Тавде'),
(853, 1, 64, 'Талица', 'talica', 0, 0, '', 'в Талице'),
(854, 1, 64, 'Североуральск', 'severouralsk', 0, 0, '', 'в Североуральске'),
(855, 1, 64, 'Серов', 'serov', 0, 0, '', 'в Серове'),
(856, 1, 64, 'Ревда', 'revda', 0, 0, '', 'в Ревде'),
(857, 1, 64, 'Реж', 'rezh', 0, 0, '', 'в Реже'),
(858, 1, 64, 'Первоуральск', 'pervouralsk', 0, 0, '', 'в Первоуральске'),
(859, 1, 64, 'Полевской', 'polevskoy', 0, 0, '', 'в Полевском'),
(860, 1, 64, 'Нижний Тагил', 'nizhniy-tagil', 0, 0, '', 'в Нижнем Тагиле'),
(861, 1, 64, 'Нижняя Салда', 'nizhnyaya-salda', 0, 0, '', ''),
(862, 1, 64, 'Нижняя Тура', 'nizhnyaya-tura', 0, 0, '', 'в Нижней Туре'),
(863, 1, 64, 'Новая Ляля', 'novaya-lyalya', 0, 0, '', 'в Новой Ляле'),
(864, 1, 64, 'Новоуральск', 'novouralsk', 0, 0, '', 'в Новоуральске'),
(865, 1, 64, 'Михайловск', 'mihaylovsk', 0, 0, '', 'в Михайловске'),
(866, 1, 64, 'Невьянск', 'nevyansk', 0, 0, '', 'в Невьянске'),
(867, 1, 64, 'Нижние Серги', 'nizhnie-sergi', 0, 0, '', ''),
(868, 1, 64, 'Кушва', 'kushva', 0, 0, '', 'в Кушве'),
(869, 1, 64, 'Лесной', 'lesnoy', 0, 0, '', 'в Лесном'),
(870, 1, 64, 'Краснотурьинск', 'krasnoturinsk', 0, 0, '', 'в Краснотурьинске'),
(871, 1, 64, 'Красноуральск', 'krasnouralsk', 0, 0, '', 'в Красноуральске'),
(872, 1, 64, 'Красноуфимск', 'krasnoufimsk', 0, 0, '', 'в Красноуфимске'),
(873, 1, 64, 'Каменск-Уральский', 'kamensk-uralskiy', 0, 0, '', 'в Каменске-Уральском'),
(874, 1, 64, 'Камышлов', 'kamyshlov', 0, 0, '', 'в Камышлове'),
(875, 1, 64, 'Карпинск', 'karpinsk', 0, 0, '', 'в Карпинске'),
(876, 1, 64, 'Качканар', 'kachkanar', 0, 0, '', 'в Качканаре'),
(877, 1, 64, 'Кировград', 'kirovgrad', 0, 0, '', 'в Кировграде'),
(878, 1, 64, 'Ивдель', 'ivdel', 0, 0, '', 'в Ивделе'),
(879, 1, 64, 'Ирбит', 'irbit', 0, 0, '', 'в Ирбите'),
(880, 1, 64, 'Дегтярск', 'degtyarsk', 0, 0, '', 'в Дегтярске'),
(881, 1, 64, 'Екатеринбург', 'ekaterinburg', 0, 1, '', 'в Екатеринбурге'),
(882, 1, 64, 'Заречный', 'zarechnyy', 0, 0, '', 'в Заречном'),
(883, 1, 64, 'Верхний Тагил', 'verhniy-tagil', 0, 0, '', ''),
(884, 1, 64, 'Верхняя Пышма', 'verhnyaya-pyshma', 0, 0, '', 'в Верхней Пышме'),
(885, 1, 64, 'Верхняя Салда', 'verhnyaya-salda', 0, 0, '', 'в Верхней Салде'),
(886, 1, 64, 'Верхняя Тура', 'verhnyaya-tura', 0, 0, '', ''),
(887, 1, 64, 'Верхотурье', 'verhoture', 0, 0, '', 'в Верхотурье'),
(888, 1, 64, 'Волчанск', 'volchansk', 0, 0, '', 'в Волчанске'),
(889, 1, 64, 'Березовский', 'berezovskiy', 0, 0, '', 'в Березовском'),
(890, 1, 64, 'Богданович', 'bogdanovich', 0, 0, '', 'в Богдановиче'),
(891, 1, 64, 'Алапаевск', 'alapaevsk', 0, 0, '', 'в Алапаевске'),
(892, 1, 64, 'Арамиль', 'aramil', 0, 0, '', 'в Арамиле'),
(893, 1, 64, 'Артемовский', 'artemovskiy', 0, 0, '', 'в Артемовском'),
(894, 1, 64, 'Асбест', 'asbest', 0, 0, '', 'в Асбесте'),
(1143, 2, 87, 'Есиль', 'esil', 0, 0, '', ''),
(1142, 2, 87, 'Ерейментау', 'ereymentau', 0, 0, '', ''),
(897, 1, 66, 'Моздок', 'mozdok', 0, 0, '', 'в Моздоке'),
(898, 1, 66, 'Алагир', 'alagir', 0, 0, '', 'в Алагире'),
(899, 1, 66, 'Ардон', 'ardon', 0, 0, '', 'в Ардоне'),
(900, 1, 66, 'Беслан', 'beslan', 0, 0, '', 'в Беслане'),
(901, 1, 66, 'Владикавказ', 'vladikavkaz', 0, 0, '', 'в Владикавказе'),
(902, 1, 66, 'Дигора', 'digora', 0, 0, '', 'в Дигоре'),
(903, 1, 67, 'Ярцево', 'yarcevo', 0, 0, '', 'в Ярцево'),
(904, 1, 67, 'Сычевка', 'sychevka', 0, 0, '', 'в Сычевке'),
(905, 1, 67, 'Смоленск', 'smolensk', 0, 0, '', 'в Смоленске'),
(906, 1, 67, 'Сафоново', 'safonovo', 0, 0, '', 'в Сафоново'),
(907, 1, 67, 'Рославль', 'roslavl', 0, 0, '', 'в Рославле'),
(908, 1, 67, 'Рудня', 'rudnya', 0, 0, '', 'в Рудне'),
(909, 1, 67, 'Починок', 'pochinok', 0, 0, '', 'в Починке'),
(910, 1, 67, 'Духовщина', 'duhovshchina', 0, 0, '', ''),
(911, 1, 67, 'Ельня', 'elnya', 0, 0, '', 'в Ельне'),
(912, 1, 67, 'Десногорск', 'desnogorsk', 0, 0, '', 'в Десногорске'),
(913, 1, 67, 'Дорогобуж', 'dorogobuzh', 0, 0, '', 'в Дорогобуже'),
(914, 1, 67, 'Демидов', 'demidov', 0, 0, '', 'в Демидове'),
(915, 1, 67, 'Вязьма', 'vyazma', 0, 0, '', 'в Вязьме'),
(916, 1, 67, 'Гагарин', 'gagarin', 0, 0, '', 'в Гагарине'),
(917, 1, 67, 'Велиж', 'velizh', 0, 0, '', 'в Велиже'),
(918, 1, 68, 'Светлоград', 'svetlograd', 0, 0, '', 'в Светлограде'),
(919, 1, 68, 'Ставрополь', 'stavropol', 0, 0, '', 'в Ставрополе'),
(920, 1, 68, 'Пятигорск', 'pyatigorsk', 0, 0, '', 'в Пятигорске'),
(921, 1, 68, 'Невинномысск', 'nevinnomyssk', 0, 0, '', 'в Невинномысске'),
(922, 1, 68, 'Нефтекумск', 'neftekumsk', 0, 0, '', 'в Нефтекумске'),
(923, 1, 68, 'Новоалександровск', 'novoaleksandrovsk', 0, 0, '', 'в Новоалександровске'),
(924, 1, 68, 'Новопавловск', 'novopavlovsk', 0, 0, '', 'в Новопавловске'),
(925, 1, 68, 'Лермонтов', 'lermontov', 0, 0, '', 'в Лермонтове'),
(926, 1, 68, 'Минеральные Воды', 'mineralnye-vody', 0, 0, '', 'в Минеральных Водах'),
(927, 1, 68, 'Михайловск', 'mihaylovsk', 0, 0, '', 'в Михайловске'),
(928, 1, 68, 'Зеленокумск', 'zelenokumsk', 0, 0, '', 'в Зеленокумске'),
(929, 1, 68, 'Изобильный', 'izobilnyy', 0, 0, '', ''),
(930, 1, 68, 'Ипатово', 'ipatovo', 0, 0, '', 'в Ипатово'),
(931, 1, 68, 'Кисловодск', 'kislovodsk', 0, 0, '', 'в Кисловодске'),
(932, 1, 68, 'Георгиевск', 'georgievsk', 0, 0, '', 'в Георгиевске'),
(933, 1, 68, 'Ессентуки', 'essentuki', 0, 0, '', 'в Ессентуках'),
(934, 1, 68, 'Железноводск', 'zheleznovodsk', 0, 0, '', 'в Железноводске'),
(935, 1, 68, 'Благодарный', 'blagodarnyy', 0, 0, '', 'в Благодарном'),
(936, 1, 68, 'Буденновск', 'budennovsk', 0, 0, '', 'в Буденновске'),
(937, 1, 69, 'Уварово', 'uvarovo', 0, 0, '', 'в Уварово'),
(938, 1, 69, 'Тамбов', 'tambov', 0, 0, '', 'в Тамбове'),
(939, 1, 69, 'Рассказово', 'rasskazovo', 0, 0, '', 'в Рассказово'),
(940, 1, 69, 'Мичуринск', 'michurinsk', 0, 0, '', 'в Мичуринске'),
(941, 1, 69, 'Моршанск', 'morshansk', 0, 0, '', 'в Моршанске'),
(942, 1, 69, 'Кирсанов', 'kirsanov', 0, 0, '', 'в Кирсанове'),
(943, 1, 69, 'Котовск', 'kotovsk', 0, 0, '', 'в Котовске'),
(944, 1, 69, 'Жердевка', 'zherdevka', 0, 0, '', 'в Жердевке'),
(945, 1, 70, 'Чистополь', 'chistopol', 0, 0, '', 'в Чистополе'),
(946, 1, 70, 'Тетюши', 'tetyushi', 0, 0, '', 'в Тетюшах'),
(947, 1, 70, 'Нурлат', 'nurlat', 0, 0, '', 'в Нурлате'),
(948, 1, 70, 'Нижнекамск', 'nizhnekamsk', 0, 0, '', 'в Нижнекамске'),
(949, 1, 70, 'Менделеевск', 'mendeleevsk', 0, 0, '', 'в Менделеевске'),
(950, 1, 70, 'Мензелинск', 'menzelinsk', 0, 0, '', 'в Мензелинске'),
(951, 1, 70, 'Набережные Челны', 'naberezhnye-chelny', 0, 0, '', 'в Набережных Челнах'),
(952, 1, 70, 'Мамадыш', 'mamadysh', 0, 0, '', 'в Мамадыше'),
(953, 1, 70, 'Лаишево', 'laishevo', 0, 0, '', 'в Лаишево'),
(954, 1, 70, 'Лениногорск', 'leninogorsk', 0, 0, '', 'в Лениногорске'),
(955, 1, 70, 'Кукмор', 'kukmor', 0, 0, '', 'в Кукморе'),
(956, 1, 70, 'Казань', 'kazan', 0, 1, '', 'в Казани'),
(957, 1, 70, 'Зеленодольск', 'zelenodolsk', 0, 0, '', 'в Зеленодольске'),
(958, 1, 70, 'Иннополис', 'innopolis', 0, 0, '', 'в Иннополисе'),
(959, 1, 70, 'Елабуга', 'elabuga', 0, 0, '', 'в Елабуге'),
(960, 1, 70, 'Заинск', 'zainsk', 0, 0, '', 'в Заинске'),
(961, 1, 70, 'Бугульма', 'bugulma', 0, 0, '', 'в Бугульме'),
(962, 1, 70, 'Буинск', 'buinsk', 0, 0, '', 'в Буинске'),
(963, 1, 70, 'Болгар', 'bolgar', 0, 0, '', 'в Болгаре'),
(964, 1, 70, 'Альметьевск', 'almetevsk', 0, 0, '', 'в Альметьевске'),
(965, 1, 70, 'Арск', 'arsk', 0, 0, '', 'в Арске'),
(966, 1, 70, 'Бавлы', 'bavly', 0, 0, '', 'в Бавлах'),
(967, 1, 70, 'Агрыз', 'agryz', 0, 0, '', 'в Агрызе'),
(968, 1, 70, 'Азнакаево', 'aznakaevo', 0, 0, '', 'в Азнакаево'),
(969, 1, 71, 'Удомля', 'udomlya', 0, 0, '', 'в Удомле'),
(970, 1, 71, 'Торжок', 'torzhok', 0, 0, '', 'в Торжке'),
(971, 1, 71, 'Торопец', 'toropec', 0, 0, '', 'в Торопце'),
(972, 1, 71, 'Тверь', 'tver', 0, 0, '', 'в Твери'),
(973, 1, 71, 'Старица', 'starica', 0, 0, '', 'в Старице'),
(974, 1, 71, 'Ржев', 'rzhev', 0, 0, '', 'в Ржеве'),
(975, 1, 71, 'Осташков', 'ostashkov', 0, 0, '', 'в Осташкове'),
(976, 1, 71, 'Нелидово', 'nelidovo', 0, 0, '', 'в Нелидово'),
(977, 1, 71, 'Лихославль', 'lihoslavl', 0, 0, '', 'в Лихославле'),
(978, 1, 71, 'Кувшиново', 'kuvshinovo', 0, 0, '', 'в Кувшиново'),
(979, 1, 71, 'Красный Холм', 'krasnyy-holm', 0, 0, '', 'в Красных Холмах'),
(980, 1, 71, 'Конаково', 'konakovo', 0, 0, '', 'в Конаково'),
(981, 1, 71, 'Кашин', 'kashin', 0, 0, '', 'в Кашине'),
(982, 1, 71, 'Кимры', 'kimry', 0, 0, '', 'в Кимрах'),
(983, 1, 71, 'Калязин', 'kalyazin', 0, 0, '', 'в Калязине'),
(984, 1, 71, 'Зубцов', 'zubcov', 0, 0, '', 'в Зубцове'),
(985, 1, 71, 'Западная Двина', 'zapadnaya-dvina', 0, 0, '', ''),
(986, 1, 71, 'Вышний Волочек', 'vyshniy-volochek', 0, 0, '', 'в Вышнем Волочке'),
(987, 1, 71, 'Весьегонск', 'vesegonsk', 0, 0, '', 'в Весьегонске'),
(988, 1, 71, 'Бологое', 'bologoe', 0, 0, '', 'в Бологоме'),
(989, 1, 71, 'Белый', 'belyy', 0, 0, '', 'в Белом'),
(990, 1, 71, 'Бежецк', 'bezheck', 0, 0, '', 'в Бежецке'),
(991, 1, 71, 'Андреаполь', 'andreapol', 0, 0, '', 'в Андреаполе'),
(992, 1, 72, 'Томск', 'tomsk', 0, 1, '', 'в Томске'),
(993, 1, 72, 'Северск', 'seversk', 0, 0, '', 'в Северске'),
(994, 1, 72, 'Стрежевой', 'strezhevoy', 0, 0, '', 'в Стрежевом'),
(995, 1, 72, 'Колпашево', 'kolpashevo', 0, 0, '', 'в Колпашево'),
(996, 1, 72, 'Кедровый', 'kedrovyy', 0, 0, '', 'в Кедровом'),
(997, 1, 72, 'Асино', 'asino', 0, 0, '', 'в Асино'),
(998, 1, 73, 'Ясногорск', 'yasnogorsk', 0, 0, '', 'в Ясногорске'),
(999, 1, 73, 'Щекино', 'shchekino', 0, 0, '', 'в Щекино'),
(1000, 1, 73, 'Чекалин', 'chekalin', 0, 0, '', 'в Чекалине'),
(1001, 1, 73, 'Узловая', 'uzlovaya', 0, 0, '', 'в Узловой'),
(1002, 1, 73, 'Тула', 'tula', 0, 0, '', 'в Туле'),
(1003, 1, 73, 'Суворов', 'suvorov', 0, 0, '', 'в Суворове'),
(1004, 1, 73, 'Советск', 'sovetsk', 0, 0, '', 'в Советске'),
(1005, 1, 73, 'Плавск', 'plavsk', 0, 0, '', 'в Плавске'),
(1006, 1, 73, 'Новомосковск', 'novomoskovsk', 0, 0, '', 'в Новомосковске'),
(1007, 1, 73, 'Липки', 'lipki', 0, 0, '', 'в Липках'),
(1008, 1, 73, 'Кимовск', 'kimovsk', 0, 0, '', 'в Кимовске'),
(1009, 1, 73, 'Киреевск', 'kireevsk', 0, 0, '', 'в Киреевске'),
(1010, 1, 73, 'Ефремов', 'efremov', 0, 0, '', 'в Ефремове'),
(1011, 1, 73, 'Донской', 'donskoy', 0, 0, '', 'в Донском'),
(1012, 1, 73, 'Венев', 'venev', 0, 0, '', ''),
(1013, 1, 73, 'Болохово', 'bolohovo', 0, 0, '', 'в Болохово'),
(1014, 1, 73, 'Белев', 'belev', 0, 0, '', 'в Белеве'),
(1015, 1, 73, 'Богородицк', 'bogorodick', 0, 0, '', 'в Богородицке'),
(1016, 1, 73, 'Алексин', 'aleksin', 0, 0, '', 'в Алексине'),
(1017, 1, 74, 'Чадан', 'chadan', 0, 0, '', 'в Чадане'),
(1018, 1, 74, 'Шагонар', 'shagonar', 0, 0, '', 'в Шагонаре'),
(1019, 1, 74, 'Ак-Довурак', 'ak-dovurak', 0, 0, '', 'в Ак-Довураке'),
(1020, 1, 74, 'Кызыл', 'kyzyl', 0, 0, '', 'в Кызыле'),
(1021, 1, 74, 'Туран', 'turan', 0, 0, '', 'в Туране'),
(1022, 1, 75, 'Ялуторовск', 'yalutorovsk', 0, 0, '', ''),
(1023, 1, 75, 'Тобольск', 'tobolsk', 0, 0, '', 'в Тобольске'),
(1024, 1, 75, 'Тюмень', 'tyumen', 0, 0, '', 'в Тюмени'),
(1025, 1, 75, 'Заводоуковск', 'zavodoukovsk', 0, 0, '', 'в Заводоуковске'),
(1026, 1, 75, 'Ишим', 'ishim', 0, 0, '', 'в Ишиме'),
(1027, 1, 76, 'Сарапул', 'sarapul', 0, 0, '', 'в Сарапуле'),
(1028, 1, 76, 'Можга', 'mozhga', 0, 0, '', 'в Можге'),
(1029, 1, 76, 'Камбарка', 'kambarka', 0, 0, '', 'в Камбарке'),
(1030, 1, 76, 'Ижевск', 'izhevsk', 0, 0, '', 'в Ижевске'),
(1031, 1, 76, 'Воткинск', 'votkinsk', 0, 0, '', 'в Воткинске'),
(1032, 1, 76, 'Глазов', 'glazov', 0, 0, '', 'в Глазове'),
(1033, 1, 77, 'Ульяновск', 'ulyanovsk', 0, 0, '', 'в Ульяновске'),
(1034, 1, 77, 'Сенгилей', 'sengiley', 0, 0, '', 'в Сенгилее'),
(1035, 1, 77, 'Новоульяновск', 'novoulyanovsk', 0, 0, '', 'в Новоульяновске'),
(1036, 1, 77, 'Инза', 'inza', 0, 0, '', 'в Инзе'),
(1037, 1, 77, 'Димитровград', 'dimitrovgrad', 0, 0, '', 'в Димитровграде'),
(1038, 1, 77, 'Барыш', 'barysh', 0, 0, '', 'в Барыше'),
(1039, 1, 78, 'Советская Гавань', 'sovetskaya-gavan', 0, 0, '', 'в Советской Гавани'),
(1040, 1, 78, 'Хабаровск', 'habarovsk', 0, 1, '', 'в Хабаровске'),
(1041, 1, 78, 'Николаевск-на-Амуре', 'nikolaevsk-na-amure', 0, 0, '', 'в Николаевске-на-Амуре'),
(1042, 1, 78, 'Комсомольск-на-Амуре', 'komsomolsk-na-amure', 0, 0, '', 'в Комсомольске-на-Амуре'),
(1043, 1, 78, 'Вяземский', 'vyazemskiy', 0, 0, '', 'в Вяземском'),
(1044, 1, 78, 'Амурск', 'amursk', 0, 0, '', 'в Амурске'),
(1045, 1, 78, 'Бикин', 'bikin', 0, 0, '', 'в Бикине'),
(1046, 1, 79, 'Саяногорск', 'sayanogorsk', 0, 0, '', 'в Саяногорске'),
(1047, 1, 79, 'Сорск', 'sorsk', 0, 0, '', 'в Сорске'),
(1048, 1, 79, 'Черногорск', 'chernogorsk', 0, 0, '', 'в Черногорске'),
(1049, 1, 79, 'Абаза', 'abaza', 0, 0, '', 'в Абазе'),
(1050, 1, 79, 'Абакан', 'abakan', 0, 0, '', 'в Абакане'),
(1051, 1, 80, 'Югорск', 'yugorsk', 0, 0, '', 'в Югорске'),
(1052, 1, 80, 'Советский', 'sovetskiy', 0, 0, '', 'в Советском'),
(1053, 1, 80, 'Сургут', 'surgut', 0, 0, '', 'в Сургуте'),
(1054, 1, 80, 'Урай', 'uray', 0, 0, '', 'в Урае'),
(1055, 1, 80, 'Ханты-Мансийск', 'hanty-mansiysk', 0, 0, '', 'в Ханты-Мансийске'),
(1056, 1, 80, 'Лянтор', 'lyantor', 0, 0, '', ''),
(1057, 1, 80, 'Мегион', 'megion', 0, 0, '', 'в Мегионе'),
(1058, 1, 80, 'Нефтеюганск', 'nefteyugansk', 0, 0, '', 'в Нефтеюганске'),
(1059, 1, 80, 'Нижневартовск', 'nizhnevartovsk', 0, 0, '', 'в Нижневартовске'),
(1060, 1, 80, 'Нягань', 'nyagan', 0, 0, '', 'в Нягани'),
(1061, 1, 80, 'Покачи', 'pokachi', 0, 0, '', 'в Покачах'),
(1062, 1, 80, 'Пыть-Ях', 'pyt-yah', 0, 0, '', 'в Пыть-Яхе'),
(1063, 1, 80, 'Радужный', 'raduzhnyy', 0, 0, '', ''),
(1064, 1, 80, 'Белоярский', 'beloyarskiy', 0, 0, '', 'в Белоярском'),
(1065, 1, 80, 'Когалым', 'kogalym', 0, 0, '', 'в Когалыме'),
(1066, 1, 80, 'Лангепас', 'langepas', 0, 0, '', 'в Лангепасе'),
(1067, 1, 81, 'Чебаркуль', 'chebarkul', 0, 0, '', 'в Чебаркуле'),
(1068, 1, 81, 'Челябинск', 'chelyabinsk', 0, 1, '', 'в Челябинске'),
(1069, 1, 81, 'Южноуральск', 'yuzhnouralsk', 0, 0, '', 'в Южноуральске'),
(1070, 1, 81, 'Юрюзань', 'yuryuzan', 0, 0, '', 'в Юрюзани'),
(1071, 1, 81, 'Трехгорный', 'trehgornyy', 0, 0, '', ''),
(1072, 1, 81, 'Троицк', 'troick', 0, 0, '', 'в Троицке'),
(1073, 1, 81, 'Усть-Катав', 'ust-katav', 0, 0, '', 'в Усть-Катаве'),
(1074, 1, 81, 'Сатка', 'satka', 0, 0, '', 'в Сатке'),
(1075, 1, 81, 'Сим', 'sim', 0, 0, '', 'в Симе'),
(1076, 1, 81, 'Снежинск', 'snezhinsk', 0, 0, '', 'в Снежинске'),
(1077, 1, 81, 'Пласт', 'plast', 0, 0, '', 'в Пласте'),
(1078, 1, 81, 'Нязепетровск', 'nyazepetrovsk', 0, 0, '', 'в Нязепетровске'),
(1079, 1, 81, 'Озерск', 'ozersk', 0, 0, '', 'в Озерске'),
(1080, 1, 81, 'Миасс', 'miass', 0, 0, '', 'в Миассе'),
(1081, 1, 81, 'Миньяр', 'minyar', 0, 0, '', 'в Миньяре'),
(1082, 1, 81, 'Куса', 'kusa', 0, 0, '', 'в Кусе'),
(1083, 1, 81, 'Кыштым', 'kyshtym', 0, 0, '', 'в Кыштыме'),
(1084, 1, 81, 'Магнитогорск', 'magnitogorsk', 0, 0, '', 'в Магнитогорске'),
(1085, 1, 81, 'Копейск', 'kopeysk', 0, 0, '', 'в Копейске'),
(1086, 1, 81, 'Коркино', 'korkino', 0, 0, '', 'в Коркино'),
(1087, 1, 81, 'Карабаш', 'karabash', 0, 0, '', 'в Карабаше'),
(1088, 1, 81, 'Карталы', 'kartaly', 0, 0, '', 'в Карталах'),
(1089, 1, 81, 'Касли', 'kasli', 0, 0, '', 'в Каслях'),
(1090, 1, 81, 'Катав-Ивановск', 'katav-ivanovsk', 0, 0, '', 'в Катав-Ивановске'),
(1091, 1, 81, 'Еманжелинск', 'emanzhelinsk', 0, 0, '', 'в Еманжелинске'),
(1092, 1, 81, 'Златоуст', 'zlatoust', 0, 0, '', 'в Златоусте'),
(1093, 1, 81, 'Верхнеуральск', 'verhneuralsk', 0, 0, '', 'в Верхнеуральске'),
(1094, 1, 81, 'Верхний Уфалей', 'verhniy-ufaley', 0, 0, '', 'в Верхнем Уфалее'),
(1095, 1, 81, 'Аша', 'asha', 0, 0, '', 'в Аше'),
(1096, 1, 81, 'Бакал', 'bakal', 0, 0, '', 'в Бакале'),
(1097, 1, 82, 'Урус-Мартан', 'urus-martan', 0, 0, '', 'в Урус-Мартане'),
(1098, 1, 82, 'Шали', 'shali', 0, 0, '', 'в Шали'),
(1099, 1, 82, 'Курчалой', 'kurchaloy', 0, 0, '', 'в Курчалое'),
(1100, 1, 82, 'Аргун', 'argun', 0, 0, '', 'в Аргуне'),
(1101, 1, 82, 'Грозный', 'groznyy', 0, 0, '', 'в Грозном'),
(1102, 1, 82, 'Гудермес', 'gudermes', 0, 0, '', 'в Гудермесе'),
(1103, 1, 83, 'Ядрин', 'yadrin', 0, 0, '', 'в Ядрине'),
(1104, 1, 83, 'Шумерля', 'shumerlya', 0, 0, '', 'в Шумерли'),
(1105, 1, 83, 'Цивильск', 'civilsk', 0, 0, '', 'в Цивильске'),
(1106, 1, 83, 'Чебоксары', 'cheboksary', 0, 0, '', 'в Чебоксарах'),
(1107, 1, 83, 'Новочебоксарск', 'novocheboksarsk', 0, 0, '', 'в Новочебоксарске'),
(1108, 1, 83, 'Мариинский Посад', 'mariinskiy-posad', 0, 0, '', ''),
(1109, 1, 83, 'Козловка', 'kozlovka', 0, 0, '', 'в Козловке'),
(1110, 1, 83, 'Канаш', 'kanash', 0, 0, '', 'в Канаше'),
(1111, 1, 83, 'Алатырь', 'alatyr', 0, 0, '', 'в Алатыре'),
(1112, 1, 84, 'Анадырь', 'anadyr', 0, 0, '', 'в Анадыре'),
(1113, 1, 84, 'Билибино', 'bilibino', 0, 0, '', 'в Билибино'),
(1114, 1, 84, 'Певек', 'pevek', 0, 0, '', 'в Певеке'),
(1115, 1, 85, 'Губкинский', 'gubkinskiy', 0, 0, '', 'в Губкинском'),
(1116, 1, 85, 'Лабытнанги', 'labytnangi', 0, 0, '', 'в Лабытнанги'),
(1117, 1, 85, 'Муравленко', 'muravlenko', 0, 0, '', 'в Муравленко'),
(1118, 1, 85, 'Надым', 'nadym', 0, 0, '', 'в Надыме'),
(1119, 1, 85, 'Новый Уренгой', 'novyy-urengoy', 0, 0, '', 'в Новом Уренгое'),
(1120, 1, 85, 'Ноябрьск', 'noyabrsk', 0, 0, '', 'в Ноябрьске'),
(1121, 1, 85, 'Салехард', 'salehard', 0, 0, '', 'в Салехарде'),
(1122, 1, 85, 'Тарко-Сале', 'tarko-sale', 0, 0, '', 'в Тарко-Сале'),
(1123, 1, 86, 'Ярославль', 'yaroslavl', 0, 1, '', 'в Ярославле'),
(1124, 1, 86, 'Тутаев', 'tutaev', 0, 0, '', 'в Тутаеве'),
(1125, 1, 86, 'Углич', 'uglich', 0, 0, '', 'в Угличе'),
(1126, 1, 86, 'Ростов', 'rostov', 0, 1, '', 'в Ростове'),
(1127, 1, 86, 'Рыбинск', 'rybinsk', 0, 0, '', 'в Рыбинске'),
(1128, 1, 86, 'Пошехонье', 'poshehone', 0, 0, '', 'в Пошехонье'),
(1129, 1, 86, 'Переславль-Залесский', 'pereslavl-zalesskiy', 0, 0, '', 'в Переславле-Залесском'),
(1130, 1, 86, 'Мышкин', 'myshkin', 0, 0, '', 'в Мышкине'),
(1131, 1, 86, 'Любим', 'lyubim', 0, 0, '', 'в Любиме'),
(1132, 1, 86, 'Данилов', 'danilov', 0, 0, '', 'в Данилове'),
(1133, 1, 86, 'Гаврилов-Ям', 'gavrilov-yam', 0, 0, '', 'в Гавриловом-Яме'),
(1150, 2, 88, 'Жем', 'zhem', 0, 0, '', ''),
(1151, 2, 88, 'Кандыагаш', 'kandyagash', 0, 0, '', ''),
(1152, 2, 88, 'Актобе', 'aktobe', 0, 1, '', ''),
(1153, 2, 88, 'Алга', 'alga', 0, 0, '', ''),
(1154, 2, 89, 'Талгар', 'talgar', 0, 0, '', ''),
(1155, 2, 89, 'Талдыкорган', 'taldykorgan', 0, 0, '', ''),
(1156, 2, 89, 'Текели', 'tekeli', 0, 0, '', ''),
(1157, 2, 89, 'Ушарал', 'usharal', 0, 0, '', ''),
(1158, 2, 89, 'Уштобе', 'ushtobe', 0, 0, '', ''),
(1159, 2, 89, 'Саркан', 'sarkan', 0, 0, '', ''),
(1160, 2, 89, 'Капшагай', 'kapshagay', 0, 0, '', ''),
(1161, 2, 89, 'Каскелен', 'kaskelen', 0, 0, '', ''),
(1162, 2, 89, 'Есик', 'esik', 0, 0, '', ''),
(1163, 2, 89, 'Жаркент', 'zharkent', 0, 0, '', ''),
(1226, 2, 89, 'Алматы', 'almaty', 0, 1, '', ''),
(1165, 2, 91, 'Кульсары', 'kulsary', 0, 1, '', ''),
(1166, 2, 91, 'Атырау', 'atyrau', 0, 1, '', ''),
(1167, 2, 92, 'Шар', 'shar', 0, 0, '', ''),
(1168, 2, 92, 'Шемонаиха', 'shemonaiha', 0, 0, '', ''),
(1169, 2, 92, 'Риддер', 'ridder', 0, 0, '', ''),
(1170, 2, 92, 'Семей', 'semey', 0, 1, '', ''),
(1171, 2, 92, 'Серебрянск', 'serebryansk', 0, 0, '', ''),
(1172, 2, 92, 'Усть-каменогорск', 'ust-kamenogorsk', 0, 1, '', ''),
(1173, 2, 92, 'Павлодарская', 'pavlodarskaya', 0, 0, '', ''),
(1174, 2, 92, 'Курчатов', 'kurchatov', 0, 0, '', ''),
(1175, 2, 92, 'Зайсан', 'zaysan', 0, 1, '', ''),
(1176, 2, 92, 'Алтай', 'altay', 0, 0, '', ''),
(1177, 2, 92, 'Аягоз', 'ayagoz', 0, 0, '', ''),
(1178, 2, 93, 'Тараз', 'taraz', 0, 1, '', ''),
(1179, 2, 93, 'Шу', 'shu', 0, 0, '', ''),
(1180, 2, 93, 'Жанатас', 'zhanatas', 0, 0, '', ''),
(1181, 2, 93, 'Каратау', 'karatau', 0, 0, '', ''),
(1182, 2, 94, 'Уральск', 'uralsk', 0, 0, '', ''),
(1183, 2, 94, 'Аксай', 'aksay', 0, 0, '', ''),
(1184, 2, 95, 'Шахтинск', 'shahtinsk', 0, 0, '', ''),
(1185, 2, 95, 'Приозерск', 'priozersk', 0, 0, '', ''),
(1186, 2, 95, 'Сарань', 'saran', 0, 0, '', ''),
(1187, 2, 95, 'Сатпаев', 'satpaev', 0, 0, '', ''),
(1188, 2, 95, 'Темиртау', 'temirtau', 0, 1, '', ''),
(1189, 2, 95, 'Каркаралинск', 'karkaralinsk', 0, 0, '', ''),
(1190, 2, 95, 'Жезказган', 'zhezkazgan', 0, 0, '', ''),
(1191, 2, 95, 'Караганда', 'karaganda', 0, 1, '', ''),
(1192, 2, 95, 'Каражал', 'karazhal', 0, 0, '', ''),
(1193, 2, 95, 'Абай', 'abay', 0, 1, '', ''),
(1194, 2, 95, 'Балхаш', 'balhash', 0, 0, '', ''),
(1195, 2, 96, 'Рудный', 'rudnyy', 0, 0, '', ''),
(1196, 2, 96, 'Лисаковск', 'lisakovsk', 0, 0, '', ''),
(1197, 2, 96, 'Костанай', 'kostanay', 0, 1, '', ''),
(1198, 2, 96, 'Житикара', 'zhitikara', 0, 0, '', ''),
(1199, 2, 96, 'Аркалык', 'arkalyk', 0, 0, '', ''),
(1200, 2, 97, 'Казалинск', 'kazalinsk', 0, 0, '', ''),
(1201, 2, 97, 'Кызылорда', 'kyzylorda', 0, 0, '', ''),
(1202, 2, 97, 'Аральск', 'aralsk', 0, 0, '', ''),
(1203, 2, 97, 'Байконыр', 'baykonyr', 0, 0, '', ''),
(1204, 2, 98, 'Актау', 'aktau', 0, 1, '', ''),
(1205, 2, 98, 'Жанаозен', 'zhanaozen', 0, 0, '', ''),
(1206, 2, 98, 'Форт-Шевченко', 'fort-shevchenko', 0, 0, '', ''),
(1208, 2, 100, 'Павлодар', 'pavlodar', 0, 1, '', ''),
(1209, 2, 100, 'Аксу', 'aksu', 0, 0, '', ''),
(1210, 2, 100, 'Экибастуз', 'ekibastuz', 0, 0, '', ''),
(1211, 2, 101, 'Сергеевка', 'sergeevka', 0, 0, '', ''),
(1212, 2, 101, 'Тайынша', 'tayynsha', 0, 0, '', ''),
(1213, 2, 101, 'Петропавловск', 'petropavlovsk', 0, 1, '', ''),
(1214, 2, 101, 'Мамлютка', 'mamlyutka', 0, 0, '', ''),
(1215, 2, 101, 'Булаево', 'bulaevo', 0, 0, '', ''),
(1216, 2, 102, 'Шымкент', 'shymkent', 0, 1, '', ''),
(1217, 2, 102, 'Туркестан', 'turkestan', 0, 0, '', ''),
(1218, 2, 102, 'Шардара', 'shardara', 0, 0, '', ''),
(1219, 2, 102, 'Сарыагаш', 'saryagash', 0, 0, '', ''),
(1220, 2, 102, 'Ленгер', 'lenger', 0, 0, '', ''),
(1221, 2, 102, 'Кентау', 'kentau', 0, 0, '', ''),
(1222, 2, 102, 'Жетысай', 'zhetysay', 0, 0, '', ''),
(1223, 2, 102, 'Арыс', 'arys', 0, 0, '', ''),
(1225, 2, 87, 'Нур-Султан (Астана)', 'nur-sultan', 0, 1, '', ''),
(1276, 1, 107, 'Харцызск', 'harcyzsk', 0, 0, '', ''),
(1277, 1, 107, 'Хрестівка', 'hrestivka', 0, 0, '', ''),
(1278, 1, 107, 'Часов Яр', 'chasov-yar', 0, 0, '', ''),
(1279, 1, 107, 'Чистяково', 'chistyakovo', 0, 0, '', ''),
(1280, 1, 107, 'Шахтерск', 'shahtersk', 0, 0, '', ''),
(1281, 1, 107, 'Ясиноватая', 'yasinovataya', 0, 0, '', ''),
(1282, 1, 107, 'Торецьк', 'toreck', 0, 0, '', ''),
(1283, 1, 107, 'Украинск', 'ukrainsk', 0, 0, '', ''),
(1284, 1, 107, 'Світлодарськ', 'svitlodarsk', 0, 0, '', ''),
(1285, 1, 107, 'Святогірськ', 'svyatogirsk', 0, 0, '', ''),
(1286, 1, 107, 'Селидово', 'selidovo', 0, 0, '', ''),
(1287, 1, 107, 'Северск', 'seversk', 0, 0, '', ''),
(1288, 1, 107, 'Славянск', 'slavyansk', 0, 0, '', ''),
(1289, 1, 107, 'Снежное', 'snezhnoe', 0, 0, '', ''),
(1290, 1, 107, 'Соледар', 'soledar', 0, 0, '', ''),
(1291, 1, 107, 'Покровск', 'pokrovsk', 0, 0, '', ''),
(1292, 1, 107, 'Родинское', 'rodinskoe', 0, 0, '', ''),
(1293, 1, 107, 'Новогродовка', 'novogrodovka', 0, 0, '', ''),
(1294, 1, 107, 'Миколаївка', 'mikolajivka', 0, 0, '', ''),
(1295, 1, 107, 'Мирноград', 'mirnograd', 0, 0, '', ''),
(1296, 1, 107, 'Моспино', 'mospino', 0, 0, '', ''),
(1297, 1, 107, 'Новоазовск', 'novoazovsk', 0, 0, '', ''),
(1298, 1, 107, 'Курахово', 'kurahovo', 0, 0, '', ''),
(1299, 1, 107, 'Лиман', 'liman', 0, 0, '', ''),
(1300, 1, 107, 'Макеевка', 'makeevka', 0, 0, '', ''),
(1301, 1, 107, 'Мариуполь', 'mariupol', 0, 1, '', ''),
(1302, 1, 107, 'Марьинка', 'marinka', 0, 0, '', ''),
(1303, 1, 107, 'Костянтинівка', 'kostyantinivka', 0, 0, '', ''),
(1304, 1, 107, 'Краматорск', 'kramatorsk', 0, 0, '', ''),
(1305, 1, 107, 'Красногоровка', 'krasnogorovka', 0, 0, '', ''),
(1306, 1, 107, 'Залізне', 'zalizne', 0, 0, '', ''),
(1307, 1, 107, 'Зугрэс', 'zugres', 0, 0, '', ''),
(1308, 1, 107, 'Иловайск', 'ilovaysk', 0, 0, '', ''),
(1309, 1, 107, 'Кальміуське', 'kalmiuske', 0, 0, '', ''),
(1310, 1, 107, 'Горловка', 'gorlovka', 0, 0, '', ''),
(1311, 1, 107, 'Дебальцево', 'debalcevo', 0, 0, '', ''),
(1312, 1, 107, 'Добропілля', 'dobropillya', 0, 0, '', ''),
(1313, 1, 107, 'Докучаевск', 'dokuchaevsk', 0, 0, '', ''),
(1314, 1, 107, 'Донецк', 'doneck', 0, 1, '', ''),
(1315, 1, 107, 'Дружковка', 'druzhkovka', 0, 0, '', ''),
(1316, 1, 107, 'Енакиево', 'enakievo', 0, 0, '', ''),
(1317, 1, 107, 'Ждановка', 'zhdanovka', 0, 0, '', ''),
(1318, 1, 107, 'Волноваха', 'volnovaha', 0, 0, '', ''),
(1319, 1, 107, 'Вуглегірськ', 'vuglegirsk', 0, 0, '', ''),
(1320, 1, 107, 'Угледар', 'ugledar', 0, 0, '', ''),
(1321, 1, 107, 'Горняк', 'gornyak', 0, 0, '', ''),
(1322, 1, 107, 'Авдеевка', 'avdeevka', 0, 0, '', ''),
(1323, 1, 107, 'Амвросиевка', 'amvrosievka', 0, 0, '', ''),
(1324, 1, 107, 'Бахмут', 'bahmut', 0, 0, '', ''),
(1325, 1, 107, 'Белицкое', 'belickoe', 0, 0, '', ''),
(1351, 1, 110, 'Токмак', 'tokmak', 0, 0, '', ''),
(1352, 1, 110, 'Орехов', 'orehov', 0, 0, '', ''),
(1353, 1, 110, 'Пологи', 'pologi', 0, 0, '', ''),
(1354, 1, 110, 'Приморск', 'primorsk', 0, 0, '', ''),
(1355, 1, 110, 'Мелитополь', 'melitopol', 0, 0, '', ''),
(1356, 1, 110, 'Молочанск', 'molochansk', 0, 0, '', ''),
(1357, 1, 110, 'Каменка-Днепровская', 'kamenka-dneprovskaya', 0, 0, '', ''),
(1358, 1, 110, 'Днепрорудное', 'dneprorudnoe', 0, 0, '', ''),
(1359, 1, 110, 'Энергодар', 'energodar', 0, 0, '', ''),
(1360, 1, 110, 'Запорожье', 'zaporozhe', 0, 1, '', ''),
(1361, 1, 110, 'Вольнянск', 'volnyansk', 0, 0, '', ''),
(1362, 1, 110, 'Гуляйполе', 'gulyaypole', 0, 0, '', ''),
(1363, 1, 110, 'Бердянск', 'berdyansk', 0, 0, '', ''),
(1364, 1, 110, 'Васильевка', 'vasilevka', 0, 0, '', ''),
(46098, 12, 201, 'Заамин', 'zaamin', 0, 0, NULL, NULL),
(46097, 12, 201, 'Дустликский район', 'dustlikskiy-rayon', 0, 0, NULL, NULL),
(46096, 12, 201, 'Джизакский район', 'dzhizakskiy-rayon', 0, 0, NULL, NULL),
(46095, 12, 201, 'Галлаарал', 'gallaaral', 0, 0, NULL, NULL),
(46094, 12, 201, 'Бахмал', 'bahmal', 0, 0, NULL, NULL),
(46092, 12, 201, 'Джизак', 'dzhizak', 0, 0, NULL, NULL),
(46093, 12, 201, 'Арнасай', 'arnasay', 1, 0, NULL, NULL),
(1429, 1, 115, 'Щастя', 'shchastya', 0, 0, '', ''),
(1430, 1, 115, 'Суходільськ', 'suhodilsk', 0, 0, '', ''),
(1431, 1, 115, 'Хрустальный', 'hrustalnyy', 0, 0, '', ''),
(1432, 1, 115, 'Ровеньки', 'rovenki', 0, 0, '', ''),
(1433, 1, 115, 'Рубежное', 'rubezhnoe', 0, 0, '', ''),
(1434, 1, 115, 'Сватово', 'svatovo', 0, 0, '', ''),
(1435, 1, 115, 'Сєвєродонецьк', 'syevyerodoneck', 0, 0, '', ''),
(1436, 1, 115, 'Сорокино', 'sorokino', 0, 0, '', ''),
(1437, 1, 115, 'Старобельск', 'starobelsk', 0, 0, '', ''),
(1438, 1, 115, 'Первомайск', 'pervomaysk', 0, 0, '', ''),
(1439, 1, 115, 'Перевальск', 'perevalsk', 0, 0, '', ''),
(1440, 1, 115, 'Петрово-красносілля', 'petrovo-krasnosillya', 0, 0, '', ''),
(1441, 1, 115, 'Попасная', 'popasnaya', 0, 0, '', ''),
(1442, 1, 115, 'Приволье', 'privole', 0, 0, '', ''),
(1443, 1, 115, 'Миусинск', 'miusinsk', 0, 0, '', ''),
(1444, 1, 115, 'Молодогвардейск', 'molodogvardeysk', 0, 0, '', ''),
(1445, 1, 115, 'Новодружеск', 'novodruzhesk', 0, 0, '', ''),
(1446, 1, 115, 'Алексанровск', 'aleksanrovsk', 0, 0, '', ''),
(1447, 1, 115, 'Лисичанск', 'lisichansk', 0, 0, '', ''),
(1448, 1, 115, 'Луганск', 'lugansk', 0, 0, '', ''),
(1449, 1, 115, 'Лутугино', 'lutugino', 0, 0, '', ''),
(1450, 1, 115, 'Кипуче', 'kipuche', 0, 0, '', ''),
(1451, 1, 115, 'Кремінна', 'kreminna', 0, 0, '', ''),
(1452, 1, 115, 'Довжанск', 'dovzhansk', 0, 0, '', ''),
(1453, 1, 115, 'Зимогорье', 'zimogore', 0, 0, '', ''),
(1454, 1, 115, 'Золоте', 'zolote', 0, 0, '', ''),
(1455, 1, 115, 'Зоринск', 'zorinsk', 0, 0, '', ''),
(1456, 1, 115, 'Ирмино', 'irmino', 0, 0, '', ''),
(1457, 1, 115, 'Кадиевка', 'kadievka', 0, 0, '', ''),
(1458, 1, 115, 'Вознесеновка', 'voznesenovka', 0, 0, '', ''),
(1459, 1, 115, 'Гірське', 'girske', 0, 0, '', ''),
(1460, 1, 115, 'Голубівка', 'golubivka', 0, 0, '', ''),
(1461, 1, 115, 'Алмазная', 'almaznaya', 0, 0, '', ''),
(1462, 1, 115, 'Алчевск', 'alchevsk', 0, 0, '', ''),
(1463, 1, 115, 'Антрацит', 'antracit', 0, 0, '', ''),
(1464, 1, 115, 'Боково-хрустальне', 'bokovo-hrustalne', 0, 0, '', ''),
(1465, 1, 115, 'Брянка', 'bryanka', 0, 0, '', ''),
(46091, 12, 200, 'Шафиркан', 'shafirkan', 0, 0, NULL, NULL),
(46090, 12, 200, 'Жандар', 'zhandar', 0, 0, NULL, NULL),
(46089, 12, 200, 'Рамитан', 'ramitan', 0, 0, NULL, NULL),
(1704, 1, 35, 'Севастополь', 'sevastopol', 0, 0, '', 'в Севастополе'),
(46088, 12, 200, 'Пешку', 'peshku', 0, 0, NULL, NULL),
(46087, 12, 200, 'Караулбазар', 'karaulbazar', 0, 0, NULL, NULL),
(46086, 12, 200, 'Каракол', 'karakol', 0, 0, NULL, NULL),
(46085, 12, 200, 'Каганский район', 'kaganskiy-rayon', 0, 0, NULL, NULL),
(1637, 1, 126, 'Таврийск', 'tavriysk', 0, 0, '', ''),
(1638, 1, 126, 'Херсон', 'herson', 0, 1, '', ''),
(1639, 1, 126, 'Скадовск', 'skadovsk', 0, 0, '', ''),
(1640, 1, 126, 'Олешки', 'oleshki', 0, 0, '', ''),
(1641, 1, 126, 'Новая Каховка', 'novaya-kahovka', 0, 0, '', ''),
(1642, 1, 126, 'Каховка', 'kahovka', 0, 0, '', ''),
(1643, 1, 126, 'Геническ', 'genichesk', 0, 0, '', ''),
(1644, 1, 126, 'Гола пристань', 'gola-pristan', 0, 0, '', ''),
(1645, 1, 126, 'Берислав', 'berislav', 0, 0, '', ''),
(46084, 12, 200, 'Гиждуван', 'gizhduvan', 0, 0, NULL, NULL),
(46083, 12, 200, 'Вабкент', 'vabkent', 0, 0, NULL, NULL),
(46082, 12, 200, 'Бухарский район', 'buharskiy-rayon', 0, 0, NULL, NULL),
(46081, 12, 200, 'Алат', 'alat', 0, 0, NULL, NULL),
(46080, 12, 200, 'Каган', 'kagan', 0, 0, NULL, NULL),
(46079, 12, 200, 'Бухара', 'buhara', 0, 0, NULL, NULL),
(46078, 12, 197, 'Хужаабад', 'huzhaabad', 0, 0, NULL, NULL),
(46077, 12, 197, 'Пахтаабад', 'pahtaabad', 0, 0, NULL, NULL),
(46076, 12, 197, 'Шахрихан', 'shahrihan', 0, 0, NULL, NULL),
(46075, 12, 197, 'Мархамат', 'marhamat', 0, 0, NULL, NULL),
(46074, 12, 197, 'Асака', 'asaka', 0, 0, NULL, NULL),
(46073, 12, 197, 'Курган-Тюбе', 'kurgan-tyube', 0, 0, NULL, NULL),
(46072, 12, 197, 'Улугнор', 'ulugnor', 0, 0, NULL, NULL),
(46071, 12, 197, 'Избоскан', 'izboskan', 0, 0, NULL, NULL),
(46070, 12, 197, 'Джалакудук', 'dzhalakuduk', 0, 0, NULL, NULL),
(46069, 12, 197, 'Булакбаши', 'bulakbashi', 0, 0, NULL, NULL),
(46068, 12, 197, 'Буз', 'buz', 0, 0, NULL, NULL),
(46067, 12, 197, 'Балыкчи', 'balykchi', 0, 0, NULL, NULL),
(46066, 12, 197, 'Андижанский район', 'andizhanskiy-rayon', 0, 0, NULL, NULL),
(46065, 12, 197, 'Алтынкул', 'altynkul', 0, 0, NULL, NULL),
(46064, 12, 197, 'Ханабад', 'hanabad', 0, 0, NULL, NULL),
(46063, 12, 197, 'Андижан г.', 'andizhan-g', 0, 0, NULL, NULL),
(46062, 12, 199, 'Бозатау', 'bozatau', 0, 0, NULL, NULL),
(46061, 12, 199, 'Элликкальа', 'ellikkala', 0, 0, NULL, NULL),
(46060, 12, 199, 'Шуманай', 'shumanay', 0, 0, NULL, NULL),
(46059, 12, 199, 'Чимбай', 'chimbay', 0, 0, NULL, NULL),
(46058, 12, 199, 'Ходжейли', 'hodzheyli', 0, 0, NULL, NULL),
(46057, 12, 199, 'Турткуль', 'turtkul', 0, 0, NULL, NULL),
(46056, 12, 199, 'Тахтакупир', 'tahtakupir', 0, 0, NULL, NULL),
(46055, 12, 199, 'Тахиаташ', 'tahiatash', 0, 0, NULL, NULL),
(46054, 12, 199, 'Нукусский район', 'nukusskiy-rayon', 0, 0, NULL, NULL),
(46053, 12, 199, 'Муйнак', 'muynak', 0, 0, NULL, NULL),
(46052, 12, 199, 'Конликул', 'konlikul', 0, 0, NULL, NULL),
(46051, 12, 199, 'Кунград', 'kungrad', 0, 0, NULL, NULL),
(46050, 12, 199, 'Кегейли', 'kegeyli', 0, 0, NULL, NULL),
(46049, 12, 199, 'Караозак', 'karaozak', 0, 0, NULL, NULL),
(46048, 12, 199, 'Беруний', 'beruniy', 0, 0, NULL, NULL),
(46047, 12, 199, 'Амударья', 'amudarya', 0, 0, NULL, NULL),
(46046, 12, 199, 'Нукус', 'nukus', 0, 0, NULL, NULL),
(46045, 12, 196, 'Ташкентский район', 'tashkentskiy-rayon', 0, 0, NULL, NULL),
(46044, 12, 196, 'Янгиюльский район', 'yangiyulskiy-rayon', 1, 0, NULL, NULL),
(46043, 12, 196, 'Чиназ', 'chinaz', 1, 0, NULL, NULL),
(46042, 12, 196, 'Уртачирчикский район', 'urtachirchikskiy-rayon', 1, 0, NULL, NULL),
(46041, 12, 196, 'Пскент', 'pskent', 0, 0, NULL, NULL),
(46040, 12, 196, 'Паркент', 'parkent', 0, 0, NULL, NULL),
(46039, 12, 196, 'Кибрай', 'kibray', 0, 0, NULL, NULL),
(46038, 12, 196, 'Юкоричирчикский район', 'yukorichirchikskiy-rayon', 0, 0, NULL, NULL),
(46037, 12, 196, 'Зангиота', 'zangiota', 0, 0, NULL, NULL),
(46036, 12, 196, 'Куйичирчикский район', 'kuyichirchikskiy-rayon', 0, 0, NULL, NULL),
(46035, 12, 196, 'Бука', 'buka', 0, 0, NULL, NULL),
(46034, 12, 196, 'Бостанлыкский район', 'bostanlykskiy-rayon', 0, 0, NULL, NULL),
(46033, 12, 196, 'Бекабадский район', 'bekabadskiy-rayon', 0, 0, NULL, NULL),
(46032, 12, 196, 'Ахангаранский район', 'ahangaranskiy-rayon', 1, 0, NULL, NULL),
(46031, 12, 196, 'Оккурган', 'okkurgan', 1, 0, NULL, NULL),
(46030, 12, 196, 'Янгиюль', 'yangiyul', 0, 0, NULL, NULL),
(46024, 12, 196, 'Нурафшон', 'nurafshon', 0, 0, NULL, NULL),
(46025, 12, 196, 'Алмалык', 'almalyk', 0, 0, NULL, NULL),
(46026, 12, 196, 'Ангрен', 'angren', 0, 0, NULL, NULL),
(46027, 12, 196, 'Бекабад', 'bekabad', 1, 0, NULL, NULL),
(46028, 12, 196, 'Чирчик', 'chirchik', 3, 0, NULL, NULL),
(46029, 12, 196, 'Ахангаран', 'ahangaran', 0, 0, NULL, NULL),
(46136, 12, 204, 'Чартак', 'chartak', 0, 0, NULL, NULL),
(46135, 12, 204, 'Туракурган', 'turakurgan', 0, 0, NULL, NULL),
(46134, 12, 204, 'Пап', 'pap', 0, 0, NULL, NULL),
(46133, 12, 204, 'Нарын', 'naryn', 0, 0, NULL, NULL),
(46132, 12, 204, 'Наманганский район', 'namanganskiy-rayon', 0, 0, NULL, NULL),
(46131, 12, 204, 'Касансай', 'kasansay', 0, 0, NULL, NULL),
(46130, 12, 204, 'Мингбулак', 'mingbulak', 0, 0, NULL, NULL),
(46129, 12, 204, 'Наманган', 'namangan', 0, 0, NULL, NULL),
(46128, 12, 203, 'Хатырчи', 'hatyrchi', 0, 0, NULL, NULL),
(46127, 12, 203, 'Учкудук', 'uchkuduk', 0, 0, NULL, NULL),
(46126, 12, 203, 'Тамди', 'tamdi', 0, 0, NULL, NULL),
(46125, 12, 203, 'Нурата', 'nurata', 0, 0, NULL, NULL),
(46124, 12, 203, 'Кармана', 'karmana', 0, 0, NULL, NULL),
(46123, 12, 203, 'Навбахар', 'navbahar', 0, 0, NULL, NULL),
(46122, 12, 203, 'Кизилтепа', 'kiziltepa', 0, 0, NULL, NULL),
(46121, 12, 203, 'Канимех', 'kanimeh', 0, 0, NULL, NULL),
(46120, 12, 203, 'Зарафшан', 'zarafshan', 0, 0, NULL, NULL),
(46119, 12, 203, 'Навои', 'navoi', 0, 0, NULL, NULL),
(46118, 12, 202, 'Яккабаг', 'yakkabag', 0, 0, NULL, NULL),
(46117, 12, 202, 'Шахрисабзский район', 'shahrisabzskiy-rayon', 0, 0, NULL, NULL),
(46116, 12, 202, 'Чиракчи', 'chirakchi', 0, 0, NULL, NULL),
(46115, 12, 202, 'Касби', 'kasbi', 0, 0, NULL, NULL),
(46114, 12, 202, 'Нишон', 'nishon', 0, 0, NULL, NULL),
(46113, 12, 202, 'Мубарак', 'mubarak', 0, 0, NULL, NULL),
(46112, 12, 202, 'Миришкор', 'mirishkor', 0, 0, NULL, NULL),
(46111, 12, 202, 'Китаб', 'kitab', 0, 0, NULL, NULL),
(46110, 12, 202, 'Касан', 'kasan', 0, 0, NULL, NULL),
(46109, 12, 202, 'Камаши', 'kamashi', 0, 0, NULL, NULL),
(46108, 12, 202, 'Дехканабад', 'dehkanabad', 0, 0, NULL, NULL),
(46107, 12, 202, 'Гузар', 'guzar', 0, 0, NULL, NULL),
(46106, 12, 202, 'Шахрисабз', 'shahrisabz', 0, 0, NULL, NULL),
(46105, 12, 202, 'Карши', 'karshi', 0, 0, NULL, NULL),
(46104, 12, 201, 'Янгиабад', 'yangiabad', 0, 0, NULL, NULL),
(46103, 12, 201, 'Фариш', 'farish', 0, 0, NULL, NULL),
(46102, 12, 201, 'Пахтакор', 'pahtakor', 0, 0, NULL, NULL),
(46101, 12, 201, 'Зафарабад', 'zafarabad', 0, 0, NULL, NULL),
(46099, 12, 201, 'Зарбдар', 'zarbdar', 0, 0, NULL, NULL),
(46100, 12, 201, 'Мирзачул', 'mirzachul', 0, 0, NULL, NULL),
(46213, 12, 196, 'Ташкент', 'tashkent', 23, 0, '', ''),
(46212, 12, 209, 'Тупроккала', 'tuprokkala', 0, 0, NULL, NULL),
(46211, 12, 209, 'Янгибазар', 'yangibazar', 0, 0, NULL, NULL),
(46210, 12, 209, 'Янгиарик', 'yangiarik', 0, 0, NULL, NULL),
(46209, 12, 209, 'Шават', 'shavat', 0, 0, NULL, NULL),
(46208, 12, 209, 'Хивинский район', 'hivinskiy-rayon', 0, 0, NULL, NULL),
(46207, 12, 209, 'Ханка', 'hanka', 0, 0, NULL, NULL),
(46206, 12, 209, 'Хазарасп', 'hazarasp', 0, 0, NULL, NULL),
(46205, 12, 209, 'Ургенчский район', 'urgenchskiy-rayon', 0, 0, '', ''),
(46204, 12, 209, 'Кошкопир', 'koshkopir', 0, 0, NULL, NULL),
(46203, 12, 209, 'Гурлан', 'gurlan', 0, 0, NULL, NULL),
(46202, 12, 209, 'Багдад', 'bagdad', 0, 0, NULL, NULL),
(46201, 12, 209, 'Хива', 'hiva', 0, 0, NULL, NULL),
(46200, 12, 209, 'Ургенч', 'urgench', 0, 0, NULL, NULL),
(46199, 12, 208, 'Язяван', 'yazyavan', 0, 0, NULL, NULL),
(46198, 12, 208, 'Фуркат', 'furkat', 0, 0, NULL, NULL),
(46197, 12, 208, 'Дангара', 'dangara', 0, 0, NULL, NULL),
(46196, 12, 208, 'Ферганский район', 'ferganskiy-rayon', 0, 0, NULL, NULL),
(46195, 12, 208, 'Узбекистан', 'uzbekistan', 14, 0, NULL, NULL),
(46194, 12, 208, 'Тошлок', 'toshlok', 0, 0, NULL, NULL),
(46193, 12, 208, 'Сох', 'soh', 0, 0, NULL, NULL),
(46192, 12, 208, 'Риштан', 'rishtan', 0, 0, NULL, NULL),
(46191, 12, 208, 'Учкуприк', 'uchkuprik', 0, 0, NULL, NULL),
(46190, 12, 208, 'Кува', 'kuva', 0, 0, NULL, NULL),
(46189, 12, 208, 'Бешарик', 'besharik', 0, 0, NULL, NULL),
(46188, 12, 208, 'Бувайда', 'buvayda', 0, 0, NULL, NULL),
(46187, 12, 208, 'Багдад', 'bagdad', 0, 0, NULL, NULL),
(46186, 12, 208, 'Коштепа', 'koshtepa', 0, 0, NULL, NULL),
(46185, 12, 208, 'Алтыарик', 'altyarik', 0, 0, NULL, NULL),
(46184, 12, 208, 'Маргилан', 'margilan', 0, 0, NULL, NULL),
(46183, 12, 208, 'Кувасай', 'kuvasay', 0, 0, NULL, NULL),
(46182, 12, 208, 'Коканд', 'kokand', 0, 0, NULL, NULL),
(46181, 12, 208, 'Фергана', 'fergana', 0, 0, NULL, NULL),
(46180, 12, 207, 'Хавос', 'havos', 0, 0, NULL, NULL),
(46179, 12, 207, 'Сырдарья', 'syrdarya', 0, 0, NULL, NULL),
(46178, 12, 207, 'Мирзаабад', 'mirzaabad', 0, 0, NULL, NULL),
(46177, 12, 207, 'Сардоба', 'sardoba', 0, 0, NULL, NULL),
(46176, 12, 207, 'Гулистанский район', 'gulistanskiy-rayon', 0, 0, NULL, NULL),
(46175, 12, 207, 'Сайхунабад', 'sayhunabad', 0, 0, NULL, NULL),
(46174, 12, 207, 'Баяут', 'bayaut', 0, 0, NULL, NULL),
(46173, 12, 207, 'Акалтин', 'akaltin', 0, 0, NULL, NULL),
(46172, 12, 207, 'Янгиер', 'yangier', 0, 0, NULL, NULL),
(46171, 12, 207, 'Ширин', 'shirin', 0, 0, NULL, NULL),
(46170, 12, 207, 'Гулистан', 'gulistan', 0, 0, NULL, NULL),
(46169, 12, 206, 'Бандихан', 'bandihan', 0, 0, NULL, NULL),
(46168, 12, 206, 'Шурчи', 'shurchi', 0, 0, NULL, NULL),
(46167, 12, 206, 'Шерабад', 'sherabad', 0, 0, NULL, NULL),
(46166, 12, 206, 'Узун', 'uzun', 0, 0, NULL, NULL),
(46165, 12, 206, 'Термезский район', 'termezskiy-rayon', 0, 0, NULL, NULL),
(46164, 12, 206, 'Сариасия', 'sariasiya', 0, 0, NULL, NULL),
(46163, 12, 206, 'Кизирик', 'kizirik', 0, 0, NULL, NULL),
(46162, 12, 206, 'Кумкурган', 'kumkurgan', 0, 0, NULL, NULL),
(46161, 12, 206, 'Джаркурган', 'dzharkurgan', 1, 0, NULL, NULL),
(46160, 12, 206, 'Денау', 'denau', 0, 0, NULL, NULL),
(46159, 12, 206, 'Музрабад', 'muzrabad', 0, 0, NULL, NULL),
(46158, 12, 206, 'Байсун', 'baysun', 0, 0, NULL, NULL),
(46157, 12, 206, 'Ангор', 'angor', 0, 0, NULL, NULL),
(46156, 12, 206, 'Алтынсай', 'altynsay', 0, 0, NULL, NULL),
(46155, 12, 206, 'Термез', 'termez', 0, 0, NULL, NULL),
(46154, 12, 205, 'Тайлак', 'taylak', 0, 0, NULL, NULL),
(46153, 12, 205, 'Ургут', 'urgut', 0, 0, NULL, NULL),
(46152, 12, 205, 'Нурабад', 'nurabad', 0, 0, NULL, NULL),
(46151, 12, 205, 'Самаркандский район', 'samarkandskiy-rayon', 0, 0, NULL, NULL),
(46150, 12, 205, 'Пахтачи', 'pahtachi', 0, 0, NULL, NULL),
(46149, 12, 205, 'Пастдаргом', 'pastdargom', 0, 0, NULL, NULL),
(46148, 12, 205, 'Пайарык', 'payaryk', 0, 0, NULL, NULL),
(46147, 12, 205, 'Нарпай', 'narpay', 0, 0, NULL, NULL),
(46146, 12, 205, 'Кушрабад', 'kushrabad', 0, 0, NULL, NULL),
(46145, 12, 205, 'Иштихан', 'ishtihan', 0, 0, NULL, NULL),
(46144, 12, 205, 'Каттакурганский район', 'kattakurganskiy-rayon', 0, 0, NULL, NULL),
(46143, 12, 205, 'Джамбай', 'dzhambay', 0, 0, NULL, NULL),
(46142, 12, 205, 'Булунгур', 'bulungur', 0, 0, NULL, NULL),
(46141, 12, 205, 'Акдарья', 'akdarya', 0, 0, NULL, NULL),
(46140, 12, 205, 'Каттакурган', 'kattakurgan', 0, 0, NULL, NULL),
(46139, 12, 205, 'Самарканд', 'samarkand', 0, 0, NULL, NULL),
(46138, 12, 204, 'Янгикурган', 'yangikurgan', 0, 0, NULL, NULL),
(46137, 12, 204, 'Чуст', 'chust', 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `uni_city_area`
--

CREATE TABLE `uni_city_area` (
  `city_area_id` int(11) NOT NULL,
  `city_area_id_city` int(11) NOT NULL DEFAULT '0',
  `city_area_name` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `uni_city_area`
--

INSERT INTO `uni_city_area` (`city_area_id`, `city_area_id_city`, `city_area_name`) VALUES
(17, 1134, 'Академический'),
(16, 376, 'Центральный'),
(15, 376, 'Хостинский'),
(14, 376, 'Лазаревский'),
(13, 376, 'Адлерский'),
(18, 1134, 'Алексеевский'),
(19, 1134, 'Алтуфьевский'),
(20, 1134, 'Арбат'),
(21, 1134, 'Аэропорт'),
(22, 1134, 'Бабушкинский'),
(23, 1134, 'Басманный'),
(24, 1134, 'Беговой'),
(25, 1134, 'Бескудниковский'),
(26, 1134, 'Бибирево'),
(27, 1134, 'Бирюлёво Восточное'),
(28, 1134, 'Бирюлёво Западное'),
(29, 1134, 'Богородское'),
(30, 1134, 'Братеево'),
(31, 1134, 'Бутырский'),
(32, 1134, 'Вешняки'),
(33, 1134, 'Войковский'),
(34, 1134, 'Выхино-Жулебино'),
(35, 1134, 'Гагаринский'),
(36, 1134, 'Головинский'),
(37, 1134, 'Гольяново'),
(38, 1134, 'Даниловский'),
(39, 1134, 'Дмитровский'),
(40, 1134, 'Донской'),
(41, 1134, 'Дорогомилово'),
(42, 1134, 'Замоскворечье'),
(43, 1134, 'Западное Дегунино'),
(44, 1134, 'Зюзино'),
(45, 1134, 'Зябликово'),
(46, 1134, 'Ивановское'),
(47, 1134, 'Измайлово'),
(48, 1134, 'Капотня'),
(49, 1134, 'Коньково'),
(50, 1134, 'Коптево'),
(51, 1134, 'Косино-Ухтомский'),
(52, 1134, 'Котловка'),
(53, 1134, 'Красносельский'),
(54, 1134, 'Крылатское'),
(55, 1134, 'Кузьминки'),
(56, 1134, 'Кунцево'),
(57, 1134, 'Куркино'),
(58, 1134, 'Левобережный'),
(59, 1134, 'Лефортово'),
(60, 1134, 'Лианозово'),
(61, 1134, 'Ломоносовский'),
(62, 1134, 'Лосиноостровский'),
(63, 1134, 'Люблино'),
(64, 1134, 'Марфино'),
(65, 1134, 'Марьина Роща'),
(66, 1134, 'Марьино'),
(67, 1134, 'Метрогородок'),
(68, 1134, 'Мещанский'),
(69, 1134, 'Митино'),
(70, 1134, 'Можайский'),
(71, 1134, 'Молжаниновский'),
(72, 1134, 'Москворечье-Сабурово'),
(73, 1134, 'Нагатино-Садовники'),
(74, 1134, 'Нагатинский Затон'),
(75, 1134, 'Нагорный'),
(76, 1134, 'Некрасовка'),
(77, 1134, 'Нижегородский'),
(78, 1134, 'Ново-Переделкино'),
(79, 1134, 'Новогиреево'),
(80, 1134, 'Новокосино'),
(81, 1134, 'Обручевский'),
(82, 1134, 'Орехово-Борисово Северное'),
(83, 1134, 'Орехово-Борисово Южное'),
(84, 1134, 'Останкинский'),
(85, 1134, 'Отрадное'),
(86, 1134, 'Очаково-Матвеевское'),
(87, 1134, 'Перово'),
(88, 1134, 'Печатники'),
(89, 1134, 'Покровское-Стрешнево'),
(90, 1134, 'Преображенское'),
(91, 1134, 'Пресненский'),
(92, 1134, 'Проспект Вернадского'),
(93, 1134, 'Раменки'),
(94, 1134, 'Ростокино'),
(95, 1134, 'Рязанский'),
(96, 1134, 'Савёловский'),
(97, 1134, 'Свиблово'),
(98, 1134, 'Северное Бутово'),
(99, 1134, 'Северное Измайлово'),
(100, 1134, 'Северное Медведково'),
(101, 1134, 'Северное Тушино'),
(102, 1134, 'Северный'),
(103, 1134, 'Сокол'),
(104, 1134, 'Соколиная Гора'),
(105, 1134, 'Сокольники'),
(106, 1134, 'Солнцево'),
(107, 1134, 'Строгино'),
(108, 1134, 'Тёплый Стан'),
(109, 1134, 'Таганский'),
(110, 1134, 'Тверской'),
(111, 1134, 'Текстильщики'),
(112, 1134, 'Тимирязевский'),
(113, 1134, 'Тропарёво-Никулино'),
(114, 1134, 'Филёвский Парк'),
(115, 1134, 'Фили-Давыдково'),
(116, 1134, 'Хамовники'),
(117, 1134, 'Ховрино'),
(118, 1134, 'Хорошёво-Мнёвники'),
(119, 1134, 'Хорошёвский'),
(120, 1134, 'Царицыно'),
(121, 1134, 'Черёмушки'),
(122, 1134, 'Чертаново Северное'),
(123, 1134, 'Чертаново Центральное'),
(124, 1134, 'Чертаново Южное'),
(125, 1134, 'Щукино'),
(126, 1134, 'Южное Бутово'),
(127, 1134, 'Южное Медведково'),
(128, 1134, 'Южное Тушино'),
(129, 1134, 'Южнопортовый'),
(130, 1134, 'Якиманка'),
(131, 1134, 'Ярославский'),
(132, 1134, 'Ясенево'),
(133, 662, 'Кировский'),
(134, 662, 'Ленинский'),
(135, 662, 'Октябрьский'),
(136, 662, 'Советский'),
(137, 662, 'Центральный'),
(138, 1135, 'Адмиралтейский'),
(139, 1135, 'Василеостровский'),
(140, 1135, 'Выборгский'),
(141, 1135, 'Калининский'),
(142, 1135, 'Кировский'),
(143, 1135, 'Колпинский'),
(144, 1135, 'Красногвардейский'),
(145, 1135, 'Красносельский'),
(146, 1135, 'Московский'),
(147, 1135, 'Невский'),
(148, 1135, 'Петроградский'),
(149, 1135, 'Приморский'),
(150, 1135, 'Фрунзенский'),
(151, 1135, 'Центральный'),
(152, 389, 'Западный'),
(153, 389, 'Карасунский'),
(154, 389, 'Прикубанский'),
(155, 389, 'Центральный'),
(156, 732, 'Ленинский'),
(157, 732, 'Первомайский'),
(158, 732, 'Первореченский'),
(159, 732, 'Советский'),
(160, 732, 'Фрунзенский'),
(161, 229, 'Ленинский'),
(162, 229, 'Октябрьский'),
(163, 229, 'Правобережный'),
(164, 229, 'Свердловский'),
(165, 167, 'Железнодорожный'),
(166, 167, 'Коминтерновский'),
(167, 167, 'Левобережный'),
(168, 167, 'Ленинский'),
(169, 167, 'Советский'),
(170, 167, 'Центральный'),
(171, 407, 'Железнодорожный'),
(172, 407, 'Кировский'),
(173, 407, 'Ленинский'),
(174, 407, 'Октябрьский'),
(175, 407, 'Свердловский'),
(176, 407, 'Советский'),
(177, 407, 'Центральный'),
(178, 1040, 'Железнодорожный'),
(179, 1040, 'Индустриальный'),
(180, 1040, 'Кировский'),
(181, 1040, 'Краснофлотский'),
(182, 1040, 'Центральный'),
(183, 688, 'Железнодорожный'),
(184, 688, 'Ленинский'),
(185, 688, 'Октябрьский'),
(186, 688, 'Первомайский'),
(187, 752, 'Ворошиловский'),
(188, 752, 'Железнодорожный'),
(189, 752, 'Кировский'),
(190, 752, 'Ленинский'),
(191, 752, 'Октябрьский'),
(192, 752, 'Первомайский'),
(193, 752, 'Пролетарский'),
(194, 752, 'Советский'),
(195, 881, 'Верх-Исетский'),
(196, 881, 'Железнодорожный'),
(197, 881, 'Кировский'),
(198, 881, 'Ленинский'),
(199, 881, 'Октябрьский'),
(200, 881, 'Орджоникидзевский'),
(201, 881, 'Чкаловский'),
(202, 956, 'Авиастроительный'),
(203, 956, 'Вахитовский'),
(204, 956, 'Кировский'),
(205, 956, 'Московский'),
(206, 956, 'Ново-Савиновский'),
(207, 956, 'Приволжский'),
(208, 956, 'Советский'),
(209, 47, 'Дёмский'),
(210, 47, 'Калининский'),
(211, 47, 'Кировский'),
(212, 47, 'Ленинский'),
(213, 47, 'Октябрьский'),
(214, 47, 'Орджоникидзевский'),
(215, 47, 'Советский'),
(216, 1068, 'Калининский'),
(217, 1068, 'Курчатовский'),
(218, 1068, 'Ленинский'),
(219, 1068, 'Металлургический'),
(220, 1068, 'Советский'),
(221, 1068, 'Тракторозаводский'),
(222, 1068, 'Центральный'),
(223, 650, 'Дзержинский'),
(224, 650, 'Железнодорожный'),
(225, 650, 'Заельцовский'),
(226, 650, 'Калининский'),
(227, 650, 'Кировский'),
(228, 650, 'Ленинский'),
(229, 650, 'Октябрьский'),
(230, 650, 'Первомайский'),
(231, 650, 'Советский'),
(232, 650, 'Центральный'),
(233, 784, 'Автозаводский'),
(234, 784, 'Комсомольский'),
(235, 784, 'Центральный'),
(236, 1123, 'Дзержинский'),
(237, 1123, 'Заволжский'),
(238, 1123, 'Кировский'),
(239, 1123, 'Красноперекопский'),
(240, 1123, 'Ленинский'),
(241, 1123, 'Фрунзенский'),
(242, 140, 'Ворошиловский'),
(243, 140, 'Дзержинский'),
(244, 140, 'Кировский'),
(245, 140, 'Красноармейский'),
(246, 140, 'Краснооктябрьский'),
(247, 140, 'Советский'),
(248, 140, 'Тракторозаводский'),
(249, 140, 'Центральный'),
(250, 703, 'Дзержинский'),
(251, 703, 'Индустриальный'),
(252, 703, 'Кировский'),
(253, 703, 'Ленинский'),
(254, 703, 'Мотовилихинский'),
(255, 703, 'Орджоникидзевский'),
(256, 703, 'Свердловский'),
(257, 786, 'Железнодорожный'),
(258, 786, 'Кировский'),
(259, 786, 'Красноглинский'),
(260, 786, 'Куйбышевский'),
(261, 786, 'Ленинский'),
(262, 786, 'Октябрьский'),
(263, 786, 'Прибрежный'),
(264, 786, 'Промышленный'),
(265, 786, 'Самарский'),
(266, 786, 'Советский'),
(267, 992, 'Кировский'),
(268, 992, 'Ленинский'),
(269, 992, 'Октябрьский'),
(270, 992, 'Советский'),
(271, 46213, 'Юнусабадский'),
(272, 46213, 'Алмазарский район'),
(273, 46213, 'Бектемирский'),
(274, 46213, 'Мирабадский район'),
(275, 46213, 'Мирзо -Улугбекский'),
(276, 46213, 'Сергелийский'),
(277, 46213, 'Учтепинский'),
(278, 46213, 'Чиланзарский'),
(279, 46213, 'Шайхантахурский'),
(280, 46213, 'Яккасарайский'),
(281, 46213, 'Яшнабадский');

-- --------------------------------------------------------

--
-- Структура таблицы `uni_city_area_variants`
--

CREATE TABLE `uni_city_area_variants` (
  `city_area_variants_id` int(11) NOT NULL,
  `city_area_variants_id_ad` int(11) NOT NULL DEFAULT '0',
  `city_area_variants_id_area` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `uni_city_area_variants`
--

INSERT INTO `uni_city_area_variants` (`city_area_variants_id`, `city_area_variants_id_ad`, `city_area_variants_id_area`) VALUES
(1, 1, 275),
(8, 2, 271),
(11, 3, 274),
(13, 4, 273),
(16, 5, 275),
(17, 8, 276),
(18, 7, 277);

-- --------------------------------------------------------

--
-- Структура таблицы `uni_city_distance`
--

CREATE TABLE `uni_city_distance` (
  `city_distance_id` int(11) NOT NULL,
  `city_distance_id_city_from` int(11) NOT NULL DEFAULT '0',
  `city_distance_km` float NOT NULL DEFAULT '0',
  `city_distance_id_city_to` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `uni_city_distance`
--

INSERT INTO `uni_city_distance` (`city_distance_id`, `city_distance_id_city_from`, `city_distance_km`, `city_distance_id_city_to`) VALUES
(1, 77, 631.8, 135),
(2, 77, 1283.6, 154),
(3, 77, 771.9, 207),
(4, 77, 1171.9, 261),
(5, 77, 1222.1, 285),
(6, 77, 814.7, 376),
(7, 77, 3686.9, 407),
(8, 77, 589.9, 519),
(9, 77, 603.9, 525),
(10, 77, 521.3, 564),
(11, 77, 637.3, 567),
(12, 77, 812, 627),
(13, 77, 2495.3, 662),
(14, 77, 1534.8, 670),
(15, 77, 1652, 698),
(16, 77, 496.8, 776),
(17, 77, 1717.7, 881),
(18, 77, 1727.7, 892),
(19, 77, 1197.2, 951),
(20, 77, 1015.4, 956),
(21, 77, 1179, 959),
(22, 77, 697.1, 972),
(23, 77, 3201.8, 992),
(24, 77, 2018.8, 1024),
(25, 77, 1297.4, 1030),
(26, 77, 3670.3, 1050),
(27, 77, 2303.6, 1055),
(28, 77, 1567.9, 1084),
(29, 77, 815.5, 1123),
(30, 77, 583.8, 1134),
(31, 77, 1101.1, 1135),
(32, 135, 631.8, 77),
(33, 135, 1191.3, 154),
(34, 135, 827.6, 207),
(35, 135, 1757.3, 261),
(36, 135, 984.2, 285),
(37, 135, 839.7, 376),
(38, 135, 3177.6, 407),
(39, 135, 787.2, 519),
(40, 135, 817.7, 525),
(41, 135, 715.6, 564),
(42, 135, 903.3, 567),
(43, 135, 741.5, 627),
(44, 135, 1955.6, 662),
(45, 135, 929.7, 670),
(46, 135, 1342.6, 698),
(47, 135, 635.7, 776),
(48, 135, 1251, 881),
(49, 135, 1256.3, 892),
(50, 135, 784.1, 951),
(51, 135, 681.8, 956),
(52, 135, 772.5, 959),
(53, 135, 981.5, 972),
(54, 135, 2690.7, 992),
(55, 135, 1539.1, 1024),
(56, 135, 914.3, 1030),
(57, 135, 3131.4, 1050),
(58, 135, 1902.3, 1055),
(59, 135, 1009.5, 1084),
(60, 135, 922.4, 1123),
(61, 135, 823.4, 1134),
(62, 135, 1443.3, 1135),
(63, 154, 1283.6, 77),
(64, 154, 1191.3, 135),
(65, 154, 516.7, 207),
(66, 154, 1660.9, 261),
(67, 154, 310, 285),
(68, 154, 1959.9, 376),
(69, 154, 2706.1, 407),
(70, 154, 720.2, 519),
(71, 154, 719.7, 525),
(72, 154, 772.3, 564),
(73, 154, 742.9, 567),
(74, 154, 487.8, 627),
(75, 154, 1710.9, 662),
(76, 154, 1300.4, 670),
(77, 154, 557.2, 698),
(78, 154, 786.8, 776),
(79, 154, 933.1, 881),
(80, 154, 950.7, 892),
(81, 154, 662.2, 951),
(82, 154, 578.9, 956),
(83, 154, 651.5, 959),
(84, 154, 740.8, 972),
(85, 154, 2256.3, 992),
(86, 154, 1164, 1024),
(87, 154, 594.1, 1030),
(88, 154, 2767.6, 1050),
(89, 154, 1224.2, 1055),
(90, 154, 1124.9, 1084),
(91, 154, 505.5, 1123),
(92, 154, 749.3, 1134),
(93, 154, 877.7, 1135),
(94, 207, 771.9, 77),
(95, 207, 827.6, 135),
(96, 207, 516.7, 154),
(97, 207, 1298.2, 261),
(98, 207, 544.3, 285),
(99, 207, 1496.8, 376),
(100, 207, 3111.1, 407),
(101, 207, 208.4, 519),
(102, 207, 215.3, 525),
(103, 207, 255.6, 564),
(104, 207, 270.4, 567),
(105, 207, 159.1, 627),
(106, 207, 2010.2, 662),
(107, 207, 1307.2, 670),
(108, 207, 969.1, 698),
(109, 207, 278.8, 776),
(110, 207, 1190, 881),
(111, 207, 1204.9, 892),
(112, 207, 716.9, 951),
(113, 207, 521.2, 956),
(114, 207, 697.4, 959),
(115, 207, 308.8, 972),
(116, 207, 2641, 992),
(117, 207, 1475.4, 1024),
(118, 207, 747.8, 1030),
(119, 207, 3140.1, 1050),
(120, 207, 1652.9, 1055),
(121, 207, 1216.1, 1084),
(122, 207, 100.9, 1123),
(123, 207, 246.8, 1134),
(124, 207, 688.3, 1135),
(125, 261, 1171.9, 77),
(126, 261, 1757.3, 135),
(127, 261, 1660.9, 154),
(128, 261, 1298.2, 207),
(129, 261, 1821.3, 285),
(130, 261, 1854.8, 376),
(131, 261, 4365.8, 407),
(132, 261, 1141.3, 519),
(133, 261, 1116.6, 525),
(134, 261, 1166.1, 564),
(135, 261, 1035.6, 567),
(136, 261, 1450.5, 627),
(137, 261, 3306, 662),
(138, 261, 2542.6, 670),
(139, 261, 2208.5, 698),
(140, 261, 1234.1, 776),
(141, 261, 2486.6, 881),
(142, 261, 2501.8, 892),
(143, 261, 2008.6, 951),
(144, 261, 1806.8, 956),
(145, 261, 1988.7, 959),
(146, 261, 989.5, 972),
(147, 261, 3909.6, 992),
(148, 261, 2766.1, 1024),
(149, 261, 2046, 1030),
(150, 261, 4416.8, 1050),
(151, 261, 2885, 1055),
(152, 261, 2493.4, 1084),
(153, 261, 1234.4, 1123),
(154, 261, 1089.5, 1134),
(155, 261, 828.1, 1135),
(156, 285, 1222.1, 77),
(157, 285, 984.2, 135),
(158, 285, 310, 154),
(159, 285, 544.3, 207),
(160, 285, 1821.3, 261),
(161, 285, 1800.2, 376),
(162, 285, 2567.1, 407),
(163, 285, 744.5, 519),
(164, 285, 756.9, 525),
(165, 285, 767.9, 564),
(166, 285, 813.4, 567),
(167, 285, 427.7, 627),
(168, 285, 1489.7, 662),
(169, 285, 990.5, 670),
(170, 285, 434.7, 698),
(171, 285, 749.8, 776),
(172, 285, 678.3, 881),
(173, 285, 694.9, 892),
(174, 285, 353.7, 951),
(175, 285, 311.7, 956),
(176, 285, 344.3, 959),
(177, 285, 840.8, 972),
(178, 285, 2098.6, 992),
(179, 285, 945.7, 1024),
(180, 285, 288, 1030),
(181, 285, 2600.4, 1050),
(182, 285, 1112, 1055),
(183, 285, 820.7, 1084),
(184, 285, 589.4, 1123),
(185, 285, 788.4, 1134),
(186, 285, 1101.6, 1135),
(187, 376, 814.7, 77),
(188, 376, 839.7, 135),
(189, 376, 1959.9, 154),
(190, 376, 1496.8, 207),
(191, 376, 1854.8, 261),
(192, 376, 1800.2, 285),
(193, 376, 3946.1, 407),
(194, 376, 1357.9, 519),
(195, 376, 1379.2, 525),
(196, 376, 1279.9, 564),
(197, 376, 1431.5, 567),
(198, 376, 1474.5, 627),
(199, 376, 2714.9, 662),
(200, 376, 1640.3, 670),
(201, 376, 2179.3, 698),
(202, 376, 1226.2, 776),
(203, 376, 2074.9, 881),
(204, 376, 2078.4, 892),
(205, 376, 1623.8, 951),
(206, 376, 1511.6, 956),
(207, 376, 1612.1, 959),
(208, 376, 1498.8, 972),
(209, 376, 3463.5, 992),
(210, 376, 2351.7, 1024),
(211, 376, 1753.8, 1030),
(212, 376, 3870.3, 1050),
(213, 376, 2735.8, 1055),
(214, 376, 1785, 1084),
(215, 376, 1566.5, 1123),
(216, 376, 1366.2, 1134),
(217, 376, 1915.7, 1135),
(218, 407, 3686.9, 77),
(219, 407, 3177.6, 135),
(220, 407, 2706.1, 154),
(221, 407, 3111.1, 207),
(222, 407, 4365.8, 261),
(223, 407, 2567.1, 285),
(224, 407, 3946.1, 376),
(225, 407, 3306.9, 519),
(226, 407, 3321.7, 525),
(227, 407, 3319.6, 564),
(228, 407, 3380.4, 567),
(229, 407, 2982.3, 627),
(230, 407, 1231.2, 662),
(231, 407, 2307.2, 670),
(232, 407, 2158.5, 698),
(233, 407, 3284.7, 776),
(234, 407, 1970, 881),
(235, 407, 1959.5, 892),
(236, 407, 2492, 951),
(237, 407, 2683.9, 956),
(238, 407, 2510.8, 959),
(239, 407, 3405, 972),
(240, 407, 487.1, 992),
(241, 407, 1668.7, 1024),
(242, 407, 2404, 1030),
(243, 407, 274.3, 1050),
(244, 407, 1482.5, 1055),
(245, 407, 2171.5, 1084),
(246, 407, 3152.7, 1123),
(247, 407, 3353, 1134),
(248, 407, 3573.1, 1135),
(249, 519, 589.9, 77),
(250, 519, 787.2, 135),
(251, 519, 720.2, 154),
(252, 519, 208.4, 207),
(253, 519, 1141.3, 261),
(254, 519, 744.5, 285),
(255, 519, 1357.9, 376),
(256, 519, 3306.9, 407),
(257, 519, 31.2, 525),
(258, 519, 79.3, 564),
(259, 519, 122.8, 567),
(260, 519, 325.5, 627),
(261, 519, 2186.6, 662),
(262, 519, 1413.5, 670),
(263, 519, 1174, 698),
(264, 519, 152.5, 776),
(265, 519, 1367.9, 881),
(266, 519, 1381.9, 892),
(267, 519, 870.9, 951),
(268, 519, 667.7, 956),
(269, 519, 850.8, 959),
(270, 519, 198.2, 972),
(271, 519, 2833.6, 992),
(272, 519, 1659.6, 1024),
(273, 519, 922, 1030),
(274, 519, 3328.7, 1050),
(275, 519, 1856, 1055),
(276, 519, 1352.2, 1084),
(277, 519, 227, 1123),
(278, 519, 51.9, 1134),
(279, 519, 656.9, 1135),
(280, 525, 603.9, 77),
(281, 525, 817.7, 135),
(282, 525, 719.7, 154),
(283, 525, 215.3, 207),
(284, 525, 1116.6, 261),
(285, 525, 756.9, 285),
(286, 525, 1379.2, 376),
(287, 525, 3321.7, 407),
(288, 525, 31.2, 519),
(289, 525, 106, 564),
(290, 525, 92, 567),
(291, 525, 343.3, 627),
(292, 525, 2206.5, 662),
(293, 525, 1441.7, 670),
(294, 525, 1184.1, 698),
(295, 525, 182.4, 776),
(296, 525, 1387.2, 881),
(297, 525, 1401.4, 892),
(298, 525, 893.6, 951),
(299, 525, 690.9, 956),
(300, 525, 873.6, 959),
(301, 525, 167, 972),
(302, 525, 2849.4, 992),
(303, 525, 1677.6, 1024),
(304, 525, 941.5, 1030),
(305, 525, 3345.8, 1050),
(306, 525, 1867.4, 1055),
(307, 525, 1377.7, 1084),
(308, 525, 219.4, 1123),
(309, 525, 31.6, 1134),
(310, 525, 626.1, 1135),
(311, 564, 521.3, 77),
(312, 564, 715.6, 135),
(313, 564, 772.3, 154),
(314, 564, 255.6, 207),
(315, 564, 1166.1, 261),
(316, 564, 767.9, 285),
(317, 564, 1279.9, 376),
(318, 564, 3319.6, 407),
(319, 564, 79.3, 519),
(320, 564, 106, 525),
(321, 564, 187.7, 567),
(322, 564, 340.8, 627),
(323, 564, 2184.4, 662),
(324, 564, 1378.6, 670),
(325, 564, 1201.4, 698),
(326, 564, 81, 776),
(327, 564, 1368.8, 881),
(328, 564, 1382.2, 892),
(329, 564, 861.4, 951),
(330, 564, 657.9, 956),
(331, 564, 841.4, 959),
(332, 564, 265.9, 972),
(333, 564, 2843.4, 992),
(334, 564, 1664.1, 1024),
(335, 564, 923.3, 1030),
(336, 564, 3334.6, 1050),
(337, 564, 1879.2, 1055),
(338, 564, 1330.2, 1084),
(339, 564, 295.2, 1123),
(340, 564, 107.8, 1134),
(341, 564, 727.9, 1135),
(342, 567, 637.3, 77),
(343, 567, 903.3, 135),
(344, 567, 742.9, 154),
(345, 567, 270.4, 207),
(346, 567, 1035.6, 261),
(347, 567, 813.4, 285),
(348, 567, 1431.5, 376),
(349, 567, 3380.4, 407),
(350, 567, 122.8, 519),
(351, 567, 92, 525),
(352, 567, 187.7, 564),
(353, 567, 415.8, 627),
(354, 567, 2278.3, 662),
(355, 567, 1530.9, 670),
(356, 567, 1233.1, 698),
(357, 567, 268.1, 776),
(358, 567, 1458.1, 881),
(359, 567, 1472.8, 892),
(360, 567, 973, 951),
(361, 567, 771.7, 956),
(362, 567, 953.1, 959),
(363, 567, 78.2, 972),
(364, 567, 2911.1, 992),
(365, 567, 1745.2, 1024),
(366, 567, 1014, 1030),
(367, 567, 3410.4, 1050),
(368, 567, 1918.2, 1055),
(369, 567, 1462.1, 1084),
(370, 567, 238.9, 1123),
(371, 567, 79.9, 1134),
(372, 567, 540.4, 1135),
(373, 627, 812, 77),
(374, 627, 741.5, 135),
(375, 627, 487.8, 154),
(376, 627, 159.1, 207),
(377, 627, 1450.5, 261),
(378, 627, 427.7, 285),
(379, 627, 1474.5, 376),
(380, 627, 2982.3, 407),
(381, 627, 325.5, 519),
(382, 627, 343.3, 525),
(383, 627, 340.8, 564),
(384, 627, 415.8, 567),
(385, 627, 1863.8, 662),
(386, 627, 1149.6, 670),
(387, 627, 862, 698),
(388, 627, 324.6, 776),
(389, 627, 1044.1, 881),
(390, 627, 1058.5, 892),
(391, 627, 559.9, 951),
(392, 627, 362.5, 956),
(393, 627, 540.2, 959),
(394, 627, 463.6, 972),
(395, 627, 2508.3, 992),
(396, 627, 1334.4, 1024),
(397, 627, 598.9, 1030),
(398, 627, 3003.2, 1050),
(399, 627, 1538.4, 1055),
(400, 627, 1057.3, 1084),
(401, 627, 250.8, 1123),
(402, 627, 373.8, 1134),
(403, 627, 841.8, 1135),
(404, 662, 2495.3, 77),
(405, 662, 1955.6, 135),
(406, 662, 1710.9, 154),
(407, 662, 2010.2, 207),
(408, 662, 3306, 261),
(409, 662, 1489.7, 285),
(410, 662, 2714.9, 376),
(411, 662, 1231.2, 407),
(412, 662, 2186.6, 519),
(413, 662, 2206.5, 525),
(414, 662, 2184.4, 564),
(415, 662, 2278.3, 567),
(416, 662, 1863.8, 627),
(417, 662, 1076.9, 670),
(418, 662, 1166.6, 698),
(419, 662, 2137.1, 776),
(420, 662, 820.2, 881),
(421, 662, 805.5, 892),
(422, 662, 1325.7, 951),
(423, 662, 1527.8, 956),
(424, 662, 1345.6, 959),
(425, 662, 2317.7, 972),
(426, 662, 750.4, 992),
(427, 662, 547.7, 1024),
(428, 662, 1265, 1030),
(429, 662, 1177.6, 1050),
(430, 662, 716.6, 1055),
(431, 662, 946.2, 1084),
(432, 662, 2071.8, 1123),
(433, 662, 2236.5, 1134),
(434, 662, 2580.5, 1135),
(435, 670, 1534.8, 77),
(436, 670, 929.7, 135),
(437, 670, 1300.4, 154),
(438, 670, 1307.2, 207),
(439, 670, 2542.6, 261),
(440, 670, 990.5, 285),
(441, 670, 1640.3, 376),
(442, 670, 2307.2, 407),
(443, 670, 1413.5, 519),
(444, 670, 1441.7, 525),
(445, 670, 1378.6, 564),
(446, 670, 1530.9, 567),
(447, 670, 1149.6, 627),
(448, 670, 1076.9, 662),
(449, 670, 1028.7, 698),
(450, 670, 1308.6, 776),
(451, 670, 636.5, 881),
(452, 670, 628, 892),
(453, 670, 644.6, 951),
(454, 670, 799.3, 956),
(455, 670, 658.8, 959),
(456, 670, 1594.7, 972),
(457, 670, 1827.2, 992),
(458, 670, 810.7, 1024),
(459, 670, 710.3, 1030),
(460, 670, 2232, 1050),
(461, 670, 1266.2, 1055),
(462, 670, 243.2, 1084),
(463, 670, 1399.9, 1123),
(464, 670, 1464.8, 1134),
(465, 670, 1989.2, 1135),
(466, 698, 1652, 77),
(467, 698, 1342.6, 135),
(468, 698, 557.2, 154),
(469, 698, 969.1, 207),
(470, 698, 2208.5, 261),
(471, 698, 434.7, 285),
(472, 698, 2179.3, 376),
(473, 698, 2158.5, 407),
(474, 698, 1174, 519),
(475, 698, 1184.1, 525),
(476, 698, 1201.4, 564),
(477, 698, 1233.1, 567),
(478, 698, 862, 627),
(479, 698, 1166.6, 662),
(480, 698, 1028.7, 670),
(481, 698, 1184.4, 776),
(482, 698, 466.2, 881),
(483, 698, 483.1, 892),
(484, 698, 571.6, 951),
(485, 698, 671.1, 956),
(486, 698, 578.8, 959),
(487, 698, 1251, 972),
(488, 698, 1702.1, 992),
(489, 698, 627.4, 1024),
(490, 698, 437.6, 1030),
(491, 698, 2212, 1050),
(492, 698, 685.2, 1055),
(493, 698, 797.1, 1084),
(494, 698, 999.4, 1123),
(495, 698, 1215.7, 1134),
(496, 698, 1434.9, 1135),
(497, 776, 496.8, 77),
(498, 776, 635.7, 135),
(499, 776, 786.8, 154),
(500, 776, 278.8, 207),
(501, 776, 1234.1, 261),
(502, 776, 749.8, 285),
(503, 776, 1226.2, 376),
(504, 776, 3284.7, 407),
(505, 776, 152.5, 519),
(506, 776, 182.4, 525),
(507, 776, 81, 564),
(508, 776, 268.1, 567),
(509, 776, 324.6, 627),
(510, 776, 2137.1, 662),
(511, 776, 1308.6, 670),
(512, 776, 1184.4, 698),
(513, 776, 1325.7, 881),
(514, 776, 1338.4, 892),
(515, 776, 811.5, 951),
(516, 776, 609.5, 956),
(517, 776, 791.6, 959),
(518, 776, 346.1, 972),
(519, 776, 2806.1, 992),
(520, 776, 1623.4, 1024),
(521, 776, 882.4, 1030),
(522, 776, 3293.6, 1050),
(523, 776, 1855.9, 1055),
(524, 776, 1268.8, 1084),
(525, 776, 340.3, 1123),
(526, 776, 188.3, 1134),
(527, 776, 807.6, 1135),
(528, 881, 1717.7, 77),
(529, 881, 1251, 135),
(530, 881, 933.1, 154),
(531, 881, 1190, 207),
(532, 881, 2486.6, 261),
(533, 881, 678.3, 285),
(534, 881, 2074.9, 376),
(535, 881, 1970, 407),
(536, 881, 1367.9, 519),
(537, 881, 1387.2, 525),
(538, 881, 1368.8, 564),
(539, 881, 1458.1, 567),
(540, 881, 1044.1, 627),
(541, 881, 820.2, 662),
(542, 881, 636.5, 670),
(543, 881, 466.2, 698),
(544, 881, 1325.7, 776),
(545, 881, 17.8, 892),
(546, 881, 522.2, 951),
(547, 881, 717.8, 956),
(548, 881, 541.1, 959),
(549, 881, 1497.7, 972),
(550, 881, 1486.4, 992),
(551, 881, 301.2, 1024),
(552, 881, 446, 1030),
(553, 881, 1968.1, 1050),
(554, 881, 671.1, 1055),
(555, 881, 393.7, 1084),
(556, 881, 1252.9, 1123),
(557, 881, 1417.4, 1134),
(558, 881, 1779, 1135),
(559, 892, 1727.7, 77),
(560, 892, 1256.3, 135),
(561, 892, 950.7, 154),
(562, 892, 1204.9, 207),
(563, 892, 2501.8, 261),
(564, 892, 694.9, 285),
(565, 892, 2078.4, 376),
(566, 892, 1959.5, 407),
(567, 892, 1381.9, 519),
(568, 892, 1401.4, 525),
(569, 892, 1382.2, 564),
(570, 892, 1472.8, 567),
(571, 892, 1058.5, 627),
(572, 892, 805.5, 662),
(573, 892, 628, 670),
(574, 892, 483.1, 698),
(575, 892, 1338.4, 776),
(576, 892, 17.8, 881),
(577, 892, 533.3, 951),
(578, 892, 730, 956),
(579, 892, 552.4, 959),
(580, 892, 1512.8, 972),
(581, 892, 1475.5, 992),
(582, 892, 291.2, 1024),
(583, 892, 460, 1030),
(584, 892, 1955.7, 1050),
(585, 892, 671.5, 1055),
(586, 892, 385.7, 1084),
(587, 892, 1268.5, 1123),
(588, 892, 1431.5, 1134),
(589, 892, 1795.8, 1135),
(590, 951, 1197.2, 77),
(591, 951, 784.1, 135),
(592, 951, 662.2, 154),
(593, 951, 716.9, 207),
(594, 951, 2008.6, 261),
(595, 951, 353.7, 285),
(596, 951, 1623.8, 376),
(597, 951, 2492, 407),
(598, 951, 870.9, 519),
(599, 951, 893.6, 525),
(600, 951, 861.4, 564),
(601, 951, 973, 567),
(602, 951, 559.9, 627),
(603, 951, 1325.7, 662),
(604, 951, 644.6, 670),
(605, 951, 571.6, 698),
(606, 951, 811.5, 776),
(607, 951, 522.2, 881),
(608, 951, 533.3, 892),
(609, 951, 203.6, 956),
(610, 951, 20.1, 959),
(611, 951, 1023.4, 972),
(612, 951, 2008.6, 992),
(613, 951, 823.4, 1024),
(614, 951, 134, 1030),
(615, 951, 2487.5, 1050),
(616, 951, 1129.4, 1055),
(617, 951, 506.1, 1084),
(618, 951, 797.3, 1123),
(619, 951, 922.1, 1134),
(620, 951, 1371.8, 1135),
(621, 956, 1015.4, 77),
(622, 956, 681.8, 135),
(623, 956, 578.9, 154),
(624, 956, 521.2, 207),
(625, 956, 1806.8, 261),
(626, 956, 311.7, 285),
(627, 956, 1511.6, 376),
(628, 956, 2683.9, 407),
(629, 956, 667.7, 519),
(630, 956, 690.9, 525),
(631, 956, 657.9, 564),
(632, 956, 771.7, 567),
(633, 956, 362.5, 627),
(634, 956, 1527.8, 662),
(635, 956, 799.3, 670),
(636, 956, 671.1, 698),
(637, 956, 609.5, 776),
(638, 956, 717.8, 881),
(639, 956, 730, 892),
(640, 956, 203.6, 951),
(641, 956, 183.6, 959),
(642, 956, 824.6, 972),
(643, 956, 2202.4, 992),
(644, 956, 1017.4, 1024),
(645, 956, 282.4, 1030),
(646, 956, 2685.7, 1050),
(647, 956, 1290.9, 1055),
(648, 956, 694.9, 1084),
(649, 956, 607.4, 1123),
(650, 956, 719.1, 1134),
(651, 956, 1192, 1135),
(652, 959, 1179, 77),
(653, 959, 772.5, 135),
(654, 959, 651.5, 154),
(655, 959, 697.4, 207),
(656, 959, 1988.7, 261),
(657, 959, 344.3, 285),
(658, 959, 1612.1, 376),
(659, 959, 2510.8, 407),
(660, 959, 850.8, 519),
(661, 959, 873.6, 525),
(662, 959, 841.4, 564),
(663, 959, 953.1, 567),
(664, 959, 540.2, 627),
(665, 959, 1345.6, 662),
(666, 959, 658.8, 670),
(667, 959, 578.8, 698),
(668, 959, 791.6, 776),
(669, 959, 541.1, 881),
(670, 959, 552.4, 892),
(671, 959, 20.1, 951),
(672, 959, 183.6, 956),
(673, 959, 1003.7, 972),
(674, 959, 2027.5, 992),
(675, 959, 842.2, 1024),
(676, 959, 142.5, 1030),
(677, 959, 2507, 1050),
(678, 959, 1144.6, 1055),
(679, 959, 524.3, 1084),
(680, 959, 778.3, 1123),
(681, 959, 902.1, 1134),
(682, 959, 1353.7, 1135),
(683, 972, 697.1, 77),
(684, 972, 981.5, 135),
(685, 972, 740.8, 154),
(686, 972, 308.8, 207),
(687, 972, 989.5, 261),
(688, 972, 840.8, 285),
(689, 972, 1498.8, 376),
(690, 972, 3405, 407),
(691, 972, 198.2, 519),
(692, 972, 167, 525),
(693, 972, 265.9, 564),
(694, 972, 78.2, 567),
(695, 972, 463.6, 627),
(696, 972, 2317.7, 662),
(697, 972, 1594.7, 670),
(698, 972, 1251, 698),
(699, 972, 346.1, 776),
(700, 972, 1497.7, 881),
(701, 972, 1512.8, 892),
(702, 972, 1023.4, 951),
(703, 972, 824.6, 956),
(704, 972, 1003.7, 959),
(705, 972, 2939, 992),
(706, 972, 1780.5, 1024),
(707, 972, 1056.5, 1030),
(708, 972, 3441.1, 1050),
(709, 972, 1936, 1055),
(710, 972, 1518.2, 1084),
(711, 972, 252.3, 1123),
(712, 972, 158.1, 1134),
(713, 972, 462.2, 1135),
(714, 992, 3201.8, 77),
(715, 992, 2690.7, 135),
(716, 992, 2256.3, 154),
(717, 992, 2641, 207),
(718, 992, 3909.6, 261),
(719, 992, 2098.6, 285),
(720, 992, 3463.5, 376),
(721, 992, 487.1, 407),
(722, 992, 2833.6, 519),
(723, 992, 2849.4, 525),
(724, 992, 2843.4, 564),
(725, 992, 2911.1, 567),
(726, 992, 2508.3, 627),
(727, 992, 750.4, 662),
(728, 992, 1827.2, 670),
(729, 992, 1702.1, 698),
(730, 992, 2806.1, 776),
(731, 992, 1486.4, 881),
(732, 992, 1475.5, 892),
(733, 992, 2008.6, 951),
(734, 992, 2202.4, 956),
(735, 992, 2027.5, 959),
(736, 992, 2939, 972),
(737, 992, 1185.5, 1024),
(738, 992, 1924, 1030),
(739, 992, 514.4, 1050),
(740, 992, 1045.4, 1055),
(741, 992, 1685.6, 1084),
(742, 992, 2687, 1123),
(743, 992, 2880.6, 1134),
(744, 992, 3130.8, 1135),
(745, 1024, 2018.8, 77),
(746, 1024, 1539.1, 135),
(747, 1024, 1164, 154),
(748, 1024, 1475.4, 207),
(749, 1024, 2766.1, 261),
(750, 1024, 945.7, 285),
(751, 1024, 2351.7, 376),
(752, 1024, 1668.7, 407),
(753, 1024, 1659.6, 519),
(754, 1024, 1677.6, 525),
(755, 1024, 1664.1, 564),
(756, 1024, 1745.2, 567),
(757, 1024, 1334.4, 627),
(758, 1024, 547.7, 662),
(759, 1024, 810.7, 670),
(760, 1024, 627.4, 698),
(761, 1024, 1623.4, 776),
(762, 1024, 301.2, 881),
(763, 1024, 291.2, 892),
(764, 1024, 823.4, 951),
(765, 1024, 1017.4, 956),
(766, 1024, 842.2, 959),
(767, 1024, 1780.5, 972),
(768, 1024, 1185.5, 992),
(769, 1024, 741.2, 1030),
(770, 1024, 1670.6, 1050),
(771, 1024, 463.3, 1055),
(772, 1024, 592.5, 1084),
(773, 1024, 1532, 1123),
(774, 1024, 1708.2, 1134),
(775, 1024, 2032.9, 1135),
(776, 1030, 1297.4, 77),
(777, 1030, 914.3, 135),
(778, 1030, 594.1, 154),
(779, 1030, 747.8, 207),
(780, 1030, 2046, 261),
(781, 1030, 288, 285),
(782, 1030, 1753.8, 376),
(783, 1030, 2404, 407),
(784, 1030, 922, 519),
(785, 1030, 941.5, 525),
(786, 1030, 923.3, 564),
(787, 1030, 1014, 567),
(788, 1030, 598.9, 627),
(789, 1030, 1265, 662),
(790, 1030, 710.3, 670),
(791, 1030, 437.6, 698),
(792, 1030, 882.4, 776),
(793, 1030, 446, 881),
(794, 1030, 460, 892),
(795, 1030, 134, 951),
(796, 1030, 282.4, 956),
(797, 1030, 142.5, 959),
(798, 1030, 1056.5, 972),
(799, 1030, 1924, 992),
(800, 1030, 741.2, 1024),
(801, 1030, 2411.7, 1050),
(802, 1030, 1012.5, 1055),
(803, 1030, 532.7, 1084),
(804, 1030, 816.6, 1123),
(805, 1030, 971.6, 1134),
(806, 1030, 1368.6, 1135),
(807, 1050, 3670.3, 77),
(808, 1050, 3131.4, 135),
(809, 1050, 2767.6, 154),
(810, 1050, 3140.1, 207),
(811, 1050, 4416.8, 261),
(812, 1050, 2600.4, 285),
(813, 1050, 3870.3, 376),
(814, 1050, 274.3, 407),
(815, 1050, 3328.7, 519),
(816, 1050, 3345.8, 525),
(817, 1050, 3334.6, 564),
(818, 1050, 3410.4, 567),
(819, 1050, 3003.2, 627),
(820, 1050, 1177.6, 662),
(821, 1050, 2232, 670),
(822, 1050, 2212, 698),
(823, 1050, 3293.6, 776),
(824, 1050, 1968.1, 881),
(825, 1050, 1955.7, 892),
(826, 1050, 2487.5, 951),
(827, 1050, 2685.7, 956),
(828, 1050, 2507, 959),
(829, 1050, 3441.1, 972),
(830, 1050, 514.4, 992),
(831, 1050, 1670.6, 1024),
(832, 1050, 2411.7, 1030),
(833, 1050, 1559.8, 1055),
(834, 1050, 2122.2, 1084),
(835, 1050, 3189.7, 1123),
(836, 1050, 3376.7, 1134),
(837, 1050, 3643.3, 1135),
(838, 1055, 2303.6, 77),
(839, 1055, 1902.3, 135),
(840, 1055, 1224.2, 154),
(841, 1055, 1652.9, 207),
(842, 1055, 2885, 261),
(843, 1055, 1112, 285),
(844, 1055, 2735.8, 376),
(845, 1055, 1482.5, 407),
(846, 1055, 1856, 519),
(847, 1055, 1867.4, 525),
(848, 1055, 1879.2, 564),
(849, 1055, 1918.2, 567),
(850, 1055, 1538.4, 627),
(851, 1055, 716.6, 662),
(852, 1055, 1266.2, 670),
(853, 1055, 685.2, 698),
(854, 1055, 1855.9, 776),
(855, 1055, 671.1, 881),
(856, 1055, 671.5, 892),
(857, 1055, 1129.4, 951),
(858, 1055, 1290.9, 956),
(859, 1055, 1144.6, 959),
(860, 1055, 1936, 972),
(861, 1055, 1045.4, 992),
(862, 1055, 463.3, 1024),
(863, 1055, 1012.5, 1030),
(864, 1055, 1559.8, 1050),
(865, 1055, 1036.5, 1084),
(866, 1055, 1684.6, 1123),
(867, 1055, 1899, 1134),
(868, 1055, 2091.5, 1135),
(869, 1084, 1567.9, 77),
(870, 1084, 1009.5, 135),
(871, 1084, 1124.9, 154),
(872, 1084, 1216.1, 207),
(873, 1084, 2493.4, 261),
(874, 1084, 820.7, 285),
(875, 1084, 1785, 376),
(876, 1084, 2171.5, 407),
(877, 1084, 1352.2, 519),
(878, 1084, 1377.7, 525),
(879, 1084, 1330.2, 564),
(880, 1084, 1462.1, 567),
(881, 1084, 1057.3, 627),
(882, 1084, 946.2, 662),
(883, 1084, 243.2, 670),
(884, 1084, 797.1, 698),
(885, 1084, 1268.8, 776),
(886, 1084, 393.7, 881),
(887, 1084, 385.7, 892),
(888, 1084, 506.1, 951),
(889, 1084, 694.9, 956),
(890, 1084, 524.3, 959),
(891, 1084, 1518.2, 972),
(892, 1084, 1685.6, 992),
(893, 1084, 592.5, 1024),
(894, 1084, 532.7, 1030),
(895, 1084, 2122.2, 1050),
(896, 1084, 1036.5, 1055),
(897, 1084, 1300.6, 1123),
(898, 1084, 1404.1, 1134),
(899, 1084, 1877.9, 1135),
(900, 1123, 815.5, 77),
(901, 1123, 922.4, 135),
(902, 1123, 505.5, 154),
(903, 1123, 100.9, 207),
(904, 1123, 1234.4, 261),
(905, 1123, 589.4, 285),
(906, 1123, 1566.5, 376),
(907, 1123, 3152.7, 407),
(908, 1123, 227, 519),
(909, 1123, 219.4, 525),
(910, 1123, 295.2, 564),
(911, 1123, 238.9, 567),
(912, 1123, 250.8, 627),
(913, 1123, 2071.8, 662),
(914, 1123, 1399.9, 670),
(915, 1123, 999.4, 698),
(916, 1123, 340.3, 776),
(917, 1123, 1252.9, 881),
(918, 1123, 1268.5, 892),
(919, 1123, 797.3, 951),
(920, 1123, 607.4, 956),
(921, 1123, 778.3, 959),
(922, 1123, 252.3, 972),
(923, 1123, 2687, 992),
(924, 1123, 1532, 1024),
(925, 1123, 816.6, 1030),
(926, 1123, 3189.7, 1050),
(927, 1123, 1684.6, 1055),
(928, 1123, 1300.6, 1084),
(929, 1123, 247, 1134),
(930, 1123, 591.1, 1135),
(931, 1134, 583.8, 77),
(932, 1134, 823.4, 135),
(933, 1134, 749.3, 154),
(934, 1134, 246.8, 207),
(935, 1134, 1089.5, 261),
(936, 1134, 788.4, 285),
(937, 1134, 1366.2, 376),
(938, 1134, 3353, 407),
(939, 1134, 51.9, 519),
(940, 1134, 31.6, 525),
(941, 1134, 107.8, 564),
(942, 1134, 79.9, 567),
(943, 1134, 373.8, 627),
(944, 1134, 2236.5, 662),
(945, 1134, 1464.8, 670),
(946, 1134, 1215.7, 698),
(947, 1134, 188.3, 776),
(948, 1134, 1417.4, 881),
(949, 1134, 1431.5, 892),
(950, 1134, 922.1, 951),
(951, 1134, 719.1, 956),
(952, 1134, 902.1, 959),
(953, 1134, 158.1, 972),
(954, 1134, 2880.6, 992),
(955, 1134, 1708.2, 1024),
(956, 1134, 971.6, 1030),
(957, 1134, 3376.7, 1050),
(958, 1134, 1899, 1055),
(959, 1134, 1404.1, 1084),
(960, 1134, 247, 1123),
(961, 1134, 620.2, 1135),
(962, 1135, 1101.1, 77),
(963, 1135, 1443.3, 135),
(964, 1135, 877.7, 154),
(965, 1135, 688.3, 207),
(966, 1135, 828.1, 261),
(967, 1135, 1101.6, 285),
(968, 1135, 1915.7, 376),
(969, 1135, 3573.1, 407),
(970, 1135, 656.9, 519),
(971, 1135, 626.1, 525),
(972, 1135, 727.9, 564),
(973, 1135, 540.4, 567),
(974, 1135, 841.8, 627),
(975, 1135, 2580.5, 662),
(976, 1135, 1989.2, 670),
(977, 1135, 1434.9, 698),
(978, 1135, 807.6, 776),
(979, 1135, 1779, 881),
(980, 1135, 1795.8, 892),
(981, 1135, 1371.8, 951),
(982, 1135, 1192, 956),
(983, 1135, 1353.7, 959),
(984, 1135, 462.2, 972),
(985, 1135, 3130.8, 992),
(986, 1135, 2032.9, 1024),
(987, 1135, 1368.6, 1030),
(988, 1135, 3643.3, 1050),
(989, 1135, 2091.5, 1055),
(990, 1135, 1877.9, 1084),
(991, 1135, 591.1, 1123),
(992, 1135, 620.2, 1134),
(993, 77, 733.7, 927),
(994, 135, 606.6, 927),
(995, 154, 1763.7, 927),
(996, 207, 1327.3, 927),
(997, 261, 1862.7, 927),
(998, 285, 1583.4, 927),
(999, 376, 249.4, 927),
(1000, 407, 3697.3, 927),
(1001, 519, 1212.2, 927),
(1002, 525, 1236.9, 927),
(1003, 564, 1132.9, 927),
(1004, 567, 1300.4, 927),
(1005, 627, 1285.5, 927),
(1006, 662, 2466.1, 927),
(1007, 670, 1392.5, 927),
(1008, 698, 1949.2, 927),
(1009, 776, 1069.7, 927),
(1010, 881, 1828.9, 927),
(1011, 892, 1832.1, 927),
(1012, 927, 733.7, 77),
(1013, 927, 606.6, 135),
(1014, 927, 1763.7, 154),
(1015, 927, 1327.3, 207),
(1016, 927, 1862.7, 261),
(1017, 927, 1583.4, 285),
(1018, 927, 249.4, 376),
(1019, 927, 3697.3, 407),
(1020, 927, 1212.2, 519),
(1021, 927, 1236.9, 525),
(1022, 927, 1132.9, 564),
(1023, 927, 1300.4, 567),
(1024, 927, 1285.5, 627),
(1025, 927, 2466.1, 662),
(1026, 927, 1392.5, 670),
(1027, 927, 1949.2, 698),
(1028, 927, 1069.7, 776),
(1029, 927, 1828.9, 881),
(1030, 927, 1832.1, 892),
(1031, 927, 1387.5, 951),
(1032, 927, 1286.6, 956),
(1033, 927, 1376.8, 959),
(1034, 927, 1373, 972),
(1035, 927, 3214.5, 992),
(1036, 927, 2103.8, 1024),
(1037, 927, 1519.1, 1030),
(1038, 927, 3623.5, 1050),
(1039, 927, 2492.2, 1055),
(1040, 927, 1535.6, 1084),
(1041, 927, 1405.9, 1123),
(1042, 927, 1228.6, 1134),
(1043, 927, 1813.3, 1135),
(1044, 951, 1387.5, 927),
(1045, 956, 1286.6, 927),
(1046, 959, 1376.8, 927),
(1047, 972, 1373, 927),
(1048, 992, 3214.5, 927),
(1049, 1024, 2103.8, 927),
(1050, 1030, 1519.1, 927),
(1051, 1050, 3623.5, 927),
(1052, 1055, 2492.2, 927),
(1053, 1084, 1535.6, 927),
(1054, 1123, 1405.9, 927),
(1055, 1134, 1228.6, 927),
(1056, 1135, 1813.3, 927),
(1057, 77, 569.4, 553),
(1058, 135, 799, 553),
(1059, 154, 752, 553),
(1060, 207, 243.5, 553),
(1061, 261, 1107.3, 553),
(1062, 285, 781.4, 553),
(1063, 376, 1347.1, 553),
(1064, 407, 3344, 553),
(1065, 519, 37.2, 553),
(1066, 525, 34.7, 553),
(1067, 553, 569.4, 77),
(1068, 553, 799, 135),
(1069, 553, 752, 154),
(1070, 553, 243.5, 207),
(1071, 553, 1107.3, 261),
(1072, 553, 781.4, 285),
(1073, 553, 1347.1, 376),
(1074, 553, 3344, 407),
(1075, 553, 37.2, 519),
(1076, 553, 34.7, 525),
(1077, 553, 83.4, 564),
(1078, 553, 104.3, 567),
(1079, 553, 362.7, 627),
(1080, 553, 2223.3, 662),
(1081, 553, 1444.3, 670),
(1082, 553, 1210.4, 698),
(1083, 553, 163.9, 776),
(1084, 553, 1404.7, 881),
(1085, 553, 1418.7, 892),
(1086, 553, 906.6, 951),
(1087, 553, 703.3, 956),
(1088, 553, 886.6, 959),
(1089, 553, 182.5, 972),
(1090, 553, 2870.7, 992),
(1091, 553, 1696.6, 1024),
(1092, 553, 958.8, 1030),
(1093, 553, 3365.8, 1050),
(1094, 553, 1892.8, 1055),
(1095, 553, 1386.1, 1084),
(1096, 553, 253.5, 1123),
(1097, 553, 24.4, 1134),
(1098, 553, 644.5, 1135),
(1099, 564, 83.4, 553),
(1100, 567, 104.3, 553),
(1101, 627, 362.7, 553),
(1102, 662, 2223.3, 553),
(1103, 670, 1444.3, 553),
(1104, 698, 1210.4, 553),
(1105, 776, 163.9, 553),
(1106, 881, 1404.7, 553),
(1107, 892, 1418.7, 553),
(1108, 951, 906.6, 553),
(1109, 956, 703.3, 553),
(1110, 959, 886.6, 553),
(1111, 972, 182.5, 553),
(1112, 992, 2870.7, 553),
(1113, 1024, 1696.6, 553),
(1114, 1030, 958.8, 553),
(1115, 1050, 3365.8, 553),
(1116, 1055, 1892.8, 553),
(1117, 1084, 1386.1, 553),
(1118, 1123, 253.5, 553),
(1119, 1134, 24.4, 553),
(1120, 1135, 644.5, 553),
(1121, 77, 6606.4, 0),
(1122, 207, 7318.2, 0),
(1123, 261, 6375.2, 0),
(1124, 285, 7823.8, 0),
(1125, 376, 6251.7, 0),
(1126, 407, 10197.8, 0),
(1127, 519, 7110, 0),
(1128, 525, 7107.1, 0),
(1129, 564, 7069, 0),
(1130, 567, 7082.1, 0),
(1131, 627, 7400.9, 0),
(1132, 662, 8966.6, 0),
(1133, 670, 7891.2, 0),
(1134, 698, 8256.8, 0),
(1135, 776, 7076.3, 0),
(1136, 881, 8284, 0),
(1137, 892, 8290.6, 0),
(1138, 951, 7781.5, 0),
(1139, 956, 7615.3, 0),
(1140, 959, 7765.2, 0),
(1141, 972, 7091.9, 0),
(1142, 992, 9714.9, 0),
(1143, 1024, 8576.5, 0),
(1144, 1030, 7894, 0),
(1145, 1050, 10113.8, 0),
(1146, 1055, 8906, 0),
(1147, 1084, 8031.8, 0),
(1148, 1123, 7318.9, 0),
(1149, 1134, 7076.7, 0),
(1150, 1135, 7164.8, 0),
(1151, 77, 649.1, 389),
(1152, 154, 1815.6, 389),
(1153, 207, 1342.9, 389),
(1154, 261, 1704.7, 389),
(1155, 285, 1669.9, 389),
(1156, 376, 165.7, 389),
(1157, 389, 649.1, 77),
(1158, 389, 1815.6, 154),
(1159, 389, 1342.9, 207),
(1160, 389, 1704.7, 261),
(1161, 389, 1669.9, 285),
(1162, 389, 165.7, 376),
(1163, 389, 3886.7, 407),
(1164, 389, 1197.9, 519),
(1165, 389, 1218.6, 525),
(1166, 389, 1186.1, 553),
(1167, 389, 1120.6, 564),
(1168, 389, 1268.8, 567),
(1169, 389, 1328.5, 627),
(1170, 389, 2656.8, 662),
(1171, 389, 1590.9, 670),
(1172, 389, 2060.6, 698),
(1173, 389, 1069.5, 776),
(1174, 389, 1985, 881),
(1175, 389, 1989.7, 892),
(1176, 389, 1515.4, 951),
(1177, 389, 1390, 956),
(1178, 389, 1502.4, 959),
(1179, 389, 1335.2, 972),
(1180, 389, 3401.7, 992),
(1181, 389, 2269.1, 1024),
(1182, 389, 1642.5, 1030),
(1183, 389, 3822.4, 1050),
(1184, 389, 2637.8, 1055),
(1185, 389, 1716.8, 1084),
(1186, 389, 1409.6, 1123),
(1187, 389, 1204.7, 1134),
(1188, 389, 1750.2, 1135),
(1189, 407, 3886.7, 389),
(1190, 519, 1197.9, 389),
(1191, 525, 1218.6, 389),
(1192, 553, 1186.1, 389),
(1193, 564, 1120.6, 389),
(1194, 567, 1268.8, 389),
(1195, 627, 1328.5, 389),
(1196, 662, 2656.8, 389),
(1197, 670, 1590.9, 389),
(1198, 698, 2060.6, 389),
(1199, 776, 1069.5, 389),
(1200, 881, 1985, 389),
(1201, 892, 1989.7, 389),
(1202, 951, 1515.4, 389),
(1203, 956, 1390, 389),
(1204, 959, 1502.4, 389),
(1205, 972, 1335.2, 389),
(1206, 992, 3401.7, 389),
(1207, 1024, 2269.1, 389),
(1208, 1030, 1642.5, 389),
(1209, 1050, 3822.4, 389),
(1210, 1055, 2637.8, 389),
(1211, 1084, 1716.8, 389),
(1212, 1123, 1409.6, 389),
(1213, 1134, 1204.7, 389),
(1214, 1135, 1750.2, 389);

-- --------------------------------------------------------

--
-- Структура таблицы `uni_clients`
--

CREATE TABLE `uni_clients` (
  `clients_id` int(11) NOT NULL,
  `clients_pass` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `clients_email` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `clients_datetime_add` timestamp NULL DEFAULT NULL,
  `clients_social_identity` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `clients_ip` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `clients_status` int(1) NOT NULL DEFAULT '1',
  `clients_avatar` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `clients_phone` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `clients_datetime_view` timestamp NULL DEFAULT NULL,
  `clients_name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `clients_surname` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `clients_balance` float NOT NULL DEFAULT '0',
  `clients_type_person` varchar(15) CHARACTER SET utf8 NOT NULL DEFAULT 'user',
  `clients_name_company` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `clients_city_id` int(11) NOT NULL DEFAULT '0',
  `clients_additional_phones` text CHARACTER SET utf8,
  `clients_id_hash` varchar(35) CHARACTER SET utf8 DEFAULT NULL,
  `clients_note` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `clients_notifications` text CHARACTER SET utf8,
  `clients_score` varchar(255) DEFAULT NULL,
  `clients_secure` int(1) NOT NULL DEFAULT '1',
  `clients_comments` int(11) NOT NULL DEFAULT '1',
  `clients_id_import` varchar(255) DEFAULT NULL,
  `clients_view_phone` int(1) NOT NULL DEFAULT '1',
  `clients_first_ad_publication` int(1) NOT NULL DEFAULT '0',
  `clients_score_type` varchar(255) DEFAULT NULL,
  `clients_tariff_id` int(11) NOT NULL DEFAULT '0',
  `clients_tariff_autorenewal` int(1) NOT NULL DEFAULT '1',
  `clients_cookie_token` varchar(255) DEFAULT NULL,
  `clients_score_booking` varchar(255) DEFAULT NULL,
  `clients_note_status` varchar(255) DEFAULT NULL,
  `clients_card_id` varchar(255) DEFAULT NULL,
  `clients_patronymic` varchar(255) DEFAULT NULL,
  `clients_delivery_status` int(1) DEFAULT '0',
  `clients_delivery_id_point_send` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `uni_clients`
--

INSERT INTO `uni_clients` (`clients_id`, `clients_pass`, `clients_email`, `clients_datetime_add`, `clients_social_identity`, `clients_ip`, `clients_status`, `clients_avatar`, `clients_phone`, `clients_datetime_view`, `clients_name`, `clients_surname`, `clients_balance`, `clients_type_person`, `clients_name_company`, `clients_city_id`, `clients_additional_phones`, `clients_id_hash`, `clients_note`, `clients_notifications`, `clients_score`, `clients_secure`, `clients_comments`, `clients_id_import`, `clients_view_phone`, `clients_first_ad_publication`, `clients_score_type`, `clients_tariff_id`, `clients_tariff_autorenewal`, `clients_cookie_token`, `clients_score_booking`, `clients_note_status`, `clients_card_id`, `clients_patronymic`, `clients_delivery_status`, `clients_delivery_id_point_send`) VALUES
(1, '$2y$10$zA3AM0blDkYoEgZ749/WPe.CM.6HDETq/vQW4laRv.Vge9SLn6f0W', 'shuhaaka@mail.ru', '2023-04-15 19:19:20', NULL, NULL, 1, NULL, '998977388311', '2023-06-26 12:17:57', 'Shuhrat', '', 9246, 'user', '', 0, NULL, 'shuhrat', NULL, '{\"messages\":\"1\",\"answer_comments\":\"1\",\"services\":\"1\"}', NULL, 0, 0, NULL, 1, 0, NULL, 2, 1, 'fab3bef4f2fc6f645ee5f7ade45b571c5922ad6b831c44af24bb964b2e6ef995', NULL, NULL, NULL, '', 0, ''),
(2, '$2y$10$UpSTikdYoLpg30IzqrGWUe/7d4cbh18UKKr1ANfFh25IotgOwJv/C', NULL, '2023-04-24 12:09:58', NULL, '127.0.0.1', 1, NULL, '998880091312', '2023-04-24 21:07:19', 'Orif', NULL, 10000, 'user', NULL, 0, NULL, '1db086989ceed948ca653653a956ce63', NULL, '{\"messages\":\"1\",\"answer_comments\":\"1\",\"services\":\"1\",\"answer_ad\":\"1\"}', NULL, 1, 1, NULL, 1, 0, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(3, '$2y$10$SZrkKYtWOiVcaGqtLPoY0.0EvdfDCtdKCDoDN1/uik4j3RVin/fVG', 'bakhtiyarkhozha@gmail.com', '2023-06-01 06:07:28', NULL, '127.0.0.1', 1, NULL, NULL, '2023-06-01 06:07:45', 'Bakhtiyar', NULL, 10000, 'user', NULL, 0, NULL, 'e578e2305f4afa0b2ac7e5b5b3199cf2', NULL, '{\"messages\":\"1\",\"answer_comments\":\"1\",\"services\":\"1\",\"answer_ad\":\"1\"}', NULL, 1, 1, NULL, 1, 0, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `uni_clients_auth`
--

CREATE TABLE `uni_clients_auth` (
  `clients_auth_id` int(11) NOT NULL,
  `clients_auth_token` varchar(255) DEFAULT NULL,
  `clients_auth_expiration` timestamp NULL DEFAULT NULL,
  `clients_auth_user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `uni_clients_hash_email`
--

CREATE TABLE `uni_clients_hash_email` (
  `clients_hash_email_id` int(11) NOT NULL,
  `clients_hash_email_id_user` int(11) NOT NULL DEFAULT '0',
  `clients_hash_email_email` varchar(255) DEFAULT NULL,
  `clients_hash_email_hash` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `uni_clients_orders`
--

CREATE TABLE `uni_clients_orders` (
  `clients_orders_id` int(11) NOT NULL,
  `clients_orders_from_user_id` int(11) NOT NULL DEFAULT '0',
  `clients_orders_date` timestamp NULL DEFAULT NULL,
  `clients_orders_status` int(11) NOT NULL DEFAULT '0',
  `clients_orders_uniq_id` int(11) NOT NULL DEFAULT '0',
  `clients_orders_secure` int(1) NOT NULL DEFAULT '0',
  `clients_orders_to_user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `uni_clients_orders_ads`
--

CREATE TABLE `uni_clients_orders_ads` (
  `clients_orders_ads_id` int(11) NOT NULL,
  `clients_orders_ads_ad_id` int(11) NOT NULL DEFAULT '0',
  `clients_orders_ads_count` int(11) NOT NULL DEFAULT '0',
  `clients_orders_ads_total` float NOT NULL DEFAULT '0',
  `clients_orders_ads_order_id` int(11) NOT NULL DEFAULT '0',
  `clients_orders_ads_user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `uni_clients_orders_messages`
--

CREATE TABLE `uni_clients_orders_messages` (
  `clients_orders_messages_id` int(11) NOT NULL,
  `clients_orders_messages_from_id_user` int(11) NOT NULL DEFAULT '0',
  `clients_orders_messages_to_id_user` int(11) NOT NULL DEFAULT '0',
  `clients_orders_messages_message` text,
  `clients_orders_messages_id_order` int(11) NOT NULL DEFAULT '0',
  `clients_orders_messages_date` timestamp NULL DEFAULT NULL,
  `clients_orders_messages_files` text,
  `clients_orders_messages_status` int(1) NOT NULL DEFAULT '0',
  `clients_orders_messages_notification` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `uni_clients_reviews`
--

CREATE TABLE `uni_clients_reviews` (
  `clients_reviews_id` int(11) NOT NULL,
  `clients_reviews_id_user` int(11) NOT NULL DEFAULT '0',
  `clients_reviews_text` text CHARACTER SET utf8,
  `clients_reviews_date` timestamp NULL DEFAULT NULL,
  `clients_reviews_from_id_user` int(11) NOT NULL,
  `clients_reviews_rating` int(1) NOT NULL DEFAULT '1',
  `clients_reviews_status` int(11) NOT NULL DEFAULT '1',
  `clients_reviews_id_ad` int(11) NOT NULL DEFAULT '0',
  `clients_reviews_status_result` int(1) NOT NULL DEFAULT '1',
  `clients_reviews_files` varchar(255) DEFAULT NULL,
  `clients_reviews_id_parent` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `uni_clients_shops`
--

CREATE TABLE `uni_clients_shops` (
  `clients_shops_id` int(11) NOT NULL,
  `clients_shops_id_user` int(11) NOT NULL DEFAULT '0',
  `clients_shops_id_hash` varchar(255) DEFAULT NULL,
  `clients_shops_title` varchar(100) DEFAULT NULL,
  `clients_shops_desc` varchar(500) DEFAULT NULL,
  `clients_shops_logo` varchar(255) DEFAULT NULL,
  `clients_shops_count_view` int(11) NOT NULL DEFAULT '0',
  `clients_shops_id_theme_category` int(11) NOT NULL DEFAULT '0',
  `clients_shops_time_validity` timestamp NULL DEFAULT NULL,
  `clients_shops_status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `uni_clients_shops`
--

INSERT INTO `uni_clients_shops` (`clients_shops_id`, `clients_shops_id_user`, `clients_shops_id_hash`, `clients_shops_title`, `clients_shops_desc`, `clients_shops_logo`, `clients_shops_count_view`, `clients_shops_id_theme_category`, `clients_shops_time_validity`, `clients_shops_status`) VALUES
(1, 1, 'c4ca4238a0b923820dcc509a6f75849b', 'Shuhrat ', NULL, NULL, 0, 0, '2023-07-02 05:52:48', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `uni_clients_shops_page`
--

CREATE TABLE `uni_clients_shops_page` (
  `clients_shops_page_id` int(11) NOT NULL,
  `clients_shops_page_id_shop` int(11) NOT NULL DEFAULT '0',
  `clients_shops_page_name` varchar(255) DEFAULT NULL,
  `clients_shops_page_text` text,
  `clients_shops_page_status` int(1) NOT NULL DEFAULT '1',
  `clients_shops_page_alias` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `uni_clients_shops_slider`
--

CREATE TABLE `uni_clients_shops_slider` (
  `clients_shops_slider_id` int(11) NOT NULL,
  `clients_shops_slider_id_shop` int(11) NOT NULL DEFAULT '0',
  `clients_shops_slider_image` varchar(255) DEFAULT NULL,
  `clients_shops_slider_sort` int(11) NOT NULL DEFAULT '0',
  `clients_shops_slider_id_user` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `uni_clients_subscriptions`
--

CREATE TABLE `uni_clients_subscriptions` (
  `clients_subscriptions_id` int(11) NOT NULL,
  `clients_subscriptions_id_user_from` int(11) NOT NULL DEFAULT '0',
  `clients_subscriptions_id_user_to` int(11) NOT NULL DEFAULT '0',
  `clients_subscriptions_id_shop` int(11) NOT NULL DEFAULT '0',
  `clients_subscriptions_time_update` timestamp NULL DEFAULT NULL,
  `clients_subscriptions_date_add` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `uni_country`
--

CREATE TABLE `uni_country` (
  `country_id` int(11) UNSIGNED NOT NULL,
  `country_name` varchar(128) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `country_status` int(11) NOT NULL DEFAULT '0',
  `country_alias` varchar(255) CHARACTER SET utf8 NOT NULL,
  `country_lat` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `country_lng` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `country_desc` text CHARACTER SET utf8,
  `country_format_phone` varchar(255) DEFAULT NULL,
  `country_code_phone` varchar(255) DEFAULT NULL,
  `country_image` varchar(255) DEFAULT NULL,
  `country_declination` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `uni_country`
--

INSERT INTO `uni_country` (`country_id`, `country_name`, `country_status`, `country_alias`, `country_lat`, `country_lng`, `country_desc`, `country_format_phone`, `country_code_phone`, `country_image`, `country_declination`) VALUES
(1, 'Россия', 0, 'russia', '55.7522', '37.6156', '', '+7(___) ___ ____', 'RU', '8757589f49ab1c43109c833c9b7092a5.png', 'в России'),
(2, 'Казахстан', 0, 'kazahstan', '51.1801', '71.446', '', '+77_ ___ __ __', 'KZ', 'ba4d015f4764b6ca4fcdd110fcd0e35b.png', ''),
(12, 'Узбекистан', 1, 'uzbekistan', '41.2646', '69.2163', '', '+998 (__) ___ ____', 'UZ', NULL, 'Узбекистан');

-- --------------------------------------------------------

--
-- Структура таблицы `uni_crontab`
--

CREATE TABLE `uni_crontab` (
  `crontab_id` int(11) NOT NULL,
  `crontab_name` varchar(255) DEFAULT NULL,
  `crontab_time_count` int(11) NOT NULL DEFAULT '0',
  `crontab_update_count` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `uni_crontab`
--

INSERT INTO `uni_crontab` (`crontab_id`, `crontab_name`, `crontab_time_count`, `crontab_update_count`) VALUES
(1, 'auction', 5, 1),
(2, 'sitemap', 60, 56),
(3, 'notifications', 5, 5),
(4, 'sorting_ad', 20, 3),
(6, 'secure', 1, 1),
(7, 'masspay', 10, 3),
(8, 'import', 2, 2),
(9, 'import_delete', 1, 1),
(10, 'import_image', 1, 1),
(11, 'currency', 720, 305),
(12, 'vip', 5, 1),
(13, 'auto_renewal', 3, 3),
(14, 'elastic_index', 10, 10),
(15, 'delete_temp_images', 180, 99),
(16, 'update_statistics', 5, 3),
(17, 'ads_subscriptions_day', 60, 44),
(18, 'ads_subscriptions_min', 1, 1),
(21, 'modules', 3, 3),
(22, 'city_distance', 10, 8),
(23, 'update_count_ad', 1, 1),
(25, 'services_tariff', 60, 7),
(26, 'chat_responder', 5, 3),
(27, 'booking', 1, 1),
(28, 'delivery', 1440, 1079);

-- --------------------------------------------------------

--
-- Структура таблицы `uni_currency`
--

CREATE TABLE `uni_currency` (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `sign` varchar(10) CHARACTER SET utf8 NOT NULL,
  `code` varchar(10) CHARACTER SET utf8 NOT NULL,
  `id_position` int(2) NOT NULL,
  `visible` int(1) NOT NULL DEFAULT '1',
  `main` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `uni_currency`
--

INSERT INTO `uni_currency` (`id`, `name`, `sign`, `code`, `id_position`, `visible`, `main`) VALUES
(2, 'Доллары', 'у.е.', 'USD', 0, 1, 0),
(11, 'Сум', 'сум', 'UZS', 0, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `uni_email_message`
--

CREATE TABLE `uni_email_message` (
  `id` int(11) NOT NULL,
  `text` mediumtext CHARACTER SET utf8 NOT NULL,
  `subject` varchar(150) CHARACTER SET utf8 NOT NULL,
  `code` varchar(50) CHARACTER SET utf8 NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `uni_email_message`
--

INSERT INTO `uni_email_message` (`id`, `text`, `subject`, `code`, `name`) VALUES
(8, '%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+width%3D%22100%25%22%3E%0A%09%3Ctbody%3E%0A%09%09%3Ctr%3E%0A%09%09%09%3Ctd+align%3D%22center%22%3E%0A%09%09%09%3Cdiv+class%3D%22logo%22%3E%3Ca+href%3D%22%7BURL%7D%22%3E%3Cimg+src%3D%22%7BLOGO%7D%22+%2F%3E+%3C%2Fa%3E%3C%2Fdiv%3E%0A%0A%09%09%09%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+class%3D%22responsive-table+padding30%22%3E%0A%09%09%09%09%3Ctbody%3E%0A%09%09%09%09%09%3Ctr%3E%0A%09%09%09%09%09%09%3Ctd%3E%0A%09%09%09%09%09%09%3Ch2+class%3D%22title%22%3E%D0%97%D0%B4%D1%80%D0%B0%D0%B2%D1%81%D1%82%D0%B2%D1%83%D0%B9%D1%82%D0%B5%2C+%7BUSER_NAME%7D%21%3C%2Fh2%3E%0A%09%09%09%09%09%09%3C%2Ftd%3E%0A%09%09%09%09%09%3C%2Ftr%3E%0A%09%09%09%09%09%3Ctr%3E%0A%09%09%09%09%09%09%3Ctd%3E%0A%09%09%09%09%09%09%3Cp+class%3D%22text%22%3E%D0%92%D1%8B+%D0%BF%D0%BE%D0%BB%D1%83%D1%87%D0%B8%D0%BB%D0%B8+%D1%8D%D1%82%D0%BE+%D0%BF%D0%B8%D1%81%D1%8C%D0%BC%D0%BE%2C+%D1%82.%D0%BA.+%D0%B7%D0%B0%D0%BF%D1%80%D0%BE%D1%81%D0%B8%D0%BB%D0%B8+%D0%B2%D0%BE%D1%81%D1%81%D1%82%D0%B0%D0%BD%D0%BE%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5+%D0%BF%D0%B0%D1%80%D0%BE%D0%BB%D1%8F+%D0%B4%D0%BB%D1%8F+%D0%B2%D1%85%D0%BE%D0%B4%D0%B0+%D0%B2+%D0%9B%D0%B8%D1%87%D0%BD%D1%8B%D0%B9+%D0%BA%D0%B0%D0%B1%D0%B8%D0%BD%D0%B5%D1%82+%D0%BD%D0%B0+%D1%81%D0%B0%D0%B9%D1%82%D0%B5+%7BURL%7D%3C%2Fp%3E%0A%0A%09%09%09%09%09%09%3Cul%3E%0A%09%09%09%09%09%09%09%3Cli%3E%D0%92%D0%B0%D1%88+%D0%BB%D0%BE%D0%B3%D0%B8%D0%BD%3A+%3Cstrong%3E%7BUSER_EMAIL%7D%3C%2Fstrong%3E%3C%2Fli%3E%0A%09%09%09%09%09%09%09%3Cli%3E%D0%92%D0%B0%D1%88+%D0%BD%D0%BE%D0%B2%D1%8B%D0%B9+%D0%BF%D0%B0%D1%80%D0%BE%D0%BB%D1%8C%3A+%3Cstrong%3E%7BUSER_PASS%7D%3C%2Fstrong%3E%3C%2Fli%3E%0A%09%09%09%09%09%09%3C%2Ful%3E%0A%0A%09%09%09%09%09%09%3Cdiv+class%3D%22line%22%3E%26nbsp%3B%3C%2Fdiv%3E%0A%0A%09%09%09%09%09%09%3Cp+class%3D%22text%22%3E%D0%95%D1%81%D0%BB%D0%B8+%D0%B2%D1%8B+%D0%BD%D0%B5+%D0%B7%D0%B0%D0%BF%D1%80%D0%B0%D1%88%D0%B8%D0%B2%D0%B0%D0%BB%D0%B8+%D0%B2%D0%BE%D1%81%D1%81%D1%82%D0%B0%D0%BD%D0%BE%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5+%D0%BF%D0%B0%D1%80%D0%BE%D0%BB%D1%8F%2C+%D1%82%D0%BE+%D0%BF%D1%80%D0%BE%D1%81%D1%82%D0%BE+%D0%BF%D1%80%D0%BE%D0%B8%D0%B3%D0%BD%D0%BE%D1%80%D0%B8%D1%80%D1%83%D0%B9%D1%82%D0%B5+%D1%8D%D1%82%D0%BE+%D0%BF%D0%B8%D1%81%D1%8C%D0%BC%D0%BE.%3C%2Fp%3E%0A%09%09%09%09%09%09%3C%2Ftd%3E%0A%09%09%09%09%09%3C%2Ftr%3E%0A%09%09%09%09%3C%2Ftbody%3E%0A%09%09%09%3C%2Ftable%3E%0A%09%09%09%3C%2Ftd%3E%0A%09%09%3C%2Ftr%3E%0A%09%3C%2Ftbody%3E%0A%3C%2Ftable%3E%0A%0A%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+class%3D%22footer%22+width%3D%22100%25%22%3E%0A%09%3Ctbody%3E%0A%09%09%3Ctr%3E%0A%09%09%09%3Ctd%3E%7BSOCIAL_LINK%7D%0A%09%09%09%3Cp+class%3D%22footer-title%22%3E%7BSITE_TITLE%7D%3C%2Fp%3E%0A%09%09%09%3C%2Ftd%3E%0A%09%09%3C%2Ftr%3E%0A%09%3C%2Ftbody%3E%0A%3C%2Ftable%3E%0A', 'Восстановление пароля на сайте {SITE_NAME}', 'AUTH_FORGOT', 'Восстановление пароля на сайте'),
(22, '%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+width%3D%22100%25%22%3E%0D%0A%09%3Ctbody%3E%0D%0A%09%09%3Ctr%3E%0D%0A%09%09%09%3Ctd+align%3D%22center%22%3E%0D%0A%09%09%09%3Cdiv+class%3D%22logo%22%3E%3Ca+href%3D%22%7BURL%7D%22%3E%3Cimg+src%3D%22%7BLOGO%7D%22+%2F%3E+%3C%2Fa%3E%3C%2Fdiv%3E%0D%0A%0D%0A%09%09%09%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+class%3D%22responsive-table%22%3E%0D%0A%09%09%09%09%3Ctbody%3E%0D%0A%09%09%09%09%09%3Ctr%3E%0D%0A%09%09%09%09%09%09%3Ctd%3E%3Cimg+class%3D%22banner%22+src%3D%22%7BIMAGE_OTHER%7D%2Fcoins-balance.png%22+%2F%3E%3C%2Ftd%3E%0D%0A%09%09%09%09%09%3C%2Ftr%3E%0D%0A%09%09%09%09%09%3Ctr%3E%0D%0A%09%09%09%09%09%09%3Ctd+style%3D%22text-align%3A+center%3B%22%3E%0D%0A%09%09%09%09%09%09%3Cdiv+style%3D%22padding-left%3A+30px%3B+padding-right%3A+30px%3B+padding-bottom%3A+30px%3B%22%3E%0D%0A%09%09%09%09%09%09%3Ch1+class%3D%22title%22%3E%D0%92%D0%B0%D1%88+%D0%B1%D0%B0%D0%BB%D0%B0%D0%BD%D1%81+%D0%BF%D0%BE%D0%BF%D0%BE%D0%BB%D0%BD%D0%B5%D0%BD%21%3C%2Fh1%3E%0D%0A%0D%0A%09%09%09%09%09%09%3Ch3%3E%D0%A1%D1%83%D0%BC%D0%BC%D0%B0+%D0%BF%D0%BE%D0%BF%D0%BE%D0%BB%D0%BD%D0%B5%D0%BD%D0%B8%D1%8F+%3Cstrong%3E%7BSUMMA%7D%3C%2Fstrong%3E%3C%2Fh3%3E%0D%0A%09%09%09%09%09%09%7BNOTE%7D%0D%0A%0D%0A%09%09%09%09%09%09%3C%2Fdiv%3E%0D%0A%09%09%09%09%09%09%3C%2Ftd%3E%0D%0A%09%09%09%09%09%3C%2Ftr%3E%0D%0A%09%09%09%09%3C%2Ftbody%3E%0D%0A%09%09%09%3C%2Ftable%3E%0D%0A%09%09%09%3C%2Ftd%3E%0D%0A%09%09%3C%2Ftr%3E%0D%0A%09%3C%2Ftbody%3E%0D%0A%3C%2Ftable%3E%0D%0A%0D%0A%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+class%3D%22footer%22+width%3D%22100%25%22%3E%0D%0A%09%3Ctbody%3E%0D%0A%09%09%3Ctr%3E%0D%0A%09%09%09%3Ctd%3E%7BSOCIAL_LINK%7D%0D%0A%09%09%09%3Cp+class%3D%22footer-title%22%3E%7BSITE_TITLE%7D%3C%2Fp%3E%0D%0A%09%09%09%7BUNSUBCRIBE%7D%3C%2Ftd%3E%0D%0A%09%09%3C%2Ftr%3E%0D%0A%09%3C%2Ftbody%3E%0D%0A%3C%2Ftable%3E%0D%0A', 'Ваш баланс пополнен!', 'BALANCE', 'Пополнение баланса'),
(51, '%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+width%3D%22100%25%22%3E%0A%09%3Ctbody%3E%0A%09%09%3Ctr%3E%0A%09%09%09%3Ctd+align%3D%22center%22%3E%0A%09%09%09%3Cdiv+class%3D%22logo%22%3E%3Ca+href%3D%22%7BURL%7D%22%3E%3Cimg+src%3D%22%7BLOGO%7D%22+%2F%3E+%3C%2Fa%3E%3C%2Fdiv%3E%0A%0A%09%09%09%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+class%3D%22responsive-table+padding30%22%3E%0A%09%09%09%09%3Ctbody%3E%0A%09%09%09%09%09%3Ctr%3E%0A%09%09%09%09%09%09%3Ctd+style%3D%22text-align%3A+center%3B%22%3E%0A%09%09%09%09%09%09%3Ch2+class%3D%22title%22%3E%D0%97%D0%B4%D1%80%D0%B0%D0%B2%D1%81%D1%82%D0%B2%D1%83%D0%B9%D1%82%D0%B5%2C+%7BUSER_NAME%7D%3C%2Fh2%3E%0A%0A%09%09%09%09%09%09%3Cp%3E%D0%92%D0%B0%D1%88%D0%B5+%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5+%3Cstrong%3E%26laquo%3B%7BAD_TITLE%7D%26raquo%3B%3C%2Fstrong%3E+%D1%83%D1%81%D0%BF%D0%B5%D1%88%D0%BD%D0%BE+%D0%BF%D1%80%D0%BE%D1%88%D0%BB%D0%BE+%D0%BC%D0%BE%D0%B4%D0%B5%D1%80%D0%B0%D1%86%D0%B8%D1%8E+%D0%B8+%D0%BE%D0%BF%D1%83%D0%B1%D0%BB%D0%B8%D0%BA%D0%BE%D0%B2%D0%B0%D0%BD%D0%BE+%D0%B2+%D0%BA%D0%B0%D1%82%D0%B0%D0%BB%D0%BE%D0%B3%D0%B5%3C%2Fp%3E%0A%0A%09%09%09%09%09%09%3Cp%3E%D0%A0%D0%B5%D0%BA%D0%BE%D0%BC%D0%B5%D0%BD%D0%B4%D1%83%D0%B5%D0%BC+%D0%BF%D0%BE%D0%B4%D0%BA%D0%BB%D1%8E%D1%87%D0%B8%D1%82%D1%8C+%D0%B4%D0%BE%D0%BF%D0%BE%D0%BB%D0%BD%D0%B8%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D1%83%D1%8E+%D1%83%D1%81%D0%BB%D1%83%D0%B3%D1%83+%D0%B4%D0%BB%D1%8F+%D1%81%D0%B2%D0%BE%D0%B5%D0%B3%D0%BE+%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F%2C+%D0%B4%D0%BB%D1%8F+%D1%82%D0%BE%D0%B3%D0%BE%2C+%D1%87%D1%82%D0%BE%D0%B1%D1%8B+%D0%B5%D0%B3%D0%BE+%D1%83%D0%B2%D0%B8%D0%B4%D0%B5%D0%BB%D0%B8+%D0%BA%D0%B0%D0%BA+%D0%BC%D0%BE%D0%B6%D0%BD%D0%BE+%D0%B1%D0%BE%D0%BB%D1%8C%D1%88%D0%B5+%D0%BB%D1%8E%D0%B4%D0%B5%D0%B9.%3C%2Fp%3E%0A%0A%09%09%09%09%09%09%3Cdiv+style%3D%22text-align%3A+center%3B%22%3E%3Ca+class%3D%22button%22+href%3D%22%7BAD_LINK%7D%22+target%3D%22_blank%22%3E%D0%9F%D0%B5%D1%80%D0%B5%D0%B9%D1%82%D0%B8+%D0%BA+%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8E%3C%2Fa%3E%3C%2Fdiv%3E%0A%09%09%09%09%09%09%3C%2Ftd%3E%0A%09%09%09%09%09%3C%2Ftr%3E%0A%09%09%09%09%3C%2Ftbody%3E%0A%09%09%09%3C%2Ftable%3E%0A%09%09%09%3C%2Ftd%3E%0A%09%09%3C%2Ftr%3E%0A%09%3C%2Ftbody%3E%0A%3C%2Ftable%3E%0A%0A%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+class%3D%22footer%22+width%3D%22100%25%22%3E%0A%09%3Ctbody%3E%0A%09%09%3Ctr%3E%0A%09%09%09%3Ctd%3E%7BSOCIAL_LINK%7D%0A%09%09%09%3Cp+class%3D%22footer-title%22%3E%7BSITE_TITLE%7D%3C%2Fp%3E%0A%09%09%09%3C%2Ftd%3E%0A%09%09%3C%2Ftr%3E%0A%09%3C%2Ftbody%3E%0A%3C%2Ftable%3E%0A', 'Ваше объявление опубликовано - {SITE_NAME}', 'AD_MODERATION_PUBLISHED', 'Объявление прошло модерацию'),
(52, '%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+width%3D%22100%25%22%3E%0A%09%3Ctbody%3E%0A%09%09%3Ctr%3E%0A%09%09%09%3Ctd+align%3D%22center%22%3E%0A%09%09%09%3Cdiv+class%3D%22logo%22%3E%3Ca+href%3D%22%7BURL%7D%22%3E%3Cimg+src%3D%22%7BLOGO%7D%22+%2F%3E+%3C%2Fa%3E%3C%2Fdiv%3E%0A%0A%09%09%09%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+class%3D%22responsive-table+padding30%22%3E%0A%09%09%09%09%3Ctbody%3E%0A%09%09%09%09%09%3Ctr%3E%0A%09%09%09%09%09%09%3Ctd+style%3D%22text-align%3A+center%3B%22%3E%0A%09%09%09%09%09%09%3Ctable+bgcolor%3D%22%23ffffff%22+cellpadding%3D%220%22+cellspacing%3D%220%22+width%3D%22100%25%22%3E%0A%09%09%09%09%09%09%09%3Ctbody%3E%0A%09%09%09%09%09%09%09%09%3Ctr%3E%0A%09%09%09%09%09%09%09%09%09%3Ctd+valign%3D%22top%22%3E%0A%09%09%09%09%09%09%09%09%09%3Ch1+style%3D%22margin%3A+0px%3B%22%3E%7BSUBSCR_ADS_COUNT%7D+%D0%BD%D0%BE%D0%B2%D1%8B%D1%85+%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B9+%D0%BF%D0%BE+%D0%B2%D0%B0%D1%88%D0%B5%D0%B9%26nbsp%3B%D0%BF%D0%BE%D0%B4%D0%BF%D0%B8%D1%81%D0%BA%D0%B8%3C%2Fh1%3E%0A%09%09%09%09%09%09%09%09%09%3C%2Ftd%3E%0A%09%09%09%09%09%09%09%09%3C%2Ftr%3E%0A%09%09%09%09%09%09%09%3C%2Ftbody%3E%0A%09%09%09%09%09%09%3C%2Ftable%3E%0A%0A%09%09%09%09%09%09%3Cp%3E%D0%9F%D0%BE%D0%B4%D0%BF%D0%B8%D1%81%D0%BA%D0%B0+%D0%BD%D0%B0+%D0%BC%D0%B0%D0%B3%D0%B0%D0%B7%D0%B8%D0%BD%26nbsp%3B%26laquo%3B%7BSUBSCR_NAME%7D%26raquo%3B%3C%2Fp%3E%0A%0A%09%09%09%09%09%09%3Cp%3E%7BSUBSCR_ADS_LIST%7D%3C%2Fp%3E%0A%0A%09%09%09%09%09%09%3Cdiv+style%3D%22text-align%3A+center%3B%22%3E%3Ca+class%3D%22button%22+href%3D%22%7BSUBSCR_ALL_LINK%7D%22%3E%D0%9F%D0%B5%D1%80%D0%B5%D0%B9%D1%82%D0%B8+%D0%BA+%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F%D0%BC%3C%2Fa%3E%3C%2Fdiv%3E%0A%09%09%09%09%09%09%3C%2Ftd%3E%0A%09%09%09%09%09%3C%2Ftr%3E%0A%09%09%09%09%3C%2Ftbody%3E%0A%09%09%09%3C%2Ftable%3E%0A%09%09%09%3C%2Ftd%3E%0A%09%09%3C%2Ftr%3E%0A%09%3C%2Ftbody%3E%0A%3C%2Ftable%3E%0A%0A%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+class%3D%22footer%22+width%3D%22100%25%22%3E%0A%09%3Ctbody%3E%0A%09%09%3Ctr%3E%0A%09%09%09%3Ctd%3E%7BSOCIAL_LINK%7D%0A%09%09%09%3Cp+class%3D%22footer-title%22%3E%7BSITE_TITLE%7D%3C%2Fp%3E%0A%09%09%09%3C%2Ftd%3E%0A%09%09%3C%2Ftr%3E%0A%09%3C%2Ftbody%3E%0A%3C%2Ftable%3E%0A', 'По вашей подписки «{SUBSCR_NAME}» есть новые объявления', 'NEW_ADS_USER', 'Подписка на продавца'),
(28, '++++++%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+width%3D%22100%25%22%3E%0D%0A+++++++++%3Ctr%3E%0D%0A++++++++++++%3Ctd+align%3D%22center%22%3E%0D%0A%0D%0A++++++++++++%3Cdiv+class%3D%22logo%22+%3E%0D%0A++++++++++++++++++%3Ca+href%3D%22%7BURL%7D%22%3E%0D%0A+++++++++++++++++++++%3Cimg+src%3D%22%7BLOGO%7D%22++%2F%3E%0D%0A++++++++++++++++++%3C%2Fa%3E+++++++++%0D%0A++++++++++++%3C%2Fdiv%3E%0D%0A%0D%0A+++++++++++++++%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+class%3D%22responsive-table+padding30%22%3E%0D%0A%0D%0A++++++++++++++++++%3Ctr%3E%0D%0A+++++++++++++++++++++%3Ctd+align%3D%22center%22+%3E%0D%0A+%3Ch2+class%3D%22title%22+%3E%D0%9F%D0%BE%D0%B4%D1%82%D0%B2%D0%B5%D1%80%D0%B4%D0%B8%D1%82%D0%B5+%D1%8D%D0%BB%D0%B5%D0%BA%D1%82%D1%80%D0%BE%D0%BD%D0%BD%D1%8B%D0%B9+%D0%B0%D0%B4%D1%80%D0%B5%D1%81%3C%2Fh2%3E+%0D%0A%3Cp%3E%D0%94%D0%BB%D1%8F+%D0%BF%D0%BE%D0%B4%D1%82%D0%B2%D0%B5%D1%80%D0%B6%D0%B4%D0%B5%D0%BD%D0%B8%D1%8F+%D0%BF%D0%B5%D1%80%D0%B5%D0%B9%D0%B4%D0%B8%D1%82%D0%B5+%D0%BF%D0%BE+%3Ca+href%3D%22%7BACTIVATION_LINK%7D%22+%3E%D1%81%D1%81%D1%8B%D0%BB%D0%BA%D0%B5%3C%2Fa%3E%3C%2Fp%3E%0D%0A%3Cp%3E%D0%95%D1%81%D0%BB%D0%B8+%D0%B2%D1%8B+%D0%BD%D0%B5+%D1%83%D0%BA%D0%B0%D0%B7%D1%8B%D0%B2%D0%B0%D0%BB%D0%B8+%D1%8D%D0%BB%D0%B5%D0%BA%D1%82%D1%80%D0%BE%D0%BD%D0%BD%D1%8B%D0%B9+%D0%B0%D0%B4%D1%80%D0%B5%D1%81+%D0%B2+%D1%81%D0%B5%D1%80%D0%B2%D0%B8%D1%81%D0%B5+%C2%AB%7BSITE_NAME%7D%C2%BB%2C+%D1%82%D0%BE+%D0%BF%D1%80%D0%BE%D0%B8%D0%B3%D0%BD%D0%BE%D1%80%D0%B8%D1%80%D1%83%D0%B9%D1%82%D0%B5+%D1%8D%D1%82%D0%BE+%D0%BF%D0%B8%D1%81%D1%8C%D0%BC%D0%BE.%3C%2Fp%3E%0D%0A%3C%2Ftd%3E%0D%0A++++++++++++++++++%3C%2Ftr%3E%0D%0A%0D%0A+++++++++++++++%3C%2Ftable%3E%0D%0A%0D%0A%0D%0A++++++++++++%3C%2Ftd%3E%0D%0A+++++++++%3C%2Ftr%3E%0D%0A%0D%0A%0D%0A++++++%3C%2Ftable%3E%0D%0A%0D%0A%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+class%3D%22footer%22+width%3D%22100%25%22%3E%0D%0A%09%3Ctbody%3E%0D%0A%09%09%3Ctr%3E%0D%0A%09%09%09%3Ctd%3E%7BSOCIAL_LINK%7D%0D%0A%09%09%09%3Cp+class%3D%22footer-title%22%3E%7BSITE_TITLE%7D%3C%2Fp%3E%0D%0A%09%09%09%3C%2Ftd%3E%0D%0A%09%09%3C%2Ftr%3E%0D%0A%09%3C%2Ftbody%3E%0D%0A%3C%2Ftable%3E', 'Подтвердите свой e-mail на {SITE_NAME}', 'ACTIVATION_EMAIL', 'Подтверждение e-mail'),
(49, '++++++%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+width%3D%22100%25%22%3E%0D%0A%09%3Ctbody%3E%0D%0A%09%09%3Ctr%3E%0D%0A%09%09%09%3Ctd+align%3D%22center%22%3E%0D%0A%09%09%09%3Cdiv+class%3D%22logo%22%3E%3Ca+href%3D%22%7BURL%7D%22%3E%3Cimg+src%3D%22%7BLOGO%7D%22+%2F%3E+%3C%2Fa%3E%3C%2Fdiv%3E%0D%0A%0D%0A%09%09%09%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+class%3D%22responsive-table+padding30%22%3E%0D%0A%09%09%09%09%3Ctbody%3E%0D%0A%09%09%09%09%09%3Ctr%3E%0D%0A%09%09%09%09%09%09%3Ctd+style%3D%22text-align%3A+center%3B%22%3E%0D%0A%09%09%09%09%09%09%0D%0A%09%09%09%09%09%09%3Cdiv+class%3D%22icon-img%22%3E%3Cimg+src%3D%22%7BIMAGE_OTHER%7D%2Fcomment.png%22+%2F%3E%3C%2Fdiv%3E%0D%0A%0D%0A%09%09%09%09%09%09%3Ch2+class%3D%22title%22%3E%D0%97%D0%B4%D1%80%D0%B0%D0%B2%D1%81%D1%82%D0%B2%D1%83%D0%B9%D1%82%D0%B5%2C+%7BUSER_NAME%7D%3C%2Fh2%3E%0D%0A%0D%0A%09%09%09%09%09%09%3Cp%3E%D0%A3+%D0%B2%D0%B0%D1%81+%D0%B5%D1%81%D1%82%D1%8C+%D0%BD%D0%BE%D0%B2%D1%8B%D0%B9+%D0%BE%D1%82%D0%B2%D0%B5%D1%82+%D0%BD%D0%B0+%D0%92%D0%B0%D1%88+%D0%BA%D0%BE%D0%BC%D0%BC%D0%B5%D0%BD%D1%82%D0%B0%D1%80%D0%B8%D0%B9+%D0%B2+%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B8+%C2%AB%7BAD_TITLE%7D%C2%BB%3C%2Fp%3E%0D%0A%0D%0A+++++++++++++++++%3Cdiv+style%3D%22text-align%3A+center%3B%22+%3E%0D%0A+++++++++++++++++++%3Ca+href%3D%22%7BAD_LINK%7D%22+target%3D%22_blank%22+class%3D%22button%22%3E%D0%9F%D0%B5%D1%80%D0%B5%D0%B9%D1%82%D0%B8+%D0%BA+%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8E%3C%2Fa%3E%0D%0A+++++++++++++++++%3C%2Fdiv%3E%0D%0A%0D%0A%09%09%09%09%09%09%0D%0A%09%09%09%09%09%09%3C%2Ftd%3E%0D%0A%09%09%09%09%09%3C%2Ftr%3E%0D%0A%09%09%09%09%3C%2Ftbody%3E%0D%0A%09%09%09%3C%2Ftable%3E%0D%0A%09%09%09%3C%2Ftd%3E%0D%0A%09%09%3C%2Ftr%3E%0D%0A%09%3C%2Ftbody%3E%0D%0A%3C%2Ftable%3E%0D%0A%0D%0A%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+class%3D%22footer%22+width%3D%22100%25%22%3E%0D%0A%09%3Ctbody%3E%0D%0A%09%09%3Ctr%3E%0D%0A%09%09%09%3Ctd%3E%7BSOCIAL_LINK%7D%0D%0A%09%09%09%3Cp+class%3D%22footer-title%22%3E%7BSITE_TITLE%7D%3C%2Fp%3E%0D%0A%09%09%09%3Ca+href%3D%22%7BLINK_NOTIFICATIONS%7D%22+class%3D%22footer-unsubscribe%22+%3E%D0%A3%D0%BF%D1%80%D0%B0%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5+%D1%83%D0%B2%D0%B5%D0%B4%D0%BE%D0%BC%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F%D0%BC%D0%B8%3C%2Fa%3E%3C%2Ftd%3E%0D%0A%09%09%3C%2Ftr%3E%0D%0A%09%3C%2Ftbody%3E%0D%0A%3C%2Ftable%3E', 'Ответ на ваш комментарий - {SITE_NAME}', 'NEW_ANSWER_COMMENT', 'Ответ на комментарий в объявлении'),
(35, '++++++%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+width%3D%22100%25%22%3E%0D%0A+++++++++%3Ctr%3E%0D%0A++++++++++++%3Ctd+align%3D%22center%22%3E%0D%0A%0D%0A++++++++++++%3Cdiv+class%3D%22logo%22+%3E%0D%0A++++++++++++++++++%3Ca+href%3D%22%7BURL%7D%22%3E%0D%0A+++++++++++++++++++++%3Cimg+src%3D%22%7BLOGO%7D%22++%2F%3E%0D%0A++++++++++++++++++%3C%2Fa%3E+++++++++%0D%0A++++++++++++%3C%2Fdiv%3E%0D%0A%0D%0A+++++++++++++++%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+class%3D%22responsive-table+padding30%22%3E%0D%0A%0D%0A++++++++++++++++++%3Ctr%3E%0D%0A+++++++++++++++++++++%3Ctd+align%3D%22center%22+%3E%0D%0A%3Cp%3E%D0%94%D0%BB%D1%8F+%D0%BF%D0%BE%D0%B4%D1%82%D0%B2%D0%B5%D1%80%D0%B6%D0%B4%D0%B5%D0%BD%D0%B8%D1%8F+%D1%80%D0%B5%D0%B3%D0%B8%D1%81%D1%82%D1%80%D0%B0%D1%86%D0%B8%D0%B8+%D1%83%D0%BA%D0%B0%D0%B6%D0%B8%D1%82%D0%B5+%D0%BA%D0%BE%D0%B4%3A%3C%2Fp%3E%0D%0A+%3Ch1+class%3D%22title%22+%3E%7BCODE%7D%3C%2Fh1%3E+%0D%0A%3C%2Ftd%3E%0D%0A++++++++++++++++++%3C%2Ftr%3E%0D%0A%0D%0A+++++++++++++++%3C%2Ftable%3E%0D%0A%0D%0A%0D%0A++++++++++++%3C%2Ftd%3E%0D%0A+++++++++%3C%2Ftr%3E%0D%0A+++++++++%0D%0A++++++++++%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+width%3D%22100%25%22+class%3D%22footer%22+%3E%0D%0A+++++++++++++%3Ctr%3E%0D%0A++++++++++++++++%3Ctd%3E%0D%0A++++++++++++++++++++++%7BSOCIAL_LINK%7D%0D%0A++++++++++++++++++++++%3Cp+class%3D%22footer-title%22+%3E%7BSITE_TITLE%7D%3C%2Fp%3E%0D%0A++++++++++++++++%3C%2Ftd%3E%0D%0A+++++++++++++%3C%2Ftr%3E%0D%0A++++++++++%3C%2Ftable%3E%0D%0A%0D%0A++++++%3C%2Ftable%3E', 'Код подтверждения регистрации', 'SEND_EMAIL_CODE', 'Код подтверждения регистрации'),
(37, '%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+width%3D%22100%25%22%3E%0D%0A%09%3Ctbody%3E%0D%0A%09%09%3Ctr%3E%0D%0A%09%09%09%3Ctd+align%3D%22center%22%3E%0D%0A%09%09%09%3Cdiv+class%3D%22logo%22%3E%3Ca+href%3D%22%7BURL%7D%22%3E%3Cimg+src%3D%22%7BLOGO%7D%22+%2F%3E+%3C%2Fa%3E%3C%2Fdiv%3E%0D%0A%0D%0A%09%09%09%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+class%3D%22responsive-table+padding30%22%3E%0D%0A%09%09%09%09%3Ctbody%3E%0D%0A%09%09%09%09%09%3Ctr%3E%0D%0A%09%09%09%09%09%09%3Ctd+style%3D%22text-align%3A+center%3B%22%3E%0D%0A++++++++++++++++++++++++++++++++++++++++++++++++%3Ch2+class%3D%22title%22%3E%D0%9F%D1%83%D0%B1%D0%BB%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D1%8F+%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F%3C%2Fh2%3E%0D%0A%09%09%09%09%09%09%3Cul%3E%0D%0A%09%09%09%09%09%09%09%3Cli%3E%D0%9E%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5%3A+%3Ca+href%3D%22%7BADS_LINK%7D%22%3E%7BADS_TITLE%7D%3C%2Fa%3E%3C%2Fli%3E%0D%0A%09%09%09%09%09%09%09%3Cli%3E%D0%90%D0%B2%D1%82%D0%BE%D1%80%3A+%7BUSER_NAME%7D+%3Ca+href%3D%22%7BUSER_LINK%7D%22%3E%D0%BF%D1%80%D0%BE%D1%84%D0%B8%D0%BB%D1%8C%3C%2Fa%3E%3C%2Fli%3E%0D%0A%09%09%09%09%09%09%3C%2Ful%3E%0D%0A%09%09%09%09%09%09%3C%2Ftd%3E%0D%0A%09%09%09%09%09%3C%2Ftr%3E%0D%0A%09%09%09%09%3C%2Ftbody%3E%0D%0A%09%09%09%3C%2Ftable%3E%0D%0A%09%09%09%3C%2Ftd%3E%0D%0A%09%09%3C%2Ftr%3E%0D%0A%09%3C%2Ftbody%3E%0D%0A%3C%2Ftable%3E%0D%0A%0D%0A%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+class%3D%22footer%22+width%3D%22100%25%22%3E%0D%0A%09%3Ctbody%3E%0D%0A%09%09%3Ctr%3E%0D%0A%09%09%09%3Ctd%3E%0D%0A%09%09%09%3Cdiv+style%3D%22text-align%3A+center%3B%22%3E%3Ca+class%3D%22button%22+href%3D%22%7BADMIN_LINK%7D%22+target%3D%22_blank%22%3E%D0%9F%D0%B5%D1%80%D0%B5%D0%B9%D1%82%D0%B8+%D0%B2+%D0%BF%D0%B0%D0%BD%D0%B5%D0%BB%D1%8C+%D1%83%D0%BF%D1%80%D0%B0%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F%3C%2Fa%3E%3C%2Fdiv%3E%0D%0A%09%09%09%3C%2Ftd%3E%0D%0A%09%09%3C%2Ftr%3E%0D%0A%09%3C%2Ftbody%3E%0D%0A%3C%2Ftable%3E%0D%0A', 'Публикация объявления', 'ADMIN_NEW_ADS', 'Публикация объявления'),
(38, '%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+width%3D%22100%25%22%3E%0D%0A%09%3Ctbody%3E%0D%0A%09%09%3Ctr%3E%0D%0A%09%09%09%3Ctd+align%3D%22center%22%3E%0D%0A%09%09%09%3Cdiv+class%3D%22logo%22%3E%3Ca+href%3D%22%7BURL%7D%22%3E%3Cimg+src%3D%22%7BLOGO%7D%22+%2F%3E+%3C%2Fa%3E%3C%2Fdiv%3E%0D%0A%0D%0A%09%09%09%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+class%3D%22responsive-table+padding30%22%3E%0D%0A%09%09%09%09%3Ctbody%3E%0D%0A%09%09%09%09%09%3Ctr%3E%0D%0A%09%09%09%09%09%09%3Ctd%3E%0D%0A%09%09%09%09%09%09%3Ch2+class%3D%22title%22%3E%D0%97%D0%B4%D1%80%D0%B0%D0%B2%D1%81%D1%82%D0%B2%D1%83%D0%B9%D1%82%D0%B5%21%3C%2Fh2%3E%0D%0A%09%09%09%09%09%09%3C%2Ftd%3E%0D%0A%09%09%09%09%09%3C%2Ftr%3E%0D%0A%09%09%09%09%09%3Ctr%3E%0D%0A%09%09%09%09%09%09%3Ctd%3E%0D%0A%09%09%09%09%09%09%3Cp+class%3D%22text%22%3E%D0%92%D1%8B+%D0%BF%D0%BE%D0%BB%D1%83%D1%87%D0%B8%D0%BB%D0%B8+%D1%8D%D1%82%D0%BE+%D0%BF%D0%B8%D1%81%D1%8C%D0%BC%D0%BE%2C+%D1%82.%D0%BA.+%D0%B7%D0%B0%D0%BF%D1%80%D0%BE%D1%81%D0%B8%D0%BB%D0%B8+%D0%B2%D0%BE%D1%81%D1%81%D1%82%D0%B0%D0%BD%D0%BE%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5+%D0%BF%D0%B0%D1%80%D0%BE%D0%BB%D1%8F+%D0%B4%D0%BB%D1%8F+%D0%B2%D1%85%D0%BE%D0%B4%D0%B0+%D0%B2+%D0%9F%D0%B0%D0%BD%D0%B5%D0%BB%D1%8C+%D0%A3%D0%BF%D1%80%D0%B0%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F+%D0%BD%D0%B0+%D1%81%D0%B0%D0%B9%D1%82%D0%B5+%3Ca+href%3D%22%7BURL%7D%22%3E%7BURL%7D%3C%2Fa%3E%3C%2Fp%3E%0D%0A%0D%0A%09%09%09%09%09%09%3Cul%3E%0D%0A%09%09%09%09%09%09%09%3Cli%3E%D0%92%D0%B0%D1%88+%D0%BB%D0%BE%D0%B3%D0%B8%D0%BD%3A+%3Cstrong%3E%7BUSER_EMAIL%7D%3C%2Fstrong%3E%3C%2Fli%3E%0D%0A%09%09%09%09%09%09%09%3Cli%3E%D0%92%D0%B0%D1%88+%D0%BD%D0%BE%D0%B2%D1%8B%D0%B9+%D0%BF%D0%B0%D1%80%D0%BE%D0%BB%D1%8C%3A+%3Cstrong%3E%7BUSER_PASS%7D%3C%2Fstrong%3E%3C%2Fli%3E%0D%0A%09%09%09%09%09%09%3C%2Ful%3E%0D%0A%0D%0A%09%09%09%09%09%09%3C%2Ftd%3E%0D%0A%09%09%09%09%09%3C%2Ftr%3E%0D%0A%09%09%09%09%3C%2Ftbody%3E%0D%0A%09%09%09%3C%2Ftable%3E%0D%0A%09%09%09%3C%2Ftd%3E%0D%0A%09%09%3C%2Ftr%3E%0D%0A%09%3C%2Ftbody%3E%0D%0A%3C%2Ftable%3E%0D%0A%0D%0A%3Ctable+align%3D%22center%22+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+class%3D%22footer%22%3E%0D%0A%09%3Ctbody%3E%0D%0A%09%09%3Ctr%3E%0D%0A%09%09%09%3Ctd%3E%0D%0A%09%09%09%3Cdiv+style%3D%22text-align%3A+center%3B%22%3E%3Ca+class%3D%22button%22+href%3D%22%7BADMIN_LINK%7D%22+target%3D%22_blank%22%3E%D0%9F%D0%B5%D1%80%D0%B5%D0%B9%D1%82%D0%B8+%D0%B2+%D0%BF%D0%B0%D0%BD%D0%B5%D0%BB%D1%8C+%D1%83%D0%BF%D1%80%D0%B0%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F%3C%2Fa%3E%3C%2Fdiv%3E%0D%0A%09%09%09%3C%2Ftd%3E%0D%0A%09%09%3C%2Ftr%3E%0D%0A%09%3C%2Ftbody%3E%0D%0A%3C%2Ftable%3E%0D%0A', 'Восстановление пароля в панель управления', 'ADMIN_REMIND_PASS', 'Восстановление пароля в панель управления'),
(50, '%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+width%3D%22100%25%22%3E%0D%0A%09%3Ctbody%3E%0D%0A%09%09%3Ctr%3E%0D%0A%09%09%09%3Ctd+align%3D%22center%22%3E%0D%0A%09%09%09%3Cdiv+class%3D%22logo%22%3E%3Ca+href%3D%22%7BURL%7D%22%3E%3Cimg+src%3D%22%7BLOGO%7D%22+%2F%3E+%3C%2Fa%3E%3C%2Fdiv%3E%0D%0A%0D%0A%09%09%09%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+class%3D%22responsive-table+padding30%22%3E%0D%0A%09%09%09%09%3Ctbody%3E%0D%0A%09%09%09%09%09%3Ctr%3E%0D%0A%09%09%09%09%09%09%3Ctd+style%3D%22text-align%3A+center%3B%22%3E%0D%0A%09%09%09%09%09%09%3Ctable+bgcolor%3D%22%23ffffff%22+cellpadding%3D%220%22+cellspacing%3D%220%22+width%3D%22100%25%22%3E%0D%0A%09%09%09%09%09%09%09%3Ctbody%3E%0D%0A%09%09%09%09%09%09%09%09%3Ctr%3E%0D%0A%09%09%09%09%09%09%09%09%09%3Ctd+valign%3D%22top%22%3E%0D%0A%09%09%09%09%09%09%09%09%09%3Ch1+style%3D%22margin%3A+0px%3B%22+%3E%7BSUBSCR_ADS_COUNT%7D+%D0%BD%D0%BE%D0%B2%D1%8B%D1%85+%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B9+%D0%BF%D0%BE+%D0%B2%D0%B0%D1%88%D0%B5%D0%B9%C2%A0%D0%BF%D0%BE%D0%B4%D0%BF%D0%B8%D1%81%D0%BA%D0%B8%3C%2Fh1%3E%0D%0A%09%09%09%09%09%09%09%09%09%3C%2Ftd%3E%0D%0A%09%09%09%09%09%09%09%09%3C%2Ftr%3E%0D%0A%09%09%09%09%09%09%09%3C%2Ftbody%3E%0D%0A%09%09%09%09%09%09%3C%2Ftable%3E%0D%0A%0D%0A%09%09%09%09%09%09%3Cp%3E%D0%9F%D0%BE%D0%B4%D0%BF%D0%B8%D1%81%D0%BA%D0%B0+%C2%AB%7BSUBSCR_NAME%7D%C2%BB%3C%2Fp%3E%0D%0A%0D%0A%09%09%09%09%09%09%3Cp%3E%7BSUBSCR_ADS_LIST%7D%3C%2Fp%3E%0D%0A%0D%0A%09%09%09%09%09%09%3Cdiv+style%3D%22text-align%3A+center%3B%22%3E%3Ca+class%3D%22button%22++href%3D%22%7BSUBSCR_ALL_LINK%7D%22%3E%D0%9F%D0%B5%D1%80%D0%B5%D0%B9%D1%82%D0%B8+%D0%BA+%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F%D0%BC%3C%2Fa%3E%3C%2Fdiv%3E%0D%0A%0D%0A%09%09%09%09%09%09%3C%2Ftd%3E%0D%0A%09%09%09%09%09%3C%2Ftr%3E%0D%0A%09%09%09%09%3C%2Ftbody%3E%0D%0A%09%09%09%3C%2Ftable%3E%0D%0A%09%09%09%3C%2Ftd%3E%0D%0A%09%09%3C%2Ftr%3E%0D%0A%09%3C%2Ftbody%3E%0D%0A%3C%2Ftable%3E%0D%0A%0D%0A%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+class%3D%22footer%22+width%3D%22100%25%22%3E%0D%0A%09%3Ctbody%3E%0D%0A%09%09%3Ctr%3E%0D%0A%09%09%09%3Ctd%3E%7BSOCIAL_LINK%7D%0D%0A%09%09%09%3Cp+class%3D%22footer-title%22%3E%7BSITE_TITLE%7D%3C%2Fp%3E%0D%0A%3Cdiv+style%3D%22text-align%3A+center%3B+margin-top%3A+10px%3B%22%3E%3Ca+href%3D%22%7BSUBSCR_DISABLE%7D%22%3E%D0%9E%D1%82%D0%BF%D0%B8%D1%81%D0%B0%D1%82%D1%8C%D1%81%D1%8F+%D0%BE%D1%82+%D1%80%D0%B0%D1%81%D1%81%D1%8B%D0%BB%D0%BA%D0%B8%3C%2Fa%3E%3C%2Fdiv%3E%0D%0A%09%09%09%3C%2Ftd%3E%0D%0A%09%09%3C%2Ftr%3E%0D%0A%09%3C%2Ftbody%3E%0D%0A%3C%2Ftable%3E%0D%0A', 'Новые объявления по подписки - {SITE_NAME}', 'NEW_ADS_SUBSCRIPTIONS', 'Оповещение о новых объявлениях'),
(39, '%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+width%3D%22100%25%22%3E%0D%0A%09%3Ctbody%3E%0D%0A%09%09%3Ctr%3E%0D%0A%09%09%09%3Ctd+align%3D%22center%22%3E%0D%0A%09%09%09%3Cdiv+class%3D%22logo%22%3E%3Ca+href%3D%22%7BURL%7D%22%3E%3Cimg+src%3D%22%7BLOGO%7D%22+%2F%3E+%3C%2Fa%3E%3C%2Fdiv%3E%0D%0A%0D%0A%09%09%09%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+class%3D%22responsive-table+padding30%22%3E%0D%0A%09%09%09%09%3Ctbody%3E%0D%0A%09%09%09%09%09%3Ctr%3E%0D%0A%09%09%09%09%09%09%3Ctd+style%3D%22text-align%3A+center%3B%22%3E%0D%0A++++++++++++++++++++++++++++++++++++++++++++++++%3Ch2+class%3D%22title%22%3E%D0%A0%D0%B5%D0%B3%D0%B8%D1%81%D1%82%D1%80%D0%B0%D1%86%D0%B8%D1%8F+%D0%BD%D0%BE%D0%B2%D0%BE%D0%B3%D0%BE+%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F%3C%2Fh2%3E%0D%0A++++++++++++++++++++++++%3Cul%3E%0D%0A+++++++++++++++++++++++++++%3Cli%3E%D0%98%D0%BC%D1%8F%3A+%7BUSER_NAME%7D%3C%2Fli%3E%0D%0A+++++++++++++++++++++++++++%3Cli%3EEmail%3A+%7BUSER_EMAIL%7D%3C%2Fli%3E%0D%0A+++++++++++++++++++++++++++%3Cli%3E%D0%A2%D0%B5%D0%BB%D0%B5%D1%84%D0%BE%D0%BD%3A+%7BUSER_PHONE%7D%3C%2Fli%3E%0D%0A+++++++++++++++++++++++++++%3Cli%3E%D0%A0%D0%B0%D1%81%D0%BF%D0%BE%D0%BB%D0%BE%D0%B6%D0%B5%D0%BD%D0%B8%D0%B5%3A+%7BUSER_GEO%7D%3C%2Fli%3E%0D%0A++++++++++++++++++++++++%3C%2Ful%3E%0D%0A%09%09%09%09%09%09%3C%2Ftd%3E%0D%0A%09%09%09%09%09%3C%2Ftr%3E%0D%0A%09%09%09%09%3C%2Ftbody%3E%0D%0A%09%09%09%3C%2Ftable%3E%0D%0A%09%09%09%3C%2Ftd%3E%0D%0A%09%09%3C%2Ftr%3E%0D%0A%09%3C%2Ftbody%3E%0D%0A%3C%2Ftable%3E%0D%0A%0D%0A%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+class%3D%22footer%22+width%3D%22100%25%22%3E%0D%0A%09%3Ctbody%3E%0D%0A%09%09%3Ctr%3E%0D%0A%09%09%09%3Ctd%3E%0D%0A%09%09%09%3Cdiv+style%3D%22text-align%3A+center%3B%22%3E%3Ca+class%3D%22button%22+href%3D%22%7BADMIN_LINK%7D%22+target%3D%22_blank%22%3E%D0%9F%D0%B5%D1%80%D0%B5%D0%B9%D1%82%D0%B8+%D0%B2+%D0%BF%D0%B0%D0%BD%D0%B5%D0%BB%D1%8C+%D1%83%D0%BF%D1%80%D0%B0%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F%3C%2Fa%3E%3C%2Fdiv%3E%0D%0A%09%09%09%3C%2Ftd%3E%0D%0A%09%09%3C%2Ftr%3E%0D%0A%09%3C%2Ftbody%3E%0D%0A%3C%2Ftable%3E%0D%0A', 'Регистрация пользователя на сайте {SITE_NAME}', 'ADMIN_NEW_USER', 'Регистрация пользователя'),
(40, '%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+width%3D%22100%25%22%3E%0D%0A%09%3Ctbody%3E%0D%0A%09%09%3Ctr%3E%0D%0A%09%09%09%3Ctd+align%3D%22center%22%3E%0D%0A%09%09%09%3Cdiv+class%3D%22logo%22%3E%3Ca+href%3D%22%7BURL%7D%22%3E%3Cimg+src%3D%22%7BLOGO%7D%22+%2F%3E+%3C%2Fa%3E%3C%2Fdiv%3E%0D%0A%0D%0A%09%09%09%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+class%3D%22responsive-table+padding30%22%3E%0D%0A%09%09%09%09%3Ctbody%3E%0D%0A%09%09%09%09%09%3Ctr%3E%0D%0A%09%09%09%09%09%09%3Ctd+style%3D%22text-align%3A+center%3B%22%3E%0D%0A++++++++++++++++++++++++++++++++++++++++++++++++%3Ch2+class%3D%22title%22%3E%D0%9D%D0%BE%D0%B2%D0%B0%D1%8F+%D0%BF%D1%80%D0%BE%D0%B4%D0%B0%D0%B6%D0%B0%3C%2Fh2%3E%0D%0A%09%09%09%09%09%09%3Cul%3E%0D%0A%09%09%09%09%09%09%09%3Cli%3E%D0%9D%D0%B0%D0%B8%D0%BC%D0%B5%D0%BD%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5%3A+%7BORDER_TITLE%7D%3C%2Fli%3E%0D%0A%09%09%09%09%09%09%09%3Cli%3E%D0%A1%D1%83%D0%BC%D0%BC%D0%B0+%D0%B7%D0%B0%D0%BA%D0%B0%D0%B7%D0%B0%3A+%7BORDER_PRICE%7D%3C%2Fli%3E%0D%0A%09%09%09%09%09%09%09%3Cli%3E%D0%9F%D0%BE%D0%BA%D1%83%D0%BF%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%3A+%7BUSER_NAME%7D%C2%A0%3Ca+href%3D%22%7BUSER_LINK%7D%22%3E%D0%BF%D1%80%D0%BE%D1%84%D0%B8%D0%BB%D1%8C%3C%2Fa%3E%3C%2Fli%3E%0D%0A%09%09%09%09%09%09%3C%2Ful%3E%0D%0A%09%09%09%09%09%09%3C%2Ftd%3E%0D%0A%09%09%09%09%09%3C%2Ftr%3E%0D%0A%09%09%09%09%3C%2Ftbody%3E%0D%0A%09%09%09%3C%2Ftable%3E%0D%0A%09%09%09%3C%2Ftd%3E%0D%0A%09%09%3C%2Ftr%3E%0D%0A%09%3C%2Ftbody%3E%0D%0A%3C%2Ftable%3E%0D%0A%0D%0A%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+class%3D%22footer%22+width%3D%22100%25%22%3E%0D%0A%09%3Ctbody%3E%0D%0A%09%09%3Ctr%3E%0D%0A%09%09%09%3Ctd%3E%0D%0A%09%09%09%3Cdiv+style%3D%22text-align%3A+center%3B%22%3E%3Ca+class%3D%22button%22+href%3D%22%7BADMIN_LINK%7D%22+target%3D%22_blank%22%3E%D0%9F%D0%B5%D1%80%D0%B5%D0%B9%D1%82%D0%B8+%D0%B2+%D0%BF%D0%B0%D0%BD%D0%B5%D0%BB%D1%8C+%D1%83%D0%BF%D1%80%D0%B0%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F%3C%2Fa%3E%3C%2Fdiv%3E%0D%0A%09%09%09%3C%2Ftd%3E%0D%0A%09%09%3C%2Ftr%3E%0D%0A%09%3C%2Ftbody%3E%0D%0A%3C%2Ftable%3E%0D%0A', 'Продажа на сайте {SITE_NAME}', 'ADMIN_NEW_BUY', 'Новая продажа'),
(42, '%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+width%3D%22100%25%22%3E%0D%0A%09%3Ctbody%3E%0D%0A%09%09%3Ctr%3E%0D%0A%09%09%09%3Ctd+align%3D%22center%22%3E%0D%0A%09%09%09%3Cdiv+class%3D%22logo%22%3E%3Ca+href%3D%22%7BURL%7D%22%3E%3Cimg+src%3D%22%7BLOGO%7D%22++%2F%3E+%3C%2Fa%3E%3C%2Fdiv%3E%0D%0A%0D%0A%09%09%09%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+class%3D%22responsive-table+padding30%22%3E%0D%0A%09%09%09%09%3Ctbody%3E%0D%0A%09%09%09%09%09%3Ctr%3E%0D%0A%09%09%09%09%09%09%3Ctd+style%3D%22text-align%3A+center%3B%22%3E%0D%0A%09%09%09%09%09%09%0D%0A%09%09%09%09%09%09%3Cdiv+class%3D%22icon-img%22%3E%3Cimg+src%3D%22%7BSERVICE_IMAGE%7D%22+%2F%3E%3C%2Fdiv%3E%0D%0A%0D%0A%09%09%09%09%09%09%3Ch2+class%3D%22title%22%3E%D0%97%D0%B4%D1%80%D0%B0%D0%B2%D1%81%D1%82%D0%B2%D1%83%D0%B9%D1%82%D0%B5%2C+%7BUSER_NAME%7D%3C%2Fh2%3E%0D%0A%0D%0A%09%09%09%09%09%09%3Cp%3E%D0%A1%D1%80%D0%BE%D0%BA+%D0%B4%D0%B5%D0%B9%D1%81%D1%82%D0%B2%D0%B8%D1%8F+%D1%83%D1%81%D0%BB%D1%83%D0%B3%D0%B8+%22%7BSERVICE_NAME%7D%22+%D0%B4%D0%BB%D1%8F+%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F+%7BAD_LINK%7D+%D0%B7%D0%B0%D0%BA%D0%BE%D0%BD%D1%87%D0%B8%D0%BB%D1%81%D1%8F.%3C%2Fp%3E%0D%0A%0D%0A%09%09%09%09%09%09%3Cp%3E%D0%94%D0%BB%D1%8F+%D0%BF%D0%BE%D0%B4%D0%BA%D0%BB%D1%8E%D1%87%D0%B5%D0%BD%D0%B8%D1%8F+%D1%83%D1%81%D0%BB%D1%83%D0%B3+%D0%BF%D0%B5%D1%80%D0%B5%D0%B9%D0%B4%D0%B8%D1%82%D0%B5+%D0%B2+%D0%BA%D0%B0%D1%80%D1%82%D0%BE%D1%87%D0%BA%D1%83+%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F%3C%2Fp%3E%0D%0A%09%09%09%09%09%09%0D%0A%09%09%09%09%09%09%3C%2Ftd%3E%0D%0A%09%09%09%09%09%3C%2Ftr%3E%0D%0A%09%09%09%09%3C%2Ftbody%3E%0D%0A%09%09%09%3C%2Ftable%3E%0D%0A%09%09%09%3C%2Ftd%3E%0D%0A%09%09%3C%2Ftr%3E%0D%0A%09%3C%2Ftbody%3E%0D%0A%3C%2Ftable%3E%0D%0A%0D%0A%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+class%3D%22footer%22+width%3D%22100%25%22%3E%0D%0A%09%3Ctbody%3E%0D%0A%09%09%3Ctr%3E%0D%0A%09%09%09%3Ctd%3E%7BSOCIAL_LINK%7D%0D%0A%09%09%09%3Cp+class%3D%22footer-title%22%3E%7BSITE_TITLE%7D%3C%2Fp%3E%0D%0A%09%09%09%3Ca+href%3D%22%7BLINK_NOTIFICATIONS%7D%22+class%3D%22footer-unsubscribe%22+%3E%D0%A3%D0%BF%D1%80%D0%B0%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5+%D1%83%D0%B2%D0%B5%D0%B4%D0%BE%D0%BC%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F%D0%BC%D0%B8%3C%2Fa%3E%3C%2Ftd%3E%0D%0A%09%09%3C%2Ftr%3E%0D%0A%09%3C%2Ftbody%3E%0D%0A%3C%2Ftable%3E', 'Окончание действия услуги - {SITE_NAME}', 'SERVICE_END_AD', 'Окончание действия услуги'),
(43, '++++++%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+width%3D%22100%25%22%3E%0D%0A%09%3Ctbody%3E%0D%0A%09%09%3Ctr%3E%0D%0A%09%09%09%3Ctd+align%3D%22center%22%3E%0D%0A%09%09%09%3Cdiv+class%3D%22logo%22%3E%3Ca+href%3D%22%7BURL%7D%22%3E%3Cimg+src%3D%22%7BLOGO%7D%22++%2F%3E+%3C%2Fa%3E%3C%2Fdiv%3E%0D%0A%0D%0A%09%09%09%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+class%3D%22responsive-table+padding30%22%3E%0D%0A%09%09%09%09%3Ctbody%3E%0D%0A%09%09%09%09%09%3Ctr%3E%0D%0A%09%09%09%09%09%09%3Ctd+style%3D%22text-align%3A+center%3B%22%3E%0D%0A%09%09%09%09%09%09%0D%0A%09%09%09%09%09%09%3Cdiv+class%3D%22icon-img%22%3E%3Cimg+src%3D%22%7BIMAGE_OTHER%7D%2Fnew-messages-img.png%22+%2F%3E%3C%2Fdiv%3E%0D%0A%0D%0A%09%09%09%09%09%09%3Ch2+class%3D%22title%22%3E%D0%97%D0%B4%D1%80%D0%B0%D0%B2%D1%81%D1%82%D0%B2%D1%83%D0%B9%D1%82%D0%B5%2C+%7BUSER_NAME%7D%3C%2Fh2%3E%0D%0A%0D%0A%09%09%09%09%09%09%3Cp%3E%D0%A3+%D0%B2%D0%B0%D1%81+%D0%B5%D1%81%D1%82%D1%8C+%D0%BD%D0%BE%D0%B2%D1%8B%D0%B5+%D0%BD%D0%B5%D0%BF%D1%80%D0%BE%D1%87%D0%B8%D1%82%D0%B0%D0%BD%D0%BD%D1%8B%D0%B5+%D1%81%D0%BE%D0%BE%D0%B1%D1%89%D0%B5%D0%BD%D0%B8%D1%8F%3C%2Fp%3E%0D%0A%0D%0A+++++++++++++++++%3Cdiv+style%3D%22text-align%3A+center%3B%22+%3E%0D%0A+++++++++++++++++++%3Ca+href%3D%22%7BPROFILE_LINK%7D%22+target%3D%22_blank%22+class%3D%22button%22%3E%D0%9F%D0%B5%D1%80%D0%B5%D0%B9%D1%82%D0%B8+%D0%B2+%D0%BF%D1%80%D0%BE%D1%84%D0%B8%D0%BB%D1%8C%3C%2Fa%3E%0D%0A+++++++++++++++++%3C%2Fdiv%3E%0D%0A%0D%0A%09%09%09%09%09%09%0D%0A%09%09%09%09%09%09%3C%2Ftd%3E%0D%0A%09%09%09%09%09%3C%2Ftr%3E%0D%0A%09%09%09%09%3C%2Ftbody%3E%0D%0A%09%09%09%3C%2Ftable%3E%0D%0A%09%09%09%3C%2Ftd%3E%0D%0A%09%09%3C%2Ftr%3E%0D%0A%09%3C%2Ftbody%3E%0D%0A%3C%2Ftable%3E%0D%0A%0D%0A%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+class%3D%22footer%22+width%3D%22100%25%22%3E%0D%0A%09%3Ctbody%3E%0D%0A%09%09%3Ctr%3E%0D%0A%09%09%09%3Ctd%3E%7BSOCIAL_LINK%7D%0D%0A%09%09%09%3Cp+class%3D%22footer-title%22%3E%7BSITE_TITLE%7D%3C%2Fp%3E%0D%0A%09%09%09%3Ca+href%3D%22%7BLINK_NOTIFICATIONS%7D%22+class%3D%22footer-unsubscribe%22+%3E%D0%A3%D0%BF%D1%80%D0%B0%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5+%D1%83%D0%B2%D0%B5%D0%B4%D0%BE%D0%BC%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F%D0%BC%D0%B8%3C%2Fa%3E%3C%2Ftd%3E%0D%0A%09%09%3C%2Ftr%3E%0D%0A%09%3C%2Ftbody%3E%0D%0A%3C%2Ftable%3E', 'У вас есть новые сообщения - {SITE_NAME}', 'NEW_MESSAGE', 'Оповещение о новых сообщениях'),
(44, '++++++%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+width%3D%22100%25%22%3E%0D%0A%09%3Ctbody%3E%0D%0A%09%09%3Ctr%3E%0D%0A%09%09%09%3Ctd+align%3D%22center%22%3E%0D%0A%09%09%09%3Cdiv+class%3D%22logo%22%3E%3Ca+href%3D%22%7BURL%7D%22%3E%3Cimg+src%3D%22%7BLOGO%7D%22++%2F%3E+%3C%2Fa%3E%3C%2Fdiv%3E%0D%0A%0D%0A%09%09%09%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+class%3D%22responsive-table+padding30%22%3E%0D%0A%09%09%09%09%3Ctbody%3E%0D%0A%09%09%09%09%09%3Ctr%3E%0D%0A%09%09%09%09%09%09%3Ctd+style%3D%22text-align%3A+center%3B%22%3E%0D%0A%09%09%09%09%09%09%0D%0A%09%09%09%09%09%09%3Cdiv+class%3D%22icon-img%22%3E%3Cimg+src%3D%22%7BIMAGE_OTHER%7D%2Flaw.png%22+%2F%3E%3C%2Fdiv%3E%0D%0A%0D%0A%09%09%09%09%09%09%3Ch2+class%3D%22title%22%3E%D0%97%D0%B4%D1%80%D0%B0%D0%B2%D1%81%D1%82%D0%B2%D1%83%D0%B9%D1%82%D0%B5%2C+%7BUSER_NAME%7D%3C%2Fh2%3E%0D%0A%0D%0A%09%09%09%09%09%09%3Cp%3E%D0%92%D0%B0%D1%88%D0%B0+%D1%81%D1%82%D0%B0%D0%B2%D0%BA%D0%B0+%D0%B2+%D0%BB%D0%BE%D1%82%D0%B5+%C2%AB%3Ca+href%3D%22%7BADS_LINK%7D%22+%3E%7BADS_TITLE%7D%3C%2Fa%3E%C2%BB+%D0%BF%D0%B5%D1%80%D0%B5%D0%B1%D0%B8%D1%82%D0%B0+%D0%B4%D1%80%D1%83%D0%B3%D0%B8%D0%BC+%D0%BA%D0%BB%D0%B8%D0%B5%D0%BD%D1%82%D0%BE%D0%BC%21%3C%2Fp%3E%0D%0A+++++++++++++++++++++++++++++++++++++++++++++++++%3Cp%3E%D0%92%D1%8B+%D0%BC%D0%BE%D0%B6%D0%B5%D1%82%D0%B5+%D0%B7%D0%B0%D0%BD%D0%BE%D0%B2%D0%BE+%D1%81%D0%B4%D0%B5%D0%BB%D0%B0%D1%82%D1%8C+%D1%81%D1%82%D0%B0%D0%B2%D0%BA%D1%83+%D0%B8+%D0%BF%D0%BE%D0%B1%D0%BE%D1%80%D0%BE%D1%82%D1%8C%D1%81%D1%8F+%D0%B7%D0%B0+%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D0%B9+%D0%BB%D0%BE%D1%82.%3C%2Fp%3E%0D%0A%0D%0A+++++++++++++++++%3Cdiv+style%3D%22text-align%3A+center%3B%22+%3E%0D%0A+++++++++++++++++++%3Ca+href%3D%22%7BADS_LINK%7D%22+target%3D%22_blank%22+class%3D%22button%22%3E%D0%9F%D0%B5%D1%80%D0%B5%D0%B9%D1%82%D0%B8+%D0%BA+%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8E%3C%2Fa%3E%0D%0A+++++++++++++++++%3C%2Fdiv%3E%0D%0A%0D%0A%09%09%09%09%09%09%0D%0A%09%09%09%09%09%09%3C%2Ftd%3E%0D%0A%09%09%09%09%09%3C%2Ftr%3E%0D%0A%09%09%09%09%3C%2Ftbody%3E%0D%0A%09%09%09%3C%2Ftable%3E%0D%0A%09%09%09%3C%2Ftd%3E%0D%0A%09%09%3C%2Ftr%3E%0D%0A%09%3C%2Ftbody%3E%0D%0A%3C%2Ftable%3E%0D%0A%0D%0A%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+class%3D%22footer%22+width%3D%22100%25%22%3E%0D%0A%09%3Ctbody%3E%0D%0A%09%09%3Ctr%3E%0D%0A%09%09%09%3Ctd%3E%7BSOCIAL_LINK%7D%0D%0A%09%09%09%3Cp+class%3D%22footer-title%22%3E%7BSITE_TITLE%7D%3C%2Fp%3E%0D%0A%09%09%09%7BUNSUBSCRIBE%7D%0D%0A%3C%2Ftd%3E%0D%0A%09%09%3C%2Ftr%3E%0D%0A%09%3C%2Ftbody%3E%0D%0A%3C%2Ftable%3E', 'Ваша ставка перебита - {SITE_NAME}', 'AUCTION_INTERRUPT', 'Ваша ставка в аукционе перебита'),
(45, '%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+width%3D%22100%25%22%3E%0D%0A%09%3Ctbody%3E%0D%0A%09%09%3Ctr%3E%0D%0A%09%09%09%3Ctd+align%3D%22center%22%3E%0D%0A%09%09%09%3Cdiv+class%3D%22logo%22%3E%3Ca+href%3D%22%7BURL%7D%22%3E%3Cimg+src%3D%22%7BLOGO%7D%22++%2F%3E+%3C%2Fa%3E%3C%2Fdiv%3E%0D%0A%0D%0A%09%09%09%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+class%3D%22responsive-table%22%3E%0D%0A%09%09%09%09%3Ctbody%3E%0D%0A%09%09%09%09%09%3Ctr%3E%0D%0A%09%09%09%09%09%09%3Ctd%3E%3Cimg+class%3D%22banner%22+src%3D%22%7BIMAGE_OTHER%7D%2Fwinner.gif%22+%2F%3E%3C%2Ftd%3E%0D%0A%09%09%09%09%09%3C%2Ftr%3E%0D%0A%09%09%09%09%09%3Ctr%3E%0D%0A%09%09%09%09%09%09%3Ctd+style%3D%22text-align%3A+center%3B%22%3E%0D%0A%09%09%09%09%09%09%3Cdiv+style%3D%22padding-left%3A+30px%3B+padding-right%3A+30px%3B+padding-bottom%3A+30px%3B%22%3E%0D%0A%09%09%09%09%09%09%3Ch1+class%3D%22title%22%3E%D0%97%D0%B4%D1%80%D0%B0%D0%B2%D1%81%D1%82%D0%B2%D1%83%D0%B9%D1%82%D0%B5%2C+%7BUSER_NAME%7D%3C%2Fh1%3E%0D%0A%0D%0A%09%09%09%09%09%09%3Ch3%3E%D0%9F%D0%BE%D0%B7%D0%B4%D1%80%D0%B0%D0%B2%D0%BB%D1%8F%D0%B5%D0%BC+%D0%B2%D0%B0%D1%81%21+%D0%92%D1%8B+%D0%BF%D0%BE%D0%B1%D0%B5%D0%B4%D0%B8%D0%BB%D0%B8+%D0%B2+%D0%B0%D1%83%D0%BA%D1%86%D0%B8%D0%BE%D0%BD%D0%B5+%C2%AB%3Ca+href%3D%22%7BADS_LINK%7D%22+%3E%7BADS_TITLE%7D%3C%2Fa%3E%C2%BB%3C%2Fh3%3E%0D%0A%3Cp%3E%D0%97%D0%B0+%D0%B2%D0%B0%D0%BC%D0%B8+%D0%B7%D0%B0%D0%BA%D1%80%D0%B5%D0%BF%D0%BB%D0%B5%D0%BD+%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D0%B9+%D0%BB%D0%BE%D1%82%2C+%D0%B5%D1%81%D0%BB%D0%B8+%D0%BE%D0%BF%D0%BB%D0%B0%D1%82%D0%B0+%D0%BD%D0%B5+%D0%BF%D0%BE%D1%81%D1%82%D1%83%D0%BF%D0%B8%D1%82%2C++%D1%82%D0%BE+%D0%BF%D1%80%D0%BE%D0%B4%D0%B0%D0%B2%D0%B5%D1%86+%D0%B2%D0%BF%D1%80%D0%B0%D0%B2%D0%B5+%D0%BE%D1%82%D0%BC%D0%B5%D0%BD%D0%B8%D1%82%D1%8C+%D1%81%D0%B4%D0%B5%D0%BB%D0%BA%D1%83+%D0%B8+%D0%B7%D0%B0%D0%BF%D1%83%D1%81%D1%82%D0%B8%D1%82%D1%8C+%D1%82%D0%BE%D1%80%D0%B3%D0%B8+%D0%B7%D0%B0%D0%BD%D0%BE%D0%B2%D0%BE%21%3C%2Fp%3E%0D%0A%0D%0A%09%09%09%09%09%09%3C%2Fdiv%3E%0D%0A%09%09%09%09%09%09%3C%2Ftd%3E%0D%0A%09%09%09%09%09%3C%2Ftr%3E%0D%0A%09%09%09%09%3C%2Ftbody%3E%0D%0A%09%09%09%3C%2Ftable%3E%0D%0A%09%09%09%3C%2Ftd%3E%0D%0A%09%09%3C%2Ftr%3E%0D%0A%09%3C%2Ftbody%3E%0D%0A%3C%2Ftable%3E%0D%0A%0D%0A%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+class%3D%22footer%22+width%3D%22100%25%22%3E%0D%0A%09%3Ctbody%3E%0D%0A%09%09%3Ctr%3E%0D%0A%09%09%09%3Ctd%3E%7BSOCIAL_LINK%7D%0D%0A%09%09%09%3Cp+class%3D%22footer-title%22%3E%7BSITE_TITLE%7D%3C%2Fp%3E%0D%0A%09%09%09%7BUNSUBSCRIBE%7D%3C%2Ftd%3E%0D%0A%09%09%3C%2Ftr%3E%0D%0A%09%3C%2Ftbody%3E%0D%0A%3C%2Ftable%3E', 'Поздравляем вас с победой в аукционе! - {SITE_NAME}', 'AUCTION_USER_WINNER', 'Поздравляем вас с победой в аукционе!'),
(46, '++++++%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+width%3D%22100%25%22%3E%0D%0A%09%3Ctbody%3E%0D%0A%09%09%3Ctr%3E%0D%0A%09%09%09%3Ctd+align%3D%22center%22%3E%0D%0A%09%09%09%3Cdiv+class%3D%22logo%22%3E%3Ca+href%3D%22%7BURL%7D%22%3E%3Cimg+src%3D%22%7BLOGO%7D%22++%2F%3E+%3C%2Fa%3E%3C%2Fdiv%3E%0D%0A%0D%0A%09%09%09%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+class%3D%22responsive-table+padding30%22%3E%0D%0A%09%09%09%09%3Ctbody%3E%0D%0A%09%09%09%09%09%3Ctr%3E%0D%0A%09%09%09%09%09%09%3Ctd+style%3D%22text-align%3A+center%3B%22%3E%0D%0A%09%09%09%09%09%09%0D%0A%09%09%09%09%09%09%3Cdiv+class%3D%22icon-img%22%3E%3Cimg+src%3D%22%7BIMAGE_OTHER%7D%2Fsad.png%22+%2F%3E%3C%2Fdiv%3E%0D%0A%0D%0A%09%09%09%09%09%09%3Ch2+class%3D%22title%22%3E%D0%97%D0%B4%D1%80%D0%B0%D0%B2%D1%81%D1%82%D0%B2%D1%83%D0%B9%D1%82%D0%B5%2C+%7BUSER_NAME%7D%3C%2Fh2%3E%0D%0A%0D%0A%09%09%09%09%09%09%3Cp%3E%D0%97%D0%B0%D0%B2%D0%B5%D1%80%D1%88%D0%B8%D0%BB%D1%81%D1%8F+%D0%B0%D1%83%D0%BA%D1%86%D0%B8%D0%BE%D0%BD+%D0%B4%D0%BB%D1%8F+%D0%B2%D0%B0%D1%88%D0%B5%D0%B3%D0%BE+%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F+%C2%AB%3Ca+href%3D%22%7BADS_LINK%7D%22+%3E%7BADS_TITLE%7D%3C%2Fa%3E%C2%BB%21%3C%2Fp%3E%0D%0A+++++++++++++++++++++++++++++++++++++++++++++++++%3Cp%3E%D0%9A+%D1%81%D0%BE%D0%B6%D0%B0%D0%BB%D0%B5%D0%BD%D0%B8%D1%8E+%D0%B0%D1%83%D0%BA%D1%86%D0%B8%D0%BE%D0%BD+%D0%BD%D0%B5+%D0%BD%D0%B0%D1%88%D0%B5%D0%BB+%D1%81%D0%B2%D0%BE%D0%B8%D1%85+%D1%83%D1%87%D0%B0%D1%81%D1%82%D0%BD%D0%B8%D0%BA%D0%BE%D0%B2%2C+%D0%BD%D0%BE+%D0%B2%D1%8B+%D0%BC%D0%BE%D0%B6%D0%B5%D1%82%D0%B5+%D0%B5%D0%B3%D0%BE+%D0%BF%D1%80%D0%BE%D0%B4%D0%BB%D0%B8%D1%82%D1%8C+%D0%B2+%D0%BA%D0%B0%D1%80%D1%82%D0%BE%D1%87%D0%BA%D0%B5+%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F.%3C%2Fp%3E%0D%0A%3Cp%3E%D0%A0%D0%B5%D0%BA%D0%BE%D0%BC%D0%B5%D0%BD%D0%B4%D1%83%D0%B5%D0%BC+%D0%B2%D0%B0%D0%BC+%D0%BF%D0%BE%D0%B4%D0%BA%D0%BB%D1%8E%D1%87%D0%B8%D1%82%D1%8C+%D0%B4%D0%BE%D0%BF%D0%BE%D0%BB%D0%BD%D0%B8%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D1%8B%D0%B5+%D1%83%D1%81%D0%BB%D1%83%D0%B3%D0%B8+%D0%BA+%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8E%2C+%D1%87%D1%82%D0%BE%D0%B1%D1%8B+%D0%BD%D0%B0+%D1%8D%D1%82%D0%BE%D1%82+%D1%80%D0%B0%D0%B7+%D0%B5%D0%B3%D0%BE+%D0%B7%D0%B0%D0%BC%D0%B5%D1%82%D0%B8%D0%BB%D0%B8%21%3C%2Fp%3E%0D%0A%0D%0A+++++++++++++++++%3Cdiv+style%3D%22text-align%3A+center%3B%22+%3E%0D%0A+++++++++++++++++++%3Ca+href%3D%22%7BADS_LINK%7D%22+target%3D%22_blank%22+class%3D%22button%22%3E%D0%9F%D0%B5%D1%80%D0%B5%D0%B9%D1%82%D0%B8+%D0%BA+%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8E%3C%2Fa%3E%0D%0A+++++++++++++++++%3C%2Fdiv%3E%0D%0A%0D%0A%09%09%09%09%09%09%0D%0A%09%09%09%09%09%09%3C%2Ftd%3E%0D%0A%09%09%09%09%09%3C%2Ftr%3E%0D%0A%09%09%09%09%3C%2Ftbody%3E%0D%0A%09%09%09%3C%2Ftable%3E%0D%0A%09%09%09%3C%2Ftd%3E%0D%0A%09%09%3C%2Ftr%3E%0D%0A%09%3C%2Ftbody%3E%0D%0A%3C%2Ftable%3E%0D%0A%0D%0A%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+class%3D%22footer%22+width%3D%22100%25%22%3E%0D%0A%09%3Ctbody%3E%0D%0A%09%09%3Ctr%3E%0D%0A%09%09%09%3Ctd%3E%7BSOCIAL_LINK%7D%0D%0A%09%09%09%3Cp+class%3D%22footer-title%22%3E%7BSITE_TITLE%7D%3C%2Fp%3E%0D%0A%09%09%09%7BUNSUBSCRIBE%7D%0D%0A%3C%2Ftd%3E%0D%0A%09%09%3C%2Ftr%3E%0D%0A%09%3C%2Ftbody%3E%0D%0A%3C%2Ftable%3E', 'Аукцион закончился без участников - {SITE_NAME}', 'AUCTION_END_NO_USERS', 'Аукцион закончился без участников'),
(47, '%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+width%3D%22100%25%22%3E%0D%0A%09%3Ctbody%3E%0D%0A%09%09%3Ctr%3E%0D%0A%09%09%09%3Ctd+align%3D%22center%22%3E%0D%0A%09%09%09%3Cdiv+class%3D%22logo%22%3E%3Ca+href%3D%22%7BURL%7D%22%3E%3Cimg+src%3D%22%7BLOGO%7D%22++%2F%3E+%3C%2Fa%3E%3C%2Fdiv%3E%0D%0A%0D%0A%09%09%09%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+class%3D%22responsive-table+padding30%22%3E%0D%0A%09%09%09%09%3Ctbody%3E%0D%0A%09%09%09%09%09%3Ctr%3E%0D%0A%09%09%09%09%09%09%3Ctd+style%3D%22text-align%3A+center%3B%22%3E%0D%0A%09%09%09%09%09%09%3Cdiv+class%3D%22icon-img%22%3E%3Cimg+src%3D%22%7BIMAGE_OTHER%7D%2Fmoney-img.png%22+%2F%3E%3C%2Fdiv%3E%0D%0A%0D%0A%09%09%09%09%09%09%3Ch2+class%3D%22title%22%3E%D0%97%D0%B4%D1%80%D0%B0%D0%B2%D1%81%D1%82%D0%B2%D1%83%D0%B9%D1%82%D0%B5%2C+%7BUSER_NAME%7D%3C%2Fh2%3E%0D%0A%0D%0A%09%09%09%09%09%09%3Cp%3E%D0%9F%D0%BE%D1%81%D1%82%D1%83%D0%BF%D0%B8%D0%BB%D0%B0+%D0%BE%D0%BF%D0%BB%D0%B0%D1%82%D0%B0+%D0%B7%D0%B0+%D1%82%D0%BE%D0%B2%D0%B0%D1%80+%C2%AB%3Ca+href%3D%22%7BADS_LINK%7D%22%3E%7BADS_TITLE%7D%3C%2Fa%3E%C2%BB.+%D0%9F%D0%B5%D1%80%D0%B5%D0%B9%D0%B4%D0%B8%D1%82%D0%B5+%D0%B2+%D0%BA%D0%B0%D1%80%D1%82%D0%BE%D1%87%D0%BA%D1%83+%D0%B7%D0%B0%D0%BA%D0%B0%D0%B7%D0%B0+%D0%B4%D0%BB%D1%8F+%D0%BF%D0%BE%D0%B4%D1%80%D0%BE%D0%B1%D0%BD%D0%BE%D0%B9+%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D0%B8.%3C%2Fp%3E%0D%0A%0D%0A%09%09%09%09%09%09%3Cdiv+style%3D%22text-align%3A+center%3B%22%3E%3Ca+class%3D%22button%22+href%3D%22%7BPROFILE_LINK_ORDER%7D%22+target%3D%22_blank%22%3E%D0%9F%D0%B5%D1%80%D0%B5%D0%B9%D1%82%D0%B8+%D0%BA+%D0%B7%D0%B0%D0%BA%D0%B0%D0%B7%D1%83%3C%2Fa%3E%3C%2Fdiv%3E%0D%0A%09%09%09%09%09%09%3C%2Ftd%3E%0D%0A%09%09%09%09%09%3C%2Ftr%3E%0D%0A%09%09%09%09%3C%2Ftbody%3E%0D%0A%09%09%09%3C%2Ftable%3E%0D%0A%09%09%09%3C%2Ftd%3E%0D%0A%09%09%3C%2Ftr%3E%0D%0A%09%3C%2Ftbody%3E%0D%0A%3C%2Ftable%3E%0D%0A%0D%0A%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+class%3D%22footer%22+width%3D%22100%25%22%3E%0D%0A%09%3Ctbody%3E%0D%0A%09%09%3Ctr%3E%0D%0A%09%09%09%3Ctd%3E%7BSOCIAL_LINK%7D%0D%0A%09%09%09%3Cp+class%3D%22footer-title%22%3E%7BSITE_TITLE%7D%3C%2Fp%3E%0D%0A%09%09%09%3C%2Ftd%3E%0D%0A%09%09%3C%2Ftr%3E%0D%0A%09%3C%2Ftbody%3E%0D%0A%3C%2Ftable%3E', 'Поздравляем с продажей товара - {SITE_NAME}', 'USER_NEW_BUY', 'Оповещение пользователю о продаже'),
(48, '++++++%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+width%3D%22100%25%22%3E%0D%0A+++++++++%3Ctr%3E%0D%0A++++++++++++%3Ctd+align%3D%22center%22%3E%0D%0A%0D%0A++++++++++++%3Cdiv+class%3D%22logo%22+%3E%0D%0A++++++++++++++++++%3Ca+href%3D%22%7BURL%7D%22%3E%0D%0A+++++++++++++++++++++%3Cimg+src%3D%22%7BLOGO%7D%22++%2F%3E%0D%0A++++++++++++++++++%3C%2Fa%3E+++++++++%0D%0A++++++++++++%3C%2Fdiv%3E%0D%0A%0D%0A+++++++++++++++%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+class%3D%22responsive-table+padding30%22%3E%0D%0A%0D%0A++++++++++++++++++%3Ctr%3E%0D%0A+++++++++++++++++++++%3Ctd+align%3D%22center%22+%3E%0D%0A+%3Ch2+class%3D%22title%22+%3E%D0%9F%D0%BE%D0%B4%D1%82%D0%B2%D0%B5%D1%80%D0%B4%D0%B8%D1%82%D0%B5+%D1%8D%D0%BB%D0%B5%D0%BA%D1%82%D1%80%D0%BE%D0%BD%D0%BD%D1%8B%D0%B9+%D0%B0%D0%B4%D1%80%D0%B5%D1%81%3C%2Fh2%3E+%0D%0A%3Cp%3E%D0%94%D0%BB%D1%8F+%D0%BF%D0%BE%D0%B4%D1%82%D0%B2%D0%B5%D1%80%D0%B6%D0%B4%D0%B5%D0%BD%D0%B8%D1%8F+%D0%BF%D0%B5%D1%80%D0%B5%D0%B9%D0%B4%D0%B8%D1%82%D0%B5+%D0%BF%D0%BE+%3Ca+href%3D%22%7BACTIVATION_LINK%7D%22+%3E%D1%81%D1%81%D1%8B%D0%BB%D0%BA%D0%B5%3C%2Fa%3E%3C%2Fp%3E%0D%0A%3Cp%3E%D0%95%D1%81%D0%BB%D0%B8+%D0%B2%D1%8B+%D0%BD%D0%B5+%D1%83%D0%BA%D0%B0%D0%B7%D1%8B%D0%B2%D0%B0%D0%BB%D0%B8+%D1%8D%D0%BB%D0%B5%D0%BA%D1%82%D1%80%D0%BE%D0%BD%D0%BD%D1%8B%D0%B9+%D0%B0%D0%B4%D1%80%D0%B5%D1%81+%D0%B2+%D1%81%D0%B5%D1%80%D0%B2%D0%B8%D1%81%D0%B5+%C2%AB%7BSITE_NAME%7D%C2%BB%2C+%D1%82%D0%BE+%D0%BF%D1%80%D0%BE%D0%B8%D0%B3%D0%BD%D0%BE%D1%80%D0%B8%D1%80%D1%83%D0%B9%D1%82%D0%B5+%D1%8D%D1%82%D0%BE+%D0%BF%D0%B8%D1%81%D1%8C%D0%BC%D0%BE.%3C%2Fp%3E%0D%0A%3C%2Ftd%3E%0D%0A++++++++++++++++++%3C%2Ftr%3E%0D%0A%0D%0A+++++++++++++++%3C%2Ftable%3E%0D%0A%0D%0A%0D%0A++++++++++++%3C%2Ftd%3E%0D%0A+++++++++%3C%2Ftr%3E%0D%0A%0D%0A%0D%0A++++++%3C%2Ftable%3E%0D%0A%0D%0A%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+class%3D%22footer%22+width%3D%22100%25%22%3E%0D%0A%09%3Ctbody%3E%0D%0A%09%09%3Ctr%3E%0D%0A%09%09%09%3Ctd%3E%7BSOCIAL_LINK%7D%0D%0A%09%09%09%3Cp+class%3D%22footer-title%22%3E%7BSITE_TITLE%7D%3C%2Fp%3E%0D%0A%09%09%09%3C%2Ftd%3E%0D%0A%09%09%3C%2Ftr%3E%0D%0A%09%3C%2Ftbody%3E%0D%0A%3C%2Ftable%3E', 'Подтверждение подписки на {SITE_NAME}', 'SUBSCRIBE_ACTIVATION_EMAIL', 'Подтверждение подписки'),
(53, '%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+width%3D%22100%25%22%3E%0A%09%3Ctbody%3E%0A%09%09%3Ctr%3E%0A%09%09%09%3Ctd+align%3D%22center%22%3E%0A%09%09%09%3Cdiv+class%3D%22logo%22%3E%3Ca+href%3D%22%7BURL%7D%22%3E%3Cimg+src%3D%22%7BLOGO%7D%22+%2F%3E+%3C%2Fa%3E%3C%2Fdiv%3E%0A%0A%09%09%09%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+class%3D%22responsive-table+padding30%22%3E%0A%09%09%09%09%3Ctbody%3E%0A%09%09%09%09%09%3Ctr%3E%0A%09%09%09%09%09%09%3Ctd+style%3D%22text-align%3A+center%3B%22%3E%0A%09%09%09%09%09%09%3Ch2+class%3D%22title%22%3E%D0%97%D0%B4%D1%80%D0%B0%D0%B2%D1%81%D1%82%D0%B2%D1%83%D0%B9%D1%82%D0%B5%2C+%7BUSER_NAME%7D%3C%2Fh2%3E%0A%0A%09%09%09%09%09%09%3Cp%3E%D0%92%D0%B0%D1%88%D0%B5+%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5+%3Cstrong%3E%26laquo%3B%7BAD_TITLE%7D%26raquo%3B%3C%2Fstrong%3E+%D0%BE%D1%82%D0%BA%D0%BB%D0%BE%D0%BD%D0%B5%D0%BD%D0%BE+%D0%BC%D0%BE%D0%B4%D0%B5%D1%80%D0%B0%D1%82%D0%BE%D1%80%D0%BE%D0%BC%3C%2Fp%3E%0A%0A%09%09%09%09%09%09%3Cp%3E%D0%9F%D0%BE%D0%B4%D1%80%D0%BE%D0%B1%D0%BD%D0%BE%D1%81%D1%82%D0%B8+%D0%92%D1%8B+%D0%BC%D0%BE%D0%B6%D0%B5%D1%82%D0%B5+%D0%BF%D0%BE%D1%81%D0%BC%D0%BE%D1%82%D1%80%D0%B5%D1%82%D1%8C+%D0%B2+%D0%BA%D0%B0%D1%80%D1%82%D0%BE%D1%87%D0%BA%D0%B5+%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F%3C%2Fp%3E%0A%0A%09%09%09%09%09%09%3Cdiv+style%3D%22text-align%3A+center%3B%22%3E%3Ca+class%3D%22button%22+href%3D%22%7BAD_LINK%7D%22+target%3D%22_blank%22%3E%D0%9F%D0%B5%D1%80%D0%B5%D0%B9%D1%82%D0%B8+%D0%BA+%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8E%3C%2Fa%3E%3C%2Fdiv%3E%0A%09%09%09%09%09%09%3C%2Ftd%3E%0A%09%09%09%09%09%3C%2Ftr%3E%0A%09%09%09%09%3C%2Ftbody%3E%0A%09%09%09%3C%2Ftable%3E%0A%09%09%09%3C%2Ftd%3E%0A%09%09%3C%2Ftr%3E%0A%09%3C%2Ftbody%3E%0A%3C%2Ftable%3E%0A%0A%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+class%3D%22footer%22+width%3D%22100%25%22%3E%0A%09%3Ctbody%3E%0A%09%09%3Ctr%3E%0A%09%09%09%3Ctd%3E%7BSOCIAL_LINK%7D%0A%09%09%09%3Cp+class%3D%22footer-title%22%3E%7BSITE_TITLE%7D%3C%2Fp%3E%0A%09%09%09%3C%2Ftd%3E%0A%09%09%3C%2Ftr%3E%0A%09%3C%2Ftbody%3E%0A%3C%2Ftable%3E%0A', 'Ваше объявление не прошло модерацию', 'AD_MODERATION_NOT_PUBLISHED', 'Объявление не прошло модерацию');
INSERT INTO `uni_email_message` (`id`, `text`, `subject`, `code`, `name`) VALUES
(56, '%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+width%3D%22100%25%22%3E%0D%0A%09%3Ctbody%3E%0D%0A%09%09%3Ctr%3E%0D%0A%09%09%09%3Ctd+align%3D%22center%22%3E%0D%0A%09%09%09%3Cdiv+class%3D%22logo%22%3E%3Ca+href%3D%22%7BURL%7D%22%3E%3Cimg+src%3D%22%7BLOGO%7D%22+%2F%3E+%3C%2Fa%3E%3C%2Fdiv%3E%0D%0A%0D%0A%09%09%09%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+class%3D%22responsive-table+padding30%22%3E%0D%0A%09%09%09%09%3Ctbody%3E%0D%0A%09%09%09%09%09%3Ctr%3E%0D%0A%09%09%09%09%09%09%3Ctd+style%3D%22text-align%3A+center%3B%22%3E%0D%0A%09%09%09%09%09%09%3Cdiv+class%3D%22icon-img%22%3E%3Cimg+src%3D%22%7BIMAGE_OTHER%7D%2Fcomment.png%22+%2F%3E%3C%2Fdiv%3E%0D%0A%0D%0A%09%09%09%09%09%09%3Ch2+class%3D%22title%22%3E%D0%97%D0%B4%D1%80%D0%B0%D0%B2%D1%81%D1%82%D0%B2%D1%83%D0%B9%D1%82%D0%B5%2C+%7BUSER_NAME%7D%3C%2Fh2%3E%0D%0A%0D%0A%09%09%09%09%09%09%3Cp%3E%D0%A3+%D0%B2%D0%B0%D1%81+%D0%B5%D1%81%D1%82%D1%8C+%D0%BD%D0%BE%D0%B2%D1%8B%D0%B9+%D0%BA%D0%BE%D0%BC%D0%BC%D0%B5%D0%BD%D1%82%D0%B0%D1%80%D0%B8%D0%B9+%D0%B2+%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B8+%26laquo%3B%7BAD_TITLE%7D%26raquo%3B%3C%2Fp%3E%0D%0A%0D%0A%09%09%09%09%09%09%3Cdiv+style%3D%22text-align%3A+center%3B%22%3E%3Ca+class%3D%22button%22+href%3D%22%7BAD_LINK%7D%22+target%3D%22_blank%22%3E%D0%9F%D0%B5%D1%80%D0%B5%D0%B9%D1%82%D0%B8+%D0%BA+%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8E%3C%2Fa%3E%3C%2Fdiv%3E%0D%0A%09%09%09%09%09%09%3C%2Ftd%3E%0D%0A%09%09%09%09%09%3C%2Ftr%3E%0D%0A%09%09%09%09%3C%2Ftbody%3E%0D%0A%09%09%09%3C%2Ftable%3E%0D%0A%09%09%09%3C%2Ftd%3E%0D%0A%09%09%3C%2Ftr%3E%0D%0A%09%3C%2Ftbody%3E%0D%0A%3C%2Ftable%3E%0D%0A%0D%0A%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+class%3D%22footer%22+width%3D%22100%25%22%3E%0D%0A%09%3Ctbody%3E%0D%0A%09%09%3Ctr%3E%0D%0A%09%09%09%3Ctd%3E%7BSOCIAL_LINK%7D%0D%0A%09%09%09%3Cp+class%3D%22footer-title%22%3E%7BSITE_TITLE%7D%3C%2Fp%3E%0D%0A%09%09%09%3Ca+class%3D%22footer-unsubscribe%22+href%3D%22%7BLINK_NOTIFICATIONS%7D%22%3E%D0%A3%D0%BF%D1%80%D0%B0%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5+%D1%83%D0%B2%D0%B5%D0%B4%D0%BE%D0%BC%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F%D0%BC%D0%B8%3C%2Fa%3E%3C%2Ftd%3E%0D%0A%09%09%3C%2Ftr%3E%0D%0A%09%3C%2Ftbody%3E%0D%0A%3C%2Ftable%3E%0D%0A', 'У вашего объявления новый комментарий - {SITE_NAME}', 'NEW_ADS_COMMENT', 'Новый комментарий на объявление'),
(57, '%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+width%3D%22100%25%22%3E%0D%0A%09%3Ctbody%3E%0D%0A%09%09%3Ctr%3E%0D%0A%09%09%09%3Ctd+align%3D%22center%22%3E%0D%0A%09%09%09%3Cdiv+class%3D%22logo%22%3E%3Ca+href%3D%22%7BURL%7D%22%3E%3Cimg+src%3D%22%7BLOGO%7D%22+%2F%3E+%3C%2Fa%3E%3C%2Fdiv%3E%0D%0A%0D%0A%09%09%09%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+class%3D%22responsive-table+padding30%22%3E%0D%0A%09%09%09%09%3Ctbody%3E%0D%0A%09%09%09%09%09%3Ctr%3E%0D%0A%09%09%09%09%09%09%3Ctd+style%3D%22text-align%3A+center%3B%22%3E%0D%0A%09%09%09%09%09%09%3Ch2+class%3D%22title%22%3E%D0%97%D0%B4%D1%80%D0%B0%D0%B2%D1%81%D1%82%D0%B2%D1%83%D0%B9%D1%82%D0%B5%2C+%7BUSER_NAME%7D%3C%2Fh2%3E%0D%0A%0D%0A%09%09%09%09%09%09%3Cp%3E%D0%A1%D1%80%D0%BE%D0%BA+%D1%80%D0%B0%D0%B7%D0%BC%D0%B5%D1%89%D0%B5%D0%BD%D0%B8%D1%8F+%D0%92%D0%B0%D1%88%D0%B5%D0%B3%D0%BE+%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F+%7BAD_LINK%7D+%D0%B7%D0%B0%D0%BA%D0%BE%D0%BD%D1%87%D0%B8%D0%BB%D1%81%D1%8F.%3C%2Fp%3E%0D%0A%0D%0A%09%09%09%09%09%09%3Cp%3E%D0%95%D1%81%D0%BB%D0%B8+%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5+%D0%BF%D0%BE-%D0%BF%D1%80%D0%B5%D0%B6%D0%BD%D0%B5%D0%BC%D1%83+%D0%B0%D0%BA%D1%82%D1%83%D0%B0%D0%BB%D1%8C%D0%BD%D0%BE%2C+%D0%BE%D0%B1%D0%BD%D0%BE%D0%B2%D0%B8%D1%82%D0%B5+%D0%B2+%D0%BD%D0%B5%D0%BC+%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8E+%D0%B8%D0%BB%D0%B8+%D0%BE%D0%BF%D1%83%D0%B1%D0%BB%D0%B8%D0%BA%D1%83%D0%B9%D1%82%D0%B5+%D0%BF%D0%BE%D0%B2%D1%82%D0%BE%D1%80%D0%BD%D0%BE.%3C%2Fp%3E%0D%0A%09%09%09%09%09%09%3C%2Ftd%3E%0D%0A%09%09%09%09%09%3C%2Ftr%3E%0D%0A%09%09%09%09%3C%2Ftbody%3E%0D%0A%09%09%09%3C%2Ftable%3E%0D%0A%09%09%09%3C%2Ftd%3E%0D%0A%09%09%3C%2Ftr%3E%0D%0A%09%3C%2Ftbody%3E%0D%0A%3C%2Ftable%3E%0D%0A%0D%0A%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+class%3D%22footer%22+width%3D%22100%25%22%3E%0D%0A%09%3Ctbody%3E%0D%0A%09%09%3Ctr%3E%0D%0A%09%09%09%3Ctd%3E%7BSOCIAL_LINK%7D%0D%0A%09%09%09%3Cp+class%3D%22footer-title%22%3E%7BSITE_TITLE%7D%3C%2Fp%3E%0D%0A%09%09%09%3Ca+class%3D%22footer-unsubscribe%22+href%3D%22%7BLINK_NOTIFICATIONS%7D%22%3E%D0%A3%D0%BF%D1%80%D0%B0%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5+%D1%83%D0%B2%D0%B5%D0%B4%D0%BE%D0%BC%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F%D0%BC%D0%B8%3C%2Fa%3E%3C%2Ftd%3E%0D%0A%09%09%3C%2Ftr%3E%0D%0A%09%3C%2Ftbody%3E%0D%0A%3C%2Ftable%3E%0D%0A', 'Срок размещения вашего объявления закончился - {SITE_NAME}', 'END_AD', 'Окончание срока размещения объявления'),
(58, '%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+width%3D%22100%25%22%3E%0D%0A%09%3Ctbody%3E%0D%0A%09%09%3Ctr%3E%0D%0A%09%09%09%3Ctd+align%3D%22center%22%3E%0D%0A%09%09%09%3Cdiv+class%3D%22logo%22%3E%3Ca+href%3D%22%7BURL%7D%22%3E%3Cimg+src%3D%22%7BLOGO%7D%22+%2F%3E+%3C%2Fa%3E%3C%2Fdiv%3E%0D%0A%0D%0A%09%09%09%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+class%3D%22responsive-table+padding30%22%3E%0D%0A%09%09%09%09%3Ctbody%3E%0D%0A%09%09%09%09%09%3Ctr%3E%0D%0A%09%09%09%09%09%09%3Ctd+style%3D%22text-align%3A+center%3B%22%3E%0D%0A%09%09%09%09%09%09%3Ch2+class%3D%22title%22%3E%D0%97%D0%B4%D1%80%D0%B0%D0%B2%D1%81%D1%82%D0%B2%D1%83%D0%B9%D1%82%D0%B5%2C+%7BUSER_NAME%7D%3C%2Fh2%3E%0D%0A%0D%0A%09%09%09%09%09%09%3Cp%3E%D0%97%D0%B0%D0%B2%D1%82%D1%80%D0%B0+%D0%B7%D0%B0%D0%BA%D0%B0%D0%BD%D1%87%D0%B8%D0%B2%D0%B0%D0%B5%D1%82%D1%81%D1%8F+%D1%81%D1%80%D0%BE%D0%BA+%D0%B4%D0%B5%D0%B9%D1%81%D1%82%D0%B2%D0%B8%D1%8F+%D0%B2%D0%B0%D1%88%D0%B5%D0%B3%D0%BE+%D1%82%D0%B0%D1%80%D0%B8%D1%84%D0%B0+%22%7BTARIFF_NAME%7D%22%3C%2Fp%3E%0D%0A%0D%0A%09%09%09%09%09%09%3Cp%3E%D0%A3%D0%B1%D0%B5%D0%B4%D0%B8%D1%82%D0%B5%D1%81%D1%8C%2C+%D1%87%D1%82%D0%BE+%D0%BD%D0%B0+%D0%B1%D0%B0%D0%BB%D0%B0%D0%BD%D1%81%D0%B5+%D0%BA%D0%BE%D1%88%D0%B5%D0%BB%D1%8C%D0%BA%D0%B0%C2%A0%D0%B4%D0%BE%D1%81%D1%82%D0%B0%D1%82%D0%BE%D1%87%D0%BD%D0%BE+%D1%81%D1%80%D0%B5%D0%B4%D1%81%D1%82%D0%B2+%D0%B4%D0%BB%D1%8F+%D0%BF%D1%80%D0%BE%D0%B4%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F+%D1%82%D0%B0%D1%80%D0%B8%D1%84%D0%B0.+%D0%95%D1%81%D0%BB%D0%B8%C2%A0%D1%83+%D0%B2%D0%B0%D1%81+%D0%B0%D0%B2%D1%82%D0%BE%D0%BC%D0%B0%D1%82%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%BE%D0%B5+%D0%BF%D1%80%D0%BE%D0%B4%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5+%D0%BE%D1%82%D0%BA%D0%BB%D1%8E%D1%87%D0%B5%D0%BD%D0%BE%2C+%D1%82%D0%BE+%D0%BF%D1%80%D0%BE%D0%B4%D0%BB%D0%B8%D1%82%D1%8C+%D1%82%D0%B0%D1%80%D0%B8%D1%84+%D0%B2%D1%8B+%D0%BC%D0%BE%D0%B6%D0%B5%D1%82%D0%B5+%D0%B2%C2%A0%D0%BB%D0%B8%D1%87%D0%BD%D0%BE%D0%BC+%D0%BA%D0%B0%D0%B1%D0%B8%D0%BD%D0%B5%D1%82%D0%B5+%D1%81%D0%B0%D0%B9%D1%82%D0%B0.%3C%2Fp%3E%0D%0A%3Cdiv+style%3D%22text-align%3A+center%3B%22%3E%3Ca+class%3D%22button%22+href%3D%22%7BPROFILE_LINK%7D%22+target%3D%22_blank%22%3E%D0%9F%D0%B5%D1%80%D0%B5%D0%B9%D1%82%D0%B8+%D0%B2+%D0%BF%D1%80%D0%BE%D1%84%D0%B8%D0%BB%D1%8C%3C%2Fa%3E%3C%2Fdiv%3E%0D%0A%09%09%09%09%09%09%3C%2Ftd%3E%0D%0A%09%09%09%09%09%3C%2Ftr%3E%0D%0A%09%09%09%09%3C%2Ftbody%3E%0D%0A%09%09%09%3C%2Ftable%3E%0D%0A%09%09%09%3C%2Ftd%3E%0D%0A%09%09%3C%2Ftr%3E%0D%0A%09%3C%2Ftbody%3E%0D%0A%3C%2Ftable%3E%0D%0A%0D%0A%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+class%3D%22footer%22+width%3D%22100%25%22%3E%0D%0A%09%3Ctbody%3E%0D%0A%09%09%3Ctr%3E%0D%0A%09%09%09%3Ctd%3E%7BSOCIAL_LINK%7D%0D%0A%09%09%09%3Cp+class%3D%22footer-title%22%3E%7BSITE_TITLE%7D%3C%2Fp%3E%0D%0A%09%09%09%3C%2Ftd%3E%0D%0A%09%09%3C%2Ftr%3E%0D%0A%09%3C%2Ftbody%3E%0D%0A%3C%2Ftable%3E%0D%0A', 'Завтра заканчивается срок действия тарифа - {SITE_NAME}', 'TOMORROW_END_TARIFF', 'Завтра заканчивается срок действия тарифа'),
(60, '%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+width%3D%22100%25%22%3E%0D%0A%09%3Ctbody%3E%0D%0A%09%09%3Ctr%3E%0D%0A%09%09%09%3Ctd+align%3D%22center%22%3E%0D%0A%09%09%09%3Cdiv+class%3D%22logo%22%3E%3Ca+href%3D%22%7BURL%7D%22%3E%3Cimg+src%3D%22%7BLOGO%7D%22+%2F%3E+%3C%2Fa%3E%3C%2Fdiv%3E%0D%0A%0D%0A%09%09%09%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+class%3D%22responsive-table+padding30%22%3E%0D%0A%09%09%09%09%3Ctbody%3E%0D%0A%09%09%09%09%09%3Ctr%3E%0D%0A%09%09%09%09%09%09%3Ctd+style%3D%22text-align%3A+center%3B%22%3E%0D%0A%09%09%09%09%09%09%3Ch2+class%3D%22title%22%3E%D0%97%D0%B4%D1%80%D0%B0%D0%B2%D1%81%D1%82%D0%B2%D1%83%D0%B9%D1%82%D0%B5%2C+%7BUSER_NAME%7D%3C%2Fh2%3E%0D%0A%0D%0A%09%09%09%09%09%09%3Cp%3E%D0%A2%D0%B0%D1%80%D0%B8%D1%84+%22%7BTARIFF_NAME%7D%22+%D1%83%D1%81%D0%BF%D0%B5%D1%88%D0%BD%D0%BE+%D0%BF%D1%80%D0%BE%D0%B4%D0%BB%D0%B5%D0%BD+%D0%BD%D0%B0+%D1%81%D1%80%D0%BE%D0%BA%C2%A0%7BTARIFF_DAYS%7D%3C%2Fp%3E%0D%0A%0D%0A%09%09%09%09%09%09%3Cdiv+style%3D%22text-align%3A+center%3B%22%3E%3Ca+class%3D%22button%22+href%3D%22%7BPROFILE_LINK%7D%22+target%3D%22_blank%22%3E%D0%9F%D0%B5%D1%80%D0%B5%D0%B9%D1%82%D0%B8+%D0%B2+%D0%BF%D1%80%D0%BE%D1%84%D0%B8%D0%BB%D1%8C%3C%2Fa%3E%3C%2Fdiv%3E%0D%0A%09%09%09%09%09%09%3C%2Ftd%3E%0D%0A%09%09%09%09%09%3C%2Ftr%3E%0D%0A%09%09%09%09%3C%2Ftbody%3E%0D%0A%09%09%09%3C%2Ftable%3E%0D%0A%09%09%09%3C%2Ftd%3E%0D%0A%09%09%3C%2Ftr%3E%0D%0A%09%3C%2Ftbody%3E%0D%0A%3C%2Ftable%3E%0D%0A%0D%0A%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+class%3D%22footer%22+width%3D%22100%25%22%3E%0D%0A%09%3Ctbody%3E%0D%0A%09%09%3Ctr%3E%0D%0A%09%09%09%3Ctd%3E%7BSOCIAL_LINK%7D%0D%0A%09%09%09%3Cp+class%3D%22footer-title%22%3E%7BSITE_TITLE%7D%3C%2Fp%3E%0D%0A%09%09%09%3C%2Ftd%3E%0D%0A%09%09%3C%2Ftr%3E%0D%0A%09%3C%2Ftbody%3E%0D%0A%3C%2Ftable%3E%0D%0A', 'Тариф успешно продлен - {SITE_NAME}', 'TARIFF_SUCCESS_EXTENDED', 'Тариф успешно продлен'),
(61, '%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+width%3D%22100%25%22%3E%0D%0A%09%3Ctbody%3E%0D%0A%09%09%3Ctr%3E%0D%0A%09%09%09%3Ctd+align%3D%22center%22%3E%0D%0A%09%09%09%3Cdiv+class%3D%22logo%22%3E%3Ca+href%3D%22%7BURL%7D%22%3E%3Cimg+src%3D%22%7BLOGO%7D%22+%2F%3E+%3C%2Fa%3E%3C%2Fdiv%3E%0D%0A%0D%0A%09%09%09%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+class%3D%22responsive-table+padding30%22%3E%0D%0A%09%09%09%09%3Ctbody%3E%0D%0A%09%09%09%09%09%3Ctr%3E%0D%0A%09%09%09%09%09%09%3Ctd+style%3D%22text-align%3A+center%3B%22%3E%0D%0A%09%09%09%09%09%09%3Ch2+class%3D%22title%22%3E%D0%97%D0%B4%D1%80%D0%B0%D0%B2%D1%81%D1%82%D0%B2%D1%83%D0%B9%D1%82%D0%B5%2C+%7BUSER_NAME%7D%3C%2Fh2%3E%0D%0A%0D%0A%09%09%09%09%09%09%3Cp%3E%D0%9D%D0%B5+%D1%83%D0%B4%D0%B0%D0%BB%D0%BE%D1%81%D1%8C+%D0%BF%D1%80%D0%BE%D0%B4%D0%BB%D0%B8%D1%82%D1%8C+%D1%82%D0%B0%D1%80%D0%B8%D1%84+%26quot%3B%7BTARIFF_NAME%7D%26quot%3B%2C+%D1%82%D0%B0%D0%BA+%D0%BA%D0%B0%D0%BA+%D0%BD%D0%B5%D0%B4%D0%BE%D1%81%D1%82%D0%B0%D1%82%D0%BE%D1%87%D0%BD%D0%BE+%D1%81%D1%80%D0%B5%D0%B4%D1%81%D1%82%D0%B2+%D0%BD%D0%B0+%D0%B1%D0%B0%D0%BB%D0%B0%D0%BD%D1%81%D0%B5+%D0%B2%D0%B0%D1%88%D0%B5%D0%B3%D0%BE+%D0%BA%D0%BE%D1%88%D0%B5%D0%BB%D1%8C%D0%BA%D0%B0.+%D0%94%D0%BB%D1%8F+%D0%BF%D0%BE%D0%BF%D0%BE%D0%BB%D0%BD%D0%B5%D0%BD%D0%B8%D1%8F+%D0%B1%D0%B0%D0%BB%D0%B0%D0%BD%D1%81%D0%B0+%D0%B8+%D0%BF%D1%80%D0%BE%D0%B4%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F+%D1%82%D0%B0%D1%80%D0%B8%D1%84%D0%B0+%D0%BF%D0%B5%D1%80%D0%B5%D0%B9%D0%B4%D0%B8%D1%82%D0%B5+%D0%B2+%D0%BB%D0%B8%D1%87%D0%BD%D1%8B%D0%B9+%D0%BA%D0%B0%D0%B1%D0%B8%D0%BD%D0%B5%D1%82.%3C%2Fp%3E%0D%0A%0D%0A%09%09%09%09%09%09%3Cdiv+style%3D%22text-align%3A+center%3B%22%3E%3Ca+class%3D%22button%22+href%3D%22%7BPROFILE_LINK%7D%22+target%3D%22_blank%22%3E%D0%9F%D0%B5%D1%80%D0%B5%D0%B9%D1%82%D0%B8+%D0%B2+%D0%BF%D1%80%D0%BE%D1%84%D0%B8%D0%BB%D1%8C%3C%2Fa%3E%3C%2Fdiv%3E%0D%0A%09%09%09%09%09%09%3C%2Ftd%3E%0D%0A%09%09%09%09%09%3C%2Ftr%3E%0D%0A%09%09%09%09%3C%2Ftbody%3E%0D%0A%09%09%09%3C%2Ftable%3E%0D%0A%09%09%09%3C%2Ftd%3E%0D%0A%09%09%3C%2Ftr%3E%0D%0A%09%3C%2Ftbody%3E%0D%0A%3C%2Ftable%3E%0D%0A%0D%0A%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+class%3D%22footer%22+width%3D%22100%25%22%3E%0D%0A%09%3Ctbody%3E%0D%0A%09%09%3Ctr%3E%0D%0A%09%09%09%3Ctd%3E%7BSOCIAL_LINK%7D%0D%0A%09%09%09%3Cp+class%3D%22footer-title%22%3E%7BSITE_TITLE%7D%3C%2Fp%3E%0D%0A%09%09%09%3C%2Ftd%3E%0D%0A%09%09%3C%2Ftr%3E%0D%0A%09%3C%2Ftbody%3E%0D%0A%3C%2Ftable%3E%0D%0A', 'Недостаточно средств для продления тарифа - {SITE_NAME}', 'TARIFF_EXTENDED_NO_BALANCE', 'Недостаточно средств для продления тарифа'),
(62, '%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+width%3D%22100%25%22%3E%0D%0A%09%3Ctbody%3E%0D%0A%09%09%3Ctr%3E%0D%0A%09%09%09%3Ctd+align%3D%22center%22%3E%0D%0A%09%09%09%3Cdiv+class%3D%22logo%22%3E%3Ca+href%3D%22%7BURL%7D%22%3E%3Cimg+src%3D%22%7BLOGO%7D%22+%2F%3E+%3C%2Fa%3E%3C%2Fdiv%3E%0D%0A%0D%0A%09%09%09%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+class%3D%22responsive-table+padding30%22%3E%0D%0A%09%09%09%09%3Ctbody%3E%0D%0A%09%09%09%09%09%3Ctr%3E%0D%0A%09%09%09%09%09%09%3Ctd+style%3D%22text-align%3A+center%3B%22%3E%0D%0A++++++++++++++++++++++++++++++++++++++++++++++++++%0D%0A+++++++++++++++++++++++++++++++++++++++++++++++%3Cdiv+class%3D%22icon-img%22%3E%3Cimg+src%3D%22%7BIMAGE_OTHER%7D%2Fnew-messages-img.png%22+%2F%3E%3C%2Fdiv%3E%0D%0A%09%09%09%09%09%09%3Cp%3E%D0%A3+%D0%B2%D0%B0%D1%81+%D0%B5%D1%81%D1%82%D1%8C+%D0%BD%D0%BE%D0%B2%D1%8B%D0%B5+%D0%BD%D0%B5%D0%BF%D1%80%D0%BE%D1%87%D0%B8%D1%82%D0%B0%D0%BD%D0%BD%D1%8B%D0%B5+%D1%81%D0%BE%D0%BE%D0%B1%D1%89%D0%B5%D0%BD%D0%B8%D1%8F+%D0%B2+%D1%87%D0%B0%D1%82%D0%B5+%D1%81%D0%BB%D1%83%D0%B6%D0%B1%D1%8B+%D0%BF%D0%BE%D0%B4%D0%B4%D0%B5%D1%80%D0%B6%D0%BA%D0%B8%3C%2Fp%3E%0D%0A%09%09%09%09%09%09%3C%2Ftd%3E%0D%0A%09%09%09%09%09%3C%2Ftr%3E%0D%0A%09%09%09%09%3C%2Ftbody%3E%0D%0A%09%09%09%3C%2Ftable%3E%0D%0A%09%09%09%3C%2Ftd%3E%0D%0A%09%09%3C%2Ftr%3E%0D%0A%09%3C%2Ftbody%3E%0D%0A%3C%2Ftable%3E%0D%0A%0D%0A%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+class%3D%22footer%22+width%3D%22100%25%22%3E%0D%0A%09%3Ctbody%3E%0D%0A%09%09%3Ctr%3E%0D%0A%09%09%09%3Ctd%3E%0D%0A%09%09%09%3Cdiv+style%3D%22text-align%3A+center%3B%22%3E%3Ca+class%3D%22button%22+href%3D%22%7BADMIN_LINK%7D%22+target%3D%22_blank%22%3E%D0%9F%D0%B5%D1%80%D0%B5%D0%B9%D1%82%D0%B8+%D0%B2+%D0%BF%D0%B0%D0%BD%D0%B5%D0%BB%D1%8C+%D1%83%D0%BF%D1%80%D0%B0%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F%3C%2Fa%3E%3C%2Fdiv%3E%0D%0A%09%09%09%3C%2Ftd%3E%0D%0A%09%09%3C%2Ftr%3E%0D%0A%09%3C%2Ftbody%3E%0D%0A%3C%2Ftable%3E%0D%0A', 'Новые сообщения в чате службы поддержки', 'ADMIN_NEW_CHAT_MESSAGE', 'Новые сообщения в чате службы поддержки'),
(63, '%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+width%3D%22100%25%22%3E%0D%0A%09%3Ctbody%3E%0D%0A%09%09%3Ctr%3E%0D%0A%09%09%09%3Ctd+align%3D%22center%22%3E%0D%0A%09%09%09%3Cdiv+class%3D%22logo%22%3E%3Ca+href%3D%22%7BURL%7D%22%3E%3Cimg+src%3D%22%7BLOGO%7D%22+%2F%3E+%3C%2Fa%3E%3C%2Fdiv%3E%0D%0A%0D%0A%09%09%09%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+class%3D%22responsive-table+padding30%22%3E%0D%0A%09%09%09%09%3Ctbody%3E%0D%0A%09%09%09%09%09%3Ctr%3E%0D%0A%09%09%09%09%09%09%3Ctd+style%3D%22text-align%3A+center%3B%22%3E%0D%0A%09%09%09%09%09%09%3Cdiv+class%3D%22icon-img%22%3E%3Cimg+src%3D%22%7BIMAGE_OTHER%7D%2Fmoney-img.png%22+%2F%3E%3C%2Fdiv%3E%0D%0A%0D%0A%09%09%09%09%09%09%3Ch2+class%3D%22title%22%3E%D0%97%D0%B4%D1%80%D0%B0%D0%B2%D1%81%D1%82%D0%B2%D1%83%D0%B9%D1%82%D0%B5%2C+%7BUSER_NAME%7D%3C%2Fh2%3E%0D%0A%0D%0A%09%09%09%09%09%09%3Cp%3E%D0%9F%D0%BE%D1%81%D1%82%D1%83%D0%BF%D0%B8%D0%BB+%D0%B7%D0%B0%D0%BA%D0%B0%D0%B7+%D0%BD%D0%B0+%D0%B1%D1%80%D0%BE%D0%BD%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5+%26laquo%3B%3Ca+href%3D%22%7BADS_LINK%7D%22%3E%7BADS_TITLE%7D%3C%2Fa%3E%26raquo%3B.+%D0%9F%D0%B5%D1%80%D0%B5%D0%B9%D0%B4%D0%B8%D1%82%D0%B5+%D0%B2+%D0%BA%D0%B0%D1%80%D1%82%D0%BE%D1%87%D0%BA%D1%83+%D0%B7%D0%B0%D0%BA%D0%B0%D0%B7%D0%B0+%D0%B4%D0%BB%D1%8F+%D0%BF%D0%BE%D0%B4%D1%80%D0%BE%D0%B1%D0%BD%D0%BE%D0%B9+%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D0%B8.%3C%2Fp%3E%0D%0A%0D%0A%09%09%09%09%09%09%3Cdiv+style%3D%22text-align%3A+center%3B%22%3E%3Ca+class%3D%22button%22+href%3D%22%7BPROFILE_LINK_ORDER%7D%22+target%3D%22_blank%22%3E%D0%9F%D0%B5%D1%80%D0%B5%D0%B9%D1%82%D0%B8+%D0%BA+%D0%B7%D0%B0%D0%BA%D0%B0%D0%B7%D1%83%3C%2Fa%3E%3C%2Fdiv%3E%0D%0A%09%09%09%09%09%09%3C%2Ftd%3E%0D%0A%09%09%09%09%09%3C%2Ftr%3E%0D%0A%09%09%09%09%3C%2Ftbody%3E%0D%0A%09%09%09%3C%2Ftable%3E%0D%0A%09%09%09%3C%2Ftd%3E%0D%0A%09%09%3C%2Ftr%3E%0D%0A%09%3C%2Ftbody%3E%0D%0A%3C%2Ftable%3E%0D%0A%0D%0A%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+class%3D%22footer%22+width%3D%22100%25%22%3E%0D%0A%09%3Ctbody%3E%0D%0A%09%09%3Ctr%3E%0D%0A%09%09%09%3Ctd%3E%7BSOCIAL_LINK%7D%0D%0A%09%09%09%3Cp+class%3D%22footer-title%22%3E%7BSITE_TITLE%7D%3C%2Fp%3E%0D%0A%09%09%09%3C%2Ftd%3E%0D%0A%09%09%3C%2Ftr%3E%0D%0A%09%3C%2Ftbody%3E%0D%0A%3C%2Ftable%3E%0D%0A', 'Заказ на бронирование - {ADS_TITLE}', 'USER_NEW_ORDER_BOOKING', 'Оповещение пользователю о бронировании'),
(64, '%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+width%3D%22100%25%22%3E%0D%0A%09%3Ctbody%3E%0D%0A%09%09%3Ctr%3E%0D%0A%09%09%09%3Ctd+align%3D%22center%22%3E%0D%0A%09%09%09%3Cdiv+class%3D%22logo%22%3E%3Ca+href%3D%22%7BURL%7D%22%3E%3Cimg+src%3D%22%7BLOGO%7D%22+%2F%3E+%3C%2Fa%3E%3C%2Fdiv%3E%0D%0A%0D%0A%09%09%09%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+class%3D%22responsive-table+padding30%22%3E%0D%0A%09%09%09%09%3Ctbody%3E%0D%0A%09%09%09%09%09%3Ctr%3E%0D%0A%09%09%09%09%09%09%3Ctd+style%3D%22text-align%3A+center%3B%22%3E%0D%0A%09%09%09%09%09%09%3Cdiv+class%3D%22icon-img%22%3E%3Cimg+src%3D%22%7BIMAGE_OTHER%7D%2Fmoney-img.png%22+%2F%3E%3C%2Fdiv%3E%0D%0A%0D%0A%09%09%09%09%09%09%3Ch2+class%3D%22title%22%3E%D0%97%D0%B4%D1%80%D0%B0%D0%B2%D1%81%D1%82%D0%B2%D1%83%D0%B9%D1%82%D0%B5%2C+%7BUSER_NAME%7D%3C%2Fh2%3E%0D%0A%0D%0A%09%09%09%09%09%09%3Cp%3E%D0%9F%D0%BE%D1%81%D1%82%D1%83%D0%BF%D0%B8%D0%BB%26nbsp%3B%D0%B7%D0%B0%D0%BA%D0%B0%D0%B7+%D0%BD%D0%B0+%D0%B0%D1%80%D0%B5%D0%BD%D0%B4%D1%83+%26laquo%3B%3Ca+href%3D%22%7BADS_LINK%7D%22%3E%7BADS_TITLE%7D%3C%2Fa%3E%26raquo%3B.+%D0%9F%D0%B5%D1%80%D0%B5%D0%B9%D0%B4%D0%B8%D1%82%D0%B5+%D0%B2+%D0%BA%D0%B0%D1%80%D1%82%D0%BE%D1%87%D0%BA%D1%83+%D0%B7%D0%B0%D0%BA%D0%B0%D0%B7%D0%B0+%D0%B4%D0%BB%D1%8F+%D0%BF%D0%BE%D0%B4%D1%80%D0%BE%D0%B1%D0%BD%D0%BE%D0%B9+%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D0%B8.%3C%2Fp%3E%0D%0A%0D%0A%09%09%09%09%09%09%3Cdiv+style%3D%22text-align%3A+center%3B%22%3E%3Ca+class%3D%22button%22+href%3D%22%7BPROFILE_LINK_ORDER%7D%22+target%3D%22_blank%22%3E%D0%9F%D0%B5%D1%80%D0%B5%D0%B9%D1%82%D0%B8+%D0%BA+%D0%B7%D0%B0%D0%BA%D0%B0%D0%B7%D1%83%3C%2Fa%3E%3C%2Fdiv%3E%0D%0A%09%09%09%09%09%09%3C%2Ftd%3E%0D%0A%09%09%09%09%09%3C%2Ftr%3E%0D%0A%09%09%09%09%3C%2Ftbody%3E%0D%0A%09%09%09%3C%2Ftable%3E%0D%0A%09%09%09%3C%2Ftd%3E%0D%0A%09%09%3C%2Ftr%3E%0D%0A%09%3C%2Ftbody%3E%0D%0A%3C%2Ftable%3E%0D%0A%0D%0A%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+class%3D%22footer%22+width%3D%22100%25%22%3E%0D%0A%09%3Ctbody%3E%0D%0A%09%09%3Ctr%3E%0D%0A%09%09%09%3Ctd%3E%7BSOCIAL_LINK%7D%0D%0A%09%09%09%3Cp+class%3D%22footer-title%22%3E%7BSITE_TITLE%7D%3C%2Fp%3E%0D%0A%09%09%09%3C%2Ftd%3E%0D%0A%09%09%3C%2Ftr%3E%0D%0A%09%3C%2Ftbody%3E%0D%0A%3C%2Ftable%3E%0D%0A', 'Заказ на аренду - {ADS_TITLE}', 'USER_NEW_ORDER_RENT', 'Оповещение пользователю об аренде'),
(65, '%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+width%3D%22100%25%22%3E%0D%0A%09%3Ctbody%3E%0D%0A%09%09%3Ctr%3E%0D%0A%09%09%09%3Ctd+align%3D%22center%22%3E%0D%0A%09%09%09%3Cdiv+class%3D%22logo%22%3E%3Ca+href%3D%22%7BURL%7D%22%3E%3Cimg+src%3D%22%7BLOGO%7D%22+%2F%3E+%3C%2Fa%3E%3C%2Fdiv%3E%0D%0A%0D%0A%09%09%09%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+class%3D%22responsive-table+padding30%22%3E%0D%0A%09%09%09%09%3Ctbody%3E%0D%0A%09%09%09%09%09%3Ctr%3E%0D%0A%09%09%09%09%09%09%3Ctd+style%3D%22text-align%3A+center%3B%22%3E%0D%0A%09%09%09%09%09%09%3Cdiv+class%3D%22icon-img%22%3E%3Cimg+src%3D%22%7BIMAGE_OTHER%7D%2Fmoney-img.png%22+%2F%3E%3C%2Fdiv%3E%0D%0A%0D%0A%09%09%09%09%09%09%3Ch2+class%3D%22title%22%3E%D0%97%D0%B4%D1%80%D0%B0%D0%B2%D1%81%D1%82%D0%B2%D1%83%D0%B9%D1%82%D0%B5%2C+%7BUSER_NAME%7D%3C%2Fh2%3E%0D%0A%0D%0A%09%09%09%09%09%09%3Cp%3E%D0%97%D0%B0%D0%BA%D0%B0%D0%B7+%D0%BD%D0%B0+%D0%B1%D1%80%D0%BE%D0%BD%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5+%26laquo%3B%3Ca+href%3D%22%7BADS_LINK%7D%22%3E%7BADS_TITLE%7D%3C%2Fa%3E%26raquo%3B+%D0%BF%D0%BE%D0%B4%D1%82%D0%B2%D0%B5%D1%80%D0%B6%D0%B4%D0%B5%D0%BD%21%3C%2Fp%3E%0D%0A%0D%0A%09%09%09%09%09%09%3Cdiv+style%3D%22text-align%3A+center%3B%22%3E%3Ca+class%3D%22button%22+href%3D%22%7BPROFILE_LINK_ORDER%7D%22+target%3D%22_blank%22%3E%D0%9F%D0%B5%D1%80%D0%B5%D0%B9%D1%82%D0%B8+%D0%BA+%D0%B7%D0%B0%D0%BA%D0%B0%D0%B7%D1%83%3C%2Fa%3E%3C%2Fdiv%3E%0D%0A%09%09%09%09%09%09%3C%2Ftd%3E%0D%0A%09%09%09%09%09%3C%2Ftr%3E%0D%0A%09%09%09%09%3C%2Ftbody%3E%0D%0A%09%09%09%3C%2Ftable%3E%0D%0A%09%09%09%3C%2Ftd%3E%0D%0A%09%09%3C%2Ftr%3E%0D%0A%09%3C%2Ftbody%3E%0D%0A%3C%2Ftable%3E%0D%0A%0D%0A%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+class%3D%22footer%22+width%3D%22100%25%22%3E%0D%0A%09%3Ctbody%3E%0D%0A%09%09%3Ctr%3E%0D%0A%09%09%09%3Ctd%3E%7BSOCIAL_LINK%7D%0D%0A%09%09%09%3Cp+class%3D%22footer-title%22%3E%7BSITE_TITLE%7D%3C%2Fp%3E%0D%0A%09%09%09%3C%2Ftd%3E%0D%0A%09%09%3C%2Ftr%3E%0D%0A%09%3C%2Ftbody%3E%0D%0A%3C%2Ftable%3E%0D%0A', 'Подтверждение бронирования - {ADS_TITLE}', 'USER_CONFIRM_ORDER_BOOKING', 'Оповещение пользователю о подтверждении бронирования'),
(66, '%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+width%3D%22100%25%22%3E%0D%0A%09%3Ctbody%3E%0D%0A%09%09%3Ctr%3E%0D%0A%09%09%09%3Ctd+align%3D%22center%22%3E%0D%0A%09%09%09%3Cdiv+class%3D%22logo%22%3E%3Ca+href%3D%22%7BURL%7D%22%3E%3Cimg+src%3D%22%7BLOGO%7D%22+%2F%3E+%3C%2Fa%3E%3C%2Fdiv%3E%0D%0A%0D%0A%09%09%09%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+class%3D%22responsive-table+padding30%22%3E%0D%0A%09%09%09%09%3Ctbody%3E%0D%0A%09%09%09%09%09%3Ctr%3E%0D%0A%09%09%09%09%09%09%3Ctd+style%3D%22text-align%3A+center%3B%22%3E%0D%0A%09%09%09%09%09%09%3Cdiv+class%3D%22icon-img%22%3E%3Cimg+src%3D%22%7BIMAGE_OTHER%7D%2Fmoney-img.png%22+%2F%3E%3C%2Fdiv%3E%0D%0A%0D%0A%09%09%09%09%09%09%3Ch2+class%3D%22title%22%3E%D0%97%D0%B4%D1%80%D0%B0%D0%B2%D1%81%D1%82%D0%B2%D1%83%D0%B9%D1%82%D0%B5%2C+%7BUSER_NAME%7D%3C%2Fh2%3E%0D%0A%0D%0A%09%09%09%09%09%09%3Cp%3E%D0%97%D0%B0%D0%BA%D0%B0%D0%B7+%D0%BD%D0%B0+%D0%B0%D1%80%D0%B5%D0%BD%D0%B4%D1%83+%26laquo%3B%3Ca+href%3D%22%7BADS_LINK%7D%22%3E%7BADS_TITLE%7D%3C%2Fa%3E%26raquo%3B+%D0%BF%D0%BE%D0%B4%D1%82%D0%B2%D0%B5%D1%80%D0%B6%D0%B4%D0%B5%D0%BD%21%3C%2Fp%3E%0D%0A%0D%0A%09%09%09%09%09%09%3Cdiv+style%3D%22text-align%3A+center%3B%22%3E%3Ca+class%3D%22button%22+href%3D%22%7BPROFILE_LINK_ORDER%7D%22+target%3D%22_blank%22%3E%D0%9F%D0%B5%D1%80%D0%B5%D0%B9%D1%82%D0%B8+%D0%BA+%D0%B7%D0%B0%D0%BA%D0%B0%D0%B7%D1%83%3C%2Fa%3E%3C%2Fdiv%3E%0D%0A%09%09%09%09%09%09%3C%2Ftd%3E%0D%0A%09%09%09%09%09%3C%2Ftr%3E%0D%0A%09%09%09%09%3C%2Ftbody%3E%0D%0A%09%09%09%3C%2Ftable%3E%0D%0A%09%09%09%3C%2Ftd%3E%0D%0A%09%09%3C%2Ftr%3E%0D%0A%09%3C%2Ftbody%3E%0D%0A%3C%2Ftable%3E%0D%0A%0D%0A%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+class%3D%22footer%22+width%3D%22100%25%22%3E%0D%0A%09%3Ctbody%3E%0D%0A%09%09%3Ctr%3E%0D%0A%09%09%09%3Ctd%3E%7BSOCIAL_LINK%7D%0D%0A%09%09%09%3Cp+class%3D%22footer-title%22%3E%7BSITE_TITLE%7D%3C%2Fp%3E%0D%0A%09%09%09%3C%2Ftd%3E%0D%0A%09%09%3C%2Ftr%3E%0D%0A%09%3C%2Ftbody%3E%0D%0A%3C%2Ftable%3E%0D%0A', 'Подтверждение аренды - {ADS_TITLE}', 'USER_CONFIRM_ORDER_RENT', 'Оповещение пользователю о подтверждении аренды'),
(67, '%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+width%3D%22100%25%22%3E%0D%0A%09%3Ctbody%3E%0D%0A%09%09%3Ctr%3E%0D%0A%09%09%09%3Ctd+align%3D%22center%22%3E%0D%0A%09%09%09%3Cdiv+class%3D%22logo%22%3E%3Ca+href%3D%22%7BURL%7D%22%3E%3Cimg+src%3D%22%7BLOGO%7D%22+%2F%3E+%3C%2Fa%3E%3C%2Fdiv%3E%0D%0A%0D%0A%09%09%09%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+class%3D%22responsive-table+padding30%22%3E%0D%0A%09%09%09%09%3Ctbody%3E%0D%0A%09%09%09%09%09%3Ctr%3E%0D%0A%09%09%09%09%09%09%3Ctd+style%3D%22text-align%3A+center%3B%22%3E%0D%0A%0D%0A%09%09%09%09%09%09%3Ch2+class%3D%22title%22%3E%D0%97%D0%B4%D1%80%D0%B0%D0%B2%D1%81%D1%82%D0%B2%D1%83%D0%B9%D1%82%D0%B5%2C+%7BUSER_NAME%7D%3C%2Fh2%3E%0D%0A%0D%0A%09%09%09%09%09%09%3Cp%3E%D0%97%D0%B0%D0%BA%D0%B0%D0%B7+%D0%BD%D0%B0+%D0%B0%D1%80%D0%B5%D0%BD%D0%B4%D1%83+%C2%AB%3Ca+href%3D%22%7BADS_LINK%7D%22%3E%7BADS_TITLE%7D%3C%2Fa%3E%C2%BB+%D0%BE%D1%82%D0%BC%D0%B5%D0%BD%D0%B5%D0%BD%21%3C%2Fp%3E%0D%0A%3Cp%3E%D0%9A%D0%BE%D0%BC%D0%BC%D0%B5%D0%BD%D1%82%D0%B0%D1%80%D0%B8%D0%B9+%C2%AB%7BREASON_TEXT%7D%C2%BB%3C%2Fp%3E%0D%0A%0D%0A%09%09%09%09%09%09%3Cdiv+style%3D%22text-align%3A+center%3B%22%3E%3Ca+class%3D%22button%22+href%3D%22%7BPROFILE_LINK_ORDER%7D%22+target%3D%22_blank%22%3E%D0%9F%D0%B5%D1%80%D0%B5%D0%B9%D1%82%D0%B8+%D0%BA+%D0%B7%D0%B0%D0%BA%D0%B0%D0%B7%D1%83%3C%2Fa%3E%3C%2Fdiv%3E%0D%0A%09%09%09%09%09%09%3C%2Ftd%3E%0D%0A%09%09%09%09%09%3C%2Ftr%3E%0D%0A%09%09%09%09%3C%2Ftbody%3E%0D%0A%09%09%09%3C%2Ftable%3E%0D%0A%09%09%09%3C%2Ftd%3E%0D%0A%09%09%3C%2Ftr%3E%0D%0A%09%3C%2Ftbody%3E%0D%0A%3C%2Ftable%3E%0D%0A%0D%0A%3Ctable+border%3D%220%22+cellpadding%3D%220%22+cellspacing%3D%220%22+class%3D%22footer%22+width%3D%22100%25%22%3E%0D%0A%09%3Ctbody%3E%0D%0A%09%09%3Ctr%3E%0D%0A%09%09%09%3Ctd%3E%7BSOCIAL_LINK%7D%0D%0A%09%09%09%3Cp+class%3D%22footer-title%22%3E%7BSITE_TITLE%7D%3C%2Fp%3E%0D%0A%09%09%09%3C%2Ftd%3E%0D%0A%09%09%3C%2Ftr%3E%0D%0A%09%3C%2Ftbody%3E%0D%0A%3C%2Ftable%3E%0D%0A', 'Отмена заказа аренды - {ADS_TITLE}', 'USER_CANCEL_ORDER_BOOKING', 'Оповещение пользователю об отмене заказа аренды');

-- --------------------------------------------------------

--
-- Структура таблицы `uni_favorites`
--

CREATE TABLE `uni_favorites` (
  `favorites_id` int(11) NOT NULL,
  `favorites_id_ad` int(11) NOT NULL DEFAULT '0',
  `favorites_from_id_user` int(11) NOT NULL DEFAULT '0',
  `favorites_to_id_user` int(11) NOT NULL DEFAULT '0',
  `favorites_date` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `uni_favorites`
--

INSERT INTO `uni_favorites` (`favorites_id`, `favorites_id_ad`, `favorites_from_id_user`, `favorites_to_id_user`, `favorites_date`) VALUES
(1, 1, 2, 1, '2023-04-24 12:12:39'),
(2, 5, 1, 1, '2023-05-31 14:10:34'),
(3, 6, 3, 1, '2023-06-01 06:07:48');

-- --------------------------------------------------------

--
-- Структура таблицы `uni_filemanager`
--

CREATE TABLE `uni_filemanager` (
  `filemanager_id` int(11) NOT NULL,
  `filemanager_name` varchar(255) NOT NULL,
  `filemanager_dir` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `uni_history_balance`
--

CREATE TABLE `uni_history_balance` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL DEFAULT '0',
  `summa` float NOT NULL DEFAULT '0',
  `datetime` timestamp NULL DEFAULT NULL,
  `method` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `action` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `id_order` int(11) NOT NULL DEFAULT '0',
  `id_user_from` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `uni_history_balance`
--

INSERT INTO `uni_history_balance` (`id`, `id_user`, `summa`, `datetime`, `method`, `name`, `action`, `id_order`, `id_user_from`) VALUES
(1, 1, 10000, '2023-04-15 19:39:34', NULL, 'Пополнение баланса', '+', 0, 0),
(2, 2, 10000, '2023-04-24 12:09:58', NULL, 'Бонус за регистрацию', '+', 0, 0),
(3, 3, 10000, '2023-06-01 06:07:28', NULL, 'Бонус за регистрацию', '+', 0, 0),
(4, 1, 990, '2023-06-01 13:18:08', NULL, 'Подключение тарифа - Максимум', '-', 0, 0),
(5, 1, 390, '2023-06-01 13:18:13', NULL, 'Бонус за подключение тарифа - Максимум', '+', 0, 0),
(6, 1, 299, '2023-06-02 05:52:54', NULL, 'Подключение тарифа - Премиум', '-', 0, 0),
(7, 1, 145, '2023-06-02 05:52:58', NULL, 'Бонус за подключение тарифа - Премиум', '+', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `uni_languages`
--

CREATE TABLE `uni_languages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `code` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `iso` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `id_position` int(11) NOT NULL DEFAULT '0',
  `image` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `uni_languages`
--

INSERT INTO `uni_languages` (`id`, `name`, `status`, `code`, `iso`, `id_position`, `image`) VALUES
(1, 'Русский', 1, 'russian', 'ru', 1, '188814_141487_RU.png'),
(44, 'O\'zbekcha', 1, 'uz', 'uz', 0, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `uni_metrics`
--

CREATE TABLE `uni_metrics` (
  `id` int(11) NOT NULL,
  `ip` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `referrer` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8,
  `route` mediumtext CHARACTER SET utf8,
  `entry_point` text CHARACTER SET utf8,
  `id_user` int(11) NOT NULL DEFAULT '0',
  `view_page_link` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `view_page_title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `date_view` timestamp NULL DEFAULT NULL,
  `unique_visit` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `uni_metrics`
--

INSERT INTO `uni_metrics` (`id`, `ip`, `date`, `referrer`, `user_agent`, `route`, `entry_point`, `id_user`, `view_page_link`, `view_page_title`, `date_view`, `unique_visit`) VALUES
(1, '127.0.0.1', '2023-04-04 09:31:29', 'http://almano/cp_642bee6b621da/login.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '', NULL, 0, 'http://almano/', 'http://almano/', '2023-04-04 11:51:05', 1),
(2, '127.0.0.1', '2023-04-13 07:58:26', 'http://almano/cp_642bee6b621da/login.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '', NULL, 0, 'http://almano/', 'http://almano/', '2023-04-13 10:05:28', 0),
(3, '127.0.0.1', '2023-04-14 07:40:52', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '', NULL, 0, 'http://almano/auth', 'http://almano/auth', '2023-04-14 12:33:03', 0),
(4, '127.0.0.1', '2023-04-15 08:14:27', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '', NULL, 0, 'http://almano/templates/js/popper.min.js.map', 'http://almano/templates/js/popper.min.js.map', '2023-04-15 18:40:46', 0),
(5, '127.0.0.1', '2023-04-15 19:03:44', 'http://almano/ru', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '', NULL, 1, 'http://almano/templates/js/bootstrap.min.js.map', 'http://almano/templates/js/bootstrap.min.js.map', '2023-04-16 16:35:31', 0),
(6, '127.0.0.1', '2023-04-17 16:35:08', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '', NULL, 1, 'http://almano/user/shuhrat/ad', 'http://almano/user/shuhrat/ad', '2023-04-17 18:01:15', 0),
(7, '127.0.0.1', '2023-04-17 19:05:38', 'http://almano/ru/user/shuhrat/settings', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '', NULL, 1, 'http://almano/', 'http://almano/', '2023-04-18 18:10:21', 0),
(8, '127.0.0.1', '2023-04-18 19:17:59', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '', NULL, 1, 'http://almano/map/uzbekistan', 'http://almano/map/uzbekistan', '2023-04-19 17:31:25', 0),
(9, '127.0.0.1', '2023-04-19 19:36:54', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '', NULL, 1, 'http://almano/templates/js/bootstrap.min.js.map', 'http://almano/templates/js/bootstrap.min.js.map', '2023-04-19 20:52:10', 0),
(10, '127.0.0.1', '2023-04-23 12:07:25', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '', NULL, 1, 'http://almano/', 'http://almano/', '2023-04-23 16:43:22', 0),
(11, '127.0.0.1', '2023-04-24 04:38:11', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '', NULL, 2, 'http://almano/templates/js/bootstrap.bundle.js.map', 'http://almano/templates/js/bootstrap.bundle.js.map', '2023-04-24 18:57:42', 0),
(12, '127.0.0.1', '2023-04-24 19:20:17', 'http://almano/ru', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '', NULL, 2, 'http://almano/templates/js/bootstrap.min.js.map', 'http://almano/templates/js/bootstrap.min.js.map', '2023-04-24 21:07:19', 0),
(13, '213.230.100.226', '2023-04-24 22:22:49', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '', NULL, 0, 'http://bozzor.uz/', 'http://bozzor.uz/', '2023-04-24 22:23:33', 1),
(14, '188.241.177.53', '2023-04-24 22:47:47', NULL, 'Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9a1) Gecko/20070308 Minefield/3.0a1', '', NULL, 0, 'http://bozzor.uz/phpmyadmin/index.php', 'http://bozzor.uz/phpmyadmin/index.php', '2023-04-24 22:47:55', 1),
(15, '179.43.169.181', '2023-04-24 22:48:14', NULL, 'Mozilla/5.0 (X11; Linux i686; rv:10.0) Gecko/20100101 Firefox/10.0', '', NULL, 0, 'http://bozzor.uz/', 'http://bozzor.uz/', '2023-04-24 22:48:24', 1),
(16, '51.81.167.146', '2023-04-24 23:34:54', NULL, 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.1 Mobile/15E148 Safari/604.1', '', NULL, 0, 'http://bozzor.uz/', 'http://bozzor.uz/', '2023-04-24 23:34:54', 1),
(17, '35.247.18.146', '2023-04-25 01:30:49', NULL, 'Mozilla/5.0 (Windows NT 6.2; rv:22.0) Gecko/20130405 Firefox/23.0', '', NULL, 0, 'http://bozzor.uz/', 'http://bozzor.uz/', '2023-04-25 01:43:18', 1),
(18, '34.254.53.125', '2023-04-25 01:46:54', NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', '', NULL, 0, 'http://bozzor.uz/', 'http://bozzor.uz/', '2023-04-25 01:47:15', 1),
(19, '156.146.45.135', '2023-04-25 06:00:26', NULL, 'WhatWeb/0.5.5', '', NULL, 0, 'http://bozzor.uz/', 'http://bozzor.uz/', '2023-04-25 06:00:26', 1),
(20, '146.70.113.120', '2023-04-25 08:29:26', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36 Edg/112.0.1722.58', '', NULL, 0, 'http://bozzor.uz/', 'http://bozzor.uz/', '2023-04-25 08:29:26', 1),
(21, '95.214.211.100', '2023-04-25 10:28:09', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 YaBrowser/23.3.2.806 Yowser/2.5 Safari/537.36', '', NULL, 0, 'http://bozzor.uz/', 'http://bozzor.uz/', '2023-04-25 10:33:13', 1),
(22, '185.155.118.1', '2023-04-25 10:30:55', NULL, 'Mozilla/5.0 (compatible; BegetSitemapBot/0.0.1)', '', NULL, 0, 'http://bozzor.uz/sitemap.xml', 'http://bozzor.uz/sitemap.xml', '2023-04-25 10:30:59', 1),
(23, '47.254.25.10', '2023-04-25 10:58:09', NULL, 'Mozilla/5.0 (Linux; Android 11; M2004J15SC) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Mobile Safari/537.36', '', NULL, 0, 'http://bozzor.uz/', 'http://bozzor.uz/', '2023-04-25 10:58:09', 1),
(24, '47.254.74.59', '2023-04-25 10:58:10', 'http://bozzor.uz/', 'Mozilla/5.0 (Linux; Android 11; M2004J15SC) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Mobile Safari/537.36', '', NULL, 0, 'http://bozzor.uz/Public/home/js/check.js', 'http://bozzor.uz/Public/home/js/check.js', '2023-04-25 10:58:12', 1),
(25, '47.251.15.21', '2023-04-25 10:58:14', 'http://bozzor.uz/Public/home/js/check.js', 'Mozilla/5.0 (Linux; Android 11; M2004J15SC) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Mobile Safari/537.36', '', NULL, 0, 'http://bozzor.uz/Public/home/js/check.js', 'http://bozzor.uz/Public/home/js/check.js', '2023-04-25 10:58:14', 1),
(26, '47.254.85.182', '2023-04-25 10:58:14', NULL, 'Mozilla/5.0 (Linux; Android 11; M2004J15SC) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Mobile Safari/537.36', '', NULL, 0, 'http://bozzor.uz/static/admin/javascript/hetong.js', 'http://bozzor.uz/static/admin/javascript/hetong.js', '2023-04-25 10:58:14', 1),
(27, '47.88.94.28', '2023-04-25 10:58:17', 'http://bozzor.uz/static/admin/javascript/hetong.js', 'Mozilla/5.0 (Linux; Android 11; M2004J15SC) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Mobile Safari/537.36', '', NULL, 0, 'http://bozzor.uz/static/admin/javascript/hetong.js', 'http://bozzor.uz/static/admin/javascript/hetong.js', '2023-04-25 10:58:17', 1),
(28, '51.159.101.199', '2023-04-25 13:32:50', NULL, 'Mozilla/5.0 (X11; Linux x86_64; rv:104.0) Gecko/20100101 Firefox/104.0', '', NULL, 0, 'http://bozzor.uz/', 'http://bozzor.uz/', '2023-04-25 13:32:50', 1),
(29, '167.248.133.125', '2023-04-25 17:52:38', NULL, 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', '', NULL, 0, 'http://bozzor.uz/', 'http://bozzor.uz/', '2023-04-25 17:52:38', 1),
(30, '87.236.176.229', '2023-04-25 19:41:20', 'http://bozzor.uz/', 'Mozilla/5.0 (compatible; InternetMeasurement/1.0; +https://internet-measurement.com/)', '', NULL, 0, 'http://bozzor.uz/', 'http://bozzor.uz/', '2023-04-25 19:41:20', 1),
(31, '18.118.46.111', '2023-04-25 19:47:36', 'http://bozzor.uz/.well-known/acme-challenge/4qCfM3lXPoHJazTLGPZD7y_fAKvMe42r5dXxFVD0HBM', 'Mozilla/5.0 (compatible; Let\'s Encrypt validation server; +https://www.letsencrypt.org)', '', NULL, 0, 'http://bozzor.uz/.well-known/acme-challenge/4qCfM3lXPoHJazTLGPZD7y_fAKvMe42r5dXxFVD0HBM', 'http://bozzor.uz/.well-known/acme-challenge/4qCfM3lXPoHJazTLGPZD7y_fAKvMe42r5dXxFVD0HBM', '2023-04-25 19:47:36', 1),
(32, '54.184.149.237', '2023-04-25 19:47:36', 'http://bozzor.uz/.well-known/acme-challenge/4qCfM3lXPoHJazTLGPZD7y_fAKvMe42r5dXxFVD0HBM', 'Mozilla/5.0 (compatible; Let\'s Encrypt validation server; +https://www.letsencrypt.org)', '', NULL, 0, 'http://bozzor.uz/.well-known/acme-challenge/4qCfM3lXPoHJazTLGPZD7y_fAKvMe42r5dXxFVD0HBM', 'http://bozzor.uz/.well-known/acme-challenge/4qCfM3lXPoHJazTLGPZD7y_fAKvMe42r5dXxFVD0HBM', '2023-04-25 19:47:36', 1),
(33, '23.178.112.203', '2023-04-25 19:47:36', 'http://bozzor.uz/.well-known/acme-challenge/4qCfM3lXPoHJazTLGPZD7y_fAKvMe42r5dXxFVD0HBM', 'Mozilla/5.0 (compatible; Let\'s Encrypt validation server; +https://www.letsencrypt.org)', '', NULL, 0, 'http://bozzor.uz/.well-known/acme-challenge/4qCfM3lXPoHJazTLGPZD7y_fAKvMe42r5dXxFVD0HBM', 'http://bozzor.uz/.well-known/acme-challenge/4qCfM3lXPoHJazTLGPZD7y_fAKvMe42r5dXxFVD0HBM', '2023-04-25 19:47:36', 1),
(34, '185.155.118.1', '2023-04-25 21:10:45', NULL, 'Mozilla/5.0 (compatible; BegetSitemapBot/0.0.1)', '', NULL, 0, 'http://bozzor.uz/sitemap.xml', 'http://bozzor.uz/sitemap.xml', '2023-04-26 02:57:10', 0),
(35, '162.142.125.11', '2023-04-26 00:26:30', NULL, 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', '', NULL, 0, 'http://bozzor.uz/', 'http://bozzor.uz/', '2023-04-26 00:26:30', 1),
(36, '87.236.176.71', '2023-04-26 00:31:54', 'http://bozzor.uz/', 'Mozilla/5.0 (compatible; InternetMeasurement/1.0; +https://internet-measurement.com/)', '', NULL, 0, 'http://bozzor.uz/', 'http://bozzor.uz/', '2023-04-26 00:31:54', 1),
(37, '15.204.182.106', '2023-04-26 00:46:59', 'http://bozzor.uz/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '', NULL, 0, 'http://bozzor.uz/', 'http://bozzor.uz/', '2023-04-26 00:47:05', 1),
(38, '193.235.141.19', '2023-04-26 05:58:05', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '', NULL, 0, 'http://bozzor.uz/', 'http://bozzor.uz/', '2023-04-26 05:58:05', 1),
(39, '167.94.138.35', '2023-04-26 06:56:42', NULL, 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', '', NULL, 0, 'http://bozzor.uz/', 'http://bozzor.uz/', '2023-04-26 06:56:42', 1),
(40, '162.142.125.13', '2023-04-26 06:58:03', NULL, 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', '', NULL, 0, 'http://bozzor.uz/', 'http://bozzor.uz/', '2023-04-26 06:58:03', 1),
(41, '51.159.101.199', '2023-04-26 08:49:47', NULL, 'Mozilla/5.0 (X11; Linux x86_64; rv:104.0) Gecko/20100101 Firefox/104.0', '', NULL, 0, 'http://bozzor.uz/', 'http://bozzor.uz/', '2023-04-26 08:49:47', 0),
(42, '84.54.83.156', '2023-04-26 12:06:09', NULL, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.2 (KHTML, like Gecko) Chrome/15.0.874.121 Safari/535.2', '', NULL, 0, 'http://bozzor.uz/', 'http://bozzor.uz/', '2023-04-26 12:06:09', 1),
(43, '213.230.100.226', '2023-04-26 16:05:06', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '', NULL, 0, 'http://bozzor.uz/tashkent/kommercheskaya-nedvizhimost/ofisnoe-pomeshchenie-600-m2-sobstvennik-1', 'http://bozzor.uz/tashkent/kommercheskaya-nedvizhimost/ofisnoe-pomeshchenie-600-m2-sobstvennik-1', '2023-04-26 18:18:27', 0),
(44, '35.87.200.199', '2023-04-26 19:49:17', 'http://bozzor.uz/.well-known/acme-challenge/lpc2V07Fs7S7meBAJyQX09YnufaW3nEuN3qFZi2ZQks', 'Mozilla/5.0 (compatible; Let\'s Encrypt validation server; +https://www.letsencrypt.org)', '', NULL, 0, 'http://bozzor.uz/.well-known/acme-challenge/lpc2V07Fs7S7meBAJyQX09YnufaW3nEuN3qFZi2ZQks', 'http://bozzor.uz/.well-known/acme-challenge/lpc2V07Fs7S7meBAJyQX09YnufaW3nEuN3qFZi2ZQks', '2023-04-26 19:49:17', 1),
(45, '23.178.112.209', '2023-04-26 19:49:18', 'http://bozzor.uz/.well-known/acme-challenge/lpc2V07Fs7S7meBAJyQX09YnufaW3nEuN3qFZi2ZQks', 'Mozilla/5.0 (compatible; Let\'s Encrypt validation server; +https://www.letsencrypt.org)', '', NULL, 0, 'http://bozzor.uz/.well-known/acme-challenge/lpc2V07Fs7S7meBAJyQX09YnufaW3nEuN3qFZi2ZQks', 'http://bozzor.uz/.well-known/acme-challenge/lpc2V07Fs7S7meBAJyQX09YnufaW3nEuN3qFZi2ZQks', '2023-04-26 19:49:18', 1),
(46, '185.155.118.1', '2023-04-26 21:04:57', NULL, 'Mozilla/5.0 (compatible; BegetSitemapBot/0.0.1)', '', NULL, 0, 'http://bozzor.uz/sitemap.xml', 'http://bozzor.uz/sitemap.xml', '2023-04-27 02:50:12', 0),
(47, '84.54.83.156', '2023-04-26 23:51:24', NULL, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.2 (KHTML, like Gecko) Chrome/15.0.874.121 Safari/535.2', '', NULL, 0, 'http://bozzor.uz/', 'http://bozzor.uz/', '2023-04-27 14:41:43', 0),
(48, '37.110.214.234', '2023-04-27 08:41:41', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '', NULL, 0, 'http://bozzor.uz/tashkent/prodazha-kvartir', 'http://bozzor.uz/tashkent/prodazha-kvartir', '2023-04-27 08:42:29', 1),
(49, '34.220.76.241', '2023-04-27 19:47:12', 'http://bozzor.uz/.well-known/acme-challenge/ZjFTym2Ay128Ar8jTsj8x_QMOcfxqPiPi9ULe4X0T5I', 'Mozilla/5.0 (compatible; Let\'s Encrypt validation server; +https://www.letsencrypt.org)', '', NULL, 0, 'http://bozzor.uz/.well-known/acme-challenge/ZjFTym2Ay128Ar8jTsj8x_QMOcfxqPiPi9ULe4X0T5I', 'http://bozzor.uz/.well-known/acme-challenge/ZjFTym2Ay128Ar8jTsj8x_QMOcfxqPiPi9ULe4X0T5I', '2023-04-27 19:47:12', 1),
(50, '3.131.97.176', '2023-04-27 19:47:12', 'http://bozzor.uz/.well-known/acme-challenge/ZjFTym2Ay128Ar8jTsj8x_QMOcfxqPiPi9ULe4X0T5I', 'Mozilla/5.0 (compatible; Let\'s Encrypt validation server; +https://www.letsencrypt.org)', '', NULL, 0, 'http://bozzor.uz/.well-known/acme-challenge/ZjFTym2Ay128Ar8jTsj8x_QMOcfxqPiPi9ULe4X0T5I', 'http://bozzor.uz/.well-known/acme-challenge/ZjFTym2Ay128Ar8jTsj8x_QMOcfxqPiPi9ULe4X0T5I', '2023-04-27 19:47:12', 1),
(51, '23.178.112.208', '2023-04-27 19:47:14', 'http://bozzor.uz/.well-known/acme-challenge/ZjFTym2Ay128Ar8jTsj8x_QMOcfxqPiPi9ULe4X0T5I', 'Mozilla/5.0 (compatible; Let\'s Encrypt validation server; +https://www.letsencrypt.org)', '', NULL, 0, 'http://bozzor.uz/.well-known/acme-challenge/ZjFTym2Ay128Ar8jTsj8x_QMOcfxqPiPi9ULe4X0T5I', 'http://bozzor.uz/.well-known/acme-challenge/ZjFTym2Ay128Ar8jTsj8x_QMOcfxqPiPi9ULe4X0T5I', '2023-04-27 19:47:14', 1),
(52, '185.155.118.1', '2023-04-27 21:01:32', NULL, 'Mozilla/5.0 (compatible; BegetSitemapBot/0.0.1)', '', NULL, 0, 'http://bozzor.uz/sitemap.xml', 'http://bozzor.uz/sitemap.xml', '2023-04-28 02:51:59', 0),
(53, '84.54.83.156', '2023-04-28 05:23:28', NULL, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.2 (KHTML, like Gecko) Chrome/15.0.874.121 Safari/535.2', '', NULL, 0, 'http://bozzor.uz/', 'http://bozzor.uz/', '2023-04-28 05:23:28', 0),
(54, '52.12.215.136', '2023-04-28 12:39:32', NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '', NULL, 0, 'http://bozzor.uz/', 'http://bozzor.uz/', '2023-04-28 12:39:32', 1),
(55, '23.178.112.106', '2023-04-28 19:47:18', 'http://bozzor.uz/.well-known/acme-challenge/8dcm3FplzauZI3ADRZIfXS0WsL4H8Br_iUPQqaphYog', 'Mozilla/5.0 (compatible; Let\'s Encrypt validation server; +https://www.letsencrypt.org)', '', NULL, 0, 'http://bozzor.uz/.well-known/acme-challenge/8dcm3FplzauZI3ADRZIfXS0WsL4H8Br_iUPQqaphYog', 'http://bozzor.uz/.well-known/acme-challenge/8dcm3FplzauZI3ADRZIfXS0WsL4H8Br_iUPQqaphYog', '2023-04-28 19:47:18', 1),
(56, '34.222.106.86', '2023-04-28 19:47:18', 'http://bozzor.uz/.well-known/acme-challenge/8dcm3FplzauZI3ADRZIfXS0WsL4H8Br_iUPQqaphYog', 'Mozilla/5.0 (compatible; Let\'s Encrypt validation server; +https://www.letsencrypt.org)', '', NULL, 0, 'http://bozzor.uz/.well-known/acme-challenge/8dcm3FplzauZI3ADRZIfXS0WsL4H8Br_iUPQqaphYog', 'http://bozzor.uz/.well-known/acme-challenge/8dcm3FplzauZI3ADRZIfXS0WsL4H8Br_iUPQqaphYog', '2023-04-28 19:47:18', 1),
(57, '84.54.83.156', '2023-04-28 20:08:02', NULL, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.2 (KHTML, like Gecko) Chrome/15.0.874.121 Safari/535.2', '', NULL, 0, 'http://bozzor.uz/', 'http://bozzor.uz/', '2023-04-29 12:05:25', 0),
(58, '185.155.118.1', '2023-04-28 21:29:40', NULL, 'Mozilla/5.0 (compatible; BegetSitemapBot/0.0.1)', '', NULL, 0, 'http://bozzor.uz/sitemap.xml', 'http://bozzor.uz/sitemap.xml', '2023-04-29 02:52:33', 0),
(59, '193.235.141.126', '2023-04-28 22:14:14', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '', NULL, 0, 'http://bozzor.uz/', 'http://bozzor.uz/', '2023-04-28 22:14:14', 1),
(60, '62.141.44.236', '2023-04-29 10:49:49', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36 Edg/91.0.864.54', '', NULL, 0, 'http://bozzor.uz/', 'http://bozzor.uz/', '2023-04-29 10:49:49', 1),
(61, '77.83.28.86', '2023-04-29 16:19:26', 'http://bozzor.uz/ru', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', NULL, 0, 'http://bozzor.uz/', 'http://bozzor.uz/', '2023-04-29 16:19:28', 1),
(62, '54.185.78.190', '2023-04-29 16:50:34', NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31', '', NULL, 0, 'http://bozzor.uz/', 'http://bozzor.uz/', '2023-04-29 16:50:34', 1),
(63, '34.222.61.29', '2023-04-29 19:48:38', 'http://bozzor.uz/.well-known/acme-challenge/QyssWcfzuw8cwjl94U5RfPMHPz_7_9PqIeFfw_2HaD4', 'Mozilla/5.0 (compatible; Let\'s Encrypt validation server; +https://www.letsencrypt.org)', '', NULL, 0, 'http://bozzor.uz/.well-known/acme-challenge/QyssWcfzuw8cwjl94U5RfPMHPz_7_9PqIeFfw_2HaD4', 'http://bozzor.uz/.well-known/acme-challenge/QyssWcfzuw8cwjl94U5RfPMHPz_7_9PqIeFfw_2HaD4', '2023-04-29 19:48:38', 1),
(64, '23.178.112.106', '2023-04-29 19:48:40', 'http://bozzor.uz/.well-known/acme-challenge/QyssWcfzuw8cwjl94U5RfPMHPz_7_9PqIeFfw_2HaD4', 'Mozilla/5.0 (compatible; Let\'s Encrypt validation server; +https://www.letsencrypt.org)', '', NULL, 0, 'http://bozzor.uz/.well-known/acme-challenge/QyssWcfzuw8cwjl94U5RfPMHPz_7_9PqIeFfw_2HaD4', 'http://bozzor.uz/.well-known/acme-challenge/QyssWcfzuw8cwjl94U5RfPMHPz_7_9PqIeFfw_2HaD4', '2023-04-29 19:48:40', 0),
(65, '91.226.82.71', '2023-04-29 20:44:17', NULL, 'Mozilla/5.0 (Linux; Android 9; FLA-LX1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Mobile Safari/537.36 OPR/59.1.2926.54067', '', NULL, 0, 'http://bozzor.uz/wp-commentin.php', 'http://bozzor.uz/wp-commentin.php', '2023-04-29 20:44:17', 1),
(66, '91.226.82.71', '2023-04-29 20:44:17', NULL, 'Mozilla/5.0 (Linux; Android 9; FLA-LX1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Mobile Safari/537.36 OPR/59.1.2926.54067', '', NULL, 0, 'http://bozzor.uz/wp-cc.php', 'http://bozzor.uz/wp-cc.php', '2023-04-29 20:44:17', 1),
(67, '185.155.118.1', '2023-04-29 21:27:29', NULL, 'Mozilla/5.0 (compatible; BegetSitemapBot/0.0.1)', '', NULL, 0, 'http://bozzor.uz/sitemap.xml', 'http://bozzor.uz/sitemap.xml', '2023-04-30 02:52:48', 0),
(68, '84.54.83.156', '2023-04-29 23:43:14', NULL, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.2 (KHTML, like Gecko) Chrome/15.0.874.121 Safari/535.2', '', NULL, 0, 'http://bozzor.uz/', 'http://bozzor.uz/', '2023-04-30 14:32:04', 0),
(69, '84.54.84.41', '2023-04-30 09:10:37', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '', NULL, 0, 'http://bozzor.uz/', 'http://bozzor.uz/', '2023-04-30 09:10:41', 0),
(70, '35.165.134.129', '2023-04-30 11:17:30', NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '', NULL, 0, 'http://bozzor.uz/', 'http://bozzor.uz/', '2023-04-30 11:17:30', 1),
(71, '35.91.36.54', '2023-04-30 11:17:34', NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '', NULL, 0, 'http://bozzor.uz/', 'http://bozzor.uz/', '2023-04-30 11:17:34', 1),
(72, '18.188.107.130', '2023-04-30 19:47:39', 'http://bozzor.uz/.well-known/acme-challenge/S1kHyDdUYo8hT6aEsNNt98wjtfr7RIYt0tdnNRYdJDw', 'Mozilla/5.0 (compatible; Let\'s Encrypt validation server; +https://www.letsencrypt.org)', '', NULL, 0, 'http://bozzor.uz/.well-known/acme-challenge/S1kHyDdUYo8hT6aEsNNt98wjtfr7RIYt0tdnNRYdJDw', 'http://bozzor.uz/.well-known/acme-challenge/S1kHyDdUYo8hT6aEsNNt98wjtfr7RIYt0tdnNRYdJDw', '2023-04-30 19:47:39', 1),
(73, '35.163.206.248', '2023-04-30 19:47:39', 'http://bozzor.uz/.well-known/acme-challenge/S1kHyDdUYo8hT6aEsNNt98wjtfr7RIYt0tdnNRYdJDw', 'Mozilla/5.0 (compatible; Let\'s Encrypt validation server; +https://www.letsencrypt.org)', '', NULL, 0, 'http://bozzor.uz/.well-known/acme-challenge/S1kHyDdUYo8hT6aEsNNt98wjtfr7RIYt0tdnNRYdJDw', 'http://bozzor.uz/.well-known/acme-challenge/S1kHyDdUYo8hT6aEsNNt98wjtfr7RIYt0tdnNRYdJDw', '2023-04-30 19:47:39', 1),
(74, '23.178.112.203', '2023-04-30 19:47:43', 'http://bozzor.uz/.well-known/acme-challenge/S1kHyDdUYo8hT6aEsNNt98wjtfr7RIYt0tdnNRYdJDw', 'Mozilla/5.0 (compatible; Let\'s Encrypt validation server; +https://www.letsencrypt.org)', '', NULL, 0, 'http://bozzor.uz/.well-known/acme-challenge/S1kHyDdUYo8hT6aEsNNt98wjtfr7RIYt0tdnNRYdJDw', 'http://bozzor.uz/.well-known/acme-challenge/S1kHyDdUYo8hT6aEsNNt98wjtfr7RIYt0tdnNRYdJDw', '2023-04-30 19:47:43', 0),
(75, '185.155.118.1', '2023-04-30 21:26:34', NULL, 'Mozilla/5.0 (compatible; BegetSitemapBot/0.0.1)', '', NULL, 0, 'http://bozzor.uz/sitemap.xml', 'http://bozzor.uz/sitemap.xml', '2023-05-01 02:54:29', 0),
(76, '93.158.91.235', '2023-04-30 23:30:20', 'http://bozzor.uz/humans.txt', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.5 Mobile/15E148 Safari/604.1', '', NULL, 0, 'http://bozzor.uz/humans.txt', 'http://bozzor.uz/humans.txt', '2023-04-30 23:30:20', 1),
(77, '93.158.91.250', '2023-04-30 23:30:21', 'http://bozzor.uz/ads.txt', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.5 Mobile/15E148 Safari/604.1', '', NULL, 0, 'http://bozzor.uz/', 'http://bozzor.uz/', '2023-04-30 23:30:21', 1),
(78, '84.54.83.156', '2023-05-01 05:27:55', NULL, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.2 (KHTML, like Gecko) Chrome/15.0.874.121 Safari/535.2', '', NULL, 0, 'http://bozzor.uz/', 'http://bozzor.uz/', '2023-05-01 05:27:55', 0),
(79, '35.91.85.225', '2023-05-01 11:09:07', NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '', NULL, 0, 'http://bozzor.uz/', 'http://bozzor.uz/', '2023-05-01 11:09:07', 1),
(80, '35.92.72.158', '2023-05-01 11:09:34', NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '', NULL, 0, 'http://bozzor.uz/', 'http://bozzor.uz/', '2023-05-01 11:09:34', 1),
(81, '18.236.160.63', '2023-05-01 14:15:46', NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31', '', NULL, 0, 'http://bozzor.uz/', 'http://bozzor.uz/', '2023-05-01 14:15:46', 1),
(82, '193.235.141.162', '2023-05-01 15:40:19', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '', NULL, 0, 'http://bozzor.uz/', 'http://bozzor.uz/', '2023-05-01 15:40:19', 1),
(83, '199.244.88.232', '2023-05-01 19:17:35', 'http://bozzor.uz', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '', NULL, 0, 'http://bozzor.uz/', 'http://bozzor.uz/', '2023-05-01 19:17:35', 1),
(84, '34.216.22.18', '2023-05-01 19:48:07', 'http://bozzor.uz/.well-known/acme-challenge/4R9luQ9F51Bmp07y_bvxOa-l1dT2dvk6IMiZgJY0Eg0', 'Mozilla/5.0 (compatible; Let\'s Encrypt validation server; +https://www.letsencrypt.org)', '', NULL, 0, 'http://bozzor.uz/.well-known/acme-challenge/4R9luQ9F51Bmp07y_bvxOa-l1dT2dvk6IMiZgJY0Eg0', 'http://bozzor.uz/.well-known/acme-challenge/4R9luQ9F51Bmp07y_bvxOa-l1dT2dvk6IMiZgJY0Eg0', '2023-05-01 19:48:07', 1),
(85, '18.119.122.159', '2023-05-01 19:48:08', 'http://bozzor.uz/.well-known/acme-challenge/4R9luQ9F51Bmp07y_bvxOa-l1dT2dvk6IMiZgJY0Eg0', 'Mozilla/5.0 (compatible; Let\'s Encrypt validation server; +https://www.letsencrypt.org)', '', NULL, 0, 'http://bozzor.uz/.well-known/acme-challenge/4R9luQ9F51Bmp07y_bvxOa-l1dT2dvk6IMiZgJY0Eg0', 'http://bozzor.uz/.well-known/acme-challenge/4R9luQ9F51Bmp07y_bvxOa-l1dT2dvk6IMiZgJY0Eg0', '2023-05-01 19:48:08', 1),
(86, '23.178.112.102', '2023-05-01 19:48:09', 'http://bozzor.uz/.well-known/acme-challenge/4R9luQ9F51Bmp07y_bvxOa-l1dT2dvk6IMiZgJY0Eg0', 'Mozilla/5.0 (compatible; Let\'s Encrypt validation server; +https://www.letsencrypt.org)', '', NULL, 0, 'http://bozzor.uz/.well-known/acme-challenge/4R9luQ9F51Bmp07y_bvxOa-l1dT2dvk6IMiZgJY0Eg0', 'http://bozzor.uz/.well-known/acme-challenge/4R9luQ9F51Bmp07y_bvxOa-l1dT2dvk6IMiZgJY0Eg0', '2023-05-01 19:48:09', 1),
(87, '84.54.83.156', '2023-05-01 20:28:17', NULL, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.2 (KHTML, like Gecko) Chrome/15.0.874.121 Safari/535.2', '', NULL, 0, 'http://bozzor.uz/', 'http://bozzor.uz/', '2023-05-02 12:04:27', 0),
(88, '185.155.118.1', '2023-05-01 21:24:48', NULL, 'Mozilla/5.0 (compatible; BegetSitemapBot/0.0.1)', '', NULL, 0, 'http://bozzor.uz/sitemap.xml', 'http://bozzor.uz/sitemap.xml', '2023-05-02 02:53:03', 0),
(89, '35.89.29.187', '2023-05-02 19:48:26', 'http://bozzor.uz/.well-known/acme-challenge/8mKq4Dmy9gdrf3ysQyd9WChWQpDyCe92tld7lAzJ2z0', 'Mozilla/5.0 (compatible; Let\'s Encrypt validation server; +https://www.letsencrypt.org)', '', NULL, 0, 'http://bozzor.uz/.well-known/acme-challenge/8mKq4Dmy9gdrf3ysQyd9WChWQpDyCe92tld7lAzJ2z0', 'http://bozzor.uz/.well-known/acme-challenge/8mKq4Dmy9gdrf3ysQyd9WChWQpDyCe92tld7lAzJ2z0', '2023-05-02 19:48:26', 1),
(90, '23.178.112.106', '2023-05-02 19:48:26', 'http://bozzor.uz/.well-known/acme-challenge/8mKq4Dmy9gdrf3ysQyd9WChWQpDyCe92tld7lAzJ2z0', 'Mozilla/5.0 (compatible; Let\'s Encrypt validation server; +https://www.letsencrypt.org)', '', NULL, 0, 'http://bozzor.uz/.well-known/acme-challenge/8mKq4Dmy9gdrf3ysQyd9WChWQpDyCe92tld7lAzJ2z0', 'http://bozzor.uz/.well-known/acme-challenge/8mKq4Dmy9gdrf3ysQyd9WChWQpDyCe92tld7lAzJ2z0', '2023-05-02 19:48:26', 0),
(91, '185.155.118.1', '2023-05-02 21:20:40', NULL, 'Mozilla/5.0 (compatible; BegetSitemapBot/0.0.1)', '', NULL, 0, 'http://bozzor.uz/sitemap.xml', 'http://bozzor.uz/sitemap.xml', '2023-05-03 02:51:32', 0),
(92, '84.54.83.156', '2023-05-02 23:54:51', NULL, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.2 (KHTML, like Gecko) Chrome/15.0.874.121 Safari/535.2', '', NULL, 0, 'http://bozzor.uz/', 'http://bozzor.uz/', '2023-05-03 14:53:22', 0),
(93, '85.239.39.102', '2023-05-03 06:34:03', NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.5563.146 Safari/537.36', '', NULL, 0, 'http://bozzor.uz/', 'http://bozzor.uz/', '2023-05-03 06:34:03', 1),
(94, '173.252.83.119', '2023-05-03 13:31:33', NULL, 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', NULL, 0, 'http://bozzor.uz/', 'http://bozzor.uz/', '2023-05-03 13:31:33', 1),
(95, '185.185.69.128', '2023-05-03 15:19:46', NULL, 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0', '', NULL, 0, 'http://bozzor.uz/map', 'http://bozzor.uz/map', '2023-05-03 15:25:00', 1),
(96, '23.178.112.106', '2023-05-03 19:47:04', 'http://bozzor.uz/.well-known/acme-challenge/Ge2fLUid6caA5b-7A9kBMddsMv_xJ4gy6i1qXNsqnXA', 'Mozilla/5.0 (compatible; Let\'s Encrypt validation server; +https://www.letsencrypt.org)', '', NULL, 0, 'http://bozzor.uz/.well-known/acme-challenge/Ge2fLUid6caA5b-7A9kBMddsMv_xJ4gy6i1qXNsqnXA', 'http://bozzor.uz/.well-known/acme-challenge/Ge2fLUid6caA5b-7A9kBMddsMv_xJ4gy6i1qXNsqnXA', '2023-05-03 19:47:04', 0),
(97, '35.91.30.56', '2023-05-03 19:47:04', 'http://bozzor.uz/.well-known/acme-challenge/Ge2fLUid6caA5b-7A9kBMddsMv_xJ4gy6i1qXNsqnXA', 'Mozilla/5.0 (compatible; Let\'s Encrypt validation server; +https://www.letsencrypt.org)', '', NULL, 0, 'http://bozzor.uz/.well-known/acme-challenge/Ge2fLUid6caA5b-7A9kBMddsMv_xJ4gy6i1qXNsqnXA', 'http://bozzor.uz/.well-known/acme-challenge/Ge2fLUid6caA5b-7A9kBMddsMv_xJ4gy6i1qXNsqnXA', '2023-05-03 19:47:04', 1),
(98, '185.155.118.1', '2023-05-03 21:17:43', NULL, 'Mozilla/5.0 (compatible; BegetSitemapBot/0.0.1)', '', NULL, 0, 'http://bozzor.uz/sitemap.xml', 'http://bozzor.uz/sitemap.xml', '2023-05-04 02:50:38', 0),
(99, '84.54.83.156', '2023-05-04 05:44:57', NULL, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.2 (KHTML, like Gecko) Chrome/15.0.874.121 Safari/535.2', '', NULL, 0, 'http://bozzor.uz/', 'http://bozzor.uz/', '2023-05-04 05:44:57', 0),
(100, '193.235.141.7', '2023-05-04 08:09:33', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '', NULL, 0, 'http://bozzor.uz/', 'http://bozzor.uz/', '2023-05-04 08:09:33', 1),
(101, '35.92.50.151', '2023-05-04 19:47:29', 'http://bozzor.uz/.well-known/acme-challenge/yh7AxTZ-Qw1U-R4OZL6hbiIlGT6Sp0AxfKedigkibc0', 'Mozilla/5.0 (compatible; Let\'s Encrypt validation server; +https://www.letsencrypt.org)', '', NULL, 0, 'http://bozzor.uz/.well-known/acme-challenge/yh7AxTZ-Qw1U-R4OZL6hbiIlGT6Sp0AxfKedigkibc0', 'http://bozzor.uz/.well-known/acme-challenge/yh7AxTZ-Qw1U-R4OZL6hbiIlGT6Sp0AxfKedigkibc0', '2023-05-04 19:47:29', 1),
(102, '23.178.112.203', '2023-05-04 19:47:29', 'http://bozzor.uz/.well-known/acme-challenge/yh7AxTZ-Qw1U-R4OZL6hbiIlGT6Sp0AxfKedigkibc0', 'Mozilla/5.0 (compatible; Let\'s Encrypt validation server; +https://www.letsencrypt.org)', '', NULL, 0, 'http://bozzor.uz/.well-known/acme-challenge/yh7AxTZ-Qw1U-R4OZL6hbiIlGT6Sp0AxfKedigkibc0', 'http://bozzor.uz/.well-known/acme-challenge/yh7AxTZ-Qw1U-R4OZL6hbiIlGT6Sp0AxfKedigkibc0', '2023-05-04 19:47:29', 0),
(103, '84.54.83.156', '2023-05-04 20:55:15', NULL, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.2 (KHTML, like Gecko) Chrome/15.0.874.121 Safari/535.2', '', NULL, 0, 'http://bozzor.uz/', 'http://bozzor.uz/', '2023-05-05 12:06:01', 0),
(104, '185.155.118.1', '2023-05-04 21:14:52', NULL, 'Mozilla/5.0 (compatible; BegetSitemapBot/0.0.1)', '', NULL, 0, 'http://bozzor.uz/sitemap.xml', 'http://bozzor.uz/sitemap.xml', '2023-05-05 02:52:40', 0),
(105, '46.138.90.10', '2023-05-04 22:03:28', 'http://bozzor.uz/ru', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', '', NULL, 0, 'http://bozzor.uz/', 'http://bozzor.uz/', '2023-05-04 22:03:28', 1),
(106, '35.87.152.158', '2023-05-05 11:41:38', NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '', NULL, 0, 'http://bozzor.uz/', 'http://bozzor.uz/', '2023-05-05 11:41:38', 1),
(107, '34.220.9.187', '2023-05-05 11:41:50', NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '', NULL, 0, 'http://bozzor.uz/', 'http://bozzor.uz/', '2023-05-05 11:41:50', 1),
(108, '52.39.172.109', '2023-05-05 19:48:05', 'http://bozzor.uz/.well-known/acme-challenge/LZ4egvi0sbsMImIg9R6fJ7ZE_byNUYkdNqJzTTnYMaA', 'Mozilla/5.0 (compatible; Let\'s Encrypt validation server; +https://www.letsencrypt.org)', '', NULL, 0, 'http://bozzor.uz/.well-known/acme-challenge/LZ4egvi0sbsMImIg9R6fJ7ZE_byNUYkdNqJzTTnYMaA', 'http://bozzor.uz/.well-known/acme-challenge/LZ4egvi0sbsMImIg9R6fJ7ZE_byNUYkdNqJzTTnYMaA', '2023-05-05 19:48:05', 1),
(109, '23.178.112.106', '2023-05-05 19:48:05', 'http://bozzor.uz/.well-known/acme-challenge/LZ4egvi0sbsMImIg9R6fJ7ZE_byNUYkdNqJzTTnYMaA', 'Mozilla/5.0 (compatible; Let\'s Encrypt validation server; +https://www.letsencrypt.org)', '', NULL, 0, 'http://bozzor.uz/.well-known/acme-challenge/LZ4egvi0sbsMImIg9R6fJ7ZE_byNUYkdNqJzTTnYMaA', 'http://bozzor.uz/.well-known/acme-challenge/LZ4egvi0sbsMImIg9R6fJ7ZE_byNUYkdNqJzTTnYMaA', '2023-05-05 19:48:05', 0),
(110, '185.155.118.1', '2023-05-05 21:11:35', NULL, 'Mozilla/5.0 (compatible; BegetSitemapBot/0.0.1)', '', NULL, 0, 'http://bozzor.uz/sitemap.xml', 'http://bozzor.uz/sitemap.xml', '2023-05-06 02:53:10', 0),
(111, '84.54.83.156', '2023-05-05 23:53:34', NULL, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.2 (KHTML, like Gecko) Chrome/15.0.874.121 Safari/535.2', '', NULL, 0, 'http://bozzor.uz/', 'http://bozzor.uz/', '2023-05-06 14:43:08', 0),
(112, '208.91.64.34', '2023-05-06 00:22:24', 'http://bozzor.uz/wordpress', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '', NULL, 0, 'http://bozzor.uz/home', 'http://bozzor.uz/home', '2023-05-06 00:22:36', 1),
(113, '171.236.38.52', '2023-05-06 02:33:50', NULL, 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:28.0) Gecko/20100101 Firefox/28.0', '', NULL, 0, 'http://bozzor.uz/', 'http://bozzor.uz/', '2023-05-06 02:33:52', 1),
(114, '205.210.31.51', '2023-05-06 09:35:16', 'http://bozzor.uz/', NULL, '', NULL, 0, 'http://bozzor.uz/', 'http://bozzor.uz/', '2023-05-06 09:35:16', 1),
(115, '35.92.128.183', '2023-05-06 11:23:57', NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '', NULL, 0, 'http://bozzor.uz/', 'http://bozzor.uz/', '2023-05-06 11:23:57', 1),
(116, '87.236.176.214', '2023-05-06 11:50:57', 'https://bozzor.uz', 'Mozilla/5.0 (compatible; InternetMeasurement/1.0; +https://internet-measurement.com/)', '', NULL, 0, 'http://bozzor.uz/', 'http://bozzor.uz/', '2023-05-06 11:50:57', 1),
(117, '198.235.24.163', '2023-05-06 14:16:34', 'http://bozzor.uz/', NULL, '', NULL, 0, 'http://bozzor.uz/', 'http://bozzor.uz/', '2023-05-06 14:16:34', 1),
(118, '139.59.125.19', '2023-05-06 19:14:12', 'https://www.bing.com', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1667.0 Safari/537.36', '', NULL, 0, 'http://bozzor.uz/wp/wp-login.php', 'http://bozzor.uz/wp/wp-login.php', '2023-05-06 19:14:23', 1),
(119, '23.178.112.102', '2023-05-06 19:48:10', 'http://bozzor.uz/.well-known/acme-challenge/dCQDNvsMYIGUXos5Q-4TgKJFfJS2y8GmuWE9Ij2Ns-s', 'Mozilla/5.0 (compatible; Let\'s Encrypt validation server; +https://www.letsencrypt.org)', '', NULL, 0, 'http://bozzor.uz/.well-known/acme-challenge/dCQDNvsMYIGUXos5Q-4TgKJFfJS2y8GmuWE9Ij2Ns-s', 'http://bozzor.uz/.well-known/acme-challenge/dCQDNvsMYIGUXos5Q-4TgKJFfJS2y8GmuWE9Ij2Ns-s', '2023-05-06 19:48:10', 0),
(120, '54.212.118.234', '2023-05-06 19:48:10', 'http://bozzor.uz/.well-known/acme-challenge/dCQDNvsMYIGUXos5Q-4TgKJFfJS2y8GmuWE9Ij2Ns-s', 'Mozilla/5.0 (compatible; Let\'s Encrypt validation server; +https://www.letsencrypt.org)', '', NULL, 0, 'http://bozzor.uz/.well-known/acme-challenge/dCQDNvsMYIGUXos5Q-4TgKJFfJS2y8GmuWE9Ij2Ns-s', 'http://bozzor.uz/.well-known/acme-challenge/dCQDNvsMYIGUXos5Q-4TgKJFfJS2y8GmuWE9Ij2Ns-s', '2023-05-06 19:48:10', 1),
(121, '185.155.118.1', '2023-05-06 21:06:21', NULL, 'Mozilla/5.0 (compatible; BegetSitemapBot/0.0.1)', '', NULL, 0, 'http://bozzor.uz/sitemap.xml', 'http://bozzor.uz/sitemap.xml', '2023-05-07 02:52:37', 0),
(122, '62.141.44.236', '2023-05-07 00:36:56', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36 Edg/91.0.864.54', '', NULL, 0, 'http://bozzor.uz/', 'http://bozzor.uz/', '2023-05-07 00:36:56', 0),
(123, '87.236.176.234', '2023-05-07 01:44:53', 'http://bozzor.uz', 'Mozilla/5.0 (compatible; InternetMeasurement/1.0; +https://internet-measurement.com/)', '', NULL, 0, 'http://bozzor.uz/', 'http://bozzor.uz/', '2023-05-07 01:44:53', 1),
(124, '193.235.141.127', '2023-05-07 01:51:56', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '', NULL, 0, 'http://bozzor.uz/', 'http://bozzor.uz/', '2023-05-07 01:51:56', 1),
(125, '84.54.83.156', '2023-05-07 05:45:36', NULL, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.2 (KHTML, like Gecko) Chrome/15.0.874.121 Safari/535.2', '', NULL, 0, 'http://bozzor.uz/', 'http://bozzor.uz/', '2023-05-07 05:45:36', 0),
(126, '18.237.249.218', '2023-05-07 12:11:41', NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '', NULL, 0, 'http://bozzor.uz/', 'http://bozzor.uz/', '2023-05-07 12:11:41', 1),
(127, '84.54.83.156', '2023-05-07 20:39:15', NULL, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.2 (KHTML, like Gecko) Chrome/15.0.874.121 Safari/535.2', '', NULL, 0, 'http://bozzor.uz/', 'http://bozzor.uz/', '2023-05-07 20:39:15', 0),
(128, '185.155.118.1', '2023-05-07 21:03:38', NULL, 'Mozilla/5.0 (compatible; BegetSitemapBot/0.0.1)', '', NULL, 0, 'http://bozzor.uz/sitemap.xml', 'http://bozzor.uz/sitemap.xml', '2023-05-08 02:55:25', 0),
(129, '141.94.175.120', '2023-05-08 01:21:07', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', '', NULL, 0, 'http://bozzor.uz/sito/wp-includes/wlwmanifest.xml', 'http://bozzor.uz/sito/wp-includes/wlwmanifest.xml', '2023-05-08 01:21:10', 1),
(130, '37.110.215.4', '2023-05-08 08:04:34', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 YaBrowser/23.3.3.719 Yowser/2.5 Safari/537.36', '', NULL, 0, 'http://bozzor.uz/', 'http://bozzor.uz/', '2023-05-08 08:04:34', 1),
(131, '127.0.0.1', '2023-05-08 09:49:54', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 YaBrowser/23.3.3.719 Yowser/2.5 Safari/537.36', '', NULL, 0, 'http://joymee.loc/cp_642bee6b621da/files/css/bootstrap.min.css.map', 'http://joymee.loc/cp_642bee6b621da/files/css/bootstrap.min.css.map', '2023-05-08 10:43:14', 0),
(132, '127.0.0.1', '2023-05-10 06:03:58', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 YaBrowser/23.3.3.719 Yowser/2.5 Safari/537.36', '', NULL, 0, 'http://joymee.loc/map', 'http://joymee.loc/map', '2023-05-10 11:39:54', 0),
(133, '127.0.0.1', '2023-05-11 04:27:46', 'http://joymee.loc/ru', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 YaBrowser/23.3.3.719 Yowser/2.5 Safari/537.36', '', NULL, 1, 'http://joymee.loc/templates/js/bootstrap.min.js.map', 'http://joymee.loc/templates/js/bootstrap.min.js.map', '2023-05-11 11:17:39', 0),
(134, '127.0.0.1', '2023-05-12 05:38:28', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 YaBrowser/23.3.3.719 Yowser/2.5 Safari/537.36', '', NULL, 1, 'http://joymee.loc/templates/css/custom.css', 'http://joymee.loc/templates/css/custom.css', '2023-05-12 11:00:05', 0),
(135, '127.0.0.1', '2023-05-13 09:34:16', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 YaBrowser/23.3.4.594 Yowser/2.5 Safari/537.36', '', NULL, 1, 'http://joymee.loc/tashkent/dom/uy-sotiladi-hay-tek-5', 'http://joymee.loc/tashkent/dom/uy-sotiladi-hay-tek-5', '2023-05-13 11:54:23', 0),
(136, '127.0.0.1', '2023-05-15 07:45:23', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 YaBrowser/23.3.4.594 Yowser/2.5 Safari/537.36', '', NULL, 1, 'http://joymee.loc/templates/js/bootstrap.min.js.map', 'http://joymee.loc/templates/js/bootstrap.min.js.map', '2023-05-15 11:24:48', 0),
(137, '127.0.0.1', '2023-05-16 06:40:32', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 YaBrowser/23.3.4.594 Yowser/2.5 Safari/537.36', '', NULL, 1, 'http://joymee.loc/map', 'http://joymee.loc/map', '2023-05-16 09:43:22', 0),
(138, '127.0.0.1', '2023-05-17 08:58:26', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 YaBrowser/23.3.4.594 Yowser/2.5 Safari/537.36', '', NULL, 1, 'http://joymee.loc/templates/css/lightgallery.css.map', 'http://joymee.loc/templates/css/lightgallery.css.map', '2023-05-17 11:18:56', 0),
(139, '127.0.0.1', '2023-05-18 05:39:43', 'http://joymee.loc/ru/blog', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 YaBrowser/23.3.4.594 Yowser/2.5 Safari/537.36', '', NULL, 1, 'http://joymee.loc/tashkent/arenda', 'http://joymee.loc/tashkent/arenda', '2023-05-18 06:01:33', 0),
(140, '127.0.0.1', '2023-05-19 05:57:09', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 YaBrowser/23.3.4.603 Yowser/2.5 Safari/537.36', '', NULL, 1, 'http://joymee.loc/tashkent/?filter%5Barea%5D%5B%5D=277&city_id=46213&id_c=444', 'http://joymee.loc/tashkent/?filter%5Barea%5D%5B%5D=277&city_id=46213&id_c=444', '2023-05-19 11:55:13', 0),
(141, '127.0.0.1', '2023-05-23 07:17:37', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 YaBrowser/23.3.4.603 Yowser/2.5 Safari/537.36', '', NULL, 1, 'http://joymee.loc/templates/js/bootstrap.min.js.map', 'http://joymee.loc/templates/js/bootstrap.min.js.map', '2023-05-23 10:35:50', 0),
(142, '127.0.0.1', '2023-05-24 04:54:20', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 YaBrowser/23.3.4.603 Yowser/2.5 Safari/537.36', '', NULL, 0, 'http://joymee.loc/map/tashkent', 'http://joymee.loc/map/tashkent', '2023-05-24 14:14:52', 0),
(143, '127.0.0.1', '2023-05-26 10:47:29', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 YaBrowser/23.3.4.603 Yowser/2.5 Safari/537.36', '', NULL, 1, 'http://joymee.loc/templates/css/bootstrap.min.css.map', 'http://joymee.loc/templates/css/bootstrap.min.css.map', '2023-05-26 10:47:44', 0),
(144, '127.0.0.1', '2023-05-30 06:16:51', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 YaBrowser/23.3.4.603 Yowser/2.5 Safari/537.36', '', NULL, 1, 'http://joymee.loc/templates/js/bootstrap.min.js.map', 'http://joymee.loc/templates/js/bootstrap.min.js.map', '2023-05-30 09:16:54', 0),
(145, '127.0.0.1', '2023-05-31 09:50:10', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 YaBrowser/23.3.4.603 Yowser/2.5 Safari/537.36', '', NULL, 1, 'http://joymee.loc/user/shuhrat/balance', 'http://joymee.loc/user/shuhrat/balance', '2023-05-31 14:24:21', 0),
(146, '127.0.0.1', '2023-06-01 06:06:19', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 YaBrowser/23.3.4.603 Yowser/2.5 Safari/537.36', '', NULL, 1, 'http://joymee.loc/templates/css/bootstrap.min.css.map', 'http://joymee.loc/templates/css/bootstrap.min.css.map', '2023-06-01 14:12:11', 0),
(147, '127.0.0.1', '2023-06-02 05:50:37', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 YaBrowser/23.3.4.603 Yowser/2.5 Safari/537.36', '', NULL, 0, 'http://joymee.loc/auth', 'http://joymee.loc/auth', '2023-06-02 06:36:09', 0),
(148, '127.0.0.1', '2023-06-26 12:16:47', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 YaBrowser/23.5.2.625 Yowser/2.5 Safari/537.36', '', NULL, 1, 'http://joymee.loc/map/tashkent', 'http://joymee.loc/map/tashkent', '2023-06-26 12:17:57', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `uni_metro`
--

CREATE TABLE `uni_metro` (
  `id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `color` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `uni_metro`
--

INSERT INTO `uni_metro` (`id`, `city_id`, `name`, `color`, `parent_id`) VALUES
(2, 1134, 'Замоскворецкая', '#44b85c', 0),
(3, 1134, 'Арбатско-Покровская', '#0078bf', 0),
(4, 1134, 'Филёвская', '#19c1f3', 0),
(5, 1134, 'Кольцевая', '#894e35', 0),
(6, 1134, 'Калужско-Рижская', '#f58631', 0),
(7, 1134, 'Таганско-Краснопресненская', '#8e479c', 0),
(8, 1134, 'Калининско-Солнцевская', '#ffcb31', 0),
(9, 1134, 'Серпуховско-Тимирязевская', '#a1a2a3', 0),
(10, 1134, 'Люблинско-Дмитровская', '#b3d445', 0),
(11, 1134, 'Каховская', '#79cdcd', 0),
(12, 1134, 'Бутовская', '#acbfe1', 0),
(14, 1134, 'Аэропорт', '', 2),
(15, 1134, 'Речной вокзал', '', 2),
(16, 1134, 'Водный стадион', '', 2),
(17, 1134, 'Войковская', '', 2),
(18, 1134, 'Сокол', '', 2),
(19, 1134, 'Динамо', '', 2),
(20, 1134, 'Белорусская', '', 2),
(21, 1134, 'Маяковская', '', 2),
(22, 1134, 'Тверская', '', 2),
(23, 1134, 'Театральная', '', 2),
(24, 1134, 'Новокузнецкая', '', 2),
(25, 1134, 'Павелецкая', '', 2),
(26, 1134, 'Автозаводская', '', 2),
(27, 1134, 'Коломенская', '', 2),
(28, 1134, 'Каширская', '', 2),
(29, 1134, 'Кантемировская', '', 2),
(30, 1134, 'Царицыно', '', 2),
(31, 1134, 'Орехово', '', 2),
(32, 1134, 'Домодедовская', '', 2),
(33, 1134, 'Красногвардейская', '', 2),
(34, 1134, 'Алма-Атинская', '', 2),
(35, 1134, 'Пятницкое шоссе', '', 3),
(36, 1134, 'Митино', '', 3),
(37, 1134, 'Волоколамская', '', 3),
(38, 1134, 'Мякинино', '', 3),
(39, 1134, 'Строгино', '', 3),
(40, 1134, 'Крылатское', '', 3),
(41, 1134, 'Молодёжная', '', 3),
(42, 1134, 'Кунцевская', '', 3),
(43, 1134, 'Славянский бульвар', '', 3),
(44, 1134, 'Парк Победы', '', 3),
(45, 1134, 'Киевская', '', 3),
(46, 1134, 'Смоленская', '', 3),
(47, 1134, 'Арбатская', '', 3),
(48, 1134, 'Площадь Революции', '', 3),
(49, 1134, 'Курская', '', 3),
(50, 1134, 'Бауманская', '', 3),
(51, 1134, 'Электрозаводская', '', 3),
(52, 1134, 'Семёновская', '', 3),
(53, 1134, 'Партизанская', '', 3),
(54, 1134, 'Измайловская', '', 3),
(55, 1134, 'Первомайская', '', 3),
(56, 1134, 'Щёлковская', '', 3),
(57, 1134, 'Парк культуры', '', 5),
(58, 1134, 'Октябрьская', '', 5),
(59, 1134, 'Добрынинская', '', 5),
(60, 1134, 'Павелецкая', '', 5),
(61, 1134, 'Таганская', '', 5),
(62, 1134, 'Курская', '', 5),
(63, 1134, 'Комсомольская', '', 5),
(64, 1134, 'Проспект Мира', '', 5),
(65, 1134, 'Новослободская', '', 5),
(66, 1134, 'Белорусская', '', 5),
(67, 1134, 'Краснопресненская', '', 5),
(68, 1134, 'Киевская', '', 5),
(69, 1134, 'Битцевский парк', '', 12),
(70, 1134, 'Лесопарковая', '', 12),
(71, 1134, 'Улица Старокачаловская', '', 12),
(72, 1134, 'Улица Скобелевская', '', 12),
(73, 1134, 'Бульвар адмирала Ушакова', '', 12),
(74, 1134, 'Улица Горчакова', '', 12),
(75, 1134, 'Бунинская аллея', '', 12),
(76, 1134, 'Бульвар Рокоссовского', '', 12),
(77, 1134, 'Черкизовская', '', 12),
(78, 1134, 'Преображенская площадь', '', 12),
(79, 1134, 'Сокольники', '', 12),
(80, 1134, 'Красносельская', '', 12),
(81, 1134, 'Комсомольская', '', 12),
(82, 1134, 'Красные ворота', '', 12),
(83, 1134, 'Чистые пруды', '', 12),
(84, 1134, 'Лубянка', '', 12),
(85, 1134, 'Охотный ряд', '', 12),
(86, 1134, 'Библиотека имени Ленина', '', 12),
(87, 1134, 'Кропоткинская', '', 12),
(88, 1134, 'Парк культуры', '', 12),
(89, 1134, 'Фрунзенская', '', 12),
(90, 1134, 'Спортивная', '', 12),
(91, 1134, 'Воробьёвы горы', '', 12),
(92, 1134, 'Университет', '', 12),
(93, 1134, 'Проспект Вернадского', '', 12),
(94, 1134, 'Юго-Западная', '', 12),
(95, 1134, 'Каширская', '', 11),
(96, 1134, 'Варшавская', '', 11),
(97, 1134, 'Каховская', '', 11),
(98, 1134, 'Марьина роща', '', 10),
(99, 1134, 'Достоевская', '', 10),
(100, 1134, 'Трубная', '', 10),
(101, 1134, 'Сретенский бульвар', '', 10),
(102, 1134, 'Чкаловская', '', 10),
(103, 1134, 'Римская', '', 10),
(104, 1134, 'Крестьянская застава', '', 10),
(105, 1134, 'Дубровка', '', 10),
(106, 1134, 'Кожуховская', '', 10),
(107, 1134, 'Печатники', '', 10),
(108, 1134, 'Волжская', '', 10),
(109, 1134, 'Люблино', '', 10),
(110, 1134, 'Братиславская', '', 10),
(111, 1134, 'Марьино', '', 10),
(112, 1134, 'Борисово', '', 10),
(113, 1134, 'Шипиловская', '', 10),
(114, 1134, 'Зябликово', '', 10),
(115, 1134, 'Алтуфьево', '', 9),
(116, 1134, 'Бибирево', '', 9),
(117, 1134, 'Отрадное', '', 9),
(118, 1134, 'Владыкино', '', 9),
(119, 1134, 'Петровско-Разумовская', '', 9),
(120, 1134, 'Тимирязевская', '', 9),
(121, 1134, 'Дмитровская', '', 9),
(122, 1134, 'Савёловская', '', 9),
(123, 1134, 'Менделеевская', '', 9),
(124, 1134, 'Цветной бульвар', '', 9),
(125, 1134, 'Чеховская', '', 9),
(126, 1134, 'Боровицкая', '', 9),
(127, 1134, 'Полянка', '', 9),
(128, 1134, 'Серпуховская', '', 9),
(129, 1134, 'Тульская', '', 9),
(130, 1134, 'Нагатинская', '', 9),
(131, 1134, 'Нагорная', '', 9),
(132, 1134, 'Нахимовский проспект', '', 9),
(133, 1134, 'Севастопольская', '', 9),
(134, 1134, 'Чертановская', '', 9),
(135, 1134, 'Южная', '', 9),
(136, 1134, 'Пражская', '', 9),
(137, 1134, 'Улица академика Янгеля', '', 9),
(138, 1134, 'Аннино', '', 10),
(139, 1134, 'Бульвар Дмитрия Донского', '', 9),
(140, 1134, 'Парк Победы', '', 8),
(141, 1134, 'Деловой центр', '', 8),
(142, 1134, 'Третьяковская', '', 8),
(143, 1134, 'Марксистская', '', 8),
(144, 1134, 'Площадь Ильича', '', 8),
(145, 1134, 'Авиамоторная', '', 8),
(146, 1134, 'Шоссе Энтузиастов', '', 8),
(147, 1134, 'Перово', '', 8),
(148, 1134, 'Новогиреево', '', 8),
(149, 1134, 'Новокосино', '', 8),
(150, 1134, 'Планерная', '', 7),
(151, 1134, 'Сходненская', '', 7),
(152, 1134, 'Тушинская', '', 7),
(153, 1134, 'Щукинская', '', 7),
(154, 1134, 'Октябрьское поле', '', 7),
(155, 1134, 'Полежаевская', '', 7),
(156, 1134, 'Беговая', '', 7),
(157, 1134, 'Улица 1905 года', '', 7),
(158, 1134, 'Баррикадная', '', 7),
(159, 1134, 'Пушкинская', '', 7),
(160, 1134, 'Кузнецкий мост', '', 7),
(161, 1134, 'Китай-город', '', 7),
(162, 1134, 'Пролетарская', '', 7),
(163, 1134, 'Волгоградский проспект', '', 7),
(164, 1134, 'Текстильщики', '', 7),
(165, 1134, 'Кузьминки', '', 7),
(166, 1134, 'Рязанский проспект', '', 7),
(167, 1134, 'Выхино', '', 7),
(168, 1134, 'Лермонтовский проспект', '', 7),
(169, 1134, 'Жулебино', '', 7),
(170, 1134, 'Медведково', '', 6),
(171, 1134, 'Бабушкинская', '', 6),
(172, 1134, 'Свиблово', '', 6),
(173, 1134, 'Ботанический сад', '', 6),
(174, 1134, 'ВДНХ', '', 6),
(175, 1134, 'Алексеевская', '', 6),
(176, 1134, 'Рижская', '', 6),
(177, 1134, 'Проспект Мира', '', 6),
(178, 1134, 'Сухаревская', '', 6),
(179, 1134, 'Тургеневская', '', 6),
(180, 1134, 'Китай-город', '', 6),
(181, 1134, 'Третьяковская', '', 6),
(182, 1134, 'Октябрьская', '', 6),
(183, 1134, 'Шаболовская', '', 6),
(184, 1134, 'Ленинский проспект', '', 6),
(185, 1134, 'Академическая', '', 6),
(186, 1134, 'Профсоюзная', '', 6),
(187, 1134, 'Новые Черёмушки', '', 6),
(188, 1134, 'Калужская', '', 6),
(189, 1134, 'Беляево', '', 6),
(190, 1134, 'Коньково', '', 6),
(191, 1134, 'Тёплый Стан', '', 6),
(192, 1134, 'Ясенево', '', 6),
(193, 1134, 'Новоясеневская', '', 6),
(194, 1134, 'Кунцевская', '', 4),
(195, 1134, 'Пионерская', '', 4),
(196, 1134, 'Филёвский парк', '', 4),
(197, 1134, 'Багратионовская', '', 4),
(198, 1134, 'Фили', '', 4),
(199, 1134, 'Кутузовская', '', 4),
(200, 1134, 'Студенческая', '', 4),
(201, 1134, 'Международная', '', 4),
(202, 1134, 'Выставочная', '', 4),
(203, 1134, 'Киевская', '', 4),
(204, 1134, 'Смоленская', '', 4),
(205, 1134, 'Арбатская', '', 4),
(206, 1134, 'Александровский сад', '', 4),
(207, 1135, 'Кировско-Выборгская', 'red', 0),
(208, 1135, 'Московско-Петроградская', '#0078c9', 0),
(209, 1135, 'Невско-Василеостровская', '#009a49', 0),
(210, 1135, 'Правобережная', '#ea7125', 0),
(211, 1135, 'Фрунзенско-Приморская', '#702785', 0),
(212, 1135, 'Девяткино', '', 207),
(213, 1135, 'Гражданский проспект', '', 207),
(214, 1135, 'Академическая', '', 207),
(215, 1135, 'Политехническая', '', 207),
(216, 1135, 'Площадь Мужества', '', 207),
(217, 1135, 'Лесная', '', 207),
(218, 1135, 'Выборгская', '', 207),
(219, 1135, 'Площадь Ленина', '', 207),
(220, 1135, 'Чернышевская', '', 207),
(221, 1135, 'Площадь Восстания', '', 207),
(222, 1135, 'Владимирская', '', 207),
(223, 1135, 'Пушкинская', '', 207),
(224, 1135, 'Технологический институт', '', 207),
(225, 1135, 'Балтийская', '', 207),
(226, 1135, 'Нарвская', '', 207),
(227, 1135, 'Кировский завод', '', 207),
(228, 1135, 'Автово', '', 207),
(229, 1135, 'Ленинский проспект', '', 207),
(230, 1135, 'Проспект Ветеранов', '', 207),
(231, 1135, 'Парнас', '', 208),
(232, 1135, 'Проспект Просвещения', '', 208),
(233, 1135, 'Озерки', '', 208),
(234, 1135, 'Удельная', '', 208),
(235, 1135, 'Пионерская', '', 208),
(236, 1135, 'Чёрная речка', '', 208),
(237, 1135, 'Петроградская', '', 208),
(238, 1135, 'Горьковская', '', 208),
(239, 1135, 'Невский проспект', '', 208),
(240, 1135, 'Сенная площадь', '', 208),
(241, 1135, 'Технологический институт', '', 208),
(242, 1135, 'Фрунзенская', '', 208),
(243, 1135, 'Московские ворота', '', 208),
(244, 1135, 'Электросила', '', 208),
(245, 1135, 'Парк Победы', '', 208),
(246, 1135, 'Московская', '', 208),
(247, 1135, 'Звёздная', '', 208),
(248, 1135, 'Купчино', '', 208),
(249, 1135, 'Приморская', '', 209),
(250, 1135, 'Василеостровская', '', 209),
(251, 1135, 'Гостиный двор', '', 209),
(252, 1135, 'Гостиный двор', '', 209),
(253, 1135, 'Маяковская', '', 209),
(254, 1135, 'Площадь Александра Невского', '', 209),
(255, 1135, 'Елизаровская', '', 209),
(256, 1135, 'Ломоносовская', '', 209),
(257, 1135, 'Пролетарская', '', 209),
(258, 1135, 'Обухово', '', 209),
(259, 1135, 'Рыбацкое', '', 209),
(260, 1135, 'Театральная', '', 210),
(261, 1135, 'Спасская', '', 210),
(262, 1135, 'Достоевская', '', 210),
(263, 1135, 'Лиговский проспект', '', 210),
(264, 1135, 'Площадь Александра Невского', '', 210),
(265, 1135, 'Новочеркасская', '', 210),
(266, 1135, 'Ладожская', '', 210),
(267, 1135, 'Проспект Большевиков', '', 210),
(268, 1135, 'Улица Дыбенко', '', 210),
(269, 1135, 'Комендантский проспект', '', 211),
(270, 1135, 'Старая Деревня', '', 211),
(271, 1135, 'Крестовский остров', '', 211),
(272, 1135, 'Чкаловская', '', 211),
(273, 1135, 'Спортивная', '', 211),
(274, 1135, 'Адмиралтейская', '', 211),
(275, 1135, 'Садовая', '', 211),
(276, 1135, 'Звенигородская', '', 211),
(277, 1135, 'Обводный канал', '', 211),
(278, 1135, 'Волковская', '', 211),
(279, 1135, 'Бухарестская', '', 211),
(280, 1135, 'Международная', '', 211),
(281, 1135, 'Проспект Славы', '', 211),
(282, 1135, 'Дунайская', '', 211),
(283, 1135, 'Шушары', '', 211),
(284, 881, 'Первая линия', 'red', 0),
(285, 881, 'Проспект Космонавтов', '', 284),
(286, 881, 'Уралмаш', '', 284),
(287, 881, 'Машиностроителей', '', 284),
(288, 881, 'Уральская', '', 284),
(289, 881, 'Динамо', '', 284),
(290, 881, 'Площадь 1905 года', '', 284),
(291, 881, 'Геологическая', '', 284),
(292, 881, 'Бажовская', '', 284),
(293, 881, 'Чкаловская', '', 284),
(294, 881, 'Ботаническая', '', 284),
(295, 956, 'Центральная линия', 'red', 0),
(296, 956, 'Авиастроительная', '', 295),
(297, 956, 'Северный Вокзал', '', 295),
(298, 956, 'Яшьлек', '', 295),
(299, 956, 'Козья слобода', '', 295),
(300, 956, 'Кремлёвская', '', 295),
(301, 956, 'Площадь Габдуллы Тукая', '', 295),
(302, 956, 'Суконная слобода', '', 295),
(303, 956, 'Аметьево', '', 295),
(304, 956, 'Горки', '', 295),
(305, 956, 'Проспект Победы', '', 295),
(306, 617, 'Автозаводская', 'red', 0),
(307, 617, 'Сормовская', 'blue', 0),
(308, 617, 'Горьковская', '', 306),
(309, 617, 'Московская', '', 306),
(310, 617, 'Чкаловская', '', 306),
(311, 617, 'Ленинская', '', 306),
(312, 617, 'Заречная', '', 306),
(313, 617, 'Двигатель Революции', '', 306),
(314, 617, 'Пролетарская', '', 306),
(315, 617, 'Автозаводская', '', 306),
(316, 617, 'Комсомольская', '', 306),
(317, 617, 'Кировская', '', 306),
(318, 617, 'Парк культуры', '', 306),
(319, 617, 'Московская', '', 307),
(320, 617, 'Канавинская', '', 307),
(321, 617, 'Бурнаковская', '', 307),
(322, 617, 'Буревестник', '', 307),
(323, 650, 'Ленинская', 'red', 0),
(324, 650, 'Дзержинская', 'green', 0),
(325, 650, 'Заельцовская', '', 323),
(326, 650, 'Гагаринская', '', 323),
(327, 650, 'Красный проспект', '', 323),
(328, 650, 'Площадь Ленина', '', 323),
(329, 650, 'Октябрьская', '', 323),
(330, 650, 'Речной вокзал', '', 323),
(331, 650, 'Студенческая', '', 323),
(332, 650, 'Площадь Маркса', '', 323),
(333, 650, 'Площадь Гарина-Михайловского', '', 324),
(334, 650, 'Сибирская', '', 324),
(335, 650, 'Маршала Покрышкина', '', 324),
(336, 650, 'Берёзовая роща', '', 324),
(337, 650, 'Золотая нива', '', 324),
(338, 786, 'Первая Линия', 'red', 0),
(339, 786, 'Юнгородок', '', 338),
(340, 786, 'Кировская', '', 338),
(341, 786, 'Безымянка', '', 338),
(342, 786, 'Победа', '', 338),
(343, 786, 'Советская', '', 338),
(344, 786, 'Спортивная', '', 338),
(345, 786, 'Гагаринская', '', 338),
(346, 786, 'Московская', '', 338),
(347, 786, 'Российская', '', 338),
(348, 1134, 'Сокольническая линия', 'red', 0),
(349, 1134, 'Улица Подбельского', '', 348),
(350, 1134, 'Черкизовская', '', 348),
(351, 1134, 'Преображенская площадь', '', 348),
(352, 1134, 'Сокольники', '', 348),
(353, 1134, 'Красносельская', '', 348),
(354, 1134, 'Комсомольская', '', 348),
(355, 1134, 'Красные Ворота', '', 348),
(356, 1134, 'Чистые пруды', '', 348),
(357, 1134, 'Лубянка', '', 348),
(358, 1134, 'Охотный ряд', '', 348),
(359, 1134, 'Библиотека им. Ленина', '', 348),
(360, 1134, 'Кропоткинская', '', 348),
(361, 1134, 'Парк культуры', '', 348),
(362, 1134, 'Фрунзенская', '', 348),
(363, 1134, 'Спортивная', '', 348),
(364, 1134, 'Воробьевы горы', '', 348),
(365, 1134, 'Университет', '', 348),
(366, 1134, 'Проспект Вернадского', '', 348),
(367, 1134, 'Юго-западная', '', 348);

-- --------------------------------------------------------

--
-- Структура таблицы `uni_metro_variants`
--

CREATE TABLE `uni_metro_variants` (
  `id` int(11) NOT NULL,
  `ads_id` int(11) NOT NULL DEFAULT '0',
  `metro_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `uni_notifications`
--

CREATE TABLE `uni_notifications` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `datetime` timestamp NULL DEFAULT NULL,
  `code` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `icon` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `count` int(11) NOT NULL DEFAULT '1',
  `link` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `uni_notifications`
--

INSERT INTO `uni_notifications` (`id`, `title`, `datetime`, `code`, `icon`, `count`, `link`) VALUES
(1, 'Публикация объявления', '2023-04-15 19:32:36', 'ads', 'la la-thumb-tack', 17, '?route=board'),
(2, 'Жалоба', '2023-04-16 15:50:14', 'complaint', 'la la-exclamation-triangle', 1, '?route=complaints'),
(3, 'Регистрация пользователя', '2023-04-24 12:10:00', 'user', 'la la-user', 2, '?route=clients'),
(4, 'Продажа', '2023-06-01 13:18:08', 'order', 'la la-money', 4, '?route=orders');

-- --------------------------------------------------------

--
-- Структура таблицы `uni_orders`
--

CREATE TABLE `uni_orders` (
  `orders_id` int(11) NOT NULL,
  `orders_uid` varchar(255) DEFAULT NULL,
  `orders_price` float NOT NULL DEFAULT '0',
  `orders_date` timestamp NULL DEFAULT NULL,
  `orders_status` int(1) DEFAULT '0',
  `orders_id_user` int(11) NOT NULL DEFAULT '0',
  `orders_status_pay` int(1) NOT NULL DEFAULT '0',
  `orders_title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `orders_id_ad` int(11) NOT NULL DEFAULT '0',
  `orders_action_name` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `uni_orders`
--

INSERT INTO `uni_orders` (`orders_id`, `orders_uid`, `orders_price`, `orders_date`, `orders_status`, `orders_id_user`, `orders_status_pay`, `orders_title`, `orders_id_ad`, `orders_action_name`) VALUES
(1, '34588207', 990, '2023-06-01 13:18:03', 0, 1, 1, 'Подключение тарифа - Максимум', 0, 'services_tariff'),
(2, '69110078', 390, '2023-06-01 13:18:08', 0, 1, 1, 'Бонус за подключение тарифа - Максимум', 0, 'services_tariff_bonus'),
(3, '28102744', 299, '2023-06-02 05:52:48', 0, 1, 1, 'Подключение тарифа - Премиум', 0, 'services_tariff'),
(4, '38880151', 145, '2023-06-02 05:52:54', 0, 1, 1, 'Бонус за подключение тарифа - Премиум', 0, 'services_tariff_bonus');

-- --------------------------------------------------------

--
-- Структура таблицы `uni_orders_parameters`
--

CREATE TABLE `uni_orders_parameters` (
  `orders_parameters_id` int(11) NOT NULL,
  `orders_parameters_param` text,
  `orders_parameters_id_uniq` varchar(255) DEFAULT NULL,
  `orders_parameters_date` timestamp NULL DEFAULT NULL,
  `orders_parameters_status` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `uni_orders_parameters`
--

INSERT INTO `uni_orders_parameters` (`orders_parameters_id`, `orders_parameters_param`, `orders_parameters_id_uniq`, `orders_parameters_date`, `orders_parameters_status`) VALUES
(1, '{\"amount\":100,\"name\":\"11.uz\",\"email\":\"shuhaaka@mail.ru\",\"phone\":\"\",\"id_order\":58188795,\"id_user\":0,\"action\":\"test\",\"title\":\"\\u0422\\u0435\\u0441\\u0442\\u043e\\u0432\\u0430\\u044f \\u043e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u211658188795\"}', '58188795', '2023-04-24 08:41:23', 0),
(2, '{\"amount\":100,\"name\":\"11.uz\",\"email\":\"shuhaaka@mail.ru\",\"phone\":\"\",\"id_order\":37570614,\"id_user\":0,\"action\":\"test\",\"title\":\"\\u0422\\u0435\\u0441\\u0442\\u043e\\u0432\\u0430\\u044f \\u043e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u211637570614\"}', '37570614', '2023-04-24 08:48:55', 0),
(3, '{\"amount\":10000,\"name\":\"Shuhrat\",\"email\":\"shuhaaka@mail.ru\",\"phone\":\"998977388311\",\"id_order\":51497902,\"id_user\":\"1\",\"action\":\"balance\",\"title\":\"\\u041f\\u043e\\u043f\\u043e\\u043b\\u043d\\u0435\\u043d\\u0438\\u0435 \\u0431\\u0430\\u043b\\u0430\\u043d\\u0441\\u0430 - 11.uz\"}', '51497902', '2023-04-24 08:56:16', 0),
(4, '{\"amount\":100,\"name\":\"11.uz\",\"email\":\"shuhaaka@mail.ru\",\"phone\":\"\",\"id_order\":29457899,\"id_user\":0,\"action\":\"test\",\"title\":\"\\u0422\\u0435\\u0441\\u0442\\u043e\\u0432\\u0430\\u044f \\u043e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u211629457899\"}', '29457899', '2023-04-24 09:03:04', 0),
(5, '{\"amount\":100,\"name\":\"11.uz\",\"email\":\"shuhaaka@mail.ru\",\"phone\":\"\",\"id_order\":75285478,\"id_user\":0,\"action\":\"test\",\"title\":\"\\u0422\\u0435\\u0441\\u0442\\u043e\\u0432\\u0430\\u044f \\u043e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u211675285478\"}', '75285478', '2023-04-24 09:09:15', 0),
(6, '{\"amount\":100,\"name\":\"11.uz\",\"email\":\"shuhaaka@mail.ru\",\"phone\":\"\",\"id_order\":95523973,\"id_user\":0,\"action\":\"test\",\"title\":\"\\u0422\\u0435\\u0441\\u0442\\u043e\\u0432\\u0430\\u044f \\u043e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u211695523973\"}', '95523973', '2023-04-24 09:11:02', 0),
(7, '{\"amount\":100,\"name\":\"11.uz\",\"email\":\"shuhaaka@mail.ru\",\"phone\":\"\",\"id_order\":34339450,\"id_user\":0,\"action\":\"test\",\"title\":\"\\u0422\\u0435\\u0441\\u0442\\u043e\\u0432\\u0430\\u044f \\u043e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u211634339450\"}', '34339450', '2023-04-24 09:12:42', 0),
(8, '{\"amount\":100,\"name\":\"11.uz\",\"email\":\"shuhaaka@mail.ru\",\"phone\":\"\",\"id_order\":68408300,\"id_user\":0,\"action\":\"test\",\"title\":\"\\u0422\\u0435\\u0441\\u0442\\u043e\\u0432\\u0430\\u044f \\u043e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u211668408300\"}', '68408300', '2023-04-24 09:15:17', 0),
(9, '{\"amount\":100,\"name\":\"joymee.uz\",\"email\":\"shuhaaka@mail.ru\",\"phone\":\"\",\"id_order\":86391376,\"id_user\":0,\"action\":\"test\",\"title\":\"\\u0422\\u0435\\u0441\\u0442\\u043e\\u0432\\u0430\\u044f \\u043e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u211686391376\"}', '86391376', '2023-05-23 11:51:11', 0),
(10, '{\"amount\":100,\"name\":\"joymee.uz\",\"email\":\"shuhaaka@mail.ru\",\"phone\":\"\",\"id_order\":88324031,\"id_user\":0,\"action\":\"test\",\"title\":\"\\u0422\\u0435\\u0441\\u0442\\u043e\\u0432\\u0430\\u044f \\u043e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u211688324031\"}', '88324031', '2023-05-23 12:01:19', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `uni_pages`
--

CREATE TABLE `uni_pages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `text` mediumtext CHARACTER SET utf8,
  `seo_text` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `visible` int(11) NOT NULL DEFAULT '1',
  `id_position` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `uni_pages`
--

INSERT INTO `uni_pages` (`id`, `name`, `alias`, `title`, `text`, `seo_text`, `visible`, `id_position`) VALUES
(16, 'Политики конфиденциальности', 'privacy-policy', 'Политики конфиденциальности', '%3Cp%3E%D0%9E%D0%91%D0%9B%D0%90%D0%A1%D0%A2%D0%AC%20%D0%9F%D0%A0%D0%98%D0%9C%D0%95%D0%9D%D0%95%D0%9D%D0%98%D0%AF%20%D0%B8%20%D0%A1%D0%9E%D0%93%D0%9B%D0%90%D0%A1%D0%98%D0%95%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9F%D0%B5%D1%80%D1%81%D0%BE%D0%BD%D0%B0%D0%BB%D1%8C%D0%BD%D1%8B%D0%B5%20%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D0%B5%20%D1%84%D0%B8%D0%B7%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D1%85%20%D0%BB%D0%B8%D1%86-%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D0%B5%D0%B9%20%D1%81%D0%B5%D1%80%D0%B2%D0%B8%D1%81%D0%B0%20%7Burl%7D%20%D0%BE%D0%B1%D1%80%D0%B0%D0%B1%D0%B0%D1%82%D1%8B%D0%B2%D0%B0%D1%8E%D1%82%D1%81%D1%8F%20AliBaba%2C%20%D0%BB%D0%B8%D1%86%D0%BE%D0%BC%2C%20%D0%B7%D0%B0%D1%80%D0%B5%D0%B3%D0%B8%D1%81%D1%82%D1%80%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%BD%D1%8B%D0%BC%20%D0%BF%D0%BE%20%D0%B7%D0%B0%D0%BA%D0%BE%D0%BD%D0%BE%D0%B4%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%D1%81%D1%82%D0%B2%D1%83%20%D0%A0%D0%B5%D1%81%D0%BF%D1%83%D0%B1%D0%BB%D0%B8%D0%BA%D0%B8%20%D0%A3%D0%B7%D0%B1%D0%B5%D0%BA%D0%B8%D1%81%D1%82%D0%B0%D0%BD%2C%20%D1%81%20%D0%BC%D0%B5%D1%81%D1%82%D0%BE%D0%BD%D0%B0%D1%85%D0%BE%D0%B6%D0%B4%D0%B5%D0%BD%D0%B8%D0%B5%D0%BC%20%D0%BF%D0%BE%20%D0%B0%D0%B4%D1%80%D0%B5%D1%81%D1%83%3A%20%D0%A0%D0%B5%D1%81%D0%BF%D1%83%D0%B1%D0%BB%D0%B8%D0%BA%D0%B0%20%D0%A3%D0%B7%D0%B1%D0%B5%D0%BA%D0%B8%D1%81%D1%82%D0%B0%D0%BD%2C%20%D0%B3.%20%D0%A2%D0%B0%D1%88%D0%BA%D0%B5%D0%BD%D1%82%20(%D0%B4%D0%B0%D0%BB%D0%B5%D0%B5%20-%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D1%8F).%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D1%8F%20%D1%8F%D0%B2%D0%BB%D1%8F%D0%B5%D1%82%D1%81%D1%8F%20%D1%81%D0%BE%D0%B1%D1%81%D1%82%D0%B2%D0%B5%D0%BD%D0%BD%D0%B8%D0%BA%D0%BE%D0%BC%20%D0%B8%20%D0%BE%D0%BF%D0%B5%D1%80%D0%B0%D1%82%D0%BE%D1%80%D0%BE%D0%BC%20%D0%91%D0%B0%D0%B7%D1%8B%20%D0%BF%D0%B5%D1%80%D1%81%D0%BE%D0%BD%D0%B0%D0%BB%D1%8C%D0%BD%D1%8B%D1%85%20%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D1%85%20%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D0%B5%D0%B9%20%7Burl%7D.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%91%D0%B0%D0%B7%D0%B0%20%D0%BF%D0%B5%D1%80%D1%81%D0%BE%D0%BD%D0%B0%D0%BB%D1%8C%D0%BD%D1%8B%D1%85%20%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D1%85%20%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D0%B5%D0%B9%20%7Burl%7D%20%D0%BD%D0%B0%D1%85%D0%BE%D0%B4%D0%B8%D1%82%D1%81%D1%8F%20%D0%BF%D0%BE%20%D0%B0%D0%B4%D1%80%D0%B5%D1%81%D1%83%3A%20%D0%A0%D0%B5%D1%81%D0%BF%D1%83%D0%B1%D0%BB%D0%B8%D0%BA%D0%B0%20%D0%A3%D0%B7%D0%B1%D0%B5%D0%BA%D0%B8%D1%81%D1%82%D0%B0%D0%BD%2C%20%D0%B3.%20%D0%A2%D0%B0%D1%88%D0%BA%D0%B5%D0%BD%D1%82%2C%20%D0%AF%D0%BA%D0%BA%D0%B0%D1%81%D0%B0%D1%80%D0%B0%D0%B9%D1%81%D0%BA%D0%B8%D0%B9%20%D1%80-%D0%BE%D0%BD%2C%20%D1%83%D0%BB.%20%D0%90.%20%D0%9A%D0%BE%D0%B4%D1%8B%D1%80%D0%BE%D0%B2%D0%B0%2C%20%D0%B4%D0%BE%D0%BC%2043%3C%2Fp%3E%0A%0A%3Cp%3E%D0%94%D0%B0%D0%BD%D0%BD%D0%B0%D1%8F%20%D0%9F%D0%BE%D0%BB%D0%B8%D1%82%D0%B8%D0%BA%D0%B0%20%D0%BA%D0%BE%D0%BD%D1%84%D0%B8%D0%B4%D0%B5%D0%BD%D1%86%D0%B8%D0%B0%D0%BB%D1%8C%D0%BD%D0%BE%D1%81%D1%82%D0%B8%20%D0%BE%D0%BF%D0%B8%D1%81%D1%8B%D0%B2%D0%B0%D0%B5%D1%82%20%D1%83%D1%81%D1%82%D0%B0%D0%BD%D0%BE%D0%B2%D0%BB%D0%B5%D0%BD%D0%BD%D1%8B%D0%B9%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D0%B5%D0%B9%20%D0%BF%D0%BE%D1%80%D1%8F%D0%B4%D0%BE%D0%BA%20%D0%BE%D0%B1%D1%80%D0%B0%D0%B1%D0%BE%D1%82%D0%BA%D0%B8%20%D0%BF%D0%B5%D1%80%D1%81%D0%BE%D0%BD%D0%B0%D0%BB%D1%8C%D0%BD%D1%8B%D1%85%20%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D1%85%2C%20%D1%81%D0%BE%D0%B1%D1%80%D0%B0%D0%BD%D0%BD%D1%8B%D1%85%20%D1%81%20%D0%BF%D0%BE%D0%BC%D0%BE%D1%89%D1%8C%D1%8E%20%D1%81%D0%B0%D0%B9%D1%82%D0%B0%20www.%7Burl%7D%20(%D0%B4%D0%B0%D0%BB%D0%B5%D0%B5%20-%20%D0%A1%D0%B0%D0%B9%D1%82)%2C%20%D0%BC%D0%BE%D0%B1%D0%B8%D0%BB%D1%8C%D0%BD%D0%BE%D0%B3%D0%BE%20%D0%BF%D1%80%D0%B8%D0%BB%D0%BE%D0%B6%D0%B5%D0%BD%D0%B8%D1%8F%20OLX%20(%D0%B4%D0%B0%D0%BB%D0%B5%D0%B5%20%26ndash%3B%20%D0%BC%D0%BE%D0%B1%D0%B8%D0%BB%D1%8C%D0%BD%D0%BE%D0%B5%20%D0%BF%D1%80%D0%B8%D0%BB%D0%BE%D0%B6%D0%B5%D0%BD%D0%B8%D0%B5)%20%D0%B8%20%D1%81%D0%B2%D1%8F%D0%B7%D0%B0%D0%BD%D0%BD%D1%8B%D1%85%20%D1%81%20%D0%BD%D0%B8%D0%BC%D0%B8%20%D1%83%D1%81%D0%BB%D1%83%D0%B3%20%D0%B8%20%D0%B8%D0%BD%D1%81%D1%82%D1%80%D1%83%D0%BC%D0%B5%D0%BD%D1%82%D0%BE%D0%B2%2C%20%D0%BF%D0%BE%D0%B7%D0%B2%D0%BE%D0%BB%D1%8F%D1%8E%D1%89%D0%B8%D1%85%20%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F%D0%BC%20%D1%80%D0%B5%D0%B3%D0%B8%D1%81%D1%82%D1%80%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D1%82%D1%8C%D1%81%D1%8F%20%D0%BD%D0%B0%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B5%2C%20%D0%BF%D1%83%D0%B1%D0%BB%D0%B8%D0%BA%D0%BE%D0%B2%D0%B0%D1%82%D1%8C%20%D0%B8%D0%BB%D0%B8%20%D0%BF%D1%80%D0%BE%D1%81%D0%BC%D0%B0%D1%82%D1%80%D0%B8%D0%B2%D0%B0%D1%82%D1%8C%20%D0%B2%20%D1%80%D0%B5%D0%B6%D0%B8%D0%BC%D0%B5%20%D1%80%D0%B5%D0%B0%D0%BB%D1%8C%D0%BD%D0%BE%D0%B3%D0%BE%20%D0%B2%D1%80%D0%B5%D0%BC%D0%B5%D0%BD%D0%B8%20%D1%83%D0%B6%D0%B5%20%D0%BE%D0%BF%D1%83%D0%B1%D0%BB%D0%B8%D0%BA%D0%BE%D0%B2%D0%B0%D0%BD%D0%BD%D1%8B%D0%B5%20%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F%2C%20%D0%B8%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D1%8C%20%D0%B4%D1%80%D1%83%D0%B3%D0%BE%D0%B9%2C%20%D1%81%D0%B2%D1%8F%D0%B7%D0%B0%D0%BD%D0%BD%D1%8B%D0%B9%20%D1%81%20%D0%B2%D1%8B%D1%88%D0%B5%D0%BF%D0%B5%D1%80%D0%B5%D1%87%D0%B8%D1%81%D0%BB%D0%B5%D0%BD%D0%BD%D1%8B%D0%BC%20%D1%81%D0%B5%D1%80%D0%B2%D0%B8%D1%81%20OLX.%20%D0%92%D0%BE%20%D0%B2%D1%81%D0%B5%D1%85%20%D1%83%D0%BA%D0%B0%D0%B7%D0%B0%D0%BD%D0%BD%D1%8B%D1%85%20%D1%81%D0%BB%D1%83%D1%87%D0%B0%D1%8F%D1%85%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%BE%D0%B1%D1%80%D0%B0%D0%B1%D0%B0%D1%82%D1%8B%D0%B2%D0%B0%D0%B5%D1%82%20%D0%BF%D0%B5%D1%80%D1%81%D0%BE%D0%BD%D0%B0%D0%BB%D1%8C%D0%BD%D1%8B%D0%B5%20%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D0%B5%20%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D0%B5%D0%B9%20%D0%B8%D1%81%D0%BA%D0%BB%D1%8E%D1%87%D0%B8%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D0%BE%20%D0%B2%20%D1%80%D0%B0%D0%BC%D0%BA%D0%B0%D1%85%20%D1%82%D1%80%D0%B5%D0%B1%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B9%20%D0%B7%D0%B0%D0%BA%D0%BE%D0%BD%D0%BE%D0%B4%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%D1%81%D1%82%D0%B2%D0%B0%20%D0%A0%D0%B5%D1%81%D0%BF%D1%83%D0%B1%D0%BB%D0%B8%D0%BA%D0%B8%20%D0%A3%D0%B7%D0%B1%D0%B5%D0%BA%D0%B8%D1%81%D1%82%D0%B0%D0%BD%20%D0%B8%20%D0%9A%D0%BE%D0%BD%D0%B2%D0%B5%D0%BD%D1%86%D0%B8%D0%B8%20%D0%BE%20%D0%B7%D0%B0%D1%89%D0%B8%D1%82%D0%B5%20%D0%BB%D0%B8%D1%86%20%D0%B2%20%D1%81%D0%B2%D1%8F%D0%B7%D0%B8%20%D1%81%20%D0%B0%D0%B2%D1%82%D0%BE%D0%BC%D0%B0%D1%82%D0%B8%D0%B7%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%BD%D0%BE%D0%B9%20%D0%BE%D0%B1%D1%80%D0%B0%D0%B1%D0%BE%D1%82%D0%BA%D0%BE%D0%B9%20%D0%BF%D0%B5%D1%80%D1%81%D0%BE%D0%BD%D0%B0%D0%BB%D1%8C%D0%BD%D1%8B%D1%85%20%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D1%85.%20%D0%94%D0%B0%D0%BD%D0%BD%D0%B0%D1%8F%20%D0%9F%D0%BE%D0%BB%D0%B8%D1%82%D0%B8%D0%BA%D0%B0%20%D0%BA%D0%BE%D0%BD%D1%84%D0%B8%D0%B4%D0%B5%D0%BD%D1%86%D0%B8%D0%B0%D0%BB%D1%8C%D0%BD%D0%BE%D1%81%D1%82%D0%B8%20%D1%80%D0%B0%D0%B7%D1%80%D0%B0%D0%B1%D0%BE%D1%82%D0%B0%D0%BD%D0%B0%20%D0%B2%20%D1%81%D0%BE%D0%BE%D1%82%D0%B2%D0%B5%D1%82%D1%81%D1%82%D0%B2%D0%B8%D0%B8%20%D1%81%20%D0%B8%D1%85%20%D0%BF%D0%BE%D0%BB%D0%BE%D0%B6%D0%B5%D0%BD%D0%B8%D1%8F%D0%BC%D0%B8.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%98%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D1%83%D1%8F%20%D0%A1%D0%B0%D0%B9%D1%82%2C%20%D0%B8%2F%D0%B8%D0%BB%D0%B8%20%D0%BC%D0%BE%D0%B1%D0%B8%D0%BB%D1%8C%D0%BD%D0%BE%D0%B5%20%D0%BF%D1%80%D0%B8%D0%BB%D0%BE%D0%B6%D0%B5%D0%BD%D0%B8%D0%B5%2C%20%D0%B8%2F%D0%B8%D0%BB%D0%B8%20%D0%B8%D0%BD%D1%8B%D0%B5%20%D1%81%D0%B2%D1%8F%D0%B7%D0%B0%D0%BD%D0%BD%D1%8B%D0%B5%20%D1%81%D0%B5%D1%80%D0%B2%D0%B8%D1%81%D1%8B%20%D0%B8%20%D0%B8%D0%BD%D1%81%D1%82%D1%80%D1%83%D0%BC%D0%B5%D0%BD%D1%82%D1%8B%20OLX%2C%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%20%D0%BF%D1%80%D0%B5%D0%B4%D0%BE%D1%81%D1%82%D0%B0%D0%B2%D0%BB%D1%8F%D0%B5%D1%82%20%D1%81%D0%B2%D0%BE%D1%91%20%D1%81%D0%BE%D0%B3%D0%BB%D0%B0%D1%81%D0%B8%D0%B5%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D0%B8%20%D0%BD%D0%B0%20%D0%BE%D0%B1%D1%80%D0%B0%D0%B1%D0%BE%D1%82%D0%BA%D1%83%20%D1%81%D0%B2%D0%BE%D0%B8%D1%85%20%D0%BF%D0%B5%D1%80%D1%81%D0%BE%D0%BD%D0%B0%D0%BB%D1%8C%D0%BD%D1%8B%D1%85%20%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D1%85%2C%20%D1%82%D0%B0%D0%BA%D0%B8%D1%85%20%D0%BA%D0%B0%D0%BA%20%D0%B8%D0%BC%D1%8F%20%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F%3B%20%D1%80%D0%B5%D0%B3%D0%B8%D0%BE%D0%BD%20%D0%BF%D1%80%D0%BE%D0%B6%D0%B8%D0%B2%D0%B0%D0%BD%D0%B8%D1%8F%2C%20%D0%B0%D0%B4%D1%80%D0%B5%D1%81%20%D1%8D%D0%BB%D0%B5%D0%BA%D1%82%D1%80%D0%BE%D0%BD%D0%BD%D0%BE%D0%B9%20%D0%BF%D0%BE%D1%87%D1%82%D1%8B%2C%20%D0%BA%D0%BE%D0%BD%D1%82%D0%B0%D0%BA%D1%82%D0%BD%D1%8B%D0%B9%20%D1%82%D0%B5%D0%BB%D0%B5%D1%84%D0%BE%D0%BD%2C%20%D0%B4%D1%80%D1%83%D0%B3%D0%B0%D1%8F%20%D0%BA%D0%BE%D0%BD%D1%82%D0%B0%D0%BA%D1%82%D0%BD%D0%B0%D1%8F%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8F%20%D0%B8%20%D0%BF%D0%BE%20%D0%B6%D0%B5%D0%BB%D0%B0%D0%BD%D0%B8%D1%8E%20%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F%3B%20ip-%D0%B0%D0%B4%D1%80%D0%B5%D1%81%D0%B0%2C%20%D0%B4%D1%80%D1%83%D0%B3%D0%B8%D0%B5%20%D0%BA%D0%BE%D0%BC%D0%BC%D1%83%D0%BD%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D0%BE%D0%BD%D0%BD%D1%8B%D0%B5%20%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D0%B5%20%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D0%B5%D0%B9%3B%20%D1%81%D0%BE%D0%BE%D0%B1%D1%89%D0%B5%D0%BD%D0%B8%D1%8F%2C%20%D0%BF%D0%B8%D1%81%D1%8C%D0%BC%D0%B0%2C%20%D0%B7%D0%B0%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F%2C%20%D0%BF%D0%B5%D1%80%D0%B5%D0%B4%D0%B0%D0%B2%D0%B0%D0%B5%D0%BC%D1%8B%D0%B5%20%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8E%20%D0%B4%D1%80%D1%83%D0%B3%D0%B8%D0%BC%D0%B8%20%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F%D0%BC%D0%B8%20%D0%B8%20%D0%BD%D0%B0%D0%BE%D0%B1%D0%BE%D1%80%D0%BE%D1%82%2C%20%D0%B0%20%D1%82%D0%B0%D0%BA%D0%B6%D0%B5%20%D0%B4%D0%B0%D1%91%D1%82%20%D1%81%D0%B2%D0%BE%D1%91%20%D1%81%D0%BE%D0%B3%D0%BB%D0%B0%D1%81%D0%B8%D0%B5%20%D0%BD%D0%B0%20%D0%BF%D0%B5%D1%80%D0%B5%D0%B4%D0%B0%D1%87%D1%83%20%D1%81%D0%B2%D0%BE%D0%B8%D1%85%20%D0%BF%D0%B5%D1%80%D1%81%D0%BE%D0%BD%D0%B0%D0%BB%D1%8C%D0%BD%D1%8B%D1%85%20%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D1%85%20%D1%82%D1%80%D0%B5%D1%82%D1%8C%D0%B8%D0%BC%20%D0%BB%D0%B8%D1%86%D0%B0%D0%BC%2C%20%D0%B2%20%D1%82%D0%BE%D0%BC%20%D1%87%D0%B8%D1%81%D0%BB%D0%B5%20%D0%BD%D0%B0%20%D0%BF%D0%B5%D1%80%D0%B5%D0%B4%D0%B0%D1%87%D1%83%20%D0%BF%D0%B5%D1%80%D1%81%D0%BE%D0%BD%D0%B0%D0%BB%D1%8C%D0%BD%D1%8B%D1%85%20%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D1%85%20%D0%B7%D0%B0%20%D0%B3%D1%80%D0%B0%D0%BD%D0%B8%D1%86%D1%83%2C%20%D0%B2%20%D0%BB%D1%8E%D0%B1%D1%83%D1%8E%20%D1%82%D1%80%D0%B5%D1%82%D1%8C%D1%8E%20%D1%81%D1%82%D1%80%D0%B0%D0%BD%D1%83%2C%20%D0%B2%20%D1%81%D0%BE%D0%BE%D1%82%D0%B2%D0%B5%D1%82%D1%81%D1%82%D0%B2%D0%B8%D0%B8%20%D1%81%20%D0%B4%D0%B0%D0%BD%D0%BD%D0%BE%D0%B9%20%D0%9F%D0%BE%D0%BB%D0%B8%D1%82%D0%B8%D0%BA%D0%BE%D0%B9%20%D0%BA%D0%BE%D0%BD%D1%84%D0%B8%D0%B4%D0%B5%D0%BD%D1%86%D0%B8%D0%B0%D0%BB%D1%8C%D0%BD%D0%BE%D1%81%D1%82%D0%B8%20%D0%B8%20%D1%81%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%D1%81%D0%BA%D0%B8%D0%BC%20%D1%81%D0%BE%D0%B3%D0%BB%D0%B0%D1%88%D0%B5%D0%BD%D0%B8%D0%B5%D0%BC%20%D1%81%D0%B5%D1%80%D0%B2%D0%B8%D1%81%D0%BE%D0%B2%20%7Burl%7D.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D0%B8%20%D0%B4%D0%BE%D0%BB%D0%B6%D0%BD%D1%8B%20%D0%B7%D0%BD%D0%B0%D1%82%D1%8C%2C%20%D1%87%D1%82%D0%BE%20%D0%BF%D1%80%D0%B8%20%D0%BF%D0%B5%D1%80%D0%B5%D1%85%D0%BE%D0%B4%D0%B5%20%D0%BD%D0%B0%20%D0%BD%D0%B5%D0%BA%D0%BE%D1%82%D0%BE%D1%80%D1%8B%D0%B5%20%D1%81%D1%81%D1%8B%D0%BB%D0%BA%D0%B8%2C%20%D1%80%D0%B0%D0%B7%D0%BC%D0%B5%D1%89%D1%91%D0%BD%D0%BD%D1%8B%D0%B5%20%D0%BD%D0%B0%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B5%20%D0%B8%D0%BB%D0%B8%20%D0%B2%20%D0%BC%D0%BE%D0%B1%D0%B8%D0%BB%D1%8C%D0%BD%D0%BE%D0%BC%20%D0%BF%D1%80%D0%B8%D0%BB%D0%BE%D0%B6%D0%B5%D0%BD%D0%B8%D0%B8%2C%20%D0%BE%D0%BD%D0%B8%20%D0%BC%D0%BE%D0%B3%D1%83%D1%82%20%D0%B1%D1%8B%D1%82%D1%8C%20%D0%BF%D0%B5%D1%80%D0%B5%D0%BD%D0%B0%D0%BF%D1%80%D0%B0%D0%B2%D0%BB%D0%B5%D0%BD%D1%8B%20%D0%BA%20%D1%81%D0%B0%D0%B9%D1%82%D0%B0%D0%BC%20(%D0%BF%D1%80%D0%B8%D0%BB%D0%BE%D0%B6%D0%B5%D0%BD%D0%B8%D1%8F%D0%BC%20%D0%B8%20%D1%82.%D0%B4.)%20%D0%B4%D1%80%D1%83%D0%B3%D0%B8%D1%85%20%D0%BA%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D0%B9%20%D0%B7%D0%B0%20%D0%BF%D1%80%D0%B5%D0%B4%D0%B5%D0%BB%D1%8B%20%D1%85%D0%BE%D1%81%D1%82%D0%B8%D0%BD%D0%B3%D0%BE%D0%B2%D0%BE%D0%B3%D0%BE%20%D0%BF%D1%80%D0%BE%D1%81%D1%82%D1%80%D0%B0%D0%BD%D1%81%D1%82%D0%B2%D0%B0%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D0%B8%2C%20%D0%B3%D0%B4%D0%B5%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8F%20%D0%BE%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F%D1%85%20%D1%81%D0%BE%D0%B1%D0%B8%D1%80%D0%B0%D0%B5%D1%82%D1%81%D1%8F%20%D0%B2%D0%BD%D0%B5%20%D0%BF%D1%80%D1%8F%D0%BC%D0%BE%D0%B3%D0%BE%20%D0%BA%D0%BE%D0%BD%D1%82%D1%80%D0%BE%D0%BB%D1%8F%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D0%B8.%20%D0%92%20%D1%82%D0%B0%D0%BA%D0%BE%D0%BC%20%D1%81%D0%BB%D1%83%D1%87%D0%B0%D0%B5%20%D0%9F%D0%BE%D0%BB%D0%B8%D1%82%D0%B8%D0%BA%D0%B8%20%D0%BA%D0%BE%D0%BD%D1%84%D0%B8%D0%B4%D0%B5%D0%BD%D1%86%D0%B8%D0%B0%D0%BB%D1%8C%D0%BD%D0%BE%D1%81%D1%82%D0%B8%20%D1%81%D0%B0%D0%B9%D1%82%D0%BE%D0%B2%20%D0%B8%2F%D0%B8%D0%BB%D0%B8%20%D0%BF%D1%80%D0%B8%D0%BB%D0%BE%D0%B6%D0%B5%D0%BD%D0%B8%D0%B9%20%D1%82%D1%80%D0%B5%D1%82%D1%8C%D0%B8%D1%85%20%D0%BB%D0%B8%D1%86%20%D0%B1%D1%83%D0%B4%D1%83%D1%82%20%D1%80%D0%B5%D0%B3%D1%83%D0%BB%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D1%82%D1%8C%20%D0%BF%D0%BE%D1%80%D1%8F%D0%B4%D0%BE%D0%BA%20%D0%BE%D0%B1%D1%80%D0%B0%D0%B1%D0%BE%D1%82%D0%BA%D0%B8%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D0%B8%2C%20%D0%BF%D0%BE%D0%BB%D1%83%D1%87%D0%B5%D0%BD%D0%BD%D0%BE%D0%B9%20%D0%BE%D1%82%20%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D0%B5%D0%B9%20%D1%8D%D1%82%D0%B8%D0%BC%D0%B8%20%D1%82%D1%80%D0%B5%D1%82%D1%8C%D0%B8%D0%BC%D0%B8%20%D0%BB%D0%B8%D1%86%D0%B0%D0%BC%D0%B8.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%98%D0%9D%D0%A4%D0%9E%D0%A0%D0%9C%D0%90%D0%A6%D0%98%D0%AF%2C%20%D0%9A%D0%9E%D0%A2%D0%9E%D0%A0%D0%A3%D0%AE%20%D0%A1%D0%9E%D0%91%D0%98%D0%A0%D0%90%D0%95%D0%A2%2C%20%D0%9F%D0%9E%D0%9B%D0%A3%D0%A7%D0%90%D0%95%D0%A2%20%D0%98%20%D0%A0%D0%90%D0%97%D0%9C%D0%95%D0%A9%D0%90%D0%95%D0%A2%20%D0%9A%D0%9E%D0%9C%D0%9F%D0%90%D0%9D%D0%98%D0%AF%3C%2Fp%3E%0A%0A%3Cp%3E%D0%98%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8F%20%D0%BE%D0%B1%20%D1%83%D1%87%D0%B5%D1%82%D0%BD%D0%BE%D0%B9%20%D0%B7%D0%B0%D0%BF%D0%B8%D1%81%D0%B8%3A%20%D0%9F%D1%80%D0%B8%20%D1%81%D0%BE%D0%B7%D0%B4%D0%B0%D0%BD%D0%B8%D0%B8%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D0%B5%D0%BC%20%D1%83%D1%87%D0%B5%D1%82%D0%BD%D0%BE%D0%B9%20%D0%B7%D0%B0%D0%BF%D0%B8%D1%81%D0%B8%20%D0%BD%D0%B0%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B5%2C%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%BC%D0%BE%D0%B6%D0%B5%D1%82%20%D0%BF%D0%BE%D1%82%D1%80%D0%B5%D0%B1%D0%BE%D0%B2%D0%B0%D1%82%D1%8C%20%D0%BE%D0%BF%D1%80%D0%B5%D0%B4%D0%B5%D0%BB%D0%B5%D0%BD%D0%BD%D1%83%D1%8E%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8E%2C%20%D1%82%D0%B0%D0%BA%D1%83%D1%8E%20%D0%BA%D0%B0%D0%BA%20%D0%B4%D0%B5%D0%B9%D1%81%D1%82%D0%B2%D0%B8%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D1%8B%D0%B9%20%D0%B0%D0%B4%D1%80%D0%B5%D1%81%20%D1%8D%D0%BB%D0%B5%D0%BA%D1%82%D1%80%D0%BE%D0%BD%D0%BD%D0%BE%D0%B9%20%D0%BF%D0%BE%D1%87%D1%82%D1%8B%2C%20%D0%BF%D0%B0%D1%80%D0%BE%D0%BB%D1%8C%20%D0%B8%20%D0%BF%D0%B0%D1%81%D0%BF%D0%BE%D1%80%D1%82%D0%BD%D1%8B%D0%B5%20%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D0%B5.%20%D0%A3%D1%87%D0%B5%D1%82%D0%BD%D0%B0%D1%8F%20%D0%B7%D0%B0%D0%BF%D0%B8%D1%81%D1%8C%20%D0%B2%D0%BA%D0%BB%D1%8E%D1%87%D0%B0%D0%B5%D1%82%20%D0%B2%20%D1%81%D0%B5%D0%B1%D1%8F%20%D1%82%D0%B0%D0%BA%D1%83%D1%8E%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8E%20%D0%BE%20%D0%BD%D0%B8%D1%85%2C%20%D0%BA%D0%B0%D0%BA%20%D0%B3%D0%B5%D0%BE%D0%B3%D1%80%D0%B0%D1%84%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%BE%D0%B5%20%D1%80%D0%B0%D1%81%D0%BF%D0%BE%D0%BB%D0%BE%D0%B6%D0%B5%D0%BD%D0%B8%D0%B5%2C%20%D0%B8%D0%BC%D1%8F%20%D0%B8%20%D1%84%D0%B0%D0%BC%D0%B8%D0%BB%D0%B8%D1%8E%2C%20%D0%BD%D0%BE%D0%BC%D0%B5%D1%80%20%D1%82%D0%B5%D0%BB%D0%B5%D1%84%D0%BE%D0%BD%D0%B0%20%D0%B8%20%D1%81%D0%BE%D0%BF%D1%83%D1%82%D1%81%D1%82%D0%B2%D1%83%D1%8E%D1%89%D1%83%D1%8E%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8E%2C%20%D0%B2%20%D1%82%D0%BE%D0%BC%20%D1%87%D0%B8%D1%81%D0%BB%D0%B5%20%D1%84%D0%BE%D1%82%D0%BE%D0%B3%D1%80%D0%B0%D1%84%D0%B8%D0%B8%2C%20%D0%BA%D0%BE%D1%82%D0%BE%D1%80%D1%8B%D0%B5%20%D0%BE%D0%BD%D0%B8%20%D0%BC%D0%BE%D0%B3%D1%83%D1%82%20%D0%B7%D0%B0%D0%B3%D1%80%D1%83%D0%B6%D0%B0%D1%82%D1%8C%20%D0%B2%20%D1%81%D0%B2%D0%BE%D1%8E%20%D1%83%D1%87%D0%B5%D1%82%D0%BD%D1%83%D1%8E%20%D0%B7%D0%B0%D0%BF%D0%B8%D1%81%D1%8C.%20%7B%D0%A3%D1%87%D0%B5%D1%82%D0%BD%D0%B0%D1%8F%20%D0%B7%D0%B0%D0%BF%D0%B8%D1%81%D1%8C%20%D0%BF%D0%BE%D0%B7%D0%B2%D0%BE%D0%BB%D1%8F%D0%B5%D1%82%20%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F%D0%BC%20%D1%81%D0%B2%D1%8F%D0%B7%D1%8B%D0%B2%D0%B0%D1%82%D1%8C%D1%81%D1%8F%20%D0%B4%D1%80%D1%83%D0%B3%20%D1%81%20%D0%B4%D1%80%D1%83%D0%B3%D0%BE%D0%BC%2C%20%D1%87%D1%82%D0%BE%D0%B1%D1%8B%20%D0%B2%D1%8B%D1%80%D0%B0%D0%B7%D0%B8%D1%82%D1%8C%20%D0%B7%D0%B0%D0%B8%D0%BD%D1%82%D0%B5%D1%80%D0%B5%D1%81%D0%BE%D0%B2%D0%B0%D0%BD%D0%BD%D0%BE%D1%81%D1%82%D1%8C%20%D0%B2%20%D1%81%D0%B2%D0%BE%D0%B8%D1%85%20%D0%BF%D1%80%D0%B5%D0%B4%D0%BB%D0%BE%D0%B6%D0%B5%D0%BD%D0%B8%D1%8F%D1%85%7D.%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D0%B8%20%D0%BD%D0%B5%D1%81%D1%83%D1%82%20%D0%BE%D1%82%D0%B2%D0%B5%D1%82%D1%81%D1%82%D0%B2%D0%B5%D0%BD%D0%BD%D0%BE%D1%81%D1%82%D1%8C%20%D0%B7%D0%B0%20%D0%B2%D1%81%D1%8E%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8E%2C%20%D1%80%D0%B0%D0%B7%D0%BC%D0%B5%D1%89%D0%B0%D0%B5%D0%BC%D1%83%D1%8E%20%D0%B8%D0%BC%D0%B8%20%D0%B2%20%D0%BE%D0%B1%D1%89%D0%B5%D0%B4%D0%BE%D1%81%D1%82%D1%83%D0%BF%D0%BD%D1%8B%D1%85%20%D1%83%D1%87%D0%B5%D1%82%D0%BD%D1%8B%D1%85%20%D0%B7%D0%B0%D0%BF%D0%B8%D1%81%D1%8F%D1%85.%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%20%D0%B4%D0%BE%D0%BB%D0%B6%D0%B5%D0%BD%20%D0%B2%D0%BD%D0%B8%D0%BC%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D0%BE%20%D1%80%D0%B0%D1%81%D1%81%D0%BC%D0%BE%D1%82%D1%80%D0%B5%D1%82%D1%8C%20%D0%B2%D1%81%D0%B5%20%D1%80%D0%B8%D1%81%D0%BA%D0%B8%2C%20%D1%81%D0%B2%D1%8F%D0%B7%D0%B0%D0%BD%D0%BD%D1%8B%D0%B5%20%D1%81%20%D1%82%D0%B5%D0%BC%2C%20%D1%87%D1%82%D0%BE%20%D0%BE%D0%BD%20%D0%B4%D0%B5%D0%BB%D0%B0%D0%B5%D1%82%20%D0%BE%D0%BF%D1%80%D0%B5%D0%B4%D0%B5%D0%BB%D1%91%D0%BD%D0%BD%D1%83%D1%8E%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8E%20%26ndash%3B%20%D0%B2%20%D1%87%D0%B0%D1%81%D1%82%D0%BD%D0%BE%D1%81%D1%82%D0%B8%2C%20%D0%B0%D0%B4%D1%80%D0%B5%D1%81%20%D0%B8%D0%BB%D0%B8%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8E%20%D0%BE%20%D0%BC%D0%B5%D1%81%D1%82%D0%B5%20%D1%81%D0%B2%D0%BE%D0%B5%D0%B3%D0%BE%20%D1%82%D0%BE%D1%87%D0%BD%D0%BE%D0%B3%D0%BE%20%D1%80%D0%B0%D1%81%D0%BF%D0%BE%D0%BB%D0%BE%D0%B6%D0%B5%D0%BD%D0%B8%D1%8F%20-%20%D0%BE%D0%B1%D1%89%D0%B5%D0%B4%D0%BE%D1%81%D1%82%D1%83%D0%BF%D0%BD%D0%BE%D0%B9.%20%D0%95%D1%81%D0%BB%D0%B8%20%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%20%D1%80%D0%B5%D1%88%D0%B8%D0%BB%20%D0%B2%D0%BE%D0%B9%D1%82%D0%B8%20%D0%BD%D0%B0%20%D1%81%D0%B0%D0%B9%D1%82%2C%20%D0%B8%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D1%83%D1%8F%20%D1%81%D0%BB%D1%83%D0%B6%D0%B1%D1%83%20%D0%B0%D1%83%D1%82%D0%B5%D0%BD%D1%82%D0%B8%D1%84%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D0%B8%20%D1%81%D1%82%D0%BE%D1%80%D0%BE%D0%BD%D0%BD%D0%B5%D0%B3%D0%BE%20%D0%BE%D0%BF%D0%B5%D1%80%D0%B0%D1%82%D0%BE%D1%80%D0%B0%2C%20%D0%BD%D0%B0%D0%BF%D1%80%D0%B8%D0%BC%D0%B5%D1%80%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8E%20Facebook%2C%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%BC%D0%BE%D0%B6%D0%B5%D1%82%20%D0%BF%D0%BE%D0%BB%D1%83%D1%87%D0%B8%D1%82%D1%8C%20%D0%B4%D0%BE%D0%BF%D0%BE%D0%BB%D0%BD%D0%B8%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D1%8B%D0%B9%20%D0%BF%D1%80%D0%BE%D1%84%D0%B8%D0%BB%D1%8C%2C%20%D0%B8%D0%BB%D0%B8%20%D0%B4%D1%80%D1%83%D0%B3%D1%83%D1%8E%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8E%2C%20%D0%B4%D0%BE%D1%81%D1%82%D1%83%D0%BF%20%D0%BA%20%D0%BA%D0%BE%D1%82%D0%BE%D1%80%D0%BE%D0%B9%20%D0%BF%D1%80%D0%B5%D0%B4%D0%BE%D1%81%D1%82%D0%B0%D0%B2%D0%BB%D0%B5%D0%BD%20%D1%82%D0%B0%D0%BA%D0%B8%D0%BC%20%D1%82%D1%80%D0%B5%D1%82%D1%8C%D0%B8%D0%BC%20%D0%BB%D0%B8%D1%86%D0%BE%D0%BC.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9E%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%B8%20%D0%A1%D0%B4%D0%B5%D0%BB%D0%BA%D0%B8%3A%20%D0%92%20%D1%80%D0%B0%D0%BC%D0%BA%D0%B0%D1%85%20%D0%B4%D0%B5%D1%8F%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D0%BE%D1%81%D1%82%D0%B8%20%D1%81%D0%B2%D0%BE%D0%B5%D0%B3%D0%BE%20%D1%81%D0%B0%D0%B9%D1%82%D0%B0%2C%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%BC%D0%BE%D0%B6%D0%B5%D1%82%20%D1%80%D0%B0%D0%B7%D0%BC%D0%B5%D1%89%D0%B0%D1%82%D1%8C%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8E%2C%20%D0%B2%20%D1%82%D0%BE%D0%BC%20%D1%87%D0%B8%D1%81%D0%BB%D0%B5%20%D0%BB%D0%B8%D1%87%D0%BD%D0%BE%D0%B3%D0%BE%20%D0%B8%20%D0%BA%D0%BE%D0%BD%D1%82%D0%B0%D0%BA%D1%82%D0%BD%D0%BE%D0%B3%D0%BE%20%D1%85%D0%B0%D1%80%D0%B0%D0%BA%D1%82%D0%B5%D1%80%D0%B0%2C%20%D0%BD%D0%B5%D0%BE%D0%B1%D1%85%D0%BE%D0%B4%D0%B8%D0%BC%D1%83%D1%8E%20%D0%B4%D0%BB%D1%8F%20%D1%81%D0%BE%D0%B2%D0%B5%D1%80%D1%88%D0%B5%D0%BD%D0%B8%D1%8F%20%D1%81%D0%B4%D0%B5%D0%BB%D0%BE%D0%BA%20%D0%BC%D0%B5%D0%B6%D0%B4%D1%83%20%D0%BF%D0%BE%D0%BA%D1%83%D0%BF%D0%B0%D1%82%D0%B5%D0%BB%D0%B5%D0%BC%20%D0%B8%20%D0%BF%D1%80%D0%BE%D0%B4%D0%B0%D0%B2%D1%86%D0%BE%D0%BC%2C%20%D0%B4%D0%BB%D1%8F%20%D0%BE%D1%82%D0%BF%D1%80%D0%B0%D0%B2%D0%BA%D0%B8%20%D1%81%D0%BE%D0%BE%D0%B1%D1%89%D0%B5%D0%BD%D0%B8%D0%B9%20%D0%B8%20%D0%BE%D0%B1%D1%89%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F%D0%BC%D0%B8%20%D0%BC%D0%B5%D0%B6%D0%B4%D1%83%20%D1%81%D0%BE%D0%B1%D0%BE%D0%B9%2C%20%D0%B8%20%D1%81%D0%BE%D0%B2%D0%B5%D1%80%D1%88%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%BF%D0%BB%D0%B0%D1%82%D0%B5%D0%B6%D0%B5%D0%B9.%20%D0%92%D1%81%D1%8F%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8F%2C%20%D0%BD%D0%B5%D0%BE%D0%B1%D1%85%D0%BE%D0%B4%D0%B8%D0%BC%D0%B0%D1%8F%20%D0%B4%D0%BB%D1%8F%20%D0%BF%D1%83%D0%B1%D0%BB%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D0%B8%20%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B9%2C%20%D1%82%D1%80%D0%B5%D0%B1%D1%83%D0%B5%D1%82%D1%81%D1%8F%20%D0%BF%D1%80%D0%B8%20%D1%81%D0%BE%D0%B7%D0%B4%D0%B0%D0%BD%D0%B8%D0%B8%20%D1%83%D1%87%D0%B5%D1%82%D0%BD%D0%BE%D0%B9%20%D0%B7%D0%B0%D0%BF%D0%B8%D1%81%D0%B8.%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D0%B8%20%D0%BD%D0%B5%D1%81%D1%83%D1%82%20%D0%BE%D1%82%D0%B2%D0%B5%D1%82%D1%81%D1%82%D0%B2%D0%B5%D0%BD%D0%BD%D0%BE%D1%81%D1%82%D1%8C%20%D0%B7%D0%B0%20%D0%B2%D1%81%D1%8E%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8E%2C%20%D1%80%D0%B0%D0%B7%D0%BC%D0%B5%D1%89%D0%B0%D0%B5%D0%BC%D1%83%D1%8E%20%D0%B8%D0%BC%D0%B8%20%D0%BD%D0%B0%20%D1%81%D0%B0%D0%B9%D1%82%D0%B5.%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%20%D0%B4%D0%BE%D0%BB%D0%B6%D0%B5%D0%BD%20%D0%B2%D0%BD%D0%B8%D0%BC%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D0%BE%20%D1%80%D0%B0%D1%81%D1%81%D0%BC%D0%BE%D1%82%D1%80%D0%B5%D1%82%D1%8C%20%D0%B2%D1%81%D0%B5%20%D1%80%D0%B8%D1%81%D0%BA%D0%B8%2C%20%D1%81%D0%B2%D1%8F%D0%B7%D0%B0%D0%BD%D0%BD%D1%8B%D0%B5%20%D1%81%20%D1%82%D0%B5%D0%BC%2C%20%D1%87%D1%82%D0%BE%20%D0%BE%D0%BD%20%D0%B4%D0%B5%D0%BB%D0%B0%D0%B5%D1%82%20%D0%BE%D0%BF%D1%80%D0%B5%D0%B4%D0%B5%D0%BB%D1%91%D0%BD%D0%BD%D1%83%D1%8E%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8E%20%26ndash%3B%20%D0%B2%20%D1%87%D0%B0%D1%81%D1%82%D0%BD%D0%BE%D1%81%D1%82%D0%B8%2C%20%D0%B0%D0%B4%D1%80%D0%B5%D1%81%20%D0%B8%D0%BB%D0%B8%20%D0%B4%D1%80%D1%83%D0%B3%D1%83%D1%8E%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8E%20%D0%BB%D0%B8%D1%87%D0%BD%D0%BE%D0%B3%D0%BE%20%D1%85%D0%B0%D1%80%D0%B0%D0%BA%D1%82%D0%B5%D1%80%D0%B0%20-%20%D0%BE%D0%B1%D1%89%D0%B5%D0%B4%D0%BE%D1%81%D1%82%D1%83%D0%BF%D0%BD%D0%BE%D0%B9.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%98%D0%B3%D1%80%D1%8B%2C%20%D0%A0%D0%B5%D0%BA%D0%BB%D0%B0%D0%BC%D0%B0%20%D0%B8%20%D0%9F%D1%80%D0%BE%D0%B4%D0%B2%D0%B8%D0%B6%D0%B5%D0%BD%D0%B8%D0%B5%3A%20%D0%92%20%D1%80%D0%B0%D0%BC%D0%BA%D0%B0%D1%85%20%D0%BE%D0%BF%D0%B5%D1%80%D0%B0%D1%86%D0%B8%D0%B9%20%D1%81%D0%B2%D0%BE%D0%B5%D0%B3%D0%BE%20%D1%81%D0%B0%D0%B9%D1%82%D0%B0%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%BC%D0%BE%D0%B6%D0%B5%D1%82%20%D1%81%D0%BE%D0%B1%D0%B8%D1%80%D0%B0%D1%82%D1%8C%20%D0%BB%D0%B8%D1%87%D0%BD%D1%83%D1%8E%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8E%2C%20%D1%82%D0%B0%D0%BA%D1%83%D1%8E%20%D0%BA%D0%B0%D0%BA%20%D0%B8%D0%BC%D1%8F%20%D0%B8%20%D0%BA%D0%BE%D0%BD%D1%82%D0%B0%D0%BA%D1%82%D0%BD%D0%B0%D1%8F%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8F%2C%20%D0%BA%D0%BE%D0%B3%D0%B4%D0%B0%20%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D0%B8%20%D1%83%D1%87%D0%B0%D1%81%D1%82%D0%B2%D1%83%D1%8E%D1%82%20%D0%B2%20%D0%B8%D0%B3%D1%80%D0%B0%D1%85%2C%20%D0%B2%D0%B8%D0%BA%D1%82%D0%BE%D1%80%D0%B8%D0%BD%D0%B0%D1%85%20%D0%B8%20%D0%B4%D1%80%D1%83%D0%B3%D0%B8%D1%85%20%D0%BC%D0%B0%D1%80%D0%BA%D0%B5%D1%82%D0%B8%D0%BD%D0%B3%D0%BE%D0%B2%D1%8B%D1%85%20%D0%B0%D0%BA%D1%86%D0%B8%D1%8F%D1%85%2C%20%D0%BE%D1%80%D0%B3%D0%B0%D0%BD%D0%B8%D0%B7%D1%83%D0%B5%D0%BC%D1%8B%D1%85%20%D0%BD%D0%B0%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B5%20%D0%B8%D0%BB%D0%B8%20%D0%BD%D0%B0%20%D1%81%D1%82%D0%BE%D1%80%D0%BE%D0%BD%D0%BD%D0%B8%D1%85%20%D1%81%D0%B0%D0%B9%D1%82%D0%B0%D1%85%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D0%B5%D0%B9.%20%D0%92%20%D1%80%D0%B0%D0%BC%D0%BA%D0%B0%D1%85%20%D0%B4%D0%B5%D1%8F%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D0%BE%D1%81%D1%82%D0%B8%20%D1%81%D0%B2%D0%BE%D0%B5%D0%B3%D0%BE%20%D1%81%D0%B0%D0%B9%D1%82%D0%B0%2C%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%BC%D0%BE%D0%B6%D0%B5%D1%82%20%D1%82%D0%B0%D0%BA%D0%B6%D0%B5%20%D0%BE%D0%B1%D1%80%D0%B0%D0%B1%D0%B0%D1%82%D1%8B%D0%B2%D0%B0%D1%82%D1%8C%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8E%2C%20%D1%81%D0%B2%D1%8F%D0%B7%D0%B0%D0%BD%D0%BD%D1%83%D1%8E%20%D1%81%20%D1%8D%D1%84%D1%84%D0%B5%D0%BA%D1%82%D0%B8%D0%B2%D0%BD%D0%BE%D1%81%D1%82%D1%8C%D1%8E%20%D1%80%D0%B5%D0%BA%D0%BB%D0%B0%D0%BC%D0%BD%D1%8B%D1%85%20%D0%BA%D0%B0%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D0%B9%2C%20%D0%B2%20%D1%82%D0%BE%D0%BC%20%D1%87%D0%B8%D1%81%D0%BB%D0%B5%2C%20%D0%BA%D0%B0%D0%BA%D0%B8%D0%B5%20%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%B1%D1%8B%D0%BB%D0%B8%20%D0%BF%D1%80%D0%BE%D1%81%D0%BC%D0%BE%D1%82%D1%80%D0%B5%D0%BD%D1%8B%20%D0%BD%D0%B0%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B5%2C%20%D1%82%D0%B0%D0%BA%20%D0%B8%20%D0%BD%D0%B0%20%D1%81%D0%B0%D0%B9%D1%82%D0%B0%D1%85%20%D1%82%D1%80%D0%B5%D1%82%D1%8C%D0%B8%D1%85%20%D0%BB%D0%B8%D1%86.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9E%D0%B1%D1%81%D0%BB%D1%83%D0%B6%D0%B8%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5%20%D0%BA%D0%BB%D0%B8%D0%B5%D0%BD%D1%82%D0%BE%D0%B2%3A%20%D0%9F%D1%80%D0%B8%20%D0%BE%D0%B1%D1%80%D0%B0%D1%89%D0%B5%D0%BD%D0%B8%D0%B8%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D0%B5%D0%B9%20%D0%B2%20%D0%BE%D1%82%D0%B4%D0%B5%D0%BB%20%D0%BE%D0%B1%D1%81%D0%BB%D1%83%D0%B6%D0%B8%D0%B2%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%BA%D0%BB%D0%B8%D0%B5%D0%BD%D1%82%D0%BE%D0%B2%2C%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%BC%D0%BE%D0%B6%D0%B5%D1%82%20-%20%D0%B2%20%D1%80%D0%B0%D0%BC%D0%BA%D0%B0%D1%85%20%D0%BE%D0%BF%D0%B5%D1%80%D0%B0%D1%86%D0%B8%D0%B9%20%D1%81%D0%B2%D0%BE%D0%B5%D0%B3%D0%BE%20%D1%81%D0%B0%D0%B9%D1%82%D0%B0%20-%20%D1%81%D0%BE%D0%B1%D0%B8%D1%80%D0%B0%D1%82%D1%8C%20%D0%BB%D0%B8%D1%87%D0%BD%D1%83%D1%8E%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8E%2C%20%D0%BD%D0%B5%D0%BE%D0%B1%D1%85%D0%BE%D0%B4%D0%B8%D0%BC%D1%83%D1%8E%20%D0%B4%D0%BB%D1%8F%20%D0%B2%D1%8B%D0%BF%D0%BE%D0%BB%D0%BD%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%B7%D0%B0%D0%BF%D1%80%D0%BE%D1%81%D0%B0%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F%20%D0%B8%20%D0%BF%D0%BE%D0%BB%D1%83%D1%87%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%BE%D0%B1%D1%80%D0%B0%D1%82%D0%BD%D0%BE%D0%B9%20%D1%81%D0%B2%D1%8F%D0%B7%D0%B8%20%D0%BF%D1%80%D0%B8%20%D0%BD%D0%B5%D0%BE%D0%B1%D1%85%D0%BE%D0%B4%D0%B8%D0%BC%D0%BE%D1%81%D1%82%D0%B8.%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%BC%D0%BE%D0%B6%D0%B5%D1%82%20%D1%82%D0%B0%D0%BA%D0%B6%D0%B5%20%D1%81%D0%B2%D1%8F%D0%B7%D0%B0%D1%82%D1%8C%D1%81%D1%8F%20%D1%81%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D0%B5%D0%BC%2C%20%D0%B8%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D1%83%D1%8F%20%D1%81%D1%83%D1%89%D0%B5%D1%81%D1%82%D0%B2%D1%83%D1%8E%D1%89%D1%83%D1%8E%20%D0%BA%D0%BE%D0%BD%D1%82%D0%B0%D0%BA%D1%82%D0%BD%D1%83%D1%8E%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8E%20%D1%83%D1%87%D1%91%D1%82%D0%BD%D0%BE%D0%B9%20%D0%B7%D0%B0%D0%BF%D0%B8%D1%81%D0%B8%2C%20%D0%BF%D1%80%D0%B5%D0%B4%D0%BE%D1%81%D1%82%D0%B0%D0%B2%D0%BB%D0%B5%D0%BD%D0%BD%D1%83%D1%8E%20%D0%B4%D0%BB%D1%8F%20%D1%8D%D1%82%D0%BE%D0%B9%20%D1%86%D0%B5%D0%BB%D0%B8.%20%D0%9A%D0%BE%D0%BC%D0%BD%D0%B0%D0%BF%D0%B8%D1%8F%20%D0%BC%D0%BE%D0%B6%D0%B5%D1%82%20%D1%82%D0%B0%D0%BA%D0%B6%D0%B5%20%D1%81%D0%BE%D0%B1%D0%B8%D1%80%D0%B0%D1%82%D1%8C%20%D0%B4%D1%80%D1%83%D0%B3%D1%83%D1%8E%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8E%20%D0%BE%D0%B1%20%D0%BE%D0%B1%D1%89%D0%B5%D0%BD%D0%B8%D0%B8%20%D1%81%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F%D0%BC%D0%B8%2C%20%D0%BD%D0%B0%D0%BF%D1%80%D0%B8%D0%BC%D0%B5%D1%80%2C%20%D0%BB%D1%8E%D0%B1%D1%8B%D0%B5%20%D0%B7%D0%B0%D0%BF%D1%80%D0%BE%D1%81%D1%8B%20%D0%B2%20%D1%81%D0%BB%D1%83%D0%B6%D0%B1%D1%83%20%D0%BF%D0%BE%D0%B4%D0%B4%D0%B5%D1%80%D0%B6%D0%BA%D0%B8%2C%20%D0%BF%D0%BE%D0%B4%D0%B0%D0%B2%D0%B0%D0%B5%D0%BC%D1%8B%D0%B5%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F%D0%BC%D0%B8%2C%20%D0%B8%D0%BB%D0%B8%20%D0%BB%D1%8E%D0%B1%D1%83%D1%8E%20%D0%BE%D0%B1%D1%80%D0%B0%D1%82%D0%BD%D1%83%D1%8E%20%D1%81%D0%B2%D1%8F%D0%B7%D1%8C%2C%20%D0%BF%D1%80%D0%B5%D0%B4%D0%BE%D1%81%D1%82%D0%B0%D0%B2%D0%BB%D1%8F%D0%B5%D0%BC%D1%83%D1%8E%20%D0%B8%D0%BC%D0%B8.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%92%D0%B5%D0%B1-%D1%81%D0%B0%D0%B9%D1%82%20%D0%B8%20%D0%BC%D0%BE%D0%B1%D0%B8%D0%BB%D1%8C%D0%BD%D1%8B%D0%B5%20%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D0%B5%3A%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%BC%D0%BE%D0%B6%D0%B5%D1%82%20%D0%B0%D0%B2%D1%82%D0%BE%D0%BC%D0%B0%D1%82%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%20%D0%BF%D0%BE%D0%BB%D1%83%D1%87%D0%B0%D1%82%D1%8C%20%D0%B8%20%D1%80%D0%B5%D0%B3%D0%B8%D1%81%D1%82%D1%80%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D1%82%D1%8C%20%D0%BD%D0%B0%20%D1%81%D0%B2%D0%BE%D0%B8%D1%85%20%D1%81%D0%B5%D1%80%D0%B2%D0%B5%D1%80%D0%B0%D1%85%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8E%20%D0%B8%D0%B7%20%D0%B1%D1%80%D0%B0%D1%83%D0%B7%D0%B5%D1%80%D0%B0%20%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F%20%D0%B8%D0%BB%D0%B8%20%D0%BB%D1%8E%D0%B1%D0%BE%D0%B3%D0%BE%20%D1%83%D1%81%D1%82%D1%80%D0%BE%D0%B9%D1%81%D1%82%D0%B2%D0%B0%2C%20%D0%B2%D0%BA%D0%BB%D1%8E%D1%87%D0%B0%D1%8F%20IP-%D0%B0%D0%B4%D1%80%D0%B5%D1%81%2C%20%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%BC%D0%BD%D0%BE%D0%B3%D0%BE%20%D0%BE%D0%B1%D0%B5%D1%81%D0%BF%D0%B5%D1%87%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%B8%20%D0%B0%D0%BF%D0%BF%D0%B0%D1%80%D0%B0%D1%82%D0%BD%D1%8B%D0%B5%20%D0%B0%D1%82%D1%80%D0%B8%D0%B1%D1%83%D1%82%D1%8B%2C%20%D1%81%D1%82%D1%80%D0%B0%D0%BD%D0%B8%D1%86%D1%8B%2C%20%D0%BA%D0%BE%D1%82%D0%BE%D1%80%D1%8B%D0%B5%20%D0%B7%D0%B0%D0%BF%D1%80%D0%B0%D1%88%D0%B8%D0%B2%D0%B0%D0%B5%D1%82%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%2C%20%D0%BC%D0%BE%D0%B1%D0%B8%D0%BB%D1%8C%D0%BD%D1%8B%D0%B5%20%D0%B8%D0%B4%D0%B5%D0%BD%D1%82%D0%B8%D1%84%D0%B8%D0%BA%D0%B0%D1%82%D0%BE%D1%80%D1%8B%2C%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8E%20%D0%BE%D0%B1%20%D0%B8%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B8%20%D0%BF%D1%80%D0%B8%D0%BB%D0%BE%D0%B6%D0%B5%D0%BD%D0%B8%D1%8F%2C%20%D0%B8%2F%D0%B8%D0%BB%D0%B8%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8E%20%D0%BE%20%D0%B4%D1%80%D1%83%D0%B3%D0%B8%D1%85%20%D0%B8%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D1%83%D0%B5%D0%BC%D1%8B%D1%85%20%D1%83%D1%81%D1%82%D1%80%D0%BE%D0%B9%D1%81%D1%82%D0%B2%D0%B0%D1%85%20%D0%B8%D0%BB%D0%B8%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8E%20%D1%81%D0%B8%D1%81%D1%82%D0%B5%D0%BC%D0%BD%D0%BE%D0%B3%D0%BE%20%D1%83%D1%80%D0%BE%D0%B2%D0%BD%D1%8F.%20%D0%AD%D1%82%D0%BE%20%D0%BC%D0%BE%D0%B6%D0%B5%D1%82%20%D0%BF%D1%80%D0%BE%D0%B8%D1%81%D1%85%D0%BE%D0%B4%D0%B8%D1%82%D1%8C%20%D0%BD%D0%B0%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B5%20%D0%B8%D0%BB%D0%B8%20%D0%BD%D0%B0%20%D0%BC%D0%BE%D0%B1%D0%B8%D0%BB%D1%8C%D0%BD%D0%BE%D0%BC%20%D0%BF%D1%80%D0%B8%D0%BB%D0%BE%D0%B6%D0%B5%D0%BD%D0%B8%D0%B8%2C%20%D0%B8%D0%BB%D0%B8%20%D0%BD%D0%B0%20%D1%81%D0%B5%D1%80%D0%B2%D0%B8%D1%81%D0%B0%D1%85%20%D1%82%D1%80%D0%B5%D1%82%D1%8C%D0%B8%D1%85%20%D0%BB%D0%B8%D1%86.%20%D0%94%D0%BE%D0%BF%D0%BE%D0%BB%D0%BD%D0%B8%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D0%B0%D1%8F%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8F%20%D0%BE%20%D1%82%D0%BE%D0%BC%2C%20%D0%BA%D0%B0%D0%BA%20%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D0%B8%20%D0%BC%D0%BE%D0%B3%D1%83%D1%82%20%D0%BA%D0%BE%D0%BD%D1%82%D1%80%D0%BE%D0%BB%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D1%82%D1%8C%20%D0%B8%2F%D0%B8%D0%BB%D0%B8%20%D0%B1%D0%BB%D0%BE%D0%BA%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D1%82%D1%8C%20%D1%82%D0%B0%D0%BA%D0%BE%D0%B9%20%D1%81%D0%B1%D0%BE%D1%80%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D0%B8%D0%BD%D0%B0%D1%85%D0%BE%D0%B4%D0%B8%D1%82%D1%81%D1%8F%20%D0%BD%D0%B8%D0%B6%D0%B5%20%D0%BD%D0%B0%D1%85%D0%BE%D0%B4%D0%B8%D1%82%D1%81%D1%8F%20%D0%B2%20%D1%80%D0%B0%D0%B7%D0%B4%D0%B5%D0%BB%D0%B5%206%20%D0%B4%D0%B0%D0%BD%D0%BD%D0%BE%D0%B9%20%D0%BF%D0%BE%D0%BB%D0%B8%D1%82%D0%B8%D0%BA%D0%B8.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9F%D1%80%D0%B8%D0%BB%D0%B0%D0%B3%D0%B0%D0%B5%D0%BC%D0%B0%D1%8F%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8F%3A%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%BC%D0%BE%D0%B6%D0%B5%D1%82%20%D1%82%D0%B0%D0%BA%D0%B6%D0%B5%20%D0%B4%D0%BE%D0%B1%D0%B0%D0%B2%D0%B8%D1%82%D1%8C%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8E%2C%20%D0%B7%D0%B0%D0%BA%D0%BE%D0%BD%D0%BD%D0%BE%20%D0%BF%D0%BE%D0%BB%D1%83%D1%87%D0%B5%D0%BD%D0%BD%D1%83%D1%8E%20%D0%BE%D1%82%20%D0%B4%D0%B5%D0%BB%D0%BE%D0%B2%D1%8B%D1%85%20%D0%BF%D0%B0%D1%80%D1%82%D0%BD%D0%B5%D1%80%D0%BE%D0%B2%20%D0%B8%D0%BB%D0%B8%20%D1%82%D1%80%D0%B5%D1%82%D1%8C%D0%B8%D1%85%20%D1%81%D1%82%D0%BE%D1%80%D0%BE%D0%BD%2C%20%D0%BA%20%D1%81%D1%83%D1%89%D0%B5%D1%81%D1%82%D0%B2%D1%83%D1%8E%D1%89%D0%B8%D0%BC%20%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D0%BC%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D0%B8%20%D0%BE%20%D1%81%D0%B2%D0%BE%D0%B8%D1%85%20%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F%D1%85.%20%D0%98%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8F%2C%20%D0%BA%D0%BE%D1%82%D0%BE%D1%80%D1%83%D1%8E%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%BD%D0%B5%20%D1%81%D0%BE%D0%B1%D0%B8%D1%80%D0%B0%D0%B5%D1%82%20%D0%B8%20%D0%BD%D0%B5%20%D0%BE%D0%B1%D1%80%D0%B0%D0%B1%D0%B0%D1%82%D1%8B%D0%B2%D0%B0%D0%B5%D1%82%3A%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%BD%D0%B5%20%D1%81%D0%BE%D0%B1%D0%B8%D1%80%D0%B0%D0%B5%D1%82%20%D0%B8%20%D0%BD%D0%B5%20%D0%BE%D0%B1%D1%80%D0%B0%D0%B1%D0%B0%D1%82%D1%8B%D0%B2%D0%B0%D0%B5%D1%82%20%D0%BF%D0%B5%D1%80%D1%81%D0%BE%D0%BD%D0%B0%D0%BB%D1%8C%D0%BD%D1%8B%D0%B5%20%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D0%B5%20%D0%BE%20%D1%80%D0%B0%D1%81%D0%BE%D0%B2%D0%BE%D0%BC%20%D0%B8%D0%BB%D0%B8%20%D1%8D%D1%82%D0%BD%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%BE%D0%BC%20%D0%BF%D1%80%D0%BE%D0%B8%D1%81%D1%85%D0%BE%D0%B6%D0%B4%D0%B5%D0%BD%D0%B8%D0%B8%2C%20%D0%BF%D0%BE%D0%BB%D0%B8%D1%82%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D1%85%2C%20%D1%80%D0%B5%D0%BB%D0%B8%D0%B3%D0%B8%D0%BE%D0%B7%D0%BD%D1%8B%D1%85%20%D0%B8%D0%BB%D0%B8%20%D0%BC%D0%B8%D1%80%D0%BE%D0%B2%D0%BE%D0%B7%D0%B7%D1%80%D0%B5%D0%BD%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D1%85%20%D1%83%D0%B1%D0%B5%D0%B6%D0%B4%D0%B5%D0%BD%D0%B8%D1%8F%D1%85%2C%20%D1%87%D0%BB%D0%B5%D0%BD%D1%81%D1%82%D0%B2%D0%B5%20%D0%B2%20%D0%BF%D0%BE%D0%BB%D0%B8%D1%82%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D1%85%20%D0%BF%D0%B0%D1%80%D1%82%D0%B8%D1%8F%D1%85%20%D0%B8%20%D0%BF%D1%80%D0%BE%D1%84%D0%B5%D1%81%D1%81%D0%B8%D0%BE%D0%BD%D0%B0%D0%BB%D1%8C%D0%BD%D1%8B%D1%85%20%D1%81%D0%BE%D1%8E%D0%B7%D0%B0%D1%85%2C%20%D0%B8%20%D0%BF%D0%BE%D0%B4%D0%BE%D0%B1%D0%BD%D1%83%D1%8E%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8E.%3C%2Fp%3E%0A%0A%3Cp%3EIP-%D0%90%D0%94%D0%A0%D0%95%D0%A1%2C%20%D0%9A%D0%A3%D0%9A%D0%98%D0%A1%D0%AB%20(COOKIES)%20%D0%B8%20%D0%9C%D0%9E%D0%91%D0%98%D0%9B%D0%AC%D0%9D%D0%AB%D0%95%20%D0%98%D0%94%D0%95%D0%9D%D0%A2%D0%98%D0%A4%D0%98%D0%9A%D0%90%D0%A2%D0%9E%D0%A0%D0%AB%3C%2Fp%3E%0A%0A%3Cp%3E%D0%92%20%D1%80%D0%B0%D0%BC%D0%BA%D0%B0%D1%85%20%D0%B4%D0%B5%D1%8F%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D0%BE%D1%81%D1%82%D0%B8%20%D1%81%D0%B2%D0%BE%D0%B5%D0%B3%D0%BE%20%D1%81%D0%B0%D0%B9%D1%82%D0%B0%2C%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%BC%D0%BE%D0%B6%D0%B5%D1%82%20%D1%81%D0%BE%D0%B1%D0%B8%D1%80%D0%B0%D1%82%D1%8C%20%D0%BE%D0%BF%D1%80%D0%B5%D0%B4%D0%B5%D0%BB%D0%B5%D0%BD%D0%BD%D1%83%D1%8E%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8E%20%D1%81%20%D0%BF%D0%BE%D0%BC%D0%BE%D1%89%D1%8C%D1%8E%20%D1%82%D0%B0%D0%BA%D0%B8%D1%85%20%D1%82%D0%B5%D1%85%D0%BD%D0%BE%D0%BB%D0%BE%D0%B3%D0%B8%D0%B9%20%D0%BA%D0%B0%D0%BA%20%D0%9A%D1%83%D0%BA%D0%B8%D1%81%D1%8B%20(%D0%BA%D1%83%D0%BA%D0%B8%2C%20cookies)%2C%20%D0%BF%D0%B8%D0%BA%D1%81%D0%B5%D0%BB%D0%B8%20(pixels)%2C%20%D0%B8%20%D0%BB%D0%BE%D0%BA%D0%B0%D0%BB%D1%8C%D0%BD%D0%BE%D0%B3%D0%BE%20%D1%85%D1%80%D0%B0%D0%BD%D0%B8%D0%BB%D0%B8%D1%89%D0%B0%20(%D0%BA%D0%B0%D0%BA%20%D0%B2%20%D0%92%D0%B0%D1%88%D0%B5%D0%BC%20%D0%B1%D1%80%D0%B0%D1%83%D0%B7%D0%B5%D1%80%D0%B5%2C%20%D0%B8%D0%BB%D0%B8%20%D0%BC%D0%BE%D0%B1%D0%B8%D0%BB%D1%8C%D0%BD%D0%BE%D0%BC%20%D1%83%D1%81%D1%82%D1%80%D0%BE%D0%B9%D1%81%D1%82%D0%B2%D0%B5).%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9A%D0%A3%D0%9A%D0%98%D0%A1%D0%AB%20(COOKIES)%20-%20%D1%8D%D1%82%D0%BE%20%D0%BD%D0%B5%D0%B1%D0%BE%D0%BB%D1%8C%D1%88%D0%B8%D0%B5%20%D1%82%D0%B5%D0%BA%D1%81%D1%82%D0%BE%D0%B2%D1%8B%D0%B5%20%D1%84%D0%B0%D0%B9%D0%BB%D1%8B%2C%20%D0%BA%D0%BE%D1%82%D0%BE%D1%80%D1%8B%D0%B5%20%D1%85%D1%80%D0%B0%D0%BD%D1%8F%D1%82%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8E%20%D0%BD%D0%B5%D0%BF%D0%BE%D1%81%D1%80%D0%B5%D0%B4%D1%81%D1%82%D0%B2%D0%B5%D0%BD%D0%BD%D0%BE%20%D0%BD%D0%B0%20%D0%BA%D0%BE%D0%BC%D0%BF%D1%8C%D1%8E%D1%82%D0%B5%D1%80%D0%B5%20%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F%2C%20%D0%B5%D0%B3%D0%BE%20%D0%BC%D0%BE%D0%B1%D0%B8%D0%BB%D1%8C%D0%BD%D0%BE%D0%BC%20%D1%82%D0%B5%D0%BB%D0%B5%D1%84%D0%BE%D0%BD%D0%B5%20%D0%B8%D0%BB%D0%B8%20%D0%B4%D1%80%D1%83%D0%B3%D0%BE%D0%BC%20%D1%83%D1%81%D1%82%D1%80%D0%BE%D0%B9%D1%81%D1%82%D0%B2%D0%B5.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9F%D0%B8%D0%BA%D1%81%D0%B5%D0%BB%D0%B8%20(pixels)%20%26ndash%3B%20%D0%BD%D0%B5%D0%B1%D0%BE%D0%BB%D1%8C%D1%88%D0%B8%D0%B5%20%D1%86%D0%B8%D1%84%D1%80%D0%BE%D0%B2%D1%8B%D0%B5%20%D0%B8%D0%B7%D0%BE%D0%B1%D1%80%D0%B0%D0%B6%D0%B5%D0%BD%D0%B8%D1%8F%2C%20%D0%BA%D0%BE%D1%82%D0%BE%D1%80%D1%8B%D0%B5%20%D1%8F%D0%B2%D0%BB%D1%8F%D1%8E%D1%82%D1%81%D1%8F%20%D1%87%D0%B0%D1%81%D1%82%D1%8C%D1%8E%20%D0%BA%D0%BE%D0%B4%D0%BE%D0%B2%20%D0%BD%D0%B0%20%D0%B2%D0%B5%D0%B1-%D1%81%D1%82%D1%80%D0%B0%D0%BD%D0%B8%D1%86%D0%B0%D1%85%2C%20%D0%BA%D0%BE%D1%82%D0%BE%D1%80%D1%8B%D0%B5%20%D0%BF%D0%BE%D0%B7%D0%B2%D0%BE%D0%BB%D1%8F%D1%8E%D1%82%20%D0%B4%D1%80%D1%83%D0%B3%D0%BE%D0%BC%D1%83%20%D1%81%D0%B5%D1%80%D0%B2%D0%B5%D1%80%D1%83%20%D0%B8%D0%B7%D0%BC%D0%B5%D1%80%D0%B8%D1%82%D1%8C%20%D0%BF%D1%80%D0%BE%D1%81%D0%BC%D0%B0%D1%82%D1%80%D0%B8%D0%B2%D0%B0%D0%B5%D0%BC%D0%BE%D1%81%D1%82%D1%8C%20%D0%B2%D0%B5%D0%B1-%D1%81%D1%82%D1%80%D0%B0%D0%BD%D0%B8%D1%86%D1%8B%2C%20%D0%B8%20%D1%87%D0%B0%D1%81%D1%82%D0%BE%20%D0%B8%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D1%83%D1%8E%D1%82%D1%81%D1%8F%20%D0%B2%20%D1%81%D0%BE%D1%87%D0%B5%D1%82%D0%B0%D0%BD%D0%B8%D0%B8%20%D1%81%20%D0%BA%D1%83%D0%BA%D0%B8%D1%81%20(cookies).%20%D0%9A%D0%BE%D0%B4%20%D0%BE%D1%82%D1%81%D0%BB%D0%B5%D0%B6%D0%B8%D0%B2%D0%B0%D0%B5%D1%82%20%D0%B5%D1%81%D0%BB%D0%B8%20%D0%B8%20%D0%BA%D0%BE%D0%B3%D0%B4%D0%B0%20(%D0%B8%20%D0%BD%D0%B0%20%D0%BA%D0%B0%D0%BA%D0%BE%D0%B9%20%D1%81%D1%82%D1%80%D0%B0%D0%BD%D0%B8%D1%86%D0%B5)%20%D0%BF%D0%B8%D0%BA%D1%81%D0%B5%D0%BB%D1%8C%20%D0%B7%D0%B0%D0%B3%D1%80%D1%83%D0%B6%D0%B5%D0%BD%2C%20%D1%87%D1%82%D0%BE%D0%B1%D1%8B%20%D1%83%D0%BA%D0%B0%D0%B7%D0%B0%D1%82%D1%8C%2C%20%D1%87%D1%82%D0%BE%20%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%20%D0%B2%D0%B7%D0%B0%D0%B8%D0%BC%D0%BE%D0%B4%D0%B5%D0%B9%D1%81%D1%82%D0%B2%D1%83%D0%B5%D1%82%20%D1%81%D0%BE%20%D1%81%D1%82%D1%80%D0%B0%D0%BD%D0%B8%D1%86%D0%B5%D0%B9%20%D0%B8%D0%BB%D0%B8%20%D1%87%D0%B0%D1%81%D1%82%D1%8C%D1%8E%20%D1%81%D1%82%D1%80%D0%B0%D0%BD%D0%B8%D1%86%D1%8B%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B0.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%A1%20%D0%BF%D0%BE%D0%BC%D0%BE%D1%89%D1%8C%D1%8E%20%D0%BA%D1%83%D0%BA%D0%B8%D1%81%20(cookies)%2C%20%D0%B2%D0%B5%D0%B1-%D1%81%D0%B5%D1%80%D0%B2%D0%B5%D1%80%20%D0%BC%D0%BE%D0%B6%D0%B5%D1%82%20%D1%81%D0%BE%D1%85%D1%80%D0%B0%D0%BD%D0%B8%D1%82%D1%8C%2C%20%D0%BD%D0%B0%D0%BF%D1%80%D0%B8%D0%BC%D0%B5%D1%80%20%D0%BF%D1%80%D0%B5%D0%B4%D0%BF%D0%BE%D1%87%D1%82%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%B8%20%D0%BD%D0%B0%D1%81%D1%82%D1%80%D0%BE%D0%B9%D0%BA%D0%B8%20%D0%BD%D0%B0%20%D0%BA%D0%BE%D0%BC%D0%BF%D1%8C%D1%8E%D1%82%D0%B5%D1%80%D0%B5%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F%2C%20%D0%B5%D0%B3%D0%BE%20%D0%BC%D0%BE%D0%B1%D0%B8%D0%BB%D1%8C%D0%BD%D0%BE%D0%BC%20%D1%82%D0%B5%D0%BB%D0%B5%D1%84%D0%BE%D0%BD%D0%B5%20%D0%B8%D0%BB%D0%B8%20%D0%B4%D1%80%D1%83%D0%B3%D0%BE%D0%BC%20%D1%83%D1%81%D1%82%D1%80%D0%BE%D0%B9%D1%81%D1%82%D0%B2%D0%B5(%D0%B0%D1%85)%2C%20%D0%BA%D0%BE%D1%82%D0%BE%D1%80%D0%BE%D0%B5%20%D0%B7%D0%B0%D1%82%D0%B5%D0%BC%20%D0%B0%D0%B2%D1%82%D0%BE%D0%BC%D0%B0%D1%82%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%20%D0%B2%D0%BE%D1%81%D1%81%D1%82%D0%B0%D0%BD%D0%B0%D0%B2%D0%BB%D0%B8%D0%B2%D0%B0%D0%B5%D1%82%D1%81%D1%8F%20%D0%BF%D1%80%D0%B8%20%D1%81%D0%BB%D0%B5%D0%B4%D1%83%D1%8E%D1%89%D0%B5%D0%BC%20%D0%BF%D0%BE%D1%81%D0%B5%D1%89%D0%B5%D0%BD%D0%B8%D0%B8.%20%D0%98%D0%BB%D0%B8%2C%20%D0%B3%D0%BE%D0%B2%D0%BE%D1%80%D1%8F%20%D0%B8%D0%BD%D0%B0%D1%87%D0%B5%2C%20%D1%84%D0%B0%D0%B9%D0%BB%D1%8B%20%D0%BA%D1%83%D0%BA%D0%B8%D1%81%20(cookies)%20%D1%81%D0%BB%D1%83%D0%B6%D0%B0%D1%82%2C%20%D0%BF%D0%BE%D0%BC%D0%B8%D0%BC%D0%BE%20%D0%BF%D1%80%D0%BE%D1%87%D0%B5%D0%B3%D0%BE%2C%20%D1%87%D1%82%D0%BE%D0%B1%D1%8B%20%D1%81%D0%B4%D0%B5%D0%BB%D0%B0%D1%82%D1%8C%20%D0%B8%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B0%20%D0%B1%D0%BE%D0%BB%D0%B5%D0%B5%20%D1%83%D0%B4%D0%BE%D0%B1%D0%BD%D1%8B%D0%BC%2C%20%D1%82%D0%B0%D0%BA%D0%B8%D0%BC%20%D0%BE%D0%B1%D1%80%D0%B0%D0%B7%D0%BE%D0%BC%2C%20%D0%BD%D0%B0%D0%BF%D1%80%D0%B8%D0%BC%D0%B5%D1%80%2C%20%D1%87%D1%82%D0%BE%D0%B1%D1%8B%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%20%D0%BD%D0%B5%20%D0%B4%D0%BE%D0%BB%D0%B6%D0%B5%D0%BD%20%D0%B1%D1%8B%D0%BB%20%D0%BF%D0%BE%D0%B2%D1%82%D0%BE%D1%80%D1%8F%D1%82%D1%8C%20%D0%BF%D1%80%D0%BE%D1%86%D0%B5%D1%81%D1%81%20%D0%B2%D1%85%D0%BE%D0%B4%D0%B0%20%D0%B2%20%D1%81%D0%B8%D1%81%D1%82%D0%B5%D0%BC%D1%83%20%D0%BF%D1%80%D0%B8%20%D1%81%D0%BB%D0%B5%D0%B4%D1%83%D1%8E%D1%89%D0%B5%D0%BC%20%D0%B2%D0%B8%D0%B7%D0%B8%D1%82%D0%B5.%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%B8%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D1%83%D0%B5%D1%82%20%D0%BA%D0%B0%D0%BA%20%D0%BF%D0%BE%D1%81%D1%82%D0%BE%D1%8F%D0%BD%D0%BD%D1%8B%D0%B5%2C%20%D1%82%D0%B0%D0%BA%20%D0%B8%20%D1%81%D0%B5%D1%81%D1%81%D0%B8%D0%BE%D0%BD%D0%BD%D1%8B%D0%B5%20%D0%BA%D1%83%D0%BA%D0%B8.%20%D0%9F%D0%BE%D1%81%D1%82%D0%BE%D1%8F%D0%BD%D0%BD%D1%8B%D0%B5%20%D0%BA%D1%83%D0%BA%D0%B8%20%D0%BE%D1%81%D1%82%D0%B0%D1%8E%D1%82%D1%81%D1%8F%20%D0%BD%D0%B0%20%D0%BA%D0%BE%D0%BC%D0%BF%D1%8C%D1%8E%D1%82%D0%B5%D1%80%D0%B5%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F%20%D0%B2%20%D1%82%D0%B5%D1%87%D0%B5%D0%BD%D0%B8%D0%B5%20%D0%B1%D0%BE%D0%BB%D0%B5%D0%B5%20%D0%B4%D0%BB%D0%B8%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D0%BE%D0%B3%D0%BE%20%D0%BF%D0%B5%D1%80%D0%B8%D0%BE%D0%B4%D0%B0%20%D0%B2%D1%80%D0%B5%D0%BC%D0%B5%D0%BD%D0%B8%2C%20%D0%B0%20%D1%81%D0%B5%D1%81%D1%81%D0%B8%D0%BE%D0%BD%D0%BD%D1%8B%D0%B5%20%D0%BA%D1%83%D0%BA%D0%B8%20%D0%B0%D0%B2%D1%82%D0%BE%D0%BC%D0%B0%D1%82%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%20%D1%83%D0%B4%D0%B0%D0%BB%D1%8F%D1%8E%D1%82%D1%81%D1%8F%20%D0%BF%D1%80%D0%B8%20%D0%B7%D0%B0%D0%BA%D1%80%D1%8B%D1%82%D0%B8%D0%B8%20%D0%BE%D0%BA%D0%BD%D0%B0%20%D0%B1%D1%80%D0%B0%D1%83%D0%B7%D0%B5%D1%80%D0%B0.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%BC%D0%BE%D0%B6%D0%B5%D1%82%20%D0%BF%D0%BE%D0%B7%D0%B2%D0%BE%D0%BB%D1%8F%D1%82%D1%8C%20%D1%82%D1%80%D0%B5%D1%82%D1%8C%D0%B8%D0%BC%20%D1%81%D1%82%D0%BE%D1%80%D0%BE%D0%BD%D0%B0%D0%BC%2C%20%D1%82%D0%B0%D0%BA%D0%B8%D0%BC%20%D0%BA%D0%B0%D0%BA%20%D0%BF%D0%BE%D1%81%D1%82%D0%B0%D0%B2%D1%89%D0%B8%D0%BA%D0%B8%20%D1%80%D0%B5%D0%BA%D0%BB%D0%B0%D0%BC%D0%BD%D1%8B%D1%85%20%D0%B8%2F%D0%B8%D0%BB%D0%B8%20%D0%B0%D0%BD%D0%B0%D0%BB%D0%B8%D1%82%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D1%85%20%D1%83%D1%81%D0%BB%D1%83%D0%B3%2C%20%D1%81%D0%BE%D0%B1%D0%B8%D1%80%D0%B0%D1%82%D1%8C%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8E%2C%20%D0%B8%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D1%83%D1%8F%20%D1%8D%D1%82%D0%B8%20%D1%82%D0%B8%D0%BF%D1%8B%20%D1%82%D0%B5%D1%85%D0%BD%D0%BE%D0%BB%D0%BE%D0%B3%D0%B8%D0%B9%20%D0%BD%D0%B5%D0%BF%D0%BE%D1%81%D1%80%D0%B5%D0%B4%D1%81%D1%82%D0%B2%D0%B5%D0%BD%D0%BD%D0%BE%20%D0%BD%D0%B0%20%D0%B2%D0%B5%D0%B1-%D1%81%D1%82%D1%80%D0%B0%D0%BD%D0%B8%D1%86%D0%B5%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B0%20%D0%B8%D0%BB%D0%B8%20%D0%BC%D0%BE%D0%B1%D0%B8%D0%BB%D1%8C%D0%BD%D0%BE%D0%B3%D0%BE%20%D0%BF%D1%80%D0%B8%D0%BB%D0%BE%D0%B6%D0%B5%D0%BD%D0%B8%D1%8F.%20%D0%94%D0%B0%D0%BD%D0%BD%D1%8B%D0%B5%2C%20%D0%BA%D0%BE%D1%82%D0%BE%D1%80%D1%8B%D0%B5%20%D0%BE%D0%BD%D0%B8%20%D1%81%D0%BE%D0%B1%D0%B8%D1%80%D0%B0%D1%8E%D1%82%20%D0%BF%D0%BE%D0%B4%D0%BB%D0%B5%D0%B6%D0%B0%D1%82%20%D0%BE%D1%85%D1%80%D0%B0%D0%BD%D0%B5%20%D1%81%D0%BE%D0%B3%D0%BB%D0%B0%D1%81%D0%BD%D0%BE%20%D0%B4%D0%B5%D0%B9%D1%81%D1%82%D0%B2%D1%83%D1%8E%D1%89%D0%B8%D0%BC%20%D0%BF%D0%BE%D0%BB%D0%B8%D1%82%D0%B8%D0%BA%D0%B0%D0%BC%20%D0%BA%D0%BE%D0%BD%D1%84%D0%B8%D0%B4%D0%B5%D0%BD%D1%86%D0%B8%D0%B0%D0%BB%D1%8C%D0%BD%D0%BE%D1%81%D1%82%D0%B8%20%D1%8D%D1%82%D0%B8%D1%85%20%D1%82%D1%80%D0%B5%D1%82%D1%8C%D0%B8%D1%85%20%D1%81%D1%82%D0%BE%D1%80%D0%BE%D0%BD.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%98%D0%A1%D0%9F%D0%9E%D0%9B%D0%AC%D0%97%D0%9E%D0%92%D0%90%D0%9D%D0%98%D0%95%20%D0%9F%D0%95%D0%A0%D0%A1%D0%9E%D0%9D%D0%90%D0%9B%D0%AC%D0%9D%D0%AB%D0%A5%20%D0%94%D0%90%D0%9D%D0%9D%D0%AB%D0%A5%3C%2Fp%3E%0A%0A%3Cp%3E%D0%94%D0%BB%D1%8F%20%D0%BE%D0%BA%D0%B0%D0%B7%D0%B0%D0%BD%D0%B8%D1%8F%20%D1%81%D0%B2%D0%BE%D0%B8%D1%85%20%D1%83%D1%81%D0%BB%D1%83%D0%B3%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%BC%D0%BE%D0%B6%D0%B5%D1%82%20%D0%B8%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D1%8C%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8E%2C%20%D0%BA%D0%BE%D1%82%D0%BE%D1%80%D1%83%D1%8E%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D1%8F%20%D1%81%D0%BE%D0%B1%D0%B8%D1%80%D0%B0%D0%B5%D1%82%20%D0%B8%20%D1%80%D0%B0%D0%B7%D0%BC%D0%B5%D1%89%D0%B0%D0%B5%D1%82%20%D0%B4%D0%BB%D1%8F%20%D1%81%D0%BB%D0%B5%D0%B4%D1%83%D1%8E%D1%89%D0%B8%D1%85%20%D1%86%D0%B5%D0%BB%D0%B5%D0%B9%3A%3C%2Fp%3E%0A%0A%3Cp%3E%26nbsp%3B%3C%2Fp%3E%0A%0A%3Cp%3E%D0%BE%D0%B1%D0%B5%D1%81%D0%BF%D0%B5%D1%87%D0%B5%D0%BD%D0%B8%D0%B5%20%D0%BE%D0%B1%D1%81%D0%BB%D1%83%D0%B6%D0%B8%D0%B2%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%BA%D0%BB%D0%B8%D0%B5%D0%BD%D1%82%D0%BE%D0%B2%2C%20%D0%B2%20%D1%82%D0%BE%D0%BC%20%D1%87%D0%B8%D1%81%D0%BB%D0%B5%20%D0%B4%D0%BB%D1%8F%20%D1%81%D0%BE%D0%B7%D0%B4%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%B8%20%D1%83%D0%BF%D1%80%D0%B0%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F%20%D1%83%D1%87%D0%B5%D1%82%D0%BD%D1%8B%D0%BC%D0%B8%20%D0%B7%D0%B0%D0%BF%D0%B8%D1%81%D1%8F%D0%BC%D0%B8%20%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D0%B5%D0%B9%2C%20%D1%80%D0%B5%D1%88%D0%B5%D0%BD%D0%B8%D1%8F%20%D1%82%D0%B5%D1%85%D0%BD%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D1%85%20%D1%82%D1%80%D1%83%D0%B4%D0%BD%D0%BE%D1%81%D1%82%D0%B5%D0%B9%20%D0%B8%20%D0%B4%D0%BE%D1%81%D1%82%D1%83%D0%BF%D0%B0%20%D0%BA%20%D1%80%D0%B0%D0%B7%D0%BB%D0%B8%D1%87%D0%BD%D1%8B%D0%BC%20%D1%84%D1%83%D0%BD%D0%BA%D1%86%D0%B8%D1%8F%D0%BC%3B%3C%2Fp%3E%0A%0A%3Cp%3E%D0%B0%D0%B4%D0%B0%D0%BF%D1%82%D0%B0%D1%86%D0%B8%D1%8F%20%D0%BF%D1%80%D0%B5%D0%B4%D0%BB%D0%BE%D0%B6%D0%B5%D0%BD%D0%B8%D0%B9%20%D0%B8%20%D0%BE%D0%BF%D1%8B%D1%82%D0%B0%2C%20%D0%B2%20%D1%82%D0%BE%D0%BC%20%D1%87%D0%B8%D1%81%D0%BB%D0%B5%20%D1%80%D0%B5%D0%BA%D0%BB%D0%B0%D0%BC%D1%8B%20%D0%BD%D0%B0%20%D1%81%D0%B2%D0%BE%D0%B8%D1%85%20%D1%81%D0%B5%D1%80%D0%B2%D0%B8%D1%81%D0%B0%D1%85%20%D0%B8%D0%BB%D0%B8%20%D1%81%D0%B5%D1%80%D0%B2%D0%B8%D1%81%D0%B0%D1%85%20%D1%82%D1%80%D0%B5%D1%82%D1%8C%D0%B8%D1%85%20%D0%BB%D0%B8%D1%86%3B%3C%2Fp%3E%0A%0A%3Cp%3E%D0%BA%D0%BE%D0%BD%D1%82%D1%80%D0%BE%D0%BB%D1%8C%20%D0%BE%D0%B1%D1%89%D0%B5%D0%B9%20%D0%B8%20%D0%B8%D0%BD%D0%B4%D0%B8%D0%B2%D0%B8%D0%B4%D1%83%D0%B0%D0%BB%D1%8C%D0%BD%D0%BE%D0%B9%20%D0%B0%D0%BA%D1%82%D0%B8%D0%B2%D0%BD%D0%BE%D1%81%D1%82%D0%B8%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D0%B5%D0%B9%2C%20%D1%82%D0%B0%D0%BA%D0%BE%D0%B9%20%D0%BA%D0%B0%D0%BA%20%D0%BF%D0%BE%D0%B8%D1%81%D0%BA%20%D0%BF%D0%BE%20%D0%BA%D0%BB%D1%8E%D1%87%D0%B5%D0%B2%D1%8B%D0%BC%20%D1%81%D0%BB%D0%BE%D0%B2%D0%B0%D0%BC%2C%20%D0%B0%D0%BA%D1%82%D0%B8%D0%B2%D0%BD%D0%BE%D1%81%D1%82%D0%B8%20%D0%BF%D0%BE%20%D0%BF%D1%83%D0%B1%D0%BB%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D1%8F%D0%BC%20%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B9%20%D0%B8%20%D0%B7%D0%B0%D0%BA%D0%BB%D1%8E%D1%87%D0%B5%D0%BD%D0%B8%D0%B9%20%D1%81%D0%B4%D0%B5%D0%BB%D0%BE%D0%BA%2C%20%D0%B0%20%D1%82%D0%B0%D0%BA%D0%B6%D0%B5%20%D0%B4%D0%BB%D1%8F%20%D1%83%D0%BF%D1%80%D0%B0%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F%20%D1%82%D1%80%D0%B0%D1%84%D0%B8%D0%BA%D0%BE%D0%BC%20%D0%BD%D0%B0%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B5%3B%3C%2Fp%3E%0A%0A%3Cp%3E%D1%81%D0%B2%D1%8F%D0%B7%D1%8C%20%D1%81%20%D0%BD%D0%B0%D1%88%D0%B8%D0%BC%D0%B8%20%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F%D0%BC%D0%B8%2C%20%D0%B2%20%D1%82%D0%BE%D0%BC%20%D1%87%D0%B8%D1%81%D0%BB%D0%B5%20%D0%BF%D0%BE%20%D0%B2%D0%BE%D0%BF%D1%80%D0%BE%D1%81%D0%B0%D0%BC%20%D1%81%D0%B5%D1%80%D0%B2%D0%B8%D1%81%D0%B0%2C%20%D0%BE%D0%B1%D1%81%D0%BB%D1%83%D0%B6%D0%B8%D0%B2%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%BA%D0%BB%D0%B8%D0%B5%D0%BD%D1%82%D0%BE%D0%B2%20%D0%B8%D0%BB%D0%B8%20%D1%80%D0%B0%D0%B7%D1%80%D0%B5%D1%88%D0%B5%D0%BD%D0%BD%D1%8B%D1%85%20%D0%BC%D0%B0%D1%80%D0%BA%D0%B5%D1%82%D0%B8%D0%BD%D0%B3%D0%BE%D0%B2%D1%8B%D1%85%20%D0%BA%D0%BE%D0%BC%D0%BC%D1%83%D0%BD%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D0%B9%20%D1%87%D0%B5%D1%80%D0%B5%D0%B7%20%D0%BB%D1%8E%D0%B1%D1%8B%D0%B5%20%D0%B4%D0%BE%D1%81%D1%82%D1%83%D0%BF%D0%BD%D1%8B%D0%B5%20%D0%BA%D0%B0%D0%BD%D0%B0%D0%BB%D1%8B%20%D1%81%D0%B2%D1%8F%D0%B7%D0%B8%3B%3C%2Fp%3E%0A%0A%3Cp%3E%D0%BF%D1%80%D0%BE%D0%B2%D0%B5%D0%B4%D0%B5%D0%BD%D0%B8%D0%B5%20%D0%BD%D0%B0%D1%83%D1%87%D0%BD%D0%BE-%D0%B8%D1%81%D1%81%D0%BB%D0%B5%D0%B4%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%D1%81%D0%BA%D0%BE%D0%B9%20%D0%B8%20%D0%B0%D0%BD%D0%B0%D0%BB%D0%B8%D1%82%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%BE%D0%B9%20%D0%B0%D0%BA%D1%82%D0%B8%D0%B2%D0%BD%D0%BE%D1%81%D1%82%D0%B8%20%D1%81%20%D1%86%D0%B5%D0%BB%D1%8C%D1%8E%20%D1%83%D0%BB%D1%83%D1%87%D1%88%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%BD%D0%B0%D1%88%D0%B5%D0%B3%D0%BE%20%D1%81%D0%B5%D1%80%D0%B2%D0%B8%D1%81%D0%B0%3B%20%D0%B8%3C%2Fp%3E%0A%0A%3Cp%3E%D0%BE%D0%B1%D0%B5%D1%81%D0%BF%D0%B5%D1%87%D0%B5%D0%BD%D0%B8%D0%B5%20%D1%81%D0%BE%D0%B1%D0%BB%D1%8E%D0%B4%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%D1%81%D0%BA%D0%BE%D0%B3%D0%BE%20%D1%81%D0%BE%D0%B3%D0%BB%D0%B0%D1%88%D0%B5%D0%BD%D0%B8%D1%8F%20%D1%81%D0%B5%D1%80%D0%B2%D0%B8%D1%81%D0%BE%D0%B2%20%7Burl%7D%2C%20%D0%B2%D0%BA%D0%BB%D1%8E%D1%87%D0%B0%D1%8F%20%D0%B1%D0%BE%D1%80%D1%8C%D0%B1%D1%83%20%D1%81%20%D0%BC%D0%BE%D1%88%D0%B5%D0%BD%D0%BD%D0%B8%D1%87%D0%B5%D1%81%D1%82%D0%B2%D0%BE%D0%BC%20%D0%B8%20%D0%BE%D1%81%D0%BA%D0%BE%D1%80%D0%B1%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F%D0%BC%D0%B8.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%BC%D0%BE%D0%B6%D0%B5%D1%82%20%D1%81%D0%BE%D1%85%D1%80%D0%B0%D0%BD%D1%8F%D1%82%D1%8C%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8E%2C%20%D0%BA%D0%BE%D1%82%D0%BE%D1%80%D1%83%D1%8E%20%D0%BE%D0%BD%D0%B0%20%D1%81%D0%BE%D0%B1%D0%B8%D1%80%D0%B0%D0%B5%D1%82%20%D0%B8%20%D0%BF%D0%BE%D0%BB%D1%83%D1%87%D0%B0%D0%B5%D1%82%20%D0%BD%D0%B0%20%D1%81%D0%B2%D0%BE%D0%B5%D0%BC%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B5%20%D1%82%D0%B0%D0%BA%20%D0%B4%D0%BE%D0%BB%D0%B3%D0%BE%2C%20%D0%BA%D0%B0%D0%BA%20%D1%82%D0%BE%20%D1%82%D1%80%D0%B5%D0%B1%D1%83%D0%B5%D1%82%D1%81%D1%8F%20%D0%B4%D0%BB%D1%8F%20%D0%B2%D1%8B%D0%BF%D0%BE%D0%BB%D0%BD%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%B2%D1%8B%D1%88%D0%B5%D1%83%D0%BA%D0%B0%D0%B7%D0%B0%D0%BD%D0%BD%D1%8B%D1%85%20%D0%B4%D0%B5%D0%BB%D0%BE%D0%B2%D1%8B%D1%85%20%D1%86%D0%B5%D0%BB%D0%B5%D0%B9.%3C%2Fp%3E%0A%0A%3Cp%3E%26nbsp%3B%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9E%D0%91%D0%9C%D0%95%D0%9D%20%D0%98%D0%9D%D0%A4%D0%9E%D0%A0%D0%9C%D0%90%D0%A6%D0%98%D0%95%D0%99%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%BC%D0%BE%D0%B6%D0%B5%D1%82%20%D0%B4%D0%B5%D0%BB%D0%B8%D1%82%D1%8C%D1%81%D1%8F%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D0%B5%D0%B9%2C%20%D0%BA%D0%BE%D1%82%D0%BE%D1%80%D1%83%D1%8E%20%D0%BE%D0%BD%D0%B0%20%D1%81%D0%BE%D0%B1%D0%B8%D1%80%D0%B0%D0%B5%D1%82%2C%20%D1%81%20%D0%B0%D1%84%D1%84%D0%B8%D0%BB%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%BD%D1%8B%D0%BC%D0%B8%20%D0%BB%D0%B8%D1%86%D0%B0%D0%BC%D0%B8%20(%D0%BA%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D0%B8%2C%20%D0%B4%D0%B5%D0%B9%D1%81%D1%82%D0%B2%D1%83%D1%8E%D1%89%D0%B8%D0%B5%20%D0%BD%D0%B0%20%D0%BE%D1%81%D0%BD%D0%BE%D0%B2%D0%B5%20%D0%BE%D0%B1%D1%89%D0%B5%D0%B9%20%D1%81%D0%BE%D0%B1%D1%81%D1%82%D0%B2%D0%B5%D0%BD%D0%BD%D0%BE%D1%81%D1%82%D0%B8%20%D0%B8%D0%BB%D0%B8%20%D0%BF%D0%BE%D0%B4%20%D0%BE%D0%B1%D1%89%D0%B8%D0%BC%20%D0%BA%D0%BE%D0%BD%D1%82%D1%80%D0%BE%D0%BB%D0%B5%D0%BC%20Naspers%20Group)%2C%20%D1%80%D0%B0%D1%81%D0%BF%D0%BE%D0%BB%D0%BE%D0%B6%D0%B5%D0%BD%D0%BD%D0%BE%D0%B9%20%D0%B2%20%D0%BA%D0%B0%D0%BA%D0%BE%D0%B9-%D0%BB%D0%B8%D0%B1%D0%BE%20%D1%82%D1%80%D0%B5%D1%82%D1%8C%D0%B5%D0%B9%20%D1%81%D1%82%D1%80%D0%B0%D0%BD%D0%B5.%20%D0%AD%D1%82%D0%B8%20%D0%BA%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D0%B8%20%D0%BC%D0%BE%D0%B3%D1%83%D1%82%20%D1%82%D0%BE%D0%BB%D1%8C%D0%BA%D0%BE%20%D0%BE%D0%B1%D1%80%D0%B0%D0%B1%D0%B0%D1%82%D1%8B%D0%B2%D0%B0%D1%82%D1%8C%20%D0%B8%20%D0%B8%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D1%8C%20%D0%BF%D0%BE%D0%BB%D1%83%D1%87%D0%B5%D0%BD%D0%BD%D1%8B%D0%B5%20%D0%BF%D0%B5%D1%80%D1%81%D0%BE%D0%BD%D0%B0%D0%BB%D1%8C%D0%BD%D1%8B%D0%B5%20%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D0%B5%20%D0%B2%20%D1%86%D0%B5%D0%BB%D1%8F%D1%85%2C%20%D1%83%D0%BA%D0%B0%D0%B7%D0%B0%D0%BD%D0%BD%D1%8B%D1%85%20%D0%B2%20%D0%BF.4%20%D1%8D%D1%82%D0%BE%D0%B9%20%D0%9F%D0%BE%D0%BB%D0%B8%D1%82%D0%B8%D0%BA%D0%B8%20%D0%9A%D0%BE%D0%BD%D1%84%D0%B8%D0%B4%D0%B5%D0%BD%D1%86%D0%B8%D0%B0%D0%BB%D1%8C%D0%BD%D0%BE%D1%81%D1%82%D0%B8.%20%D0%9F%D1%80%D0%B8%20%D1%8D%D1%82%D0%BE%D0%BC%20%D0%BF%D0%B5%D1%80%D0%B5%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D0%B5%20%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D0%B5%20%D0%BE%D1%81%D1%82%D0%B0%D1%8E%D1%82%D1%81%D1%8F%20%D0%BF%D1%80%D0%B5%D0%B4%D0%BC%D0%B5%D1%82%D0%BE%D0%BC%20%D1%8D%D1%82%D0%BE%D0%B9%20%D0%9F%D0%BE%D0%BB%D0%B8%D1%82%D0%B8%D0%BA%D0%B8%20%D0%9A%D0%BE%D0%BD%D1%84%D0%B8%D0%B4%D0%B5%D0%BD%D1%86%D0%B8%D0%B0%D0%BB%D1%8C%D0%BD%D0%BE%D1%81%D1%82%D0%B8.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%BD%D0%B5%20%D0%BF%D1%80%D0%B5%D0%B4%D0%BE%D1%81%D1%82%D0%B0%D0%B2%D0%BB%D1%8F%D0%B5%D1%82%20%D0%BB%D0%B8%D1%87%D0%BD%D1%83%D1%8E%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8E%20%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D0%B5%D0%B9%20%D0%BD%D0%B5%20%D0%B0%D1%84%D1%84%D0%B8%D0%BB%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%BD%D1%8B%D0%BC%20%D0%BB%D0%B8%D1%86%D0%B0%D0%BC%2C%20%D0%B7%D0%B0%20%D0%B8%D1%81%D0%BA%D0%BB%D1%8E%D1%87%D0%B5%D0%BD%D0%B8%D0%B5%D0%BC%20%D1%81%D0%BB%D1%83%D1%87%D0%B0%D0%B5%D0%B2%2C%20%D0%BA%D0%BE%D0%B3%D0%B4%D0%B0%20%D0%BD%D0%B0%20%D1%82%D0%BE%20%D0%B5%D1%81%D1%82%D1%8C%20%D1%81%D0%BE%D0%BE%D1%82%D0%B2%D0%B5%D1%82%D1%81%D1%82%D0%B2%D1%83%D1%8E%D1%89%D0%B5%D0%B5%20%D1%80%D0%B0%D0%B7%D1%80%D0%B5%D1%88%D0%B5%D0%BD%D0%B8%D0%B5%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D0%B5%D0%B9%2C%20%D0%B8%D0%BB%D0%B8%20%D0%BF%D1%80%D0%B8%20%D1%81%D0%BB%D0%B5%D0%B4%D1%83%D1%8E%D1%89%D0%B8%D1%85%20%D0%BE%D0%B1%D1%81%D1%82%D0%BE%D1%8F%D1%82%D0%B5%D0%BB%D1%8C%D1%81%D1%82%D0%B2%D0%B0%D1%85%3A%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%BC%D0%BE%D0%B6%D0%B5%D1%82%20%D0%B8%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D1%8C%20%D1%81%D1%82%D0%BE%D1%80%D0%BE%D0%BD%D0%BD%D0%B8%D1%85%20%D0%BF%D0%BE%D1%81%D1%82%D0%B0%D0%B2%D1%89%D0%B8%D0%BA%D0%BE%D0%B2%20%D1%83%D1%81%D0%BB%D1%83%D0%B3%20%D0%B4%D0%BB%D1%8F%20%D0%BF%D1%80%D0%B5%D0%B4%D0%BE%D1%81%D1%82%D0%B0%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%BD%D0%B5%D0%BA%D0%BE%D1%82%D0%BE%D1%80%D1%8B%D1%85%20%D1%81%D0%BE%D1%81%D1%82%D0%B0%D0%B2%D0%BB%D1%8F%D1%8E%D1%89%D0%B8%D1%85%20%D1%81%D0%B2%D0%BE%D0%B8%D1%85%20%D1%83%D1%81%D0%BB%D1%83%D0%B3%2C%20%D0%B2%20%D1%82%D0%B0%D0%BA%D0%B8%D1%85%20%D1%81%D0%BB%D1%83%D1%87%D0%B0%D1%8F%D1%85%20%D0%BF%D0%BE%D1%81%D1%82%D0%B0%D0%B2%D1%89%D0%B8%D0%BA%D0%B8%20%D0%BD%D0%B5%20%D0%B8%D0%BC%D0%B5%D1%8E%D1%82%20%D0%BF%D0%BE%D0%BB%D0%BD%D0%BE%D0%BC%D0%BE%D1%87%D0%B8%D0%B9%20%D0%B8%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D1%8C%20%D0%BF%D0%BE%D0%BB%D1%83%D1%87%D0%B5%D0%BD%D0%BD%D1%8B%D0%B5%20%D0%BF%D1%80%D0%B8%20%D0%BF%D0%BE%D0%BC%D0%BE%D1%89%D0%B8%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B0%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D0%B8%20%D0%BF%D0%B5%D1%80%D1%81%D0%BE%D0%BD%D0%B0%D0%BB%D1%8C%D0%BD%D1%8B%D0%B5%20%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D0%B5%2C%20%D0%B0%20%D1%81%D0%B0%D0%BC%D0%B8%20%D0%BF%D0%B5%D1%80%D1%81%D0%BE%D0%BD%D0%B0%D0%BB%D1%8C%D0%BD%D1%8B%D0%B5%20%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D0%B5%20%D1%8F%D0%B2%D0%BB%D1%8F%D1%8E%D1%82%D1%81%D1%8F%20%D0%BF%D1%80%D0%B5%D0%B4%D0%BC%D0%B5%D1%82%D0%BE%D0%BC%20%D1%8D%D1%82%D0%BE%D0%B9%20%D0%9F%D0%BE%D0%BB%D0%B8%D1%82%D0%B8%D0%BA%D0%B8%20%D0%9A%D0%BE%D0%BD%D1%84%D0%B8%D0%B4%D0%B5%D0%BD%D1%86%D0%B8%D0%B0%D0%BB%D1%8C%D0%BD%D0%BE%D1%81%D1%82%D0%B8.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%BE%D1%81%D1%82%D0%B0%D0%B2%D0%BB%D1%8F%D0%B5%D1%82%20%D0%B7%D0%B0%20%D1%81%D0%BE%D0%B1%D0%BE%D0%B9%20%D0%BF%D1%80%D0%B0%D0%B2%D0%BE%20%D0%B2%20%D1%81%D0%BE%D0%BE%D1%82%D0%B2%D0%B5%D1%82%D1%81%D1%82%D0%B2%D0%B8%D0%B8%20%D1%81%20%D1%82%D1%80%D0%B5%D0%B1%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D1%8F%D0%BC%D0%B8%20%D0%B7%D0%B0%D0%BA%D0%BE%D0%BD%D0%BE%D0%B4%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%D1%81%D1%82%D0%B2%D0%B0%20%D0%BE%D0%B1%D0%BC%D0%B5%D0%BD%D0%B8%D0%B2%D0%B0%D1%82%D1%8C%D1%81%D1%8F%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D0%B5%D0%B9%20%D1%81%20%D1%87%D0%B0%D1%81%D1%82%D0%BD%D1%8B%D0%BC%D0%B8%20%D0%BB%D0%B8%D1%86%D0%B0%D0%BC%D0%B8%20%D0%B8%20%D0%B3%D0%BE%D1%81%D1%83%D0%B4%D0%B0%D1%80%D1%81%D1%82%D0%B2%D0%B5%D0%BD%D0%BD%D1%8B%D0%BC%D0%B8%20%D0%BE%D1%80%D0%B3%D0%B0%D0%BD%D0%B0%D0%BC%D0%B8%20%D0%B2%20%D1%81%D0%BB%D0%B5%D0%B4%D1%83%D1%8E%D1%89%D0%B8%D1%85%20%D1%86%D0%B5%D0%BB%D1%8F%D1%85%3A%3C%2Fp%3E%0A%0A%3Cp%3E%D0%B1%D0%BE%D1%80%D1%8C%D0%B1%D1%8B%20%D1%81%20%D0%BC%D0%BE%D1%88%D0%B5%D0%BD%D0%BD%D0%B8%D1%87%D0%B5%D1%81%D1%82%D0%B2%D0%BE%D0%BC%20%D0%B8%20%D0%B7%D0%BB%D0%BE%D1%83%D0%BF%D0%BE%D1%82%D1%80%D0%B5%D0%B1%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F%D0%BC%D0%B8%20%D0%BD%D0%B0%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B5%3B%3C%2Fp%3E%0A%0A%3Cp%3E%D1%80%D0%B0%D1%81%D1%81%D0%BB%D0%B5%D0%B4%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%BF%D1%80%D0%B5%D0%B4%D0%BF%D0%BE%D0%BB%D0%B0%D0%B3%D0%B0%D0%B5%D0%BC%D1%8B%D1%85%20%D0%BD%D0%B0%D1%80%D1%83%D1%88%D0%B5%D0%BD%D0%B8%D0%B9%20%D0%B7%D0%B0%D0%BA%D0%BE%D0%BD%D0%B0%20%D0%B8%D0%BB%D0%B8%20%D0%B1%D0%BE%D1%80%D1%8C%D0%B1%D1%8B%20%D1%81%20%D0%BB%D1%8E%D0%B1%D1%8B%D0%BC%D0%B8%20%D0%B4%D1%80%D1%83%D0%B3%D0%B8%D0%BC%D0%B8%20%D0%BF%D1%80%D0%B5%D0%B4%D0%BF%D0%BE%D0%BB%D0%B0%D0%B3%D0%B0%D0%B5%D0%BC%D1%8B%D0%BC%D0%B8%20%D0%BD%D0%B0%D1%80%D1%83%D1%88%D0%B5%D0%BD%D0%B8%D1%8F%D0%BC%D0%B8%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%D1%81%D0%BA%D0%BE%D0%B3%D0%BE%20%D1%81%D0%BE%D0%B3%D0%BB%D0%B0%D1%88%D0%B5%D0%BD%D0%B8%D1%8F%20%D1%81%D0%B5%D1%80%D0%B2%D0%B8%D1%81%D0%BE%D0%B2%20%7Burl%7D%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F%D0%BC%D0%B8.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%BC%D0%BE%D0%B6%D0%B5%D1%82%20%D0%BF%D1%80%D0%B5%D0%B4%D0%BE%D1%81%D1%82%D0%B0%D0%B2%D0%BB%D1%8F%D1%82%D1%8C%20%D0%BF%D0%B5%D1%80%D1%81%D0%BE%D0%BD%D0%B0%D0%BB%D1%8C%D0%BD%D1%8B%D0%B5%20%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D0%B5%20%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D0%B5%D0%B9%20%D0%BD%D0%B0%20%D0%B7%D0%B0%D0%BF%D1%80%D0%BE%D1%81%D1%8B%20%D0%BA%D0%BE%D0%BC%D0%BF%D0%B5%D1%82%D0%B5%D0%BD%D1%82%D0%BD%D1%8B%D1%85%20%D0%BE%D1%80%D0%B3%D0%B0%D0%BD%D0%BE%D0%B2%2C%20%D0%BE%D1%84%D0%BE%D1%80%D0%BC%D0%BB%D0%B5%D0%BD%D0%BD%D1%8B%D1%85%20%D0%B2%20%D1%81%D0%BE%D0%BE%D1%82%D0%B2%D0%B5%D1%82%D1%81%D1%82%D0%B2%D0%B8%D0%B8%20%D1%81%20%D1%82%D1%80%D0%B5%D0%B1%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D1%8F%D0%BC%D0%B8%20%D0%B7%D0%B0%D0%BA%D0%BE%D0%BD%D0%BE%D0%B4%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%D1%81%D1%82%D0%B2%D0%B0%20%D0%A0%D0%B5%D1%81%D0%BF%D1%83%D0%B1%D0%BB%D0%B8%D0%BA%D0%B8%20%D0%A3%D0%B7%D0%B1%D0%B5%D0%BA%D0%B8%D1%81%D1%82%D0%B0%D0%BD.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%92%20%D1%81%D0%BE%D0%BE%D1%82%D0%B2%D0%B5%D1%82%D1%81%D1%82%D0%B2%D0%B8%D0%B8%20%D1%81%20%D0%9F%D0%BE%D0%BB%D0%B8%D1%82%D0%B8%D0%BA%D0%BE%D0%B9%20%D0%BA%D0%BE%D0%BD%D1%84%D0%B8%D0%B4%D0%B5%D0%BD%D1%86%D0%B8%D0%B0%D0%BB%D1%8C%D0%BD%D0%BE%D1%81%D1%82%D0%B8%2C%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%BE%D0%B1%D1%8F%D0%B7%D1%83%D0%B5%D1%82%D1%81%D1%8F%20%D0%BD%D0%B5%20%D0%BF%D0%B5%D1%80%D0%B5%D0%B4%D0%B0%D0%B2%D0%B0%D1%82%D1%8C%20%D0%B2%20%D0%B0%D1%80%D0%B5%D0%BD%D0%B4%D1%83%20%D0%B8%D0%BB%D0%B8%20%D0%BF%D1%80%D0%BE%D0%B4%D0%B0%D0%B2%D0%B0%D1%82%D1%8C%20%D0%BB%D1%8E%D0%B1%D1%8B%D0%B5%20%D0%BF%D0%B5%D1%80%D1%81%D0%BE%D0%BD%D0%B0%D0%BB%D1%8C%D0%BD%D1%8B%D0%B5%20%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D0%B5%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F.%20%D0%92%20%D1%81%D0%BB%D1%83%D1%87%D0%B0%D0%B5%20%D0%B5%D1%81%D0%BB%D0%B8%20%D0%B1%D0%B8%D0%B7%D0%BD%D0%B5%D1%81%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D0%B8%20%D0%B8%D0%BB%D0%B8%20%D1%87%D0%B0%D1%81%D1%82%D1%8C%20%D1%8D%D1%82%D0%BE%D0%B3%D0%BE%20%D0%B1%D0%B8%D0%B7%D0%BD%D0%B5%D1%81%D0%B0%20%D0%B1%D1%83%D0%B4%D1%83%D1%82%20%D0%BF%D1%80%D0%BE%D0%B4%D0%B0%D0%BD%D1%8B%20%D0%B8%D0%BB%D0%B8%20%D1%80%D0%B5%D0%BE%D1%80%D0%B3%D0%B0%D0%BD%D0%B8%D0%B7%D0%BE%D0%B2%D0%B0%D0%BD%D1%8B%2C%20%D0%B8%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%BF%D0%B5%D1%80%D0%B5%D0%B4%D0%B0%D0%B5%D1%82%20%D0%B2%D1%81%D0%B5%2C%20%D0%B8%D0%BB%D0%B8%20%D0%BF%D1%80%D0%B0%D0%BA%D1%82%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%20%D0%B2%D1%81%D0%B5%20%D1%81%D0%B2%D0%BE%D0%B8%20%D0%B0%D0%BA%D1%82%D0%B8%D0%B2%D1%8B%20%D0%BD%D0%BE%D0%B2%D0%BE%D0%BC%D1%83%20%D0%B2%D0%BB%D0%B0%D0%B4%D0%B5%D0%BB%D1%8C%D1%86%D1%83%2C%20%D1%82%D0%BE%20%D0%BF%D0%B5%D1%80%D1%81%D0%BE%D0%BD%D0%B0%D0%BB%D1%8C%D0%BD%D1%8B%D0%B5%20%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D0%B5%20%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D0%B5%D0%B9%20%D0%BC%D0%BE%D0%B3%D1%83%D1%82%20%D0%B1%D1%8B%D1%82%D1%8C%20%D0%BF%D0%B5%D1%80%D0%B5%D0%B4%D0%B0%D0%BD%D1%8B%20%D0%BF%D0%BE%D0%BA%D1%83%D0%BF%D0%B0%D1%82%D0%B5%D0%BB%D1%8E%2C%20%D1%87%D1%82%D0%BE%D0%B1%D1%8B%20%D0%BE%D0%B1%D0%B5%D1%81%D0%BF%D0%B5%D1%87%D0%B8%D1%82%D1%8C%20%D0%BD%D0%B5%D0%BF%D1%80%D0%B5%D1%80%D1%8B%D0%B2%D0%BD%D0%BE%D1%81%D1%82%D1%8C%20%D0%BE%D0%B1%D1%81%D0%BB%D1%83%D0%B6%D0%B8%D0%B2%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B0%2C%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%BC%D0%BE%D0%B6%D0%B5%D1%82%20%D0%BF%D0%B5%D1%80%D0%B5%D0%B4%D0%B0%D0%B2%D0%B0%D1%82%D1%8C%20%D0%BE%D0%BF%D1%80%D0%B5%D0%B4%D0%B5%D0%BB%D0%B5%D0%BD%D0%BD%D1%83%D1%8E%20%D0%BE%D0%B1%D0%B5%D0%B7%D0%BB%D0%B8%D1%87%D0%B5%D0%BD%D0%BD%D1%83%D1%8E%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8E%20(%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D0%B5%2C%20%D0%BA%D0%BE%D1%82%D0%BE%D1%80%D1%8B%D0%B5%20%D0%BD%D0%B5%20%D0%BF%D0%BE%D0%B7%D0%B2%D0%BE%D0%BB%D1%8F%D1%8E%D1%82%20%D0%B8%D0%B4%D0%B5%D0%BD%D1%82%D0%B8%D1%84%D0%B8%D1%86%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D1%82%D1%8C%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D0%B5%D0%B9%20%D0%BF%D0%BE%20%D0%BE%D1%82%D0%B4%D0%B5%D0%BB%D1%8C%D0%BD%D0%BE%D1%81%D1%82%D0%B8)%20%D1%81%D1%82%D0%BE%D1%80%D0%BE%D0%BD%D0%BD%D0%B8%D0%BC%20%D0%BF%D0%BE%D1%81%D1%82%D0%B0%D0%B2%D1%89%D0%B8%D0%BA%D0%B0%D0%BC%20%D1%83%D1%81%D0%BB%D1%83%D0%B3%2C%20%D0%B4%D0%BE%D0%B2%D0%B5%D1%80%D0%B5%D0%BD%D0%BD%D1%8B%D0%BC%20%D0%BF%D0%B0%D1%80%D1%82%D0%BD%D0%B5%D1%80%D0%B0%D0%BC%20%D0%B8%D0%BB%D0%B8%20%D0%B0%D0%B2%D1%82%D0%BE%D1%80%D0%B8%D0%B7%D0%BE%D0%B2%D0%B0%D0%BD%D0%BD%D1%8B%D0%BC%20%D0%B8%D1%81%D1%81%D0%BB%D0%B5%D0%B4%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F%D0%BC%20%D0%B2%20%D1%86%D0%B5%D0%BB%D1%8F%D1%85%20%D0%BB%D1%83%D1%87%D1%88%D0%B5%D0%B3%D0%BE%20%D0%BF%D0%BE%D0%BD%D0%B8%D0%BC%D0%B0%D0%BD%D0%B8%D1%8F%2C%20%D0%BA%D0%B0%D0%BA%D0%B0%D1%8F%20%D1%80%D0%B5%D0%BA%D0%BB%D0%B0%D0%BC%D0%B0%20%D0%B8%D0%BB%D0%B8%20%D1%83%D1%81%D0%BB%D1%83%D0%B3%D0%B8%20%D0%BC%D0%BE%D0%B3%D1%83%D1%82%20%D0%B7%D0%B0%D0%B8%D0%BD%D1%82%D0%B5%D1%80%D0%B5%D1%81%D0%BE%D0%B2%D0%B0%D1%82%D1%8C%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D0%B5%D0%B9%2C%20%D1%83%D0%BB%D1%83%D1%87%D1%88%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%BE%D0%B1%D1%89%D0%B5%D0%B3%D0%BE%20%D0%BA%D0%B0%D1%87%D0%B5%D1%81%D1%82%D0%B2%D0%B0%20%D0%B8%20%D1%8D%D1%84%D1%84%D0%B5%D0%BA%D1%82%D0%B8%D0%B2%D0%BD%D0%BE%D1%81%D1%82%D0%B8%20%D1%83%D1%81%D0%BB%D1%83%D0%B3%20%D0%BD%D0%B0%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B5%20%D0%B8%D0%BB%D0%B8%20%D1%81%D0%B5%D1%80%D0%B2%D0%B8%D1%81%D0%B0%2C%20%D0%B8%D0%BB%D0%B8%20%D0%B4%D0%BB%D1%8F%20%D0%BE%D0%B1%D0%B5%D1%81%D0%BF%D0%B5%D1%87%D0%B5%D0%BD%D0%B8%D1%8F%20%D1%81%D0%B2%D0%BE%D0%B5%D0%B3%D0%BE%20%D0%B2%D0%BA%D0%BB%D0%B0%D0%B4%D0%B0%20%D0%B2%20%D0%BD%D0%B0%D1%83%D1%87%D0%BD%D1%8B%D0%B5%20%D0%B8%D1%81%D1%81%D0%BB%D0%B5%D0%B4%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D1%8F%2C%20%D0%BA%D0%BE%D1%82%D0%BE%D1%80%D1%8B%D0%B5%2C%20%D0%BF%D0%BE%20%D0%BC%D0%BD%D0%B5%D0%BD%D0%B8%D1%8E%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D0%B8%2C%20%D0%BC%D0%BE%D0%B3%D1%83%D1%82%20%D0%BF%D1%80%D0%B8%D0%BD%D0%BE%D1%81%D0%B8%D1%82%D1%8C%20%D0%B1%D0%BE%D0%BB%D1%8C%D1%88%D0%B8%D0%B5%20%D1%81%D0%BE%D1%86%D0%B8%D0%B0%D0%BB%D1%8C%D0%BD%D1%8B%D0%B5%20%D0%B1%D0%BB%D0%B0%D0%B3%D0%B0.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%92%20%D1%81%D0%BB%D1%83%D1%87%D0%B0%D1%8F%D1%85%20%D0%BF%D0%B5%D1%80%D0%B5%D0%B4%D0%B0%D1%87%D0%B8%20%D0%BF%D0%B5%D1%80%D1%81%D0%BE%D0%BD%D0%B0%D0%BB%D1%8C%D0%BD%D1%8B%D1%85%20%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D1%85%2C%20%D0%BF%D1%80%D0%B5%D0%B4%D1%83%D1%81%D0%BC%D0%BE%D1%82%D1%80%D0%B5%D0%BD%D0%BD%D1%8B%D1%85%20%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D0%BC%20%D1%80%D0%B0%D0%B7%D0%B4%D0%B5%D0%BB%D0%BE%D0%BC%205%20%D0%9F%D0%BE%D0%BB%D0%B8%D1%82%D0%B8%D0%BA%D0%B8%20%D0%BA%D0%BE%D0%BD%D1%84%D0%B8%D0%B4%D0%B5%D0%BD%D1%86%D0%B8%D0%B0%D0%BB%D1%8C%D0%BD%D0%BE%D1%81%D1%82%D0%B8%2C%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F%20%D0%BE%20%D0%BF%D0%B5%D1%80%D0%B5%D0%B4%D0%B0%D1%87%D0%B5%20%D0%B5%D0%B3%D0%BE%20%D0%BF%D0%B5%D1%80%D1%81%D0%BE%D0%BD%D0%B0%D0%BB%D1%8C%D0%BD%D1%8B%D1%85%20%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D1%85%20%D0%BE%D1%81%D1%82%D0%B0%D0%B5%D1%82%D1%81%D1%8F%20%D0%BD%D0%B0%20%D1%83%D1%81%D0%BC%D0%BE%D1%82%D1%80%D0%B5%D0%BD%D0%B8%D0%B5%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D0%B8.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9F%D0%9E%D0%9B%D0%AC%D0%97%D0%9E%D0%92%D0%90%D0%A2%D0%95%D0%9B%D0%AC%D0%A1%D0%9A%D0%98%D0%99%20%D0%9A%D0%9E%D0%9D%D0%A2%D0%A0%D0%9E%D0%9B%D0%AC%3C%2Fp%3E%0A%0A%3Cp%3E%D0%94%D0%BE%D1%81%D1%82%D1%83%D0%BF%2C%20%D0%98%D1%81%D0%BF%D1%80%D0%B0%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5%20%D0%B8%20%D0%A3%D0%B4%D0%B0%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5%3A%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D0%B8%2C%20%D0%BA%D0%BE%D1%82%D0%BE%D1%80%D1%8B%D0%B5%20%D1%81%D0%BE%D0%B7%D0%B4%D0%B0%D0%BB%D0%B8%20%D1%83%D1%87%D1%91%D1%82%D0%BD%D1%83%D1%8E%20%D0%B7%D0%B0%D0%BF%D0%B8%D1%81%D1%8C%2C%20%D0%B8%D0%BB%D0%B8%20%D1%80%D0%B0%D0%B7%D0%BC%D0%B5%D1%81%D1%82%D0%B8%D0%BB%D0%B8%20%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%BD%D0%B0%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B5%2C%20%D0%BC%D0%BE%D0%B3%D1%83%D1%82%20%D0%BF%D0%BE%D0%BB%D1%83%D1%87%D0%B0%D1%82%D1%8C%20%D0%B4%D0%BE%D1%81%D1%82%D1%83%D0%BF%2C%20%D0%B8%D1%81%D0%BF%D1%80%D0%B0%D0%B2%D0%BB%D1%8F%D1%82%D1%8C%20%D0%B8%D0%BB%D0%B8%20%D1%83%D0%B4%D0%B0%D0%BB%D1%8F%D1%82%D1%8C%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8E%2C%20%D0%BA%D0%BE%D1%82%D0%BE%D1%80%D1%83%D1%8E%20%D0%BE%D0%BD%D0%B8%20%D0%BF%D1%80%D0%B5%D0%B4%D0%BE%D1%81%D1%82%D0%B0%D0%B2%D0%BB%D1%8F%D1%8E%D1%82.%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%20%D0%BD%D0%B5%D1%81%D0%B5%D1%82%20%D0%BE%D1%82%D0%B2%D0%B5%D1%82%D1%81%D1%82%D0%B2%D0%B5%D0%BD%D0%BD%D0%BE%D1%81%D1%82%D1%8C%20%D0%B7%D0%B0%20%D1%82%D0%BE%D1%87%D0%BD%D0%BE%D1%81%D1%82%D1%8C%20%D0%BF%D1%80%D0%B5%D0%B4%D0%BE%D1%81%D1%82%D0%B0%D0%B2%D0%BB%D1%8F%D0%B5%D0%BC%D1%8B%D1%85%20%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D1%85%2C%20%D0%B8%D0%BB%D0%B8%20%D1%81%D0%BE%D0%BE%D0%B1%D1%89%D0%B5%D0%BD%D0%B8%D0%B9%20%D0%BD%D0%B0%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B5.%20%D0%95%D1%81%D0%BB%D0%B8%20%D1%83%D1%87%D0%B5%D1%82%D0%BD%D0%B0%D1%8F%20%D0%B7%D0%B0%D0%BF%D0%B8%D1%81%D1%8C%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F%20%D0%B1%D1%8B%D0%BB%D0%B0%20%D1%81%D0%BE%D0%B7%D0%B4%D0%B0%D0%BD%D0%B0%20%D1%87%D0%B5%D1%80%D0%B5%D0%B7%20%D0%BF%D1%80%D0%BE%D0%B2%D0%B0%D0%B9%D0%B4%D0%B5%D1%80%D0%B0%20%D0%B8%D0%B4%D0%B5%D0%BD%D1%82%D0%B8%D1%84%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D0%B8%20(%D0%BD%D0%B0%D0%BF%D1%80%D0%B8%D0%BC%D0%B5%D1%80%2C%20Facebook%20Connect%2C%20%D0%92%D0%BA%D0%BE%D0%BD%D1%82%D0%B0%D0%BA%D1%82%D0%B5)%2C%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%20%D0%BC%D0%BE%D0%B6%D0%B5%D1%82%20%D1%82%D0%B0%D0%BA%D0%B6%D0%B5%20%D0%BE%D1%82%D0%BA%D0%BB%D1%8E%D1%87%D0%B8%D1%82%D1%8C%2C%20%D0%B8%D0%BB%D0%B8%20%D0%B8%D0%B7%D0%BC%D0%B5%D0%BD%D0%B8%D1%82%D1%8C%20%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D0%B5%20%D1%83%D1%87%D0%B5%D1%82%D0%BD%D0%BE%D0%B9%20%D0%B7%D0%B0%D0%BF%D0%B8%D1%81%D0%B8%20%D1%87%D0%B5%D1%80%D0%B5%D0%B7%20%D0%BD%D0%B0%D1%81%D1%82%D1%80%D0%BE%D0%B9%D0%BA%D0%B8%20%D0%BF%D1%80%D0%BE%D0%B2%D0%B0%D0%B9%D0%B4%D0%B5%D1%80%D0%B0%20%D0%B8%D0%B4%D0%B5%D0%BD%D1%82%D0%B8%D1%84%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D0%B8%20(%D0%BD%D0%B0%D0%BF%D1%80%D0%B8%D0%BC%D0%B5%D1%80%2C%20%D0%BD%D0%B0%20facebook.com%2C%20vk.com).%20%D0%A0%D0%B0%D0%B7%D0%BC%D0%B5%D1%89%D0%B5%D0%BD%D0%BD%D0%B0%D1%8F%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8F%20%D0%BC%D0%BE%D0%B6%D0%B5%D1%82%20%D0%B1%D1%8B%D1%82%D1%8C%20%D0%B8%D0%B7%D0%BC%D0%B5%D0%BD%D0%B5%D0%BD%D0%B0%20%D0%B8%D0%BB%D0%B8%20%D1%83%D0%B4%D0%B0%D0%BB%D0%B5%D0%BD%D0%B0%20%D0%B2%20%D0%BB%D0%B8%D1%87%D0%BD%D0%BE%D0%BC%20%D0%BA%D0%B0%D0%B1%D0%B8%D0%BD%D0%B5%D1%82%D0%B5%20%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F%20%26quot%3B%D0%9C%D0%BE%D0%B9%20%D0%BF%D1%80%D0%BE%D1%84%D0%B8%D0%BB%D1%8C%26quot%3B%20%D0%BD%D0%B0%20%D0%B2%D0%B5%D0%B1-%D1%81%D1%82%D1%80%D0%B0%D0%BD%D0%B8%D1%86%D0%B5%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B0%2C%20%D0%B8%D0%BB%D0%B8%20%D0%B2%20%D0%BF%D1%80%D0%B8%D0%BB%D0%BE%D0%B6%D0%B5%D0%BD%D0%B8%D0%B8.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%92%D1%8B%D0%B1%D0%BE%D1%80%20%D0%B2%D0%BD%D0%B5%D1%88%D0%BD%D0%B8%D1%85%20%D0%BB%D0%B8%D1%86%3A%20%D0%BD%D0%B5%D0%BA%D0%BE%D1%82%D0%BE%D1%80%D1%8B%D0%B5%20%D0%B2%D0%BD%D0%B5%D1%88%D0%BD%D0%B8%D0%B5%20%D1%81%D1%83%D0%B1%D1%8A%D0%B5%D0%BA%D1%82%D1%8B%2C%20%D0%B4%D0%B5%D0%B9%D1%81%D1%82%D0%B2%D1%83%D1%8E%D1%89%D0%B8%D0%B5%20%D0%BD%D0%B0%20%D1%81%D0%B0%D0%B9%D1%82%D0%B5%2C%20%D0%BD%D0%B0%D0%BF%D1%80%D0%B8%D0%BC%D0%B5%D1%80%2C%20Google%20Adwords%20%D0%BF%D0%BE%D0%B7%D0%B2%D0%BE%D0%BB%D1%8F%D1%8E%D1%82%20%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F%D0%BC%20%D0%BE%D1%82%D0%BE%D0%B7%D0%B2%D0%B0%D1%82%D1%8C%20%D1%81%D0%B2%D0%BE%D0%B5%20%D1%81%D0%BE%D0%B3%D0%BB%D0%B0%D1%81%D0%B8%D0%B5%20%D0%BD%D0%B0%20%D1%81%D0%B1%D0%BE%D1%80%20%D0%B8%20%D0%B8%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5%20%D1%81%D0%B2%D0%BE%D0%B8%D1%85%20%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D1%85%20%D0%B4%D0%BB%D1%8F%20%D1%80%D0%B5%D0%BA%D0%BB%D0%B0%D0%BC%D1%8B%20%D0%BD%D0%B0%20%D0%BE%D1%81%D0%BD%D0%BE%D0%B2%D0%B5%20%D0%B0%D0%BA%D1%82%D0%B8%D0%B2%D0%BD%D0%BE%D1%81%D1%82%D0%B8%20%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D0%B5%D0%B9.%20%D0%94%D0%BB%D1%8F%20%D0%BF%D0%BE%D0%BB%D1%83%D1%87%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%B1%D0%BE%D0%BB%D0%B5%D0%B5%20%D0%BF%D0%BE%D0%B4%D1%80%D0%BE%D0%B1%D0%BD%D0%BE%D0%B9%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D0%B8%20%D0%B8%20%D0%B2%D0%BE%D0%B7%D0%BC%D0%BE%D0%B6%D0%BD%D0%BE%D1%81%D1%82%D0%B8%20%D0%B2%D1%8B%D0%B1%D0%BE%D1%80%D0%B0%2C%20%D0%BF%D0%BE%D0%B6%D0%B0%D0%BB%D1%83%D0%B9%D1%81%D1%82%D0%B0%2C%20%D0%BF%D0%BE%D1%81%D0%B5%D1%82%D0%B8%D1%82%D0%B5%20http%3A%2F%2Fwww.networkadvertising.org.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9A%D1%83%D0%BA%D0%B8%D1%81%20(Cookies)%3A%20%D0%91%D0%BE%D0%BB%D1%8C%D1%88%D0%B8%D0%BD%D1%81%D1%82%D0%B2%D0%BE%20%D0%BE%D1%81%D0%BD%D0%BE%D0%B2%D0%BD%D1%8B%D1%85%20%D0%BA%D0%BE%D0%BC%D0%BF%D1%8C%D1%8E%D1%82%D0%B5%D1%80%D0%BD%D1%8B%D1%85%20(%D0%B4%D0%B5%D1%81%D0%BA%D1%82%D0%BE%D0%BF%D0%BD%D1%8B%D1%85)%20%D0%B8%20%D0%BC%D0%BE%D0%B1%D0%B8%D0%BB%D1%8C%D0%BD%D1%8B%D1%85%20%D0%B2%D0%B5%D0%B1-%D0%B1%D1%80%D0%B0%D1%83%D0%B7%D0%B5%D1%80%D0%BE%D0%B2%20(%D0%BD%D0%B0%D0%BF%D1%80%D0%B8%D0%BC%D0%B5%D1%80%2C%20Safari%2C%20Firefox%2C%20Internet%20Explorer%2C%20Chrome%2C%20Opera)%20%D0%BE%D0%B1%D0%B5%D1%81%D0%BF%D0%B5%D1%87%D0%B8%D0%B2%D0%B0%D1%8E%D1%82%20%D1%8D%D0%BB%D0%B5%D0%BC%D0%B5%D0%BD%D1%82%D1%8B%20%D1%83%D0%BF%D1%80%D0%B0%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F%2C%20%D0%BA%D0%BE%D1%82%D0%BE%D1%80%D1%8B%D0%B5%20%D0%BF%D0%BE%D0%B7%D0%B2%D0%BE%D0%BB%D1%8F%D1%8E%D1%82%20%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8E%20%D0%BE%D0%B3%D1%80%D0%B0%D0%BD%D0%B8%D1%87%D0%B8%D1%82%D1%8C%20%D0%B8%D0%BB%D0%B8%20%D0%B7%D0%B0%D0%B1%D0%BB%D0%BE%D0%BA%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D1%82%D1%8C%20%D1%83%D1%81%D1%82%D0%B0%D0%BD%D0%BE%D0%B2%D0%BA%D1%83%20%D0%9A%D1%83%D0%BA%D0%B8%D1%81%20(Cookies)%20%D0%BD%D0%B0%20%D0%B2%D0%B0%D1%88%D0%B8%D1%85%20%D1%81%D0%B8%D1%81%D1%82%D0%B5%D0%BC%D0%B0%D1%85.%20%D0%9E%D0%B1%D1%80%D0%B0%D1%82%D0%B8%D1%82%D0%B5%20%D0%B2%D0%BD%D0%B8%D0%BC%D0%B0%D0%BD%D0%B8%D0%B5%2C%20%D1%87%D1%82%D0%BE%20%D0%BE%D1%82%D0%BA%D0%BB%D1%8E%D1%87%D0%B5%D0%BD%D0%B8%D0%B5%20%D0%9A%D1%83%D0%BA%D0%B8%D1%81%20(Cookies)%20%D0%B2%20%D0%BE%D1%82%D0%BD%D0%BE%D1%88%D0%B5%D0%BD%D0%B8%D0%B8%20%D0%B4%D0%BE%D0%BC%D0%B5%D0%BD%D0%BE%D0%B2%20%D0%BF%D0%B5%D1%80%D0%B2%D0%BE%D0%B9%20%D0%BA%D0%B0%D1%82%D0%B5%D0%B3%D0%BE%D1%80%D0%B8%D0%B8%20(%D0%BF%D0%BE%D1%81%D0%B5%D1%89%D0%B0%D0%B5%D0%BC%D1%8B%D1%85%20%D1%81%D0%B0%D0%B9%D1%82%D0%BE%D0%B2)%20%D0%B8%20%D0%B4%D1%80%D1%83%D0%B3%D0%B8%D1%85%20%D0%B4%D0%BE%D0%BC%D0%B5%D0%BD%D0%BE%D0%B2%20(%D1%81%D0%B0%D0%B9%D1%82%D0%BE%D0%B2%2C%20%D1%81%D0%B2%D1%8F%D0%B7%D0%B0%D0%BD%D0%BD%D1%8B%D1%85%20%D1%81%20%D0%BF%D0%BE%D1%81%D0%B5%D1%89%D0%B0%D0%B5%D0%BC%D1%8B%D0%BC%D0%B8)%20%D0%BC%D0%BE%D0%B6%D0%B5%D1%82%20%D0%BF%D1%80%D0%B8%D0%B2%D0%B5%D1%81%D1%82%D0%B8%20%D0%B2%20%D0%BD%D0%B5%D0%BA%D0%BE%D1%82%D0%BE%D1%80%D1%8B%D1%85%20%D1%81%D0%BB%D1%83%D1%87%D0%B0%D1%8F%D1%85%20%D0%BA%20%D0%BE%D0%B3%D1%80%D0%B0%D0%BD%D0%B8%D1%87%D0%B5%D0%BD%D0%BD%D0%BE%D0%B9%20%D1%84%D1%83%D0%BD%D0%BA%D1%86%D0%B8%D0%BE%D0%BD%D0%B0%D0%BB%D1%8C%D0%BD%D0%BE%D1%81%D1%82%D0%B8%20%D1%8D%D1%82%D0%B8%D1%85%20%D0%B2%D0%B5%D0%B1-%D1%81%D0%B0%D0%B9%D1%82%D0%BE%D0%B2.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%91%D0%95%D0%97%D0%9E%D0%9F%D0%90%D0%A1%D0%9D%D0%9E%D0%A1%D0%A2%D0%AC%3C%2Fp%3E%0A%0A%3Cp%3E%D0%92%D1%81%D1%8F%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8F%2C%20%D0%BA%D0%BE%D1%82%D0%BE%D1%80%D1%83%D1%8E%20%D0%BC%D1%8B%20%D1%81%D0%BE%D0%B1%D0%B8%D1%80%D0%B0%D0%B5%D0%BC%20%D0%B2%20%D1%80%D0%B0%D0%B7%D1%83%D0%BC%D0%BD%D1%8B%D1%85%20%D0%BF%D1%80%D0%B5%D0%B4%D0%B5%D0%BB%D0%B0%D1%85%20%D0%B7%D0%B0%D1%89%D0%B8%D1%89%D0%B5%D0%BD%D0%B0%20%D1%82%D0%B5%D1%85%D0%BD%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D0%BC%D0%B8%20%D1%81%D1%80%D0%B5%D0%B4%D1%81%D1%82%D0%B2%D0%B0%D0%BC%D0%B8%20%D0%B8%20%D0%BF%D1%80%D0%BE%D1%86%D0%B5%D0%B4%D1%83%D1%80%D0%B0%D0%BC%D0%B8%20%D0%BE%D0%B1%D0%B5%D1%81%D0%BF%D0%B5%D1%87%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%B1%D0%B5%D0%B7%D0%BE%D0%BF%D0%B0%D1%81%D0%BD%D0%BE%D1%81%D1%82%D0%B8%20%D0%B2%20%D1%86%D0%B5%D0%BB%D1%8F%D1%85%20%D0%BF%D1%80%D0%B5%D0%B4%D0%BE%D1%82%D0%B2%D1%80%D0%B0%D1%89%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%BD%D0%B5%D1%81%D0%B0%D0%BD%D0%BA%D1%86%D0%B8%D0%BE%D0%BD%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%BD%D0%BE%D0%B3%D0%BE%20%D0%B4%D0%BE%D1%81%D1%82%D1%83%D0%BF%D0%B0%20%D0%B8%D0%BB%D0%B8%20%D0%B8%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5%20%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D1%85.%20%D0%90%D1%84%D1%84%D0%B8%D0%BB%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%BD%D1%8B%D0%B5%20%D1%81%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D0%B5%D0%B9%20%D0%BB%D0%B8%D1%86%D0%B0%2C%20%D0%BD%D0%B0%D0%B4%D1%91%D0%B6%D0%BD%D1%8B%D0%B5%20%D0%BF%D0%B0%D1%80%D1%82%D0%BD%D0%B5%D1%80%D1%8B%20%D0%B8%20%D1%81%D1%82%D0%BE%D1%80%D0%BE%D0%BD%D0%BD%D0%B8%D0%B5%20%D0%BF%D0%BE%D1%81%D1%82%D0%B0%D0%B2%D1%89%D0%B8%D0%BA%D0%B8%20%D1%83%D1%81%D0%BB%D1%83%D0%B3%20%D0%BE%D0%B1%D1%8F%D0%B7%D1%83%D1%8E%D1%82%D1%81%D1%8F%20%D0%B8%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D1%8C%20%D0%BF%D0%BE%D0%BB%D1%83%D1%87%D0%B5%D0%BD%D0%BD%D1%83%D1%8E%20%D0%BE%D1%82%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D0%B8%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8E%20%D0%B2%20%D1%81%D0%BE%D0%BE%D1%82%D0%B2%D0%B5%D1%82%D1%81%D1%82%D0%B2%D0%B8%D0%B8%20%D1%81%20%D0%BD%D0%B0%D1%88%D0%B8%D0%BC%D0%B8%20%D1%82%D1%80%D0%B5%D0%B1%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D1%8F%D0%BC%D0%B8%20%D0%BA%20%D0%B1%D0%B5%D0%B7%D0%BE%D0%BF%D0%B0%D1%81%D0%BD%D0%BE%D1%81%D1%82%D0%B8%20%D0%B8%20%D1%8D%D1%82%D0%BE%D0%B9%20%D0%9F%D0%BE%D0%BB%D0%B8%D1%82%D0%B8%D0%BA%D0%BE%D0%B9%20%D0%9A%D0%BE%D0%BD%D1%84%D0%B8%D0%B4%D0%B5%D0%BD%D1%86%D0%B8%D0%B0%D0%BB%D1%8C%D0%BD%D0%BE%D1%81%D1%82%D0%B8.%3C%2Fp%3E%0A%0A%3Cp%3E%26nbsp%3B%3C%2Fp%3E%0A%0A%3Cp%3E%D0%92%D0%9D%D0%95%D0%A1%D0%95%D0%9D%D0%98%D0%95%20%D0%98%D0%97%D0%9C%D0%95%D0%9D%D0%95%D0%9D%D0%98%D0%99%20%D0%92%20%D0%AD%D0%A2%D0%A3%20%D0%9F%D0%9E%D0%9B%D0%98%D0%A2%D0%98%D0%9A%D0%A3%3C%2Fp%3E%0A%0A%3Cp%3E%D0%AD%D1%82%D0%B0%20%D0%BF%D0%BE%D0%BB%D0%B8%D1%82%D0%B8%D0%BA%D0%B0%20%D0%BA%D0%BE%D0%BD%D1%84%D0%B8%D0%B4%D0%B5%D0%BD%D1%86%D0%B8%D0%B0%D0%BB%D1%8C%D0%BD%D0%BE%D1%81%D1%82%D0%B8%20%D0%B1%D1%8B%D0%BB%D0%B0%20%D0%BF%D0%BE%D1%81%D0%BB%D0%B5%D0%B4%D0%BD%D0%B8%D0%B9%20%D1%80%D0%B0%D0%B7%20%D0%BE%D0%B1%D0%BD%D0%BE%D0%B2%D0%BB%D0%B5%D0%BD%D0%B0%2005.06.2016.%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%BC%D0%BE%D0%B6%D0%B5%D1%82%20%D0%BE%D0%B1%D0%BD%D0%BE%D0%B2%D0%BB%D1%8F%D1%82%D1%8C%20%D1%8D%D1%82%D1%83%20%D0%BF%D0%BE%D0%BB%D0%B8%D1%82%D0%B8%D0%BA%D1%83%20%D0%BA%D0%BE%D0%BD%D1%84%D0%B8%D0%B4%D0%B5%D0%BD%D1%86%D0%B8%D0%B0%D0%BB%D1%8C%D0%BD%D0%BE%D1%81%D1%82%D0%B8%20%D0%B2%D1%80%D0%B5%D0%BC%D1%8F%20%D0%BE%D1%82%20%D0%B2%D1%80%D0%B5%D0%BC%D0%B5%D0%BD%D0%B8%2C%20%D0%BD%D0%BE%D0%B2%D0%B0%D1%8F%20%D1%80%D0%B5%D0%B4%D0%B0%D0%BA%D1%86%D0%B8%D1%8F%20%D0%9F%D0%BE%D0%BB%D0%B8%D1%82%D0%B8%D0%BA%D0%B8%20%D0%BA%D0%BE%D0%BD%D1%84%D0%B8%D0%B4%D0%B5%D0%BD%D1%86%D0%B8%D0%B0%D0%BB%D1%8C%D0%BD%D0%BE%D1%81%D1%82%D0%B8%20%D0%B2%D1%81%D1%82%D1%83%D0%BF%D0%B0%D0%B5%D1%82%20%D0%B2%20%D1%81%D0%B8%D0%BB%D1%83%20%D1%81%20%D0%BC%D0%BE%D0%BC%D0%B5%D0%BD%D1%82%D0%B0%20%D0%B5%D0%B5%20%D1%80%D0%B0%D0%B7%D0%BC%D0%B5%D1%89%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%B2%20%D1%81%D0%B5%D1%82%D0%B8%20%D0%98%D0%BD%D1%82%D0%B5%D1%80%D0%BD%D0%B5%D1%82%20%D0%BF%D0%BE%20%D1%83%D0%BA%D0%B0%D0%B7%D0%B0%D0%BD%D0%BD%D0%BE%D0%BC%D1%83%20%D0%B2%20%D0%B4%D0%B0%D0%BD%D0%BD%D0%BE%D0%BC%20%D0%BF%D1%83%D0%BD%D0%BA%D1%82%D0%B5%20%D0%B0%D0%B4%D1%80%D0%B5%D1%81%D1%83%2C%20%D0%B5%D1%81%D0%BB%D0%B8%20%D0%B8%D0%BD%D0%BE%D0%B5%20%D0%BD%D0%B5%20%D0%BF%D1%80%D0%B5%D0%B4%D1%83%D1%81%D0%BC%D0%BE%D1%82%D1%80%D0%B5%D0%BD%D0%BE%20%D0%BD%D0%BE%D0%B2%D0%BE%D0%B9%20%D1%80%D0%B5%D0%B4%D0%B0%D0%BA%D1%86%D0%B8%D0%B5%D0%B9%20%D0%9F%D0%BE%D0%BB%D0%B8%D1%82%D0%B8%D0%BA%D0%B8%20%D0%BA%D0%BE%D0%BD%D1%84%D0%B8%D0%B4%D0%B5%D0%BD%D1%86%D0%B8%D0%B0%D0%BB%D1%8C%D0%BD%D0%BE%D1%81%D1%82%D0%B8.%20%D0%94%D0%B5%D0%B9%D1%81%D1%82%D0%B2%D1%83%D1%8E%D1%89%D0%B0%D1%8F%20%D1%80%D0%B5%D0%B4%D0%B0%D0%BA%D1%86%D0%B8%D1%8F%20%D0%9F%D0%BE%D0%BB%D0%B8%D1%82%D0%B8%D0%BA%D0%B8%20%D0%BA%D0%BE%D0%BD%D1%84%D0%B8%D0%B4%D0%B5%D0%BD%D1%86%D0%B8%D0%B0%D0%BB%D1%8C%D0%BD%D0%BE%D1%81%D1%82%D0%B8%20%D0%B2%D1%81%D0%B5%D0%B3%D0%B4%D0%B0%20%D0%BD%D0%B0%D1%85%D0%BE%D0%B4%D0%B8%D1%82%D1%81%D1%8F%20%D0%BD%D0%B0%20%D1%81%D1%82%D1%80%D0%B0%D0%BD%D0%B8%D1%86%D0%B5%20%D0%BF%D0%BE%20%D0%B0%D0%B4%D1%80%D0%B5%D1%81%D1%83%20%7Burl%7Dterms%2F%23r12%2F.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%92%20%D1%81%D0%BB%D1%83%D1%87%D0%B0%D0%B5%20%D0%B5%D1%81%D0%BB%D0%B8%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D0%B5%D0%B9%20%D0%B1%D1%8B%D0%BB%D0%B8%20%D0%B2%D0%BD%D0%B5%D1%81%D0%B5%D0%BD%D1%8B%20%D0%BB%D1%8E%D0%B1%D1%8B%D0%B5%20%D0%B8%D0%B7%D0%BC%D0%B5%D0%BD%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%B2%20%D0%9F%D0%BE%D0%BB%D0%B8%D1%82%D0%B8%D0%BA%D1%83%20%D0%9A%D0%BE%D0%BD%D1%84%D0%B8%D0%B4%D0%B5%D0%BD%D1%86%D0%B8%D0%B0%D0%BB%D1%8C%D0%BD%D0%BE%D1%81%D1%82%D0%B8%2C%20%D1%81%20%D0%BA%D0%BE%D1%82%D0%BE%D1%80%D1%8B%D0%BC%D0%B8%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%20%D0%BD%D0%B5%20%D1%81%D0%BE%D0%B3%D0%BB%D0%B0%D1%81%D0%B5%D0%BD%2C%20%D0%BE%D0%BD%20%D0%BE%D0%B1%D1%8F%D0%B7%D0%B0%D0%BD%20%D0%BF%D1%80%D0%B5%D0%BA%D1%80%D0%B0%D1%82%D0%B8%D1%82%D1%8C%20%D0%B8%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5%20%D1%81%D0%B5%D1%80%D0%B2%D0%B8%D1%81%D0%BE%D0%B2%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B0.%20%D0%A4%D0%B0%D0%BA%D1%82%20%D0%BD%D0%B5%20%D0%BF%D1%80%D0%B5%D0%BA%D1%80%D0%B0%D1%89%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%B8%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B0%20%D1%8F%D0%B2%D0%BB%D1%8F%D0%B5%D1%82%D1%81%D1%8F%20%D0%BF%D0%BE%D0%B4%D1%82%D0%B2%D0%B5%D1%80%D0%B6%D0%B4%D0%B5%D0%BD%D0%B8%D0%B5%D0%BC%20%D1%81%D0%BE%D0%B3%D0%BB%D0%B0%D1%81%D0%B8%D1%8F%20%D0%B8%20%D0%BF%D1%80%D0%B8%D0%BD%D1%8F%D1%82%D0%B8%D1%8F%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D0%B5%D0%BC%20%D1%81%D0%BE%D0%BE%D1%82%D0%B2%D0%B5%D1%82%D1%81%D1%82%D0%B2%D1%83%D1%8E%D1%89%D0%B5%D0%B9%20%D1%80%D0%B5%D0%B4%D0%B0%D0%BA%D1%86%D0%B8%D0%B5%D0%B9%20%D0%9F%D0%BE%D0%BB%D0%B8%D1%82%D0%B8%D0%BA%D0%B8%20%D0%9A%D0%BE%D0%BD%D1%84%D0%B8%D0%B4%D0%B5%D0%BD%D1%86%D0%B8%D0%B0%D0%BB%D1%8C%D0%BD%D0%BE%D1%81%D1%82%D0%B8.%3C%2Fp%3E%0A', '', 1, 0);
INSERT INTO `uni_pages` (`id`, `name`, `alias`, `title`, `text`, `seo_text`, `visible`, `id_position`) VALUES
(7, 'Пользовательское соглашение', 'polzovatelskoe-soglashenie', 'Пользовательское соглашение', '%3Cp%3E%D0%9E%D0%91%D0%A9%D0%98%D0%95%20%D0%9F%D0%9E%D0%9B%D0%9E%D0%96%D0%95%D0%9D%D0%98%D0%AF%3C%2Fp%3E%0A%0A%3Cp%3E%D0%A0%D0%90%D0%97%D0%9C%D0%95%D0%A9%D0%95%D0%9D%D0%98%D0%95%20%D0%9E%D0%91%D0%AA%D0%AF%D0%92%D0%9B%D0%95%D0%9D%D0%98%D0%99%3C%2Fp%3E%0A%0A%3Cp%3E%D0%A3%D0%A1%D0%9B%D0%9E%D0%92%D0%98%D0%AF%20%D0%9E%D0%91%D0%A0%D0%90%D0%91%D0%9E%D0%A2%D0%9A%D0%98%20%D0%9F%D0%95%D0%A0%D0%A1%D0%9E%D0%9D%D0%90%D0%9B%D0%AC%D0%9D%D0%AB%D0%A5%20%D0%94%D0%90%D0%9D%D0%9D%D0%AB%D0%A5%20%D0%9F%D0%9E%D0%9B%D0%AC%D0%97%D0%9E%D0%92%D0%90%D0%A2%D0%95%D0%9B%D0%95%D0%99%20%D0%98%20%D0%A1%D0%9E%D0%93%D0%9B%D0%90%D0%A1%D0%98%D0%95%20%D0%9D%D0%90%20%D0%9D%D0%95%D0%95%3C%2Fp%3E%0A%0A%3Cp%3E%D0%A1%D0%92%D0%95%D0%94%D0%95%D0%9D%D0%98%D0%AF%2C%20%D0%9F%D0%A0%D0%95%D0%94%D0%9E%D0%A1%D0%A2%D0%90%D0%92%D0%9B%D0%AF%D0%95%D0%9C%D0%AB%D0%95%20%D0%9F%D0%9E%D0%9B%D0%AC%D0%97%D0%9E%D0%92%D0%90%D0%A2%D0%95%D0%9B%D0%95%D0%9C%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9F%D0%A0%D0%98%D0%A7%D0%98%D0%9D%D0%AB%20%D0%A3%D0%94%D0%90%D0%9B%D0%95%D0%9D%D0%98%D0%AF%20%D0%9E%D0%91%D0%AA%D0%AF%D0%92%D0%9B%D0%95%D0%9D%D0%98%D0%99%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9F%D0%A0%D0%90%D0%92%D0%90%20%D0%98%20%D0%9E%D0%91%D0%AF%D0%97%D0%90%D0%9D%D0%9D%D0%9E%D0%A1%D0%A2%D0%98%20%D0%A1%D0%A2%D0%9E%D0%A0%D0%9E%D0%9D%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9E%D0%9F%D0%9B%D0%90%D0%A2%D0%90%20%D0%A3%D0%A1%D0%9B%D0%A3%D0%93%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9E%D0%93%D0%A0%D0%90%D0%9D%D0%98%D0%A7%D0%95%D0%9D%D0%98%D0%95%20%D0%9E%D0%A2%D0%92%D0%95%D0%A2%D0%A1%D0%A2%D0%92%D0%95%D0%9D%D0%9D%D0%9E%D0%A1%D0%A2%D0%98%20%D0%9A%D0%9E%D0%9C%D0%9F%D0%90%D0%9D%D0%98%D0%98%3C%2Fp%3E%0A%0A%3Cp%3E%D0%A1%D0%A0%D0%9E%D0%9A%20%D0%94%D0%95%D0%99%D0%A1%D0%A2%D0%92%D0%98%D0%AF%20%D0%A1%D0%9E%D0%93%D0%9B%D0%90%D0%A8%D0%95%D0%9D%D0%98%D0%AF%20%D0%98%20%D0%9F%D0%A0%D0%95%D0%9A%D0%A0%D0%90%D0%A9%D0%95%D0%9D%D0%98%D0%95%20%D0%9E%D0%9A%D0%90%D0%97%D0%90%D0%9D%D0%98%D0%AF%20%D0%A3%D0%A1%D0%9B%D0%A3%D0%93%20%D0%A1%D0%90%D0%99%D0%A2%D0%90%3C%2Fp%3E%0A%0A%3Cp%3E%D0%92%D0%9D%D0%95%D0%A1%D0%95%D0%9D%D0%98%D0%95%20%D0%98%D0%97%D0%9C%D0%95%D0%9D%D0%95%D0%9D%D0%98%D0%99%20%D0%92%20%D0%A1%D0%9E%D0%93%D0%9B%D0%90%D0%A8%D0%95%D0%9D%D0%98%D0%95%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9F%D0%A0%D0%9E%D0%A7%D0%98%D0%95%20%D0%A3%D0%A1%D0%9B%D0%9E%D0%92%D0%98%D0%AF%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9F%D1%80%D0%B8%D0%BB%D0%BE%D0%B6%D0%B5%D0%BD%D0%B8%D1%8F%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9F%D1%80%D0%B8%D0%BB%D0%BE%D0%B6%D0%B5%D0%BD%D0%B8%D0%B5%20%E2%84%961%20-%20%D0%9F%D0%9E%D0%9B%D0%98%D0%A2%D0%98%D0%9A%D0%90%20%D0%9A%D0%9E%D0%9D%D0%A4%D0%98%D0%94%D0%95%D0%9D%D0%A6%D0%98%D0%90%D0%9B%D0%AC%D0%9D%D0%9E%D0%A1%D0%A2%D0%98%3C%2Fp%3E%0A%0A%3Cp%3E1.%20%D0%9E%D0%91%D0%A9%D0%98%D0%95%20%D0%9F%D0%9E%D0%9B%D0%9E%D0%96%D0%95%D0%9D%D0%98%D0%AF%3C%2Fp%3E%0A%0A%3Cp%3EAliBABA%2C%20(%D0%B4%D0%B0%D0%BB%D0%B5%D0%B5%20%D0%98%D1%81%D0%BF%D0%BE%D0%BB%D0%BD%D0%B8%D1%82%D0%B5%D0%BB%D1%8C%20%D0%B8%2F%D0%B8%D0%BB%D0%B8%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D1%8F)%20%D0%BF%D1%83%D0%B1%D0%BB%D0%B8%D0%BA%D1%83%D0%B5%D1%82%20%D0%B4%D0%B0%D0%BD%D0%BD%D0%BE%D0%B5%20%D0%BF%D1%83%D0%B1%D0%BB%D0%B8%D1%87%D0%BD%D0%BE%D0%B5%20%D1%81%D0%BE%D0%B3%D0%BB%D0%B0%D1%88%D0%B5%D0%BD%D0%B8%D0%B5%20(%D0%B4%D0%B0%D0%BB%D0%B5%D0%B5%20%D0%A1%D0%BE%D0%B3%D0%BB%D0%B0%D1%88%D0%B5%D0%BD%D0%B8%D0%B5%20%D0%B8%2F%D0%B8%D0%BB%D0%B8%20%D0%9E%D1%84%D0%B5%D1%80%D1%82%D0%B0)%20%D0%BE%D0%B1%20%D0%BE%D0%BA%D0%B0%D0%B7%D0%B0%D0%BD%D0%B8%D0%B8%20%D1%83%D1%81%D0%BB%D1%83%D0%B3%20%D0%BD%D0%B0%20%D0%B8%D0%BD%D1%82%D0%B5%D1%80%D0%BD%D0%B5%D1%82-%D1%81%D0%B0%D0%B9%D1%82%D0%B0%D1%85%20%D0%98%D1%81%D0%BF%D0%BE%D0%BB%D0%BD%D0%B8%D1%82%D0%B5%D0%BB%D1%8F%20%7Burl%7D%3C%2Fp%3E%0A%0A%3Cp%3E%D0%92%20%D1%81%D0%BE%D0%BE%D1%82%D0%B2%D0%B5%D1%82%D1%81%D1%82%D0%B2%D0%B8%D0%B8%20%D1%81%D0%BE%20%D1%81%D1%82%D0%B0%D1%82%D1%8C%D1%8F%D0%BC%D0%B8%20367-375%20%D0%93%D1%80%D0%B0%D0%B6%D0%B4%D0%B0%D0%BD%D1%81%D0%BA%D0%BE%D0%B3%D0%BE%20%D0%9A%D0%BE%D0%B4%D0%B5%D0%BA%D1%81%D0%B0%20%D0%A0%D0%B5%D1%81%D0%BF%D1%83%D0%B1%D0%BB%D0%B8%D0%BA%D0%B8%20%D0%A3%D0%B7%D0%B1%D0%B5%D0%BA%D0%B8%D1%81%D1%82%D0%B0%D0%BD%20%D0%B4%D0%B0%D0%BD%D0%BD%D0%BE%D0%B5%20%D0%A1%D0%BE%D0%B3%D0%BB%D0%B0%D1%88%D0%B5%D0%BD%D0%B8%D0%B5%20%D1%8F%D0%B2%D0%BB%D1%8F%D0%B5%D1%82%D1%81%D1%8F%20%D0%BF%D1%83%D0%B1%D0%BB%D0%B8%D1%87%D0%BD%D0%BE%D0%B9%20%D0%BE%D1%84%D0%B5%D1%80%D1%82%D0%BE%D0%B9%2C%20%D0%B8%20%D0%B2%20%D1%81%D0%BB%D1%83%D1%87%D0%B0%D0%B5%20%D0%BF%D1%80%D0%B8%D0%BD%D1%8F%D1%82%D0%B8%D1%8F%20(%D0%B0%D0%BA%D1%86%D0%B5%D0%BF%D1%82%D0%B0)%20%D0%B8%D0%B7%D0%BB%D0%BE%D0%B6%D0%B5%D0%BD%D0%BD%D1%8B%D1%85%20%D0%BD%D0%B8%D0%B6%D0%B5%20%D1%83%D1%81%D0%BB%D0%BE%D0%B2%D0%B8%D0%B9%20%D0%BB%D1%8E%D0%B1%D0%BE%D0%B5%20%D0%B4%D0%B5%D0%B5%D1%81%D0%BF%D0%BE%D1%81%D0%BE%D0%B1%D0%BD%D0%BE%D0%B5%20%D1%84%D0%B8%D0%B7%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%BE%D0%B5%20%D0%B8%D0%BB%D0%B8%20%D1%8E%D1%80%D0%B8%D0%B4%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%BE%D0%B5%20%D0%BB%D0%B8%D1%86%D0%BE%20(%D0%B4%D0%B0%D0%BB%D0%B5%D0%B5%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8C)%20%D0%BE%D0%B1%D1%8F%D0%B7%D1%83%D0%B5%D1%82%D1%81%D1%8F%20%D0%B2%D1%8B%D0%BF%D0%BE%D0%BB%D0%BD%D1%8F%D1%82%D1%8C%20%D1%83%D1%81%D0%BB%D0%BE%D0%B2%D0%B8%D1%8F%20%D1%8D%D1%82%D0%BE%D0%B3%D0%BE%20%D0%A1%D0%BE%D0%B3%D0%BB%D0%B0%D1%88%D0%B5%D0%BD%D0%B8%D1%8F.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%92%20%D0%BD%D0%B0%D1%81%D1%82%D0%BE%D1%8F%D1%89%D0%B5%D0%B9%20%D0%BE%D1%84%D0%B5%D1%80%D1%82%D0%B5%2C%20%D0%B5%D1%81%D0%BB%D0%B8%20%D0%BA%D0%BE%D0%BD%D1%82%D0%B5%D0%BA%D1%81%D1%82%20%D0%BD%D0%B5%20%D1%82%D1%80%D0%B5%D0%B1%D1%83%D0%B5%D1%82%20%D0%B8%D0%BD%D0%BE%D0%B3%D0%BE%2C%20%D0%BD%D0%B8%D0%B6%D0%B5%D0%BF%D1%80%D0%B8%D0%B2%D0%B5%D0%B4%D0%B5%D0%BD%D0%BD%D1%8B%D0%B5%20%D1%82%D0%B5%D1%80%D0%BC%D0%B8%D0%BD%D1%8B%20%D0%B8%D0%BC%D0%B5%D1%8E%D1%82%20%D1%81%D0%BB%D0%B5%D0%B4%D1%83%D1%8E%D1%89%D0%B8%D0%B5%20%D0%B7%D0%BD%D0%B0%D1%87%D0%B5%D0%BD%D0%B8%D1%8F%3A%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9E%D1%84%D0%B5%D1%80%D1%82%D0%B0%20%26ndash%3B%20%D0%BF%D1%83%D0%B1%D0%BB%D0%B8%D1%87%D0%BD%D0%BE%D0%B5%20%D0%BF%D1%80%D0%B5%D0%B4%D0%BB%D0%BE%D0%B6%D0%B5%D0%BD%D0%B8%D0%B5%20%D0%98%D1%81%D0%BF%D0%BE%D0%BB%D0%BD%D0%B8%D1%82%D0%B5%D0%BB%D1%8F%2C%20%D0%B0%D0%B4%D1%80%D0%B5%D1%81%D0%BE%D0%B2%D0%B0%D0%BD%D0%BD%D0%BE%D0%B5%20%D0%BB%D1%8E%D0%B1%D0%BE%D0%BC%D1%83%20%D1%84%D0%B8%D0%B7%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%BE%D0%BC%D1%83%20%D0%B8%2F%D0%B8%D0%BB%D0%B8%20%D1%8E%D1%80%D0%B8%D0%B4%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%BE%D0%BC%D1%83%20%D0%BB%D0%B8%D1%86%D1%83%2C%20%D0%B7%D0%B0%D0%BA%D0%BB%D1%8E%D1%87%D0%B8%D1%82%D1%8C%20%D1%81%20%D0%BD%D0%B8%D0%BC%20%D0%9F%D1%83%D0%B1%D0%BB%D0%B8%D1%87%D0%BD%D1%8B%D0%B9%20%D0%B4%D0%BE%D0%B3%D0%BE%D0%B2%D0%BE%D1%80%20%D0%BE%D0%B1%20%D0%BE%D0%BA%D0%B0%D0%B7%D0%B0%D0%BD%D0%B8%D0%B8%20%D1%83%D1%81%D0%BB%D1%83%D0%B3%20%D0%BD%D0%B0%20%D1%83%D1%81%D0%BB%D0%BE%D0%B2%D0%B8%D1%8F%D1%85%2C%20%D1%81%D0%BE%D0%B4%D0%B5%D1%80%D0%B6%D0%B0%D1%89%D0%B8%D1%85%D1%81%D1%8F%20%D0%B2%20%D0%B4%D0%B0%D0%BD%D0%BD%D0%BE%D0%BC%20%D0%A1%D0%BE%D0%B3%D0%BB%D0%B0%D1%88%D0%B5%D0%BD%D0%B8%D0%B8%2C%20%D0%B2%D0%BA%D0%BB%D1%8E%D1%87%D0%B0%D1%8F%20%D0%B2%D1%81%D0%B5%20%D0%B5%D0%B3%D0%BE%20%D0%BF%D1%80%D0%B8%D0%BB%D0%BE%D0%B6%D0%B5%D0%BD%D0%B8%D1%8F%3B%3C%2Fp%3E%0A%0A%3Cp%3E%D0%90%D0%BA%D1%86%D0%B5%D0%BF%D1%82%20%26ndash%3B%20%D0%BF%D0%BE%D0%BB%D0%BD%D0%BE%D0%B5%20%D0%BF%D1%80%D0%B8%D0%BD%D1%8F%D1%82%D0%B8%D0%B5%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D0%B5%D0%BC%20%D1%83%D1%81%D0%BB%D0%BE%D0%B2%D0%B8%D0%B9%20%D0%A1%D0%BE%D0%B3%D0%BB%D0%B0%D1%88%D0%B5%D0%BD%D0%B8%D1%8F%3B%3C%2Fp%3E%0A%0A%3Cp%3E%D0%98%D1%81%D0%BF%D0%BE%D0%BB%D0%BD%D0%B8%D1%82%D0%B5%D0%BB%D1%8C%20-%20%7Burl%7D%3C%2Fp%3E%0A%0A%3Cp%3E%D0%A1%D0%B0%D0%B9%D1%82%20%26ndash%3B%20%7Burl%7D%20%26ndash%3B%20%D0%B8%D0%BD%D1%82%D0%B5%D1%80%D0%BD%D0%B5%D1%82-%D1%81%D0%B0%D0%B9%D1%82%2C%20%D0%B0%D0%B4%D0%BC%D0%B8%D0%BD%D0%B8%D1%81%D1%82%D1%80%D0%B8%D1%80%D1%83%D0%B5%D0%BC%D1%8B%D0%B9%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D0%B5%D0%B9%20%D0%B8%20%D0%BF%D1%80%D0%B5%D0%B4%D1%81%D1%82%D0%B0%D0%B2%D0%BB%D1%8F%D1%8E%D1%89%D0%B8%D0%B9%20%D1%81%D0%BE%D0%B1%D0%BE%D0%B9%20%D0%BA%D0%BE%D0%BC%D0%BC%D1%83%D0%BD%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D0%BE%D0%BD%D0%BD%D1%83%D1%8E%20%D0%BF%D0%BB%D0%B0%D1%82%D1%84%D0%BE%D1%80%D0%BC%D1%83%20%D0%B4%D0%BB%D1%8F%20%D1%80%D0%B0%D0%B7%D0%BC%D0%B5%D1%89%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%B2%D1%80%D0%B5%D0%BC%D0%B5%D0%BD%D0%BD%D1%8B%D1%85%20%D0%BA%D0%BB%D0%B0%D1%81%D1%81%D0%B8%D1%84%D0%B8%D1%86%D0%B8%D1%80%D1%83%D0%B5%D0%BC%D1%8B%D1%85%20%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B9%3B%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%20%26ndash%3B%20%D0%BB%D1%8E%D0%B1%D0%BE%D0%B5%20%D0%B4%D0%B5%D0%B5%D1%81%D0%BF%D0%BE%D1%81%D0%BE%D0%B1%D0%BD%D0%BE%D0%B5%20%D1%84%D0%B8%D0%B7%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%BE%D0%B5%20%D0%B8%D0%BB%D0%B8%20%D1%8E%D1%80%D0%B8%D0%B4%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%BE%D0%B5%20%D0%BB%D0%B8%D1%86%D0%BE%2C%20%D0%BF%D1%80%D0%B8%D0%BD%D1%8F%D0%B2%D1%88%D0%B5%D0%B5%20%D1%83%D1%81%D0%BB%D0%BE%D0%B2%D0%B8%D1%8F%20%D0%B4%D0%B0%D0%BD%D0%BD%D0%BE%D0%B3%D0%BE%20%D0%A1%D0%BE%D0%B3%D0%BB%D0%B0%D1%88%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%B8%20%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D1%83%D1%8E%D1%89%D0%B5%D0%B5%D1%81%D1%8F%20%D1%83%D1%81%D0%BB%D1%83%D0%B3%D0%B0%D0%BC%D0%B8%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D0%B8%3B%3C%2Fp%3E%0A%0A%3Cp%3E%D0%A2%D0%BE%D0%B2%D0%B0%D1%80%20-%20%D0%BB%D1%8E%D0%B1%D0%BE%D0%B9%20%D0%BC%D0%B0%D1%82%D0%B5%D1%80%D0%B8%D0%B0%D0%BB%D1%8C%D0%BD%D1%8B%D0%B9%20%D0%B8%20%D0%BD%D0%B5%D0%BC%D0%B0%D1%82%D0%B5%D1%80%D0%B8%D0%B0%D0%BB%D1%8C%D0%BD%D1%8B%D0%B9%20%D0%BE%D0%B1%D1%8A%D0%B5%D0%BA%D1%82%3B%3C%2Fp%3E%0A%0A%3Cp%3E%D0%A3%D1%81%D0%BB%D1%83%D0%B3%D0%B0%20%26ndash%3B%20%D0%BB%D1%8E%D0%B1%D0%B0%D1%8F%20%D0%BE%D0%BF%D0%B5%D1%80%D0%B0%D1%86%D0%B8%D1%8F%2C%20%D0%BD%D0%B5%20%D1%8F%D0%B2%D0%BB%D1%8F%D1%8E%D1%89%D0%B0%D1%8F%D1%81%D1%8F%20%D0%BF%D0%BE%D1%81%D1%82%D0%B0%D0%B2%D0%BA%D0%BE%D0%B9%20%D1%82%D0%BE%D0%B2%D0%B0%D1%80%D0%BE%D0%B2%2C%20%D1%81%D0%B2%D1%8F%D0%B7%D0%B0%D0%BD%D0%BD%D0%B0%D1%8F%20%D1%81%20%D0%BF%D1%80%D0%B5%D0%B4%D0%BE%D1%81%D1%82%D0%B0%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5%D0%BC%20%D1%81%D0%B5%D1%80%D0%B2%D0%B8%D1%81%D0%B0%2C%20%D0%BA%D0%BE%D1%82%D0%BE%D1%80%D1%8B%D0%B9%20%D0%BF%D0%BE%D1%82%D1%80%D0%B5%D0%B1%D0%BB%D1%8F%D0%B5%D1%82%D1%81%D1%8F%20%D0%B2%20%D0%BF%D1%80%D0%BE%D1%86%D0%B5%D1%81%D1%81%D0%B5%20%D1%81%D0%BE%D0%B2%D0%B5%D1%80%D1%88%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%BE%D0%BF%D1%80%D0%B5%D0%B4%D0%B5%D0%BB%D0%B5%D0%BD%D0%BD%D0%BE%D0%B3%D0%BE%20%D0%B4%D0%B5%D0%B9%D1%81%D1%82%D0%B2%D0%B8%D1%8F%20%D0%B8%D0%BB%D0%B8%20%D0%BE%D1%81%D1%83%D1%89%D0%B5%D1%81%D1%82%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%BE%D0%BF%D1%80%D0%B5%D0%B4%D0%B5%D0%BB%D0%B5%D0%BD%D0%BD%D0%BE%D0%B9%20%D0%B4%D0%B5%D1%8F%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D0%BE%D1%81%D1%82%D0%B8%2C%20%D0%B4%D0%BB%D1%8F%20%D1%83%D0%B4%D0%BE%D0%B2%D0%BB%D0%B5%D1%82%D0%B2%D0%BE%D1%80%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%BB%D0%B8%D1%87%D0%BD%D1%8B%D1%85%20%D0%BF%D0%BE%D1%82%D1%80%D0%B5%D0%B1%D0%BD%D0%BE%D1%81%D1%82%D0%B5%D0%B9%20%D0%B7%D0%B0%D0%BA%D0%B0%D0%B7%D1%87%D0%B8%D0%BA%D0%B0%3B%3C%2Fp%3E%0A%0A%3Cp%3E%D0%A3%D1%81%D0%BB%D1%83%D0%B3%D0%B8%2F%D1%81%D0%B5%D1%80%D0%B2%D0%B8%D1%81%20%7Burl%7D%20%26ndash%3B%20%D0%BB%D1%8E%D0%B1%D1%8B%D0%B5%20%D0%BF%D0%BB%D0%B0%D1%82%D0%BD%D1%8B%D0%B5%20%D0%B8%20%D0%B1%D0%B5%D1%81%D0%BF%D0%BB%D0%B0%D1%82%D0%BD%D1%8B%D0%B5%20%D1%81%D0%B5%D1%80%D0%B2%D0%B8%D1%81%D1%8B%2C%20%D0%BE%D0%BA%D0%B0%D0%B7%D1%8B%D0%B2%D0%B0%D0%B5%D0%BC%D1%8B%D0%B5%20%D0%98%D1%81%D0%BF%D0%BE%D0%BB%D0%BD%D0%B8%D1%82%D0%B5%D0%BB%D0%B5%D0%BC%20%D0%BF%D1%80%D0%B8%20%D0%BF%D0%BE%D0%BC%D0%BE%D1%89%D0%B8%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B0%20(%D0%BD%D0%B0%D0%BF%D1%80%D0%B8%D0%BC%D0%B5%D1%80%2C%20%D0%B2%20%D1%82%D0%BE%D0%BC%20%D1%87%D0%B8%D1%81%D0%BB%D0%B5%2C%20%D0%BD%D0%BE%20%D0%BD%D0%B5%20%D0%B8%D1%81%D0%BA%D0%BB%D1%8E%D1%87%D0%B8%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D0%BE%2C%20%D0%B2%D1%81%D0%B5%D1%85%20%D0%B5%D0%B3%D0%BE%20%D0%B2%D0%BE%D0%B7%D0%BC%D0%BE%D0%B6%D0%BD%D0%BE%D1%81%D1%82%D0%B5%D0%B9%2C%20%D1%82%D0%B5%D0%BA%D1%81%D1%82%D0%B0%2C%20%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D1%85%2C%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D0%B8%2C%20%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%BC%D0%BD%D0%BE%D0%B3%D0%BE%20%D0%BE%D0%B1%D0%B5%D1%81%D0%BF%D0%B5%D1%87%D0%B5%D0%BD%D0%B8%D1%8F%2C%20%D0%B3%D1%80%D0%B0%D1%84%D0%B8%D0%BA%D0%BE%D0%B2%20%D0%B8%D0%BB%D0%B8%20%D1%84%D0%BE%D1%82%D0%BE%D0%B3%D1%80%D0%B0%D1%84%D0%B8%D0%B9%2C%20%D1%80%D0%B8%D1%81%D1%83%D0%BD%D0%BA%D0%BE%D0%B2%20%D0%B8%20%D1%82.%D0%B4.%20%D0%B8%20%D1%82.%D0%BF.)%2C%20%D0%B0%20%D1%82%D0%B0%D0%BA%D0%B6%D0%B5%20%D0%BB%D1%8E%D0%B1%D1%8B%D1%85%20%D0%B4%D1%80%D1%83%D0%B3%D0%B8%D1%85%20%D1%83%D1%81%D0%BB%D1%83%D0%B3%2C%20%D0%BF%D1%80%D0%B5%D0%B4%D0%BE%D1%81%D1%82%D0%B0%D0%B2%D0%BB%D1%8F%D0%B5%D0%BC%D1%8B%D1%85%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D0%B5%D0%B9%20%D1%81%20%D0%BF%D0%BE%D0%BC%D0%BE%D1%89%D1%8C%D1%8E%20%D1%81%D0%B5%D1%80%D0%B2%D0%B8%D1%81%D0%BE%D0%B2%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B0.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%A3%D1%87%D0%B5%D1%82%D0%BD%D0%B0%D1%8F%20%D0%B7%D0%B0%D0%BF%D0%B8%D1%81%D1%8C%2F%D0%B0%D0%BA%D0%BA%D0%B0%D1%83%D0%BD%D1%82%20%26ndash%3B%20%D1%8D%D0%BB%D0%B5%D0%BA%D1%82%D1%80%D0%BE%D0%BD%D0%BD%D1%8B%D0%B9%20%D0%BA%D0%B0%D0%B1%D0%B8%D0%BD%D0%B5%D1%82%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F%20%D0%B2%20%D1%84%D1%83%D0%BD%D0%BA%D1%86%D0%B8%D0%BE%D0%BD%D0%B0%D0%BB%D1%8C%D0%BD%D0%BE%D0%B9%20%D1%81%D0%B8%D1%81%D1%82%D0%B5%D0%BC%D0%B5%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B0%2C%20%D1%81%20%D0%BF%D0%BE%D0%BC%D0%BE%D1%89%D1%8C%D1%8E%20%D0%BA%D0%BE%D1%82%D0%BE%D1%80%D0%BE%D0%B3%D0%BE%20%D0%BE%D0%BD%20%D0%BC%D0%BE%D0%B6%D0%B5%D1%82%20%D1%83%D0%BF%D1%80%D0%B0%D0%B2%D0%BB%D1%8F%D1%82%D1%8C%20%D1%81%D0%B2%D0%BE%D0%B8%D0%BC%D0%B8%20%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F%D0%BC%D0%B8%20%D0%BD%D0%B0%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B5%3B%3C%2Fp%3E%0A%0A%3Cp%3E%D0%A0%D0%B5%D0%B3%D0%B8%D1%81%D1%82%D1%80%D0%B0%D1%86%D0%B8%D1%8F%20%26ndash%3B%20%D0%BF%D1%80%D0%B8%D0%BD%D1%8F%D1%82%D0%B8%D0%B5%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D0%B5%D0%BC%20%D0%BE%D1%84%D0%B5%D1%80%D1%82%D1%8B%20%D0%BD%D0%B0%20%D0%B7%D0%B0%D0%BA%D0%BB%D1%8E%D1%87%D0%B5%D0%BD%D0%B8%D0%B5%20%D0%B4%D0%B0%D0%BD%D0%BD%D0%BE%D0%B3%D0%BE%20%D0%A1%D0%BE%D0%B3%D0%BB%D0%B0%D1%88%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%B8%20%D0%BF%D1%80%D0%BE%D1%86%D0%B5%D0%B4%D1%83%D1%80%D0%B0%2C%20%D0%B2%20%D1%85%D0%BE%D0%B4%D0%B5%20%D0%BA%D0%BE%D1%82%D0%BE%D1%80%D0%BE%D0%B9%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%20%D0%BF%D0%BE%D1%81%D1%80%D0%B5%D0%B4%D1%81%D1%82%D0%B2%D0%BE%D0%BC%20%D0%B7%D0%B0%D0%BF%D0%BE%D0%BB%D0%BD%D0%B5%D0%BD%D0%B8%D1%8F%20%D1%81%D0%BE%D0%BE%D1%82%D0%B2%D0%B5%D1%82%D1%81%D1%82%D0%B2%D1%83%D1%8E%D1%89%D0%B8%D1%85%20%D1%84%D0%BE%D1%80%D0%BC%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B0%20%D0%BF%D1%80%D0%B5%D0%B4%D0%BE%D1%81%D1%82%D0%B0%D0%B2%D0%BB%D1%8F%D0%B5%D1%82%20%D0%BD%D0%B5%D0%BE%D0%B1%D1%85%D0%BE%D0%B4%D0%B8%D0%BC%D1%83%D1%8E%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8E%20%D0%B4%D0%BB%D1%8F%20%D0%B8%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D1%8F%20%D1%81%D0%B5%D1%80%D0%B2%D0%B8%D1%81%D0%BE%D0%B2%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B0.%20%D0%A0%D0%B5%D0%B3%D0%B8%D1%81%D1%82%D1%80%D0%B0%D1%86%D0%B8%D1%8F%20%D1%81%D1%87%D0%B8%D1%82%D0%B0%D0%B5%D1%82%D1%81%D1%8F%20%D0%B7%D0%B0%D0%B2%D0%B5%D1%80%D1%88%D0%B5%D0%BD%D0%BD%D0%BE%D0%B9%20%D1%82%D0%BE%D0%BB%D1%8C%D0%BA%D0%BE%20%D0%B2%20%D1%81%D0%BB%D1%83%D1%87%D0%B0%D0%B5%20%D1%83%D1%81%D0%BF%D0%B5%D1%88%D0%BD%D0%BE%D0%B3%D0%BE%20%D0%BF%D1%80%D0%BE%D1%85%D0%BE%D0%B6%D0%B4%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%B2%D1%81%D0%B5%D1%85%20%D0%B5%D0%B5%20%D1%8D%D1%82%D0%B0%D0%BF%D0%BE%D0%B2%20%D0%B2%20%D1%81%D0%BE%D0%BE%D1%82%D0%B2%D0%B5%D1%82%D1%81%D1%82%D0%B2%D0%B8%D0%B8%20%D1%81%20%D0%BE%D0%BF%D1%83%D0%B1%D0%BB%D0%B8%D0%BA%D0%BE%D0%B2%D0%B0%D0%BD%D0%BD%D1%8B%D0%BC%D0%B8%20%D0%BD%D0%B0%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B5%20%D0%B8%D0%BD%D1%81%D1%82%D1%80%D1%83%D0%BA%D1%86%D0%B8%D1%8F%D0%BC%D0%B8.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9F%D0%B5%D1%80%D1%81%D0%BE%D0%BD%D0%B0%D0%BB%D1%8C%D0%BD%D1%8B%D0%B5%20%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D0%B5%20-%20%D1%8D%D1%82%D0%BE%20%D1%81%D0%B2%D0%B5%D0%B4%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%B8%D0%BB%D0%B8%20%D1%81%D0%BE%D0%B2%D0%BE%D0%BA%D1%83%D0%BF%D0%BD%D0%BE%D1%81%D1%82%D1%8C%20%D1%81%D0%B2%D0%B5%D0%B4%D0%B5%D0%BD%D0%B8%D0%B9%20%D0%BE%20%D1%84%D0%B8%D0%B7%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%BE%D0%BC%20%D0%BB%D0%B8%D1%86%D0%B5%2C%20%D0%BA%D0%BE%D1%82%D0%BE%D1%80%D0%BE%D0%B5%20%D0%BF%D1%80%D0%B8%20%D0%B8%D1%85%20%D0%BF%D0%BE%D0%BC%D0%BE%D1%89%D0%B8%20%D0%B8%D0%B4%D0%B5%D0%BD%D1%82%D0%B8%D1%84%D0%B8%D1%86%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%BE%20%D0%B8%D0%BB%D0%B8%20%D0%BC%D0%BE%D0%B6%D0%B5%D1%82%20%D0%B1%D1%8B%D1%82%D1%8C%20%D0%BA%D0%BE%D0%BD%D0%BA%D1%80%D0%B5%D1%82%D0%BD%D0%BE%20%D0%B8%D0%B4%D0%B5%D0%BD%D1%82%D0%B8%D1%84%D0%B8%D1%86%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%BE.%3C%2Fp%3E%0A%0A%3Cp%3ESMS-%D0%B2%D0%B5%D1%80%D0%B8%D1%84%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D1%8F%20-%20%D1%8D%D1%82%D0%BE%20%D0%BF%D1%80%D0%BE%D0%B2%D0%B5%D1%80%D0%BA%D0%B0%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F%2C%20%D0%BA%D0%BE%D1%82%D0%BE%D1%80%D0%B0%D1%8F%20%D0%BE%D1%81%D1%83%D1%89%D0%B5%D1%81%D1%82%D0%B2%D0%BB%D1%8F%D0%B5%D1%82%D1%81%D1%8F%20%D0%BF%D1%83%D1%82%D0%B5%D0%BC%20%D0%B2%D0%B2%D0%BE%D0%B4%D0%B0%20%D1%81%D0%BF%D0%B5%D1%86%D0%B8%D0%B0%D0%BB%D1%8C%D0%BD%D0%BE%D0%B3%D0%BE%20%D0%BA%D0%BE%D0%B4%D0%B0%20%D0%B2%D0%B5%D1%80%D0%B8%D1%84%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D0%B8%2C%20%D0%BF%D1%80%D0%B8%D1%81%D0%BB%D0%B0%D0%BD%D0%BD%D0%BE%D0%B3%D0%BE%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D0%B5%D0%B9%20%D0%B2%20SMS-%D1%81%D0%BE%D0%BE%D0%B1%D1%89%D0%B5%D0%BD%D0%B8%D0%B8%20%D0%BD%D0%B0%20%D0%BD%D0%BE%D0%BC%D0%B5%D1%80%2C%20%D1%83%D0%BA%D0%B0%D0%B7%D0%B0%D0%BD%D0%BD%D1%8B%D0%B9%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D0%B5%D0%BC%20%D0%BD%D0%B0%20%D1%81%D1%82%D1%80%D0%B0%D0%BD%D0%B8%D1%86%D0%B5%20%D0%B2%D0%B5%D1%80%D0%B8%D1%84%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D0%B8%2C%20%D0%B2%20%D1%81%D0%BE%D0%BE%D1%82%D0%B2%D0%B5%D1%82%D1%81%D1%82%D0%B2%D1%83%D1%8E%D1%89%D0%B5%D0%B5%20%D0%BF%D0%BE%D0%BB%D0%B5%20%D0%BD%D0%B0%20%D1%81%D1%82%D1%80%D0%B0%D0%BD%D0%B8%D1%86%D0%B5%20%D0%B2%D0%B5%D1%80%D0%B8%D1%84%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D0%B8.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%95%D1%81%D0%BB%D0%B8%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%20%D0%BD%D0%B5%20%D1%81%D0%BE%D0%B3%D0%BB%D0%B0%D1%81%D0%B5%D0%BD%20%D1%81%20%D0%BD%D0%B0%D1%81%D1%82%D0%BE%D1%8F%D1%89%D0%B8%D0%BC%D0%B8%20%D1%83%D1%81%D0%BB%D0%BE%D0%B2%D0%B8%D1%8F%D0%BC%D0%B8%20%D0%BF%D0%BE%D0%BB%D0%BD%D0%BE%D1%81%D1%82%D1%8C%D1%8E%20%D0%B8%D0%BB%D0%B8%20%D1%87%D0%B0%D1%81%D1%82%D0%B8%D1%87%D0%BD%D0%BE%2C%20%D0%98%D1%81%D0%BF%D0%BE%D0%BB%D0%BD%D0%B8%D1%82%D0%B5%D0%BB%D1%8C%20%D0%BF%D1%80%D0%BE%D1%81%D0%B8%D1%82%20%D0%B5%D0%B3%D0%BE%20%D0%BF%D0%BE%D0%BA%D0%B8%D0%BD%D1%83%D1%82%D1%8C%20%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D0%B9%20%D1%81%D0%B0%D0%B9%D1%82.%20%D0%9D%D0%B0%D1%81%D1%82%D0%BE%D1%8F%D1%89%D0%B8%D0%B5%20%D1%83%D1%81%D0%BB%D0%BE%D0%B2%D0%B8%D1%8F%20%D1%80%D0%B5%D0%B3%D1%83%D0%BB%D0%B8%D1%80%D1%83%D1%8E%D1%82%20%D0%B8%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D0%B5%D0%BC%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B0%20%D0%B8%20%D1%83%D1%81%D0%BB%D1%83%D0%B3%20%7Burl%7D.%20%D0%98%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5%20%D0%A3%D1%81%D0%BB%D1%83%D0%B3%20%7Burl%7D%20%D0%BE%D0%B7%D0%BD%D0%B0%D1%87%D0%B0%D0%B5%D1%82%2C%20%D1%87%D1%82%D0%BE%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%20%D0%BE%D0%B7%D0%BD%D0%B0%D0%BA%D0%BE%D0%BC%D0%BB%D0%B5%D0%BD%20%D1%81%20%D0%BD%D0%B0%D1%81%D1%82%D0%BE%D1%8F%D1%89%D0%B8%D0%BC%20%D0%A1%D0%BE%D0%B3%D0%BB%D0%B0%D1%88%D0%B5%D0%BD%D0%B8%D0%B5%D0%BC%2C%20%D0%BF%D0%BE%D0%BD%D0%B8%D0%BC%D0%B0%D0%B5%D1%82%20%D0%B8%20%D0%BF%D1%80%D0%B8%D0%BD%D0%B8%D0%BC%D0%B0%D0%B5%D1%82%20%D0%B5%D0%B3%D0%BE%20%D1%83%D1%81%D0%BB%D0%BE%D0%B2%D0%B8%D1%8F.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9D%D0%B0%D1%87%D0%B8%D0%BD%D0%B0%D1%8F%20%D0%B8%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D1%8C%20%D0%BA%D0%B0%D0%BA%D0%BE%D0%B9-%D0%BB%D0%B8%D0%B1%D0%BE%20%D1%81%D0%B5%D1%80%D0%B2%D0%B8%D1%81%20%7Burl%7D%2C%20%D0%BB%D0%B8%D0%B1%D0%BE%20%D0%BF%D1%80%D0%BE%D0%B9%D0%B4%D1%8F%20%D0%BF%D1%80%D0%BE%D1%86%D0%B5%D0%B4%D1%83%D1%80%D1%83%20%D1%80%D0%B5%D0%B3%D0%B8%D1%81%D1%82%D1%80%D0%B0%D1%86%D0%B8%D0%B8%2C%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%20%D1%81%D1%87%D0%B8%D1%82%D0%B0%D0%B5%D1%82%D1%81%D1%8F%20%D0%BF%D1%80%D0%B8%D0%BD%D1%8F%D0%B2%D1%88%D0%B8%D0%BC%20%D1%83%D1%81%D0%BB%D0%BE%D0%B2%D0%B8%D1%8F%20%D0%A1%D0%BE%D0%B3%D0%BB%D0%B0%D1%88%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%B2%20%D0%BF%D0%BE%D0%BB%D0%BD%D0%BE%D0%BC%20%D0%BE%D0%B1%D1%8A%D0%B5%D0%BC%D0%B5%2C%20%D0%B1%D0%B5%D0%B7%20%D0%B2%D1%81%D1%8F%D0%BA%D0%B8%D1%85%20%D0%BE%D0%B3%D0%BE%D0%B2%D0%BE%D1%80%D0%BE%D0%BA%20%D0%B8%20%D0%B8%D1%81%D0%BA%D0%BB%D1%8E%D1%87%D0%B5%D0%BD%D0%B8%D0%B9.%20%D0%92%20%D1%81%D0%BB%D1%83%D1%87%D0%B0%D0%B5%20%D0%BD%D0%B5%D1%81%D0%BE%D0%B3%D0%BB%D0%B0%D1%81%D0%B8%D1%8F%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F%20%D1%81%20%D0%BA%D0%B0%D0%BA%D0%B8%D0%BC%D0%B8-%D0%BB%D0%B8%D0%B1%D0%BE%20%D0%B8%D0%B7%20%D0%BF%D0%BE%D0%BB%D0%BE%D0%B6%D0%B5%D0%BD%D0%B8%D0%B9%20%D0%BD%D0%B0%D1%81%D1%82%D0%BE%D1%8F%D1%89%D0%B5%D0%B3%D0%BE%20C%D0%BE%D0%B3%D0%BB%D0%B0%D1%88%D0%B5%D0%BD%D0%B8%D1%8F%2C%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%20%D0%BD%D0%B5%20%D0%B2%20%D0%BF%D1%80%D0%B0%D0%B2%D0%B5%20%D0%B8%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D1%8C%20%D1%81%D0%B5%D1%80%D0%B2%D0%B8%D1%81%D1%8B%20%7Burl%7D.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9D%D0%B0%D1%81%D1%82%D0%BE%D1%8F%D1%89%D0%B8%D0%BC%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%BF%D1%80%D0%B5%D0%B4%D0%BB%D0%B0%D0%B3%D0%B0%D0%B5%D1%82%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F%D0%BC%20%D1%81%D0%B5%D1%82%D0%B8%20%D0%98%D0%BD%D1%82%D0%B5%D1%80%D0%BD%D0%B5%D1%82%20%D0%B8%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D1%8C%20%D1%81%D0%B2%D0%BE%D0%B8%20%D1%81%D0%B5%D1%80%D0%B2%D0%B8%D1%81%D1%8B%20%D0%BD%D0%B0%20%D1%83%D1%81%D0%BB%D0%BE%D0%B2%D0%B8%D1%8F%D1%85%2C%20%D0%B8%D0%B7%D0%BB%D0%BE%D0%B6%D0%B5%D0%BD%D0%BD%D1%8B%D1%85%20%D0%B2%20%D0%BD%D0%B0%D1%81%D1%82%D0%BE%D1%8F%D1%89%D0%B5%D0%BC%20%D0%A1%D0%BE%D0%B3%D0%BB%D0%B0%D1%88%D0%B5%D0%BD%D0%B8%D0%B8.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%BF%D1%80%D0%B5%D0%B4%D0%BB%D0%B0%D0%B3%D0%B0%D0%B5%D1%82%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8E%20%D1%83%D1%81%D0%BB%D1%83%D0%B3%D0%B8%20%D0%BF%D0%BE%20%D0%B8%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D1%8E%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B0%20%7Burl%7D%20%D0%B4%D0%BB%D1%8F%20%D1%80%D0%B0%D0%B7%D0%BC%D0%B5%D1%89%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D0%B8%20%D0%BE%20%D1%82%D0%BE%D0%B2%D0%B0%D1%80%D0%B0%D1%85%20(%D1%83%D1%81%D0%BB%D1%83%D0%B3%D0%B0%D1%85)%20c%20%D1%86%D0%B5%D0%BB%D1%8C%D1%8E%2C%20%D0%B2%20%D1%82%D0%BE%D0%BC%20%D1%87%D0%B8%D1%81%D0%BB%D0%B5%2C%20%D0%BD%D0%BE%20%D0%BD%D0%B5%20%D0%B8%D1%81%D0%BA%D0%BB%D1%8E%D1%87%D0%B8%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D0%BE%2C%20%D0%BF%D0%BE%D1%81%D0%BB%D0%B5%D0%B4%D1%83%D1%8E%D1%89%D0%B5%D0%B9%20%D0%BF%D0%BE%D0%BA%D1%83%D0%BF%D0%BA%D0%B8%20%D0%B8%D0%BB%D0%B8%20%D0%BF%D1%80%D0%BE%D0%B4%D0%B0%D0%B6%D0%B8%20%D1%80%D0%B0%D0%B7%D0%BB%D0%B8%D1%87%D0%BD%D1%8B%D1%85%20%D1%82%D0%BE%D0%B2%D0%B0%D1%80%D0%BE%D0%B2%20%D0%B8%20%D1%83%D1%81%D0%BB%D1%83%D0%B3%20%D0%B4%D1%80%D1%83%D0%B3%D0%B8%D0%BC%D0%B8%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F%D0%BC%D0%B8.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%92%D1%81%D0%B5%20%D1%81%D0%B4%D0%B5%D0%BB%D0%BA%D0%B8%20%D0%B7%D0%B0%D0%BA%D0%BB%D1%8E%D1%87%D0%B0%D1%8E%D1%82%D1%81%D1%8F%20%D0%BC%D0%B5%D0%B6%D0%B4%D1%83%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F%D0%BC%D0%B8%20%D0%BD%D0%B0%D0%BF%D1%80%D1%8F%D0%BC%D1%83%D1%8E.%20%D0%A2%D0%B0%D0%BA%D0%B8%D0%BC%20%D0%BE%D0%B1%D1%80%D0%B0%D0%B7%D0%BE%D0%BC%2C%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%BD%D0%B5%20%D1%8F%D0%B2%D0%BB%D1%8F%D0%B5%D1%82%D1%81%D1%8F%20%D1%83%D1%87%D0%B0%D1%81%D1%82%D0%BD%D0%B8%D0%BA%D0%BE%D0%BC%20%D1%81%D0%B4%D0%B5%D0%BB%D0%BE%D0%BA%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D0%B5%D0%B9%2C%20%D0%B0%20%D0%BB%D0%B8%D1%88%D1%8C%20%D0%BF%D1%80%D0%B5%D0%B4%D0%BE%D1%81%D1%82%D0%B0%D0%B2%D0%BB%D1%8F%D0%B5%D1%82%20%D0%BA%D0%BE%D0%BC%D0%BC%D1%83%D0%BD%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D0%BE%D0%BD%D0%BD%D1%83%D1%8E%20%D1%82%D0%BE%D1%80%D0%B3%D0%BE%D0%B2%D1%83%D1%8E%20%D0%BF%D0%BB%D0%B0%D1%82%D1%84%D0%BE%D1%80%D0%BC%D1%83%20%D0%B4%D0%BB%D1%8F%20%D1%80%D0%B0%D0%B7%D0%BC%D0%B5%D1%89%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B9.%3C%2Fp%3E%0A%0A%3Cp%3E2.%20%D0%A0%D0%90%D0%97%D0%9C%D0%95%D0%A9%D0%95%D0%9D%D0%98%D0%95%20%D0%9E%D0%91%D0%AA%D0%AF%D0%92%D0%9B%D0%95%D0%9D%D0%98%D0%99%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%20%D0%BF%D0%BE%D0%BB%D1%83%D1%87%D0%B0%D0%B5%D1%82%20%D0%BF%D1%80%D0%B0%D0%B2%D0%BE%20%D1%80%D0%B0%D0%B7%D0%BC%D0%B5%D1%89%D0%B0%D1%82%D1%8C%20%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%BD%D0%B0%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B0%D1%85%20%D0%BF%D0%BE%D1%81%D0%BB%D0%B5%20%D0%B7%D0%B0%D0%BF%D0%BE%D0%BB%D0%BD%D0%B5%D0%BD%D0%B8%D1%8F%20%D1%81%D0%BF%D0%B5%D1%86%D0%B8%D0%B0%D0%BB%D1%8C%D0%BD%D0%BE%D0%B9%20%D1%84%D0%BE%D1%80%D0%BC%D1%8B%20%D1%81%20%D1%83%D0%BA%D0%B0%D0%B7%D0%B0%D0%BD%D0%B8%D0%B5%D0%BC%20%D0%BF%D0%B0%D1%80%D0%B0%D0%BC%D0%B5%D1%82%D1%80%D0%BE%D0%B2%20%D0%BF%D1%80%D0%B5%D0%B4%D0%BB%D0%B0%D0%B3%D0%B0%D0%B5%D0%BC%D1%8B%D1%85%20%D1%82%D0%BE%D0%B2%D0%B0%D1%80%D0%BE%D0%B2%20%D0%B8%D0%BB%D0%B8%20%D1%83%D1%81%D0%BB%D1%83%D0%B3.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%20%D1%82%D0%B0%D0%BA%D0%B6%D0%B5%20%D0%B8%D0%BC%D0%B5%D0%B5%D1%82%20%D0%BF%D1%80%D0%B0%D0%B2%D0%BE%20%D0%B7%D0%B0%D1%80%D0%B5%D0%B3%D0%B8%D1%81%D1%82%D1%80%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D1%82%D1%8C%D1%81%D1%8F%20%D0%BD%D0%B0%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B5%20%D1%81%20%D1%86%D0%B5%D0%BB%D1%8C%D1%8E%20%D0%BF%D0%BE%D0%BB%D1%83%D1%87%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%B4%D0%BE%D0%BF%D0%BE%D0%BB%D0%BD%D0%B8%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D1%8B%D1%85%20%D1%81%D0%B5%D1%80%D0%B2%D0%B8%D1%81%D0%BE%D0%B2%2C%20%D0%B7%D0%B0%D0%BF%D0%BE%D0%BB%D0%BD%D0%B8%D0%B2%20%D1%84%D0%BE%D1%80%D0%BC%D1%83%D0%BB%D1%8F%D1%80%20%D1%81%20%D1%83%D0%BA%D0%B0%D0%B7%D0%B0%D0%BD%D0%B8%D0%B5%D0%BC%20%D0%B4%D0%B5%D0%B9%D1%81%D1%82%D0%B2%D0%B8%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D0%BE%D0%B3%D0%BE%20%D0%BD%D0%BE%D0%BC%D0%B5%D1%80%D0%B0%20%D1%82%D0%B5%D0%BB%D0%B5%D1%84%D0%BE%D0%BD%D0%B0%2C%20%D0%BA%20%D0%BA%D0%BE%D1%82%D0%BE%D1%80%D0%BE%D0%BC%D1%83%20%D0%B8%D0%BC%D0%B5%D0%B5%D1%82%20%D0%B4%D0%BE%D1%81%D1%82%D1%83%D0%BF%20%D1%82%D0%BE%D0%BB%D1%8C%D0%BA%D0%BE%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%2C%20%D0%B2%D1%8B%D0%B1%D1%80%D0%B0%D0%BD%D0%BD%D0%BE%D0%B3%D0%BE%20%D0%BF%D0%B0%D1%80%D0%BE%D0%BB%D1%8F%2C%20%D0%B0%20%D1%82%D0%B0%D0%BA%D0%B6%D0%B5%20%D0%B4%D1%80%D1%83%D0%B3%D0%B8%D1%85%20%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D1%85%2C%20%D0%BD%D0%B5%D0%BE%D0%B1%D1%85%D0%BE%D0%B4%D0%B8%D0%BC%D1%8B%D1%85%20%D0%B4%D0%BB%D1%8F%20%D1%80%D0%B5%D0%B3%D0%B8%D1%81%D1%82%D1%80%D0%B0%D1%86%D0%B8%D0%B8.%20%D0%9F%D0%BE%D1%81%D0%BB%D0%B5%20%D1%8D%D1%82%D0%BE%D0%B3%D0%BE%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%20%D0%BF%D0%BE%D0%BB%D1%83%D1%87%D0%B0%D0%B5%D1%82%20%D0%A1%D0%9C%D0%A1-%D1%81%D0%BE%D0%BE%D0%B1%D1%89%D0%B5%D0%BD%D0%B8%D0%B5%2C%20%D1%81%D0%BE%D0%B4%D0%B5%D1%80%D0%B6%D0%B0%D1%89%D0%B5%D0%B5%20%D0%BA%D0%BE%D0%B4%2C%20%D0%BA%D0%BE%D1%82%D0%BE%D1%80%D0%BE%D0%B9%20%D0%BD%D0%B5%D0%BE%D0%B1%D1%85%D0%BE%D0%B4%D0%B8%D0%BC%D0%BE%20%D1%83%D0%BA%D0%B0%D0%B7%D0%B0%D1%82%D1%8C%20%D0%B2%20%D0%BD%D1%83%D0%B6%D0%BD%D0%BE%D0%BC%20%D0%BF%D0%BE%D0%BB%D0%B5%20%D0%B4%D0%BB%D1%8F%20%D0%B7%D0%B0%D0%B2%D0%B5%D1%80%D1%88%D0%B5%D0%BD%D0%B8%D1%8F%20%D1%80%D0%B5%D0%B3%D0%B8%D1%81%D1%82%D1%80%D0%B0%D1%86%D0%B8%D0%B8.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%98%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5%20%D0%B2%D0%BE%D0%B7%D0%BC%D0%BE%D0%B6%D0%BD%D0%BE%D1%81%D1%82%D0%B5%D0%B9%20%D0%B8%20%D1%81%D0%B5%D1%80%D0%B2%D0%B8%D1%81%D0%BE%D0%B2%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B0%20%D0%BA%D0%B0%D0%BA%20%D0%B7%D0%B0%D1%80%D0%B5%D0%B3%D0%B8%D1%81%D1%82%D1%80%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%BD%D1%8B%D0%BC%D0%B8%20%D1%82%D0%B0%D0%BA%20%D0%B8%20%D0%BD%D0%B5%D0%B7%D0%B0%D1%80%D0%B5%D0%B3%D0%B8%D1%81%D1%82%D1%80%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%BD%D1%8B%D0%BC%D0%B8%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F%D0%BC%D0%B8%20%D0%BE%D0%B7%D0%BD%D0%B0%D1%87%D0%B0%D0%B5%D1%82%20%D0%BF%D1%80%D0%B8%D0%BD%D1%8F%D1%82%D0%B8%D0%B5%20%D0%BE%D0%B1%D1%8F%D0%B7%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%D1%81%D1%82%D0%B2%20%D1%81%D0%BB%D0%B5%D0%B4%D0%BE%D0%B2%D0%B0%D1%82%D1%8C%20%D0%BF%D1%80%D0%B0%D0%B2%D0%B8%D0%BB%D0%B0%D0%BC%20%D0%B8%20%D0%B8%D0%BD%D1%81%D1%82%D1%80%D1%83%D0%BA%D1%86%D0%B8%D1%8F%D0%BC%20%D0%BF%D0%BE%20%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D1%8E%20%D1%83%D1%81%D0%BB%D1%83%D0%B3%D0%B0%D0%BC%D0%B8%20%7Burl%7D.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%20%D0%BD%D0%B5%D1%81%D0%B5%D1%82%20%D0%BE%D1%82%D0%B2%D0%B5%D1%82%D1%81%D1%82%D0%B2%D0%B5%D0%BD%D0%BD%D0%BE%D1%81%D1%82%D1%8C%20%D0%B7%D0%B0%20%D0%B2%D1%81%D0%B5%20%D0%B4%D0%B5%D0%B9%D1%81%D1%82%D0%B2%D0%B8%D1%8F%20%D1%81%20%D0%B8%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5%D0%BC%20%D0%B5%D0%B3%D0%BE%20%D1%82%D0%B5%D0%BB%D0%B5%D1%84%D0%BE%D0%BD%D0%BD%D0%BE%D0%B3%D0%BE%20%D0%BD%D0%BE%D0%BC%D0%B5%D1%80%D0%B0%20%D0%B8%20%D0%BF%D0%B0%D1%80%D0%BE%D0%BB%D1%8F%20%D0%B4%D0%BB%D1%8F%20%D0%B2%D1%85%D0%BE%D0%B4%D0%B0%20%D0%BD%D0%B0%20%D0%A1%D0%B0%D0%B9%D1%82.%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%20%D0%B8%D0%BC%D0%B5%D0%B5%D1%82%20%D0%BF%D1%80%D0%B0%D0%B2%D0%BE%20%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D1%8C%D1%81%D1%8F%20%D1%81%D0%B5%D1%80%D0%B2%D0%B8%D1%81%D0%B0%D0%BC%D0%B8%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B0%20%D1%82%D0%BE%D0%BB%D1%8C%D0%BA%D0%BE%20%D0%BF%D1%80%D0%B8%20%D0%BF%D0%BE%D0%BC%D0%BE%D1%89%D0%B8%20%D1%81%D0%BE%D0%B1%D1%81%D1%82%D0%B2%D0%B5%D0%BD%D0%BD%D0%BE%D0%B3%D0%BE%20%D0%BD%D0%BE%D0%BC%D0%B5%D1%80%D0%B0%20%D1%82%D0%B5%D0%BB%D0%B5%D1%84%D0%BE%D0%BD%D0%B0%20%D0%B8%20%D0%BF%D0%B0%D1%80%D0%BE%D0%BB%D1%8F.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%20%D0%BE%D0%B1%D1%8F%D0%B7%D1%83%D0%B5%D1%82%D1%81%D1%8F%20%D1%81%D0%BE%D1%85%D1%80%D0%B0%D0%BD%D1%8F%D1%82%D1%8C%20%D0%BA%D0%BE%D0%BD%D1%84%D0%B8%D0%B4%D0%B5%D0%BD%D1%86%D0%B8%D0%B0%D0%BB%D1%8C%D0%BD%D0%BE%D1%81%D1%82%D1%8C%20%D0%BF%D0%B5%D1%80%D0%B5%D0%B4%D0%B0%D0%BD%D0%BD%D0%BE%D0%B3%D0%BE%20%D0%B5%D0%BC%D1%83%20%D0%BF%D0%B0%D1%80%D0%BE%D0%BB%D1%8F%20%D0%B8%20%D0%BD%D0%B5%20%D1%80%D0%B0%D1%81%D0%BA%D1%80%D1%8B%D0%B2%D0%B0%D1%82%D1%8C%20%D0%B5%D0%B3%D0%BE%20%D1%82%D1%80%D0%B5%D1%82%D1%8C%D0%B8%D0%BC%20%D0%BB%D0%B8%D1%86%D0%B0%D0%BC.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%20%D0%BE%D0%B1%D1%8F%D0%B7%D0%B0%D0%BD%20%D0%BD%D0%B5%D0%BC%D0%B5%D0%B4%D0%BB%D0%B5%D0%BD%D0%BD%D0%BE%20%D0%B8%D0%B7%D0%BC%D0%B5%D0%BD%D0%B8%D1%82%D1%8C%20%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D0%B5%20%D0%B4%D0%BB%D1%8F%20%D0%B2%D1%85%D0%BE%D0%B4%D0%B0%20%D0%BD%D0%B0%20%D0%A1%D0%B0%D0%B9%D1%82%2C%20%D0%B5%D1%81%D0%BB%D0%B8%20%D1%83%20%D0%BD%D0%B5%D0%B3%D0%BE%20%D0%B5%D1%81%D1%82%D1%8C%20%D0%BF%D1%80%D0%B8%D1%87%D0%B8%D0%BD%D1%8B%20%D0%BF%D0%BE%D0%B4%D0%BE%D0%B7%D1%80%D0%B5%D0%B2%D0%B0%D1%82%D1%8C%2C%20%D1%87%D1%82%D0%BE%20%D0%B5%D0%B3%D0%BE%20%D1%82%D0%B5%D0%BB%D0%B5%D1%84%D0%BE%D0%BD%D0%BD%D1%8B%D0%B9%20%D0%BD%D0%BE%D0%BC%D0%B5%D1%80%20%D0%B8%20%D0%BF%D0%B0%D1%80%D0%BE%D0%BB%D1%8C%2C%20%D0%B8%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D1%83%D0%B5%D0%BC%D1%8B%D0%B5%20%D0%B4%D0%BB%D1%8F%20%D0%B2%D1%85%D0%BE%D0%B4%D0%B0%20%D0%BD%D0%B0%20%D0%A1%D0%B0%D0%B9%D1%82%2C%20%D0%B1%D1%8B%D0%BB%D0%B8%20%D1%80%D0%B0%D1%81%D0%BA%D1%80%D1%8B%D1%82%D1%8B%20%D0%B8%D0%BB%D0%B8%20%D0%BC%D0%BE%D0%B3%D1%83%D1%82%20%D0%B1%D1%8B%D1%82%D1%8C%20%D0%B8%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D0%BD%D1%8B%20%D1%82%D1%80%D0%B5%D1%82%D1%8C%D0%B8%D0%BC%D0%B8%20%D0%BB%D0%B8%D1%86%D0%B0%D0%BC%D0%B8.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%2C%20%D1%80%D0%B0%D0%B7%D0%BC%D0%B5%D1%89%D0%B0%D1%8E%D1%89%D0%B8%D0%B9%20%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%BE%20%D0%BF%D1%80%D0%BE%D0%B4%D0%B0%D0%B6%D0%B5%20%D1%82%D0%BE%D0%B2%D0%B0%D1%80%D0%BE%D0%B2%20%D0%B8%D0%BB%D0%B8%20%D1%83%D1%81%D0%BB%D1%83%D0%B3%20%D0%BD%D0%B0%20%D0%A1%D0%B0%D0%B9%D1%82%2C%20%D0%BE%D0%B1%D1%8F%D0%B7%D1%83%D0%B5%D1%82%D1%81%D1%8F%20%D1%80%D0%B0%D0%B7%D0%BC%D0%B5%D1%81%D1%82%D0%B8%D1%82%D1%8C%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8E%20%D0%BE%20%D0%BD%D0%B8%D1%85%20%D0%B2%20%D1%81%D0%BE%D0%BE%D1%82%D0%B2%D0%B5%D1%82%D1%81%D1%82%D0%B2%D0%B8%D0%B8%20%D0%BD%D0%B0%D1%81%D1%82%D0%BE%D1%8F%D1%89%D0%B8%D0%BC%20%D0%A1%D0%BE%D0%B3%D0%BB%D0%B0%D1%88%D0%B5%D0%BD%D0%B8%D0%B5%D0%BC%20%D0%B8%20%D0%B8%D0%BD%D1%81%D1%82%D1%80%D1%83%D0%BA%D1%86%D0%B8%D1%8F%D0%BC%D0%B8%2C%20%D0%BF%D1%80%D0%B5%D0%B4%D1%81%D1%82%D0%B0%D0%B2%D0%BB%D0%B5%D0%BD%D0%BD%D1%8B%D0%BC%D0%B8%20%D0%BD%D0%B0%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B5%2C%20%D0%B8%20%D0%BF%D1%80%D0%B5%D0%B4%D0%BE%D1%81%D1%82%D0%B0%D0%B2%D0%B8%D1%82%D1%8C%20%D1%82%D0%BE%D1%87%D0%BD%D1%83%D1%8E%20%D0%B8%20%D0%BF%D0%BE%D0%BB%D0%BD%D1%83%D1%8E%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8E%20%D0%BE%20%D1%82%D0%BE%D0%B2%D0%B0%D1%80%D0%B5%20%D0%B8%D0%BB%D0%B8%20%D1%83%D1%81%D0%BB%D1%83%D0%B3%D0%B0%D1%85%20%D0%B8%20%D1%83%D1%81%D0%BB%D0%BE%D0%B2%D0%B8%D1%8F%D1%85%20%D0%B8%D1%85%20%D0%BF%D1%80%D0%BE%D0%B4%D0%B0%D0%B6%D0%B8.%20%D0%A0%D0%B0%D0%B7%D0%BC%D0%B5%D1%89%D0%B0%D1%8F%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8E%20%D0%BE%20%D1%82%D0%BE%D0%B2%D0%B0%D1%80%D0%B5%20%D0%B8%D0%BB%D0%B8%20%D1%83%D1%81%D0%BB%D1%83%D0%B3%D0%B5%2C%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%20%D0%BF%D0%BE%D0%B4%D1%82%D0%B2%D0%B5%D1%80%D0%B6%D0%B4%D0%B0%D0%B5%D1%82%2C%20%D1%87%D1%82%D0%BE%20%D0%BE%D0%BD%20%D0%B8%D0%BC%D0%B5%D0%B5%D1%82%20%D0%BF%D1%80%D0%B0%D0%B2%D0%BE%20%D0%BF%D1%80%D0%BE%D0%B4%D0%B0%D0%B2%D0%B0%D1%82%D1%8C%20%D1%8D%D1%82%D0%BE%D1%82%20%D1%82%D0%BE%D0%B2%D0%B0%D1%80%20%D0%B8%D0%BB%D0%B8%20%D0%BE%D0%BA%D0%B0%D0%B7%D1%8B%D0%B2%D0%B0%D1%82%D1%8C%20%D0%B4%D0%B0%D0%BD%D0%BD%D1%83%D1%8E%20%D1%83%D1%81%D0%BB%D1%83%D0%B3%D1%83%20%D0%B2%20%D1%81%D0%BE%D0%BE%D1%82%D0%B2%D0%B5%D1%82%D1%81%D1%82%D0%B2%D0%B8%D0%B8%20%D1%81%20%D1%82%D1%80%D0%B5%D0%B1%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D1%8F%D0%BC%D0%B8%20%D0%B7%D0%B0%D0%BA%D0%BE%D0%BD%D0%BE%D0%B4%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%D1%81%D1%82%D0%B2%D0%B0%20%D1%81%D1%82%D1%80%D0%B0%D0%BD%2C%20%D0%B2%20%D0%BA%D0%BE%D1%82%D0%BE%D1%80%D1%8B%D1%85%20%D0%BE%D0%BD%D0%B8%20%D1%80%D0%B5%D0%B0%D0%BB%D0%B8%D0%B7%D1%83%D1%8E%D1%82%D1%81%D1%8F.%20%D0%9F%D1%80%D0%B8%20%D1%80%D0%B0%D0%B7%D0%BC%D0%B5%D1%89%D0%B5%D0%BD%D0%B8%D0%B8%20%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%BE%20%D0%BF%D1%80%D0%BE%D0%B4%D0%B0%D0%B6%D0%B5%2F%D0%B0%D1%80%D0%B5%D0%BD%D0%B4%D0%B5%20%D0%BE%D0%B1%D1%8A%D0%B5%D0%BA%D1%82%D0%BE%D0%B2%20%D0%BD%D0%B5%D0%B4%D0%B2%D0%B8%D0%B6%D0%B8%D0%BC%D0%BE%D1%81%D1%82%D0%B8%2C%20%D1%80%D0%B0%D0%B7%D0%BC%D0%B5%D1%89%D0%B0%D0%B5%D0%BC%D0%BE%D0%B3%D0%BE%20%D1%87%D0%B0%D1%81%D1%82%D0%BD%D1%8B%D0%BC%20%D0%BB%D0%B8%D1%86%D0%BE%D0%BC%2C%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%20%D0%BE%D0%B1%D1%8F%D0%B7%D1%83%D0%B5%D1%82%D1%81%D1%8F%20%D0%BF%D1%80%D0%B5%D0%B4%D0%BE%D1%81%D1%82%D0%B0%D0%B2%D0%B8%D1%82%D1%8C%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D0%B8%20%D0%B4%D0%BE%D0%BA%D1%83%D0%BC%D0%B5%D0%BD%D1%82%D1%8B%2C%20%D0%BA%D0%BE%D1%82%D0%BE%D1%80%D1%8B%D0%B5%20%D0%BF%D0%BE%D0%B4%D1%82%D0%B2%D0%B5%D1%80%D0%B6%D0%B4%D0%B0%D1%8E%D1%82%20%D0%BF%D1%80%D0%B0%D0%B2%D0%BE%20%D0%BD%D0%B0%20%D1%80%D0%B0%D0%B7%D0%BC%D0%B5%D1%89%D0%B0%D0%B5%D0%BC%D1%8B%D0%B9%20%D0%BE%D0%B1%D1%8A%D0%B5%D0%BA%D1%82%2C%20%D0%B2%20%D1%82%D0%BE%D0%BC%20%D1%87%D0%B8%D1%81%D0%BB%D0%B5%20%D0%BF%D0%B0%D1%81%D0%BF%D0%BE%D1%80%D1%82%2C%20%D0%B2%D1%8B%D0%B4%D0%B5%D1%80%D0%B6%D0%BA%D1%83%20%D0%B8%D0%B7%20%D0%B3%D0%BE%D1%81%D1%83%D0%B4%D0%B0%D1%80%D1%81%D1%82%D0%B2%D0%B5%D0%BD%D0%BD%D0%BE%D0%B3%D0%BE%20%D1%80%D0%B5%D0%B5%D1%81%D1%82%D1%80%D0%B0%20%D0%BF%D1%80%D0%B0%D0%B2%20%D0%BD%D0%B0%20%D0%BD%D0%B5%D0%B4%D0%B2%D0%B8%D0%B6%D0%B8%D0%BC%D0%BE%D0%B5%20%D0%B8%D0%BC%D1%83%D1%89%D0%B5%D1%81%D1%82%D0%B2%D0%BE%20%D0%B8%20%D1%81%D0%B4%D0%B5%D0%BB%D0%BE%D0%BA%20%D1%81%20%D0%BD%D0%B8%D0%BC%D0%B8%20(%D0%B8%D0%B4%D0%B8%20%D0%B4%D1%80%D1%83%D0%B3%D0%BE%D0%B9%20%D0%B4%D0%BE%D0%BA%D1%83%D0%BC%D0%B5%D0%BD%D1%82%2C%20%D0%BF%D0%BE%D0%B4%D1%82%D0%B2%D0%B5%D1%80%D0%B6%D0%B4%D0%B0%D1%8E%D1%89%D0%B8%D0%B9%20%D0%BF%D1%80%D0%B0%D0%B2%D0%BE%20%D1%81%D0%BE%D0%B1%D1%81%D1%82%D0%B2%D0%B5%D0%BD%D0%BD%D0%BE%D1%81%D1%82%D0%B8).%20%D0%92%20%D1%81%D0%BB%D1%83%D1%87%D0%B0%D0%B5%20%D0%BE%D1%82%D0%BA%D0%B0%D0%B7%D0%B0%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F%20%D0%B2%20%D0%BF%D1%80%D0%B5%D0%B4%D0%BE%D1%81%D1%82%D0%B0%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B8%20%D1%83%D0%BA%D0%B0%D0%B7%D0%B0%D0%BD%D0%BD%D1%8B%D1%85%20%D0%B4%D0%BE%D0%BA%D1%83%D0%BC%D0%B5%D0%BD%D1%82%D0%BE%D0%B2%2C%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%B8%D0%BC%D0%B5%D0%B5%D1%82%20%D0%BF%D1%80%D0%B0%D0%B2%D0%BE%20%D0%BE%D1%82%D0%BA%D0%B0%D0%B7%D0%B0%D1%82%D1%8C%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8E%20%D0%B2%20%D1%80%D0%B0%D0%B7%D0%BC%D0%B5%D1%89%D0%B5%D0%BD%D0%B8%D0%B8%20%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%20%D0%B3%D0%B0%D1%80%D0%B0%D0%BD%D1%82%D0%B8%D1%80%D1%83%D0%B5%D1%82%2C%20%D1%87%D1%82%D0%BE%20%D0%BF%D1%80%D0%B5%D0%B4%D0%BB%D0%B0%D0%B3%D0%B0%D0%B5%D0%BC%D1%8B%D0%B5%20%D0%B8%D0%BC%20%D1%83%D1%81%D0%BB%D1%83%D0%B3%D0%B8%2C%20%D0%B2%20%D1%81%D0%BB%D1%83%D1%87%D0%B0%D0%B5%2C%20%D0%B5%D1%81%D0%BB%D0%B8%20%D0%BE%D0%BA%D0%B0%D0%B7%D0%B0%D0%BD%D0%B8%D0%B5%20%D0%B8%D1%85%20%D1%82%D1%80%D0%B5%D0%B1%D1%83%D0%B5%D1%82%20%D1%81%D0%BF%D0%B5%D1%86%D0%B8%D0%B0%D0%BB%D1%8C%D0%BD%D0%BE%D0%B3%D0%BE%20%D1%80%D0%B0%D0%B7%D1%80%D0%B5%D1%88%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%B8%D0%BB%D0%B8%20%D0%BB%D0%B8%D1%86%D0%B5%D0%BD%D0%B7%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D1%8F%2C%20%D0%B1%D1%83%D0%B4%D1%83%D1%82%20%D0%BE%D1%81%D1%83%D1%89%D0%B5%D1%81%D1%82%D0%B2%D0%BB%D0%B5%D0%BD%D1%8B%20%D0%B2%20%D1%81%D0%BE%D0%BE%D1%82%D0%B2%D0%B5%D1%82%D1%81%D1%82%D0%B2%D0%B8%D0%B8%20%D1%81%20%D1%82%D1%80%D0%B5%D0%B1%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D1%8F%D0%BC%D0%B8%20%D0%B7%D0%B0%D0%BA%D0%BE%D0%BD%D0%BE%D0%B4%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%D1%81%D1%82%D0%B2%D0%B0%20%D0%B8%20%D0%B3%D0%BE%D1%81%D1%83%D0%B4%D0%B0%D1%80%D1%81%D1%82%D0%B2%D0%B5%D0%BD%D0%BD%D1%8B%D1%85%20%D0%BE%D1%80%D0%B3%D0%B0%D0%BD%D0%BE%D0%B2%2C%20%D0%BA%D0%BE%D1%82%D0%BE%D1%80%D1%8B%D0%B5%20%D1%83%D0%BF%D0%BE%D0%BB%D0%BD%D0%BE%D0%BC%D0%BE%D1%87%D0%B5%D0%BD%D1%8B%20%D0%BE%D1%81%D1%83%D1%89%D0%B5%D1%81%D1%82%D0%B2%D0%BB%D1%8F%D1%82%D1%8C%20%D0%BA%D0%BE%D0%BD%D1%82%D1%80%D0%BE%D0%BB%D1%8C%20%D0%BD%D0%B0%D0%B4%20%D1%82%D0%B0%D0%BA%D0%BE%D0%B9%20%D0%B4%D0%B5%D1%8F%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D0%BE%D1%81%D1%82%D1%8C%D1%8E%20%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%20%D0%B3%D0%B0%D1%80%D0%B0%D0%BD%D1%82%D0%B8%D1%80%D1%83%D0%B5%D1%82%2C%20%D1%87%D1%82%D0%BE%20%D0%BF%D1%80%D0%B5%D0%B4%D0%BB%D0%B0%D0%B3%D0%B0%D0%B5%D0%BC%D1%8B%D0%B5%20%D0%B8%D0%BC%20%D1%83%D1%81%D0%BB%D1%83%D0%B3%D0%B8%2C%20%D0%B2%20%D1%81%D0%BB%D1%83%D1%87%D0%B0%D0%B5%20%D0%B5%D1%81%D0%BB%D0%B8%20%D0%BE%D0%BA%D0%B0%D0%B7%D0%B0%D0%BD%D0%B8%D0%B5%20%D0%B8%D1%85%20%D1%82%D1%80%D0%B5%D0%B1%D1%83%D0%B5%D1%82%20%D1%81%D0%BF%D0%B5%D1%86%D0%B8%D0%B0%D0%BB%D1%8C%D0%BD%D0%BE%D0%B3%D0%BE%20%D1%80%D0%B0%D0%B7%D1%80%D0%B5%D1%88%D0%B5%D0%BD%D0%B8%D1%8F%2C%20%D0%B1%D1%83%D0%B4%D1%83%D1%82%20%D0%BE%D1%81%D1%83%D1%89%D0%B5%D1%81%D1%82%D0%B2%D0%BB%D0%B5%D0%BD%D1%8B%20%D0%B2%20%D1%81%D0%BE%D0%BE%D1%82%D0%B2%D0%B5%D1%82%D1%81%D1%82%D0%B2%D0%B8%D0%B8%20%D1%81%20%D1%82%D1%80%D0%B5%D0%B1%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D1%8F%D0%BC%D0%B8%20%D0%B7%D0%B0%D0%BA%D0%BE%D0%BD%D0%BE%D0%B4%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%D1%81%D1%82%D0%B2%D0%B0%20%D1%81%D1%82%D1%80%D0%B0%D0%BD%2C%20%D1%81%D0%BF%D0%B5%D1%86%D0%B8%D0%B0%D0%BB%D1%8C%D0%BD%D1%8B%D0%B5%20%D0%BE%D1%80%D0%B3%D0%B0%D0%BD%D1%8B%20%D0%BA%D0%BE%D1%82%D0%BE%D1%80%D1%8B%D1%85%20%D0%B1%D1%83%D0%B4%D1%83%D1%82%20%D1%83%D0%BF%D0%BE%D0%BB%D0%BD%D0%BE%D0%BC%D0%BE%D1%87%D0%B5%D0%BD%D1%8B%20%D0%BE%D1%81%D1%83%D1%89%D0%B5%D1%81%D1%82%D0%B2%D0%BB%D1%8F%D1%82%D1%8C%20%D0%BD%D0%B0%D0%B4%D0%B7%D0%BE%D1%80%20%D0%B7%D0%B0%20%D1%82%D0%B0%D0%BA%D0%BE%D0%B9%20%D0%B4%D0%B5%D1%8F%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D0%BE%D1%81%D1%82%D1%8C%D1%8E%20%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%20%D0%BE%D0%B1%D1%8F%D0%B7%D0%B0%D0%BD%20%D1%82%D1%89%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D0%BE%20%D0%BF%D1%80%D0%BE%D0%B2%D0%B5%D1%80%D0%B8%D1%82%D1%8C%20%D0%B2%D1%81%D1%8E%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8E%20%D0%BE%20%D1%82%D0%BE%D0%B2%D0%B0%D1%80%D0%B0%D1%85%20%D0%B8%20%D1%83%D1%81%D0%BB%D1%83%D0%B3%D0%B0%D1%85%2C%20%D1%80%D0%B0%D0%B7%D0%BC%D0%B5%D1%89%D0%B5%D0%BD%D0%BD%D1%8B%D1%85%20%D0%B8%D0%BC%20%D0%BD%D0%B0%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B5%2C%20%D0%B8%2C%20%D0%B2%20%D1%81%D0%BB%D1%83%D1%87%D0%B0%D0%B5%20%D0%BE%D0%B1%D0%BD%D0%B0%D1%80%D1%83%D0%B6%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%BD%D0%B5%D0%B2%D0%B5%D1%80%D0%BD%D0%BE%D0%B9%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D0%B8%2C%20%D0%B4%D0%BE%D0%B1%D0%B0%D0%B2%D0%B8%D1%82%D1%8C%20%D0%BD%D0%B5%D0%BE%D0%B1%D1%85%D0%BE%D0%B4%D0%B8%D0%BC%D1%8B%D0%B5%20%D1%81%D0%B2%D0%B5%D0%B4%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%B2%20%D0%BE%D0%BF%D0%B8%D1%81%D0%B0%D0%BD%D0%B8%D0%B5%20%D1%82%D0%BE%D0%B2%D0%B0%D1%80%D0%B0%20%D0%B8%D0%BB%D0%B8%20%D1%83%D1%81%D0%BB%D1%83%D0%B3%D0%B8.%20%D0%95%D1%81%D0%BB%D0%B8%20%D1%8D%D1%82%D0%BE%20%D0%BD%D0%B5%D0%B2%D0%BE%D0%B7%D0%BC%D0%BE%D0%B6%D0%BD%D0%BE%2C%20%D0%B8%D1%81%D0%BF%D1%80%D0%B0%D0%B2%D0%B8%D1%82%D1%8C%20%D0%BD%D0%B5%D0%B2%D0%B5%D1%80%D0%BD%D1%83%D1%8E%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8E%2C%20%D0%B0%D0%BD%D0%BD%D1%83%D0%BB%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%B2%20%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5%20%D0%B8%20%D0%BF%D0%BE%D0%B2%D1%82%D0%BE%D1%80%D0%BD%D0%BE%20%D1%80%D0%B0%D0%B7%D0%BC%D0%B5%D1%81%D1%82%D0%B8%D0%B2%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8E%20%D0%BE%20%D1%82%D0%BE%D0%B2%D0%B0%D1%80%D0%B5%20%D0%B8%D0%BB%D0%B8%20%D1%83%D1%81%D0%BB%D1%83%D0%B3%D0%B5.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%A3%D1%81%D0%BB%D0%BE%D0%B2%D0%B8%D1%8F%20%D0%B4%D0%BE%D1%81%D1%82%D0%B0%D0%B2%D0%BA%D0%B8%20%D0%B4%D0%BE%D0%BB%D0%B6%D0%BD%D1%8B%20%D0%B2%D0%BA%D0%BB%D1%8E%D1%87%D0%B0%D1%82%D1%8C%D1%81%D1%8F%20%D0%B2%20%D0%BE%D0%BF%D0%B8%D1%81%D0%B0%D0%BD%D0%B8%D0%B5%20%D1%82%D0%BE%D0%B2%D0%B0%D1%80%D0%B0%2C%20%D0%B0%20%D1%83%D1%81%D0%BB%D0%BE%D0%B2%D0%B8%D1%8F%20%D0%BE%D0%BA%D0%B0%D0%B7%D0%B0%D0%BD%D0%B8%D1%8F%20%D1%83%D1%81%D0%BB%D1%83%D0%B3%20%D0%B2%20%D0%BE%D0%BF%D0%B8%D1%81%D0%B0%D0%BD%D0%B8%D0%B5%20%D1%83%D1%81%D0%BB%D1%83%D0%B3%D0%B8.%20%D0%A3%D1%81%D0%BB%D0%BE%D0%B2%D0%B8%D1%8F%20%D0%BF%D1%80%D0%BE%D0%B4%D0%B0%D0%B6%D0%B8%20%D1%82%D0%BE%D0%B2%D0%B0%D1%80%D0%B0%20%D0%B8%20%D0%BE%D0%BA%D0%B0%D0%B7%D0%B0%D0%BD%D0%B8%D1%8F%20%D1%83%D1%81%D0%BB%D1%83%D0%B3%2C%20%D1%81%D0%BE%D1%81%D1%82%D0%B0%D0%B2%D0%BB%D0%B5%D0%BD%D0%BD%D1%8B%D0%B5%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D0%B5%D0%BC%2C%20%D0%BD%D0%B5%20%D0%B4%D0%BE%D0%BB%D0%B6%D0%BD%D1%8B%20%D0%BF%D1%80%D0%BE%D1%82%D0%B8%D0%B2%D0%BE%D1%80%D0%B5%D1%87%D0%B8%D1%82%D1%8C%20%D0%BD%D0%B0%D1%81%D1%82%D0%BE%D1%8F%D1%89%D0%B5%D0%BC%D1%83%20%D0%A1%D0%BE%D0%B3%D0%BB%D0%B0%D1%88%D0%B5%D0%BD%D0%B8%D1%8E%20%D0%B8%20%D0%B4%D0%B5%D0%B9%D1%81%D1%82%D0%B2%D1%83%D1%8E%D1%89%D0%B5%D0%BC%D1%83%20%D0%B7%D0%B0%D0%BA%D0%BE%D0%BD%D0%BE%D0%B4%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%D1%81%D1%82%D0%B2%D1%83.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%20%D0%BE%D0%B1%D1%8F%D0%B7%D1%83%D0%B5%D1%82%D1%81%D1%8F%20%D0%BD%D0%B5%20%D0%BE%D0%BA%D0%B0%D0%B7%D1%8B%D0%B2%D0%B0%D1%82%D1%8C%20%D0%B0%D0%BA%D1%82%D0%B8%D0%B2%D0%BD%D1%83%D1%8E%20%D0%BF%D0%BE%D0%B4%D0%B4%D0%B5%D1%80%D0%B6%D0%BA%D1%83%20%D0%B8%20%D0%BD%D0%B5%20%D1%80%D0%B0%D1%81%D0%BF%D1%80%D0%BE%D1%81%D1%82%D1%80%D0%B0%D0%BD%D1%8F%D1%82%D1%8C%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8E%20%D0%BE%D0%B1%20%D1%83%D1%81%D0%BB%D1%83%D0%B3%D0%B0%D1%85%2C%20%D0%BF%D1%80%D0%B5%D0%B4%D0%BE%D1%81%D1%82%D0%B0%D0%B2%D0%BB%D1%8F%D0%B5%D0%BC%D1%8B%D1%85%20%D0%BA%D0%BE%D0%BD%D0%BA%D1%83%D1%80%D0%B5%D0%BD%D1%82%D0%B0%D0%BC%D0%B8%20%D0%98%D1%81%D0%BF%D0%BE%D0%BB%D0%BD%D0%B8%D1%82%D0%B5%D0%BB%D1%8F%2C%20%D0%BA%D0%B0%D0%BA-%D1%82%D0%BE%2C%20%D0%BD%D0%BE%20%D0%BD%D0%B5%20%D0%B8%D1%81%D0%BA%D0%BB%D1%8E%D1%87%D0%B8%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D0%BE%3A%3C%2Fp%3E%0A%0A%3Cp%3E%D0%98%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8E%20%D0%BE%20%D0%B4%D1%80%D1%83%D0%B3%D0%B8%D1%85%20%D0%B4%D0%BE%D1%81%D0%BA%D0%B0%D1%85%20%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B9%2C%20%D1%82%D0%BE%D1%80%D0%B3%D0%BE%D0%B2%D1%8B%D1%85%20%D0%BF%D0%BB%D0%BE%D1%89%D0%B0%D0%B4%D0%BA%D0%B0%D1%85%2C%20%D0%B8%D0%BD%D1%82%D0%B5%D1%80%D0%BD%D0%B5%D1%82-%D0%B0%D1%83%D0%BA%D1%86%D0%B8%D0%BE%D0%BD%D0%B0%D1%85%20%D0%B8%2F%D0%B8%D0%BB%D0%B8%20%D0%B8%D0%BD%D1%82%D0%B5%D1%80%D0%BD%D0%B5%D1%82-%D0%BC%D0%B0%D0%B3%D0%B0%D0%B7%D0%B8%D0%BD%D0%B0%D1%85%3B%3C%2Fp%3E%0A%0A%3Cp%3E%D0%98%D0%BD%D1%82%D0%B5%D1%80%D0%BD%D0%B5%D1%82-%D1%80%D0%B5%D1%81%D1%83%D1%80%D1%81%D0%B0%D1%85%2C%20%D0%BF%D1%80%D0%B5%D0%B4%D0%BB%D0%B0%D0%B3%D0%B0%D1%8E%D1%89%D0%B8%D1%85%20%D1%82%D0%BE%D0%B2%D0%B0%D1%80%D1%8B%20%D0%B8%20%D1%83%D1%81%D0%BB%D1%83%D0%B3%D0%B8%2C%20%D0%B7%D0%B0%D0%BF%D1%80%D0%B5%D1%89%D0%B5%D0%BD%D0%BD%D1%8B%D0%B5%20%D0%BA%20%D0%BF%D1%80%D0%BE%D0%B4%D0%B0%D0%B6%D0%B5%20%D0%BD%D0%B0%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B5.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%B8%D0%BC%D0%B5%D0%B5%D1%82%20%D0%BF%D1%80%D0%B0%D0%B2%D0%BE%20%D0%BF%D0%B5%D1%80%D0%B5%D0%BC%D0%B5%D1%81%D1%82%D0%B8%D1%82%D1%8C%2C%20%D0%B7%D0%B0%D0%B2%D0%B5%D1%80%D1%88%D0%B8%D1%82%D1%8C%20%D0%B8%D0%BB%D0%B8%20%D0%BF%D1%80%D0%BE%D0%B4%D0%BB%D0%B8%D1%82%D1%8C%20%D1%81%D1%80%D0%BE%D0%BA%20%D0%B4%D0%B5%D0%BC%D0%BE%D0%BD%D1%81%D1%82%D1%80%D0%B0%D1%86%D0%B8%D0%B8%20%D1%82%D0%BE%D0%B2%D0%B0%D1%80%D0%B0%20%D0%B8%D0%BB%D0%B8%20%D1%83%D1%81%D0%BB%D1%83%D0%B3%D0%B8%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F%20%D0%BF%D0%BE%20%D1%82%D0%B5%D1%85%D0%BD%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D0%BC%20%D0%BF%D1%80%D0%B8%D1%87%D0%B8%D0%BD%D0%B0%D0%BC%2C%20%D0%BD%D0%B0%D1%85%D0%BE%D0%B4%D1%8F%D1%89%D0%B8%D0%BC%D1%81%D1%8F%20%D0%BF%D0%BE%D0%B4%20%D0%BA%D0%BE%D0%BD%D1%82%D1%80%D0%BE%D0%BB%D0%B5%D0%BC%20%D0%B8%D0%BB%D0%B8%20%D0%B2%D0%BD%D0%B5%20%D0%BA%D0%BE%D0%BD%D1%82%D1%80%D0%BE%D0%BB%D1%8F%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D0%B8.%20%D0%A1%D0%B0%D0%B9%D1%82%20%D0%B8%D0%BC%D0%B5%D0%B5%D1%82%20%D0%BF%D1%80%D0%B0%D0%B2%D0%BE%20%D0%BF%D1%80%D0%B5%D0%BA%D1%80%D0%B0%D1%82%D0%B8%D1%82%D1%8C%20%D0%B4%D0%B5%D0%BC%D0%BE%D0%BD%D1%81%D1%82%D1%80%D0%B0%D1%86%D0%B8%D1%8E%20%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F%2C%20%D0%B5%D1%81%D0%BB%D0%B8%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%20%D0%B7%D0%B0%D1%80%D0%B5%D0%B3%D0%B8%D1%81%D1%82%D1%80%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BB%20%D1%82%D0%BE%D0%B2%D0%B0%D1%80%20%D0%B8%D0%BB%D0%B8%20%D1%83%D1%81%D0%BB%D1%83%D0%B3%D1%83%2C%20%D1%81%20%D0%BD%D0%B0%D1%80%D1%83%D1%88%D0%B5%D0%BD%D0%B8%D0%B5%D0%BC%20%D1%83%D1%81%D0%BB%D0%BE%D0%B2%D0%B8%D0%B9%20%D0%BD%D0%B0%D1%81%D1%82%D0%BE%D1%8F%D1%89%D0%B5%D0%B3%D0%BE%20%D0%A1%D0%BE%D0%B3%D0%BB%D0%B0%D1%88%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%B8%D0%BB%D0%B8%20%D0%B4%D0%B5%D0%B9%D1%81%D1%82%D0%B2%D1%83%D1%8E%D1%89%D0%B5%D0%B3%D0%BE%20%D0%B7%D0%B0%D0%BA%D0%BE%D0%BD%D0%BE%D0%B4%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%D1%81%D1%82%D0%B2%D0%B0.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8E%20%D0%B7%D0%B0%D0%BF%D1%80%D0%B5%D1%89%D0%B5%D0%BD%D0%BE%3A%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9F%D1%83%D0%B1%D0%BB%D0%B8%D0%BA%D0%BE%D0%B2%D0%B0%D1%82%D1%8C%20%D0%BE%D0%B4%D0%B8%D0%BD%D0%B0%D0%BA%D0%BE%D0%B2%D1%8B%D0%B5%20%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F%20%D1%81%20%D0%BE%D0%B4%D0%BD%D0%BE%D0%B3%D0%BE%20%D0%B8%20%D1%82%D0%BE%D0%B3%D0%BE%20%D0%B6%D0%B5%20%D0%BD%D0%BE%D0%BC%D0%B5%D1%80%D0%B0%20%D1%82%D0%B5%D0%BB%D0%B5%D1%84%D0%BE%D0%BD%D0%B0%3B%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9F%D1%83%D0%B1%D0%BB%D0%B8%D0%BA%D0%BE%D0%B2%D0%B0%D1%82%D1%8C%20%D1%81%D1%85%D0%BE%D0%B6%D0%B8%D0%B5%20%D0%BF%D0%BE%20%D1%81%D0%BE%D0%B4%D0%B5%D1%80%D0%B6%D0%B0%D0%BD%D0%B8%D1%8E%20%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F%2C%20%D0%B3%D0%B4%D0%B5%20%D0%BE%D1%87%D0%B5%D0%B2%D0%B8%D0%B4%D0%BD%D0%BE%2C%20%D1%87%D1%82%D0%BE%20%D1%80%D0%B5%D1%87%D1%8C%20%D0%B8%D0%B4%D0%B5%D1%82%20%D0%BE%D0%B1%20%D0%BE%D0%B4%D0%BD%D0%BE%D0%BC%20%D0%B8%20%D1%82%D0%BE%D0%BC%20%D0%B6%D0%B5%20%D0%BF%D1%80%D0%B5%D0%B4%D0%BB%D0%BE%D0%B6%D0%B5%D0%BD%D0%B8%D0%B8%3B%3C%2Fp%3E%0A%0A%3Cp%3E%D0%94%D1%83%D0%B1%D0%BB%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D1%82%D1%8C%20%D0%BE%D0%B4%D0%B8%D0%BD%D0%B0%D0%BA%D0%BE%D0%B2%D1%8B%D0%B5%20%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F%20%D1%81%20%D1%80%D0%B0%D0%B7%D0%BD%D1%8B%D1%85%20%D1%82%D0%B5%D0%BB%D0%B5%D1%84%D0%BE%D0%BD%D0%BD%D1%8B%D1%85%20%D0%BD%D0%BE%D0%BC%D0%B5%D1%80%D0%BE%D0%B2%3B%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9F%D1%83%D0%B1%D0%BB%D0%B8%D0%BA%D0%BE%D0%B2%D0%B0%D1%82%D1%8C%20%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%B2%20%D1%80%D1%83%D0%B1%D1%80%D0%B8%D0%BA%D0%B5%2C%20%D0%BA%D0%BE%D1%82%D0%BE%D1%80%D0%B0%D1%8F%20%D0%BD%D0%B5%20%D1%81%D0%BE%D0%BE%D1%82%D0%B2%D0%B5%D1%82%D1%81%D1%82%D0%B2%D1%83%D0%B5%D1%82%20%D1%81%D0%BE%D0%B4%D0%B5%D1%80%D0%B6%D0%B0%D0%BD%D0%B8%D1%8E%20%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F%3B%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9F%D1%83%D0%B1%D0%BB%D0%B8%D0%BA%D0%BE%D0%B2%D0%B0%D1%82%D1%8C%20%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F%2C%20%D0%B2%20%D0%B7%D0%B0%D0%B3%D0%BE%D0%BB%D0%BE%D0%B2%D0%BA%D0%B5%20%D0%BA%D0%BE%D1%82%D0%BE%D1%80%D1%8B%D1%85%20%D1%81%D0%BE%D0%B4%D0%B5%D1%80%D0%B6%D0%B0%D1%82%D1%81%D1%8F%20%D0%BF%D0%BE%D0%B2%D1%82%D0%BE%D1%80%D1%8F%D1%8E%D1%89%D0%B8%D0%B5%D1%81%D1%8F%20%D0%B7%D0%BD%D0%B0%D0%BA%D0%B8%20%D0%BF%D1%83%D0%BD%D0%BA%D1%82%D1%83%D0%B0%D1%86%D0%B8%D0%B8%20%D0%B8%2F%D0%B8%D0%BB%D0%B8%20%D0%BD%D0%B5%D0%B1%D1%83%D0%BA%D0%B2%D0%B5%D0%BD%D0%BD%D1%8B%D0%B5%20%D1%81%D0%B8%D0%BC%D0%B2%D0%BE%D0%BB%D1%8B%3B%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9F%D1%83%D0%B1%D0%BB%D0%B8%D0%BA%D0%BE%D0%B2%D0%B0%D1%82%D1%8C%20%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F%2C%20%D0%BE%D0%BF%D0%B8%D1%81%D0%B0%D0%BD%D0%B8%D0%B5%20%D0%B8%2F%D0%B8%D0%BB%D0%B8%20%D0%B7%D0%B0%D0%B3%D0%BE%D0%BB%D0%BE%D0%B2%D0%BE%D0%BA%2F%D1%84%D0%BE%D1%82%D0%BE%D0%B3%D1%80%D0%B0%D1%84%D0%B8%D0%B8%20%D0%BA%D0%BE%D1%82%D0%BE%D1%80%D1%8B%D1%85%20%D1%8F%D0%B2%D0%BB%D1%8F%D1%8E%D1%82%D1%81%D1%8F%20%D0%BD%D0%B5%D1%81%D0%B2%D1%8F%D0%B7%D0%B0%D0%BD%D0%BD%D1%8B%D0%BC%D0%B8%2C%20%D0%BD%D0%B5%D1%87%D0%B8%D1%82%D0%B0%D0%B5%D0%BC%D1%8B%D0%BC%D0%B8%3B%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9F%D1%83%D0%B1%D0%BB%D0%B8%D0%BA%D0%BE%D0%B2%D0%B0%D1%82%D1%8C%20%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F%20%D1%81%20%D0%BF%D1%80%D0%B5%D0%B4%D0%BB%D0%BE%D0%B6%D0%B5%D0%BD%D0%B8%D0%B5%D0%BC%20%D0%BD%D0%B5%D1%81%D0%BA%D0%BE%D0%BB%D1%8C%D0%BA%D0%B8%D1%85%20%D1%82%D0%BE%D0%B2%D0%B0%D1%80%D0%BE%D0%B2%20%D0%B8%20%D1%83%D1%81%D0%BB%D1%83%D0%B3%20%D0%BE%D0%B4%D0%BD%D0%BE%D0%B2%D1%80%D0%B5%D0%BC%D0%B5%D0%BD%D0%BD%D0%BE%3B%3C%2Fp%3E%0A%0A%3Cp%3E%D0%92%D1%81%D1%82%D0%B0%D0%B2%D0%BB%D1%8F%D1%82%D1%8C%20%D0%B2%20%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B8%20%D1%81%D1%81%D1%8B%D0%BB%D0%BA%D0%B8%20%D0%BD%D0%B0%20%D1%80%D0%B5%D1%81%D1%83%D1%80%D1%81%D1%8B%2C%20%D0%BA%D0%BE%D1%82%D0%BE%D1%80%D1%8B%D0%B5%20%D1%81%D0%BE%D0%B4%D0%B5%D1%80%D0%B6%D0%B0%D1%82%20%D0%B2%D1%80%D0%B5%D0%B4%D0%BE%D0%BD%D0%BE%D1%81%D0%BD%D1%8B%D0%B5%20%D1%8D%D0%BB%D0%B5%D0%BC%D0%B5%D0%BD%D1%82%D1%8B%20%D0%BB%D0%B8%D0%B1%D0%BE%20%D1%81%D1%81%D1%8B%D0%BB%D0%BA%D0%B8%20%D0%BD%D0%B0%20%D0%B3%D0%BB%D0%B0%D0%B2%D0%BD%D1%83%D1%8E%20%D1%81%D1%82%D1%80%D0%B0%D0%BD%D0%B8%D1%86%D1%83%20%D1%81%D0%B0%D0%B9%D1%82%D0%B0%3B%3C%2Fp%3E%0A%0A%3Cp%3E%D0%A0%D0%B0%D0%B7%D0%BC%D0%B5%D1%89%D0%B0%D1%82%D1%8C%20%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5%20%D0%BE%20%D1%82%D0%BE%D0%B2%D0%B0%D1%80%D0%B5%20%D0%B8%D0%BB%D0%B8%20%D1%83%D1%81%D0%BB%D1%83%D0%B3%D0%B5%2C%20%D0%B5%D1%81%D0%BB%D0%B8%20%D1%82%D0%B0%D0%BA%D0%BE%D0%B5%20%D1%80%D0%B0%D0%B7%D0%BC%D0%B5%D1%89%D0%B5%D0%BD%D0%B8%D0%B5%20%D0%BC%D0%BE%D0%B6%D0%B5%D1%82%20%D0%BF%D1%80%D0%B8%D0%B2%D0%B5%D1%81%D1%82%D0%B8%20%D0%BA%20%D0%BD%D0%B0%D1%80%D1%83%D1%88%D0%B5%D0%BD%D0%B8%D1%8E%20%D0%BF%D1%80%D0%B0%D0%B2%D0%BE%D0%BF%D1%80%D0%B8%D0%BC%D0%B5%D0%BD%D0%B8%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D0%BE%D0%B3%D0%BE%20%D0%B7%D0%B0%D0%BA%D0%BE%D0%BD%D0%BE%D0%B4%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%D1%81%D1%82%D0%B2%D0%B0%3B%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9E%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%B4%D0%BE%D0%BB%D0%B6%D0%BD%D1%8B%20%D1%81%D0%BE%D0%BE%D1%82%D0%B2%D0%B5%D1%82%D1%81%D1%82%D0%B2%D0%BE%D0%B2%D0%B0%D1%82%D1%8C%20%D0%B3%D0%B5%D0%BE%D0%B3%D1%80%D0%B0%D1%84%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%BE%D0%B9%20%D0%BE%D0%B1%D0%BB%D0%B0%D1%81%D1%82%D0%B8%20%D0%B8%20%D0%B3%D0%BE%D1%80%D0%BE%D0%B4%D1%83%2C%20%D0%B2%D1%8B%D0%B1%D1%80%D0%B0%D0%BD%D0%BD%D0%BE%D0%B9%20%D0%B2%20%D1%81%D0%BE%D0%BE%D1%82%D0%B2%D0%B5%D1%82%D1%81%D1%82%D0%B2%D1%83%D1%8E%D1%89%D0%B8%D1%85%20%D1%84%D1%83%D0%BD%D0%BA%D1%86%D0%B8%D0%BE%D0%BD%D0%B0%D0%BB%D1%8C%D0%BD%D1%8B%D1%85%20%D0%BD%D0%B0%D1%81%D1%82%D1%80%D0%BE%D0%B9%D0%BA%D0%B0%D1%85%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B0.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%A0%D0%B0%D0%B7%D1%80%D0%B5%D1%88%D0%B0%D0%B5%D1%82%D1%81%D1%8F%20%D1%80%D0%B0%D0%B7%D0%BC%D0%B5%D1%81%D1%82%D0%B8%D1%82%D1%8C%20%D0%BE%D0%B4%D0%BD%D0%BE%20%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5%20%D0%BA%D0%B0%D1%81%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D0%BE%20%D0%BE%D0%B4%D0%BD%D0%BE%D0%B3%D0%BE%20%D0%BA%D0%BE%D0%BD%D0%BA%D1%80%D0%B5%D1%82%D0%BD%D0%BE%D0%B3%D0%BE%20%D0%BF%D1%80%D0%B5%D0%B4%D0%BC%D0%B5%D1%82%D0%B0%2C%20%D0%BE%D0%B1%D1%8A%D0%B5%D0%BA%D1%82%D0%B0%20%D0%B8%D0%BC%D1%83%D1%89%D0%B5%D1%81%D1%82%D0%B2%D0%B0%2C%20%D0%B2%D0%B0%D0%BA%D0%B0%D0%BD%D1%81%D0%B8%D0%B8%2C%20%D1%83%D1%81%D0%BB%D1%83%D0%B3%D0%B8.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9E%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%BC%D0%BE%D0%B3%D1%83%D1%82%20%D0%BF%D1%80%D0%BE%D1%85%D0%BE%D0%B4%D0%B8%D1%82%D1%8C%20%D0%B2%D1%8B%D0%B1%D0%BE%D1%80%D0%BE%D1%87%D0%BD%D1%83%D1%8E%20%D0%BF%D0%BE%D1%81%D1%82%20%D0%B8%D0%BB%D0%B8%20%D0%BF%D1%80%D0%B5%D0%BC%D0%BE%D0%B4%D0%B5%D1%80%D0%B0%D1%86%D0%B8%D1%8E%20%D0%BF%D1%80%D0%B5%D0%B4%D1%81%D1%82%D0%B0%D0%B2%D0%B8%D1%82%D0%B5%D0%BB%D1%8F%D0%BC%D0%B8%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D0%B8.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%97%D0%B0%D0%BF%D1%80%D0%B5%D1%89%D0%B0%D0%B5%D1%82%D1%81%D1%8F%20%D1%80%D0%B0%D0%B7%D0%BC%D0%B5%D1%89%D0%B0%D1%82%D1%8C%20%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F%2C%20%D1%80%D0%B5%D0%BA%D0%BB%D0%B0%D0%BC%D0%B8%D1%80%D1%83%D1%8E%D1%89%D0%B8%D0%B5%20%D0%BF%D1%80%D0%BE%D0%B4%D0%B0%D0%B6%D1%83%3A%3C%2Fp%3E%0A%0A%3Cp%3E%D1%81%D0%BF%D0%B8%D1%80%D1%82%D0%BD%D1%8B%D1%85%20%D0%BD%D0%B0%D0%BF%D0%B8%D1%82%D0%BA%D0%BE%D0%B2%3B%3C%2Fp%3E%0A%0A%3Cp%3E%D1%81%D0%B8%D0%B3%D0%B0%D1%80%D0%B5%D1%82%20%D0%B8%20%D1%82%D0%B0%D0%B1%D0%B0%D1%87%D0%BD%D0%BE%D0%B9%20%D0%BF%D1%80%D0%BE%D0%B4%D1%83%D0%BA%D1%86%D0%B8%D0%B8%3B%3C%2Fp%3E%0A%0A%3Cp%3E%D0%BD%D0%B0%D1%80%D0%BA%D0%BE%D1%82%D0%B8%D0%BA%D0%BE%D0%B2%3B%3C%2Fp%3E%0A%0A%3Cp%3E%D0%BF%D0%BE%D1%80%D0%BD%D0%BE%D0%B3%D1%80%D0%B0%D1%84%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D1%85%20%D0%BC%D0%B0%D1%82%D0%B5%D1%80%D0%B8%D0%B0%D0%BB%D0%BE%D0%B2%20%D0%B8%D0%BB%D0%B8%20%D0%BF%D1%80%D0%B5%D0%B4%D0%BC%D0%B5%D1%82%D0%BE%D0%B2%3B%3C%2Fp%3E%0A%0A%3Cp%3E%D1%84%D0%B0%D1%80%D0%BC%D0%B0%D0%BA%D0%BE%D0%BB%D0%BE%D0%B3%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D1%85%20%D0%BF%D1%80%D0%BE%D0%B4%D1%83%D0%BA%D1%82%D0%BE%D0%B2%2C%20%D0%BC%D0%B5%D0%B4%D0%B8%D0%BA%D0%B0%D0%BC%D0%B5%D0%BD%D1%82%D0%BE%D0%B2%2C%20%D0%BD%D0%B0%D1%80%D0%BA%D0%BE%D1%82%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D1%85%20%D0%B2%D0%B5%D1%89%D0%B5%D1%81%D1%82%D0%B2%20%D0%B8%20%D0%BF%D1%80%D0%B5%D0%BA%D1%83%D1%80%D1%81%D0%BE%D1%80%D0%BE%D0%B2%3B%3C%2Fp%3E%0A%0A%3Cp%3E%D1%83%D0%BA%D1%80%D0%B0%D0%B4%D0%B5%D0%BD%D0%BD%D1%8B%D1%85%2C%20%D0%BF%D0%BE%D0%BB%D1%83%D1%87%D0%B5%D0%BD%D0%BD%D1%8B%D1%85%20%D0%BD%D0%B5%20%D0%B7%D0%B0%D0%BA%D0%BE%D0%BD%D0%BD%D1%8B%D0%BC%20%D1%81%D0%BF%D0%BE%D1%81%D0%BE%D0%B1%D0%BE%D0%BC%20%D1%82%D0%BE%D0%B2%D0%B0%D1%80%D0%BE%D0%B2%3B%3C%2Fp%3E%0A%0A%3Cp%3E%D0%BF%D1%80%D0%B5%D0%B4%D0%BC%D0%B5%D1%82%D0%BE%D0%B2%2C%20%D0%BF%D1%80%D0%B5%D0%B4%D1%81%D1%82%D0%B0%D0%B2%D0%BB%D1%8F%D1%8E%D1%89%D0%B8%D1%85%20%D0%BE%D0%BF%D0%B0%D1%81%D0%BD%D0%BE%D1%81%D1%82%D1%8C%20%D0%B4%D0%BB%D1%8F%20%D0%B6%D0%B8%D0%B7%D0%BD%D0%B8%20%D0%B8%20%D0%B7%D0%B4%D0%BE%D1%80%D0%BE%D0%B2%D1%8C%D1%8F%3B%3C%2Fp%3E%0A%0A%3Cp%3E%D0%BD%D0%B5%D1%81%D1%83%D1%89%D0%B5%D1%81%D1%82%D0%B2%D1%83%D1%8E%D1%89%D0%B8%D1%85%20%D1%82%D0%BE%D0%B2%D0%B0%D1%80%D0%BE%D0%B2%3B%3C%2Fp%3E%0A%0A%3Cp%3E%D1%87%D0%B5%D0%BB%D0%BE%D0%B2%D0%B5%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D1%85%20%D0%BE%D1%80%D0%B3%D0%B0%D0%BD%D0%BE%D0%B2%20%D0%B8%20%D0%BE%D1%80%D0%B3%D0%B0%D0%BD%D0%BE%D0%B2%20%D0%B6%D0%B8%D0%B2%D0%BE%D1%82%D0%BD%D1%8B%D1%85%3B%3C%2Fp%3E%0A%0A%3Cp%3E%D1%81%D0%BF%D0%B5%D1%86%D0%B8%D0%B0%D0%BB%D1%8C%D0%BD%D1%8B%D1%85%20%D1%82%D0%B5%D1%85%D0%BD%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D1%85%20%D1%81%D1%80%D0%B5%D0%B4%D1%81%D1%82%D0%B2%20%D0%BD%D0%B5%D0%B3%D0%BB%D0%B0%D1%81%D0%BD%D0%BE%D0%B3%D0%BE%20%D0%BF%D0%BE%D0%BB%D1%83%D1%87%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D0%B8%3B%3C%2Fp%3E%0A%0A%3Cp%3E%D0%B3%D0%BE%D1%81%D1%83%D0%B4%D0%B0%D1%80%D1%81%D1%82%D0%B2%D0%B5%D0%BD%D0%BD%D1%8B%D1%85%20%D0%BD%D0%B0%D0%B3%D1%80%D0%B0%D0%B4%3B%20%D0%BF%D0%B5%D1%80%D1%81%D0%BE%D0%BD%D0%B0%D0%BB%D1%8C%D0%BD%D1%8B%D1%85%20%D0%B4%D0%BE%D0%BA%D1%83%D0%BC%D0%B5%D0%BD%D1%82%D0%BE%D0%B2%2C%20%D0%B0%20%D1%82%D0%B0%D0%BA%D0%B6%D0%B5%20%D0%B1%D0%BB%D0%B0%D0%BD%D0%BA%D0%BE%D0%B2%20%D1%8D%D1%82%D0%B8%D1%85%20%D0%B4%D0%BE%D0%BA%D1%83%D0%BC%D0%B5%D0%BD%D1%82%D0%BE%D0%B2%3B%3C%2Fp%3E%0A%0A%3Cp%3E%D0%B1%D0%B0%D0%B7%20%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D1%85%3B%3C%2Fp%3E%0A%0A%3Cp%3E%D0%BE%D0%B3%D0%BD%D0%B5%D1%81%D1%82%D1%80%D0%B5%D0%BB%D1%8C%D0%BD%D0%BE%D0%B3%D0%BE%2C%20%D1%85%D0%BE%D0%BB%D0%BE%D0%B4%D0%BD%D0%BE%D0%B3%D0%BE%2C%20%D1%82%D1%80%D0%B0%D0%B2%D0%BC%D0%B0%D1%82%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%BE%D0%B3%D0%BE%20%D0%BE%D1%80%D1%83%D0%B6%D0%B8%D1%8F%2C%20%D0%B0%20%D1%82%D0%B0%D0%BA%D0%B6%D0%B5%20%D0%B1%D0%BE%D0%B5%D0%BF%D1%80%D0%B8%D0%BF%D0%B0%D1%81%D0%BE%D0%B2%20%D0%B8%20%D0%BA%D0%BE%D0%BC%D0%BF%D0%BB%D0%B5%D0%BA%D1%82%D1%83%D1%8E%D1%89%D0%B8%D1%85%20%D0%BA%20%D0%BD%D0%B8%D0%BC%3B%3C%2Fp%3E%0A%0A%3Cp%3E%D1%81%D0%BF%D0%B5%D1%86%D0%B8%D0%B0%D0%BB%D1%8C%D0%BD%D1%8B%D1%85%20%D1%81%D1%80%D0%B5%D0%B4%D1%81%D1%82%D0%B2%20%D0%B0%D0%BA%D1%82%D0%B8%D0%B2%D0%BD%D0%BE%D0%B9%20%D0%BE%D0%B1%D0%BE%D1%80%D0%BE%D0%BD%D1%8B%2C%20%D0%BF%D1%80%D0%B8%D0%BC%D0%B5%D0%BD%D1%8F%D0%B5%D0%BC%D1%8B%D1%85%20%D0%BF%D1%80%D0%B0%D0%B2%D0%BE%D0%BE%D1%85%D1%80%D0%B0%D0%BD%D0%B8%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D1%8B%D0%BC%D0%B8%20%D0%BE%D1%80%D0%B3%D0%B0%D0%BD%D0%B0%D0%BC%D0%B8%3B%20%D0%BA%D0%BB%D1%8B%D0%BA%D0%BE%D0%B2%20%D0%BC%D0%BE%D1%80%D0%B6%D0%B0%2C%20%D0%B1%D0%B8%D0%B2%D0%BD%D0%B5%D0%B9%20%D1%81%D0%BB%D0%BE%D0%BD%D0%B0%20%D0%B8%20%D0%BC%D0%B0%D0%BC%D0%BE%D0%BD%D1%82%D0%B0%20%D0%BD%D0%B5%20%D0%B2%20%D0%B8%D0%B7%D0%B4%D0%B5%D0%BB%D0%B8%D0%B8%2C%20%D0%B0%20%D1%82%D0%B0%D0%BA%D0%B6%D0%B5%20%D0%B4%D1%80%D0%B0%D0%B3%D0%BE%D1%86%D0%B5%D0%BD%D0%BD%D1%8B%D1%85%20%D0%BC%D0%B5%D1%82%D0%B0%D0%BB%D0%BB%D0%BE%D0%B2%20%D0%B8%20%D0%B4%D1%80%D0%B0%D0%B3%D0%BE%D1%86%D0%B5%D0%BD%D0%BD%D1%8B%D1%85%20%D0%BA%D0%B0%D0%BC%D0%BD%D0%B5%D0%B9%20%D0%BD%D0%B5%20%D0%B2%20%D0%B8%D0%B7%D0%B4%D0%B5%D0%BB%D0%B8%D0%B8%3B%3C%2Fp%3E%0A%0A%3Cp%3E%D1%80%D0%B5%D0%B4%D0%BA%D0%B8%D1%85%20%D0%B8%20%D0%B7%D0%B0%D0%BF%D1%80%D0%B5%D1%89%D0%B5%D0%BD%D0%BD%D1%8B%D1%85%20%D0%BA%20%D0%BF%D1%80%D0%BE%D0%B4%D0%B0%D0%B6%D0%B5%20%D0%B6%D0%B8%D0%B2%D0%BE%D1%82%D0%BD%D1%8B%D1%85%2C%20%D0%BB%D1%8E%D0%B1%D1%8B%D1%85%20%D0%B4%D1%80%D1%83%D0%B3%D0%B8%D1%85%20%D0%B7%D0%B0%D0%BF%D1%80%D0%B5%D1%89%D1%91%D0%BD%D0%BD%D1%8B%D1%85%20%D1%81%D0%BE%D0%BE%D1%82%D0%B2%D0%B5%D1%82%D1%81%D1%82%D0%B2%D1%83%D1%8E%D1%89%D0%B8%D0%BC%20%D0%B7%D0%B0%D0%BA%D0%BE%D0%BD%D0%BE%D0%B4%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%D1%81%D1%82%D0%B2%D0%BE%D0%BC%20%D1%82%D0%BE%D0%B2%D0%B0%D1%80%D0%BE%D0%B2%20%D0%B8%20%D1%83%D1%81%D0%BB%D1%83%D0%B3.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%B2%D0%BF%D1%80%D0%B0%D0%B2%D0%B5%20%D1%83%D0%B4%D0%B0%D0%BB%D1%8F%D1%82%D1%8C%20%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%BF%D0%BE%20%D1%82%D1%80%D0%B5%D0%B1%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D1%8E%20%D0%BF%D1%80%D0%B0%D0%B2%D0%BE%D0%BE%D0%B1%D0%BB%D0%B0%D0%B4%D0%B0%D1%82%D0%B5%D0%BB%D1%8F%20%D0%B8%D0%BB%D0%B8%20%D0%BA%D0%BE%D0%BC%D0%BF%D0%B5%D1%82%D0%B5%D0%BD%D1%82%D0%BD%D1%8B%D1%85%20%D0%B3%D0%BE%D1%81%D1%83%D0%B4%D0%B0%D1%80%D1%81%D1%82%D0%B2%D0%B5%D0%BD%D0%BD%D1%8B%D1%85%20%D0%BE%D1%80%D0%B3%D0%B0%D0%BD%D0%BE%D0%B2.%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D1%8F%20%D1%82%D0%B0%D0%BA%D0%B6%D0%B5%20%D0%BE%D1%81%D1%82%D0%B0%D0%B2%D0%BB%D1%8F%D0%B5%D1%82%20%D0%B7%D0%B0%20%D1%81%D0%BE%D0%B1%D0%BE%D0%B9%20%D0%BF%D1%80%D0%B0%D0%B2%D0%BE%20%D1%83%D0%B4%D0%B0%D0%BB%D1%8F%D1%82%D1%8C%20%D0%BB%D1%8E%D0%B1%D1%8B%D0%B5%20%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F%2C%20%D0%BA%D0%BE%D1%82%D0%BE%D1%80%D1%8B%D0%B5%20%D0%BF%D0%BE%20%D0%B5%D0%B5%20%D0%BC%D0%BD%D0%B5%D0%BD%D0%B8%D1%8E%20%D0%BD%D0%B5%20%D1%81%D0%BE%D0%BE%D1%82%D0%B2%D0%B5%D1%82%D1%81%D1%82%D0%B2%D1%83%D1%8E%D1%82%20%D0%BF%D1%80%D0%B8%D0%BD%D1%86%D0%B8%D0%BF%D0%B0%D0%BC%20%D0%B8%20%D1%83%D1%81%D1%82%D0%BE%D1%8F%D0%BC%20%D0%BE%D0%B1%D1%89%D0%B5%D1%81%D1%82%D0%B2%D0%B5%D0%BD%D0%BD%D0%BE%D0%B9%20%D0%BC%D0%BE%D1%80%D0%B0%D0%BB%D0%B8.%20%D0%A0%D0%B5%D1%88%D0%B5%D0%BD%D0%B8%D0%B5%20%D0%BE%D0%B1%20%D1%83%D0%B4%D0%B0%D0%BB%D0%B5%D0%BD%D0%B8%D0%B8%20%D1%8F%D0%B2%D0%BB%D1%8F%D0%B5%D1%82%D1%81%D1%8F%20%D0%BE%D0%BA%D0%BE%D0%BD%D1%87%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D1%8B%D0%BC%20%D0%B8%20%D0%BE%D0%B1%D0%B6%D0%B0%D0%BB%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D1%8E%20%D0%BD%D0%B5%20%D0%BF%D0%BE%D0%B4%D0%BB%D0%B5%D0%B6%D0%B8%D1%82.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%90%D0%B4%D0%BC%D0%B8%D0%BD%D0%B8%D1%81%D1%82%D1%80%D0%B0%D1%86%D0%B8%D1%8F%20%D0%B8%20%D0%BC%D0%BE%D0%B4%D0%B5%D1%80%D0%B0%D1%82%D0%BE%D1%80%D1%8B%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B0%20(%D0%BF%D1%80%D0%B5%D0%B4%D1%81%D1%82%D0%B0%D0%B2%D0%B8%D1%82%D0%B5%D0%BB%D0%B8%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D0%B8)%20%D0%B2%D0%BF%D1%80%D0%B0%D0%B2%D0%B5%3A%3C%2Fp%3E%0A%0A%3Cp%3E%D0%92%D0%BD%D0%BE%D1%81%D0%B8%D1%82%D1%8C%20%D0%B2%20%D1%82%D0%B5%D0%BA%D1%81%D1%82%20%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F%20%D0%BF%D1%80%D0%B0%D0%B2%D0%BA%D0%B8%2C%20%D0%BA%D0%B0%D1%81%D0%B0%D1%8E%D1%89%D0%B8%D0%B5%D1%81%D1%8F%20%D0%BE%D1%80%D1%84%D0%BE%D0%B3%D1%80%D0%B0%D1%84%D0%B8%D0%B8%20%D0%B8%20%D0%BF%D1%83%D0%BD%D0%BA%D1%82%D1%83%D0%B0%D1%86%D0%B8%D0%B8%2C%20%D0%BD%D0%B5%20%D0%B2%D0%BB%D0%B8%D1%8F%D1%8E%D1%89%D0%B8%D0%B5%20%D0%BD%D0%B0%20%D0%BE%D0%B1%D1%89%D0%B8%D0%B9%20%D1%81%D0%BC%D1%8B%D1%81%D0%BB%20%D1%81%D0%BE%D0%B4%D0%B5%D1%80%D0%B6%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F%3B%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9F%D0%B5%D1%80%D0%B5%D0%BD%D0%BE%D1%81%D0%B8%D1%82%D1%8C%20%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%B2%20%D0%B4%D1%80%D1%83%D0%B3%D0%B8%D0%B5%20%D1%80%D1%83%D0%B1%D1%80%D0%B8%D0%BA%D0%B8%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B0%20%D0%B2%20%D1%81%D0%BB%D1%83%D1%87%D0%B0%D0%B5%20%D0%B2%D1%8B%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%B1%D0%BE%D0%BB%D0%B5%D0%B5%20%D0%BF%D0%BE%D0%B4%D1%85%D0%BE%D0%B4%D1%8F%D1%89%D0%B5%D0%B9%20%D1%80%D1%83%D0%B1%D1%80%D0%B8%D0%BA%D0%B8%20%D0%B4%D0%BB%D1%8F%20%D0%B8%D1%85%20%D1%80%D0%B0%D0%B7%D0%BC%D0%B5%D1%89%D0%B5%D0%BD%D0%B8%D1%8F%3B%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9E%D1%82%D0%BA%D0%B0%D0%B7%D0%B0%D1%82%D1%8C%20%D0%B2%20%D0%BF%D1%83%D0%B1%D0%BB%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D0%B8%20%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B9%2C%20%D0%B5%D1%81%D0%BB%D0%B8%20%D0%BE%D0%BD%D0%B8%20%D0%BD%D0%B5%20%D1%81%D0%BE%D0%BE%D1%82%D0%B2%D0%B5%D1%82%D1%81%D1%82%D0%B2%D1%83%D1%8E%D1%82%20%D1%82%D0%B5%D0%BC%D0%B0%D1%82%D0%B8%D0%BA%D0%B5%20%D0%B2%D1%8B%D0%B1%D1%80%D0%B0%D0%BD%D0%BD%D1%8B%D1%85%20%D1%80%D0%B0%D0%B7%D0%B4%D0%B5%D0%BB%D0%BE%D0%B2%2C%20%D0%BB%D0%B8%D0%B1%D0%BE%20%D0%BD%D0%B0%D1%80%D1%83%D1%88%D0%B0%D1%8E%D1%82%20%D0%BD%D0%B0%D1%81%D1%82%D0%BE%D1%8F%D1%89%D0%B5%D0%B5%20%D0%A1%D0%BE%D0%B3%D0%BB%D0%B0%D1%88%D0%B5%D0%BD%D0%B8%D0%B5%2C%20%D0%B0%20%D1%82%D0%B0%D0%BA%D0%B6%D0%B5%20%D0%BE%D0%B3%D1%80%D0%B0%D0%BD%D0%B8%D1%87%D0%B8%D0%B2%D0%B0%D1%82%D1%8C%20%D0%BA%D0%BE%D0%BB%D0%B8%D1%87%D0%B5%D1%81%D1%82%D0%B2%D0%BE%20%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B9%20%D0%BE%D1%82%20%D0%BE%D0%B4%D0%BD%D0%BE%D0%B3%D0%BE%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F%20%D0%B2%20%D1%86%D0%B5%D0%BB%D1%8F%D1%85%20%D1%83%D0%B4%D0%BE%D0%B1%D1%81%D1%82%D0%B2%D0%B0%20%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%A1%D0%B0%D0%B9%D1%82%D0%BE%D0%BC%20%D0%B1%D0%B5%D0%B7%20%D0%BE%D0%B1%D1%8A%D1%8F%D1%81%D0%BD%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%BF%D1%80%D0%B8%D1%87%D0%B8%D0%BD.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9D%D0%B5%20%D0%B4%D0%BE%D0%BF%D1%83%D1%81%D0%BA%D0%B0%D0%B5%D1%82%D1%81%D1%8F%20%D1%83%D0%BA%D0%B0%D0%B7%D0%B0%D0%BD%D0%B8%D0%B5%20%D0%BD%D0%B5%D0%BA%D0%BE%D1%80%D1%80%D0%B5%D0%BA%D1%82%D0%BD%D1%8B%D1%85%20%D1%85%D0%B0%D1%80%D0%B0%D0%BA%D1%82%D0%B5%D1%80%D0%B8%D1%81%D1%82%D0%B8%D0%BA%20%D0%BF%D1%80%D0%B5%D0%B4%D0%BC%D0%B5%D1%82%D0%B0%20%D0%BF%D1%80%D0%B5%D0%B4%D0%BB%D0%BE%D0%B6%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%B2%20%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B8%2C%20%D0%B2%20%D1%82%D0%BE%D0%BC%20%D1%87%D0%B8%D1%81%D0%BB%D0%B5%20%D1%83%D0%BA%D0%B0%D0%B7%D0%B0%D0%BD%D0%B8%D0%B5%20%D1%86%D0%B5%D0%BD%D1%8B%2C%20%D0%BD%D0%B5%20%D1%81%D0%BE%D0%BE%D1%82%D0%B2%D0%B5%D1%82%D1%81%D1%82%D0%B2%D1%83%D1%8E%D1%89%D0%B5%D0%B9%20%D1%84%D0%B0%D0%BA%D1%82%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%BE%D0%B9%20%D1%86%D0%B5%D0%BD%D0%B5%20%D1%80%D0%B5%D0%B0%D0%BB%D0%B8%D0%B7%D0%B0%D1%86%D0%B8%D0%B8%20%D1%82%D0%BE%D0%B2%D0%B0%D1%80%D0%B0%20%D0%B8%D0%BB%D0%B8%20%D1%83%D1%81%D0%BB%D1%83%D0%B3%D0%B8.%20%D0%A6%D0%B5%D0%BD%D0%B0%20%D0%B4%D0%BE%D0%BB%D0%B6%D0%BD%D0%B0%20%D0%B1%D1%8B%D1%82%D1%8C%20%D1%83%D0%BA%D0%B0%D0%B7%D0%B0%D0%BD%D0%B0%20%D0%BF%D0%BE%D0%BB%D0%BD%D0%BE%D1%81%D1%82%D1%8C%D1%8E%20%D0%B7%D0%B0%20%D0%B2%D0%B5%D1%81%D1%8C%20%D1%82%D0%BE%D0%B2%D0%B0%D1%80%20%D0%B8%D0%BB%D0%B8%20%D1%83%D1%81%D0%BB%D1%83%D0%B3%D1%83.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%97%D0%B0%D0%B3%D0%BE%D0%BB%D0%BE%D0%B2%D0%BE%D0%BA%20%D1%80%D0%B0%D0%B7%D0%BC%D0%B5%D1%89%D0%B0%D0%B5%D0%BC%D0%BE%D0%B3%D0%BE%20%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%B4%D0%BE%D0%BB%D0%B6%D0%B5%D0%BD%20%D1%81%D0%BE%D0%BE%D1%82%D0%B2%D0%B5%D1%82%D1%81%D1%82%D0%B2%D0%BE%D0%B2%D0%B0%D1%82%D1%8C%20%D1%82%D0%B5%D0%BA%D1%81%D1%82%D1%83%20%D1%81%D0%B0%D0%BC%D0%BE%D0%B3%D0%BE%20%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%B8%20%D0%BD%D0%B5%20%D0%B4%D0%BE%D0%BB%D0%B6%D0%B5%D0%BD%20%D1%81%D0%BE%D0%B4%D0%B5%D1%80%D0%B6%D0%B0%D1%82%D1%8C%20%D0%BA%D0%BE%D0%BD%D1%82%D0%B0%D0%BA%D1%82%D0%BD%D1%83%D1%8E%20%D0%B8%D0%BB%D0%B8%20%D0%BF%D0%B5%D1%80%D1%81%D0%BE%D0%BD%D0%B0%D0%BB%D1%8C%D0%BD%D1%83%D1%8E%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8E%20%D0%BE%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D0%B5%20(%D1%82%D0%B5%D0%BB%D0%B5%D1%84%D0%BE%D0%BD%2C%20%D1%8D%D0%BB%D0%B5%D0%BA%D1%82%D1%80%D0%BE%D0%BD%D0%BD%D1%8B%D0%B5%20%D0%B0%D0%B4%D1%80%D0%B5%D1%81%2C%20%D0%B0%D0%B4%D1%80%D0%B5%D1%81%20%D0%B8%D0%BD%D1%82%D0%B5%D1%80%D0%BD%D0%B5%D1%82-%D1%80%D0%B5%D1%81%D1%83%D1%80%D1%81%D0%B0).%3C%2Fp%3E%0A%0A%3Cp%3E%D0%A4%D0%BE%D1%82%D0%BE%2C%20%D0%B4%D0%B5%D0%BC%D0%BE%D0%BD%D1%81%D1%82%D1%80%D0%B8%D1%80%D1%83%D1%8E%D1%89%D0%B5%D0%B5%20%D1%82%D0%BE%D0%B2%D0%B0%D1%80%2F%D1%83%D1%81%D0%BB%D1%83%D0%B3%D1%83%2C%20%D0%BF%D1%80%D0%B5%D0%B4%D0%BB%D0%B0%D0%B3%D0%B0%D0%B5%D0%BC%D1%8B%D0%B5%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D0%B5%D0%BC%20%D0%BA%20%D0%BF%D1%80%D0%BE%D0%B4%D0%B0%D0%B6%D0%B5%2C%20%D0%B4%D0%BE%D0%BB%D0%B6%D0%BD%D0%BE%20%D1%81%D0%BE%D0%BE%D1%82%D0%B2%D0%B5%D1%82%D1%81%D1%82%D0%B2%D0%BE%D0%B2%D0%B0%D1%82%D1%8C%20%D0%B7%D0%B0%D0%B3%D0%BE%D0%BB%D0%BE%D0%B2%D0%BA%D1%83%20%D0%B8%20%D1%82%D0%B5%D0%BA%D1%81%D1%82%D1%83%20%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F.%20%D0%9D%D0%B0%20%D1%84%D0%BE%D1%82%D0%BE%20%D0%B4%D0%BE%D0%BB%D0%B6%D0%B5%D0%BD%20%D0%B1%D1%8B%D1%82%D1%8C%20%D0%B8%D0%B7%D0%BE%D0%B1%D1%80%D0%B0%D0%B6%D0%B5%D0%BD%20%D1%82%D0%BE%D0%BB%D1%8C%D0%BA%D0%BE%20%D0%BF%D1%80%D0%B5%D0%B4%D0%BB%D0%B0%D0%B3%D0%B0%D0%B5%D0%BC%D1%8B%D0%B9%20%D0%BE%D0%B1%D1%8A%D0%B5%D0%BA%D1%82.%20%D0%A1%D1%82%D0%BE%D0%BA%D0%BE%D0%B2%D1%8B%D0%B5%20%D1%84%D0%BE%D1%82%D0%BE%20%D0%B8%2F%D0%B8%D0%BB%D0%B8%20%D1%84%D0%BE%D1%82%D0%BE%2C%20%D0%B7%D0%B0%D0%B3%D1%80%D1%83%D0%B6%D0%B5%D0%BD%D0%BD%D1%8B%D0%B5%20%D0%B8%D0%B7%20%D1%81%D0%B5%D1%82%D0%B8%20%D0%98%D0%BD%D1%82%D0%B5%D1%80%D0%BD%D0%B5%D1%82%2C%20%D0%B7%D0%B0%D0%BF%D1%80%D0%B5%D1%89%D0%B5%D0%BD%D1%8B.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%A7%D1%82%D0%BE%D0%B1%D1%8B%20%D0%BE%D0%B1%D0%BB%D0%B5%D0%B3%D1%87%D0%B8%D1%82%D1%8C%20%D0%B2%D0%B7%D0%B0%D0%B8%D0%BC%D0%BE%D0%B4%D0%B5%D0%B9%D1%81%D1%82%D0%B2%D0%B8%D0%B5%20%D0%BC%D0%B5%D0%B6%D0%B4%D1%83%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F%D0%BC%D0%B8%2C%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%BC%D0%BE%D0%B6%D0%B5%D1%82%20%D1%83%D1%81%D1%82%D0%B0%D0%BD%D0%B0%D0%B2%D0%BB%D0%B8%D0%B2%D0%B0%D1%82%D1%8C%20%D0%BE%D0%B3%D1%80%D0%B0%D0%BD%D0%B8%D1%87%D0%B5%D0%BD%D0%BD%D1%8B%D0%B9%20%D0%B4%D0%BE%D1%81%D1%82%D1%83%D0%BF%20%D0%BA%20%D0%BA%D0%BE%D0%BD%D1%82%D0%B0%D0%BA%D1%82%D0%BD%D0%BE%D0%B9%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D0%B8%20%D0%B4%D1%80%D1%83%D0%B3%D0%B8%D1%85%20%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D0%B5%D0%B9.%20%D0%9F%D1%80%D0%B0%D0%B2%D0%BE%20%D0%B8%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D1%8F%20%D1%81%D0%B2%D0%B5%D0%B4%D0%B5%D0%BD%D0%B8%D0%B9%2C%20%D0%BF%D1%80%D0%B5%D0%B4%D0%BE%D1%81%D1%82%D0%B0%D0%B2%D0%BB%D0%B5%D0%BD%D0%BD%D1%8B%D1%85%20%D0%B4%D1%80%D1%83%D0%B3%D0%B8%D0%BC%D0%B8%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F%D0%BC%D0%B8%2C%20%D0%BE%D0%B3%D1%80%D0%B0%D0%BD%D0%B8%D1%87%D0%B8%D0%B2%D0%B0%D0%B5%D1%82%D1%81%D1%8F%20%D0%BD%D0%B0%D1%81%D1%82%D0%BE%D1%8F%D1%89%D0%B8%D0%BC%20%D0%A1%D0%BE%D0%B3%D0%BB%D0%B0%D1%88%D0%B5%D0%BD%D0%B8%D0%B5%D0%BC.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%BD%D0%B5%20%D0%BD%D0%B5%D1%81%D0%B5%D1%82%20%D0%BE%D1%82%D0%B2%D0%B5%D1%82%D1%81%D1%82%D0%B2%D0%B5%D0%BD%D0%BD%D0%BE%D1%81%D1%82%D0%B8%20%D0%B7%D0%B0%20%D1%81%D0%BE%D0%B4%D0%B5%D1%80%D0%B6%D0%B0%D0%BD%D0%B8%D0%B5%20%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B9%20%D0%B8%D0%BB%D0%B8%20%D0%B3%D0%B8%D0%BF%D0%B5%D1%80%D1%81%D1%81%D1%8B%D0%BB%D0%BE%D0%BA%20%D0%BD%D0%B0%20%D1%80%D0%B5%D1%81%D1%83%D1%80%D1%81%D1%8B%2C%20%D1%83%D0%BA%D0%B0%D0%B7%D0%B0%D0%BD%D0%BD%D1%8B%D0%B5%20%D0%B2%20%D0%BE%D0%BF%D0%B8%D1%81%D0%B0%D0%BD%D0%B8%D0%B8%20%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B9%20%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D0%B5%D0%B9.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9F%D1%80%D0%B5%D0%B4%D0%BC%D0%B5%D1%82%D0%BE%D0%BC%20%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B9%20%D0%BC%D0%BE%D0%B3%D1%83%D1%82%20%D0%B1%D1%8B%D1%82%D1%8C%20%D1%82%D0%BE%D0%B2%D0%B0%D1%80%D1%8B%20%D0%B8%D0%BB%D0%B8%20%D1%83%D1%81%D0%BB%D1%83%D0%B3%D0%B8%2C%20%D1%80%D0%B5%D0%B0%D0%BB%D0%B8%D0%B7%D0%B0%D1%86%D0%B8%D1%8F%20%D0%BA%D0%BE%D1%82%D0%BE%D1%80%D1%8B%D1%85%20%D0%BD%D0%B5%20%D0%B7%D0%B0%D0%BF%D1%80%D0%B5%D1%89%D0%B5%D0%BD%D0%B0%20%D0%B8%20%D0%BD%D0%B5%20%D0%BE%D0%B3%D1%80%D0%B0%D0%BD%D0%B8%D1%87%D0%B5%D0%BD%D0%B0%20%D0%B2%20%D1%81%D0%BE%D0%BE%D1%82%D0%B2%D0%B5%D1%82%D1%81%D1%82%D0%B2%D0%B8%D0%B8%20%D1%81%20%D0%B7%D0%B0%D0%BA%D0%BE%D0%BD%D0%BE%D0%B4%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%D1%81%D1%82%D0%B2%D0%BE%D0%BC%20%D1%81%D1%82%D1%80%D0%B0%D0%BD%D1%8B%2C%20%D0%B2%20%D0%BA%D0%BE%D1%82%D0%BE%D1%80%D1%8B%D1%85%20%D0%BE%D0%BD%D0%B8%20%D1%80%D0%B5%D0%B0%D0%BB%D0%B8%D0%B7%D1%83%D1%8E%D1%82%D1%81%D1%8F%2C%20%D0%B0%20%D1%82%D0%B0%D0%BA%D0%B6%D0%B5%20%D0%BD%D0%B5%20%D0%BF%D1%80%D0%BE%D1%82%D0%B8%D0%B2%D0%BE%D1%80%D0%B5%D1%87%D0%B8%D1%82%20%D0%B4%D0%B0%D0%BD%D0%BD%D0%BE%D0%BC%D1%83%20%D1%81%D0%BE%D0%B3%D0%BB%D0%B0%D1%88%D0%B5%D0%BD%D0%B8%D1%8E.%3C%2Fp%3E%0A%0A%3Cp%3E3.%20%D0%A3%D0%A1%D0%9B%D0%9E%D0%92%D0%98%D0%AF%20%D0%9E%D0%91%D0%A0%D0%90%D0%91%D0%9E%D0%A2%D0%9A%D0%98%20%D0%9F%D0%95%D0%A0%D0%A1%D0%9E%D0%9D%D0%90%D0%9B%D0%AC%D0%9D%D0%AB%D0%A5%20%D0%94%D0%90%D0%9D%D0%9D%D0%AB%D0%A5%20%D0%9F%D0%9E%D0%9B%D0%AC%D0%97%D0%9E%D0%92%D0%90%D0%A2%D0%95%D0%9B%D0%95%D0%99%20%D0%98%20%D0%A1%D0%9E%D0%93%D0%9B%D0%90%D0%A1%D0%98%D0%95%20%D0%9D%D0%90%20%D0%9D%D0%95%D0%95%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9F%D1%80%D0%B8%20%D1%80%D0%B0%D0%B7%D0%BC%D0%B5%D1%89%D0%B5%D0%BD%D0%B8%D0%B8%20%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B9%20%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D0%B8%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B0%20%D0%BF%D1%80%D0%B5%D0%B4%D0%BE%D1%81%D1%82%D0%B0%D0%B2%D0%BB%D1%8F%D1%8E%D1%82%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D0%B8%20%D0%BF%D1%80%D0%B0%D0%B2%D0%BE%20%D0%BD%D0%B0%20%D0%BE%D0%B1%D1%80%D0%B0%D0%B1%D0%BE%D1%82%D0%BA%D1%83%20%D0%B8%D1%85%20%D0%BF%D0%B5%D1%80%D1%81%D0%BE%D0%BD%D0%B0%D0%BB%D1%8C%D0%BD%D1%8B%D1%85%20%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D1%85%20%D0%BD%D0%B0%20%D1%83%D1%81%D0%BB%D0%BE%D0%B2%D0%B8%D1%8F%D1%85%2C%20%D0%BF%D1%80%D0%B5%D0%B4%D1%83%D1%81%D0%BC%D0%BE%D1%82%D1%80%D0%B5%D0%BD%D0%BD%D1%8B%D1%85%20%D0%B2%20%D0%9F%D1%80%D0%B8%D0%BB%D0%BE%D0%B6%D0%B5%D0%BD%D0%B8%D0%B8%20%E2%84%961%20(%D0%9F%D0%9E%D0%9B%D0%98%D0%A2%D0%98%D0%9A%D0%90%20%D0%9A%D0%9E%D0%9D%D0%A4%D0%98%D0%94%D0%95%D0%9D%D0%A6%D0%98%D0%90%D0%9B%D0%AC%D0%9D%D0%9E%D0%A1%D0%A2%D0%98)%20%D0%BA%20%D1%8D%D1%82%D0%BE%D0%BC%D1%83%20%D0%A1%D0%BE%D0%B3%D0%BB%D0%B0%D1%88%D0%B5%D0%BD%D0%B8%D1%8E.%3C%2Fp%3E%0A%0A%3Cp%3E4.%20%D0%A1%D0%92%D0%95%D0%94%D0%95%D0%9D%D0%98%D0%AF%2C%20%D0%9F%D0%A0%D0%95%D0%94%D0%9E%D0%A1%D0%A2%D0%90%D0%92%D0%9B%D0%AF%D0%95%D0%9C%D0%AB%D0%95%20%D0%9F%D0%9E%D0%9B%D0%AC%D0%97%D0%9E%D0%92%D0%90%D0%A2%D0%95%D0%9B%D0%95%D0%9C%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D1%8F%20%D1%81%D0%BE%D1%85%D1%80%D0%B0%D0%BD%D1%8F%D0%B5%D1%82%20%D0%B7%D0%B0%20%D1%81%D0%BE%D0%B1%D0%BE%D0%B9%20%D0%BF%D1%80%D0%B0%D0%B2%D0%BE%20%D1%81%D0%B2%D1%8F%D0%B7%D1%8B%D0%B2%D0%B0%D1%82%D1%8C%D1%81%D1%8F%20%D1%81%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D0%B5%D0%BC%3A%20%D0%BD%D0%B0%D0%BF%D1%80%D0%B0%D0%B2%D0%BB%D1%8F%D1%82%D1%8C%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D0%BE%D0%BD%D0%BD%D1%8B%D0%B5%20%D1%81%D0%BE%D0%BE%D0%B1%D1%89%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%BD%D0%B0%20%D1%8D%D0%BB%D0%B5%D0%BA%D1%82%D1%80%D0%BE%D0%BD%D0%BD%D1%8B%D0%B9%20%D0%B8%20%D1%84%D0%B8%D0%B7%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D0%B9%20%D0%B0%D0%B4%D1%80%D0%B5%D1%81%2C%20%D1%83%D0%BA%D0%B0%D0%B7%D0%B0%D0%BD%D0%BD%D1%8B%D0%B9%20%D0%BF%D1%80%D0%B8%20%D1%80%D0%B5%D0%B3%D0%B8%D1%81%D1%82%D1%80%D0%B0%D1%86%D0%B8%D0%B8%2C%20%D0%B0%20%D1%82%D0%B0%D0%BA%D0%B6%D0%B5%20%D0%BE%D1%82%D0%BF%D1%80%D0%B0%D0%B2%D0%BB%D1%8F%D1%82%D1%8C%20%D1%81%D0%BE%D0%BE%D0%B1%D1%89%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%BD%D0%B0%20%D0%BC%D0%BE%D0%B1%D0%B8%D0%BB%D1%8C%D0%BD%D1%8B%D0%B9%20%D1%82%D0%B5%D0%BB%D0%B5%D1%84%D0%BE%D0%BD%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%A1%D0%B1%D0%BE%D1%80%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D0%B8%20%D0%BE%D1%81%D1%83%D1%89%D0%B5%D1%81%D1%82%D0%B2%D0%BB%D1%8F%D0%B5%D1%82%D1%81%D1%8F%20%D0%BF%D1%83%D1%82%D0%B5%D0%BC%20%D1%81%D0%B0%D0%BC%D0%BE%D1%81%D1%82%D0%BE%D1%8F%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D0%BE%D0%B3%D0%BE%20%D1%81%20%D0%B8%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5%D0%BC%20%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%BC%D0%BD%D1%8B%D1%85%20%D1%81%D1%80%D0%B5%D0%B4%D1%81%D1%82%D0%B2%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B0%20%D1%83%D0%BA%D0%B0%D0%B7%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D0%B5%D0%BC%20%D1%81%D0%BE%D0%BE%D1%82%D0%B2%D0%B5%D1%82%D1%81%D1%82%D0%B2%D1%83%D1%8E%D1%89%D0%B8%D1%85%20%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D1%85%2C%20%D1%82%D1%80%D0%B5%D0%B1%D1%83%D0%B5%D0%BC%D1%8B%D1%85%20%D0%B4%D0%BB%D1%8F%20%D1%80%D0%B0%D0%B7%D0%BC%D0%B5%D1%89%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B9%20%D0%BD%D0%B0%20%D0%BD%D1%91%D0%BC.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%98%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8F%20%D1%82%D0%B5%D1%85%D0%BD%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%BE%D0%B3%D0%BE%20%D1%85%D0%B0%D1%80%D0%B0%D0%BA%D1%82%D0%B5%D1%80%D0%B0%2C%20%D1%81%D0%BE%D0%B4%D0%B5%D1%80%D0%B6%D0%B0%D1%89%D0%B0%D1%8F%D1%81%D1%8F%20%D0%B2%20%D1%81%D0%B8%D1%81%D1%82%D0%B5%D0%BC%D0%B5%2C%20%D0%BD%D0%B0%D0%BF%D1%80%D0%B8%D0%BC%D0%B5%D1%80%2C%20ip-%D0%B0%D0%B4%D1%80%D0%B5%D1%81%D0%B0%2C%20%D0%B2%20%D1%81%D0%BE%D0%BE%D1%82%D0%B2%D0%B5%D1%82%D1%81%D1%82%D0%B2%D0%B8%D0%B8%20%D1%81%20%D0%BE%D0%B1%D1%89%D0%B8%D0%BC%D0%B8%20%D0%BF%D1%80%D0%B0%D0%B2%D0%B8%D0%BB%D0%B0%D0%BC%D0%B8%20%D0%B8%D0%BD%D1%82%D0%B5%D1%80%D0%BD%D0%B5%D1%82-%D1%81%D0%BE%D0%BE%D0%B1%D1%89%D0%B5%D0%BD%D0%B8%D0%B9%2C%20%D0%B8%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D1%83%D0%B5%D1%82%D1%81%D1%8F%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D0%B5%D0%B9%20%D0%B2%20%D1%86%D0%B5%D0%BB%D1%8F%D1%85%2C%20%D1%81%D0%B2%D1%8F%D0%B7%D0%B0%D0%BD%D0%BD%D1%8B%D1%85%20%D1%81%20%D0%BE%D0%B1%D1%81%D0%BB%D1%83%D0%B6%D0%B8%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5%D0%BC%20%D1%81%D0%B5%D1%82%D0%B5%D0%B2%D0%BE%D0%B3%D0%BE%20%D0%BE%D0%B1%D0%BE%D1%80%D1%83%D0%B4%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D1%8F%2C%20%D0%B0%20%D1%82%D0%B0%D0%BA%D0%B6%D0%B5%20%D0%B4%D0%BB%D1%8F%20%D0%B0%D0%B3%D1%80%D0%B5%D0%B3%D0%B0%D1%86%D0%B8%D0%B8%20%D0%BE%D0%B1%D1%89%D0%B5%D0%B9%20%D1%81%D1%82%D0%B0%D1%82%D0%B8%D1%81%D1%82%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%BE%D0%B9%2C%20%D0%B4%D0%B5%D0%BC%D0%BE%D0%B3%D1%80%D0%B0%D1%84%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%BE%D0%B9%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D0%B8%20(%D0%BD%D0%B0%D0%BF%D1%80%D0%B8%D0%BC%D0%B5%D1%80%2C%20%D0%BE%20%D1%80%D0%B5%D0%B3%D0%B8%D0%BE%D0%BD%D0%B5%2C%20%D0%B8%D0%B7%20%D0%BA%D0%BE%D1%82%D0%BE%D1%80%D0%BE%D0%B3%D0%BE%20%D0%B1%D1%8B%D0%BB%D0%BE%20%D0%BE%D1%81%D1%83%D1%89%D0%B5%D1%81%D1%82%D0%B2%D0%BB%D0%B5%D0%BD%D0%BE%20%D1%81%D0%BE%D0%B5%D0%B4%D0%B8%D0%BD%D0%B5%D0%BD%D0%B8%D0%B5%20%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D0%B5%D0%BC).%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D1%8F%20%D1%81%D0%BE%D1%85%D1%80%D0%B0%D0%BD%D1%8F%D0%B5%D1%82%20%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D0%B5%20%D0%BF%D0%BE%D1%81%D0%BB%D0%B5%D0%B4%D0%BD%D0%B5%D0%B3%D0%BE%20%D0%B4%D0%BE%D1%81%D1%82%D1%83%D0%BF%D0%B0%20%D0%B2%20%D1%81%D0%B8%D1%81%D1%82%D0%B5%D0%BC%D1%83%20%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F%2C%20%D1%81%20%D1%86%D0%B5%D0%BB%D1%8C%D1%8E%20%D0%BE%D0%B1%D0%B5%D1%81%D0%BF%D0%B5%D1%87%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%B2%D1%8B%D1%81%D0%BE%D0%BA%D0%BE%D0%B3%D0%BE%20%D0%BA%D0%B0%D1%87%D0%B5%D1%81%D1%82%D0%B2%D0%B0%20%D0%BF%D1%80%D0%B5%D0%B4%D0%BE%D1%81%D1%82%D0%B0%D0%B2%D0%BB%D1%8F%D0%B5%D0%BC%D1%8B%D1%85%20%D1%81%D0%B5%D1%80%D0%B2%D0%B8%D1%81%D0%BE%D0%B2%2C%20%D0%BF%D1%80%D0%B8%D1%81%D0%BF%D0%BE%D1%81%D0%B0%D0%B1%D0%BB%D0%B8%D0%B2%D0%B0%D0%B5%D0%BC%D1%8B%D1%85%20%D0%BA%20%D0%B8%D0%BD%D0%B4%D0%B8%D0%B2%D0%B8%D0%B4%D1%83%D0%B0%D0%BB%D1%8C%D0%BD%D1%8B%D0%BC%20%D0%BF%D0%BE%D1%82%D1%80%D0%B5%D0%B1%D0%BD%D0%BE%D1%81%D1%82%D1%8F%D0%BC%20%D0%B8%20%D0%B8%D0%BD%D1%82%D0%B5%D1%80%D0%B5%D1%81%D0%B0%D0%BC%20%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%20%D0%BE%D1%81%D1%83%D1%89%D0%B5%D1%81%D1%82%D0%B2%D0%BB%D1%8F%D0%B5%D1%82%20%D0%B4%D0%BE%D1%81%D1%82%D1%83%D0%BF%20%D0%BA%20%D1%81%D0%B5%D1%80%D0%B2%D0%B8%D1%81%D0%B0%D0%BC%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B0%20%D0%B2%20%D1%82%D0%B5%D1%87%D0%B5%D0%BD%D0%B8%D0%B8%20%D0%B2%D1%80%D0%B5%D0%BC%D0%B5%D0%BD%D0%BD%D1%8B%D1%85%20%D0%BF%D1%80%D0%BE%D0%BC%D0%B5%D0%B6%D1%83%D1%82%D0%BA%D0%BE%D0%B2%20%D0%BD%D0%B5%D0%BF%D1%80%D0%B5%D1%80%D1%8B%D0%B2%D0%BD%D0%BE%D0%B3%D0%BE%20%D0%B8%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D1%8F%20%26ndash%3B%20%D1%81%D0%B5%D1%81%D1%81%D0%B8%D0%B9.%20%D0%97%D0%B0%D1%80%D0%B5%D0%B3%D0%B8%D1%81%D1%82%D1%80%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%BD%D1%8B%D0%B9%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%20%D0%BE%D1%81%D1%83%D1%89%D0%B5%D1%81%D1%82%D0%B2%D0%BB%D1%8F%D0%B5%D1%82%20%D0%B4%D0%BE%D1%81%D1%82%D1%83%D0%BF%20%D0%BA%20%D1%87%D0%B0%D1%81%D1%82%D0%B8%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B0%2C%20%D0%B4%D0%BE%D1%81%D1%82%D1%83%D0%BF%D0%BD%D0%BE%D0%B9%20%D0%B8%D1%81%D0%BA%D0%BB%D1%8E%D1%87%D0%B8%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D0%BE%20%D0%BF%D0%BE%D1%81%D0%BB%D0%B5%20%D0%B2%D0%B2%D0%B5%D0%B4%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%B8%D0%BC%20%D0%BB%D0%BE%D0%B3%D0%B8%D0%BD%D0%B0%20%D0%B8%20%D0%BF%D0%B0%D1%80%D0%BE%D0%BB%D1%8F%2C%20%D0%BF%D0%BE%20%D0%BA%D1%80%D0%B0%D0%B9%D0%BD%D0%B5%D0%B9%20%D0%BC%D0%B5%D1%80%D0%B5%2C%20%D0%BE%D0%B4%D0%B8%D0%BD%20%D1%80%D0%B0%D0%B7%20%D0%B2%20%D1%82%D0%B5%D1%87%D0%B5%D0%BD%D0%B8%D0%B5%20%D1%81%D0%B5%D1%81%D1%81%D0%B8%D0%B8.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9E%D1%82%D0%BA%D0%BB%D1%8E%D1%87%D0%B5%D0%BD%D0%B8%D0%B5%20%D1%81%D0%BE%D1%85%D1%80%D0%B0%D0%BD%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D1%85%20%D0%BF%D0%BE%D1%81%D0%BB%D0%B5%D0%B4%D0%BD%D0%B5%D0%B3%D0%BE%20%D0%B4%D0%BE%D1%81%D1%82%D1%83%D0%BF%D0%B0%20%D0%B2%20%D1%81%D0%B8%D1%81%D1%82%D0%B5%D0%BC%D1%83%20%D0%B2%20%D0%BD%D0%B0%D1%81%D1%82%D1%80%D0%BE%D0%B9%D0%BA%D0%B0%D1%85%20%D0%B1%D1%80%D0%B0%D1%83%D0%B7%D0%B5%D1%80%D0%B0%20%D0%BD%D0%B5%20%D0%B2%D0%BB%D0%B8%D1%8F%D0%B5%D1%82%20%D0%BD%D0%B0%20%D0%B2%D0%BE%D0%B7%D0%BC%D0%BE%D0%B6%D0%BD%D0%BE%D1%81%D1%82%D1%8C%20%D0%B8%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D1%8F%20%D1%81%D0%B5%D1%80%D0%B2%D0%B8%D1%81%D0%BE%D0%B2%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B0%20%D0%B2%20%D1%86%D0%B5%D0%BB%D0%BE%D0%BC%2C%20%D0%BE%D0%B4%D0%BD%D0%B0%D0%BA%D0%BE%20%D0%BC%D0%BE%D0%B3%D1%83%D1%82%20%D0%BE%D0%B3%D1%80%D0%B0%D0%BD%D0%B8%D1%87%D0%B8%D1%82%D1%8C%20%D0%B8%D1%85%20%D1%84%D1%83%D0%BD%D0%BA%D1%86%D0%B8%D0%BE%D0%BD%D0%B0%D0%BB%20%D0%B4%D0%BB%D1%8F%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%94%D0%B0%D0%BD%D0%BD%D1%8B%D0%B5%20%D0%BF%D0%BE%D1%81%D0%BB%D0%B5%D0%B4%D0%BD%D0%B5%D0%B3%D0%BE%20%D0%B4%D0%BE%D1%81%D1%82%D1%83%D0%BF%D0%B0%20%D0%B2%20%D1%81%D0%B8%D1%81%D1%82%D0%B5%D0%BC%D1%83%20%D1%82%D0%B0%D0%BA%D0%B6%D0%B5%20%D0%B8%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D1%83%D1%8E%D1%82%D1%81%D1%8F%20%D0%B4%D0%BB%D1%8F%20%D1%81%D0%B1%D0%BE%D1%80%D0%B0%20%D1%81%D1%82%D0%B0%D1%82%D0%B8%D1%81%D1%82%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%BE%D0%B9%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D0%B8%20%D0%BE%D0%B1%20%D0%B8%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B8%20%D1%83%D1%81%D0%BB%D1%83%D0%B3%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F%D0%BC%D0%B8.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%BD%D0%B5%20%D1%81%D0%BE%D0%B1%D0%B8%D1%80%D0%B0%D0%B5%D1%82%20%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D0%B5%20%D0%BE%20%D1%80%D0%B0%D1%81%D0%BE%D0%B2%D0%BE%D0%BC%20%D0%B8%D0%BB%D0%B8%20%D1%8D%D1%82%D0%BD%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%BE%D0%BC%20%D0%BF%D1%80%D0%BE%D0%B8%D1%81%D1%85%D0%BE%D0%B6%D0%B4%D0%B5%D0%BD%D0%B8%D0%B8%2C%20%D0%BF%D0%BE%D0%BB%D0%B8%D1%82%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D1%85%2C%20%D1%80%D0%B5%D0%BB%D0%B8%D0%B3%D0%B8%D0%BE%D0%B7%D0%BD%D1%8B%D1%85%20%D0%B8%D0%BB%D0%B8%20%D0%BC%D0%B8%D1%80%D0%BE%D0%B2%D0%BE%D0%B7%D0%B7%D1%80%D0%B5%D0%BD%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D1%85%20%D1%83%D0%B1%D0%B5%D0%B6%D0%B4%D0%B5%D0%BD%D0%B8%D1%8F%D1%85%2C%20%D1%87%D0%BB%D0%B5%D0%BD%D1%81%D1%82%D0%B2%D0%B5%20%D0%B2%20%D0%BF%D0%BE%D0%BB%D0%B8%D1%82%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D1%85%20%D0%BF%D0%B0%D1%80%D1%82%D0%B8%D1%8F%D1%85%20%D0%B8%20%D0%BF%D1%80%D0%BE%D1%84%D0%B5%D1%81%D1%81%D0%B8%D0%BE%D0%BD%D0%B0%D0%BB%D1%8C%D0%BD%D1%8B%D1%85%20%D1%81%D0%BE%D1%8E%D0%B7%D0%B0%D1%85%2C%20%D0%B0%20%D1%82%D0%B0%D0%BA%D0%B6%D0%B5%20%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D1%85%2C%20%D0%BA%D0%B0%D1%81%D0%B0%D1%8E%D1%89%D0%B8%D1%85%D1%81%D1%8F%20%D0%B7%D0%B4%D0%BE%D1%80%D0%BE%D0%B2%D1%8C%D1%8F%20%D0%B8%D0%BB%D0%B8%20%D0%BF%D0%BE%D0%BB%D0%BE%D0%B2%D0%BE%D0%B9%20%D0%B6%D0%B8%D0%B7%D0%BD%D0%B8%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D0%B5%D0%B9%2C%20%D0%B8%20%D0%BD%D0%B5%20%D0%BD%D0%B5%D1%81%D0%B5%D1%82%20%D0%BE%D1%82%D0%B2%D0%B5%D1%82%D1%81%D1%82%D0%B2%D0%B5%D0%BD%D0%BD%D0%BE%D1%81%D1%82%D1%8C%20%D0%B7%D0%B0%20%D1%80%D0%B0%D0%B7%D0%B3%D0%BB%D0%B0%D1%88%D0%B5%D0%BD%D0%B8%D0%B5%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F%D0%BC%D0%B8%20%D1%82%D0%B0%D0%BA%D0%BE%D0%B9%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D0%B8%20%D0%BD%D0%B0%20%D1%81%D0%B0%D0%B9%D1%82%D0%B5.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9E%D0%BF%D1%80%D0%BE%D1%81%D1%8B%2C%20%D0%BF%D1%80%D0%BE%D0%B2%D0%BE%D0%B4%D0%B8%D0%BC%D1%8B%D0%B5%20%D0%B2%D1%80%D0%B5%D0%BC%D1%8F%20%D0%BE%D1%82%20%D0%B2%D1%80%D0%B5%D0%BC%D0%B5%D0%BD%D0%B8%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D0%B5%D0%B9%20%D0%BC%D0%BE%D0%B3%D1%83%D1%82%20%D1%81%D0%BE%D0%B4%D0%B5%D1%80%D0%B6%D0%B0%D1%82%D1%8C%20%D0%B2%D0%BE%D0%BF%D1%80%D0%BE%D1%81%D1%8B%20%D0%BE%20%D0%B4%D0%B5%D0%BC%D0%BE%D0%B3%D1%80%D0%B0%D1%84%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D1%85%20%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D1%85%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D0%B5%D0%B9%20(%D0%BD%D0%B0%D0%BF%D1%80%D0%B8%D0%BC%D0%B5%D1%80%2C%20%D0%BE%D0%B1%D1%80%D0%B0%D0%B7%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5%2C%20%D0%B2%D0%BE%D0%B7%D1%80%D0%B0%D1%81%D1%82%2C%20%D0%B4%D0%BE%D1%85%D0%BE%D0%B4).%20%D0%94%D0%B0%D0%BD%D0%BD%D1%8B%D0%B5%2C%20%D1%81%D0%BE%D0%B1%D0%B8%D1%80%D0%B0%D0%B5%D0%BC%D1%8B%D0%B5%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D0%B5%D0%B9%20%D1%81%20%D0%BF%D0%BE%D0%BC%D0%BE%D1%89%D1%8C%D1%8E%20%D1%82%D0%B0%D0%BA%D0%B8%D1%85%20%D0%BE%D0%BF%D1%80%D0%BE%D1%81%D0%BE%D0%B2%2C%20%D0%BE%D0%B1%D1%80%D0%B0%D0%B1%D0%B0%D1%82%D1%8B%D0%B2%D0%B0%D1%8E%D1%82%D1%81%D1%8F%20%D0%B2%20%D0%BE%D0%B1%D0%B5%D0%B7%D0%BB%D0%B8%D1%87%D0%B5%D0%BD%D0%BD%D0%BE%D0%BC%20%D0%B2%D0%B8%D0%B4%D0%B5.%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D0%B8%20%D0%B8%D0%BC%D0%B5%D1%8E%D1%82%20%D0%B2%D0%BE%D0%B7%D0%BC%D0%BE%D0%B6%D0%BD%D0%BE%D1%81%D1%82%D1%8C%20%D0%BD%D0%B5%20%D0%BF%D1%80%D0%B8%D0%BD%D0%B8%D0%BC%D0%B0%D1%82%D1%8C%20%D1%83%D1%87%D0%B0%D1%81%D1%82%D0%B8%D0%B5%20%D0%B2%20%D0%BE%D0%BF%D1%80%D0%BE%D1%81%D0%B0%D1%85%20%D0%B8%20%D0%BE%D1%82%D0%BA%D0%B0%D0%B7%D0%B0%D1%82%D1%8C%D1%81%D1%8F%20%D0%BE%D1%82%20%D0%BF%D1%80%D0%B5%D0%B4%D0%BE%D1%81%D1%82%D0%B0%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D0%B8.%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%B8%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D1%83%D0%B5%D1%82%20%D0%B4%D0%B5%D0%BC%D0%BE%D0%B3%D1%80%D0%B0%D1%84%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D0%B5%20%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D0%B5%2C%20%D0%B2%20%D1%86%D0%B5%D0%BB%D1%8F%D1%85%20%D1%81%D0%BE%D1%81%D1%82%D0%B0%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F%20%D1%81%D1%82%D0%B0%D1%82%D0%B8%D1%81%D1%82%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D1%85%20%D0%BE%D1%82%D1%87%D0%B5%D1%82%D0%BE%D0%B2%20%D0%B8%20%D1%83%D0%BB%D1%83%D1%87%D1%88%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%BA%D0%B0%D1%87%D0%B5%D1%81%D1%82%D0%B2%D0%B0%20%D1%83%D1%81%D0%BB%D1%83%D0%B3.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8E%20%D0%B7%D0%B0%D0%BF%D1%80%D0%B5%D1%89%D0%B0%D0%B5%D1%82%D1%81%D1%8F%20%D0%BF%D1%80%D0%B5%D0%B4%D0%BE%D1%81%D1%82%D0%B0%D0%B2%D0%BB%D1%8F%D1%82%D1%8C%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8E%20%D0%B2%20%D0%BD%D0%B0%D1%80%D1%83%D1%88%D0%B5%D0%BD%D0%B8%D0%B5%20%D0%BD%D0%B0%D1%81%D1%82%D0%BE%D1%8F%D1%89%D0%B5%D0%B3%D0%BE%20%D0%A1%D0%BE%D0%B3%D0%BB%D0%B0%D1%88%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%B8%D0%BB%D0%B8%20%D0%BF%D1%80%D0%B0%D0%B2%20%D1%82%D1%80%D0%B5%D1%82%D1%8C%D0%B8%D1%85%20%D0%BB%D0%B8%D1%86%2C%20%D0%B2%20%D1%87%D0%B0%D1%81%D1%82%D0%BD%D0%BE%D1%81%D1%82%D0%B8%2C%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8F%20%D0%BD%D0%B5%20%D0%B4%D0%BE%D0%BB%D0%B6%D0%BD%D0%B0%20%D1%81%D0%BE%D0%B4%D0%B5%D1%80%D0%B6%D0%B0%D1%82%D1%8C%3A%3C%2Fp%3E%0A%0A%3Cp%3E%D0%B2%D1%83%D0%BB%D1%8C%D0%B3%D0%B0%D1%80%D0%BD%D1%8B%D1%85%2C%20%D0%BE%D1%81%D0%BA%D0%BE%D1%80%D0%B1%D0%B8%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D1%8B%D1%85%20%D0%B2%D1%8B%D1%80%D0%B0%D0%B6%D0%B5%D0%BD%D0%B8%D0%B9%3B%3C%2Fp%3E%0A%0A%3Cp%3E%D0%BF%D1%80%D0%BE%D0%BF%D0%B0%D0%B3%D0%B0%D0%BD%D0%B4%D1%83%20%D0%BD%D0%B5%D0%BD%D0%B0%D0%B2%D0%B8%D1%81%D1%82%D0%B8%2C%20%D0%BD%D0%B0%D1%81%D0%B8%D0%BB%D0%B8%D1%8F%2C%20%D0%B4%D0%B8%D1%81%D0%BA%D1%80%D0%B8%D0%BC%D0%B8%D0%BD%D0%B0%D1%86%D0%B8%D0%B8%2C%20%D1%80%D0%B0%D1%81%D0%B8%D0%B7%D0%BC%D0%B0%2C%20%D0%BA%D1%81%D0%B5%D0%BD%D0%BE%D1%84%D0%BE%D0%B1%D0%B8%D0%B8%2C%20%D0%BC%D0%B5%D0%B6%D0%BD%D0%B0%D1%86%D0%B8%D0%BE%D0%BD%D0%B0%D0%BB%D1%8C%D0%BD%D1%8B%D1%85%20%D0%BA%D0%BE%D0%BD%D1%84%D0%BB%D0%B8%D0%BA%D1%82%D0%BE%D0%B2%3B%3C%2Fp%3E%0A%0A%3Cp%3E%D0%BF%D1%80%D0%B8%D0%B7%D1%8B%D0%B2%D1%8B%20%D0%BA%20%D0%BD%D0%B0%D1%81%D0%B8%D0%BB%D0%B8%D1%8E%20%D0%B8%20%D0%BF%D1%80%D0%BE%D1%82%D0%B8%D0%B2%D0%BE%D0%BF%D1%80%D0%B0%D0%B2%D0%BD%D1%8B%D0%BC%20%D0%B4%D0%B5%D0%B9%D1%81%D1%82%D0%B2%D0%B8%D1%8F%D0%BC%3B%3C%2Fp%3E%0A%0A%3Cp%3E%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D0%B5%2C%20%D0%BD%D0%B0%D1%80%D1%83%D1%88%D0%B0%D1%8E%D1%89%D0%B8%D0%B5%20%D0%BB%D0%B8%D1%87%D0%BD%D1%8B%D0%B5%20%D0%BF%D1%80%D0%B0%D0%B2%D0%B0%20%D0%B8%D0%BB%D0%B8%20%D0%BF%D1%80%D0%B0%D0%B2%D0%B0%20%D0%B8%D0%BD%D1%82%D0%B5%D0%BB%D0%BB%D0%B5%D0%BA%D1%82%D1%83%D0%B0%D0%BB%D1%8C%D0%BD%D0%BE%D0%B9%20%D1%81%D0%BE%D0%B1%D1%81%D1%82%D0%B2%D0%B5%D0%BD%D0%BD%D0%BE%D1%81%D1%82%D0%B8%20%D1%82%D1%80%D0%B5%D1%82%D1%8C%D0%B8%D1%85%20%D0%BB%D0%B8%D1%86%3B%3C%2Fp%3E%0A%0A%3Cp%3E%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8E%2C%20%D1%81%D0%BF%D0%BE%D1%81%D0%BE%D0%B1%D1%81%D1%82%D0%B2%D1%83%D1%8E%D1%89%D1%83%D1%8E%20%D0%BC%D0%BE%D1%88%D0%B5%D0%BD%D0%BD%D0%B8%D1%87%D0%B5%D1%81%D1%82%D0%B2%D1%83%2C%20%D0%BE%D0%B1%D0%BC%D0%B0%D0%BD%D1%83%20%D0%B8%D0%BB%D0%B8%20%D0%B7%D0%BB%D0%BE%D1%83%D0%BF%D0%BE%D1%82%D1%80%D0%B5%D0%B1%D0%BB%D0%B5%D0%BD%D0%B8%D1%8E%20%D0%B4%D0%BE%D0%B2%D0%B5%D1%80%D0%B8%D0%B5%D0%BC%3B%3C%2Fp%3E%0A%0A%3Cp%3E%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8E%2C%20%D0%B2%D0%B5%D0%B4%D1%83%D1%89%D1%83%D1%8E%20%D0%BA%20%D1%81%D0%BE%D0%B2%D0%B5%D1%80%D1%88%D0%B5%D0%BD%D0%B8%D1%8E%20%D1%81%D0%B4%D0%B5%D0%BB%D0%BE%D0%BA%20%D1%81%20%D0%BA%D1%80%D0%B0%D0%B4%D0%B5%D0%BD%D1%8B%D0%BC%D0%B8%20%D0%B8%D0%BB%D0%B8%20%D0%BF%D0%BE%D0%B4%D0%B4%D0%B5%D0%BB%D1%8C%D0%BD%D1%8B%D0%BC%D0%B8%20%D0%BF%D1%80%D0%B5%D0%B4%D0%BC%D0%B5%D1%82%D0%B0%D0%BC%D0%B8%3B%3C%2Fp%3E%0A%0A%3Cp%3E%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8E%2C%20%D0%BD%D0%B0%D1%80%D1%83%D1%88%D0%B0%D1%8E%D1%89%D1%83%D1%8E%20%D0%B8%D0%BB%D0%B8%20%D0%BF%D0%BE%D1%81%D1%8F%D0%B3%D0%B0%D1%8E%D1%89%D1%83%D1%8E%20%D0%BD%D0%B0%20%D1%81%D0%BE%D0%B1%D1%81%D1%82%D0%B2%D0%B5%D0%BD%D0%BD%D0%BE%D1%81%D1%82%D1%8C%20%D1%82%D1%80%D0%B5%D1%82%D1%8C%D0%B8%D1%85%20%D0%BB%D0%B8%D1%86%2C%20%D0%BA%D0%BE%D0%BC%D0%BC%D0%B5%D1%80%D1%87%D0%B5%D1%81%D0%BA%D1%83%D1%8E%20%D1%82%D0%B0%D0%B9%D0%BD%D1%83%20%D0%BB%D0%B8%D0%B1%D0%BE%20%D0%BF%D1%80%D0%B0%D0%B2%D0%BE%20%D0%BD%D0%B0%20%D0%BD%D0%B5%D0%BF%D1%80%D0%B8%D0%BA%D0%BE%D1%81%D0%BD%D0%BE%D0%B2%D0%B5%D0%BD%D0%BD%D0%BE%D1%81%D1%82%D1%8C%20%D1%87%D0%B0%D1%81%D1%82%D0%BD%D0%BE%D0%B9%20%D0%B6%D0%B8%D0%B7%D0%BD%D0%B8%3B%3C%2Fp%3E%0A%0A%3Cp%3E%D0%BB%D0%B8%D1%87%D0%BD%D1%83%D1%8E%20%D0%B8%D0%BB%D0%B8%20%D0%B8%D0%B4%D0%B5%D0%BD%D1%82%D0%B8%D1%84%D0%B8%D1%86%D0%B8%D1%80%D1%83%D1%8E%D1%89%D1%83%D1%8E%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8E%20%D0%BE%20%D0%B4%D1%80%D1%83%D0%B3%D0%B8%D1%85%20%D0%BB%D0%B8%D1%86%D0%B0%D1%85%20%D0%B1%D0%B5%D0%B7%20%D1%8F%D0%B2%D0%BD%D0%BE%20%D0%B2%D1%8B%D1%80%D0%B0%D0%B6%D0%B5%D0%BD%D0%BD%D0%BE%D0%B3%D0%BE%20%D1%81%D0%BE%D0%B3%D0%BB%D0%B0%D1%81%D0%B8%D1%8F%20%D1%8D%D1%82%D0%B8%D1%85%20%D0%BB%D0%B8%D1%86%3B%3C%2Fp%3E%0A%0A%3Cp%3E%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8E%2C%20%D1%81%D0%BE%D0%B4%D0%B5%D1%80%D0%B6%D0%B0%D1%89%D1%83%D1%8E%20%D1%81%D0%B2%D0%B5%D0%B4%D0%B5%D0%BD%D0%B8%D1%8F%2C%20%D0%BF%D0%BE%D1%81%D1%8F%D0%B3%D0%B0%D1%8E%D1%89%D0%B8%D0%B5%20%D0%BD%D0%B0%20%D0%BD%D0%B5%D0%BF%D1%80%D0%B8%D0%BA%D0%BE%D1%81%D0%BD%D0%BE%D0%B2%D0%B5%D0%BD%D0%BD%D0%BE%D1%81%D1%82%D1%8C%20%D1%87%D0%B0%D1%81%D1%82%D0%BD%D0%BE%D0%B9%20%D0%B6%D0%B8%D0%B7%D0%BD%D0%B8%2C%20%D0%BE%D1%81%D0%BA%D0%BE%D1%80%D0%B1%D0%BB%D1%8F%D1%8E%D1%89%D1%83%D1%8E%20%D1%87%D1%8C%D1%8E-%D0%BB%D0%B8%D0%B1%D0%BE%20%D1%87%D0%B5%D1%81%D1%82%D1%8C%2C%20%D0%B4%D0%BE%D1%81%D1%82%D0%BE%D0%B8%D0%BD%D1%81%D1%82%D0%B2%D0%BE%20%D0%B8%D0%BB%D0%B8%20%D0%B4%D0%B5%D0%BB%D0%BE%D0%B2%D1%83%D1%8E%20%D1%80%D0%B5%D0%BF%D1%83%D1%82%D0%B0%D1%86%D0%B8%D1%8E%3B%3C%2Fp%3E%0A%0A%3Cp%3E%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8E%2C%20%D1%81%D0%BE%D0%B4%D0%B5%D1%80%D0%B6%D0%B0%D1%89%D1%83%D1%8E%20%D0%BA%D0%BB%D0%B5%D0%B2%D0%B5%D1%82%D1%83%20%D0%B8%D0%BB%D0%B8%20%D1%83%D0%B3%D1%80%D0%BE%D0%B7%D1%8B%20%D0%B2%20%D0%B0%D0%B4%D1%80%D0%B5%D1%81%20%D0%BA%D0%BE%D0%B3%D0%BE%20%D0%B1%D1%8B%20%D1%82%D0%BE%20%D0%BD%D0%B8%20%D0%B1%D1%8B%D0%BB%D0%BE%3B%3C%2Fp%3E%0A%0A%3Cp%3E%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8E%2C%20%D0%BD%D0%BE%D1%81%D1%8F%D1%89%D1%83%D1%8E%20%D1%85%D0%B0%D1%80%D0%B0%D0%BA%D1%82%D0%B5%D1%80%20%D0%BF%D0%BE%D1%80%D0%BD%D0%BE%D0%B3%D1%80%D0%B0%D1%84%D0%B8%D0%B8%3B%3C%2Fp%3E%0A%0A%3Cp%3E%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8E%2C%20%D0%BD%D0%B0%D0%BD%D0%BE%D1%81%D1%8F%D1%89%D1%83%D1%8E%20%D0%B2%D1%80%D0%B5%D0%B4%20%D0%BD%D0%B5%D1%81%D0%BE%D0%B2%D0%B5%D1%80%D1%88%D0%B5%D0%BD%D0%BD%D0%BE%D0%BB%D0%B5%D1%82%D0%BD%D0%B8%D0%BC%3B%3C%2Fp%3E%0A%0A%3Cp%3E%D0%BB%D0%BE%D0%B6%D0%BD%D1%83%D1%8E%20%D0%B8%20%D0%B2%D0%B2%D0%BE%D0%B4%D1%8F%D1%89%D1%83%D1%8E%20%D0%B2%20%D0%B7%D0%B0%D0%B1%D0%BB%D1%83%D0%B6%D0%B4%D0%B5%D0%BD%D0%B8%D0%B5%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8E%3B%3C%2Fp%3E%0A%0A%3Cp%3E%D0%B2%D0%B8%D1%80%D1%83%D1%81%D1%8B%20%D0%B8%D0%BB%D0%B8%20%D0%BA%D0%B0%D0%BA%D0%B8%D0%B5-%D0%BB%D0%B8%D0%B1%D0%BE%20%D0%B4%D1%80%D1%83%D0%B3%D0%B8%D0%B5%20%D1%82%D0%B5%D1%85%D0%BD%D0%BE%D0%BB%D0%BE%D0%B3%D0%B8%D0%B8%2C%20%D0%BC%D0%BE%D0%B3%D1%83%D1%89%D0%B8%D0%B5%20%D0%BD%D0%B0%D0%BD%D0%B5%D1%81%D1%82%D0%B8%20%D0%B2%D1%80%D0%B5%D0%B4%20%D1%81%D0%B0%D0%B9%D1%82%D0%B0%D0%BC%2C%20%D0%BA%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D0%B8%20%D0%B8%D0%BB%D0%B8%20%D0%B4%D1%80%D1%83%D0%B3%D0%B8%D0%BC%20%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F%D0%BC%3B%3C%2Fp%3E%0A%0A%3Cp%3E%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8E%20%D0%BE%20%D1%81%D0%B5%D1%80%D0%B2%D0%B8%D1%81%D0%B0%D1%85%2C%20%D1%81%D1%87%D0%B8%D1%82%D0%B0%D1%8E%D1%89%D0%B8%D1%85%D1%81%D1%8F%20%D0%B0%D0%BC%D0%BE%D1%80%D0%B0%D0%BB%D1%8C%D0%BD%D1%8B%D0%BC%D0%B8%2C%20%D1%82%D0%B0%D0%BA%D0%B8%D1%85%20%D0%BA%D0%B0%D0%BA%3A%20%D0%BF%D1%80%D0%BE%D1%81%D1%82%D0%B8%D1%82%D1%83%D1%86%D0%B8%D1%8F%2C%20%D1%80%D0%BE%D1%81%D1%82%D0%BE%D0%B2%D1%89%D0%B8%D1%87%D0%B5%D1%81%D1%82%D0%B2%D0%BE%20%D0%B8%D0%BB%D0%B8%20%D0%B4%D1%80%D1%83%D0%B3%D0%B8%D0%B5%20%D1%84%D0%BE%D1%80%D0%BC%D1%8B%2C%20%D0%BF%D1%80%D0%BE%D1%82%D0%B8%D0%B2%D0%BE%D1%80%D0%B5%D1%87%D0%B0%D1%89%D0%B8%D0%B5%20%D0%BD%D0%BE%D1%80%D0%BC%D0%B0%D0%BC%20%D0%BC%D0%BE%D1%80%D0%B0%D0%BB%D0%B8%20%D0%B8%D0%BB%D0%B8%20%D0%B7%D0%B0%D0%BA%D0%BE%D0%BD%D0%B0%3B%3C%2Fp%3E%0A%0A%3Cp%3E%D1%81%D1%81%D1%8B%D0%BB%D0%BA%D0%B8%20%D0%B8%D0%BB%D0%B8%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8E%20%D0%BE%20%D1%81%D0%B0%D0%B9%D1%82%D0%B0%D1%85%2C%20%D0%BA%D0%BE%D0%BD%D0%BA%D1%83%D1%80%D0%B8%D1%80%D1%83%D1%8E%D1%89%D0%B8%D1%85%20%D1%81%20%D1%81%D0%B5%D1%80%D0%B2%D0%B8%D1%81%D0%B0%D0%BC%D0%B8%20%D0%BA%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D0%B8%3B%3C%2Fp%3E%0A%0A%3Cp%3E%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8E%2C%20%D0%BF%D1%80%D0%B5%D0%B4%D1%81%D1%82%D0%B0%D0%B2%D0%BB%D1%8F%D1%8E%D1%89%D1%83%D1%8E%20%D1%81%D0%BE%D0%B1%D0%BE%D0%B9%20%26laquo%3B%D1%81%D0%BF%D0%B0%D0%BC%26raquo%3B%2C%20%26laquo%3B%D0%BF%D0%B8%D1%81%D1%8C%D0%BC%D0%B0%20%D1%81%D1%87%D0%B0%D1%81%D1%82%D1%8C%D1%8F%26raquo%3B%2C%20%26laquo%3B%D1%81%D1%85%D0%B5%D0%BC%D1%8B%20%D0%BF%D0%B8%D1%80%D0%B0%D0%BC%D0%B8%D0%B4%26raquo%3B%20%D0%B8%D0%BB%D0%B8%20%D0%BD%D0%B5%D0%B6%D0%B5%D0%BB%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D1%83%D1%8E%20%D0%B8%D0%BB%D0%B8%20%D0%BB%D0%B6%D0%B8%D0%B2%D1%83%D1%8E%20%D0%BA%D0%BE%D0%BC%D0%BC%D0%B5%D1%80%D1%87%D0%B5%D1%81%D0%BA%D1%83%D1%8E%20%D1%80%D0%B5%D0%BA%D0%BB%D0%B0%D0%BC%D1%83%3B%3C%2Fp%3E%0A%0A%3Cp%3E%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8E%2C%20%D1%80%D0%B0%D1%81%D0%BF%D1%80%D0%BE%D1%81%D1%82%D1%80%D0%B0%D0%BD%D1%8F%D0%B5%D0%BC%D1%83%D1%8E%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D0%BE%D0%BD%D0%BD%D1%8B%D0%BC%D0%B8%20%D0%B0%D0%B3%D0%B5%D0%BD%D1%82%D1%81%D1%82%D0%B2%D0%B0%D0%BC%D0%B8%3B%3C%2Fp%3E%0A%0A%3Cp%3E%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8E%20%D1%81%20%D0%BF%D1%80%D0%B5%D0%B4%D0%BB%D0%BE%D0%B6%D0%B5%D0%BD%D0%B8%D0%B5%D0%BC%20%D0%B7%D0%B0%D1%80%D0%B0%D0%B1%D0%BE%D1%82%D0%BA%D0%B0%20%D0%B2%20%D0%B8%D0%BD%D1%82%D0%B5%D1%80%D0%BD%D0%B5%D1%82%2C%20%D0%B1%D0%B5%D0%B7%20%D1%83%D0%BA%D0%B0%D0%B7%D0%B0%D0%BD%D0%B8%D1%8F%20%D1%84%D0%B8%D0%B7%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%BE%D0%B3%D0%BE%20%D0%B0%D0%B4%D1%80%D0%B5%D1%81%D0%B0%20%D0%B8%20%D0%BF%D1%80%D1%8F%D0%BC%D1%8B%D1%85%20%D0%BA%D0%BE%D0%BD%D1%82%D0%B0%D0%BA%D1%82%D0%BE%D0%B2%20%D1%80%D0%B0%D0%B1%D0%BE%D1%82%D0%BE%D0%B4%D0%B0%D1%82%D0%B5%D0%BB%D1%8F%3B%3C%2Fp%3E%0A%0A%3Cp%3E%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8E%20%D1%81%20%D0%BF%D1%80%D0%B5%D0%B4%D0%BB%D0%BE%D0%B6%D0%B5%D0%BD%D0%B8%D0%B5%D0%BC%20%D1%84%D1%80%D0%B0%D0%BD%D1%88%D0%B8%D0%B7%D1%8B%2C%20%D0%BC%D0%BD%D0%BE%D0%B3%D0%BE%D1%83%D1%80%D0%BE%D0%B2%D0%BD%D0%B5%D0%B2%D0%BE%D0%B3%D0%BE%20%D0%B8%20%D1%81%D0%B5%D1%82%D0%B5%D0%B2%D0%BE%D0%B3%D0%BE%20%D0%BC%D0%B0%D1%80%D0%BA%D0%B5%D1%82%D0%B8%D0%BD%D0%B3%D0%B0%2C%20%D0%B0%D0%B3%D0%B5%D0%BD%D1%82%D1%81%D0%BA%D0%BE%D0%B9%20%D0%B4%D0%B5%D1%8F%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D0%BE%D1%81%D1%82%D0%B8%2C%20%D1%82%D0%BE%D1%80%D0%B3%D0%BE%D0%B2%D0%BE%D0%B3%D0%BE%20%D0%BF%D1%80%D0%B5%D0%B4%D1%81%D1%82%D0%B0%D0%B2%D0%B8%D1%82%D0%B5%D0%BB%D1%8C%D1%81%D1%82%D0%B2%D0%B0%20%D0%B8%D0%BB%D0%B8%20%D0%BB%D1%8E%D0%B1%D0%BE%D0%B9%20%D0%B4%D1%80%D1%83%D0%B3%D0%BE%D0%B9%20%D0%B4%D0%B5%D1%8F%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D0%BE%D1%81%D1%82%D0%B8%2C%20%D0%BA%D0%BE%D1%82%D0%BE%D1%80%D0%B0%D1%8F%20%D1%82%D1%80%D0%B5%D0%B1%D1%83%D0%B5%D1%82%20%D0%B2%D0%B5%D1%80%D0%B1%D0%BE%D0%B2%D0%BA%D0%B8%20%D0%B4%D1%80%D1%83%D0%B3%D0%B8%D1%85%20%D1%87%D0%BB%D0%B5%D0%BD%D0%BE%D0%B2%2C%20%D1%81%D1%83%D0%B1%D0%B0%D0%B3%D0%B5%D0%BD%D1%82%D0%BE%D0%B2%2C%20%D1%81%D1%83%D0%B1%D0%B4%D0%B8%D1%81%D1%82%D1%80%D0%B8%D0%B1%D1%8C%D1%8E%D1%82%D0%B5%D1%80%D0%BE%D0%B2%20%D0%B8%20%D0%BF%D1%80.%3B%3C%2Fp%3E%0A%0A%3Cp%3E%D1%81%D0%B2%D0%B5%D0%B4%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%B8%D1%81%D0%BA%D0%BB%D1%8E%D1%87%D0%B8%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D0%BE%20%D1%80%D0%B5%D0%BA%D0%BB%D0%B0%D0%BC%D0%BD%D0%BE%D0%B3%D0%BE%20%D1%85%D0%B0%D1%80%D0%B0%D0%BA%D1%82%D0%B5%D1%80%D0%B0%20%D0%B1%D0%B5%D0%B7%20%D0%BF%D1%80%D0%B5%D0%B4%D0%BB%D0%BE%D0%B6%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%BA%D0%BE%D0%BD%D0%BA%D1%80%D0%B5%D1%82%D0%BD%D0%BE%D0%B3%D0%BE%20%D1%82%D0%BE%D0%B2%D0%B0%D1%80%D0%B0%20%D0%B8%D0%BB%D0%B8%20%D1%83%D1%81%D0%BB%D1%83%D0%B3%D0%B8%3B%3C%2Fp%3E%0A%0A%3Cp%3E%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8E%2C%20%D0%B8%D0%BD%D1%8B%D0%BC%20%D0%BE%D0%B1%D1%80%D0%B0%D0%B7%D0%BE%D0%BC%20%D0%BD%D0%B0%D1%80%D1%83%D1%88%D0%B0%D1%8E%D1%89%D1%83%D1%8E%20%D0%B7%D0%B0%D0%BA%D0%BE%D0%BD%D0%BE%D0%B4%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%D1%81%D1%82%D0%B2%D0%BE%20%D1%8E%D1%80%D0%B8%D1%81%D0%B4%D0%B8%D0%BA%D1%86%D0%B8%D0%B8%2C%20%D0%B4%D0%BB%D1%8F%20%D0%BA%D0%BE%D1%82%D0%BE%D1%80%D0%BE%D0%B9%20%D0%BF%D1%80%D0%B5%D0%B4%D0%BD%D0%B0%D0%B7%D0%BD%D0%B0%D1%87%D0%B5%D0%BD%D0%BE%20%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%97%D0%B0%D0%BF%D1%80%D0%B5%D1%89%D0%B0%D0%B5%D1%82%D1%81%D1%8F%20%D1%80%D0%B0%D0%B7%D0%BC%D0%B5%D1%89%D0%B0%D1%82%D1%8C%20%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F%2C%20%D1%80%D0%B5%D0%BA%D0%BB%D0%B0%D0%BC%D0%B8%D1%80%D1%83%D1%8E%D1%89%D0%B8%D0%B5%20%D0%BF%D1%80%D0%BE%D0%B4%D0%B0%D0%B6%D1%83%3A%20%D1%81%D0%BF%D0%B8%D1%80%D1%82%D0%BD%D1%8B%D1%85%20%D0%BD%D0%B0%D0%BF%D0%B8%D1%82%D0%BA%D0%BE%D0%B2%3B%20%D1%81%D0%B8%D0%B3%D0%B0%D1%80%D0%B5%D1%82%20%D0%B8%20%D1%82%D0%B0%D0%B1%D0%B0%D1%87%D0%BD%D0%BE%D0%B9%20%D0%BF%D1%80%D0%BE%D0%B4%D1%83%D0%BA%D1%86%D0%B8%D0%B8%3B%20%D0%BD%D0%B0%D1%80%D0%BA%D0%BE%D1%82%D0%B8%D0%BA%D0%BE%D0%B2%3B%20%D0%BF%D0%BE%D1%80%D0%BD%D0%BE%D0%B3%D1%80%D0%B0%D1%84%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D1%85%20%D0%BC%D0%B0%D1%82%D0%B5%D1%80%D0%B8%D0%B0%D0%BB%D0%BE%D0%B2%20%D0%B8%D0%BB%D0%B8%20%D0%BF%D1%80%D0%B5%D0%B4%D0%BC%D0%B5%D1%82%D0%BE%D0%B2%3B%20%D1%84%D0%B0%D1%80%D0%BC%D0%B0%D0%BA%D0%BE%D0%BB%D0%BE%D0%B3%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D1%85%20%D0%BF%D1%80%D0%BE%D0%B4%D1%83%D0%BA%D1%82%D0%BE%D0%B2%20%D0%B8%20%D0%BC%D0%B5%D0%B4%D0%B8%D0%BA%D0%B0%D0%BC%D0%B5%D0%BD%D1%82%D0%BE%D0%B2%3B%20%D1%83%D0%BA%D1%80%D0%B0%D0%B4%D0%B5%D0%BD%D0%BD%D1%8B%D1%85%2C%20%D0%BF%D0%BE%D0%BB%D1%83%D1%87%D0%B5%D0%BD%D0%BD%D1%8B%D1%85%20%D0%BA%D1%80%D0%B8%D0%BC%D0%B8%D0%BD%D0%B0%D0%BB%D1%8C%D0%BD%D1%8B%D0%BC%20%D1%81%D0%BF%D0%BE%D1%81%D0%BE%D0%B1%D0%BE%D0%BC%20%D1%82%D0%BE%D0%B2%D0%B0%D1%80%D0%BE%D0%B2%3B%20%D0%BF%D1%80%D0%B5%D0%B4%D0%BC%D0%B5%D1%82%D0%BE%D0%B2%2C%20%D0%BF%D1%80%D0%B5%D0%B4%D1%81%D1%82%D0%B0%D0%B2%D0%BB%D1%8F%D1%8E%D1%89%D0%B8%D1%85%20%D0%BE%D0%BF%D0%B0%D1%81%D0%BD%D0%BE%D1%81%D1%82%D1%8C%20%D0%B4%D0%BB%D1%8F%20%D0%B6%D0%B8%D0%B7%D0%BD%D0%B8%20%D0%B8%20%D0%B7%D0%B4%D0%BE%D1%80%D0%BE%D0%B2%D1%8C%D1%8F%3B%20%D0%BD%D0%B5%D1%81%D1%83%D1%89%D0%B5%D1%81%D1%82%D0%B2%D1%83%D1%8E%D1%89%D0%B8%D1%85%20%D1%82%D0%BE%D0%B2%D0%B0%D1%80%D0%BE%D0%B2%3B%20%D1%87%D0%B5%D0%BB%D0%BE%D0%B2%D0%B5%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D1%85%20%D0%BE%D1%80%D0%B3%D0%B0%D0%BD%D0%BE%D0%B2%3B%20%D0%B3%D0%BE%D1%81%D1%83%D0%B4%D0%B0%D1%80%D1%81%D1%82%D0%B2%D0%B5%D0%BD%D0%BD%D1%8B%D1%85%20%D0%BD%D0%B0%D0%B3%D1%80%D0%B0%D0%B4%3B%20%D0%BF%D0%B5%D1%80%D1%81%D0%BE%D0%BD%D0%B0%D0%BB%D1%8C%D0%BD%D1%8B%D1%85%20%D0%B4%D0%BE%D0%BA%D1%83%D0%BC%D0%B5%D0%BD%D1%82%D0%BE%D0%B2%2C%20%D0%B0%20%D1%82%D0%B0%D0%BA%D0%B6%D0%B5%20%D0%B1%D0%BB%D0%B0%D0%BD%D0%BA%D0%BE%D0%B2%20%D1%8D%D1%82%D0%B8%D1%85%20%D0%B4%D0%BE%D0%BA%D1%83%D0%BC%D0%B5%D0%BD%D1%82%D0%BE%D0%B2%3B%20%D0%B1%D0%B0%D0%B7%20%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D1%85%3B%20%D0%BE%D0%B3%D0%BD%D0%B5%D1%81%D1%82%D1%80%D0%B5%D0%BB%D1%8C%D0%BD%D0%BE%D0%B3%D0%BE%20%D0%B8%20%D1%85%D0%BE%D0%BB%D0%BE%D0%B4%D0%BD%D0%BE%D0%B3%D0%BE%20%D0%BE%D1%80%D1%83%D0%B6%D0%B8%D1%8F%3B%20%D0%BA%D0%BB%D1%8B%D0%BA%D0%BE%D0%B2%20%D0%BC%D0%BE%D1%80%D0%B6%D0%B0%3B%20%D0%B1%D0%B8%D0%B2%D0%BD%D0%B5%D0%B9%20%D1%81%D0%BB%D0%BE%D0%BD%D0%B0%20%D0%B8%20%D0%BC%D0%B0%D0%BC%D0%BE%D0%BD%D1%82%D0%B0%20%D0%BD%D0%B5%20%D0%B2%20%D0%B8%D0%B7%D0%B4%D0%B5%D0%BB%D0%B8%D0%B8%2C%20%D0%B0%20%D1%82%D0%B0%D0%BA%D0%B6%D0%B5%20%D0%B4%D1%80%D0%B0%D0%B3%D0%BE%D1%86%D0%B5%D0%BD%D0%BD%D1%8B%D1%85%20%D0%BC%D0%B5%D1%82%D0%B0%D0%BB%D0%BB%D0%BE%D0%B2%20%D0%B8%20%D0%B4%D1%80%D0%B0%D0%B3%D0%BE%D1%86%D0%B5%D0%BD%D0%BD%D1%8B%D1%85%20%D0%BA%D0%B0%D0%BC%D0%BD%D0%B5%D0%B9%20%D0%BD%D0%B5%20%D0%B2%20%D0%B8%D0%B7%D0%B4%D0%B5%D0%BB%D0%B8%D0%B8%3B%20%D1%80%D0%B5%D0%B4%D0%BA%D0%B8%D1%85%20%D0%B8%20%D0%B7%D0%B0%D0%BF%D1%80%D0%B5%D1%89%D0%B5%D0%BD%D0%BD%D1%8B%D1%85%20%D0%BA%20%D0%BF%D1%80%D0%BE%D0%B4%D0%B0%D0%B6%D0%B5%20%D0%B6%D0%B8%D0%B2%D0%BE%D1%82%D0%BD%D1%8B%D1%85%20%D0%BB%D1%8E%D0%B1%D1%8B%D1%85%20%D0%B4%D1%80%D1%83%D0%B3%D0%B8%D1%85%20%D0%B7%D0%B0%D0%BF%D1%80%D0%B5%D1%89%D1%91%D0%BD%D0%BD%D1%8B%D1%85%20%D1%81%D0%BE%D0%BE%D1%82%D0%B2%D0%B5%D1%82%D1%81%D1%82%D0%B2%D1%83%D1%8E%D1%89%D0%B8%D0%BC%20%D0%B7%D0%B0%D0%BA%D0%BE%D0%BD%D0%BE%D0%B4%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%D1%81%D1%82%D0%B2%D0%BE%D0%BC%20%D1%82%D0%BE%D0%B2%D0%B0%D1%80%D0%BE%D0%B2%20%D0%B8%20%D1%83%D1%81%D0%BB%D1%83%D0%B3.%20%D0%9F%D0%BE%D0%BB%D0%BD%D1%8B%D0%B9%20%D1%81%D0%BF%D0%B8%D1%81%D0%BE%D0%BA%20%D0%B7%D0%B0%D0%BF%D1%80%D0%B5%D1%89%D0%B5%D0%BD%D0%BD%D1%8B%D1%85%20%D0%BD%D0%B0%20%D1%81%D0%B0%D0%B9%D1%82%D0%B5%20%D1%82%D0%BE%D0%B2%D0%B0%D1%80%D0%BE%D0%B2%20%D0%B8%20%D1%83%D1%81%D0%BB%D1%83%D0%B3%20%D0%B4%D0%BE%D1%81%D1%82%D1%83%D0%BF%D0%B5%D0%BD%20%D0%BF%D0%BE%20%D1%81%D1%81%D1%8B%D0%BB%D0%BA%D0%B5%3A%20%7Burl%7D.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9F%D1%80%D0%B8%20%D0%BF%D0%BE%D0%B4%D0%B0%D1%87%D0%B5%20%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F%20%D1%81%20%D0%BF%D1%80%D0%B5%D0%B4%D0%BB%D0%BE%D0%B6%D0%B5%D0%BD%D0%B8%D1%8F%D0%BC%D0%B8%20%D1%83%D1%81%D0%BB%D1%83%D0%B3%2C%20%D0%BF%D0%BE%D0%B4%D0%BB%D0%B5%D0%B6%D0%B0%D1%89%D0%B8%D1%85%20%D0%BB%D0%B8%D1%86%D0%B5%D0%BD%D0%B7%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D1%8E%2C%20%D0%B2%20%D1%82%D0%B5%D0%BA%D1%81%D1%82%D0%B5%20%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F%20%D1%82%D1%80%D0%B5%D0%B1%D1%83%D0%B5%D1%82%D1%81%D1%8F%20%D1%83%D0%BA%D0%B0%D0%B7%D1%8B%D0%B2%D0%B0%D1%82%D1%8C%20%D0%BD%D0%BE%D0%BC%D0%B5%D1%80%20%D0%BB%D0%B8%D1%86%D0%B5%D0%BD%D0%B7%D0%B8%D0%B8%20%D0%B8%20%D0%BD%D0%B0%D0%B8%D0%BC%D0%B5%D0%BD%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5%20%D0%BE%D1%80%D0%B3%D0%B0%D0%BD%D0%B0%2C%20%D0%B2%D1%8B%D0%B4%D0%B0%D0%B2%D1%88%D0%B5%D0%B3%D0%BE%20%D0%BB%D0%B8%D1%86%D0%B5%D0%BD%D0%B7%D0%B8%D1%8E.%3C%2Fp%3E%0A%0A%3Cp%3E5.%20%D0%9F%D0%A0%D0%98%D0%A7%D0%98%D0%9D%D0%AB%20%D0%A3%D0%94%D0%90%D0%9B%D0%95%D0%9D%D0%98%D0%AF%20%D0%9E%D0%91%D0%AA%D0%AF%D0%92%D0%9B%D0%95%D0%9D%D0%98%D0%99%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9E%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F%20%D0%BC%D0%BE%D0%B6%D0%B5%D1%82%20%D0%B1%D1%8B%D1%82%D1%8C%20%D1%83%D0%B4%D0%B0%D0%BB%D0%B5%D0%BD%D0%BE%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D0%B5%D0%B9%20%D0%BF%D0%BE%20%D0%BF%D1%80%D0%B8%D1%87%D0%B8%D0%BD%D0%B5%20%D0%BD%D0%B0%D1%80%D1%83%D1%88%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D0%B5%D0%BC%20%D1%83%D1%81%D0%BB%D0%BE%D0%B2%D0%B8%D0%B9%20%D0%BD%D0%B0%D1%81%D1%82%D0%BE%D1%8F%D1%89%D0%B5%D0%B3%D0%BE%20%D0%A1%D0%BE%D0%B3%D0%BB%D0%B0%D1%88%D0%B5%D0%BD%D0%B8%D1%8F%2C%20%D0%B0%20%D1%82%D0%B0%D0%BA%D0%B6%D0%B5%20%D0%BF%D0%BE%20%D1%81%D0%BB%D0%B5%D0%B4%D1%83%D1%8E%D1%89%D0%B8%D0%BC%20%D0%BF%D1%80%D0%B8%D1%87%D0%B8%D0%BD%D0%B0%D0%BC%3A%3C%2Fp%3E%0A%0A%3Cp%3E%D0%A3%20%D0%B4%D0%B0%D0%BD%D0%BD%D0%BE%D0%B3%D0%BE%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F%20%D1%83%D0%B6%D0%B5%20%D0%B5%D1%81%D1%82%D1%8C%20%D0%BD%D0%B0%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B5%20%D0%B0%D0%BA%D1%82%D0%B8%D0%B2%D0%BD%D0%BE%D0%B5%20%D0%B0%D0%BD%D0%B0%D0%BB%D0%BE%D0%B3%D0%B8%D1%87%D0%BD%D0%BE%D0%B5%20%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5%20%D1%81%20%D1%80%D0%B5%D0%BA%D0%BB%D0%B0%D0%BC%D0%BE%D0%B9%20%D1%8D%D1%82%D0%BE%D0%B3%D0%BE%20%D1%82%D0%BE%D0%B2%D0%B0%D1%80%D0%B0%2F%D1%83%D1%81%D0%BB%D1%83%D0%B3%D0%B8%3B%3C%2Fp%3E%0A%0A%3Cp%3E%D0%A1%D0%BE%D0%B4%D0%B5%D1%80%D0%B6%D0%B0%D1%89%D0%B0%D1%8F%D1%81%D1%8F%20%D0%B2%20%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B8%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8F%20%D0%BF%D1%80%D0%BE%D1%82%D0%B8%D0%B2%D0%BE%D1%80%D0%B5%D1%87%D0%B8%D1%82%20%D1%82%D1%80%D0%B5%D0%B1%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D1%8F%D0%BC%20%D0%A1%D0%BE%D0%B3%D0%BB%D0%B0%D1%88%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%B8%2F%D0%B8%D0%BB%D0%B8%20%D0%B7%D0%B0%D0%BA%D0%BE%D0%BD%D0%BE%D0%B4%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%D1%81%D1%82%D0%B2%D1%83%3B%3C%2Fp%3E%0A%0A%3Cp%3E%D0%A1%D0%BE%D0%B4%D0%B5%D1%80%D0%B6%D0%B0%D1%89%D0%B0%D1%8F%D1%81%D1%8F%20%D0%B2%20%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B8%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8F%20%D0%BB%D0%BE%D0%B6%D0%BD%D0%B0%3B%3C%2Fp%3E%0A%0A%3Cp%3E%D0%97%D0%B0%D0%B3%D0%BE%D0%BB%D0%BE%D0%B2%D0%BE%D0%BA%20%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%BD%D0%B5%20%D1%81%D0%BE%D0%B4%D0%B5%D1%80%D0%B6%D0%B8%D1%82%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8E%20%D0%BE%20%D0%BF%D1%80%D0%B5%D0%B4%D0%BB%D0%B0%D0%B3%D0%B0%D0%B5%D0%BC%D0%BE%D0%BC%2F%D0%B2%D0%BE%D1%81%D1%82%D1%80%D0%B5%D0%B1%D0%BE%D0%B2%D0%B0%D0%BD%D0%BD%D0%BE%D0%BC%20%D1%82%D0%BE%D0%B2%D0%B0%D1%80%D0%B5%2F%D1%83%D1%81%D0%BB%D1%83%D0%B3%D0%B5%3B%3C%2Fp%3E%0A%0A%3Cp%3E%D0%97%D0%B0%D0%B3%D0%BE%D0%BB%D0%BE%D0%B2%D0%BE%D0%BA%20%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F%20%D1%81%D0%BE%D0%B4%D0%B5%D1%80%D0%B6%D0%B8%D1%82%20%D0%BF%D0%BE%D0%B2%D1%82%D0%BE%D1%80%D1%8F%D1%8E%D1%89%D0%B8%D0%B5%D1%81%D1%8F%20%D0%B2%D0%BE%D1%81%D0%BA%D0%BB%D0%B8%D1%86%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D1%8B%D0%B5%20%D0%B8%20%D0%B2%D0%BE%D0%BF%D1%80%D0%BE%D1%81%D0%B8%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D1%8B%D0%B5%20%D0%B7%D0%BD%D0%B0%D0%BA%D0%B8%2C%20%D0%BC%D0%BD%D0%BE%D0%B3%D0%BE%D1%82%D0%BE%D1%87%D0%B8%D1%8F%20%D0%B8%20%D0%B4%D1%80%D1%83%D0%B3%D0%B8%D0%B5%20%D0%B7%D0%BD%D0%B0%D0%BA%D0%B8%3B%3C%2Fp%3E%0A%0A%3Cp%3E%D0%97%D0%B0%D0%B3%D0%BE%D0%BB%D0%BE%D0%B2%D0%BE%D0%BA%20%D0%B8%D0%BB%D0%B8%20%D0%BA%D0%BE%D0%BC%D0%BC%D0%B5%D0%BD%D1%82%D0%B0%D1%80%D0%B8%D0%B9%20%D0%BA%20%D1%84%D0%BE%D1%82%D0%BE%D0%B3%D1%80%D0%B0%D1%84%D0%B8%D0%B8%20%D1%81%D0%BE%D0%B4%D0%B5%D1%80%D0%B6%D0%B0%D1%82%20%D1%81%D1%81%D1%8B%D0%BB%D0%BA%D1%83%20%D0%BD%D0%B0%20%D0%98%D0%BD%D1%82%D0%B5%D1%80%D0%BD%D0%B5%D1%82-%D1%80%D0%B5%D1%81%D1%83%D1%80%D1%81%D1%8B%3B%3C%2Fp%3E%0A%0A%3Cp%3E%D0%A4%D0%BE%D1%82%D0%BE%D0%B3%D1%80%D0%B0%D1%84%D0%B8%D1%8F%20%D0%BD%D0%B5%20%D0%B8%D0%BC%D0%B5%D0%B5%D1%82%20%D0%BE%D1%87%D0%B5%D0%B2%D0%B8%D0%B4%D0%BD%D0%BE%D0%B9%20%D1%81%D0%BC%D1%8B%D1%81%D0%BB%D0%BE%D0%B2%D0%BE%D0%B9%20%D1%81%D0%B2%D1%8F%D0%B7%D0%B8%20%D1%81%20%D1%82%D0%B5%D0%BA%D1%81%D1%82%D0%BE%D0%BC%20%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%B8%D0%BB%D0%B8%20%D0%BD%D0%B5%20%D1%81%D0%BB%D1%83%D0%B6%D0%B8%D1%82%20%D1%86%D0%B5%D0%BB%D0%B8%20%D0%B0%D0%B4%D0%B5%D0%BA%D0%B2%D0%B0%D1%82%D0%BD%D0%BE%20%D0%BF%D1%80%D0%BE%D0%B8%D0%BB%D0%BB%D1%8E%D1%81%D1%82%D1%80%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D1%82%D1%8C%20%D1%82%D0%B5%D0%BA%D1%81%D1%82%20%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F%3B%3C%2Fp%3E%0A%0A%3Cp%3E%D0%A4%D0%BE%D1%82%D0%BE%D0%B3%D1%80%D0%B0%D1%84%D0%B8%D1%8F%20%D1%81%D0%BE%D0%B4%D0%B5%D1%80%D0%B6%D0%B8%D1%82%20%D1%8D%D0%BB%D0%B5%D0%BC%D0%B5%D0%BD%D1%82%D1%8B%20%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%D1%81%D0%BA%D0%BE%D0%B3%D0%BE%20%D0%B8%D0%BD%D1%82%D0%B5%D1%80%D1%84%D0%B5%D0%B9%D1%81%D0%B0%2C%20%D0%B0%D0%B1%D1%81%D1%82%D1%80%D0%B0%D0%BA%D1%82%D0%BD%D1%8B%D0%B5%20%D1%80%D0%B8%D1%81%D1%83%D0%BD%D0%BA%D0%B8%20%D0%B8%20%D1%82.%20%D0%BF.%3B%3C%2Fp%3E%0A%0A%3Cp%3E%D0%A4%D0%BE%D1%82%D0%BE%D0%B3%D1%80%D0%B0%D1%84%D0%B8%D1%8F%20%D1%81%D0%BE%D0%B4%D0%B5%D1%80%D0%B6%D0%B8%D1%82%20%D0%BA%D0%B0%D0%BA%D1%83%D1%8E-%D0%BB%D0%B8%D0%B1%D0%BE%20%D1%80%D0%B5%D0%BA%D0%BB%D0%B0%D0%BC%D0%BD%D1%83%D1%8E%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8E%20(%D1%81%D1%81%D1%8B%D0%BB%D0%BA%D0%B0%20%D0%BD%D0%B0%20%D1%81%D0%B0%D0%B9%D1%82%2C%20e-mail%2C%20%D0%BD%D0%BE%D0%BC%D0%B5%D1%80%20%D1%82%D0%B5%D0%BB%D0%B5%D1%84%D0%BE%D0%BD%D0%B0%2C%20Skype%2C%20I%D0%A1Q%2C%20ID%20%D0%B2%20%D1%81%D0%BE%D1%86%D1%81%D0%B5%D1%82%D1%8F%D1%85%2C%20ID%20%D0%B4%D1%80%D1%83%D0%B3%D0%B8%D1%85%20%D0%BC%D0%B5%D1%81%D1%81%D0%B5%D0%BD%D0%B4%D0%B6%D0%B5%D1%80%D0%BE%D0%B2%20%D0%B8%20%D0%BF%D0%BE%D0%B4%D0%BE%D0%B1%D0%BD%D0%BE%D0%B5)%3B%3C%2Fp%3E%0A%0A%3Cp%3E%D0%A4%D0%BE%D1%82%D0%BE%D0%B3%D1%80%D0%B0%D1%84%D0%B8%D1%8F%20%D0%BF%D0%BB%D0%BE%D1%85%D0%BE%D0%B3%D0%BE%20%D0%BA%D0%B0%D1%87%D0%B5%D1%81%D1%82%D0%B2%D0%B0%2C%20%D0%B8%D0%B7%D0%BE%D0%B1%D1%80%D0%B0%D0%B6%D0%B0%D0%B5%D0%BC%D1%8B%D0%B9%20%D0%BF%D1%80%D0%B5%D0%B4%D0%BC%D0%B5%D1%82%20%D0%BD%D0%B5%D1%80%D0%B0%D0%B7%D0%BB%D0%B8%D1%87%D0%B8%D0%BC%3B%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9E%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5%20%D0%BF%D0%BE%D0%B4%D0%B0%D0%BD%D0%BE%20%D0%B2%20%D1%80%D1%83%D0%B1%D1%80%D0%B8%D0%BA%D1%83%2C%20%D0%BA%D0%BE%D1%82%D0%BE%D1%80%D0%B0%D1%8F%20%D0%BD%D0%B5%20%D1%81%D0%BE%D0%BE%D1%82%D0%B2%D0%B5%D1%82%D1%81%D1%82%D0%B2%D1%83%D0%B5%D1%82%20%D1%81%D0%BC%D1%8B%D1%81%D0%BB%D1%83%20%D0%BF%D0%BE%D0%B4%D0%B0%D0%BD%D0%BD%D0%BE%D0%B3%D0%BE%20%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F.%3C%2Fp%3E%0A%0A%3Cp%3E6.%20%D0%9F%D0%A0%D0%90%D0%92%D0%90%20%D0%98%20%D0%9E%D0%91%D0%AF%D0%97%D0%90%D0%9D%D0%9D%D0%9E%D0%A1%D0%A2%D0%98%20%D0%A1%D0%A2%D0%9E%D0%A0%D0%9E%D0%9D%3C%2Fp%3E%0A%0A%3Cp%3E%D0%92%D1%81%D0%B5%20%D0%BE%D0%B1%D1%8A%D0%B5%D0%BA%D1%82%D1%8B%2C%20%D0%B4%D0%BE%D1%81%D1%82%D1%83%D0%BF%D0%BD%D1%8B%D0%B5%20%D0%BF%D1%80%D0%B8%20%D0%BF%D0%BE%D0%BC%D0%BE%D1%89%D0%B8%20%D1%81%D0%B5%D1%80%D0%B2%D0%B8%D1%81%D0%BE%D0%B2%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D0%B8%2C%20%D0%B2%20%D1%82%D0%BE%D0%BC%20%D1%87%D0%B8%D1%81%D0%BB%D0%B5%20%D1%8D%D0%BB%D0%B5%D0%BC%D0%B5%D0%BD%D1%82%D1%8B%20%D0%B4%D0%B8%D0%B7%D0%B0%D0%B9%D0%BD%D0%B0%2C%20%D1%82%D0%B5%D0%BA%D1%81%D1%82%2C%20%D0%B3%D1%80%D0%B0%D1%84%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D0%B5%20%D0%B8%D0%B7%D0%BE%D0%B1%D1%80%D0%B0%D0%B6%D0%B5%D0%BD%D0%B8%D1%8F%2C%20%D0%B8%D0%BB%D0%BB%D1%8E%D1%81%D1%82%D1%80%D0%B0%D1%86%D0%B8%D0%B8%2C%20%D0%B2%D0%B8%D0%B4%D0%B5%D0%BE%2C%20%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%BC%D1%8B%20%D0%B4%D0%BB%D1%8F%20%D0%AD%D0%92%D0%9C%2C%20%D0%B1%D0%B0%D0%B7%D1%8B%20%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D1%85%2C%20%D0%BC%D1%83%D0%B7%D1%8B%D0%BA%D0%B0%2C%20%D0%B7%D0%B2%D1%83%D0%BA%D0%B8%20%D0%B8%20%D0%B4%D1%80%D1%83%D0%B3%D0%B8%D0%B5%20%D0%BE%D0%B1%D1%8A%D0%B5%D0%BA%D1%82%D1%8B%2C%20%D0%B0%20%D1%82%D0%B0%D0%BA%D0%B6%D0%B5%20%D0%BB%D1%8E%D0%B1%D0%BE%D0%B9%20%D0%BA%D0%BE%D0%BD%D1%82%D0%B5%D0%BD%D1%82%2C%20%D1%80%D0%B0%D0%B7%D0%BC%D0%B5%D1%89%D0%B5%D0%BD%D0%BD%D1%8B%D0%B9%20%D0%BD%D0%B0%20%D1%81%D0%B5%D1%80%D0%B2%D0%B8%D1%81%D0%B0%D1%85%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B0%2C%20%D1%8F%D0%B2%D0%BB%D1%8F%D1%8E%D1%82%D1%81%D1%8F%20%D0%BE%D0%B1%D1%8A%D0%B5%D0%BA%D1%82%D0%B0%D0%BC%D0%B8%20%D0%B8%D1%81%D0%BA%D0%BB%D1%8E%D1%87%D0%B8%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D1%8B%D1%85%20%D0%BF%D1%80%D0%B0%D0%B2%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D0%B8%2C%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D0%B5%D0%B9%20%D0%B8%20%D0%B4%D1%80%D1%83%D0%B3%D0%B8%D1%85%20%D0%BF%D1%80%D0%B0%D0%B2%D0%BE%D0%BE%D0%B1%D0%BB%D0%B0%D0%B4%D0%B0%D1%82%D0%B5%D0%BB%D0%B5%D0%B9.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%98%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5%20%D0%BA%D0%BE%D0%BD%D1%82%D0%B5%D0%BD%D1%82%D0%B0%2C%20%D0%B0%20%D1%82%D0%B0%D0%BA%D0%B6%D0%B5%20%D0%BA%D0%B0%D0%BA%D0%B8%D1%85-%D0%BB%D0%B8%D0%B1%D0%BE%20%D0%B8%D0%BD%D1%8B%D1%85%20%D1%8D%D0%BB%D0%B5%D0%BC%D0%B5%D0%BD%D1%82%D0%BE%D0%B2%20%D1%81%D0%B5%D1%80%D0%B2%D0%B8%D1%81%D0%BE%D0%B2%20%D0%B2%D0%BE%D0%B7%D0%BC%D0%BE%D0%B6%D0%BD%D0%BE%20%D1%82%D0%BE%D0%BB%D1%8C%D0%BA%D0%BE%20%D0%B2%20%D1%80%D0%B0%D0%BC%D0%BA%D0%B0%D1%85%20%D1%84%D1%83%D0%BD%D0%BA%D1%86%D0%B8%D0%BE%D0%BD%D0%B0%D0%BB%D0%B0%2C%20%D0%BF%D1%80%D0%B5%D0%B4%D0%BB%D0%B0%D0%B3%D0%B0%D0%B5%D0%BC%D0%BE%D0%B3%D0%BE%20%D1%82%D0%B5%D0%BC%20%D0%B8%D0%BB%D0%B8%20%D0%B8%D0%BD%D1%8B%D0%BC%20%D1%81%D0%B5%D1%80%D0%B2%D0%B8%D1%81%D0%BE%D0%BC%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B0.%20%D0%9D%D0%B8%D0%BA%D0%B0%D0%BA%D0%B8%D0%B5%20%D1%8D%D0%BB%D0%B5%D0%BC%D0%B5%D0%BD%D1%82%D1%8B%20%D1%81%D0%BE%D0%B4%D0%B5%D1%80%D0%B6%D0%B0%D0%BD%D0%B8%D1%8F%20%D1%81%D0%B5%D1%80%D0%B2%D0%B8%D1%81%D0%BE%D0%B2%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B0%2C%20%D0%B0%20%D1%82%D0%B0%D0%BA%D0%B6%D0%B5%20%D0%BB%D1%8E%D0%B1%D0%BE%D0%B9%20%D0%BA%D0%BE%D0%BD%D1%82%D0%B5%D0%BD%D1%82%2C%20%D1%80%D0%B0%D0%B7%D0%BC%D0%B5%D1%89%D0%B5%D0%BD%D0%BD%D1%8B%D0%B9%20%D0%BD%D0%B0%20%D1%81%D0%B5%D1%80%D0%B2%D0%B8%D1%81%D0%B0%D1%85%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B0%2C%20%D0%BD%D0%B5%20%D0%BC%D0%BE%D0%B3%D1%83%D1%82%20%D0%B1%D1%8B%D1%82%D1%8C%20%D0%B8%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D0%BD%D1%8B%20%D0%B8%D0%BD%D1%8B%D0%BC%20%D0%BE%D0%B1%D1%80%D0%B0%D0%B7%D0%BE%D0%BC%20%D0%B1%D0%B5%D0%B7%20%D0%BF%D1%80%D0%B5%D0%B4%D0%B2%D0%B0%D1%80%D0%B8%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D0%BE%D0%B3%D0%BE%20%D1%80%D0%B0%D0%B7%D1%80%D0%B5%D1%88%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%BF%D1%80%D0%B0%D0%B2%D0%BE%D0%BE%D0%B1%D0%BB%D0%B0%D0%B4%D0%B0%D1%82%D0%B5%D0%BB%D1%8F.%20%D0%9F%D0%BE%D0%B4%20%D0%B8%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5%D0%BC%20%D0%BF%D0%BE%D0%B4%D1%80%D0%B0%D0%B7%D1%83%D0%BC%D0%B5%D0%B2%D0%B0%D1%8E%D1%82%D1%81%D1%8F%2C%20%D0%B2%20%D1%82%D0%BE%D0%BC%20%D1%87%D0%B8%D1%81%D0%BB%D0%B5%2C%20%D0%BD%D0%BE%20%D0%BD%D0%B5%D0%B8%D1%81%D0%BA%D0%BB%D1%8E%D1%87%D0%B8%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D0%BE%3A%20%D0%B2%D0%BE%D1%81%D0%BF%D1%80%D0%BE%D0%B8%D0%B7%D0%B2%D0%B5%D0%B4%D0%B5%D0%BD%D0%B8%D0%B5%2C%20%D0%BA%D0%BE%D0%BF%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5%2C%20%D0%BF%D0%B5%D1%80%D0%B5%D1%80%D0%B0%D0%B1%D0%BE%D1%82%D0%BA%D0%B0%2C%20%D1%80%D0%B0%D1%81%D0%BF%D1%80%D0%BE%D1%81%D1%82%D1%80%D0%B0%D0%BD%D0%B5%D0%BD%D0%B8%D0%B5%20%D0%BD%D0%B0%20%D0%BB%D1%8E%D0%B1%D0%BE%D0%B9%20%D0%BE%D1%81%D0%BD%D0%BE%D0%B2%D0%B5%20%D0%B8%20%D1%82.%D0%B4.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%A0%D0%B0%D0%B7%D0%BC%D0%B5%D1%89%D0%B0%D1%8F%20%D0%BD%D0%B0%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B5%20%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5%2C%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%20%D1%82%D0%B5%D0%BC%20%D1%81%D0%B0%D0%BC%D1%8B%D0%BC%20%D0%BF%D1%80%D0%B5%D0%B4%D0%BE%D1%81%D1%82%D0%B0%D0%B2%D0%BB%D1%8F%D0%B5%D1%82%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D0%B8%20%D0%B4%D0%B5%D0%B9%D1%81%D1%82%D0%B2%D1%83%D1%8E%D1%89%D0%B5%D0%B5%20%D0%BF%D0%BE%D0%B2%D1%81%D0%B5%D0%BC%D0%B5%D1%81%D1%82%D0%BD%D0%BE%2C%20%D0%B1%D0%B5%D1%81%D1%81%D1%80%D0%BE%D1%87%D0%BD%D0%BE%D0%B5%2C%20%D0%B1%D0%B5%D0%B7%D0%BE%D1%82%D0%B7%D1%8B%D0%B2%D0%BD%D0%BE%D0%B5%2C%20%D0%BD%D0%B5%D0%B8%D1%81%D0%BA%D0%BB%D1%8E%D1%87%D0%B8%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D0%BE%D0%B5%2C%20%D1%81%D1%83%D0%B1%D0%BB%D0%B8%D1%86%D0%B5%D0%BD%D0%B7%D0%B8%D1%80%D1%83%D0%B5%D0%BC%D0%BE%D0%B5%20%D0%BF%D1%80%D0%B0%D0%B2%D0%BE%20%D0%B8%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D1%8F%2C%20%D0%BF%D1%83%D0%B1%D0%BB%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D0%B8%2C%20%D1%81%D0%B1%D0%BE%D1%80%D0%B0%2C%20%D0%B4%D0%B5%D0%BC%D0%BE%D0%BD%D1%81%D1%82%D1%80%D0%B0%D1%86%D0%B8%D0%B8%2C%20%D0%BA%D0%BE%D0%BF%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D1%8F%2C%20%D0%B4%D1%83%D0%B1%D0%BB%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D1%8F%2C%20%D0%B2%D0%BE%D1%81%D0%BF%D1%80%D0%BE%D0%B8%D0%B7%D0%B2%D0%B5%D0%B4%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%BE%D1%82%D0%BD%D0%BE%D1%81%D0%B8%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D0%BE%20%D0%B0%D0%B2%D1%82%D0%BE%D1%80%D1%81%D0%BA%D0%B8%D1%85%20%D0%BF%D1%80%D0%B0%D0%B2%2C%20%D0%BF%D1%83%D0%B1%D0%BB%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D0%B9%20%D0%B8%20%D0%B1%D0%B0%D0%B7%20%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D1%85%2C%20%D0%BA%D0%BE%D1%82%D0%BE%D1%80%D0%BE%D0%B5%20%D0%B8%D0%BC%D0%B5%D0%B5%D1%82%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%20%D0%BE%D1%82%D0%BD%D0%BE%D1%81%D0%B8%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D0%BE%20%D0%BF%D1%80%D0%B5%D0%B4%D0%BE%D1%81%D1%82%D0%B0%D0%B2%D0%BB%D0%B5%D0%BD%D0%BD%D1%8B%D1%85%20%D0%B8%D0%BC%20%D1%81%D0%B2%D0%B5%D0%B4%D0%B5%D0%BD%D0%B8%D0%B9%2C%20%D0%B8%D0%B7%D0%BE%D0%B1%D1%80%D0%B0%D0%B6%D0%B5%D0%BD%D0%B8%D0%B9%20%D0%B8%20%D1%84%D0%BE%D1%82%D0%BE%D0%B3%D1%80%D0%B0%D1%84%D0%B8%D0%B9%20%D0%BD%D0%B0%20%D0%B2%D1%81%D0%B5%D1%85%20%D0%B8%D0%B7%D0%B2%D0%B5%D1%81%D1%82%D0%BD%D1%8B%D1%85%20%D0%B8%D0%BB%D0%B8%20%D0%BD%D0%B5%20%D0%B8%D0%B7%D0%B2%D0%B5%D1%81%D1%82%D0%BD%D1%8B%D1%85%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D0%BE%D0%BD%D0%BD%D1%8B%D1%85%20%D0%BD%D0%BE%D1%81%D0%B8%D1%82%D0%B5%D0%BB%D1%8F%D1%85.%20%D0%9F%D0%B5%D1%80%D0%B5%D1%87%D0%B8%D1%81%D0%BB%D0%B5%D0%BD%D0%BD%D1%8B%D0%B5%20%D0%B2%D1%8B%D1%88%D0%B5%20%D0%BF%D1%80%D0%B0%D0%B2%D0%B0%20%D0%BF%D1%80%D0%B5%D0%B4%D0%BE%D1%81%D1%82%D0%B0%D0%B2%D0%BB%D1%8F%D0%B5%D1%82%D1%81%D1%8F%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D0%B8%20%D0%B1%D0%B5%D0%B7%D0%B2%D0%BE%D0%B7%D0%BC%D0%B5%D0%B7%D0%B4%D0%BD%D0%BE%20%D0%B8%20%D0%B1%D0%B5%D1%81%D1%81%D1%80%D0%BE%D1%87%D0%BD%D0%BE.%20%D0%9F%D1%80%D0%B8%20%D1%8D%D1%82%D0%BE%D0%BC%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%20%D1%81%D0%BE%D1%85%D1%80%D0%B0%D0%BD%D1%8F%D0%B5%D1%82%20%D0%B2%D1%81%D0%B5%20%D0%BF%D1%80%D0%B0%D0%B2%D0%B0%20%D1%81%D0%BE%D0%B1%D1%81%D1%82%D0%B2%D0%B5%D0%BD%D0%BD%D0%BE%D1%81%D1%82%D0%B8%20%D0%BD%D0%B0%20%D1%81%D0%BE%D0%B4%D0%B5%D1%80%D0%B6%D0%B0%D0%BD%D0%B8%D0%B5%20%D1%80%D0%B0%D0%B7%D0%BC%D0%B5%D1%89%D0%B0%D0%B5%D0%BC%D0%BE%D0%B9%20%D0%B2%20%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B8%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D0%B8.%20%D0%9F%D0%BE%D0%BC%D0%B8%D0%BC%D0%BE%20%D0%B2%D1%8B%D1%88%D0%B5%D0%BF%D0%B5%D1%80%D0%B5%D1%87%D0%B8%D1%81%D0%BB%D0%B5%D0%BD%D0%BD%D0%BE%D0%B3%D0%BE%2C%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%20%D0%BF%D1%80%D0%B5%D0%B4%D0%BE%D1%81%D1%82%D0%B0%D0%B2%D0%BB%D1%8F%D0%B5%D1%82%20%D0%BF%D1%80%D0%B0%D0%B2%D0%BE%20%D0%BD%D0%B0%20%D0%B4%D0%BE%D1%81%D1%82%D1%83%D0%BF%20%D0%BA%20%D1%80%D0%B0%D0%B7%D0%BC%D0%B5%D1%89%D0%B5%D0%BD%D0%BD%D0%BE%D0%B9%20%D0%B8%D0%BC%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D0%B8%20%D0%B2%D1%81%D0%B5%D0%BC%20%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F%D0%BC%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B0.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%92%D0%BE%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D0%B2%D1%88%D0%B8%D1%81%D1%8C%20%D1%81%D0%B5%D1%80%D0%B2%D0%B8%D1%81%D0%B0%D0%BC%D0%B8%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B0%2C%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%20%D0%BF%D0%BE%D0%B4%D1%82%D0%B2%D0%B5%D1%80%D0%B6%D0%B4%D0%B0%D0%B5%D1%82%2C%20%D1%87%D1%82%D0%BE%20%D0%BD%D0%B5%D1%81%D0%B5%D1%82%20%D0%B8%D1%81%D0%BA%D0%BB%D1%8E%D1%87%D0%B8%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D1%83%D1%8E%20%D0%BE%D1%82%D0%B2%D0%B5%D1%82%D1%81%D1%82%D0%B2%D0%B5%D0%BD%D0%BD%D0%BE%D1%81%D1%82%D1%8C%20%D0%B7%D0%B0%20%D1%81%D0%BE%D0%B4%D0%B5%D1%80%D0%B6%D0%B0%D0%BD%D0%B8%D0%B5%20%D1%80%D0%B0%D0%B7%D0%BC%D0%B5%D1%89%D0%B5%D0%BD%D0%BD%D1%8B%D1%85%20%D0%B8%D0%BC%20%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B9%2C%20%D0%B0%20%D1%82%D0%B0%D0%BA%D0%B6%D0%B5%20%D0%BE%D0%B1%D0%BB%D0%B0%D0%B4%D0%B0%D0%B5%D1%82%20%D0%B2%D1%81%D0%B5%D0%BC%D0%B8%20%D0%BD%D0%B5%D0%BE%D0%B1%D1%85%D0%BE%D0%B4%D0%B8%D0%BC%D1%8B%D0%BC%D0%B8%20%D0%BF%D1%80%D0%B0%D0%B2%D0%B0%D0%BC%D0%B8%2C%20%D0%BB%D0%B8%D1%86%D0%B5%D0%BD%D0%B7%D0%B8%D1%8F%D0%BC%D0%B8%2C%20%D1%80%D0%B0%D0%B7%D1%80%D0%B5%D1%88%D0%B5%D0%BD%D0%B8%D1%8F%D0%BC%D0%B8%20%D0%BD%D0%B0%20%D1%80%D0%B0%D0%B7%D0%BC%D0%B5%D1%89%D0%B5%D0%BD%D0%B8%D0%B5%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D0%B8%20%D0%B2%20%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B8%20%D0%BD%D0%B0%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B5%2C%20%D0%B2%D0%BA%D0%BB%D1%8E%D1%87%D0%B0%D1%8F%20%D0%B1%D0%B5%D0%B7%20%D0%BE%D0%B3%D1%80%D0%B0%D0%BD%D0%B8%D1%87%D0%B5%D0%BD%D0%B8%D0%B9%20%D0%B2%D1%81%D0%B5%20%D0%BF%D0%B0%D1%82%D0%B5%D0%BD%D1%82%D1%8B%2C%20%D1%82%D0%BE%D0%B2%D0%B0%D1%80%D0%BD%D1%8B%D0%B5%20%D0%B7%D0%BD%D0%B0%D0%BA%D0%B8%2C%20%D0%BA%D0%BE%D0%BC%D0%BC%D0%B5%D1%80%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D0%B5%20%D1%82%D0%B0%D0%B9%D0%BD%D1%8B%2C%20%D0%B0%D0%B2%D1%82%D0%BE%D1%80%D1%81%D0%BA%D0%B8%D0%B5%20%D0%BF%D1%80%D0%B0%D0%B2%D0%B0%2C%20%D0%B8%D0%BB%D0%B8%20%D0%B6%D0%B5%20%D0%B8%D0%BC%D0%B5%D0%B5%D1%82%20%D1%81%D0%BE%D0%BE%D1%82%D0%B2%D0%B5%D1%82%D1%81%D1%82%D0%B2%D1%83%D1%8E%D1%89%D0%B5%D0%B5%20%D0%BF%D0%B8%D1%81%D1%8C%D0%BC%D0%B5%D0%BD%D0%BD%D0%BE%D0%B5%20%D1%81%D0%BE%D0%B3%D0%BB%D0%B0%D1%81%D0%B8%D0%B5%2C%20%D0%BB%D0%B8%D1%86%D0%B5%D0%BD%D0%B7%D0%B8%D1%8E%20%D0%B8%D0%BB%D0%B8%20%D1%80%D0%B0%D0%B7%D1%80%D0%B5%D1%88%D0%B5%D0%BD%D0%B8%D0%B5%20%D0%B2%D1%81%D0%B5%D1%85%20%D0%B8%D0%B4%D0%B5%D0%BD%D1%82%D0%B8%D1%84%D0%B8%D1%86%D0%B8%D1%80%D1%83%D0%B5%D0%BC%D1%8B%D1%85%20%D0%B2%20%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B8%20%D0%BB%D0%B8%D1%86%20%D0%B8%20%D0%BA%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D0%B9%20%D0%B4%D0%BB%D1%8F%20%D0%B8%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%B8%D1%85%20%D0%B8%D0%BC%D0%B5%D0%BD%20%D0%B8%D0%BB%D0%B8%20%D0%B8%D0%B7%D0%BE%D0%B1%D1%80%D0%B0%D0%B6%D0%B5%D0%BD%D0%B8%D0%B9.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%A0%D0%B0%D0%B7%D0%BC%D0%B5%D1%89%D0%B0%D1%8F%20%D0%BD%D0%B0%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B5%20%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5%20%D1%81%20%D0%B8%D0%B7%D0%BE%D0%B1%D1%80%D0%B0%D0%B6%D0%B5%D0%BD%D0%B8%D1%8F%D0%BC%D0%B8%20%D0%B1%D0%B5%D0%B7%20%D0%B7%D0%BD%D0%B0%D0%BA%D0%B0%20%D0%BE%D1%85%D1%80%D0%B0%D0%BD%D1%8B%20%D0%B0%D0%B2%D1%82%D0%BE%D1%80%D1%81%D0%BA%D0%BE%D0%B3%D0%BE%20%D0%BF%D1%80%D0%B0%D0%B2%D0%B0%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%20%D1%81%D0%BE%D0%B3%D0%BB%D0%B0%D1%88%D0%B0%D0%B5%D1%82%D1%81%D1%8F%20%D1%81%20%D0%B8%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5%D0%BC%20%D0%B8%D0%B7%D0%BE%D0%B1%D1%80%D0%B0%D0%B6%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%B8%2F%D0%B8%D0%BB%D0%B8%20%D0%B5%D0%B3%D0%BE%20%D1%87%D0%B0%D1%81%D1%82%D0%B8%20%D0%B2%20%D0%B8%D0%BD%D1%82%D0%B5%D1%80%D0%B5%D1%81%D0%B0%D1%85%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D0%B8%20%D0%B1%D0%B5%D0%B7%20%D0%B2%D1%8B%D0%BF%D0%BB%D0%B0%D1%82%D1%8B%20%D0%B2%D0%BE%D0%B7%D0%BD%D0%B0%D0%B3%D1%80%D0%B0%D0%B6%D0%B4%D0%B5%D0%BD%D0%B8%D1%8F.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%20%D0%BE%D0%B1%D1%8F%D0%B7%D1%83%D0%B5%D1%82%D1%81%D1%8F%3A%3C%2Fp%3E%0A%0A%3Cp%3E%D0%A0%D0%B5%D0%B3%D0%B8%D1%81%D1%82%D1%80%D0%B8%D1%80%D1%83%D1%8F%D1%81%D1%8C%20%D0%BD%D0%B0%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B5%2C%20%D0%BF%D1%80%D0%B5%D0%B4%D0%BE%D1%81%D1%82%D0%B0%D0%B2%D0%B8%D1%82%D1%8C%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D0%B8%20%D0%BF%D0%B0%D1%81%D0%BF%D0%BE%D1%80%D1%82%D0%BD%D1%8B%D0%B5%20%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D0%B5%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9D%D0%B5%20%D0%BF%D1%80%D0%B5%D0%B4%D0%BF%D1%80%D0%B8%D0%BD%D0%B8%D0%BC%D0%B0%D1%82%D1%8C%20%D0%BD%D0%B8%D0%BA%D0%B0%D0%BA%D0%B8%D1%85%20%D0%B4%D0%B5%D0%B9%D1%81%D1%82%D0%B2%D0%B8%D0%B9%2C%20%D0%BA%D0%BE%D1%82%D0%BE%D1%80%D1%8B%D0%B5%20%D0%BC%D0%BE%D0%B3%D1%83%D1%82%20%D0%BF%D1%80%D0%B8%D0%B2%D0%B5%D1%81%D1%82%D0%B8%20%D0%BA%20%D0%BD%D0%B5%D0%BF%D1%80%D0%BE%D0%BF%D0%BE%D1%80%D1%86%D0%B8%D0%BE%D0%BD%D0%B0%D0%BB%D1%8C%D0%BD%D0%BE%20%D0%B1%D0%BE%D0%BB%D1%8C%D1%88%D0%BE%D0%B9%20%D0%BD%D0%B0%D0%B3%D1%80%D1%83%D0%B7%D0%BA%D0%B5%20%D0%BD%D0%B0%20%D0%B8%D0%BD%D1%84%D1%80%D0%B0%D1%81%D1%82%D1%80%D1%83%D0%BA%D1%82%D1%83%D1%80%D1%83%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B0%3B%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9D%D0%B5%20%D0%B8%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D1%8C%20%D0%B0%D0%B2%D1%82%D0%BE%D0%BC%D0%B0%D1%82%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D0%B5%20%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%BC%D1%8B%20%D0%B4%D0%BB%D1%8F%20%D0%BF%D0%BE%D0%BB%D1%83%D1%87%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%B4%D0%BE%D1%81%D1%82%D1%83%D0%BF%D0%B0%20%D0%BD%D0%B0%20%D0%A1%D0%B0%D0%B9%D1%82%20%D0%B1%D0%B5%D0%B7%20%D0%BF%D0%B8%D1%81%D1%8C%D0%BC%D0%B5%D0%BD%D0%BD%D0%BE%D0%B3%D0%BE%20%D1%80%D0%B0%D0%B7%D1%80%D0%B5%D1%88%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D0%B8%3B%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9D%D0%B5%20%D0%BA%D0%BE%D0%BF%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D1%82%D1%8C%2C%20%D0%BD%D0%B5%20%D0%B2%D0%BE%D1%81%D0%BF%D1%80%D0%BE%D0%B8%D0%B7%D0%B2%D0%BE%D0%B4%D0%B8%D1%82%D1%8C%2C%20%D0%BD%D0%B5%20%D0%B8%D0%B7%D0%BC%D0%B5%D0%BD%D1%8F%D1%82%D1%8C%2C%20%D0%BD%D0%B5%20%D1%80%D0%B0%D1%81%D0%BF%D1%80%D0%BE%D1%81%D1%82%D1%80%D0%B0%D0%BD%D1%8F%D1%82%D1%8C%20%D0%B8%20%D0%BD%D0%B5%20%D0%BF%D1%80%D0%B5%D0%B4%D1%81%D1%82%D0%B0%D0%B2%D0%BB%D1%8F%D1%82%D1%8C%20%D0%BE%D0%B1%D1%89%D0%B5%D1%81%D1%82%D0%B2%D0%B5%D0%BD%D0%BD%D0%BE%D1%81%D1%82%D0%B8%20%D0%BB%D1%8E%D0%B1%D1%83%D1%8E%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8E%2C%20%D1%81%D0%BE%D0%B4%D0%B5%D1%80%D0%B6%D0%B0%D1%89%D1%83%D1%8E%D1%81%D1%8F%20%D0%BD%D0%B0%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B5%20(%D0%BA%D1%80%D0%BE%D0%BC%D0%B5%20%D1%81%D0%B2%D0%B5%D0%B4%D0%B5%D0%BD%D0%B8%D0%B9%2C%20%D0%BF%D1%80%D0%B5%D0%B4%D0%BE%D1%81%D1%82%D0%B0%D0%B2%D0%BB%D0%B5%D0%BD%D0%BD%D1%8B%D1%85%20%D1%81%D0%B0%D0%BC%D0%B8%D0%BC%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D0%B5%D0%BC)%20%D0%B1%D0%B5%D0%B7%20%D0%BF%D1%80%D0%B5%D0%B4%D0%B2%D0%B0%D1%80%D0%B8%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D0%BE%D0%B3%D0%BE%20%D0%BF%D0%B8%D1%81%D1%8C%D0%BC%D0%B5%D0%BD%D0%BD%D0%BE%D0%B3%D0%BE%20%D1%80%D0%B0%D0%B7%D1%80%D0%B5%D1%88%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D0%B8%3B%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9D%D0%B5%20%D0%BF%D1%80%D0%B5%D0%BF%D1%8F%D1%82%D1%81%D1%82%D0%B2%D0%BE%D0%B2%D0%B0%D1%82%D1%8C%20%D0%B8%20%D0%BD%D0%B5%20%D0%BF%D1%8B%D1%82%D0%B0%D1%82%D1%8C%D1%81%D1%8F%20%D0%BF%D1%80%D0%B5%D0%BF%D1%8F%D1%82%D1%81%D1%82%D0%B2%D0%BE%D0%B2%D0%B0%D1%82%D1%8C%20%D1%80%D0%B0%D0%B1%D0%BE%D1%82%D0%B5%20%D0%B8%20%D0%B4%D1%80%D1%83%D0%B3%D0%BE%D0%B9%20%D0%B4%D0%B5%D1%8F%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D0%BE%D1%81%D1%82%D0%B8%20%D0%BD%D0%B0%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B5%3B%20%D0%B0%20%D1%82%D0%B0%D0%BA%D0%B6%D0%B5%20%D0%BD%D0%B5%20%D0%BF%D1%80%D0%B5%D0%BF%D1%8F%D1%82%D1%81%D1%82%D0%B2%D0%BE%D0%B2%D0%B0%D1%82%D1%8C%20%D0%B4%D0%B5%D0%B9%D1%81%D1%82%D0%B2%D0%B8%D1%8E%20%D0%B0%D0%B2%D1%82%D0%BE%D0%BC%D0%B0%D1%82%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D1%85%20%D1%81%D0%B8%D1%81%D1%82%D0%B5%D0%BC%20%D0%B8%D0%BB%D0%B8%20%D0%BF%D1%80%D0%BE%D1%86%D0%B5%D1%81%D1%81%D0%BE%D0%B2%2C%20%D0%B0%20%D1%82%D0%B0%D0%BA%D0%B6%D0%B5%20%D0%B4%D1%80%D1%83%D0%B3%D0%B8%D1%85%20%D0%BC%D0%B5%D1%80%D0%BE%D0%BF%D1%80%D0%B8%D1%8F%D1%82%D0%B8%D0%B9%2C%20%D1%81%20%D1%86%D0%B5%D0%BB%D1%8C%D1%8E%20%D0%B2%D0%BE%D1%81%D0%BF%D1%80%D0%B5%D0%BF%D1%8F%D1%82%D1%81%D1%82%D0%B2%D0%BE%D0%B2%D0%B0%D1%82%D1%8C%20%D0%B8%D0%BB%D0%B8%20%D0%BE%D0%B3%D1%80%D0%B0%D0%BD%D0%B8%D1%87%D0%B8%D1%82%D1%8C%20%D0%B4%D0%BE%D1%81%D1%82%D1%83%D0%BF%20%D0%BD%D0%B0%20%D0%A1%D0%B0%D0%B9%D1%82%3B%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9D%D0%B5%20%D0%B8%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D1%8C%20%D1%81%D0%B2%D0%B5%D0%B4%D0%B5%D0%BD%D0%B8%D1%8F%2C%20%D0%BF%D1%80%D0%B5%D0%B4%D0%BE%D1%81%D1%82%D0%B0%D0%B2%D0%BB%D0%B5%D0%BD%D0%BD%D1%8B%D0%B5%20%D0%B4%D1%80%D1%83%D0%B3%D0%B8%D0%BC%D0%B8%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F%D0%BC%D0%B8%2C%20%D0%B2%20%D0%B8%D0%BD%D1%8B%D1%85%20%D1%86%D0%B5%D0%BB%D1%8F%D1%85%2C%20%D0%BA%D1%80%D0%BE%D0%BC%D0%B5%20%D0%BA%D0%B0%D0%BA%20%D0%B4%D0%BB%D1%8F%20%D1%81%D0%BE%D0%B2%D0%B5%D1%80%D1%88%D0%B5%D0%BD%D0%B8%D1%8F%20%D1%81%D0%B4%D0%B5%D0%BB%D0%BA%D0%B8%20%D0%BD%D0%B5%D0%BF%D0%BE%D1%81%D1%80%D0%B5%D0%B4%D1%81%D1%82%D0%B2%D0%B5%D0%BD%D0%BD%D0%BE%20%D1%81%20%D1%8D%D1%82%D0%B8%D0%BC%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D0%B5%D0%BC%2C%20%D0%B1%D0%B5%D0%B7%20%D0%BF%D0%B8%D1%81%D1%8C%D0%BC%D0%B5%D0%BD%D0%BD%D0%BE%D0%B3%D0%BE%20%D1%80%D0%B0%D0%B7%D1%80%D0%B5%D1%88%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%B4%D1%80%D1%83%D0%B3%D0%BE%D0%B3%D0%BE%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F.%20%D0%92%20%D0%BD%D0%B0%D1%81%D1%82%D0%BE%D1%8F%D1%89%D0%B8%D0%B9%20%D0%BF%D1%83%D0%BD%D0%BA%D1%82%20%D0%A1%D0%BE%D0%B3%D0%BB%D0%B0%D1%88%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%BD%D0%B5%20%D0%B2%D0%BA%D0%BB%D1%8E%D1%87%D0%B5%D0%BD%D1%8B%20%D0%BF%D0%B5%D1%80%D1%81%D0%BE%D0%BD%D0%B0%D0%BB%D1%8C%D0%BD%D1%8B%D0%B5%20%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D0%B5%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F%2C%20%D0%BA%D0%BE%D1%82%D0%BE%D1%80%D1%8B%D0%B5%20%D0%BF%D0%BE%D1%81%D0%BB%D0%B5%D0%B4%D0%BD%D0%B8%D0%B9%20%D0%BF%D1%80%D0%B5%D0%B4%D0%BE%D1%81%D1%82%D0%B0%D0%B2%D0%BB%D1%8F%D0%B5%D1%82%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D0%B8%20%D0%BF%D1%80%D0%B8%20%D1%80%D0%B5%D0%B3%D0%B8%D1%81%D1%82%D1%80%D0%B0%D1%86%D0%B8%D0%B8.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8E%20%D0%B7%D0%B0%D0%BF%D1%80%D0%B5%D1%89%D0%B0%D0%B5%D1%82%D1%81%D1%8F%3A%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9E%D0%B1%D1%81%D1%83%D0%B6%D0%B4%D0%B5%D0%BD%D0%B8%D0%B5%20%D0%B4%D0%B5%D0%B9%D1%81%D1%82%D0%B2%D0%B8%D0%B9%20%D0%BC%D0%BE%D0%B4%D0%B5%D1%80%D0%B0%D1%82%D0%BE%D1%80%D0%BE%D0%B2%20%D0%B8%20%D0%B0%D0%B4%D0%BC%D0%B8%D0%BD%D0%B8%D1%81%D1%82%D1%80%D0%B0%D1%86%D0%B8%D0%B8%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B0%20%D0%B8%D0%BD%D1%8B%D0%BC%20%D0%BE%D0%B1%D1%80%D0%B0%D0%B7%D0%BE%D0%BC%2C%20%D0%BA%D1%80%D0%BE%D0%BC%D0%B5%20%D0%BA%D0%B0%D0%BA%20%D0%BF%D0%BE%D1%81%D1%80%D0%B5%D0%B4%D1%81%D1%82%D0%B2%D0%BE%D0%BC%20%D1%8D%D0%BB%D0%B5%D0%BA%D1%82%D1%80%D0%BE%D0%BD%D0%BD%D0%BE%D0%B9%20%D0%BF%D0%B5%D1%80%D0%B5%D0%BF%D0%B8%D1%81%D0%BA%D0%B8%20%D1%81%20%D0%BC%D0%BE%D0%B4%D0%B5%D1%80%D0%B0%D1%82%D0%BE%D1%80%D0%B0%D0%BC%D0%B8%3B%3C%2Fp%3E%0A%0A%3Cp%3E%D0%98%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5%20%D0%B8%D0%BC%D0%B5%D0%BD%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D0%B5%D0%B9%2C%20%D0%BF%D0%BE%D1%85%D0%BE%D0%B6%D0%B8%D1%85%20%D0%BD%D0%B0%20%D0%B8%D0%BC%D0%B5%D0%BD%D0%B0%20%D0%B4%D1%80%D1%83%D0%B3%D0%B8%D1%85%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D0%B5%D0%B9%2C%20%D1%81%20%D1%86%D0%B5%D0%BB%D1%8C%D1%8E%20%D0%B2%D1%8B%D0%B4%D0%B0%D1%82%D1%8C%20%D0%B7%D0%B0%20%D0%BD%D0%B8%D1%85%20%D1%81%D0%B5%D0%B1%D1%8F%20%D0%B8%20%D0%BF%D0%B8%D1%81%D0%B0%D1%82%D1%8C%20%D1%81%D0%BE%D0%BE%D0%B1%D1%89%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%BE%D1%82%20%D0%B8%D1%85%20%D0%B8%D0%BC%D0%B5%D0%BD%D0%B8.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%94%D0%BE%D1%81%D1%82%D1%83%D0%BF%20%D0%BA%20%D0%BF%D0%B5%D1%80%D1%81%D0%BE%D0%BD%D0%B0%D0%BB%D1%8C%D0%BD%D1%8B%D0%BC%20%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D0%BC%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F%20%D1%81%D0%BE%20%D1%81%D1%82%D0%BE%D1%80%D0%BE%D0%BD%D1%8B%20%D0%B4%D1%80%D1%83%D0%B3%D0%B8%D1%85%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D0%B5%D0%B9%20%D0%B2%D0%BE%D0%B7%D0%BC%D0%BE%D0%B6%D0%B5%D0%BD%20%D1%82%D0%BE%D0%BB%D1%8C%D0%BA%D0%BE%20%D0%BF%D1%80%D0%B8%20%D0%BD%D0%B0%D0%BB%D0%B8%D1%87%D0%B8%D0%B8%20%D0%BF%D0%B8%D1%81%D1%8C%D0%BC%D0%B5%D0%BD%D0%BD%D0%BE%D0%B3%D0%BE%20%D1%81%D0%BE%D0%B3%D0%BB%D0%B0%D1%81%D0%B8%D1%8F%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F%20%D0%BD%D0%B0%20%D0%BF%D0%BE%D0%B4%D0%BE%D0%B1%D0%BD%D1%8B%D0%B9%20%D0%B4%D0%BE%D1%81%D1%82%D1%83%D0%BF%20%D0%B8%D0%BB%D0%B8%20%D0%B2%D0%BE%20%D0%B8%D1%81%D0%BF%D0%BE%D0%BB%D0%BD%D0%B5%D0%BD%D0%B8%D0%B5%20%D1%82%D1%80%D0%B5%D0%B1%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B9%20%D1%81%D0%BE%D0%BE%D1%82%D0%B2%D0%B5%D1%82%D1%81%D1%82%D0%B2%D1%83%D1%8E%D1%89%D0%B5%D0%B3%D0%BE%20%D0%B7%D0%B0%D0%BA%D0%BE%D0%BD%D0%BE%D0%B4%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%D1%81%D1%82%D0%B2%D0%B0.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%BE%D0%B1%D1%8F%D0%B7%D1%83%D0%B5%D1%82%D1%81%D1%8F%20%D0%BF%D1%80%D0%B8%D0%BB%D0%B0%D0%B3%D0%B0%D1%82%D1%8C%20%D0%B2%D1%81%D0%B5%20%D1%83%D1%81%D0%B8%D0%BB%D0%B8%D1%8F%20%D0%B4%D0%BB%D1%8F%20%D0%B4%D0%BE%D0%BB%D0%B6%D0%BD%D0%BE%D0%B3%D0%BE%20%D0%B8%D1%81%D0%BF%D0%BE%D0%BB%D0%BD%D0%B5%D0%BD%D0%B8%D1%8F%20%D1%81%D0%B2%D0%BE%D0%B8%D1%85%20%D0%BE%D0%B1%D1%8F%D0%B7%D0%B0%D0%BD%D0%BD%D0%BE%D1%81%D1%82%D0%B5%D0%B9%20%D0%BF%D0%BE%20%D0%BD%D0%B0%D1%81%D1%82%D0%BE%D1%8F%D1%89%D0%B5%D0%BC%D1%83%20%D0%A1%D0%BE%D0%B3%D0%BB%D0%B0%D1%88%D0%B5%D0%BD%D0%B8%D1%8E%2C%20%D0%B2%D0%BA%D0%BB%D1%8E%D1%87%D0%B0%D1%8F%20%D0%BD%D0%BE%D1%80%D0%BC%D0%B0%D0%BB%D1%8C%D0%BD%D1%83%D1%8E%20%D1%80%D0%B0%D0%B1%D0%BE%D1%82%D1%83%20%D1%81%D0%B5%D1%80%D0%B2%D0%B8%D1%81%D0%BE%D0%B2%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B0%20%D0%B8%20%D0%BD%D0%B5%D1%80%D0%B0%D1%81%D0%BF%D1%80%D0%BE%D1%81%D1%82%D1%80%D0%B0%D0%BD%D0%B5%D0%BD%D0%B8%D0%B5%20%D1%82%D1%80%D0%B5%D1%82%D1%8C%D0%B8%D0%BC%20%D0%BB%D0%B8%D1%86%D0%B0%D0%BC%20%D0%BF%D0%B5%D1%80%D1%81%D0%BE%D0%BD%D0%B0%D0%BB%D1%8C%D0%BD%D1%8B%D1%85%20%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D1%85%2C%20%D0%BF%D1%80%D0%B5%D0%B4%D0%BE%D1%81%D1%82%D0%B0%D0%B2%D0%BB%D0%B5%D0%BD%D0%BD%D1%8B%D1%85%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D0%B5%D0%BC%2C%20%D0%B7%D0%B0%20%D0%B8%D1%81%D0%BA%D0%BB%D1%8E%D1%87%D0%B5%D0%BD%D0%B8%D0%B5%D0%BC%20%D1%81%D0%BB%D1%83%D1%87%D0%B0%D0%B5%D0%B2%2C%20%D0%BF%D1%80%D0%B5%D0%B4%D1%83%D1%81%D0%BC%D0%BE%D1%82%D1%80%D0%B5%D0%BD%D0%BD%D1%8B%D1%85%20%D0%B7%D0%B0%D0%BA%D0%BE%D0%BD%D0%BE%D0%B4%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%D1%81%D1%82%D0%B2%D0%BE%D0%BC.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%BC%D0%BE%D0%B6%D0%B5%D1%82%20%D0%BF%D0%B5%D1%80%D0%B8%D0%BE%D0%B4%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%20%D1%83%D1%81%D1%82%D0%B0%D0%BD%D0%B0%D0%B2%D0%BB%D0%B8%D0%B2%D0%B0%D1%82%D1%8C%20%D0%BE%D0%B3%D1%80%D0%B0%D0%BD%D0%B8%D1%87%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%BF%D0%BE%20%D0%B8%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D1%8E%20%D1%81%D0%B5%D1%80%D0%B2%D0%B8%D1%81%D0%BE%D0%B2%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B0%2C%20%D0%B2%20%D1%87%D0%B0%D1%81%D1%82%D0%BD%D0%BE%D1%81%D1%82%D0%B8%2C%20%D0%BC%D0%B0%D0%BA%D1%81%D0%B8%D0%BC%D0%B0%D0%BB%D1%8C%D0%BD%D0%BE%D0%B5%20%D0%BA%D0%BE%D0%BB%D0%B8%D1%87%D0%B5%D1%81%D1%82%D0%B2%D0%BE%20%D0%B4%D0%BD%D0%B5%D0%B9%20%D1%85%D1%80%D0%B0%D0%BD%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B9%20%D0%B8%20%D0%B8%D1%85%20%D1%80%D0%B0%D0%B7%D0%BC%D0%B5%D1%80.%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%B2%D0%BF%D1%80%D0%B0%D0%B2%D0%B5%20%D0%B2%20%D0%BB%D1%8E%D0%B1%D0%BE%D0%B9%20%D0%BC%D0%BE%D0%BC%D0%B5%D0%BD%D1%82%20%D0%B8%D0%B7%D0%BC%D0%B5%D0%BD%D0%B8%D1%82%D1%8C%20%D0%B8%D0%BB%D0%B8%20%D0%BF%D1%80%D0%B5%D0%BA%D1%80%D0%B0%D1%82%D0%B8%D1%82%D1%8C%20%D1%80%D0%B0%D0%B1%D0%BE%D1%82%D1%83%20%D1%81%D0%B5%D1%80%D0%B2%D0%B8%D1%81%D0%BE%D0%B2%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B0%20%D0%B8%D0%BB%D0%B8%20%D0%B8%D1%85%20%D1%87%D0%B0%D1%81%D1%82%D0%B8%20%D1%81%20%D1%83%D0%B2%D0%B5%D0%B4%D0%BE%D0%BC%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5%D0%BC%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F%20%D0%B8%D0%BB%D0%B8%20%D0%B1%D0%B5%D0%B7%20%D0%BD%D0%B5%D0%B3%D0%BE%2C%20%D0%BD%D0%B5%20%D0%BD%D0%B5%D1%81%D1%8F%20%D0%BF%D1%80%D0%B8%20%D1%8D%D1%82%D0%BE%D0%BC%20%D0%BE%D1%82%D0%B2%D0%B5%D1%82%D1%81%D1%82%D0%B2%D0%B5%D0%BD%D0%BD%D0%BE%D1%81%D1%82%D0%B8%20%D0%B7%D0%B0%20%D0%BF%D0%BE%D0%B4%D0%BE%D0%B1%D0%BD%D1%8B%D0%B5%20%D0%B8%D0%B7%D0%BC%D0%B5%D0%BD%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%B8%D0%BB%D0%B8%20%D0%BF%D1%80%D0%B5%D0%BA%D1%80%D0%B0%D1%89%D0%B5%D0%BD%D0%B8%D1%8F.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%A7%D1%82%D0%BE%D0%B1%D1%8B%20%D0%BF%D0%BE%D0%B4%D0%B4%D0%B5%D1%80%D0%B6%D0%B8%D0%B2%D0%B0%D1%82%D1%8C%20%D0%B2%D1%8B%D1%81%D0%BE%D0%BA%D0%BE%D0%B5%20%D0%BA%D0%B0%D1%87%D0%B5%D1%81%D1%82%D0%B2%D0%BE%20%D1%81%D0%B2%D0%BE%D0%B8%D1%85%20%D1%83%D1%81%D0%BB%D1%83%D0%B3%2C%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%BE%D1%81%D1%82%D0%B0%D0%B2%D0%BB%D1%8F%D0%B5%D1%82%20%D0%B7%D0%B0%20%D1%81%D0%BE%D0%B1%D0%BE%D0%B9%20%D0%BF%D1%80%D0%B0%D0%B2%D0%BE%20%D0%BE%D0%B3%D1%80%D0%B0%D0%BD%D0%B8%D1%87%D0%B8%D1%82%D1%8C%20%D0%BA%D0%BE%D0%BB%D0%B8%D1%87%D0%B5%D1%81%D1%82%D0%B2%D0%BE%20%D0%B0%D0%BA%D1%82%D0%B8%D0%B2%D0%BD%D1%8B%D1%85%20%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B9%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F%20%D0%BD%D0%B0%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B5%2C%20%D0%B0%20%D1%82%D0%B0%D0%BA%D0%B6%D0%B5%20%D0%BE%D0%B3%D1%80%D0%B0%D0%BD%D0%B8%D1%87%D0%B8%D1%82%D1%8C%20%D0%B4%D0%B5%D0%B9%D1%81%D1%82%D0%B2%D0%B8%D1%8F%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F%20%D0%BD%D0%B0%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B5.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%BC%D0%BE%D0%B6%D0%B5%D1%82%20%D0%B7%D0%B0%D0%BF%D1%80%D0%B5%D1%82%D0%B8%D1%82%D1%8C%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8E%20%D0%B4%D0%BE%D1%81%D1%82%D1%83%D0%BF%20%D0%BD%D0%B0%20%D0%A1%D0%B0%D0%B9%D1%82%2C%20%D0%B5%D1%81%D0%BB%D0%B8%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%20%D0%BD%D0%B0%D1%80%D1%83%D1%88%D0%B0%D0%B5%D1%82%20%D1%83%D1%81%D0%BB%D0%BE%D0%B2%D0%B8%D1%8F%20%D0%BD%D0%B0%D1%81%D1%82%D0%BE%D1%8F%D1%89%D0%B5%D0%B3%D0%BE%20%D0%A1%D0%BE%D0%B3%D0%BB%D0%B0%D1%88%D0%B5%D0%BD%D0%B8%D1%8F.%20%D0%A4%D0%B0%D0%BA%D1%82%20%D0%BD%D0%B0%D1%80%D1%83%D1%88%D0%B5%D0%BD%D0%B8%D1%8F%20%D1%81%D1%87%D0%B8%D1%82%D0%B0%D0%B5%D1%82%D1%81%D1%8F%20%D0%BF%D0%BE%D0%B4%D1%82%D0%B2%D0%B5%D1%80%D0%B6%D0%B4%D0%B5%D0%BD%D0%BD%D1%8B%D0%BC%2C%20%D0%B5%D1%81%D0%BB%D0%B8%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%20%D0%B1%D1%8B%D0%BB%20%D0%BE%D0%BF%D0%BE%D0%B2%D0%B5%D1%89%D0%B5%D0%BD%20%D0%B0%D0%B4%D0%BC%D0%B8%D0%BD%D0%B8%D1%81%D1%82%D1%80%D0%B0%D1%86%D0%B8%D0%B5%D0%B9%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B0%20%D0%BE%20%D0%B2%D0%B5%D0%B4%D0%B5%D0%BD%D0%B8%D0%B8%20%D0%B4%D0%B5%D1%8F%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D0%BE%D1%81%D1%82%D0%B8%2C%20%D0%BD%D0%B0%D1%80%D1%83%D1%88%D0%B0%D1%8E%D1%89%D0%B5%D0%B9%20%D0%BF%D1%80%D0%B0%D0%B2%D0%B8%D0%BB%D0%B0%20%D0%A1%D0%B0%D0%B9%D1%82%D0%BE%D0%B2%20%D0%B8%20%D0%BF%D1%80%D0%B0%D0%B2%20%D1%82%D1%80%D0%B5%D1%82%D1%8C%D0%B8%D1%85%20%D0%BB%D0%B8%D1%86.%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%BE%D1%81%D1%82%D0%B0%D0%B2%D0%BB%D1%8F%D0%B5%D1%82%20%D0%B7%D0%B0%20%D1%81%D0%BE%D0%B1%D0%BE%D0%B9%20%D0%BF%D1%80%D0%B0%D0%B2%D0%BE%20%D0%B2%20%D0%BB%D1%8E%D0%B1%D0%BE%D0%B9%20%D0%BC%D0%BE%D0%BC%D0%B5%D0%BD%D1%82%20%D1%83%D0%B4%D0%B0%D0%BB%D0%B8%D1%82%D1%8C%20%D0%B8%D0%BB%D0%B8%20%D0%BE%D1%82%D0%BA%D0%BB%D1%8E%D1%87%D0%B8%D1%82%D1%8C%20%D1%83%D1%87%D0%B5%D1%82%D0%BD%D1%83%D1%8E%20%D0%B7%D0%B0%D0%BF%D0%B8%D1%81%D1%8C%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F%2C%20%D0%B0%20%D1%82%D0%B0%D0%BA%D0%B6%D0%B5%20%D1%83%D0%B4%D0%B0%D0%BB%D0%B8%D1%82%D1%8C%20%D0%B2%D1%81%D0%B5%20%D1%80%D0%B0%D0%B7%D0%BC%D0%B5%D1%89%D0%B5%D0%BD%D0%BD%D1%8B%D0%B5%20%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F%2C%20%D0%BE%D1%81%D1%82%D0%B0%D0%B2%D0%B8%D0%B2%20%D0%BF%D1%80%D0%B5%D0%B4%D0%B2%D0%B0%D1%80%D0%B8%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D0%BE%D0%B5%20%D1%83%D0%B2%D0%B5%D0%B4%D0%BE%D0%BC%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F%20%D0%BE%20%D1%82%D0%B0%D0%BA%D0%BE%D0%BC%20%D0%BE%D1%82%D0%BA%D0%BB%D1%8E%D1%87%D0%B5%D0%BD%D0%B8%D0%B8%20%D0%BD%D0%B0%20%D1%81%D0%B2%D0%BE%D0%B5%20%D1%83%D1%81%D0%BC%D0%BE%D1%82%D1%80%D0%B5%D0%BD%D0%B8%D0%B5%2C%20%D0%B8%20%D0%BD%D0%B5%20%D0%BD%D0%B5%D1%81%D1%8F%20%D0%BF%D1%80%D0%B8%20%D1%8D%D1%82%D0%BE%D0%BC%20%D0%BE%D1%82%D0%B2%D0%B5%D1%82%D1%81%D1%82%D0%B2%D0%B5%D0%BD%D0%BD%D0%BE%D1%81%D1%82%D1%8C%20%D0%B7%D0%B0%20%D1%81%D0%B2%D0%BE%D0%B8%20%D0%B4%D0%B5%D0%B9%D1%81%D1%82%D0%B2%D0%B8%D1%8F%20%D0%BF%D0%B5%D1%80%D0%B5%D0%B4%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D0%B5%D0%BC%20%D0%B8%20%D1%82%D1%80%D0%B5%D1%82%D1%8C%D0%B8%D0%BC%D0%B8%20%D0%BB%D0%B8%D1%86%D0%B0%D0%BC%D0%B8.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%B2%D0%BF%D1%80%D0%B0%D0%B2%D0%B5%20%D0%BF%D0%BE%20%D1%81%D0%BE%D0%B1%D1%81%D1%82%D0%B2%D0%B5%D0%BD%D0%BD%D0%BE%D0%BC%D1%83%20%D1%83%D1%81%D0%BC%D0%BE%D1%82%D1%80%D0%B5%D0%BD%D0%B8%D1%8E%20%D0%BE%D1%82%D0%B2%D0%B5%D1%80%D0%B3%D0%B0%D1%82%D1%8C%2C%20%D1%83%D0%B4%D0%B0%D0%BB%D1%8F%D1%82%D1%8C%20%D0%B8%D0%BB%D0%B8%20%D0%BF%D0%B5%D1%80%D0%B5%D0%BC%D0%B5%D1%89%D0%B0%D1%82%D1%8C%20%D0%BB%D1%8E%D0%B1%D0%BE%D0%B5%20%D1%80%D0%B0%D0%B7%D0%BC%D0%B5%D1%89%D0%B5%D0%BD%D0%BD%D0%BE%D0%B5%20%D0%BD%D0%B0%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B5%20%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5%20%D0%B7%D0%B0%20%D0%BD%D0%B0%D1%80%D1%83%D1%88%D0%B5%D0%BD%D0%B8%D0%B5%20%D0%BD%D0%B0%D1%81%D1%82%D0%BE%D1%8F%D1%89%D0%B5%D0%B3%D0%BE%20%D0%A1%D0%BE%D0%B3%D0%BB%D0%B0%D1%88%D0%B5%D0%BD%D0%B8%D1%8F.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%B2%D0%BF%D1%80%D0%B0%D0%B2%D0%B5%20%D0%BF%D0%B5%D1%80%D0%B5%D0%B4%D0%B0%D1%82%D1%8C%20%D0%A1%D0%B0%D0%B9%D1%82%20%D1%81%D0%BE%20%D0%B2%D1%81%D0%B5%D0%BC%D0%B8%20%D0%B5%D0%B3%D0%BE%20%D1%81%D0%B5%D1%80%D0%B2%D0%B8%D1%81%D0%B0%D0%BC%D0%B8%20%D0%B8%20%D1%81%D0%BE%D0%B4%D0%B5%D1%80%D0%B6%D0%B0%D0%BD%D0%B8%D0%B5%D0%BC%2C%20%D0%B2%D0%BA%D0%BB%D1%8E%D1%87%D0%B0%D1%8F%20%D0%BB%D0%B8%D1%87%D0%BD%D1%83%D1%8E%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8E%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D0%B5%D0%B9%2C%20%D1%81%D0%B2%D0%BE%D0%B5%D0%BC%D1%83%20%D0%BF%D1%80%D0%B0%D0%B2%D0%BE%D0%BF%D1%80%D0%B5%D0%B5%D0%BC%D0%BD%D0%B8%D0%BA%D1%83%20%D0%BF%D0%BE%20%D0%B4%D0%BE%D0%B3%D0%BE%D0%B2%D0%BE%D1%80%D0%B0%D0%BC%20%D0%B8%D0%BB%D0%B8%20%D0%B8%D0%BD%D1%8B%D0%BC%20%D0%BE%D1%81%D0%BD%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D1%8F%D0%BC.%20%D0%9F%D0%B5%D1%80%D0%B5%D0%B4%D0%B0%D1%87%D0%B0%20%D0%B8%20%D1%83%D0%B2%D0%B5%D0%B4%D0%BE%D0%BC%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D0%B5%D0%B9%20%D0%BE%20%D1%82%D0%B0%D0%BA%D0%BE%D0%B9%20%D0%BF%D0%B5%D1%80%D0%B5%D0%B4%D0%B0%D1%87%D0%B5%20%D0%BE%D1%81%D1%83%D1%89%D0%B5%D1%81%D1%82%D0%B2%D0%BB%D1%8F%D0%B5%D1%82%D1%81%D1%8F%20%D0%B2%20%D1%81%D0%BE%D0%BE%D1%82%D0%B2%D0%B5%D1%82%D1%81%D1%82%D0%B2%D0%B8%D0%B8%20%D1%81%20%D1%82%D1%80%D0%B5%D0%B1%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D1%8F%D0%BC%D0%B8%20%D0%B4%D0%B5%D0%B9%D1%81%D1%82%D0%B2%D1%83%D1%8E%D1%89%D0%B5%D0%B3%D0%BE%20%D0%B7%D0%B0%D0%BA%D0%BE%D0%BD%D0%BE%D0%B4%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%D1%81%D1%82%D0%B2%D0%B0.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%20%D0%B2%D0%BF%D1%80%D0%B0%D0%B2%D0%B5%20%D0%BD%D0%B0%D0%BF%D1%80%D0%B0%D0%B2%D0%BB%D1%8F%D1%82%D1%8C%20%D0%B6%D0%B0%D0%BB%D0%BE%D0%B1%D1%8B%20%D0%BF%D0%BE%20%D0%B2%D0%BE%D0%BF%D1%80%D0%BE%D1%81%D0%B0%D0%BC%20%D1%80%D0%B0%D0%B1%D0%BE%D1%82%D1%8B%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B0%20%D1%87%D0%B5%D1%80%D0%B5%D0%B7%20%D1%84%D0%BE%D1%80%D0%BC%D1%83%20%D0%BE%D0%B1%D1%80%D0%B0%D1%82%D0%BD%D0%BE%D0%B9%20%D1%81%D0%B2%D1%8F%D0%B7%D0%B8%20%7Burl%7Dinfo%2F%2C%20%D0%BA%D0%BE%D1%82%D0%BE%D1%80%D1%8B%D0%B5%20%D0%B1%D1%83%D0%B4%D1%83%D1%82%20%D1%80%D0%B0%D1%81%D1%81%D0%BC%D0%BE%D1%82%D1%80%D0%B5%D0%BD%D1%8B%20%D0%B2%20%D1%82%D0%B5%D1%87%D0%B5%D0%BD%D0%B8%D0%B5%20%D0%B4%D0%B2%D1%83%D1%85%20%D1%80%D0%B0%D0%B1%D0%BE%D1%87%D0%B8%D1%85%20%D0%B4%D0%BD%D0%B5%D0%B9%20%D1%81%20%D0%BC%D0%BE%D0%BC%D0%B5%D0%BD%D1%82%D0%B0%20%D0%B8%D1%85%20%D0%BF%D0%BE%D1%81%D1%82%D1%83%D0%BF%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%B8%D0%BB%D0%B8%20%D1%81%20%D0%BC%D0%BE%D0%BC%D0%B5%D0%BD%D1%82%D0%B0%20%D0%BF%D0%BE%D0%BB%D1%83%D1%87%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%BF%D0%BE%D0%BB%D0%BD%D0%BE%D0%B9%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D0%B8%20%D0%BF%D0%BE%20%D1%81%D1%83%D1%82%D0%B8%20%D0%B6%D0%B0%D0%BB%D0%BE%D0%B1%D1%8B.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%BE%D1%81%D1%82%D0%B0%D0%B2%D0%BB%D1%8F%D0%B5%D1%82%20%D0%B7%D0%B0%20%D1%81%D0%BE%D0%B1%D0%BE%D0%B9%20%D0%BF%D1%80%D0%B0%D0%B2%D0%BE%20%D0%B2%20%D0%BB%D1%8E%D0%B1%D0%BE%D0%B9%20%D0%BC%D0%BE%D0%BC%D0%B5%D0%BD%D1%82%20%D0%BF%D0%BE%D1%82%D1%80%D0%B5%D0%B1%D0%BE%D0%B2%D0%B0%D1%82%D1%8C%20%D0%BE%D1%82%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F%20%D0%BF%D0%BE%D0%B4%D1%82%D0%B2%D0%B5%D1%80%D0%B6%D0%B4%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D1%85%2C%20%D1%83%D0%BA%D0%B0%D0%B7%D0%B0%D0%BD%D0%BD%D1%8B%D1%85%20%D0%B8%D0%BC%20%D0%BF%D1%80%D0%B8%20%D1%80%D0%B5%D0%B3%D0%B8%D1%81%D1%82%D1%80%D0%B0%D1%86%D0%B8%D0%B8%2C%20%D0%B8%20%D0%B7%D0%B0%D0%BF%D1%80%D0%BE%D1%81%D0%B8%D1%82%D1%8C%20%D0%B2%20%D1%81%D0%B2%D1%8F%D0%B7%D0%B8%20%D1%81%20%D1%8D%D1%82%D0%B8%D0%BC%20%D0%BF%D0%BE%D0%B4%D1%82%D0%B2%D0%B5%D1%80%D0%B6%D0%B4%D0%B0%D1%8E%D1%89%D0%B8%D0%B5%20%D0%B4%D0%BE%D0%BA%D1%83%D0%BC%D0%B5%D0%BD%D1%82%D1%8B%20(%D0%B2%20%D1%87%D0%B0%D1%81%D1%82%D0%BD%D0%BE%D1%81%D1%82%D0%B8%20%26ndash%3B%20%D0%BA%D0%BE%D0%BF%D0%B8%D0%B8%2F%D0%B7%D0%B0%D0%B2%D0%B5%D1%80%D0%B5%D0%BD%D0%BD%D1%8B%D0%B5%20%D0%BA%D0%BE%D0%BF%D0%B8%D0%B8%20%D0%B4%D0%BE%D0%BA%D1%83%D0%BC%D0%B5%D0%BD%D1%82%D0%BE%D0%B2%2C%20%D1%83%D0%B4%D0%BE%D1%81%D1%82%D0%BE%D0%B2%D0%B5%D1%80%D1%8F%D1%8E%D1%89%D0%B8%D1%85%20%D0%BB%D0%B8%D1%87%D0%BD%D0%BE%D1%81%D1%82%D1%8C)%2C%20%D0%BD%D0%B5%D0%BF%D1%80%D0%B5%D0%B4%D0%BE%D1%81%D1%82%D0%B0%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5%20%D0%BA%D0%BE%D1%82%D0%BE%D1%80%D1%8B%D1%85%2C%20%D0%BF%D0%BE%20%D1%83%D1%81%D0%BC%D0%BE%D1%82%D1%80%D0%B5%D0%BD%D0%B8%D1%8E%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F%2C%20%D0%BC%D0%BE%D0%B6%D0%B5%D1%82%20%D0%B1%D1%8B%D1%82%D1%8C%20%D0%BF%D1%80%D0%B8%D1%80%D0%B0%D0%B2%D0%BD%D0%B5%D0%BD%D0%BE%20%D0%BA%20%D0%BF%D1%80%D0%B5%D0%B4%D0%BE%D1%81%D1%82%D0%B0%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8E%20%D0%BD%D0%B5%D0%B4%D0%BE%D1%81%D1%82%D0%BE%D0%B2%D0%B5%D1%80%D0%BD%D0%BE%D0%B9%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D0%B8.%20%D0%92%20%D1%81%D0%BB%D1%83%D1%87%D0%B0%D0%B5%20%D0%B5%D1%81%D0%BB%D0%B8%20%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D0%B5%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F%2C%20%D1%83%D0%BA%D0%B0%D0%B7%D0%B0%D0%BD%D0%BD%D1%8B%D0%B5%20%D0%B2%20%D0%BF%D1%80%D0%B5%D0%B4%D0%BE%D1%81%D1%82%D0%B0%D0%B2%D0%BB%D0%B5%D0%BD%D0%BD%D1%8B%D1%85%20%D0%B8%D0%BC%20%D0%B4%D0%BE%D0%BA%D1%83%D0%BC%D0%B5%D0%BD%D1%82%D0%B0%D1%85%2C%20%D0%BD%D0%B5%20%D1%81%D0%BE%D0%BE%D1%82%D0%B2%D0%B5%D1%82%D1%81%D1%82%D0%B2%D1%83%D1%8E%D1%82%20%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D0%BC%2C%20%D1%83%D0%BA%D0%B0%D0%B7%D0%B0%D0%BD%D0%BD%D1%8B%D0%BC%20%D0%BF%D1%80%D0%B8%20%D1%80%D0%B5%D0%B3%D0%B8%D1%81%D1%82%D1%80%D0%B0%D1%86%D0%B8%D0%B8%2C%20%D0%B0%20%D1%82%D0%B0%D0%BA%D0%B6%D0%B5%20%D0%B2%20%D1%81%D0%BB%D1%83%D1%87%D0%B0%D0%B5%20%D0%BA%D0%BE%D0%B3%D0%B4%D0%B0%20%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D0%B5%2C%20%D1%83%D0%BA%D0%B0%D0%B7%D0%B0%D0%BD%D0%BD%D1%8B%D0%B5%20%D0%BF%D1%80%D0%B8%20%D1%80%D0%B5%D0%B3%D0%B8%D1%81%D1%82%D1%80%D0%B0%D1%86%D0%B8%D0%B8%2C%20%D0%BD%D0%B5%20%D0%BF%D0%BE%D0%B7%D0%B2%D0%BE%D0%BB%D1%8F%D1%8E%D1%82%20%D0%B8%D0%B4%D0%B5%D0%BD%D1%82%D0%B8%D1%84%D0%B8%D1%86%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D1%82%D1%8C%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F%2C%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%B2%D0%BF%D1%80%D0%B0%D0%B2%D0%B5%20%D0%BE%D1%82%D0%BA%D0%B0%D0%B7%D0%B0%D1%82%D1%8C%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8E%20%D0%B2%20%D0%B4%D0%BE%D1%81%D1%82%D1%83%D0%BF%D0%B5%20%D0%BA%20%D0%B8%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D1%8E%20%D1%81%D0%B5%D1%80%D0%B2%D0%B8%D1%81%D0%BE%D0%B2%20%D0%A1%D0%B0%D0%B9%D1%82%D0%BE%D0%B2%20%D1%81%20%D0%BF%D1%80%D0%B5%D0%B4%D0%B2%D0%B0%D1%80%D0%B8%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D1%8B%D0%BC%20%D1%83%D0%B2%D0%B5%D0%B4%D0%BE%D0%BC%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5%D0%BC%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F%20%D0%B8%D0%BB%D0%B8%20%D0%B1%D0%B5%D0%B7%20%D1%82%D0%B0%D0%BA%D0%BE%D0%B2%D0%BE%D0%B3%D0%BE.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%B8%D0%BC%D0%B5%D0%B5%D1%82%20%D0%BF%D1%80%D0%B0%D0%B2%D0%BE%20%D0%BF%D1%80%D0%B5%D0%BA%D1%80%D0%B0%D1%82%D0%B8%D1%82%D1%8C%20%D0%B4%D0%BE%D1%81%D1%82%D1%83%D0%BF%20%D0%BA%20%D0%A1%D0%B0%D0%B9%D1%82%D1%83%2C%20%D0%B8%20%D0%B7%D0%B0%D0%B1%D0%BB%D0%BE%D0%BA%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D1%82%D1%8C%20%D1%83%D1%87%D0%B5%D1%82%D0%BD%D1%83%D1%8E%20%D0%B7%D0%B0%D0%BF%D0%B8%D1%81%D1%8C%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F%20%D0%BF%D1%80%D0%B8%20%D0%BD%D0%B0%D0%BB%D0%B8%D1%87%D0%B8%D0%B8%20%D1%83%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D0%B8%20%D0%BE%D1%81%D0%BD%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B9%20%D1%81%D1%87%D0%B8%D1%82%D0%B0%D1%82%D1%8C%2C%20%D1%87%D1%82%D0%BE%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%20%D0%BF%D1%80%D0%BE%D0%B2%D0%BE%D0%B4%D0%B8%D1%82%20%D0%B4%D0%B5%D1%8F%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D0%BE%D1%81%D1%82%D1%8C%2C%20%D0%BA%D0%BE%D1%82%D0%BE%D1%80%D0%B0%D1%8F%20%D0%BF%D0%BE%D0%B4%D0%BB%D0%B5%D0%B6%D0%B8%D1%82%20%D0%BB%D0%B8%D1%86%D0%B5%D0%BD%D0%B7%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D1%8E%20(%D0%B2%20%D1%82.%20%D1%87.%20%D1%80%D0%B8%D1%8D%D0%BB%D1%82%D0%B5%D1%80%D1%81%D0%BA%D1%83%D1%8E%20%D0%B4%D0%B5%D1%8F%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D0%BE%D1%81%D1%82%D1%8C)%2C%20%D0%B1%D0%B5%D0%B7%20%D1%81%D0%BE%D0%BE%D1%82%D0%B2%D0%B5%D1%82%D1%81%D1%82%D0%B2%D1%83%D1%8E%D1%89%D0%B5%D0%B9%20%D0%BB%D0%B8%D1%86%D0%B5%D0%BD%D0%B7%D0%B8%D0%B8.%3C%2Fp%3E%0A%0A%3Cp%3ESMS-%D0%B2%D0%B5%D1%80%D0%B8%D1%84%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D1%8F.%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%B8%D0%BC%D0%B5%D0%B5%D1%82%20%D0%BF%D1%80%D0%B0%D0%B2%D0%BE%20%D0%B2%20%D0%BB%D1%8E%D0%B1%D0%BE%D0%B9%20%D0%BC%D0%BE%D0%BC%D0%B5%D0%BD%D1%82%20%D0%B2%D0%B5%D1%80%D0%B8%D1%84%D0%B8%D1%86%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D1%82%D1%8C%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F%20%D0%BF%D0%BE%D1%81%D1%80%D0%B5%D0%B4%D1%81%D1%82%D0%B2%D0%BE%D0%BC%20SMS-%D0%B2%D0%B5%D1%80%D0%B8%D1%84%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D0%B8.%20%D0%92%20%D1%81%D0%BB%D1%83%D1%87%D0%B0%D0%B5%20%D0%B5%D1%81%D0%BB%D0%B8%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%20%D0%BD%D0%B5%20%D0%BF%D1%80%D0%BE%D1%88%D0%B5%D0%BB%20%D0%B2%D0%B5%D1%80%D0%B8%D1%84%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D1%8E%2C%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%B8%D0%BC%D0%B5%D0%B5%D1%82%20%D0%BF%D1%80%D0%B0%D0%B2%D0%BE%20%D0%BE%D0%B3%D1%80%D0%B0%D0%BD%D0%B8%D1%87%D0%B8%D1%82%D1%8C%20%D0%B2%D0%BE%D0%B7%D0%BC%D0%BE%D0%B6%D0%BD%D0%BE%D1%81%D1%82%D0%B8%20%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%A1%D0%B0%D0%B9%D1%82%D0%BE%D0%BC%2C%20%D0%B0%20%D0%B8%D0%BC%D0%B5%D0%BD%D0%BD%D0%BE%20%D1%80%D0%B0%D0%B7%D0%BC%D0%B5%D1%89%D0%B5%D0%BD%D0%B8%D0%B5%2C%20%D1%80%D0%B5%D0%B4%D0%B0%D0%BA%D1%82%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5%2C%20%D0%BF%D1%80%D0%BE%D0%B4%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5%2C%20%D0%BE%D0%B1%D0%BD%D0%BE%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5%20%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B9.%20%D0%92%D1%8B%D0%B1%D0%BE%D1%80%D0%BA%D0%B0%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D0%B5%D0%B9%2C%20%D0%BA%D0%BE%D1%82%D0%BE%D1%80%D1%8B%D0%B5%20%D0%BF%D0%BE%D0%B4%D0%BB%D0%B5%D0%B6%D0%B0%D1%82%20%D0%B2%D0%B5%D1%80%D0%B8%D1%84%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D0%B8%2C%20%D0%BE%D1%81%D1%83%D1%89%D0%B5%D1%81%D1%82%D0%B2%D0%BB%D1%8F%D0%B5%D1%82%D1%81%D1%8F%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D0%B5%D0%B9%20%D0%BF%D0%BE%20%D1%81%D0%B2%D0%BE%D0%B5%D0%BC%D1%83%20%D1%81%D0%BE%D0%B1%D1%81%D1%82%D0%B2%D0%B5%D0%BD%D0%BD%D0%BE%D0%BC%D1%83%20%D1%83%D1%81%D0%BC%D0%BE%D1%82%D1%80%D0%B5%D0%BD%D0%B8%D1%8E.%20%D0%92%D1%81%D0%B5%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D0%B8%2C%20%D0%BA%D0%BE%D1%82%D0%BE%D1%80%D1%8B%D0%B5%20%D0%B1%D1%8B%D0%BB%D0%B8%20%D0%B2%D0%B5%D1%80%D0%B8%D1%84%D0%B8%D1%86%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D1%8B%20%D1%81%20%D0%BF%D0%BE%D0%BC%D0%BE%D1%89%D1%8C%D1%8E%20SMS-%D0%B2%D0%B5%D1%80%D0%B8%D1%84%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D0%B8%20%D0%BC%D0%BE%D0%B3%D1%83%D1%82%20%D0%B8%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D1%8C%20%D0%BD%D0%BE%D0%BC%D0%B5%D1%80%20%D0%BC%D0%BE%D0%B1%D0%B8%D0%BB%D1%8C%D0%BD%D0%BE%D0%B3%D0%BE%20%D1%82%D0%B5%D0%BB%D0%B5%D1%84%D0%BE%D0%BD%D0%B0%20%D0%B4%D0%BB%D1%8F%20%D0%B2%D1%85%D0%BE%D0%B4%D0%B0%20%D0%B2%20%D1%83%D1%87%D0%B5%D1%82%D0%BD%D1%83%D1%8E%20%D0%B7%D0%B0%D0%BF%D0%B8%D1%81%D1%8C%20%2F%20%D0%B0%D0%BA%D0%BA%D0%B0%D1%83%D0%BD%D1%82%2C%20%D0%B8%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D1%83%D1%8F%20%D0%BF%D0%B0%D1%80%D0%BE%D0%BB%D1%8C%2C%20%D1%83%D0%BA%D0%B0%D0%B7%D0%B0%D0%BD%D0%BD%D1%8B%D0%B9%20%D0%BF%D1%80%D0%B8%20%D1%80%D0%B5%D0%B3%D0%B8%D1%81%D1%82%D1%80%D0%B0%D1%86%D0%B8%D0%B8.%20%D0%94%D0%BB%D1%8F%20SMS-%D0%B2%D0%B5%D1%80%D0%B8%D1%84%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D0%B8%20%D0%B8%20%D0%BF%D1%83%D0%B1%D0%BB%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D0%B8%20%D0%B2%20%D0%BA%D0%B0%D1%87%D0%B5%D1%81%D1%82%D0%B2%D0%B5%20%D0%BA%D0%BE%D0%BD%D1%82%D0%B0%D0%BA%D1%82%D0%BD%D1%8B%D1%85%20%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D1%85%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%20%D0%B8%D0%BC%D0%B5%D0%B5%D1%82%20%D0%BF%D1%80%D0%B0%D0%B2%20%D0%B8%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D1%8C%20%D1%82%D0%BE%D0%BB%D1%8C%D0%BA%D0%BE%20%D0%BD%D0%BE%D0%BC%D0%B5%D1%80%20%D0%BE%D0%BF%D0%B5%D1%80%D0%B0%D1%82%D0%BE%D1%80%D0%B0%20%D1%81%D0%B2%D1%8F%D0%B7%D0%B8%20%D0%A0%D0%B5%D1%81%D0%BF%D1%83%D0%B1%D0%BB%D0%B8%D0%BA%D0%B8%20%D0%A3%D0%B7%D0%B1%D0%B5%D0%BA%D0%B8%D1%81%D1%82%D0%B0%D0%BD.%3C%2Fp%3E%0A%0A%3Cp%3E7.%20%D0%9E%D0%9F%D0%9B%D0%90%D0%A2%D0%90%20%D0%A3%D0%A1%D0%9B%D0%A3%D0%93%3C%2Fp%3E%0A%0A%3Cp%3E%D0%97%D0%B0%D0%BA%D0%B0%D0%B7%20(%D0%B0%D0%BA%D1%86%D0%B5%D0%BF%D1%82%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5)%20%D0%BF%D0%BB%D0%B0%D1%82%D0%BD%D1%8B%D1%85%20%D1%83%D1%81%D0%BB%D1%83%D0%B3%20%7Burl%7D%20%D0%BE%D1%81%D1%83%D1%89%D0%B5%D1%81%D1%82%D0%B2%D0%BB%D1%8F%D0%B5%D1%82%D1%81%D1%8F%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D0%B5%D0%BC%20%D0%BD%D0%B0%20%D1%81%D0%B0%D0%B9%D1%82%D0%B5%20%D0%BF%D0%BE%20%D0%B0%D0%B4%D1%80%D0%B5%D1%81%D1%83%20%7Burl%7D%2C%20%D0%B2%20%D0%BB%D0%B8%D1%87%D0%BD%D0%BE%D0%B9%20%D1%83%D1%87%D0%B5%D1%82%D0%BD%D0%BE%D0%B9%20%D0%B7%D0%B0%D0%BF%D0%B8%D1%81%D0%B8%2C%20%D0%B0%20%D1%82%D0%B0%D0%BA%D0%B6%D0%B5%20%D0%B2%20%D0%BB%D1%8E%D0%B1%D1%8B%D1%85%20%D0%B4%D1%80%D1%83%D0%B3%D0%B8%D1%85%20%D1%81%D0%BE%D0%BE%D1%82%D0%B2%D0%B5%D1%82%D1%81%D1%82%D0%B2%D1%83%D1%8E%D1%89%D0%B8%D1%85%20%D1%80%D0%B0%D0%B7%D0%B4%D0%B5%D0%BB%D0%B0%D1%85%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B0.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%20%D0%BE%D0%B1%D1%8F%D0%B7%D1%83%D0%B5%D1%82%D1%81%D1%8F%20%D0%BE%D0%B7%D0%BD%D0%B0%D0%BA%D0%BE%D0%BC%D0%B8%D1%82%D1%8C%D1%81%D1%8F%20%D1%81%20%D1%86%D0%B5%D0%BD%D0%B0%D0%BC%D0%B8%20%D0%BD%D0%B0%20%D0%BF%D0%BB%D0%B0%D1%82%D0%BD%D1%8B%D0%B5%20%D1%83%D1%81%D0%BB%D1%83%D0%B3%D0%B8%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D0%B8%2C%20%D1%80%D0%B0%D0%B7%D0%BC%D0%B5%D1%89%D0%B5%D0%BD%D0%BD%D1%8B%D1%85%20%D0%BD%D0%B0%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B5%2C%20%D0%BF%D0%BE%D1%81%D0%BB%D0%B5%20%D1%87%D0%B5%D0%B3%D0%BE%20%D0%BC%D0%BE%D0%B6%D0%B5%D1%82%20%D0%B7%D0%B0%D0%BA%D0%B0%D0%B7%D0%B0%D1%82%D1%8C%20%D1%82%D0%B0%D0%BA%D0%B8%D0%B5%20%D1%83%D1%81%D0%BB%D1%83%D0%B3%D0%B8.%20%D0%9F%D0%BE%D0%B4%D1%80%D0%BE%D0%B1%D0%BD%D0%B0%D1%8F%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8F%20%D0%BE%20%D1%81%D1%82%D0%BE%D0%B8%D0%BC%D0%BE%D1%81%D1%82%D0%B8%20%D0%B2%D1%81%D0%B5%D1%85%20%D1%83%D1%81%D0%BB%D1%83%D0%B3%20%D1%83%D0%BA%D0%B0%D0%B7%D0%B0%D0%BD%D0%B0.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9E%D0%BF%D0%BB%D0%B0%D1%82%D0%B0%20%D0%BF%D0%BB%D0%B0%D1%82%D0%BD%D1%8B%D1%85%20%D1%83%D1%81%D0%BB%D1%83%D0%B3%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D0%B8%20%D0%BE%D1%81%D1%83%D1%89%D0%B5%D1%81%D1%82%D0%B2%D0%BB%D1%8F%D0%B5%D1%82%D1%81%D1%8F%20%D0%B2%20%D0%BF%D0%BE%D1%80%D1%8F%D0%B4%D0%BA%D0%B5%2C%20%D1%83%D0%BA%D0%B0%D0%B7%D0%B0%D0%BD%D0%BD%D0%BE%D0%BC%20%D0%BF%D0%BE%20%D0%B0%D0%B4%D1%80%D0%B5%D1%81%D1%83%20%7Burl%7Dhelp%2Fpayment%2Fporyadok-oplaty%2F.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%92%D0%BE%D0%B7%D0%B2%D1%80%D0%B0%D1%82%20%D0%BE%D0%BF%D0%BB%D0%B0%D1%87%D0%B5%D0%BD%D0%BD%D1%8B%D1%85%20%D0%B4%D0%B5%D0%BD%D0%B5%D0%B6%D0%BD%D1%8B%D1%85%20%D1%81%D1%80%D0%B5%D0%B4%D1%81%D1%82%D0%B2%20%D0%B7%D0%B0%20%D0%BD%D0%B5%D0%BE%D0%BA%D0%B0%D0%B7%D0%B0%D0%BD%D0%BD%D1%8B%D0%B5%20%D1%83%D1%81%D0%BB%D1%83%D0%B3%D0%B8%20%D0%BE%D1%81%D1%83%D1%89%D0%B5%D1%81%D1%82%D0%B2%D0%BB%D1%8F%D0%B5%D1%82%D1%81%D1%8F%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D0%B5%D0%B9%20%D0%B2%20%D1%81%D0%BB%D0%B5%D0%B4%D1%83%D1%8E%D1%89%D0%B8%D1%85%20%D1%81%D0%BB%D1%83%D1%87%D0%B0%D1%8F%D1%85%3A%3C%2Fp%3E%0A%0A%3Cp%3E%D0%90%D0%B2%D1%82%D0%BE%D0%BC%D0%B0%D1%82%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%20%D1%84%D1%83%D0%BD%D0%BA%D1%86%D0%B8%D0%BE%D0%BD%D0%B0%D0%BB%D1%8C%D0%BD%D0%BE%D0%B9%20%D1%81%D0%B8%D1%81%D1%82%D0%B5%D0%BC%D0%BE%D0%B9%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B0%20%D0%B7%D0%B0%20%D0%BA%D0%B0%D0%B6%D0%B4%D0%BE%D0%B5%20%D1%83%D0%B4%D0%B0%D0%BB%D0%B5%D0%BD%D0%BD%D0%BE%D0%B5%20%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5%20%D0%BF%D1%80%D0%B8%20%D0%BC%D0%BE%D0%B4%D0%B5%D1%80%D0%B0%D1%86%D0%B8%D0%B8%2C%20%D0%B5%D1%81%D0%BB%D0%B8%20%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%BE%D0%BF%D0%BB%D0%B0%D1%87%D0%B5%D0%BD%D0%BE%20(%D0%A2%D0%BE%D0%BF%2C%20%D0%92%D1%8B%D0%B4%D0%B5%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5%2C%20%D0%A1%D1%80%D0%BE%D1%87%D0%BD%D0%BE).%20%D0%92%D0%BE%D0%B7%D0%B2%D1%80%D0%B0%D1%82%20%D0%B4%D0%B5%D0%BD%D0%B5%D0%B6%D0%BD%D1%8B%D1%85%20%D1%81%D1%80%D0%B5%D0%B4%D1%81%D1%82%D0%B2%20%D0%BE%D1%81%D1%83%D1%89%D0%B5%D1%81%D1%82%D0%B2%D0%BB%D1%8F%D0%B5%D1%82%D1%81%D1%8F%20%D0%B7%D0%B0%20%D1%82%D0%B5%20%D0%B4%D0%BD%D0%B8%2C%20%D0%B2%20%D0%BA%D0%BE%D1%82%D0%BE%D1%80%D1%8B%D1%85%20%D1%83%D1%81%D0%BB%D1%83%D0%B3%D0%B0%20%D0%BD%D0%B5%20%D0%BF%D1%80%D0%B5%D0%B4%D0%BE%D1%81%D1%82%D0%B0%D0%B2%D0%BB%D1%8F%D0%BB%D0%B0%D1%81%D1%8C%20(%D0%BA%D1%80%D0%BE%D0%BC%D0%B5%20%D1%83%D1%81%D0%BB%D1%83%D0%B3%20%D0%92%D1%8B%D0%B4%D0%B5%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5%20%D0%B8%20%D0%A1%D1%80%D0%BE%D1%87%D0%BD%D0%BE%2C%20%D0%B3%D0%B4%D0%B5%20%D0%BF%D1%80%D0%BE%D0%B8%D0%B7%D0%B2%D0%BE%D0%B4%D0%B8%D1%82%D1%81%D1%8F%20%D0%BF%D0%BE%D0%BB%D0%BD%D1%8B%D0%B9%20%D0%B2%D0%BE%D0%B7%D0%B2%D1%80%D0%B0%D1%82%20%D0%BE%D0%BF%D0%BB%D0%B0%D1%87%D0%B5%D0%BD%D0%BD%D1%8B%D1%85%20%D1%81%D1%80%D0%B5%D0%B4%D1%81%D1%82%D0%B2).%3C%2Fp%3E%0A%0A%3Cp%3E%D0%95%D1%81%D0%BB%D0%B8%20%D0%BF%D0%BE%20%D0%BF%D1%80%D0%B8%D1%87%D0%B8%D0%BD%D0%B5%20%D0%BB%D1%8E%D0%B1%D0%BE%D0%B9%20%D1%82%D0%B5%D1%85%D0%BD%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%BE%D0%B9%20%D0%BD%D0%B5%D0%BF%D0%BE%D0%BB%D0%B0%D0%B4%D0%BA%D0%B8%20%D1%83%D1%81%D0%BB%D1%83%D0%B3%D0%B0%20%D0%BD%D0%B5%20%D0%BF%D1%80%D0%B5%D0%B4%D0%BE%D1%81%D1%82%D0%B0%D0%B2%D0%BB%D1%8F%D0%BB%D0%B0%D1%81%D1%8C%2C%20%D0%B2%D0%BE%D0%B7%D0%B2%D1%80%D0%B0%D1%82%20%D0%BE%D0%BF%D0%BB%D0%B0%D1%87%D0%B5%D0%BD%D0%BD%D1%8B%D1%85%20%D0%B4%D0%B5%D0%BD%D0%B5%D0%B6%D0%BD%D1%8B%D1%85%20%D1%81%D1%80%D0%B5%D0%B4%D1%81%D1%82%D0%B2%20%D0%BE%D1%81%D1%83%D1%89%D0%B5%D1%81%D1%82%D0%B2%D0%BB%D1%8F%D0%B5%D1%82%D1%81%D1%8F%20%D0%B0%D0%B4%D0%BC%D0%B8%D0%BD%D0%B8%D1%81%D1%82%D1%80%D0%B0%D1%82%D0%BE%D1%80%D0%BE%D0%BC%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B0%20%D0%BF%D0%BE%D1%81%D0%BB%D0%B5%20%D0%BF%D1%80%D0%B5%D0%B4%D0%BE%D1%81%D1%82%D0%B0%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D0%B5%D0%BC%20%D0%B4%D0%BE%D0%BA%D0%B0%D0%B7%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%D1%81%D1%82%D0%B2%20%D0%BE%D0%BF%D0%BB%D0%B0%D1%82%D1%8B.%20%D0%92%20%D1%82%D0%B0%D0%BA%D0%BE%D0%BC%20%D1%81%D0%BB%D1%83%D1%87%D0%B0%D0%B5%20%D0%B2%D0%BE%D0%B7%D0%B2%D1%80%D0%B0%D1%82%20%D0%B4%D0%B5%D0%BD%D0%B5%D0%B6%D0%BD%D1%8B%D1%85%20%D1%81%D1%80%D0%B5%D0%B4%D1%81%D1%82%D0%B2%20%D0%BE%D1%82%D0%BE%D0%B1%D1%80%D0%B0%D0%B6%D0%B0%D0%B5%D1%82%D1%81%D1%8F%20%D0%B2%20%D0%B0%D0%BA%D0%BA%D0%B0%D1%83%D0%BD%D1%82%D0%B5%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F%20%D1%81%20%D0%B2%D0%BE%D0%B7%D0%BC%D0%BE%D0%B6%D0%BD%D0%BE%D1%81%D1%82%D1%8C%D1%8E%20%D0%B8%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%BE%D0%BF%D0%BB%D0%B0%D1%87%D0%B5%D0%BD%D0%BD%D1%8B%D1%85%20%D0%B4%D0%B5%D0%BD%D0%B5%D0%B6%D0%BD%D1%8B%D1%85%20%D1%81%D1%80%D0%B5%D0%B4%D1%81%D1%82%D0%B2%20%D0%B2%20%D0%B1%D1%83%D0%B4%D1%83%D1%89%D0%B5%D0%BC.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9F%D1%80%D0%B8%20%D0%BE%D0%BF%D0%BB%D0%B0%D1%82%D0%B5%20%D1%83%D1%81%D0%BB%D1%83%D0%B3%20%D1%81%20%D1%83%D0%B4%D0%B0%D0%BB%D1%91%D0%BD%D0%BD%D1%8B%D1%85%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D0%B5%D0%B9%20%D1%83%D1%87%D0%B5%D1%82%D0%BD%D1%8B%D1%85%20%D0%B7%D0%B0%D0%BF%D0%B8%D1%81%D0%B5%D0%B9%2C%20%D0%BA%D0%BE%D1%82%D0%BE%D1%80%D1%8B%D0%B5%20%D0%B1%D1%8B%D0%BB%D0%B8%20%D0%BF%D1%80%D0%BE%D0%B4%D1%83%D0%B1%D0%BB%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D1%8B%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D0%B5%D0%BC%20%D0%B2%20%D0%BD%D0%B0%D1%80%D1%83%D1%88%D0%B5%D0%BD%D0%B8%D0%B5%20%D1%83%D1%81%D0%BB%D0%BE%D0%B2%D0%B8%D0%B9%20%D0%B4%D0%B0%D0%BD%D0%BD%D0%BE%D0%B3%D0%BE%20%D0%A1%D0%BE%D0%B3%D0%BB%D0%B0%D1%88%D0%B5%D0%BD%D0%B8%D1%8F.%20%D0%A2%D0%B0%D0%BA%D0%BE%D0%B9%20%D0%B2%D0%BE%D0%B7%D0%B2%D1%80%D0%B0%D1%82%20%D0%BE%D1%81%D1%83%D1%89%D0%B5%D1%81%D1%82%D0%B2%D0%BB%D1%8F%D0%B5%D1%82%D1%81%D1%8F%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D0%B5%D0%B9%20%D0%B8%D1%81%D0%BA%D0%BB%D1%8E%D1%87%D0%B8%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D0%BE%20%D0%BF%D0%BE%20%D0%BE%D0%B1%D1%80%D0%B0%D1%89%D0%B5%D0%BD%D0%B8%D1%8E%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F%2C%20%D0%B0%20%D0%B4%D0%B5%D0%BD%D0%B5%D0%B6%D0%BD%D1%8B%D0%B5%20%D1%81%D1%80%D0%B5%D0%B4%D1%81%D1%82%D0%B2%D0%B0%20%D0%B2%D0%BE%D0%B7%D0%B2%D1%80%D0%B0%D1%89%D0%B0%D1%8E%D1%82%D1%81%D1%8F%20%D0%BD%D0%B0%20%D0%B0%D0%BA%D1%82%D0%B8%D0%B2%D0%BD%D1%83%D1%8E%20%D1%83%D1%87%D0%B5%D1%82%D0%BD%D1%83%D1%8E%20%D0%B7%D0%B0%D0%BF%D0%B8%D1%81%D1%8C%20%D1%82%D0%B0%D0%BA%D0%BE%D0%B3%D0%BE%20%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F%20%D1%81%20%D0%B2%D0%BE%D0%B7%D0%BC%D0%BE%D0%B6%D0%BD%D0%BE%D1%81%D1%82%D1%8C%D1%8E%20%D0%B8%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%BE%D0%BF%D0%BB%D0%B0%D1%87%D0%B5%D0%BD%D0%BD%D1%8B%D1%85%20%D0%B4%D0%B5%D0%BD%D0%B5%D0%B6%D0%BD%D1%8B%D1%85%20%D1%81%D1%80%D0%B5%D0%B4%D1%81%D1%82%D0%B2%20%D0%B2%20%D0%B1%D1%83%D0%B4%D1%83%D1%89%D0%B5%D0%BC.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%94%D0%B5%D0%BD%D0%B5%D0%B6%D0%BD%D1%8B%D0%B5%20%D1%81%D1%80%D0%B5%D0%B4%D1%81%D1%82%D0%B2%D0%B0%2C%20%D0%BE%D0%BF%D0%BB%D0%B0%D1%87%D0%B5%D0%BD%D0%BD%D1%8B%D0%B5%20%D0%B7%D0%B0%20%D1%80%D0%B0%D0%B7%D0%BC%D0%B5%D1%89%D0%B5%D0%BD%D0%B8%D0%B5%20%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B9%20%D0%BE%20%D0%B7%D0%B0%D0%BF%D1%80%D0%B5%D1%89%D1%91%D0%BD%D0%BD%D1%8B%D1%85%20%D1%82%D0%BE%D0%B2%D0%B0%D1%80%D0%B0%D1%85%2C%20%D1%83%D1%81%D0%BB%D1%83%D0%B3%D0%B0%D1%85%2C%20%D0%BF%D1%80%D0%B5%D0%B4%D0%BB%D0%BE%D0%B6%D0%B5%D0%BD%D0%B8%D1%8F%D1%85%2C%20%D0%BF%D0%B5%D1%80%D0%B5%D1%87%D0%B5%D0%BD%D1%8C%20%D0%BA%D0%BE%D1%82%D0%BE%D1%80%D1%8B%D1%85%20%D1%83%D0%BA%D0%B0%D0%B7%D0%B0%D0%BD%20%D0%BD%D0%B0%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B5%2C%20%D0%BF%D1%80%D0%B8%20%D0%B1%D0%BB%D0%BE%D0%BA%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B8%20%D1%83%D1%87%D0%B5%D1%82%D0%BD%D0%BE%D0%B9%20%D0%B7%D0%B0%D0%BF%D0%B8%D1%81%D0%B8%20%D0%BD%D0%B5%20%D0%B2%D0%BE%D0%B7%D0%B2%D1%80%D0%B0%D1%89%D0%B0%D1%8E%D1%82%D1%81%D1%8F.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9F%D1%80%D0%B8%20%D1%81%D0%B8%D1%81%D1%82%D0%B5%D0%BC%D0%B0%D1%82%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D1%85%20(%D0%B4%D0%B2%D0%B0%20%D0%B8%20%D0%B1%D0%BE%D0%BB%D0%B5%D0%B5%20%D1%80%D0%B0%D0%B7%D0%B0)%20%D0%BD%D0%B0%D1%80%D1%83%D1%88%D0%B5%D0%BD%D0%B8%D1%8F%D1%85%20%D1%83%D1%81%D0%BB%D0%BE%D0%B2%D0%B8%D0%B9%20%D1%8D%D1%82%D0%BE%D0%B3%D0%BE%20%D0%A1%D0%BE%D0%B3%D0%BB%D0%B0%D1%88%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%B2%D0%BE%D0%B7%D0%B2%D1%80%D0%B0%D1%82%20%D0%BE%D0%BF%D0%BB%D0%B0%D1%87%D0%B5%D0%BD%D0%BD%D1%8B%D1%85%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D0%B5%D0%BC%20%D0%B4%D0%B5%D0%BD%D0%B5%D0%B6%D0%BD%D1%8B%D1%85%20%D1%81%D1%80%D0%B5%D0%B4%D1%81%D1%82%D0%B2%20%D1%81%D0%BE%D0%B2%D0%B5%D1%80%D1%88%D0%B0%D0%B5%D1%82%D1%81%D1%8F%20%D0%BD%D0%B0%20%D0%BE%D1%81%D0%BD%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B8%20%D1%80%D0%B5%D1%88%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%B0%D0%B4%D0%BC%D0%B8%D0%BD%D0%B8%D1%81%D1%82%D1%80%D0%B0%D1%86%D0%B8%D0%B8%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B0%20%D0%BF%D0%BE%D1%81%D0%BB%D0%B5%20%D1%81%D0%BE%D0%BE%D1%82%D0%B2%D0%B5%D1%82%D1%81%D1%82%D0%B2%D1%83%D1%8E%D1%89%D0%B5%D0%B3%D0%BE%20%D0%BE%D0%B1%D1%80%D0%B0%D1%89%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F.%3C%2Fp%3E%0A%0A%3Cp%3E8.%20%D0%9E%D0%93%D0%A0%D0%90%D0%9D%D0%98%D0%A7%D0%95%D0%9D%D0%98%D0%95%20%D0%9E%D0%A2%D0%92%D0%95%D0%A2%D0%A1%D0%A2%D0%92%D0%95%D0%9D%D0%9D%D0%9E%D0%A1%D0%A2%D0%98%20%D0%9A%D0%9E%D0%9C%D0%9F%D0%90%D0%9D%D0%98%D0%98%3C%2Fp%3E%0A%0A%3Cp%3E%D0%92%D0%BE%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D0%B2%D1%88%D0%B8%D1%81%D1%8C%20%D1%81%D0%B5%D1%80%D0%B2%D0%B8%D1%81%D0%B0%D0%BC%D0%B8%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B0%2C%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%20%D0%BF%D0%BE%D0%B4%D1%82%D0%B2%D0%B5%D1%80%D0%B6%D0%B4%D0%B0%D0%B5%D1%82%20%D1%81%D0%B2%D0%BE%D0%B5%20%D1%81%D0%BE%D0%B3%D0%BB%D0%B0%D1%81%D0%B8%D0%B5%20%D1%81%20%D1%82%D0%B5%D0%BC%2C%20%D1%87%D1%82%D0%BE%20%D0%BE%D0%BD%20%D0%B8%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D1%83%D0%B5%D1%82%20%D0%A1%D0%B0%D0%B9%D1%82%20%D0%B8%20%D0%B5%D0%B3%D0%BE%20%D1%81%D0%B5%D1%80%D0%B2%D0%B8%D1%81%D1%8B%20%D0%BD%D0%B0%20%D1%81%D0%B2%D0%BE%D0%B9%20%D1%81%D1%82%D1%80%D0%B0%D1%85%20%D0%B8%20%D1%80%D0%B8%D1%81%D0%BA%2C%20%D0%BE%D1%86%D0%B5%D0%BD%D0%B8%D0%B2%D0%B0%D0%B5%D1%82%20%D0%B8%20%D0%BD%D0%B5%D1%81%D0%B5%D1%82%20%D0%B2%D1%81%D0%B5%20%D1%80%D0%B8%D1%81%D0%BA%D0%B8%2C%20%D1%81%D0%B2%D1%8F%D0%B7%D0%B0%D0%BD%D0%BD%D1%8B%D0%B5%20%D1%81%20%D0%B8%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5%D0%BC%20%D1%80%D0%B0%D0%B7%D0%BC%D0%B5%D1%89%D0%B5%D0%BD%D0%BD%D1%8B%D1%85%20%D0%BD%D0%B0%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B5%20%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B9%2C%20%D0%B0%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D1%8F%2C%20%D0%B2%20%D1%82%D0%BE%D0%BC%20%D1%87%D0%B8%D1%81%D0%BB%D0%B5%20%D0%B5%D0%B5%20%D1%80%D1%83%D0%BA%D0%BE%D0%B2%D0%BE%D0%B4%D1%81%D1%82%D0%B2%D0%BE%2C%20%D1%81%D0%BE%D1%82%D1%80%D1%83%D0%B4%D0%BD%D0%B8%D0%BA%D0%B8%20%D0%B8%20%D0%B0%D0%B3%D0%B5%D0%BD%D1%82%D1%8B%2C%20%D0%BD%D0%B5%20%D0%BD%D0%B5%D1%81%D1%83%D1%82%20%D0%BD%D0%B8%D0%BA%D0%B0%D0%BA%D0%BE%D0%B9%20%D0%BE%D1%82%D0%B2%D0%B5%D1%82%D1%81%D1%82%D0%B2%D0%B5%D0%BD%D0%BD%D0%BE%D1%81%D1%82%D0%B8%20%D0%B7%D0%B0%20%D1%81%D0%BE%D0%B4%D0%B5%D1%80%D0%B6%D0%B0%D0%BD%D0%B8%D0%B5%20%D1%80%D0%B0%D0%B7%D0%BC%D0%B5%D1%89%D0%B5%D0%BD%D0%BD%D1%8B%D1%85%20%D0%BD%D0%B0%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B5%20%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B9%2C%20%D0%B7%D0%B0%20%D0%BB%D1%8E%D0%B1%D1%8B%D0%B5%20%D1%83%D0%B1%D1%8B%D1%82%D0%BA%D0%B8%20%D0%B8%20%D0%BF%D0%BE%D1%82%D0%B5%D1%80%D0%B8%2C%20%D1%81%D1%82%D0%B0%D0%B2%D1%88%D0%B8%D0%B5%20%D1%80%D0%B5%D0%B7%D1%83%D0%BB%D1%8C%D1%82%D0%B0%D1%82%D0%BE%D0%BC%20%D0%B8%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D1%8F%20%D1%80%D0%B0%D0%B7%D0%BC%D0%B5%D1%89%D0%B5%D0%BD%D0%BD%D1%8B%D1%85%20%D0%BD%D0%B0%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B5%20%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B9.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%BD%D0%B5%20%D1%8F%D0%B2%D0%BB%D1%8F%D0%B5%D1%82%D1%81%D1%8F%20%D0%BE%D1%80%D0%B3%D0%B0%D0%BD%D0%B8%D0%B7%D0%B0%D1%82%D0%BE%D1%80%D0%BE%D0%BC%2F%D0%B8%D0%BD%D0%B8%D1%86%D0%B8%D0%B0%D1%82%D0%BE%D1%80%D0%BE%D0%BC%20%D1%81%D0%B4%D0%B5%D0%BB%D0%BA%D0%B8%20%D0%BC%D0%B5%D0%B6%D0%B4%D1%83%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F%D0%BC%D0%B8%20%D0%B8%D0%BB%D0%B8%20%D0%B5%D0%B5%20%D1%81%D1%82%D0%BE%D1%80%D0%BE%D0%BD%D0%BE%D0%B9.%20%D0%A1%D0%B0%D0%B9%D1%82%20%D1%8F%D0%B2%D0%BB%D1%8F%D0%B5%D1%82%D1%81%D1%8F%20%D1%82%D0%BE%D1%80%D0%B3%D0%BE%D0%B2%D0%BE%D0%B9%20%D0%BA%D0%BE%D0%BC%D0%BC%D1%83%D0%BD%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D0%BE%D0%BD%D0%BD%D0%BE%D0%B9%20%D0%BF%D0%BB%D0%B0%D1%82%D1%84%D0%BE%D1%80%D0%BC%D0%BE%D0%B9%2C%20%D0%BA%D0%BE%D1%82%D0%BE%D1%80%D0%B0%D1%8F%20%D0%BF%D1%80%D0%B5%D0%B4%D0%BE%D1%81%D1%82%D0%B0%D0%B2%D0%BB%D1%8F%D0%B5%D1%82%20%D0%B2%D0%BE%D0%B7%D0%BC%D0%BE%D0%B6%D0%BD%D0%BE%D1%81%D1%82%D1%8C%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F%D0%BC%20%D1%80%D0%B0%D0%B7%D0%BC%D0%B5%D1%89%D0%B0%D1%82%D1%8C%20%D0%B4%D0%BB%D1%8F%20%D1%80%D0%B5%D0%B0%D0%BB%D0%B8%D0%B7%D0%B0%D1%86%D0%B8%D0%B8%2C%20%D0%BF%D1%80%D0%BE%D0%B4%D0%B0%D0%B2%D0%B0%D1%82%D1%8C%20%D0%B8%20%D0%BF%D1%80%D0%B8%D0%BE%D0%B1%D1%80%D0%B5%D1%82%D0%B0%D1%82%D1%8C%20%D1%80%D0%B0%D0%B7%D1%80%D0%B5%D1%88%D0%B5%D0%BD%D0%BD%D1%8B%D0%B5%20%D0%B7%D0%B0%D0%BA%D0%BE%D0%BD%D0%BE%D0%BC%20%D1%82%D0%BE%D0%B2%D0%B0%D1%80%D1%8B%20%D0%B8%20%D1%83%D1%81%D0%BB%D1%83%D0%B3%D0%B8%20%D0%B2%20%D0%BB%D1%8E%D0%B1%D0%BE%D0%B5%20%D0%B2%D1%80%D0%B5%D0%BC%D1%8F%2C%20%D0%BE%D1%82%D0%BA%D1%83%D0%B4%D0%B0%20%D1%83%D0%B3%D0%BE%D0%B4%D0%BD%D0%BE%20%D0%B8%20%D0%BF%D0%BE%20%D0%BB%D1%8E%D0%B1%D0%BE%D0%B9%20%D1%86%D0%B5%D0%BD%D0%B5.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%BD%D0%B5%20%D0%BC%D0%BE%D0%B6%D0%B5%D1%82%20%D0%BA%D0%BE%D0%BD%D1%82%D1%80%D0%BE%D0%BB%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D1%82%D1%8C%20%D0%B4%D0%BE%D1%81%D1%82%D0%BE%D0%B2%D0%B5%D1%80%D0%BD%D0%BE%D1%81%D1%82%D1%8C%20%D1%80%D0%B0%D0%B7%D0%BC%D0%B5%D1%89%D0%B0%D0%B5%D0%BC%D0%BE%D0%B9%20%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F%D0%BC%D0%B8%20%D0%B2%20%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F%D1%85%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D0%B8.%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%BD%D0%B5%20%D0%BD%D0%B5%D1%81%D0%B5%D1%82%20%D0%BE%D1%82%D0%B2%D0%B5%D1%82%D1%81%D1%82%D0%B2%D0%B5%D0%BD%D0%BD%D0%BE%D1%81%D1%82%D0%B8%20%D0%B7%D0%B0%20%D0%BA%D0%B0%D0%BA%D0%BE%D0%B9-%D0%BB%D0%B8%D0%B1%D0%BE%20%D1%83%D1%89%D0%B5%D1%80%D0%B1%2C%20%D0%BF%D1%80%D0%B8%D1%87%D0%B8%D0%BD%D0%B5%D0%BD%D0%BD%D1%8B%D0%B9%20%D0%B2%20%D1%80%D0%B5%D0%B7%D1%83%D0%BB%D1%8C%D1%82%D0%B0%D1%82%D0%B5%20%D1%81%D0%BE%D0%B2%D0%B5%D1%80%D1%88%D0%B5%D0%BD%D0%B8%D1%8F%20%D1%81%D0%B4%D0%B5%D0%BB%D0%BA%D0%B8%20%D0%B8%D0%BB%D0%B8%20%D0%BD%D0%B5%D0%BD%D0%B0%D0%B4%D0%BB%D0%B5%D0%B6%D0%B0%D1%89%D0%B5%D0%B3%D0%BE%20%D0%BF%D0%BE%D0%B2%D0%B5%D0%B4%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%BA%D0%B0%D0%BA%D0%BE%D0%B9-%D0%BB%D0%B8%D0%B1%D0%BE%20%D0%B8%D0%B7%20%D1%81%D1%82%D0%BE%D1%80%D0%BE%D0%BD%20%D1%81%D0%B4%D0%B5%D0%BB%D0%BA%D0%B8.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%BD%D0%B5%20%D0%BD%D0%B5%D1%81%D0%B5%D1%82%20%D0%BE%D1%82%D0%B2%D0%B5%D1%82%D1%81%D1%82%D0%B2%D0%B5%D0%BD%D0%BD%D0%BE%D1%81%D1%82%D0%B8%20%D0%B7%D0%B0%20%D0%BF%D0%BE%D0%B2%D0%B5%D0%B4%D0%B5%D0%BD%D0%B8%D0%B5%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D0%B5%D0%B9%20%D0%B8%D0%BB%D0%B8%20%D0%B7%D0%B0%20%D0%BF%D1%80%D0%B5%D0%B4%D0%BB%D0%B0%D0%B3%D0%B0%D0%B5%D0%BC%D1%8B%D0%B5%20%D0%B8%D0%BC%D0%B8%20%D1%82%D0%BE%D0%B2%D0%B0%D1%80%D1%8B%2F%D1%83%D1%81%D0%BB%D1%83%D0%B3%D0%B8%2C%20%D1%83%D0%BA%D0%B0%D0%B7%D0%B0%D0%BD%D0%BD%D1%8B%D0%B5%20%D0%B2%20%D1%80%D0%B0%D0%B7%D0%BC%D0%B5%D1%89%D0%B0%D0%B5%D0%BC%D1%8B%D1%85%20%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F%D1%85.%20%D0%92%D1%81%D0%B5%20%D1%81%D0%BF%D0%BE%D1%80%D1%8B%20%D0%B8%20%D0%BA%D0%BE%D0%BD%D1%84%D0%BB%D0%B8%D0%BA%D1%82%D1%8B%20%D0%BC%D0%B5%D0%B6%D0%B4%D1%83%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F%D0%BC%D0%B8%20%D1%80%D0%B5%D1%88%D0%B0%D1%8E%D1%82%D1%81%D1%8F%20%D0%B8%D0%BC%D0%B8%20%D1%81%D0%B0%D0%BC%D0%BE%D1%81%D1%82%D0%BE%D1%8F%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D0%BE%20%D0%B1%D0%B5%D0%B7%20%D0%BF%D1%80%D0%B8%D0%B2%D0%BB%D0%B5%D1%87%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D0%B8.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%BD%D0%B5%20%D0%BD%D0%B5%D1%81%D0%B5%D1%82%20%D0%BE%D1%82%D0%B2%D0%B5%D1%82%D1%81%D1%82%D0%B2%D0%B5%D0%BD%D0%BD%D0%BE%D1%81%D1%82%D0%B8%20%D0%B7%D0%B0%20%D0%BB%D1%8E%D0%B1%D0%BE%D0%B9%20%D0%BD%D0%B5%D1%81%D0%B0%D0%BD%D0%BA%D1%86%D0%B8%D0%BE%D0%BD%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%BD%D1%8B%D0%B9%20%D0%B4%D0%BE%D1%81%D1%82%D1%83%D0%BF%20%D0%B8%D0%BB%D0%B8%20%D0%B8%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5%20%D1%81%D0%B5%D1%80%D0%B2%D0%B5%D1%80%D0%BE%D0%B2%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D0%B8%20%D0%B8%2F%D0%B8%D0%BB%D0%B8%20%D0%BB%D1%8E%D0%B1%D0%BE%D0%B9%20%D1%85%D1%80%D0%B0%D0%BD%D1%8F%D1%89%D0%B5%D0%B9%D1%81%D1%8F%20%D0%BD%D0%B0%20%D0%BD%D0%B8%D1%85%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D0%B8%20%D0%BE%20%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F%D1%85%2C%20%D0%B0%20%D1%82%D0%B0%D0%BA%D0%B6%D0%B5%20%D0%B7%D0%B0%20%D0%BB%D1%8E%D0%B1%D1%8B%D0%B5%20%D0%BE%D1%88%D0%B8%D0%B1%D0%BA%D0%B8%2C%20%D0%B2%D0%B8%D1%80%D1%83%D1%81%D1%8B%2C%20%26laquo%3B%D1%82%D1%80%D0%BE%D1%8F%D0%BD%D1%81%D0%BA%D0%B8%D0%B5%20%D0%BA%D0%BE%D0%BD%D0%B8%26raquo%3B%20%D0%B8%20%D1%82.%D0%B4.%2C%20%D0%BA%D0%BE%D1%82%D0%BE%D1%80%D1%8B%D0%B5%20%D0%BC%D0%BE%D0%B3%D1%83%D1%82%20%D0%B1%D1%8B%D1%82%D1%8C%20%D0%BF%D0%B5%D1%80%D0%B5%D0%B4%D0%B0%D0%BD%D1%8B%20%D0%BD%D0%B0%20%D0%A1%D0%B0%D0%B9%D1%82%20%D0%B8%D0%BB%D0%B8%20%D1%87%D0%B5%D1%80%D0%B5%D0%B7%20%D0%A1%D0%B0%D0%B9%D1%82%20%D1%82%D1%80%D0%B5%D1%82%D1%8C%D0%B8%D0%BC%D0%B8%20%D0%BB%D0%B8%D1%86%D0%B0%D0%BC%D0%B8.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9A%D0%B0%D1%87%D0%B5%D1%81%D1%82%D0%B2%D0%BE%2C%20%D0%B1%D0%B5%D0%B7%D0%BE%D0%BF%D0%B0%D1%81%D0%BD%D0%BE%D1%81%D1%82%D1%8C%2C%20%D0%B7%D0%B0%D0%BA%D0%BE%D0%BD%D0%BD%D0%BE%D1%81%D1%82%D1%8C%20%D0%B8%20%D1%81%D0%BE%D0%BE%D1%82%D0%B2%D0%B5%D1%82%D1%81%D1%82%D0%B2%D0%B8%D0%B5%20%D1%82%D0%BE%D0%B2%D0%B0%D1%80%D0%B0%20%D0%B8%D0%BB%D0%B8%20%D1%83%D1%81%D0%BB%D1%83%D0%B3%D0%B8%20%D0%B8%D1%85%20%D0%BE%D0%BF%D0%B8%D1%81%D0%B0%D0%BD%D0%B8%D1%8E%2C%20%D0%B0%20%D1%82%D0%B0%D0%BA%D0%B6%D0%B5%20%D0%B2%D0%BE%D0%B7%D0%BC%D0%BE%D0%B6%D0%BD%D0%BE%D1%81%D1%82%D1%8C%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F%20%D0%BF%D1%80%D0%BE%D0%B4%D0%B0%D1%82%D1%8C%20%D0%B8%D0%BB%D0%B8%20%D0%BF%D1%80%D0%B8%D0%BE%D0%B1%D1%80%D0%B5%D1%81%D1%82%D0%B8%20%D1%82%D0%BE%D0%B2%D0%B0%D1%80%2F%D1%83%D1%81%D0%BB%D1%83%D0%B3%D1%83%20%D0%BD%D0%B0%D1%85%D0%BE%D0%B4%D1%8F%D1%82%D1%81%D1%8F%20%D0%B2%D0%BD%D0%B5%20%D0%BA%D0%BE%D0%BD%D1%82%D1%80%D0%BE%D0%BB%D1%8F%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D0%B8.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%BF%D1%80%D0%B8%D0%B7%D1%8B%D0%B2%D0%B0%D0%B5%D1%82%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D0%B5%D0%B9%20%D1%81%D0%BE%D0%B1%D0%BB%D1%8E%D0%B4%D0%B0%D1%82%D1%8C%20%D0%BE%D1%81%D1%82%D0%BE%D1%80%D0%BE%D0%B6%D0%BD%D0%BE%D1%81%D1%82%D1%8C%20%D0%B8%20%D1%81%D0%BE%D1%85%D1%80%D0%B0%D0%BD%D1%8F%D1%82%D1%8C%20%D0%B7%D0%B4%D1%80%D0%B0%D0%B2%D1%8B%D0%B9%20%D1%81%D0%BC%D1%8B%D1%81%D0%BB%20%D0%BF%D1%80%D0%B8%20%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B8%20%D1%83%D1%81%D0%BB%D1%83%D0%B3%D0%B0%D0%BC%D0%B8%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B0.%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%20%D0%B4%D0%BE%D0%BB%D0%B6%D0%B5%D0%BD%20%D0%BF%D1%80%D0%B8%D0%BD%D1%8F%D1%82%D1%8C%20%D0%B2%D0%BE%20%D0%B2%D0%BD%D0%B8%D0%BC%D0%B0%D0%BD%D0%B8%D0%B5%2C%20%D1%87%D1%82%D0%BE%20%D0%B5%D0%B3%D0%BE%20%D0%BA%D0%BE%D0%BD%D1%82%D1%80%D0%B0%D0%B3%D0%B5%D0%BD%D1%82%20%D0%BC%D0%BE%D0%B6%D0%B5%D1%82%20%D0%B1%D1%8B%D1%82%D1%8C%20%D0%BD%D0%B5%D1%81%D0%BE%D0%B2%D0%B5%D1%80%D1%88%D0%B5%D0%BD%D0%BD%D0%BE%D0%BB%D0%B5%D1%82%D0%BD%D0%B8%D0%BC%20%D0%B8%D0%BB%D0%B8%20%D0%B2%D1%8B%D0%B4%D0%B0%D0%B2%D0%B0%D1%82%D1%8C%20%D1%81%D0%B5%D0%B1%D1%8F%20%D0%B7%D0%B0%20%D0%B4%D1%80%D1%83%D0%B3%D0%BE%D0%B5%20%D0%BB%D0%B8%D1%86%D0%BE.%20%D0%98%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5%20%D1%83%D1%81%D0%BB%D1%83%D0%B3%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D0%B8%20%D0%BF%D0%BE%D0%B4%D1%80%D0%B0%D0%B7%D1%83%D0%BC%D0%B5%D0%B2%D0%B0%D0%B5%D1%82%2C%20%D1%87%D1%82%D0%BE%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%20%D0%BE%D1%81%D0%BE%D0%B7%D0%BD%D0%B0%D0%B5%D1%82%20%D0%B8%20%D0%BF%D1%80%D0%B8%D0%BD%D0%B8%D0%BC%D0%B0%D0%B5%D1%82%20%D1%8D%D1%82%D0%B8%20%D1%80%D0%B8%D1%81%D0%BA%D0%B8%2C%20%D0%B0%20%D1%82%D0%B0%D0%BA%D0%B6%D0%B5%20%D1%81%D0%BE%D0%B3%D0%BB%D0%B0%D1%88%D0%B0%D0%B5%D1%82%D1%81%D1%8F%2C%20%D1%87%D1%82%D0%BE%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%BD%D0%B5%20%D0%BD%D0%B5%D1%81%D0%B5%D1%82%20%D0%BE%D1%82%D0%B2%D0%B5%D1%82%D1%81%D1%82%D0%B2%D0%B5%D0%BD%D0%BD%D0%BE%D1%81%D1%82%D0%B8%20%D0%B7%D0%B0%20%D0%B4%D0%B5%D0%B9%D1%81%D1%82%D0%B2%D0%B8%D1%8F%20%D0%B8%D0%BB%D0%B8%20%D0%B1%D0%B5%D0%B7%D0%B4%D0%B5%D0%B9%D1%81%D1%82%D0%B2%D0%B8%D0%B5%20%D1%81%D0%BE%20%D1%81%D1%82%D0%BE%D1%80%D0%BE%D0%BD%D1%8B%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%20%D0%BD%D0%B5%20%D0%BC%D0%BE%D0%B6%D0%B5%D1%82%20%D0%B4%D0%B5%D0%BB%D0%B0%D1%82%D1%8C%20%D0%B2%D1%8B%D0%B2%D0%BE%D0%B4%2C%20%D1%87%D1%82%D0%BE%20%D0%BF%D1%80%D0%B5%D0%B4%D0%BB%D0%BE%D0%B6%D0%B5%D0%BD%D0%B8%D0%B5%2C%20%D0%BF%D1%80%D0%BE%D0%B4%D0%B0%D0%B6%D0%B0%20%D0%B8%20%D0%BF%D1%80%D0%B8%D0%BE%D0%B1%D1%80%D0%B5%D1%82%D0%B5%D0%BD%D0%B8%D0%B5%20%D0%BA%D0%B0%D0%BA%D0%BE%D0%B3%D0%BE-%D0%BB%D0%B8%D0%B1%D0%BE%20%D1%82%D0%BE%D0%B2%D0%B0%D1%80%D0%B0%20%D0%B8%D0%BB%D0%B8%20%D1%83%D1%81%D0%BB%D1%83%D0%B3%D0%B8%20%D1%8F%D0%B2%D0%BB%D1%8F%D0%B5%D1%82%D1%81%D1%8F%20%D0%B4%D0%B5%D0%B9%D1%81%D1%82%D0%B2%D0%B8%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D1%8B%D0%BC%20%D0%B8%20%D0%BB%D0%B5%D0%B3%D0%B0%D0%BB%D1%8C%D0%BD%D1%8B%D0%BC%20%D0%B8%D1%81%D1%85%D0%BE%D0%B4%D1%8F%20%D0%B8%D0%B7%20%D1%84%D0%B0%D0%BA%D1%82%D0%B0%20%D1%80%D0%B0%D0%B7%D0%BC%D0%B5%D1%89%D0%B5%D0%BD%D0%B8%D1%8F%2C%20%D0%BF%D1%80%D0%BE%D0%B4%D0%B0%D0%B6%D0%B8%20%D0%B8%20%D0%BF%D1%80%D0%B8%D0%BE%D0%B1%D1%80%D0%B5%D1%82%D0%B5%D0%BD%D0%B8%D1%8F%20%D1%82%D0%BE%D0%B2%D0%B0%D1%80%D0%B0%20%D0%B8%D0%BB%D0%B8%20%D1%83%D1%81%D0%BB%D1%83%D0%B3%D0%B8%20%D0%BD%D0%B0%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B5.%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%BD%D0%B5%20%D0%BD%D0%B5%D1%81%D0%B5%D1%82%20%D0%BE%D1%82%D0%B2%D0%B5%D1%82%D1%81%D1%82%D0%B2%D0%B5%D0%BD%D0%BD%D0%BE%D1%81%D1%82%D1%8C%20%D0%B7%D0%B0%20%D0%B7%D0%B0%D0%B2%D0%B5%D1%80%D1%88%D0%B5%D0%BD%D0%B8%D0%B5%20%D1%81%D0%B4%D0%B5%D0%BB%D0%BA%D0%B8%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D0%B5%D0%BC%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B0.%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%20%D0%BF%D1%80%D0%B8%D0%BD%D0%B8%D0%BC%D0%B0%D0%B5%D1%82%20%D0%BD%D0%B0%20%D1%81%D0%B5%D0%B1%D1%8F%20%D0%BF%D0%BE%D0%BB%D0%BD%D1%83%D1%8E%20%D0%BE%D1%82%D0%B2%D0%B5%D1%82%D1%81%D1%82%D0%B2%D0%B5%D0%BD%D0%BD%D0%BE%D1%81%D1%82%D1%8C%20%D0%B7%D0%B0%20%D1%81%D0%B2%D0%BE%D0%B8%20%D0%B4%D0%B5%D0%B9%D1%81%D1%82%D0%B2%D0%B8%D1%8F.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%95%D1%81%D0%BB%D0%B8%20%D1%83%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F%20%D0%B2%D0%BE%D0%B7%D0%BD%D0%B8%D0%BA%D0%B0%D1%8E%D1%82%20%D0%BF%D1%80%D0%B5%D1%82%D0%B5%D0%BD%D0%B7%D0%B8%D0%B8%20%D0%BA%20%D0%B4%D1%80%D1%83%D0%B3%D0%BE%D0%BC%D1%83%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8E%20%D0%B2%20%D1%80%D0%B5%D0%B7%D1%83%D0%BB%D1%8C%D1%82%D0%B0%D1%82%D0%B5%20%D0%B8%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%BF%D0%BE%D1%81%D0%BB%D0%B5%D0%B4%D0%BD%D0%B8%D0%BC%20%D1%83%D1%81%D0%BB%D1%83%D0%B3%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B0%2C%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%20%D1%81%D0%BE%D0%B3%D0%BB%D0%B0%D1%88%D0%B0%D0%B5%D1%82%D1%81%D1%8F%20%D0%BF%D1%80%D0%B5%D0%B4%D1%8A%D1%8F%D0%B2%D0%BB%D1%8F%D1%82%D1%8C%20%D1%8D%D1%82%D0%B8%20%D1%82%D1%80%D0%B5%D0%B1%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D1%8F%20%D1%81%D0%B0%D0%BC%D0%BE%D1%81%D1%82%D0%BE%D1%8F%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D0%BE%20%D0%B8%20%D0%B1%D0%B5%D0%B7%20%D0%B2%D0%BC%D0%B5%D1%88%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%D1%81%D1%82%D0%B2%D0%B0%20%D1%81%D0%BE%20%D1%81%D1%82%D0%BE%D1%80%D0%BE%D0%BD%D1%8B%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D0%B8%2C%20%D0%B0%20%D1%82%D0%B0%D0%BA%D0%B6%D0%B5%20%D0%BE%D1%81%D0%B2%D0%BE%D0%B1%D0%BE%D0%B6%D0%B4%D0%B0%D0%B5%D1%82%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D1%8E%20(%D0%BD%D0%B0%D1%80%D1%8F%D0%B4%D1%83%20%D1%81%20%D0%B5%D0%B5%20%D0%B4%D0%BE%D1%87%D0%B5%D1%80%D0%BD%D0%B8%D0%BC%D0%B8%20%D0%BA%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D1%8F%D0%BC%D0%B8%2C%20%D0%B0%D1%84%D1%84%D0%B8%D0%BB%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%BD%D1%8B%D0%BC%D0%B8%20%D0%BB%D0%B8%D1%86%D0%B0%D0%BC%D0%B8%2C%20%D1%81%D0%BB%D1%83%D0%B6%D0%B0%D1%89%D0%B8%D0%BC%D0%B8%2C%20%D0%B4%D0%B8%D1%80%D0%B5%D0%BA%D1%82%D0%BE%D1%80%D0%B0%D0%BC%D0%B8%2C%20%D1%83%D0%BF%D0%BE%D0%BB%D0%BD%D0%BE%D0%BC%D0%BE%D1%87%D0%B5%D0%BD%D0%BD%D1%8B%D0%BC%D0%B8%20%D0%B8%20%D1%81%D0%BE%D1%82%D1%80%D1%83%D0%B4%D0%BD%D0%B8%D0%BA%D0%B0%D0%BC%D0%B8)%20%D0%BE%D1%82%20%D0%B2%D1%81%D0%B5%D1%85%20%D1%82%D1%80%D0%B5%D0%B1%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B9%2C%20%D0%BE%D0%B1%D1%8F%D0%B7%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%D1%81%D1%82%D0%B2%2C%20%D0%BA%D0%BE%D0%BC%D0%BF%D0%B5%D0%BD%D1%81%D0%B0%D1%86%D0%B8%D0%B9%20%D0%BF%D0%BE%20%D0%B2%D0%BE%D0%B7%D0%BC%D0%B5%D1%89%D0%B5%D0%BD%D0%B8%D1%8E%20%D1%83%D1%89%D0%B5%D1%80%D0%B1%D0%B0%2C%20%D1%83%D0%B1%D1%8B%D1%82%D0%BA%D0%BE%D0%B2%2C%20%D0%B7%D0%B0%D1%82%D1%80%D0%B0%D1%82%20%D0%B8%20%D0%B8%D0%B7%D0%B4%D0%B5%D1%80%D0%B6%D0%B5%D0%BA%2C%20%D0%B2%D0%BA%D0%BB%D1%8E%D1%87%D0%B0%D1%8F%20%D0%B0%D0%B4%D0%B2%D0%BE%D0%BA%D0%B0%D1%82%D1%81%D0%BA%D0%B8%D0%B5%20%D0%B3%D0%BE%D0%BD%D0%BE%D1%80%D0%B0%D1%80%D1%8B%2C%20%D0%B8%D0%B7%D0%B2%D0%B5%D1%81%D1%82%D0%BD%D1%8B%D1%85%20%D0%B8%D0%BB%D0%B8%20%D0%BD%D0%B5%D0%B8%D0%B7%D0%B2%D0%B5%D1%81%D1%82%D0%BD%D1%8B%D1%85%2C%20%D0%B2%D0%BE%D0%B7%D0%BD%D0%B8%D0%BA%D1%88%D0%B8%D1%85%20%D0%B2%20%D1%80%D0%B5%D0%B7%D1%83%D0%BB%D1%8C%D1%82%D0%B0%D1%82%D0%B5%20%D0%B8%D0%BB%D0%B8%20%D0%B2%20%D1%81%D0%B2%D1%8F%D0%B7%D0%B8%20%D1%81%20%D1%82%D0%B0%D0%BA%D0%B8%D0%BC%D0%B8%20%D1%82%D1%80%D0%B5%D0%B1%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D1%8F%D0%BC%D0%B8.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%91%D0%B5%D0%B7%D0%B4%D0%B5%D0%B9%D1%81%D1%82%D0%B2%D0%B8%D0%B5%20%D1%81%D0%BE%20%D1%81%D1%82%D0%BE%D1%80%D0%BE%D0%BD%D1%8B%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D0%B8%20%D0%B2%20%D1%81%D0%BB%D1%83%D1%87%D0%B0%D0%B5%20%D0%BD%D0%B0%D1%80%D1%83%D1%88%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D0%B5%D0%BC%20%D0%BB%D0%B8%D0%B1%D0%BE%20%D0%B8%D0%BD%D1%8B%D0%BC%D0%B8%20%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F%D0%BC%D0%B8%20%D0%BF%D0%BE%D0%BB%D0%BE%D0%B6%D0%B5%D0%BD%D0%B8%D0%B9%20%D0%A1%D0%BE%D0%B3%D0%BB%D0%B0%D1%88%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%BD%D0%B5%20%D0%BB%D0%B8%D1%88%D0%B0%D0%B5%D1%82%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D1%8E%20%D0%BF%D1%80%D0%B0%D0%B2%D0%B0%20%D0%BF%D1%80%D0%B5%D0%B4%D0%BF%D1%80%D0%B8%D0%BD%D1%8F%D1%82%D1%8C%20%D1%81%D0%BE%D0%BE%D1%82%D0%B2%D0%B5%D1%82%D1%81%D1%82%D0%B2%D1%83%D1%8E%D1%89%D0%B8%D0%B5%20%D0%B4%D0%B5%D0%B9%D1%81%D1%82%D0%B2%D0%B8%D1%8F%20%D0%B2%20%D0%B7%D0%B0%D1%89%D0%B8%D1%82%D1%83%20%D1%81%D0%B2%D0%BE%D0%B8%D1%85%20%D0%B8%D0%BD%D1%82%D0%B5%D1%80%D0%B5%D1%81%D0%BE%D0%B2%20%D0%BF%D0%BE%D0%B7%D0%B4%D0%BD%D0%B5%D0%B5%2C%20%D0%B0%20%D1%82%D0%B0%D0%BA%D0%B6%D0%B5%20%D0%BD%D0%B5%20%D0%BE%D0%B7%D0%BD%D0%B0%D1%87%D0%B0%D0%B5%D1%82%20%D0%BE%D1%82%D0%BA%D0%B0%D0%B7%D0%B0%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D0%B8%20%D0%BE%D1%82%20%D1%81%D0%B2%D0%BE%D0%B8%D1%85%20%D0%BF%D1%80%D0%B0%D0%B2%20%D0%B2%20%D1%81%D0%BB%D1%83%D1%87%D0%B0%D0%B5%20%D1%81%D0%BE%D0%B2%D0%B5%D1%80%D1%88%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%B2%20%D0%BF%D0%BE%D1%81%D0%BB%D0%B5%D0%B4%D1%83%D1%8E%D1%89%D0%B5%D0%BC%20%D0%BF%D0%BE%D0%B4%D0%BE%D0%B1%D0%BD%D1%8B%D1%85%20%D0%BB%D0%B8%D0%B1%D0%BE%20%D1%81%D1%85%D0%BE%D0%B4%D0%BD%D1%8B%D1%85%20%D0%BD%D0%B0%D1%80%D1%83%D1%88%D0%B5%D0%BD%D0%B8%D0%B9.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%20%D0%B2%D0%BF%D1%80%D0%B0%D0%B2%D0%B5%20%D1%81%D0%BE%D0%BE%D0%B1%D1%89%D0%B8%D1%82%D1%8C%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D0%B8%20%D0%BE%20%D1%84%D0%B0%D0%BA%D1%82%D0%B5%20%D0%BD%D0%B0%D1%80%D1%83%D1%88%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%B5%D0%B3%D0%BE%20%D0%BF%D1%80%D0%B0%D0%B2%20%D0%B4%D1%80%D1%83%D0%B3%D0%B8%D0%BC%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D0%B5%D0%BC%2C%20%D0%B2%D0%BE%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D0%B2%D1%88%D0%B8%D1%81%D1%8C%20%D1%81%D1%81%D1%8B%D0%BB%D0%BA%D0%BE%D0%B9%20%7Burl%7Dinfo%2F.%20%D0%92%20%D1%81%D0%BB%D1%83%D1%87%D0%B0%D0%B5%20%D0%BE%D0%B1%D0%BE%D1%81%D0%BD%D0%BE%D0%B2%D0%B0%D0%BD%D0%BD%D0%BE%D1%81%D1%82%D0%B8%20%D0%B6%D0%B0%D0%BB%D0%BE%D0%B1%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D1%8F%20%D1%83%D0%B4%D0%B0%D0%BB%D1%8F%D0%B5%D1%82%20%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5%2C%20%D0%BA%D0%BE%D1%82%D0%BE%D1%80%D0%BE%D0%B5%20%D0%BD%D0%B0%D1%80%D1%83%D1%88%D0%B0%D0%B5%D1%82%20%D0%BF%D1%80%D0%B0%D0%B2%D0%B0%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%BD%D0%B5%20%D0%BD%D0%B5%D1%81%D0%B5%D1%82%20%D0%BE%D1%82%D0%B2%D0%B5%D1%82%D1%81%D1%82%D0%B2%D0%B5%D0%BD%D0%BD%D0%BE%D1%81%D1%82%D0%B8%20%D0%B7%D0%B0%20%D0%BD%D0%B5%D0%B8%D1%81%D0%BF%D0%BE%D0%BB%D0%BD%D0%B5%D0%BD%D0%B8%D0%B5%20%D0%B8%D0%BB%D0%B8%20%D0%B7%D0%B0%D1%82%D1%80%D1%83%D0%B4%D0%BD%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%B2%20%D0%B8%D1%81%D0%BF%D0%BE%D0%BB%D0%BD%D0%B5%D0%BD%D0%B8%D0%B8%20%D0%BE%D0%B1%D1%8F%D0%B7%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%D1%81%D1%82%D0%B2%20%D0%BF%D0%BE%20%D0%BF%D1%80%D0%B5%D0%B4%D0%BE%D1%81%D1%82%D0%B0%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%B4%D0%BE%D1%81%D1%82%D1%83%D0%BF%D0%B0%20%D0%BA%20%D0%A1%D0%B0%D0%B9%D1%82e%20%D0%B8%D0%B7-%D0%B7%D0%B0%20%D0%BD%D0%B5%D0%BF%D1%80%D0%B5%D0%B4%D0%B2%D0%B8%D0%B4%D0%B5%D0%BD%D0%BD%D1%8B%D1%85%20%D0%BE%D0%B1%D1%81%D1%82%D0%BE%D1%8F%D1%82%D0%B5%D0%BB%D1%8C%D1%81%D1%82%D0%B2%20%D0%BD%D0%B5%D0%BF%D1%80%D0%B5%D0%BE%D0%B4%D0%BE%D0%BB%D0%B8%D0%BC%D0%BE%D0%B9%20%D1%81%D0%B8%D0%BB%D1%8B%2C%20%D0%BF%D0%BE%D1%81%D0%BB%D0%B5%D0%B4%D1%81%D1%82%D0%B2%D0%B8%D1%8F%20%D0%BA%D0%BE%D1%82%D0%BE%D1%80%D1%8B%D1%85%20%D0%BD%D0%B5%D0%B2%D0%BE%D0%B7%D0%BC%D0%BE%D0%B6%D0%BD%D0%BE%20%D0%B8%D0%B7%D0%B1%D0%B5%D0%B6%D0%B0%D1%82%D1%8C%20%D0%B8%D0%BB%D0%B8%20%D0%BF%D1%80%D0%B5%D0%BE%D0%B4%D0%BE%D0%BB%D0%B5%D1%82%D1%8C%20(%D1%82%D0%B0%D0%BA%D0%B8%D1%85%20%D0%BA%D0%B0%D0%BA%20%D1%80%D0%B5%D1%88%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%B2%D0%BB%D0%B0%D1%81%D1%82%D0%B5%D0%B9%2C%20%D1%82%D1%80%D1%83%D0%B4%D0%BE%D0%B2%D1%8B%D0%B5%20%D1%81%D0%BF%D0%BE%D1%80%D1%8B%2C%20%D0%BD%D0%B5%D1%81%D1%87%D0%B0%D1%81%D1%82%D0%BD%D1%8B%D0%B5%20%D1%81%D0%BB%D1%83%D1%87%D0%B0%D0%B8%2C%20%D0%BE%D0%B1%D1%80%D1%8B%D0%B2%D1%8B%20%D0%B2%20%D0%BE%D0%B1%D1%89%D0%B5%D0%B9%20%D1%81%D0%B8%D1%81%D1%82%D0%B5%D0%BC%D0%B5%20%D0%BA%D0%BE%D0%BC%D0%BC%D1%83%D0%BD%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D0%B9%20%D0%B8%20%D1%82.%D0%B4.).%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%BD%D0%B5%20%D0%BD%D0%B5%D1%81%D0%B5%D1%82%20%D0%BE%D1%82%D0%B2%D0%B5%D1%82%D1%81%D1%82%D0%B2%D0%B5%D0%BD%D0%BD%D0%BE%D1%81%D1%82%D0%B8%20%D0%B7%D0%B0%20%D0%BD%D0%B5%D0%BF%D0%BE%D0%BB%D0%B0%D0%B4%D0%BA%D0%B8%20%D0%B2%20%D1%80%D0%B0%D0%B1%D0%BE%D1%82%D0%B5%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B0%2C%20%D0%B2%D1%8B%D0%B7%D0%B2%D0%B0%D0%BD%D0%BD%D1%8B%D0%B5%20%D1%82%D0%B5%D1%85%D0%BD%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D0%BC%D0%B8%20%D0%BF%D0%B5%D1%80%D0%B5%D0%B1%D0%BE%D1%8F%D0%BC%D0%B8%20%D0%B2%20%D1%80%D0%B0%D0%B1%D0%BE%D1%82%D0%B5%20%D0%BE%D0%B1%D0%BE%D1%80%D1%83%D0%B4%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%B8%20%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%BC%D0%BD%D0%BE%D0%B3%D0%BE%20%D0%BE%D0%B1%D0%B5%D1%81%D0%BF%D0%B5%D1%87%D0%B5%D0%BD%D0%B8%D1%8F.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9D%D0%B8%20%D0%BF%D1%80%D0%B8%20%D0%BA%D0%B0%D0%BA%D0%B8%D1%85%20%D1%83%D1%81%D0%BB%D0%BE%D0%B2%D0%B8%D1%8F%D1%85%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D1%8F%2C%20%D0%B5%D0%B5%20%D1%80%D1%83%D0%BA%D0%BE%D0%B2%D0%BE%D0%B4%D1%81%D1%82%D0%B2%D0%BE%2C%20%D1%81%D0%BE%D1%82%D1%80%D1%83%D0%B4%D0%BD%D0%B8%D0%BA%D0%B8%20%D0%B8%20%D0%B0%D0%B3%D0%B5%D0%BD%D1%82%D1%8B%2C%20%D0%BD%D0%B5%20%D0%BD%D0%B5%D1%81%D1%83%D1%82%20%D0%BE%D1%82%D0%B2%D0%B5%D1%82%D1%81%D1%82%D0%B2%D0%B5%D0%BD%D0%BD%D0%BE%D1%81%D1%82%D0%B8%20%D0%B7%D0%B0%20%D0%BF%D1%80%D1%8F%D0%BC%D0%BE%D0%B9%2C%20%D0%BA%D0%BE%D1%81%D0%B2%D0%B5%D0%BD%D0%BD%D1%8B%D0%B9%2C%20%D1%81%D0%BB%D1%83%D1%87%D0%B0%D0%B9%D0%BD%D1%8B%D0%B9%2C%20%D1%81%D0%BF%D0%B5%D1%86%D0%B8%D0%B0%D0%BB%D1%8C%D0%BD%D1%8B%D0%B9%20%D1%83%D1%89%D0%B5%D1%80%D0%B1%20%D0%B8%20%D1%88%D1%82%D1%80%D0%B0%D1%84%D0%BD%D1%8B%D0%B5%20%D1%83%D0%B1%D1%8B%D1%82%D0%BA%D0%B8%20(%D0%B4%D0%B0%D0%B6%D0%B5%20%D0%B5%D1%81%D0%BB%D0%B8%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%B1%D1%8B%D0%BB%D0%B0%20%D0%BF%D1%80%D0%B5%D0%B4%D1%83%D0%BF%D1%80%D0%B5%D0%B6%D0%B4%D0%B5%D0%BD%D0%B0%20%D0%BE%20%D0%B2%D0%BE%D0%B7%D0%BC%D0%BE%D0%B6%D0%BD%D0%BE%D1%81%D1%82%D0%B8%20%D1%82%D0%B0%D0%BA%D0%BE%D0%B3%D0%BE%20%D1%83%D1%89%D0%B5%D1%80%D0%B1%D0%B0)%20%D0%B2%20%D1%80%D0%B5%D0%B7%D1%83%D0%BB%D1%8C%D1%82%D0%B0%D1%82%D0%B5%20%D0%B8%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B0%20%D0%B8%20%D0%B5%D0%B3%D0%BE%20%D1%81%D0%B5%D1%80%D0%B2%D0%B8%D1%81%D0%BE%D0%B2%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D0%B5%D0%BC%2C%20%D0%B2%D0%BA%D0%BB%D1%8E%D1%87%D0%B0%D1%8F%20%D0%B1%D0%B5%D0%B7%20%D0%BE%D0%B3%D1%80%D0%B0%D0%BD%D0%B8%D1%87%D0%B5%D0%BD%D0%B8%D1%8F%20%D1%81%D0%BB%D1%83%D1%87%D0%B0%D0%B8%2C%20%D0%B2%20%D0%BA%D0%BE%D1%82%D0%BE%D1%80%D1%8B%D1%85%20%D1%83%D1%89%D0%B5%D1%80%D0%B1%20%D1%81%D1%82%D0%B0%D0%BB%20%D1%80%D0%B5%D0%B7%D1%83%D0%BB%D1%8C%D1%82%D0%B0%D1%82%D0%BE%D0%BC%20%D0%B8%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%B8%D0%BB%D0%B8%20%D0%BD%D0%B5%D0%BF%D1%80%D0%B0%D0%B2%D0%B8%D0%BB%D1%8C%D0%BD%D0%BE%D0%B3%D0%BE%20%D0%B8%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B0%20%D0%B8%20%D0%B5%D0%B3%D0%BE%20%D1%81%D0%B5%D1%80%D0%B2%D0%B8%D1%81%D0%BE%D0%B2.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9D%D0%B8%D1%87%D1%82%D0%BE%20%D0%B2%20%D0%A1%D0%BE%D0%B3%D0%BB%D0%B0%D1%88%D0%B5%D0%BD%D0%B8%D0%B8%20%D0%BD%D0%B5%20%D0%BC%D0%BE%D0%B6%D0%B5%D1%82%20%D0%BF%D0%BE%D0%BD%D0%B8%D0%BC%D0%B0%D1%82%D1%8C%D1%81%D1%8F%20%D0%BA%D0%B0%D0%BA%20%D1%83%D1%81%D1%82%D0%B0%D0%BD%D0%BE%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5%20%D0%BC%D0%B5%D0%B6%D0%B4%D1%83%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D0%B5%D0%BC%20%D0%B8%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D0%B5%D0%B9%20%D0%B0%D0%B3%D0%B5%D0%BD%D1%82%D1%81%D0%BA%D0%B8%D1%85%20%D0%BE%D1%82%D0%BD%D0%BE%D1%88%D0%B5%D0%BD%D0%B8%D0%B9%2C%20%D0%BE%D1%82%D0%BD%D0%BE%D1%88%D0%B5%D0%BD%D0%B8%D0%B9%20%D1%82%D0%BE%D0%B2%D0%B0%D1%80%D0%B8%D1%89%D0%B5%D1%81%D1%82%D0%B2%D0%B0%2C%20%D0%BE%D1%82%D0%BD%D0%BE%D1%88%D0%B5%D0%BD%D0%B8%D0%B9%20%D0%BF%D0%BE%20%D1%81%D0%BE%D0%B2%D0%BC%D0%B5%D1%81%D1%82%D0%BD%D0%BE%D0%B9%20%D0%B4%D0%B5%D1%8F%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D0%BE%D1%81%D1%82%D0%B8%2C%20%D0%BE%D1%82%D0%BD%D0%BE%D1%88%D0%B5%D0%BD%D0%B8%D0%B9%20%D0%BB%D0%B8%D1%87%D0%BD%D0%BE%D0%B3%D0%BE%20%D0%BD%D0%B0%D0%B9%D0%BC%D0%B0%2C%20%D0%BB%D0%B8%D0%B1%D0%BE%20%D0%BA%D0%B0%D0%BA%D0%B8%D1%85-%D1%82%D0%BE%20%D0%B8%D0%BD%D1%8B%D1%85%20%D0%BE%D1%82%D0%BD%D0%BE%D1%88%D0%B5%D0%BD%D0%B8%D0%B9%2C%20%D0%BF%D1%80%D1%8F%D0%BC%D0%BE%20%D0%BD%D0%B5%20%D0%BF%D1%80%D0%B5%D0%B4%D1%83%D1%81%D0%BC%D0%BE%D1%82%D1%80%D0%B5%D0%BD%D0%BD%D1%8B%D1%85%20%D0%A1%D0%BE%D0%B3%D0%BB%D0%B0%D1%88%D0%B5%D0%BD%D0%B8%D0%B5%D0%BC.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%BD%D0%B5%D1%81%D0%B5%D1%82%20%D0%BE%D1%82%D0%B2%D0%B5%D1%82%D1%81%D1%82%D0%B2%D0%B5%D0%BD%D0%BD%D0%BE%D1%81%D1%82%D1%8C%20%D0%B7%D0%B0%20%D1%80%D0%B5%D0%BA%D0%BB%D0%B0%D0%BC%D1%83%2C%20%D1%80%D0%B0%D0%B7%D0%BC%D0%B5%D1%89%D0%B5%D0%BD%D0%BD%D1%83%D1%8E%20%D0%BD%D0%B0%20%D1%81%D0%B5%D1%80%D0%B2%D0%B8%D1%81%D0%B0%D1%85%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B0%2C%20%D0%B2%20%D0%BF%D1%80%D0%B5%D0%B4%D0%B5%D0%BB%D0%B0%D1%85%2C%20%D1%83%D1%81%D1%82%D0%B0%D0%BD%D0%BE%D0%B2%D0%BB%D0%B5%D0%BD%D0%BD%D1%8B%D1%85%20%D0%BF%D1%80%D0%B0%D0%B2%D0%BE%D0%BF%D1%80%D0%B8%D0%BC%D0%B5%D0%BD%D0%B8%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D1%8B%D0%BC%20%D0%B7%D0%B0%D0%BA%D0%BE%D0%BD%D0%BE%D0%B4%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%D1%81%D1%82%D0%B2%D0%BE%D0%BC.%3C%2Fp%3E%0A%0A%3Cp%3E9.%20%D0%A1%D0%A0%D0%9E%D0%9A%20%D0%94%D0%95%D0%99%D0%A1%D0%A2%D0%92%D0%98%D0%AF%20%D0%A1%D0%9E%D0%93%D0%9B%D0%90%D0%A8%D0%95%D0%9D%D0%98%D0%AF%20%D0%98%20%D0%9F%D0%A0%D0%95%D0%9A%D0%A0%D0%90%D0%A9%D0%95%D0%9D%D0%98%D0%95%20%D0%9E%D0%9A%D0%90%D0%97%D0%90%D0%9D%D0%98%D0%AF%20%D0%A3%D0%A1%D0%9B%D0%A3%D0%93%20%D0%A1%D0%90%D0%99%D0%A2%D0%90%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9D%D0%B0%D1%81%D1%82%D0%BE%D1%8F%D1%89%D0%B5%D0%B5%20%D0%A1%D0%BE%D0%B3%D0%BB%D0%B0%D1%88%D0%B5%D0%BD%D0%B8%D0%B5%20%D0%B2%D1%81%D1%82%D1%83%D0%BF%D0%B0%D0%B5%D1%82%20%D0%B2%20%D1%81%D0%B8%D0%BB%D1%83%20%D1%81%20%D0%BC%D0%BE%D0%BC%D0%B5%D0%BD%D1%82%D0%B0%20%D0%BD%D0%B0%D1%87%D0%B0%D0%BB%D0%B0%20%D0%B8%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D0%B5%D0%BC%20%D0%BA%D0%B0%D0%BA%D0%BE%D0%B3%D0%BE-%D0%BB%D0%B8%D0%B1%D0%BE%20%D1%81%D0%B5%D1%80%D0%B2%D0%B8%D1%81%D0%B0%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B0%20%D0%BB%D0%B8%D0%B1%D0%BE%20%D1%81%20%D0%BC%D0%BE%D0%BC%D0%B5%D0%BD%D1%82%D0%B0%20%D1%80%D0%B5%D0%B3%D0%B8%D1%81%D1%82%D1%80%D0%B0%D1%86%D0%B8%D0%B8%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F%20%D0%BD%D0%B0%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B5%20%D0%B8%20%D0%B4%D0%B5%D0%B9%D1%81%D1%82%D0%B2%D1%83%D0%B5%D1%82%20%D0%B1%D0%B5%D1%81%D1%81%D1%80%D0%BE%D1%87%D0%BD%D0%BE.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%20%D0%B8%D0%BC%D0%B5%D0%B5%D1%82%20%D0%BF%D1%80%D0%B0%D0%B2%D0%BE%20%D0%BF%D1%80%D0%B5%D0%BA%D1%80%D0%B0%D1%82%D0%B8%D1%82%D1%8C%20%D1%81%D0%B2%D0%BE%D1%8E%20%D1%80%D0%B5%D0%B3%D0%B8%D1%81%D1%82%D1%80%D0%B0%D1%86%D0%B8%D1%8E%20%D0%BD%D0%B0%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B5%20%D0%B2%20%D0%BE%D0%B4%D0%BD%D0%BE%D1%81%D1%82%D0%BE%D1%80%D0%BE%D0%BD%D0%BD%D0%B5%D0%BC%20%D0%BF%D0%BE%D1%80%D1%8F%D0%B4%D0%BA%D0%B5%2C%20%D0%B1%D0%B5%D0%B7%20%D0%BF%D1%80%D0%B5%D0%B4%D0%B2%D0%B0%D1%80%D0%B8%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D0%BE%D0%B3%D0%BE%20%D1%83%D0%B2%D0%B5%D0%B4%D0%BE%D0%BC%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%BE%D0%B1%20%D1%8D%D1%82%D0%BE%D0%BC%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D0%B8%20%D0%B8%20%D0%BE%D0%B1%D1%8A%D1%8F%D1%81%D0%BD%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%BF%D1%80%D0%B8%D1%87%D0%B8%D0%BD.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%92%20%D1%81%D0%BB%D1%83%D1%87%D0%B0%D0%B5%20%D0%B5%D1%81%D0%BB%D0%B8%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D0%B5%D0%B9%20%D0%B1%D1%8B%D0%BB%D0%B8%20%D0%B2%D0%BD%D0%B5%D1%81%D0%B5%D0%BD%D1%8B%20%D0%BA%D0%B0%D0%BA%D0%B8%D0%B5-%D0%BB%D0%B8%D0%B1%D0%BE%20%D0%B8%D0%B7%D0%BC%D0%B5%D0%BD%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%B2%20%D0%A1%D0%BE%D0%B3%D0%BB%D0%B0%D1%88%D0%B5%D0%BD%D0%B8%D0%B5%20%D0%B2%20%D0%BF%D0%BE%D1%80%D1%8F%D0%B4%D0%BA%D0%B5%2C%20%D0%BF%D1%80%D0%B5%D0%B4%D1%83%D1%81%D0%BC%D0%BE%D1%82%D1%80%D0%B5%D0%BD%D0%BD%D0%BE%D0%BC%20%D0%BF%D1%83%D0%BD%D0%BA%D1%82%D0%BE%D0%BC%209.1.%20%D0%A1%D0%BE%D0%B3%D0%BB%D0%B0%D1%88%D0%B5%D0%BD%D0%B8%D1%8F%2C%20%D1%81%20%D0%BA%D0%BE%D1%82%D0%BE%D1%80%D1%8B%D0%BC%D0%B8%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%20%D0%BD%D0%B5%20%D1%81%D0%BE%D0%B3%D0%BB%D0%B0%D1%81%D0%B5%D0%BD%2C%20%D0%BE%D0%BD%20%D0%BE%D0%B1%D1%8F%D0%B7%D0%B0%D0%BD%20%D0%BF%D1%80%D0%B5%D0%BA%D1%80%D0%B0%D1%82%D0%B8%D1%82%D1%8C%20%D0%B8%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5%20%D1%81%D0%B5%D1%80%D0%B2%D0%B8%D1%81%D0%BE%D0%B2%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B0.%20%D0%A4%D0%B0%D0%BA%D1%82%20%D0%BF%D1%80%D0%BE%D0%B4%D0%BE%D0%BB%D0%B6%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%B8%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D1%8F%20%D1%81%D0%B0%D0%B9%D1%82%D0%B0%20%D1%8F%D0%B2%D0%BB%D1%8F%D0%B5%D1%82%D1%81%D1%8F%20%D0%BF%D0%BE%D0%B4%D1%82%D0%B2%D0%B5%D1%80%D0%B6%D0%B4%D0%B5%D0%BD%D0%B8%D0%B5%D0%BC%20%D1%81%D0%BE%D0%B3%D0%BB%D0%B0%D1%81%D0%B8%D1%8F%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F%20%D1%81%20%D1%81%D0%BE%D0%BE%D1%82%D0%B2%D0%B5%D1%82%D1%81%D1%82%D0%B2%D1%83%D1%8E%D1%89%D0%B5%D0%B9%20%D1%80%D0%B5%D0%B4%D0%B0%D0%BA%D1%86%D0%B8%D0%B5%D0%B9%20%D0%A1%D0%BE%D0%B3%D0%BB%D0%B0%D1%88%D0%B5%D0%BD%D0%B8%D1%8F.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%A0%D0%B0%D1%81%D1%82%D0%BE%D1%80%D0%B6%D0%B5%D0%BD%D0%B8%D0%B5%20%D0%A1%D0%BE%D0%B3%D0%BB%D0%B0%D1%88%D0%B5%D0%BD%D0%B8%D1%8F%20%D1%81%D0%BE%20%D1%81%D1%82%D0%BE%D1%80%D0%BE%D0%BD%D1%8B%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D0%B8%20%D0%BC%D0%BE%D0%B6%D0%B5%D1%82%20%D0%BF%D1%80%D0%BE%D0%B8%D0%B7%D0%BE%D0%B9%D1%82%D0%B8%20%D0%B2%20%D1%81%D0%BB%D1%83%D1%87%D0%B0%D1%8F%D1%85%3A%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9D%D0%B0%D1%80%D1%83%D1%88%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%BF%D0%BE%D0%BB%D0%BE%D0%B6%D0%B5%D0%BD%D0%B8%D0%B9%20%D0%B4%D0%B0%D0%BD%D0%BD%D0%BE%D0%B3%D0%BE%20%D0%A1%D0%BE%D0%B3%D0%BB%D0%B0%D1%88%D0%B5%D0%BD%D0%B8%D1%8F%2C%20%D0%BD%D0%B0%D0%BD%D0%B5%D1%81%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%BB%D1%8E%D0%B1%D0%BE%D0%B3%D0%BE%20%D0%B2%D1%80%D0%B5%D0%B4%D0%B0%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D0%B8%2C%20%D0%B2%20%D1%82%D0%BE%D0%BC%20%D1%87%D0%B8%D1%81%D0%BB%D0%B5%20%D0%B5%D1%91%20%D1%80%D0%B5%D0%BF%D1%83%D1%82%D0%B0%D1%86%D0%B8%D0%B8%2C%20%D0%B8%D0%BB%D0%B8%20%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F%D0%BC%20%7Burl%7D%3B%3C%2Fp%3E%0A%0A%3Cp%3EC%D0%BE%D0%B2%D0%B5%D1%80%D1%88%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%B4%D1%80%D1%83%D0%B3%D0%B8%D1%85%20%D0%B4%D0%B5%D0%B9%D1%81%D1%82%D0%B2%D0%B8%D0%B9%2C%20%D0%BA%D0%BE%D1%82%D0%BE%D1%80%D1%8B%D0%B5%20%D0%BF%D1%80%D0%BE%D1%82%D0%B8%D0%B2%D0%BE%D1%80%D0%B5%D1%87%D0%B0%D1%82%20%D0%BF%D0%BE%D0%BB%D0%B8%D1%82%D0%B8%D0%BA%D0%B5%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D0%B8%3B%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9F%D1%80%D0%B0%D0%B2%D0%BE%D0%BE%D1%82%D0%BD%D0%BE%D1%88%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%BC%D0%BE%D0%B3%D1%83%D1%82%20%D0%B1%D1%8B%D1%82%D1%8C%20%D0%B2%D0%BE%D0%B7%D0%BE%D0%B1%D0%BD%D0%BE%D0%B2%D0%BB%D0%B5%D0%BD%D1%8B%20%D1%82%D0%BE%D0%BB%D1%8C%D0%BA%D0%BE%20%D0%BF%D0%BE%D1%81%D0%BB%D0%B5%20%D0%BF%D1%80%D0%B8%D0%BD%D1%8F%D1%82%D0%B8%D1%8F%20%D0%B0%D0%B4%D0%BC%D0%B8%D0%BD%D0%B8%D1%81%D1%82%D1%80%D0%B0%D1%86%D0%B8%D0%B5%D0%B9%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D0%B8%20%D1%81%D0%BE%D0%BE%D1%82%D0%B2%D0%B5%D1%82%D1%81%D1%82%D0%B2%D1%83%D1%8E%D1%89%D0%B5%D0%B3%D0%BE%20%D1%80%D0%B5%D1%88%D0%B5%D0%BD%D0%B8%D1%8F.%3C%2Fp%3E%0A%0A%3Cp%3E10.%20%D0%92%D0%9D%D0%95%D0%A1%D0%95%D0%9D%D0%98%D0%95%20%D0%98%D0%97%D0%9C%D0%95%D0%9D%D0%95%D0%9D%D0%98%D0%99%20%D0%92%20%D0%A1%D0%9E%D0%93%D0%9B%D0%90%D0%A8%D0%95%D0%9D%D0%98%D0%95%3C%2Fp%3E%0A%0A%3Cp%3E%D0%A1%D0%BE%D0%B3%D0%BB%D0%B0%D1%88%D0%B5%D0%BD%D0%B8%D0%B5%20%D0%BC%D0%BE%D0%B6%D0%B5%D1%82%20%D0%B1%D1%8B%D1%82%D1%8C%20%D0%B8%D0%B7%D0%BC%D0%B5%D0%BD%D0%B5%D0%BD%D0%BE%20%D0%9A%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D0%B5%D0%B9%20%D0%B1%D0%B5%D0%B7%20%D0%BA%D0%B0%D0%BA%D0%BE%D0%B3%D0%BE-%D0%BB%D0%B8%D0%B1%D0%BE%20%D1%81%D0%BF%D0%B5%D1%86%D0%B8%D0%B0%D0%BB%D1%8C%D0%BD%D0%BE%D0%B3%D0%BE%20%D1%83%D0%B2%D0%B5%D0%B4%D0%BE%D0%BC%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F%2C%20%D0%BD%D0%BE%D0%B2%D0%B0%D1%8F%20%D1%80%D0%B5%D0%B4%D0%B0%D0%BA%D1%86%D0%B8%D1%8F%20%D0%A1%D0%BE%D0%B3%D0%BB%D0%B0%D1%88%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%B2%D1%81%D1%82%D1%83%D0%BF%D0%B0%D0%B5%D1%82%20%D0%B2%20%D1%81%D0%B8%D0%BB%D1%83%20%D1%81%20%D0%BC%D0%BE%D0%BC%D0%B5%D0%BD%D1%82%D0%B0%20%D0%B5%D0%B5%20%D1%80%D0%B0%D0%B7%D0%BC%D0%B5%D1%89%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%BD%D0%B0%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B5%2C%20%D0%B5%D1%81%D0%BB%D0%B8%20%D0%B8%D0%BD%D0%BE%D0%B5%20%D0%BD%D0%B5%20%D0%BF%D1%80%D0%B5%D0%B4%D1%83%D1%81%D0%BC%D0%BE%D1%82%D1%80%D0%B5%D0%BD%D0%BE%20%D0%BD%D0%BE%D0%B2%D0%BE%D0%B9%20%D1%80%D0%B5%D0%B4%D0%B0%D0%BA%D1%86%D0%B8%D0%B5%D0%B9%20%D0%A1%D0%BE%D0%B3%D0%BB%D0%B0%D1%88%D0%B5%D0%BD%D0%B8%D1%8F.%20%D0%94%D0%B5%D0%B9%D1%81%D1%82%D0%B2%D1%83%D1%8E%D1%89%D0%B0%D1%8F%20%D1%80%D0%B5%D0%B4%D0%B0%D0%BA%D1%86%D0%B8%D1%8F%20%D0%A1%D0%BE%D0%B3%D0%BB%D0%B0%D1%88%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%B2%D1%81%D0%B5%D0%B3%D0%B4%D0%B0%20%D0%BD%D0%B0%D1%85%D0%BE%D0%B4%D0%B8%D1%82%D1%81%D1%8F%20%D0%BD%D0%B0%20%D1%81%D1%82%D1%80%D0%B0%D0%BD%D0%B8%D1%86%D0%B5%20%D0%BF%D0%BE%20%D0%B0%D0%B4%D1%80%D0%B5%D1%81%D1%83%20%7Burl%7Dterms%2F.%3C%2Fp%3E%0A%0A%3Cp%3E11.%20%D0%9F%D0%A0%D0%9E%D0%A7%D0%98%D0%95%20%D0%A3%D0%A1%D0%9B%D0%9E%D0%92%D0%98%D0%AF%3C%2Fp%3E%0A%0A%3Cp%3E%D0%A1%D0%B8%D1%81%D1%82%D0%B5%D0%BC%D0%BD%D1%8B%D0%B5%20%D1%81%D0%BE%D0%BE%D0%B1%D1%89%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B0%2C%20%D0%BE%D1%82%D0%BD%D0%BE%D1%81%D1%8F%D1%89%D0%B8%D0%B5%D1%81%D1%8F%20%D0%BA%20%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F%D0%BC%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F%2C%20%D0%B4%D0%BE%D1%81%D1%82%D0%B0%D0%B2%D0%BB%D1%8F%D1%8E%D1%82%D1%81%D1%8F%20%D0%BF%D0%BE%20%D1%8D%D0%BB%D0%B5%D0%BA%D1%82%D1%80%D0%BE%D0%BD%D0%BD%D0%BE%D0%BC%D1%83%20%D0%B0%D0%B4%D1%80%D0%B5%D1%81%D1%83%2C%20%D0%BF%D1%80%D0%B5%D0%B4%D0%BE%D1%81%D1%82%D0%B0%D0%B2%D0%BB%D0%B5%D0%BD%D0%BD%D0%BE%D0%BC%D1%83%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D0%B5%D0%BC%20%D0%BF%D1%80%D0%B8%20%D1%80%D0%B0%D0%B7%D0%BC%D0%B5%D1%89%D0%B5%D0%BD%D0%B8%D0%B8%20%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%BD%D0%B0%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B5.%20%D0%92%20%D1%81%D0%BB%D1%83%D1%87%D0%B0%D0%B5%20%D0%BD%D0%B5%D0%B6%D0%B5%D0%BB%D0%B0%D0%BD%D0%B8%D1%8F%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F%20%D0%BF%D0%BE%D0%BB%D1%83%D1%87%D0%B0%D1%82%D1%8C%20%D1%82%D0%B0%D0%BA%D0%B8%D0%B5%20%D1%81%D0%BE%D0%BE%D0%B1%D1%89%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%20%D0%B2%D0%BF%D1%80%D0%B0%D0%B2%D0%B5%20%D1%83%D0%B4%D0%B0%D0%BB%D0%B8%D1%82%D1%8C%20%D1%81%D0%BE%D0%BE%D1%82%D0%B2%D0%B5%D1%82%D1%81%D1%82%D0%B2%D1%83%D1%8E%D1%89%D0%B8%D0%B5%20%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F%20%D1%81%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B0.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%98%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D0%BE%D0%BD%D0%BD%D1%8B%D0%B5%20%D1%81%D0%BE%D0%BE%D0%B1%D1%89%D0%B5%D0%BD%D0%B8%D1%8F%2C%20%D0%BF%D1%80%D0%B5%D0%B4%D0%BD%D0%B0%D0%B7%D0%BD%D0%B0%D1%87%D0%B5%D0%BD%D0%BD%D1%8B%D0%B5%20%D0%B4%D0%BB%D1%8F%20%D1%88%D0%B8%D1%80%D0%BE%D0%BA%D0%BE%D0%B3%D0%BE%20%D0%BA%D1%80%D1%83%D0%B3%D0%B0%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D0%B5%D0%B9%2C%20%D0%BF%D1%83%D0%B1%D0%BB%D0%B8%D0%BA%D1%83%D1%8E%D1%82%D1%81%D1%8F%20%D0%BD%D0%B0%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B5%20%D0%B8%2F%D0%B8%D0%BB%D0%B8%20%D1%80%D0%B0%D1%81%D1%81%D1%8B%D0%BB%D0%B0%D1%8E%D1%82%D1%81%D1%8F%20%D0%BF%D0%BE%20%D1%8D%D0%BB%D0%B5%D0%BA%D1%82%D1%80%D0%BE%D0%BD%D0%BD%D1%8B%D0%BC%20%D0%B0%D0%B4%D1%80%D0%B5%D1%81%D0%B0%D0%BC%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D0%B5%D0%B9%2C%20%D0%BF%D0%BE%D0%B4%D1%82%D0%B2%D0%B5%D1%80%D0%B4%D0%B8%D0%B2%D1%88%D0%B8%D1%85%20%D1%81%D0%B2%D0%BE%D0%B5%20%D1%81%D0%BE%D0%B3%D0%BB%D0%B0%D1%81%D0%B8%D0%B5%20%D0%BD%D0%B0%20%D0%BF%D0%BE%D0%BB%D1%83%D1%87%D0%B5%D0%BD%D0%B8%D0%B5%20%D1%82%D0%B0%D0%BA%D0%B8%D1%85%20%D1%81%D0%BE%D0%BE%D0%B1%D1%89%D0%B5%D0%BD%D0%B8%D0%B9%20%D0%B2%20%D0%BF%D1%80%D0%BE%D1%86%D0%B5%D1%81%D1%81%D0%B5%20%D0%BF%D1%83%D0%B1%D0%BB%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D0%B8%20%D0%BE%D0%B1%D1%8A%D1%8F%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B9%2F%D1%80%D0%B5%D0%B3%D0%B8%D1%81%D1%82%D1%80%D0%B0%D1%86%D0%B8%D0%B8%20%D0%BD%D0%B0%20%D1%81%D0%BE%D0%BE%D1%82%D0%B2%D0%B5%D1%82%D1%81%D1%82%D0%B2%D1%83%D1%8E%D1%89%D0%B5%D0%BC%20%D0%A1%D0%B0%D0%B9%D1%82%D0%B5.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D0%B8%20%D0%B2%D0%BF%D1%80%D0%B0%D0%B2%D0%B5%20%D0%BE%D1%82%D0%BA%D0%B0%D0%B7%D0%B0%D1%82%D1%8C%D1%81%D1%8F%20%D0%BE%D1%82%20%D0%BF%D0%BE%D0%BB%D1%83%D1%87%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D0%BE%D0%BD%D0%BD%D1%8B%D1%85%20%D1%81%D0%BE%D0%BE%D0%B1%D1%89%D0%B5%D0%BD%D0%B8%D0%B9%20%D0%BD%D0%B0%20%D1%81%D0%B2%D0%BE%D0%B9%20%D1%8D%D0%BB%D0%B5%D0%BA%D1%82%D1%80%D0%BE%D0%BD%D0%BD%D1%8B%D0%B9%20%D0%B0%D0%B4%D1%80%D0%B5%D1%81%20%D0%B2%20%D0%BB%D1%8E%D0%B1%D0%BE%D0%B9%20%D0%BC%D0%BE%D0%BC%D0%B5%D0%BD%D1%82%20%D1%87%D0%B5%D1%80%D0%B5%D0%B7%20%D1%84%D1%83%D0%BD%D0%BA%D1%86%D0%B8%D1%8E%20%26laquo%3B%D0%9E%D1%82%D0%BF%D0%B8%D1%81%D0%B0%D1%82%D1%8C%D1%81%D1%8F%20%D0%BE%D1%82%20%D1%80%D0%B0%D1%81%D1%81%D1%8B%D0%BB%D0%BA%D0%B8%26raquo%3B%2C%20%D1%81%D0%BE%D0%B4%D0%B5%D1%80%D0%B6%D0%B0%D1%89%D1%83%D1%8E%D1%81%D1%8F%20%D0%B2%20%D1%83%D1%87%D0%B5%D1%82%D0%BD%D0%BE%D0%B9%20%D0%B7%D0%B0%D0%BF%D0%B8%D1%81%D0%B8%20%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9F%D1%80%D0%B8%20%D0%B2%D0%BE%D0%B7%D0%BD%D0%B8%D0%BA%D0%BD%D0%BE%D0%B2%D0%B5%D0%BD%D0%B8%D0%B8%20%D0%BC%D0%B5%D0%B6%D0%B4%D1%83%20%D0%A1%D1%82%D0%BE%D1%80%D0%BE%D0%BD%D0%B0%D0%BC%D0%B8%20%D1%81%D0%BF%D0%BE%D1%80%D0%BE%D0%B2%20%D0%B8%20%D1%80%D0%B0%D0%B7%D0%BD%D0%BE%D0%B3%D0%BB%D0%B0%D1%81%D0%B8%D0%B9%20%D0%BF%D0%BE%20%D0%BD%D0%B0%D1%81%D1%82%D0%BE%D1%8F%D1%89%D0%B5%D0%BC%D1%83%20%D0%A1%D0%BE%D0%B3%D0%BB%D0%B0%D1%88%D0%B5%D0%BD%D0%B8%D1%8E%20%D0%B8%D0%BB%D0%B8%20%D0%B2%20%D1%81%D0%B2%D1%8F%D0%B7%D0%B8%20%D1%81%20%D0%BD%D0%B8%D0%BC%20%D0%A1%D1%82%D0%BE%D1%80%D0%BE%D0%BD%D1%8B%20%D0%BE%D0%B1%D1%8F%D0%B7%D1%83%D1%8E%D1%82%D1%81%D1%8F%20%D1%80%D0%B0%D0%B7%D1%80%D0%B5%D1%88%D0%B0%D1%82%D1%8C%20%D0%B8%D1%85%20%D0%BF%D1%83%D1%82%D0%B5%D0%BC%20%D0%BF%D0%B5%D1%80%D0%B5%D0%B3%D0%BE%D0%B2%D0%BE%D1%80%D0%BE%D0%B2.%20%D0%95%D1%81%D0%BB%D0%B8%20%D0%BA%D0%B0%D0%BA%D0%B8%D0%B5-%D0%BB%D0%B8%D0%B1%D0%BE%20%D1%81%D0%BF%D0%BE%D1%80%D1%8B%2C%20%D1%80%D0%B0%D0%B7%D0%BD%D0%BE%D0%B3%D0%BB%D0%B0%D1%81%D0%B8%D1%8F%20%D0%B8%D0%BB%D0%B8%20%D1%82%D1%80%D0%B5%D0%B1%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D1%8F%2C%20%D0%B2%D0%BE%D0%B7%D0%BD%D0%B8%D0%BA%D0%B0%D1%8E%D1%89%D0%B8%D0%B5%20%D0%B8%D0%B7%20%D0%BD%D0%B0%D1%81%D1%82%D0%BE%D1%8F%D1%89%D0%B5%D0%B3%D0%BE%20%D0%A1%D0%BE%D0%B3%D0%BB%D0%B0%D1%88%D0%B5%D0%BD%D0%B8%D1%8F%2C%20%D0%B8%D0%BB%D0%B8%20%D0%B2%20%D1%81%D0%B2%D1%8F%D0%B7%D0%B8%20%D1%81%20%D0%BD%D0%B8%D0%BC%2C%20%D0%B2%20%D1%82%D0%BE%D0%BC%20%D1%87%D0%B8%D1%81%D0%BB%D0%B5%2C%20%D0%BA%D0%B0%D1%81%D0%B0%D1%8E%D1%89%D0%B8%D0%B5%D1%81%D1%8F%20%D0%B5%D0%B3%D0%BE%20%D0%B8%D1%81%D0%BF%D0%BE%D0%BB%D0%BD%D0%B5%D0%BD%D0%B8%D1%8F%2C%20%D0%BD%D0%B0%D1%80%D1%83%D1%88%D0%B5%D0%BD%D0%B8%D1%8F%2C%20%D0%BF%D1%80%D0%B5%D0%BA%D1%80%D0%B0%D1%89%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%B8%D0%BB%D0%B8%20%D0%BD%D0%B5%D0%B4%D0%B5%D0%B9%D1%81%D1%82%D0%B2%D0%B8%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D0%BE%D1%81%D1%82%D0%B8%2C%20%D0%BD%D0%B5%20%D0%BC%D0%BE%D0%B3%D1%83%D1%82%20%D0%B1%D1%8B%D1%82%D1%8C%20%D1%80%D0%B0%D0%B7%D1%80%D0%B5%D1%88%D0%B5%D0%BD%D1%8B%20%D0%BF%D1%83%D1%82%D0%B5%D0%BC%20%D0%BF%D0%B5%D1%80%D0%B5%D0%B3%D0%BE%D0%B2%D0%BE%D1%80%D0%BE%D0%B2%2C%20%D1%82%D0%BE%20%D1%8D%D1%82%D0%B8%20%D1%81%D0%BF%D0%BE%D1%80%D1%8B%20%D1%80%D0%B0%D1%81%D1%81%D0%BC%D0%B0%D1%82%D1%80%D0%B8%D0%B2%D0%B0%D0%B5%D1%82%D1%81%D1%8F%20%D0%B2%20%D1%81%D0%BE%D0%BE%D1%82%D0%B2%D0%B5%D1%82%D1%81%D1%82%D0%B2%D0%B8%D0%B8%20%D1%81%20%D0%B4%D0%B5%D0%B9%D1%81%D1%82%D0%B2%D1%83%D1%8E%D1%89%D0%B8%D0%BC%20%D0%B7%D0%B0%D0%BA%D0%BE%D0%BD%D0%BE%D0%B4%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%D1%81%D1%82%D0%B2%D0%BE%D0%BC%20%D0%B2%20%D1%81%D1%83%D0%B4%D0%B5%D0%B1%D0%BD%D0%BE%D0%BC%20%D0%BF%D0%BE%D1%80%D1%8F%D0%B4%D0%BA%D0%B5.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%9D%D0%B0%D1%81%D1%82%D0%BE%D1%8F%D1%89%D0%B5%D0%B5%20%D0%A1%D0%BE%D0%B3%D0%BB%D0%B0%D1%88%D0%B5%D0%BD%D0%B8%D0%B5%20%D1%80%D0%B5%D0%B3%D1%83%D0%BB%D0%B8%D1%80%D1%83%D0%B5%D1%82%D1%81%D1%8F%20%D0%B8%20%D1%82%D0%BE%D0%BB%D0%BA%D1%83%D0%B5%D1%82%D1%81%D1%8F%20%D0%B2%20%D1%81%D0%BE%D0%BE%D1%82%D0%B2%D0%B5%D1%82%D1%81%D1%82%D0%B2%D0%B8%D0%B8%20%D1%81%20%D0%B7%D0%B0%D0%BA%D0%BE%D0%BD%D0%BE%D0%B4%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%D1%81%D1%82%D0%B2%D0%BE%D0%BC%20%D0%A0%D0%B5%D1%81%D0%BF%D1%83%D0%B1%D0%BB%D0%B8%D0%BA%D0%B8%20%D0%A3%D0%B7%D0%B1%D0%B5%D0%BA%D0%B8%D1%81%D1%82%D0%B0%D0%BD.%20%D0%92%D0%BE%D0%BF%D1%80%D0%BE%D1%81%D1%8B%2C%20%D0%BD%D0%B5%20%D1%83%D1%80%D0%B5%D0%B3%D1%83%D0%BB%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%BD%D1%8B%D0%B5%20%D0%BD%D0%B0%D1%81%D1%82%D0%BE%D1%8F%D1%89%D0%B8%D0%BC%20%D0%A1%D0%BE%D0%B3%D0%BB%D0%B0%D1%88%D0%B5%D0%BD%D0%B8%D0%B5%D0%BC%2C%20%D0%BF%D0%BE%D0%B4%D0%BB%D0%B5%D0%B6%D0%B0%D1%82%20%D1%80%D0%B0%D0%B7%D1%80%D0%B5%D1%88%D0%B5%D0%BD%D0%B8%D1%8E%20%D0%B2%20%D1%81%D0%BE%D0%BE%D1%82%D0%B2%D0%B5%D1%82%D1%81%D1%82%D0%B2%D0%B8%D0%B8%20%D1%81%20%D0%B4%D0%B5%D0%B9%D1%81%D1%82%D0%B2%D1%83%D1%8E%D1%89%D0%B8%D0%BC%20%D0%B7%D0%B0%D0%BA%D0%BE%D0%BD%D0%BE%D0%B4%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%D1%81%D1%82%D0%B2%D0%BE%D0%BC%20%D0%A3%D0%B7%D0%B1%D0%B5%D0%BA%D0%B8%D1%81%D1%82%D0%B0%D0%BD%D0%B0.%20%D0%92%D1%81%D0%B5%20%D0%B2%D0%BE%D0%B7%D0%BC%D0%BE%D0%B6%D0%BD%D1%8B%D0%B5%20%D1%81%D0%BF%D0%BE%D1%80%D1%8B%2C%20%D0%B2%D1%8B%D1%82%D0%B5%D0%BA%D0%B0%D1%8E%D1%89%D0%B8%D0%B5%20%D0%B8%D0%B7%20%D0%BE%D1%82%D0%BD%D0%BE%D1%88%D0%B5%D0%BD%D0%B8%D0%B9%2C%20%D1%80%D0%B5%D0%B3%D1%83%D0%BB%D0%B8%D1%80%D1%83%D0%B5%D0%BC%D1%8B%D1%85%20%D0%BD%D0%B0%D1%81%D1%82%D0%BE%D1%8F%D1%89%D0%B8%D0%BC%20%D0%A1%D0%BE%D0%B3%D0%BB%D0%B0%D1%88%D0%B5%D0%BD%D0%B8%D0%B5%D0%BC%2C%20%D1%80%D0%B0%D0%B7%D1%80%D0%B5%D1%88%D0%B0%D1%8E%D1%82%D1%81%D1%8F%20%D0%B2%20%D0%BF%D0%BE%D1%80%D1%8F%D0%B4%D0%BA%D0%B5%2C%20%D1%83%D1%81%D1%82%D0%B0%D0%BD%D0%BE%D0%B2%D0%BB%D0%B5%D0%BD%D0%BD%D0%BE%D0%BC%20%D0%B7%D0%B0%D0%BA%D0%BE%D0%BD%D0%BE%D0%B4%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%D1%81%D1%82%D0%B2%D0%BE%D0%BC%20%D0%A3%D0%B7%D0%B1%D0%B5%D0%BA%D0%B8%D1%81%D1%82%D0%B0%D0%BD%2C%20%D0%BF%D0%BE%20%D0%BD%D0%BE%D1%80%D0%BC%D0%B0%D0%BC%20%D0%BF%D1%80%D0%B0%D0%B2%D0%B0%20%D0%A0%D0%B5%D1%81%D0%BF%D1%83%D0%B1%D0%BB%D0%B8%D0%BA%D0%B8%20%D0%A3%D0%B7%D0%B1%D0%B5%D0%BA%D0%B8%D1%81%D1%82%D0%B0%D0%BD.%3C%2Fp%3E%0A%0A%3Cp%3E%D0%92%D0%B5%D0%B7%D0%B4%D0%B5%20%D0%BF%D0%BE%20%D1%82%D0%B5%D0%BA%D1%81%D1%82%D1%83%20%D0%BD%D0%B0%D1%81%D1%82%D0%BE%D1%8F%D1%89%D0%B5%D0%B3%D0%BE%20%D0%A1%D0%BE%D0%B3%D0%BB%D0%B0%D1%88%D0%B5%D0%BD%D0%B8%D1%8F%2C%20%D0%B5%D1%81%D0%BB%D0%B8%20%D1%8F%D0%B2%D0%BD%D0%BE%20%D0%BD%D0%B5%20%D1%83%D0%BA%D0%B0%D0%B7%D0%B0%D0%BD%D0%BE%20%D0%B8%D0%BD%D0%BE%D0%B5%2C%20%D0%BF%D0%BE%D0%B4%20%D1%82%D0%B5%D1%80%D0%BC%D0%B8%D0%BD%D0%BE%D0%BC%20%26laquo%3B%D0%B7%D0%B0%D0%BA%D0%BE%D0%BD%D0%BE%D0%B4%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%D1%81%D1%82%D0%B2%D0%BE%26raquo%3B%20%D0%BF%D0%BE%D0%BD%D0%B8%D0%BC%D0%B0%D0%B5%D1%82%D1%81%D1%8F%20%D0%B7%D0%B0%D0%BA%D0%BE%D0%BD%D0%BE%D0%B4%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%D1%81%D1%82%D0%B2%D0%BE%20%D0%A0%D0%B5%D1%81%D0%BF%D1%83%D0%B1%D0%BB%D0%B8%D0%BA%D0%B8%20%D0%A3%D0%B7%D0%B1%D0%B5%D0%BA%D0%B8%D1%81%D1%82%D0%B0%D0%BD.%D0%9F%D1%80%D0%B8%D0%B7%D0%BD%D0%B0%D0%BD%D0%B8%D0%B5%20%D1%81%D1%83%D0%B4%D0%BE%D0%BC%20%D0%BA%D0%B0%D0%BA%D0%BE%D0%B3%D0%BE-%D0%BB%D0%B8%D0%B1%D0%BE%20%D0%BF%D0%BE%D0%BB%D0%BE%D0%B6%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%A1%D0%BE%D0%B3%D0%BB%D0%B0%D1%88%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%BD%D0%B5%D0%B4%D0%B5%D0%B9%D1%81%D1%82%D0%B2%D0%B8%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D1%8B%D0%BC%20%D0%B8%D0%BB%D0%B8%20%D0%BD%D0%B5%20%D0%BF%D0%BE%D0%B4%D0%BB%D0%B5%D0%B6%D0%B0%D1%89%D0%B8%D0%BC%20%D0%BF%D1%80%D0%B8%D0%BD%D1%83%D0%B4%D0%B8%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D0%BE%D0%BC%D1%83%20%D0%B8%D1%81%D0%BF%D0%BE%D0%BB%D0%BD%D0%B5%D0%BD%D0%B8%D1%8E%20%D0%BD%D0%B5%20%D0%B2%D0%BB%D0%B5%D1%87%D0%B5%D1%82%20%D0%BD%D0%B5%D0%B4%D0%B5%D0%B9%D1%81%D1%82%D0%B2%D0%B8%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D0%BE%D1%81%D1%82%D0%B8%20%D0%B8%D0%BB%D0%B8%20%D0%BD%D0%B5%D0%B8%D1%81%D0%BF%D0%BE%D0%BB%D0%BD%D0%B8%D0%BC%D0%BE%D1%81%D1%82%D0%B8%20%D0%B8%D0%BD%D1%8B%D1%85%20%D0%BF%D0%BE%D0%BB%D0%BE%D0%B6%D0%B5%D0%BD%D0%B8%D0%B9%20%D0%B4%D0%B0%D0%BD%D0%BD%D0%BE%D0%B3%D0%BE%20%D0%A1%D0%BE%D0%B3%D0%BB%D0%B0%D1%88%D0%B5%D0%BD%D0%B8%D1%8F.%3C%2Fp%3E%0A', '', 1, 6);

-- --------------------------------------------------------

--
-- Структура таблицы `uni_payments`
--

CREATE TABLE `uni_payments` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `logo` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `param` text CHARACTER SET utf8,
  `visible` int(1) NOT NULL DEFAULT '0',
  `code` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `secure` int(1) NOT NULL DEFAULT '0',
  `secure_percent_service` float NOT NULL DEFAULT '0',
  `secure_percent_payment` float NOT NULL DEFAULT '0',
  `secure_other_payment` float NOT NULL DEFAULT '0',
  `secure_min_amount_payment` float NOT NULL DEFAULT '0',
  `secure_max_amount_payment` float NOT NULL DEFAULT '0',
  `secure_score_type` varchar(255) DEFAULT NULL,
  `secure_add_card` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `uni_payments`
--

INSERT INTO `uni_payments` (`id`, `name`, `logo`, `param`, `visible`, `code`, `secure`, `secure_percent_service`, `secure_percent_payment`, `secure_other_payment`, `secure_min_amount_payment`, `secure_max_amount_payment`, `secure_score_type`, `secure_add_card`) VALUES
(1, 'RoboKassa', 'robokassa-payment.jpg', '', 1, 'robokassa', 0, 0, 0, 0, 0, 0, '', 0),
(2, 'WalletOne', 'walletone-payment.jpg', '', 1, 'walletone', 0, 0, 0, 0, 0, 0, '', 0),
(3, 'LiqPay', 'liqpay-payment.png', '', 1, 'liqpay', 1, 5, 4, 0, 500, 50000, '', 0),
(6, 'PayBox.money', 'paybox-payment.png', '', 1, 'paybox', 0, 0, 0, 0, 0, 0, '', 0),
(7, 'Payeer', 'payeer-payment.png', '', 1, 'payeer', 0, 0, 0, 0, 0, 0, '', 0),
(9, 'ЮKassa', 'yookassa-payment.png', '', 1, 'yookassa', 0, 0, 0, 0, 0, 0, 'wallet,card', 0),
(16, 'Stripe', 'stripe-payment.png', '', 1, 'stripe', 0, 0, 0, 0, 0, 0, '', 0),
(17, 'Tinkoff', 'tinkoff-payment.png', '', 1, 'tinkoff', 1, 5, 0, 0, 1000, 100000, 'card', 1),
(11, 'Paysera', 'paysera-payment.png', '', 1, 'paysera', 0, 0, 0, 0, 0, 0, '', 0),
(12, 'Wayforpay', 'wayforpay-payment.png', '', 1, 'wayforpay', 0, 0, 0, 0, 0, 0, '', 0),
(13, 'Freekassa', 'freekassa-payment.png', '', 1, 'freekassa', 0, 0, 0, 0, 0, 0, '', 0),
(14, 'ЮMoney', 'yoomoney-payment.png', '', 1, 'yoomoney', 1, 5, 0, 0, 5, 50000, 'wallet', 0),
(18, 'Click', 'click-logo.png', '4ZZCDH7WSTMPCcRwzzgDyTCUy0QEU14kiuYHr2R0wvyuhgXz+FQKW2dFhwaog5W6ZC8AVXKVquI/uIsJwSEdtLo8cUBVU3FT5pP5CqcTlR0lILyHAiU3zF+N6+y8Vp3IQB1TXKhPu+560waSJlpgJdj01dWBIiUAdAVZRy+y5NNrmHmuWd8DqXS0KRc7+V/dd6UI4nvicbDIdkY9kHTQaJzeb/PUmeXOCJc5bGdBNZ2wN0Crmw7CX8O5WZFaa3SkAAEXvs6shJTbM4DY0aESgkzzszmZUgWlEg0t0mdVToebFqPKEWR8kOxCuBLNIDOKMvZiyMYsWn5PdIL+jAFS+oSI+XqBX/NuXYh6BC22z65xM03rIDZZoknB2gKQlcPq', 1, 'click', 0, 0, 0, 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `uni_privileges`
--

CREATE TABLE `uni_privileges` (
  `id` int(11) NOT NULL,
  `main_title` varchar(100) CHARACTER SET utf8 NOT NULL,
  `sub_title` varchar(100) CHARACTER SET utf8 NOT NULL,
  `value` varchar(50) CHARACTER SET utf8 NOT NULL,
  `uid` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `uni_privileges`
--

INSERT INTO `uni_privileges` (`id`, `main_title`, `sub_title`, `value`, `uid`) VALUES
(1, 'Статистика', 'Просмотр статистики', 'control_statistics', 'statistics'),
(5, 'Блог', 'Управление блогом', 'control_blog', 'blog'),
(9, 'Страницы', 'Управление сервисными и промо страницами', 'control_page', 'page'),
(11, 'Пользователи сайта', 'Управление пользователями', 'control_clients', 'clients'),
(14, 'Баннеры', 'Управление баннерами', 'control_banner', 'banner'),
(35, 'Города/Страны', 'Управление городами и странами', 'control_city', 'city'),
(18, 'Файловый менеджер', 'Управление менеджером', 'control_manager', 'manager'),
(41, 'SEO', 'Управление SEO', 'control_seo', 'seo'),
(20, 'Пользователи админ панели', 'Управление пользователями', 'control_admin', 'admin'),
(21, 'Шаблонизатор', 'Управление дизайном', 'control_tpl', 'tpl'),
(22, 'Настройки', 'Управление настройками', 'control_settings', 'settings'),
(34, 'Заказы', 'Управление заказами', 'control_orders', 'orders'),
(33, 'Заказы', 'Просмотр заказов/статистики', 'view_orders', 'orders'),
(30, 'Объявления', 'Полное управление', 'control_board', 'board'),
(31, 'Объявления', 'Только обработка объявлений', 'processing_board', 'board'),
(43, 'Сделки', 'Управление сделками', 'control_transactions', 'transactions'),
(44, 'Чат', 'Управление чатом', 'control_chat', 'chat');

-- --------------------------------------------------------

--
-- Структура таблицы `uni_promo_pages`
--

CREATE TABLE `uni_promo_pages` (
  `promo_pages_id` int(11) NOT NULL,
  `promo_pages_title` varchar(255) DEFAULT NULL,
  `promo_pages_desc` varchar(255) DEFAULT NULL,
  `promo_pages_alias` varchar(255) DEFAULT NULL,
  `promo_pages_html_edit` mediumtext,
  `promo_pages_html_public` mediumtext,
  `promo_pages_visible` int(1) NOT NULL DEFAULT '1',
  `promo_pages_count_view` int(11) NOT NULL DEFAULT '0',
  `promo_pages_logotip` int(11) NOT NULL DEFAULT '0',
  `promo_pages_color` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `uni_promo_pages`
--

INSERT INTO `uni_promo_pages` (`promo_pages_id`, `promo_pages_title`, `promo_pages_desc`, `promo_pages_alias`, `promo_pages_html_edit`, `promo_pages_html_public`, `promo_pages_visible`, `promo_pages_count_view`, `promo_pages_logotip`, `promo_pages_color`) VALUES
(2, 'Услуги которые продают быстрее', 'Воспользуйтесь нашими дополнительными услугами! Это быстрый и удобный способ привлечь больше покупателей к вашему объявлению.', 'services', '<div class=\"container\" style=\"max-width: 1000px;\">\n                <div class=\"promo-logo\"><img src=\"media/others/promo_61309287386bd.jpg\" class=\"promo-logo-link\"></div>\n              \n                \n              \n                \n              \n                \n              \n                \n              \n                \n              \n                \n              \n\n                <div class=\"promo-content\" id=\"dragula\"><div class=\"promo-element\" style=\"margin-top: 70px; margin-bottom: 100px; background-color: rgba(0, 0, 0, 0);\">\n\n  <div class=\"promo-controls\">\n         <span class=\"promo-controls-move\"> <i class=\"las la-arrows-alt\"></i> </span>\n         <span class=\"promo-controls-copy\"> <i class=\"las la-copy\"></i> </span>\n         <span class=\"promo-controls-edit\"> <i class=\"las la-cog\"></i> </span>\n         <span class=\"promo-controls-delete\"> <i class=\"las la-trash-alt\"></i> </span>     \n  </div>\n\n	<div class=\"row\">\n		<div class=\"col-lg-12\">\n\n			<div class=\"promo-element-text\"><h1 style=\"text-align: center; \"><span style=\"font-weight: bolder;\">Хотите продавать товары быстрее?</span></h1></div>\n			<div class=\"promo-element-text\"><h5 style=\"text-align: center; color: rgb(33, 37, 41); font-family: &quot;Open Sans&quot;, Roboto, Helvetica, Arial, sans-serif;\">Воспользуйтесь нашими дополнительными услугами! Это быстрый и удобный способ привлечь больше покупателей к вашему объявлению.</h5></div>\n				\n		</div>\n	</div>\n</div><div class=\"promo-element\" style=\"background-color: rgb(247, 247, 247); border-radius: 15px; padding: 35px; margin: 20px 0px;\">\n\n  <div class=\"promo-controls\">\n  	     <span class=\"promo-controls-move\"> <i class=\"las la-arrows-alt\"></i> </span>\n  	     <span class=\"promo-controls-copy\"> <i class=\"las la-copy\"></i> </span>\n         <span class=\"promo-controls-edit\"> <i class=\"las la-cog\"></i> </span>\n         <span class=\"promo-controls-delete\"> <i class=\"las la-trash-alt\"></i> </span>     \n  </div>\n\n	<div class=\"row\">\n		<div class=\"col-lg-7\">\n			\n			<div class=\"promo-element-text\"><h2><b>Турбо продажа</b></h2></div>\n			<div class=\"promo-element-text\"><p>Ваше предложение увидит максимум посетителей — это увеличит шансы на быструю и выгодную продажу. Объявление будет выделено цветом, поднято в топ и размещено в специальном VIP блоке.</p></div>\n\n			<div class=\"promo-element-button\">\n				\n			</div>\n			\n		</div>\n		<div class=\"col-lg-5\">\n			\n				<div class=\"promo-element-add-img\">\n              <div class=\"promo-element-add-img\">\n              <div class=\"promo-element-add-img\">\n              <div class=\"promo-element-add-img\"><img src=\"media/others/promo_613092de9cdb3.jpg\" class=\"promo-element-image\" style=\"width: 200px;\"></div>\n            </div>\n            </div>\n            </div>\n			\n		</div>		\n	</div>\n</div><div class=\"promo-element\" style=\"background-color: rgb(247, 247, 247); border-radius: 15px; padding: 35px; margin: 20px 0px;\">\n\n  <div class=\"promo-controls\">\n  	     <span class=\"promo-controls-move\"> <i class=\"las la-arrows-alt\"></i> </span>\n  	     <span class=\"promo-controls-copy\"> <i class=\"las la-copy\"></i> </span>\n         <span class=\"promo-controls-edit\"> <i class=\"las la-cog\"></i> </span>\n         <span class=\"promo-controls-delete\"> <i class=\"las la-trash-alt\"></i> </span>     \n  </div>\n\n	<div class=\"row\">\n		<div class=\"col-lg-7\">\n			\n			<div class=\"promo-element-text\"><h2><b>VIP размещение</b></h2></div>\n			<div class=\"promo-element-text\"><p>Ваше объявление выделяется и отображается в специальном VIP блоке в каталоге объявлений.</p></div>\n\n			<div class=\"promo-element-button\">\n				\n			</div>\n			\n		</div>\n		<div class=\"col-lg-5\">\n			\n				<div class=\"promo-element-add-img\">\n              <div class=\"promo-element-add-img\">\n              <div class=\"promo-element-add-img\"><img src=\"media/others/promo_613092e6b268b.jpg\" class=\"promo-element-image\" style=\"width: 200px;\"></div>\n            </div>\n            </div>\n			\n		</div>		\n	</div>\n</div><div class=\"promo-element\" style=\"background-color: rgb(247, 247, 247); border-radius: 15px; padding: 35px; margin: 20px 0px;\">\n\n  <div class=\"promo-controls\">\n  	     <span class=\"promo-controls-move\"> <i class=\"las la-arrows-alt\"></i> </span>\n  	     <span class=\"promo-controls-copy\"> <i class=\"las la-copy\"></i> </span>\n         <span class=\"promo-controls-edit\"> <i class=\"las la-cog\"></i> </span>\n         <span class=\"promo-controls-delete\"> <i class=\"las la-trash-alt\"></i> </span>     \n  </div>\n\n	<div class=\"row\">\n		<div class=\"col-lg-7\">\n			\n			<div class=\"promo-element-text\"><h2><b>Поднятие в ленте</b></h2></div>\n			<div class=\"promo-element-text\"><p>ТОП объявления показываются на самых верхних позициях и на всех страницах рубрики и региона, в которой размещено объявление. Такое расположение гарантирует, что Ваши объявления просмотрят максимально возможное количество пользователей.</p></div>\n\n			<div class=\"promo-element-button\">\n				\n			</div>\n			\n		</div>\n		<div class=\"col-lg-5\">\n			\n				<div class=\"promo-element-add-img\">\n              <div class=\"promo-element-add-img\">\n              <div class=\"promo-element-add-img\"><img src=\"media/others/promo_61309392e900f.jpg\" class=\"promo-element-image\" style=\"width: 200px;\"></div>\n            </div>\n            </div>\n			\n		</div>		\n	</div>\n</div><div class=\"promo-element\">\n\n  <div class=\"promo-controls\">\n  	     <span class=\"promo-controls-move\"> <i class=\"las la-arrows-alt\"></i> </span>\n  	     <span class=\"promo-controls-copy\"> <i class=\"las la-copy\"></i> </span>\n         <span class=\"promo-controls-edit\"> <i class=\"las la-cog\"></i> </span>\n         <span class=\"promo-controls-delete\"> <i class=\"las la-trash-alt\"></i> </span>     \n  </div>\n\n	<div class=\"row\">\n		<div class=\"col-lg-12\" style=\"text-align: center;\">\n			\n				<div class=\"promo-element-button\">\n					<a href=\"/ad/create\" target=\"_blank\" style=\"background-color: rgb(112, 146, 254); display: inline-block; text-align: center; color: rgb(255, 255, 255); cursor: pointer; border-radius: 10px; font-weight: 500; padding: 20px 45px; font-size: 18px; margin-top: 30px;\">Подать объявление</a>\n				</div>				\n			\n		</div>\n	</div>\n\n</div></div>\n               \n                <div class=\"promo-add-element\">\n                    <span class=\"open-modal\" data-id-modal=\"modal-promo-elements\"> <i class=\"las la-plus\"></i> </span>\n                </div>\n\n            </div>', '<div class=\"container\" style=\"max-width: 1000px;\">\n                <div class=\"promo-logo\"><img src=\"media/others/promo_61309287386bd.jpg\" class=\"promo-logo-link\"></div>\n              \n                \n              \n                \n              \n                \n              \n                \n              \n                \n              \n                \n              \n\n                <div class=\"promo-content\" id=\"dragula\"><div class=\"promo-element\" style=\"margin-top: 70px; margin-bottom: 100px; background-color: rgba(0, 0, 0, 0);\">\n\n  \n\n	<div class=\"row\">\n		<div class=\"col-lg-12\">\n\n			<div class=\"promo-element-text\"><h1 style=\"text-align: center; \"><span style=\"font-weight: bolder;\">Хотите продавать товары быстрее?</span></h1></div>\n			<div class=\"promo-element-text\"><h5 style=\"text-align: center; color: rgb(33, 37, 41); font-family: &quot;Open Sans&quot;, Roboto, Helvetica, Arial, sans-serif;\">Воспользуйтесь нашими дополнительными услугами! Это быстрый и удобный способ привлечь больше покупателей к вашему объявлению.</h5></div>\n				\n		</div>\n	</div>\n</div><div class=\"promo-element\" style=\"background-color: rgb(247, 247, 247); border-radius: 15px; padding: 35px; margin: 20px 0px;\">\n\n  \n\n	<div class=\"row\">\n		<div class=\"col-lg-7\">\n			\n			<div class=\"promo-element-text\"><h2><b>Турбо продажа</b></h2></div>\n			<div class=\"promo-element-text\"><p>Ваше предложение увидит максимум посетителей — это увеличит шансы на быструю и выгодную продажу. Объявление будет выделено цветом, поднято в топ и размещено в специальном VIP блоке.</p></div>\n\n			<div class=\"promo-element-button\">\n				\n			</div>\n			\n		</div>\n		<div class=\"col-lg-5\">\n			\n				<div class=\"promo-element-add-img\">\n              <div class=\"promo-element-add-img\">\n              <div class=\"promo-element-add-img\">\n              <div class=\"promo-element-add-img\"><img src=\"media/others/promo_613092de9cdb3.jpg\" class=\"promo-element-image\" style=\"width: 200px;\"></div>\n            </div>\n            </div>\n            </div>\n			\n		</div>		\n	</div>\n</div><div class=\"promo-element\" style=\"background-color: rgb(247, 247, 247); border-radius: 15px; padding: 35px; margin: 20px 0px;\">\n\n  \n\n	<div class=\"row\">\n		<div class=\"col-lg-7\">\n			\n			<div class=\"promo-element-text\"><h2><b>VIP размещение</b></h2></div>\n			<div class=\"promo-element-text\"><p>Ваше объявление выделяется и отображается в специальном VIP блоке в каталоге объявлений.</p></div>\n\n			<div class=\"promo-element-button\">\n				\n			</div>\n			\n		</div>\n		<div class=\"col-lg-5\">\n			\n				<div class=\"promo-element-add-img\">\n              <div class=\"promo-element-add-img\">\n              <div class=\"promo-element-add-img\"><img src=\"media/others/promo_613092e6b268b.jpg\" class=\"promo-element-image\" style=\"width: 200px;\"></div>\n            </div>\n            </div>\n			\n		</div>		\n	</div>\n</div><div class=\"promo-element\" style=\"background-color: rgb(247, 247, 247); border-radius: 15px; padding: 35px; margin: 20px 0px;\">\n\n  \n\n	<div class=\"row\">\n		<div class=\"col-lg-7\">\n			\n			<div class=\"promo-element-text\"><h2><b>Поднятие в ленте</b></h2></div>\n			<div class=\"promo-element-text\"><p>ТОП объявления показываются на самых верхних позициях и на всех страницах рубрики и региона, в которой размещено объявление. Такое расположение гарантирует, что Ваши объявления просмотрят максимально возможное количество пользователей.</p></div>\n\n			<div class=\"promo-element-button\">\n				\n			</div>\n			\n		</div>\n		<div class=\"col-lg-5\">\n			\n				<div class=\"promo-element-add-img\">\n              <div class=\"promo-element-add-img\">\n              <div class=\"promo-element-add-img\"><img src=\"media/others/promo_61309392e900f.jpg\" class=\"promo-element-image\" style=\"width: 200px;\"></div>\n            </div>\n            </div>\n			\n		</div>		\n	</div>\n</div><div class=\"promo-element\">\n\n  \n\n	<div class=\"row\">\n		<div class=\"col-lg-12\" style=\"text-align: center;\">\n			\n				<div class=\"promo-element-button\">\n					<a href=\"/ad/create\" target=\"_blank\" style=\"background-color: rgb(112, 146, 254); display: inline-block; text-align: center; color: rgb(255, 255, 255); cursor: pointer; border-radius: 10px; font-weight: 500; padding: 20px 45px; font-size: 18px; margin-top: 30px;\">Подать объявление</a>\n				</div>				\n			\n		</div>\n	</div>\n\n</div></div>\n               \n                \n\n            </div>', 1, 0, 1, 'rgb(255, 255, 255)'),
(4, 'Онлайн магазины', 'Превратите свой профиль в полноценный онлайн-магазин с рекламной обложкой, удобными фильтрами, персональными страницами и поиском', 'shop', '<div class=\"container\" style=\"max-width: 1000px;\">\n                <div class=\"promo-logo\"><img src=\"media/others/promo_613090389a09e.jpg\" class=\"promo-logo-link\"></div>\n              \n                \n              \n\n                <div class=\"promo-content\" id=\"dragula\"><div class=\"promo-element\" style=\"margin-top: 50px; margin-bottom: 80px;\">\n\n  <div class=\"promo-controls\">\n         <span class=\"promo-controls-move\"> <i class=\"las la-arrows-alt\"></i> </span>\n         <span class=\"promo-controls-copy\"> <i class=\"las la-copy\"></i> </span>\n         <span class=\"promo-controls-edit\"> <i class=\"las la-cog\"></i> </span>\n         <span class=\"promo-controls-delete\"> <i class=\"las la-trash-alt\"></i> </span>     \n  </div>\n\n	<div class=\"row\">\n		<div class=\"col-lg-12\">\n\n			<div class=\"promo-element-text\"><h1 style=\"text-align: center;\"><b>Откройте свой онлайн-магазин</b></h1></div>\n			<div class=\"promo-element-text\"><h5 style=\"text-align: center;\">Превратите свой профиль в полноценный онлайн-магазин с рекламной обложкой, удобными фильтрами, персональными страницами и поиском</h5></div>\n				\n		</div>\n	</div>\n</div><div class=\"promo-element\" style=\"background-color: #F7F7F7; border-radius: 15px; padding: 35px; margin: 15px 0;\">\n\n  <div class=\"promo-controls\">\n  	     <span class=\"promo-controls-move\"> <i class=\"las la-arrows-alt\"></i> </span>\n  	     <span class=\"promo-controls-copy\"> <i class=\"las la-copy\"></i> </span>\n         <span class=\"promo-controls-edit\"> <i class=\"las la-cog\"></i> </span>\n         <span class=\"promo-controls-delete\"> <i class=\"las la-trash-alt\"></i> </span>     \n  </div>\n\n	<div class=\"row\">\n		<div class=\"col-lg-7\">\n			\n			<div class=\"promo-element-text\"><h2><b>Рекламная обложка, привлекающая внимание</b><br></h2></div>\n			<div class=\"promo-element-text\"><p><span style=\"color: rgb(33, 37, 41); font-family: &quot;Open Sans&quot;, Roboto, Helvetica, Arial, sans-serif; text-align: center;\">Добавляйте красочные обложки и рассказывайте на них о преимуществах магазина, распродажах и спецпредложениях</span><br></p></div>\n\n			<div class=\"promo-element-button\">\n				\n			</div>\n			\n		</div>\n		<div class=\"col-lg-5\">\n			\n				<div class=\"promo-element-add-img\">\n              <div class=\"promo-element-add-img\">\n              <div class=\"promo-element-add-img\"><img src=\"media/others/promo_61308f9e0fe68.jpg\" class=\"promo-element-image\"></div>\n            </div>\n            </div>\n			\n		</div>		\n	</div>\n</div><div class=\"promo-element\" style=\"background-color: #F7F7F7; border-radius: 15px; padding: 35px; margin: 15px 0;\">\n\n  <div class=\"promo-controls\">\n  	     <span class=\"promo-controls-move\"> <i class=\"las la-arrows-alt\"></i> </span>\n  	     <span class=\"promo-controls-copy\"> <i class=\"las la-copy\"></i> </span>\n         <span class=\"promo-controls-edit\"> <i class=\"las la-cog\"></i> </span>\n         <span class=\"promo-controls-delete\"> <i class=\"las la-trash-alt\"></i> </span>     \n  </div>\n\n	<div class=\"row\">\n		<div class=\"col-lg-7\">\n			\n			<div class=\"promo-element-text\"><h2><b>Удобные фильтры и поиск по товарам</b><br></h2></div>\n			<div class=\"promo-element-text\"><p>Ваши покупатели смогут находить товары через поисковую строку, по категориям и фильтровать по разным критериям</p></div>\n\n			<div class=\"promo-element-button\">\n				\n			</div>\n			\n		</div>\n		<div class=\"col-lg-5\">\n			\n				<div class=\"promo-element-add-img\">\n              <div class=\"promo-element-add-img\">\n              <div class=\"promo-element-add-img\"><img src=\"media/others/promo_61308fb08b095.jpg\" class=\"promo-element-image\"></div>\n            </div>\n            </div>\n			\n		</div>		\n	</div>\n</div><div class=\"promo-element\" style=\"background-color: #F7F7F7; border-radius: 15px; padding: 35px; margin: 15px 0;\">\n\n  <div class=\"promo-controls\">\n  	     <span class=\"promo-controls-move\"> <i class=\"las la-arrows-alt\"></i> </span>\n  	     <span class=\"promo-controls-copy\"> <i class=\"las la-copy\"></i> </span>\n         <span class=\"promo-controls-edit\"> <i class=\"las la-cog\"></i> </span>\n         <span class=\"promo-controls-delete\"> <i class=\"las la-trash-alt\"></i> </span>     \n  </div>\n\n	<div class=\"row\">\n		<div class=\"col-lg-7\">\n			\n			<div class=\"promo-element-text\"><h2><b>Уведомления о новых товарах</b><br></h2></div>\n			<div class=\"promo-element-text\"><p>Покупатели смогут подписаться на магазин, получать уведомления о новых товарах</p></div>\n\n			<div class=\"promo-element-button\">\n				\n			</div>\n			\n		</div>\n		<div class=\"col-lg-5\">\n			\n				<div class=\"promo-element-add-img\">\n              <div class=\"promo-element-add-img\">\n              <div class=\"promo-element-add-img\"><img src=\"media/others/promo_61308fd3e135d.jpg\" class=\"promo-element-image\"></div>\n            </div>\n            </div>\n			\n		</div>		\n	</div>\n</div><div class=\"promo-element\" style=\"background-color: #F7F7F7; border-radius: 15px; padding: 35px; margin: 15px 0;\">\n\n  <div class=\"promo-controls\">\n  	     <span class=\"promo-controls-move\"> <i class=\"las la-arrows-alt\"></i> </span>\n  	     <span class=\"promo-controls-copy\"> <i class=\"las la-copy\"></i> </span>\n         <span class=\"promo-controls-edit\"> <i class=\"las la-cog\"></i> </span>\n         <span class=\"promo-controls-delete\"> <i class=\"las la-trash-alt\"></i> </span>     \n  </div>\n\n	<div class=\"row\">\n		<div class=\"col-lg-7\">\n			\n			<div class=\"promo-element-text\"><h2><b>Простое управление магазином</b><br></h2></div>\n			<div class=\"promo-element-text\"><p>Для управления не нужны специальные знания, затраты на программистов, домены и прочее. Ничто не будет отвлекать вас от бизнеса</p></div>\n\n			<div class=\"promo-element-button\">\n				\n			</div>\n			\n		</div>\n		<div class=\"col-lg-5\">\n			\n				<div class=\"promo-element-add-img\">\n              <div class=\"promo-element-add-img\">\n              <div class=\"promo-element-add-img\"><img src=\"media/others/promo_61308fe57debf.jpg\" class=\"promo-element-image\"></div>\n            </div>\n            </div>\n			\n		</div>		\n	</div>\n</div><div class=\"promo-element\" style=\"background-color: #F7F7F7; border-radius: 15px; padding: 35px; margin: 15px 0;\">\n\n  <div class=\"promo-controls\">\n  	     <span class=\"promo-controls-move\"> <i class=\"las la-arrows-alt\"></i> </span>\n  	     <span class=\"promo-controls-copy\"> <i class=\"las la-copy\"></i> </span>\n         <span class=\"promo-controls-edit\"> <i class=\"las la-cog\"></i> </span>\n         <span class=\"promo-controls-delete\"> <i class=\"las la-trash-alt\"></i> </span>     \n  </div>\n\n	<div class=\"row\">\n		<div class=\"col-lg-7\">\n			\n			<div class=\"promo-element-text\"><h2><b>Каталог магазинов</b><br></h2></div>\n			<div class=\"promo-element-text\"><p>Ваш магазин будет отображаться в каталоге магазинов</p></div>\n\n			<div class=\"promo-element-button\">\n				\n			</div>\n			\n		</div>\n		<div class=\"col-lg-5\">\n			\n				<div class=\"promo-element-add-img\">\n              <div class=\"promo-element-add-img\">\n              <div class=\"promo-element-add-img\"><img src=\"media/others/promo_61308ff68548e.jpg\" class=\"promo-element-image\"></div>\n            </div>\n            </div>\n			\n		</div>		\n	</div>\n</div><div class=\"promo-element\" style=\"background-color: #F7F7F7; border-radius: 15px; padding: 35px; margin: 15px 0;\">\n\n  <div class=\"promo-controls\">\n  	     <span class=\"promo-controls-move\"> <i class=\"las la-arrows-alt\"></i> </span>\n  	     <span class=\"promo-controls-copy\"> <i class=\"las la-copy\"></i> </span>\n         <span class=\"promo-controls-edit\"> <i class=\"las la-cog\"></i> </span>\n         <span class=\"promo-controls-delete\"> <i class=\"las la-trash-alt\"></i> </span>     \n  </div>\n\n	<div class=\"row\">\n		<div class=\"col-lg-7\">\n			\n			<div class=\"promo-element-text\"><h2><b>Персональные страницы</b><br></h2></div>\n			<div class=\"promo-element-text\"><p>Создавайте страницы для своего магазина, например: о нас, контакты и т.п</p></div>\n\n			<div class=\"promo-element-button\">\n				\n			</div>\n			\n		</div>\n		<div class=\"col-lg-5\">\n			\n				<div class=\"promo-element-add-img\">\n              <div class=\"promo-element-add-img\">\n              <div class=\"promo-element-add-img\"><img src=\"media/others/promo_61309007582a3.jpg\" class=\"promo-element-image\"></div>\n            </div>\n            </div>\n			\n		</div>		\n	</div>\n</div><div class=\"promo-element\" style=\"margin-top: 50px; margin-bottom: 120px; background-color: rgba(0, 0, 0, 0);\">\n\n  <div class=\"promo-controls\">\n         <span class=\"promo-controls-move\"> <i class=\"las la-arrows-alt\"></i> </span>\n         <span class=\"promo-controls-copy\"> <i class=\"las la-copy\"></i> </span>\n         <span class=\"promo-controls-edit\"> <i class=\"las la-cog\"></i> </span>\n         <span class=\"promo-controls-delete\"> <i class=\"las la-trash-alt\"></i> </span>     \n  </div>\n\n	<div class=\"row\">\n		<div class=\"col-lg-12\">\n\n			<div class=\"promo-element-text\"><h1 style=\"text-align: center;\"><strong>Как открыть магазин?</strong></h1></div>\n			<div class=\"promo-element-text\"><h5 style=\"text-align: center;\">Для открытия магазина перейдите в свой личный кабинет в раздел \"Магазин\", далее, нажмите на \"Подключить магазин\" и выберите срок действия магазина</h5></div>\n				\n		</div>\n	</div>\n</div></div>\n               \n                <div class=\"promo-add-element\">\n                    <span class=\"open-modal\" data-id-modal=\"modal-promo-elements\"> <i class=\"las la-plus\"></i> </span>\n                </div>\n\n            </div>', '<div class=\"container\" style=\"max-width: 1000px;\">\n                <div class=\"promo-logo\"><img src=\"media/others/promo_613090389a09e.jpg\" class=\"promo-logo-link\"></div>\n              \n                \n              \n\n                <div class=\"promo-content\" id=\"dragula\"><div class=\"promo-element\" style=\"margin-top: 50px; margin-bottom: 80px;\">\n\n  \n\n	<div class=\"row\">\n		<div class=\"col-lg-12\">\n\n			<div class=\"promo-element-text\"><h1 style=\"text-align: center;\"><b>Откройте свой онлайн-магазин</b></h1></div>\n			<div class=\"promo-element-text\"><h5 style=\"text-align: center;\">Превратите свой профиль в полноценный онлайн-магазин с рекламной обложкой, удобными фильтрами, персональными страницами и поиском</h5></div>\n				\n		</div>\n	</div>\n</div><div class=\"promo-element\" style=\"background-color: #F7F7F7; border-radius: 15px; padding: 35px; margin: 15px 0;\">\n\n  \n\n	<div class=\"row\">\n		<div class=\"col-lg-7\">\n			\n			<div class=\"promo-element-text\"><h2><b>Рекламная обложка, привлекающая внимание</b><br></h2></div>\n			<div class=\"promo-element-text\"><p><span style=\"color: rgb(33, 37, 41); font-family: &quot;Open Sans&quot;, Roboto, Helvetica, Arial, sans-serif; text-align: center;\">Добавляйте красочные обложки и рассказывайте на них о преимуществах магазина, распродажах и спецпредложениях</span><br></p></div>\n\n			<div class=\"promo-element-button\">\n				\n			</div>\n			\n		</div>\n		<div class=\"col-lg-5\">\n			\n				<div class=\"promo-element-add-img\">\n              <div class=\"promo-element-add-img\">\n              <div class=\"promo-element-add-img\"><img src=\"../media/others/promo_61308f9e0fe68.jpg\" class=\"promo-element-image\"></div>\n            </div>\n            </div>\n			\n		</div>		\n	</div>\n</div><div class=\"promo-element\" style=\"background-color: #F7F7F7; border-radius: 15px; padding: 35px; margin: 15px 0;\">\n\n  \n\n	<div class=\"row\">\n		<div class=\"col-lg-7\">\n			\n			<div class=\"promo-element-text\"><h2><b>Удобные фильтры и поиск по товарам</b><br></h2></div>\n			<div class=\"promo-element-text\"><p>Ваши покупатели смогут находить товары через поисковую строку, по категориям и фильтровать по разным критериям</p></div>\n\n			<div class=\"promo-element-button\">\n				\n			</div>\n			\n		</div>\n		<div class=\"col-lg-5\">\n			\n				<div class=\"promo-element-add-img\">\n              <div class=\"promo-element-add-img\">\n              <div class=\"promo-element-add-img\"><img src=\"../media/others/promo_61308fb08b095.jpg\" class=\"promo-element-image\"></div>\n            </div>\n            </div>\n			\n		</div>		\n	</div>\n</div><div class=\"promo-element\" style=\"background-color: #F7F7F7; border-radius: 15px; padding: 35px; margin: 15px 0;\">\n\n  \n\n	<div class=\"row\">\n		<div class=\"col-lg-7\">\n			\n			<div class=\"promo-element-text\"><h2><b>Уведомления о новых товарах</b><br></h2></div>\n			<div class=\"promo-element-text\"><p>Покупатели смогут подписаться на магазин, получать уведомления о новых товарах</p></div>\n\n			<div class=\"promo-element-button\">\n				\n			</div>\n			\n		</div>\n		<div class=\"col-lg-5\">\n			\n				<div class=\"promo-element-add-img\">\n              <div class=\"promo-element-add-img\">\n              <div class=\"promo-element-add-img\"><img src=\"../media/others/promo_61308fd3e135d.jpg\" class=\"promo-element-image\"></div>\n            </div>\n            </div>\n			\n		</div>		\n	</div>\n</div><div class=\"promo-element\" style=\"background-color: #F7F7F7; border-radius: 15px; padding: 35px; margin: 15px 0;\">\n\n  \n\n	<div class=\"row\">\n		<div class=\"col-lg-7\">\n			\n			<div class=\"promo-element-text\"><h2><b>Простое управление магазином</b><br></h2></div>\n			<div class=\"promo-element-text\"><p>Для управления не нужны специальные знания, затраты на программистов, домены и прочее. Ничто не будет отвлекать вас от бизнеса</p></div>\n\n			<div class=\"promo-element-button\">\n				\n			</div>\n			\n		</div>\n		<div class=\"col-lg-5\">\n			\n				<div class=\"promo-element-add-img\">\n              <div class=\"promo-element-add-img\">\n              <div class=\"promo-element-add-img\"><img src=\"media/others/promo_61308fe57debf.jpg\" class=\"promo-element-image\"></div>\n            </div>\n            </div>\n			\n		</div>		\n	</div>\n</div><div class=\"promo-element\" style=\"background-color: #F7F7F7; border-radius: 15px; padding: 35px; margin: 15px 0;\">\n\n  \n\n	<div class=\"row\">\n		<div class=\"col-lg-7\">\n			\n			<div class=\"promo-element-text\"><h2><b>Каталог магазинов</b><br></h2></div>\n			<div class=\"promo-element-text\"><p>Ваш магазин будет отображаться в каталоге магазинов</p></div>\n\n			<div class=\"promo-element-button\">\n				\n			</div>\n			\n		</div>\n		<div class=\"col-lg-5\">\n			\n				<div class=\"promo-element-add-img\">\n              <div class=\"promo-element-add-img\">\n              <div class=\"promo-element-add-img\"><img src=\"media/others/promo_61308ff68548e.jpg\" class=\"promo-element-image\"></div>\n            </div>\n            </div>\n			\n		</div>		\n	</div>\n</div><div class=\"promo-element\" style=\"background-color: #F7F7F7; border-radius: 15px; padding: 35px; margin: 15px 0;\">\n\n  \n\n	<div class=\"row\">\n		<div class=\"col-lg-7\">\n			\n			<div class=\"promo-element-text\"><h2><b>Персональные страницы</b><br></h2></div>\n			<div class=\"promo-element-text\"><p>Создавайте страницы для своего магазина, например: о нас, контакты и т.п</p></div>\n\n			<div class=\"promo-element-button\">\n				\n			</div>\n			\n		</div>\n		<div class=\"col-lg-5\">\n			\n				<div class=\"promo-element-add-img\">\n              <div class=\"promo-element-add-img\">\n              <div class=\"promo-element-add-img\"><img src=\"media/others/promo_61309007582a3.jpg\" class=\"promo-element-image\"></div>\n            </div>\n            </div>\n			\n		</div>		\n	</div>\n</div><div class=\"promo-element\" style=\"margin-top: 50px; margin-bottom: 120px; background-color: rgba(0, 0, 0, 0);\">\n\n  \n\n	<div class=\"row\">\n		<div class=\"col-lg-12\">\n\n			<div class=\"promo-element-text\"><h1 style=\"text-align: center;\"><strong>Как открыть магазин?</strong></h1></div>\n			<div class=\"promo-element-text\"><h5 style=\"text-align: center;\">Для открытия магазина перейдите в свой личный кабинет в раздел \"Магазин\", далее, нажмите на \"Подключить магазин\" и выберите срок действия магазина</h5></div>\n				\n		</div>\n	</div>\n</div></div>\n               \n                \n\n            </div>', 1, 0, 1, 'rgb(255, 255, 255)');

-- --------------------------------------------------------

--
-- Структура таблицы `uni_region`
--

CREATE TABLE `uni_region` (
  `region_id` int(10) UNSIGNED NOT NULL,
  `country_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `region_name` varchar(64) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `region_alias` varchar(255) CHARACTER SET utf8 NOT NULL,
  `region_desc` text CHARACTER SET utf8,
  `region_declination` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `uni_region`
--

INSERT INTO `uni_region` (`region_id`, `country_id`, `region_name`, `region_alias`, `region_desc`, `region_declination`) VALUES
(1, 1, 'Адыгея Республика', 'adygeya-respublika', '', 'в Республике Адыгея'),
(2, 1, 'Алтай Республика', 'altay-respublika', '', 'в Республике Алтай'),
(3, 1, 'Алтайский Край', 'altayskiy-kray', '', 'в Алтайском крае'),
(4, 1, 'Амурская область', 'amurskaya-oblast', '', 'в Амурской области'),
(5, 1, 'Архангельская область', 'arhangelskaya-oblast', '', 'в Архангельской области'),
(6, 1, 'Астраханская область', 'astrahanskaya-oblast', '', 'в Астраханской области'),
(89, 2, 'Алматинская область', 'almatinskaya-oblast', '', 'NULL'),
(8, 1, 'Башкортостан Республика', 'bashkortostan-respublika', '', 'в Республике Башкортостан'),
(9, 1, 'Белгородская область', 'belgorodskaya-oblast', '', 'в Белгородской области'),
(10, 1, 'Брянская область', 'bryanskaya-oblast', '', 'в Брянской области'),
(11, 1, 'Бурятия Республика', 'buryatiya-respublika', '', 'в Бурятии'),
(12, 1, 'Владимирская область', 'vladimirskaya-oblast', '', 'во Владимирской области'),
(13, 1, 'Волгоградская область', 'volgogradskaya-oblast', '', 'в Волгоградской области'),
(14, 1, 'Вологодская область', 'vologodskaya-oblast', '', 'в Вологодской области'),
(15, 1, 'Воронежская область', 'voronezhskaya-oblast', '', 'в Воронежской области'),
(16, 1, 'Дагестан Республика', 'dagestan-respublika', '', 'в Республике Дагестан'),
(17, 1, 'Еврейская Автономная область', 'evreyskaya-avtonomnaya-oblast', '', 'в Еврейской АО'),
(18, 1, 'Забайкальский Край', 'zabaykalskiy-kray', '', 'в Забайкальском крае'),
(19, 1, 'Ивановская область', 'ivanovskaya-oblast', '', 'в Ивановской области'),
(20, 1, 'Ингушетия Республика', 'ingushetiya-respublika', '', 'в Ингушетии'),
(21, 1, 'Иркутская область', 'irkutskaya-oblast', '', 'в Иркутской области'),
(22, 1, 'Кабардино-Балкарская Республика', 'kabardino-balkarskaya-respublika', '', 'в Кабардино-Балкарии'),
(23, 1, 'Калининградская область', 'kaliningradskaya-oblast', '', 'в Калининградской области'),
(24, 1, 'Калмыкия Республика', 'kalmykiya-respublika', '', 'в Калмыкии'),
(25, 1, 'Калужская область', 'kaluzhskaya-oblast', '', 'в Калужской области'),
(26, 1, 'Камчатский Край', 'kamchatskiy-kray', '', 'в Камчатском крае'),
(27, 1, 'Карачаево-Черкесская Республика', 'karachaevo-cherkesskaya-respublika', '', 'в Карачаево-Черкесии'),
(28, 1, 'Карелия Республика', 'kareliya-respublika', '', 'в Республике Карелия'),
(29, 1, 'Кемеровская область-Кузбасс область', 'kemerovskaya-oblast-kuzbass-oblast', '', 'в Кемеровской области'),
(30, 1, 'Кировская область', 'kirovskaya-oblast', '', 'в Кировской области'),
(31, 1, 'Коми Республика', 'komi-respublika', '', 'в Республике Коми'),
(32, 1, 'Костромская область', 'kostromskaya-oblast', '', 'в Костромской области'),
(33, 1, 'Краснодарский Край', 'krasnodarskiy-kray', '', 'в Краснодарском крае'),
(34, 1, 'Красноярский Край', 'krasnoyarskiy-kray', '', 'в Красноярском крае'),
(35, 1, 'Крым Республика', 'krym-respublika', '', 'в Республике Крым'),
(36, 1, 'Курганская область', 'kurganskaya-oblast', '', 'в Курганской области'),
(37, 1, 'Курская область', 'kurskaya-oblast', '', 'в Курской области'),
(38, 1, 'Ленинградская область', 'leningradskaya-oblast', '', 'в Ленинградской области'),
(39, 1, 'Липецкая область', 'lipeckaya-oblast', '', 'в Липецкой области'),
(40, 1, 'Магаданская область', 'magadanskaya-oblast', '', 'в Магаданской области'),
(41, 1, 'Марий Эл Республика', 'mariy-el-respublika', '', 'в Республике Марий Эл'),
(42, 1, 'Мордовия Республика', 'mordoviya-respublika', '', 'в Республике Мордовия'),
(44, 1, 'Московская область', 'moskovskaya-oblast', '', 'в Московской области'),
(45, 1, 'Мурманская область', 'murmanskaya-oblast', '', 'в Мурманской области'),
(46, 1, 'Ненецкий Автономный округ', 'neneckiy-avtonomnyy-okrug', '', 'в Ненецком АО'),
(47, 1, 'Нижегородская область', 'nizhegorodskaya-oblast', '', 'в Нижегородской области'),
(48, 1, 'Новгородская область', 'novgorodskaya-oblast', '', 'в Новгородской области'),
(49, 1, 'Новосибирская область', 'novosibirskaya-oblast', '', 'в Новосибирской области'),
(50, 1, 'Омская область', 'omskaya-oblast', '', 'в Омской области'),
(51, 1, 'Оренбургская область', 'orenburgskaya-oblast', '', 'в Оренбургской области'),
(52, 1, 'Орловская область', 'orlovskaya-oblast', '', 'в Орловской области'),
(53, 1, 'Пензенская область', 'penzenskaya-oblast', '', 'в Пензенской области'),
(54, 1, 'Пермский Край', 'permskiy-kray', '', 'в Пермском крае'),
(55, 1, 'Приморский Край', 'primorskiy-kray', '', 'в Приморском крае'),
(56, 1, 'Псковская область', 'pskovskaya-oblast', '', 'в Псковской области'),
(57, 1, 'Ростовская область', 'rostovskaya-oblast', '', 'в Ростовской области'),
(58, 1, 'Рязанская область', 'ryazanskaya-oblast', '', 'в Рязанской области'),
(59, 1, 'Самарская область', 'samarskaya-oblast', '', 'в Самарской области'),
(87, 2, 'Акмолинская область', 'akmolinskaya-oblast', '', ''),
(61, 1, 'Саратовская область', 'saratovskaya-oblast', '', 'в Саратовской области'),
(62, 1, 'Сахалинская область', 'sahalinskaya-oblast', '', 'в Сахалинской области'),
(63, 1, 'Саха (Якутия) Республика', 'saha-yakutiya-respublika', '', 'в Республике Саха (Якутия)'),
(64, 1, 'Свердловская область', 'sverdlovskaya-oblast', '', 'в Свердловской области'),
(88, 2, 'Актюбинская область', 'aktyubinskaya-oblast', '', ''),
(66, 1, 'Северная Осетия-Алания Республика', 'severnaya-osetiya-alaniya-respublika', '', 'в Северной Осетии'),
(67, 1, 'Смоленская область', 'smolenskaya-oblast', '', 'в Смоленской области'),
(68, 1, 'Ставропольский Край', 'stavropolskiy-kray', '', 'в Ставропольском крае'),
(69, 1, 'Тамбовская область', 'tambovskaya-oblast', '', 'в Тамбовской области'),
(70, 1, 'Татарстан Республика', 'tatarstan-respublika', '', 'в Республике Татарстан'),
(71, 1, 'Тверская область', 'tverskaya-oblast', '', 'в Тверской области'),
(72, 1, 'Томская область', 'tomskaya-oblast', '', 'в Томской области'),
(73, 1, 'Тульская область', 'tulskaya-oblast', '', 'в Тульской области'),
(74, 1, 'Тыва Республика', 'tyva-respublika', '', 'в Республике Тыва'),
(75, 1, 'Тюменская область', 'tyumenskaya-oblast', '', 'в Тюменской области'),
(76, 1, 'Удмуртская Республика', 'udmurtskaya-respublika', '', 'в Республике Удмуртия'),
(77, 1, 'Ульяновская область', 'ulyanovskaya-oblast', '', 'в Ульяновской области'),
(78, 1, 'Хабаровский Край', 'habarovskiy-kray', '', 'в Хабаровском крае'),
(79, 1, 'Хакасия Республика', 'hakasiya-respublika', '', 'в Республике Хакасия'),
(80, 1, 'Ханты-Мансийский Автономный округ', 'hanty-mansiyskiy-avtonomnyy-okrug', '', 'в Ханты-Мансийском АО'),
(81, 1, 'Челябинская область', 'chelyabinskaya-oblast', '', 'в Челябинской области'),
(82, 1, 'Чеченская Республика', 'chechenskaya-respublika', '', 'в Республике Чечня'),
(83, 1, 'Чувашская Республика', 'chuvashskaya-respublika', '', 'в Республике Чувашия'),
(84, 1, 'Чукотский Автономный округ', 'chukotskiy-avtonomnyy-okrug', '', 'в Чукотском АО'),
(85, 1, 'Ямало-Ненецкий Автономный округ', 'yamalo-neneckiy-avtonomnyy-okrug', '', 'в Ямало-Ненецком АО'),
(86, 1, 'Ярославская область', 'yaroslavskaya-oblast', '', 'в Ярославской области'),
(91, 2, 'Атырауская область', 'atyrauskaya-oblast', '', ''),
(92, 2, 'Восточно-Казахстанская область', 'vostochno-kazahstanskaya-oblast', '', ''),
(93, 2, 'Жамбылская область', 'zhambylskaya-oblast', '', ''),
(94, 2, 'Западно-Казахстанская область', 'zapadno-kazahstanskaya-oblast', '', ''),
(95, 2, 'Карагандинская область', 'karagandinskaya-oblast', '', ''),
(96, 2, 'Костанайская область', 'kostanayskaya-oblast', '', ''),
(97, 2, 'Кызылординская область', 'kyzylordinskaya-oblast', '', ''),
(98, 2, 'Мангистауская область', 'mangistauskaya-oblast', '', ''),
(100, 2, 'Павлодарская область', 'pavlodarskaya-oblast', '', ''),
(101, 2, 'Северо-Казахстанская область', 'severo-kazahstanskaya-oblast', '', ''),
(102, 2, 'Туркестанская область', 'turkestanskaya-oblast', '', ''),
(107, 1, 'Донецкая область', 'doneckaya-oblast', '', ''),
(110, 1, 'Запорожье область', 'zaporozhe-oblast', '', ''),
(202, 12, 'Кашкадарьинская область', 'kashkadarinskaya-oblast', NULL, NULL),
(203, 12, 'Навоийская область', 'navoiyskaya-oblast', NULL, NULL),
(115, 1, 'Луганская область', 'luganskaya-oblast', '', ''),
(201, 12, 'Джизакская область', 'dzhizakskaya-oblast', NULL, NULL),
(199, 12, 'Республика Каракалпакстан', 'respublika-karakalpakstan', NULL, NULL),
(200, 12, 'Бухарская область', 'buharskaya-oblast', NULL, NULL),
(126, 1, 'Херсонская область', 'hersonskaya-oblast', '', ''),
(197, 12, 'Андижанская область', 'andizhanskaya-oblast', NULL, NULL),
(196, 12, 'Ташкентская область', 'tashkentskaya-oblast', NULL, NULL),
(209, 12, 'Хорезмская область', 'horezmskaya-oblast', NULL, NULL),
(208, 12, 'Ферганская область', 'ferganskaya-oblast', NULL, NULL),
(207, 12, 'Сырдарьинская область', 'syrdarinskaya-oblast', NULL, NULL),
(206, 12, 'Сурхандарьинская область', 'surhandarinskaya-oblast', NULL, NULL),
(205, 12, 'Самаркандская область', 'samarkandskaya-oblast', NULL, NULL),
(204, 12, 'Наманганская область', 'namanganskaya-oblast', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `uni_secure`
--

CREATE TABLE `uni_secure` (
  `secure_id` int(11) NOT NULL,
  `secure_date` timestamp NULL DEFAULT NULL,
  `secure_status` int(1) NOT NULL DEFAULT '0',
  `secure_id_user_buyer` int(11) NOT NULL DEFAULT '0',
  `secure_id_order` int(11) NOT NULL DEFAULT '0',
  `secure_id_user_seller` int(11) NOT NULL DEFAULT '0',
  `secure_price` float NOT NULL DEFAULT '0',
  `secure_status_payment_user` int(11) NOT NULL DEFAULT '0',
  `secure_delivery_type` varchar(50) DEFAULT NULL,
  `secure_delivery_price` float NOT NULL DEFAULT '0',
  `secure_delivery_invoice_number` varchar(255) DEFAULT NULL,
  `secure_delivery_track_number` varchar(255) DEFAULT NULL,
  `secure_delivery_errors` varchar(255) DEFAULT NULL,
  `secure_delivery_name` varchar(255) DEFAULT NULL,
  `secure_delivery_surname` varchar(255) DEFAULT NULL,
  `secure_delivery_patronymic` varchar(255) DEFAULT NULL,
  `secure_delivery_id_point` varchar(255) DEFAULT NULL,
  `secure_delivery_phone` varchar(255) DEFAULT NULL,
  `secure_marketplace` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `uni_secure_ads`
--

CREATE TABLE `uni_secure_ads` (
  `secure_ads_id` int(11) NOT NULL,
  `secure_ads_ad_id` int(11) NOT NULL DEFAULT '0',
  `secure_ads_count` int(11) NOT NULL DEFAULT '0',
  `secure_ads_total` int(11) NOT NULL DEFAULT '0',
  `secure_ads_order_id` int(11) NOT NULL DEFAULT '0',
  `secure_ads_user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `uni_secure_disputes`
--

CREATE TABLE `uni_secure_disputes` (
  `secure_disputes_id` int(11) NOT NULL,
  `secure_disputes_id_secure` int(11) NOT NULL DEFAULT '0',
  `secure_disputes_text` text,
  `secure_disputes_status` int(1) NOT NULL DEFAULT '0',
  `secure_disputes_date` timestamp NULL DEFAULT NULL,
  `secure_disputes_id_user` int(11) NOT NULL DEFAULT '0',
  `secure_disputes_attach` text,
  `secure_disputes_text_arbitr` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `uni_secure_payments`
--

CREATE TABLE `uni_secure_payments` (
  `secure_payments_id` int(11) NOT NULL,
  `secure_payments_date` timestamp NULL DEFAULT NULL,
  `secure_payments_id_order` int(11) NOT NULL DEFAULT '0',
  `secure_payments_score` varchar(255) DEFAULT NULL,
  `secure_payments_amount` float NOT NULL DEFAULT '0',
  `secure_payments_status` int(11) NOT NULL DEFAULT '0',
  `secure_payments_id_user` int(11) NOT NULL DEFAULT '0',
  `secure_payments_errors` text,
  `secure_payments_status_pay` int(1) NOT NULL DEFAULT '0',
  `secure_payments_amount_percent` float NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `uni_seo`
--

CREATE TABLE `uni_seo` (
  `id` int(11) NOT NULL,
  `page` varchar(50) CHARACTER SET utf8 NOT NULL,
  `meta_title` text CHARACTER SET utf8,
  `meta_desc` text CHARACTER SET utf8,
  `text` text CHARACTER SET utf8,
  `h1` text CHARACTER SET utf8,
  `lang_iso` varchar(10) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `uni_seo`
--

INSERT INTO `uni_seo` (`id`, `page`, `meta_title`, `meta_desc`, `text`, `h1`, `lang_iso`) VALUES
(580, 'article', '{article_title}', '{article_meta_desc}', '', '', 'ru'),
(581, 'shops_category', '{shop_category_name}', '{shop_category_name}', '', '{shop_category_name}', 'ru'),
(578, 'blog_category', '', '', '', '', 'ru'),
(579, 'blog', '{blog_category_title} - Блог {site_name}', '{blog_category_title} - Блог {site_name}', '', '{blog_category_title}', 'ru'),
(430, 'board', '{board_category_title}', '{board_category_meta_desc}', '<p>{board_category_text}</p>\n\n<p>{geo_meta_desc}</p>\n', '{board_category_title}', 'us'),
(431, 'board_geo', '{site_name} - free bulletin board – {geo}, private and commercial ads', 'Free bulletin board – {geo}, private and commercial offers for the sale and purchase of new and used goods, profitable to sell or buy personal items. Submit an ad for free on the site {site_name}.', '', 'Ads - {geo}', 'us'),
(432, 'ad', '{ad_title}, price: {ad_price}', '{ad_text} - A large selection of ads in the «{board_category_name}» category.', '', '', 'us'),
(433, 'blog', '{blog_category_title} - Blog {site_name}', '{blog_category_title} - Blog {site_name}', '<p>{blog_category_text}</p>\n', '{blog_category_h1}', 'us'),
(434, 'article', '{article_title}', '{article_meta_desc}', '', '', 'us'),
(435, 'shops_category', '{shop_category_name}', '{shop_category_name}', '', '{shop_category_name}', 'us'),
(436, 'shops', 'Store Catalog - {site_name}', 'Store Catalog - {site_name}', '', 'Store Catalog - {site_name}', 'us'),
(429, 'index', 'New generation Bulletin Board', 'New generation Bulletin Board', '', 'All ads', 'us'),
(577, 'ad', '{ad_title} {geo_declination}, цена: {ad_price}', '{ad_text} - Большой выбор объявлений в категории «{board_category_name}».', '', '', 'ru'),
(575, 'board', '{board_category_title} {geo_declination}', '{board_category_meta_desc}', '<p>{board_category_text}</p>\n\n\n\n<p>{geo_meta_desc}</p>\n\n', '{board_category_h1} {geo_declination}', 'ru'),
(576, 'board_geo', '{site_name} - Доска бесплатных объявлений {geo_declination}', 'Доска бесплатных объявлений {geo_declination}, частные и коммерческие предложения о продаже и покупке новых и б\\у товаров, выгодно продать или купить личные вещи. Бесплатно подать объявление на сайт {site_name}.', '', 'Объявления {geo_declination}', 'ru'),
(574, 'index', '{site_name} - Доска объявлений нового поколения', '{site_name} - Доска объявлений нового поколения', '<p>{site_name} - Доска объявлений нового поколения</p>\n\n', '{site_name} - Доска объявлений нового поколения', 'ru'),
(582, 'shops', 'Бизнес-профили', 'Бизнес-профили', '', 'Бизнес-профили', 'ru');

-- --------------------------------------------------------

--
-- Структура таблицы `uni_seo_filters`
--

CREATE TABLE `uni_seo_filters` (
  `seo_filters_id` int(11) NOT NULL,
  `seo_filters_alias` text,
  `seo_filters_title` varchar(255) DEFAULT NULL,
  `seo_filters_desc` text,
  `seo_filters_text` text,
  `seo_filters_params` text,
  `seo_filters_alias_category` varchar(255) DEFAULT NULL,
  `seo_filters_alias_geo` varchar(255) DEFAULT NULL,
  `seo_filters_count_view` int(11) NOT NULL DEFAULT '0',
  `seo_filters_h1` varchar(255) DEFAULT NULL,
  `seo_filters_name` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `uni_services_ads`
--

CREATE TABLE `uni_services_ads` (
  `services_ads_id` int(11) NOT NULL,
  `services_ads_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `services_ads_price` float NOT NULL DEFAULT '0',
  `services_ads_new_price` float NOT NULL DEFAULT '0',
  `services_ads_count_day` int(11) NOT NULL DEFAULT '0',
  `services_ads_text` text CHARACTER SET utf8,
  `services_ads_uid` int(11) NOT NULL DEFAULT '0',
  `services_ads_image` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `services_ads_variant` int(1) NOT NULL DEFAULT '1',
  `services_ads_id_position` int(11) DEFAULT '0',
  `services_ads_visible` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `uni_services_ads`
--

INSERT INTO `uni_services_ads` (`services_ads_id`, `services_ads_name`, `services_ads_price`, `services_ads_new_price`, `services_ads_count_day`, `services_ads_text`, `services_ads_uid`, `services_ads_image`, `services_ads_variant`, `services_ads_id_position`, `services_ads_visible`) VALUES
(1, 'Поднятие в ленте', 49, 0, 1, 'Объявление поднимается вверх в ленте объявлений.', 1, 'e2c585525f974b653df72ba3d47dd92f.png', 2, 2, 1),
(2, 'VIP размещение', 99, 0, 1, 'Объявление выделяется и попадает в спец размещение', 2, '9b9f34bde9e4dc644d955334e1ae5174.png', 2, 1, 1),
(3, 'Турбо продажа', 149, 75, 7, 'Поднятие в ленте и VIP размещение', 3, '69f0db38e3bb81d0cf28eec0d669d1d6.png', 1, 3, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `uni_services_order`
--

CREATE TABLE `uni_services_order` (
  `services_order_id` int(11) NOT NULL,
  `services_order_id_ads` int(11) NOT NULL DEFAULT '0',
  `services_order_time_validity` timestamp NULL DEFAULT NULL,
  `services_order_id_service` int(11) NOT NULL DEFAULT '0',
  `services_order_count_day` int(11) NOT NULL DEFAULT '1',
  `services_order_time_create` timestamp NULL DEFAULT NULL,
  `services_order_status` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `uni_services_tariffs`
--

CREATE TABLE `uni_services_tariffs` (
  `services_tariffs_id` int(11) NOT NULL,
  `services_tariffs_name` varchar(255) DEFAULT NULL,
  `services_tariffs_price` float NOT NULL DEFAULT '0',
  `services_tariffs_days` int(11) NOT NULL DEFAULT '0',
  `services_tariffs_desc` varchar(255) DEFAULT NULL,
  `services_tariffs_status` int(11) NOT NULL DEFAULT '1',
  `services_tariffs_services` text,
  `services_tariffs_new_price` float NOT NULL DEFAULT '0',
  `services_tariffs_bonus` float NOT NULL DEFAULT '0',
  `services_tariffs_position` int(11) NOT NULL DEFAULT '0',
  `services_tariffs_onetime` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `uni_services_tariffs`
--

INSERT INTO `uni_services_tariffs` (`services_tariffs_id`, `services_tariffs_name`, `services_tariffs_price`, `services_tariffs_days`, `services_tariffs_desc`, `services_tariffs_status`, `services_tariffs_services`, `services_tariffs_new_price`, `services_tariffs_bonus`, `services_tariffs_position`, `services_tariffs_onetime`) VALUES
(1, 'Тестовый', 0, 1, 'Протестируйте тариф со всем функционалом в течении дня', 1, '[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\"]', 0, 0, 2, 0),
(2, 'Премиум', 299, 30, 'Базовый тариф с начальным функционалом', 1, '[\"1\",\"6\",\"7\"]', 0, 145, 3, 0),
(3, 'Максимум', 1190, 30, 'Максимальный тариф со всем функционалом', 1, '[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\"]', 990, 390, 4, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `uni_services_tariffs_bonus`
--

CREATE TABLE `uni_services_tariffs_bonus` (
  `services_tariffs_bonus_id` int(11) NOT NULL,
  `services_tariffs_bonus_user_id` int(11) NOT NULL DEFAULT '0',
  `services_tariffs_bonus_tariff_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `uni_services_tariffs_bonus`
--

INSERT INTO `uni_services_tariffs_bonus` (`services_tariffs_bonus_id`, `services_tariffs_bonus_user_id`, `services_tariffs_bonus_tariff_id`) VALUES
(1, 1, 3),
(2, 1, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `uni_services_tariffs_checklist`
--

CREATE TABLE `uni_services_tariffs_checklist` (
  `services_tariffs_checklist_id` int(11) NOT NULL,
  `services_tariffs_checklist_name` varchar(255) DEFAULT NULL,
  `services_tariffs_checklist_desc` varchar(255) DEFAULT NULL,
  `services_tariffs_checklist_alias` varchar(255) DEFAULT NULL,
  `services_tariffs_checklist_uid` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `uni_services_tariffs_checklist`
--

INSERT INTO `uni_services_tariffs_checklist` (`services_tariffs_checklist_id`, `services_tariffs_checklist_name`, `services_tariffs_checklist_desc`, `services_tariffs_checklist_alias`, `services_tariffs_checklist_uid`) VALUES
(1, 'Персональный магазин', '', 'Магазин', 'shop'),
(2, 'Дополнительные страницы в магазине', '', 'Страницы магазина', 'shop_page'),
(3, 'Уникальный адрес магазина', '', 'Уникальный адрес магазина', 'unique_shop_address'),
(4, 'Поиск в магазине только по вашим товарам', '', 'Поиск в магазине', 'search_shop'),
(5, 'Скрытие конкурентов в ваших объявлениях', '', 'Скрытие конкурентов', 'hiding_competitors_ads'),
(6, 'Расширенная статистика', '', 'Расширенная статистика', 'statistics_ad'),
(7, 'Планировщик задач', '', 'Планировщик задач', 'scheduler');

-- --------------------------------------------------------

--
-- Структура таблицы `uni_services_tariffs_onetime`
--

CREATE TABLE `uni_services_tariffs_onetime` (
  `services_tariffs_onetime_id` int(11) NOT NULL,
  `services_tariffs_onetime_user_id` int(11) NOT NULL DEFAULT '0',
  `services_tariffs_onetime_tariff_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `uni_services_tariffs_orders`
--

CREATE TABLE `uni_services_tariffs_orders` (
  `services_tariffs_orders_id` int(11) NOT NULL,
  `services_tariffs_orders_id_tariff` int(11) NOT NULL DEFAULT '0',
  `services_tariffs_orders_days` int(11) NOT NULL DEFAULT '0',
  `services_tariffs_orders_date_activation` timestamp NULL DEFAULT NULL,
  `services_tariffs_orders_id_user` int(11) NOT NULL DEFAULT '0',
  `services_tariffs_orders_date_completion` timestamp NULL DEFAULT NULL,
  `services_tariffs_orders_status` int(1) NOT NULL DEFAULT '0',
  `services_tariffs_orders_price` float NOT NULL DEFAULT '0',
  `services_tariffs_orders_notification` int(1) NOT NULL DEFAULT '0',
  `services_tariffs_orders_notification_pay` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `uni_services_tariffs_orders`
--

INSERT INTO `uni_services_tariffs_orders` (`services_tariffs_orders_id`, `services_tariffs_orders_id_tariff`, `services_tariffs_orders_days`, `services_tariffs_orders_date_activation`, `services_tariffs_orders_id_user`, `services_tariffs_orders_date_completion`, `services_tariffs_orders_status`, `services_tariffs_orders_price`, `services_tariffs_orders_notification`, `services_tariffs_orders_notification_pay`) VALUES
(2, 2, 30, '2023-06-02 05:52:48', 1, '2023-07-02 05:52:48', 0, 299, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `uni_settings`
--

CREATE TABLE `uni_settings` (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `value` text CHARACTER SET utf8
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `uni_settings`
--

INSERT INTO `uni_settings` (`id`, `name`, `value`) VALUES
(1, 'title', 'joymee.uz'),
(6, 'contact_phone', ''),
(7, 'contact_email', 'shuhaaka@mail.ru'),
(81, 'confirm_new_ads', '1'),
(94, 'contact_address', ''),
(10, 'watermark_img', '1806b29558477d521373c0d47675f175.png'),
(11, 'watermark_pos', '4'),
(12, 'variant_send_mail', '2'),
(13, 'email_noreply', 'info@contact.eson.uz'),
(14, 'sms_phone', ''),
(15, 'name_responder', 'joymee.uz'),
(18, 'email_alert', 'shuhaaka@mail.ru'),
(19, 'phone_alert', ''),
(185, 'sitemap_alias_filters', '1'),
(23, 'theme_code', 'mbo'),
(232, 'auto_lang_detection', '0'),
(92, 'access_site', '1'),
(83, 'lang_admin_default', 'russian'),
(40, 'manager_extension', 'rar,txt,zip,png,jpg,jpeg,doc,pdf,docx'),
(41, 'manager_file_size', '10'),
(42, 'confirm-new-user', '1'),
(43, 'lang_site_default', 'ru'),
(47, 'format_PHPExcel', 'Excel2007'),
(50, 'array_pages', '{\"index\":\"/index\",\"pages\":\"/pages/pages\",\"add_page\":\"/pages/add_page\",\"page\":\"/pages/edit_page\",\"blog\":\"/blog/articles\",\"add_article\":\"/blog/add_article\",\"edit_article\":\"/blog/edit_article\",\"settings\":\"/settings/settings\",\"users\":\"/admin/users\",\"add_user\":\"/admin/add_user\",\"user\":\"/admin/edit_user\",\"category_blog\":\"/blog/category\",\"add_category_blog\":\"/blog/add_category\",\"edit_category_blog\":\"/blog/edit_category\",\"subscription\":\"/subscription/subscription\",\"advertising\":\"/advertising/advertising\",\"add_advertising\":\"/advertising/add\",\"edit_advertising\":\"/advertising/edit\",\"access\":\"/access/access\",\"tpl\":\"/tpl/tpl\",\"clients\":\"/clients/clients\",\"manager\":\"/manager/manager\",\"crm\":\"/crm/crm\",\"board\":\"/board/board\",\"category_board\":\"/category_board/category\",\"add_category_board\":\"/category_board/add_category\",\"edit_category_board\":\"/category_board/edit_category\",\"orders\":\"/orders/index\",\"view_country\":\"/cities/view\",\"cities\":\"/cities/cities\",\"client_view\":\"/clients/view\",\"services_ad\":\"/services_ad/index\",\"seo\":\"/seo/index\",\"filters\":\"/category_board/filters\",\"complaints\":\"/board/complaints\",\"edit_language\":\"/settings/language\",\"multilanguage\":\"/multilanguage/multilanguage\",\"clients_reviews\":\"/clients/reviews\",\"ads_change\":\"/board/change\",\"seo_filters\":\"/seo/filters\",\"add_seo_filter\":\"/seo/add_filter\",\"edit_seo_filter\":\"/seo/edit_filter\",\"secure\":\"/secure/secure\",\"secure_view\":\"/secure/view\",\"subscribers\":\"/subscribers/users\",\"ads_import\":\"/ads_import/index\",\"ads_import_view\":\"/ads_import/view\",\"ads_import_errors\":\"/ads_import/errors\",\"ads_feed\":\"/board/ads_feed\",\"card_user\":\"/index/card_user\",\"promo_slider\":\"/slider/index\",\"promo_pages\":\"/promo_pages/pages\",\"rss\":\"/rss/index\",\"modules\":\"/settings/modules\",\"search\":\"/search/index\",\"chat\":\"/chat/index\",\"booking\":\"/booking/index\",\"booking_view\":\"/booking/view\"}'),
(184, 'bonus_program', '{\"register\":{\"status\":\"1\",\"name\":\"\\u0411\\u043e\\u043d\\u0443\\u0441 \\u0437\\u0430 \\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u044e\",\"price\":\"10000\"},\"balance\":{\"name\":\"\\u0411\\u043e\\u043d\\u0443\\u0441 \\u0437\\u0430 \\u043f\\u043e\\u043f\\u043e\\u043b\\u043d\\u0435\\u043d\\u0438\\u0435 \\u0431\\u0430\\u043b\\u0430\\u043d\\u0441\\u0430\",\"price\":\"0\"},\"email\":{\"name\":\"\\u0411\\u043e\\u043d\\u0443\\u0441 \\u0437\\u0430 \\u0434\\u043e\\u0431\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u0435 e-mail \\u0430\\u0434\\u0440\\u0435\\u0441\\u0430\",\"price\":\"60\"},\"ad_publication\":{\"name\":\"\\u0411\\u043e\\u043d\\u0443\\u0441 \\u0437\\u0430 \\u043f\\u0443\\u0431\\u043b\\u0438\\u043a\\u0430\\u0446\\u0438\\u044e \\u043f\\u0435\\u0440\\u0432\\u043e\\u0433\\u043e \\u043e\\u0431\\u044a\\u044f\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f\",\"price\":\"99\"}}'),
(180, 'ad_create_currency', '1'),
(181, 'ad_create_period', '0'),
(82, 'country_default', 'uzbekistan'),
(58, 'ads_publication_moderat', '1'),
(88, 'access_allowed_ip', ''),
(89, 'access_action', ''),
(90, 'access_text', ''),
(91, 'access_redirect_link', ''),
(59, 'lnc_key', 'xxx'),
(60, 'smtp_host', 'mail.contact.eson.uz'),
(61, 'SMTPDebug', '0'),
(62, 'smtp_auth', 'true'),
(63, 'smtp_secure', 'tsl'),
(64, 'smtp_port', '587'),
(65, 'smtp_username', 'info@contact.eson.uz'),
(66, 'smtp_password', 'Tm8L/ECK60TSq/mErSLBfk0MSy0binQYZ0Y8Nu8orMON7G3ZJvy7tlA9NYN+2u2LT8MbbTxHD1ekWzvW6P7Avw=='),
(199, 'social_auth_params', 'Tex1ujmAHibNYO77zZun0mTnARMoPwV4dK1Xn+IDWNng1TzQ6hT1wpWbgdoBNMIPvxJyMoX/OCXXmKQAldg8lOJJ/40c/hZQX77Q8gGDyWCbLSiORncZEVsuJjvKlW7VlH04Itwfrl20Dfv62suyeKY4xn15KnHr0/pOTf/kr/SR70g4BsgUEWZP8zlzpuMXRY5GnCdLTZInv6aqtQnDKz/EqeSDgJRDxVwNuAUmhzk='),
(316, 'main_type_products', 'physical'),
(302, 'registration_method', '2'),
(237, 'seo_empty_page', '0'),
(74, 'site_name', 'joymee.uz'),
(76, 'code_script', ''),
(109, 'cashed_time', '86400'),
(104, 'sitemap_blog', '1'),
(105, 'sitemap_blog_category', '1'),
(106, 'sitemap_services', '0'),
(107, 'notification_method_new_buy', 'email'),
(168, 'cron_systems_status', '1'),
(111, 'chat_id_telegram', ''),
(112, 'count_images_add_ad', '16'),
(113, 'size_images_add_ad', '25'),
(115, 'catalog_out_content', '28'),
(78, 'placing_ads', '2678400'),
(160, 'verify_phone_reg', '1'),
(215, 'secure_status', '0'),
(87, 'logo-image', 'logo_645f60bda2670.png'),
(116, 'blog_out_content', '20'),
(93, 'payment_variant', '18'),
(95, 'notification_method_new_ads', 'email'),
(162, 'authorization_social', NULL),
(97, 'notification_method_new_user', 'email'),
(98, 'payment', ''),
(172, 'sms_service', 'playmobile.uz'),
(100, 'api_id_telegram', ''),
(167, 'social_link_you', 'https://t.me/ali_babauz'),
(120, 'map_vendor', 'yandex'),
(121, 'map_google_key', ''),
(301, 'authorization_method', '2'),
(123, 'country_lat', '41.2646'),
(124, 'country_lng', '69.2163'),
(126, 'cron_notifications_load_count', '0'),
(186, 'ad_view_phone', '2'),
(216, 'min_deposit_balance', '5000'),
(170, 'main_timezone', '(UTC+05:00) Tashkent'),
(132, 'visible_lang_site', '1'),
(137, 'password-attempts', '5'),
(138, 'count-password-attempts', '0'),
(139, 'block-time-auth-admin', '0'),
(140, 'region_id', '0'),
(141, 'city_id', '0'),
(142, 'country_id', '12'),
(159, 'ads_time_publication_default', '30'),
(149, 'cron_sitemap_count_link', '2843'),
(217, 'max_deposit_balance', '1000000'),
(164, 'social_link_instagram', 'https://www.facebook.com/groups/1198233113647562/'),
(163, 'social_link_fb', 'https://www.facebook.com/groups/1198233113647562/'),
(156, 'map_yandex_key', '16377b02-b57f-4277-8b1d-f68d448c808b'),
(158, 'domen', 'almano'),
(169, 'statistics_variant', '1'),
(171, 'favicon-image', 'favicon-120x120.png'),
(174, 'sms_service_login', ''),
(173, 'sms_service_id', ''),
(175, 'sms_service_pass', ''),
(182, 'ad_create_period_list', '1,7,14,30,60'),
(178, 'city_auto_detect', '1'),
(189, 'advertising_pages', 'ad_view,blog,blog_view,catalog,cities,index,page'),
(190, 'sitemap_seo_filters', '1'),
(202, 'currency_json', '{\"RUB\":{\"AUD\":{\"val\":\"40,3581\",\"nominal\":\"1\",\"code\":\"AUD\"},\"AZN\":{\"val\":\"35,5284\",\"nominal\":\"1\",\"code\":\"AZN\"},\"GBP\":{\"val\":\"71,1128\",\"nominal\":\"1\",\"code\":\"GBP\"},\"AMD\":{\"val\":\"15,2548\",\"nominal\":\"100\",\"code\":\"AMD\"},\"BYN\":{\"val\":\"24,9157\",\"nominal\":\"1\",\"code\":\"BYN\"},\"BGN\":{\"val\":\"31,8321\",\"nominal\":\"1\",\"code\":\"BGN\"},\"BRL\":{\"val\":\"11,3856\",\"nominal\":\"1\",\"code\":\"BRL\"},\"HUF\":{\"val\":\"15,3361\",\"nominal\":\"100\",\"code\":\"HUF\"},\"HKD\":{\"val\":\"77,2059\",\"nominal\":\"10\",\"code\":\"HKD\"},\"DKK\":{\"val\":\"83,6992\",\"nominal\":\"10\",\"code\":\"DKK\"},\"USD\":{\"val\":\"60,3982\",\"nominal\":\"1\",\"code\":\"USD\"},\"EUR\":{\"val\":\"62,1554\",\"nominal\":\"1\",\"code\":\"EUR\"},\"INR\":{\"val\":\"73,4671\",\"nominal\":\"100\",\"code\":\"INR\"},\"KZT\":{\"val\":\"13,0729\",\"nominal\":\"100\",\"code\":\"KZT\"},\"CAD\":{\"val\":\"45,1474\",\"nominal\":\"1\",\"code\":\"CAD\"},\"KGS\":{\"val\":\"71,5774\",\"nominal\":\"100\",\"code\":\"KGS\"},\"CNY\":{\"val\":\"85,4248\",\"nominal\":\"10\",\"code\":\"CNY\"},\"MDL\":{\"val\":\"31,3931\",\"nominal\":\"10\",\"code\":\"MDL\"},\"NOK\":{\"val\":\"60,2266\",\"nominal\":\"10\",\"code\":\"NOK\"},\"PLN\":{\"val\":\"13,2371\",\"nominal\":\"1\",\"code\":\"PLN\"},\"RON\":{\"val\":\"12,6919\",\"nominal\":\"1\",\"code\":\"RON\"},\"XDR\":{\"val\":\"79,0673\",\"nominal\":\"1\",\"code\":\"XDR\"},\"SGD\":{\"val\":\"44,0284\",\"nominal\":\"1\",\"code\":\"SGD\"},\"TJS\":{\"val\":\"59,1461\",\"nominal\":\"10\",\"code\":\"TJS\"},\"TRY\":{\"val\":\"32,5980\",\"nominal\":\"10\",\"code\":\"TRY\"},\"TMT\":{\"val\":\"17,2566\",\"nominal\":\"1\",\"code\":\"TMT\"},\"UZS\":{\"val\":\"53,8938\",\"nominal\":\"10000\",\"code\":\"UZS\"},\"UAH\":{\"val\":\"16,3540\",\"nominal\":\"10\",\"code\":\"UAH\"},\"CZK\":{\"val\":\"25,6414\",\"nominal\":\"10\",\"code\":\"CZK\"},\"SEK\":{\"val\":\"58,1322\",\"nominal\":\"10\",\"code\":\"SEK\"},\"CHF\":{\"val\":\"63,8661\",\"nominal\":\"1\",\"code\":\"CHF\"},\"ZAR\":{\"val\":\"34,9824\",\"nominal\":\"10\",\"code\":\"ZAR\"},\"KRW\":{\"val\":\"45,5526\",\"nominal\":\"1000\",\"code\":\"KRW\"},\"JPY\":{\"val\":\"43,2652\",\"nominal\":\"100\",\"code\":\"JPY\"}},\"KZT\":{\"AUD\":{\"val\":\"307.06\",\"nominal\":\"1\",\"code\":\"AUD\"},\"AZN\":{\"val\":\"271.07\",\"nominal\":\"1\",\"code\":\"AZN\"},\"AMD\":{\"val\":\"11.74\",\"nominal\":\"10\",\"code\":\"AMD\"},\"BYN\":{\"val\":\"182.5\",\"nominal\":\"1\",\"code\":\"BYN\"},\"BRL\":{\"val\":\"86.34\",\"nominal\":\"1\",\"code\":\"BRL\"},\"HUF\":{\"val\":\"11.68\",\"nominal\":\"10\",\"code\":\"HUF\"},\"HKD\":{\"val\":\"58.66\",\"nominal\":\"1\",\"code\":\"HKD\"},\"GEL\":{\"val\":\"171.54\",\"nominal\":\"1\",\"code\":\"GEL\"},\"DKK\":{\"val\":\"63.73\",\"nominal\":\"1\",\"code\":\"DKK\"},\"AED\":{\"val\":\"125.17\",\"nominal\":\"1\",\"code\":\"AED\"},\"USD\":{\"val\":\"459.74\",\"nominal\":\"1\",\"code\":\"USD\"},\"EUR\":{\"val\":\"474.08\",\"nominal\":\"1\",\"code\":\"EUR\"},\"INR\":{\"val\":\"5.66\",\"nominal\":\"1\",\"code\":\"INR\"},\"IRR\":{\"val\":\"10.9\",\"nominal\":\"1000\",\"code\":\"IRR\"},\"CAD\":{\"val\":\"346.11\",\"nominal\":\"1\",\"code\":\"CAD\"},\"CNY\":{\"val\":\"65.19\",\"nominal\":\"1\",\"code\":\"CNY\"},\"KWD\":{\"val\":\"1493.63\",\"nominal\":\"1\",\"code\":\"KWD\"},\"KGS\":{\"val\":\"5.51\",\"nominal\":\"1\",\"code\":\"KGS\"},\"MYR\":{\"val\":\"100.11\",\"nominal\":\"1\",\"code\":\"MYR\"},\"MXN\":{\"val\":\"23.5\",\"nominal\":\"1\",\"code\":\"MXN\"},\"MDL\":{\"val\":\"24.03\",\"nominal\":\"1\",\"code\":\"MDL\"},\"NOK\":{\"val\":\"45.95\",\"nominal\":\"1\",\"code\":\"NOK\"},\"PLN\":{\"val\":\"101.39\",\"nominal\":\"1\",\"code\":\"PLN\"},\"SAR\":{\"val\":\"122.32\",\"nominal\":\"1\",\"code\":\"SAR\"},\"RUB\":{\"val\":\"7.61\",\"nominal\":\"1\",\"code\":\"RUB\"},\"XDR\":{\"val\":\"601.85\",\"nominal\":\"1\",\"code\":\"XDR\"},\"SGD\":{\"val\":\"334.38\",\"nominal\":\"1\",\"code\":\"SGD\"},\"TJS\":{\"val\":\"45.97\",\"nominal\":\"1\",\"code\":\"TJS\"},\"THB\":{\"val\":\"12.8\",\"nominal\":\"1\",\"code\":\"THB\"},\"TRY\":{\"val\":\"24.71\",\"nominal\":\"1\",\"code\":\"TRY\"},\"UZS\":{\"val\":\"4.11\",\"nominal\":\"100\",\"code\":\"UZS\"},\"UAH\":{\"val\":\"12.57\",\"nominal\":\"1\",\"code\":\"UAH\"},\"GBP\":{\"val\":\"542.4\",\"nominal\":\"1\",\"code\":\"GBP\"},\"CZK\":{\"val\":\"19.53\",\"nominal\":\"1\",\"code\":\"CZK\"},\"SEK\":{\"val\":\"44.12\",\"nominal\":\"1\",\"code\":\"SEK\"},\"CHF\":{\"val\":\"486.14\",\"nominal\":\"1\",\"code\":\"CHF\"},\"ZAR\":{\"val\":\"26.55\",\"nominal\":\"1\",\"code\":\"ZAR\"},\"KRW\":{\"val\":\"34.75\",\"nominal\":\"100\",\"code\":\"KRW\"},\"JPY\":{\"val\":\"3.28\",\"nominal\":\"1\",\"code\":\"JPY\"}},\"BYN\":{\"AUD\":{\"val\":\"1.6195\",\"nominal\":\"1\",\"code\":\"AUD\"},\"AMD\":{\"val\":\"6.1253\",\"nominal\":\"1000\",\"code\":\"AMD\"},\"BGN\":{\"val\":\"1.2782\",\"nominal\":\"1\",\"code\":\"BGN\"},\"BRL\":{\"val\":\"4.552\",\"nominal\":\"10\",\"code\":\"BRL\"},\"UAH\":{\"val\":\"6.5958\",\"nominal\":\"100\",\"code\":\"UAH\"},\"DKK\":{\"val\":\"3.3615\",\"nominal\":\"10\",\"code\":\"DKK\"},\"AED\":{\"val\":\"6.5998\",\"nominal\":\"10\",\"code\":\"AED\"},\"USD\":{\"val\":\"2.4241\",\"nominal\":\"1\",\"code\":\"USD\"},\"VND\":{\"val\":\"9.7963\",\"nominal\":\"100000\",\"code\":\"VND\"},\"EUR\":{\"val\":\"2.474\",\"nominal\":\"1\",\"code\":\"EUR\"},\"PLN\":{\"val\":\"5.3434\",\"nominal\":\"10\",\"code\":\"PLN\"},\"JPY\":{\"val\":\"1.727\",\"nominal\":\"100\",\"code\":\"JPY\"},\"INR\":{\"val\":\"2.984\",\"nominal\":\"100\",\"code\":\"INR\"},\"IRR\":{\"val\":\"5.7717\",\"nominal\":\"100000\",\"code\":\"IRR\"},\"ISK\":{\"val\":\"1.6681\",\"nominal\":\"100\",\"code\":\"ISK\"},\"CAD\":{\"val\":\"1.8246\",\"nominal\":\"1\",\"code\":\"CAD\"},\"CNY\":{\"val\":\"3.4352\",\"nominal\":\"10\",\"code\":\"CNY\"},\"KWD\":{\"val\":\"7.8725\",\"nominal\":\"1\",\"code\":\"KWD\"},\"MDL\":{\"val\":\"1.2638\",\"nominal\":\"10\",\"code\":\"MDL\"},\"NZD\":{\"val\":\"1.4751\",\"nominal\":\"1\",\"code\":\"NZD\"},\"NOK\":{\"val\":\"2.4236\",\"nominal\":\"10\",\"code\":\"NOK\"},\"RUB\":{\"val\":\"4.007\",\"nominal\":\"100\",\"code\":\"RUB\"},\"XDR\":{\"val\":\"3.1734\",\"nominal\":\"1\",\"code\":\"XDR\"},\"SGD\":{\"val\":\"1.763\",\"nominal\":\"1\",\"code\":\"SGD\"},\"KGS\":{\"val\":\"2.8858\",\"nominal\":\"100\",\"code\":\"KGS\"},\"KZT\":{\"val\":\"5.2509\",\"nominal\":\"1000\",\"code\":\"KZT\"},\"TRY\":{\"val\":\"1.3029\",\"nominal\":\"10\",\"code\":\"TRY\"},\"GBP\":{\"val\":\"2.8598\",\"nominal\":\"1\",\"code\":\"GBP\"},\"CZK\":{\"val\":\"10.3022\",\"nominal\":\"100\",\"code\":\"CZK\"},\"SEK\":{\"val\":\"2.3268\",\"nominal\":\"10\",\"code\":\"SEK\"},\"CHF\":{\"val\":\"2.563\",\"nominal\":\"1\",\"code\":\"CHF\"}},\"EUR\":{\"USD\":{\"val\":\"1.0319\",\"code\":\"USD\"},\"JPY\":{\"val\":\"144.86\",\"code\":\"JPY\"},\"BGN\":{\"val\":\"1.9558\",\"code\":\"BGN\"},\"CZK\":{\"val\":\"24.289\",\"code\":\"CZK\"},\"DKK\":{\"val\":\"7.4382\",\"code\":\"DKK\"},\"GBP\":{\"val\":\"0.87513\",\"code\":\"GBP\"},\"HUF\":{\"val\":\"407.28\",\"code\":\"HUF\"},\"PLN\":{\"val\":\"4.6898\",\"code\":\"PLN\"},\"RON\":{\"val\":\"4.9043\",\"code\":\"RON\"},\"SEK\":{\"val\":\"10.7713\",\"code\":\"SEK\"},\"CHF\":{\"val\":\"0.9751\",\"code\":\"CHF\"},\"ISK\":{\"val\":\"150.30\",\"code\":\"ISK\"},\"NOK\":{\"val\":\"10.3143\",\"code\":\"NOK\"},\"HRK\":{\"val\":\"7.5465\",\"code\":\"HRK\"},\"TRY\":{\"val\":\"19.1923\",\"code\":\"TRY\"},\"AUD\":{\"val\":\"1.5427\",\"code\":\"AUD\"},\"BRL\":{\"val\":\"5.4605\",\"code\":\"BRL\"},\"CAD\":{\"val\":\"1.3706\",\"code\":\"CAD\"},\"CNY\":{\"val\":\"7.2906\",\"code\":\"CNY\"},\"HKD\":{\"val\":\"8.0852\",\"code\":\"HKD\"},\"IDR\":{\"val\":\"16052.12\",\"code\":\"IDR\"},\"ILS\":{\"val\":\"3.5410\",\"code\":\"ILS\"},\"INR\":{\"val\":\"83.7779\",\"code\":\"INR\"},\"KRW\":{\"val\":\"1369.32\",\"code\":\"KRW\"},\"MXN\":{\"val\":\"20.0985\",\"code\":\"MXN\"},\"MYR\":{\"val\":\"4.7429\",\"code\":\"MYR\"},\"NZD\":{\"val\":\"1.6957\",\"code\":\"NZD\"},\"PHP\":{\"val\":\"59.040\",\"code\":\"PHP\"},\"SGD\":{\"val\":\"1.4177\",\"code\":\"SGD\"},\"THB\":{\"val\":\"36.978\",\"code\":\"THB\"},\"ZAR\":{\"val\":\"17.8393\",\"code\":\"ZAR\"}}}'),
(291, 'index_out_content_method', '0'),
(292, 'index_out_count_shops', '3'),
(293, 'ads_comments', '0'),
(294, 'sms_service_method_send', 'sms'),
(295, 'assets_vendors', '0'),
(304, 'status_install_template', '1'),
(303, 'version_update_notification', ''),
(305, 'count_ad_show_zero', '0'),
(273, 'site_frontend_menu', '{\"6437d00a8f4b5\":{\"name\":\"\\u041e\\u0431\\u044a\\u044f\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f \\u043d\\u0430 \\u043a\\u0430\\u0440\\u0442\\u0435\",\"link\":\"map\"},\"6437d00a8fc86\":{\"name\":\"\\u0421\\u0442\\u0430\\u0442\\u044c\\u0438 \\u0438 \\u043d\\u043e\\u0432\\u043e\\u0441\\u0442\\u0438\",\"link\":\"blog\"}}'),
(272, 'ad_format_photo', 'jpg'),
(270, 'secure_payment_service_name', 'tinkoff'),
(200, 'index_out_content', '52'),
(204, 'ads_currency_price', '1'),
(230, 'watermark_caption_opacity', '90'),
(206, 'type_content_loading', '1'),
(218, 'uniq_id_order', '11111111111111111'),
(221, 'available_functionality', 'secure,auction,import,multilang,marketplace,marketplace,booking,marketplace,booking'),
(227, 'watermark_caption_font', 'Epilogue-Light.ttf'),
(225, 'watermark_caption', 'joymee.uz'),
(222, 'watermark_status', '1'),
(223, 'watermark_type', 'caption'),
(228, 'watermark_caption_size', 'small'),
(208, 'ad_similar_count', '8'),
(211, 'robots_index_site', '0'),
(212, 'robots_manual_setting', '0'),
(214, 'robots_exclude_link', ''),
(234, 'logo_color_inversion', '0'),
(235, 'demo_installment', '0'),
(236, 'confirmation_phone', '0'),
(238, 'social_link_telegram', 'https://t.me/ali_babauz'),
(239, 'sitemap_cities', '1'),
(240, 'sitemap_category', '1'),
(241, 'ads_sorting_variant', '0'),
(242, 'media_slider_autoplay', '1'),
(243, 'media_slider_count_show', '3'),
(244, 'media_slider_height', '130'),
(245, 'media_slider_arrows', '1'),
(247, 'ad_black_list_words', 'наркотики,наркота,эротика,секс,порно,заработок,интим'),
(254, 'logo-image-mobile', 'logo_mobile_645f60bda2cc7.png'),
(299, 'user_shop_status', '0'),
(298, 'class_autoload_token', 'ZjWdSpgD5Ij9E5Hk0xLFbPun0sHziRHBHcgala1RaRtQE5tAuAelCBBBwFdvTqKAYBnC0QaCC9QFnnofBn9+ZMcwCV/jPXc0orqnLPq7TNn+qNvgI9DYUaZkq61c1c5c'),
(253, 'user_shop_count_sliders', '16'),
(248, 'sms_service_label', 'OsonSMS'),
(233, 'demo_view', '0'),
(255, 'user_shop_count_pages', '5'),
(257, 'sitemap_shops', '0'),
(256, 'shops_out_content', '15'),
(258, 'sms_prefix_confirmation_code', 'Kod podtverzhdeniya:'),
(261, 'ad_create_length_text', '3000'),
(260, 'map_openstreetmap_key', 'pk.eyJ1IjoiYXJ0dXJsdCIsImEiOiJja245ODE1cWwxNTd5Mm5ueGR3NGFwMmxwIn0.0bG6uEU9VAPJJiFxtMH5Xg'),
(262, 'ad_create_length_title', '100'),
(264, 'ads_publication_auto_moderat', '1'),
(265, 'ad_create_phone', '1'),
(266, 'ads_images_big_width', '1024'),
(267, 'ads_images_small_width', '512'),
(269, 'ad_create_always_image', '1'),
(274, 'abbreviation_million', '1'),
(276, 'header_meta', ''),
(275, 'system_version', '4.8'),
(278, 'catalog_city_distance', '100'),
(279, 'pwa_name', ''),
(280, 'pwa_short_name', ''),
(281, 'pwa_desc', ''),
(282, 'pwa_status', '0'),
(283, 'pwa_image', ''),
(284, 'ads_images_big_height', '768'),
(285, 'ads_images_small_height', '256'),
(286, 'cron_datetime_update', '2023-04-15 22:14:31'),
(289, 'marketplace_available_cart', 'all'),
(287, 'marketplace_status', '0'),
(288, 'marketplace_view_cart', 'sidebar'),
(296, 'user_shop_alias_url_all', 'shops'),
(297, 'user_shop_alias_url_page', 'shop'),
(310, 'sitemap_ads', '0'),
(306, 'banner_markup', '0'),
(307, 'notification_method_new_chat_message', 'email,telegram'),
(308, 'measures_price', '{\"hour\":\"час\",\"day\":\"день\",\"daynight\":\"сутки\",\"week\":\"неделя\",\"month\":\"месяц\",\"m2\":\"м²\",\"sht\":\"шт\"}'),
(309, 'count_add_booking_additional_services', '15'),
(311, 'booking_payment_service_name', 'yoomoney'),
(312, 'booking_prepayment_percent_service', '3'),
(315, 'user_ad_publication', '0'),
(320, 'delivery_from_price', '0'),
(317, 'delivery_service', ''),
(318, 'delivery_api_key', 'XOLlFVgj5rrUQvsiL84ONn4t9qyyhXOGlFC+IELGSjWANc1jwjYgMX6pqOS+LKY6UfZR29SBvU9KO7++juwlDw=='),
(319, 'delivery_available_categories', NULL),
(321, 'delivery_before_price', '30000'),
(322, 'delivery_weight_min', '10'),
(323, 'delivery_weight_max', '15000'),
(324, 'booking_status', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `uni_sliders`
--

CREATE TABLE `uni_sliders` (
  `sliders_id` int(11) NOT NULL,
  `sliders_sort` int(11) NOT NULL DEFAULT '0',
  `sliders_image` varchar(255) DEFAULT NULL,
  `sliders_link` varchar(255) DEFAULT NULL,
  `sliders_title1` varchar(255) DEFAULT NULL,
  `sliders_title2` varchar(255) DEFAULT NULL,
  `sliders_color_bg` varchar(255) DEFAULT NULL,
  `sliders_visible` int(1) NOT NULL DEFAULT '1',
  `sliders_click` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `uni_sliders`
--

INSERT INTO `uni_sliders` (`sliders_id`, `sliders_sort`, `sliders_image`, `sliders_link`, `sliders_title1`, `sliders_title2`, `sliders_color_bg`, `sliders_visible`, `sliders_click`) VALUES
(5, 0, '4a75230a6c5986ad58aa76d252ae569d.png', '', 'Безопасные сделки', 'Это просто и безопасно!', '#f5d9d5', 1, 1),
(7, 0, '9cf641e00f105c31a6e0a0432f6bf16e.png', '', 'Объявления на карте', 'Все объявления в одном месте!', '#b8ffe7', 1, 2),
(8, 0, '528eb47b8da67b2a6298fe8d977da4c0.png', '', 'Турбо продажа', 'Ваше предложение увидит максимум посетителей!', '#abcdef', 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `uni_subscription`
--

CREATE TABLE `uni_subscription` (
  `subscription_id` int(11) NOT NULL,
  `subscription_email` varchar(50) CHARACTER SET utf8 NOT NULL,
  `subscription_datetime_add` timestamp NULL DEFAULT NULL,
  `subscription_ip` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `subscription_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `subscription_user_id` int(11) NOT NULL DEFAULT '0',
  `subscription_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `uni_subscription`
--

INSERT INTO `uni_subscription` (`subscription_id`, `subscription_email`, `subscription_datetime_add`, `subscription_ip`, `subscription_name`, `subscription_user_id`, `subscription_status`) VALUES
(1, 'shuhaaka@mail.ru', '2023-04-15 19:19:20', '127.0.0.1', 'Shuhrat', 1, 1),
(2, 'bakhtiyarkhozha@gmail.com', '2023-06-01 06:07:37', '127.0.0.1', 'Bakhtiyar', 3, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `uni_variants_price`
--

CREATE TABLE `uni_variants_price` (
  `variants_price_id` int(11) NOT NULL,
  `variants_price_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `uni_variants_price`
--

INSERT INTO `uni_variants_price` (`variants_price_id`, `variants_price_name`) VALUES
(1, 'Цена'),
(2, 'Зарплата'),
(3, 'Стоимость услуги'),
(4, 'Арендная плата за месяц'),
(10, 'Арендная плата за сутки');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `role` smallint(5) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comment_post_idx` (`post_id`),
  ADD KEY `comment_user_idx` (`user_id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_category_idx` (`category_id`);

--
-- Индексы таблицы `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_tag_post_idx` (`post_id`),
  ADD KEY `post_tag_tag_idx` (`tag_id`);

--
-- Индексы таблицы `post_user_likes`
--
ALTER TABLE `post_user_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pul_post_idx` (`post_id`),
  ADD KEY `pul_user_idx` (`user_id`);

--
-- Индексы таблицы `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `uni_action_statistics`
--
ALTER TABLE `uni_action_statistics`
  ADD PRIMARY KEY (`action_statistics_id`);

--
-- Индексы таблицы `uni_admin`
--
ALTER TABLE `uni_admin`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `uni_ads`
--
ALTER TABLE `uni_ads`
  ADD PRIMARY KEY (`ads_id`),
  ADD KEY `ads_cat_idx` (`ads_id_cat`),
  ADD KEY `ads_datetime_add` (`ads_datetime_add`),
  ADD KEY `ads_id_user` (`ads_id_user`),
  ADD KEY `ads_period_publication` (`ads_period_publication`),
  ADD KEY `ads_city_id` (`ads_city_id`),
  ADD KEY `ads_status` (`ads_status`),
  ADD KEY `ads_region_id` (`ads_region_id`),
  ADD KEY `ads_country_id` (`ads_country_id`),
  ADD KEY `ads_id_import` (`ads_id_import`);

--
-- Индексы таблицы `uni_ads_auction`
--
ALTER TABLE `uni_ads_auction`
  ADD PRIMARY KEY (`ads_auction_id`);

--
-- Индексы таблицы `uni_ads_booking`
--
ALTER TABLE `uni_ads_booking`
  ADD PRIMARY KEY (`ads_booking_id`);

--
-- Индексы таблицы `uni_ads_booking_dates`
--
ALTER TABLE `uni_ads_booking_dates`
  ADD PRIMARY KEY (`ads_booking_dates_id`);

--
-- Индексы таблицы `uni_ads_booking_prepayments`
--
ALTER TABLE `uni_ads_booking_prepayments`
  ADD PRIMARY KEY (`ads_booking_prepayments_id`);

--
-- Индексы таблицы `uni_ads_change`
--
ALTER TABLE `uni_ads_change`
  ADD PRIMARY KEY (`ads_change_id`);

--
-- Индексы таблицы `uni_ads_comments`
--
ALTER TABLE `uni_ads_comments`
  ADD PRIMARY KEY (`ads_comments_id`);

--
-- Индексы таблицы `uni_ads_complain`
--
ALTER TABLE `uni_ads_complain`
  ADD UNIQUE KEY `id` (`ads_complain_id`);

--
-- Индексы таблицы `uni_ads_filters`
--
ALTER TABLE `uni_ads_filters`
  ADD PRIMARY KEY (`ads_filters_id`);

--
-- Индексы таблицы `uni_ads_filters_alias`
--
ALTER TABLE `uni_ads_filters_alias`
  ADD PRIMARY KEY (`ads_filters_alias_id`);

--
-- Индексы таблицы `uni_ads_filters_category`
--
ALTER TABLE `uni_ads_filters_category`
  ADD PRIMARY KEY (`ads_filters_category_id`);

--
-- Индексы таблицы `uni_ads_filters_items`
--
ALTER TABLE `uni_ads_filters_items`
  ADD PRIMARY KEY (`ads_filters_items_id`),
  ADD KEY `id_filter` (`ads_filters_items_id_filter`);

--
-- Индексы таблицы `uni_ads_filters_variants`
--
ALTER TABLE `uni_ads_filters_variants`
  ADD PRIMARY KEY (`ads_filters_variants_id`),
  ADD KEY `ads_id` (`ads_filters_variants_product_id`);

--
-- Индексы таблицы `uni_ads_import`
--
ALTER TABLE `uni_ads_import`
  ADD PRIMARY KEY (`ads_import_id`);

--
-- Индексы таблицы `uni_ads_keywords`
--
ALTER TABLE `uni_ads_keywords`
  ADD PRIMARY KEY (`ads_keywords_id`);

--
-- Индексы таблицы `uni_ads_keywords_users`
--
ALTER TABLE `uni_ads_keywords_users`
  ADD PRIMARY KEY (`ads_keywords_users_id`);

--
-- Индексы таблицы `uni_ads_subscriptions`
--
ALTER TABLE `uni_ads_subscriptions`
  ADD PRIMARY KEY (`ads_subscriptions_id`);

--
-- Индексы таблицы `uni_ads_views`
--
ALTER TABLE `uni_ads_views`
  ADD PRIMARY KEY (`ads_views_id`);

--
-- Индексы таблицы `uni_ads_views_display`
--
ALTER TABLE `uni_ads_views_display`
  ADD PRIMARY KEY (`ads_views_display_id`);

--
-- Индексы таблицы `uni_advertising`
--
ALTER TABLE `uni_advertising`
  ADD PRIMARY KEY (`advertising_id`);

--
-- Индексы таблицы `uni_blog_articles`
--
ALTER TABLE `uni_blog_articles`
  ADD PRIMARY KEY (`blog_articles_id`);

--
-- Индексы таблицы `uni_blog_category`
--
ALTER TABLE `uni_blog_category`
  ADD PRIMARY KEY (`blog_category_id`);

--
-- Индексы таблицы `uni_blog_comments`
--
ALTER TABLE `uni_blog_comments`
  ADD PRIMARY KEY (`blog_comments_id`);

--
-- Индексы таблицы `uni_boxberry_cities`
--
ALTER TABLE `uni_boxberry_cities`
  ADD PRIMARY KEY (`boxberry_cities_id`);

--
-- Индексы таблицы `uni_boxberry_points`
--
ALTER TABLE `uni_boxberry_points`
  ADD PRIMARY KEY (`boxberry_points_id`);

--
-- Индексы таблицы `uni_cart`
--
ALTER TABLE `uni_cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Индексы таблицы `uni_category_board`
--
ALTER TABLE `uni_category_board`
  ADD KEY `uni_category_board_category_board_id_index` (`category_board_id`);

--
-- Индексы таблицы `uni_chat_locked`
--
ALTER TABLE `uni_chat_locked`
  ADD PRIMARY KEY (`chat_locked_id`);

--
-- Индексы таблицы `uni_chat_messages`
--
ALTER TABLE `uni_chat_messages`
  ADD PRIMARY KEY (`chat_messages_id`),
  ADD KEY `chat_messages_status` (`chat_messages_status`),
  ADD KEY `chat_messages_id_hash` (`chat_messages_id_hash`),
  ADD KEY `chat_messages_id_user` (`chat_messages_id_user`);

--
-- Индексы таблицы `uni_chat_responders`
--
ALTER TABLE `uni_chat_responders`
  ADD PRIMARY KEY (`chat_responders_id`);

--
-- Индексы таблицы `uni_chat_users`
--
ALTER TABLE `uni_chat_users`
  ADD PRIMARY KEY (`chat_users_id`);

--
-- Индексы таблицы `uni_city`
--
ALTER TABLE `uni_city`
  ADD PRIMARY KEY (`city_id`),
  ADD KEY `country_id` (`country_id`),
  ADD KEY `region_id` (`region_id`),
  ADD KEY `alias` (`city_alias`);

--
-- Индексы таблицы `uni_city_area`
--
ALTER TABLE `uni_city_area`
  ADD PRIMARY KEY (`city_area_id`);

--
-- Индексы таблицы `uni_city_area_variants`
--
ALTER TABLE `uni_city_area_variants`
  ADD PRIMARY KEY (`city_area_variants_id`);

--
-- Индексы таблицы `uni_city_distance`
--
ALTER TABLE `uni_city_distance`
  ADD PRIMARY KEY (`city_distance_id`);

--
-- Индексы таблицы `uni_clients`
--
ALTER TABLE `uni_clients`
  ADD PRIMARY KEY (`clients_id`),
  ADD KEY `clients_status` (`clients_status`);

--
-- Индексы таблицы `uni_clients_auth`
--
ALTER TABLE `uni_clients_auth`
  ADD PRIMARY KEY (`clients_auth_id`);

--
-- Индексы таблицы `uni_clients_hash_email`
--
ALTER TABLE `uni_clients_hash_email`
  ADD PRIMARY KEY (`clients_hash_email_id`);

--
-- Индексы таблицы `uni_clients_orders`
--
ALTER TABLE `uni_clients_orders`
  ADD PRIMARY KEY (`clients_orders_id`);

--
-- Индексы таблицы `uni_clients_orders_ads`
--
ALTER TABLE `uni_clients_orders_ads`
  ADD PRIMARY KEY (`clients_orders_ads_id`);

--
-- Индексы таблицы `uni_clients_orders_messages`
--
ALTER TABLE `uni_clients_orders_messages`
  ADD PRIMARY KEY (`clients_orders_messages_id`);

--
-- Индексы таблицы `uni_clients_reviews`
--
ALTER TABLE `uni_clients_reviews`
  ADD PRIMARY KEY (`clients_reviews_id`);

--
-- Индексы таблицы `uni_clients_shops`
--
ALTER TABLE `uni_clients_shops`
  ADD PRIMARY KEY (`clients_shops_id`);

--
-- Индексы таблицы `uni_clients_shops_page`
--
ALTER TABLE `uni_clients_shops_page`
  ADD PRIMARY KEY (`clients_shops_page_id`);

--
-- Индексы таблицы `uni_clients_shops_slider`
--
ALTER TABLE `uni_clients_shops_slider`
  ADD PRIMARY KEY (`clients_shops_slider_id`);

--
-- Индексы таблицы `uni_clients_subscriptions`
--
ALTER TABLE `uni_clients_subscriptions`
  ADD PRIMARY KEY (`clients_subscriptions_id`);

--
-- Индексы таблицы `uni_country`
--
ALTER TABLE `uni_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Индексы таблицы `uni_crontab`
--
ALTER TABLE `uni_crontab`
  ADD PRIMARY KEY (`crontab_id`);

--
-- Индексы таблицы `uni_currency`
--
ALTER TABLE `uni_currency`
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `uni_email_message`
--
ALTER TABLE `uni_email_message`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `uni_favorites`
--
ALTER TABLE `uni_favorites`
  ADD PRIMARY KEY (`favorites_id`);

--
-- Индексы таблицы `uni_filemanager`
--
ALTER TABLE `uni_filemanager`
  ADD PRIMARY KEY (`filemanager_id`);

--
-- Индексы таблицы `uni_history_balance`
--
ALTER TABLE `uni_history_balance`
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `uni_languages`
--
ALTER TABLE `uni_languages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `uni_metrics`
--
ALTER TABLE `uni_metrics`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `uni_metro`
--
ALTER TABLE `uni_metro`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `uni_metro_variants`
--
ALTER TABLE `uni_metro_variants`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `uni_notifications`
--
ALTER TABLE `uni_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `uni_orders`
--
ALTER TABLE `uni_orders`
  ADD PRIMARY KEY (`orders_id`);

--
-- Индексы таблицы `uni_orders_parameters`
--
ALTER TABLE `uni_orders_parameters`
  ADD PRIMARY KEY (`orders_parameters_id`);

--
-- Индексы таблицы `uni_pages`
--
ALTER TABLE `uni_pages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `uni_payments`
--
ALTER TABLE `uni_payments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `uni_privileges`
--
ALTER TABLE `uni_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `uni_promo_pages`
--
ALTER TABLE `uni_promo_pages`
  ADD PRIMARY KEY (`promo_pages_id`);

--
-- Индексы таблицы `uni_region`
--
ALTER TABLE `uni_region`
  ADD PRIMARY KEY (`region_id`),
  ADD KEY `country_id` (`country_id`);

--
-- Индексы таблицы `uni_secure`
--
ALTER TABLE `uni_secure`
  ADD PRIMARY KEY (`secure_id`);

--
-- Индексы таблицы `uni_secure_ads`
--
ALTER TABLE `uni_secure_ads`
  ADD PRIMARY KEY (`secure_ads_id`);

--
-- Индексы таблицы `uni_secure_disputes`
--
ALTER TABLE `uni_secure_disputes`
  ADD PRIMARY KEY (`secure_disputes_id`);

--
-- Индексы таблицы `uni_secure_payments`
--
ALTER TABLE `uni_secure_payments`
  ADD PRIMARY KEY (`secure_payments_id`);

--
-- Индексы таблицы `uni_seo`
--
ALTER TABLE `uni_seo`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `uni_seo_filters`
--
ALTER TABLE `uni_seo_filters`
  ADD PRIMARY KEY (`seo_filters_id`);

--
-- Индексы таблицы `uni_services_ads`
--
ALTER TABLE `uni_services_ads`
  ADD PRIMARY KEY (`services_ads_id`);

--
-- Индексы таблицы `uni_services_order`
--
ALTER TABLE `uni_services_order`
  ADD PRIMARY KEY (`services_order_id`),
  ADD KEY `id_ads` (`services_order_id_ads`),
  ADD KEY `time_validity` (`services_order_time_validity`);

--
-- Индексы таблицы `uni_services_tariffs`
--
ALTER TABLE `uni_services_tariffs`
  ADD PRIMARY KEY (`services_tariffs_id`);

--
-- Индексы таблицы `uni_services_tariffs_bonus`
--
ALTER TABLE `uni_services_tariffs_bonus`
  ADD PRIMARY KEY (`services_tariffs_bonus_id`);

--
-- Индексы таблицы `uni_services_tariffs_checklist`
--
ALTER TABLE `uni_services_tariffs_checklist`
  ADD PRIMARY KEY (`services_tariffs_checklist_id`);

--
-- Индексы таблицы `uni_services_tariffs_onetime`
--
ALTER TABLE `uni_services_tariffs_onetime`
  ADD PRIMARY KEY (`services_tariffs_onetime_id`);

--
-- Индексы таблицы `uni_services_tariffs_orders`
--
ALTER TABLE `uni_services_tariffs_orders`
  ADD PRIMARY KEY (`services_tariffs_orders_id`);

--
-- Индексы таблицы `uni_settings`
--
ALTER TABLE `uni_settings`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `uni_sliders`
--
ALTER TABLE `uni_sliders`
  ADD PRIMARY KEY (`sliders_id`);

--
-- Индексы таблицы `uni_subscription`
--
ALTER TABLE `uni_subscription`
  ADD PRIMARY KEY (`subscription_id`);

--
-- Индексы таблицы `uni_variants_price`
--
ALTER TABLE `uni_variants_price`
  ADD PRIMARY KEY (`variants_price_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `post_user_likes`
--
ALTER TABLE `post_user_likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `uni_action_statistics`
--
ALTER TABLE `uni_action_statistics`
  MODIFY `action_statistics_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `uni_admin`
--
ALTER TABLE `uni_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `uni_ads`
--
ALTER TABLE `uni_ads`
  MODIFY `ads_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `uni_ads_auction`
--
ALTER TABLE `uni_ads_auction`
  MODIFY `ads_auction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `uni_ads_booking`
--
ALTER TABLE `uni_ads_booking`
  MODIFY `ads_booking_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `uni_ads_booking_dates`
--
ALTER TABLE `uni_ads_booking_dates`
  MODIFY `ads_booking_dates_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `uni_ads_booking_prepayments`
--
ALTER TABLE `uni_ads_booking_prepayments`
  MODIFY `ads_booking_prepayments_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `uni_ads_change`
--
ALTER TABLE `uni_ads_change`
  MODIFY `ads_change_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT для таблицы `uni_ads_comments`
--
ALTER TABLE `uni_ads_comments`
  MODIFY `ads_comments_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `uni_ads_complain`
--
ALTER TABLE `uni_ads_complain`
  MODIFY `ads_complain_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `uni_ads_filters`
--
ALTER TABLE `uni_ads_filters`
  MODIFY `ads_filters_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=330;

--
-- AUTO_INCREMENT для таблицы `uni_ads_filters_alias`
--
ALTER TABLE `uni_ads_filters_alias`
  MODIFY `ads_filters_alias_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT для таблицы `uni_ads_filters_category`
--
ALTER TABLE `uni_ads_filters_category`
  MODIFY `ads_filters_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1141;

--
-- AUTO_INCREMENT для таблицы `uni_ads_filters_items`
--
ALTER TABLE `uni_ads_filters_items`
  MODIFY `ads_filters_items_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6332;

--
-- AUTO_INCREMENT для таблицы `uni_ads_filters_variants`
--
ALTER TABLE `uni_ads_filters_variants`
  MODIFY `ads_filters_variants_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT для таблицы `uni_ads_import`
--
ALTER TABLE `uni_ads_import`
  MODIFY `ads_import_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `uni_ads_keywords`
--
ALTER TABLE `uni_ads_keywords`
  MODIFY `ads_keywords_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT для таблицы `uni_ads_keywords_users`
--
ALTER TABLE `uni_ads_keywords_users`
  MODIFY `ads_keywords_users_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT для таблицы `uni_ads_subscriptions`
--
ALTER TABLE `uni_ads_subscriptions`
  MODIFY `ads_subscriptions_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `uni_ads_views`
--
ALTER TABLE `uni_ads_views`
  MODIFY `ads_views_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT для таблицы `uni_ads_views_display`
--
ALTER TABLE `uni_ads_views_display`
  MODIFY `ads_views_display_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT для таблицы `uni_advertising`
--
ALTER TABLE `uni_advertising`
  MODIFY `advertising_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `uni_blog_articles`
--
ALTER TABLE `uni_blog_articles`
  MODIFY `blog_articles_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `uni_blog_category`
--
ALTER TABLE `uni_blog_category`
  MODIFY `blog_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `uni_blog_comments`
--
ALTER TABLE `uni_blog_comments`
  MODIFY `blog_comments_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `uni_boxberry_cities`
--
ALTER TABLE `uni_boxberry_cities`
  MODIFY `boxberry_cities_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `uni_boxberry_points`
--
ALTER TABLE `uni_boxberry_points`
  MODIFY `boxberry_points_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `uni_cart`
--
ALTER TABLE `uni_cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `uni_chat_locked`
--
ALTER TABLE `uni_chat_locked`
  MODIFY `chat_locked_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `uni_chat_messages`
--
ALTER TABLE `uni_chat_messages`
  MODIFY `chat_messages_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `uni_chat_responders`
--
ALTER TABLE `uni_chat_responders`
  MODIFY `chat_responders_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `uni_chat_users`
--
ALTER TABLE `uni_chat_users`
  MODIFY `chat_users_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `uni_city`
--
ALTER TABLE `uni_city`
  MODIFY `city_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46214;

--
-- AUTO_INCREMENT для таблицы `uni_city_area`
--
ALTER TABLE `uni_city_area`
  MODIFY `city_area_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=282;

--
-- AUTO_INCREMENT для таблицы `uni_city_area_variants`
--
ALTER TABLE `uni_city_area_variants`
  MODIFY `city_area_variants_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `uni_city_distance`
--
ALTER TABLE `uni_city_distance`
  MODIFY `city_distance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1215;

--
-- AUTO_INCREMENT для таблицы `uni_clients`
--
ALTER TABLE `uni_clients`
  MODIFY `clients_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `uni_clients_auth`
--
ALTER TABLE `uni_clients_auth`
  MODIFY `clients_auth_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `uni_clients_hash_email`
--
ALTER TABLE `uni_clients_hash_email`
  MODIFY `clients_hash_email_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `uni_clients_orders`
--
ALTER TABLE `uni_clients_orders`
  MODIFY `clients_orders_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `uni_clients_orders_ads`
--
ALTER TABLE `uni_clients_orders_ads`
  MODIFY `clients_orders_ads_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `uni_clients_orders_messages`
--
ALTER TABLE `uni_clients_orders_messages`
  MODIFY `clients_orders_messages_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `uni_clients_reviews`
--
ALTER TABLE `uni_clients_reviews`
  MODIFY `clients_reviews_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `uni_clients_shops`
--
ALTER TABLE `uni_clients_shops`
  MODIFY `clients_shops_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `uni_clients_shops_page`
--
ALTER TABLE `uni_clients_shops_page`
  MODIFY `clients_shops_page_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `uni_clients_shops_slider`
--
ALTER TABLE `uni_clients_shops_slider`
  MODIFY `clients_shops_slider_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `uni_clients_subscriptions`
--
ALTER TABLE `uni_clients_subscriptions`
  MODIFY `clients_subscriptions_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `uni_country`
--
ALTER TABLE `uni_country`
  MODIFY `country_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `uni_crontab`
--
ALTER TABLE `uni_crontab`
  MODIFY `crontab_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT для таблицы `uni_currency`
--
ALTER TABLE `uni_currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `uni_email_message`
--
ALTER TABLE `uni_email_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT для таблицы `uni_favorites`
--
ALTER TABLE `uni_favorites`
  MODIFY `favorites_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `uni_filemanager`
--
ALTER TABLE `uni_filemanager`
  MODIFY `filemanager_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `uni_history_balance`
--
ALTER TABLE `uni_history_balance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `uni_languages`
--
ALTER TABLE `uni_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT для таблицы `uni_metrics`
--
ALTER TABLE `uni_metrics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT для таблицы `uni_metro`
--
ALTER TABLE `uni_metro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=370;

--
-- AUTO_INCREMENT для таблицы `uni_metro_variants`
--
ALTER TABLE `uni_metro_variants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `uni_notifications`
--
ALTER TABLE `uni_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `uni_orders`
--
ALTER TABLE `uni_orders`
  MODIFY `orders_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `uni_orders_parameters`
--
ALTER TABLE `uni_orders_parameters`
  MODIFY `orders_parameters_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `uni_pages`
--
ALTER TABLE `uni_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `uni_payments`
--
ALTER TABLE `uni_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `uni_privileges`
--
ALTER TABLE `uni_privileges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT для таблицы `uni_promo_pages`
--
ALTER TABLE `uni_promo_pages`
  MODIFY `promo_pages_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `uni_region`
--
ALTER TABLE `uni_region`
  MODIFY `region_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=216;

--
-- AUTO_INCREMENT для таблицы `uni_secure`
--
ALTER TABLE `uni_secure`
  MODIFY `secure_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `uni_secure_ads`
--
ALTER TABLE `uni_secure_ads`
  MODIFY `secure_ads_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `uni_secure_disputes`
--
ALTER TABLE `uni_secure_disputes`
  MODIFY `secure_disputes_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `uni_secure_payments`
--
ALTER TABLE `uni_secure_payments`
  MODIFY `secure_payments_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `uni_seo`
--
ALTER TABLE `uni_seo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=583;

--
-- AUTO_INCREMENT для таблицы `uni_seo_filters`
--
ALTER TABLE `uni_seo_filters`
  MODIFY `seo_filters_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `uni_services_ads`
--
ALTER TABLE `uni_services_ads`
  MODIFY `services_ads_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `uni_services_order`
--
ALTER TABLE `uni_services_order`
  MODIFY `services_order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `uni_services_tariffs`
--
ALTER TABLE `uni_services_tariffs`
  MODIFY `services_tariffs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `uni_services_tariffs_bonus`
--
ALTER TABLE `uni_services_tariffs_bonus`
  MODIFY `services_tariffs_bonus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `uni_services_tariffs_checklist`
--
ALTER TABLE `uni_services_tariffs_checklist`
  MODIFY `services_tariffs_checklist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `uni_services_tariffs_onetime`
--
ALTER TABLE `uni_services_tariffs_onetime`
  MODIFY `services_tariffs_onetime_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `uni_services_tariffs_orders`
--
ALTER TABLE `uni_services_tariffs_orders`
  MODIFY `services_tariffs_orders_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `uni_settings`
--
ALTER TABLE `uni_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=325;

--
-- AUTO_INCREMENT для таблицы `uni_sliders`
--
ALTER TABLE `uni_sliders`
  MODIFY `sliders_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `uni_subscription`
--
ALTER TABLE `uni_subscription`
  MODIFY `subscription_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `uni_variants_price`
--
ALTER TABLE `uni_variants_price`
  MODIFY `variants_price_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comment_post_fk` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `comment_user_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ограничения внешнего ключа таблицы `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `post_category_fk` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Ограничения внешнего ключа таблицы `post_tags`
--
ALTER TABLE `post_tags`
  ADD CONSTRAINT `post_tag_post_fk` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `post_tag_tag_fk` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`);

--
-- Ограничения внешнего ключа таблицы `post_user_likes`
--
ALTER TABLE `post_user_likes`
  ADD CONSTRAINT `pul_post_fk` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `pul_user_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ограничения внешнего ключа таблицы `uni_ads`
--
ALTER TABLE `uni_ads`
  ADD CONSTRAINT `ads_cat_fk` FOREIGN KEY (`ads_id_cat`) REFERENCES `uni_category_board` (`category_board_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
