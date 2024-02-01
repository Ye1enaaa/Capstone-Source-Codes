-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2024 at 01:36 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coffee_fnl`
--

-- --------------------------------------------------------

--
-- Table structure for table `archiveds`
--

CREATE TABLE `archiveds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `customerName` varchar(255) NOT NULL,
  `phoneNum` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `archived_status_histories`
--

CREATE TABLE `archived_status_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `customerName` varchar(255) NOT NULL,
  `sorterName` varchar(255) NOT NULL,
  `kiloOfBeans` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bean_data`
--

CREATE TABLE `bean_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `machineID` varchar(255) DEFAULT NULL,
  `bad` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bean_data_twos`
--

CREATE TABLE `bean_data_twos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `machineID` varchar(255) DEFAULT NULL,
  `bad` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `customerName` varchar(255) NOT NULL,
  `phoneNum` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `profileAvatar` varchar(255) DEFAULT NULL,
  `images` varchar(255) DEFAULT NULL,
  `companyName` varchar(255) NOT NULL,
  `companyNumber` varchar(255) NOT NULL,
  `companyLocation` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `companyName` varchar(255) NOT NULL,
  `phoneNum` varchar(255) NOT NULL,
  `coffee_bean_ai_sorter` tinyint(1) NOT NULL DEFAULT 0,
  `website` tinyint(1) NOT NULL DEFAULT 0,
  `message` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `generate_keys`
--

CREATE TABLE `generate_keys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `special_key` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `histories`
--

