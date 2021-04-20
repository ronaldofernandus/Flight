-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2021 at 12:25 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flight`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `travel_packages_id` int(11) NOT NULL,
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `travel_packages_id`, `images`, `deleted_at`, `created_at`, `updated_at`) VALUES
(4, 9, 'assets/gallery/UhDat2gqhUO9Wyp2hRDxh21Zq21OfhNZ5cWKGe3H.jpg', NULL, '2021-04-08 02:41:13', '2021-04-12 00:07:26'),
(5, 10, 'assets/gallery/B8Fa22vJZ5oQQgqPIAcsNCHoOhEvBLRLNj5UQY9x.jpg', NULL, '2021-04-08 03:17:02', '2021-04-12 00:08:56'),
(6, 11, 'assets/gallery/qdCBPwfpK62ctbrSuirOIysrHkywxe3SV77vAKgo.jpg', NULL, '2021-04-11 21:41:50', '2021-04-12 00:09:42'),
(7, 12, 'assets/gallery/256mNtXKNyiXqPgdLLe8SOqWtFS4fLcDeobmABbV.jpg', NULL, '2021-04-11 21:42:23', '2021-04-12 00:10:23'),
(8, 9, 'assets/gallery/BuqJZtmo4mfpOmR0TQMSJnd4cGyrgRX8IlNrfc4Y.jpg', NULL, '2021-04-12 02:14:26', '2021-04-12 02:19:03'),
(9, 9, 'assets/gallery/AomtBaa9sZPuYllePi5rBX4WNXi1qtzVDPTBYn7Z.jpg', NULL, '2021-04-12 02:22:44', '2021-04-12 02:22:44'),
(10, 9, 'assets/gallery/fbdXMWM7MtUI80eX4aJ7PA1NcApIZfiecnF0XXs6.jpg', NULL, '2021-04-12 02:23:11', '2021-04-12 02:23:11'),
(11, 9, 'assets/gallery/JtJCBYKONis4mIoScPEj8L8GtmFjZWH5DLBznj5H.jpg', NULL, '2021-04-12 02:23:27', '2021-04-12 02:23:27'),
(14, 10, 'assets/gallery/Cv3zfVyzxxSZUZntLKVmFMBjZmh6eVtFeMJ4kD16.jpg', NULL, '2021-04-16 01:50:25', '2021-04-16 01:50:25');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_04_06_052536_create_travel_packages_table', 1),
(5, '2021_04_06_052802_create_galleries_table', 2),
(6, '2021_04_06_054400_create_transactions_table', 3),
(7, '2021_04_06_055314_create_transaction_details_table', 4),
(8, '2021_04_06_114408_add_roles_field_to_users_table', 5),
(9, '2021_04_06_130110_add_username_field_to_users_table', 6),
(10, '2021_04_07_084551_rename_travel_package', 7);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `travel_packages_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `additional_visa` int(11) NOT NULL,
  `transaction_total` int(11) NOT NULL,
  `transaction_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `travel_packages_id`, `users_id`, `additional_visa`, `transaction_total`, `transaction_status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 10, 12, 190, 290, 'PENDING', NULL, '2021-04-18 09:15:02', '2021-04-21 09:15:02'),
(36, 9, 10, 380, 1880, 'PENDING', NULL, '2021-04-16 02:27:48', '2021-04-16 02:42:19'),
(37, 9, 10, 0, 500, 'PENDING', NULL, '2021-04-16 02:51:35', '2021-04-16 02:51:40');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_details`
--

CREATE TABLE `transaction_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transactions_id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_visa` tinyint(1) NOT NULL,
  `doe_passport` date NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction_details`
--

INSERT INTO `transaction_details` (`id`, `transactions_id`, `username`, `nationality`, `is_visa`, `doe_passport`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'samsung123', 'ID', 1, '2021-04-20', NULL, '2021-04-19 09:16:22', '2021-04-29 09:16:22'),
(33, 36, 'laptop', 'ID', 0, '2026-04-16', NULL, '2021-04-16 02:27:48', '2021-04-16 02:27:48'),
(34, 36, 'Adi_123', 'ID', 1, '2021-04-23', NULL, '2021-04-16 02:40:57', '2021-04-16 02:40:57'),
(35, 36, 'samsung123', 'ID', 1, '2021-04-23', NULL, '2021-04-16 02:42:19', '2021-04-16 02:42:19'),
(36, 37, 'laptop', 'ID', 0, '2026-04-16', NULL, '2021-04-16 02:51:35', '2021-04-16 02:51:35');

