USE [dpsms]
-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 17, 2023 at 04:49 PM
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
-- Database: `bpsms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand_list`
--

CREATE TABLE `brand_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `image_path` text NOT NULL,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brand_list`
--

INSERT INTO `brand_list` (`id`, `name`, `image_path`, `delete_flag`, `status`, `date_created`, `date_updated`) VALUES
(9, 'Rurus Mushrooms', 'uploads/brands/9.png?v=1691904380', 0, 1, '2023-08-13 13:26:20', '2023-08-13 13:27:38'),
(10, 'Maicas Trading', 'uploads/brands/10.png?v=1691904449', 0, 1, '2023-08-13 13:27:29', '2023-08-13 13:27:29'),
(11, 'NDCM Vermicast', 'uploads/brands/11.png?v=1691904484', 0, 1, '2023-08-13 13:28:04', '2023-08-13 13:28:44'),
(12, 'JM mushroom Farm', 'uploads/brands/12.png?v=1691904548', 0, 1, '2023-08-13 13:29:08', '2023-08-13 13:29:08'),
(13, 'Dee 3 Ann Granja', 'uploads/brands/13.png?v=1691904647', 0, 1, '2023-08-13 13:29:43', '2023-08-13 13:30:47'),
(14, 'Rodolfo Integrated Farm', 'uploads/brands/14.png?v=1691904625', 0, 1, '2023-08-13 13:30:25', '2023-08-13 13:30:25'),
(15, 'Siete Swerte Mushroom Farm', 'uploads/brands/15.png?v=1691904679', 0, 1, '2023-08-13 13:31:19', '2023-08-13 13:31:19'),
(16, 'Macrohon Integrated Farm', 'uploads/brands/16.png?v=1691904700', 0, 1, '2023-08-13 13:31:40', '2023-08-13 13:31:40'),
(17, 'Xavier Farm', 'uploads/brands/17.png?v=1691904718', 0, 1, '2023-08-13 13:31:58', '2023-08-13 13:31:58'),
(18, 'Pagbayaw INC', 'uploads/brands/18.png?v=1691904732', 0, 1, '2023-08-13 13:32:12', '2023-08-13 13:32:12');

-- --------------------------------------------------------

--
-- Table structure for table `cart_list`
--

