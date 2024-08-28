-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 29, 2024 at 01:12 PM
-- Server version: 8.0.36-cll-lve
-- PHP Version: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `csqebdor_sqi`
--

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `representative_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(112) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pub_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_id` int NOT NULL,
  `vendortype_id` int NOT NULL,
  `status` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `name`, `address`, `representative_name`, `mobile`, `email`, `code`, `pub_code`, `company_id`, `vendortype_id`, `status`, `created_at`, `updated_at`) VALUES
(9, 'Gulshan Flagship Store', 'Plot #128, Block: CEN(H), Gulshan Avenue, Dhaka-1212', 'Ahsanul Islam', '01755-587911', 'yellowcustomerservice@beximtex.com', 'Vi6NrTJ618LkAr7khFyt', 'qwDmAVFmghrMG2bycfDzFrq2WmxwHI', 6, 19, 1, '2024-02-01 10:10:07', '2024-02-02 04:53:00'),
(10, 'Dhanmondi Flagship Store', 'House# 17, Road# 02, Dhanmondi', 'Shajjad Khan', '+8801755533500', 'whatsemon@gmail.com', 'IUZSu50qDNf97FuLzN5K', 'xF3LZTqGeusePyx85bsURZ6qdlcZut', 6, 19, 1, '2024-02-01 10:10:07', '2024-02-02 04:53:07'),
(11, 'Main Branch', 'House no. 224, College gate, tongi, Gazipur', 'Mamun Hasan Emon', '01303997358', 'cw@gmail.com', 'u8ZMe0xJcmoBqOHLXxIL', 'zCIe2UALVJ7pM0wtpNQgK8P8o4eUe0', 7, 24, 1, '2024-02-01 13:50:10', '2024-02-15 19:57:10'),
(12, 'Head Office', 'House no. 224, College gate, tongi, Gazipur', 'Mamun Hasan Emon', '01303997358', 'whatsemon@gmail.com', 'zBBH1NSv8ToHTTQVcnVZ', 'VtcjcHremHJ9V3SGmy1UisCCRNmGux', 7, 24, 1, '2024-02-01 13:50:10', '2024-02-15 19:57:16'),
(14, 'Main Branch', 'House no. 224, College gate, tongi, Gazipur', 'Mamun Hasan Emon', '01303997358', 'ebiyecom@mail.com', 'GsKdC9a27UfMegheLFoI', 'aaYXiOUMbGMJLTyUUPSkWh3ByjiTgk', 9, 24, 1, '2024-02-05 10:15:39', '2024-02-06 11:16:41'),
(15, 'Main Branch', 'House no. 224, College gate, tongi, Gazipur', 'Mamun Hasan Emon', '01303997358', 'whatsemon@gmail.com', 'ACqEkoFVbeWluir4nVnB', '06Ro4xAikMDNWhz2khc2NcU36kBiec', 10, 23, 1, '2024-02-06 11:57:02', '2024-02-16 09:24:19'),
(16, 'Mushiganj Branch', 'House no. 224, College gate, tongi, Gazipur', 'Mamun Hasan Emon', '01303997358', 'whatsemon@gmail.com', 'oAqvVoqncjRyf2tQCSGg', 'opITZ1XIkVATOJQOSyn7usZeY1LhfG', 10, 23, 1, '2024-02-06 11:57:02', '2024-02-06 16:55:52'),
(17, 'Main Branch', 'House no. 224, College gate, tongi, Gazipur', 'Mamun Hasan Emon', '01303997358', 'whatsemon@gmail.com', '3gOsesBrflRNPq7iN0nT', 'UQauN4sB7ImU0S3PJd0q45BlSFk1ER', 11, 25, 1, '2024-02-10 10:33:47', '2024-02-10 11:11:55'),
(18, 'Head Office', 'House no. 224, College gate, tongi, Gazipur', 'Mamun Hasan Emon', '01303997358', 'whatsemon@gmail.com', 'LpQccqWLqBa8R844S8pK', '0TTXeTnR1gVBKJ0d2wI265AhO5SzQm', 11, 25, 1, '2024-02-10 10:33:47', '2024-02-10 11:12:00'),
(19, 'Main Branch', 'House no. 224, College gate, tongi, Gazipur', 'Mamun Hasan Emon', '01303997358', 'ct@gmail.com', 'dTnKOf5GjPg6RMOOwiW6', 'SEEuINEo1JLDcvIVXHeY1D8cVT8Olr', 12, 15, 1, '2024-02-16 15:42:02', '2024-02-16 15:42:43'),
(20, 'Main Branch', 'House no. 224, College gate, tongi, Gazipur', 'Mamun Hasan Emon', '01303997358', 'whatsemon@gmail.com', 'S9xw3X0t197dxwrDf39p', 'mqwiZIFhi4YdYos8eloSF1gqtAI6JT', 13, 15, 1, '2024-02-24 05:36:23', '2024-02-26 09:26:57'),
(21, 'Mymensingh Branch', 'House no. 224, College gate, tongi, Gazipur', 'Lorem Ipsum', '01345678906', 'whatsemon@gmail.com', 'EcrE0R4X7xvKVqDc0dudk7tpB5lO0mqvgRf8lMkOIrf9McZv8p', 'EcrE0R4X7xvKVqDc0dudk7tpB5lO0mqvgRf8lMkOIrf9McZv8p', 7, 24, 1, '2024-02-26 08:32:52', '2024-02-26 10:52:45'),
(22, 'Main Branch', 'Mirpur-13, Dhaka-1216', 'Rizvi Ahmed', '01884799810', 'grafix.trends705@gmail.com', 'UC3aiGNLyVToFeQ4Yeew', 'lROQjE27Elq4BQcTI7HnqQYmmdf7we', 14, 15, 1, '2024-02-27 02:16:30', '2024-02-27 02:18:21'),
(23, 'Shewrapara', 'Shewrapara, Mirpur, Dhaka-1216', 'Rizvi Ahmed', '01550037331', 'paglasellerofficial@gmail.com', 'jcUxksFPpto8EpyxqE01', 'ohhq6OQYCmRQ0yTdef2mNFbfAoxZCn', 15, 23, 1, '2024-02-27 03:01:32', '2024-02-27 04:31:08'),
(24, 'Tongi Branch', 'House no. 224, College gate, tongi, Gazipur', 'Lorem Ipsum', '01913539767', 'uesmhe@gmail.com', '1XvXZMvnu3ab4UUEB5JZxgREzeivnDg8jC9yqveSgAShoHJ9Qm', '1XvXZMvnu3ab4UUEB5JZxgREzeivnDg8jC9yqveSgAShoHJ9Qm', 13, 15, 1, '2024-03-02 07:18:57', '2024-03-02 07:23:53'),
(25, 'Main Branch', 'Uttara', 'Babu', '01911386186', 'tareque@bus.green.edu.bd', 'dTEM4cAMGIVYWHSZbC6B', 'rsoqTH9ntswHZBFewZOWJYqsmds6Ly', 16, 2, 1, '2024-03-18 22:48:49', '2024-03-22 17:02:57');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL,
  `status` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `order`, `status`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'Reliability', 'Hjn3pwDlovP8Sn1', 1, 1, '2024-01-12 01:58:41', '2024-02-10 18:29:50', 2, 2),