CREATE TABLE `histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `customerName` varchar(255) NOT NULL,
  `sorterName` varchar(255) NOT NULL,
  `kiloOfBeans` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `machines`
--

CREATE TABLE `machines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `formattedId` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(5, '2023_07_30_091141_create_customers_table', 1),
(6, '2023_07_30_104524_create_sorters_table', 1),
(7, '2023_07_31_163730_create_details_table', 1),
(8, '2023_08_15_023724_create_bean_counts_table', 1),
(9, '2023_09_01_105513_create_histories_table', 1),
(10, '2023_10_24_032904_create_receipts_table', 1),
(11, '2023_11_01_020554_create_archiveds_table', 1),
(12, '2023_11_01_021853_create_archived_status_histories_table', 1),
(14, '2023_11_12_075355_feedback', 1),
(15, '2023_11_15_112209_add_disabled_to_users_table', 1),
(16, '2023_11_17_123400_add_last_login_to_users_table', 1),
(17, '2023_11_26_095506_bean_data_table', 1),
(18, '2023_12_04_131806_generate_keys_table', 1),
(19, '2023_12_09_034419_create_machines_table', 1),
(20, '2023_12_09_054536_create_bean_data_twos_table', 1),
(22, '2023_11_01_033900_create_statuses_table', 2);

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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'token', 'ee042a894a7793cb23fb1d851909c4845506950b08c6adee3a0e0b3a669f1bec', '[\"*\"]', NULL, NULL, '2023-12-13 05:56:32', '2023-12-13 05:56:32'),
(2, 'App\\Models\\User', 1, 'token', '8fc8be0e8b33cfde328003c52ef1958be42924203aa623ac427a6fba2214d137', '[\"*\"]', '2023-12-13 06:00:19', NULL, '2023-12-13 06:00:05', '2023-12-13 06:00:19'),
(3, 'App\\Models\\User', 1, 'token', 'cdee91983e6b4f33ccad2d7f610866c77e30c9471488e34772106ac03abbc83e', '[\"*\"]', '2023-12-13 06:00:49', NULL, '2023-12-13 06:00:39', '2023-12-13 06:00:49'),
(4, 'App\\Models\\User', 2, 'token', 'ff23304a66e0f208ed088ab44c332b2ccca862ee0a17d9b4a6d51507bafd0a95', '[\"*\"]', NULL, NULL, '2023-12-13 06:01:41', '2023-12-13 06:01:41'),
(5, 'App\\Models\\User', 2, 'token', '6a898d73b5159e34fd7a26b817f225fc5092ca093673d49cdfdffb23e1bcd618', '[\"*\"]', '2023-12-13 06:25:43', NULL, '2023-12-13 06:09:51', '2023-12-13 06:25:43'),
(6, 'App\\Models\\User', 1, 'token', 'f13b13dde80a83ccd850160133b655030cd3d6a2e3b8338ff4697b566b079c82', '[\"*\"]', '2023-12-13 06:29:09', NULL, '2023-12-13 06:28:24', '2023-12-13 06:29:09'),
(7, 'App\\Models\\User', 3, 'token', '5938389d7b3fd98e5d3ad4aa2455d8287f7cb3b2a50062924952523631ff140c', '[\"*\"]', NULL, NULL, '2023-12-13 06:30:24', '2023-12-13 06:30:24'),
(8, 'App\\Models\\User', 3, 'token', '1089a22019776ea860d4f63fc7ab0136cc2450c95b61cc6c146761a9cf2632b7', '[\"*\"]', '2023-12-13 19:07:18', NULL, '2023-12-13 19:06:10', '2023-12-13 19:07:18'),
(9, 'App\\Models\\User', 1, 'token', 'b97f8eb284cb7f9e8bed01c8c32fbe4ebbec6901ecc157f9ef52715a08b1886e', '[\"*\"]', '2023-12-23 18:54:26', NULL, '2023-12-23 18:54:18', '2023-12-23 18:54:26'),
(10, 'App\\Models\\User', 3, 'token', 'f4476d2f5f9c1283b8791998839ed2ce58f6df475501421a9926465c32c900f7', '[\"*\"]', '2023-12-23 18:55:38', NULL, '2023-12-23 18:54:49', '2023-12-23 18:55:38'),
(11, 'App\\Models\\User', 3, 'token', '0b69ff0531cb61268337eda60f095cd9d5e26fa8b21be0e8a9d915949404401b', '[\"*\"]', '2023-12-23 19:37:29', NULL, '2023-12-23 18:57:58', '2023-12-23 19:37:29'),
(12, 'App\\Models\\User', 3, 'token', '26455de23fe9ed57dcd07a15f9dd3b6001a85d5526e6afe9cff3bcad9e427a7f', '[\"*\"]', '2023-12-23 19:29:18', NULL, '2023-12-23 19:08:45', '2023-12-23 19:29:18'),
(13, 'App\\Models\\User', 1, 'token', '4c8be6e9f2d22dad550c3d08f3f9bd14c0cfc091c77bd368e9c65086ca044f4f', '[\"*\"]', '2023-12-23 19:43:17', NULL, '2023-12-23 19:43:11', '2023-12-23 19:43:17'),
(14, 'App\\Models\\User', 3, 'token', '13534af60f2460bcf0267a882dc52f487b181857016d46ca7b9bfe3efeb71779', '[\"*\"]', '2023-12-23 22:04:16', NULL, '2023-12-23 19:44:58', '2023-12-23 22:04:16'),
(15, 'App\\Models\\User', 3, 'token', 'e1988893543ce3b11ef7ef236d5148bd92a0be1032a25d083ffd5fcb549fe735', '[\"*\"]', '2023-12-23 22:41:14', NULL, '2023-12-23 22:35:14', '2023-12-23 22:41:14'),
(16, 'App\\Models\\User', 3, 'token', '2c10308aa3e46843f6139082c98c75c2f2bb312817df10106ca25cea51b505ed', '[\"*\"]', '2023-12-23 22:53:56', NULL, '2023-12-23 22:41:36', '2023-12-23 22:53:56'),
(17, 'App\\Models\\User', 3, 'token', '3f3935862c07ccd8428b9f090d5c2f6329ca3888c76c4c2ddfd8e879a191202f', '[\"*\"]', '2023-12-24 08:02:07', NULL, '2023-12-23 22:54:12', '2023-12-24 08:02:07'),
(18, 'App\\Models\\User', 3, 'token', '2a0018220b77c8eacf15513f64f55c7a6a04b38bd38472655132d3b61be649b9', '[\"*\"]', '2023-12-24 08:03:49', NULL, '2023-12-24 08:02:27', '2023-12-24 08:03:49'),
(19, 'App\\Models\\User', 3, 'token', '1a78ecb5748fc3740540b62f6307e550de2a43c7a6dacf569fe0513769d1277b', '[\"*\"]', '2023-12-24 08:04:32', NULL, '2023-12-24 08:04:05', '2023-12-24 08:04:32'),
(20, 'App\\Models\\User', 3, 'token', 'f28f2532a58218b6d74c708ed5166aa6c393c396192e0af9472df269c5906046', '[\"*\"]', '2023-12-24 08:07:26', NULL, '2023-12-24 08:04:37', '2023-12-24 08:07:26'),
(21, 'App\\Models\\User', 3, 'token', '5e5967a44d0973b1f86b31731567f7eabb0af0b64d672f9c59c6eb6dca0a3f06', '[\"*\"]', '2023-12-24 09:10:15', NULL, '2023-12-24 08:07:55', '2023-12-24 09:10:15'),
(22, 'App\\Models\\User', 3, 'token', '935bdae138dd793b0564a40349f5a4552c8c2c062630645b439802cd7d83d6dc', '[\"*\"]', '2023-12-31 20:30:41', NULL, '2023-12-31 19:58:18', '2023-12-31 20:30:41'),
(23, 'App\\Models\\User', 3, 'token', '679708c85b2819f578fee5e2b8d20d015d065c5c3478a57aa1c27b7cb65dcdd4', '[\"*\"]', '2024-01-04 03:37:47', NULL, '2023-12-31 20:30:54', '2024-01-04 03:37:47'),
(24, 'App\\Models\\User', 3, 'token', 'abe3c86e8c9878e90e4b6710b9d9f3e8a9faeb46efaa6eb77210db9e08351a56', '[\"*\"]', '2024-01-07 05:09:31', NULL, '2024-01-07 04:42:41', '2024-01-07 05:09:31'),
(25, 'App\\Models\\User', 3, 'token', 'c16b06a100d2aa5ea487808ccf6311bedb23465bb7b5fdad6bad5457751a890f', '[\"*\"]', '2024-01-07 05:12:10', NULL, '2024-01-07 05:11:17', '2024-01-07 05:12:10'),
(26, 'App\\Models\\User', 3, 'token', 'f7cd7831d1d9f6bdac0747d5ff4dcd9e4710ed23955e73d09ace85ab82109f3e', '[\"*\"]', '2024-01-07 21:01:21', NULL, '2024-01-07 05:13:43', '2024-01-07 21:01:21'),
(27, 'App\\Models\\User', 3, 'token', '6199569590de0859cd766e27f7f4ee1279420ad601d8bc70f7c1ea91f8e68044', '[\"*\"]', '2024-01-07 22:17:11', NULL, '2024-01-07 05:22:09', '2024-01-07 22:17:11'),
(28, 'App\\Models\\User', 3, 'token', 'ae620d28d46f0f3d930b5e98b6ba80a6599e9453028016749cb92e0f3b2553eb', '[\"*\"]', '2024-01-07 23:14:23', NULL, '2024-01-07 21:01:24', '2024-01-07 23:14:23'),
(29, 'App\\Models\\User', 3, 'token', 'db9b9d32824d97c76266d8cc5a15444e7e69824ece8206797ef8c7812ba28103', '[\"*\"]', '2024-01-07 23:18:03', NULL, '2024-01-07 23:14:56', '2024-01-07 23:18:03'),
(30, 'App\\Models\\User', 3, 'token', '1e8c8a05075d88bc74b1822faff2a4d033801f2f00be4b81bcfb46021c8db419', '[\"*\"]', '2024-01-14 02:46:18', NULL, '2024-01-07 23:18:15', '2024-01-14 02:46:18'),
(31, 'App\\Models\\User', 3, 'token', '687f0a08fb6182136232ae1258d4c10ec2942cc2db67df6742ea9109633e0229', '[\"*\"]', '2024-01-18 03:41:15', NULL, '2024-01-17 04:38:05', '2024-01-18 03:41:15'),
(32, 'App\\Models\\User', 3, 'token', '727a32321091835533721b6a44fe9c18c0ad1e5adcd8f97670efbdb33c0c42c6', '[\"*\"]', '2024-01-18 05:03:46', NULL, '2024-01-18 04:38:08', '2024-01-18 05:03:46'),
(33, 'App\\Models\\User', 3, 'token', '318da5c8f76ad99873960ec0e4ab29a32bcecc469b57f89b1b75eac0af002be1', '[\"*\"]', '2024-01-18 18:36:52', NULL, '2024-01-18 17:37:55', '2024-01-18 18:36:52');