CREATE TABLE `cart_list` (
  `id` int(30) NOT NULL,
  `client_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `quantity` float NOT NULL,
  `date_added` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(30) NOT NULL,
  `category` varchar(250) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `status`, `delete_flag`, `date_created`) VALUES
(11, 'Mushrooms', 1, 0, '2023-08-13 13:32:33'),
(12, 'Soil', 1, 0, '2023-08-13 13:33:08'),
(13, 'Egg', 1, 0, '2023-08-13 13:33:32'),
(14, 'Chicken', 1, 0, '2023-08-13 13:33:37'),
(15, 'Accessory', 1, 0, '2023-08-13 13:34:48'),
(16, 'Flour', 1, 0, '2023-08-15 17:47:41'),
(17, 'Chips', 1, 0, '2023-08-15 17:47:53'),
(18, 'Chicaron', 1, 1, '2023-08-15 17:55:13'),
(19, 'Dried Mushroom', 1, 1, '2023-08-15 17:55:40'),
(20, 'Fruiting Bags', 1, 0, '2023-08-15 18:21:01'),
(21, 'Atsara', 1, 0, '2023-08-15 18:34:43'),
(22, 'Art Canvas', 1, 0, '2023-08-15 18:59:49'),
(23, 'Bio Leather', 1, 0, '2023-08-15 19:00:10');

-- --------------------------------------------------------

--
-- Table structure for table `client_list`
--

CREATE TABLE `client_list` (
  `id` int(30) NOT NULL,
  `firstname` text NOT NULL,
  `middlename` text DEFAULT NULL,
  `lastname` text NOT NULL,
  `gender` text NOT NULL,
  `contact` text NOT NULL,
  `address` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_added` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `client_list`
--

INSERT INTO `client_list` (`id`, `firstname`, `middlename`, `lastname`, `gender`, `contact`, `address`, `email`, `password`, `status`, `delete_flag`, `date_created`, `date_added`) VALUES
(1, 'John', 'D', 'Smith', 'Male', '09123456897', 'This is my sample address only', 'jsmith@sample.com', '1254737c076cf867dc53d60a0364f38e', 1, 0, '2022-01-24 13:33:44', '2022-01-25 13:15:11'),
(2, 'zach', '', 'Male', '', '9973342423', 'Tumaga', 'zakurofr@gmail.com', '3782bd2b84e501dc57b8596bb6329f56', 1, 0, '2023-08-13 13:01:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mechanics_list`
--

CREATE TABLE `mechanics_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `contact` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mechanics_list`
--

INSERT INTO `mechanics_list` (`id`, `name`, `contact`, `email`, `status`, `date_created`) VALUES
(3, 'Zakuro', '9973342423', 'zakurofr@gmail.com', 1, '2023-08-14 06:09:36');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(30) NOT NULL,
  `order_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `quantity` float NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `quantity`, `date_added`) VALUES
(17, 12, 24, 1, '2023-08-15 19:51:23');

-- --------------------------------------------------------

--
-- Table structure for table `order_list`
--

CREATE TABLE `order_list` (
  `id` int(30) NOT NULL,
  `ref_code` varchar(100) NOT NULL,
  `client_id` int(30) NOT NULL,
  `total_amount` float NOT NULL DEFAULT 0,
  `delivery_address` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=pending,1 = packed, 2 = for delivery, 3 = on the way, 4 = delivered, 5=cancelled',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_list`
--

INSERT INTO `order_list` (`id`, `ref_code`, `client_id`, `total_amount`, `delivery_address`, `status`, `date_created`, `date_updated`) VALUES
(9, '202308-00001', 2, 600, 'Tumaga', 2, '2023-08-13 13:58:02', '2023-08-23 18:19:02'),
(10, '202308-00002', 2, 100, 'Tumaga', 4, '2023-08-14 05:50:44', '2023-08-14 06:29:56'),
(11, '202308-00003', 2, 90, '', 0, '2023-08-14 07:20:20', '2023-08-14 07:20:20'),
(12, '202308-00004', 2, 300, 'Tumaga, 0997334243', 1, '2023-08-15 19:51:23', '2023-08-23 18:19:24');

-- --------------------------------------------------------

--
-- Table structure for table `product_list`
--

CREATE TABLE `product_list` (
  `id` int(30) NOT NULL,
  `brand_id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `name` text NOT NULL,
  `models` text NOT NULL,
  `description` text NOT NULL,
  `price` float NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `image_path` text NOT NULL,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_list`
--

INSERT INTO `product_list` (`id`, `brand_id`, `category_id`, `name`, `models`, `description`, `price`, `status`, `image_path`, `delete_flag`, `date_created`, `date_updated`) VALUES
(13, 10, 11, 'Maicas Fresh Mushroom', '', 'Ang bango', 99, 1, 'uploads/products/13.png?v=1692094450', 0, '2023-08-15 18:14:10', '2023-08-15 18:14:10'),
(17, 11, 12, 'NDCM Vermicast Soil', '', 'ang angas', 25, 1, 'uploads/products/17.png?v=1692095297', 0, '2023-08-15 18:28:17', '2023-08-15 18:28:17'),
(18, 12, 21, 'JMs Oyster Mushroom Atsara', '', '&lt;p&gt;Ang sarap&lt;/p&gt;', 100, 1, 'uploads/products/18.png?v=1692095757', 0, '2023-08-15 18:35:57', '2023-08-15 18:35:57'),
(19, 12, 17, 'JMs Oyster Mushroom Chicaron', '', '&lt;p&gt;Ang sarap talaga&lt;/p&gt;', 100, 1, 'uploads/products/19.png?v=1692095811', 0, '2023-08-15 18:36:51', '2023-08-15 18:36:51'),
(20, 12, 20, 'JMs Fruiting Bags', '', '&lt;p&gt;Ang ganda ng kita&lt;/p&gt;', 50, 1, 'uploads/products/20.png?v=1692095953', 0, '2023-08-15 18:39:13', '2023-08-15 18:39:13'),
(22, 13, 14, 'Dee ZamPen Native Chicken', '', '&lt;p&gt;Ang angas&lt;/p&gt;', 300, 1, 'uploads/products/22.png?v=1692096198', 0, '2023-08-15 18:43:18', '2023-08-15 18:43:18'),
(23, 13, 13, 'Dee ZamPen Native Egg', '', '&lt;p&gt;Ang Sarap&lt;/p&gt;', 10, 1, 'uploads/products/23.png?v=1692096259', 0, '2023-08-15 18:44:19', '2023-08-15 18:44:19'),
(24, 14, 14, 'Rodolfo ZamPen Native Chicken', '', '&lt;p&gt;Ang angas&lt;/p&gt;', 300, 1, 'uploads/products/24.png?v=1692096455', 0, '2023-08-15 18:47:35', '2023-08-15 18:47:35'),
(25, 15, 11, 'Siete Swerte Fresh Mushroom', '', '&lt;p&gt;Ang sariwa&lt;/p&gt;', 100, 1, 'uploads/products/25.png?v=1692096607', 0, '2023-08-15 18:50:07', '2023-08-15 18:50:07'),
(26, 16, 12, 'Macrohon Vermicast Soil', '', '&lt;p&gt;Ang galing&lt;/p&gt;', 30, 1, 'uploads/products/26.png?v=1692096782', 0, '2023-08-15 18:53:02', '2023-08-15 18:53:02'),
(27, 17, 14, 'Xavier Zampen Native Chicken', '', '&lt;p&gt;Ang husay&lt;/p&gt;', 250, 1, 'uploads/products/27.png?v=1692096933', 0, '2023-08-15 18:55:33', '2023-08-15 18:55:33'),
(29, 9, 11, 'Rurus Mushroom Chips', '', '&lt;p&gt;Ang lutong&lt;/p&gt;', 130, 1, 'uploads/products/29.png?v=1692097926', 0, '2023-08-15 19:12:05', '2023-08-15 19:12:06'),
(30, 9, 16, 'Ruru Powdered Mushroom', '', '&lt;p&gt;Ang pulbo&lt;/p&gt;', 130, 1, 'uploads/products/30.png?v=1692098087', 0, '2023-08-15 19:14:47', '2023-08-15 19:14:47'),
(31, 9, 11, 'Ruru Dried Mushroom', '', '&lt;p&gt;Ang tuyo&lt;/p&gt;', 130, 1, 'uploads/products/31.png?v=1692098147', 0, '2023-08-15 19:15:47', '2023-08-15 19:15:47'),
(32, 9, 11, 'Rurus Fresh Mushroom', '', '&lt;p&gt;Ang sariwa&lt;/p&gt;', 130, 1, 'uploads/products/32.png?v=1692098213', 0, '2023-08-15 19:16:53', '2023-08-15 19:16:53'),
(33, 10, 20, 'Maicas Fruiting Bags', '', 'Ang galing', 50, 1, 'uploads/products/33.png?v=1692098368', 0, '2023-08-15 19:19:28', '2023-08-15 19:19:28'),
(34, 18, 22, 'Unvas Art Canvas', '', '&lt;p&gt;Ang angas&lt;/p&gt;', 100, 1, 'uploads/products/34.png?v=1692098520', 0, '2023-08-15 19:22:00', '2023-08-15 19:22:00'),
(35, 18, 15, 'Unvas Accessories', '', '&lt;p&gt;Ang igop&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 50, 1, 'uploads/products/35.webp?v=1692098614', 0, '2023-08-15 19:23:34', '2023-08-15 19:23:34'),
(36, 18, 23, 'Canusi Bio Leather', '', '&lt;p&gt;Ang tibay&lt;/p&gt;', 500, 1, 'uploads/products/36.webp?v=1692098721', 0, '2023-08-15 19:25:21', '2023-08-15 19:25:21');

-- --------------------------------------------------------

--
-- Table structure for table `request_meta`
--

CREATE TABLE `request_meta` (
  `request_id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `request_meta`
--

INSERT INTO `request_meta` (`request_id`, `meta_field`, `meta_value`) VALUES
(6, 'vehicle_type', 'mushroom'),
(6, 'vehicle_name', 'mushroom.ph'),
(6, 'vehicle_registration_number', '123'),
(6, 'vehicle_model', '123'),
(6, 'service_id', '3'),
(6, 'pickup_address', 'asdwqe');

-- --------------------------------------------------------

--
-- Table structure for table `service_list`
--

CREATE TABLE `service_list` (
  `id` int(30) NOT NULL,
  `service` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `service_list`
--

INSERT INTO `service_list` (`id`, `service`, `description`, `status`, `delete_flag`, `date_created`) VALUES
(1, 'Change Oil', '&lt;p&gt;&lt;span style=&quot;text-align: justify;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel sapien lectus. Ut posuere, arcu eget bibendum venenatis, quam diam interdum diam, in viverra leo quam eu mi. Sed bibendum mauris nulla, vel vehicula libero elementum vel. Nam blandit justo justo, dapibus sodales risus consectetur nec. Suspendisse ornare in purus et mollis. Praesent placerat quis lectus at hendrerit. Morbi maximus dolor dolor, a maximus mi congue quis.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, 1, '2021-09-30 14:11:21'),
(2, 'Overall Checkup', '&lt;p&gt;&lt;span style=&quot;text-align: justify;&quot;&gt;Curabitur nec viverra tellus. Donec quis molestie arcu. Sed et blandit dui, vel vehicula tortor. Vivamus fringilla sit amet nibh fringilla ornare. Etiam iaculis ornare purus id feugiat. Etiam mattis erat ut congue tempor. Nam placerat faucibus libero ultrices posuere. Donec ac tempus nulla.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, 1, '2021-09-30 14:11:38'),
(3, 'Engine Tune up', '&lt;p&gt;&lt;span style=&quot;text-align: justify;&quot;&gt;Sed ultrices fermentum augue. Duis ultricies arcu vitae lorem accumsan porta. Donec fermentum risus ut tincidunt cursus. Sed varius id dolor et euismod. Vestibulum elit massa, varius nec arcu vel, viverra varius dolor. Etiam fermentum vel lorem vel tincidunt. Ut nec libero pulvinar, malesuada lacus et, tempor diam. Aliquam vitae nisl augue.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, 1, '2021-09-30 14:12:03'),
(4, 'Tire Replacement', '&lt;p&gt;&lt;span style=&quot;text-align: justify;&quot;&gt;Nullam pretium eu justo ac tincidunt. Vestibulum quis est non felis porttitor pretium. Vivamus nec augue ultrices, condimentum risus vitae, pellentesque turpis. Nullam ornare est sapien, sed semper neque imperdiet suscipit. Sed fermentum eros et felis mollis finibus. In condimentum eleifend magna, non consequat nibh viverra nec. Nulla vel sapien libero. Suspendisse varius nisl nec ornare imperdiet.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, 1, '2021-09-30 14:12:24');

-- --------------------------------------------------------

--
-- Table structure for table `service_requests`
--

CREATE TABLE `service_requests` (
  `id` int(30) NOT NULL,
  `client_id` int(30) NOT NULL,
  `service_type` text NOT NULL,
  `mechanic_id` int(30) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `service_requests`
--

INSERT INTO `service_requests` (`id`, `client_id`, `service_type`, `mechanic_id`, `status`, `date_created`) VALUES
(6, 1, 'Pick Up', 3, 3, '2023-08-14 06:10:08');

-- --------------------------------------------------------

--
-- Table structure for table `stock_list`
--

CREATE TABLE `stock_list` (
  `id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `quantity` float NOT NULL DEFAULT 0,
  `type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1= IN, 2= Out',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock_list`
--

INSERT INTO `stock_list` (`id`, `product_id`, `quantity`, `type`, `date_created`) VALUES
(12, 36, 10, 1, '2023-08-15 19:28:53'),
(13, 22, 7, 1, '2023-08-15 19:29:01'),
(14, 20, 20, 1, '2023-08-15 19:29:19'),
(15, 18, 10, 1, '2023-08-15 19:29:27'),
(16, 19, 20, 1, '2023-08-15 19:29:34'),
(17, 26, 20, 1, '2023-08-15 19:29:40'),
(18, 13, 20, 1, '2023-08-15 19:29:57'),
(19, 33, 20, 1, '2023-08-15 19:30:03'),
(20, 17, 20, 1, '2023-08-15 19:30:10'),
(21, 24, 20, 1, '2023-08-15 19:30:16'),
(22, 31, 10, 1, '2023-08-15 19:30:25'),
(23, 30, 13, 1, '2023-08-15 19:30:34'),
(24, 32, 15, 1, '2023-08-15 19:30:42'),
(25, 29, 15, 1, '2023-08-15 19:30:49'),
(26, 25, 15, 1, '2023-08-15 19:30:56'),
(27, 35, 15, 1, '2023-08-15 19:31:05'),
(28, 34, 15, 1, '2023-08-15 19:31:14'),
(29, 27, 20, 1, '2023-08-15 19:31:20');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'WMSU Technology Business Incubator Shop System'),
(6, 'short_name', 'WMSU_TBI'),
(11, 'logo', 'uploads/1691902740_TBI-LOGO.webp'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/1691903580_wmsut.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/1691902620_IMG20230604004316.jpg', NULL, 1, '2021-01-20 14:02:37', '2023-08-13 12:57:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand_list`
--
ALTER TABLE `brand_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_list`
--
ALTER TABLE `cart_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_list`
--
ALTER TABLE `client_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`) USING HASH;

--
-- Indexes for table `mechanics_list`
--
ALTER TABLE `mechanics_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `product_list`
--
ALTER TABLE `product_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brand_id` (`brand_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `request_meta`
--
ALTER TABLE `request_meta`
  ADD KEY `request_id` (`request_id`);

--
-- Indexes for table `service_list`
--
ALTER TABLE `service_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_requests`
--
ALTER TABLE `service_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `mechanic_id` (`mechanic_id`);

--
-- Indexes for table `stock_list`
--
ALTER TABLE `stock_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
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
-- AUTO_INCREMENT for table `brand_list`
--
ALTER TABLE `brand_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `cart_list`
--
ALTER TABLE `cart_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `client_list`
--
ALTER TABLE `client_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mechanics_list`
--
ALTER TABLE `mechanics_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `order_list`
--
ALTER TABLE `order_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product_list`
--
ALTER TABLE `product_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `service_list`
--
ALTER TABLE `service_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `service_requests`
--
ALTER TABLE `service_requests`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `stock_list`
--
ALTER TABLE `stock_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart_list`
--
ALTER TABLE `cart_list`
  ADD CONSTRAINT `cart_list_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_list_ibfk_2` FOREIGN KEY (`client_id`) REFERENCES `client_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_list`
--
ALTER TABLE `order_list`
  ADD CONSTRAINT `order_list_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_list`
--
ALTER TABLE `product_list`
  ADD CONSTRAINT `product_list_ibfk_1` FOREIGN KEY (`brand_id`) REFERENCES `brand_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_list_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `request_meta`
--
ALTER TABLE `request_meta`
  ADD CONSTRAINT `request_meta_ibfk_1` FOREIGN KEY (`request_id`) REFERENCES `service_requests` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `service_requests`
--
ALTER TABLE `service_requests`
  ADD CONSTRAINT `service_requests_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `service_requests_ibfk_2` FOREIGN KEY (`mechanic_id`) REFERENCES `mechanics_list` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `stock_list`
--
ALTER TABLE `stock_list`
  ADD CONSTRAINT `stock_list_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product_list` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
