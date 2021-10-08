-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 08, 2021 at 06:47 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pupc`
--

-- --------------------------------------------------------

--
-- Table structure for table `detainees`
--

CREATE TABLE `detainees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middle_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` char(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `violation` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `detained_date` date DEFAULT NULL,
  `released_date` date DEFAULT NULL,
  `released_blotter_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jailer_id` int(10) UNSIGNED DEFAULT NULL,
  `released_date_court` date DEFAULT NULL,
  `released_date_erogue` date DEFAULT NULL,
  `remarks` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `detainees`
--

INSERT INTO `detainees` (`id`, `first_name`, `middle_name`, `last_name`, `gender`, `violation`, `birth_date`, `detained_date`, `released_date`, `released_blotter_number`, `jailer_id`, `released_date_court`, `released_date_erogue`, `remarks`, `created_at`, `updated_at`) VALUES
(1, 'Chuck', 'Osmeña', 'Lagumbay', 'male', 'Sec. 5 and 11 ART II of RA 9165', '1990-07-07', '2020-09-26', NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-24 20:07:45', '2021-10-08 16:19:06'),
(2, 'Jun', 'Lanceta', 'Marcilla', 'male', NULL, '1980-06-20', '2020-03-09', NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-25 06:16:45', '2021-05-25 18:22:05'),
(3, 'Jaymar', 'Castro', 'Gerona', 'male', NULL, '2001-11-30', '2020-07-07', NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-25 06:18:00', '2021-05-26 02:59:17'),
(4, 'Marvin', 'Besin', 'Dalut', 'male', NULL, NULL, '2020-08-15', NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-25 15:13:13', '2021-10-05 16:50:03'),
(5, 'Francisco', 'Martinez', 'Almendras', 'male', NULL, '1969-10-10', '2020-09-10', NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-26 05:48:32', '2021-05-26 05:48:32'),
(6, 'Paolo', 'Kasilag', 'Diago', 'male', NULL, NULL, '2020-12-09', '2021-05-19', NULL, NULL, NULL, NULL, NULL, '2021-05-26 05:51:00', '2021-05-26 06:26:38'),
(7, 'Ariel', 'Levardo', 'Maala', 'male', NULL, NULL, '2020-12-18', NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-26 05:51:42', '2021-10-05 16:51:42'),
(8, 'Isagani', 'Altarez', 'Cambronero Jr.', 'male', NULL, '1984-09-06', '2020-12-20', '2021-06-10', NULL, NULL, NULL, NULL, NULL, '2021-05-26 05:53:31', '2021-06-12 02:07:21'),
(9, 'Jerry', 'Datwin', 'Manubay', 'male', NULL, '1975-04-17', '2021-02-24', '2021-06-04', NULL, NULL, NULL, NULL, NULL, '2021-05-26 05:54:47', '2021-06-09 17:47:13'),
(10, 'Laurence', 'Perez', 'Garcia', 'male', NULL, NULL, '2021-03-07', NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-26 05:57:29', '2021-10-05 16:51:04'),
(11, 'John Von', NULL, 'Cortes', 'male', NULL, NULL, '2021-03-15', '2021-05-19', NULL, NULL, NULL, NULL, NULL, '2021-05-26 05:57:48', '2021-05-27 02:10:26'),
(12, 'Mark Hill', NULL, 'Galonga', 'male', NULL, NULL, '2021-03-03', '2021-05-19', NULL, NULL, NULL, NULL, NULL, '2021-05-26 05:58:45', '2021-05-27 02:10:48'),
(13, 'Icasiano', NULL, 'Ancero', 'male', NULL, NULL, '2021-03-24', '2021-05-19', NULL, NULL, NULL, NULL, NULL, '2021-05-26 05:59:13', '2021-05-27 02:09:41'),
(14, 'Reynold', NULL, 'Javines', 'male', NULL, NULL, '2021-03-27', '2021-05-19', NULL, NULL, NULL, NULL, NULL, '2021-05-26 06:00:39', '2021-05-27 02:12:33'),
(15, 'Michael', NULL, 'Tenedero', 'male', NULL, NULL, '2021-03-26', '2021-05-08', NULL, NULL, NULL, NULL, NULL, '2021-05-26 06:01:02', '2021-05-27 02:14:02'),
(16, 'Ferry', NULL, 'Cristo', 'male', NULL, NULL, '2021-04-09', '2021-06-10', NULL, NULL, NULL, NULL, NULL, '2021-05-26 06:01:12', '2021-06-12 02:07:36'),
(17, 'Michael', NULL, 'Dequilla', 'male', NULL, NULL, '2021-04-15', '2021-05-19', NULL, NULL, NULL, NULL, NULL, '2021-05-26 06:01:30', '2021-05-27 02:25:07'),
(18, 'Narciso', 'Sta. Barbara', 'Levantino', 'male', NULL, NULL, '2021-04-20', '2021-06-10', NULL, NULL, NULL, NULL, NULL, '2021-05-26 06:01:51', '2021-06-12 02:07:50'),
(19, 'Joey', NULL, 'Casintahan', 'male', NULL, NULL, '2021-04-22', '2021-05-19', NULL, NULL, NULL, NULL, NULL, '2021-05-26 06:02:08', '2021-05-27 02:24:07'),
(20, 'Sandy', NULL, 'Cabigan', 'male', NULL, NULL, '2021-04-25', '2021-05-03', NULL, NULL, NULL, NULL, NULL, '2021-05-26 06:02:25', '2021-05-26 06:36:10'),
(21, 'Mervin', NULL, 'Diaz', 'male', NULL, NULL, '2021-04-25', '2021-05-03', NULL, NULL, NULL, NULL, NULL, '2021-05-26 06:02:37', '2021-05-26 06:36:49'),
(22, 'Raydan', NULL, 'Cortez', 'male', NULL, NULL, '2021-04-30', '2021-05-19', NULL, NULL, NULL, NULL, NULL, '2021-05-26 06:02:47', '2021-05-26 09:46:35'),
(23, 'Darwin', NULL, 'Dialola', 'male', NULL, NULL, '2021-05-04', '2021-05-19', NULL, NULL, NULL, NULL, NULL, '2021-05-26 06:05:53', '2021-05-27 02:25:43'),
(24, 'Samuel', NULL, 'Manlangit', 'male', NULL, NULL, '2021-05-04', '2021-05-19', NULL, NULL, NULL, NULL, NULL, '2021-05-26 06:08:43', '2021-05-27 02:23:00'),
(25, 'Alberto', NULL, 'Macalintal', 'male', NULL, '1992-12-16', '2021-05-06', '2021-05-26', NULL, NULL, NULL, NULL, NULL, '2021-05-26 06:10:11', '2021-05-27 02:41:21'),
(26, 'Stefanie', NULL, 'Macaspac', 'male', NULL, NULL, '2021-04-29', '2021-05-06', NULL, NULL, NULL, NULL, NULL, '2021-05-26 06:11:11', '2021-05-27 02:26:15'),
(27, 'Zenaida', NULL, 'Pa Dero', 'male', NULL, NULL, '2021-04-29', '2021-05-06', NULL, NULL, NULL, NULL, NULL, '2021-05-26 06:13:57', '2021-05-27 02:26:32'),
(28, 'Jenibeth', NULL, 'Padilla', 'male', NULL, NULL, '2021-04-29', '2021-05-06', NULL, NULL, NULL, NULL, NULL, '2021-05-26 06:14:46', '2021-05-27 02:26:54'),
(29, 'Henry Roy', NULL, 'Deo', 'male', NULL, '1989-06-12', '2021-05-10', '2021-06-10', NULL, NULL, NULL, NULL, NULL, '2021-05-26 06:17:12', '2021-06-12 02:08:09'),
(30, 'Dan J.b Ron', NULL, 'Avila', 'male', NULL, NULL, '2021-05-11', '2021-05-18', NULL, NULL, NULL, NULL, NULL, '2021-05-26 06:19:33', '2021-05-26 06:25:42'),
(31, 'John Freddierick', NULL, 'Balboa', 'male', NULL, NULL, '2021-05-11', '2021-05-18', NULL, NULL, NULL, NULL, NULL, '2021-05-26 06:21:47', '2021-05-26 06:26:00'),
(32, 'Alberto', 'Panganiban', 'Alfonso', 'male', NULL, '1967-05-23', '2021-05-13', '2021-06-10', NULL, NULL, NULL, NULL, NULL, '2021-05-26 06:22:51', '2021-06-12 02:09:04'),
(33, 'Eduardo', NULL, 'Valenzuela Jr', 'male', NULL, NULL, '2021-05-14', '2021-06-10', NULL, NULL, NULL, NULL, NULL, '2021-05-26 06:24:02', '2021-06-12 02:09:21'),
(34, 'Ruben', 'Udtuhan', 'Gio', 'male', NULL, '1974-02-24', '2021-05-16', NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-26 06:25:01', '2021-10-05 16:51:24'),
(35, 'Paulo', NULL, 'Samson', 'male', NULL, '1994-08-21', '2021-05-19', '2021-06-10', NULL, NULL, NULL, NULL, NULL, '2021-05-26 06:31:11', '2021-06-12 02:09:34'),
(36, 'Nolasco', 'Dearoz', 'Cabaylo', 'male', NULL, '1967-01-31', '2021-05-20', '2021-06-10', NULL, NULL, NULL, NULL, NULL, '2021-05-26 06:32:21', '2021-06-12 02:09:47'),
(37, 'Jefferson', 'Vicencio', 'Natanauan', 'male', NULL, '1982-07-04', '2021-05-20', '2021-06-10', NULL, NULL, NULL, NULL, NULL, '2021-05-26 06:33:46', '2021-06-12 02:10:01'),
(38, 'Vizmark', NULL, 'Del Monte', 'male', NULL, '1998-12-22', '2021-05-26', '2021-07-07', NULL, NULL, NULL, NULL, NULL, '2021-05-27 02:46:32', '2021-07-09 14:38:03'),
(39, 'Ramiro', NULL, 'Paglinawan', 'male', NULL, '1968-05-18', '2021-05-26', '2021-07-07', NULL, NULL, NULL, NULL, NULL, '2021-05-27 02:47:34', '2021-07-09 14:38:17'),
(40, 'Michelle', 'Dela Masa', 'Tiballa', 'female', NULL, NULL, '2021-01-22', NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-31 03:14:55', '2021-10-08 16:31:14'),
(41, 'Apple Mae', NULL, 'Masicampo', 'male', NULL, NULL, '2021-02-22', '2021-07-01', NULL, NULL, NULL, NULL, NULL, '2021-05-31 03:15:42', '2021-07-02 05:24:47'),
(42, 'Kier Angel Man', NULL, 'Pagne', 'male', NULL, NULL, '2021-05-26', '2021-05-27', NULL, NULL, NULL, NULL, NULL, '2021-05-31 03:16:42', '2021-05-31 03:17:32'),
(43, 'Renato', NULL, 'Popes', 'male', NULL, NULL, '2021-05-27', '2021-07-07', NULL, NULL, NULL, NULL, NULL, '2021-05-31 03:18:15', '2021-07-09 14:39:18'),
(44, 'Abigael', 'Lee', 'Lagrata', 'female', NULL, NULL, '2021-02-24', NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-31 03:19:11', '2021-10-08 16:31:03'),
(45, 'Jessie', NULL, 'Delos Reyes', 'male', NULL, '1995-11-28', '2021-05-31', '2021-06-10', NULL, NULL, NULL, NULL, NULL, '2021-05-31 06:55:41', '2021-06-12 02:24:02'),
(46, 'Jeffrey', NULL, 'Trapalgar', 'male', NULL, '2001-01-05', '2021-05-31', '2021-06-10', NULL, NULL, NULL, NULL, NULL, '2021-05-31 06:57:01', '2021-06-12 02:22:51'),
(47, 'John Paolo', NULL, 'Alcantara', 'male', NULL, '1998-09-30', '2021-05-31', '2021-06-10', NULL, NULL, NULL, NULL, NULL, '2021-05-31 06:57:45', '2021-06-12 02:23:21'),
(48, 'Noel', NULL, 'Martillano', 'male', NULL, NULL, '2021-06-03', '2021-07-07', NULL, NULL, NULL, NULL, NULL, '2021-06-09 18:10:53', '2021-07-09 14:40:27'),
(49, 'Felipe', NULL, 'Jamon', 'male', NULL, NULL, '2021-06-07', '2021-07-02', NULL, NULL, NULL, NULL, NULL, '2021-06-09 18:11:14', '2021-07-02 05:34:14'),
(50, 'Jeric', NULL, 'Cabarles', 'male', NULL, NULL, '2021-06-09', '2021-06-21', NULL, NULL, NULL, NULL, NULL, '2021-06-09 18:11:41', '2021-07-02 05:24:10'),
(51, 'Wenceslao', NULL, 'Gallardo', 'male', NULL, NULL, '2021-06-04', '2021-06-07', NULL, NULL, NULL, NULL, NULL, '2021-06-09 18:12:16', '2021-06-09 18:12:16'),
(52, 'Elecito', NULL, 'Rabino', 'male', NULL, NULL, '2021-06-01', '2021-07-07', NULL, NULL, NULL, NULL, NULL, '2021-06-12 02:14:19', '2021-07-09 14:39:27'),
(53, 'Andrei', NULL, 'Espinar', 'male', NULL, NULL, '2021-06-01', '2021-07-07', NULL, NULL, NULL, NULL, NULL, '2021-06-12 02:14:48', '2021-07-09 14:39:52'),
(54, 'Ronaldo', NULL, 'Sosmeña', 'male', NULL, NULL, '2021-06-08', '2021-07-07', NULL, NULL, NULL, NULL, NULL, '2021-06-12 02:16:16', '2021-07-09 14:40:44'),
(55, 'Dennis', NULL, 'Vargas', 'male', NULL, NULL, '2021-06-11', '2021-07-07', NULL, NULL, NULL, NULL, NULL, '2021-06-12 02:24:41', '2021-07-09 14:41:21'),
(56, 'Allan', NULL, 'Gonzales', 'male', NULL, NULL, '2021-06-11', '2021-07-07', NULL, NULL, NULL, NULL, NULL, '2021-06-12 02:25:08', '2021-07-09 14:41:32'),
(57, 'Avelito', 'Quilao', 'Levardo', 'male', NULL, '1994-08-12', '2021-06-11', '2021-07-07', NULL, NULL, NULL, NULL, NULL, '2021-06-12 02:25:30', '2021-07-09 14:41:42'),
(58, 'Lolita', 'Daaco', 'Javier', 'male', NULL, NULL, '2021-06-11', '2021-06-15', NULL, NULL, NULL, NULL, NULL, '2021-06-12 02:26:03', '2021-06-17 04:35:00'),
(59, 'Alfred', 'Vargas', 'Almeda', 'male', NULL, NULL, '2021-06-15', '2021-06-16', NULL, NULL, NULL, NULL, NULL, '2021-06-17 07:03:10', '2021-06-17 07:03:10'),
(60, 'Lionel', 'Ramirez', 'Resnera', 'male', NULL, NULL, '2021-06-17', '2021-07-07', NULL, NULL, NULL, NULL, NULL, '2021-06-20 01:28:55', '2021-07-09 14:42:34'),
(61, 'Jersey Boy', NULL, 'Merquinez', 'male', NULL, NULL, '2021-06-20', '2021-07-07', NULL, NULL, NULL, NULL, NULL, '2021-07-01 21:56:29', '2021-07-09 14:42:44'),
(62, 'Jeffrey', 'Castillo', 'Sarabia', 'male', NULL, '1989-08-23', '2021-06-22', '2021-06-24', NULL, NULL, NULL, NULL, NULL, '2021-07-02 05:13:58', '2021-07-02 05:13:58'),
(63, 'Ferlino', NULL, 'Acbay', 'male', NULL, '1992-10-09', '2021-06-24', '2021-08-09', NULL, NULL, NULL, NULL, NULL, '2021-07-02 05:15:05', '2021-10-05 15:45:33'),
(64, 'Andro', 'Calayo', 'Mira', 'male', NULL, '1986-11-30', '2021-06-25', '2021-07-08', NULL, NULL, NULL, NULL, NULL, '2021-07-02 05:18:49', '2021-07-09 14:37:45'),
(65, 'Winifredo', NULL, 'Lende', 'male', NULL, '1968-03-22', '2021-06-28', '2021-07-07', NULL, NULL, NULL, NULL, NULL, '2021-07-02 05:20:02', '2021-07-09 14:42:54'),
(66, 'Darwin', NULL, 'Cañete', 'male', NULL, '1996-01-02', '2021-06-29', '2021-08-09', NULL, NULL, NULL, NULL, NULL, '2021-07-02 05:21:11', '2021-10-05 15:49:06'),
(67, 'Alex', NULL, 'Palaña', 'male', NULL, '1998-01-16', '2021-06-30', '2021-08-09', NULL, NULL, NULL, NULL, NULL, '2021-07-02 05:22:13', '2021-10-05 15:53:23'),
(68, 'Noel', NULL, 'Palaña', 'male', NULL, '1988-12-05', '2021-06-30', '2021-08-09', NULL, NULL, NULL, NULL, NULL, '2021-07-02 05:22:58', '2021-10-05 15:53:29'),
(69, 'John Angelo', 'Lagunzad', 'Manginao', 'male', NULL, '2021-07-01', '2021-06-30', '2021-06-30', NULL, NULL, NULL, NULL, NULL, '2021-07-06 16:51:31', '2021-07-06 16:51:31'),
(70, 'Marlon', NULL, 'Santos', 'male', NULL, NULL, '2021-06-30', '2021-06-30', NULL, NULL, NULL, NULL, NULL, '2021-07-09 13:53:19', '2021-07-09 13:53:19'),
(71, 'Mark Angelo', NULL, 'Manginaon', 'male', NULL, NULL, '2021-07-06', '2021-07-06', NULL, NULL, NULL, NULL, NULL, '2021-07-09 14:33:20', '2021-07-09 14:43:14'),
(72, 'Agusto', NULL, 'Rebamba', 'male', NULL, NULL, '2021-07-06', '2021-07-13', NULL, NULL, NULL, NULL, NULL, '2021-07-09 14:33:41', '2021-07-13 13:50:32'),
(73, 'Joel', NULL, 'Millagracia', 'male', NULL, NULL, '2021-07-06', '2021-07-13', NULL, NULL, NULL, NULL, NULL, '2021-07-09 14:34:06', '2021-07-13 13:50:13'),
(74, 'Robert', NULL, 'Imperial', 'male', NULL, NULL, '2021-07-06', '2021-08-09', NULL, NULL, NULL, NULL, NULL, '2021-07-09 14:34:29', '2021-10-05 15:51:46'),
(75, 'Diosdado', NULL, 'Veraces', 'male', NULL, NULL, '2021-07-06', '2021-08-09', NULL, NULL, NULL, NULL, NULL, '2021-07-09 14:34:49', '2021-10-05 15:56:50'),
(76, 'John Ralph', NULL, 'Lanuza', 'male', NULL, NULL, '2021-07-07', '2021-07-07', NULL, NULL, NULL, NULL, NULL, '2021-07-09 14:35:10', '2021-07-09 14:37:04'),
(77, 'Sergio', NULL, 'Panganiban', 'male', NULL, NULL, '2021-07-07', '2021-07-07', NULL, NULL, NULL, NULL, NULL, '2021-07-09 14:35:28', '2021-07-09 14:37:16'),
(78, 'Jessie', NULL, 'Forgalidad', 'male', NULL, NULL, '2021-07-08', '2021-08-09', NULL, NULL, NULL, NULL, NULL, '2021-07-09 14:35:58', '2021-10-05 15:51:28'),
(79, 'Alexander', NULL, 'Amaro', 'male', NULL, NULL, '2021-07-08', '2021-08-09', NULL, NULL, NULL, NULL, NULL, '2021-07-09 14:36:18', '2021-10-05 15:47:41'),
(80, 'Michael', NULL, 'Delos Santos', 'male', NULL, '1984-07-06', '2021-07-03', '2021-07-14', NULL, NULL, NULL, NULL, NULL, '2021-07-11 14:37:38', '2021-07-14 08:18:35'),
(81, 'Artemio', 'Biliran', 'Sauquillo', 'male', NULL, '1987-09-24', '2021-07-13', '2021-08-09', NULL, NULL, NULL, NULL, NULL, '2021-07-13 13:51:24', '2021-10-05 15:54:54'),
(82, 'Rhea Camille', 'Niez', 'Catunhay', 'female', NULL, '1992-09-11', '2021-07-13', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-13 13:51:59', '2021-10-08 16:30:27'),
(83, 'Alexander', NULL, 'Ferrer', 'male', NULL, NULL, '2021-07-13', '2021-08-09', NULL, NULL, NULL, NULL, NULL, '2021-07-13 16:56:46', '2021-10-05 16:16:43'),
(84, 'Cris', NULL, 'Villareal', 'male', NULL, NULL, '2021-07-13', '2021-08-09', NULL, NULL, NULL, NULL, NULL, '2021-07-13 16:57:30', '2021-10-05 15:56:56'),
(85, 'Joan Pauline', 'Castanares', 'Florez', 'female', NULL, NULL, '2021-07-13', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-13 16:59:22', '2021-10-08 16:30:39'),
(86, 'Janet', NULL, 'Aluciman', 'male', NULL, '1974-03-21', '2021-07-17', '2021-07-22', NULL, NULL, NULL, NULL, NULL, '2021-07-19 19:00:34', '2021-07-22 23:42:12'),
(87, 'Reynan', 'Barca', 'Alvarado', 'male', NULL, '1989-05-06', '2021-07-14', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-19 19:01:45', '2021-10-05 16:48:53'),
(88, 'John Robert', 'Rosales', 'Aying', 'male', NULL, NULL, '2021-07-16', '2021-07-16', NULL, NULL, NULL, NULL, NULL, '2021-07-19 19:02:39', '2021-07-19 19:06:53'),
(89, 'Jayson', 'Roncal', 'Jamer', 'male', NULL, NULL, '2021-07-22', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-22 23:40:15', '2021-07-22 23:40:15'),
(90, 'Maria Theresa', 'Ocampo', 'Miranda', 'female', NULL, NULL, '2021-07-22', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-22 23:41:14', '2021-10-08 16:30:50'),
(91, 'Malo', 'Sayuman', 'Malabanan', 'male', NULL, NULL, '2021-07-20', '2021-09-20', NULL, NULL, NULL, NULL, NULL, '2021-07-22 23:41:40', '2021-10-05 16:48:39'),
(92, 'Richard', 'Dias', 'Oracion', 'male', NULL, '1982-06-29', '2021-07-24', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 21:22:57', '2021-07-24 21:22:57'),
(93, 'Jose', 'Bacig', 'Carpina', 'male', NULL, '1958-06-19', '2021-07-25', '2021-07-26', NULL, NULL, NULL, NULL, NULL, '2021-07-25 14:46:04', '2021-07-26 08:08:05'),
(94, 'Dennis', 'Amorin', 'Sarmiento', 'male', NULL, '1995-02-12', '2021-07-27', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-30 17:01:10', '2021-07-30 17:01:10'),
(95, 'Richard', 'Torres', 'Panciles', 'male', NULL, '1979-01-26', '2021-08-31', '2021-09-27', NULL, NULL, NULL, NULL, NULL, '2021-07-30 17:02:16', '2021-10-05 16:54:04'),
(96, 'Aira', NULL, 'Sales', 'male', NULL, NULL, '2021-07-29', '2021-08-25', NULL, NULL, NULL, NULL, NULL, '2021-07-30 17:03:06', '2021-10-05 15:53:53'),
(97, 'Annaliza', 'Torres', 'Panciles', 'male', NULL, NULL, '2021-08-31', '2021-09-27', NULL, NULL, NULL, NULL, NULL, '2021-07-30 17:04:13', '2021-10-05 16:54:10'),
(98, 'Carlo', NULL, 'Almendras', 'male', NULL, NULL, '2021-08-08', '2021-08-10', NULL, NULL, NULL, NULL, NULL, '2021-10-05 15:04:17', '2021-10-05 15:04:17'),
(99, 'Ezekiel', 'Onella', 'Bautista', 'male', NULL, NULL, '2021-08-28', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-05 15:05:34', '2021-10-05 15:05:43'),
(100, 'Marlon', NULL, 'Burgos', 'male', NULL, NULL, '2021-08-08', '2021-08-10', NULL, NULL, NULL, NULL, NULL, '2021-10-05 15:06:29', '2021-10-05 15:06:29'),
(101, 'Elmer', NULL, 'Cacatihan', 'male', NULL, NULL, '2021-08-08', '2021-08-10', NULL, NULL, NULL, NULL, NULL, '2021-10-05 15:07:13', '2021-10-05 15:07:13'),
(102, 'Eduardo', 'Catapang', 'Catibog', 'male', NULL, NULL, '2021-08-10', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-05 15:09:00', '2021-10-05 16:49:10'),
(103, 'Jonnel', 'Peneda', 'Cerdeña', 'male', NULL, NULL, '2021-08-07', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-05 15:09:40', '2021-10-05 15:09:40'),
(104, 'Mark', 'Llanto', 'Cortez', 'male', NULL, NULL, '2021-08-08', '2021-08-10', NULL, NULL, NULL, NULL, NULL, '2021-10-05 15:11:12', '2021-10-05 15:30:45'),
(105, 'Samuel', NULL, 'Dagonon', 'male', NULL, NULL, '2021-08-12', '2021-08-13', NULL, NULL, NULL, NULL, NULL, '2021-10-05 15:11:53', '2021-10-05 15:11:53'),
(106, 'Gaudencio', 'Esteves', 'David', 'male', NULL, NULL, '2021-08-20', '2021-08-24', NULL, NULL, NULL, NULL, NULL, '2021-10-05 15:13:17', '2021-10-05 15:13:17'),
(107, 'Melvin', NULL, 'Emia', 'male', NULL, NULL, '2021-08-08', '2021-08-10', NULL, NULL, NULL, NULL, NULL, '2021-10-05 15:14:00', '2021-10-05 15:14:00'),
(108, 'Rey', 'Manrique', 'Fernandez', 'male', NULL, NULL, '2021-08-09', '2021-08-12', NULL, NULL, NULL, NULL, NULL, '2021-10-05 15:14:39', '2021-10-05 15:14:39'),
(109, 'Larry', NULL, 'Javier', 'male', NULL, NULL, '2021-08-08', '2021-08-10', NULL, NULL, NULL, NULL, NULL, '2021-10-05 15:15:16', '2021-10-05 15:15:16'),
(110, 'Christopher', 'Vasquez', 'Ladica', 'male', NULL, NULL, '2021-08-21', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-05 15:16:11', '2021-10-05 16:42:19'),
(111, 'Leonardo', NULL, 'Loyola', 'male', NULL, NULL, '2021-08-08', '2021-08-10', NULL, NULL, NULL, NULL, NULL, '2021-10-05 15:16:41', '2021-10-05 15:16:41'),
(112, 'Rossano', 'Villeza', 'Macha', 'male', NULL, NULL, '2021-08-29', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-05 15:17:25', '2021-10-05 15:19:17'),
(113, 'Gilbert', 'Padre', 'Manzano', 'male', NULL, NULL, '2021-08-05', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-05 15:17:56', '2021-10-05 15:17:56'),
(114, 'Roldan', 'Abellana', 'Maypa', 'male', NULL, NULL, '2021-08-02', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-05 15:18:41', '2021-10-05 15:18:41'),
(115, 'Nelvin', 'Mendoza', 'Cipriano', 'male', NULL, NULL, '2021-08-27', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-05 15:20:05', '2021-10-05 15:20:05'),
(116, 'Guillermo', 'Panopio', 'Miranda', 'male', NULL, NULL, '2021-08-10', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-05 15:21:03', '2021-10-05 16:52:01'),
(117, 'Sanny', 'Maala', 'Naz', 'male', NULL, NULL, '2021-08-10', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-05 15:21:27', '2021-10-05 16:52:13'),
(118, 'Joel', 'Mendoza', 'Paulin', 'male', NULL, NULL, '2021-08-27', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-05 15:33:02', '2021-10-05 15:33:02'),
(119, 'Mark Anthony', 'Serenio', 'Rodriguez', 'male', NULL, NULL, '2021-08-27', '2021-08-25', NULL, NULL, NULL, NULL, NULL, '2021-10-05 15:35:39', '2021-10-05 15:35:39'),
(120, 'Warren', 'Villanueva', 'Solmoro', 'male', NULL, NULL, '2021-08-22', '2021-08-22', NULL, NULL, NULL, NULL, NULL, '2021-10-05 15:37:40', '2021-10-05 15:37:40'),
(121, 'Rex Slander', NULL, 'Tolentino', 'male', NULL, NULL, '2021-08-08', '2021-08-10', NULL, NULL, NULL, NULL, NULL, '2021-10-05 15:40:03', '2021-10-05 15:40:03'),
(122, 'Aljhen', 'Umali', 'Torres', 'male', NULL, NULL, '2021-08-31', '2021-09-03', NULL, NULL, NULL, NULL, NULL, '2021-10-05 15:40:46', '2021-10-05 16:56:08'),
(123, 'Jhen Adrei', 'Umali', 'Torres', 'male', NULL, NULL, '2021-08-31', '2021-09-03', NULL, NULL, NULL, NULL, NULL, '2021-10-05 15:41:21', '2021-10-05 16:56:13'),
(124, 'Robert', 'Dalupe', 'Tupas', 'male', NULL, NULL, '2021-08-18', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-05 15:41:53', '2021-10-05 15:41:53'),
(125, 'Romar', NULL, 'Umandap', 'male', NULL, NULL, '2021-08-08', '2021-08-10', NULL, NULL, NULL, NULL, NULL, '2021-10-05 15:42:24', '2021-10-05 15:42:48'),
(126, 'Feliciano', 'Joson', 'Aranda', 'male', NULL, NULL, '2021-09-07', '2021-09-10', NULL, NULL, NULL, NULL, NULL, '2021-10-05 16:27:12', '2021-10-05 16:45:55'),
(127, 'Jeffrey', 'Joson', 'Aranda', 'male', NULL, NULL, '2021-09-07', '2021-09-10', NULL, NULL, NULL, NULL, NULL, '2021-10-05 16:27:33', '2021-10-05 16:46:00'),
(128, 'Jonathan', 'Rodorocio', 'Arches', 'male', NULL, NULL, '2021-09-09', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-05 16:28:04', '2021-10-05 16:28:04'),
(129, 'Julius', 'Padilla', 'Bibay', 'male', NULL, NULL, '2021-09-05', '2021-09-05', NULL, NULL, NULL, NULL, NULL, '2021-10-05 16:28:37', '2021-10-05 16:46:22'),
(130, 'Elmer', 'Alfaro', 'Cabrera', 'male', NULL, NULL, '2021-09-02', '2021-09-06', NULL, NULL, NULL, NULL, NULL, '2021-10-05 16:29:05', '2021-10-05 16:46:45'),
(131, 'Jose Ariel', 'Madoro', 'Camacho Jr.', 'male', NULL, NULL, '2021-09-07', '2021-09-10', NULL, NULL, NULL, NULL, NULL, '2021-10-05 16:29:47', '2021-10-05 16:47:24'),
(132, 'Robert', 'Catulong', 'Cerdeña', 'male', NULL, NULL, '2021-09-27', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-05 16:30:34', '2021-10-05 16:30:34'),
(133, 'Ricky', 'Levardo', 'Corpin', 'male', NULL, NULL, '2021-09-28', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-05 16:31:08', '2021-10-05 16:31:08'),
(134, 'Kerveen', 'Cabral', 'Dorado', 'male', NULL, NULL, '2021-09-30', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-05 16:31:49', '2021-10-05 16:31:49'),
(135, 'Jovan', 'Sarmiento', 'Gabelo', 'male', NULL, NULL, '2021-09-17', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-05 16:32:12', '2021-10-05 16:32:12'),
(136, 'Christian', 'Cruz', 'Guttierez', 'male', NULL, NULL, '2021-09-14', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-05 16:32:41', '2021-10-05 16:32:41'),
(137, 'Edmar', 'Amparo', 'Hernandez', 'male', NULL, NULL, '2021-09-24', '2021-09-30', NULL, NULL, NULL, NULL, NULL, '2021-10-05 16:33:29', '2021-10-05 16:47:48'),
(138, 'Norman', 'Ronero', 'Magat', 'male', NULL, NULL, '2021-09-07', '2021-09-10', NULL, NULL, NULL, NULL, NULL, '2021-10-05 16:33:50', '2021-10-05 16:48:08'),
(139, 'Ronald', 'Inicencio', 'Maglaya', 'male', NULL, NULL, '2021-09-10', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-05 16:34:24', '2021-10-05 16:34:24'),
(140, 'Carfil', 'Aranda', 'Memije', 'male', NULL, NULL, '2021-09-07', '2021-09-10', NULL, NULL, NULL, NULL, NULL, '2021-10-05 16:35:29', '2021-10-05 16:53:40'),
(141, 'Roelito', 'Durumpili', 'Montre', 'male', NULL, NULL, '2021-09-29', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-05 16:35:55', '2021-10-05 16:35:55'),
(142, 'Wilnor', 'Aves', 'Peñales', 'male', NULL, NULL, '2021-09-07', '2021-09-10', NULL, NULL, NULL, NULL, NULL, '2021-10-05 16:36:27', '2021-10-05 16:54:34'),
(143, 'Letty', 'Tan', 'Polillo', 'female', 'Slight Physical Injuries', NULL, '2021-09-30', '2021-10-04', '2021-10-411', 1, '2021-10-04', '2021-10-04', 'Cash Bond', '2021-10-05 16:36:53', '2021-10-08 16:31:48'),
(144, 'Conrado', 'Malaiba', 'Realon', 'male', NULL, NULL, '2021-09-09', '2021-09-09', NULL, NULL, NULL, NULL, NULL, '2021-10-05 16:37:26', '2021-10-05 16:55:08'),
(145, 'Victorio', 'Lirios', 'Vargas', 'male', NULL, NULL, '2021-09-28', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-05 16:37:54', '2021-10-05 16:37:54'),
(146, 'Froilan', 'Frondo', 'Zulueta', 'male', NULL, NULL, '2021-09-14', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-05 16:38:31', '2021-10-05 16:38:31'),
(147, 'Mian', 'Toledo', 'Sevilla', 'male', NULL, NULL, '2021-09-07', '2021-09-10', NULL, NULL, NULL, NULL, NULL, '2021-10-05 16:43:55', '2021-10-05 16:55:28'),
(148, 'Marcos', 'Macaraeg', 'Toledo', 'male', NULL, NULL, '2021-09-09', '2021-09-09', NULL, NULL, NULL, NULL, NULL, '2021-10-05 16:44:40', '2021-10-05 16:55:44'),
(149, 'Severino', NULL, 'Ang', 'male', NULL, NULL, '2021-10-03', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-05 16:58:28', '2021-10-05 16:58:28'),
(150, 'Joselito', 'Lopez', 'Purificacion', 'male', 'Attempted Homicide', NULL, '2021-10-04', '2021-10-07', '2021-10-416', 1, '2021-10-07', '2021-10-07', 'Cash Bond', '2021-10-05 16:58:59', '2021-10-08 16:16:39'),
(151, 'Mark Anthony', 'Dequina', 'Arandia', 'male', 'RIR', NULL, '2021-10-06', '2021-10-07', '2021-10-415', 1, '2021-10-07', '2021-10-07', 'Affidavit (Kasunduan)', '2021-10-07 03:45:57', '2021-10-08 16:14:56'),
(152, 'Marnie', 'Blasorca', 'Macabuhay', 'male', NULL, NULL, '2021-10-06', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-07 03:48:03', '2021-10-07 03:48:03'),
(153, 'John Edriane', 'Abantao', 'Apura', 'male', NULL, NULL, '2021-01-03', '2021-04-24', NULL, NULL, NULL, NULL, NULL, '2021-10-07 05:37:10', '2021-10-07 05:37:10'),
(154, 'Steven', 'Reyes', 'Samson', 'male', NULL, NULL, '2021-01-07', '2021-04-10', NULL, NULL, NULL, NULL, NULL, '2021-10-07 05:40:03', '2021-10-07 05:40:03'),
(155, 'Lester', 'Perez', 'Micosa', 'male', NULL, NULL, '2021-02-03', '2021-04-13', NULL, NULL, NULL, NULL, NULL, '2021-10-07 05:42:59', '2021-10-07 05:42:59'),
(156, 'Jimmy', 'Ornopia', 'Montañez', 'male', NULL, NULL, '2021-02-08', '2021-04-10', NULL, NULL, NULL, NULL, NULL, '2021-10-07 05:43:45', '2021-10-07 05:43:45'),
(157, 'Edwin', 'Calitis', 'Milagroso', 'male', NULL, NULL, '2021-02-14', '2021-04-10', NULL, NULL, NULL, NULL, NULL, '2021-10-07 05:44:28', '2021-10-07 05:44:28'),
(158, 'Jay-ar', 'Monares', 'Ramos', 'male', NULL, NULL, '2021-02-16', '2021-05-10', NULL, NULL, NULL, NULL, NULL, '2021-10-07 05:47:33', '2021-10-07 05:47:33'),
(159, 'Benjamin', 'De Salit', 'Bianzon', 'male', NULL, NULL, '2021-02-18', '2021-04-10', NULL, NULL, NULL, NULL, NULL, '2021-10-07 05:48:25', '2021-10-07 05:48:25'),
(160, 'Benhur', 'Magtoles', 'Villarin', 'male', NULL, NULL, '2021-02-24', '2021-05-10', NULL, NULL, NULL, NULL, NULL, '2021-10-07 05:49:32', '2021-10-07 05:49:32'),
(161, 'Edwin', 'Viraña', 'Sibolino', 'male', NULL, NULL, '2021-03-01', '2021-04-10', NULL, NULL, NULL, NULL, NULL, '2021-10-07 05:50:18', '2021-10-07 05:50:18'),
(162, 'John Kenneth', 'Torio', 'Tambangan', 'male', NULL, NULL, '2021-03-01', '2021-04-10', NULL, NULL, NULL, NULL, NULL, '2021-10-07 05:50:53', '2021-10-07 05:50:53'),
(163, 'Orlando', 'Rason', 'Pereña', 'male', NULL, NULL, '2021-03-11', '2021-04-13', NULL, NULL, NULL, NULL, NULL, '2021-10-07 05:51:38', '2021-10-07 05:51:38'),
(164, 'Rhomel', 'Capanayan', 'Bituin', 'male', NULL, NULL, '2021-03-18', '2021-04-05', NULL, NULL, NULL, NULL, NULL, '2021-10-07 05:52:56', '2021-10-07 05:52:56'),
(165, 'Randy', 'Gamboa', 'Masaga', 'male', NULL, NULL, '2021-03-28', '2021-04-26', NULL, NULL, NULL, NULL, NULL, '2021-10-07 05:53:51', '2021-10-07 05:53:51'),
(166, 'Richard', NULL, 'Mortera', 'male', NULL, NULL, '2021-04-02', '2021-04-02', NULL, NULL, NULL, NULL, NULL, '2021-10-07 05:54:40', '2021-10-07 05:54:40'),
(167, 'Niel', NULL, 'Boromeo', 'male', NULL, NULL, '2021-04-05', '2021-04-08', NULL, NULL, NULL, NULL, NULL, '2021-10-07 05:55:15', '2021-10-07 05:55:15'),
(168, 'Leopoldo', NULL, 'Viscara', 'male', NULL, NULL, '2021-04-05', '2021-04-15', NULL, NULL, NULL, NULL, NULL, '2021-10-07 05:56:01', '2021-10-07 05:56:01'),
(169, 'Roland', NULL, 'Lalog', 'male', NULL, NULL, '2021-04-11', '2021-04-26', NULL, NULL, NULL, NULL, NULL, '2021-10-07 05:57:01', '2021-10-07 05:57:01'),
(170, 'Arman', NULL, 'Lanac', 'male', NULL, NULL, '2021-04-11', '2021-04-26', NULL, NULL, NULL, NULL, NULL, '2021-10-07 05:57:27', '2021-10-07 05:57:27'),
(171, 'Denis', NULL, 'Larong', 'male', NULL, NULL, '2021-04-11', '2021-04-16', NULL, NULL, NULL, NULL, NULL, '2021-10-07 05:59:02', '2021-10-07 05:59:02'),
(172, 'Angelica', NULL, 'Viscara', 'male', NULL, NULL, '2021-04-14', '2021-04-15', NULL, NULL, NULL, NULL, NULL, '2021-10-07 05:59:35', '2021-10-07 05:59:35'),
(173, 'Ricardo', NULL, 'Labe', 'male', NULL, NULL, '2021-04-16', '2021-04-29', NULL, NULL, NULL, NULL, NULL, '2021-10-07 06:00:20', '2021-10-07 06:00:20'),
(174, 'Jonh Carlo', NULL, 'Gutierez', 'male', NULL, NULL, '2021-04-25', '2021-04-29', NULL, NULL, NULL, NULL, NULL, '2021-10-07 06:00:44', '2021-10-07 06:00:44'),
(175, 'Bert', NULL, 'Loba', 'male', NULL, NULL, '2021-04-25', '2021-04-29', NULL, NULL, NULL, NULL, NULL, '2021-10-07 06:01:12', '2021-10-07 06:01:12'),
(176, 'Ronaldo', NULL, 'Lopez', 'male', NULL, NULL, '2021-04-25', '2021-04-29', NULL, NULL, NULL, NULL, NULL, '2021-10-07 06:01:45', '2021-10-07 06:01:45'),
(177, 'Albert', NULL, 'Ranara', 'male', NULL, NULL, '2021-04-25', '2021-04-29', NULL, NULL, NULL, NULL, NULL, '2021-10-07 06:02:12', '2021-10-07 06:02:12'),
(178, 'Jordan', NULL, 'Ranara', 'male', NULL, NULL, '2021-04-25', '2021-04-29', NULL, NULL, NULL, NULL, NULL, '2021-10-07 06:02:41', '2021-10-07 06:02:41'),
(179, 'Renier', NULL, 'Zueta', 'male', NULL, NULL, '2021-04-25', '2021-04-29', NULL, NULL, NULL, NULL, NULL, '2021-10-07 06:03:03', '2021-10-07 06:03:03'),
(180, 'Raymond', NULL, 'Zueta', 'male', NULL, NULL, '2021-04-25', '2021-04-29', NULL, NULL, NULL, NULL, NULL, '2021-10-07 06:03:31', '2021-10-07 06:03:31'),
(181, 'Cyprian', 'Vanguardia', 'Flores', 'male', 'BP22', NULL, '2021-10-07', '2021-10-07', '2021-10-419', 1, '2021-10-07', '2021-10-07', 'Cash Bond', '2021-10-07 12:15:55', '2021-10-08 16:15:49'),
(184, 'Arnold', 'Bañares', 'Señido', 'male', 'Sec. 5 and 11 Art. II of RA 9165', '1981-09-25', '2021-10-08', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-08 15:19:01', '2021-10-08 15:49:28');

-- --------------------------------------------------------

--
-- Table structure for table `jailers`
--

CREATE TABLE `jailers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jailers`
--

INSERT INTO `jailers` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'PSMs Jober Manaig', '2021-10-08 13:59:34', '2021-10-08 13:59:34'),
(2, 'PSSg Hernane V Quintana', '2021-10-08 13:59:34', '2021-10-08 13:59:34'),
(3, 'PSSg Percival Restrivera', '2021-10-08 14:59:34', '2021-10-08 14:59:34');

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
(5, '2021_05_20_231022_create_detainees_table', 2),
(11, '2021_10_04_151204_add_new_columns_on_detainees_table', 3);

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@pupc.com', NULL, '$2y$10$Ky2fV08DWj9a8pa8BWsrxet6mS8KoZNvgx8Xn1CShuZbmjrunAN4.', 'iPw5hsnZm4KsRUFWa4IBAvh6KMKsAuqoWi9j5UWjqpESDSb7s9jhpDByDT08', '2021-05-20 04:43:02', '2021-08-20 14:06:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detainees`
--
ALTER TABLE `detainees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detainees_jailer_id_foreign` (`jailer_id`);

--
-- Indexes for table `jailers`
--
ALTER TABLE `jailers`
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detainees`
--
ALTER TABLE `detainees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT for table `jailers`
--
ALTER TABLE `jailers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detainees`
--
ALTER TABLE `detainees`
  ADD CONSTRAINT `detainees_jailer_id_foreign` FOREIGN KEY (`jailer_id`) REFERENCES `jailers` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
