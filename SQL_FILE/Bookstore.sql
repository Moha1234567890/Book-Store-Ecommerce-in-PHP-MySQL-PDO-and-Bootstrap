-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2022 at 06:41 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(3) NOT NULL,
  `email` varchar(200) NOT NULL,
  `adminname` varchar(200) NOT NULL,
  `mypassword` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `email`, `adminname`, `mypassword`, `created_at`) VALUES
(1, 'admin.first@yahoo.com', 'admin.first@yahoo.com', '$2y$10$3lqPV300ILIrRX1TzeZ7DuKlGlyU41eQU6KoEhMJr97CJk3O1EWC6', '2022-11-24 15:29:50'),
(2, 'admins-second@yahoo.com', 'admins-second', '$2y$10$skM4iAjF/VMicH8mfAu23uozOU8ye5xosbuTBXVneLGTEvX0rgEbS', '2022-11-25 10:35:15');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(3) NOT NULL,
  `pro_id` int(3) NOT NULL,
  `pro_name` varchar(200) NOT NULL,
  `pro_image` varchar(200) NOT NULL,
  `pro_price` int(3) NOT NULL,
  `pro_amount` int(3) NOT NULL,
  `pro_file` varchar(200) NOT NULL,
  `user_id` int(3) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(3) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `image`, `created_at`) VALUES
(1, 'Design', 'Assertively embrace best-of-breed markets through stand-alone value. Credibly promote adaptive \"outside the box\" thinkin', 'web-design.jpg', '2022-11-24 11:02:32'),
(3, 'Programming', 'Assertively embrace best-of-breed markets through stand-alone value. Credibly promote adaptive \"outside the box\" thinkin', 'images.jpg', '2022-11-24 11:02:32');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(3) NOT NULL,
  `email` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `fname` varchar(200) NOT NULL,
  `lname` varchar(200) NOT NULL,
  `token` varchar(200) NOT NULL,
  `price` varchar(20) NOT NULL,
  `user_id` int(3) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `email`, `username`, `fname`, `lname`, `token`, `price`, `user_id`, `create_at`) VALUES
(42, 'user.second@gmail.com', 'user.second', 'mohamed', 'hassan', 'tok_1M8MpnA61XKEIsc91ZoZdbuN', '60', 2, '2022-11-26 11:45:45'),
(43, 'moha@123.com', 'moha1234566044@gmail.com', 'mohamed', 'hassan', 'tok_1M8iZkA61XKEIsc9bKGEDOM2', '30', 2, '2022-11-27 10:58:39'),
(44, 'user.second@gmail.com', 'moha1234566044@gmail.com', 'mohamed', 'hassan', 'tok_1M8ibsA61XKEIsc9VYmqH79x', '30', 2, '2022-11-27 11:00:47'),
(45, 'moha@123.com', 'moha@123.com', 'mohamed', 'hassan', 'tok_1M8ifRA61XKEIsc9RaU0gnyH', '30', 2, '2022-11-27 11:04:32'),
(46, 'user7@user7.com', 'moha@123.com', 'mohamed', 'hassan', 'tok_1M8iiNA61XKEIsc9liarD5uG', '70', 2, '2022-11-27 11:07:33'),
(47, 'moha@123.com', 'user@user.com', 'mohamed', 'hassan', 'tok_1M8jKCA61XKEIsc9fCdSdyRK', '60', 2, '2022-11-27 11:46:46'),
(48, 'user4@gmail.com', 'moha@123.com', 'mohamed', 'hassan', 'tok_1M8jLiA61XKEIsc9ZhSCAvji', '60', 2, '2022-11-27 11:48:10'),
(49, 'user7@user7.com', 'moha1234566044@gmail.com', 'mohamed', 'hassan', 'tok_1M8jOgA61XKEIsc97IMw5e07', '60', 2, '2022-11-27 11:51:16'),
(50, 'user.second@gmail.com', 'user@user.com', 'mohamed', 'hassan', 'tok_1M8jWyA61XKEIsc9tp0WmQoI', '60', 2, '2022-11-27 11:59:57'),
(51, 'moha@123.com', 'user@user.com', 'mohamed', 'hassan', 'tok_1M8kLVA61XKEIsc9u1Gjv4Gq', '80', 2, '2022-11-27 12:52:02'),
(52, 'hsn42476@gmail.com', 'hsn42476@gmail.com', 'mohamed', 'hassan', 'tok_1M8kZpA61XKEIsc9diICQrSh', '30', 3, '2022-11-27 13:06:53'),
(53, 'hsn42476@gmail.com', 'hsn42476@gmail.com', 'mohamed', 'hassan', 'tok_1M8kbyA61XKEIsc9erb6w0Of', '10', 3, '2022-11-27 13:09:02'),
(54, 'moha@123.com', 'moha@123.com', 'mohamed', 'hassan', 'tok_1M8mKBA61XKEIsc9nTpgmf2X', '60', 3, '2022-11-27 14:58:53'),
(55, 'user.second@gmail.com', 'moha@123.com', 'mohamed', 'hassan', 'tok_1M8mNcA61XKEIsc9G8ficKia', '60', 3, '2022-11-27 15:02:21'),
(56, 'user7@user7.com', 'moha1234566044@gmail.com', 'mohamed', 'hassan', 'tok_1M8mQWA61XKEIsc96zewSBbB', '30', 3, '2022-11-27 15:05:27'),
(57, 'hsn42476@gmail.com', 'hsn42476@gmail.com', 'mohamed', 'hassan', 'tok_1M8nT1A61XKEIsc9bfczfANf', '50', 3, '2022-11-27 16:12:02'),
(58, 'german.lang77@gmail.com', 'user@user.com', 'mohamed', 'hassan', 'tok_1M8nhwA61XKEIsc9Zcvdckn9', '30', 4, '2022-11-27 16:27:28'),
(59, 'moha1234566044@gmail.com', 'moha1234566044@gmail.com', 'mohamed', 'hassan', 'tok_1M8nqDA61XKEIsc9NuLyBi4M', '10', 5, '2022-11-27 16:35:59'),
(60, 'user7@user7.com', 'moha@123.com', 'mohamed', 'hassan', 'tok_1M8nuIA61XKEIsc9y921qzip', '30', 3, '2022-11-27 16:40:15'),
(61, 'user7@user7.com', 'user@user.com', 'mohamed', 'hassan', 'tok_1M8nyEA61XKEIsc9rcNV3ggU', '20', 3, '2022-11-27 16:44:17'),
(62, 'user7@user7.com', 'moha1234566044@gmail.com', 'mohamed', 'hassan', 'tok_1M8o8gA61XKEIsc9crohvbbN', '20', 3, '2022-11-27 16:55:08'),
(63, 'user1@user.com', 'user@user.com', 'mohamed', 'hassan', 'tok_1M8oEjA61XKEIsc9wKBSOsP8', '10', 3, '2022-11-27 17:01:18'),
(64, 'hsn42476@gmail.com', 'hsn42476', 'mohamed', 'hassan', 'tok_1M8ofGA61XKEIsc9TJ10Jtrm', '30', 3, '2022-11-27 17:28:41');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(3) NOT NULL,
  `name` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `price` int(3) NOT NULL,
  `file` text NOT NULL,
  `description` text NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `category_id` int(3) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `image`, `price`, `file`, `description`, `status`, `category_id`, `created_at`) VALUES
