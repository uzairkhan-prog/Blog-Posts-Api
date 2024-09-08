-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 09, 2024 at 12:28 AM
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
-- Database: `blogapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts`
--

CREATE TABLE `blog_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_posts`
--

INSERT INTO `blog_posts` (`id`, `title`, `content`, `user_id`, `created_at`, `updated_at`) VALUES
(16, 'How Our Tiny Cottage Came To Be', 'In the hustle and bustle of modern life, the allure of simplicity became a beacon guiding us toward a different way of living. The dream of a tiny cottage, nestled in nature’s embrace, began to take root in our hearts.', 2, '2024-09-08 09:45:00', '2024-09-08 09:46:33'),
(17, 'The Simplest Ideas to Incorporate Cottagecore Into Your Life', 'Creating a Rustic Haven For a cottage core enthusiast, the allure of a simple and rustic life is not just a passing fancy – it’s a way of being. If you find yourself yearning for the tranquility of rolling meadows.', 2, '2024-09-08 09:47:30', '2024-09-08 09:47:30'),
(18, 'Cottage Wallpapers: Where to Buy and How to Apply', 'As a devoted cottage core enthusiast, the essence of cozy aesthetics is not just a design choice; it’s a way of life. Infusing the warmth of cottage style into our living spaces isn’t merely a trend – it’s a deliberate embrace…', 2, '2024-09-08 09:49:34', '2024-09-08 09:49:34'),
(19, 'Create a paid newsletter', 'Use Squarespace to grow and manage your mailing lists, send newsletters, and connect with your audience—all from one place.', 2, '2024-09-08 09:50:43', '2024-09-08 09:50:43'),
(20, 'Manage daily workflows', 'Use the dashboard to manage your publishing cadence and categories, customize contributor settings, and track analytics.', 2, '2024-09-08 09:51:12', '2024-09-08 09:51:12'),
(21, 'Sell premium content', 'Whether you’re a chef selling recipes and cooking videos, or a financial planner sharing courses and newsletters, Squarespace has the tools you need to sell exclusive content on your website.', 2, '2024-09-08 09:51:39', '2024-09-08 09:51:39'),
(22, 'The Art of Lures', 'I’ve never been much of a fly fisherman, but that doesn’t mean I can’t appreciate the work of art that is a well tied lure.', 2, '2024-09-08 09:52:15', '2024-09-08 09:52:15'),
(23, 'The Captain\'s Hat', 'Being the captain of a fishing charter is my dream job, but that doesn’t mean it’s always easy.', 2, '2024-09-08 09:52:33', '2024-09-08 09:52:33'),
(24, 'Big Snook Fishing', 'Snook is always a fun fish to go after and we spent the day visiting a few of the locations it likes best.', 2, '2024-09-08 09:52:49', '2024-09-08 09:52:49'),
(25, 'Dock Talk', 'We charter captains like to think of ourselves as a different breed, with a whole vocabulary of our own.', 2, '2024-09-08 09:53:05', '2024-09-08 09:53:05'),
(26, 'Trophies', 'What do you do with a big catch? Mount it? Eat it? Take a photo and throw it back? It all depends, I think, on why you fish in the first place.', 2, '2024-09-08 09:54:47', '2024-09-08 09:54:47'),
(27, 'Thinking Like a Fish', 'To get better at catching fish, you need to get better at thinking like one.', 2, '2024-09-08 09:55:30', '2024-09-08 09:55:30'),
(28, 'Walkabout', 'Angles and architecture. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 2, '2024-09-08 09:57:16', '2024-09-08 09:57:16'),
(29, 'Edges', 'Something ends, something begins. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 2, '2024-09-08 09:57:32', '2024-09-08 09:57:32');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `blog_post_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `content`, `blog_post_id`, `user_id`, `created_at`, `updated_at`) VALUES
(9, 'Great.', 29, 2, '2024-09-08 10:00:37', '2024-09-08 10:00:37'),
(10, 'Wow', 27, 2, '2024-09-08 10:08:47', '2024-09-08 10:08:47');

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_09_07_111326_create_personal_access_tokens_table', 1),
(5, '2024_09_07_111431_create_blog_posts_table', 1),
(6, '2024_09_07_112014_create_comments_table', 2);

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
(1, 'App\\Models\\User', 1, 'Personal Access Token', 'bcb3eefa722f37054b738c2060e4f593a68280f6739de80e9f5dab1bde4f929b', '[\"*\"]', NULL, NULL, '2024-09-07 06:37:48', '2024-09-07 06:37:48'),
(2, 'App\\Models\\User', 1, 'Personal Access Token', 'ef108ee232d01b1f5aa7b9740b7bc42fcf900c318eb57d2cb447dbab0bffa156', '[\"*\"]', NULL, NULL, '2024-09-07 06:40:16', '2024-09-07 06:40:16'),
(3, 'App\\Models\\User', 4, 'Personal Access Token', '2ae3e55221d5d94a12c92f8db1e60268f87dccfc3d37522b6a79d949ee6cb456', '[\"*\"]', NULL, NULL, '2024-09-07 20:22:59', '2024-09-07 20:22:59'),
(4, 'App\\Models\\User', 4, 'Personal Access Token', 'd8553bb57a24407d18074cce83547d96c151753143d6e79e99b903c3b078b816', '[\"*\"]', NULL, NULL, '2024-09-07 20:24:43', '2024-09-07 20:24:43'),
(5, 'App\\Models\\User', 4, 'Personal Access Token', '1c30fba545b1c0dc98e7ade3294a4851723dc8a3b194bcf0379246caa825b1e5', '[\"*\"]', NULL, NULL, '2024-09-07 20:29:32', '2024-09-07 20:29:32'),
(6, 'App\\Models\\User', 4, 'Personal Access Token', '157e6a796f9419a7305f5d43c62117cbc9e8c225c01b12e9e6f307fee07fde2b', '[\"*\"]', NULL, NULL, '2024-09-07 20:32:56', '2024-09-07 20:32:56'),
(7, 'App\\Models\\User', 2, 'Personal Access Token', 'c2d61ba54c2d97dcf5dfb2b9b734a5cb14b90095e5dfefbdff9793e5615ff893', '[\"*\"]', NULL, NULL, '2024-09-08 08:03:17', '2024-09-08 08:03:17'),
(8, 'App\\Models\\User', 2, 'Personal Access Token', 'b8b0421e054f2c0377df82da7ede9d72b2732d378265e87f27f54dd09e48840c', '[\"*\"]', NULL, NULL, '2024-09-08 08:08:54', '2024-09-08 08:08:54'),
(9, 'App\\Models\\User', 2, 'Personal Access Token', '239040ff70c1496ce7e4c747dd7c7581f5381c95b8e954c70faec739af50d4f8', '[\"*\"]', '2024-09-08 08:15:40', NULL, '2024-09-08 08:14:38', '2024-09-08 08:15:40'),
(10, 'App\\Models\\User', 2, 'Personal Access Token', '1f4bcf8380ed681ab91f5c73574753c87171dd5a405616d5a3cc42a6b4aa4fc9', '[\"*\"]', NULL, NULL, '2024-09-08 12:06:00', '2024-09-08 12:06:00'),
(11, 'App\\Models\\User', 2, 'Personal Access Token', '50750a649a1a842de68a5c82a1d39caa155f02a6176fa9a2aa67c166eb11d3fe', '[\"*\"]', NULL, NULL, '2024-09-08 12:13:26', '2024-09-08 12:13:26');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('5qbQojnFXDjKLm72Y3keuvRLNxeSzeYT5GEcjAyr', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoia2NKbjY0RE9wVlk0cVNRVlA1Q1BONXZ0RVhPWEx3U1hMT0c2UFBuMCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1725823123),
('6F8qzcIx1A1VbH0ChDrunrT87k5ecf53kic4wVj3', NULL, '127.0.0.1', 'Thunder Client (https://www.thunderclient.com)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQW9COG5wNXd6cW94VDlKM3lJSW9NVGU3MzRLV0V1WVVWOXV0OGdKUCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozMDoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3Bvc3RzLzI4Ijt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1725814733),
('8e8qh3gIuGLOxECusk5yN6eTbcngm6YwbtC8BuYr', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiN21vYXZJU0ozRXFLd2s5U3RTb3YyMzdiQVlGN0JTanZNUERKTWtXbSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1725823125),
('Arjoh7oDKhEMR63Hm7wHDQ04Y5naZE4yK6zsr9x3', NULL, '127.0.0.1', 'PostmanRuntime/7.41.2', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSmoybVJCUlMzTFZlYnhEcFdYTWs1Q2JOVHg4S2QzTWFJdGNzWUo1aSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozMDoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3Bvc3RzLzI4Ijt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1725814682),
('Bdpm89RtQzEgepNH8sdnurcBWdc0liXXhbquVFJn', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMkdKaGNvVXlVUWtJYTBtYXFHSXJKZk13bTN5WUVBMHVJZGF0R2R0NSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjE6e3M6ODoiaW50ZW5kZWQiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wb3N0cyI7fX0=', 1725817651),
('IUODbgfSWpIjNTy1AuBa1jXmz8XTAVa9jk4ZLalQ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidDZZZG0wTkhlN0FwRlcxeFM4dXk0bE1hQlBsZHpIb1NiUDBrZ05xZSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1725823124),
('RFKsfA8iZbLfNgfyFTwMgCIODaj2J0pfCGhXvPpK', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaGFQUFVrazI4WGNWSnFkdTkydUlyTVB6UjZTcTNCRUVBNW42eWFLNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1725834475),
('uyI27JN6cdIr3uHAV3P1Xt17g5GU0h0Nik3K32bv', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZWppdXUzYk0yekRqU09ZWHJYWk56Q0NxSXE4RjZxbWZwRkEyWFJGYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjE6e3M6ODoiaW50ZW5kZWQiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wb3N0cy8yNyI7fX0=', 1725823351);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Admin', 'admin@gmail.com', NULL, '$2y$12$vp6BrWDrgkA9UIl1JtOgy.722qoY09jtNCF2vWdPrTMjMVCpuxDhS', NULL, '2024-09-07 08:05:25', '2024-09-07 08:05:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_blog_post_id_foreign` (`blog_post_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `blog_posts`
--
ALTER TABLE `blog_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD CONSTRAINT `blog_posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_blog_post_id_foreign` FOREIGN KEY (`blog_post_id`) REFERENCES `blog_posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
