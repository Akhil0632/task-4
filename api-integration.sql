-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2025 at 09:25 AM
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
-- Database: `api-integration`
--

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
(1, '2025_03_30_171608_create_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `street`, `city`, `created_at`, `updated_at`) VALUES
(1, 'Leanne Graham', 'Sincere@april.biz', 'Kulas Light', 'Gwenborough', '2025-03-31 00:38:04', '2025-03-31 00:38:04'),
(2, 'Ervin Howell', 'Shanna@melissa.tv', 'Victor Plains', 'Wisokyburgh', '2025-03-31 00:38:05', '2025-03-31 00:38:05'),
(3, 'Clementine Bauch', 'Nathan@yesenia.net', 'Douglas Extension', 'McKenziehaven', '2025-03-31 00:38:05', '2025-03-31 00:38:05'),
(4, 'Patricia Lebsack', 'Julianne.OConner@kory.org', 'Hoeger Mall', 'South Elvis', '2025-03-31 00:38:05', '2025-03-31 00:38:05'),
(5, 'Chelsey Dietrich', 'Lucio_Hettinger@annie.ca', 'Skiles Walks', 'Roscoeview', '2025-03-31 00:38:05', '2025-03-31 00:38:05'),
(6, 'Mrs. Dennis Schulist', 'Karley_Dach@jasper.info', 'Norberto Crossing', 'South Christy', '2025-03-31 00:38:05', '2025-03-31 00:38:05'),
(7, 'Kurtis Weissnat', 'Telly.Hoeger@billy.biz', 'Rex Trail', 'Howemouth', '2025-03-31 00:38:05', '2025-03-31 00:38:05'),
(8, 'Nicholas Runolfsdottir V', 'Sherwood@rosamond.me', 'Ellsworth Summit', 'Aliyaview', '2025-03-31 00:38:05', '2025-03-31 00:38:05'),
(9, 'Glenna Reichert', 'Chaim_McDermott@dana.io', 'Dayna Park', 'Bartholomebury', '2025-03-31 00:38:05', '2025-03-31 00:38:05'),
(10, 'Clementina DuBuque', 'Rey.Padberg@karina.biz', 'Kattie Turnpike', 'Lebsackbury', '2025-03-31 00:38:05', '2025-03-31 00:38:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
