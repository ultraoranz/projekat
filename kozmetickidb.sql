-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2018 at 10:33 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kozmetickidb`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrator`
--

CREATE TABLE `administrator` (
  `administrator_id` int(11) UNSIGNED NOT NULL,
  `email` varchar(64) COLLATE utf8_bin NOT NULL,
  `password_hash` varchar(128) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

--
-- Dumping data for table `administrator`
--

INSERT INTO `administrator` (`administrator_id`, `email`, `password_hash`) VALUES
(1, 'jovan.test@gmail.com', 'e13efc991a9bf44bbb4da87cdbb725240184585ccaf270523170e008cf2a3b85f45f86c3da647f69780fb9e971caf5437b3d06d418355a68c9760c70a31d05c7'),
(2, 'marko.miseljic.14@singimail.rs', 'e13efc991a9bf44bbb4da87cdbb725240184585ccaf270523170e008cf2a3b85f45f86c3da647f69780fb9e971caf5437b3d06d418355a68c9760c70a31d05c7'),
(3, 'misko309@gmail.com', 'e13efc991a9bf44bbb4da87cdbb725240184585ccaf270523170e008cf2a3b85f45f86c3da647f69780fb9e971caf5437b3d06d418355a68c9760c70a31d05c7'),
(4, 'marko.miseljic.14@gmail.com', 'e13efc991a9bf44bbb4da87cdbb725240184585ccaf270523170e008cf2a3b85f45f86c3da647f69780fb9e971caf5437b3d06d418355a68c9760c70a31d05c7'),
(5, 'simic.n@gmail.com', 'adminadmin123'),
(6, 'alexandar.test@gmail.com', '12345'),
(8, 'test.test@gmail.com', 'sifra123'),
(9, 'jovan.jovic@gmail.com', '345678');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(22) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `session_number` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `created_at`, `session_number`) VALUES
(477, '2018-08-27 18:45:34', 'OYtj2vEsUvrZfNu19pFzna4p6YcPtt38'),
(488, '2018-08-27 22:48:29', '8uD5iwXE9zG9bmRA3vApOFtGj4zMK3K5'),
(489, '2018-08-28 22:01:29', 'kY7ISg6PA78MOJqPF7W29q8cD0jqbMWL'),
(490, '2018-08-30 22:26:21', 'RvBQa9KcMmQz9y864poMADBmyk7NbL4Q');

-- --------------------------------------------------------

--
-- Table structure for table `cart_model`
--

