-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 14, 2024 at 01:44 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_online_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Apple', 'apple', 1, '2024-08-17 12:01:00', '2024-08-17 12:01:00'),
(2, 'Samsung', 'samsung', 1, '2024-08-17 12:01:12', '2024-08-17 12:01:12'),
(3, 'Canon', 'canon', 1, '2024-08-17 12:01:25', '2024-08-17 12:01:25'),
(4, 'Vivo', 'vivo', 1, '2024-08-17 12:01:42', '2024-08-17 12:01:42'),
(5, 'Infinix', 'infinix', 1, '2024-08-17 12:01:54', '2024-08-17 12:01:54'),
(6, 'Gucci', 'gucci', 1, '2024-08-17 12:04:18', '2024-08-17 12:04:18'),
(7, 'Nike', 'nike', 1, '2024-08-17 12:04:29', '2024-08-17 12:04:29'),
(8, 'Bata', 'bata', 1, '2024-08-17 12:04:39', '2024-08-17 12:04:39'),
(9, 'Service', 'service', 1, '2024-08-17 12:04:53', '2024-08-17 12:04:53');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `showHome` enum('Yes','No') NOT NULL DEFAULT 'No',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `image`, `status`, `showHome`, `created_at`, `updated_at`) VALUES
(2, 'Fashion', 'fashion', '2.jpg', 1, 'Yes', '2024-08-17 11:38:53', '2024-08-18 13:18:40'),
(3, 'Furniture', 'furniture', '3.jpg', 1, 'Yes', '2024-08-17 11:43:08', '2024-08-18 13:18:30'),
(4, 'Food', 'food', '4.jfif', 1, 'Yes', '2024-08-17 11:45:35', '2024-09-02 05:07:08'),
(7, 'Electronics', 'electronics', '7.jpg', 1, 'No', '2024-09-02 03:30:10', '2024-09-04 06:32:53');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'United States', 'US', NULL, NULL),
(2, 'Canada', 'CA', NULL, NULL),
(3, 'Afghanistan', 'AF', NULL, NULL),
(4, 'Albania', 'AL', NULL, NULL),
(5, 'Algeria', 'DZ', NULL, NULL),
(6, 'American Samoa', 'AS', NULL, NULL),
(7, 'Andorra', 'AD', NULL, NULL),
(8, 'Angola', 'AO', NULL, NULL),
(9, 'Anguilla', 'AI', NULL, NULL),
(10, 'Antarctica', 'AQ', NULL, NULL),
(11, 'Antigua and/or Barbuda', 'AG', NULL, NULL),
(12, 'Argentina', 'AR', NULL, NULL),
(13, 'Armenia', 'AM', NULL, NULL),
(14, 'Aruba', 'AW', NULL, NULL),
(15, 'Australia', 'AU', NULL, NULL),
(16, 'Austria', 'AT', NULL, NULL),
(17, 'Azerbaijan', 'AZ', NULL, NULL),
(18, 'Bahamas', 'BS', NULL, NULL),
(19, 'Bahrain', 'BH', NULL, NULL),
(20, 'Bangladesh', 'BD', NULL, NULL),
(21, 'Barbados', 'BB', NULL, NULL),
(22, 'Belarus', 'BY', NULL, NULL),
(23, 'Belgium', 'BE', NULL, NULL),
(24, 'Belize', 'BZ', NULL, NULL),
(25, 'Benin', 'BJ', NULL, NULL),
(26, 'Bermuda', 'BM', NULL, NULL),
(27, 'Bhutan', 'BT', NULL, NULL),
(28, 'Bolivia', 'BO', NULL, NULL),
(29, 'Bosnia and Herzegovina', 'BA', NULL, NULL),
(30, 'Botswana', 'BW', NULL, NULL),
(31, 'Bouvet Island', 'BV', NULL, NULL),
(32, 'Brazil', 'BR', NULL, NULL),
(33, 'British lndian Ocean Territory', 'IO', NULL, NULL),
(34, 'Brunei Darussalam', 'BN', NULL, NULL),
(35, 'Bulgaria', 'BG', NULL, NULL),
(36, 'Burkina Faso', 'BF', NULL, NULL),
(37, 'Burundi', 'BI', NULL, NULL),
(38, 'Cambodia', 'KH', NULL, NULL),
(39, 'Cameroon', 'CM', NULL, NULL),
(40, 'Cape Verde', 'CV', NULL, NULL),
(41, 'Cayman Islands', 'KY', NULL, NULL),
(42, 'Central African Republic', 'CF', NULL, NULL),
(43, 'Chad', 'TD', NULL, NULL),
(44, 'Chile', 'CL', NULL, NULL),
(45, 'China', 'CN', NULL, NULL),
(46, 'Christmas Island', 'CX', NULL, NULL),
(47, 'Cocos (Keeling) Islands', 'CC', NULL, NULL),
(48, 'Colombia', 'CO', NULL, NULL),
(49, 'Comoros', 'KM', NULL, NULL),
(50, 'Congo', 'CG', NULL, NULL),
(51, 'Cook Islands', 'CK', NULL, NULL),
(52, 'Costa Rica', 'CR', NULL, NULL),
(53, 'Croatia (Hrvatska)', 'HR', NULL, NULL),
(54, 'Cuba', 'CU', NULL, NULL),
(55, 'Cyprus', 'CY', NULL, NULL),
(56, 'Czech Republic', 'CZ', NULL, NULL),
(57, 'Democratic Republic of Congo', 'CD', NULL, NULL),
(58, 'Denmark', 'DK', NULL, NULL),
(59, 'Djibouti', 'DJ', NULL, NULL),
(60, 'Dominica', 'DM', NULL, NULL),
(61, 'Dominican Republic', 'DO', NULL, NULL),
(62, 'East Timor', 'TP', NULL, NULL),
(63, 'Ecudaor', 'EC', NULL, NULL),
(64, 'Egypt', 'EG', NULL, NULL),
(65, 'El Salvador', 'SV', NULL, NULL),
(66, 'Equatorial Guinea', 'GQ', NULL, NULL),
(67, 'Eritrea', 'ER', NULL, NULL),
(68, 'Estonia', 'EE', NULL, NULL),
(69, 'Ethiopia', 'ET', NULL, NULL),
(70, 'Falkland Islands (Malvinas)', 'FK', NULL, NULL),
(71, 'Faroe Islands', 'FO', NULL, NULL),
(72, 'Fiji', 'FJ', NULL, NULL),
(73, 'Finland', 'FI', NULL, NULL),
(74, 'France', 'FR', NULL, NULL),
(75, 'France, Metropolitan', 'FX', NULL, NULL),
(76, 'French Guiana', 'GF', NULL, NULL),
(77, 'French Polynesia', 'PF', NULL, NULL),
(78, 'French Southern Territories', 'TF', NULL, NULL),
(79, 'Gabon', 'GA', NULL, NULL),
(80, 'Gambia', 'GM', NULL, NULL),
(81, 'Georgia', 'GE', NULL, NULL),
(82, 'Germany', 'DE', NULL, NULL),
(83, 'Ghana', 'GH', NULL, NULL),
(84, 'Gibraltar', 'GI', NULL, NULL),
(85, 'Greece', 'GR', NULL, NULL),
(86, 'Greenland', 'GL', NULL, NULL),
(87, 'Grenada', 'GD', NULL, NULL),
(88, 'Guadeloupe', 'GP', NULL, NULL),
(89, 'Guam', 'GU', NULL, NULL),
(90, 'Guatemala', 'GT', NULL, NULL),
(91, 'Guinea', 'GN', NULL, NULL),
(92, 'Guinea-Bissau', 'GW', NULL, NULL),
(93, 'Guyana', 'GY', NULL, NULL),
(94, 'Haiti', 'HT', NULL, NULL),
(95, 'Heard and Mc Donald Islands', 'HM', NULL, NULL),
(96, 'Honduras', 'HN', NULL, NULL),
(97, 'Hong Kong', 'HK', NULL, NULL),
(98, 'Hungary', 'HU', NULL, NULL),
(99, 'Iceland', 'IS', NULL, NULL),
(100, 'India', 'IN', NULL, NULL),
(101, 'Indonesia', 'ID', NULL, NULL),
(102, 'Iran (Islamic Republic of)', 'IR', NULL, NULL),
(103, 'Iraq', 'IQ', NULL, NULL),
(104, 'Ireland', 'IE', NULL, NULL),
(105, 'Israel', 'IL', NULL, NULL),
(106, 'Italy', 'IT', NULL, NULL),
(107, 'Ivory Coast', 'CI', NULL, NULL),
(108, 'Jamaica', 'JM', NULL, NULL),
(109, 'Japan', 'JP', NULL, NULL),
(110, 'Jordan', 'JO', NULL, NULL),
(111, 'Kazakhstan', 'KZ', NULL, NULL),
(112, 'Kenya', 'KE', NULL, NULL),
(113, 'Kiribati', 'KI', NULL, NULL),
(114, 'Korea, Democratic People\'s Republic of', 'KP', NULL, NULL),
(115, 'Korea, Republic of', 'KR', NULL, NULL),
(116, 'Kuwait', 'KW', NULL, NULL),
(117, 'Kyrgyzstan', 'KG', NULL, NULL),
(118, 'Lao People\'s Democratic Republic', 'LA', NULL, NULL),
(119, 'Latvia', 'LV', NULL, NULL),
(120, 'Lebanon', 'LB', NULL, NULL),
(121, 'Lesotho', 'LS', NULL, NULL),
(122, 'Liberia', 'LR', NULL, NULL),
(123, 'Libyan Arab Jamahiriya', 'LY', NULL, NULL),
(124, 'Liechtenstein', 'LI', NULL, NULL),
(125, 'Lithuania', 'LT', NULL, NULL),
(126, 'Luxembourg', 'LU', NULL, NULL),
(127, 'Macau', 'MO', NULL, NULL),
(128, 'Macedonia', 'MK', NULL, NULL),
(129, 'Madagascar', 'MG', NULL, NULL),
(130, 'Malawi', 'MW', NULL, NULL),
(131, 'Malaysia', 'MY', NULL, NULL),
(132, 'Maldives', 'MV', NULL, NULL),
(133, 'Mali', 'ML', NULL, NULL),
(134, 'Malta', 'MT', NULL, NULL),
(135, 'Marshall Islands', 'MH', NULL, NULL),
(136, 'Martinique', 'MQ', NULL, NULL),
(137, 'Mauritania', 'MR', NULL, NULL),
(138, 'Mauritius', 'MU', NULL, NULL),
(139, 'Mayotte', 'TY', NULL, NULL),
(140, 'Mexico', 'MX', NULL, NULL),
(141, 'Micronesia, Federated States of', 'FM', NULL, NULL),
(142, 'Moldova, Republic of', 'MD', NULL, NULL),
(143, 'Monaco', 'MC', NULL, NULL),
(144, 'Mongolia', 'MN', NULL, NULL),
(145, 'Montserrat', 'MS', NULL, NULL),
(146, 'Morocco', 'MA', NULL, NULL),
(147, 'Mozambique', 'MZ', NULL, NULL),
(148, 'Myanmar', 'MM', NULL, NULL),
(149, 'Namibia', 'NA', NULL, NULL),
(150, 'Nauru', 'NR', NULL, NULL),
(151, 'Nepal', 'NP', NULL, NULL),
(152, 'Netherlands', 'NL', NULL, NULL),
(153, 'Netherlands Antilles', 'AN', NULL, NULL),
(154, 'New Caledonia', 'NC', NULL, NULL),
(155, 'New Zealand', 'NZ', NULL, NULL),
(156, 'Nicaragua', 'NI', NULL, NULL),
(157, 'Niger', 'NE', NULL, NULL),
(158, 'Nigeria', 'NG', NULL, NULL),
(159, 'Niue', 'NU', NULL, NULL),
(160, 'Norfork Island', 'NF', NULL, NULL),
(161, 'Northern Mariana Islands', 'MP', NULL, NULL),
(162, 'Norway', 'NO', NULL, NULL),
(163, 'Oman', 'OM', NULL, NULL),
(164, 'Pakistan', 'PK', NULL, NULL),
(165, 'Palau', 'PW', NULL, NULL),
(166, 'Panama', 'PA', NULL, NULL),
(167, 'Papua New Guinea', 'PG', NULL, NULL),
(168, 'Paraguay', 'PY', NULL, NULL),
(169, 'Peru', 'PE', NULL, NULL),
(170, 'Philippines', 'PH', NULL, NULL),
(171, 'Pitcairn', 'PN', NULL, NULL),
(172, 'Poland', 'PL', NULL, NULL),
(173, 'Portugal', 'PT', NULL, NULL),
(174, 'Puerto Rico', 'PR', NULL, NULL),
(175, 'Qatar', 'QA', NULL, NULL),
(176, 'Republic of South Sudan', 'SS', NULL, NULL),
(177, 'Reunion', 'RE', NULL, NULL),
(178, 'Romania', 'RO', NULL, NULL),
(179, 'Russian Federation', 'RU', NULL, NULL),
(180, 'Rwanda', 'RW', NULL, NULL),
(181, 'Saint Kitts and Nevis', 'KN', NULL, NULL),
(182, 'Saint Lucia', 'LC', NULL, NULL),
(183, 'Saint Vincent and the Grenadines', 'VC', NULL, NULL),
(184, 'Samoa', 'WS', NULL, NULL),
(185, 'San Marino', 'SM', NULL, NULL),
(186, 'Sao Tome and Principe', 'ST', NULL, NULL),
(187, 'Saudi Arabia', 'SA', NULL, NULL),
(188, 'Senegal', 'SN', NULL, NULL),
(189, 'Serbia', 'RS', NULL, NULL),
(190, 'Seychelles', 'SC', NULL, NULL),
(191, 'Sierra Leone', 'SL', NULL, NULL),
(192, 'Singapore', 'SG', NULL, NULL),
(193, 'Slovakia', 'SK', NULL, NULL),
(194, 'Slovenia', 'SI', NULL, NULL),
(195, 'Solomon Islands', 'SB', NULL, NULL),
(196, 'Somalia', 'SO', NULL, NULL),
(197, 'South Africa', 'ZA', NULL, NULL),
(198, 'South Georgia South Sandwich Islands', 'GS', NULL, NULL),
(199, 'Spain', 'ES', NULL, NULL),
(200, 'Sri Lanka', 'LK', NULL, NULL),
(201, 'St. Helena', 'SH', NULL, NULL),
(202, 'St. Pierre and Miquelon', 'PM', NULL, NULL),
(203, 'Sudan', 'SD', NULL, NULL),
(204, 'Suriname', 'SR', NULL, NULL),
(205, 'Svalbarn and Jan Mayen Islands', 'SJ', NULL, NULL),
(206, 'Swaziland', 'SZ', NULL, NULL),
(207, 'Sweden', 'SE', NULL, NULL),
(208, 'Switzerland', 'CH', NULL, NULL),
(209, 'Syrian Arab Republic', 'SY', NULL, NULL),
(210, 'Taiwan', 'TW', NULL, NULL),
(211, 'Tajikistan', 'TJ', NULL, NULL),
(212, 'Tanzania, United Republic of', 'TZ', NULL, NULL),
(213, 'Thailand', 'TH', NULL, NULL),
(214, 'Togo', 'TG', NULL, NULL),
(215, 'Tokelau', 'TK', NULL, NULL),
(216, 'Tonga', 'TO', NULL, NULL),
(217, 'Trinidad and Tobago', 'TT', NULL, NULL),
(218, 'Tunisia', 'TN', NULL, NULL),
(219, 'Turkey', 'TR', NULL, NULL),
(220, 'Turkmenistan', 'TM', NULL, NULL),
(221, 'Turks and Caicos Islands', 'TC', NULL, NULL),
(222, 'Tuvalu', 'TV', NULL, NULL),
(223, 'Uganda', 'UG', NULL, NULL),
(224, 'Ukraine', 'UA', NULL, NULL),
(225, 'United Arab Emirates', 'AE', NULL, NULL),
(226, 'United Kingdom', 'GB', NULL, NULL),
(227, 'United States minor outlying islands', 'UM', NULL, NULL),
(228, 'Uruguay', 'UY', NULL, NULL),
(229, 'Uzbekistan', 'UZ', NULL, NULL),
(230, 'Vanuatu', 'VU', NULL, NULL),
(231, 'Vatican City State', 'VA', NULL, NULL),
(232, 'Venezuela', 'VE', NULL, NULL),
(233, 'Vietnam', 'VN', NULL, NULL),
(234, 'Virgin Islands (British)', 'VG', NULL, NULL),
(235, 'Virgin Islands (U.S.)', 'VI', NULL, NULL),
(236, 'Wallis and Futuna Islands', 'WF', NULL, NULL),
(237, 'Western Sahara', 'EH', NULL, NULL),
(238, 'Yemen', 'YE', NULL, NULL),
(239, 'Yugoslavia', 'YU', NULL, NULL),
(240, 'Zaire', 'ZR', NULL, NULL),
(241, 'Zambia', 'ZM', NULL, NULL),
(242, 'Zimbabwe', 'ZW', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_addresses`
--

CREATE TABLE `customer_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `address` text NOT NULL,
  `appartment` varchar(255) DEFAULT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_addresses`
--

INSERT INTO `customer_addresses` (`id`, `user_id`, `first_name`, `last_name`, `email`, `mobile`, `country_id`, `address`, `appartment`, `city`, `state`, `zip`, `created_at`, `updated_at`) VALUES
(1, 4, 'Muhammad', 'Afridi', 'dddd@gmail.com', '1122334455', 164, '1 Peshawar KPK Dummy Address Dummy Address Dummy Address Dummy Address Dummy Address Dummy Address Dummy Address Dummy Address', '12345678910', 'Peshawar', 'KPK', '001122', '2024-08-21 15:24:34', '2024-08-26 13:30:40'),
(3, 3, 'ABC', 'DEF', 'abc@example.com', '6786767676', 164, 'Dummy Address Dummy Address Dummy Address Dummy Address Dummy Address Dummy Address Dummy Address Dummy Address Dummy Address', NULL, 'Ras Ul Khima', 'Ajman', '001122', '2024-08-24 16:14:41', '2024-08-24 16:14:41'),
(4, 1, 'Afridi', 'Admin', 'admin@example.com', '121212121212', 164, 'Dara Adam Khel, Federally Administrated Tribal Area', 'Sheraki', 'Kohat', 'KPK', '225533', '2024-08-26 13:34:29', '2024-08-26 13:47:13');

-- --------------------------------------------------------

--
-- Table structure for table `discount_coupons`
--

CREATE TABLE `discount_coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `max_uses` int(11) DEFAULT NULL,
  `max_uses_user` int(11) DEFAULT NULL,
  `type` enum('fixed','percent') NOT NULL DEFAULT 'fixed',
  `discount_amount` double(10,2) NOT NULL,
  `min_amount` double(10,2) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `starts_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discount_coupons`
--

INSERT INTO `discount_coupons` (`id`, `code`, `name`, `description`, `max_uses`, `max_uses_user`, `type`, `discount_amount`, `min_amount`, `status`, `starts_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(5, 'IND300', 'Dummy Name 30', NULL, 10, 3, 'percent', 10.00, 500.00, 1, '2024-08-23 22:00:00', '2024-08-31 00:00:09', '2024-08-24 01:26:14', '2024-08-24 05:08:13'),
(6, 'IND2020', 'INDIA', NULL, 10, 1, 'fixed', 10.00, NULL, 1, '2024-08-23 22:00:32', '2024-08-30 07:02:35', '2024-08-24 02:02:39', '2024-08-24 02:15:33');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_08_13_114358_alter_users_table', 1),
(6, '2024_08_13_195319_create_categories_table', 1),
(7, '2024_08_14_105642_create_temp_images_table', 1),
(8, '2024_08_14_184000_create_sub_categories_table', 1),
(9, '2024_08_15_054816_create_brands_table', 1),
(10, '2024_08_15_073553_create_products_table', 1),
(11, '2024_08_15_073632_create_product_images_table', 1),
(12, '2024_08_18_105654_alter_categories_table', 2),
(13, '2024_08_18_120253_alter_products_table', 3),
(14, '2024_08_18_120808_alter_sub_categories_table', 3),
(15, '2024_08_20_095134_alter_products_table', 4),
(16, '2024_08_21_085235_alter_users_table', 5),
(17, '2024_08_21_182505_create_countries_table', 6),
(18, '2024_08_21_190635_create_orders_table', 7),
(19, '2024_08_21_190733_create_order_items_table', 7),
(20, '2024_08_21_190840_create_customer_addresses_table', 7),
(21, '2024_08_22_093458_create_shipping_charges_table', 8),
(22, '2024_08_23_180306_create_discount_coupons_table', 9),
(24, '2024_08_24_085942_alter_orders_table', 10),
(25, '2024_08_24_190455_alter_orders_table', 11),
(27, '2024_08_25_095251_alter_orders_table', 12),
(28, '2024_08_25_185941_create_wishlists_table', 13),
(29, '2024_08_28_101224_alter_users_table', 14),
(30, '2024_08_28_161832_create_pages_table', 15),
(31, '2024_08_29_191209_create_product_ratings_table', 16);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `subtotal` double(10,2) NOT NULL,
  `shipping` double(10,2) NOT NULL,
  `coupon_code` varchar(255) DEFAULT NULL,
  `coupon_code_id` int(11) DEFAULT NULL,
  `discount` double(10,2) DEFAULT NULL,
  `grand_total` double(10,2) NOT NULL,
  `payment_status` enum('paid','not paid') NOT NULL DEFAULT 'not paid',
  `status` enum('pending','shipped','delivered','cancelled') NOT NULL DEFAULT 'pending',
  `shipped_date` timestamp NULL DEFAULT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `address` text NOT NULL,
  `appartment` varchar(255) DEFAULT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `subtotal`, `shipping`, `coupon_code`, `coupon_code_id`, `discount`, `grand_total`, `payment_status`, `status`, `shipped_date`, `first_name`, `last_name`, `email`, `mobile`, `country_id`, `address`, `appartment`, `city`, `state`, `zip`, `notes`, `created_at`, `updated_at`) VALUES
(6, 4, 100.00, 0.00, NULL, NULL, NULL, 100.00, 'not paid', 'pending', NULL, 'Muhammad', 'Afridi', 'dddd@gmail.com', '1122334455', 164, 'Peshawar KPK Dummy Address Dummy Address Dummy Address Dummy Address Dummy Address Dummy Address Dummy Address Dummy Address', '12345678910', 'Peshawar', 'KPK', '001122', NULL, '2024-08-21 16:59:25', '2024-08-21 16:59:25'),
(7, 4, 435.00, 100.00, NULL, NULL, NULL, 535.00, 'not paid', 'pending', NULL, 'Muhammad', 'Afridi', 'dddd@gmail.com', '1122334455', 74, 'Peshawar KPK Dummy Address Dummy Address Dummy Address Dummy Address Dummy Address Dummy Address Dummy Address Dummy Address', '12345678910', 'Peshawar', 'KPK', '001122', NULL, '2024-08-22 14:41:03', '2024-08-22 14:41:03'),
(9, 4, 90.00, 50.00, NULL, NULL, NULL, 140.00, 'not paid', 'delivered', NULL, 'Muhammad', 'Afridi', 'dddd@gmail.com', '1122334455', 74, 'Peshawar KPK Dummy Address Dummy Address Dummy Address Dummy Address Dummy Address Dummy Address Dummy Address Dummy Address', '12345678910', 'Peshawar', 'KPK', '001122', NULL, '2024-08-24 03:21:50', '2024-08-24 03:21:50'),
(10, 4, 90.00, 50.00, 'IND300', 5, 9.00, 131.00, 'not paid', 'shipped', NULL, 'Muhammad', 'Afridi', 'dddd@gmail.com', '1122334455', 74, 'Peshawar KPK Dummy Address Dummy Address Dummy Address Dummy Address Dummy Address Dummy Address Dummy Address Dummy Address', '12345678910', 'Peshawar', 'KPK', '001122', NULL, '2024-08-24 04:04:47', '2024-08-24 04:04:47'),
(11, 4, 2978.00, 250.00, 'IND300', 5, 297.80, 2930.20, 'not paid', 'pending', NULL, 'Muhammad', 'Afridi', 'dddd@gmail.com', '1122334455', 164, 'Peshawar KPK Dummy Address Dummy Address Dummy Address Dummy Address Dummy Address Dummy Address Dummy Address Dummy Address', '12345678910', 'Peshawar', 'KPK', '001122', NULL, '2024-08-24 15:05:16', '2024-08-24 15:05:16'),
(12, 3, 90.00, 50.00, '', NULL, 0.00, 140.00, 'not paid', 'cancelled', '2024-08-26 10:23:40', 'ABC', 'DEF', 'abc@example.com', '6786767676', 164, 'Dummy Address Dummy Address Dummy Address Dummy Address Dummy Address Dummy Address Dummy Address Dummy Address Dummy Address', NULL, 'Ras Ul Khima', 'Ajman', '001122', NULL, '2024-08-24 16:14:42', '2024-08-25 05:41:37'),
(14, 4, 180.00, 100.00, '', NULL, 0.00, 280.00, 'not paid', 'pending', NULL, 'Muhammad', 'Afridi', 'dddd@gmail.com', '1122334455', 164, 'Peshawar KPK Dummy Address Dummy Address Dummy Address Dummy Address Dummy Address Dummy Address Dummy Address Dummy Address', '12345678910', 'Peshawar', 'KPK', '001122', NULL, '2024-08-26 06:30:23', '2024-08-26 06:30:23'),
(15, 4, 270.00, 150.00, '', NULL, 0.00, 420.00, 'not paid', 'pending', NULL, 'Muhammad', 'Afridi', 'dddd@gmail.com', '1122334455', 164, 'Peshawar KPK Dummy Address Dummy Address Dummy Address Dummy Address Dummy Address Dummy Address Dummy Address Dummy Address', '12345678910', 'Peshawar', 'KPK', '001122', NULL, '2024-08-26 06:36:41', '2024-08-26 06:36:41'),
(16, 4, 500.00, 50.00, '', NULL, 0.00, 550.00, 'not paid', 'delivered', NULL, 'Muhammad', 'Afridi', 'dddd@gmail.com', '1122334455', 164, '1 Peshawar KPK Dummy Address Dummy Address Dummy Address Dummy Address Dummy Address Dummy Address Dummy Address Dummy Address', '12345678910', 'Peshawar', 'KPK', '001122', NULL, '2024-09-03 04:36:10', '2024-09-04 06:41:11');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` double(10,2) NOT NULL,
  `total` double(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `name`, `qty`, `price`, `total`, `created_at`, `updated_at`) VALUES
(14, 9, 74, 'The 7 Habits of Highly Effective People: Powerful Lessons in Personal Change', 1, 90.00, 90.00, '2024-08-24 03:21:50', '2024-08-24 03:21:50'),
(15, 10, 74, 'The 7 Habits of Highly Effective People: Powerful Lessons in Personal Change', 1, 90.00, 90.00, '2024-08-24 04:04:47', '2024-08-24 04:04:47'),
(16, 11, 74, 'The 7 Habits of Highly Effective People: Powerful Lessons in Personal Change', 1, 90.00, 90.00, '2024-08-24 15:05:16', '2024-08-24 15:05:16'),
(20, 12, 74, 'The 7 Habits of Highly Effective People: Powerful Lessons in Personal Change', 1, 90.00, 90.00, '2024-08-24 16:14:42', '2024-08-24 16:14:42'),
(22, 14, 74, 'The 7 Habits of Highly Effective People: Powerful Lessons in Personal Change', 2, 90.00, 180.00, '2024-08-26 06:30:24', '2024-08-26 06:30:24'),
(23, 15, 74, 'The 7 Habits of Highly Effective People: Powerful Lessons in Personal Change', 3, 90.00, 270.00, '2024-08-26 06:36:41', '2024-08-26 06:36:41'),
(24, 16, 75, 'Dell', 1, 500.00, 500.00, '2024-09-03 04:36:10', '2024-09-03 04:36:10');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `content` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `slug`, `content`, `created_at`, `updated_at`) VALUES
(3, 'About Us', 'about-us', '<div style=\"font-family: Consolas, \" courier=\"\" new\",=\"\" monospace;=\"\" font-size:=\"\" 14px;=\"\" line-height:=\"\" 19px;=\"\" white-space:=\"\" pre;\"=\"\"><div style=\"\"><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></div><div style=\"\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span></div><div style=\"\"><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></div><div style=\"\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span></div><div style=\"\"><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span><br></div></div>', '2024-08-28 13:42:25', '2024-08-28 13:52:53'),
(4, 'Contact Us', 'contact-us', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content.</p>\r\n                    <address>\r\n                    Cecilia Chapman <br>\r\n                    711-2880 Nulla St.<br> \r\n                    Mankato Mississippi 96522<br>\r\n                    <a href=\"tel:(0000) 555-2368\">(0000) 555-2368</a><br>\r\n                    <a href=\"mailto:jim@rock.com\">jim@rock.com</a>\r\n                    </address>', '2024-08-28 14:00:38', '2024-08-29 03:49:23'),
(5, 'Terms & Conditions', 'terms-conditions', '<div style=\"vertical-align: baseline; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; text-rendering: optimizelegibility; color: rgb(0, 29, 61); font-family: Poppins; background-color: rgb(241, 241, 241);\"><span style=\"vertical-align: baseline; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; text-rendering: optimizelegibility; font-weight: bolder; margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</span><span style=\"vertical-align: baseline; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; text-rendering: optimizelegibility; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></div><div style=\"vertical-align: baseline; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; text-rendering: optimizelegibility; color: rgb(0, 29, 61); font-family: Poppins; background-color: rgb(241, 241, 241);\"><span style=\"vertical-align: baseline; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; text-rendering: optimizelegibility; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br style=\"vertical-align: baseline; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; text-rendering: optimizelegibility;\"></span></div><div style=\"vertical-align: baseline; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; text-rendering: optimizelegibility; color: rgb(0, 29, 61); font-family: Poppins; background-color: rgb(241, 241, 241);\"><span style=\"vertical-align: baseline; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; text-rendering: optimizelegibility; font-weight: bolder; margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</span><span style=\"vertical-align: baseline; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; text-rendering: optimizelegibility; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></div><div style=\"vertical-align: baseline; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; text-rendering: optimizelegibility; color: rgb(0, 29, 61); font-family: Poppins; background-color: rgb(241, 241, 241);\"><span style=\"vertical-align: baseline; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; text-rendering: optimizelegibility; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br style=\"vertical-align: baseline; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; text-rendering: optimizelegibility;\"></span></div><div style=\"vertical-align: baseline; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; text-rendering: optimizelegibility; color: rgb(0, 29, 61); font-family: Poppins; background-color: rgb(241, 241, 241);\"><span style=\"vertical-align: baseline; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; text-rendering: optimizelegibility; font-weight: bolder; margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</span><span style=\"vertical-align: baseline; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; text-rendering: optimizelegibility; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></div>', '2024-08-28 14:01:15', '2024-08-28 14:01:15');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `shipping_returns` text DEFAULT NULL,
  `related_products` text DEFAULT NULL,
  `price` double(10,2) NOT NULL,
  `compare_price` double(10,2) DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `sub_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_featured` enum('Yes','No') NOT NULL DEFAULT 'No',
  `sku` varchar(255) NOT NULL,
  `barcode` varchar(255) DEFAULT NULL,
  `track_qty` enum('Yes','No') NOT NULL DEFAULT 'Yes',
  `qty` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `slug`, `description`, `short_description`, `shipping_returns`, `related_products`, `price`, `compare_price`, `category_id`, `sub_category_id`, `brand_id`, `is_featured`, `sku`, `barcode`, `track_qty`, `qty`, `status`, `created_at`, `updated_at`) VALUES
(13, 'Product 2', 'product-2', NULL, NULL, NULL, '2,4,7,12', 200.00, 250.00, 2, 8, NULL, 'No', 'DD', '1012133', 'No', NULL, 1, '2024-08-18 14:11:49', '2024-08-20 07:17:57'),
(74, 'Canon Camera', 'canon-camera', '<p><i style=\"vertical-align: baseline; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; text-rendering: optimizelegibility; color: rgb(30, 25, 21); font-family: &quot;Proxima Nova&quot;, Montserrat, Arial, sans-serif;\">Librarian Note: There is more than one author by this name in the Goodreads database.</i><br style=\"vertical-align: baseline; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; text-rendering: optimizelegibility; margin: 0px; color: rgb(30, 25, 21); font-family: &quot;Proxima Nova&quot;, Montserrat, Arial, sans-serif;\"><br style=\"vertical-align: baseline; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; text-rendering: optimizelegibility; margin: 0px; color: rgb(30, 25, 21); font-family: &quot;Proxima Nova&quot;, Montserrat, Arial, sans-serif;\"><span style=\"vertical-align: baseline; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; text-rendering: optimizelegibility; color: rgb(30, 25, 21); font-family: &quot;Proxima Nova&quot;, Montserrat, Arial, sans-serif;\">Stephen Richards Covey was an American educator, author, businessman, and speaker. His most popular book is The 7 Habits of Highly Effective People. His other books include First Things First, Principle-Centered Leadership, The 7 Habits of Highly Effective Families,&nbsp;</span><br></p>', '<p><i style=\"vertical-align: baseline; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; text-rendering: optimizelegibility; color: rgb(30, 25, 21); font-family: &quot;Proxima Nova&quot;, Montserrat, Arial, sans-serif;\">Librarian Note: There is more than one author by this name in the Goodreads database.</i><br style=\"vertical-align: baseline; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; text-rendering: optimizelegibility; margin: 0px; color: rgb(30, 25, 21); font-family: &quot;Proxima Nova&quot;, Montserrat, Arial, sans-serif;\"></p>', '<p><span style=\"color: rgb(30, 25, 21); font-family: &quot;Proxima Nova&quot;, Montserrat, Arial, sans-serif;\">Stephen Richards Covey was an American educator, author, businessman, and speaker. His most popular book is The 7 Habits of Highly Effective People. His other books include First Things First, Principle-Centered Leadership, The 7 Habits of Highly Effective Families,&nbsp;</span><br></p>', '1', 90.00, 110.00, 7, NULL, 3, 'Yes', 'B-00011', 'B-0001', 'Yes', 0, 1, '2024-08-23 06:01:32', '2024-09-02 04:52:35');
INSERT INTO `products` (`id`, `title`, `slug`, `description`, `short_description`, `shipping_returns`, `related_products`, `price`, `compare_price`, `category_id`, `sub_category_id`, `brand_id`, `is_featured`, `sku`, `barcode`, `track_qty`, `qty`, `status`, `created_at`, `updated_at`) VALUES
(75, 'Dell', 'dell', '<p><span style=\"color: rgb(14, 14, 14); font-family: Roboto, &quot;Cordia New&quot;, &quot;Microsoft Sans Serif&quot;, Utsaah, &quot;Devanagari MT&quot;, &quot;Nirmala UI&quot;, Latha, InaiMathi, Gautami, &quot;Telugu Sangam MN&quot;, Tunga, &quot;Kannada Sangam MN&quot;, Kartika, &quot;Malayalam Sangam MN&quot;, Shruti, &quot;Gujarati MT&quot;, &quot;Gujarati Sangam MN&quot;, Vrinda, &quot;Bangla Sangam MN&quot;, &quot;Meiryo UI&quot;, メイリオ, &quot;MS UI Gothic Reg&quot;, &quot;Hiragino Kaku Gothic Reg&quot;, &quot;ヒラギノ角ゴ Pro W3 Reg&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, &quot;Hiragino Sans GB&quot;, &quot;Microsoft JhengHei&quot;, 微軟正黑體, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Gulim, AppleGothic, &quot;Apple LiGothic&quot;, &quot;LiHei Pro&quot;, Osaka, STHeiti, 华文黑体, STXihei, 华文细黑, SimHei, 黑体, &quot;Arial Unicode MS&quot;, Arial, sans-serif;\">Dell offers a wide range of laptops and features high performance models within several product families. Whether shopping for XPS or Inspiron, you will have options to choose from the latest processors.</span></p><p><span style=\"font-weight: bolder; color: rgb(14, 14, 14); font-family: Roboto, &quot;Cordia New&quot;, &quot;Microsoft Sans Serif&quot;, Utsaah, &quot;Devanagari MT&quot;, &quot;Nirmala UI&quot;, Latha, InaiMathi, Gautami, &quot;Telugu Sangam MN&quot;, Tunga, &quot;Kannada Sangam MN&quot;, Kartika, &quot;Malayalam Sangam MN&quot;, Shruti, &quot;Gujarati MT&quot;, &quot;Gujarati Sangam MN&quot;, Vrinda, &quot;Bangla Sangam MN&quot;, &quot;Meiryo UI&quot;, メイリオ, &quot;MS UI Gothic Reg&quot;, &quot;Hiragino Kaku Gothic Reg&quot;, &quot;ヒラギノ角ゴ Pro W3 Reg&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, &quot;Hiragino Sans GB&quot;, &quot;Microsoft JhengHei&quot;, 微軟正黑體, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Gulim, AppleGothic, &quot;Apple LiGothic&quot;, &quot;LiHei Pro&quot;, Osaka, STHeiti, 华文黑体, STXihei, 华文细黑, SimHei, 黑体, &quot;Arial Unicode MS&quot;, Arial, sans-serif;\">XPS</span><span style=\"color: rgb(14, 14, 14); font-family: Roboto, &quot;Cordia New&quot;, &quot;Microsoft Sans Serif&quot;, Utsaah, &quot;Devanagari MT&quot;, &quot;Nirmala UI&quot;, Latha, InaiMathi, Gautami, &quot;Telugu Sangam MN&quot;, Tunga, &quot;Kannada Sangam MN&quot;, Kartika, &quot;Malayalam Sangam MN&quot;, Shruti, &quot;Gujarati MT&quot;, &quot;Gujarati Sangam MN&quot;, Vrinda, &quot;Bangla Sangam MN&quot;, &quot;Meiryo UI&quot;, メイリオ, &quot;MS UI Gothic Reg&quot;, &quot;Hiragino Kaku Gothic Reg&quot;, &quot;ヒラギノ角ゴ Pro W3 Reg&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, &quot;Hiragino Sans GB&quot;, &quot;Microsoft JhengHei&quot;, 微軟正黑體, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Gulim, AppleGothic, &quot;Apple LiGothic&quot;, &quot;LiHei Pro&quot;, Osaka, STHeiti, 华文黑体, STXihei, 华文细黑, SimHei, 黑体, &quot;Arial Unicode MS&quot;, Arial, sans-serif;\"></span><br style=\"color: rgb(14, 14, 14); font-family: Roboto, &quot;Cordia New&quot;, &quot;Microsoft Sans Serif&quot;, Utsaah, &quot;Devanagari MT&quot;, &quot;Nirmala UI&quot;, Latha, InaiMathi, Gautami, &quot;Telugu Sangam MN&quot;, Tunga, &quot;Kannada Sangam MN&quot;, Kartika, &quot;Malayalam Sangam MN&quot;, Shruti, &quot;Gujarati MT&quot;, &quot;Gujarati Sangam MN&quot;, Vrinda, &quot;Bangla Sangam MN&quot;, &quot;Meiryo UI&quot;, メイリオ, &quot;MS UI Gothic Reg&quot;, &quot;Hiragino Kaku Gothic Reg&quot;, &quot;ヒラギノ角ゴ Pro W3 Reg&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, &quot;Hiragino Sans GB&quot;, &quot;Microsoft JhengHei&quot;, 微軟正黑體, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Gulim, AppleGothic, &quot;Apple LiGothic&quot;, &quot;LiHei Pro&quot;, Osaka, STHeiti, 华文黑体, STXihei, 华文细黑, SimHei, 黑体, &quot;Arial Unicode MS&quot;, Arial, sans-serif;\"><span style=\"color: rgb(14, 14, 14); font-family: Roboto, &quot;Cordia New&quot;, &quot;Microsoft Sans Serif&quot;, Utsaah, &quot;Devanagari MT&quot;, &quot;Nirmala UI&quot;, Latha, InaiMathi, Gautami, &quot;Telugu Sangam MN&quot;, Tunga, &quot;Kannada Sangam MN&quot;, Kartika, &quot;Malayalam Sangam MN&quot;, Shruti, &quot;Gujarati MT&quot;, &quot;Gujarati Sangam MN&quot;, Vrinda, &quot;Bangla Sangam MN&quot;, &quot;Meiryo UI&quot;, メイリオ, &quot;MS UI Gothic Reg&quot;, &quot;Hiragino Kaku Gothic Reg&quot;, &quot;ヒラギノ角ゴ Pro W3 Reg&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, &quot;Hiragino Sans GB&quot;, &quot;Microsoft JhengHei&quot;, 微軟正黑體, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Gulim, AppleGothic, &quot;Apple LiGothic&quot;, &quot;LiHei Pro&quot;, Osaka, STHeiti, 华文黑体, STXihei, 华文细黑, SimHei, 黑体, &quot;Arial Unicode MS&quot;, Arial, sans-serif;\">XPS laptops are designed with cutting-edge technologies, exceptional build quality, unique materials, and powerful features. Equipped with the latest processors, up to UHD+ displays, and components that deliver faster time to productivity, XPS devices are the ultimate high-performance laptop for graphic-intensive applications.</span><br style=\"color: rgb(14, 14, 14); font-family: Roboto, &quot;Cordia New&quot;, &quot;Microsoft Sans Serif&quot;, Utsaah, &quot;Devanagari MT&quot;, &quot;Nirmala UI&quot;, Latha, InaiMathi, Gautami, &quot;Telugu Sangam MN&quot;, Tunga, &quot;Kannada Sangam MN&quot;, Kartika, &quot;Malayalam Sangam MN&quot;, Shruti, &quot;Gujarati MT&quot;, &quot;Gujarati Sangam MN&quot;, Vrinda, &quot;Bangla Sangam MN&quot;, &quot;Meiryo UI&quot;, メイリオ, &quot;MS UI Gothic Reg&quot;, &quot;Hiragino Kaku Gothic Reg&quot;, &quot;ヒラギノ角ゴ Pro W3 Reg&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, &quot;Hiragino Sans GB&quot;, &quot;Microsoft JhengHei&quot;, 微軟正黑體, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Gulim, AppleGothic, &quot;Apple LiGothic&quot;, &quot;LiHei Pro&quot;, Osaka, STHeiti, 华文黑体, STXihei, 华文细黑, SimHei, 黑体, &quot;Arial Unicode MS&quot;, Arial, sans-serif;\"><br style=\"color: rgb(14, 14, 14); font-family: Roboto, &quot;Cordia New&quot;, &quot;Microsoft Sans Serif&quot;, Utsaah, &quot;Devanagari MT&quot;, &quot;Nirmala UI&quot;, Latha, InaiMathi, Gautami, &quot;Telugu Sangam MN&quot;, Tunga, &quot;Kannada Sangam MN&quot;, Kartika, &quot;Malayalam Sangam MN&quot;, Shruti, &quot;Gujarati MT&quot;, &quot;Gujarati Sangam MN&quot;, Vrinda, &quot;Bangla Sangam MN&quot;, &quot;Meiryo UI&quot;, メイリオ, &quot;MS UI Gothic Reg&quot;, &quot;Hiragino Kaku Gothic Reg&quot;, &quot;ヒラギノ角ゴ Pro W3 Reg&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, &quot;Hiragino Sans GB&quot;, &quot;Microsoft JhengHei&quot;, 微軟正黑體, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Gulim, AppleGothic, &quot;Apple LiGothic&quot;, &quot;LiHei Pro&quot;, Osaka, STHeiti, 华文黑体, STXihei, 华文细黑, SimHei, 黑体, &quot;Arial Unicode MS&quot;, Arial, sans-serif;\"><span style=\"color: rgb(14, 14, 14); font-family: Roboto, &quot;Cordia New&quot;, &quot;Microsoft Sans Serif&quot;, Utsaah, &quot;Devanagari MT&quot;, &quot;Nirmala UI&quot;, Latha, InaiMathi, Gautami, &quot;Telugu Sangam MN&quot;, Tunga, &quot;Kannada Sangam MN&quot;, Kartika, &quot;Malayalam Sangam MN&quot;, Shruti, &quot;Gujarati MT&quot;, &quot;Gujarati Sangam MN&quot;, Vrinda, &quot;Bangla Sangam MN&quot;, &quot;Meiryo UI&quot;, メイリオ, &quot;MS UI Gothic Reg&quot;, &quot;Hiragino Kaku Gothic Reg&quot;, &quot;ヒラギノ角ゴ Pro W3 Reg&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, &quot;Hiragino Sans GB&quot;, &quot;Microsoft JhengHei&quot;, 微軟正黑體, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Gulim, AppleGothic, &quot;Apple LiGothic&quot;, &quot;LiHei Pro&quot;, Osaka, STHeiti, 华文黑体, STXihei, 华文细黑, SimHei, 黑体, &quot;Arial Unicode MS&quot;, Arial, sans-serif;\">Features of XPS high-performance laptops include:</span><br style=\"color: rgb(14, 14, 14); font-family: Roboto, &quot;Cordia New&quot;, &quot;Microsoft Sans Serif&quot;, Utsaah, &quot;Devanagari MT&quot;, &quot;Nirmala UI&quot;, Latha, InaiMathi, Gautami, &quot;Telugu Sangam MN&quot;, Tunga, &quot;Kannada Sangam MN&quot;, Kartika, &quot;Malayalam Sangam MN&quot;, Shruti, &quot;Gujarati MT&quot;, &quot;Gujarati Sangam MN&quot;, Vrinda, &quot;Bangla Sangam MN&quot;, &quot;Meiryo UI&quot;, メイリオ, &quot;MS UI Gothic Reg&quot;, &quot;Hiragino Kaku Gothic Reg&quot;, &quot;ヒラギノ角ゴ Pro W3 Reg&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, &quot;Hiragino Sans GB&quot;, &quot;Microsoft JhengHei&quot;, 微軟正黑體, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Gulim, AppleGothic, &quot;Apple LiGothic&quot;, &quot;LiHei Pro&quot;, Osaka, STHeiti, 华文黑体, STXihei, 华文细黑, SimHei, 黑体, &quot;Arial Unicode MS&quot;, Arial, sans-serif;\"></p><ul style=\"color: rgb(14, 14, 14); font-family: Roboto, &quot;Cordia New&quot;, &quot;Microsoft Sans Serif&quot;, Utsaah, &quot;Devanagari MT&quot;, &quot;Nirmala UI&quot;, Latha, InaiMathi, Gautami, &quot;Telugu Sangam MN&quot;, Tunga, &quot;Kannada Sangam MN&quot;, Kartika, &quot;Malayalam Sangam MN&quot;, Shruti, &quot;Gujarati MT&quot;, &quot;Gujarati Sangam MN&quot;, Vrinda, &quot;Bangla Sangam MN&quot;, &quot;Meiryo UI&quot;, メイリオ, &quot;MS UI Gothic Reg&quot;, &quot;Hiragino Kaku Gothic Reg&quot;, &quot;ヒラギノ角ゴ Pro W3 Reg&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, &quot;Hiragino Sans GB&quot;, &quot;Microsoft JhengHei&quot;, 微軟正黑體, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Gulim, AppleGothic, &quot;Apple LiGothic&quot;, &quot;LiHei Pro&quot;, Osaka, STHeiti, 华文黑体, STXihei, 华文细黑, SimHei, 黑体, &quot;Arial Unicode MS&quot;, Arial, sans-serif;\"><li style=\"text-size-adjust: 100%;\">The latest processors and graphics cards</li><li style=\"text-size-adjust: 100%;\">Up to 64GB of DDR4 RAM or more</li><li style=\"text-size-adjust: 100%;\">Up to 2TB M.2 PCIe NVMe Solid-State Drives</li><li style=\"text-size-adjust: 100%;\">Up to 4K UHD+ (3840 x 2400) displays with over 9 million pixels</li><li style=\"text-size-adjust: 100%;\">Dolby Vision™ for ultra-vivid picture quality and colors never before seen on SDR PC displays</li></ul><p><span style=\"font-weight: bolder; color: rgb(14, 14, 14); font-family: Roboto, &quot;Cordia New&quot;, &quot;Microsoft Sans Serif&quot;, Utsaah, &quot;Devanagari MT&quot;, &quot;Nirmala UI&quot;, Latha, InaiMathi, Gautami, &quot;Telugu Sangam MN&quot;, Tunga, &quot;Kannada Sangam MN&quot;, Kartika, &quot;Malayalam Sangam MN&quot;, Shruti, &quot;Gujarati MT&quot;, &quot;Gujarati Sangam MN&quot;, Vrinda, &quot;Bangla Sangam MN&quot;, &quot;Meiryo UI&quot;, メイリオ, &quot;MS UI Gothic Reg&quot;, &quot;Hiragino Kaku Gothic Reg&quot;, &quot;ヒラギノ角ゴ Pro W3 Reg&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, &quot;Hiragino Sans GB&quot;, &quot;Microsoft JhengHei&quot;, 微軟正黑體, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Gulim, AppleGothic, &quot;Apple LiGothic&quot;, &quot;LiHei Pro&quot;, Osaka, STHeiti, 华文黑体, STXihei, 华文细黑, SimHei, 黑体, &quot;Arial Unicode MS&quot;, Arial, sans-serif;\">Inspiron</span><span style=\"color: rgb(14, 14, 14); font-family: Roboto, &quot;Cordia New&quot;, &quot;Microsoft Sans Serif&quot;, Utsaah, &quot;Devanagari MT&quot;, &quot;Nirmala UI&quot;, Latha, InaiMathi, Gautami, &quot;Telugu Sangam MN&quot;, Tunga, &quot;Kannada Sangam MN&quot;, Kartika, &quot;Malayalam Sangam MN&quot;, Shruti, &quot;Gujarati MT&quot;, &quot;Gujarati Sangam MN&quot;, Vrinda, &quot;Bangla Sangam MN&quot;, &quot;Meiryo UI&quot;, メイリオ, &quot;MS UI Gothic Reg&quot;, &quot;Hiragino Kaku Gothic Reg&quot;, &quot;ヒラギノ角ゴ Pro W3 Reg&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, &quot;Hiragino Sans GB&quot;, &quot;Microsoft JhengHei&quot;, 微軟正黑體, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Gulim, AppleGothic, &quot;Apple LiGothic&quot;, &quot;LiHei Pro&quot;, Osaka, STHeiti, 华文黑体, STXihei, 华文细黑, SimHei, 黑体, &quot;Arial Unicode MS&quot;, Arial, sans-serif;\"></span><br style=\"color: rgb(14, 14, 14); font-family: Roboto, &quot;Cordia New&quot;, &quot;Microsoft Sans Serif&quot;, Utsaah, &quot;Devanagari MT&quot;, &quot;Nirmala UI&quot;, Latha, InaiMathi, Gautami, &quot;Telugu Sangam MN&quot;, Tunga, &quot;Kannada Sangam MN&quot;, Kartika, &quot;Malayalam Sangam MN&quot;, Shruti, &quot;Gujarati MT&quot;, &quot;Gujarati Sangam MN&quot;, Vrinda, &quot;Bangla Sangam MN&quot;, &quot;Meiryo UI&quot;, メイリオ, &quot;MS UI Gothic Reg&quot;, &quot;Hiragino Kaku Gothic Reg&quot;, &quot;ヒラギノ角ゴ Pro W3 Reg&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, &quot;Hiragino Sans GB&quot;, &quot;Microsoft JhengHei&quot;, 微軟正黑體, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Gulim, AppleGothic, &quot;Apple LiGothic&quot;, &quot;LiHei Pro&quot;, Osaka, STHeiti, 华文黑体, STXihei, 华文细黑, SimHei, 黑体, &quot;Arial Unicode MS&quot;, Arial, sans-serif;\"><span style=\"color: rgb(14, 14, 14); font-family: Roboto, &quot;Cordia New&quot;, &quot;Microsoft Sans Serif&quot;, Utsaah, &quot;Devanagari MT&quot;, &quot;Nirmala UI&quot;, Latha, InaiMathi, Gautami, &quot;Telugu Sangam MN&quot;, Tunga, &quot;Kannada Sangam MN&quot;, Kartika, &quot;Malayalam Sangam MN&quot;, Shruti, &quot;Gujarati MT&quot;, &quot;Gujarati Sangam MN&quot;, Vrinda, &quot;Bangla Sangam MN&quot;, &quot;Meiryo UI&quot;, メイリオ, &quot;MS UI Gothic Reg&quot;, &quot;Hiragino Kaku Gothic Reg&quot;, &quot;ヒラギノ角ゴ Pro W3 Reg&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, &quot;Hiragino Sans GB&quot;, &quot;Microsoft JhengHei&quot;, 微軟正黑體, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Gulim, AppleGothic, &quot;Apple LiGothic&quot;, &quot;LiHei Pro&quot;, Osaka, STHeiti, 华文黑体, STXihei, 华文细黑, SimHei, 黑体, &quot;Arial Unicode MS&quot;, Arial, sans-serif;\">Inspiron laptops feature the latest Intel and AMD processors, robust memory and storage, and up to UHD displays in a compact form. Thoughtfully designed and built with lightweight materials, these&nbsp;</span><font face=\"Roboto, Cordia New, Microsoft Sans Serif, Utsaah, Devanagari MT, Nirmala UI, Latha, InaiMathi, Gautami, Telugu Sangam MN, Tunga, Kannada Sangam MN, Kartika, Malayalam Sangam MN, Shruti, Gujarati MT, Gujarati Sangam MN, Vrinda, Bangla Sangam MN, Meiryo UI, メイリオ, MS UI Gothic Reg, Hiragino Kaku Gothic Reg, ヒラギノ角ゴ Pro W3 Reg, Microsoft YaHei, 微软雅黑, Hiragino Sans GB, Microsoft JhengHei, 微軟正黑體, Malgun Gothic, 맑은 고딕, Gulim, AppleGothic, Apple LiGothic, LiHei Pro, Osaka, STHeiti, 华文黑体, STXihei, 华文细黑, SimHei, 黑体, Arial Unicode MS, Arial, sans-serif\" color=\"#000000\"><span style=\"cursor: pointer; background-color: rgb(255, 255, 255);\">lightweight laptops</span></font><span style=\"color: rgb(14, 14, 14); font-family: Roboto, &quot;Cordia New&quot;, &quot;Microsoft Sans Serif&quot;, Utsaah, &quot;Devanagari MT&quot;, &quot;Nirmala UI&quot;, Latha, InaiMathi, Gautami, &quot;Telugu Sangam MN&quot;, Tunga, &quot;Kannada Sangam MN&quot;, Kartika, &quot;Malayalam Sangam MN&quot;, Shruti, &quot;Gujarati MT&quot;, &quot;Gujarati Sangam MN&quot;, Vrinda, &quot;Bangla Sangam MN&quot;, &quot;Meiryo UI&quot;, メイリオ, &quot;MS UI Gothic Reg&quot;, &quot;Hiragino Kaku Gothic Reg&quot;, &quot;ヒラギノ角ゴ Pro W3 Reg&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, &quot;Hiragino Sans GB&quot;, &quot;Microsoft JhengHei&quot;, 微軟正黑體, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Gulim, AppleGothic, &quot;Apple LiGothic&quot;, &quot;LiHei Pro&quot;, Osaka, STHeiti, 华文黑体, STXihei, 华文细黑, SimHei, 黑体, &quot;Arial Unicode MS&quot;, Arial, sans-serif;\">&nbsp;feature immersive audio and visuals along with meaningful innovation for an upgraded experience.</span><br style=\"color: rgb(14, 14, 14); font-family: Roboto, &quot;Cordia New&quot;, &quot;Microsoft Sans Serif&quot;, Utsaah, &quot;Devanagari MT&quot;, &quot;Nirmala UI&quot;, Latha, InaiMathi, Gautami, &quot;Telugu Sangam MN&quot;, Tunga, &quot;Kannada Sangam MN&quot;, Kartika, &quot;Malayalam Sangam MN&quot;, Shruti, &quot;Gujarati MT&quot;, &quot;Gujarati Sangam MN&quot;, Vrinda, &quot;Bangla Sangam MN&quot;, &quot;Meiryo UI&quot;, メイリオ, &quot;MS UI Gothic Reg&quot;, &quot;Hiragino Kaku Gothic Reg&quot;, &quot;ヒラギノ角ゴ Pro W3 Reg&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, &quot;Hiragino Sans GB&quot;, &quot;Microsoft JhengHei&quot;, 微軟正黑體, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Gulim, AppleGothic, &quot;Apple LiGothic&quot;, &quot;LiHei Pro&quot;, Osaka, STHeiti, 华文黑体, STXihei, 华文细黑, SimHei, 黑体, &quot;Arial Unicode MS&quot;, Arial, sans-serif;\"><br style=\"color: rgb(14, 14, 14); font-family: Roboto, &quot;Cordia New&quot;, &quot;Microsoft Sans Serif&quot;, Utsaah, &quot;Devanagari MT&quot;, &quot;Nirmala UI&quot;, Latha, InaiMathi, Gautami, &quot;Telugu Sangam MN&quot;, Tunga, &quot;Kannada Sangam MN&quot;, Kartika, &quot;Malayalam Sangam MN&quot;, Shruti, &quot;Gujarati MT&quot;, &quot;Gujarati Sangam MN&quot;, Vrinda, &quot;Bangla Sangam MN&quot;, &quot;Meiryo UI&quot;, メイリオ, &quot;MS UI Gothic Reg&quot;, &quot;Hiragino Kaku Gothic Reg&quot;, &quot;ヒラギノ角ゴ Pro W3 Reg&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, &quot;Hiragino Sans GB&quot;, &quot;Microsoft JhengHei&quot;, 微軟正黑體, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Gulim, AppleGothic, &quot;Apple LiGothic&quot;, &quot;LiHei Pro&quot;, Osaka, STHeiti, 华文黑体, STXihei, 华文细黑, SimHei, 黑体, &quot;Arial Unicode MS&quot;, Arial, sans-serif;\"><span style=\"color: rgb(14, 14, 14); font-family: Roboto, &quot;Cordia New&quot;, &quot;Microsoft Sans Serif&quot;, Utsaah, &quot;Devanagari MT&quot;, &quot;Nirmala UI&quot;, Latha, InaiMathi, Gautami, &quot;Telugu Sangam MN&quot;, Tunga, &quot;Kannada Sangam MN&quot;, Kartika, &quot;Malayalam Sangam MN&quot;, Shruti, &quot;Gujarati MT&quot;, &quot;Gujarati Sangam MN&quot;, Vrinda, &quot;Bangla Sangam MN&quot;, &quot;Meiryo UI&quot;, メイリオ, &quot;MS UI Gothic Reg&quot;, &quot;Hiragino Kaku Gothic Reg&quot;, &quot;ヒラギノ角ゴ Pro W3 Reg&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, &quot;Hiragino Sans GB&quot;, &quot;Microsoft JhengHei&quot;, 微軟正黑體, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Gulim, AppleGothic, &quot;Apple LiGothic&quot;, &quot;LiHei Pro&quot;, Osaka, STHeiti, 华文黑体, STXihei, 华文细黑, SimHei, 黑体, &quot;Arial Unicode MS&quot;, Arial, sans-serif;\">Features include:</span><br style=\"color: rgb(14, 14, 14); font-family: Roboto, &quot;Cordia New&quot;, &quot;Microsoft Sans Serif&quot;, Utsaah, &quot;Devanagari MT&quot;, &quot;Nirmala UI&quot;, Latha, InaiMathi, Gautami, &quot;Telugu Sangam MN&quot;, Tunga, &quot;Kannada Sangam MN&quot;, Kartika, &quot;Malayalam Sangam MN&quot;, Shruti, &quot;Gujarati MT&quot;, &quot;Gujarati Sangam MN&quot;, Vrinda, &quot;Bangla Sangam MN&quot;, &quot;Meiryo UI&quot;, メイリオ, &quot;MS UI Gothic Reg&quot;, &quot;Hiragino Kaku Gothic Reg&quot;, &quot;ヒラギノ角ゴ Pro W3 Reg&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, &quot;Hiragino Sans GB&quot;, &quot;Microsoft JhengHei&quot;, 微軟正黑體, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Gulim, AppleGothic, &quot;Apple LiGothic&quot;, &quot;LiHei Pro&quot;, Osaka, STHeiti, 华文黑体, STXihei, 华文细黑, SimHei, 黑体, &quot;Arial Unicode MS&quot;, Arial, sans-serif;\"></p><ul style=\"color: rgb(14, 14, 14); font-family: Roboto, &quot;Cordia New&quot;, &quot;Microsoft Sans Serif&quot;, Utsaah, &quot;Devanagari MT&quot;, &quot;Nirmala UI&quot;, Latha, InaiMathi, Gautami, &quot;Telugu Sangam MN&quot;, Tunga, &quot;Kannada Sangam MN&quot;, Kartika, &quot;Malayalam Sangam MN&quot;, Shruti, &quot;Gujarati MT&quot;, &quot;Gujarati Sangam MN&quot;, Vrinda, &quot;Bangla Sangam MN&quot;, &quot;Meiryo UI&quot;, メイリオ, &quot;MS UI Gothic Reg&quot;, &quot;Hiragino Kaku Gothic Reg&quot;, &quot;ヒラギノ角ゴ Pro W3 Reg&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, &quot;Hiragino Sans GB&quot;, &quot;Microsoft JhengHei&quot;, 微軟正黑體, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Gulim, AppleGothic, &quot;Apple LiGothic&quot;, &quot;LiHei Pro&quot;, Osaka, STHeiti, 华文黑体, STXihei, 华文细黑, SimHei, 黑体, &quot;Arial Unicode MS&quot;, Arial, sans-serif;\"><li style=\"text-size-adjust: 100%;\">The latest processors and graphics cards</li><li style=\"text-size-adjust: 100%;\">Up to 24GB, 8GB on-board+16GB SODIMM, DDR4, 2933MHz</li><li style=\"text-size-adjust: 100%;\">Up to 2TB M.2 PCIe NVMe Solid-State Drives</li><li style=\"text-size-adjust: 100%;\">Displays with resolution up to 4K UHD (3840 x 2160)</li><li style=\"text-size-adjust: 100%;\">ExpressCharge™ – get your battery from 0% up to 80% in as fast as an hour</li></ul>', '<p><font color=\"#000000\" style=\"background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Google Sans&quot;, Arial, sans-serif; font-size: 20px;\">Dell customizable laptops include&nbsp;</span><span style=\"background-image: linear-gradient(90deg, rgb(211, 227, 253) 50%, rgba(0, 0, 0, 0) 50%); background-position: 0% 0px; background-size: 200% 100%; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; animation: 0.75s cubic-bezier(0.05, 0.7, 0.1, 1) 0.25s 1 normal forwards running highlight; font-family: &quot;Google Sans&quot;, Arial, sans-serif; font-size: 20px;\">a selection of pre-configured models with a variety of processors, graphics cards, hard drives, RAM, storage drives, touchscreen technology, and more</span><span style=\"font-family: &quot;Google Sans&quot;, Arial, sans-serif; font-size: 20px;\">. With a choice of screen resolution, you can configure an HD laptop or a 4K laptop.</span></font><br></p>', '<p><span style=\"background-color: rgb(255, 255, 255);\"><font color=\"#000000\"><span style=\"font-family: Roboto, &quot;Cordia New&quot;, &quot;Microsoft Sans Serif&quot;, Utsaah, &quot;Devanagari MT&quot;, &quot;Nirmala UI&quot;, Latha, InaiMathi, Gautami, &quot;Telugu Sangam MN&quot;, Tunga, &quot;Kannada Sangam MN&quot;, Kartika, &quot;Malayalam Sangam MN&quot;, Shruti, &quot;Gujarati MT&quot;, &quot;Gujarati Sangam MN&quot;, Vrinda, &quot;Bangla Sangam MN&quot;, &quot;Meiryo UI&quot;, メイリオ, &quot;MS UI Gothic Reg&quot;, &quot;Hiragino Kaku Gothic Reg&quot;, &quot;ヒラギノ角ゴ Pro W3 Reg&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, &quot;Hiragino Sans GB&quot;, &quot;Microsoft JhengHei&quot;, 微軟正黑體, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Gulim, AppleGothic, &quot;Apple LiGothic&quot;, &quot;LiHei Pro&quot;, Osaka, STHeiti, 华文黑体, STXihei, 华文细黑, SimHei, 黑体, &quot;Arial Unicode MS&quot;, Arial, sans-serif;\">In addition to high performance, Dell laptops offer a superior customer experience. Learn more about the Dell Experience&nbsp;</span><font face=\"Roboto, Cordia New, Microsoft Sans Serif, Utsaah, Devanagari MT, Nirmala UI, Latha, InaiMathi, Gautami, Telugu Sangam MN, Tunga, Kannada Sangam MN, Kartika, Malayalam Sangam MN, Shruti, Gujarati MT, Gujarati Sangam MN, Vrinda, Bangla Sangam MN, Meiryo UI, メイリオ, MS UI Gothic Reg, Hiragino Kaku Gothic Reg, ヒラギノ角ゴ Pro W3 Reg, Microsoft YaHei, 微软雅黑, Hiragino Sans GB, Microsoft JhengHei, 微軟正黑體, Malgun Gothic, 맑은 고딕, Gulim, AppleGothic, Apple LiGothic, LiHei Pro, Osaka, STHeiti, 华文黑体, STXihei, 华文细黑, SimHei, 黑体, Arial Unicode MS, Arial, sans-serif\"><span style=\"cursor: pointer;\">here</span></font><span style=\"font-family: Roboto, &quot;Cordia New&quot;, &quot;Microsoft Sans Serif&quot;, Utsaah, &quot;Devanagari MT&quot;, &quot;Nirmala UI&quot;, Latha, InaiMathi, Gautami, &quot;Telugu Sangam MN&quot;, Tunga, &quot;Kannada Sangam MN&quot;, Kartika, &quot;Malayalam Sangam MN&quot;, Shruti, &quot;Gujarati MT&quot;, &quot;Gujarati Sangam MN&quot;, Vrinda, &quot;Bangla Sangam MN&quot;, &quot;Meiryo UI&quot;, メイリオ, &quot;MS UI Gothic Reg&quot;, &quot;Hiragino Kaku Gothic Reg&quot;, &quot;ヒラギノ角ゴ Pro W3 Reg&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, &quot;Hiragino Sans GB&quot;, &quot;Microsoft JhengHei&quot;, 微軟正黑體, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Gulim, AppleGothic, &quot;Apple LiGothic&quot;, &quot;LiHei Pro&quot;, Osaka, STHeiti, 华文黑体, STXihei, 华文细黑, SimHei, 黑体, &quot;Arial Unicode MS&quot;, Arial, sans-serif;\">.</span><br style=\"font-family: Roboto, &quot;Cordia New&quot;, &quot;Microsoft Sans Serif&quot;, Utsaah, &quot;Devanagari MT&quot;, &quot;Nirmala UI&quot;, Latha, InaiMathi, Gautami, &quot;Telugu Sangam MN&quot;, Tunga, &quot;Kannada Sangam MN&quot;, Kartika, &quot;Malayalam Sangam MN&quot;, Shruti, &quot;Gujarati MT&quot;, &quot;Gujarati Sangam MN&quot;, Vrinda, &quot;Bangla Sangam MN&quot;, &quot;Meiryo UI&quot;, メイリオ, &quot;MS UI Gothic Reg&quot;, &quot;Hiragino Kaku Gothic Reg&quot;, &quot;ヒラギノ角ゴ Pro W3 Reg&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, &quot;Hiragino Sans GB&quot;, &quot;Microsoft JhengHei&quot;, 微軟正黑體, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Gulim, AppleGothic, &quot;Apple LiGothic&quot;, &quot;LiHei Pro&quot;, Osaka, STHeiti, 华文黑体, STXihei, 华文细黑, SimHei, 黑体, &quot;Arial Unicode MS&quot;, Arial, sans-serif;\"><br style=\"font-family: Roboto, &quot;Cordia New&quot;, &quot;Microsoft Sans Serif&quot;, Utsaah, &quot;Devanagari MT&quot;, &quot;Nirmala UI&quot;, Latha, InaiMathi, Gautami, &quot;Telugu Sangam MN&quot;, Tunga, &quot;Kannada Sangam MN&quot;, Kartika, &quot;Malayalam Sangam MN&quot;, Shruti, &quot;Gujarati MT&quot;, &quot;Gujarati Sangam MN&quot;, Vrinda, &quot;Bangla Sangam MN&quot;, &quot;Meiryo UI&quot;, メイリオ, &quot;MS UI Gothic Reg&quot;, &quot;Hiragino Kaku Gothic Reg&quot;, &quot;ヒラギノ角ゴ Pro W3 Reg&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, &quot;Hiragino Sans GB&quot;, &quot;Microsoft JhengHei&quot;, 微軟正黑體, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Gulim, AppleGothic, &quot;Apple LiGothic&quot;, &quot;LiHei Pro&quot;, Osaka, STHeiti, 华文黑体, STXihei, 华文细黑, SimHei, 黑体, &quot;Arial Unicode MS&quot;, Arial, sans-serif;\"><span style=\"font-weight: bolder; font-family: Roboto, &quot;Cordia New&quot;, &quot;Microsoft Sans Serif&quot;, Utsaah, &quot;Devanagari MT&quot;, &quot;Nirmala UI&quot;, Latha, InaiMathi, Gautami, &quot;Telugu Sangam MN&quot;, Tunga, &quot;Kannada Sangam MN&quot;, Kartika, &quot;Malayalam Sangam MN&quot;, Shruti, &quot;Gujarati MT&quot;, &quot;Gujarati Sangam MN&quot;, Vrinda, &quot;Bangla Sangam MN&quot;, &quot;Meiryo UI&quot;, メイリオ, &quot;MS UI Gothic Reg&quot;, &quot;Hiragino Kaku Gothic Reg&quot;, &quot;ヒラギノ角ゴ Pro W3 Reg&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, &quot;Hiragino Sans GB&quot;, &quot;Microsoft JhengHei&quot;, 微軟正黑體, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Gulim, AppleGothic, &quot;Apple LiGothic&quot;, &quot;LiHei Pro&quot;, Osaka, STHeiti, 华文黑体, STXihei, 华文细黑, SimHei, 黑体, &quot;Arial Unicode MS&quot;, Arial, sans-serif;\">Free shipping</span><span style=\"font-family: Roboto, &quot;Cordia New&quot;, &quot;Microsoft Sans Serif&quot;, Utsaah, &quot;Devanagari MT&quot;, &quot;Nirmala UI&quot;, Latha, InaiMathi, Gautami, &quot;Telugu Sangam MN&quot;, Tunga, &quot;Kannada Sangam MN&quot;, Kartika, &quot;Malayalam Sangam MN&quot;, Shruti, &quot;Gujarati MT&quot;, &quot;Gujarati Sangam MN&quot;, Vrinda, &quot;Bangla Sangam MN&quot;, &quot;Meiryo UI&quot;, メイリオ, &quot;MS UI Gothic Reg&quot;, &quot;Hiragino Kaku Gothic Reg&quot;, &quot;ヒラギノ角ゴ Pro W3 Reg&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, &quot;Hiragino Sans GB&quot;, &quot;Microsoft JhengHei&quot;, 微軟正黑體, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Gulim, AppleGothic, &quot;Apple LiGothic&quot;, &quot;LiHei Pro&quot;, Osaka, STHeiti, 华文黑体, STXihei, 华文细黑, SimHei, 黑体, &quot;Arial Unicode MS&quot;, Arial, sans-serif;\"></span><br style=\"font-family: Roboto, &quot;Cordia New&quot;, &quot;Microsoft Sans Serif&quot;, Utsaah, &quot;Devanagari MT&quot;, &quot;Nirmala UI&quot;, Latha, InaiMathi, Gautami, &quot;Telugu Sangam MN&quot;, Tunga, &quot;Kannada Sangam MN&quot;, Kartika, &quot;Malayalam Sangam MN&quot;, Shruti, &quot;Gujarati MT&quot;, &quot;Gujarati Sangam MN&quot;, Vrinda, &quot;Bangla Sangam MN&quot;, &quot;Meiryo UI&quot;, メイリオ, &quot;MS UI Gothic Reg&quot;, &quot;Hiragino Kaku Gothic Reg&quot;, &quot;ヒラギノ角ゴ Pro W3 Reg&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, &quot;Hiragino Sans GB&quot;, &quot;Microsoft JhengHei&quot;, 微軟正黑體, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Gulim, AppleGothic, &quot;Apple LiGothic&quot;, &quot;LiHei Pro&quot;, Osaka, STHeiti, 华文黑体, STXihei, 华文细黑, SimHei, 黑体, &quot;Arial Unicode MS&quot;, Arial, sans-serif;\"><span style=\"font-family: Roboto, &quot;Cordia New&quot;, &quot;Microsoft Sans Serif&quot;, Utsaah, &quot;Devanagari MT&quot;, &quot;Nirmala UI&quot;, Latha, InaiMathi, Gautami, &quot;Telugu Sangam MN&quot;, Tunga, &quot;Kannada Sangam MN&quot;, Kartika, &quot;Malayalam Sangam MN&quot;, Shruti, &quot;Gujarati MT&quot;, &quot;Gujarati Sangam MN&quot;, Vrinda, &quot;Bangla Sangam MN&quot;, &quot;Meiryo UI&quot;, メイリオ, &quot;MS UI Gothic Reg&quot;, &quot;Hiragino Kaku Gothic Reg&quot;, &quot;ヒラギノ角ゴ Pro W3 Reg&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, &quot;Hiragino Sans GB&quot;, &quot;Microsoft JhengHei&quot;, 微軟正黑體, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Gulim, AppleGothic, &quot;Apple LiGothic&quot;, &quot;LiHei Pro&quot;, Osaka, STHeiti, 华文黑体, STXihei, 华文细黑, SimHei, 黑体, &quot;Arial Unicode MS&quot;, Arial, sans-serif;\">Every product purchased on&nbsp;</span><font face=\"Roboto, Cordia New, Microsoft Sans Serif, Utsaah, Devanagari MT, Nirmala UI, Latha, InaiMathi, Gautami, Telugu Sangam MN, Tunga, Kannada Sangam MN, Kartika, Malayalam Sangam MN, Shruti, Gujarati MT, Gujarati Sangam MN, Vrinda, Bangla Sangam MN, Meiryo UI, メイリオ, MS UI Gothic Reg, Hiragino Kaku Gothic Reg, ヒラギノ角ゴ Pro W3 Reg, Microsoft YaHei, 微软雅黑, Hiragino Sans GB, Microsoft JhengHei, 微軟正黑體, Malgun Gothic, 맑은 고딕, Gulim, AppleGothic, Apple LiGothic, LiHei Pro, Osaka, STHeiti, 华文黑体, STXihei, 华文细黑, SimHei, 黑体, Arial Unicode MS, Arial, sans-serif\"><span style=\"cursor: pointer;\">Dell.com</span></font><span style=\"font-family: Roboto, &quot;Cordia New&quot;, &quot;Microsoft Sans Serif&quot;, Utsaah, &quot;Devanagari MT&quot;, &quot;Nirmala UI&quot;, Latha, InaiMathi, Gautami, &quot;Telugu Sangam MN&quot;, Tunga, &quot;Kannada Sangam MN&quot;, Kartika, &quot;Malayalam Sangam MN&quot;, Shruti, &quot;Gujarati MT&quot;, &quot;Gujarati Sangam MN&quot;, Vrinda, &quot;Bangla Sangam MN&quot;, &quot;Meiryo UI&quot;, メイリオ, &quot;MS UI Gothic Reg&quot;, &quot;Hiragino Kaku Gothic Reg&quot;, &quot;ヒラギノ角ゴ Pro W3 Reg&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, &quot;Hiragino Sans GB&quot;, &quot;Microsoft JhengHei&quot;, 微軟正黑體, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Gulim, AppleGothic, &quot;Apple LiGothic&quot;, &quot;LiHei Pro&quot;, Osaka, STHeiti, 华文黑体, STXihei, 华文细黑, SimHei, 黑体, &quot;Arial Unicode MS&quot;, Arial, sans-serif;\">&nbsp;ships free of charge with no minimum purchase.</span><br style=\"font-family: Roboto, &quot;Cordia New&quot;, &quot;Microsoft Sans Serif&quot;, Utsaah, &quot;Devanagari MT&quot;, &quot;Nirmala UI&quot;, Latha, InaiMathi, Gautami, &quot;Telugu Sangam MN&quot;, Tunga, &quot;Kannada Sangam MN&quot;, Kartika, &quot;Malayalam Sangam MN&quot;, Shruti, &quot;Gujarati MT&quot;, &quot;Gujarati Sangam MN&quot;, Vrinda, &quot;Bangla Sangam MN&quot;, &quot;Meiryo UI&quot;, メイリオ, &quot;MS UI Gothic Reg&quot;, &quot;Hiragino Kaku Gothic Reg&quot;, &quot;ヒラギノ角ゴ Pro W3 Reg&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, &quot;Hiragino Sans GB&quot;, &quot;Microsoft JhengHei&quot;, 微軟正黑體, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Gulim, AppleGothic, &quot;Apple LiGothic&quot;, &quot;LiHei Pro&quot;, Osaka, STHeiti, 华文黑体, STXihei, 华文细黑, SimHei, 黑体, &quot;Arial Unicode MS&quot;, Arial, sans-serif;\"><br style=\"font-family: Roboto, &quot;Cordia New&quot;, &quot;Microsoft Sans Serif&quot;, Utsaah, &quot;Devanagari MT&quot;, &quot;Nirmala UI&quot;, Latha, InaiMathi, Gautami, &quot;Telugu Sangam MN&quot;, Tunga, &quot;Kannada Sangam MN&quot;, Kartika, &quot;Malayalam Sangam MN&quot;, Shruti, &quot;Gujarati MT&quot;, &quot;Gujarati Sangam MN&quot;, Vrinda, &quot;Bangla Sangam MN&quot;, &quot;Meiryo UI&quot;, メイリオ, &quot;MS UI Gothic Reg&quot;, &quot;Hiragino Kaku Gothic Reg&quot;, &quot;ヒラギノ角ゴ Pro W3 Reg&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, &quot;Hiragino Sans GB&quot;, &quot;Microsoft JhengHei&quot;, 微軟正黑體, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Gulim, AppleGothic, &quot;Apple LiGothic&quot;, &quot;LiHei Pro&quot;, Osaka, STHeiti, 华文黑体, STXihei, 华文细黑, SimHei, 黑体, &quot;Arial Unicode MS&quot;, Arial, sans-serif;\"><span style=\"font-weight: bolder; font-family: Roboto, &quot;Cordia New&quot;, &quot;Microsoft Sans Serif&quot;, Utsaah, &quot;Devanagari MT&quot;, &quot;Nirmala UI&quot;, Latha, InaiMathi, Gautami, &quot;Telugu Sangam MN&quot;, Tunga, &quot;Kannada Sangam MN&quot;, Kartika, &quot;Malayalam Sangam MN&quot;, Shruti, &quot;Gujarati MT&quot;, &quot;Gujarati Sangam MN&quot;, Vrinda, &quot;Bangla Sangam MN&quot;, &quot;Meiryo UI&quot;, メイリオ, &quot;MS UI Gothic Reg&quot;, &quot;Hiragino Kaku Gothic Reg&quot;, &quot;ヒラギノ角ゴ Pro W3 Reg&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, &quot;Hiragino Sans GB&quot;, &quot;Microsoft JhengHei&quot;, 微軟正黑體, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Gulim, AppleGothic, &quot;Apple LiGothic&quot;, &quot;LiHei Pro&quot;, Osaka, STHeiti, 华文黑体, STXihei, 华文细黑, SimHei, 黑体, &quot;Arial Unicode MS&quot;, Arial, sans-serif;\">Easy returns</span><span style=\"font-family: Roboto, &quot;Cordia New&quot;, &quot;Microsoft Sans Serif&quot;, Utsaah, &quot;Devanagari MT&quot;, &quot;Nirmala UI&quot;, Latha, InaiMathi, Gautami, &quot;Telugu Sangam MN&quot;, Tunga, &quot;Kannada Sangam MN&quot;, Kartika, &quot;Malayalam Sangam MN&quot;, Shruti, &quot;Gujarati MT&quot;, &quot;Gujarati Sangam MN&quot;, Vrinda, &quot;Bangla Sangam MN&quot;, &quot;Meiryo UI&quot;, メイリオ, &quot;MS UI Gothic Reg&quot;, &quot;Hiragino Kaku Gothic Reg&quot;, &quot;ヒラギノ角ゴ Pro W3 Reg&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, &quot;Hiragino Sans GB&quot;, &quot;Microsoft JhengHei&quot;, 微軟正黑體, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Gulim, AppleGothic, &quot;Apple LiGothic&quot;, &quot;LiHei Pro&quot;, Osaka, STHeiti, 华文黑体, STXihei, 华文细黑, SimHei, 黑体, &quot;Arial Unicode MS&quot;, Arial, sans-serif;\"></span><br style=\"font-family: Roboto, &quot;Cordia New&quot;, &quot;Microsoft Sans Serif&quot;, Utsaah, &quot;Devanagari MT&quot;, &quot;Nirmala UI&quot;, Latha, InaiMathi, Gautami, &quot;Telugu Sangam MN&quot;, Tunga, &quot;Kannada Sangam MN&quot;, Kartika, &quot;Malayalam Sangam MN&quot;, Shruti, &quot;Gujarati MT&quot;, &quot;Gujarati Sangam MN&quot;, Vrinda, &quot;Bangla Sangam MN&quot;, &quot;Meiryo UI&quot;, メイリオ, &quot;MS UI Gothic Reg&quot;, &quot;Hiragino Kaku Gothic Reg&quot;, &quot;ヒラギノ角ゴ Pro W3 Reg&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, &quot;Hiragino Sans GB&quot;, &quot;Microsoft JhengHei&quot;, 微軟正黑體, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Gulim, AppleGothic, &quot;Apple LiGothic&quot;, &quot;LiHei Pro&quot;, Osaka, STHeiti, 华文黑体, STXihei, 华文细黑, SimHei, 黑体, &quot;Arial Unicode MS&quot;, Arial, sans-serif;\"><span style=\"font-family: Roboto, &quot;Cordia New&quot;, &quot;Microsoft Sans Serif&quot;, Utsaah, &quot;Devanagari MT&quot;, &quot;Nirmala UI&quot;, Latha, InaiMathi, Gautami, &quot;Telugu Sangam MN&quot;, Tunga, &quot;Kannada Sangam MN&quot;, Kartika, &quot;Malayalam Sangam MN&quot;, Shruti, &quot;Gujarati MT&quot;, &quot;Gujarati Sangam MN&quot;, Vrinda, &quot;Bangla Sangam MN&quot;, &quot;Meiryo UI&quot;, メイリオ, &quot;MS UI Gothic Reg&quot;, &quot;Hiragino Kaku Gothic Reg&quot;, &quot;ヒラギノ角ゴ Pro W3 Reg&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, &quot;Hiragino Sans GB&quot;, &quot;Microsoft JhengHei&quot;, 微軟正黑體, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Gulim, AppleGothic, &quot;Apple LiGothic&quot;, &quot;LiHei Pro&quot;, Osaka, STHeiti, 华文黑体, STXihei, 华文细黑, SimHei, 黑体, &quot;Arial Unicode MS&quot;, Arial, sans-serif;\">If you don\'t love your purchase, you can return it easily within 30 days.</span><br style=\"font-family: Roboto, &quot;Cordia New&quot;, &quot;Microsoft Sans Serif&quot;, Utsaah, &quot;Devanagari MT&quot;, &quot;Nirmala UI&quot;, Latha, InaiMathi, Gautami, &quot;Telugu Sangam MN&quot;, Tunga, &quot;Kannada Sangam MN&quot;, Kartika, &quot;Malayalam Sangam MN&quot;, Shruti, &quot;Gujarati MT&quot;, &quot;Gujarati Sangam MN&quot;, Vrinda, &quot;Bangla Sangam MN&quot;, &quot;Meiryo UI&quot;, メイリオ, &quot;MS UI Gothic Reg&quot;, &quot;Hiragino Kaku Gothic Reg&quot;, &quot;ヒラギノ角ゴ Pro W3 Reg&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, &quot;Hiragino Sans GB&quot;, &quot;Microsoft JhengHei&quot;, 微軟正黑體, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Gulim, AppleGothic, &quot;Apple LiGothic&quot;, &quot;LiHei Pro&quot;, Osaka, STHeiti, 华文黑体, STXihei, 华文细黑, SimHei, 黑体, &quot;Arial Unicode MS&quot;, Arial, sans-serif;\"><br style=\"font-family: Roboto, &quot;Cordia New&quot;, &quot;Microsoft Sans Serif&quot;, Utsaah, &quot;Devanagari MT&quot;, &quot;Nirmala UI&quot;, Latha, InaiMathi, Gautami, &quot;Telugu Sangam MN&quot;, Tunga, &quot;Kannada Sangam MN&quot;, Kartika, &quot;Malayalam Sangam MN&quot;, Shruti, &quot;Gujarati MT&quot;, &quot;Gujarati Sangam MN&quot;, Vrinda, &quot;Bangla Sangam MN&quot;, &quot;Meiryo UI&quot;, メイリオ, &quot;MS UI Gothic Reg&quot;, &quot;Hiragino Kaku Gothic Reg&quot;, &quot;ヒラギノ角ゴ Pro W3 Reg&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, &quot;Hiragino Sans GB&quot;, &quot;Microsoft JhengHei&quot;, 微軟正黑體, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Gulim, AppleGothic, &quot;Apple LiGothic&quot;, &quot;LiHei Pro&quot;, Osaka, STHeiti, 华文黑体, STXihei, 华文细黑, SimHei, 黑体, &quot;Arial Unicode MS&quot;, Arial, sans-serif;\"><span style=\"font-weight: bolder; font-family: Roboto, &quot;Cordia New&quot;, &quot;Microsoft Sans Serif&quot;, Utsaah, &quot;Devanagari MT&quot;, &quot;Nirmala UI&quot;, Latha, InaiMathi, Gautami, &quot;Telugu Sangam MN&quot;, Tunga, &quot;Kannada Sangam MN&quot;, Kartika, &quot;Malayalam Sangam MN&quot;, Shruti, &quot;Gujarati MT&quot;, &quot;Gujarati Sangam MN&quot;, Vrinda, &quot;Bangla Sangam MN&quot;, &quot;Meiryo UI&quot;, メイリオ, &quot;MS UI Gothic Reg&quot;, &quot;Hiragino Kaku Gothic Reg&quot;, &quot;ヒラギノ角ゴ Pro W3 Reg&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, &quot;Hiragino Sans GB&quot;, &quot;Microsoft JhengHei&quot;, 微軟正黑體, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Gulim, AppleGothic, &quot;Apple LiGothic&quot;, &quot;LiHei Pro&quot;, Osaka, STHeiti, 华文黑体, STXihei, 华文细黑, SimHei, 黑体, &quot;Arial Unicode MS&quot;, Arial, sans-serif;\">Price Match Guarantee</span><span style=\"font-family: Roboto, &quot;Cordia New&quot;, &quot;Microsoft Sans Serif&quot;, Utsaah, &quot;Devanagari MT&quot;, &quot;Nirmala UI&quot;, Latha, InaiMathi, Gautami, &quot;Telugu Sangam MN&quot;, Tunga, &quot;Kannada Sangam MN&quot;, Kartika, &quot;Malayalam Sangam MN&quot;, Shruti, &quot;Gujarati MT&quot;, &quot;Gujarati Sangam MN&quot;, Vrinda, &quot;Bangla Sangam MN&quot;, &quot;Meiryo UI&quot;, メイリオ, &quot;MS UI Gothic Reg&quot;, &quot;Hiragino Kaku Gothic Reg&quot;, &quot;ヒラギノ角ゴ Pro W3 Reg&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, &quot;Hiragino Sans GB&quot;, &quot;Microsoft JhengHei&quot;, 微軟正黑體, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Gulim, AppleGothic, &quot;Apple LiGothic&quot;, &quot;LiHei Pro&quot;, Osaka, STHeiti, 华文黑体, STXihei, 华文细黑, SimHei, 黑体, &quot;Arial Unicode MS&quot;, Arial, sans-serif;\"></span><br style=\"font-family: Roboto, &quot;Cordia New&quot;, &quot;Microsoft Sans Serif&quot;, Utsaah, &quot;Devanagari MT&quot;, &quot;Nirmala UI&quot;, Latha, InaiMathi, Gautami, &quot;Telugu Sangam MN&quot;, Tunga, &quot;Kannada Sangam MN&quot;, Kartika, &quot;Malayalam Sangam MN&quot;, Shruti, &quot;Gujarati MT&quot;, &quot;Gujarati Sangam MN&quot;, Vrinda, &quot;Bangla Sangam MN&quot;, &quot;Meiryo UI&quot;, メイリオ, &quot;MS UI Gothic Reg&quot;, &quot;Hiragino Kaku Gothic Reg&quot;, &quot;ヒラギノ角ゴ Pro W3 Reg&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, &quot;Hiragino Sans GB&quot;, &quot;Microsoft JhengHei&quot;, 微軟正黑體, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Gulim, AppleGothic, &quot;Apple LiGothic&quot;, &quot;LiHei Pro&quot;, Osaka, STHeiti, 华文黑体, STXihei, 华文细黑, SimHei, 黑体, &quot;Arial Unicode MS&quot;, Arial, sans-serif;\"><span style=\"font-family: Roboto, &quot;Cordia New&quot;, &quot;Microsoft Sans Serif&quot;, Utsaah, &quot;Devanagari MT&quot;, &quot;Nirmala UI&quot;, Latha, InaiMathi, Gautami, &quot;Telugu Sangam MN&quot;, Tunga, &quot;Kannada Sangam MN&quot;, Kartika, &quot;Malayalam Sangam MN&quot;, Shruti, &quot;Gujarati MT&quot;, &quot;Gujarati Sangam MN&quot;, Vrinda, &quot;Bangla Sangam MN&quot;, &quot;Meiryo UI&quot;, メイリオ, &quot;MS UI Gothic Reg&quot;, &quot;Hiragino Kaku Gothic Reg&quot;, &quot;ヒラギノ角ゴ Pro W3 Reg&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, &quot;Hiragino Sans GB&quot;, &quot;Microsoft JhengHei&quot;, 微軟正黑體, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Gulim, AppleGothic, &quot;Apple LiGothic&quot;, &quot;LiHei Pro&quot;, Osaka, STHeiti, 华文黑体, STXihei, 华文细黑, SimHei, 黑体, &quot;Arial Unicode MS&quot;, Arial, sans-serif;\">When you buy a laptop from Dell, you can have confidence that you\'re getting the best price: we\'ll match the price of any equivalent product advertised online. Learn more&nbsp;</span><a href=\"https://www.dell.com/en-us/shop/price-match-guarantee/cp/price-match-guarantee\" style=\"text-size-adjust: 100%; cursor: pointer; font-family: Roboto, &quot;Cordia New&quot;, &quot;Microsoft Sans Serif&quot;, Utsaah, &quot;Devanagari MT&quot;, &quot;Nirmala UI&quot;, Latha, InaiMathi, Gautami, &quot;Telugu Sangam MN&quot;, Tunga, &quot;Kannada Sangam MN&quot;, Kartika, &quot;Malayalam Sangam MN&quot;, Shruti, &quot;Gujarati MT&quot;, &quot;Gujarati Sangam MN&quot;, Vrinda, &quot;Bangla Sangam MN&quot;, &quot;Meiryo UI&quot;, メイリオ, &quot;MS UI Gothic Reg&quot;, &quot;Hiragino Kaku Gothic Reg&quot;, &quot;ヒラギノ角ゴ Pro W3 Reg&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, &quot;Hiragino Sans GB&quot;, &quot;Microsoft JhengHei&quot;, 微軟正黑體, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Gulim, AppleGothic, &quot;Apple LiGothic&quot;, &quot;LiHei Pro&quot;, Osaka, STHeiti, 华文黑体, STXihei, 华文细黑, SimHei, 黑体, &quot;Arial Unicode MS&quot;, Arial, sans-serif;\">here</a><span style=\"font-family: Roboto, &quot;Cordia New&quot;, &quot;Microsoft Sans Serif&quot;, Utsaah, &quot;Devanagari MT&quot;, &quot;Nirmala UI&quot;, Latha, InaiMathi, Gautami, &quot;Telugu Sangam MN&quot;, Tunga, &quot;Kannada Sangam MN&quot;, Kartika, &quot;Malayalam Sangam MN&quot;, Shruti, &quot;Gujarati MT&quot;, &quot;Gujarati Sangam MN&quot;, Vrinda, &quot;Bangla Sangam MN&quot;, &quot;Meiryo UI&quot;, メイリオ, &quot;MS UI Gothic Reg&quot;, &quot;Hiragino Kaku Gothic Reg&quot;, &quot;ヒラギノ角ゴ Pro W3 Reg&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, &quot;Hiragino Sans GB&quot;, &quot;Microsoft JhengHei&quot;, 微軟正黑體, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Gulim, AppleGothic, &quot;Apple LiGothic&quot;, &quot;LiHei Pro&quot;, Osaka, STHeiti, 华文黑体, STXihei, 华文细黑, SimHei, 黑体, &quot;Arial Unicode MS&quot;, Arial, sans-serif;\">.</span><br style=\"font-family: Roboto, &quot;Cordia New&quot;, &quot;Microsoft Sans Serif&quot;, Utsaah, &quot;Devanagari MT&quot;, &quot;Nirmala UI&quot;, Latha, InaiMathi, Gautami, &quot;Telugu Sangam MN&quot;, Tunga, &quot;Kannada Sangam MN&quot;, Kartika, &quot;Malayalam Sangam MN&quot;, Shruti, &quot;Gujarati MT&quot;, &quot;Gujarati Sangam MN&quot;, Vrinda, &quot;Bangla Sangam MN&quot;, &quot;Meiryo UI&quot;, メイリオ, &quot;MS UI Gothic Reg&quot;, &quot;Hiragino Kaku Gothic Reg&quot;, &quot;ヒラギノ角ゴ Pro W3 Reg&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, &quot;Hiragino Sans GB&quot;, &quot;Microsoft JhengHei&quot;, 微軟正黑體, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Gulim, AppleGothic, &quot;Apple LiGothic&quot;, &quot;LiHei Pro&quot;, Osaka, STHeiti, 华文黑体, STXihei, 华文细黑, SimHei, 黑体, &quot;Arial Unicode MS&quot;, Arial, sans-serif;\"><br style=\"font-family: Roboto, &quot;Cordia New&quot;, &quot;Microsoft Sans Serif&quot;, Utsaah, &quot;Devanagari MT&quot;, &quot;Nirmala UI&quot;, Latha, InaiMathi, Gautami, &quot;Telugu Sangam MN&quot;, Tunga, &quot;Kannada Sangam MN&quot;, Kartika, &quot;Malayalam Sangam MN&quot;, Shruti, &quot;Gujarati MT&quot;, &quot;Gujarati Sangam MN&quot;, Vrinda, &quot;Bangla Sangam MN&quot;, &quot;Meiryo UI&quot;, メイリオ, &quot;MS UI Gothic Reg&quot;, &quot;Hiragino Kaku Gothic Reg&quot;, &quot;ヒラギノ角ゴ Pro W3 Reg&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, &quot;Hiragino Sans GB&quot;, &quot;Microsoft JhengHei&quot;, 微軟正黑體, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Gulim, AppleGothic, &quot;Apple LiGothic&quot;, &quot;LiHei Pro&quot;, Osaka, STHeiti, 华文黑体, STXihei, 华文细黑, SimHei, 黑体, &quot;Arial Unicode MS&quot;, Arial, sans-serif;\"><span style=\"font-weight: bolder; font-family: Roboto, &quot;Cordia New&quot;, &quot;Microsoft Sans Serif&quot;, Utsaah, &quot;Devanagari MT&quot;, &quot;Nirmala UI&quot;, Latha, InaiMathi, Gautami, &quot;Telugu Sangam MN&quot;, Tunga, &quot;Kannada Sangam MN&quot;, Kartika, &quot;Malayalam Sangam MN&quot;, Shruti, &quot;Gujarati MT&quot;, &quot;Gujarati Sangam MN&quot;, Vrinda, &quot;Bangla Sangam MN&quot;, &quot;Meiryo UI&quot;, メイリオ, &quot;MS UI Gothic Reg&quot;, &quot;Hiragino Kaku Gothic Reg&quot;, &quot;ヒラギノ角ゴ Pro W3 Reg&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, &quot;Hiragino Sans GB&quot;, &quot;Microsoft JhengHei&quot;, 微軟正黑體, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Gulim, AppleGothic, &quot;Apple LiGothic&quot;, &quot;LiHei Pro&quot;, Osaka, STHeiti, 华文黑体, STXihei, 华文细黑, SimHei, 黑体, &quot;Arial Unicode MS&quot;, Arial, sans-serif;\">Technical assistance</span><span style=\"font-family: Roboto, &quot;Cordia New&quot;, &quot;Microsoft Sans Serif&quot;, Utsaah, &quot;Devanagari MT&quot;, &quot;Nirmala UI&quot;, Latha, InaiMathi, Gautami, &quot;Telugu Sangam MN&quot;, Tunga, &quot;Kannada Sangam MN&quot;, Kartika, &quot;Malayalam Sangam MN&quot;, Shruti, &quot;Gujarati MT&quot;, &quot;Gujarati Sangam MN&quot;, Vrinda, &quot;Bangla Sangam MN&quot;, &quot;Meiryo UI&quot;, メイリオ, &quot;MS UI Gothic Reg&quot;, &quot;Hiragino Kaku Gothic Reg&quot;, &quot;ヒラギノ角ゴ Pro W3 Reg&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, &quot;Hiragino Sans GB&quot;, &quot;Microsoft JhengHei&quot;, 微軟正黑體, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Gulim, AppleGothic, &quot;Apple LiGothic&quot;, &quot;LiHei Pro&quot;, Osaka, STHeiti, 华文黑体, STXihei, 华文细黑, SimHei, 黑体, &quot;Arial Unicode MS&quot;, Arial, sans-serif;\"></span><br style=\"font-family: Roboto, &quot;Cordia New&quot;, &quot;Microsoft Sans Serif&quot;, Utsaah, &quot;Devanagari MT&quot;, &quot;Nirmala UI&quot;, Latha, InaiMathi, Gautami, &quot;Telugu Sangam MN&quot;, Tunga, &quot;Kannada Sangam MN&quot;, Kartika, &quot;Malayalam Sangam MN&quot;, Shruti, &quot;Gujarati MT&quot;, &quot;Gujarati Sangam MN&quot;, Vrinda, &quot;Bangla Sangam MN&quot;, &quot;Meiryo UI&quot;, メイリオ, &quot;MS UI Gothic Reg&quot;, &quot;Hiragino Kaku Gothic Reg&quot;, &quot;ヒラギノ角ゴ Pro W3 Reg&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, &quot;Hiragino Sans GB&quot;, &quot;Microsoft JhengHei&quot;, 微軟正黑體, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Gulim, AppleGothic, &quot;Apple LiGothic&quot;, &quot;LiHei Pro&quot;, Osaka, STHeiti, 华文黑体, STXihei, 华文细黑, SimHei, 黑体, &quot;Arial Unicode MS&quot;, Arial, sans-serif;\"><span style=\"font-family: Roboto, &quot;Cordia New&quot;, &quot;Microsoft Sans Serif&quot;, Utsaah, &quot;Devanagari MT&quot;, &quot;Nirmala UI&quot;, Latha, InaiMathi, Gautami, &quot;Telugu Sangam MN&quot;, Tunga, &quot;Kannada Sangam MN&quot;, Kartika, &quot;Malayalam Sangam MN&quot;, Shruti, &quot;Gujarati MT&quot;, &quot;Gujarati Sangam MN&quot;, Vrinda, &quot;Bangla Sangam MN&quot;, &quot;Meiryo UI&quot;, メイリオ, &quot;MS UI Gothic Reg&quot;, &quot;Hiragino Kaku Gothic Reg&quot;, &quot;ヒラギノ角ゴ Pro W3 Reg&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, &quot;Hiragino Sans GB&quot;, &quot;Microsoft JhengHei&quot;, 微軟正黑體, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Gulim, AppleGothic, &quot;Apple LiGothic&quot;, &quot;LiHei Pro&quot;, Osaka, STHeiti, 华文黑体, STXihei, 华文细黑, SimHei, 黑体, &quot;Arial Unicode MS&quot;, Arial, sans-serif;\">Your Dell laptop comes with technical support available over the phone and online, with&nbsp;</span><font face=\"Roboto, Cordia New, Microsoft Sans Serif, Utsaah, Devanagari MT, Nirmala UI, Latha, InaiMathi, Gautami, Telugu Sangam MN, Tunga, Kannada Sangam MN, Kartika, Malayalam Sangam MN, Shruti, Gujarati MT, Gujarati Sangam MN, Vrinda, Bangla Sangam MN, Meiryo UI, メイリオ, MS UI Gothic Reg, Hiragino Kaku Gothic Reg, ヒラギノ角ゴ Pro W3 Reg, Microsoft YaHei, 微软雅黑, Hiragino Sans GB, Microsoft JhengHei, 微軟正黑體, Malgun Gothic, 맑은 고딕, Gulim, AppleGothic, Apple LiGothic, LiHei Pro, Osaka, STHeiti, 华文黑体, STXihei, 华文细黑, SimHei, 黑体, Arial Unicode MS, Arial, sans-serif\"><span style=\"cursor: pointer;\">experts</span></font><span style=\"font-family: Roboto, &quot;Cordia New&quot;, &quot;Microsoft Sans Serif&quot;, Utsaah, &quot;Devanagari MT&quot;, &quot;Nirmala UI&quot;, Latha, InaiMathi, Gautami, &quot;Telugu Sangam MN&quot;, Tunga, &quot;Kannada Sangam MN&quot;, Kartika, &quot;Malayalam Sangam MN&quot;, Shruti, &quot;Gujarati MT&quot;, &quot;Gujarati Sangam MN&quot;, Vrinda, &quot;Bangla Sangam MN&quot;, &quot;Meiryo UI&quot;, メイリオ, &quot;MS UI Gothic Reg&quot;, &quot;Hiragino Kaku Gothic Reg&quot;, &quot;ヒラギノ角ゴ Pro W3 Reg&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, &quot;Hiragino Sans GB&quot;, &quot;Microsoft JhengHei&quot;, 微軟正黑體, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Gulim, AppleGothic, &quot;Apple LiGothic&quot;, &quot;LiHei Pro&quot;, Osaka, STHeiti, 华文黑体, STXihei, 华文细黑, SimHei, 黑体, &quot;Arial Unicode MS&quot;, Arial, sans-serif;\">&nbsp;who are always available to help you resolve any issue.</span></font></span><br></p>', '26,6,1,14', 500.00, 650.00, 7, 15, NULL, 'Yes', 'LP-0011', 'LP-0011', 'No', NULL, 1, '2024-09-02 03:40:36', '2024-09-02 03:40:36');
INSERT INTO `products` (`id`, `title`, `slug`, `description`, `short_description`, `shipping_returns`, `related_products`, `price`, `compare_price`, `category_id`, `sub_category_id`, `brand_id`, `is_featured`, `sku`, `barcode`, `track_qty`, `qty`, `status`, `created_at`, `updated_at`) VALUES
(76, 'Jeans and shirt', 'jeans-and-shirt', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\"</span><br></p>', '<p><span style=\"color: rgb(17, 17, 17); font-family: Inter, sans-serif; font-size: 17px; background-color: rgb(243, 243, 243);\">All your shirts shrink in size after you wash them? This product is machine washable in just 30 minutes and will keep its color like new.</span><br></p>', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\"</span><br></p>', '75', 200.00, 350.00, 2, 13, NULL, 'Yes', 'JS-001122', 'JS-001122', 'No', NULL, 1, '2024-09-02 04:31:13', '2024-09-02 04:31:13'),
(77, 'Jeans and T-Shirts', 'jeans-and-t-shirts', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</span><br></p>', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable</span><br></p>', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</span><br></p>', '76', 200.00, 300.00, 2, NULL, NULL, 'Yes', 'JTS-0011', 'JTS-0011', 'No', NULL, 1, '2024-09-02 04:35:28', '2024-09-02 04:35:28'),
(78, 'Drone Camera', 'drone-camera', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</span><br></p>', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable</span><br></p>', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</span><br></p>', '75,26,1,77', 500.00, 800.00, 7, NULL, 3, 'Yes', 'DC-0123', 'DC-0123', 'No', NULL, 1, '2024-09-02 04:50:05', '2024-09-02 04:50:05'),
(79, 'Bedroom Sets', 'bedroom-sets', '<p><span style=\"color: rgb(65, 81, 97); font-family: Montserrat; font-size: 13px;\">Light, open, spacious and it’s mine. My bedroom is the best place in the house because of the way that it gets the warmth of the sun, the way that it has my favorite colour as a feature wall and because everyone in my family is jealous of it. The best bit is that I didn’t even pick it.My bedroom sits at the front of the house looking over the road and into the sun.</span><br style=\"color: rgb(65, 81, 97); font-family: Montserrat; font-size: 13px;\"><br style=\"color: rgb(65, 81, 97); font-family: Montserrat; font-size: 13px;\"><span style=\"color: rgb(65, 81, 97); font-family: Montserrat; font-size: 13px;\">The first and the best part about my room is the layout. It has a great layout because of the way that my comfy double bed gets most of the sun.As you open the door to my bedroom a sudden warmth invites you in. On the right hand side as you walk in there is an orange feature wall with a small white window towards the top. Under the small window is my bed and to the left of the bed is my small bedside table with my grey shaded lamp on top. To the right of my bed is my set of wood stained brown patterned drawers with my guitar up against them. Right in front of you as you walk in is my blue patterned desk with my small, white basketball hoop hanging above. Opposite the set of drawers is my build in wardrobe with my blue and red triangle patterned shelves.Also right in front of you as you walk in there is my big white window which is the main source of light. This layout works really well for me.</span><br></p>', '<p><span style=\"color: rgb(65, 81, 97); font-family: Montserrat; font-size: 13px;\">Light, open, spacious and it’s mine. My bedroom is the best place in the house because of the way that it gets the warmth of the sun, the way that it has my favorite colour as a feature wall and because everyone in my family is jealous of it. The best bit is that I didn’t even pick it.My bedroom sits at the front of the house looking over the road and into the sun.</span><br></p>', '<p><span style=\"color: rgb(65, 81, 97); font-family: Montserrat; font-size: 13px;\">Light, open, spacious and it’s mine. My bedroom is the best place in the house because of the way that it gets the warmth of the sun, the way that it has my favorite colour as a feature wall and because everyone in my family is jealous of it. The best bit is that I didn’t even pick it.My bedroom sits at the front of the house looking over the road and into the sun.</span><br style=\"color: rgb(65, 81, 97); font-family: Montserrat; font-size: 13px;\"><br style=\"color: rgb(65, 81, 97); font-family: Montserrat; font-size: 13px;\"><span style=\"color: rgb(65, 81, 97); font-family: Montserrat; font-size: 13px;\">The first and the best part about my room is the layout. It has a great layout because of the way that my comfy double bed gets most of the sun.As you open the door to my bedroom a sudden warmth invites you in. On the right hand side as you walk in there is an orange feature wall with a small white window towards the top. Under the small window is my bed and to the left of the bed is my small bedside table with my grey shaded lamp on top. To the right of my bed is my set of wood stained brown patterned drawers with my guitar up against them. Right in front of you as you walk in is my blue patterned desk with my small, white basketball hoop hanging above. Opposite the set of drawers is my build in wardrobe with my blue and red triangle patterned shelves.Also right in front of you as you walk in there is my big white window which is the main source of light. This layout works really well for me.</span><br></p>', '78,74,75,76', 1000.00, 1500.00, 3, 10, NULL, 'Yes', 'BS-0011', 'BS-0011', 'No', NULL, 1, '2024-09-02 04:57:13', '2024-09-02 04:57:13'),
(80, 'Zinger Burger', 'zinger-burger', '<p><span style=\"color: rgb(65, 81, 97); font-family: Montserrat; font-size: 13px;\">Light, open, spacious and it’s mine. My bedroom is the best place in the house because of the way that it gets the warmth of the sun, the way that it has my favorite colour as a feature wall and because everyone in my family is jealous of it. The best bit is that I didn’t even pick it.My bedroom sits at the front of the house looking over the road and into the sun.</span><br style=\"color: rgb(65, 81, 97); font-family: Montserrat; font-size: 13px;\"><br style=\"color: rgb(65, 81, 97); font-family: Montserrat; font-size: 13px;\"><span style=\"color: rgb(65, 81, 97); font-family: Montserrat; font-size: 13px;\">The first and the best part about my room is the layout. It has a great layout because of the way that my comfy double bed gets most of the sun.As you open the door to my bedroom a sudden warmth invites you in. On the right hand side as you walk in there is an orange feature wall with a small white window towards the top. Under the small window is my bed and to the left of the bed is my small bedside table with my grey shaded lamp on top. To the right of my bed is my set of wood stained brown patterned drawers with my guitar up against them. Right in front of you as you walk in is my blue patterned desk with my small, white basketball hoop hanging above. Opposite the set of drawers is my build in wardrobe with my blue and red triangle patterned shelves.Also right in front of you as you walk in there is my big white window which is the main source of light. This layout works really well for me.</span><br></p>', '<p><span style=\"color: rgb(65, 81, 97); font-family: Montserrat; font-size: 13px;\">Light, open, spacious and it’s mine. My bedroom is the best place in the house because of the way that it gets the warmth of the sun, the way that it has my favorite colour as a feature wall and because everyone in my family is jealous of it. The best bit is that I didn’t even pick it.My bedroom sits at the front of the house looking over the road and into the sun.</span><br></p>', '<p><span style=\"color: rgb(65, 81, 97); font-family: Montserrat; font-size: 13px;\">Light, open, spacious and it’s mine. My bedroom is the best place in the house because of the way that it gets the warmth of the sun, the way that it has my favorite colour as a feature wall and because everyone in my family is jealous of it. The best bit is that I didn’t even pick it.My bedroom sits at the front of the house looking over the road and into the sun.</span><br style=\"color: rgb(65, 81, 97); font-family: Montserrat; font-size: 13px;\"><br style=\"color: rgb(65, 81, 97); font-family: Montserrat; font-size: 13px;\"><span style=\"color: rgb(65, 81, 97); font-family: Montserrat; font-size: 13px;\">The first and the best part about my room is the layout. It has a great layout because of the way that my comfy double bed gets most of the sun.As you open the door to my bedroom a sudden warmth invites you in. On the right hand side as you walk in there is an orange feature wall with a small white window towards the top. Under the small window is my bed and to the left of the bed is my small bedside table with my grey shaded lamp on top. To the right of my bed is my set of wood stained brown patterned drawers with my guitar up against them. Right in front of you as you walk in is my blue patterned desk with my small, white basketball hoop hanging above. Opposite the set of drawers is my build in wardrobe with my blue and red triangle patterned shelves.Also right in front of you as you walk in there is my big white window which is the main source of light. This layout works really well for me.</span><br></p>', '74,75,78,79', 10.00, 15.00, 4, 6, NULL, 'Yes', 'BG-1234', 'BG-1234', 'No', NULL, 1, '2024-09-02 05:03:04', '2024-09-02 05:05:59'),
(81, 'Bicycle', 'bicycle', '<p><span style=\"color: rgb(65, 81, 97); font-family: Montserrat; font-size: 13px;\">Light, open, spacious and it’s mine. My bedroom is the best place in the house because of the way that it gets the warmth of the sun, the way that it has my favorite colour as a feature wall and because everyone in my family is jealous of it. The best bit is that I didn’t even pick it.My bedroom sits at the front of the house looking over the road and into the sun.</span><br style=\"color: rgb(65, 81, 97); font-family: Montserrat; font-size: 13px;\"><br style=\"color: rgb(65, 81, 97); font-family: Montserrat; font-size: 13px;\"><span style=\"color: rgb(65, 81, 97); font-family: Montserrat; font-size: 13px;\">The first and the best part about my room is the layout. It has a great layout because of the way that my comfy double bed gets most of the sun.As you open the door to my bedroom a sudden warmth invites you in. On the right hand side as you walk in there is an orange feature wall with a small white window towards the top. Under the small window is my bed and to the left of the bed is my small bedside table with my grey shaded lamp on top. To the right of my bed is my set of wood stained brown patterned drawers with my guitar up against them. Right in front of you as you walk in is my blue patterned desk with my small, white basketball hoop hanging above. Opposite the set of drawers is my build in wardrobe with my blue and red triangle patterned shelves.Also right in front of you as you walk in there is my big white window which is the main source of light. This layout works really well for me.</span><br></p>', '<p><span style=\"color: rgb(65, 81, 97); font-family: Montserrat; font-size: 13px;\">Light, open, spacious and it’s mine. My bedroom is the best place in the house because of the way that it gets the warmth of the sun, the way that it has my favorite colour as a feature wall and because everyone in my family is jealous of it. The best bit is that I didn’t even pick it.My bedroom sits at the front of the house looking over the road and into the sun.</span><br></p>', '<p><span style=\"color: rgb(65, 81, 97); font-family: Montserrat; font-size: 13px;\">Light, open, spacious and it’s mine. My bedroom is the best place in the house because of the way that it gets the warmth of the sun, the way that it has my favorite colour as a feature wall and because everyone in my family is jealous of it. The best bit is that I didn’t even pick it.My bedroom sits at the front of the house looking over the road and into the sun.</span><br style=\"color: rgb(65, 81, 97); font-family: Montserrat; font-size: 13px;\"><br style=\"color: rgb(65, 81, 97); font-family: Montserrat; font-size: 13px;\"><span style=\"color: rgb(65, 81, 97); font-family: Montserrat; font-size: 13px;\">The first and the best part about my room is the layout. It has a great layout because of the way that my comfy double bed gets most of the sun.As you open the door to my bedroom a sudden warmth invites you in. On the right hand side as you walk in there is an orange feature wall with a small white window towards the top. Under the small window is my bed and to the left of the bed is my small bedside table with my grey shaded lamp on top. To the right of my bed is my set of wood stained brown patterned drawers with my guitar up against them. Right in front of you as you walk in is my blue patterned desk with my small, white basketball hoop hanging above. Opposite the set of drawers is my build in wardrobe with my blue and red triangle patterned shelves.Also right in front of you as you walk in there is my big white window which is the main source of light. This layout works really well for me.</span><br></p>', '74,78,75,77', 300.00, 500.00, 2, 13, NULL, 'Yes', 'BC-1478', 'BC-1478', 'No', NULL, 1, '2024-09-02 05:18:10', '2024-09-02 05:18:10');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `sort_order`, `created_at`, `updated_at`) VALUES
(28, 74, '74-28-1725265563.jpg', NULL, '2024-09-02 03:26:03', '2024-09-02 03:26:03'),
(29, 74, '74-29-1725265571.jpg', NULL, '2024-09-02 03:26:11', '2024-09-02 03:26:11'),
(30, 74, '74-30-1725265576.jpg', NULL, '2024-09-02 03:26:16', '2024-09-02 03:26:16'),
(31, 75, '75-31-1725266436.jpg', NULL, '2024-09-02 03:40:36', '2024-09-02 03:40:36'),
(32, 75, '75-32-1725266436.jpg', NULL, '2024-09-02 03:40:36', '2024-09-02 03:40:36'),
(33, 75, '75-33-1725266436.jpg', NULL, '2024-09-02 03:40:36', '2024-09-02 03:40:36'),
(37, 76, '76-37-1725269473.jpg', NULL, '2024-09-02 04:31:13', '2024-09-02 04:31:13'),
(38, 76, '76-38-1725269479.jpg', NULL, '2024-09-02 04:31:19', '2024-09-02 04:31:19'),
(39, 76, '76-39-1725269486.jpg', NULL, '2024-09-02 04:31:26', '2024-09-02 04:31:26'),
(40, 77, '77-40-1725269729.jpg', NULL, '2024-09-02 04:35:29', '2024-09-02 04:35:29'),
(41, 77, '77-41-1725269734.jpg', NULL, '2024-09-02 04:35:34', '2024-09-02 04:35:34'),
(42, 77, '77-42-1725269739.jpg', NULL, '2024-09-02 04:35:39', '2024-09-02 04:35:39'),
(43, 78, '78-43-1725270605.jpg', NULL, '2024-09-02 04:50:05', '2024-09-02 04:50:05'),
(44, 78, '78-44-1725270609.jpg', NULL, '2024-09-02 04:50:09', '2024-09-02 04:50:09'),
(45, 78, '78-45-1725270613.jpg', NULL, '2024-09-02 04:50:13', '2024-09-02 04:50:13'),
(46, 78, '78-46-1725270618.jpg', NULL, '2024-09-02 04:50:17', '2024-09-02 04:50:18'),
(47, 78, '78-47-1725270622.jpg', NULL, '2024-09-02 04:50:22', '2024-09-02 04:50:22'),
(48, 78, '78-48-1725270626.jpg', NULL, '2024-09-02 04:50:26', '2024-09-02 04:50:26'),
(49, 79, '79-49-1725271033.jpg', NULL, '2024-09-02 04:57:13', '2024-09-02 04:57:13'),
(50, 79, '79-50-1725271034.jpg', NULL, '2024-09-02 04:57:14', '2024-09-02 04:57:14'),
(51, 79, '79-51-1725271034.jpg', NULL, '2024-09-02 04:57:14', '2024-09-02 04:57:14'),
(56, 80, '80-56-1725271519.jpg', NULL, '2024-09-02 05:05:19', '2024-09-02 05:05:19'),
(57, 80, '80-57-1725271537.jpg', NULL, '2024-09-02 05:05:37', '2024-09-02 05:05:37'),
(58, 80, '80-58-1725271543.jpg', NULL, '2024-09-02 05:05:43', '2024-09-02 05:05:43'),
(59, 81, '81-59-1725272290.jpg', NULL, '2024-09-02 05:18:10', '2024-09-02 05:18:10'),
(60, 81, '81-60-1725272292.jpg', NULL, '2024-09-02 05:18:12', '2024-09-02 05:18:12');

-- --------------------------------------------------------

--
-- Table structure for table `product_ratings`
--

CREATE TABLE `product_ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `rating` double(3,2) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_ratings`
--

INSERT INTO `product_ratings` (`id`, `product_id`, `username`, `email`, `comment`, `rating`, `status`, `created_at`, `updated_at`) VALUES
(1, 81, 'John Doe', 'john@example.com', 'Good Product', 5.00, 1, '2024-09-03 14:12:36', '2024-09-04 12:53:55'),
(2, 81, 'Mark Doe', 'mark@example.com', 'Awesome', 4.00, 1, '2024-09-03 14:40:33', '2024-09-04 12:53:50'),
(3, 81, 'Mark', 'm@example.com', 'My experience was really bad', 3.00, 1, '2024-09-03 15:39:21', '2024-09-04 12:52:37');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_charges`
--

CREATE TABLE `shipping_charges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_id` varchar(255) NOT NULL,
  `amount` double(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_charges`
--

INSERT INTO `shipping_charges` (`id`, `country_id`, `amount`, `created_at`, `updated_at`) VALUES
(1, '100', 10.00, '2024-08-22 05:18:01', '2024-08-22 05:18:01'),
(6, '16', 10.00, '2024-08-22 06:28:59', '2024-08-22 06:28:59'),
(7, 'rest_of_world', 50.00, '2024-08-22 06:29:17', '2024-08-22 06:29:17'),
(8, '37', 50.00, '2024-09-04 06:40:10', '2024-09-04 06:40:10');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `showHome` enum('Yes','No') NOT NULL DEFAULT 'No',
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `name`, `slug`, `status`, `showHome`, `category_id`, `created_at`, `updated_at`) VALUES
(5, 'Fruits', 'fruits', 1, 'No', 4, '2024-08-17 11:53:21', '2024-08-17 11:53:21'),
(6, 'Fast Food', 'fast-food', 1, 'No', 4, '2024-08-17 11:53:38', '2024-08-17 11:53:38'),
(8, 'Cosmetics', 'cosmetics', 1, 'No', 2, '2024-08-17 11:56:35', '2024-08-17 11:56:35'),
(9, 'Jewellery', 'jewellery', 1, 'No', 2, '2024-08-17 11:57:04', '2024-08-17 11:57:04'),
(10, 'Home Furniture', 'home-furniture', 1, 'Yes', 3, '2024-08-17 11:57:46', '2024-08-18 13:28:53'),
(11, 'Office Furniture', 'office-furniture', 1, 'Yes', 3, '2024-08-17 11:59:44', '2024-08-18 13:29:05'),
(12, 'Foot Wear', 'foot-wear', 1, 'No', 2, '2024-08-17 12:02:49', '2024-08-17 12:02:49'),
(13, 'Accessories', 'accessories', 1, 'No', 2, '2024-08-17 12:11:23', '2024-08-17 12:11:23'),
(15, 'Laptop', 'laptop', 1, 'Yes', 7, '2024-09-02 03:30:58', '2024-09-02 03:30:58');

-- --------------------------------------------------------

--
-- Table structure for table `temp_images`
--

CREATE TABLE `temp_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `temp_images`
--

INSERT INTO `temp_images` (`id`, `name`, `created_at`, `updated_at`) VALUES
(64, '1725473969.jpg', '2024-09-04 13:19:29', '2024-09-04 13:19:29'),
(65, '1725473974.jpg', '2024-09-04 13:19:34', '2024-09-04 13:19:34'),
(66, '66-1725475555.jpg', '2024-09-04 13:45:55', '2024-09-04 13:45:55'),
(67, '67-1725475792.jfif', '2024-09-04 13:49:51', '2024-09-04 13:49:52'),
(68, '68-1725475793.jfif', '2024-09-04 13:49:53', '2024-09-04 13:49:53'),
(69, '69-1725475793.jpg', '2024-09-04 13:49:53', '2024-09-04 13:49:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `role` int(11) NOT NULL DEFAULT 1,
  `status` int(11) NOT NULL DEFAULT 1,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `role`, `status`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@example.com', '45454545', 2, 1, NULL, '$2y$10$HcuAkKJLvukfWTpD6gQZOOnDuSBiA7bgm.ePnyhpVyzvcOGgLANem', NULL, NULL, '2024-08-28 15:48:01'),
(3, 'John Doe', 'john@example.com', '545444', 1, 1, NULL, '$2y$10$xANwBov2FG08sEBkop14R.qAXeNvmzvbvzzwWzQQM6tM6pNpWrQVi', NULL, '2024-08-21 04:13:19', '2024-08-21 04:13:19'),
(4, 'Mark Doe', 'mark@example.com', '123456789', 1, 1, NULL, '$2y$10$AcbqxoW7yF.fqZHCCbiZ2OqEjrZHkXC6rt1Tqtk.mbwgxEqm2Xa06', NULL, '2024-08-21 04:26:41', '2024-08-29 06:24:23');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(2, 4, 74, '2024-08-25 14:29:10', '2024-08-25 14:29:10');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_addresses`
--
ALTER TABLE `customer_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_addresses_user_id_foreign` (`user_id`),
  ADD KEY `customer_addresses_country_id_foreign` (`country_id`);

--
-- Indexes for table `discount_coupons`
--
ALTER TABLE `discount_coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_country_id_foreign` (`country_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_sub_category_id_foreign` (`sub_category_id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_ratings`
--
ALTER TABLE `product_ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_ratings_product_id_foreign` (`product_id`);

--
-- Indexes for table `shipping_charges`
--
ALTER TABLE `shipping_charges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `temp_images`
--
ALTER TABLE `temp_images`
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
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlists_user_id_foreign` (`user_id`),
  ADD KEY `wishlists_product_id_foreign` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;

--
-- AUTO_INCREMENT for table `customer_addresses`
--
ALTER TABLE `customer_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `discount_coupons`
--
ALTER TABLE `discount_coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `product_ratings`
--
ALTER TABLE `product_ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `shipping_charges`
--
ALTER TABLE `shipping_charges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `temp_images`
--
ALTER TABLE `temp_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer_addresses`
--
ALTER TABLE `customer_addresses`
  ADD CONSTRAINT `customer_addresses_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `customer_addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_sub_category_id_foreign` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_ratings`
--
ALTER TABLE `product_ratings`
  ADD CONSTRAINT `product_ratings_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `sub_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
