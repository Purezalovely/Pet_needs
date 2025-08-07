-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2025 at 03:14 PM
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
-- Database: `pet_shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(30) NOT NULL,
  `client_id` int(30) NOT NULL,
  `inventory_id` int(30) NOT NULL,
  `price` double NOT NULL,
  `quantity` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(30) NOT NULL,
  `category` varchar(250) NOT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `description`, `status`, `date_created`) VALUES
(1, 'Food', '&lt;br&gt;', 1, '2021-06-21 10:17:41'),
(4, 'Accessories', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 1, '2021-06-21 16:34:04'),
(5, 'Feeding Supplies', '', 1, '2025-01-30 21:08:06'),
(6, 'Hygiene Supplies', '', 1, '2025-01-30 21:08:28');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(30) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` text NOT NULL,
  `default_delivery_address` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `firstname`, `lastname`, `gender`, `contact`, `email`, `password`, `default_delivery_address`, `date_created`) VALUES
(1, 'John', 'Smith', 'Male', '09123456789', 'jsmith@sample.com', '1254737c076cf867dc53d60a0364f38e', 'Sample Address', '2021-06-21 16:00:23'),
(2, 'Lovely Mae', 'Pureza', 'Female', '65441671', 'purezalovely3@gmail.com', 'db952976dbf44ccc0df9116ca7158077', 'brgy II M-kahoy Bat.', '2025-01-30 22:07:30'),
(3, 'Nils Mikkel', 'Martija', 'Male', '876167965252', 'nilslorzano@gmail.com', '7bab1179186c8c8266e2123a50741624', 'Lodlod, Lipa City', '2025-01-30 22:10:42');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `quantity` double NOT NULL,
  `unit` varchar(100) NOT NULL,
  `price` float NOT NULL,
  `size` varchar(250) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id`, `product_id`, `quantity`, `unit`, `price`, `size`, `date_created`, `date_updated`) VALUES
(1, 1, 50, 'pcs', 250, 'M', '2021-06-21 13:01:30', '2021-06-21 13:05:23'),
(2, 1, 20, 'Sample', 300, 'L', '2021-06-21 13:07:00', NULL),
(3, 4, 150, 'pcs', 500, 'M', '2021-06-21 16:50:37', NULL),
(4, 3, 50, 'pack', 150, 'M', '2021-06-21 16:51:12', NULL),
(5, 5, 30, 'pcs', 50, 'M', '2021-06-21 16:51:35', NULL),
(6, 4, 10, 'pcs', 550, 'L', '2021-06-21 16:51:54', NULL),
(7, 6, 100, 'pcs', 150, 'S', '2021-06-22 15:50:47', NULL),
(8, 6, 150, 'pcs', 180, 'M', '2021-06-22 15:51:13', NULL),
(9, 7, 78514, '1', 170, 'L', '2025-01-30 21:18:34', NULL),
(10, 8, 95134, '2', 80, 'L', '2025-01-30 21:20:05', NULL),
(11, 9, 83156, '3', 85, 'L', '2025-01-30 21:23:24', NULL),
(12, 10, 43185, '4', 160, 'L', '2025-01-30 21:24:35', '2025-01-30 21:27:08'),
(13, 11, 5671, '5', 135, 'L', '2025-01-30 21:28:33', NULL),
(14, 12, 67319, '6', 180, 'NONE', '2025-01-30 21:30:05', NULL),
(15, 13, 61234, '7', 145, 'NONE', '2025-01-30 21:32:57', '2025-01-30 21:33:23'),
(16, 14, 34952, '8', 180, 'L', '2025-01-30 21:35:13', NULL),
(17, 15, 8430, '9', 130, 'L', '2025-01-30 21:36:43', NULL),
(18, 16, 5721, '1', 30, 'XS', '2025-01-30 21:40:25', NULL),
(19, 16, 3492, '1', 35, 'S', '2025-01-30 21:40:59', NULL),
(20, 16, 8462, '1', 40, 'M', '2025-01-30 21:41:19', NULL),
(21, 16, 9711, '1', 50, 'L', '2025-01-30 21:41:39', NULL),
(22, 17, 97154, '2', 100, 'XS', '2025-01-30 21:43:30', NULL),
(23, 17, 9752, '2', 120, 'S', '2025-01-30 21:43:58', NULL),
(24, 17, 32174, '2', 150, 'M', '2025-01-30 21:44:22', NULL),
(25, 17, 32114, '2', 180, 'L', '2025-01-30 21:44:43', NULL),
(26, 17, 972193, '2', 200, 'XL', '2025-01-30 21:45:08', NULL),
(27, 18, 17444, '3', 120, 'XS', '2025-01-30 21:46:38', NULL),
(28, 18, 852194, '3', 150, 'S', '2025-01-30 21:46:58', '2025-01-30 21:48:10'),
(29, 18, 841515, '3', 180, 'M', '2025-01-30 21:47:54', NULL),
(30, 18, 97544, '3', 200, 'L', '2025-01-30 21:48:45', NULL),
(31, 18, 97312, '3', 220, 'XL', '2025-01-30 21:49:07', NULL),
(32, 19, 89742, '4', 100, 'S', '2025-01-30 21:51:57', '2025-01-30 21:54:40'),
(33, 19, 84852, '4', 120, 'M', '2025-01-30 21:52:19', '2025-01-30 21:54:55'),
(34, 19, 231487, '4', 140, 'L', '2025-01-30 21:52:43', NULL),
(35, 19, 463245, '4', 160, 'XL', '2025-01-30 21:55:25', NULL),
(36, 20, 248463, '5', 80, 'S', '2025-01-30 21:57:22', NULL),
(37, 20, 5726587, '5', 100, 'M', '2025-01-30 21:57:57', NULL),
(38, 20, 684698, '5', 120, 'L', '2025-01-30 21:58:28', NULL),
(39, 20, 65487, '5', 140, 'XL', '2025-01-30 21:58:57', NULL),
(40, 21, 58419, '6', 150, 'L', '2025-01-30 22:01:20', NULL),
(41, 22, 8744161, '7', 320, 'XL', '2025-01-30 22:03:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(30) NOT NULL,
  `client_id` int(30) NOT NULL,
  `delivery_address` text NOT NULL,
  `payment_method` varchar(100) NOT NULL,
  `amount` double NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT 0,
  `paid` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `client_id`, `delivery_address`, `payment_method`, `amount`, `status`, `paid`, `date_created`, `date_updated`) VALUES
(1, 1, 'Sample Address', 'Online Payment', 1100, 2, 1, '2021-06-22 13:48:54', '2021-06-22 14:49:15'),
(2, 1, 'Sample Address', 'cod', 750, 3, 1, '2021-06-22 15:26:07', '2021-06-22 15:32:55'),
(4, 2, 'brgy II M-kahoy Bat.', 'cod', 1330, 0, 0, '2025-01-30 22:09:45', NULL),
(5, 3, 'Lodlod, Lipa City', 'cod', 1150, 0, 0, '2025-01-30 22:11:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_list`
--