(2, 'Responsiveness', 'sWQgLxir2eBR3Kp', 2, 1, '2024-01-12 02:11:50', '2024-02-10 18:30:12', 2, 2),
(3, 'Assurance', 'yUlEWqYIzBzou53', 3, 1, '2024-01-12 09:27:59', '2024-02-10 18:30:41', 2, 2),
(4, 'Empathy', 'QOy1N6bIviA2LEx', 4, 1, '2024-01-12 09:28:09', '2024-02-10 18:31:07', 2, 2),
(5, 'Tangibles', 'xf78QGRJp7SZGDV', 5, 1, '2024-01-12 09:28:26', '2024-02-10 18:31:44', 2, 2),
(6, 'Systemization of Service Delivery', 'Y9iChwQR97RAhGA', 6, 1, '2024-01-12 09:28:41', '2024-02-10 18:32:13', 2, 2),
(7, 'Communication', 'mFirtKVPDFBe3cB', 7, 1, '2024-01-12 09:28:57', '2024-02-10 18:32:25', 2, 2),
(8, 'Access', 'n9BNROSXaJXe1sc', 8, 1, '2024-01-12 09:29:09', '2024-02-10 18:32:34', 2, 2),
(9, 'Security', 'KgsmAqZfSjVySNa', 9, 1, '2024-01-12 09:29:18', '2024-02-10 18:32:48', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendortype_id` int NOT NULL,
  `status` int DEFAULT NULL,
  `appeal` int DEFAULT NULL COMMENT '0=Waiting on Accounts 1=Accounts Approved 2=Accounts Rejected',
  `appeal_by` int DEFAULT NULL,
  `ceo_approval` int DEFAULT NULL COMMENT 'NULL=Not Appealed yet 0=Waiting for CEO Approval 1=CEO Approved 2=CEO Rejected',
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `operation_year` varchar(111) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ownership_structure` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lisence` varchar(111) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `curr_plan` int DEFAULT NULL,
  `curr_plan_status` int DEFAULT NULL,
  `pending_plan` int DEFAULT NULL,
  `expiry_date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int NOT NULL,
  `updated_by` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `code`, `name`, `logo`, `user_id`, `email`, `phone`, `address`, `vendortype_id`, `status`, `appeal`, `appeal_by`, `ceo_approval`, `description`, `operation_year`, `ownership_structure`, `lisence`, `curr_plan`, `curr_plan_status`, `pending_plan`, `expiry_date`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(6, 't8T4uvipUE1VdIkd5Nu808vXGDdsZR', 'Yellow Clothing2', '7552544841706782207.jpg', 8, 'support@yellowclothing.net', '01755-587911', 'Plot #128, Block: CEN(H), Gulshan Avenue, Dhaka-1212', 19, 1, NULL, NULL, NULL, 'YELLOW, the trendiest fashion brand from Bangladesh, is mostly distinguished for its true international quality designs and fabrics. We are inspired by our customers- souls full of unconventional fashion senses. As a retailer of our parent brand BEXIMCO, we started our journey in 2004 and now we have 19 stores across Bangladesh and a 24/7 online store. Since origin, we have been offering world class designs at amazing value price. Our product line includes a wide range of fashion clothing, fragrance, and accessories for men, women and children; textiles for home decoration; avant-garde ceramic items; paintings; books; and many more.\r\n\r\nExplore YELLOW and look through our windows for contemporary global fashion trends.', '10', 'Partnership', '1234567890', 3, NULL, NULL, '2025-02-26 04:37:11', '2024-02-01 10:10:07', '2024-02-27 04:37:11', 8, 8),
(7, 'OvnNv1ATI77eNlv7qVRZNgvdofJ62Y', 'Coffee World', '7644778071706795407.jpg', 9, 'cw@gmail.com', '1265432', 'House no. 224, College gate, tongi, Gazipur', 24, 1, 1, 2, 1, 'tgtvthnujn yjnvjn', '2', 'Partnership', '12353451231', 2, NULL, NULL, '2025-02-15 08:05:29', '2024-02-01 13:50:10', '2024-02-21 12:08:49', 9, 9),
(9, 'acTkuplIM3blTcalphB1ZnNLjH94rH', 'E-biyeCom', '6613870201707128139.png', 11, 'ebiyecom@gmail.com', '01312313123', 'House no. 224, College gate, tongi, Gazipur', 24, 1, 1, 2, 1, 'w;op\';ulyktjthrgfsfsdvdfvwrg', '2', 'Sole proprietorship', '123456', 3, NULL, NULL, '2025-02-15 08:21:54', '2024-02-05 10:15:39', '2024-02-18 04:36:50', 11, 11),
(10, 'Mejcj2Kou4bcmQmgRhhGl3CQCBt4Us', 'KenaBecha Ltd.', '19077586951707220620.png', 12, 'support@kenabecha.io', '01812070604', 'House no. 224, College gate, tongi, Gazipur', 23, 1, 1, 2, 1, 'Get your free online store in 30 seconds.\r\nTake your business online with KenaBecha\r\nLaunch your online store with ease, attract and convert more customers than ever before.', '1', 'Partnership', '1234567890', 4, 0, NULL, '2024-02-29 20:43:20', '2024-02-06 11:57:02', '2024-03-01 20:43:20', 12, 12),
(11, 'NkVnbaCaaQTzPBxEbw2pabYg8ow0SR', 'CSQE', '16834571171707561224.jpg', 13, 'support@pridesys.com', '13124174812', 'House no. 224, College gate, tongi, Gazipur', 25, 1, 1, 2, 1, 'test test', '2', 'Partnership', '72346918471', 2, NULL, NULL, '2025-02-15 17:35:06', '2024-02-10 10:33:47', '2024-02-18 08:11:59', 13, 13),
(12, 'pdajQZVJedKQPyikSiT7eDWYEWl1O6', 'CashTag', '2411711401708098120.webp', 17, 'support@pridesys.com', '98765432134', 'House no. 224, College gate, tongi, Gazipur', 15, 1, 1, 2, 1, 'fererg', '13', 'Sole proprietorship', '0987654321', 2, NULL, NULL, '2025-02-15 17:33:51', '2024-02-16 15:42:02', '2024-02-26 08:18:24', 17, 17),
(13, 'LTXanlP61HfCDO8GzAL7y245VC5XUJ', 'Positive Waive', '9839053711708752980.png', 20, 'support@kenabecha.io', '01123432529', 'House no. 224, College gate, tongi, Gazipur', 15, 1, 1, 2, 1, 'lorem ipsum dolor', '2', 'Partnership', '1213456768', 1, NULL, NULL, '2024-03-21 23:34:56', '2024-02-24 05:36:23', '2024-03-22 23:34:56', 20, 20),
(14, 'U6RYnXtSn9oTAOzaXf5W84oR4OiZxs', 'Pagla Seller', '9722674491709000190.jpg', 21, 'Shewrapara, Mirpur, Dhaka', '01884799810', 'Shewrapara, Mirpur, Dhaka', 15, 1, 1, 24, 1, 'We are a design and printing service provider business.', '2', 'Partnership', 'N/A', 1, NULL, NULL, '2025-02-26 02:16:30', '2024-02-27 02:16:30', '2024-02-27 04:35:06', 21, 21),
(15, 'QSsdoJAGKYuezLZpY6bSgYjxeNobKG', 'Pagla Seller Design & Printing', '13094058091709002892.png', 22, 'paglasellerofficial@gmail.com', '01550037331', 'Shewrapara, Mirpur, Dhaka', 23, 1, 1, 24, 1, 'We provide online Design and Printing services.', '1', 'Partnership', 'N/A', 4, NULL, NULL, '2025-02-27 03:46:27', '2024-02-27 03:01:32', '2024-02-28 03:56:18', 22, 22),
(16, 'V0Khl7pwNYoZaqcqKu0BM5ExRQ9U46', 'Inhouse Cafe', '1007647281710766129.png', 25, 'Lake Drive Road, Uttara, Dhaka', '01911386186', 'Lake Drive Road, Uttara, Dhaka', 2, 1, 1, 2, 1, 'Cafe and fine dining', '15', 'Sole proprietorship', NULL, 4, NULL, NULL, '2025-03-24 21:40:08', '2024-03-18 22:48:49', '2024-03-24 21:40:08', 25, 25);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_01_03_085921_create_categories_table', 2),
(6, '2024_01_12_104038_create_vendortypes_table', 3),
(7, '2024_01_12_120847_create_questions_table', 4),
(8, '2024_01_13_135831_create_companies_table', 5),
(9, '2024_01_13_194015_create_branches_table', 6),
(10, '2024_01_23_053445_create_ratings_table', 7),
(11, '2024_01_29_035458_create_pricings_table', 8),
(12, '2024_01_31_114444_create_orders_table', 9),
(13, '2024_02_19_165453_create_sessions_table', 10),
(14, '2024_02_19_214754_create_sessions_table', 11);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `trx` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `appeal` int DEFAULT NULL COMMENT '0=Waiting on Accounts\r\n1=Accounts Approved\r\n2=Accounts Rejected',
  `appeal_by` int DEFAULT NULL,
  `ceo_approval` int DEFAULT NULL COMMENT 'NULL=Not Appealed yet\r\n0=Waiting for CEO Approval\r\n1=CEO Approved\r\n2=CEO Rejected',
  `user_id` int NOT NULL,
  `plan_id` int DEFAULT NULL,
  `company_id` int DEFAULT NULL,
  `amount` int NOT NULL,
  `currency` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paying_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `expiry_date` timestamp NULL DEFAULT NULL,
  `status` int DEFAULT NULL COMMENT '0=Pening, 1=Approved, 2=Rejected',
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int NOT NULL,
  `updated_by` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `trx`, `appeal`, `appeal_by`, `ceo_approval`, `user_id`, `plan_id`, `company_id`, `amount`, `currency`, `attachment`, `paying_date`, `expiry_date`, `status`, `address`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(3, '2354w4tfw4t', 1, 2, 1, 9, 2, 7, 5000, NULL, '15267312271706796667.png', '2024-02-16 08:05:29', '2025-02-15 08:05:29', 1, NULL, '2024-02-01 14:11:07', '2024-02-16 08:05:29', 9, 2),
(4, '1234567890', NULL, NULL, NULL, 9, 4, 7, 52500, NULL, '16484164561706796966.jpg', '2024-02-01 14:16:15', '2025-01-31 14:16:06', 1, NULL, '2024-02-01 14:16:06', '2024-02-01 14:16:15', 9, 2),
(6, '65bf2709ccae4', NULL, NULL, NULL, 8, 3, 6, 7500, 'BDT', NULL, '2024-02-04 05:56:25', '2025-02-03 05:56:25', 0, 'Plot #128, Block: CEN(H), Gulshan Avenue, Dhaka-1212', NULL, NULL, 8, 8),
(7, '65bf28125fae1', NULL, NULL, NULL, 8, 3, 6, 7500, 'BDT', NULL, '2024-02-04 06:00:50', '2025-02-03 06:00:50', 0, 'Plot #128, Block: CEN(H), Gulshan Avenue, Dhaka-1212', NULL, NULL, 8, 8),
(8, '65bf296d13c5c', NULL, NULL, NULL, 8, 3, 6, 7500, 'BDT', NULL, '2024-02-04 06:06:37', '2025-02-03 06:06:37', 0, 'Plot #128, Block: CEN(H), Gulshan Avenue, Dhaka-1212', NULL, NULL, 8, 8),
(9, '65bf2a72327ea', NULL, NULL, NULL, 8, 3, 6, 7500, 'BDT', NULL, '2024-02-04 06:10:58', '2025-02-03 06:10:58', 0, 'Plot #128, Block: CEN(H), Gulshan Avenue, Dhaka-1212', NULL, NULL, 8, 8),
(10, '65bf2a9ace6af', NULL, NULL, NULL, 8, 3, 6, 7500, 'BDT', NULL, '2024-02-04 06:11:38', '2025-02-03 06:11:38', 0, 'Plot #128, Block: CEN(H), Gulshan Avenue, Dhaka-1212', NULL, NULL, 8, 8),
(11, '65bf2dde6c765', 1, 24, 1, 8, 3, 6, 7500, 'BDT', NULL, '2024-02-27 04:37:11', '2025-02-26 04:37:11', 1, 'Plot #128, Block: CEN(H), Gulshan Avenue, Dhaka-1212', NULL, '2024-02-27 04:37:11', 8, 24),
(12, '65bf2e4319999', 1, 2, 1, 8, 3, 6, 7500, 'BDT', NULL, '2024-02-16 08:10:53', '2025-02-15 08:10:53', 1, 'Plot #128, Block: CEN(H), Gulshan Avenue, Dhaka-1212', NULL, '2024-02-16 08:10:53', 8, 2),
(13, '65bf2e925798c', NULL, NULL, NULL, 8, 2, 6, 5000, 'BDT', NULL, '2024-02-04 06:28:52', '2025-02-03 06:28:34', 1, 'Plot #128, Block: CEN(H), Gulshan Avenue, Dhaka-1212', NULL, NULL, 8, 8),
(14, '65bf56b530976', NULL, NULL, NULL, 8, 2, 6, 5000, 'BDT', NULL, '2024-02-04 09:20:04', '2025-02-03 09:19:49', 1, 'Plot #128, Block: CEN(H), Gulshan Avenue, Dhaka-1212', NULL, NULL, 8, 8),
(15, '65bf57a3d272e', NULL, NULL, NULL, 8, 4, 6, 52500, 'BDT', NULL, '2024-02-04 09:24:02', '2025-02-03 09:23:47', 1, 'Plot #128, Block: CEN(H), Gulshan Avenue, Dhaka-1212', NULL, NULL, 8, 8),
(16, '65bfa80317b43', NULL, NULL, NULL, 9, 1, 7, 0, 'BDT', NULL, '2024-02-04 15:07:03', '2025-02-03 15:06:43', 1, 'House no. 224, College gate, tongi, Gazipur', NULL, NULL, 9, 9),
(17, '65c1a7d86c034', NULL, NULL, NULL, 8, 2, 6, 5000, 'BDT', NULL, '2024-02-06 03:30:47', '2025-02-05 03:30:32', 1, 'Plot #128, Block: CEN(H), Gulshan Avenue, Dhaka-1212', NULL, NULL, 8, 8),
(18, '65c1a80a87423', NULL, NULL, NULL, 11, 2, 9, 5000, 'BDT', NULL, '2024-02-06 03:31:39', '2025-02-05 03:31:22', 1, 'House no. 224, College gate, tongi, Gazipur', NULL, NULL, 11, 11),
(19, '65c1a888c6f65', NULL, NULL, NULL, 11, 2, 9, 5000, 'BDT', NULL, '2024-02-06 03:33:40', '2025-02-05 03:33:28', 1, 'House no. 224, College gate, tongi, Gazipur', NULL, NULL, 11, 11),
(20, '65c208acd1ead', 1, 14, 1, 11, 3, 9, 7500, 'BDT', NULL, '2024-02-16 08:21:54', '2025-02-15 08:21:54', 1, 'House no. 224, College gate, tongi, Gazipur', NULL, '2024-02-16 08:21:54', 11, 2),
(21, '65c209bc825fe', NULL, NULL, NULL, 8, 3, 6, 7500, 'BDT', NULL, '2024-02-06 10:28:25', '2025-02-05 10:28:12', 1, 'Plot #128, Block: CEN(H), Gulshan Avenue, Dhaka-1212', NULL, NULL, 8, 8),
(22, '65c20a206fb3a', NULL, NULL, NULL, 11, 4, 9, 52500, 'BDT', NULL, '2024-02-06 10:30:12', '2025-02-05 10:29:52', 1, 'House no. 224, College gate, tongi, Gazipur', NULL, NULL, 11, 11),
(23, '65c265f26342e', 1, 2, 1, 12, 2, 10, 5000, 'BDT', NULL, '2024-02-16 08:07:50', '2025-02-15 08:07:50', 1, 'House no. 224, College gate, tongi, Gazipur', NULL, '2024-02-16 08:07:50', 12, 2),
(24, '65c5bccdb4da1', NULL, NULL, NULL, 11, 2, 9, 5000, 'BDT', NULL, '2024-02-09 05:49:21', '2025-02-08 05:49:01', 1, 'House no. 224, College gate, tongi, Gazipur', NULL, NULL, 11, 11),
(25, '65c5fe8c1b421', 1, 2, 1, 11, 4, 9, 52500, 'BDT', NULL, '2024-02-16 08:03:32', '2025-02-15 08:03:32', 1, 'House no. 224, College gate, tongi, Gazipur', NULL, '2024-02-16 08:03:32', 11, 2),
(26, '65c5fea5ccc89', NULL, NULL, NULL, 11, 4, 9, 52500, 'BDT', NULL, '2024-02-09 10:30:13', '2025-02-08 10:29:57', 1, 'House no. 224, College gate, tongi, Gazipur', NULL, NULL, 11, 11),
(27, '65c75a3754987', 1, 2, 1, 13, 2, 11, 5000, 'BDT', NULL, '2024-02-16 17:35:06', '2025-02-15 17:35:06', 1, 'House no. 224, College gate, tongi, Gazipur', NULL, '2024-02-16 17:35:06', 13, 2),
(28, '65ce6e535775c', 1, 2, 1, 13, 4, 11, 52500, 'BDT', NULL, '2024-02-16 11:05:46', '2025-02-15 11:05:46', 1, 'House no. 224, College gate, tongi, Gazipur', NULL, '2024-02-16 11:05:46', 13, 2),
(29, '65ce7c7dc7cf1', 1, 2, 1, 13, 3, 11, 7500, 'BDT', NULL, '2024-02-16 07:31:03', '2025-02-15 07:31:03', 1, 'House no. 224, College gate, tongi, Gazipur', NULL, '2024-02-16 07:31:03', 13, 2),
(30, '65ce7ccf922f7', 1, 2, 1, 12, 3, 10, 7500, 'BDT', NULL, '2024-02-16 07:29:59', '2025-02-15 07:29:59', 1, 'House no. 224, College gate, tongi, Gazipur', NULL, '2024-02-16 07:29:59', 12, 2),
(31, '65cf9c2b1d43b', 1, 2, 1, 17, 2, 12, 5000, 'BDT', NULL, '2024-02-16 17:33:51', '2025-02-15 17:33:51', 1, 'House no. 224, College gate, tongi, Gazipur', NULL, '2024-02-16 17:33:51', 17, 2),
(32, '65cfa8a4081ae', 1, 2, 1, 18, 2, 12, 5000, 'BDT', NULL, '2024-02-16 18:26:48', '2025-02-15 18:26:48', 1, 'House no. 224, College gate, tongi, Gazipur', NULL, '2024-02-16 18:26:48', 18, 2),
(33, '65d33128a82b7', 1, 2, 1, 12, 1, 10, 0, 'BDT', NULL, '2024-02-21 22:09:12', '2025-02-20 22:09:12', 1, 'House no. 224, College gate, tongi, Gazipur', NULL, '2024-02-21 22:09:12', 12, 2),
(34, '65d9ec1c4ac53', 1, 2, 1, 20, 2, 13, 5000, 'BDT', NULL, '2024-03-02 06:29:45', '2025-03-02 06:29:45', 1, 'House no. 224, College gate, tongi, Gazipur', NULL, '2024-03-02 06:29:45', 20, 2),
(35, '65d9eea216a5c', 1, 2, 1, 12, 4, 10, 52500, 'BDT', NULL, '2024-02-26 08:18:55', '2025-02-25 08:18:55', 1, 'House no. 224, College gate, tongi, Gazipur', NULL, '2024-02-26 08:18:55', 12, 2),
(36, '65dd510361797', NULL, NULL, NULL, 22, 4, 15, 52500, 'BDT', NULL, '2024-02-28 03:57:12', '2025-02-26 03:03:31', 2, 'Shewrapara, Mirpur, Dhaka', NULL, '2024-02-28 03:57:12', 22, 24),
(37, '65dd51b2ae0ad', 1, 24, 1, 22, 3, 15, 7500, 'BDT', NULL, '2024-02-28 03:46:15', '2025-02-26 04:37:05', 2, 'Shewrapara, Mirpur, Dhaka', NULL, '2024-02-28 03:46:15', 22, 24),
(38, '65dd67a64408a', 1, 24, 1, 22, 4, 15, 52500, 'BDT', NULL, '2024-02-28 03:46:27', '2025-02-27 03:46:27', 1, 'Shewrapara, Mirpur, Dhaka', NULL, '2024-02-28 03:46:27', 22, 24),
(39, '65e22d74da985', 1, 2, 1, 12, 4, 10, 52500, 'BDT', NULL, '2024-03-01 20:11:40', '2025-03-01 19:58:12', 2, 'House no. 224, College gate, tongi, Gazipur', NULL, '2024-03-01 20:11:40', 12, 2),
(40, '65f53e801dba6', NULL, NULL, NULL, 20, 1, 13, 0, 'BDT', NULL, '2024-03-16 16:38:56', '2025-03-16 16:38:56', 0, 'House no. 224, College gate, tongi, Gazipur', NULL, NULL, 20, 20),
(41, '65f53f8e17e88', NULL, NULL, NULL, 20, 1, 13, 0, 'BDT', NULL, '2024-03-16 16:43:26', '2025-03-16 16:43:26', 0, 'House no. 224, College gate, tongi, Gazipur', NULL, NULL, 20, 20),
(42, '65f53fb0c75b0', NULL, NULL, NULL, 20, 1, 13, 0, 'BDT', NULL, '2024-03-16 16:44:00', '2025-03-16 16:44:00', 0, 'House no. 224, College gate, tongi, Gazipur', NULL, NULL, 20, 20),
(43, '65f5404b7f13b', NULL, NULL, NULL, 20, 1, 13, 0, 'BDT', NULL, '2024-03-16 16:46:35', '2025-03-16 16:46:35', 0, 'House no. 224, College gate, tongi, Gazipur', NULL, NULL, 20, 20),
(44, '65f54113a2baa', NULL, NULL, NULL, 20, 1, 13, 0, 'BDT', NULL, '2024-03-16 16:49:55', '2025-03-16 16:49:55', 0, 'House no. 224, College gate, tongi, Gazipur', NULL, NULL, 20, 20),
(45, '65f5414692861', NULL, NULL, NULL, 20, 1, 13, 0, 'BDT', NULL, '2024-03-16 16:50:46', '2025-03-16 16:50:46', 0, 'House no. 224, College gate, tongi, Gazipur', NULL, NULL, 20, 20),
(46, '65f5416a99f9e', NULL, NULL, NULL, 20, 1, 13, 0, 'BDT', NULL, '2024-03-16 16:51:22', '2025-03-16 16:51:22', 0, 'House no. 224, College gate, tongi, Gazipur', NULL, NULL, 20, 20),
(47, '65f93f5adaac6', NULL, NULL, NULL, 20, 1, 13, 0, 'BDT', NULL, '2024-03-19 17:31:38', '2025-03-19 17:31:38', 0, 'House no. 224, College gate, tongi, Gazipur', NULL, NULL, 20, 20),
(48, '65f9405335b16', NULL, NULL, NULL, 20, 1, 13, 0, 'BDT', NULL, '2024-03-19 17:35:47', '2025-03-19 17:35:47', 0, 'House no. 224, College gate, tongi, Gazipur', NULL, NULL, 20, 20),
(49, '65f940a58ead0', NULL, NULL, NULL, 20, 1, 13, 0, 'BDT', NULL, '2024-03-19 17:37:09', '2025-03-19 17:37:09', 0, 'House no. 224, College gate, tongi, Gazipur', NULL, NULL, 20, 20),
(50, '65f940fbe40c4', NULL, NULL, NULL, 20, 1, 13, 0, 'BDT', NULL, '2024-03-19 17:38:35', '2025-03-19 17:38:35', 0, 'House no. 224, College gate, tongi, Gazipur', NULL, NULL, 20, 20),
(51, '65f9410e014a4', NULL, NULL, NULL, 20, 1, 13, 0, 'BDT', NULL, '2024-03-19 17:38:54', '2025-03-19 17:38:54', 0, 'House no. 224, College gate, tongi, Gazipur', NULL, NULL, 20, 20),
(52, '65f941a35bac8', NULL, NULL, NULL, 20, 1, 13, 0, 'BDT', NULL, '2024-03-22 13:34:56', '2025-03-19 17:41:23', 2, 'House no. 224, College gate, tongi, Gazipurs', NULL, '2024-03-22 23:34:56', 20, 24),
(53, '65f94809eb9e5', 1, 2, 1, 20, 1, 13, 0, 'BDT', NULL, '2024-03-19 15:11:54', '2025-03-20 01:11:54', 1, 'House no. 224, College gate, tongi, Gazipur', NULL, '2024-03-20 01:11:54', 20, 2),
(54, '65fab5a4c0ed9', NULL, NULL, NULL, 25, 4, 16, 52500, 'BDT', NULL, '2024-03-22 13:34:50', '2025-03-20 20:08:36', 2, 'Lake Drive Road, Uttara, Dhaka', NULL, '2024-03-22 23:34:50', 25, 24),
(55, '65fab5a680eab', NULL, NULL, NULL, 25, 4, 16, 52500, 'BDT', NULL, '2024-03-22 13:34:39', '2025-03-20 20:08:38', 2, 'Lake Drive Road, Uttara, Dhaka', NULL, '2024-03-22 23:34:39', 25, 24),
(56, '66001087da83f', 1, 2, 1, 25, 4, 16, 52500, 'BDT', NULL, '2024-03-24 11:40:08', '2025-03-24 21:40:08', 1, '25A Lake Drive Road , Sector 7, Uttara', NULL, '2024-03-24 21:40:08', 25, 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
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
-- Table structure for table `pricings`
--

CREATE TABLE `pricings` (
  `id` bigint UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` int NOT NULL DEFAULT '365' COMMENT 'in days',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'BDT',
  `max_user` int NOT NULL,
  `sqi_score` int DEFAULT NULL,
  `sqi_score_b` int DEFAULT NULL,
  `ind_standard` int DEFAULT NULL,
  `consultation` int DEFAULT NULL,
  `seminer` int DEFAULT NULL,
  `rdcs` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pricings`
--

INSERT INTO `pricings` (`id`, `code`, `duration`, `name`, `price`, `currency`, `max_user`, `sqi_score`, `sqi_score_b`, `ind_standard`, `consultation`, `seminer`, `rdcs`, `status`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'pbVoQ0QjQTQtnRIsWmNMqvpdbjk5a9', 365, 'Silver', 0, 'BDT', 1, 1, NULL, NULL, NULL, NULL, NULL, 1, '2024-01-28 23:42:07', '2024-02-15 18:02:02', NULL, NULL),
(2, 'eI0F9cSlykvpI98qg1ZQLzmaclkcIN', 365, 'Gold', 5000, 'BDT', 2, 1, 1, NULL, NULL, NULL, NULL, 1, '2024-01-28 23:43:47', '2024-01-28 23:43:47', NULL, NULL),
(3, 'gWHnM51GR1H8dR0r4oKaWXG9VBgpNU', 365, 'Diamond', 7500, 'BDT', 10, 1, 1, 1, NULL, NULL, NULL, 1, '2024-01-28 23:44:47', '2024-01-28 23:44:47', NULL, NULL),
(4, 'hfvndndzROQqzBGe7BIG1cFsHesbxo', 365, 'Platinum', 52500, 'BDT', 20, 1, 1, 1, 1, 1, 1, 1, '2024-01-28 23:45:22', '2024-01-28 23:45:22', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint UNSIGNED NOT NULL,
  `vendortype_id` int DEFAULT NULL,
  `category_id` int NOT NULL,
  `ord` int DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `vendortype_id`, `category_id`, `ord`, `title`, `status`, `created_at`, `updated_at`) VALUES
(29, 1, 1, 1, 'On a scale of 1 to 5, how satisfied are you with the overall quality and performance of our product/service?', 1, '2024-01-28 01:00:31', '2024-01-28 01:00:31'),
(30, 1, 1, 2, 'Can you rate your level of satisfaction with the features and functionalities of our product/service from 1 (not satisfied at all) to 5 (extremely satisfied)?', 1, '2024-01-28 01:00:59', '2024-01-28 01:00:59'),
(31, 1, 1, 3, 'How likely are you to continue using our product/service based on your current satisfaction level?', 1, '2024-01-28 01:01:24', '2024-01-28 01:01:24'),
(32, 1, 2, 4, 'Rate your overall experience using our product/service interface on a scale of 1 to 5.', 1, '2024-01-28 01:01:55', '2024-01-28 01:01:55'),
(33, 1, 2, 5, 'How easy was it for you to navigate through our platform?', 1, '2024-01-28 01:02:31', '2024-01-28 01:02:31'),
(34, 1, 2, 6, 'Please rate the speed and responsiveness of our product/service.', 1, '2024-01-28 01:04:40', '2024-01-28 01:04:40'),
(35, 1, 3, 7, 'On a scale of 1 to 10, how satisfied are you with the assistance you received from our customer support team?', 1, '2024-01-28 01:05:04', '2024-01-28 01:05:04'),
(36, 1, 3, 8, 'How would you rate the responsiveness of our customer support team to your queries or issues?', 1, '2024-01-28 01:05:21', '2024-01-28 01:05:21'),
(37, 1, 3, 9, 'Were your issues or concerns resolved to your satisfaction?', 1, '2024-01-28 01:05:39', '2024-01-28 01:05:39'),
(38, 1, 4, 10, 'Rate the clarity and effectiveness of our communication regarding product updates and changes on a scale of 1 to 5.', 1, '2024-01-28 01:41:32', '2024-01-28 01:41:32'),
(39, 1, 4, 11, 'How would you rate our communication channels in terms of keeping you informed about relevant information?', 1, '2024-01-28 01:41:47', '2024-01-28 01:41:47'),
(40, 1, 4, 12, 'Did you find our communication timely and well-tailored to your needs?', 1, '2024-01-28 01:42:04', '2024-01-28 01:42:04'),
(41, 1, 5, 13, 'How would you rate the usefulness of the features available in our product/service?', 1, '2024-01-28 01:42:18', '2024-01-28 01:42:18'),
(42, 1, 5, 14, 'Can you provide specific feedback on any features that you believe could be improved or added?', 1, '2024-01-28 01:42:30', '2024-01-28 01:42:30'),
(43, 1, 5, 15, 'Rate the innovativeness and uniqueness of our product/service features on a scale of 1 to 5.', 1, '2024-01-28 01:43:08', '2024-01-28 01:43:08'),
(44, 1, 6, 16, 'On a scale of 1 to 5, how would you rate the value you receive for the price paid for our product/service?', 1, '2024-01-28 01:43:35', '2024-01-28 01:43:35'),
(45, 1, 6, 17, 'Do you believe our product/service is priced competitively compared to similar offerings in the market?', 1, '2024-01-28 01:43:54', '2024-01-28 01:43:54'),
(46, 1, 6, 18, 'Would you consider the cost of our product/service justified based on the benefits and features it provides?', 1, '2024-01-28 01:44:20', '2024-01-28 01:44:20'),
(47, 1, 7, 19, 'How would you describe your overall perception of our brand?', 1, '2024-01-28 01:44:50', '2024-01-28 01:44:50'),
(48, 1, 7, 20, 'On a scale of 1 to 5, how likely are you to recommend our brand to others?', 1, '2024-01-28 01:45:24', '2024-01-28 01:45:24'),
(49, 1, 7, 21, 'What words or phrases come to mind when you think about our brand?', 1, '2024-01-28 01:45:36', '2024-01-28 01:45:36'),
(50, 1, 8, 22, 'How confident are you in our ability to meet your future needs and expectations?', 1, '2024-01-28 01:47:06', '2024-01-28 01:47:06'),
(51, 1, 8, 23, 'Are there specific improvements or changes you would like to see in our product/service in the future?', 1, '2024-01-28 01:47:22', '2024-01-28 01:47:22'),
(52, 1, 8, 24, 'On a scale of 1 to 5, how optimistic are you about the future development and evolution of our product/service?', 1, '2024-01-28 01:47:43', '2024-01-28 01:47:43'),
(53, 1, 9, 25, 'How likely are you to recommend our product/service to friends or colleagues?', 1, '2024-01-28 01:48:40', '2024-01-28 01:48:40'),
(54, 1, 9, 26, 'Would you feel comfortable recommending our customer support services to others based on your experience?', 1, '2024-01-28 01:48:55', '2024-01-28 01:48:55'),
(55, 1, 9, 27, 'Have you already recommended our product/service to someone else?', 1, '2024-01-28 01:49:13', '2024-01-28 01:49:13'),
(76, 26, 1, 1, 'On a scale of 1 to 5, how satisfied are you with the overall quality and performance of our product/service?', 1, '2024-01-28 04:03:40', '2024-01-28 04:03:40'),
(77, 26, 1, 2, 'Can you rate your level of satisfaction with the features and functionalities of our product/service from 1 (not satisfied at all) to 5 (extremely satisfied)?', 1, '2024-01-28 04:03:40', '2024-01-28 04:03:40'),
(78, 26, 1, 3, 'How likely are you to continue using our product/service based on your current satisfaction level?', 1, '2024-01-28 04:03:40', '2024-01-28 04:03:40'),
(79, 26, 2, 4, 'Rate your overall experience using our product/service interface on a scale of 1 to 5.', 1, '2024-01-28 04:03:40', '2024-01-28 04:03:40'),
(80, 26, 2, 5, 'How easy was it for you to navigate through our platform?', 1, '2024-01-28 04:03:41', '2024-01-28 04:03:41'),
(81, 26, 2, 6, 'Please rate the speed and responsiveness of our product/service.', 1, '2024-01-28 04:03:41', '2024-01-28 04:03:41'),
(82, 26, 3, 7, 'On a scale of 1 to 10, how satisfied are you with the assistance you received from our customer support team?', 1, '2024-01-28 04:03:41', '2024-01-28 04:03:41'),
(83, 26, 3, 8, 'How would you rate the responsiveness of our customer support team to your queries or issues?', 1, '2024-01-28 04:03:41', '2024-01-28 04:03:41'),
(84, 26, 3, 9, 'Were your issues or concerns resolved to your satisfaction?', 1, '2024-01-28 04:03:41', '2024-01-28 04:03:41'),
(85, 26, 4, 10, 'Rate the clarity and effectiveness of our communication regarding product updates and changes on a scale of 1 to 5.', 1, '2024-01-28 04:03:41', '2024-01-28 04:03:41'),
(86, 26, 4, 11, 'How would you rate our communication channels in terms of keeping you informed about relevant information?', 1, '2024-01-28 04:03:41', '2024-01-28 04:03:41'),
(87, 26, 4, 12, 'Did you find our communication timely and well-tailored to your needs?', 1, '2024-01-28 04:03:41', '2024-01-28 04:03:41'),
(88, 26, 5, 13, 'How would you rate the usefulness of the features available in our product/service?', 1, '2024-01-28 04:03:41', '2024-01-28 04:03:41'),
(89, 26, 5, 14, 'Can you provide specific feedback on any features that you believe could be improved or added?', 1, '2024-01-28 04:03:41', '2024-01-28 04:03:41'),
(90, 26, 5, 15, 'Rate the innovativeness and uniqueness of our product/service features on a scale of 1 to 5.', 1, '2024-01-28 04:03:41', '2024-01-28 04:03:41'),
(91, 26, 6, 16, 'On a scale of 1 to 5, how would you rate the value you receive for the price paid for our product/service?', 1, '2024-01-28 04:03:41', '2024-01-28 04:03:41'),
(92, 26, 6, 17, 'Do you believe our product/service is priced competitively compared to similar offerings in the market?', 1, '2024-01-28 04:03:41', '2024-01-28 04:03:41'),
(93, 26, 6, 18, 'Would you consider the cost of our product/service justified based on the benefits and features it provides?', 1, '2024-01-28 04:03:41', '2024-01-28 04:03:41'),
(94, 26, 7, 19, 'How would you describe your overall perception of our brand?', 1, '2024-01-28 04:03:41', '2024-01-28 04:03:41'),
(95, 26, 7, 20, 'On a scale of 1 to 5, how likely are you to recommend our brand to others?', 1, '2024-01-28 04:03:41', '2024-01-28 04:03:41'),
(96, 26, 7, 21, 'What words or phrases come to mind when you think about our brand?', 1, '2024-01-28 04:03:41', '2024-01-28 04:03:41'),
(97, 26, 8, 22, 'How confident are you in our ability to meet your future needs and expectations?', 1, '2024-01-28 04:03:41', '2024-01-28 04:03:41'),
(98, 26, 8, 23, 'Are there specific improvements or changes you would like to see in our product/service in the future?', 1, '2024-01-28 04:03:41', '2024-01-28 04:03:41'),
(99, 26, 8, 24, 'On a scale of 1 to 5, how optimistic are you about the future development and evolution of our product/service?', 1, '2024-01-28 04:03:41', '2024-01-28 04:03:41'),
(100, 26, 9, 25, 'How likely are you to recommend our product/service to friends or colleagues?', 1, '2024-01-28 04:03:41', '2024-01-28 04:03:41'),
(101, 26, 9, 26, 'Would you feel comfortable recommending our customer support services to others based on your experience?', 1, '2024-01-28 04:03:41', '2024-01-28 04:03:41'),
(102, 26, 9, 27, 'Have you already recommended our product/service to someone else?', 1, '2024-01-28 04:03:41', '2024-01-28 04:03:41'),
(103, 23, 1, 1, 'On a scale of 1 to 5, how satisfied are you with the overall quality and performance of our product/service?', 1, '2024-01-28 04:05:21', '2024-01-28 04:05:21'),
(104, 23, 1, 2, 'Can you rate your level of satisfaction with the features and functionalities of our product/service from 1 (not satisfied at all) to 5 (extremely satisfied)?', 1, '2024-01-28 04:05:21', '2024-01-28 04:05:21'),
(105, 23, 1, 3, 'How likely are you to continue using our product/service based on your current satisfaction level?', 1, '2024-01-28 04:05:21', '2024-01-28 04:05:21'),
(106, 23, 2, 4, 'Rate your overall experience using our product/service interface on a scale of 1 to 5.', 1, '2024-01-28 04:05:21', '2024-01-28 04:05:21'),
(107, 23, 2, 5, 'How easy was it for you to navigate through our platform?', 1, '2024-01-28 04:05:21', '2024-01-28 04:05:21'),
(108, 23, 2, 6, 'Please rate the speed and responsiveness of our product/service.', 1, '2024-01-28 04:05:21', '2024-01-28 04:05:21'),
(109, 23, 3, 7, 'On a scale of 1 to 10, how satisfied are you with the assistance you received from our customer support team?', 1, '2024-01-28 04:05:21', '2024-01-28 04:05:21'),
(110, 23, 3, 8, 'How would you rate the responsiveness of our customer support team to your queries or issues?', 1, '2024-01-28 04:05:21', '2024-01-28 04:05:21'),
(111, 23, 3, 9, 'Were your issues or concerns resolved to your satisfaction?', 1, '2024-01-28 04:05:21', '2024-01-28 04:05:21'),
(112, 23, 4, 10, 'Rate the clarity and effectiveness of our communication regarding product updates and changes on a scale of 1 to 5.', 1, '2024-01-28 04:05:21', '2024-01-28 04:05:21'),
(113, 23, 4, 11, 'How would you rate our communication channels in terms of keeping you informed about relevant information?', 1, '2024-01-28 04:05:21', '2024-01-28 04:05:21'),
(114, 23, 4, 12, 'Did you find our communication timely and well-tailored to your needs?', 1, '2024-01-28 04:05:21', '2024-01-28 04:05:21'),
(115, 23, 5, 13, 'How would you rate the usefulness of the features available in our product/service?', 1, '2024-01-28 04:05:21', '2024-01-28 04:05:21'),
(116, 23, 5, 14, 'Can you provide specific feedback on any features that you believe could be improved or added?', 1, '2024-01-28 04:05:21', '2024-01-28 04:05:21'),
(117, 23, 5, 15, 'Rate the innovativeness and uniqueness of our product/service features on a scale of 1 to 5.', 1, '2024-01-28 04:05:21', '2024-01-28 04:05:21'),
(118, 23, 6, 16, 'On a scale of 1 to 5, how would you rate the value you receive for the price paid for our product/service?', 1, '2024-01-28 04:05:21', '2024-01-28 04:05:21'),
(119, 23, 6, 17, 'Do you believe our product/service is priced competitively compared to similar offerings in the market?', 1, '2024-01-28 04:05:21', '2024-01-28 04:05:21'),
(120, 23, 6, 18, 'Would you consider the cost of our product/service justified based on the benefits and features it provides?', 1, '2024-01-28 04:05:21', '2024-01-28 04:05:21'),
(121, 23, 7, 19, 'How would you describe your overall perception of our brand?', 1, '2024-01-28 04:05:21', '2024-01-28 04:05:21'),
(122, 23, 7, 20, 'On a scale of 1 to 5, how likely are you to recommend our brand to others?', 1, '2024-01-28 04:05:22', '2024-01-28 04:05:22'),
(123, 23, 7, 21, 'What words or phrases come to mind when you think about our brand?', 1, '2024-01-28 04:05:22', '2024-01-28 04:05:22'),
(124, 23, 8, 22, 'How confident are you in our ability to meet your future needs and expectations?', 1, '2024-01-28 04:05:22', '2024-01-28 04:05:22'),
(125, 23, 8, 23, 'Are there specific improvements or changes you would like to see in our product/service in the future?', 1, '2024-01-28 04:05:22', '2024-01-28 04:05:22'),
(126, 23, 8, 24, 'On a scale of 1 to 5, how optimistic are you about the future development and evolution of our product/service?', 1, '2024-01-28 04:05:22', '2024-01-28 04:05:22'),
(127, 23, 9, 25, 'How likely are you to recommend our product/service to friends or colleagues?', 1, '2024-01-28 04:05:22', '2024-01-28 04:05:22'),
(128, 23, 9, 26, 'Would you feel comfortable recommending our customer support services to others based on your experience?', 1, '2024-01-28 04:05:22', '2024-01-28 04:05:22'),
(129, 23, 9, 27, 'Have you already recommended our product/service to someone else?', 1, '2024-01-28 04:05:22', '2024-01-28 04:05:22'),
(130, 24, 1, 1, 'On a scale of 1 to 5, how satisfied are you with the overall quality and performance of our product/service?', 1, '2024-01-28 05:35:16', '2024-01-28 05:35:16'),
(131, 24, 1, 2, 'Can you rate your level of satisfaction with the features and functionalities of our product/service from 1 (not satisfied at all) to 5 (extremely satisfied)?', 1, '2024-01-28 05:35:16', '2024-01-28 05:35:16'),
(132, 24, 1, 3, 'How likely are you to continue using our product/service based on your current satisfaction level?', 1, '2024-01-28 05:35:16', '2024-01-28 05:35:16'),
(133, 24, 2, 4, 'Rate your overall experience using our product/service interface on a scale of 1 to 5.', 1, '2024-01-28 05:35:16', '2024-01-28 05:35:16'),
(134, 24, 2, 5, 'How easy was it for you to navigate through our platform?', 1, '2024-01-28 05:35:16', '2024-01-28 05:35:16'),
(135, 24, 2, 6, 'Please rate the speed and responsiveness of our product/service.', 1, '2024-01-28 05:35:16', '2024-01-28 05:35:16'),
(136, 24, 3, 7, 'On a scale of 1 to 10, how satisfied are you with the assistance you received from our customer support team?', 1, '2024-01-28 05:35:16', '2024-01-28 05:35:16'),
(137, 24, 3, 8, 'How would you rate the responsiveness of our customer support team to your queries or issues?', 1, '2024-01-28 05:35:16', '2024-01-28 05:35:16'),
(138, 24, 3, 9, 'Were your issues or concerns resolved to your satisfaction?', 1, '2024-01-28 05:35:16', '2024-01-28 05:35:16'),
(139, 24, 4, 10, 'Rate the clarity and effectiveness of our communication regarding product updates and changes on a scale of 1 to 5.', 1, '2024-01-28 05:35:16', '2024-01-28 05:35:16'),
(140, 24, 4, 11, 'How would you rate our communication channels in terms of keeping you informed about relevant information?', 1, '2024-01-28 05:35:16', '2024-01-28 05:35:16'),
(141, 24, 4, 12, 'Did you find our communication timely and well-tailored to your needs?', 1, '2024-01-28 05:35:16', '2024-01-28 05:35:16'),
(142, 24, 5, 13, 'How would you rate the usefulness of the features available in our product/service?', 1, '2024-01-28 05:35:16', '2024-01-28 05:35:16'),
(143, 24, 5, 14, 'Can you provide specific feedback on any features that you believe could be improved or added?', 1, '2024-01-28 05:35:16', '2024-01-28 05:35:16'),
(144, 24, 5, 15, 'Rate the innovativeness and uniqueness of our product/service features on a scale of 1 to 5.', 1, '2024-01-28 05:35:16', '2024-01-28 05:35:16'),
(145, 24, 6, 16, 'On a scale of 1 to 5, how would you rate the value you receive for the price paid for our product/service?', 1, '2024-01-28 05:35:16', '2024-01-28 05:35:16'),
(146, 24, 6, 17, 'Do you believe our product/service is priced competitively compared to similar offerings in the market?', 1, '2024-01-28 05:35:16', '2024-01-28 05:35:16'),
(147, 24, 6, 18, 'Would you consider the cost of our product/service justified based on the benefits and features it provides?', 1, '2024-01-28 05:35:16', '2024-01-28 05:35:16'),
(148, 24, 7, 19, 'How would you describe your overall perception of our brand?', 1, '2024-01-28 05:35:16', '2024-01-28 05:35:16'),
(149, 24, 7, 20, 'On a scale of 1 to 5, how likely are you to recommend our brand to others?', 1, '2024-01-28 05:35:16', '2024-01-28 05:35:16'),
(150, 24, 7, 21, 'What words or phrases come to mind when you think about our brand?', 1, '2024-01-28 05:35:16', '2024-01-28 05:35:16'),
(151, 24, 8, 22, 'How confident are you in our ability to meet your future needs and expectations?', 1, '2024-01-28 05:35:16', '2024-01-28 05:35:16'),
(152, 24, 8, 23, 'Are there specific improvements or changes you would like to see in our product/service in the future?', 1, '2024-01-28 05:35:16', '2024-01-28 05:35:16'),
(153, 24, 8, 24, 'On a scale of 1 to 5, how optimistic are you about the future development and evolution of our product/service?', 1, '2024-01-28 05:35:16', '2024-01-28 05:35:16'),
(154, 24, 9, 25, 'How likely are you to recommend our product/service to friends or colleagues?', 1, '2024-01-28 05:35:16', '2024-01-28 05:35:16'),
(155, 24, 9, 26, 'Would you feel comfortable recommending our customer support services to others based on your experience?', 1, '2024-01-28 05:35:16', '2024-01-28 05:35:16'),
(156, 24, 9, 27, 'Have you already recommended our product/service to someone else?', 1, '2024-01-28 05:35:16', '2024-01-28 05:35:16'),
(157, 25, 1, 1, 'On a scale of 1 to 5, how satisfied are you with the overall quality and performance of our product/service?', 1, '2024-02-10 11:20:13', '2024-02-10 11:20:13'),
(158, 25, 1, 2, 'Can you rate your level of satisfaction with the features and functionalities of our product/service from 1 (not satisfied at all) to 5 (extremely satisfied)?', 1, '2024-02-10 11:20:13', '2024-02-10 11:20:13'),
(159, 25, 1, 3, 'How likely are you to continue using our product/service based on your current satisfaction level?', 1, '2024-02-10 11:20:13', '2024-02-10 11:20:13'),
(160, 25, 2, 4, 'Rate your overall experience using our product/service interface on a scale of 1 to 5.', 1, '2024-02-10 11:20:13', '2024-02-10 11:20:13'),
(161, 25, 2, 5, 'How easy was it for you to navigate through our platform?', 1, '2024-02-10 11:20:13', '2024-02-10 11:20:13'),
(162, 25, 2, 6, 'Please rate the speed and responsiveness of our product/service.', 1, '2024-02-10 11:20:13', '2024-02-10 11:20:13'),
(163, 25, 3, 7, 'On a scale of 1 to 10, how satisfied are you with the assistance you received from our customer support team?', 1, '2024-02-10 11:20:13', '2024-02-10 11:20:13'),
(164, 25, 3, 8, 'How would you rate the responsiveness of our customer support team to your queries or issues?', 1, '2024-02-10 11:20:13', '2024-02-10 11:20:13'),
(165, 25, 3, 9, 'Were your issues or concerns resolved to your satisfaction?', 1, '2024-02-10 11:20:13', '2024-02-10 11:20:13'),
(166, 25, 4, 10, 'Rate the clarity and effectiveness of our communication regarding product updates and changes on a scale of 1 to 5.', 1, '2024-02-10 11:20:13', '2024-02-10 11:20:13'),
(167, 25, 4, 11, 'How would you rate our communication channels in terms of keeping you informed about relevant information?', 1, '2024-02-10 11:20:13', '2024-02-10 11:20:13'),
(168, 25, 4, 12, 'Did you find our communication timely and well-tailored to your needs?', 1, '2024-02-10 11:20:13', '2024-02-10 11:20:13'),
(169, 25, 5, 13, 'How would you rate the usefulness of the features available in our product/service?', 1, '2024-02-10 11:20:13', '2024-02-10 11:20:13'),
(170, 25, 5, 14, 'Can you provide specific feedback on any features that you believe could be improved or added?', 1, '2024-02-10 11:20:13', '2024-02-10 11:20:13'),
(171, 25, 5, 15, 'Rate the innovativeness and uniqueness of our product/service features on a scale of 1 to 5.', 1, '2024-02-10 11:20:13', '2024-02-10 11:20:13'),
(172, 25, 6, 16, 'On a scale of 1 to 5, how would you rate the value you receive for the price paid for our product/service?', 1, '2024-02-10 11:20:13', '2024-02-10 11:20:13'),
(173, 25, 6, 17, 'Do you believe our product/service is priced competitively compared to similar offerings in the market?', 1, '2024-02-10 11:20:13', '2024-02-10 11:20:13'),
(174, 25, 6, 18, 'Would you consider the cost of our product/service justified based on the benefits and features it provides?', 1, '2024-02-10 11:20:13', '2024-02-10 11:20:13'),
(175, 25, 7, 19, 'How would you describe your overall perception of our brand?', 1, '2024-02-10 11:20:13', '2024-02-10 11:20:13'),
(176, 25, 7, 20, 'On a scale of 1 to 5, how likely are you to recommend our brand to others?', 1, '2024-02-10 11:20:13', '2024-02-10 11:20:13'),
(177, 25, 7, 21, 'What words or phrases come to mind when you think about our brand?', 1, '2024-02-10 11:20:13', '2024-02-10 11:20:13'),
(178, 25, 8, 22, 'How confident are you in our ability to meet your future needs and expectations?', 1, '2024-02-10 11:20:13', '2024-02-10 11:20:13'),
(179, 25, 8, 23, 'Are there specific improvements or changes you would like to see in our product/service in the future?', 1, '2024-02-10 11:20:13', '2024-02-10 11:20:13'),
(180, 25, 8, 24, 'On a scale of 1 to 5, how optimistic are you about the future development and evolution of our product/service?', 1, '2024-02-10 11:20:13', '2024-02-10 11:20:13'),
(181, 25, 9, 25, 'How likely are you to recommend our product/service to friends or colleagues?', 1, '2024-02-10 11:20:13', '2024-02-10 11:20:13'),
(182, 25, 9, 26, 'Would you feel comfortable recommending our customer support services to others based on your experience?', 1, '2024-02-10 11:20:13', '2024-02-10 11:20:13'),
(183, 25, 9, 27, 'Have you already recommended our product/service to someone else?', 1, '2024-02-10 11:20:13', '2024-02-10 11:20:13'),
(184, 28, 1, 1, 'On a scale of 1 to 5, how satisfied are you with the overall quality and performance of our product/service?', 1, '2024-03-01 20:01:53', '2024-03-01 20:01:53'),
(185, 28, 1, 2, 'Can you rate your level of satisfaction with the features and functionalities of our product/service from 1 (not satisfied at all) to 5 (extremely satisfied)?', 1, '2024-03-01 20:01:53', '2024-03-01 20:01:53'),
(186, 28, 1, 3, 'How likely are you to continue using our product/service based on your current satisfaction level?', 1, '2024-03-01 20:01:53', '2024-03-01 20:01:53'),
(187, 28, 2, 4, 'Rate your overall experience using our product/service interface on a scale of 1 to 5.', 1, '2024-03-01 20:01:53', '2024-03-01 20:01:53'),
(188, 28, 2, 5, 'How easy was it for you to navigate through our platform?', 1, '2024-03-01 20:01:53', '2024-03-01 20:01:53'),
(189, 28, 2, 6, 'Please rate the speed and responsiveness of our product/service.', 1, '2024-03-01 20:01:53', '2024-03-01 20:01:53'),
(190, 28, 3, 7, 'On a scale of 1 to 10, how satisfied are you with the assistance you received from our customer support team?', 1, '2024-03-01 20:01:53', '2024-03-01 20:01:53'),
(191, 28, 3, 8, 'How would you rate the responsiveness of our customer support team to your queries or issues?', 1, '2024-03-01 20:01:53', '2024-03-01 20:01:53'),
(192, 28, 3, 9, 'Were your issues or concerns resolved to your satisfaction?', 1, '2024-03-01 20:01:53', '2024-03-01 20:01:53'),
(193, 28, 4, 10, 'Rate the clarity and effectiveness of our communication regarding product updates and changes on a scale of 1 to 5.', 1, '2024-03-01 20:01:53', '2024-03-01 20:01:53'),
(194, 28, 4, 11, 'How would you rate our communication channels in terms of keeping you informed about relevant information?', 1, '2024-03-01 20:01:53', '2024-03-01 20:01:53'),
(195, 28, 4, 12, 'Did you find our communication timely and well-tailored to your needs?', 1, '2024-03-01 20:01:53', '2024-03-01 20:01:53'),
(196, 28, 5, 13, 'How would you rate the usefulness of the features available in our product/service?', 1, '2024-03-01 20:01:53', '2024-03-01 20:01:53'),
(197, 28, 5, 14, 'Can you provide specific feedback on any features that you believe could be improved or added?', 1, '2024-03-01 20:01:53', '2024-03-01 20:01:53'),
(198, 28, 5, 15, 'Rate the innovativeness and uniqueness of our product/service features on a scale of 1 to 5.', 1, '2024-03-01 20:01:53', '2024-03-01 20:01:53'),
(199, 28, 6, 16, 'On a scale of 1 to 5, how would you rate the value you receive for the price paid for our product/service?', 1, '2024-03-01 20:01:53', '2024-03-01 20:01:53'),
(200, 28, 6, 17, 'Do you believe our product/service is priced competitively compared to similar offerings in the market?', 1, '2024-03-01 20:01:53', '2024-03-01 20:01:53'),
(201, 28, 6, 18, 'Would you consider the cost of our product/service justified based on the benefits and features it provides?', 1, '2024-03-01 20:01:53', '2024-03-01 20:01:53'),
(202, 28, 7, 19, 'How would you describe your overall perception of our brand?', 1, '2024-03-01 20:01:53', '2024-03-01 20:01:53'),
(203, 28, 7, 20, 'On a scale of 1 to 5, how likely are you to recommend our brand to others?', 1, '2024-03-01 20:01:53', '2024-03-01 20:01:53'),
(204, 28, 7, 21, 'What words or phrases come to mind when you think about our brand?', 1, '2024-03-01 20:01:53', '2024-03-01 20:01:53'),
(205, 28, 8, 22, 'How confident are you in our ability to meet your future needs and expectations?', 1, '2024-03-01 20:01:53', '2024-03-01 20:01:53'),
(206, 28, 8, 23, 'Are there specific improvements or changes you would like to see in our product/service in the future?', 1, '2024-03-01 20:01:53', '2024-03-01 20:01:53'),
(207, 28, 8, 24, 'On a scale of 1 to 5, how optimistic are you about the future development and evolution of our product/service?', 1, '2024-03-01 20:01:53', '2024-03-01 20:01:53'),
(208, 28, 9, 25, 'How likely are you to recommend our product/service to friends or colleagues?', 1, '2024-03-01 20:01:53', '2024-03-01 20:01:53'),
(209, 28, 9, 26, 'Would you feel comfortable recommending our customer support services to others based on your experience?', 1, '2024-03-01 20:01:53', '2024-03-01 20:01:53'),
(210, 28, 9, 27, 'Have you already recommended our product/service to someone else?', 1, '2024-03-01 20:01:53', '2024-03-01 20:01:53'),
(211, 18, 1, 1, 'On a scale of 1 to 5, how satisfied are you with the overall quality and performance of our product/service?', 1, '2024-03-01 20:02:58', '2024-03-01 20:02:58'),
(212, 18, 1, 2, 'Can you rate your level of satisfaction with the features and functionalities of our product/service from 1 (not satisfied at all) to 5 (extremely satisfied)?', 1, '2024-03-01 20:02:58', '2024-03-01 20:02:58'),
(213, 18, 1, 3, 'How likely are you to continue using our product/service based on your current satisfaction level?', 1, '2024-03-01 20:02:58', '2024-03-01 20:02:58'),
(214, 18, 2, 4, 'Rate your overall experience using our product/service interface on a scale of 1 to 5.', 1, '2024-03-01 20:02:58', '2024-03-01 20:02:58'),
(215, 18, 2, 5, 'How easy was it for you to navigate through our platform?', 1, '2024-03-01 20:02:58', '2024-03-01 20:02:58'),
(216, 18, 2, 6, 'Please rate the speed and responsiveness of our product/service.', 1, '2024-03-01 20:02:58', '2024-03-01 20:02:58'),
(217, 18, 3, 7, 'On a scale of 1 to 10, how satisfied are you with the assistance you received from our customer support team?', 1, '2024-03-01 20:02:58', '2024-03-01 20:02:58'),
(218, 18, 3, 8, 'How would you rate the responsiveness of our customer support team to your queries or issues?', 1, '2024-03-01 20:02:58', '2024-03-01 20:02:58'),
(219, 18, 3, 9, 'Were your issues or concerns resolved to your satisfaction?', 1, '2024-03-01 20:02:58', '2024-03-01 20:02:58'),
(220, 18, 4, 10, 'Rate the clarity and effectiveness of our communication regarding product updates and changes on a scale of 1 to 5.', 1, '2024-03-01 20:02:58', '2024-03-01 20:02:58'),
(221, 18, 4, 11, 'How would you rate our communication channels in terms of keeping you informed about relevant information?', 1, '2024-03-01 20:02:58', '2024-03-01 20:02:58'),
(222, 18, 4, 12, 'Did you find our communication timely and well-tailored to your needs?', 1, '2024-03-01 20:02:58', '2024-03-01 20:02:58'),
(223, 18, 5, 13, 'How would you rate the usefulness of the features available in our product/service?', 1, '2024-03-01 20:02:58', '2024-03-01 20:02:58'),
(224, 18, 5, 14, 'Can you provide specific feedback on any features that you believe could be improved or added?', 1, '2024-03-01 20:02:58', '2024-03-01 20:02:58'),
(225, 18, 5, 15, 'Rate the innovativeness and uniqueness of our product/service features on a scale of 1 to 5.', 1, '2024-03-01 20:02:58', '2024-03-01 20:02:58'),
(226, 18, 6, 16, 'On a scale of 1 to 5, how would you rate the value you receive for the price paid for our product/service?', 1, '2024-03-01 20:02:58', '2024-03-01 20:02:58'),
(227, 18, 6, 17, 'Do you believe our product/service is priced competitively compared to similar offerings in the market?', 1, '2024-03-01 20:02:58', '2024-03-01 20:02:58'),
(228, 18, 6, 18, 'Would you consider the cost of our product/service justified based on the benefits and features it provides?', 1, '2024-03-01 20:02:58', '2024-03-01 20:02:58'),
(229, 18, 7, 19, 'How would you describe your overall perception of our brand?', 1, '2024-03-01 20:02:58', '2024-03-01 20:02:58'),
(230, 18, 7, 20, 'On a scale of 1 to 5, how likely are you to recommend our brand to others?', 1, '2024-03-01 20:02:58', '2024-03-01 20:02:58'),
(231, 18, 7, 21, 'What words or phrases come to mind when you think about our brand?', 1, '2024-03-01 20:02:58', '2024-03-01 20:02:58'),
(232, 18, 8, 22, 'How confident are you in our ability to meet your future needs and expectations?', 1, '2024-03-01 20:02:58', '2024-03-01 20:02:58'),
(233, 18, 8, 23, 'Are there specific improvements or changes you would like to see in our product/service in the future?', 1, '2024-03-01 20:02:58', '2024-03-01 20:02:58'),
(234, 18, 8, 24, 'On a scale of 1 to 5, how optimistic are you about the future development and evolution of our product/service?', 1, '2024-03-01 20:02:58', '2024-03-01 20:02:58'),
(235, 18, 9, 25, 'How likely are you to recommend our product/service to friends or colleagues?', 1, '2024-03-01 20:02:58', '2024-03-01 20:02:58'),
(236, 18, 9, 26, 'Would you feel comfortable recommending our customer support services to others based on your experience?', 1, '2024-03-01 20:02:58', '2024-03-01 20:02:58'),
(237, 18, 9, 27, 'Have you already recommended our product/service to someone else?', 1, '2024-03-01 20:02:58', '2024-03-01 20:02:58'),
(238, 17, 1, 1, 'On a scale of 1 to 5, how satisfied are you with the overall quality and performance of our product/service?', 1, '2024-03-01 20:03:52', '2024-03-01 20:03:52'),
(239, 17, 1, 2, 'Can you rate your level of satisfaction with the features and functionalities of our product/service from 1 (not satisfied at all) to 5 (extremely satisfied)?', 1, '2024-03-01 20:03:52', '2024-03-01 20:03:52'),
(240, 17, 1, 3, 'How likely are you to continue using our product/service based on your current satisfaction level?', 1, '2024-03-01 20:03:52', '2024-03-01 20:03:52'),
(241, 17, 2, 4, 'Rate your overall experience using our product/service interface on a scale of 1 to 5.', 1, '2024-03-01 20:03:52', '2024-03-01 20:03:52'),
(242, 17, 2, 5, 'How easy was it for you to navigate through our platform?', 1, '2024-03-01 20:03:52', '2024-03-01 20:03:52'),
(243, 17, 2, 6, 'Please rate the speed and responsiveness of our product/service.', 1, '2024-03-01 20:03:52', '2024-03-01 20:03:52'),
(244, 17, 3, 7, 'On a scale of 1 to 10, how satisfied are you with the assistance you received from our customer support team?', 1, '2024-03-01 20:03:52', '2024-03-01 20:03:52'),
(245, 17, 3, 8, 'How would you rate the responsiveness of our customer support team to your queries or issues?', 1, '2024-03-01 20:03:52', '2024-03-01 20:03:52'),
(246, 17, 3, 9, 'Were your issues or concerns resolved to your satisfaction?', 1, '2024-03-01 20:03:52', '2024-03-01 20:03:52'),
(247, 17, 4, 10, 'Rate the clarity and effectiveness of our communication regarding product updates and changes on a scale of 1 to 5.', 1, '2024-03-01 20:03:52', '2024-03-01 20:03:52'),
(248, 17, 4, 11, 'How would you rate our communication channels in terms of keeping you informed about relevant information?', 1, '2024-03-01 20:03:52', '2024-03-01 20:03:52'),
(249, 17, 4, 12, 'Did you find our communication timely and well-tailored to your needs?', 1, '2024-03-01 20:03:52', '2024-03-01 20:03:52'),
(250, 17, 5, 13, 'How would you rate the usefulness of the features available in our product/service?', 1, '2024-03-01 20:03:52', '2024-03-01 20:03:52'),
(251, 17, 5, 14, 'Can you provide specific feedback on any features that you believe could be improved or added?', 1, '2024-03-01 20:03:52', '2024-03-01 20:03:52'),
(252, 17, 5, 15, 'Rate the innovativeness and uniqueness of our product/service features on a scale of 1 to 5.', 1, '2024-03-01 20:03:52', '2024-03-01 20:03:52'),
(253, 17, 6, 16, 'On a scale of 1 to 5, how would you rate the value you receive for the price paid for our product/service?', 1, '2024-03-01 20:03:52', '2024-03-01 20:03:52'),
(254, 17, 6, 17, 'Do you believe our product/service is priced competitively compared to similar offerings in the market?', 1, '2024-03-01 20:03:52', '2024-03-01 20:03:52'),
(255, 17, 6, 18, 'Would you consider the cost of our product/service justified based on the benefits and features it provides?', 1, '2024-03-01 20:03:52', '2024-03-01 20:03:52'),
(256, 17, 7, 19, 'How would you describe your overall perception of our brand?', 1, '2024-03-01 20:03:52', '2024-03-01 20:03:52'),
(257, 17, 7, 20, 'On a scale of 1 to 5, how likely are you to recommend our brand to others?', 1, '2024-03-01 20:03:52', '2024-03-01 20:03:52'),
(258, 17, 7, 21, 'What words or phrases come to mind when you think about our brand?', 1, '2024-03-01 20:03:52', '2024-03-01 20:03:52'),
(259, 17, 8, 22, 'How confident are you in our ability to meet your future needs and expectations?', 1, '2024-03-01 20:03:52', '2024-03-01 20:03:52'),
(260, 17, 8, 23, 'Are there specific improvements or changes you would like to see in our product/service in the future?', 1, '2024-03-01 20:03:52', '2024-03-01 20:03:52'),
(261, 17, 8, 24, 'On a scale of 1 to 5, how optimistic are you about the future development and evolution of our product/service?', 1, '2024-03-01 20:03:52', '2024-03-01 20:03:52'),
(262, 17, 9, 25, 'How likely are you to recommend our product/service to friends or colleagues?', 1, '2024-03-01 20:03:52', '2024-03-01 20:03:52'),
(263, 17, 9, 26, 'Would you feel comfortable recommending our customer support services to others based on your experience?', 1, '2024-03-01 20:03:52', '2024-03-01 20:03:52'),
(264, 17, 9, 27, 'Have you already recommended our product/service to someone else?', 1, '2024-03-01 20:03:52', '2024-03-01 20:03:52'),
(265, 2, 1, 1, 'Does every time the café does what it promised to do?', 1, '2024-03-19 17:41:42', '2024-03-19 17:41:42'),
(266, 2, 1, 2, 'When you have a problem the café management has showed sincere interest to solve it?', 1, '2024-03-19 17:41:42', '2024-03-19 17:41:42'),
(267, 2, 1, 3, 'The cafe performs the required service right at the first time/attempt', 1, '2024-03-19 17:41:42', '2024-03-19 17:41:42'),
(268, 2, 2, 4, 'Does every time the cafe employees give your prompt services?', 1, '2024-03-19 17:41:42', '2024-03-19 17:41:42'),
(269, 2, 2, 5, 'The employees of the cafe are always willing to help you?', 1, '2024-03-19 17:41:42', '2024-03-19 17:41:42'),
(270, 2, 2, 6, 'Employees of the cafe are never too busy to respond to your queries, feedback and comments', 1, '2024-03-19 17:41:42', '2024-03-19 17:41:42'),
(271, 2, 3, 7, 'Do you feel safe with your transactions with the cafe?', 1, '2024-03-19 17:41:42', '2024-03-19 17:41:42'),
(272, 2, 3, 8, 'Employees of the cafe are continuously courteous toward you?', 1, '2024-03-19 17:41:42', '2024-03-19 17:41:42'),
(273, 2, 3, 9, 'Employees of the cafe have knowledge to answer your questions?', 1, '2024-03-19 17:41:42', '2024-03-19 17:41:42'),
(274, 2, 4, 10, 'Does the cafe give you individual attention?', 1, '2024-03-19 17:41:42', '2024-03-19 17:41:42'),
(275, 2, 4, 11, 'The cafe has operating hours convenient to all its customers?', 1, '2024-03-19 17:41:42', '2024-03-19 17:41:42'),
(276, 2, 4, 12, 'Employees of the cafe understand your personal needs?', 1, '2024-03-19 17:41:42', '2024-03-19 17:41:42'),
(277, 2, 5, 13, 'The café’s physical facilities are visually appealing?', 1, '2024-03-19 17:41:42', '2024-03-19 17:41:42'),
(278, 2, 5, 14, 'The cafe has modern looking equipment in its service delivery', 1, '2024-03-19 17:41:42', '2024-03-19 17:41:42'),
(279, 2, 5, 15, 'Employees of the cafe are neat in their appearance', 1, '2024-03-19 17:41:42', '2024-03-19 17:41:42'),
(280, 2, 6, 16, 'The café’s staff are skilled and trained', 1, '2024-03-19 17:41:42', '2024-03-19 17:41:42'),
(281, 2, 6, 17, 'Overall service provided by the staff are satisfactory', 1, '2024-03-19 17:41:42', '2024-03-19 17:41:42'),
(282, 2, 6, 18, 'Employees of the cafe take care of the issues professionally', 1, '2024-03-19 17:41:42', '2024-03-19 17:41:42'),
(283, 2, 7, 19, 'The café’s staff provides you with the information when and where it is required', 1, '2024-03-19 17:41:42', '2024-03-19 17:41:42'),
(284, 2, 7, 20, 'The information provided by the staff are easy to understand', 1, '2024-03-19 17:41:42', '2024-03-19 17:41:42'),
(285, 2, 7, 21, 'The way of providing information by the cafe staff are precise and to the point', 1, '2024-03-19 17:41:42', '2024-03-19 17:41:42'),
(286, 2, 8, 22, 'All the cafe facilities are easily accessible for all eligible customers', 1, '2024-03-19 17:41:42', '2024-03-19 17:41:42'),
(287, 2, 8, 23, 'When accessing any open service, you never faced any difficulties.', 1, '2024-03-19 17:41:42', '2024-03-19 17:41:42'),
(288, 2, 8, 24, 'The cafe management always encouraged you to explore all the facilities of the cafe whole heartedly', 1, '2024-03-19 17:41:42', '2024-03-19 17:41:42'),
(289, 2, 9, 25, 'As a customer do you feel all the cafe premises have well physical security facilities?', 1, '2024-03-19 17:41:42', '2024-03-19 17:41:42'),
(290, 2, 9, 26, 'In case of fire and earthquake do you think the cafe has taken enough precaution to protect your lives and property?', 1, '2024-03-19 17:41:42', '2024-03-19 17:41:42'),
(291, 2, 9, 27, 'Do you believe that the staff of the cafe are well trained to handle any issues related to the safety and security of the cafe', 1, '2024-03-19 17:41:42', '2024-03-19 17:41:42'),
(292, 6, 1, 1, 'On a scale of 1 to 5, how satisfied are you with the overall quality and performance of our product/service?', 1, '2024-03-21 01:52:25', '2024-03-21 01:52:25'),
(293, 6, 1, 2, 'Can you rate your level of satisfaction with the features and functionalities of our product/service from 1 (not satisfied at all) to 5 (extremely satisfied)?', 1, '2024-03-21 01:52:25', '2024-03-21 01:52:25'),
(294, 6, 1, 3, 'How likely are you to continue using our product/service based on your current satisfaction level?', 1, '2024-03-21 01:52:25', '2024-03-21 01:52:25'),
(295, 6, 2, 4, 'Rate your overall experience using our product/service interface on a scale of 1 to 5.', 1, '2024-03-21 01:52:25', '2024-03-21 01:52:25'),
(296, 6, 2, 5, 'How easy was it for you to navigate through our platform?', 1, '2024-03-21 01:52:25', '2024-03-21 01:52:25'),
(297, 6, 2, 6, 'Please rate the speed and responsiveness of our product/service.', 1, '2024-03-21 01:52:25', '2024-03-21 01:52:25'),
(298, 6, 3, 7, 'On a scale of 1 to 10, how satisfied are you with the assistance you received from our customer support team?', 1, '2024-03-21 01:52:25', '2024-03-21 01:52:25'),
(299, 6, 3, 8, 'How would you rate the responsiveness of our customer support team to your queries or issues?', 1, '2024-03-21 01:52:25', '2024-03-21 01:52:25'),
(300, 6, 3, 9, 'Were your issues or concerns resolved to your satisfaction?', 1, '2024-03-21 01:52:25', '2024-03-21 01:52:25'),
(301, 6, 4, 10, 'Rate the clarity and effectiveness of our communication regarding product updates and changes on a scale of 1 to 5.', 1, '2024-03-21 01:52:25', '2024-03-21 01:52:25'),
(302, 6, 4, 11, 'How would you rate our communication channels in terms of keeping you informed about relevant information?', 1, '2024-03-21 01:52:25', '2024-03-21 01:52:25'),
(303, 6, 4, 12, 'Did you find our communication timely and well-tailored to your needs?', 1, '2024-03-21 01:52:25', '2024-03-21 01:52:25'),
(304, 6, 5, 13, 'How would you rate the usefulness of the features available in our product/service?', 1, '2024-03-21 01:52:25', '2024-03-21 01:52:25'),
(305, 6, 5, 14, 'Can you provide specific feedback on any features that you believe could be improved or added?', 1, '2024-03-21 01:52:25', '2024-03-21 01:52:25'),
(306, 6, 5, 15, 'Rate the innovativeness and uniqueness of our product/service features on a scale of 1 to 5.', 1, '2024-03-21 01:52:25', '2024-03-21 01:52:25'),
(307, 6, 6, 16, 'On a scale of 1 to 5, how would you rate the value you receive for the price paid for our product/service?', 1, '2024-03-21 01:52:25', '2024-03-21 01:52:25'),
(308, 6, 6, 17, 'Do you believe our product/service is priced competitively compared to similar offerings in the market?', 1, '2024-03-21 01:52:25', '2024-03-21 01:52:25'),
(309, 6, 6, 18, 'Would you consider the cost of our product/service justified based on the benefits and features it provides?', 1, '2024-03-21 01:52:25', '2024-03-21 01:52:25'),
(310, 6, 7, 19, 'How would you describe your overall perception of our brand?', 1, '2024-03-21 01:52:25', '2024-03-21 01:52:25'),
(311, 6, 7, 20, 'On a scale of 1 to 5, how likely are you to recommend our brand to others?', 1, '2024-03-21 01:52:25', '2024-03-21 01:52:25'),
(312, 6, 7, 21, 'What words or phrases come to mind when you think about our brand?', 1, '2024-03-21 01:52:25', '2024-03-21 01:52:25'),
(313, 6, 8, 22, 'How confident are you in our ability to meet your future needs and expectations?', 1, '2024-03-21 01:52:25', '2024-03-21 01:52:25'),
(314, 6, 8, 23, 'Are there specific improvements or changes you would like to see in our product/service in the future?', 1, '2024-03-21 01:52:25', '2024-03-21 01:52:25'),
(315, 6, 8, 24, 'On a scale of 1 to 5, how optimistic are you about the future development and evolution of our product/service?', 1, '2024-03-21 01:52:25', '2024-03-21 01:52:25'),
(316, 6, 9, 25, 'How likely are you to recommend our product/service to friends or colleagues?', 1, '2024-03-21 01:52:25', '2024-03-21 01:52:25'),
(317, 6, 9, 26, 'Would you feel comfortable recommending our customer support services to others based on your experience?', 1, '2024-03-21 01:52:25', '2024-03-21 01:52:25'),
(318, 6, 9, 27, 'Have you already recommended our product/service to someone else?', 1, '2024-03-21 01:52:25', '2024-03-21 01:52:25');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint UNSIGNED NOT NULL,
  `branch_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` int DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `q1` int DEFAULT NULL,
  `q2` int DEFAULT NULL,
  `q3` int DEFAULT NULL,
  `q4` int DEFAULT NULL,
  `q5` int DEFAULT NULL,
  `q6` int DEFAULT NULL,
  `q7` int DEFAULT NULL,
  `q8` int DEFAULT NULL,
  `q9` int DEFAULT NULL,
  `q10` int DEFAULT NULL,
  `q11` int DEFAULT NULL,
  `q12` int DEFAULT NULL,
  `q13` int DEFAULT NULL,
  `q14` int DEFAULT NULL,
  `q15` int DEFAULT NULL,
  `q16` int DEFAULT NULL,
  `q17` int DEFAULT NULL,
  `q18` int DEFAULT NULL,
  `q19` int DEFAULT NULL,
  `q20` int DEFAULT NULL,
  `q21` int DEFAULT NULL,
  `q22` int DEFAULT NULL,
  `q23` int DEFAULT NULL,
  `q24` int DEFAULT NULL,
  `q25` int DEFAULT NULL,
  `q26` int DEFAULT NULL,
  `q27` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `branch_id`, `company_id`, `code`, `name`, `email`, `mobile`, `q1`, `q2`, `q3`, `q4`, `q5`, `q6`, `q7`, `q8`, `q9`, `q10`, `q11`, `q12`, `q13`, `q14`, `q15`, `q16`, `q17`, `q18`, `q19`, `q20`, `q21`, `q22`, `q23`, `q24`, `q25`, `q26`, `q27`, `created_at`, `updated_at`) VALUES
(20, '11', 7, 'Ub2UoSQwBYYNtZ3', 'HelloZed Admin', 'uesmhe@gmail.com', '01913539767', 4, 3, 5, 4, 3, 2, 3, 4, 5, 3, 4, 3, 5, 4, 3, 5, 4, 3, 3, 3, 3, 2, 1, 3, 5, 5, 5, '2024-02-01 14:19:49', '2024-02-01 14:22:06'),
(21, '11', 7, 'dPwjdVqHOHr2Jhv', 'HelloZed Admin', 'uesmhe@gmail.com', '01913539767', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 5, 5, '2024-02-02 05:16:27', '2024-02-02 05:16:27'),
(22, '14', 9, 'YIQDLSLNhIPejVN', 'Mahmud Hasan Emon', 'uesmhe@gmail.com', '01913539767', 4, 3, 5, 2, 3, 4, 5, 5, 4, 3, 2, 5, 4, 5, 4, 3, 4, 5, 4, 3, 2, 5, 3, 4, 5, 5, 5, '2024-02-06 05:12:30', '2024-02-06 05:14:16'),
(23, '14', 9, 'xW8F3feqYanymRF', 'Mahmud Hasan Emon', 'uesmhe@gmail.com', '01913539767', 4, 3, 5, 4, 5, 3, 4, 5, 2, 3, 5, 4, 1, 1, 1, 3, 5, 4, 4, 3, 5, 4, 4, 3, 5, 5, 5, '2024-02-07 04:47:21', '2024-02-07 06:18:55'),
(24, '14', 9, 'YIQDLSLNhIPeee', 'Mahmud Hasan Emon', 'uesmhe@gmail.com', '01913539767', 4, 3, 5, 2, 3, 4, 5, 5, 4, 3, 2, 5, 4, 5, 4, 3, 4, 5, 4, 3, 2, 5, 3, 4, 5, 5, 5, '2024-02-06 05:12:30', '2024-02-06 05:14:16'),
(25, '14', 9, 'xW8F3feqYanymRF', 'Mahmud Hasan Emon', 'uesmhe@gmail.com', '01913539767', 4, 3, 5, 4, 5, 3, 4, 5, 2, 3, 5, 4, 1, 1, 1, 3, 5, 4, 4, 3, 5, 4, 4, 3, 5, 5, 5, '2024-01-07 04:47:21', '2024-05-07 06:18:55'),
(26, '14', 9, '8H6YDr3odmnCamP', 'Mahmud Hasan Emon', 'emon2072h@gmail.com', '01500008428', 4, 5, 4, 3, 2, 2, 3, 3, 1, 2, 3, 2, 4, 5, 3, 4, 3, 2, 5, 4, 3, 4, 5, 2, 5, 5, 5, '2024-02-09 10:26:57', '2024-02-09 10:28:46'),
(27, '17', 11, 'cPm9WtlDr3izY7j', 'Mahmud Hasan Emon', 'uesmhe@gmail.com', '01913539767', 4, 2, 4, 2, 3, 5, 4, 4, 5, 4, 3, 5, 4, 3, 5, 4, 3, 2, 1, 5, 4, 3, 4, 5, 5, 5, 5, '2024-02-10 11:18:56', '2024-02-10 11:22:20'),
(28, '17', 11, 'aeK37oFiEf8TTaU', 'Mahmud Hasan Emon', 'admin@example.com', '01500008428', 5, 5, 5, 4, 4, 4, 3, 3, 3, 5, 5, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 5, 5, 4, 4, 4, 4, '2024-02-15 16:26:06', '2024-02-15 16:28:03'),
(29, '17', 11, 'jIrvihplCv1lB3P', 'Pridesys Admin', 'emon2072h@gmail.com', '01500008428', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-15 20:08:01', '2024-02-15 20:08:01'),
(30, '15', 10, 'EiFj1rXbBo0sBIF', 'Mahmud Hasan Emon', 'uesmhe@gmail.com', '+8801303997358', 4, 3, 3, 4, 3, 4, 3, 3, 4, 5, 4, 1, 1, 2, 3, 2, 3, 4, 4, 5, 4, 4, 5, 4, 3, 4, 3, '2024-02-26 10:53:03', '2024-02-26 10:55:40'),
(31, '15', 10, 'kY27plqbijikoy9', 'Mahmud Hasan Emon', 'uesmhe@gmail.com', '+8801303997356', 4, 3, 5, 4, 4, 3, 4, 5, 4, 4, 5, 5, 5, 5, 4, 3, 4, 4, 5, 4, 4, 5, 4, 5, 4, 5, 5, '2024-02-26 11:02:13', '2024-02-26 11:03:54'),
(32, '22', 14, 'uoFNycRO2N1U28W', 'RIZVI AHMED', 'grafix.trends705@gmail.com', '01550037331', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-27 02:18:43', '2024-02-27 02:18:43'),
(33, '22', 14, 'pe88KOTeLuFP6bO', 'Main Branch', 'grafix.trends705@gmail.com', '01884799810', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-27 02:18:57', '2024-02-27 02:18:57'),
(34, '22', 14, 'E4zKSRNoWMUC85u', 'Pagla Seller', 'mrpackaging2003@gmail.com', '+880 1330 004 132', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-27 02:20:05', '2024-02-27 02:20:05'),
(35, '23', 15, 'ZwMO9tacsWr8tTN', 'RIZVI AHMED', 'paglasellerofficial@gmail.com', '01550037331', 3, 4, 4, 2, 2, 2, 2, 5, 2, 2, 1, 2, 5, 2, 2, 1, 5, 2, 2, 1, 2, 1, 2, 5, 2, 2, 5, '2024-02-27 04:35:34', '2024-02-27 04:36:24'),
(36, '23', 15, 'xYl8RrKtIBOHDm2', 'RIZVI AHMED', 'paglasellerofficial@gmail.com', '01550037331', 3, 3, 5, 3, 4, 4, 3, 5, 3, 2, 2, 5, 4, 5, 5, 5, 5, 2, 1, 1, 3, 2, 3, 2, 2, 3, 4, '2024-02-28 03:24:56', '2024-02-28 03:25:46'),
(37, '22', 14, 'sfmlzpMQBudUfIo', 'HelloZed Admin', 'uesmhe@gmail.com', '01500008428', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-02 06:48:36', '2024-03-02 06:48:36'),
(38, '23', 15, '2s3ed96gVMy8dlx', 'HelloZed Admin', 'uesmhe@gmail.com', '01500008428', 3, 2, 4, 4, 2, 4, 5, 4, 5, 4, 4, 3, 4, 2, 2, 3, 4, 3, 5, 3, 4, 3, 4, 5, 5, 4, 4, '2024-03-02 06:48:56', '2024-03-02 06:59:05'),
(39, '23', 15, 'T0K0KOM9LHLRFmK', 'HelloZed Admin', 'uesmhe@gmail.com', '01500008429', 5, 4, 3, 4, 3, 4, 5, 2, 4, 3, 4, 3, 5, 3, 4, 5, 4, 3, 2, 3, 3, 4, 4, 4, 5, 4, 3, '2024-03-02 07:07:02', '2024-03-02 07:08:41'),
(40, '23', 15, 'oaJikS9iRR7wfbs', 'Rizvi', 'ahmedrizvi2000@gmail.com', '01884799810', 4, 4, 5, 4, 4, 4, 4, 4, 4, 4, 4, 4, 3, 2, 2, 3, 2, 3, 2, 2, 5, 5, 2, 2, 5, 1, 1, '2024-03-17 00:43:01', '2024-03-17 00:46:18'),
(41, '25', 16, 'SZ7OUU6JcGY3TCz', 'Rizvi Ahmed', 'rizviahmed.tg@gmail.com', '01884799810', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-19 17:26:29', '2024-03-19 17:26:29'),
(42, '25', 16, 'Z2dy6yFn2zzvzZo', 'Kamal', 'rizviahmed705@gmail.com', '01550037331', 4, 4, 4, 2, 3, 5, 1, 2, 3, 5, 1, 3, 2, 2, 1, 5, 2, 3, 5, 3, 2, 5, 2, 4, 4, 5, 2, '2024-03-19 17:42:30', '2024-03-19 17:43:41'),
(43, '25', 16, 'DAC7epZ5Dv7aZH3', 'Jamal', '21@gmail.com', '0167425111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-19 17:44:25', '2024-03-19 17:44:25'),
(44, '25', 16, 'WallYCJ3zhJGZT6', 'Md. Amin Al Kowsar', 'kawsarahamed284@gmail.com', '01770952349', 3, 4, 3, 4, 3, 4, 5, 3, 4, 3, 2, 4, 4, 4, 3, 4, 2, 3, 4, 3, 5, 3, 4, 5, 3, 4, 3, '2024-03-19 17:49:00', '2024-03-19 17:50:36'),
(45, '25', 16, 'Bjc7jk2X3xbOuTO', 'Babu', 'kazibabu7777777@gmail.com', '01770952348', 4, 3, 4, 3, 5, 2, 3, 4, 3, 2, 3, 5, 4, 3, 2, 3, 4, 3, 4, 3, 4, 3, 4, 3, 4, 4, 5, '2024-03-19 18:15:15', '2024-03-19 18:16:37'),
(46, '25', 16, 't9HpkTiVeMzjRfe', 'Camp', 'Camp@winbuying.biz', '01601661575', 3, 4, 3, 4, 3, 2, 4, 3, 5, 3, 4, 5, 3, 2, 4, 3, 2, 5, 4, 3, 4, 3, 4, 3, 5, 4, 4, '2024-03-19 18:17:24', '2024-03-19 18:18:46'),
(47, '25', 16, 'V5T65XyhNplcMzN', 'Samira Shams', 'samirashams24@gmail.com', '01720067851', 4, 3, 4, 5, 4, 3, 4, 4, 3, 4, 3, 3, 4, 4, 4, 3, 3, 3, 3, 3, 4, 3, 3, 4, 4, 4, 4, '2024-03-20 23:04:09', '2024-03-20 23:07:37'),
(48, '20', 13, 'QwjVXWequPY38dk', 'HelloZed Admin', 'uesmhe@gmail.com', '01913539767', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-21 01:49:08', '2024-03-21 01:49:08'),
(49, '25', 16, 'BRyIn41sorc1Lg6', 'Rizvi Ahmed', 'rizviahmed.tg@gmail.com', '01884799810', 4, 2, 3, 2, 5, 5, 1, 1, 2, 5, 3, 5, 5, 2, 3, 5, 4, 5, 2, 5, 5, 2, 1, 5, 5, 1, 1, '2024-03-22 00:10:06', '2024-03-22 00:12:20'),
(50, '25', 16, 'm4umj6HgDAdbGdH', 'Aklima Akter', 'b180204014@mkt.jnu.ac.bd', '01631569539', 3, 3, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, '2024-03-22 00:15:49', '2024-03-22 00:19:12'),
(51, '25', 16, '42TzOgWRgL6ZaiL', 'Rizvi Ahmed', 'grafix.trends705@gmail.com', '01550037331', 5, 4, 4, 3, 3, 3, 5, 4, 4, 3, 4, 5, 5, 5, 5, 4, 4, 5, 4, 5, 2, 2, 2, 3, 3, 3, 4, '2024-03-23 16:03:26', '2024-03-23 16:05:44'),
(52, '25', 16, 'HuUpOdGOEFXGdFG', 'Engr. A. B. Mahmud', 'abmahmud@winbuying.biz', '1678661575', 5, 3, 2, 4, 4, 5, 4, 4, 4, 4, 4, 4, 4, 3, 4, 3, 4, 4, 4, 4, 5, 5, 4, 4, 5, 5, 5, '2024-03-24 21:28:51', '2024-03-24 21:32:26'),
(53, '25', 16, 'vwp6kvW3N4BcAq8', 'Md. Amin Al Kowsar', 'kawsarahamed284@gmail.com', '01770952349', 3, 4, 3, 3, 4, 5, 3, 3, 4, 3, 3, 4, 3, 4, 5, 4, 5, 4, 4, 5, 3, 4, 4, 5, 3, 4, 4, '2024-03-24 21:29:22', '2024-03-24 21:31:12'),
(54, '25', 16, 'uLv6NU5kcI1MLQb', 'Mamun Hasan Emon', 'danielstarred@gmail.com', '01303997358', 4, 3, 4, 3, 2, 3, 4, 4, 4, 5, 4, 5, 4, 3, 3, 2, 3, 4, 5, 3, 5, 3, 2, 1, 5, 5, 4, '2024-03-24 21:29:25', '2024-03-24 21:31:19'),
(55, '25', 16, 'GSTUe2kEenMyqPC', 'Kazi Shahnewaj', 'kazibabu7777777@gmail.com', '01832420428', 3, 4, 4, 4, 5, 4, 4, 4, 4, 4, 5, 5, 5, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '2024-03-24 21:29:47', '2024-03-24 21:32:43'),
(56, '25', 16, 'DcHo0BOBpuYHkCQ', 'Rizvi Ahmed', 'ahmedrizvi2000@gmail.com', '01884799810', 3, 2, 5, 3, 5, 2, 5, 5, 2, 5, 2, 3, 1, 5, 4, 3, 4, 2, 5, 4, 4, 4, 2, 4, 4, 4, 4, '2024-03-24 21:29:49', '2024-03-24 21:31:40'),
(57, '25', 16, 'Z2CM0UhisddZ8C2', 'Abu Junaid Hossain', 'arianlives123@gmail.com', '01577018900', 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '2024-03-24 21:33:39', '2024-03-24 21:35:41'),
(58, '25', 16, 'ZMTqtmTqnAG3tYV', 'Tamzid', 'drtamzidul@gmail.com', '01757388365', 5, 5, 3, 2, 4, 4, 3, 4, 4, 3, 3, 5, 3, 3, 4, 4, 3, 4, 4, 3, 3, 4, 4, 4, 4, 4, 3, '2024-03-24 21:56:27', '2024-03-24 21:57:56');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci,
  `last_activity` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`, `created_at`, `updated_at`) VALUES
('cg3iXURilsHWHBCwuwL0mFdQzrPxBHDKiiM6aOpE', 25, NULL, NULL, NULL, NULL, '2024-03-24 21:40:12', '2024-03-24 21:40:12'),
('jNlUR16uPIGgHPQmlKszdF7XOC22WrnK69dcM0gL', 24, NULL, NULL, NULL, NULL, '2024-03-24 21:55:01', '2024-03-24 21:55:01'),
('MfyBJHu9B1cYmprmIc8Sd3wh33HIDpj4insZDQsU', 2, NULL, NULL, NULL, NULL, '2024-03-24 21:39:41', '2024-03-24 21:39:41');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `company_id` int DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` int DEFAULT NULL,
  `is_ceo` int DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `identification_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `session_id` longtext COLLATE utf8mb4_unicode_ci,
  `active_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `is_login` int DEFAULT NULL,
  `otp` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `company_id`, `username`, `admin`, `is_ceo`, `mobile`, `position`, `email`, `identification_number`, `email_verified_at`, `password`, `address`, `city`, `country`, `postal`, `about`, `remember_token`, `session_id`, `active_color`, `status`, `is_login`, `otp`, `created_at`, `updated_at`, `created_by`) VALUES
(2, NULL, 'emon', 1, 1, 'Mahmud Hasan', 'Emon', 'emon2072h@gmail.com', NULL, NULL, '$2y$12$nKuEdQdLX9dQHx91w4EnuujK7cqz2uEh.Ct3NCgna8Lu4m/ANk4a.', NULL, NULL, NULL, NULL, NULL, NULL, 'bc444875-2a78-4729-b36d-c5104cd17667', 'dark', 1, 1, 105666, '2024-01-03 02:54:28', '2024-03-24 21:39:41', NULL),
(8, 6, 'Sadman Khalil', NULL, NULL, '01755-587911', 'CEO', 'yellow@gmail.com', '123467890', NULL, '$2y$12$OPhzlPJJ9NwM4wzLoxQefOSPu75PDKYYtCSzJ8kzDfpxUosvSwrm6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2024-02-01 10:10:07', '2024-02-01 10:10:07', NULL),
(9, 7, 'emon', NULL, NULL, '01913539767', 'CEO', 'cw@gmail.com', '123456767564523', NULL, '$2y$12$EwiH.id4ZQRSFa/.ZuvwtuWLV2SSacQwGins/4AoAYQAd0PXzoZhi', NULL, NULL, NULL, NULL, NULL, NULL, '482a2b1e-264e-4bc2-8a14-522a042e41f9', NULL, 1, 0, NULL, '2024-02-01 13:50:07', '2024-02-26 09:16:28', NULL),
(11, 9, 'Mahmud Hasan Emon', NULL, NULL, '01913539767', 'CEO', 'ebiyecom@gmail.com', '123456767564523', NULL, '$2y$12$jri2ctvcr4l/4TTUw76./uTSiuCvjQw1QpMTXeJMQQLjHwlcpVwoa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2024-02-05 10:15:39', '2024-02-27 04:30:43', NULL),
(12, 10, 'Saeed Abdullah', NULL, NULL, '01932312312', 'CEO', 'whatsemon@gmail.com', '123456789', NULL, '$2y$12$Y2m1LnIvXmDa6xAcidyw/.iEfqg9bRt9oTCVUQu6IHYB8OajO9u9y', NULL, NULL, NULL, NULL, NULL, NULL, '6aba71e9-a38d-49c5-962c-41da8dd1f823', NULL, 1, 0, 166331, '2024-02-06 11:57:00', '2024-03-02 06:28:19', NULL),
(13, 11, 'CSQE Admin', NULL, NULL, '01913539767', 'CEO', 'rizvi.green.202@gmail.com', '12345678', NULL, '$2y$12$VZXWluSTDwCW8wlA0xOFcePgkmUTB4ipk8iohJcHZ/z.6gaZ5Rna2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 330820, '2024-02-10 10:33:44', '2024-02-27 02:24:23', NULL),
(14, NULL, 'emon', 1, NULL, 'Mahmud Hasan', 'Emon', 'uesmhe@gmail.com', NULL, NULL, '$2y$12$nKuEdQdLX9dQHx91w4EnuujK7cqz2uEh.Ct3NCgna8Lu4m/ANk4a.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dark', 1, NULL, NULL, '2024-01-03 02:54:28', '2024-02-15 17:14:05', NULL),
(15, 7, 'Rafsan Chy', NULL, NULL, '112345678', 'GS', 'ebiyecom2@gmail.com', NULL, NULL, '$2y$12$7W.OTqYmWD.nlav15T0lY.rZM/NhIWkiWaW/jJ59uglJQa8J1ItlS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2024-02-16 15:24:55', '2024-02-16 15:24:55', NULL),
(16, 11, 'CSQE ADMIN 2', NULL, NULL, '2342342', 'GS', 'csqe@gmail.com', NULL, NULL, '$2y$12$5cy3S3gWwol9DYarYH9GhON.85f.0Bf0KrViFZuuYz9Be.0FAFLuW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2024-02-16 15:30:26', '2024-02-16 15:30:26', 13),
(17, 12, 'Mahmud Hasan Emon', NULL, NULL, '01500008428', 'Software Engineer', 'danielstarred@gmail.com', '32345647644', NULL, '$2y$12$HJ0wj4GI1kGnUHt5vpDAIuutQAVY9hVp0QSX54qzVKIva.aWUVOA.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, '2024-02-16 15:42:00', '2024-03-01 20:04:38', NULL),
(18, 12, 'Marcella Davis', NULL, NULL, '2342423', 'Director', 'md@g.c', NULL, NULL, '$2y$12$.QRSAPCd.mE/lmB0ryRFqe4z6txbI0JI8dSx.92pGvjVUsC/JOBL2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2024-02-16 17:19:52', '2024-02-16 17:19:52', 17),
(20, 13, 'K AI Insaf', NULL, NULL, '023948029348', 'CEO', 'pw@gm.c', '2345678', NULL, '$2y$12$9rUt922uPHpDtfnFGB4A2uKYNA3Q8eAIdhukIZdjCb/m9lRnzYYNC', NULL, NULL, NULL, NULL, NULL, NULL, '1dcaa71b-085a-4018-b13a-5cbec69ff83c', NULL, 1, 0, 215785, '2024-02-24 05:36:20', '2024-03-21 01:49:18', NULL),
(21, 14, 'Rizvi Ahmed', NULL, NULL, '01550037331', 'Head of Operation', 'grafix.trends705@gmail.com', '12345678', NULL, '$2y$12$iS5mpj7U.kUkqeRUGaPzyeGZnuj9oiFkQuR1CYKuBTx.1DCQCPu7e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, '2024-02-27 02:16:30', '2024-02-27 02:16:31', NULL),
(22, 15, 'Rizvi Ahmed', NULL, NULL, '01550037331', 'Head of Operation', 'paglasellerofficial@gmail.com', '123456', NULL, '$2y$12$OMtkJmkE9EoPY1RnuuPfeOl6uyRoTuaAsxrPyLGe41ZLE48rJjY4i', NULL, NULL, NULL, NULL, NULL, NULL, '135618b5-8ee9-42be-a585-73ee28665f8b', NULL, 1, 0, 868014, '2024-02-27 03:01:32', '2024-03-22 23:33:42', NULL),
(24, NULL, 'Rizvi Ahmed', 1, 1, NULL, 'Super Admin', 'rizvi.green.201@gmail.com', NULL, NULL, '$2y$12$nKuEdQdLX9dQHx91w4EnuujK7cqz2uEh.Ct3NCgna8Lu4m/ANk4a.', NULL, NULL, NULL, NULL, NULL, NULL, '46244752-d98f-4c5a-8150-33150d7714fc', 'success', 1, 1, 115118, '2024-01-03 02:54:28', '2024-03-24 21:55:01', 2),
(25, 16, 'Azizul Hoque', NULL, NULL, '01911386186', 'CEO', 'tareque@bus.green.edu.bd', NULL, NULL, '$2y$12$nKuEdQdLX9dQHx91w4EnuujK7cqz2uEh.Ct3NCgna8Lu4m/ANk4a.', NULL, NULL, NULL, NULL, NULL, NULL, '3a901325-93df-4dce-8f7d-0dbe2f73426e', 'dark', 1, 1, 956381, '2024-03-18 22:48:49', '2024-03-24 21:40:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vendortypes`
--

CREATE TABLE `vendortypes` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendortypes`
--

INSERT INTO `vendortypes` (`id`, `name`, `icon`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Wedding industry', 'ti-agenda', 1, '2024-01-12 05:47:25', '2024-02-06 09:11:16'),
(2, 'Restaurants and cafes', 'ti-palette', 1, '2024-01-12 05:47:07', '2024-02-06 09:11:35'),
(4, 'Movie theatres', 'ti-video-camera', 1, '2024-01-13 12:28:46', '2024-02-06 09:11:50'),
(5, 'Airlines and aviation companies', 'ti-cloud-down', 1, '2024-01-13 12:30:30', '2024-02-06 09:12:14'),
(6, 'Shopping complexes', 'ti-harddrives', 1, '2024-01-13 12:34:46', '2024-02-06 09:12:42'),
(7, 'Commercial Banks', 'ti-money', 1, '2024-01-13 12:37:47', '2024-02-06 09:12:59'),
(8, 'Hotels and resort', 'ti-package', 1, '2024-01-27 09:46:23', '2024-02-06 09:13:17'),
(9, 'Business Process Outsourcing (BPOs)', 'ti-ticket', 1, '2024-01-27 09:46:38', '2024-02-06 09:13:37'),
(10, 'Transport companies', 'ti-truck', 1, '2024-01-27 09:46:59', '2024-02-06 09:10:29'),
(11, 'Retail companies', 'ti-eraser', 1, '2024-01-27 09:47:46', '2024-02-06 09:10:09'),
(12, 'Gyms and sport companies', 'ti-vector', 1, '2024-01-27 09:48:00', '2024-02-06 09:09:52'),
(13, 'Online marketing companies', 'ti-layout-grid3', 1, '2024-01-27 09:48:30', '2024-02-06 09:09:32'),
(14, 'Media and communication companies', 'ti-save-alt', 1, '2024-01-27 09:49:52', '2024-02-06 09:08:48'),
(15, 'IT service management companies', 'ti-desktop', 1, '2024-01-27 09:50:03', '2024-02-06 09:09:03'),
(16, 'Insurance industry', 'ti-desktop', 1, '2024-01-27 09:50:14', '2024-02-06 09:07:45'),
(17, 'Fashion industry', 'ti-eye', 1, '2024-01-27 09:50:28', '2024-02-06 09:07:29'),
(18, 'Tourism and hospitality industry', 'ti-hand-open', 1, '2024-01-27 09:50:49', '2024-02-06 09:07:04'),
(19, 'Health care industry', 'ti-heart', 1, '2024-01-27 09:51:05', '2024-02-06 09:06:36'),
(20, 'Non- banking financial institutions', 'ti-package', 1, '2024-01-27 09:51:18', '2024-02-06 09:06:08'),
(21, 'Commercial banks', 'ti-money', 1, '2024-01-27 09:51:29', '2024-02-06 09:05:48'),
(22, 'Fashion industry', 'ti-bookmark-alt', 1, '2024-01-27 09:51:52', '2024-02-06 09:05:26'),
(23, 'E-commerce industry', 'ti-shopping-cart', 1, '2024-01-27 09:52:13', '2024-02-06 09:05:00'),
(24, 'Education industry', 'ti-book', 1, '2024-01-27 09:52:21', '2024-02-06 09:04:36'),
(25, 'Airlines', 'ti-rocket', 1, '2024-01-27 09:52:31', '2024-02-06 09:04:18'),
(26, 'Advertising agencies', 'ti-camera', 1, '2024-01-12 04:51:26', '2024-02-06 09:04:01'),
(28, 'Printing', 'ti-printer', 1, '2024-02-28 03:59:00', '2024-02-28 04:01:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
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
-- Indexes for table `pricings`
--
ALTER TABLE `pricings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vendortypes`
--
ALTER TABLE `vendortypes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pricings`
--
ALTER TABLE `pricings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=319;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `vendortypes`
--
ALTER TABLE `vendortypes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