-- --------------------------------------------------------

--
-- Table structure for table `travel_packages`
--

CREATE TABLE `travel_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured_event` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foods` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departure_date` date NOT NULL,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `travel_packages`
--

INSERT INTO `travel_packages` (`id`, `title`, `slug`, `location`, `about`, `featured_event`, `language`, `foods`, `departure_date`, `duration`, `type`, `price`, `deleted_at`, `created_at`, `updated_at`) VALUES
(9, 'Barcelona', 'barcelona', 'Spain', 'Barcelona is a city on the coast of northeastern Spain. It is the capital and largest city of the autonomous community of Catalonia, as well as the second most populous municipality of Spain. With a population of 1.6 million within city limits', 'Flamenco', 'Spain', 'Local Food', '2021-04-10', '4D 3N', 'Open of Public', 500, NULL, '2021-04-08 02:40:35', '2021-04-11 23:25:02'),
(10, 'FRANCE', 'france', 'PARIS', 'Paris, France\'s capital, is a major European city and a global center for art, fashion, gastronomy and culture. Its 19th-century cityscape is crisscrossed by wide boulevards and the River Seine. Beyond such landmarks as the Eiffel Tower and the 12th-century, Gothic Notre-Dame cathedral, the city is known for its cafe culture and designer boutiques along the Rue du Faubourg Saint-Honoré.', 'Tour de France Save', 'French', 'Baguettes', '2021-04-11', '4D 3N', 'Open of Public', 500, NULL, '2021-04-11 21:28:55', '2021-04-11 23:25:18'),
(11, 'INDONESIA', 'indonesia', 'BALI', 'Bali is an Indonesian island known for its forested volcanic mountains, iconic rice paddies, beaches and coral reefs. The island is home to religious sites such as cliffside Uluwatu Temple. To the south, the beachside city of Kuta has lively bars, while Seminyak, Sanur and Nusa Dua are popular resort towns. The island is also known for its yoga and meditation retreats.', 'Bali Spirit Festival', 'Indonesian', 'Nasi Goreng', '2021-04-15', '4D 3N', 'Open of Public', 500, NULL, '2021-04-11 21:36:49', '2021-04-11 23:25:35'),
(12, 'SWISS', 'swiss', 'Alpen Pennine', 'The Pennine Alps (German: Walliser Alpen, French: Alpes valaisannes, Italian: Alpi Pennine, Latin: Alpes Poeninae), also known as the Valais Alps, are a mountain range in the western part of the Alps. They are located in Switzerland (Valais) and Italy (Piedmont and the Aosta Valley).', 'My Easter Bunny', 'Swiss franc', 'Cheese Fondue', '2021-04-18', '4D 3N', 'Open of Public', 500, NULL, '2021-04-11 21:41:09', '2021-04-11 23:25:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
  `roles` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USER',
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `roles`, `username`) VALUES
(10, 'laptop', 'laptop@gmail.com', '2021-04-12 05:28:43', '$2y$10$MfJDKQJx3479JjTWXMRz5eGNwAcuoHimexZ9/D0XURqdGZA2f5iy2', NULL, '2021-04-07 00:32:38', '2021-04-12 05:28:43', 'USER', 'laptop'),
(12, 'Adi', 'Adi123@gmail.com', NULL, '$2y$10$RAQhmJa/6C3CSWfcBpeBo.cb05MFyfmtFdn1Bi944IrqokkZ1CEMy', NULL, '2021-04-08 08:32:36', '2021-04-08 08:32:36', 'USER', 'Adi_123'),
(13, 'samsung', 'samsung123@gmail.com', '2021-04-12 20:19:51', '$2y$10$ihRL6UYCVUILkQu2Jv1CaeAR.eMaVYg.40pda0g/jngQKEDFDbhE2', NULL, '2021-04-12 20:02:16', '2021-04-12 20:19:51', 'USER', 'samsung123');

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
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `travel_packages`
--
ALTER TABLE `travel_packages`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `travel_packages`
--
ALTER TABLE `travel_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