CREATE TABLE `cart_model` (
  `cart_model_id` int(11) UNSIGNED NOT NULL,
  `added_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `price` decimal(10,2) UNSIGNED NOT NULL,
  `cart_id` int(11) UNSIGNED NOT NULL,
  `model_id` int(11) UNSIGNED NOT NULL,
  `price_beauty` decimal(10,2) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

--
-- Dumping data for table `cart_model`
--

INSERT INTO `cart_model` (`cart_model_id`, `added_at`, `price`, `cart_id`, `model_id`, `price_beauty`) VALUES
(1, '2018-04-29 11:46:43', '1800.00', 1, 1, '200.00'),
(20, '2018-06-02 11:21:00', '3025.00', 411, 4, '150.00'),
(21, '2018-06-02 11:21:56', '18910.00', 411, 29, '0.00'),
(22, '2018-06-02 11:23:01', '3025.00', 414, 33, '0.00'),
(23, '2018-06-02 12:28:35', '2025.00', 411, 33, '0.00'),
(24, '2018-06-02 12:31:16', '3025.00', 416, 33, '0.00'),
(25, '2018-06-02 12:53:07', '3025.00', 411, 33, '0.00'),
(26, '2018-06-02 12:54:18', '17205.00', 411, 4, '0.00'),
(27, '2018-06-02 12:55:53', '3025.00', 419, 33, '0.00'),
(28, '2018-06-02 12:56:09', '3025.00', 419, 36, '0.00'),
(29, '2018-06-02 16:16:48', '3025.00', 421, 33, '0.00'),
(30, '2018-06-02 16:17:34', '18300.00', 422, 35, '0.00'),
(31, '2018-06-02 16:18:20', '17400.00', 422, 35, '0.00'),
(32, '2018-06-02 16:21:33', '3025.00', 421, 33, '0.00'),
(33, '2018-06-02 16:22:10', '2860.00', 422, 36, '0.00'),
(34, '2018-06-02 18:47:08', '3025.00', 426, 33, '0.00'),
(35, '2018-06-02 19:06:36', '22078.00', 426, 35, '0.00'),
(36, '2018-06-03 01:26:41', '3000.00', 427, 33, '0.00'),
(37, '2018-06-03 01:58:34', '3025.00', 427, 34, '0.00'),
(38, '2018-06-03 01:58:51', '3025.00', 427, 34, '0.00'),
(39, '2018-06-03 01:59:12', '20252.00', 430, 31, '0.00'),
(40, '2018-06-03 01:59:34', '3025.00', 430, 36, '0.00'),
(41, '2018-06-04 11:47:30', '3025.00', 431, 33, '0.00'),
(42, '2018-06-04 18:21:49', '3025.00', 433, 33, '0.00'),
(43, '2018-06-04 18:22:06', '3025.00', 433, 33, '0.00'),
(46, '2018-06-05 19:48:16', '3025.00', 436, 33, '0.00'),
(47, '2018-06-05 19:57:29', '18600.00', 436, 35, '0.00'),
(48, '2018-06-05 19:57:40', '24000.00', 436, 35, '0.00'),
(49, '2018-06-06 08:33:59', '3025.00', 441, 33, '0.00'),
(50, '2018-06-06 08:34:12', '3025.00', 441, 33, '0.00'),
(51, '2018-06-06 08:34:14', '3025.00', 441, 33, '0.00'),
(52, '2018-06-06 09:30:38', '3025.00', 441, 33, '30250.00'),
(53, '2018-06-07 07:41:36', '3025.00', 442, 33, '30250.00'),
(54, '2018-06-07 07:41:41', '3025.00', 442, 33, '30250.00'),
(55, '2018-06-07 07:41:47', '4225.00', 442, 33, '42250.00'),
(56, '2018-06-07 07:43:18', '4225.00', 442, 33, '42250.00'),
(57, '2018-06-08 08:45:00', '3025.00', 446, 33, '30250.00'),
(58, '2018-06-08 08:45:04', '3025.00', 446, 33, '30250.00'),
(59, '2018-06-08 08:45:06', '3025.00', 446, 33, '30250.00'),
(60, '2018-06-08 08:45:31', '6000.00', 449, 37, '108000.00'),
(61, '2018-06-08 08:45:36', '6000.00', 449, 37, '108000.00'),
(62, '2018-06-08 08:45:38', '6000.00', 449, 37, '108000.00'),
(63, '2018-06-08 08:45:51', '3025.00', 452, 33, '30250.00'),
(64, '2018-06-08 08:46:10', '3025.00', 452, 33, '30250.00'),
(65, '2018-06-08 08:46:16', '3025.00', 452, 33, '30250.00'),
(66, '2018-06-08 08:46:58', '3025.00', 455, 33, '30250.00'),
(67, '2018-06-08 08:47:17', '20615.00', 456, 18, '247380.00'),
(68, '2018-06-08 08:47:48', '3025.00', 455, 33, '30250.00'),
(69, '2018-06-08 08:48:06', '2025.00', 455, 33, '20250.00'),
(70, '2018-06-08 08:48:10', '2025.00', 455, 33, '20250.00'),
(71, '2018-06-18 19:03:14', '3025.00', 457, 33, '30250.00'),
(72, '2018-06-19 08:02:09', '3025.00', 458, 33, '30250.00'),
(73, '2018-06-19 08:02:23', '3025.00', 458, 33, '30250.00'),
(74, '2018-06-19 08:02:29', '2025.00', 458, 33, '20250.00'),
(75, '2018-06-19 08:03:22', '1575.00', 458, 77, '31500.00'),
(76, '2018-06-19 08:03:51', '3025.00', 462, 33, '30250.00'),
(77, '2018-06-19 08:04:29', '3025.00', 463, 33, '30250.00'),
(78, '2018-06-19 08:07:47', '2025.00', 464, 33, '20250.00'),
(79, '2018-06-19 08:08:09', '6000.00', 464, 37, '108000.00'),
(80, '2018-06-19 08:11:03', '3025.00', 462, 33, '30250.00'),
(85, '2018-06-20 05:55:07', '3025.00', 471, 33, '30250.00'),
(86, '2018-06-20 20:34:41', '3025.00', 472, 33, '30250.00'),
(87, '2018-06-20 20:34:54', '2025.00', 472, 77, '40500.00'),
(88, '2018-06-20 20:35:08', '18910.00', 472, 6, '264740.00'),
(89, '2018-06-21 06:04:22', '2025.00', 475, 33, '20250.00'),
(90, '2018-06-21 06:04:36', '2700.00', 475, 77, '54000.00'),
(91, '2018-07-03 15:18:26', '9000.00', 476, 47, '189000.00'),
(92, '2018-08-27 18:45:34', '0.00', 477, 3, '0.00'),
(93, '2018-08-27 18:46:51', '0.00', 477, 3, '0.00'),
(94, '2018-08-27 19:48:50', '0.00', 477, 1, '0.00'),
(95, '2018-08-27 22:48:29', '0.00', 488, 1, '0.00'),
(96, '2018-08-27 22:48:55', '0.00', 488, 1, '0.00'),
(97, '2018-08-27 22:51:32', '0.00', 488, 2, '0.00'),
(98, '2018-08-27 22:57:04', '0.00', 488, 1, '0.00'),
(99, '2018-08-27 22:59:04', '0.00', 488, 1, '0.00'),
(100, '2018-08-27 22:59:12', '0.00', 488, 1, '0.00'),
(101, '2018-08-27 22:59:25', '0.00', 488, 1, '0.00'),
(102, '2018-08-27 23:11:09', '0.00', 488, 1, '0.00'),
(103, '2018-08-27 23:14:38', '0.00', 488, 1, '0.00'),
(104, '2018-08-27 23:15:28', '0.00', 488, 1, '0.00'),
(105, '2018-08-27 23:15:59', '0.00', 488, 1, '0.00'),
(106, '2018-08-27 23:36:12', '0.00', 488, 1, '0.00'),
(107, '2018-08-27 23:37:46', '0.00', 488, 1, '0.00'),
(108, '2018-08-27 23:38:45', '0.00', 488, 1, '0.00'),
(109, '2018-08-27 23:38:57', '0.00', 488, 1, '0.00'),
(110, '2018-08-28 22:01:29', '0.00', 489, 3, '0.00'),
(111, '2018-08-28 22:16:41', '0.00', 489, 1, '0.00'),
(112, '2018-08-28 22:16:41', '0.00', 489, 1, '0.00'),
(113, '2018-08-30 22:26:21', '0.00', 490, 1, '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) UNSIGNED NOT NULL,
  `name` varchar(64) COLLATE utf8_bin NOT NULL,
  `picture` varchar(255) COLLATE utf8_bin NOT NULL,
  `description` text COLLATE utf8_bin NOT NULL,
  `administrator_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `name`, `picture`, `description`, `administrator_id`) VALUES