-- --------------------------------------------------------

--
-- Table structure for table `receipts`
--

CREATE TABLE `receipts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sorters`
--

CREATE TABLE `sorters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `sorterName` varchar(255) NOT NULL,
  `phoneNum` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `dateHired` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `customerName` varchar(255) NOT NULL,
  `sorterName` varchar(255) NOT NULL,
  `kiloOfBeans` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `goodCount` int(11) DEFAULT NULL,
  `badCount` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `role` int(11) NOT NULL DEFAULT 2,
  `email` varchar(255) NOT NULL,
  `formattedId` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT 0,
  `last_login` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `archiveds`
--
ALTER TABLE `archiveds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `archiveds_user_id_foreign` (`user_id`);

--
-- Indexes for table `archived_status_histories`
--
ALTER TABLE `archived_status_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `archived_status_histories_customer_id_foreign` (`customer_id`),
  ADD KEY `archived_status_histories_user_id_foreign` (`user_id`);

--
-- Indexes for table `bean_data`
--
ALTER TABLE `bean_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bean_data_twos`
--
ALTER TABLE `bean_data_twos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customers_user_id_foreign` (`user_id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `details_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `feedback_email_unique` (`email`);

--
-- Indexes for table `generate_keys`
--
ALTER TABLE `generate_keys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `generate_keys_email_unique` (`email`),
  ADD UNIQUE KEY `generate_keys_special_key_unique` (`special_key`),
  ADD KEY `generate_keys_user_id_foreign` (`user_id`);