CREATE TABLE `order_list` (
  `id` int(30) NOT NULL,
  `order_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `size` varchar(20) NOT NULL,
  `unit` varchar(50) NOT NULL,
  `quantity` int(30) NOT NULL,
  `price` double NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_list`
--

INSERT INTO `order_list` (`id`, `order_id`, `product_id`, `size`, `unit`, `quantity`, `price`, `total`) VALUES
(1, 1, 4, 'L', 'pcs', 2, 550, 1100),
(2, 2, 3, 'M', 'pack', 5, 150, 750),
(5, 4, 8, 'L', '2', 10, 80, 800),
(6, 4, 18, 'M', '3', 1, 180, 180),
(7, 4, 18, 'S', '3', 1, 150, 150),
(8, 4, 20, 'M', '5', 2, 100, 200),
(9, 5, 7, 'L', '1', 5, 170, 850),
(10, 5, 18, 'S', '3', 2, 150, 300);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `sub_category_id` int(30) NOT NULL,
  `product_name` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `sub_category_id`, `product_name`, `description`, `status`, `date_created`) VALUES
(7, 1, 1, 'Aozi Dog Dry Food Adult', '&lt;p&gt;per kilo&lt;/p&gt;', 1, '2025-01-30 21:17:46'),
(8, 1, 1, 'Whoopy Dog Dry Food Adult', '&lt;p&gt;per kilo&lt;/p&gt;', 1, '2025-01-30 21:19:40'),
(9, 1, 1, 'Top Breed Dog Dry Food Adult', '&lt;p&gt;per kilo&lt;/p&gt;', 1, '2025-01-30 21:23:04'),
(10, 1, 1, 'Special Dog Dry Food Puppy', '&lt;p&gt;per kilo&lt;/p&gt;', 1, '2025-01-30 21:24:07'),
(11, 1, 1, 'Special Dog Dry Food Adult', '&lt;p&gt;per kilo&lt;/p&gt;', 1, '2025-01-30 21:27:54'),
(12, 1, 3, 'Aozi Cat Dry Food For All Stage', '&lt;p&gt;per kilo&lt;/p&gt;', 1, '2025-01-30 21:29:26'),
(13, 1, 3, 'Special Cat Dry Food', '&lt;p&gt;per kilo&lt;/p&gt;', 1, '2025-01-30 21:32:00'),
(14, 1, 3, 'Special Cat Urinary Dry Food', '&lt;p&gt;per kilo&lt;/p&gt;', 1, '2025-01-30 21:34:11'),
(15, 1, 3, 'Cuties Catz Cat Dry Food', '&lt;p&gt;per kilo&lt;/p&gt;', 1, '2025-01-30 21:36:19'),
(16, 4, 4, 'Ordinary Dog/Cat Collar', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 1, '2025-01-30 21:39:46'),
(17, 4, 4, 'Dog/Cat Leash with Collar', '', 1, '2025-01-30 21:43:08'),
(18, 4, 4, 'Dog/CatBody leash', '', 1, '2025-01-30 21:46:12'),
(19, 5, 6, 'Stainless Bowl Dish', '', 1, '2025-01-30 21:51:06'),
(20, 5, 6, 'Plastic Bowl Dish', '', 1, '2025-01-30 21:56:30'),
(21, 5, 7, 'Boleya Water Bottle Holder', '', 1, '2025-01-30 22:00:38'),
(22, 6, 8, 'Premium Bentonite Sand Cat Litter 10Liters', '&lt;p&gt;per ltrs&lt;/p&gt;', 1, '2025-01-30 22:02:34');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(30) NOT NULL,
  `order_id` int(30) NOT NULL,
  `total_amount` double NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `order_id`, `total_amount`, `date_created`) VALUES
