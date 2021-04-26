-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 26, 2021 at 08:58 PM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `book2`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `report` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `setting` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(3) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `phone`, `email`, `email_verified_at`, `password`, `remember_token`, `category`, `coupon`, `product`, `order`, `blog`, `report`, `role`, `return`, `contact`, `stock`, `comment`, `setting`, `other`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Arian Mohajeri', '07808284049', 'admin@gmail.com', NULL, '$2y$10$IWNzWYcWvgiY.QxQLSPhq.6GvTGLqnNk1HJAWgeEPkoFy.DWXL.8G', NULL, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 2, NULL, '2021-04-26 11:12:13'),
(2, 'Hai Zhuge', '0000000000', 'zhuge@mashop.com', NULL, '$2y$10$N8PQSod6/FtcECDaJ52b6u5arJSPI3b/jQDCHJUfqu/fLnfMz0coO', NULL, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 2, NULL, NULL),
(3, 'Hai Wang', '000000000', 'wang@mashop.com', NULL, '$2y$10$iKz19WhIoXvU9Bf4fCW2W.fn1sLfxAANigYBLa92s.Q9NlJXxDHo2', NULL, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 2, NULL, NULL),
(4, 'Test Admin', '000000000', 'testadmin@mashop.com', NULL, '$2y$10$iKz19WhIoXvU9Bf4fCW2W.fn1sLfxAANigYBLa92s.Q9NlJXxDHo2', NULL, '1', '', '1', '0', '1', '1', '0', '1', '1', '0', '1', '0', '1', 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `brand_logo`, `created_at`, `updated_at`) VALUES
(22, 'Playstation', 'public/media/brand/270121_21_02_54.jpg', NULL, NULL),
(23, 'Xbox', 'public/media/brand/270121_21_12_54.jpeg', NULL, NULL),
(24, 'Turtle Beach', 'public/media/brand/270121_23_20_49.jpg', NULL, NULL),
(25, 'Astro Gaming', 'public/media/brand/270121_23_37_49.png', NULL, NULL),
(31, 'Nintendo', 'public/media/brand/260421_18_01_57.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(13, 'Raffle', '2021-02-08 14:12:32', '2021-02-08 14:12:32'),
(14, 'Playstation', '2021-01-27 21:19:17', '2021-01-27 21:19:17'),
(15, 'XBOX', '2021-01-27 21:19:24', '2021-01-27 21:19:24'),
(17, 'PC Gaming', '2021-04-26 16:55:53', '2021-04-26 16:55:53'),
(23, 'Nintendo', '2021-04-26 17:54:38', '2021-04-26 17:54:38');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `phone`, `email`, `message`, `created_at`, `updated_at`) VALUES
(2, 'dani tobole', '0780828409', 'aryan_mohajeri@outlook.com', 'your website is bad', NULL, NULL),
(3, 'aryan mohajeri', '07808284049', 'dani@gmail.com', 'your website is good', NULL, NULL),
(4, 'aryan mohajeri', '07808284049', 'dani@gmail.com', 'your website is good', NULL, NULL),
(5, 'aryan mohaejri', '07808284014', 'arian@gmail.com', 'Love this website', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon`, `discount`, `created_at`, `updated_at`) VALUES
(5, 'aston', '10', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(16, '2014_10_12_000000_create_users_table', 1),
(17, '2014_10_12_100000_create_password_resets_table', 1),
(18, '2018_12_23_120000_create_shoppingcart_table', 1),
(19, '2019_08_19_000000_create_failed_jobs_table', 1),
(20, '2019_10_05_052517_create_admins_table', 1),
(21, '2020_10_17_122206_create_categories_table', 1),
(22, '2020_10_17_122311_create_subcategories_table', 1),
(23, '2020_10_17_122342_create_brands_table', 1),
(24, '2020_10_25_122054_create_coupons_table', 1),
(25, '2020_10_25_135219_create_newsletters_table', 1),
(26, '2020_10_25_192844_create_products_table', 1),
(27, '2020_10_30_100357_create_post_category_table', 1),
(28, '2020_10_30_100436_create_posts_table', 1),
(29, '2020_11_06_165336_create_wishlists_table', 1),
(30, '2020_11_18_214032_create_settings_table', 1),
(31, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(32, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(33, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(34, '2016_06_01_000004_create_oauth_clients_table', 2),
(35, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2),
(36, '2020_02_06_192627_create_orders_details_table', 3),
(37, '2020_11_29_192506_create_orders_table', 4),
(38, '2020_11_29_192627_create_orders_details_table', 5),
(39, '2020_11_29_192704_create_shipping_table', 5),
(40, '2020_11_29_164516_create_orders_table', 6),
(41, '2020_11_29_220807_create_orders_table', 7),
(42, '2020_11_29_230801_create_seo_table', 8),
(43, '2020_11_30_142225_create_contact_table', 9),
(44, '2020_11_30_142238_create_sitesetting_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newsletters`
--

INSERT INTO `newsletters` (`id`, `email`, `created_at`, `updated_at`) VALUES
(2, 'Aryan@gmail.com', NULL, NULL),
(3, 'aryan_mohajeri@outlook.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'Bpcc8W780RD7c1dCZLARNnavb9jjR3fuTPobLaH1', NULL, 'http://localhost', 1, 0, 0, '2020-11-22 01:15:49', '2020-11-22 01:15:49'),
(2, NULL, 'Laravel Password Grant Client', 'H23COIW18PRV80bkCTjyzp3S67FXJTBTY1DpuUeP', 'users', 'http://localhost', 0, 1, 0, '2020-11-22 01:15:49', '2020-11-22 01:15:49');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-11-22 01:15:49', '2020-11-22 01:15:49');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paying_amount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blnc_transection` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_order_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtotal` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `return_order` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `month` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `payment_id`, `paying_amount`, `blnc_transection`, `stripe_order_id`, `subtotal`, `shipping`, `vat`, `total`, `payment_type`, `order_number`, `status`, `return_order`, `date`, `month`, `year`, `created_at`, `updated_at`) VALUES
(3, '5', 'card_1IkVLsD6XdWLRroOeNe9KjAj', '25920', 'txn_1IkVLuD6XdWLRroOlw8BQ5Cq', '6086ccfd58b07', '229', '10', '0.2', '259.2', 'stripe', '890464', '3', '0', '26-04-21', 'April', '2021', NULL, NULL),
(4, '5', 'card_1IkXDVD6XdWLRroOSRwDEFC1', '2220', 'txn_1IkXDWD6XdWLRroO2XLvLu3m', '6086e8fdb5bff', '12.00', '10', '0.2', '22.2', 'stripe', '232153', '0', '0', '26-04-21', 'April', '2021', NULL, NULL),
(5, '5', 'card_1IkXEkD6XdWLRroO33FHBQUv', '6909', 'txn_1IkXElD6XdWLRroOOB3SLZXh', '', '38.89', '10', '0.2', '69.09', 'paypal', '731870', '2', '0', '26-04-21', 'April', '2021', NULL, NULL),
(6, '6', 'card_1IkXHqD6XdWLRroOkrjNOeHo', '3767', 'txn_1IkXHrD6XdWLRroOLRJgVAyb', '', '27.47', '10', '0.2', '37.67', 'paypal', '676324', '1', '0', '26-04-21', 'April', '2021', NULL, NULL),
(7, '5', 'card_1IkZlmD6XdWLRroO5rhBcZM0', '21020', 'txn_1IkZloD6XdWLRroOdikzaZVX', '60870f538a9fb', '190', '10', '0.2', '210.2', 'stripe', '852599', '3', '0', '26-04-21', 'April', '2021', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders_details`
--

CREATE TABLE `orders_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `singleprice` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totalprice` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders_details`
--

INSERT INTO `orders_details` (`id`, `order_id`, `product_id`, `product_name`, `color`, `size`, `quantity`, `singleprice`, `totalprice`, `created_at`, `updated_at`) VALUES
(3, 3, '36', 'MICROSOFT Xbox Series S', 'White', '512GB', '1', '249', '249', NULL, NULL),
(4, 4, '45', 'Nintendo eShop Card', NULL, NULL, '1', '12', '12', NULL, NULL),
(5, 5, '17', 'Playstation 5 DualSense', 'White', NULL, '1', '58.89', '58.89', NULL, NULL),
(6, 6, '44', 'Wired Nintendo Switch Headse', 'Red Blue', NULL, '1', '27.47', '27.47', NULL, NULL),
(7, 7, '51', 'Nintendo Switch', 'Red/Blue', NULL, '1', '200', '200', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `post_title_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title_es` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details_es` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `post_title_en`, `post_title_es`, `post_image`, `details_en`, `details_es`, `created_at`, `updated_at`) VALUES
(1, 2, 'PS5 Review', 'PS5 revisión', 'public/media/post/1684001137332330.jpg', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 0px; margin-left: 18px; color: rgb(17, 17, 17); padding: 0px; font-family: \"Amazon Ember\", Arial, sans-serif;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">The PS5 console unleashes new gaming possibilities that you never anticipated</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Experience lightning-fast loading with an ultra-high-speed SSD, deeper immersion with support for haptic feedback, adaptive triggers and 3D Audio, and an all-new generation of incredible PlayStation games</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Lightning Speed - Harness the power of a custom CPU, GPU and SSD with Integrated I/O that rewrite the rules of what a PlayStation console can do</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Stunning Games - marvel at incredible graphics and experience new PS5 features</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Breathtaking Immersion - discover a deeper gaming experience with support for haptic feedback, adaptive triggers, and 3D Audio technology</span></li></ul>', '<ul class=\"ul1\" style=\"font-size: medium;\"><li class=\"li1\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 13px; line-height: normal; font-family: \" helvetica=\"\" neue\";\"=\"\"><span class=\"s1\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 9px; line-height: normal; font-family: Menlo;\"></span>La consola PS5 da rienda suelta a nuevas posibilidades de juego que nunca anticipaste</li></ul><p style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 13px; line-height: normal;\"><br></p><ul class=\"ul1\" style=\"font-size: medium;\"><li class=\"li1\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 13px; line-height: normal; font-family: \" helvetica=\"\" neue\";\"=\"\"><span class=\"s1\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 9px; line-height: normal; font-family: Menlo;\"></span>Experimente una carga ultrarrápida con un SSD de ultra alta velocidad, una inmersión más profunda con soporte para retroalimentación háptica, activadores adaptativos y audio 3D, y una nueva generación de increíbles juegos de PlayStation</li></ul><p style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 13px; line-height: normal;\"><br></p><ul class=\"ul1\" style=\"font-size: medium;\"><li class=\"li1\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 13px; line-height: normal; font-family: \" helvetica=\"\" neue\";\"=\"\"><span class=\"s1\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 9px; line-height: normal; font-family: Menlo;\"></span>Velocidad del rayo: aproveche la potencia de una CPU, GPU y SSD personalizadas con E / S integradas que reescriben las reglas de lo que puede hacer una consola PlayStation</li></ul><p style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 13px; line-height: normal;\"><br></p><ul class=\"ul1\" style=\"font-size: medium;\"><li class=\"li1\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 13px; line-height: normal; font-family: \" helvetica=\"\" neue\";\"=\"\"><span class=\"s1\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 9px; line-height: normal; font-family: Menlo;\"></span>Juegos impresionantes: maravíllate con los gráficos increíbles y experimenta las nuevas funciones de PS5</li></ul><p style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 13px; line-height: normal;\"><br></p><ul class=\"ul1\" style=\"font-size: medium;\"><li class=\"li1\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 13px; line-height: normal; font-family: \" helvetica=\"\" neue\";\"=\"\"><span class=\"s1\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 9px; line-height: normal; font-family: Menlo;\"></span>Impresionante inmersión: descubra una experiencia de juego más profunda con soporte para retroalimentación háptica, disparadores adaptativos y tecnología de audio 3D</li></ul>', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `post_category`
--

CREATE TABLE `post_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_name_es` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_category`
--

INSERT INTO `post_category` (`id`, `category_name_en`, `category_name_es`, `created_at`, `updated_at`) VALUES
(2, 'Gaming Consoles', 'Consolas de juegos', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_quantity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_details` text COLLATE utf8mb4_unicode_ci,
  `product_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `selling_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_slider` int(11) DEFAULT NULL,
  `hot_deal` int(11) DEFAULT NULL,
  `best_rated` int(11) DEFAULT NULL,
  `mid_slider` int(11) DEFAULT NULL,
  `hot_new` int(11) DEFAULT NULL,
  `buyone_getone` int(30) DEFAULT NULL,
  `trend` int(11) DEFAULT NULL,
  `raffle` int(13) DEFAULT NULL,
  `image_one` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_two` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_three` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `subcategory_id`, `brand_id`, `product_name`, `product_code`, `product_quantity`, `product_details`, `product_color`, `product_size`, `selling_price`, `discount_price`, `video_link`, `main_slider`, `hot_deal`, `best_rated`, `mid_slider`, `hot_new`, `buyone_getone`, `trend`, `raffle`, `image_one`, `image_two`, `image_three`, `status`, `created_at`, `updated_at`) VALUES
(12, 13, 46, 22, 'Playstation 5', '0001', '50', '<h2 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-family: Helvetica, Arial, sans-serif; font-size: 20px; font-weight: bold; color: rgb(0, 0, 0); line-height: 23px;\">Product description Sony PS5</h2><p class=\"parrafo\" style=\"margin: 10px 0px 0px; padding: 0px; font-family: Helvetica, Arial, sans-serif; width: 709px; float: left; font-size: 15px; line-height: 21px; text-size-adjust: none;\"><span id=\"desc\" class=\"addReadMore showlesscontent\" style=\"margin: 0px; padding: 0px; text-align: center;\"><strong style=\"margin: 0px; padding: 0px;\">This device works with C,E and F type plugs. It works with dual Voltage: 100-127V~4.5A 50/60Hz// 200-240V~2.2A 50/60Hz</strong><br style=\"margin: 0px; padding: 0px;\"><br style=\"margin: 0px; padding: 0px;\">The PS5™ console unleashes new gaming possibilities that you never anticipated. Experience lightning fast loading with an ultra-high speed SSD, deeper immersion with support for haptic feedback, adaptive triggers, and 3D Audio, and an all-new generation of incredible PlayStation® games.<br style=\"margin: 0px; padding: 0px;\"><br style=\"margin: 0px; padding: 0px;\"><strong style=\"margin: 0px; padding: 0px;\">Storage</strong>&nbsp;: 825 GB<br style=\"margin: 0px; padding: 0px;\"><br style=\"margin: 0px; padding: 0px;\"><strong style=\"margin: 0px; padding: 0px;\">Lightning Speed:</strong><br style=\"margin: 0px; padding: 0px;\"><br style=\"margin: 0px; padding: 0px;\">-<strong style=\"margin: 0px; padding: 0px;\">Ultra-High Speed SSD</strong>&nbsp;- Maximize your play sessions with near instant load times for installed PS5™ games.<br style=\"margin: 0px; padding: 0px;\">- Integrated I/O - The custom integration of the PS5™ console´s systems lets creators pull data from the SSD so quickly that they can design games in ways never before possible.<br style=\"margin: 0px; padding: 0px;\"><br style=\"margin: 0px; padding: 0px;\"><strong style=\"margin: 0px; padding: 0px;\">Stunning Games:</strong><br style=\"margin: 0px; padding: 0px;\"><br style=\"margin: 0px; padding: 0px;\">- Ray Tracing - Immerse yourself in worlds with a new level of realism as rays of light are individually simulated, creating true-to-life shadows and reflections in supported PS5™ games.<br style=\"margin: 0px; padding: 0px;\">- 4K-TV Gaming - Play your favorite PS5™ games on your stunning 4K TV.<br style=\"margin: 0px; padding: 0px;\">- Up to 120fps with 120Hz Output - Enjoy smooth and fluid high frame rate gameplay at up to 120fps for compatible games, with support for 120Hz output on 4K displays.<br style=\"margin: 0px; padding: 0px;\">- HDR Technology - With an HDR TV, supported PS5™ games display an unbelievably vibrant and lifelike range of colors.<br style=\"margin: 0px; padding: 0px;\">-&nbsp;<strong style=\"margin: 0px; padding: 0px;\">8K</strong>&nbsp;Output - PS5™ consoles support 8K Output, so you can play games on your 4320p resolution display.<br style=\"margin: 0px; padding: 0px;\"><br style=\"margin: 0px; padding: 0px;\"><strong style=\"margin: 0px; padding: 0px;\">Breathtaking Immersion:</strong><br style=\"margin: 0px; padding: 0px;\"><br style=\"margin: 0px; padding: 0px;\">- Tempest 3D AudioTech - Immerse yourself in soundscapes where it feels as if the sound comes from every direction. Through your headphones or TV speakers your surroundings truly come alive with Tempest 3D AudioTech in supported games.<br style=\"margin: 0px; padding: 0px;\">- Haptic Feedback - Experience haptic feedback via the DualSense wireless controller in select PS5 titles and feel the effects and impact of your in-game actions through dynamic sensory feedback.<br style=\"margin: 0px; padding: 0px;\">- Adaptive Triggers - Get to grips with immersive adaptive triggers, featuring dynamic resistance levels which simulate the physical impact of in-game activities in select PS5 games.<br style=\"margin: 0px; padding: 0px;\"><br style=\"margin: 0px; padding: 0px;\"><strong style=\"margin: 0px; padding: 0px;\">In the box:</strong><br style=\"margin: 0px; padding: 0px;\"><br style=\"margin: 0px; padding: 0px;\">- PlayStation®5 Console<br style=\"margin: 0px; padding: 0px;\">- DualSense™ Wireless Controller<br style=\"margin: 0px; padding: 0px;\">- DualSense™ USB charging cable<br style=\"margin: 0px; padding: 0px;\">- ASTRO´s PLAYROOM&nbsp;<strong style=\"margin: 0px; padding: 0px;\">(Pre-installed game) (System software update may be required. Internet connection required for update)</strong><br style=\"margin: 0px; padding: 0px;\">- Base<br style=\"margin: 0px; padding: 0px;\">- HDMI cable<br style=\"margin: 0px; padding: 0px;\">- AC power cord<br style=\"margin: 0px; padding: 0px;\">- Printed materials<br style=\"margin: 0px; padding: 0px;\"><br style=\"margin: 0px; padding: 0px;\">PAL Europa</span></p>', 'White,Black', '800TB', '450.00', '1.00', 'https://www.youtube.com/embed/RkC0l4iekYo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'public/media/product/270121_22_59_00.jpg', 'public/media/product/270121_22_17_03.jpg', 'public/media/product/1690078808619894.jpg', 1, NULL, NULL),
(14, 14, 46, 22, 'Playstation 4 Pro', '0003', '10', '<div id=\"featurebullets_feature_div\" class=\"celwidget\" data-feature-name=\"featurebullets\" data-csa-c-id=\"vm5ot6-httj5q-u8c3lz-63r7n9\" data-cel-widget=\"featurebullets_feature_div\" style=\"box-sizing: border-box; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif;\"><div id=\"feature-bullets\" class=\"a-section a-spacing-medium a-spacing-top-small\" style=\"box-sizing: border-box; margin-top: 8px !important; margin-bottom: 0px;\"><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 0px; margin-left: 18px; color: rgb(17, 17, 17); padding: 0px;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">PlayStation 4 Pro - the super charged PS4 - take play to the next level with PS4 Pro: See every detail explode into life with 4K gaming and entertainment, experience faster, smoother frame rates and more powerful gaming performance and enjoy richer, more vibrant colours with HDR technology</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">4K gaming and entertainment - games and movies shine with amazing 4K clarity; graphics become sharper and more realistic, skin tones become warmer and more lifelike, while textures and environments burst into life like never before</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">High dynamic range - With an HDR enabled TV, compatible PS4 games display an intensely vibrant range of colours, closer to the full spectrum that the human eye can see</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Enhanced games - PS4 Pro games burst into life with intensely sharp graphics, stunningly vibrant colours, textures and environments and smoother, more stable performance; every PS4 game is playable on PS4 Pro at a minimum of 1080p, while others get a boost to enhance their graphics to incredible 4K. No matter what TV you play on, all PS4 games benefit from enhanced graphics and smoother, faster, more detailed action</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">The best in 4K entertainment - stream the biggest movies, hottest TV shows and latest videos in 4K resolution from Netflix, YouTube and a host of entertainment apps coming soon - all with auto-upscaling for the sharpest picture possible</span></li></ul><span class=\"edp-feature-declaration\" data-edp-feature-name=\"featurebullets\" data-edp-asin=\"B07K14XKZH\" data-data-hash=\"4015526237\" data-defects=\"[{&quot;id&quot;:&quot;defect-mismatch-info&quot;,&quot;value&quot;:&quot;Different from product&quot;},{&quot;id&quot;:&quot;defect-missing-information&quot;,&quot;value&quot;:&quot;Missing information&quot;},{&quot;id&quot;:&quot;defect-unessential-info&quot;,&quot;value&quot;:&quot;Unimportant information&quot;},{&quot;id&quot;:&quot;defect-other-productinfo-issue&quot;,&quot;value&quot;:&quot;Other&quot;}]\" data-metadata=\"CATALOG\" data-feature-container-id=\"\" data-custom-event-handler=\"\" data-display-name=\"Bullet Points\" data-edit-data-state=\"featureBulletsEDPEditData\" data-position=\"\" data-resolver=\"CQResolver\" style=\"box-sizing: border-box;\"></span></div></div><div id=\"globalStoreInfoBullets_feature_div\" class=\"celwidget\" data-feature-name=\"globalStoreInfoBullets\" data-csa-c-id=\"m8277i-q8pxzb-lcle2u-m9b9mu\" data-cel-widget=\"globalStoreInfoBullets_feature_div\" style=\"box-sizing: border-box; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif;\"></div><div id=\"addOnItem_feature_div\" class=\"celwidget\" data-feature-name=\"addOnItem\" data-csa-c-id=\"tty64p-2hnnrz-k7dms-ca8pqn\" data-cel-widget=\"addOnItem_feature_div\" style=\"box-sizing: border-box; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif;\"></div><div id=\"andonCord_feature_div\" class=\"celwidget\" data-feature-name=\"andonCord\" data-csa-c-id=\"u73279-4bs4a4-g83l1p-51t9hr\" data-cel-widget=\"andonCord_feature_div\" style=\"box-sizing: border-box; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif;\"></div><div id=\"olp_feature_div\" class=\"celwidget\" data-feature-name=\"olp\" data-csa-c-id=\"o3nhhv-sqhhjg-nd991r-kqqwhe\" data-cel-widget=\"olp_feature_div\" style=\"box-sizing: border-box; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif;\"><div id=\"all-offers-display\" class=\"a-section\" style=\"box-sizing: border-box; margin: 0px; position: fixed; right: -620px; width: 602px; bottom: 0px; z-index: 290; background-color: rgb(249, 251, 251); border-width: 0px; top: 0px; box-shadow: rgba(0, 0, 0, 0.25) -4px 0px 5px; text-align: initial; font-size: 13px; color: rgb(17, 17, 17); overflow: visible !important;\"></div><span class=\"a-declarative\" data-action=\"close-all-offers-display\" data-close-all-offers-display=\"{}\" style=\"box-sizing: border-box;\"></span><div class=\"a-section a-spacing-small a-spacing-top-small\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-top: 8px !important;\"><br></div></div>', 'JET BLACK', '1TB', '479.99', NULL, 'https://www.youtube.com/embed/Hme5BhT52_U', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1690082622227227.jpg', 'public/media/product/1690082622417966.jpg', 'public/media/product/1690082622653466.png', 1, NULL, NULL),
(15, 14, 46, 22, 'Playstation 4 Slim', '0004', '20', '<strong style=\"font-weight: bold; color: rgb(34, 34, 34); font-family: Helvetica, Arial, sans-serif; font-size: 12px;\">A revamped design<br><br></strong><span style=\"color: rgb(34, 34, 34); font-family: Helvetica, Arial, sans-serif; font-size: 12px;\">Discover a revamped PlayStation console 30% smaller and lighter than the previous model and more energy efficient. The new form factor features a slanted body design and soft curved angles for a modern look that looks great in any bedroom or living room.</span><br style=\"color: rgb(34, 34, 34); font-family: Helvetica, Arial, sans-serif; font-size: 12px;\"><br style=\"color: rgb(34, 34, 34); font-family: Helvetica, Arial, sans-serif; font-size: 12px;\"><strong style=\"font-weight: bold; color: rgb(34, 34, 34); font-family: Helvetica, Arial, sans-serif; font-size: 12px;\">Realistic High Dynamic Range graphics<br><br></strong><span style=\"color: rgb(34, 34, 34); font-family: Helvetica, Arial, sans-serif; font-size: 12px;\">With High Dynamic Range (HDR) technology, graphics are better looking than ever. Experience better brightness and darkness reproduction across a wider range of colours bringing games to life. HDR-compatible TV owners will experience more realistic and striking visuals with HDR-supported games.</span><br style=\"color: rgb(34, 34, 34); font-family: Helvetica, Arial, sans-serif; font-size: 12px;\"><br style=\"color: rgb(34, 34, 34); font-family: Helvetica, Arial, sans-serif; font-size: 12px;\"><strong style=\"font-weight: bold; color: rgb(34, 34, 34); font-family: Helvetica, Arial, sans-serif; font-size: 12px;\">Room for more games<br><br></strong><span style=\"color: rgb(34, 34, 34); font-family: Helvetica, Arial, sans-serif; font-size: 12px;\">Make the most of 500 GB of storage space giving you room to store the latest PS4 games and demos available from the PlayStation Network online.</span><br style=\"color: rgb(34, 34, 34); font-family: Helvetica, Arial, sans-serif; font-size: 12px;\"><br style=\"color: rgb(34, 34, 34); font-family: Helvetica, Arial, sans-serif; font-size: 12px;\"><strong style=\"font-weight: bold; color: rgb(34, 34, 34); font-family: Helvetica, Arial, sans-serif; font-size: 12px;\">Do battle online<br><br></strong><span style=\"color: rgb(34, 34, 34); font-family: Helvetica, Arial, sans-serif; font-size: 12px;\">With a PS Plus subscription players can play the latest games online, and do battle with millions of players across the world. PS Plus members can enjoy the latest offers on the newest digital games and exclusive access to the latest game demos.</span>', 'JET BLACK', '500GB', '249.00', NULL, 'https://www.youtube.com/embed/fL5fEel7k6s', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1690082730539215.jpg', 'public/media/product/1690082730671053.jpg', 'public/media/product/1690082730725489.jpg', 1, NULL, NULL),
(16, 14, 46, 22, 'Playstation 4', '0005', '20', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 0px; margin-left: 18px; color: rgb(17, 17, 17); padding: 0px; font-family: &quot;Amazon Ember&quot;, Arial, sans-serif;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">PlayStation 4 redefines rich and immersive gameplay with powerful graphics and speed, intelligent personalisation, deeply integrated social capabilities, and innovative second-screen features</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Engage in endless personal challenges between you and your community, and share your epic moments for the world to see</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">PS4 enables the greatest game developers in the world to unlock their creativity and push the boundaries of play through a platform that is tuned specifically to their needs</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Console is the black 500GB edition, B Chassis [no longer in production]</span></li></ul>', 'JET BLACK', '500GB', '300.00', '150.00', 'https://www.youtube.com/embed/Jw8HCFZkBds', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1690082869959614.jpg', 'public/media/product/1690082870094940.jpg', 'public/media/product/1690082870137870.jpg', 1, NULL, NULL),
(17, 14, 49, 22, 'Playstation 5 DualSense', '0007', '10', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 0px; margin-left: 18px; color: rgb(17, 17, 17); padding: 0px; font-family: &quot;Amazon Ember&quot;, Arial, sans-serif;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Discover a deeper, highly immersive gaming experience with the innovative new PS5 controller, featuring haptic feedback and dynamic trigger effects</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">The DualSense wireless controller also includes a built-in microphone and create button, all integrated into an iconic, comfortable design</span></li></ul>', 'White', NULL, '58.89', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1690082961428964.jpg', 'public/media/product/1690082961677501.jpg', 'public/media/product/1690082961802868.jpg', 1, NULL, NULL),
(18, 14, 49, 22, 'Playstation 4 DualShock 4 V2', '0008', '50', '<strong style=\"font-weight: bold; color: rgb(34, 34, 34); font-family: Helvetica, Arial, sans-serif; font-size: 12px;\">Top features:&nbsp;<br><br></strong><span style=\"color: rgb(34, 34, 34); font-family: Helvetica, Arial, sans-serif; font-size: 12px;\">- Play for hours with a super comfortable ergonomic design&nbsp;</span><br style=\"color: rgb(34, 34, 34); font-family: Helvetica, Arial, sans-serif; font-size: 12px;\"><br style=\"color: rgb(34, 34, 34); font-family: Helvetica, Arial, sans-serif; font-size: 12px;\"><span style=\"color: rgb(34, 34, 34); font-family: Helvetica, Arial, sans-serif; font-size: 12px;\">- Share and upload your best gameplay videos with a SHARE Button&nbsp;</span><br style=\"color: rgb(34, 34, 34); font-family: Helvetica, Arial, sans-serif; font-size: 12px;\"><br style=\"color: rgb(34, 34, 34); font-family: Helvetica, Arial, sans-serif; font-size: 12px;\"><span style=\"color: rgb(34, 34, 34); font-family: Helvetica, Arial, sans-serif; font-size: 12px;\">- Track your position when playing PlayStation VR with an integrated light bar&nbsp;</span><br style=\"color: rgb(34, 34, 34); font-family: Helvetica, Arial, sans-serif; font-size: 12px;\"><br style=\"color: rgb(34, 34, 34); font-family: Helvetica, Arial, sans-serif; font-size: 12px;\"><span style=\"color: rgb(34, 34, 34); font-family: Helvetica, Arial, sans-serif; font-size: 12px;\">- Customise built-in speaker volume, vibrations and light bar brightness&nbsp;</span><br style=\"color: rgb(34, 34, 34); font-family: Helvetica, Arial, sans-serif; font-size: 12px;\"><br style=\"color: rgb(34, 34, 34); font-family: Helvetica, Arial, sans-serif; font-size: 12px;\"><strong style=\"font-weight: bold; color: rgb(34, 34, 34); font-family: Helvetica, Arial, sans-serif; font-size: 12px;\">Play for hours<br><br></strong><span style=\"color: rgb(34, 34, 34); font-family: Helvetica, Arial, sans-serif; font-size: 12px;\">Play your favourite PlayStation 4 games in comfort with a tried and tested ergonomic design. Comforting handgrips, and highly responsive analog sticks offer greater gameplay precision when playing the latest PS4 games solo or with multiple friends online over the PlayStation Network.</span><br style=\"color: rgb(34, 34, 34); font-family: Helvetica, Arial, sans-serif; font-size: 12px;\"><br style=\"color: rgb(34, 34, 34); font-family: Helvetica, Arial, sans-serif; font-size: 12px;\"><span style=\"color: rgb(34, 34, 34); font-family: Helvetica, Arial, sans-serif; font-size: 12px;\">Players can choose to play wirelessly using a Bluetooth connection or by using a USB cable connected to the PlayStation 4 console.</span><br style=\"color: rgb(34, 34, 34); font-family: Helvetica, Arial, sans-serif; font-size: 12px;\"><br style=\"color: rgb(34, 34, 34); font-family: Helvetica, Arial, sans-serif; font-size: 12px;\"><strong style=\"font-weight: bold; color: rgb(34, 34, 34); font-family: Helvetica, Arial, sans-serif; font-size: 12px;\">Upload gameplay videos with a SHARE Button<br><br></strong><span style=\"color: rgb(34, 34, 34); font-family: Helvetica, Arial, sans-serif; font-size: 12px;\">Share and upload your best gameplay videos for the world to see with a SHARE Button. Hitting the SHARE button lets you instantly share your best gaming moments to your favourite social networks for others to comment on and share.</span><br style=\"color: rgb(34, 34, 34); font-family: Helvetica, Arial, sans-serif; font-size: 12px;\"><br style=\"color: rgb(34, 34, 34); font-family: Helvetica, Arial, sans-serif; font-size: 12px;\"><span style=\"color: rgb(34, 34, 34); font-family: Helvetica, Arial, sans-serif; font-size: 12px;\">The SHARE button is perfect for broadcasting your perfect victory kill, first-place finish or gaming achievement. You can even stream live gameplay for others to watch as you play.</span><br style=\"color: rgb(34, 34, 34); font-family: Helvetica, Arial, sans-serif; font-size: 12px;\"><br style=\"color: rgb(34, 34, 34); font-family: Helvetica, Arial, sans-serif; font-size: 12px;\"><strong style=\"font-weight: bold; color: rgb(34, 34, 34); font-family: Helvetica, Arial, sans-serif; font-size: 12px;\">Track your position when playing PlayStation VR<br><br></strong><span style=\"color: rgb(34, 34, 34); font-family: Helvetica, Arial, sans-serif; font-size: 12px;\">The built-in touch pad offers more control options when playing, and now includes an integrated Light Bar to help the PlayStation Cameras track your hand movements while using the PlayStation VR gaming system.</span><br style=\"color: rgb(34, 34, 34); font-family: Helvetica, Arial, sans-serif; font-size: 12px;\"><br style=\"color: rgb(34, 34, 34); font-family: Helvetica, Arial, sans-serif; font-size: 12px;\"><span style=\"color: rgb(34, 34, 34); font-family: Helvetica, Arial, sans-serif; font-size: 12px;\">In certain games the Light Bar can serve an extra purpose by changing colour to indicate your health status or which number player you are when playing with others.</span><br style=\"color: rgb(34, 34, 34); font-family: Helvetica, Arial, sans-serif; font-size: 12px;\"><br style=\"color: rgb(34, 34, 34); font-family: Helvetica, Arial, sans-serif; font-size: 12px;\"><strong style=\"font-weight: bold; color: rgb(34, 34, 34); font-family: Helvetica, Arial, sans-serif; font-size: 12px;\">Adjust speaker volume, vibration and light bar brightness<br><br></strong><span style=\"color: rgb(34, 34, 34); font-family: Helvetica, Arial, sans-serif; font-size: 12px;\">A built-in mono speaker and headset jack lets you enjoy detailed, high-fidelity sound through the controller for a more personal gaming experience. Customise the gaming experience by setting the speaker volume, disable vibrations or adjusting the light bar brightness to conserve battery life.</span>', 'Black,Red,White', NULL, '44.99', NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 'public/media/product/1690083071705933.jpg', 'public/media/product/1690083071840858.jpg', 'public/media/product/1690083071959725.jpg', 1, NULL, NULL),
(19, 14, 51, 22, 'PlayStation Network Wallet Top Up £5', '999', '50', '• Choose from 1000s of PlayStation® titles, add-ons, subscriptions and more\r\n• Pre-order. Pre-load. Play\r\n• Find amazing deals on top titles\r\n• Download purchases remote', NULL, NULL, '5.00', '4.85', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1690084138268459.jpg', 'public/media/product/1690084138320180.jpg', 'public/media/product/1690084138365524.jpg', 1, NULL, NULL),
(20, 14, 51, 22, 'PlayStation Network Wallet Top Up £10', '1000', '50', '• Choose from 1000s of PlayStation® titles, add-ons, subscriptions and more\r\n• Pre-order. Pre-load. Play\r\n• Find amazing deals on top titles\r\n• Download purchases remote', NULL, NULL, '10.00', '9.85', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1690084255957538.jpg', 'public/media/product/1690084256009839.jpg', 'public/media/product/1690084256055840.jpg', 1, NULL, NULL),
(21, 14, 51, 22, 'PlayStation Network Wallet Top Up £15', '1002', '500', '• Choose from 1000s of PlayStation® titles, add-ons, subscriptions and more\r\n• Pre-order. Pre-load. Play\r\n• Find amazing deals on top titles\r\n• Download purchases remote', NULL, NULL, '15.00', '13.85', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/270121_23_36_21.jpg', 'public/media/product/1690083707586288.jpg', 'public/media/product/1690083707632353.jpg', 1, NULL, NULL),
(23, 14, 51, 22, 'PlayStation Network Wallet Top Up £20', '1003', '50', '• Choose from 1000s of PlayStation® titles, add-ons, subscriptions and more\r\n• Pre-order. Pre-load. Play\r\n• Find amazing deals on top titles\r\n• Download purchases remote', NULL, NULL, '20.00', '18.85', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1690084328256121.jpg', 'public/media/product/1690084328309461.jpg', 'public/media/product/1690084328357358.jpg', 1, NULL, NULL),
(24, 14, 51, 22, 'PlayStation Network Wallet Top Up £25', '1004', '50', '• Choose from 1000s of PlayStation® titles, add-ons, subscriptions and more\r\n• Pre-order. Pre-load. Play\r\n• Find amazing deals on top titles\r\n• Download purchases remote', NULL, NULL, '25.00', '22.85', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1690084378583680.jpg', 'public/media/product/1690084378634734.jpg', 'public/media/product/1690084378681092.jpg', 1, NULL, NULL),
(25, 14, 51, 22, 'PlayStation Network Wallet Top Up £30', '1005', '50', '• Choose from 1000s of PlayStation® titles, add-ons, subscriptions and more\r\n• Pre-order. Pre-load. Play\r\n• Find amazing deals on top titles\r\n• Download purchases remote', NULL, NULL, '30.00', '27.85', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1690084433730356.jpg', 'public/media/product/1690084433785088.jpg', 'public/media/product/1690084433831468.jpg', 1, NULL, NULL),
(26, 14, 51, 22, 'PlayStation Network Wallet Top Up £35', '1007', '50', '• Choose from 1000s of PlayStation® titles, add-ons, subscriptions and more\r\n• Pre-order. Pre-load. Play\r\n• Find amazing deals on top titles\r\n• Download purchases remote', NULL, NULL, '35.00', '30.85', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1690084471858892.jpg', 'public/media/product/1690084471912960.jpg', 'public/media/product/1690084471961983.jpg', 1, NULL, NULL),
(27, 14, 51, 22, 'PlayStation Network Wallet Top Up £40', '1008', '50', '• Choose from 1000s of PlayStation® titles, add-ons, subscriptions and more\r\n• Pre-order. Pre-load. Play\r\n• Find amazing deals on top titles\r\n• Download purchases remote', NULL, NULL, '40.00', '35.85', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1690084539168233.jpg', 'public/media/product/1690084539221096.jpg', 'public/media/product/1690084539266546.jpg', 1, NULL, NULL),
(28, 14, 51, 22, 'PlayStation Network Wallet Top Up £80', '1009', '50', '• Choose from 1000s of PlayStation® titles, add-ons, subscriptions and more\r\n• Pre-order. Pre-load. Play\r\n• Find amazing deals on top titles\r\n• Download purchases remote', NULL, NULL, '80.00', '72.85', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1690084586071647.jpg', 'public/media/product/1690084586125320.jpg', 'public/media/product/1690084586170435.jpg', 1, NULL, NULL),
(29, 14, 51, 22, 'PlayStation Network Wallet Top Up £100', '1009', '50', '• Choose from 1000s of PlayStation® titles, add-ons, subscriptions and more\r\n• Pre-order. Pre-load. Play\r\n• Find amazing deals on top titles\r\n• Download purchases remote', NULL, NULL, '100.00', '89.85', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1690084628400190.jpg', 'public/media/product/1690084628454241.jpg', 'public/media/product/1690084628498861.jpg', 1, NULL, NULL),
(30, 14, 47, 22, 'Call of Duty: Black Ops Cold War', '2000', '50', '<span style=\"color: rgb(85, 85, 85); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">The iconic Black Ops series is back with Call of Duty®: Black Ops Cold War - the direct sequel to the original and fan-favourite Call of Duty®: Black Ops.</span>', NULL, NULL, '64.99', '62.85', 'https://www.youtube.com/embed/aTS9n_m7TW0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1690084972781100.jpg', 'public/media/product/1690084972838383.jpg', 'public/media/product/1690084972882169.jpg', 1, NULL, NULL),
(31, 14, 47, 22, 'Marvel\'s Spider-Man: Miles Morales Ultimate Edition - PlayStation 5', '2001', '100', '<span style=\"box-sizing: border-box; font-weight: 700; color: rgb(85, 85, 85); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Be Greater. Be Yourself.</span><br style=\"box-sizing: border-box; color: rgb(85, 85, 85); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><br style=\"box-sizing: border-box; color: rgb(85, 85, 85); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><span style=\"color: rgb(85, 85, 85); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Experience the rise of Miles Morales as the new hero masters incredible, explosive new powers to become his own Spider-Man.</span>', NULL, NULL, '64.85', '69.99', 'https://www.youtube.com/embed/T03PxxuCfDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1690085052727503.jpg', 'public/media/product/1690085052783396.jpg', 'public/media/product/1690085052838535.jpg', 1, NULL, NULL),
(32, 14, 47, 22, 'NBA 2K21 - Playstation 5', '2002', '99', '<span style=\"color: rgb(85, 85, 85); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">NBA 2K21 is the latest release in the world-renowned, best-selling NBA 2K series. 2K21 leads the charge with next-gen innovations, while continuing to deliver an industry-leading sports video game experience on the current generation of gaming platforms.</span><br style=\"box-sizing: border-box; color: rgb(85, 85, 85); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><br style=\"box-sizing: border-box; color: rgb(85, 85, 85); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><span style=\"color: rgb(85, 85, 85); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">With extensive improvements upon its best-in-class graphics and gameplay, competitive and community online features, and deep, varied game modes, NBA 2K21 offers one-of-a-kind immersion into all facets of NBA basketball and culture - where Everything is Game.</span><br style=\"box-sizing: border-box; color: rgb(85, 85, 85); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><span style=\"color: rgb(85, 85, 85); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">&nbsp;</span>', NULL, NULL, '64.99', NULL, 'https://www.youtube.com/embed/Ib5ygUYjHZI', NULL, 1, 1, 1, 1, NULL, 1, NULL, 'public/media/product/1690085186064074.jpg', 'public/media/product/1690085186118689.jpg', 'public/media/product/1690085186161362.jpg', 1, NULL, NULL),
(33, 14, 47, 22, 'Far Cry 6', '2004', '100', '<span style=\"color: rgb(85, 85, 85); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">“Are you evil? Are you a monster?” a ruthless dictator asks his son as they watch protesters call for revolution in the streets. Anton Castillo rose to power on the promise of restoring the once-prosperous island nation of Yara back to its former glory, and plans to forge his vision of paradise by any means necessary. With his 13-year-old son Diego dutifully at his side, Anton has the future of Yara clenched tightly in his hands.</span>', NULL, NULL, '54.99', '49.85', 'https://www.youtube.com/embed/-IJuKT1mHO8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1690085330856436.jpg', 'public/media/product/1690085330930178.jpg', 'public/media/product/1690085331005685.jpg', 1, NULL, NULL),
(34, 14, 50, 22, 'Playstation Pulse', '3000', '10', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 0px; margin-left: 18px; color: rgb(17, 17, 17); padding: 0px; font-family: &quot;Amazon Ember&quot;, Arial, sans-serif;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Play in comfort with a wireless headset fine-tuned for 3D Audio on PS5 consoles</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Featuring USB Type-C charging and dual noise-cancelling microphones, you can keep the party chat flowing with crystal-clear voice capture</span></li></ul>', 'White', NULL, '89.99', NULL, 'https://www.youtube.com/embed/JvX5C82BCus', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1690085467462968.jpg', 'public/media/product/1690085467720552.jpg', 'public/media/product/1690085467864093.jpg', 1, NULL, NULL),
(35, 14, 50, 22, 'Gold Wireless Headset', '3001', '50', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 0px; margin-left: 18px; color: rgb(17, 17, 17); padding: 0px; font-family: &quot;Amazon Ember&quot;, Arial, sans-serif;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Neo versa content bundle</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">epic Neo versa outfit (only available in battle Royale and creative mode)</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">epic Neo phrenzy back bling (only available in battle Royale and creative mode)</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">2, 000 V-Bucks</span></li></ul>', 'Black', NULL, '150.00', NULL, 'https://www.youtube.com/embed/MbBipFPHOfo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1690085549155701.jpg', 'public/media/product/1690085549420539.jpg', 'public/media/product/1690085549577183.jpg', 1, NULL, NULL),
(36, 15, 52, 23, 'MICROSOFT Xbox Series S', '4000', '19', '<strong style=\"font-weight: bold; color: rgb(34, 34, 34); font-family: Helvetica, Arial, sans-serif; font-size: 12px;\">Next gen performance in the smallest Xbox yet<br><br></strong><span style=\"color: rgb(34, 34, 34); font-family: Helvetica, Arial, sans-serif; font-size: 12px;\">Experience a new generation of gaming at a lower price point with the Microsoft&nbsp;</span><strong style=\"font-weight: bold; color: rgb(34, 34, 34); font-family: Helvetica, Arial, sans-serif; font-size: 12px;\">Xbox Series S</strong><span style=\"color: rgb(34, 34, 34); font-family: Helvetica, Arial, sans-serif; font-size: 12px;\">.</span><br style=\"color: rgb(34, 34, 34); font-family: Helvetica, Arial, sans-serif; font-size: 12px;\"><br style=\"color: rgb(34, 34, 34); font-family: Helvetica, Arial, sans-serif; font-size: 12px;\"><span style=\"color: rgb(34, 34, 34); font-family: Helvetica, Arial, sans-serif; font-size: 12px;\">Nearly 60% smaller than the Xbox Series X, it\'s the tiniest Xbox ever. Yet it still delivers high frame rates up to 120 fps and speedy loading times - just what you need for intensive gaming.</span><br style=\"color: rgb(34, 34, 34); font-family: Helvetica, Arial, sans-serif; font-size: 12px;\"><br style=\"color: rgb(34, 34, 34); font-family: Helvetica, Arial, sans-serif; font-size: 12px;\"><span style=\"color: rgb(34, 34, 34); font-family: Helvetica, Arial, sans-serif; font-size: 12px;\">Play the latest releases in Quad HD at 60 fps, while the Xbox Velocity Architecture powered 512 GB custom SSD storage allows you to seamlessly switch between games.</span><br style=\"color: rgb(34, 34, 34); font-family: Helvetica, Arial, sans-serif; font-size: 12px;\"><br style=\"color: rgb(34, 34, 34); font-family: Helvetica, Arial, sans-serif; font-size: 12px;\"><strong style=\"font-weight: bold; color: rgb(34, 34, 34); font-family: Helvetica, Arial, sans-serif; font-size: 12px;\">Introducing the new Xbox Wireless Controller<br><br></strong><span style=\"color: rgb(34, 34, 34); font-family: Helvetica, Arial, sans-serif; font-size: 12px;\">With its sculptured surface and refined geometry, the new Wireless controller is a thing of beauty. Take aim with the textured grip and hybrid D-pad and share your gameplay at the click of a button. Pairing with the&nbsp;</span><strong style=\"font-weight: bold; color: rgb(34, 34, 34); font-family: Helvetica, Arial, sans-serif; font-size: 12px;\">Xbox Series S</strong><span style=\"color: rgb(34, 34, 34); font-family: Helvetica, Arial, sans-serif; font-size: 12px;\">&nbsp;in seconds, you can seamlessly switch between compatible consoles, PCs and mobile devices.</span>', 'White', '512GB', '249.00', NULL, 'https://www.youtube.com/embed/KHLfCFMKxPg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1690086010920732.jpg', 'public/media/product/1690086011064364.jpg', 'public/media/product/1690086011126133.jpg', 1, NULL, NULL),
(37, 15, 52, 23, 'MICROSOFT Xbox Series X', '4001', '49', '<h1 class=\"page-title nosp\" data-price-promise-enabled=\"\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 24px; color: rgb(34, 34, 34); width: 910px; left: 0px; padding-bottom: 0px; max-width: 645px; font-family: Helvetica, Arial, sans-serif;\"><span style=\"color: rgb(255, 255, 255); font-family: &quot;Segoe UI&quot;, SegoeUI, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 15px; white-space: pre-line; background-color: rgb(0, 0, 0);\">• Games play better than ever¹\r\n• Play on Xbox Live, the most advanced multiplayer network⁴\r\n• Works with all your Xbox One games and accessories</span><br></h1>', 'Black', '1TB', '449.99', NULL, 'https://www.youtube.com/embed/0tUqIHwHDEc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1690086222141143.png', 'public/media/product/1690086222252556.jpg', 'public/media/product/1690086222481943.jpg', 1, NULL, NULL),
(38, 15, 56, 23, 'Xbox Live Gift Card UK 50 GBP', '5000', '10', '<span style=\"color: rgb(85, 85, 85); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Buy games, movies, TV shows, music, apps and more on Xbox and Windows.** Works with Windows 10 PCs, tablets and phones, Windows 8.1, Windows Phone 8, Xbox One and Xbox 360 (Xbox Live required). Not redeemable on earlier versions. Music: Only for purchase of tracks, albums and music pass on Windows 10...</span><br style=\"box-sizing: border-box; color: rgb(85, 85, 85); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">', NULL, NULL, '50.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1690086306126105.jpg', 'public/media/product/1690086306176050.jpg', 'public/media/product/1690086306221116.jpg', 1, NULL, NULL),
(39, 15, 56, 23, 'Xbox Live Gift Card UK £10', '5001', '9', '<span style=\"color: rgb(85, 85, 85); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Buy games, movies, TV shows, music, apps and more on Xbox and Windows.** Works with Windows 10 PCs, tablets and phones, Windows 8.1, Windows Phone 8, Xbox One and Xbox 360 (Xbox Live required). Not redeemable on earlier versions. Music: Only for purchase of tracks, albums and music pass on Windows 10...</span>', NULL, NULL, '10.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1690086363810434.jpg', 'public/media/product/1690086363862041.jpg', 'public/media/product/1690086363907516.jpg', 1, NULL, NULL),
(40, 15, 54, 23, 'Official Xbox One Wireless Controller', '5004', '49', '<span style=\"color: rgb(38, 38, 38); font-family: Barlow, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Experience the enhanced comfort &amp; feel of the new Xbox Wireless Controller, with a sleek, streamlined design &amp; textured grip</span>', 'Black,White,Blue', NULL, '49.99', '44.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1690086497131969.webp', 'public/media/product/1690086497446626.webp', 'public/media/product/1690086497591897.webp', 1, NULL, NULL),
(43, 16, 57, 26, 'Just Dance 2021', '802', '10', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); padding: 0px; font-family: &quot;Amazon Ember&quot;, Arial, sans-serif;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Never miss a chance to dance 40 new must-dance songs are coming to Just Dance 2021</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Exercising has never been so fun. Start your own routine with the Sweat Mode and keep yourself motivated by tracking the calories burnt and the time spent dancing</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Dance the way you like it. Finding the perfect songs has never been so easy with our personalization possibilities</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Show the world what you’ve got. Join an enhanced World Dance Floor and compete online with other players</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">No additional accessories are required to join the fun. Just use your smartphone with the Just Dance Controller app</span></li></ul>', NULL, NULL, '28.99', NULL, 'https://www.youtube.com/watch?v=0g8_Jd49No4&ab_channel=JustDance', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'public/media/product/1.6927745646419E+15.jpg', 'public/media/product/1.6927745649209E+15.jpg', 'public/media/product/1.6927745650615E+15.jpg', 1, NULL, NULL),
(51, 23, 62, 31, 'Nintendo Switch', '660', '9', '<p class=\"p1\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 13px; line-height: normal; font-family: &quot;Helvetica Neue&quot;;\">Introducing Nintendo Switch! In addition to providing single and multiplayer thrills at home, the Nintendo Switch system also enables gamers to play the same title wherever, whenever and with whomever they choose.<span class=\"Apple-converted-space\">&nbsp; </span>The mobility of a handheld is now added to the power of a home gaming system to enable unprecedented new video game play styles.</p><p class=\"p2\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 13px; line-height: normal; font-family: &quot;Helvetica Neue&quot;; min-height: 15px;\"><br></p>', 'Red/Blue', NULL, '249.99', '200.00', 'https://www.youtube.com/embed/f5uik5fgIaI', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'public/media/product/1698130674729833.jpeg', 'public/media/product/260421_19_52_00.jpeg', 'public/media/product/1698130674984479.jpeg', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `raffles`
--

CREATE TABLE `raffles` (
  `raffle_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) NOT NULL,
  `payment_id` varchar(191) NOT NULL,
  `paying_amount` varchar(191) NOT NULL,
  `product_id` varchar(191) NOT NULL,
  `shipping` varchar(192) NOT NULL,
  `accepted` int(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `raffles`
--

INSERT INTO `raffles` (`raffle_id`, `user_id`, `payment_id`, `paying_amount`, `product_id`, `shipping`, `accepted`) VALUES
(5, '5', 'card_1IkaHPD6XdWLRroOW73Nx6NS', '1120', '12', '10', NULL),
(7, '6', 'card_1IkaJDD6XdWLRroOa3RqNiZf', '1120', '12', '10', 1),
(8, '6', 'card_1IkaJDD6CdWLRroOa3RqNiZf', '1120', '12', '10', 1),
(9, '8', 'card_1IkaMqD6XdWLRroOeQ5kU9R0', '1120', '12', '10', NULL),
(10, '8', 'card_1IkaQZD6XdWLRroOFu1K7CsU', '1120', '12', '10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `seo`
--

CREATE TABLE `seo` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_author` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_tag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `google_analytics` text COLLATE utf8mb4_unicode_ci,
  `bing_analytics` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seo`
--

INSERT INTO `seo` (`id`, `meta_title`, `meta_author`, `meta_tag`, `meta_description`, `google_analytics`, `bing_analytics`, `created_at`, `updated_at`) VALUES
(1, 'Mashop Ecommerce', 'Arian Mohajeri', 'Ecommerce Website', 'An ecommerce website made for the final year project of my University', 'MASHOP code', 'MASHOP code', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_charge` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shopname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `vat`, `shipping_charge`, `shopname`, `email`, `phone`, `address`, `logo`, `created_at`, `updated_at`) VALUES
(1, '0.2', '10', 'MASHOP', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shipping`
--

CREATE TABLE `shipping` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_postcode` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping`
--

INSERT INTO `shipping` (`id`, `order_id`, `ship_name`, `ship_phone`, `ship_email`, `ship_address`, `ship_city`, `ship_postcode`, `ship_country`, `created_at`, `updated_at`) VALUES
(1, '4', 'Arian Mohajeri', '07808284049', 'aryan_mohajeri@gmail.com', '16 Nearlands Close', 'Birmingham', 'B321RS', 'United Kingdom', NULL, NULL),
(2, '5', 'Arian', 'Mohajeri', 'aryan_mohajeri@gmail.com', '16 Nearlands Close', 'Birmingham', 'B321RS', 'United Kingdom', NULL, NULL),
(3, '6', 'arian mohajeri', '0780284049', 'aryan_mohajeri@outlook.com', '16 Nearlands Close', 'Birmingham', 'B321RS', 'United Kingdom', NULL, NULL),
(4, '19', 'Arian Mohajeri', '07808284049', 'aryan_mohajeri@outlook.com', '16 Nearlands Close', 'Birmingham', 'B32 1RS', 'United Kingdom', NULL, NULL),
(5, '20', 'Arian Mohajeri', '07808284049', 'aryan_mohajeri@outlook.com', '16 Nearlands Close', 'Birmingham', 'B32 1RS', 'United Kingdom', NULL, NULL),
(6, '21', 'Arian Mohajeri', '07808284049', 'aryan_mohajeri@outlook.com', '16 Nearlands Close', 'Birmingham', 'B32 1RS', 'United Kingdom', NULL, NULL),
(7, '22', 'Arian Mohajeri', '07808284049', 'aryan_mohajeri@outlook.com', '16 Nearlands Close', 'Birmingham', 'b32 1rs', 'United Kingdom', NULL, NULL),
(8, '24', 'dani tobole', '07808249435', 'dani@gmail.com', '1 Moz steet', 'Birmingham', 'b321rs', 'United Kingdom', NULL, NULL),
(9, '25', 'dani tobole', '07808249435', 'dani@gmail.com', '1 Moz steet', 'Birmingham', 'b321rs', 'United Kingdom', NULL, NULL),
(10, '26', 'dani tobole', '07808249435', 'dani@gmail.com', '1 Moz steet', 'Birmingham', 'b321rs', 'United Kingdom', NULL, NULL),
(11, '27', 'dani tobole', '07808249435', 'dani@gmail.com', '1 Moz steet', 'Birmingham', 'b321rs', 'United Kingdom', NULL, NULL),
(12, '30', 'Arian Mohajeri', '07808284049', 'aryan_mohajeri@outlook.com', '16 Nearlands Close', 'Birmingham', 'B32 1RS', 'United Kingdom', NULL, NULL),
(13, '28', 'Arian Mohajeri', '07808284049', 'aryan_mohajeri@outlook.com', '16 Nearlands Close', 'Birmingham', 'B32 1RS', 'United Kingdom', NULL, NULL),
(14, '31', 'Arian Mohajeri', '07808284049', 'aryan@gmail.com', '1 moz street', 'brum', 'b321rs', 'United Kingdom', NULL, NULL),
(15, '32', 'aryan_mohajeri@outlook.com', '07808284049', 'aryan_mohajeri@outlook.com', '16 Nearlands Close', 'Birmingham', 'B32 1RS', 'United Kingdom', NULL, NULL),
(16, '1', 'Arian Mohajeri', '07808284049', 'aryan_mohajeri@outlook.com', '16 Nearlands Close', 'Birmingham', 'B32 1RS', 'United Kingdom', NULL, NULL),
(17, '3', 'Dani tobole', '07808284049', 'dani_tobole12@outlook.com', '16 nearlands close', 'birmingham', 'b321rs', 'United Kingdom', NULL, NULL),
(18, '2', 'sri', '0780245', 'ad22min@gmail.com', '13 moz stereet', 'birm', 'b32 1rs', 'United Kingdom', NULL, NULL),
(19, '7', 'aryan', '07718294573', 'aryanmohajeri@outlook.com', '23 moz street', 'birming', 'b663uz', 'United Kingdom', NULL, NULL),
(20, '1', 'Arian mohajeri', '07808284049', 'aryan_mohajeri@outlook.com', '16 Nearlands close', 'Birmingham', 'B321rs', 'United Kingdom', NULL, NULL),
(21, '1', 'Arian mohajeri', '07808284049', 'aryan@gmail.com', '1 aston street', 'Birmingham', 'B47ET', 'United Kingdom', NULL, NULL),
(22, '2', 'Arian Mohajeri', '07808284049', 'aryan@gmail.com', '1 Aston Street', 'Birmingham', 'B321RS', 'United Kingdom', NULL, NULL),
(23, '3', 'Arian Mohajeri', '07808284049', 'aryan@gmail.com', '1 Aston Street', 'Birmingham', 'B1 2BA', 'United Kingdom', NULL, NULL),
(24, '1', 'Arian mohajeri', '07808284049', 'aryan@gmail.com', '16 Nearlands Close', 'Birmingham', 'B32 1RS', 'United Kingdom', NULL, NULL),
(25, '4', 'Dani Tobole', '07808284013', 'dani_tobole12@outlook.com', '1 Aston street', 'birmingham', 'b321rw', 'United Kingdom', NULL, NULL),
(26, '5', 'arian mohaj', '078021429184', 'aryan_mohajeri@outlook.com', '1 nearlands close', 'birmingham', 'b321rs', 'United Kingdom', NULL, NULL),
(27, '2', 'danial tobole', '07808284012', 'dani@gmail.com', '1 moz street', 'london', 'sw31an', 'United Kingdom', NULL, NULL),
(28, '6', 'jack jones', '0780324324', 'jack@gmail.com', '2 manchester street', 'manchester', 'mn24da', 'United Kingdom', NULL, NULL),
(29, '3', 'Arian Mohajeri', '07808284049', 'aryan_mohajeri@outlook.com', '16 nearlands close', 'birmingham', 'b321rs', 'United Kingdom', NULL, NULL),
(30, '7', 'Arian Mohajeri', '078028484049', 'arian@gmail.com', '16 nearalands close', 'birmingham', 'b321rs', 'United Kingdom', NULL, NULL),
(31, '3', 'arian mohajeri', '07808284049', 'aryan_mohajeri@outlook.com', '16 near lands close,', 'birmingham', 'b321rs', 'United Kingdom', NULL, NULL),
(32, '4', 'dani tobole', '07808248124', 'dani1@gmail.com', '16 nearlands close', 'birmingham', 'b321rs', 'United Kingdom', NULL, NULL),
(33, '5', 'Arian mohaejri', '07808284049', 'aryan_mohajeri@outlook.com', '16 nearlands close', 'birmingham', 'b321rf', 'United Kingdom', NULL, NULL),
(34, '6', 'dani tobole', '07834824373', 'dani@gmail.com', '15 nearlands close', 'birmingham', 'b321ts', 'United Kingdom', NULL, NULL),
(35, '9', 'dani tobole', '0837248784', 'dani@gmail.com', '15 nearlands close', 'birmingham', 'b321rs', 'United Kingdom', NULL, NULL),
(36, '10', 'melika tagh', '047854785', 'melika@gmail.com', '16 nealrands close', 'birmingham', 'b322rs', 'United Kingdom', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shoppingcart`
--

CREATE TABLE `shoppingcart` (
  `identifier` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sitesetting`
--

CREATE TABLE `sitesetting` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone_one` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_two` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sitesetting`
--

INSERT INTO `sitesetting` (`id`, `phone_one`, `phone_two`, `email`, `company_name`, `company_address`, `facebook`, `youtube`, `instagram`, `twitter`, `created_at`, `updated_at`) VALUES
(1, '+447808284049', '+447808284050', 'Mashoptech@gmail.com', 'MASHOP', 'Aston St, Birmingham B4 7ET', '@MASHOP', '@MASHOP', '@MASHOP', '@MASHOP', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `subcategory_name`, `created_at`, `updated_at`) VALUES
(46, 14, 'Consoles', NULL, NULL),
(47, 14, 'Games', NULL, NULL),
(49, 14, 'Controllers', NULL, NULL),
(50, 14, 'Headsets', NULL, NULL),
(51, 14, 'Playstation Network', NULL, NULL),
(52, 15, 'Consoles', NULL, NULL),
(53, 15, 'Games', NULL, NULL),
(54, 15, 'Controllers', NULL, NULL),
(55, 15, 'Headsets', NULL, NULL),
(56, 15, 'Xbox Live', NULL, NULL),
(57, 16, 'Nintendo Items', NULL, NULL),
(58, 19, 'Air maxes', NULL, NULL),
(61, 21, 'Consoles', NULL, NULL),
(62, 23, 'Consoles', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `email`, `provider`, `provider_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(5, 'Arian Mohajeri', '07808284049', 'aryan@gmail.com', NULL, NULL, NULL, '$2y$10$.iWfpjE5g1hYTJHOzjsxtukxd./OOy1tZ8auFhoUT4JKln.GRCyuG', NULL, '2021-04-26 13:19:42', '2021-04-26 13:19:42'),
(8, 'dani tobole', '078083434432', 'dani@gmail.com', NULL, NULL, NULL, '$2y$10$jPJV4JeH5nKYNRe0O/pV0.EjAK/HRPoFDrTvxgl8gHdxrWQT3f/vm', NULL, '2021-04-26 18:40:34', '2021-04-26 18:40:34');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(6, 5, 12, NULL, NULL),
(7, 5, 43, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_details`
--
ALTER TABLE `orders_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_category`
--
ALTER TABLE `post_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `raffles`
--
ALTER TABLE `raffles`
  ADD PRIMARY KEY (`raffle_id`);

--
-- Indexes for table `seo`
--
ALTER TABLE `seo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping`
--
ALTER TABLE `shipping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shoppingcart`
--
ALTER TABLE `shoppingcart`
  ADD PRIMARY KEY (`identifier`,`instance`);

--
-- Indexes for table `sitesetting`
--
ALTER TABLE `sitesetting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders_details`
--
ALTER TABLE `orders_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `post_category`
--
ALTER TABLE `post_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `raffles`
--
ALTER TABLE `raffles`
  MODIFY `raffle_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `seo`
--
ALTER TABLE `seo`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shipping`
--
ALTER TABLE `shipping`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `sitesetting`
--
ALTER TABLE `sitesetting`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