(1, 'Node Basics', 'node.png', 20, 'node.pdf', 'Completely reintermediate cost effective scenarios for global web-readiness. Globally syndicate go forward potentialities for integrated leadership. Distinctively deliver excellent outsourcing before next-generation convergence. Enthusiastically ', 1, 3, '2022-11-21 11:14:13'),
(2, 'Django Basics', 'django.png', 10, 'django.pdf', 'Uniquely impact quality best practices without plug-and-play e-business. Assertively promote interoperable niches via multidisciplinary manufactured products. Assertively plagiarize team building processes with unique experiences. ', 1, 3, '2022-11-21 11:14:13'),
(4, 'web design basics', 'image.png', 20, 'file.pdf', 'Assertively embrace best-of-breed markets through stand-alone value. Credibly promote adaptive \"outside the box\" thinking after value-added expertise. Efficiently reinvent performance based ', 1, 1, '2022-11-24 12:34:00'),
(6, 'Photoshop Book', 'wp5670175.jpg', 40, 'Mohamed_Hassan_Resume.pdf', 'Assertively embrace best-of-breed markets through stand-alone value. Credibly promote adaptive \"outside the box\" thinkin', 1, 1, '2022-11-25 14:23:49');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `username` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mypassword` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `mypassword`, `created_at`) VALUES
(1, 'user.first', 'user.first@gmail.com', '$2y$10$3lqPV300ILIrRX1TzeZ7DuKlGlyU41eQU6KoEhMJr97CJk3O1EWC6', '2022-11-20 19:11:07'),
(2, 'user.second', 'user.second@gmail.com', '$2y$10$Jmq6.BxkpJHrVLNbvmt/Ju98ZD4aMl4D9kqxBZSXD1vHtTqRjOdL2', '2022-11-21 14:24:56'),
(3, 'hsn42476@gmail.com', 'hsn42476@gmail.com', '$2y$10$vN5RnR7tBmMA1xq9ZKcM.un2bvUL5dnqoJvkKEDVTtSsPzREPbxnG', '2022-11-27 13:05:12'),
(4, 'german.lang77@gmail.com', 'german.lang77@gmail.com', '$2y$10$7S/RZEcVXiwN/OQcBdfPMOa6h.FJUrdbtiTYnwz9./EWUnf8DLr6W', '2022-11-27 16:26:08'),
(5, 'moha1234566044@gmail.com', 'moha1234566044@gmail.com', '$2y$10$njCC1k66KMmExe9CC8Yv9uFn7OPKd141lVMgdb2tPK1gRFB1YPOnq', '2022-11-27 16:33:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