(1, 1, 1100, '2021-06-22 13:48:54'),
(2, 2, 750, '2021-06-22 15:26:07'),
(4, 4, 1330, '2025-01-30 22:09:45'),
(5, 5, 1150, '2025-01-30 22:11:38');

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` int(30) NOT NULL,
  `size` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `size`) VALUES
(1, 'xs'),
(2, 's'),
(3, 'm'),
(4, 'l'),
(5, 'xl'),
(6, 'None');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(30) NOT NULL,
  `parent_id` int(30) NOT NULL,
  `sub_category` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `parent_id`, `sub_category`, `description`, `status`, `date_created`) VALUES
(1, 1, 'Dog Food', '&lt;p&gt;Sample only&lt;/p&gt;', 1, '2021-06-21 10:58:32'),
(3, 1, 'Cat Food', '&lt;p&gt;Sample&lt;/p&gt;', 1, '2021-06-21 16:34:59'),
(4, 4, 'Essentials', '&lt;p&gt;Sample&amp;nbsp;&lt;/p&gt;', 1, '2021-06-21 16:35:26'),
(6, 5, 'bowl', '', 1, '2025-01-30 21:50:34'),
(7, 5, 'water holder', '', 1, '2025-01-30 22:00:14'),
(8, 6, 'Cat Litter', '', 1, '2025-01-30 22:01:59');

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
(1, 'name', 'Pet Shop Food and Accessories Shop'),
(6, 'short_name', 'Pet Needs'),
(11, 'logo', 'uploads/1738242240_1734327600_1734327240_1732345800_Screenshot 2024-11-23 151032.png'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/1738242240_1734327600_1732345800_pet-care-concept-various-pet-accessories-on-bluebackground-flat-lay-photo.jpg');

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
(1, 'Adminstrator', 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/1624240500_avatar.png', NULL, 1, '2021-01-20 14:02:37', '2021-06-21 09:55:07'),
(4, 'John', 'Smith', 'jsmith', '1254737c076cf867dc53d60a0364f38e', NULL, NULL, 0, '2021-06-19 08:36:09', '2021-06-19 10:53:12'),
(5, 'Claire', 'Blake', 'cblake', '4744ddea876b11dcb1d169fadf494418', NULL, NULL, 0, '2021-06-19 10:01:51', '2021-06-19 12:03:23');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `order_list`
--
ALTER TABLE `order_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
