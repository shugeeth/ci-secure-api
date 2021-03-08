-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 08, 2021 at 01:25 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci-api-db`
--

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(5) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `name`, `email`, `updated_at`, `created_at`) VALUES
(1, 'Katrine Daniel', 'kavon.king@mccullough.net', NULL, '2021-03-07 13:23:13'),
(2, 'Mrs. Laurence Hickle IV', 'marquise45@barton.com', NULL, '2021-03-07 13:23:13'),
(3, 'Stephen Cole', 'ashton.langosh@collins.com', NULL, '2021-03-07 13:23:13'),
(4, 'Geoffrey Yundt I', 'ansel93@gmail.com', NULL, '2021-03-07 13:23:13'),
(5, 'Stephan Flatley', 'rhiannon.blanda@lang.com', NULL, '2021-03-07 13:23:13'),
(6, 'Heaven Parker', 'wrunolfsson@hirthe.info', NULL, '2021-03-07 13:23:14'),
(7, 'Danny Runolfsdottir', 'vokuneva@hotmail.com', NULL, '2021-03-07 13:23:14'),
(8, 'Prof. Jude Ratke PhD', 'mills.simeon@gutkowski.com', NULL, '2021-03-07 13:23:14'),
(9, 'Rosalinda Green', 'elaina02@altenwerth.com', NULL, '2021-03-07 13:23:14'),
(10, 'Sedrick Raynor', 'earline.jacobi@block.com', NULL, '2021-03-07 13:23:14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(5) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `is_active`, `created_at`) VALUES
(1, 'Adam', 'adam@example.com', '$2y$10$Zks2mr6IIDwVU/DzD1PG2OW5Mxfl3FTeW7JQQmt06kH9GRKH2nt2u', 1, '2021-03-07 07:02:14'),
(2, 'Brian', 'brian@example.com', '$2y$10$gUG28D/5JcHR66hSrlDQSOvVKSEBN9G1QKI7Nf/a3olEwG7Wm.2IO', 1, '2021-03-07 07:03:08'),
(3, 'Catherine', 'cat@example.com', '$2y$10$7SS0OQu.iQZ6s3B46HcURuX6U0w6t4x3yK48tXCXmgq0sGfn/vEHG', 1, '2021-03-07 07:04:07'),
(4, 'Dave', 'dave@example.com', '$2y$10$BjFQsgp3AwdmSDas8kNPtu4CnDO8skjI6wVpvR5NSV6xagq7F.N7m', 1, '2021-03-07 07:04:49'),
(5, 'Esther', 'esther@example.com', '$2y$10$7Zx4ynBL8QP1LpAggSygH.aBZyjhp8TtMtspYe2PZkE0ijqd3RhJy', 1, '2021-03-07 07:06:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password` (`password`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