(1, 'Usluge', 'assets/images/spa1.jpg', 'Tretman za sva starosna doba. Predstavlja tretman dubinskog čišćenja i hidratacije suve i dehidrirane kože. Održavanje mladolike i zdrave kože. Pomaže obnavljanju  edpiderma i derma kao i hidrolipidnog filma. Dejstvo tretmana: Antioksidativno, podmlađujuće dejstvo, sprečava pojavu crvenila i smanjuje hipersenzitivnost. Može se raditi i kao tretman kože pre izlaganja suncu i tretman kože izgorele od sunca. Tretman obuhvata dubinsko čišćenje lica, piling, serum, masažu, kremu i masku.', 5),
(2, 'Proizvodi', 'assets/images/spa2.jpg', 'Tretman za sve tipove kože i sva starosna doba. Predstavlja izvrstan tretman koji zateže i oblikuje zonu oko očiju, ublažava mimične bore i poboljšava cirkulaciju krvi u koži kapaka.  Tretman obuhvata dubinsko čišćenje lica, piling, serum, masažu, kremu i masku.', 3);

-- --------------------------------------------------------

--
-- Table structure for table `manufacturer`
--

CREATE TABLE `manufacturer` (
  `manufacturer_id` int(11) UNSIGNED NOT NULL,
  `name` varchar(64) COLLATE utf8_bin NOT NULL,
  `administrator_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

--
-- Dumping data for table `manufacturer`
--

INSERT INTO `manufacturer` (`manufacturer_id`, `name`, `administrator_id`) VALUES
(1, 'Avon', 8),
(2, 'Limes', 8),
(3, 'Nivea', 8),
(4, 'Gilete', 8),
(5, 'Flormar', 8),
(6, 'Gucci', 8);

-- --------------------------------------------------------

--
-- Table structure for table `model`
--

CREATE TABLE `model` (
  `model_id` int(11) UNSIGNED NOT NULL,
  `name` varchar(64) COLLATE utf8_bin NOT NULL,
  `administrator_id` int(11) UNSIGNED NOT NULL,
  `picture` varchar(255) COLLATE utf8_bin NOT NULL,
  `profile_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

--
-- Dumping data for table `model`
--

INSERT INTO `model` (`model_id`, `name`, `administrator_id`, `picture`, `profile_id`) VALUES
(1, 'Manikir i gel lak', 9, 'assets/images/models/pp1.jpg', 1),
(2, 'Estetski pedikir', 8, 'assets/images/models/pp2.jpg', 1),
(3, 'Medicinski pedikir', 5, 'assets/images/models/pp3.jpg', 1),
(4, 'Japanski manikir', 8, 'assets/images/models/pp4.jpg', 1),
(6, 'Depilacija celih nogu za dame', 6, 'assets/images/models/pp5.jpg', 2),
(7, 'Nadogradnja svilenih trepavica', 3, 'assets/images/models/pp6.png', 2),
(8, 'Usluga salona', 6, 'assets/images/models/pp8.jpg', 2),
(10, 'Usluga salona 2', 1, 'assets/images/models/pp9.jpg', 2),
(77, 'Kozmetički salon', 2, 'assets/images/models/pp7.jpg', 2);

-- --------------------------------------------------------

--
-- Table structure for table `model_view`
--

CREATE TABLE `model_view` (
  `model_view_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `model_id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(24) COLLATE utf8_bin NOT NULL,
  `user_agent` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

--
-- Dumping data for table `model_view`
--

INSERT INTO `model_view` (`model_view_id`, `created_at`, `model_id`, `ip_address`, `user_agent`) VALUES
(366, '2018-08-27 15:36:34', 1, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36'),
(367, '2018-08-27 15:48:46', 1, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36'),
(368, '2018-08-27 16:06:13', 3, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36'),
(369, '2018-08-27 18:15:03', 1, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36'),
(370, '2018-08-27 18:25:35', 1, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36'),
(371, '2018-08-27 18:39:17', 3, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36'),
(372, '2018-08-27 19:39:18', 2, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36'),
(373, '2018-08-27 19:48:06', 1, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36'),
(374, '2018-08-27 19:58:36', 1, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36'),
(375, '2018-08-27 22:11:07', 1, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36'),
(376, '2018-08-27 22:11:11', 2, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36'),
(377, '2018-08-27 22:12:51', 6, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36'),
(378, '2018-08-27 22:47:45', 1, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36'),
(379, '2018-08-27 22:48:09', 1, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36'),
(380, '2018-08-27 22:51:27', 2, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36'),
(381, '2018-08-27 22:56:59', 1, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36'),
(382, '2018-08-27 23:11:04', 1, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36'),
(383, '2018-08-27 23:14:33', 1, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36'),
(384, '2018-08-27 23:15:23', 1, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36'),
(385, '2018-08-27 23:37:41', 1, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36'),
(386, '2018-08-27 23:38:41', 1, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36'),
(387, '2018-08-28 22:01:24', 3, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36'),
(388, '2018-08-28 22:16:36', 1, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36'),
(389, '2018-08-30 22:26:16', 1, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36'),
(390, '2018-08-30 22:51:46', 1, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36');

-- --------------------------------------------------------

--
-- Table structure for table `order_cart`
--

CREATE TABLE `order_cart` (
  `order_cart_id` int(11) UNSIGNED NOT NULL,
  `forename` varchar(64) COLLATE utf8_bin NOT NULL,
  `surname` varchar(64) COLLATE utf8_bin NOT NULL,
  `residential_address` varchar(255) COLLATE utf8_bin NOT NULL,
  `email` varchar(255) COLLATE utf8_bin NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cart_id` int(11) UNSIGNED NOT NULL,
  `state` enum('u obradi','odbijena','odobrena') CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'u obradi'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

--
-- Dumping data for table `order_cart`
--

INSERT INTO `order_cart` (`order_cart_id`, `forename`, `surname`, `residential_address`, `email`, `created_at`, `cart_id`, `state`) VALUES
(35, 'Marijana', 'Nikolic', 'Adresa', 'marijana.nikolic@gmail.com', '2018-08-21 06:15:40', 475, 'odbijena'),
(36, 'Aleksnadar', 'Nikolic', 'test Adresa', 'alexandar.nikolic@gmail.com', '2018-08-27 19:35:50', 477, 'odbijena');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `profile_id` int(11) UNSIGNED NOT NULL,
  `name` varchar(64) COLLATE utf8_bin NOT NULL,
  `picture` varchar(255) COLLATE utf8_bin NOT NULL,
  `description` text COLLATE utf8_bin NOT NULL,
  `administrator_id` int(11) UNSIGNED NOT NULL,
  `category_id` int(11) UNSIGNED NOT NULL,
  `manufacturer_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`profile_id`, `name`, `picture`, `description`, `administrator_id`, `category_id`, `manufacturer_id`) VALUES
(1, 'Manikir + gel lak', 'assets/images/proizvod1.jpg', 'Ako Vam je dosadilo da svakih nekoliko dana \"mackate\" nokte zato što je Vaš lak ispucao ili se oljuštio, savetujemo Vam da svoje noktiće počastite OPI gel lakom! Zakažite svoj termin u našem salonu, i dozvolite nam da se pobrinemo za Vaše nokte.', 5, 1, 1),
(2, 'Estetski pedikir + lakiranje noktiju', 'assets/images/pr2.jpg', 'Želite da vaša stopala izgledaju uvek zdravo i negovano? Preporučujemo vam da im priuštite specijalnu negu bar jednom mesečno!', 6, 1, 2),
(3, 'Depilacija voskom za dame', 'assets/images/pr3.jpg', 'Umorila Vas je konstantna borba za glatke noge? Shvatili ste da svakodnevna upotreba brijača i nije najbolje rešenje? Onda se nalazite na pravom mestu. Depilacija hladnim voskom predstavlja efikasno rešenje u borbi iz koje ćete izaći kao pobednik - čak i najtanje dlačice biće uklonjenje sigurnim potezima našeg stručnog osoblja, a meka i glatka koža pratiće Vas i naredne tri nedelje.', 6, 1, 1),
(4, 'Depilacija voskom za muškarce', 'assets/images/pr4.jpg', 'Zakažite svoj termin za depilaciju voskom u našem salonu, i neka se naše iskusne i vešte kozmetičarke pobrinu za vaš estetski problem. Nakon depilacije hladnim voskom, vaše grudi će biti savršeno glatke najmanje tri nedelje. Redovnom depilacijom postiže se i proređivanje malja, kao i slabljenje njihovog korena.', 9, 1, 2),
(6, 'Obrve i trepavice', 'assets/images/pr5.jpg', '10 razloga zašto da svoj termin zakažete na SrediMe?\r\nrazlog br. 10: Zato što SrediMe radi samo sa proverenim, registrovanim i najboljim salonima u gradu!', 8, 1, 1),
(7, 'Top tretmani', 'assets/images/pr6.jpg', 'Pogledajte top ponude koje postavljamo svake nedelje.', 6, 1, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`administrator_id`) USING BTREE,
  ADD UNIQUE KEY `uq_administrator_email` (`email`) USING BTREE;

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`) USING BTREE,
  ADD UNIQUE KEY `uq_cart_session_number` (`session_number`) USING BTREE;

--
-- Indexes for table `cart_model`
--
ALTER TABLE `cart_model`
  ADD PRIMARY KEY (`cart_model_id`) USING BTREE,
  ADD KEY `fk_cart_model_cart_id` (`cart_id`) USING BTREE,
  ADD KEY `fk_cart_model_model_id` (`model_id`) USING BTREE;

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`) USING BTREE,
  ADD UNIQUE KEY `uq_category_name` (`name`) USING BTREE,
  ADD UNIQUE KEY `uq_category_picture` (`picture`) USING BTREE,
  ADD KEY `fk_category_administraotr_id` (`administrator_id`) USING BTREE;

--
-- Indexes for table `manufacturer`
--
ALTER TABLE `manufacturer`
  ADD PRIMARY KEY (`manufacturer_id`) USING BTREE,
  ADD UNIQUE KEY `uq_manufacturer_name` (`name`) USING BTREE,
  ADD KEY `fk_manufacturer_administrator_id` (`administrator_id`) USING BTREE;

--
-- Indexes for table `model`
--
ALTER TABLE `model`
  ADD PRIMARY KEY (`model_id`) USING BTREE,
  ADD UNIQUE KEY `uq_model_name` (`name`) USING BTREE,
  ADD UNIQUE KEY `uq_model_picture` (`picture`) USING BTREE,
  ADD KEY `fk_model_administrator_id` (`administrator_id`) USING BTREE,
  ADD KEY `fk_model_profile_id` (`profile_id`) USING BTREE;

--
-- Indexes for table `model_view`
--
ALTER TABLE `model_view`
  ADD PRIMARY KEY (`model_view_id`) USING BTREE,
  ADD KEY `fk_model_view_model_id` (`model_id`) USING BTREE,
  ADD KEY `model_view_ip_address_idx` (`ip_address`) USING BTREE;

--
-- Indexes for table `order_cart`
--
ALTER TABLE `order_cart`
  ADD PRIMARY KEY (`order_cart_id`) USING BTREE,
  ADD UNIQUE KEY `uq_order_cart_id` (`cart_id`) USING BTREE,
  ADD KEY `fk_order_cart_id` (`cart_id`) USING BTREE;

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`profile_id`) USING BTREE,
  ADD UNIQUE KEY `uq_profile_name` (`name`) USING BTREE,
  ADD UNIQUE KEY `uq_profile_picture` (`picture`) USING BTREE,
  ADD KEY `fk_profile_administrator_id` (`administrator_id`) USING BTREE,
  ADD KEY `fk_profile_category_id` (`category_id`) USING BTREE,
  ADD KEY `fk_profile_manufacturer_id` (`manufacturer_id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administrator`
--
ALTER TABLE `administrator`
  MODIFY `administrator_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(22) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=491;

--
-- AUTO_INCREMENT for table `cart_model`
--
ALTER TABLE `cart_model`
  MODIFY `cart_model_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `manufacturer`
--
ALTER TABLE `manufacturer`
  MODIFY `manufacturer_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `model`
--
ALTER TABLE `model`
  MODIFY `model_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `model_view`
--
ALTER TABLE `model_view`
  MODIFY `model_view_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=391;

--
-- AUTO_INCREMENT for table `order_cart`
--
ALTER TABLE `order_cart`
  MODIFY `order_cart_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `profile_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart_model`
--
ALTER TABLE `cart_model`
  ADD CONSTRAINT `fk_cart_model_cart_id` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`cart_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_cart_model_model_id` FOREIGN KEY (`model_id`) REFERENCES `model` (`model_id`) ON UPDATE CASCADE;

--
-- Constraints for table `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `fk_category_administraotr_id` FOREIGN KEY (`administrator_id`) REFERENCES `administrator` (`administrator_id`) ON DELETE CASCADE;

--
-- Constraints for table `manufacturer`
--
ALTER TABLE `manufacturer`
  ADD CONSTRAINT `fk_manufacturer_administrator_id` FOREIGN KEY (`administrator_id`) REFERENCES `administrator` (`administrator_id`) ON UPDATE CASCADE;

--
-- Constraints for table `model`
--
ALTER TABLE `model`
  ADD CONSTRAINT `fk_model_administrator_id` FOREIGN KEY (`administrator_id`) REFERENCES `administrator` (`administrator_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_model_profile_id` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`profile_id`) ON UPDATE CASCADE;

--
-- Constraints for table `model_view`
--
ALTER TABLE `model_view`
  ADD CONSTRAINT `fk_model_view_model_id` FOREIGN KEY (`model_id`) REFERENCES `model` (`model_id`) ON UPDATE CASCADE;

--
-- Constraints for table `order_cart`
--
ALTER TABLE `order_cart`
  ADD CONSTRAINT `fk_order_cart_id` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`cart_id`) ON UPDATE CASCADE;

--
-- Constraints for table `profile`
--
ALTER TABLE `profile`
  ADD CONSTRAINT `fk_profile_administrator_id` FOREIGN KEY (`administrator_id`) REFERENCES `administrator` (`administrator_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_profile_category_id` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_profile_manufacturer_id` FOREIGN KEY (`manufacturer_id`) REFERENCES `manufacturer` (`manufacturer_id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