--
-- Indexes for table `histories`
--
ALTER TABLE `histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `histories_customer_id_foreign` (`customer_id`),
  ADD KEY `histories_user_id_foreign` (`user_id`);

--
-- Indexes for table `machines`
--
ALTER TABLE `machines`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `machines_formattedid_unique` (`formattedId`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
-- Indexes for table `receipts`
--
ALTER TABLE `receipts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sorters`
--
ALTER TABLE `sorters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sorters_user_id_foreign` (`user_id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `statuses_customer_id_foreign` (`customer_id`),
  ADD KEY `statuses_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `archiveds`
--
ALTER TABLE `archiveds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `archived_status_histories`
--
ALTER TABLE `archived_status_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bean_data`
--
ALTER TABLE `bean_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bean_data_twos`
--
ALTER TABLE `bean_data_twos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `generate_keys`
--
ALTER TABLE `generate_keys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `histories`
--
ALTER TABLE `histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `machines`
--
ALTER TABLE `machines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `receipts`
--
ALTER TABLE `receipts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sorters`
--
ALTER TABLE `sorters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `archiveds`
--
ALTER TABLE `archiveds`
  ADD CONSTRAINT `archiveds_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `archived_status_histories`
--
ALTER TABLE `archived_status_histories`
  ADD CONSTRAINT `archived_status_histories_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `archiveds` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `archived_status_histories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `details`
--
ALTER TABLE `details`
  ADD CONSTRAINT `details_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `generate_keys`
--
ALTER TABLE `generate_keys`
  ADD CONSTRAINT `generate_keys_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `histories`
--
ALTER TABLE `histories`
  ADD CONSTRAINT `histories_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `histories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sorters`
--
ALTER TABLE `sorters`
  ADD CONSTRAINT `sorters_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `statuses`
--
ALTER TABLE `statuses`
  ADD CONSTRAINT `statuses_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `statuses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
