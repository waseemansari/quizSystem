-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2023 at 03:18 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz`
--

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
(8, '2014_10_12_000000_create_users_table', 1),
(9, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(10, '2019_08_19_000000_create_failed_jobs_table', 1),
(11, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(12, '2023_09_24_110326_create_questions_table', 1),
(13, '2023_09_24_110543_create_question_ans_table', 1),
(14, '2023_09_24_110954_create_user_results_table', 1),
(15, '2023_09_24_125237_create_right_ans_table', 2);

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
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `title`, `status`, `created_at`, `updated_at`) VALUES
(3, 'PHP stands for -', 1, NULL, NULL),
(4, 'Who is known as the father of PHP?', 1, NULL, NULL),
(5, 'Variable name in PHP starts with -', 1, NULL, NULL),
(6, 'Which of the following is the default file extension of PHP?', 1, NULL, NULL),
(7, 'Which of the following is not a variable scope in PHP?', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `question_ans`
--

CREATE TABLE `question_ans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `question_id` smallint(6) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `question_ans`
--

INSERT INTO `question_ans` (`id`, `title`, `question_id`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Hypertext Preprocessor\r\n', 3, 1, NULL, NULL),
(4, 'Pretext Hypertext Preprocessor\r\n', 3, 1, NULL, NULL),
(5, 'Personal Home Processor\r\n', 3, 1, NULL, NULL),
(6, 'None of the above', 3, 1, NULL, NULL),
(7, 'Drek Kolkevi', 4, 1, NULL, NULL),
(8, 'List Barely', 4, 1, NULL, NULL),
(9, 'Rasmus Lerdrof', 4, 1, NULL, NULL),
(10, 'None of the above', 4, 1, NULL, NULL),
(14, '! (Exclamation)', 5, 1, NULL, NULL),
(15, '$ (Dollar)', 5, 1, NULL, NULL),
(16, '& (Ampersand)', 5, 1, NULL, NULL),
(17, '# (Hash)', 5, 1, NULL, NULL),
(18, '.php', 6, 1, NULL, NULL),
(19, '.hphp', 6, 1, NULL, NULL),
(20, '.xml', 6, 1, NULL, NULL),
(21, '.html', 6, 1, NULL, NULL),
(22, 'Extern', 7, 1, NULL, NULL),
(23, 'Local', 7, 1, NULL, NULL),
(24, 'Static', 7, 1, NULL, NULL),
(25, 'Global', 7, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `right_ans`
--

CREATE TABLE `right_ans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_id` smallint(6) NOT NULL,
  `question_ans_id` smallint(6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `right_ans`
--

INSERT INTO `right_ans` (`id`, `question_id`, `question_ans_id`, `created_at`, `updated_at`) VALUES
(1, 3, 3, NULL, NULL),
(2, 4, 8, NULL, NULL),
(3, 5, 15, NULL, NULL),
(4, 6, 20, NULL, NULL),
(5, 7, 25, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'rehan', NULL, NULL, '2023-09-24 07:51:47', '2023-09-24 07:51:47'),
(2, 'rehan', NULL, NULL, '2023-09-24 08:14:15', '2023-09-24 08:14:15'),
(3, 'rehan', NULL, NULL, '2023-09-24 08:14:41', '2023-09-24 08:14:41'),
(4, 'rehan', NULL, NULL, '2023-09-24 08:15:21', '2023-09-24 08:15:21'),
(5, 'rehan cc', NULL, NULL, '2023-09-24 08:18:29', '2023-09-24 08:18:29');

-- --------------------------------------------------------

--
-- Table structure for table `user_results`
--

CREATE TABLE `user_results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_ans_id` smallint(6) NOT NULL,
  `user_id` smallint(6) NOT NULL,
  `result` enum('true','false') NOT NULL DEFAULT 'false',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_results`
--

INSERT INTO `user_results` (`id`, `question_ans_id`, `user_id`, `result`, `created_at`, `updated_at`) VALUES
(11, 3, 5, 'true', '2023-09-24 08:18:29', '2023-09-24 08:18:29'),
(12, 23, 5, 'false', '2023-09-24 08:18:29', '2023-09-24 08:18:29'),
(13, 14, 5, 'false', '2023-09-24 08:18:29', '2023-09-24 08:18:29'),
(14, 8, 5, 'true', '2023-09-24 08:18:29', '2023-09-24 08:18:29'),
(15, 19, 5, 'false', '2023-09-24 08:18:29', '2023-09-24 08:18:29');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question_ans`
--
ALTER TABLE `question_ans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `right_ans`
--
ALTER TABLE `right_ans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_results`
--
ALTER TABLE `user_results`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `question_ans`
--
ALTER TABLE `question_ans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `right_ans`
--
ALTER TABLE `right_ans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_results`
--
ALTER TABLE `user_results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
