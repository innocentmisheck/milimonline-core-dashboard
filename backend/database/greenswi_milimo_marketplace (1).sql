-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2023 at 01:40 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `greenswi_milimo_marketplace`
--

-- --------------------------------------------------------

--
-- Table structure for table `adverts`
--

CREATE TABLE `adverts` (
  `id` int(11) NOT NULL,
  `ad_title` text NOT NULL,
  `ad_owner` varchar(255) NOT NULL,
  `ad_img_url` varchar(255) NOT NULL,
  `redirect_url` varchar(255) NOT NULL,
  `created_date` datetime NOT NULL,
  `ad_type` int(11) NOT NULL,
  `ad_status` tinyint(1) NOT NULL DEFAULT 1,
  `modified_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `expiry_date` datetime NOT NULL,
  `click_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adverts`
--

INSERT INTO `adverts` (`id`, `ad_title`, `ad_owner`, `ad_img_url`, `redirect_url`, `created_date`, `ad_type`, `ad_status`, `modified_date`, `expiry_date`, `click_count`) VALUES
(1, 'mY FIRST aDVERT', 'MILIMONLINE', 'banner5.png', 'https://milimonline.com', '2023-03-08 16:06:44', 1, 1, '2023-03-08 15:07:44', '2023-03-08 16:06:44', 0),
(2, 'mY FIRST aDVERT', 'MILIMONLINE', 'banner6.png', 'https://milimonline.com', '2023-03-08 16:06:44', 1, 1, '2023-03-08 15:07:44', '2023-03-08 16:06:44', 0),
(3, 'mY FIRST aDVERT', 'MILIMONLINE', 'b4.png', 'https://milimonline.com', '2023-03-08 16:06:44', 1, 1, '2023-03-08 15:07:44', '2023-03-08 16:06:44', 0),
(4, 'mY FIRST aDVERT', 'MILIMONLINE', 'b1.png', 'https://milimimonline.com', '2023-03-08 16:06:44', 1, 1, '2023-03-08 15:07:44', '2023-03-08 16:06:44', 0),
(6, 'LILONGWE PLASTIC LIMITED', 'Lilongwe Plastics Limited', 'banner3.png', 'https://lilongweplastics.com', '2023-03-08 16:06:44', 1, 1, '2023-03-08 15:07:44', '2023-03-08 16:06:44', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ad_clicks`
--

CREATE TABLE `ad_clicks` (
  `id` int(11) NOT NULL,
  `ad_id` int(255) NOT NULL,
  `click_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `click_origin` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ad_clicks`
--

INSERT INTO `ad_clicks` (`id`, `ad_id`, `click_time`, `click_origin`) VALUES
(1, 1, '2023-03-08 16:53:44', NULL),
(18, 1, '2023-03-08 17:07:13', NULL),
(19, 2, '2023-03-08 17:07:13', NULL),
(20, 1, '2023-03-08 17:15:49', NULL),
(21, 1, '2023-03-08 17:17:22', NULL),
(22, 1, '2023-03-08 17:17:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `auction_bids`
--

CREATE TABLE `auction_bids` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `bid_time` datetime NOT NULL,
  `bid_amount` int(16) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auction_bids`
--

INSERT INTO `auction_bids` (`id`, `product_id`, `bid_time`, `bid_amount`, `customer_id`) VALUES
(1, 5, '2023-03-11 14:09:46', 1000, -1),
(2, 5, '2023-03-11 14:09:46', 1000, -1),
(3, 1, '2023-03-11 14:09:46', 1000, -1),
(4, 1, '2023-03-11 14:09:46', 1000, -1),
(5, 1, '2023-03-11 14:09:46', 1000, -1),
(6, 1, '2023-03-11 14:09:46', 1000, -1),
(7, 1, '2023-03-11 14:09:46', 1000, -1),
(8, 1, '2023-03-11 14:09:46', 1000, -1),
(9, 1, '2023-03-11 14:09:46', 1000, -1),
(10, 5, '2023-03-11 14:09:46', 1000, -1),
(11, 5, '2023-03-11 14:09:46', 1000, -1),
(12, 9, '2023-03-11 14:09:46', 5000, -1),
(13, 5, '2023-03-11 14:09:46', 50000, -1),
(14, 12, '2023-03-11 14:09:46', 7900, -1);

-- --------------------------------------------------------

--
-- Table structure for table `auction_products`
--

CREATE TABLE `auction_products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_img_url` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `product_origin` int(11) NOT NULL,
  `description` text NOT NULL,
  `start_datetime` datetime NOT NULL,
  `end_datetime` datetime NOT NULL,
  `date_uploded` timestamp NOT NULL DEFAULT current_timestamp(),
  `start_price` decimal(16,0) NOT NULL,
  `offer_price` decimal(16,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auction_products`
--

INSERT INTO `auction_products` (`product_id`, `product_name`, `product_img_url`, `quantity`, `product_origin`, `description`, `start_datetime`, `end_datetime`, `date_uploded`, `start_price`, `offer_price`) VALUES
(1, 'John Deere Tructor', 'tractor.png', 1, 1, 'Fairly Used tractor in malawi.', '2023-03-14 05:00:00', '2023-03-31 05:58:58', '2023-03-11 12:01:38', 2000, 9000),
(5, 'Maize Grain (100 Tons)', 'grain.jpg', 1, 1, 'Fairly Used tractor in malawi.', '2023-03-23 05:58:58', '2023-03-31 05:58:58', '2023-03-11 12:01:38', 2000, 8500),
(9, 'Red Speckled Beans (5 Tons)', 'redbeans.jpg', 1, 4, 'Fairly Used tractor in malawi.', '2023-03-14 05:00:00', '2023-03-31 05:58:58', '2023-03-11 12:01:38', 2000, 8500),
(10, 'African Bossmaran Bull', 'bosmaran.jpg', 1, 4, 'This is a South African bosmaran for sale by a Zambian farmer.', '2023-03-14 05:00:00', '2023-03-31 05:58:58', '2023-03-11 12:01:38', 1000, 3500),
(11, 'Nguni Bull', 'nguni.jpg', 1, 1, 'This Nguni Bull is being sold by Nthimba Harvests of Malawi.', '2023-03-14 05:00:00', '2023-03-31 05:58:58', '2023-03-11 12:01:38', 2000, 9000),
(12, 'Female Ostrich ', 'ostrich1.jpg', 1, 1, 'Buy this female ostrich available at Nguwe Farm in Zambia', '2023-03-14 05:00:00', '2023-03-31 05:58:58', '2023-03-11 12:01:38', 300, 1500);

-- --------------------------------------------------------

--
-- Table structure for table `big_data`
--

CREATE TABLE `big_data` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `ip` varchar(255) NOT NULL,
  `browser` varchar(255) NOT NULL,
  `region` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `os` varchar(255) NOT NULL,
  `device` varchar(255) NOT NULL,
  `year` year(4) NOT NULL,
  `month` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(16) NOT NULL,
  `payment_method_code` int(5) NOT NULL DEFAULT 1,
  `customer_name` text NOT NULL,
  `customer_email` varchar(100) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_login` varchar(100) NOT NULL,
  `customer_password` varchar(500) NOT NULL,
  `other_customer_details` text NOT NULL,
  `verification_code` varchar(6) NOT NULL,
  `state` enum('PENDING','VERIFIED','BLOCKED','') NOT NULL DEFAULT 'PENDING',
  `type` enum('ADMIN','CLIENT','RESELLER') NOT NULL DEFAULT 'CLIENT',
  `customer_gmail_token_id` text NOT NULL,
  `customer_gmail_photo` text NOT NULL,
  `customer_last_login_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `payment_method_code`, `customer_name`, `customer_email`, `customer_address`, `customer_login`, `customer_password`, `other_customer_details`, `verification_code`, `state`, `type`, `customer_gmail_token_id`, `customer_gmail_photo`, `customer_last_login_date`) VALUES
(-1, 1, 'Annonymous', 'anonymous@milimonline.com', 'na', '', '', 'this is an annonymos account', '', 'PENDING', 'CLIENT', '', '', '2022-10-17 08:19:08'),
(23, 1, 'greenswitch', 'greenswitch9@gmail.com', '', '', '', '', '', 'VERIFIED', '', 'ya29.a0Aa4xrXN4McBhWvb3p7Ja7exPXVqlGLuA1Pq1arMFZGNp_HKkcXsCzJjMwbjIK0XtusRpc3x4cLLwJCu7hFrJeNyhIhzIGSM432UM0eQtXafHOFDf8FQP3yINVIrpb6QjW-lPQLmXCDIuUvb_s1Rewnd-EZxaaCgYKATASARMSFQEjDvL9NaQRA7B9EmNdsLfhiHedrg0163', 'https://lh3.googleusercontent.com/a/ALm5wu337rIbmNycf6-N-VLOu-ev6UbDB3HULYhq6PFU=s96-c', '2022-10-21 03:10:32'),
(24, 1, 'Wongani Kaluwa', 'kaluawongan2@gmail.com', 'P.O. Box 33', 'stillWongani', 'b1b3773a05c0ed0176787a4f1574ff0075f7521e', '', '410989', 'VERIFIED', 'RESELLER', '', '', '2022-10-21 14:14:44'),
(34, 1, 'Genius', 'kaluawongan@gmail.com', 'asd', 'geniuses he', 'b1b3773a05c0ed0176787a4f1574ff0075f7521e', '', '944603', 'PENDING', 'CLIENT', 'ya29.a0Aa4xrXNIyxRdsVD6FrFtHKzwdkYdX02i6YriKmiel_0yv1kssBLROU7RP_xpSdmQBQpKxb5UyFIcbK50xNgdiZg-QGEFGkQ8MqU9PBf0CDTXlnl6kjWymNjQ--Z1cOc7uUJeCSM0KVJ9Q9PMWmjddFQfqOHeaCgYKATASARESFQEjDvL9WIuNov2K7PHNFUUfwqb6Lw0163', 'https://lh3.googleusercontent.com/a/ALm5wu3UCYliSH6dI-VBs6w5MX9ZpleOo26LZVi5z-iAoA=s96-c', '2022-10-22 07:10:30'),
(35, 1, 'system admin', 'system@milimonline.com', 'Milimonline', 'admin', 'b1b3773a05c0ed0176787a4f1574ff0075f7521e', '', '181998', 'VERIFIED', 'ADMIN', '', '', '2022-10-31 05:44:53'),
(36, 1, 'Wrapper', 'business@wrapper.com', 'Mangochi 5', 'wrapper', 'b1b3773a05c0ed0176787a4f1574ff0075f7521e', '', '329333', 'VERIFIED', 'RESELLER', '', '', '2022-10-31 06:00:33'),
(37, 1, 'Rowland Mwale', 'rowland.mwale@gmail.com', 'lilongwe', 'rowland.mwale@gmail.com', '3acd0be86de7dcccdbf91b20f94a68cea535922d', '', '171834', 'PENDING', 'CLIENT', '', '', '2023-01-09 23:15:29'),
(38, 1, 'Tolerance Longwe', 'longwetole@gmail.com', 'chipasula', 'maurice@gmail.com', 'ffc5caaeee92ddf691912db5e91706dd4f63c9fd', '', '643699', 'VERIFIED', 'CLIENT', '', '', '2023-03-23 05:31:20'),
(39, 1, '', '', '', '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '', '836319', 'PENDING', '', '', '', '2023-03-16 17:22:01'),
(40, 1, '', 'kasungu@gmail.com', '', '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '', '769592', 'PENDING', '', '', '', '2023-03-16 17:23:19'),
(41, 1, '', 'chippiek@maziko.com', 'Harambe', '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '', '502516', 'PENDING', '', '', '', '2023-03-16 17:47:46'),
(42, 1, '', 'milimox@jmac.xon', 'Zaile', 'NASFAM', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '', '661601', 'PENDING', '', '', '', '2023-03-16 17:52:14'),
(43, 1, '', 'canu@nasfam.co.mw', 'Zaile', 'NASFAM Malawi', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '', '567920', 'PENDING', '', '', '', '2023-03-16 17:55:16'),
(44, 1, 'KalikokhaMabena', 'canu@nasfam.com', 'Zaile', 'NASFAM Malawi', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '', '667286', 'PENDING', '', '', '', '2023-03-16 18:04:41'),
(45, 1, 'Rasmus Kasamala', 'canu@nasfam.commw', 'Zaile', 'NASFAM Malawi', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '', '655946', 'PENDING', '', '', '', '2023-03-16 18:05:50'),
(46, 1, 'Rasmus Kasamala', 'canu@nasfam.cz', 'Zaile', 'NASFAM Malawi', 'bea3c8ae07cea18fb901f35962d976967a91da94', '', '366337', 'PENDING', '', '', '', '2023-03-16 18:11:33'),
(47, 1, 'Rowland Mwale', 'solo@nthimbaharvest.com', 'chipasula', 'Nthimba Harvests Plc', 'bea3c8ae07cea18fb901f35962d976967a91da94', '', '201522', 'VERIFIED', 'CLIENT', '', '', '2023-03-16 18:23:18'),
(48, 1, 'Rowland Mwale', 'longwetolex@gmail.com', 'chipasula', 'Maziko', '3e6424251e386dc014aad1ce8e95fba9f064d3f8', '', '770387', 'PENDING', '', '', '', '2023-03-17 05:27:12');

-- --------------------------------------------------------

--
-- Table structure for table `customer_addresses`
--

CREATE TABLE `customer_addresses` (
  `customer_id` int(16) NOT NULL,
  `premise_id` int(16) NOT NULL,
  `date_address_from` date NOT NULL,
  `address_type_code` varchar(16) NOT NULL,
  `deta_address_to` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_orders`
--

CREATE TABLE `customer_orders` (
  `order_id` int(16) NOT NULL,
  `customer_id` int(16) NOT NULL,
  `order_status_code` int(2) NOT NULL DEFAULT 1,
  `shipping_method_code` varchar(16) NOT NULL,
  `order_placed_datetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `order_delievered_datetime` datetime NOT NULL,
  `order_shipping_charges` decimal(16,0) NOT NULL,
  `shipping_usd_charges` decimal(16,0) NOT NULL DEFAULT 500,
  `other_order_details` text NOT NULL,
  `payment_method_code` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_orders`
--

INSERT INTO `customer_orders` (`order_id`, `customer_id`, `order_status_code`, `shipping_method_code`, `order_placed_datetime`, `order_delievered_datetime`, `order_shipping_charges`, `shipping_usd_charges`, `other_order_details`, `payment_method_code`) VALUES
(35, 1, 5, '03', '2022-09-07 08:50:21', '0000-00-00 00:00:00', 15000, 500, '', 2),
(36, 1, 5, '03', '2022-09-07 08:50:18', '0000-00-00 00:00:00', 15000, 500, '', 2),
(37, 1, 5, '03', '2022-09-07 08:50:14', '0000-00-00 00:00:00', 15000, 500, '', 2),
(38, 1, 5, '02', '2022-09-07 08:50:39', '0000-00-00 00:00:00', 15000, 500, '', 2),
(39, 1, 5, '02', '2022-09-07 08:50:32', '0000-00-00 00:00:00', 15000, 500, '', 2),
(40, 1, 5, '02', '2022-09-07 08:50:36', '0000-00-00 00:00:00', 15000, 500, '', 2),
(41, 1, 5, '02', '2022-09-07 08:50:29', '0000-00-00 00:00:00', 15000, 500, '', 2),
(42, 1, 1, '02', '2022-09-07 08:51:03', '0000-00-00 00:00:00', 15000, 500, '', 2),
(43, 1, 1, '02', '2022-09-07 08:51:18', '0000-00-00 00:00:00', 15000, 500, '', 2),
(44, 1, 5, '02', '2022-10-14 14:54:19', '0000-00-00 00:00:00', 15000, 500, 'Some other data here', 2),
(45, 1, 5, '02', '2022-10-14 14:54:16', '0000-00-00 00:00:00', 15000, 500, 'Some other data here', 2),
(46, 1, 5, '02', '2022-10-14 14:54:13', '0000-00-00 00:00:00', 15000, 500, 'Some other data here', 2),
(47, 1, 5, '02', '2022-10-14 14:54:09', '0000-00-00 00:00:00', 15000, 500, '', 2),
(48, 1, 1, '03', '2022-09-07 09:24:54', '0000-00-00 00:00:00', 15000, 500, '', 2),
(49, 1, 2, '03', '2022-09-07 09:27:49', '0000-00-00 00:00:00', 15000, 500, '', 2),
(50, 1, 2, '04', '2022-09-07 09:28:57', '0000-00-00 00:00:00', 15000, 500, '', 2),
(51, 1, 2, '02', '2022-09-07 09:31:02', '0000-00-00 00:00:00', 15000, 500, '', 2),
(52, 7, 2, '03', '2022-09-07 09:48:06', '0000-00-00 00:00:00', 15000, 500, '', 2),
(53, 7, 2, '01', '2022-09-07 17:49:34', '0000-00-00 00:00:00', 15000, 500, '', 2),
(54, 10, 2, '02', '2022-09-12 01:45:35', '0000-00-00 00:00:00', 15000, 500, 'dsfd', 2),
(55, 1, 2, '02', '2022-10-07 04:11:06', '0000-00-00 00:00:00', 15000, 500, 'Send this directly to my house in Limbe', 2),
(56, 1, 5, '02', '2022-10-14 14:54:05', '0000-00-00 00:00:00', 15000, 500, 'Send this to my account', 2),
(57, 1, 2, '04', '2022-10-07 04:23:57', '0000-00-00 00:00:00', 15000, 500, 'Some Other THings', 2),
(58, 1, 1, '04', '2022-10-14 18:05:25', '0000-00-00 00:00:00', 15000, 500, 'Some other details', 2),
(59, 21, 2, '02', '2022-10-17 08:55:55', '0000-00-00 00:00:00', 15000, 500, 'Send this straight to my account', 2),
(60, 22, 1, '03', '2022-10-17 16:10:53', '0000-00-00 00:00:00', 15000, 500, '', 2),
(61, 34, 4, '02', '2022-10-22 21:17:40', '0000-00-00 00:00:00', 15000, 500, 'leave everything home', 2),
(62, 34, 2, '02', '2022-10-22 21:21:07', '0000-00-00 00:00:00', 15000, 500, 'vhgg', 2),
(63, 34, 1, '02', '2022-10-22 21:47:56', '0000-00-00 00:00:00', 15000, 500, '', 2),
(64, 34, 1, '02', '2022-10-23 04:14:03', '0000-00-00 00:00:00', 15000, 500, '', 2),
(65, 35, 1, '02', '2022-10-31 05:48:51', '0000-00-00 00:00:00', 15000, 500, 'ghjgj', 2),
(66, 38, 1, '01', '2023-04-04 19:29:05', '0000-00-00 00:00:00', 15000, 500, '', 2),
(67, 38, 4, '02', '2023-04-11 18:42:41', '0000-00-00 00:00:00', 15000, 500, '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `mailshot_campaigns`
--

CREATE TABLE `mailshot_campaigns` (
  `mailshot_id` int(16) NOT NULL,
  `product_category_code` varchar(16) NOT NULL,
  `mailshot_name` varchar(20) NOT NULL,
  `mailshot_start_date` date NOT NULL,
  `mailshot_end_date` date NOT NULL,
  `malshot_target_population` int(16) NOT NULL,
  `mailshot_objectives` text NOT NULL,
  `other_mailshot_details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mailshot_customers`
--

CREATE TABLE `mailshot_customers` (
  `mailshot_id` int(16) NOT NULL,
  `customer_id` int(16) NOT NULL,
  `outcome_code` varchar(16) NOT NULL,
  `mailshot_customer_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `item_id` int(16) NOT NULL,
  `order_id` int(16) NOT NULL,
  `order_item_products` text NOT NULL COMMENT 'This is a json encoded product and product count derived from the shopping cart'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`item_id`, `order_id`, `order_item_products`) VALUES
(3, 10, '[{\"productID\":\"32\",\"count\":\"1\"}]'),
(4, 11, '[{\"productID\":\"32\",\"count\":\"1\"},{\"productID\":\"2\",\"count\":\"1\"},{\"productID\":\"8\",\"count\":\"1\"},{\"productID\":\"12\",\"count\":\"1\"},{\"productID\":\"13\",\"count\":\"1\"}]'),
(5, 12, '[{\"productID\":\"32\",\"count\":\"1\"},{\"productID\":\"2\",\"count\":\"1\"},{\"productID\":\"8\",\"count\":\"1\"},{\"productID\":\"12\",\"count\":\"1\"},{\"productID\":\"13\",\"count\":\"1\"}]'),
(6, 13, '[{\"productID\":\"32\",\"count\":\"1\"},{\"productID\":\"2\",\"count\":\"1\"},{\"productID\":\"8\",\"count\":\"1\"},{\"productID\":\"12\",\"count\":\"1\"},{\"productID\":\"13\",\"count\":\"1\"},{\"productID\":\"11\",\"count\":\"1\"},{\"productID\":\"16\",\"count\":\"1\"},{\"productID\":\"25\",\"count\":\"1\"},{\"productID\":\"29\",\"count\":\"1\"},{\"productID\":\"31\",\"count\":\"1\"}]'),
(7, 14, '[{\"productID\":\"32\",\"count\":\"1\"},{\"productID\":\"2\",\"count\":\"1\"},{\"productID\":\"8\",\"count\":\"1\"},{\"productID\":\"12\",\"count\":\"1\"},{\"productID\":\"13\",\"count\":\"1\"},{\"productID\":\"11\",\"count\":\"1\"},{\"productID\":\"16\",\"count\":\"1\"},{\"productID\":\"25\",\"count\":\"1\"},{\"productID\":\"29\",\"count\":\"1\"},{\"productID\":\"31\",\"count\":\"1\"},{\"productID\":\"30\",\"count\":\"1\"},{\"productID\":\"35\",\"count\":\"1\"},{\"productID\":\"7\",\"count\":\"1\"},{\"productID\":\"21\",\"count\":\"1\"},{\"productID\":\"19\",\"count\":\"1\"},{\"productID\":\"41\",\"count\":\"1\"},{\"productID\":\"15\",\"count\":\"1\"},{\"productID\":\"6\",\"count\":\"1\"},{\"productID\":\"33\",\"count\":\"1\"},{\"productID\":\"3\",\"count\":\"1\"},{\"productID\":\"5\",\"count\":\"1\"},{\"productID\":\"38\",\"count\":\"1\"},{\"productID\":\"34\",\"count\":\"1\"},{\"productID\":\"27\",\"count\":\"1\"}]'),
(8, 15, '[{\"productID\":\"32\",\"count\":\"1\"},{\"productID\":\"2\",\"count\":\"1\"},{\"productID\":\"8\",\"count\":\"1\"},{\"productID\":\"12\",\"count\":\"1\"},{\"productID\":\"13\",\"count\":\"1\"},{\"productID\":\"11\",\"count\":\"1\"},{\"productID\":\"16\",\"count\":\"1\"},{\"productID\":\"25\",\"count\":\"1\"},{\"productID\":\"29\",\"count\":\"1\"},{\"productID\":\"31\",\"count\":\"1\"},{\"productID\":\"30\",\"count\":\"1\"},{\"productID\":\"35\",\"count\":\"1\"},{\"productID\":\"7\",\"count\":\"1\"},{\"productID\":\"21\",\"count\":\"1\"},{\"productID\":\"19\",\"count\":\"1\"},{\"productID\":\"41\",\"count\":\"1\"},{\"productID\":\"15\",\"count\":\"1\"},{\"productID\":\"6\",\"count\":\"1\"},{\"productID\":\"33\",\"count\":\"1\"},{\"productID\":\"3\",\"count\":\"1\"},{\"productID\":\"5\",\"count\":\"1\"},{\"productID\":\"38\",\"count\":\"1\"},{\"productID\":\"34\",\"count\":\"1\"},{\"productID\":\"27\",\"count\":\"1\"}]'),
(9, 16, '[{\"productID\":\"32\",\"count\":\"1\"},{\"productID\":\"2\",\"count\":\"1\"},{\"productID\":\"8\",\"count\":\"1\"},{\"productID\":\"12\",\"count\":\"1\"},{\"productID\":\"13\",\"count\":\"1\"},{\"productID\":\"11\",\"count\":\"1\"},{\"productID\":\"16\",\"count\":\"1\"},{\"productID\":\"25\",\"count\":\"1\"},{\"productID\":\"29\",\"count\":\"1\"},{\"productID\":\"31\",\"count\":\"1\"}]'),
(10, 17, '[{\"productID\":\"1\",\"count\":\"1\"},{\"productID\":\"6\",\"count\":\"1\"},{\"productID\":\"7\",\"count\":\"1\"},{\"productID\":\"2\",\"count\":\"1\"},{\"productID\":\"8\",\"count\":\"1\"}]'),
(11, 18, '[{\"productID\":\"13\",\"count\":\"1\"},{\"productID\":\"23\",\"count\":\"1\"},{\"productID\":\"18\",\"count\":\"1\"}]'),
(12, 19, '[{\"productID\":\"32\",\"count\":\"1\"},{\"productID\":\"28\",\"count\":\"1\"}]'),
(13, 20, '[{\"productID\":\"13\",\"count\":\"1\"},{\"productID\":\"23\",\"count\":\"1\"},{\"productID\":\"18\",\"count\":\"1\"}]'),
(14, 21, '[{\"productID\":\"13\",\"count\":\"1\"},{\"productID\":\"23\",\"count\":\"1\"},{\"productID\":\"18\",\"count\":\"1\"}]'),
(15, 22, '[{\"productID\":\"13\",\"count\":\"1\"},{\"productID\":\"23\",\"count\":\"1\"},{\"productID\":\"18\",\"count\":\"1\"}]'),
(16, 23, '[]'),
(17, 24, '[{\"productID\":\"13\",\"count\":\"1\"},{\"productID\":\"23\",\"count\":\"1\"},{\"productID\":\"18\",\"count\":\"1\"}]'),
(18, 25, '[{\"productID\":\"13\",\"count\":\"1\"},{\"productID\":\"23\",\"count\":\"1\"},{\"productID\":\"18\",\"count\":\"1\"}]'),
(19, 26, '[{\"productID\":\"13\",\"count\":\"1\"},{\"productID\":\"23\",\"count\":\"1\"},{\"productID\":\"18\",\"count\":\"1\"}]'),
(20, 27, '[{\"productID\":\"13\",\"count\":\"1\"},{\"productID\":\"23\",\"count\":\"1\"},{\"productID\":\"18\",\"count\":\"1\"}]'),
(21, 28, '[{\"productID\":\"13\",\"count\":\"1\"},{\"productID\":\"23\",\"count\":\"1\"},{\"productID\":\"18\",\"count\":\"1\"}]'),
(22, 29, '[{\"productID\":\"13\",\"count\":\"1\"},{\"productID\":\"23\",\"count\":\"1\"},{\"productID\":\"18\",\"count\":\"1\"}]'),
(23, 30, '[{\"productID\":\"13\",\"count\":\"1\"},{\"productID\":\"23\",\"count\":\"1\"},{\"productID\":\"18\",\"count\":\"1\"}]'),
(24, 31, '[{\"productID\":\"13\",\"count\":\"1\"},{\"productID\":\"23\",\"count\":\"1\"},{\"productID\":\"18\",\"count\":\"1\"}]'),
(25, 32, '[{\"productID\":\"13\",\"count\":\"1\"},{\"productID\":\"23\",\"count\":\"1\"},{\"productID\":\"18\",\"count\":\"1\"}]'),
(26, 33, '[{\"productID\":\"13\",\"count\":\"1\"},{\"productID\":\"23\",\"count\":\"1\"},{\"productID\":\"18\",\"count\":\"1\"}]'),
(27, 34, '[]'),
(28, 35, '[{\"productID\":\"13\",\"count\":\"1\"},{\"productID\":\"23\",\"count\":\"1\"},{\"productID\":\"18\",\"count\":\"1\"}]'),
(29, 36, '[{\"productID\":\"13\",\"count\":\"1\"},{\"productID\":\"23\",\"count\":\"1\"},{\"productID\":\"18\",\"count\":\"1\"}]'),
(30, 37, '[]'),
(31, 38, '[{\"productID\":\"13\",\"count\":\"1\"},{\"productID\":\"23\",\"count\":\"1\"},{\"productID\":\"18\",\"count\":\"1\"}]'),
(32, 39, '[]'),
(33, 40, '[]'),
(34, 41, '[{\"productID\":\"13\",\"count\":\"1\"},{\"productID\":\"23\",\"count\":\"1\"},{\"productID\":\"18\",\"count\":\"1\"}]'),
(35, 42, '[{\"productID\":\"21\",\"count\":\"1\"},{\"productID\":\"1\",\"count\":\"1\"},{\"productID\":\"26\",\"count\":\"1\"},{\"productID\":\"29\",\"count\":\"1\"}]'),
(36, 43, '[]'),
(37, 44, '[{\"productID\":\"21\",\"count\":\"1\"},{\"productID\":\"1\",\"count\":\"1\"},{\"productID\":\"26\",\"count\":\"1\"},{\"productID\":\"29\",\"count\":\"1\"}]'),
(38, 45, '[{\"productID\":\"21\",\"count\":\"1\"},{\"productID\":\"1\",\"count\":\"1\"},{\"productID\":\"26\",\"count\":\"1\"},{\"productID\":\"29\",\"count\":\"1\"}]'),
(39, 46, '[{\"productID\":\"21\",\"count\":\"1\"},{\"productID\":\"1\",\"count\":\"1\"},{\"productID\":\"26\",\"count\":\"1\"},{\"productID\":\"29\",\"count\":\"1\"}]'),
(40, 47, '[{\"productID\":\"21\",\"count\":\"1\"},{\"productID\":\"1\",\"count\":\"1\"},{\"productID\":\"26\",\"count\":\"1\"},{\"productID\":\"29\",\"count\":\"1\"}]'),
(41, 48, '[{\"productID\":\"21\",\"count\":\"1\"},{\"productID\":\"1\",\"count\":\"1\"},{\"productID\":\"26\",\"count\":\"1\"},{\"productID\":\"29\",\"count\":\"1\"}]'),
(42, 49, '[{\"productID\":\"21\",\"count\":\"1\"},{\"productID\":\"1\",\"count\":\"1\"},{\"productID\":\"26\",\"count\":\"1\"},{\"productID\":\"29\",\"count\":\"1\"}]'),
(43, 50, '[{\"productID\":\"21\",\"count\":\"1\"},{\"productID\":\"1\",\"count\":\"1\"},{\"productID\":\"26\",\"count\":\"1\"},{\"productID\":\"29\",\"count\":\"1\"}]'),
(44, 51, '[{\"productID\":\"21\",\"count\":\"1\"},{\"productID\":\"1\",\"count\":\"1\"},{\"productID\":\"26\",\"count\":\"1\"},{\"productID\":\"29\",\"count\":\"1\"}]'),
(45, 52, '[{\"productID\":\"30\",\"count\":\"1\"},{\"productID\":\"9\",\"count\":\"1\"},{\"productID\":\"37\",\"count\":\"1\"}]'),
(46, 53, '[{\"productID\":\"30\",\"count\":\"1\"},{\"productID\":\"9\",\"count\":\"1\"},{\"productID\":\"37\",\"count\":\"1\"}]'),
(47, 54, '[{\"productID\":\"27\",\"count\":\"1\"}]'),
(48, 55, '[{\"productID\":\"29\",\"count\":\"1\"}]'),
(49, 56, '[{\"productID\":\"21\",\"count\":\"1\"},{\"productID\":\"1\",\"count\":\"1\"},{\"productID\":\"26\",\"count\":\"1\"},{\"productID\":\"29\",\"count\":\"1\"}]'),
(50, 57, '[{\"productID\":\"21\",\"count\":\"1\"},{\"productID\":\"1\",\"count\":\"1\"},{\"productID\":\"26\",\"count\":\"1\"},{\"productID\":\"29\",\"count\":\"1\"}]'),
(51, 58, '[{\"productID\":\"10\",\"count\":\"1\"},{\"productID\":\"8\",\"count\":\"1\"},{\"productID\":\"19\",\"count\":\"1\"},{\"productID\":\"6\",\"count\":\"1\"},{\"productID\":\"3\",\"count\":\"1\"},{\"productID\":\"15\",\"count\":\"1\"},{\"productID\":\"25\",\"count\":\"1\"},{\"productID\":\"31\",\"count\":\"1\"},{\"productID\":\"37\",\"count\":\"1\"},{\"productID\":\"17\",\"count\":\"1\"},{\"productID\":\"18\",\"count\":\"1\"},{\"productID\":\"12\",\"count\":\"1\"},{\"productID\":\"2\",\"count\":\"1\"}]'),
(52, 59, '[{\"productID\":\"5\",\"count\":\"1\"}]'),
(53, 60, '[{\"productID\":\"22\",\"count\":\"1\"},{\"productID\":\"37\",\"count\":\"8\"},{\"productID\":\"34\",\"count\":\"1\"},{\"productID\":\"28\",\"count\":\"1\"},{\"productID\":\"30\",\"count\":\"1\"}]'),
(54, 61, '[{\"productID\":\"22\",\"count\":\"3\"}]'),
(55, 62, '[{\"productID\":\"22\",\"count\":\"3\"}]'),
(56, 63, '[{\"productID\":\"22\",\"count\":\"3\"}]'),
(57, 64, '[{\"productID\":\"22\",\"count\":\"3\"},{\"productID\":\"11\",\"count\":\"3\"}]'),
(58, 65, '[{\"productID\":\"48\",\"count\":\"1\"}]'),
(59, 66, '[{\"productID\":\"1\",\"count\":\"1\"},{\"productID\":\"2\",\"count\":\"1\"},{\"productID\":\"6\",\"count\":\"1\"},{\"productID\":\"7\",\"count\":\"1\"},{\"productID\":\"8\",\"count\":\"1\"},{\"productID\":\"10\",\"count\":\"1\"},{\"productID\":\"11\",\"count\":\"1\"},{\"productID\":\"16\",\"count\":\"1\"},{\"productID\":\"25\",\"count\":\"1\"},{\"productID\":\"24\",\"count\":\"1\"},{\"productID\":\"19\",\"count\":\"1\"},{\"productID\":\"18\",\"count\":\"100\"},{\"productID\":\"26\",\"count\":\"1\"},{\"productID\":\"27\",\"count\":\"1\"},{\"productID\":\"28\",\"count\":\"1\"},{\"productID\":\"29\",\"count\":\"1\"},{\"productID\":\"30\",\"count\":\"1\"},{\"productID\":\"31\",\"count\":\"1\"},{\"productID\":\"32\",\"count\":\"1\"},{\"productID\":\"33\",\"count\":\"1\"},{\"productID\":\"56\",\"count\":\"1\"},{\"productID\":\"22\",\"count\":\"1\"},{\"productID\":\"13\",\"count\":\"1\"},{\"productID\":\"40\",\"count\":\"1\"},{\"productID\":\"50\",\"count\":\"1\"},{\"productID\":\"36\",\"count\":\"1\"},{\"productID\":\"4\",\"count\":\"1\"},{\"productID\":\"15\",\"count\":\"1\"},{\"productID\":\"39\",\"count\":\"1\"},{\"productID\":\"41\",\"count\":\"1\"},{\"productID\":\"38\",\"count\":\"1\"},{\"productID\":\"12\",\"count\":\"1\"},{\"productID\":\"5\",\"count\":\"1\"},{\"productID\":\"35\",\"count\":\"1\"},{\"productID\":\"61\",\"count\":\"1\"},{\"productID\":\"3\",\"count\":\"1\"},{\"productID\":\"59\",\"count\":\"1\"},{\"productID\":\"55\",\"count\":\"1\"},{\"productID\":\"34\",\"count\":\"1\"},{\"productID\":\"9\",\"count\":\"1\"},{\"productID\":\"23\",\"count\":\"1\"},{\"productID\":\"57\",\"count\":\"1\"},{\"productID\":\"62\",\"count\":\"1\"},{\"productID\":\"58\",\"count\":\"1\"},{\"productID\":\"48\",\"count\":\"1\"},{\"productID\":\"60\",\"count\":\"1\"},{\"productID\":\"37\",\"count\":\"1\"},{\"productID\":\"14\",\"count\":\"1\"},{\"productID\":\"52\",\"count\":\"1\"},{\"productID\":\"51\",\"count\":\"1\"},{\"productID\":\"21\",\"count\":\"1\"}]'),
(60, 67, '[{\"productID\":\"1\",\"count\":\"1\"},{\"productID\":\"2\",\"count\":\"1\"},{\"productID\":\"6\",\"count\":\"1\"},{\"productID\":\"7\",\"count\":\"1\"},{\"productID\":\"8\",\"count\":\"1\"},{\"productID\":\"10\",\"count\":\"1\"},{\"productID\":\"11\",\"count\":\"1\"},{\"productID\":\"16\",\"count\":\"1\"},{\"productID\":\"25\",\"count\":\"1\"},{\"productID\":\"24\",\"count\":\"1\"},{\"productID\":\"19\",\"count\":\"1\"},{\"productID\":\"18\",\"count\":\"100\"},{\"productID\":\"26\",\"count\":\"1\"},{\"productID\":\"27\",\"count\":\"1\"},{\"productID\":\"28\",\"count\":\"1\"},{\"productID\":\"29\",\"count\":\"1\"},{\"productID\":\"30\",\"count\":\"1\"},{\"productID\":\"31\",\"count\":\"1\"},{\"productID\":\"32\",\"count\":\"1\"},{\"productID\":\"33\",\"count\":\"1\"},{\"productID\":\"56\",\"count\":\"1\"},{\"productID\":\"22\",\"count\":\"1\"},{\"productID\":\"13\",\"count\":\"1\"},{\"productID\":\"40\",\"count\":\"1\"},{\"productID\":\"50\",\"count\":\"1\"},{\"productID\":\"36\",\"count\":\"1\"},{\"productID\":\"4\",\"count\":\"1\"},{\"productID\":\"15\",\"count\":\"1\"},{\"productID\":\"39\",\"count\":\"1\"},{\"productID\":\"41\",\"count\":\"1\"},{\"productID\":\"38\",\"count\":\"1\"},{\"productID\":\"12\",\"count\":\"1\"},{\"productID\":\"5\",\"count\":\"1\"},{\"productID\":\"35\",\"count\":\"1\"},{\"productID\":\"61\",\"count\":\"1\"},{\"productID\":\"3\",\"count\":\"1\"},{\"productID\":\"59\",\"count\":\"1\"},{\"productID\":\"55\",\"count\":\"1\"},{\"productID\":\"34\",\"count\":\"1\"},{\"productID\":\"9\",\"count\":\"1\"},{\"productID\":\"23\",\"count\":\"1\"},{\"productID\":\"57\",\"count\":\"1\"},{\"productID\":\"62\",\"count\":\"1\"},{\"productID\":\"58\",\"count\":\"1\"},{\"productID\":\"48\",\"count\":\"1\"},{\"productID\":\"60\",\"count\":\"1\"},{\"productID\":\"37\",\"count\":\"1\"},{\"productID\":\"14\",\"count\":\"1\"},{\"productID\":\"52\",\"count\":\"1\"},{\"productID\":\"51\",\"count\":\"1\"},{\"productID\":\"21\",\"count\":\"1\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(100) NOT NULL,
  `payment_id` text DEFAULT NULL,
  `payment_email` text DEFAULT NULL,
  `payer_id` text DEFAULT NULL,
  `order_id` int(5) DEFAULT NULL,
  `payment_data_dump` text NOT NULL,
  `payment_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `payment_id`, `payment_email`, `payer_id`, `order_id`, `payment_data_dump`, `payment_status`) VALUES
(3, 'PAYID-MMMGC6I6AY72091HK1165608', 'sb-ouqz120730466@personal.example.com', '269N4EXX9LZDQ', 47, '', ''),
(4, 'PAYID-MMMGG2Y0FD84833X72730835', 'sb-ouqz120730466@personal.example.com', '269N4EXX9LZDQ', 48, '', 'approved'),
(5, 'PAYID-MMMGHJI4T522025YD7330739', 'sb-ouqz120730466@personal.example.com', '269N4EXX9LZDQ', 49, '', 'approved'),
(6, 'PAYID-MMMGHJI4T522025YD7330739', 'sb-ouqz120730466@personal.example.com', '269N4EXX9LZDQ', 49, '', 'approved'),
(7, 'PAYID-MMMGISQ8LR046637P7095410', 'sb-ouqz120730466@personal.example.com', '269N4EXX9LZDQ', 50, '', 'approved'),
(8, 'PAYID-MMMGJSA9W897181PE185923U', 'sb-ouqz120730466@personal.example.com', '269N4EXX9LZDQ', 51, '', 'approved'),
(9, 'PAYID-MMMGROI1SN62994K2771614X', 'sb-ouqz120730466@personal.example.com', '269N4EXX9LZDQ', 52, '', 'approved'),
(10, 'PAYID-MMM3GAI70P139175S509115H', 'sb-ouqz120730466@personal.example.com', '269N4EXX9LZDQ', 53, '', 'approved'),
(11, 'PAYID-MMPI6KA6R414003VM0854040', 'sb-ouqz120730466@personal.example.com', '269N4EXX9LZDQ', 54, '', 'approved'),
(12, 'PAYID-MMPJCRI0K283176KJ8800449', 'sb-ouqz120730466@personal.example.com', '269N4EXX9LZDQ', 0, '', 'approved'),
(13, 'PAYID-MM72NEQ5KV04587LL908683T', 'sb-ouqz120730466@personal.example.com', '269N4EXX9LZDQ', 55, '', 'approved'),
(14, 'PAYID-MM72TOI3EM447590D0774241', 'sb-ouqz120730466@personal.example.com', '269N4EXX9LZDQ', 57, '', 'approved'),
(15, 'PAYID-MNGRWVA8U116975W8764261N', 'sb-ouqz120730466@personal.example.com', '269N4EXX9LZDQ', 59, '', 'approved'),
(16, 'PAYID-MNHZJMY8E037774FH7320723', 'sb-ouqz120730466@personal.example.com', '269N4EXX9LZDQ', 0, '', 'approved'),
(17, 'PAYID-MNKF5JA17Y96591TG7425846', 'sb-ouqz120730466@personal.example.com', '269N4EXX9LZDQ', 62, '', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `premises`
--

CREATE TABLE `premises` (
  `premise_id` int(16) NOT NULL,
  `premises_type_code` varchar(16) NOT NULL,
  `premise_details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(16) NOT NULL,
  `product_category_code` varchar(16) NOT NULL,
  `product_name` text NOT NULL,
  `other_product_detials` text NOT NULL,
  `product_image_url` text NOT NULL,
  `product_unit_price` decimal(16,0) NOT NULL,
  `product_usd_price` decimal(16,0) NOT NULL DEFAULT 0,
  `product_unit_quantity` int(11) NOT NULL,
  `quantity_symbol` enum('MT','KG','LTR','PCS','BXS','BSHL') NOT NULL DEFAULT 'MT',
  `product_country_id` int(5) NOT NULL DEFAULT -1 COMMENT 'Origin of this item',
  `product_supplier_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_category_code`, `product_name`, `other_product_detials`, `product_image_url`, `product_unit_price`, `product_usd_price`, `product_unit_quantity`, `quantity_symbol`, `product_country_id`, `product_supplier_id`) VALUES
(1, '1', 'Leaches', 'Yellow+ripe+mangoes', '31102022061058.jpeg', 200, 590, 60, 'MT', 16, 2),
(2, '1', 'Banana', 'Banana', 'banana.jpg', 15000, 500, 1500, 'MT', 25, 24),
(3, '9', 'Baobab', 'Baobab', 'baobab.jpg', 15000, 500, 11, 'MT', 1, 2),
(4, '1', 'Brocolli', 'Brocolli', 'brocolli.jpg', 15000, 200, 1500, 'MT', 26, 4),
(5, '2', 'Cabbage', 'Cabbage', 'cabbage.jpg', 15000, 400, 1500, 'MT', 1, 3),
(6, '1', 'Carrots', 'Carrots+has+no+roots', 'carrots.jpg', 15000, 980, 1500, 'MT', 1, 0),
(7, '1', 'Cashew', 'Cashew', 'cashew.jpg', 15000, 300, 1500, 'MT', 11, 2),
(8, '1', 'Cassava', 'Cassava', 'cassava.jpg', 15000, 670, 1500, 'MT', 27, 24),
(9, '8', 'Chambo', 'Chambo', 'chambo.jpg', 2500, 800, 12, 'KG', 1, 0),
(10, '1', 'Cualiflower', 'Cualiflower', 'cualiflower.jpg', 15000, 456, 1500, 'MT', 30, 0),
(11, '1', 'Cucumber', 'Cucumber', 'cucumber.jpg', 15000, 150, 1500, 'KG', 4, 0),
(12, '2', 'Eggplant', 'Eggplant', 'eggplant.jpg', 15000, 180, 1500, 'MT', 1, 2),
(13, '5', 'Garlic', 'Garlic', 'garlic.jpg', 15000, 300, 1500, 'MT', 1, 4),
(14, '2', 'Greenbeans', 'Greenbeans', 'greenbeans.jpg', 15000, 190, 1500, 'MT', 1, 0),
(15, '3', 'Greencorn', 'Greencorn', 'greencorn.jpg', 15000, 120, 1500, 'MT', 1, 0),
(16, '1', 'Greenmango', 'Greenmango', 'greenmango.jpg', 15000, 600, 1500, 'MT', 33, 0),
(17, '9', 'Honey', 'Honey', 'honey.jpg', 15000, 290, 1500, 'MT', 1, 2),
(18, '1', 'Lemon', 'Lemon', 'lemon.jpg', 15000, 400, 1500, 'MT', 9, 4),
(19, '1', 'Magombo', 'Magombo', 'magombo.jpg', 15000, 210, 1500, 'MT', 1, 4),
(21, '9', 'Mushroom', 'Mushroom', 'mushroom.jpg', 15000, 220, 1500, 'MT', 1, 4),
(22, '2', 'Ocra', 'Ocra', 'ocra.png', 15000, 220, 1500, 'MT', 1, 2),
(23, '5', 'Paprika', 'Paprika', 'paprika.jpeg', 15000, 544, 1500, 'MT', 1, 0),
(24, '2', 'Pepper', 'Pepper', 'pepper.jpg', 15000, 778, 1500, 'MT', 34, 0),
(25, '1', 'Pineapple', 'Pineapple', 'pineapple.jpg', 15000, 300, 1500, 'MT', 1, 0),
(26, '1', 'Plantain', 'Plantain', 'plantain.jpg', 15000, 290, 1500, 'MT', 1, 4),
(27, '1', 'Pumpkin', 'Pumpkin', 'pumpkin.jpg', 15000, 100, 1500, 'MT', 1, 0),
(28, '1', 'Quail', 'Quail', 'quail.jpg', 15000, 450, 1500, 'MT', 4, 0),
(29, '1', 'Red beans', 'Redbeans', 'redbeans.jpg', 15000, 122, 1500, 'MT', 1, 0),
(30, '1', 'Red Onion', 'Redonion', 'redonion.jpg', 15000, 290, 1500, 'MT', 1, 0),
(31, '1', 'Red Groundnuts', 'These ground nuts are afrotoxin freee. Produced by Chidawola Cooperative in Kasungu, Malawi. We have 30 tonnes available.', 'redpeanut.jpg', 15000, 839, 1500, 'MT', 1, 0),
(32, '1', 'Rice', 'Rice', 'rice.jpg', 15000, 551, 1500, 'MT', 1, 0),
(33, '1', 'Ripemango', 'Ripemango', 'ripemango.jpg', 15000, 200, 1500, 'MT', 1, 0),
(34, '1', 'Soya', 'Soya', 'soya.jpg', 15000, 1900, 1500, 'MT', 1, 0),
(35, '1', 'Sunflower', 'Sunflower', 'sunflower.jpg', 15000, 211, 1500, 'MT', 1, 0),
(36, '1', 'Tangerine', 'Tangerine', 'tangerine.jpg', 15000, 200, 1500, 'MT', 1, 0),
(37, '1', 'Watermelon', 'Watermelon', 'watermelon.jpg', 15000, 290, 1500, 'MT', 1, 0),
(38, '1', 'Whitebeans', 'Whitebeans', 'whitebeans.jpg', 15000, 199, 1500, 'MT', 1, 0),
(39, '1', 'Whiteonion', 'Whiteonion', 'whiteonion.jpg', 15000, 200, 1500, 'MT', 1, 0),
(40, '1', 'Whitepeanut', 'Whitepeanut', 'whitepeanut.jpeg', 15000, 320, 1500, 'MT', 1, 0),
(41, '1', 'Yellowpotato', 'Yellowpotato+here\'', 'yellowpotato.jpg', 15000, 290, 1500, 'MT', 1, 0),
(48, '1', 'hot+paper', 'Something+not+spicy', '23032023060316.jpg', 1500, 899, 20, 'MT', 1, 35),
(50, '1', 'Papaya Jams', 'ugandan+fruits', '18122022081232.jpg', 50000, 324, 1900, 'MT', 1, -1),
(51, '5', 'Coffee', '', '22122022111242.jpg', 7000, 622, 1900, 'MT', 2, -1),
(52, '5', 'Hibiscus Leaves ', 'Whole, un grounded hibiscus leaves from malawi. Grown organically by Chitintha Cooperative in Karonga, Northern Malawi. Supply capacity of 500kg/week', '22022023120254.jpg', 5000, 420, 1000, 'MT', 1, -1),
(55, '9', 'Mondia (Gondolosi)', 'Mondia', '23022023020234.jpg', 5500, 200, 10, 'MT', 3, -1),
(56, '2', 'Irish+Potatoes', 'Irish+potatoesvfrom+malawi', '24022023050250.jpg', 28000, 269, 10, 'MT', 42, -1),
(57, '10', 'Powdered Hibiscus Flowers', '', '24022023050213.jpg', 8000, 1800, 300, 'MT', 1, -1),
(58, '5', 'Vanilla Beans', 'Vanilla crop from Uganda. It is fair trade certified', '03032023120307.jpg', 7000, 260, 300, 'KG', 6, -1),
(59, '3', 'Sweet Potato', 'Sweet potatoes from Uganda', '07032023060348.jpg', 60000, 400, 300, 'MT', 6, -1),
(60, '1', 'Huss Avocado', 'These avocados were produced by the Chipikio Cooperative in Goma, Northern Uganda.', '18032023070341.jpg', 400, 322, 5, 'MT', 6, -1),
(61, '2', 'Irish Potatoes (kachewere)', '', '26032023120354.jpg', 22000, 200, 10, 'MT', 1, -1),
(62, '3', 'Sweet Potatoes (White)', 'gkhaz iuaso[ipsa ;kjszoip\nkp\no[a', '26032023120336.jpg', 7000, 270, 10, 'MT', 6, -1),
(63, '3', 'Red Kidney Beans', '', '20042023040415.jpg', 600, 390, 1, 'MT', 7, -1),
(64, '15', 'Organic Fertilizer (Chitowe)', '', '11052023070526.jpg', 35000, 90, 100, 'MT', 1, -1),
(65, '3', 'Organic Fertilizer (Chitowe)', '', '11052023070526.jpg', 35000, 80, 100, 'MT', 1, -1),
(66, '3', 'Ntchisi Coffee Raw Beans', 'This is raw coffee beans grown in the highlands of Ntchisi in the central region district of Ntchisi in Malawi. This coffe is the best in Africa and iot is of the Robusta variety.', '01062023090610.jpg', 340000, 260, 16, 'MT', 1, -1),
(67, '9', 'Mayade Mushroom', 'These mushrooms are produced in Malawi by Mayade cooperative in Lilongwe, Mitundu.', '13062023060650.jpg', 125000, 20, 2, 'MT', 1, -1);

-- --------------------------------------------------------

--
-- Table structure for table `product_inquiries`
--

CREATE TABLE `product_inquiries` (
  `id` int(50) NOT NULL,
  `product_id` int(50) NOT NULL,
  `customer_email` varchar(50) NOT NULL,
  `customer_phone` varchar(50) NOT NULL,
  `customer_message` text NOT NULL,
  `customer_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_showcase`
--

CREATE TABLE `product_showcase` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `showcase_start` date NOT NULL,
  `showcase_end` date NOT NULL,
  `product_narrative` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_showcase`
--

INSERT INTO `product_showcase` (`id`, `product_id`, `showcase_start`, `showcase_end`, `product_narrative`) VALUES
(1, 5, '2023-11-20', '2023-11-28', 'These large head white Cabbages are being sustainably farmed in Lilongwe, central of Malawi. It is produced by the Kapichi Cooperative, which is a grouping of women smallholder farmers'),
(2, 9, '2023-11-20', '2023-11-23', 'These Highly nutritive baby carrots are being sustainably farmed in Lilongwe, central of Malawi. It is produced by the Kapichi Cooperative, which is a grouping of women smallholder farmer'),
(3, 2, '2023-11-21', '2023-11-30', 'These organic bananas are being sustainably farmed in Morogoro, eastern Tanzania. It is produced by the Kapichi Cooperative, which is a grouping of women smallholder farmers.');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_offers`
--

CREATE TABLE `purchase_offers` (
  `id` int(255) NOT NULL,
  `product_id` int(255) NOT NULL,
  `offer_price` decimal(10,0) NOT NULL,
  `offer_datetime` datetime NOT NULL,
  `offer_message` text NOT NULL,
  `buyer_id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `refund_requests`
--

CREATE TABLE `refund_requests` (
  `refund_id` int(5) NOT NULL,
  `refund_order_id` int(5) DEFAULT NULL,
  `refund_from_user_id` int(5) DEFAULT NULL,
  `refund_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `refund_state` enum('pending','rejected','accepted') DEFAULT 'pending',
  `refund_reason` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `refund_requests`
--

INSERT INTO `refund_requests` (`refund_id`, `refund_order_id`, `refund_from_user_id`, `refund_date`, `refund_state`, `refund_reason`) VALUES
(2, 11, 1, '2022-08-22 15:56:30', 'pending', 'I got different products from what i ordered'),
(3, 11, 1, '2022-08-22 15:57:10', 'pending', 'I got different products from what i ordered'),
(4, 11, -1, '2022-08-22 16:03:13', 'pending', 'I wronte a wrong address and parcel'),
(5, 11, 1, '2022-08-22 16:04:19', 'pending', 'Late Delivery'),
(6, 11, 1, '2022-08-22 16:04:54', 'pending', 'Am no longer interested'),
(7, 11, 1, '2022-08-22 16:05:31', 'pending', 'I got different products from what i ordered'),
(8, 11, 1, '2022-08-22 16:17:51', 'pending', 'I got different products from what i ordered'),
(9, 54, 10, '2022-09-12 01:47:25', 'pending', 'I got different products from what i ordered'),
(10, 59, 21, '2022-10-17 09:48:52', 'pending', 'fssdvs');

-- --------------------------------------------------------

--
-- Table structure for table `ref_address_types`
--

CREATE TABLE `ref_address_types` (
  `address_type_code` varchar(16) NOT NULL,
  `address_type_description` enum('Billing','Shipping') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ref_ad_type`
--

CREATE TABLE `ref_ad_type` (
  `id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ref_ad_type`
--

INSERT INTO `ref_ad_type` (`id`, `type`) VALUES
(1, 'LARGE_BANNER'),
(2, 'SMALL_BANNER');

-- --------------------------------------------------------

--
-- Table structure for table `ref_auction_categories`
--

CREATE TABLE `ref_auction_categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `category_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ref_auction_categories`
--

INSERT INTO `ref_auction_categories` (`category_id`, `category_name`, `category_desc`) VALUES
(1, 'machinery', 'All agricultural machines, vehicles and equipment'),
(2, 'livestock', 'All live animals ie cattle, horses, carmels etc'),
(3, 'grain', 'all produce ie legumes, cereals etc'),
(4, 'land', 'all land holdings ie farms etc'),
(5, 'facilities', 'Buildings ie warehouses, farms houses etc');

-- --------------------------------------------------------

--
-- Table structure for table `ref_countries`
--

CREATE TABLE `ref_countries` (
  `country_id` int(5) NOT NULL,
  `country_name` varchar(100) DEFAULT NULL,
  `country_icon` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ref_countries`
--

INSERT INTO `ref_countries` (`country_id`, `country_name`, `country_icon`) VALUES
(1, 'Malawi', 'mwi'),
(2, 'Kenya', 'ken'),
(3, 'Tanzania', 'tan'),
(4, 'Zambia', 'zam'),
(5, 'Zimbabwe', 'zim'),
(6, 'Uganda', 'uga'),
(7, 'Mozambique', 'mzq'),
(8, 'Ethiopia', 'ethio'),
(9, 'Rwanda', 'rwd'),
(10, 'Somalia', 'som'),
(11, 'DR Congo', 'drc'),
(12, 'Benin', 'ben'),
(13, 'Burundi', 'bur'),
(14, 'Madagasca', 'madg'),
(15, 'Morocco', 'moro'),
(16, 'Egypt', 'egy'),
(17, 'Ivory Coast', 'ivc'),
(18, 'Nigeria', 'nig'),
(19, 'Botswana', 'bot'),
(20, 'Gabon', 'gab'),
(21, 'Ghana', 'gha'),
(22, 'Mali', 'mal'),
(23, 'Lesotho', 'leso'),
(24, 'Mauritania', 'rita'),
(25, 'Mauritious', 'maur'),
(26, 'Sao Tome', 'satm'),
(27, 'Senegal', 'sen'),
(28, 'Sierra Lione', 'sier'),
(29, 'South Africa', 'rsa'),
(30, 'South Sudan', 'ssud'),
(31, 'Sudan', 'sud'),
(32, 'Comoros', 'como'),
(33, 'Togo', 'togo'),
(34, 'Namibia', 'nam'),
(35, 'Gambia', 'gamb'),
(36, 'Equatorial Guinne', 'eqg'),
(37, 'Gbouti', 'dgi'),
(38, 'Eswathini', 'swa'),
(40, 'Niger', 'nig'),
(41, 'Eritria', 'eri'),
(42, 'Cape Verde', 'cved'),
(43, 'Burkina Faso', 'buk'),
(44, 'Cameron', 'cam'),
(45, 'Chad', 'chad'),
(46, 'Comoros', 'como'),
(47, 'Algeria', 'alg'),
(48, 'Angola', 'ang');

-- --------------------------------------------------------

--
-- Table structure for table `ref_order_item_status`
--

CREATE TABLE `ref_order_item_status` (
  `order_item_status_code` varchar(16) NOT NULL,
  `order_item_status_description` enum('Cancalled','Delievered','Paid') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ref_order_status`
--

CREATE TABLE `ref_order_status` (
  `order_status_code` int(2) NOT NULL,
  `order_status_description` enum('Cancelled','Delivered','Paid','Initiated','Deleted') NOT NULL DEFAULT 'Initiated'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ref_order_status`
--

INSERT INTO `ref_order_status` (`order_status_code`, `order_status_description`) VALUES
(1, 'Initiated'),
(2, 'Paid'),
(3, 'Delivered'),
(4, 'Cancelled'),
(5, 'Deleted');

-- --------------------------------------------------------

--
-- Table structure for table `ref_outcome_codes`
--

CREATE TABLE `ref_outcome_codes` (
  `outcome_code` varchar(16) NOT NULL,
  `outcome_description` enum('No Response','Order Obtained') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ref_payment_methods`
--

CREATE TABLE `ref_payment_methods` (
  `payment_method_code` int(5) NOT NULL,
  `payment_method_description` text NOT NULL,
  `payment_status` enum('active','disabled') NOT NULL DEFAULT 'active',
  `fa_icon` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ref_payment_methods`
--

INSERT INTO `ref_payment_methods` (`payment_method_code`, `payment_method_description`, `payment_status`, `fa_icon`) VALUES
(1, 'Airtel Money', 'disabled', ''),
(2, 'Pay Pal', 'active', '&#xf1f4;'),
(3, 'Visa', 'disabled', '&#xf1f0;'),
(4, 'TNM Mpamba', 'disabled', ''),
(5, 'Bitcoin', 'disabled', '&#xf15a;'),
(6, 'Master Card', 'disabled', '&#xf1f1;');

-- --------------------------------------------------------

--
-- Table structure for table `ref_premises_type`
--

CREATE TABLE `ref_premises_type` (
  `premises_type_code` varchar(16) NOT NULL,
  `premise_types_description` enum('Offices','Residence','Warehouse') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ref_products_specs`
--

CREATE TABLE `ref_products_specs` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `organic` tinyint(1) NOT NULL DEFAULT 0,
  `processed` tinyint(1) NOT NULL DEFAULT 0,
  `dried` tinyint(1) NOT NULL DEFAULT 0,
  `fresh` tinyint(1) NOT NULL DEFAULT 0,
  `fair_trade` tinyint(1) NOT NULL DEFAULT 0,
  `afctfa` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ref_product_categories`
--

CREATE TABLE `ref_product_categories` (
  `product_category_code` varchar(16) NOT NULL,
  `product_category_description` text NOT NULL,
  `product_category_icon` varchar(55) NOT NULL DEFAULT 'fa-fish'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ref_product_categories`
--

INSERT INTO `ref_product_categories` (`product_category_code`, `product_category_description`, `product_category_icon`) VALUES
('1', 'Fruits', 'fa-apple-alt'),
('10', 'Super Foods', 'fa-lemon'),
('11', 'Oil Seeds', 'fa-bottle-water'),
('12', 'Animal Products', 'fa-cheese'),
('13', 'Poultry Products', 'fa-egg'),
('14', 'Processed Foods', 'fa-jar'),
('15', 'inputs', 'fa-bag-seedling'),
('16', 'Spices & Herbs', 'fa-pepper-hot'),
('17', 'Chemicals', 'fa-fish'),
('18', 'Tools', 'fa-fish'),
('19', 'Fertilizers', 'fa-fish'),
('2', 'Vegetables', 'fa-carrot'),
('20', 'Equipment', 'fa-fish'),
('21', 'Farm Land', 'fa-fish'),
('22', 'Other', 'fa-fish'),
('3', 'Pulses & Legumes', 'fa-seedling'),
('4', 'Grain', 'fa-wheat-awn'),
('5', 'Wild Game', 'fa-leaf'),
('6', 'Livestock', 'fa-cow'),
('7', 'Dairy Products', 'fa-cheese'),
('8', 'Fish & Sea Food', 'fa-fish-fins'),
('9', 'Forest Products', 'fa-fish');

-- --------------------------------------------------------

--
-- Table structure for table `ref_quantities`
--

CREATE TABLE `ref_quantities` (
  `id` int(255) NOT NULL,
  `unit_of_quantity` varchar(255) NOT NULL,
  `quantity_symbol` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ref_quantities`
--

INSERT INTO `ref_quantities` (`id`, `unit_of_quantity`, `quantity_symbol`) VALUES
(1, 'Kilogram', 'KG'),
(2, 'Metric Tons', 'MT'),
(3, 'Boxes', 'BOXS'),
(4, 'Pieces', 'PIECES'),
(5, 'Litres', 'LTRS'),
(6, 'Pallet', 'PALLETS'),
(7, 'Crates', 'CRATES'),
(8, 'Bushel', 'BUSHELS');

-- --------------------------------------------------------

--
-- Table structure for table `ref_shipping_methods`
--

CREATE TABLE `ref_shipping_methods` (
  `shipping_method_code` varchar(16) NOT NULL,
  `shipping_method_description` set('Road Freight','Air Freight','Sea Freight','MilimonTime','Air Cargo') NOT NULL,
  `shipping_charges` decimal(16,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ref_shipping_methods`
--

INSERT INTO `ref_shipping_methods` (`shipping_method_code`, `shipping_method_description`, `shipping_charges`) VALUES
('01', 'Road Freight', 1500),
('02', 'Air Freight', 1750),
('03', 'Sea Freight', 1800),
('04', 'MilimonTime', 1700),
('05', 'Air Cargo', 400);

-- --------------------------------------------------------

--
-- Table structure for table `ref_supplier_settings`
--

CREATE TABLE `ref_supplier_settings` (
  `id` int(11) NOT NULL,
  `supplier_id` int(50) NOT NULL,
  `contact_person` text NOT NULL,
  `cover_image_url` varchar(200) NOT NULL,
  `logo_image_url` varchar(200) NOT NULL DEFAULT 'default.png',
  `supplier_product_count` int(50) NOT NULL DEFAULT 0,
  `certificate_image_url` varchar(200) NOT NULL,
  `language` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ref_supplier_settings`
--

INSERT INTO `ref_supplier_settings` (`id`, `supplier_id`, `contact_person`, `cover_image_url`, `logo_image_url`, `supplier_product_count`, `certificate_image_url`, `language`) VALUES
(1, 1, 'Lucy Mwanachi', 'pagasis.jpg', 'logobrand.png', 10, 'cert.png', 'English'),
(2, 3, 'Lameck', 'manolo.png', 'logo.jpg', 5, 'cert.png', 'dutch'),
(3, 2, 'Solomon', 'nthimba.png', 'df.png', 17, 'cert.pmng', 'Chichewa'),
(4, 4, 'wanagwa gondwe', 'ntchisi.png', 'logo.png', 2, 'certi.jpg', 'Portugues'),
(5, 5, 'Elizabeth', 'singini.png', 'usingini.png', 3, 'cert.jpg', 'Swahili'),
(6, 6, 'Lusungu', 'kwithu.jpg', 'kwithu.jpg', 6, 'cert.png', 'English'),
(7, 7, 'Godfrey Mfiti', 'betterlife.jpg', 'betterlife.jpg', 8, 'cert.jpg', 'English'),
(8, 8, 'Barros Mweso', 'welros.png', 'default.png', 4, 'cert.png', 'English'),
(9, 9, 'Mickeson Mbwana', 'perisha.png', 'default.png', 10, 'cert.png', 'English');

-- --------------------------------------------------------

--
-- Table structure for table `settings_cookies`
--

CREATE TABLE `settings_cookies` (
  `cookie_id` int(10) NOT NULL,
  `currency` enum('USD','MWK','R') DEFAULT 'USD',
  `user_id` varchar(50) DEFAULT NULL,
  `cookie_user_id` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settings_cookies`
--

INSERT INTO `settings_cookies` (`cookie_id`, `currency`, `user_id`, `cookie_user_id`) VALUES
(-1, 'MWK', '-1', '-1'),
(11, 'R', '21', '21'),
(12, 'USD', '22', '22'),
(13, 'USD', '23', NULL),
(14, 'USD', '24', '24'),
(15, 'R', '29', '29'),
(16, 'USD', '30', '30'),
(17, 'USD', '32', '32'),
(18, 'USD', '33', '33'),
(19, 'R', '34', '34'),
(20, 'USD', '35', '35'),
(21, 'USD', '36', '36'),
(22, 'USD', '37', '37'),
(23, 'MWK', '38', '38'),
(24, 'USD', '39', '39'),
(25, 'USD', '40', '40'),
(26, 'USD', '41', '41'),
(27, 'USD', '42', '42'),
(28, 'USD', '43', '43'),
(29, 'USD', '44', '44'),
(30, 'USD', '45', '45'),
(31, 'USD', '46', '46'),
(32, 'USD', '47', '47'),
(33, 'USD', '48', '48');

-- --------------------------------------------------------

--
-- Table structure for table `socialmedia_share`
--

CREATE TABLE `socialmedia_share` (
  `socialmedia_id` int(5) NOT NULL,
  `socialmedia_name` varchar(100) DEFAULT NULL,
  `socialmedia_icon` varchar(10) DEFAULT NULL,
  `socialmedia_link` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `socialmedia_share`
--

INSERT INTO `socialmedia_share` (`socialmedia_id`, `socialmedia_name`, `socialmedia_icon`, `socialmedia_link`) VALUES
(1, 'Facebook', 'fa fa-face', 'https://facebook.com/sharer.php?u='),
(2, 'Twitter', 'fa fa-twit', 'https://twitter.com/intent/tweet?text='),
(3, 'WhatsApp', 'fa fa-what', 'https://wa.me?text=');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `supplier_id` int(50) NOT NULL,
  `supplier_category_code` varchar(50) NOT NULL,
  `supplier_name` text NOT NULL,
  `supplier_password` varchar(255) NOT NULL,
  `supplier_description` text NOT NULL,
  `supplier_country_code` int(5) NOT NULL,
  `supplier_email` varchar(100) NOT NULL,
  `supplier_phone` varchar(16) NOT NULL,
  `supplier_reg_date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`supplier_id`, `supplier_category_code`, `supplier_name`, `supplier_password`, `supplier_description`, `supplier_country_code`, `supplier_email`, `supplier_phone`, `supplier_reg_date`) VALUES
(1, '3', 'Food Empire Limited', '', 'We produce high quality rice. We are based in Malawi.', 1, 'info@foodempire.com', '265997698245', '2023-07-12'),
(2, '2', 'Nthimba Harvests', 'kjshqhd87q', 'A food processor from Kasungu Malawi', 1, '', '265997698675', '2023-07-12'),
(3, '2', 'Manolo Honey', 'sdufisugspdnmvm', 'Manolo is a honey producer based in Mzimba, Malawi.', 2, 'manolo@gmail.com', '26599769657', '2023-07-13'),
(4, '2', 'Ntchisi East Coffee Cooperative', 'yudgy fhrefui', 'Coffee farming cooperative in Malawi.', 2, 'wanagondwe@gmail.com', '265997698456', '2023-07-13'),
(5, '2', 'Usingini Coffee', 'hkchsyvmsdiik', 'Coffee Roaster in Malawi', 3, 'usingini@gmail.com', '265997698245', '2023-07-13'),
(6, '2', 'Kwithu Kitchen', 'geuiejblfrkp', 'Food Processor from northen Malawi', 6, 'kwithu@gmail.com', '26599769999', '2023-07-13'),
(7, '2', 'BetterLife Herbal Products', 'fdyutuidw', 'Herbal processor based in Malawi', 3, 'betterlife@gmail.com', '265997698999', '2023-07-13'),
(8, '2', 'Welros Enterprise Limited', 'yuyoseypfiu', 'Based in Kalonga, Welros aggregates produce from local farmers and cooperatives. They are a supplier and processor of Kilombero Rice, Honey and many more', 3, 'welros@gmail.com', '265997698266', '2023-07-14'),
(9, '2', 'Perisha Agro & Packaging Enterprise', 'URIERWTIWUGO', 'Food Processing company based in Lilongwe, Malawi.', 8, 'info@nasfarm.mw', '26599769387', '2023-07-14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adverts`
--
ALTER TABLE `adverts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ad_type` (`ad_type`);

--
-- Indexes for table `ad_clicks`
--
ALTER TABLE `ad_clicks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auction_bids`
--
ALTER TABLE `auction_bids`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oct_product_id` (`product_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `auction_products`
--
ALTER TABLE `auction_products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `Origin` (`product_origin`);

--
-- Indexes for table `big_data`
--
ALTER TABLE `big_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `customer_email` (`customer_email`),
  ADD KEY `payment_method_code` (`payment_method_code`);

--
-- Indexes for table `customer_addresses`
--
ALTER TABLE `customer_addresses`
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `premise_id` (`premise_id`),
  ADD KEY `address_type_code` (`address_type_code`);

--
-- Indexes for table `customer_orders`
--
ALTER TABLE `customer_orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `order_status_code` (`order_status_code`),
  ADD KEY `shipping_method_code` (`shipping_method_code`),
  ADD KEY `payment_method_code` (`payment_method_code`);

--
-- Indexes for table `mailshot_campaigns`
--
ALTER TABLE `mailshot_campaigns`
  ADD PRIMARY KEY (`mailshot_id`);

--
-- Indexes for table `mailshot_customers`
--
ALTER TABLE `mailshot_customers`
  ADD KEY `mailshot_id` (`mailshot_id`),
  ADD KEY `outcome_code` (`outcome_code`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `premises`
--
ALTER TABLE `premises`
  ADD PRIMARY KEY (`premise_id`),
  ADD KEY `premises_type_code` (`premises_type_code`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `product_category_code` (`product_category_code`),
  ADD KEY `product_country_id` (`product_country_id`);

--
-- Indexes for table `product_inquiries`
--
ALTER TABLE `product_inquiries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_showcase`
--
ALTER TABLE `product_showcase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_offers`
--
ALTER TABLE `purchase_offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `refund_requests`
--
ALTER TABLE `refund_requests`
  ADD PRIMARY KEY (`refund_id`);

--
-- Indexes for table `ref_address_types`
--
ALTER TABLE `ref_address_types`
  ADD PRIMARY KEY (`address_type_code`);

--
-- Indexes for table `ref_ad_type`
--
ALTER TABLE `ref_ad_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ref_auction_categories`
--
ALTER TABLE `ref_auction_categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `ref_countries`
--
ALTER TABLE `ref_countries`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `ref_order_item_status`
--
ALTER TABLE `ref_order_item_status`
  ADD PRIMARY KEY (`order_item_status_code`);

--
-- Indexes for table `ref_order_status`
--
ALTER TABLE `ref_order_status`
  ADD PRIMARY KEY (`order_status_code`);

--
-- Indexes for table `ref_outcome_codes`
--
ALTER TABLE `ref_outcome_codes`
  ADD PRIMARY KEY (`outcome_code`);

--
-- Indexes for table `ref_payment_methods`
--
ALTER TABLE `ref_payment_methods`
  ADD PRIMARY KEY (`payment_method_code`);

--
-- Indexes for table `ref_premises_type`
--
ALTER TABLE `ref_premises_type`
  ADD PRIMARY KEY (`premises_type_code`);

--
-- Indexes for table `ref_products_specs`
--
ALTER TABLE `ref_products_specs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `ref_product_categories`
--
ALTER TABLE `ref_product_categories`
  ADD PRIMARY KEY (`product_category_code`);

--
-- Indexes for table `ref_quantities`
--
ALTER TABLE `ref_quantities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ref_shipping_methods`
--
ALTER TABLE `ref_shipping_methods`
  ADD PRIMARY KEY (`shipping_method_code`);

--
-- Indexes for table `ref_supplier_settings`
--
ALTER TABLE `ref_supplier_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `settings_cookies`
--
ALTER TABLE `settings_cookies`
  ADD PRIMARY KEY (`cookie_id`);

--
-- Indexes for table `socialmedia_share`
--
ALTER TABLE `socialmedia_share`
  ADD PRIMARY KEY (`socialmedia_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`supplier_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adverts`
--
ALTER TABLE `adverts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ad_clicks`
--
ALTER TABLE `ad_clicks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `auction_bids`
--
ALTER TABLE `auction_bids`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `auction_products`
--
ALTER TABLE `auction_products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `customer_orders`
--
ALTER TABLE `customer_orders`
  MODIFY `order_id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `mailshot_campaigns`
--
ALTER TABLE `mailshot_campaigns`
  MODIFY `mailshot_id` int(16) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `item_id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `product_inquiries`
--
ALTER TABLE `product_inquiries`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_showcase`
--
ALTER TABLE `product_showcase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `purchase_offers`
--
ALTER TABLE `purchase_offers`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `refund_requests`
--
ALTER TABLE `refund_requests`
  MODIFY `refund_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ref_auction_categories`
--
ALTER TABLE `ref_auction_categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ref_countries`
--
ALTER TABLE `ref_countries`
  MODIFY `country_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `ref_order_status`
--
ALTER TABLE `ref_order_status`
  MODIFY `order_status_code` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ref_payment_methods`
--
ALTER TABLE `ref_payment_methods`
  MODIFY `payment_method_code` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ref_quantities`
--
ALTER TABLE `ref_quantities`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ref_supplier_settings`
--
ALTER TABLE `ref_supplier_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `settings_cookies`
--
ALTER TABLE `settings_cookies`
  MODIFY `cookie_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `socialmedia_share`
--
ALTER TABLE `socialmedia_share`
  MODIFY `socialmedia_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `supplier_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `adverts`
--
ALTER TABLE `adverts`
  ADD CONSTRAINT `adverts_ibfk_1` FOREIGN KEY (`ad_type`) REFERENCES `ref_ad_type` (`id`);

--
-- Constraints for table `auction_products`
--
ALTER TABLE `auction_products`
  ADD CONSTRAINT `auction_products_ibfk_1` FOREIGN KEY (`product_origin`) REFERENCES `ref_countries` (`country_id`);

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_ibfk_1` FOREIGN KEY (`payment_method_code`) REFERENCES `ref_payment_methods` (`payment_method_code`);

--
-- Constraints for table `customer_addresses`
--
ALTER TABLE `customer_addresses`
  ADD CONSTRAINT `customer_addresses_ibfk_2` FOREIGN KEY (`premise_id`) REFERENCES `premises` (`premise_id`),
  ADD CONSTRAINT `customer_addresses_ibfk_3` FOREIGN KEY (`address_type_code`) REFERENCES `ref_address_types` (`address_type_code`);

--
-- Constraints for table `customer_orders`
--
ALTER TABLE `customer_orders`
  ADD CONSTRAINT `customer_orders_ibfk_4` FOREIGN KEY (`shipping_method_code`) REFERENCES `ref_shipping_methods` (`shipping_method_code`),
  ADD CONSTRAINT `customer_orders_ibfk_5` FOREIGN KEY (`order_status_code`) REFERENCES `ref_order_status` (`order_status_code`),
  ADD CONSTRAINT `customer_orders_ibfk_6` FOREIGN KEY (`payment_method_code`) REFERENCES `ref_payment_methods` (`payment_method_code`);

--
-- Constraints for table `mailshot_customers`
--
ALTER TABLE `mailshot_customers`
  ADD CONSTRAINT `mailshot_customers_ibfk_2` FOREIGN KEY (`outcome_code`) REFERENCES `ref_outcome_codes` (`outcome_code`);

--
-- Constraints for table `premises`
--
ALTER TABLE `premises`
  ADD CONSTRAINT `premises_ibfk_1` FOREIGN KEY (`premises_type_code`) REFERENCES `ref_premises_type` (`premises_type_code`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`product_category_code`) REFERENCES `ref_product_categories` (`product_category_code`),
  ADD CONSTRAINT `products_ibfk_3` FOREIGN KEY (`product_country_id`) REFERENCES `ref_countries` (`country_id`);

--
-- Constraints for table `ref_outcome_codes`
--
ALTER TABLE `ref_outcome_codes`
  ADD CONSTRAINT `ref_outcome_codes_ibfk_1` FOREIGN KEY (`outcome_code`) REFERENCES `mailshot_customers` (`outcome_code`);

--
-- Constraints for table `ref_premises_type`
--
ALTER TABLE `ref_premises_type`
  ADD CONSTRAINT `ref_premises_type_ibfk_1` FOREIGN KEY (`premises_type_code`) REFERENCES `premises` (`premises_type_code`);

--
-- Constraints for table `ref_products_specs`
--
ALTER TABLE `ref_products_specs`
  ADD CONSTRAINT `ref_products_specs_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
