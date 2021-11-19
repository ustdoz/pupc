-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2021 at 01:33 PM
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
-- Table structure for table `chief_invest`
--

CREATE TABLE `chief_invest` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chief_invest`
--

INSERT INTO `chief_invest` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'PSSg Joel L Mendoza', '2021-10-14 14:30:28', '2021-10-14 14:30:28');

-- --------------------------------------------------------

--
-- Table structure for table `chief_police`
--

CREATE TABLE `chief_police` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chief_police`
--

INSERT INTO `chief_police` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'PMAJ JOSEPH C CARLIT', '2021-10-14 14:22:26', '2021-10-14 14:29:26');

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
  `commitment_date` date DEFAULT NULL,
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

INSERT INTO `detainees` (`id`, `first_name`, `middle_name`, `last_name`, `gender`, `violation`, `birth_date`, `detained_date`, `commitment_date`, `released_date`, `released_blotter_number`, `jailer_id`, `released_date_court`, `released_date_erogue`, `remarks`, `created_at`, `updated_at`) VALUES
(1, 'Chuck', 'Osmeña', 'Lagumbay', 'male', 'Sec. 5 and 11 ART II of RA 9165', '1990-07-07', '2020-09-26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-24 20:07:45', '2021-10-08 16:19:06'),
(2, 'Jun', 'Lanceta', 'Marcilla', 'male', 'Section 11 and 12 Art II of RA 9165', '1980-06-20', '2020-03-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-25 06:16:45', '2021-10-15 13:49:49'),
(3, 'Jaymar', 'Castro', 'Gerona', 'male', 'Anti-Carnapping Act of. 1972', '2001-11-30', '2020-07-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-25 06:18:00', '2021-10-15 13:51:18'),
(4, 'Marvin', 'Besin', 'Dalut', 'male', 'Rape', NULL, '2020-08-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-25 15:13:13', '2021-10-15 13:51:31'),
(5, 'Francisco', 'Martinez', 'Almendras', 'male', 'Sec. 5 and 11 ART II of RA 9165', '1969-10-10', '2020-09-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-26 05:48:32', '2021-11-03 11:06:19'),
(6, 'Paolo', 'Kasilag', 'Diago', 'male', NULL, NULL, '2020-12-09', NULL, '2021-05-19', NULL, NULL, NULL, NULL, NULL, '2021-05-26 05:51:00', '2021-05-26 06:26:38'),
(7, 'Ariel', 'Levardo', 'Maala', 'male', 'Sec. 5 and 11 ART II of RA 9165', NULL, '2020-12-18', '2021-01-05', NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-26 05:51:42', '2021-11-15 12:55:33'),
(8, 'Isagani', 'Altarez', 'Cambronero Jr.', 'male', NULL, '1984-09-06', '2020-12-20', NULL, '2021-06-10', NULL, NULL, NULL, NULL, NULL, '2021-05-26 05:53:31', '2021-06-12 02:07:21'),
(9, 'Jerry', 'Datwin', 'Manubay', 'male', NULL, '1975-04-17', '2021-02-24', NULL, '2021-06-04', NULL, NULL, NULL, NULL, NULL, '2021-05-26 05:54:47', '2021-06-09 17:47:13'),
(10, 'Laurence', 'Perez', 'Garcia', 'male', 'Theft (Pending Case)', NULL, '2021-03-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-26 05:57:29', '2021-11-14 06:03:55'),
(11, 'John Von', NULL, 'Cortes', 'male', NULL, NULL, '2021-03-15', NULL, '2021-05-19', NULL, NULL, NULL, NULL, NULL, '2021-05-26 05:57:48', '2021-05-27 02:10:26'),
(12, 'Mark Hill', NULL, 'Galonga', 'male', NULL, NULL, '2021-03-03', NULL, '2021-05-19', NULL, NULL, NULL, NULL, NULL, '2021-05-26 05:58:45', '2021-05-27 02:10:48'),
(13, 'Icasiano', NULL, 'Ancero', 'male', NULL, NULL, '2021-03-24', NULL, '2021-05-19', NULL, NULL, NULL, NULL, NULL, '2021-05-26 05:59:13', '2021-05-27 02:09:41'),
(14, 'Reynold', NULL, 'Javines', 'male', NULL, NULL, '2021-03-27', NULL, '2021-05-19', NULL, NULL, NULL, NULL, NULL, '2021-05-26 06:00:39', '2021-05-27 02:12:33'),
(15, 'Michael', NULL, 'Tenedero', 'male', NULL, NULL, '2021-03-26', NULL, '2021-05-08', NULL, NULL, NULL, NULL, NULL, '2021-05-26 06:01:02', '2021-05-27 02:14:02'),
(16, 'Ferry', NULL, 'Cristo', 'male', NULL, NULL, '2021-04-09', NULL, '2021-06-10', NULL, NULL, NULL, NULL, NULL, '2021-05-26 06:01:12', '2021-06-12 02:07:36'),
(17, 'Michael', NULL, 'Dequilla', 'male', NULL, NULL, '2021-04-15', NULL, '2021-05-19', NULL, NULL, NULL, NULL, NULL, '2021-05-26 06:01:30', '2021-05-27 02:25:07'),
(18, 'Narciso', 'Sta. Barbara', 'Levantino', 'male', NULL, NULL, '2021-04-20', NULL, '2021-06-10', NULL, NULL, NULL, NULL, NULL, '2021-05-26 06:01:51', '2021-06-12 02:07:50'),
(19, 'Joey', NULL, 'Casintahan', 'male', NULL, NULL, '2021-04-22', NULL, '2021-05-19', NULL, NULL, NULL, NULL, NULL, '2021-05-26 06:02:08', '2021-05-27 02:24:07'),
(20, 'Sandy', NULL, 'Cabigan', 'male', NULL, NULL, '2021-04-25', NULL, '2021-05-03', NULL, NULL, NULL, NULL, NULL, '2021-05-26 06:02:25', '2021-05-26 06:36:10'),
(21, 'Nervin', 'Bayugo', 'Diaz', 'male', NULL, NULL, '2021-04-25', NULL, '2021-05-03', NULL, NULL, NULL, NULL, NULL, '2021-05-26 06:02:37', '2021-11-05 05:57:50'),
(22, 'Raydan', NULL, 'Cortez', 'male', NULL, NULL, '2021-04-30', NULL, '2021-05-19', NULL, NULL, NULL, NULL, NULL, '2021-05-26 06:02:47', '2021-05-26 09:46:35'),
(23, 'Darwin', NULL, 'Dialola', 'male', NULL, NULL, '2021-05-04', NULL, '2021-05-19', NULL, NULL, NULL, NULL, NULL, '2021-05-26 06:05:53', '2021-05-27 02:25:43'),
(24, 'Samuel', NULL, 'Manlangit', 'male', NULL, NULL, '2021-05-04', NULL, '2021-05-19', NULL, NULL, NULL, NULL, NULL, '2021-05-26 06:08:43', '2021-05-27 02:23:00'),
(25, 'Alberto', NULL, 'Macalintal', 'male', NULL, '1992-12-16', '2021-05-06', NULL, '2021-05-26', NULL, NULL, NULL, NULL, NULL, '2021-05-26 06:10:11', '2021-05-27 02:41:21'),
(26, 'Stefanie', NULL, 'Macaspac', 'female', NULL, NULL, '2021-04-29', NULL, '2021-05-06', NULL, NULL, NULL, NULL, NULL, '2021-05-26 06:11:11', '2021-11-03 07:36:18'),
(27, 'Zenaida', NULL, 'Pa Dero', 'female', NULL, NULL, '2021-04-29', NULL, '2021-05-06', NULL, NULL, NULL, NULL, NULL, '2021-05-26 06:13:57', '2021-11-03 07:36:57'),
(28, 'Jenibeth', NULL, 'Padilla', 'female', NULL, NULL, '2021-04-29', NULL, '2021-05-06', NULL, NULL, NULL, NULL, NULL, '2021-05-26 06:14:46', '2021-11-03 07:37:02'),
(29, 'Henry Roy', NULL, 'Deo', 'male', NULL, '1989-06-12', '2021-05-10', NULL, '2021-06-10', NULL, NULL, NULL, NULL, NULL, '2021-05-26 06:17:12', '2021-06-12 02:08:09'),
(30, 'Dan J.b Ron', NULL, 'Avila', 'male', NULL, NULL, '2021-05-11', NULL, '2021-05-18', NULL, NULL, NULL, NULL, NULL, '2021-05-26 06:19:33', '2021-05-26 06:25:42'),
(31, 'John Freddierick', NULL, 'Balboa', 'male', NULL, NULL, '2021-05-11', NULL, '2021-05-18', NULL, NULL, NULL, NULL, NULL, '2021-05-26 06:21:47', '2021-05-26 06:26:00'),
(32, 'Alberto', 'Panganiban', 'Alfonso', 'male', NULL, '1967-05-23', '2021-05-13', NULL, '2021-06-10', NULL, NULL, NULL, NULL, NULL, '2021-05-26 06:22:51', '2021-06-12 02:09:04'),
(33, 'Eduardo', NULL, 'Valenzuela Jr', 'male', NULL, NULL, '2021-05-14', NULL, '2021-06-10', NULL, NULL, NULL, NULL, NULL, '2021-05-26 06:24:02', '2021-06-12 02:09:21'),
(34, 'Ruben', 'Udtuhan', 'Gio', 'male', 'Theft', '1974-02-24', '2021-05-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-26 06:25:01', '2021-11-14 06:03:13'),
(35, 'Paulo', NULL, 'Samson', 'male', NULL, '1994-08-21', '2021-05-19', NULL, '2021-06-10', NULL, NULL, NULL, NULL, NULL, '2021-05-26 06:31:11', '2021-06-12 02:09:34'),
(36, 'Nolasco', 'Dearoz', 'Cabaylo', 'male', NULL, '1967-01-31', '2021-05-20', NULL, '2021-06-10', NULL, NULL, NULL, NULL, NULL, '2021-05-26 06:32:21', '2021-06-12 02:09:47'),
(37, 'Jefferson', 'Vicencio', 'Natanauan', 'male', NULL, '1982-07-04', '2021-05-20', NULL, '2021-06-10', NULL, NULL, NULL, NULL, NULL, '2021-05-26 06:33:46', '2021-06-12 02:10:01'),
(38, 'Vizmark', NULL, 'Del Monte', 'male', NULL, '1998-12-22', '2021-05-26', NULL, '2021-07-07', NULL, NULL, NULL, NULL, NULL, '2021-05-27 02:46:32', '2021-07-09 14:38:03'),
(39, 'Ramiro', NULL, 'Paglinawan', 'male', NULL, '1968-05-18', '2021-05-26', NULL, '2021-07-07', NULL, NULL, NULL, NULL, NULL, '2021-05-27 02:47:34', '2021-07-09 14:38:17'),
(40, 'Michelle', 'Dela Masa', 'Tiballa', 'female', 'Sec. 11 ART II of RA 9165', NULL, '2021-01-22', NULL, '2021-10-29', '2021-10-464', 1, '2021-02-05', '2021-10-31', '(Transferred to BJMP)', '2021-05-31 03:14:55', '2021-10-31 11:00:18'),
(41, 'Apple Mae', NULL, 'Masicampo', 'female', NULL, NULL, '2021-02-22', NULL, '2021-07-01', NULL, NULL, NULL, NULL, NULL, '2021-05-31 03:15:42', '2021-11-03 07:35:22'),
(42, 'Kier Angel Man', NULL, 'Pagne', 'male', NULL, NULL, '2021-05-26', NULL, '2021-05-27', NULL, NULL, NULL, NULL, NULL, '2021-05-31 03:16:42', '2021-05-31 03:17:32'),
(43, 'Renato', NULL, 'Popes', 'male', NULL, NULL, '2021-05-27', NULL, '2021-07-07', NULL, NULL, NULL, NULL, NULL, '2021-05-31 03:18:15', '2021-07-09 14:39:18'),
(44, 'Abigael', 'Lee', 'Lagrata', 'female', 'Sec. 5 and 11 ART II of RA 9165', NULL, '2021-02-24', NULL, '2021-10-29', '2021-10-464', 1, '2021-03-09', '2021-10-31', '(Transferred to BJMP)', '2021-05-31 03:19:11', '2021-10-31 11:05:08'),
(45, 'Jessie', NULL, 'Delos Reyes', 'male', NULL, '1995-11-28', '2021-05-31', NULL, '2021-06-10', NULL, NULL, NULL, NULL, NULL, '2021-05-31 06:55:41', '2021-06-12 02:24:02'),
(46, 'Jeffrey', NULL, 'Trapalgar', 'male', NULL, '2001-01-05', '2021-05-31', NULL, '2021-06-10', NULL, NULL, NULL, NULL, NULL, '2021-05-31 06:57:01', '2021-06-12 02:22:51'),
(47, 'John Paolo', NULL, 'Alcantara', 'male', NULL, '1998-09-30', '2021-05-31', NULL, '2021-06-10', NULL, NULL, NULL, NULL, NULL, '2021-05-31 06:57:45', '2021-06-12 02:23:21'),
(48, 'Noel', NULL, 'Martillano', 'male', NULL, NULL, '2021-06-03', NULL, '2021-07-07', NULL, NULL, NULL, NULL, NULL, '2021-06-09 18:10:53', '2021-07-09 14:40:27'),
(49, 'Felipe', NULL, 'Jamon', 'male', NULL, NULL, '2021-06-07', NULL, '2021-07-02', NULL, NULL, NULL, NULL, NULL, '2021-06-09 18:11:14', '2021-07-02 05:34:14'),
(50, 'Jeric', NULL, 'Cabarles', 'male', NULL, NULL, '2021-06-09', NULL, '2021-06-21', NULL, NULL, NULL, NULL, NULL, '2021-06-09 18:11:41', '2021-07-02 05:24:10'),
(51, 'Wenceslao', NULL, 'Gallardo', 'male', NULL, NULL, '2021-06-04', NULL, '2021-06-07', NULL, NULL, NULL, NULL, NULL, '2021-06-09 18:12:16', '2021-06-09 18:12:16'),
(52, 'Elecito', NULL, 'Rabino', 'male', NULL, NULL, '2021-06-01', NULL, '2021-07-07', NULL, NULL, NULL, NULL, NULL, '2021-06-12 02:14:19', '2021-07-09 14:39:27'),
(53, 'Andrei', NULL, 'Espinar', 'male', NULL, NULL, '2021-06-01', NULL, '2021-07-07', NULL, NULL, NULL, NULL, NULL, '2021-06-12 02:14:48', '2021-07-09 14:39:52'),
(54, 'Ronaldo', NULL, 'Sosmeña', 'male', NULL, NULL, '2021-06-08', NULL, '2021-07-07', NULL, NULL, NULL, NULL, NULL, '2021-06-12 02:16:16', '2021-07-09 14:40:44'),
(55, 'Dennis', NULL, 'Vargas', 'male', NULL, NULL, '2021-06-11', NULL, '2021-07-07', NULL, NULL, NULL, NULL, NULL, '2021-06-12 02:24:41', '2021-07-09 14:41:21'),
(56, 'Allan', NULL, 'Gonzales', 'male', NULL, NULL, '2021-06-11', NULL, '2021-07-07', NULL, NULL, NULL, NULL, NULL, '2021-06-12 02:25:08', '2021-07-09 14:41:32'),
(57, 'Avelito', 'Quilao', 'Levardo', 'male', NULL, '1994-08-12', '2021-06-11', NULL, '2021-07-07', NULL, NULL, NULL, NULL, NULL, '2021-06-12 02:25:30', '2021-07-09 14:41:42'),
(58, 'Lolita', 'Daaco', 'Javier', 'female', NULL, NULL, '2021-06-11', NULL, '2021-06-15', NULL, NULL, NULL, NULL, NULL, '2021-06-12 02:26:03', '2021-11-03 07:34:35'),
(59, 'Alfred', 'Vargas', 'Almeda', 'male', NULL, NULL, '2021-06-15', NULL, '2021-06-16', NULL, NULL, NULL, NULL, NULL, '2021-06-17 07:03:10', '2021-06-17 07:03:10'),
(60, 'Lionel', 'Ramirez', 'Resnera', 'male', NULL, NULL, '2021-06-17', NULL, '2021-07-07', NULL, NULL, NULL, NULL, NULL, '2021-06-20 01:28:55', '2021-07-09 14:42:34'),
(61, 'Jersey Boy', NULL, 'Merquinez', 'male', NULL, NULL, '2021-06-20', NULL, '2021-07-07', NULL, NULL, NULL, NULL, NULL, '2021-07-01 21:56:29', '2021-07-09 14:42:44'),
(62, 'Jeffrey', 'Castillo', 'Sarabia', 'male', NULL, '1989-08-23', '2021-06-22', NULL, '2021-06-24', NULL, NULL, NULL, NULL, NULL, '2021-07-02 05:13:58', '2021-07-02 05:13:58'),
(63, 'Ferlino', NULL, 'Acbay', 'male', NULL, '1992-10-09', '2021-06-24', NULL, '2021-08-09', NULL, NULL, NULL, NULL, NULL, '2021-07-02 05:15:05', '2021-11-03 11:08:20'),
(64, 'Andro', 'Calayo', 'Mira', 'male', NULL, '1986-11-30', '2021-06-25', NULL, '2021-07-08', NULL, NULL, NULL, NULL, NULL, '2021-07-02 05:18:49', '2021-07-09 14:37:45'),
(65, 'Winifredo', NULL, 'Lende', 'male', NULL, '1968-03-22', '2021-06-28', NULL, '2021-07-07', NULL, NULL, NULL, NULL, NULL, '2021-07-02 05:20:02', '2021-07-09 14:42:54'),
(66, 'Darwin', NULL, 'Cañete', 'male', NULL, '1996-01-02', '2021-06-29', NULL, '2021-08-09', NULL, NULL, NULL, NULL, NULL, '2021-07-02 05:21:11', '2021-10-05 15:49:06'),
(67, 'Alex', NULL, 'Palaña', 'male', NULL, '1998-01-16', '2021-06-30', NULL, '2021-08-09', NULL, NULL, NULL, NULL, NULL, '2021-07-02 05:22:13', '2021-10-05 15:53:23'),
(68, 'Noel', NULL, 'Palaña', 'male', NULL, '1988-12-05', '2021-06-30', NULL, '2021-08-09', NULL, NULL, NULL, NULL, NULL, '2021-07-02 05:22:58', '2021-10-05 15:53:29'),
(69, 'John Angelo', 'Lagunzad', 'Manginao', 'male', NULL, '2021-07-01', '2021-06-30', NULL, '2021-06-30', NULL, NULL, NULL, NULL, NULL, '2021-07-06 16:51:31', '2021-07-06 16:51:31'),
(70, 'Marlon', NULL, 'Santos', 'male', NULL, NULL, '2021-06-30', NULL, '2021-06-30', NULL, NULL, NULL, NULL, NULL, '2021-07-09 13:53:19', '2021-07-09 13:53:19'),
(71, 'Mark Angelo', NULL, 'Manginaon', 'male', NULL, NULL, '2021-07-06', NULL, '2021-07-06', NULL, NULL, NULL, NULL, NULL, '2021-07-09 14:33:20', '2021-07-09 14:43:14'),
(72, 'Agusto', NULL, 'Rebamba', 'male', NULL, NULL, '2021-07-06', NULL, '2021-07-13', NULL, NULL, NULL, NULL, NULL, '2021-07-09 14:33:41', '2021-07-13 13:50:32'),
(73, 'Joel', NULL, 'Millagracia', 'male', NULL, NULL, '2021-07-06', NULL, '2021-07-13', NULL, NULL, NULL, NULL, NULL, '2021-07-09 14:34:06', '2021-07-13 13:50:13'),
(74, 'Robert', NULL, 'Imperial', 'male', NULL, NULL, '2021-07-06', NULL, '2021-08-09', NULL, NULL, NULL, NULL, NULL, '2021-07-09 14:34:29', '2021-10-05 15:51:46'),
(75, 'Diosdado', NULL, 'Veraces', 'male', NULL, NULL, '2021-07-06', NULL, '2021-08-09', NULL, NULL, NULL, NULL, NULL, '2021-07-09 14:34:49', '2021-10-05 15:56:50'),
(76, 'John Ralph', NULL, 'Lanuza', 'male', NULL, NULL, '2021-07-07', NULL, '2021-07-07', NULL, NULL, NULL, NULL, NULL, '2021-07-09 14:35:10', '2021-07-09 14:37:04'),
(77, 'Sergio', NULL, 'Panganiban', 'male', NULL, NULL, '2021-07-07', NULL, '2021-07-07', NULL, NULL, NULL, NULL, NULL, '2021-07-09 14:35:28', '2021-07-09 14:37:16'),
(78, 'Jessie', NULL, 'Forgalidad', 'male', NULL, NULL, '2021-07-08', NULL, '2021-08-09', NULL, NULL, NULL, NULL, NULL, '2021-07-09 14:35:58', '2021-10-05 15:51:28'),
(79, 'Alexander', NULL, 'Amaro', 'male', NULL, NULL, '2021-07-08', NULL, '2021-08-09', NULL, NULL, NULL, NULL, NULL, '2021-07-09 14:36:18', '2021-10-05 15:47:41'),
(80, 'Michael', NULL, 'Delos Santos', 'male', NULL, '1984-07-06', '2021-07-03', NULL, '2021-07-14', NULL, NULL, NULL, NULL, NULL, '2021-07-11 14:37:38', '2021-07-14 08:18:35'),
(81, 'Artemio', 'Biliran', 'Sauquillo', 'male', NULL, '1987-09-24', '2021-07-13', NULL, '2021-08-09', NULL, NULL, NULL, NULL, NULL, '2021-07-13 13:51:24', '2021-10-05 15:54:54'),
(82, 'Rhea Camille', 'Niez', 'Matunhay', 'female', 'Sec 11 ART II of RA 9165', '2002-09-11', '2021-07-13', NULL, '2021-10-29', '2021-10-464', 1, '2021-07-27', '2021-10-31', '(Transferred to BJMP)', '2021-07-13 13:51:59', '2021-10-31 11:04:31'),
(83, 'Alexander', NULL, 'Ferrer', 'male', NULL, NULL, '2021-07-13', NULL, '2021-08-09', NULL, NULL, NULL, NULL, NULL, '2021-07-13 16:56:46', '2021-10-05 16:16:43'),
(84, 'Cris', NULL, 'Villareal', 'male', NULL, NULL, '2021-07-13', NULL, '2021-08-09', NULL, NULL, NULL, NULL, NULL, '2021-07-13 16:57:30', '2021-10-05 15:56:56'),
(85, 'Joan Pauline', 'Castanares', 'Flores', 'female', 'Sec 11 ART II of RA 9165', NULL, '2021-07-13', NULL, '2021-10-29', '2021-10-464', 1, '2021-07-27', '2021-10-31', '(Transferred to BJMP)', '2021-07-13 16:59:22', '2021-10-31 14:01:26'),
(86, 'Janet', NULL, 'Aluciman', 'female', NULL, '1974-03-21', '2021-07-17', NULL, '2021-07-22', NULL, NULL, NULL, NULL, NULL, '2021-07-19 19:00:34', '2021-07-22 23:42:12'),
(87, 'Reynan', 'Barca', 'Alvarado', 'male', 'Murder', '1989-05-06', '2021-07-14', NULL, '2021-10-29', '2021-10-464', 1, '2021-08-10', '2021-10-31', '(Transferred to BJMP)', '2021-07-19 19:01:45', '2021-10-31 11:03:42'),
(88, 'John Robert', 'Rosales', 'Aying', 'male', NULL, NULL, '2021-07-16', NULL, '2021-07-16', NULL, NULL, NULL, NULL, NULL, '2021-07-19 19:02:39', '2021-07-19 19:06:53'),
(89, 'Jayson', 'Roncal', 'Jamer', 'male', 'Sec 5 and 11 ART II of RA 9165', NULL, '2021-07-22', NULL, '2021-10-29', '2021-10-464', 1, '2021-08-04', '2021-10-31', '(Transferred to BJMP)', '2021-07-22 23:40:15', '2021-10-31 11:05:40'),
(90, 'Maria Theresa', 'Ocampo', 'Miranda', 'female', 'Sec 5 and 11 ART II of RA 9165', NULL, '2021-07-22', NULL, '2021-10-29', '2021-10-464', 1, '2021-08-04', '2021-10-31', '(Transferred to BJMP)', '2021-07-22 23:41:14', '2021-10-31 10:58:45'),
(91, 'Malo', 'Sayuman', 'Malabanan', 'female', NULL, NULL, '2021-07-20', NULL, '2021-09-20', NULL, NULL, NULL, NULL, NULL, '2021-07-22 23:41:40', '2021-10-05 16:48:39'),
(92, 'Richard', 'Dias', 'Oracion', 'male', 'Sec 5 and 11 ART II of RA 9165', '1982-06-29', '2021-07-24', NULL, '2021-10-29', '2021-10-464', 1, '2021-08-04', '2021-10-31', '(Transferred to BJMP)', '2021-07-24 21:22:57', '2021-10-31 11:01:22'),
(93, 'Jose', 'Bacig', 'Carpina', 'male', NULL, '1958-06-19', '2021-07-25', NULL, '2021-07-26', NULL, NULL, NULL, NULL, NULL, '2021-07-25 14:46:04', '2021-07-26 08:08:05'),
(94, 'Dennis', 'Amorin', 'Sarmiento', 'male', 'Sec 5 and 11 ART II of RA 9165', '1995-02-12', '2021-07-27', NULL, '2021-10-29', '2021-10-464', 1, '2021-08-10', '2021-10-31', '(Transferred to BJMP)', '2021-07-30 17:01:10', '2021-10-31 10:58:17'),
(95, 'Richard', 'Torres', 'Panciles', 'male', NULL, '1979-01-26', '2021-08-31', NULL, '2021-09-27', NULL, NULL, NULL, NULL, NULL, '2021-07-30 17:02:16', '2021-10-05 16:54:04'),
(96, 'Aira', NULL, 'Sales', 'female', NULL, NULL, '2021-07-29', NULL, '2021-08-25', NULL, NULL, NULL, NULL, NULL, '2021-07-30 17:03:06', '2021-11-03 07:33:24'),
(97, 'Annaliza', 'Torres', 'Panciles', 'female', NULL, NULL, '2021-08-31', NULL, '2021-09-27', NULL, NULL, NULL, NULL, NULL, '2021-07-30 17:04:13', '2021-10-05 16:54:10'),
(98, 'Carlo', NULL, 'Almendras', 'male', NULL, NULL, '2021-08-08', NULL, '2021-08-10', NULL, NULL, NULL, NULL, NULL, '2021-10-05 15:04:17', '2021-10-05 15:04:17'),
(99, 'Ezekiel', 'Onella', 'Bautista', 'male', 'Sec 5 and 11 ART II of RA 9165', NULL, '2021-08-28', NULL, '2021-10-29', '2021-10-464', 1, '2021-09-15', '2021-10-31', '(Transferred to BJMP)', '2021-10-05 15:05:34', '2021-10-31 11:08:45'),
(100, 'Marlon', NULL, 'Burgos', 'male', NULL, NULL, '2021-08-08', NULL, '2021-08-10', NULL, NULL, NULL, NULL, NULL, '2021-10-05 15:06:29', '2021-10-05 15:06:29'),
(101, 'Elmer', NULL, 'Cacatihan', 'male', NULL, NULL, '2021-08-08', NULL, '2021-08-10', NULL, NULL, NULL, NULL, NULL, '2021-10-05 15:07:13', '2021-10-05 15:07:13'),
(102, 'Eduardo', 'Catapang', 'Catibog', 'male', 'Sec 5 and 11 ART II of RA 9165', NULL, '2021-08-10', NULL, '2021-10-29', '2021-10-464', 1, '2021-09-15', '2021-10-31', '(Transferred to BJMP)', '2021-10-05 15:09:00', '2021-10-31 11:08:36'),
(103, 'Jonnel', 'Peneda', 'Cerdeña', 'male', 'Sec 10 (a) of RA 7610', NULL, '2021-08-07', NULL, '2021-10-29', '2021-10-464', 1, '2021-08-25', '2021-10-31', '(Transferred to BJMP)', '2021-10-05 15:09:40', '2021-10-31 11:08:12'),
(104, 'Mark', 'Llanto', 'Cortez', 'male', NULL, NULL, '2021-08-08', NULL, '2021-08-10', NULL, NULL, NULL, NULL, NULL, '2021-10-05 15:11:12', '2021-10-05 15:30:45'),
(105, 'Samuel', NULL, 'Dagonon', 'male', NULL, NULL, '2021-08-12', NULL, '2021-08-13', NULL, NULL, NULL, NULL, NULL, '2021-10-05 15:11:53', '2021-10-05 15:11:53'),
(106, 'Gaudencio', 'Esteves', 'David', 'male', NULL, NULL, '2021-08-20', NULL, '2021-08-24', NULL, NULL, NULL, NULL, NULL, '2021-10-05 15:13:17', '2021-10-05 15:13:17'),
(107, 'Melvin', NULL, 'Emia', 'male', NULL, NULL, '2021-08-08', NULL, '2021-08-10', NULL, NULL, NULL, NULL, NULL, '2021-10-05 15:14:00', '2021-10-05 15:14:00'),
(108, 'Rey', 'Manrique', 'Fernandez', 'male', NULL, NULL, '2021-08-09', NULL, '2021-08-12', NULL, NULL, NULL, NULL, NULL, '2021-10-05 15:14:39', '2021-10-05 15:14:39'),
(109, 'Larry', NULL, 'Javier', 'male', NULL, NULL, '2021-08-08', NULL, '2021-08-10', NULL, NULL, NULL, NULL, NULL, '2021-10-05 15:15:16', '2021-10-05 15:15:16'),
(110, 'Christopher', 'Vasquez', 'Ladica', 'male', 'Section 10 (a) of RA 7610', NULL, '2021-08-21', NULL, '2021-10-16', '2021-10-440', 1, '2021-10-15', '2021-10-16', 'Bail Bond', '2021-10-05 15:16:11', '2021-10-31 11:46:54'),
(111, 'Leonardo', NULL, 'Loyola', 'male', NULL, NULL, '2021-08-08', NULL, '2021-08-10', NULL, NULL, NULL, NULL, NULL, '2021-10-05 15:16:41', '2021-10-05 15:16:41'),
(112, 'Rossano', 'Villeza', 'Macha', 'male', 'Sec 5 and 11 ART II of RA 9165', NULL, '2021-08-29', NULL, '2021-10-29', '2021-10-464', 1, '2021-09-15', '2021-10-31', '(Transferred to BJMP)', '2021-10-05 15:17:25', '2021-10-31 11:09:24'),
(113, 'Gilbert', 'Padre', 'Manzano', 'male', 'RA 7610', NULL, '2021-08-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-05 15:17:56', '2021-10-27 14:25:53'),
(114, 'Roldan', 'Abellana', 'Maypa', 'male', 'Sec 5 and 11 ART II of RA 9165', NULL, '2021-08-02', NULL, '2021-10-29', '2021-10-464', 1, '2021-08-10', '2021-10-31', '(Transferred to BJMP)', '2021-10-05 15:18:41', '2021-10-31 11:04:03'),
(115, 'Nelvin', 'Mendoza', 'Cipriano', 'male', 'Sec 5 and 11 ART II of RA 9165', NULL, '2021-08-27', NULL, '2021-10-29', '2021-10-464', 1, '2021-09-15', '2021-10-31', '(Transferred to BJMP)', '2021-10-05 15:20:05', '2021-10-31 11:07:18'),
(116, 'Guillermo', 'Panopio', 'Miranda', 'male', 'Sec 5 and 11 ART II of RA 9165', NULL, '2021-08-10', NULL, '2021-10-29', '2021-10-464', 1, '2021-09-15', '2021-10-31', '(Transferred to BJMP)', '2021-10-05 15:21:03', '2021-10-31 11:03:28'),
(117, 'Sanny', 'Maala', 'Naz', 'male', 'Sec 5 and 11 ART II of RA 9165', NULL, '2021-08-10', NULL, '2021-10-29', '2021-10-464', 1, '2021-09-15', '2021-10-31', '(Transferred to BJMP)', '2021-10-05 15:21:27', '2021-10-31 11:02:00'),
(118, 'Joel', 'Mendoza', 'Paulin', 'male', 'Frustrated Homicide', NULL, '2021-08-27', NULL, '2021-10-29', '2021-10-464', 1, '2021-09-09', '2021-10-31', '(Transferred to BJMP)', '2021-10-05 15:33:02', '2021-10-31 10:59:05'),
(119, 'Mark Anthony', 'Serenio', 'Rodriguez', 'male', NULL, NULL, '2021-08-27', NULL, '2021-08-25', NULL, NULL, NULL, NULL, NULL, '2021-10-05 15:35:39', '2021-10-05 15:35:39'),
(120, 'Warren', 'Villanueva', 'Solmoro', 'male', NULL, NULL, '2021-08-22', NULL, '2021-08-22', NULL, NULL, NULL, NULL, NULL, '2021-10-05 15:37:40', '2021-10-05 15:37:40'),
(121, 'Rex Slander', NULL, 'Tolentino', 'male', NULL, NULL, '2021-08-08', NULL, '2021-08-10', NULL, NULL, NULL, NULL, NULL, '2021-10-05 15:40:03', '2021-10-05 15:40:03'),
(122, 'Aljhen', 'Umali', 'Torres', 'male', NULL, NULL, '2021-08-31', NULL, '2021-09-03', NULL, NULL, NULL, NULL, NULL, '2021-10-05 15:40:46', '2021-10-05 16:56:08'),
(123, 'Jhen Adrei', 'Umali', 'Torres', 'male', NULL, NULL, '2021-08-31', NULL, '2021-09-03', NULL, NULL, NULL, NULL, NULL, '2021-10-05 15:41:21', '2021-10-05 16:56:13'),
(124, 'Robert', 'Dalupe', 'Tupas', 'male', 'Sec 5 and 11 ART II of RA 9165', NULL, '2021-08-18', NULL, '2021-10-29', '2021-10-464', 1, '2021-09-15', '2021-10-31', '(Transferred to BJMP)', '2021-10-05 15:41:53', '2021-10-31 11:02:17'),
(125, 'Romar', NULL, 'Umandap', 'male', NULL, NULL, '2021-08-08', NULL, '2021-08-10', NULL, NULL, NULL, NULL, NULL, '2021-10-05 15:42:24', '2021-10-05 15:42:48'),
(126, 'Feliciano', 'Joson', 'Aranda', 'male', NULL, NULL, '2021-09-07', NULL, '2021-09-10', NULL, NULL, NULL, NULL, NULL, '2021-10-05 16:27:12', '2021-10-05 16:45:55'),
(127, 'Jeffrey', 'Joson', 'Aranda', 'male', NULL, NULL, '2021-09-07', NULL, '2021-09-10', NULL, NULL, NULL, NULL, NULL, '2021-10-05 16:27:33', '2021-10-05 16:46:00'),
(128, 'Jonathan', 'Rodorocio', 'Arches', 'male', 'Sec 5 and 11 ART II of RA 9165', NULL, '2021-09-09', NULL, '2021-10-29', '2021-10-464', 1, '2021-09-27', '2021-10-31', '(Transferred to BJMP)', '2021-10-05 16:28:04', '2021-10-31 11:09:15'),
(129, 'Julius', 'Padilla', 'Bibay', 'male', NULL, NULL, '2021-09-05', NULL, '2021-09-05', NULL, NULL, NULL, NULL, NULL, '2021-10-05 16:28:37', '2021-10-05 16:46:22'),
(130, 'Elmer', 'Alfaro', 'Cabrera', 'male', NULL, NULL, '2021-09-02', NULL, '2021-09-06', NULL, NULL, NULL, NULL, NULL, '2021-10-05 16:29:05', '2021-10-05 16:46:45'),
(131, 'Jose Ariel', 'Madoro', 'Camacho Jr.', 'male', NULL, NULL, '2021-09-07', NULL, '2021-09-10', NULL, NULL, NULL, NULL, NULL, '2021-10-05 16:29:47', '2021-10-05 16:47:24'),
(132, 'Robert', 'Catulong', 'Cerdeña', 'male', 'Rape', NULL, '2021-09-27', NULL, '2021-10-29', '2021-10-464', 1, '2021-10-13', '2021-10-31', '(Transferred to BJMP)', '2021-10-05 16:30:34', '2021-10-31 11:07:35'),
(133, 'Ricky', 'Levardo', 'Corpin', 'male', 'Sec 5 and 11 ART II of RA 9165', NULL, '2021-09-28', NULL, '2021-10-29', '2021-10-464', 1, '2021-10-12', '2021-10-31', '(Transferred to BJMP)', '2021-10-05 16:31:08', '2021-10-31 11:07:01'),
(134, 'Kerveen', 'Cabral', 'Dorado', 'male', 'Sec 5 and 11 ART II of RA 9165', NULL, '2021-09-30', NULL, '2021-10-29', '2021-10-464', 1, '2021-10-21', '2021-10-31', '(Transferred to BJMP)', '2021-10-05 16:31:49', '2021-10-31 11:06:17'),
(135, 'Jovan', 'Sarmiento', 'Gabelo', 'male', 'Sec 5 and 11 ART II of RA 9165', NULL, '2021-09-17', NULL, '2021-10-29', '2021-10-464', 1, '2021-09-27', '2021-10-31', '(Transferred to BJMP)', '2021-10-05 16:32:12', '2021-10-31 11:05:51'),
(136, 'Christian', 'Cruz', 'Guttierez', 'male', 'RIR', NULL, '2021-09-14', NULL, '2021-10-12', '2021-10-433', 1, '2021-10-12', '2021-10-12', 'Bail Bond', '2021-10-05 16:32:41', '2021-10-31 11:47:38'),
(137, 'Edmar', 'Amparo', 'Hernandez', 'male', NULL, NULL, '2021-09-24', NULL, '2021-09-30', NULL, NULL, NULL, NULL, NULL, '2021-10-05 16:33:29', '2021-10-05 16:47:48'),
(138, 'Norman', 'Ronero', 'Magat', 'male', NULL, NULL, '2021-09-07', NULL, '2021-09-10', NULL, NULL, NULL, NULL, NULL, '2021-10-05 16:33:50', '2021-10-05 16:48:08'),
(139, 'Ronald', 'Inicencio', 'Maglaya', 'male', 'Sec 5 and 11 ART II of RA 9165', NULL, '2021-09-10', NULL, '2021-10-29', '2021-10-464', 1, '2021-09-27', '2021-10-31', '(Transferred to BJMP)', '2021-10-05 16:34:24', '2021-10-31 11:04:50'),
(140, 'Carfil', 'Aranda', 'Memije', 'male', NULL, NULL, '2021-09-07', NULL, '2021-09-10', NULL, NULL, NULL, NULL, NULL, '2021-10-05 16:35:29', '2021-10-05 16:53:40'),
(141, 'Roelito', 'Durumpili', 'Montre', 'male', 'Sec 5 and 11 ART II of RA 9165', NULL, '2021-09-29', NULL, '2021-10-29', '2021-10-464', 1, '2021-10-21', '2021-10-31', '(Transferred to BJMP)', '2021-10-05 16:35:55', '2021-10-31 11:03:13'),
(142, 'Wilnor', 'Aves', 'Peñales', 'male', NULL, NULL, '2021-09-07', NULL, '2021-09-10', NULL, NULL, NULL, NULL, NULL, '2021-10-05 16:36:27', '2021-10-05 16:54:34'),
(143, 'Letty', 'Tan', 'Polillo', 'female', 'Slight Physical Injuries', NULL, '2021-09-30', NULL, '2021-10-04', '2021-10-411', 1, '2021-10-04', '2021-10-04', 'Cash Bond', '2021-10-05 16:36:53', '2021-10-08 16:31:48'),
(144, 'Conrado', 'Malaiba', 'Realon', 'male', NULL, NULL, '2021-09-09', NULL, '2021-09-09', NULL, NULL, NULL, NULL, NULL, '2021-10-05 16:37:26', '2021-10-05 16:55:08'),
(145, 'Victorio', 'Lirios', 'Vargas', 'male', 'Sec 5 and 11 ART II of RA 9165', NULL, '2021-09-28', NULL, '2021-10-29', '2021-10-464', 1, '2021-10-12', '2021-10-31', '(Transferred to BJMP)', '2021-10-05 16:37:54', '2021-10-31 11:03:00'),
(146, 'Froilan', 'Frondo', 'Zulueta', 'male', 'RIR DAMAGED TO  PROPERTY AND VIOL OF SEC 56(e) OF RA 4136', NULL, '2021-09-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-05 16:38:31', '2021-10-27 14:19:45'),
(147, 'Mian', 'Toledo', 'Sevilla', 'female', NULL, NULL, '2021-09-07', NULL, '2021-09-10', NULL, NULL, NULL, NULL, NULL, '2021-10-05 16:43:55', '2021-10-05 16:55:28'),
(148, 'Marcos', 'Macaraeg', 'Toledo', 'male', NULL, NULL, '2021-09-09', NULL, '2021-09-09', NULL, NULL, NULL, NULL, NULL, '2021-10-05 16:44:40', '2021-10-05 16:55:44'),
(149, 'Severino', 'Alpeche', 'Ang', 'male', 'Qualified Theft', NULL, '2021-10-03', NULL, '2021-10-11', '2021-10-430', 1, '2021-10-11', '2021-10-11', 'Surety Bond', '2021-10-05 16:58:28', '2021-10-31 11:48:06'),
(150, 'Joselito', 'Lopez', 'Purificacion', 'male', 'Attempted Homicide', NULL, '2021-10-04', NULL, '2021-10-07', '2021-10-416', 1, '2021-10-07', '2021-10-07', 'Cash Bond', '2021-10-05 16:58:59', '2021-10-08 16:16:39'),
(151, 'Mark Anthony', 'Dequina', 'Arandia', 'male', 'RIR', NULL, '2021-10-06', NULL, '2021-10-07', '2021-10-415', 1, '2021-10-07', '2021-10-07', 'Affidavit (Kasunduan)', '2021-10-07 03:45:57', '2021-10-08 16:14:56'),
(152, 'Marnie', 'Blasorca', 'Macabuhay', 'female', 'Theft', NULL, '2021-10-06', NULL, '2021-10-14', '2021-10-435', 2, '2021-10-06', '2021-10-14', 'Cash Bond', '2021-10-07 03:48:03', '2021-10-31 11:47:20'),
(154, 'Steven', 'Reyes', 'Samson', 'male', NULL, NULL, '2021-01-07', NULL, '2021-04-10', NULL, NULL, NULL, NULL, NULL, '2021-10-07 05:40:03', '2021-10-07 05:40:03'),
(155, 'Lester', 'Perez', 'Micosa', 'male', NULL, NULL, '2021-03-03', NULL, '2021-04-13', NULL, NULL, NULL, NULL, NULL, '2021-10-07 05:42:59', '2021-11-05 05:39:54'),
(158, 'Jay-ar', 'Monares', 'Ramos', 'male', NULL, NULL, '2021-02-16', NULL, '2021-05-10', NULL, NULL, NULL, NULL, NULL, '2021-10-07 05:47:33', '2021-10-07 05:47:33'),
(159, 'Benjamin', 'De Salit', 'Bianzon', 'male', NULL, NULL, '2021-02-18', NULL, '2021-04-10', NULL, NULL, NULL, NULL, NULL, '2021-10-07 05:48:25', '2021-10-07 05:48:25'),
(161, 'Edwin', 'Viraña', 'Sibolino', 'male', NULL, NULL, '2021-02-24', NULL, '2021-04-10', NULL, NULL, NULL, NULL, NULL, '2021-10-07 05:50:18', '2021-10-07 05:50:18'),
(162, 'John Kenneth', 'Torio', 'Tambangan', 'male', NULL, NULL, '2021-03-01', NULL, '2021-04-10', NULL, NULL, NULL, NULL, NULL, '2021-10-07 05:50:53', '2021-10-07 05:50:53'),
(163, 'Orlando', 'Rason', 'Pereña', 'male', NULL, NULL, '2021-03-11', NULL, '2021-04-13', NULL, NULL, NULL, NULL, NULL, '2021-10-07 05:51:38', '2021-10-07 05:51:38'),
(164, 'Rhomel', 'Capanayan', 'Bituin', 'male', NULL, NULL, '2021-03-18', NULL, '2021-04-05', NULL, NULL, NULL, NULL, NULL, '2021-10-07 05:52:56', '2021-10-07 05:52:56'),
(165, 'Randy', 'Gamboa', 'Masaga', 'male', NULL, NULL, '2021-03-28', NULL, '2021-04-26', NULL, NULL, NULL, NULL, NULL, '2021-10-07 05:53:51', '2021-10-07 05:53:51'),
(166, 'Richard', NULL, 'Mortera', 'male', NULL, NULL, '2021-04-02', NULL, '2021-04-02', NULL, NULL, NULL, NULL, NULL, '2021-10-07 05:54:40', '2021-10-07 05:54:40'),
(168, 'Leopoldo', 'Sulita', 'Viscara', 'male', NULL, NULL, '2021-04-05', NULL, '2021-04-15', NULL, NULL, NULL, NULL, NULL, '2021-10-07 05:56:01', '2021-11-05 05:46:50'),
(169, 'Roland', NULL, 'Lalog', 'male', NULL, NULL, '2021-04-11', NULL, '2021-04-26', NULL, NULL, NULL, NULL, NULL, '2021-10-07 05:57:01', '2021-10-07 05:57:01'),
(170, 'Arman', NULL, 'Lanac', 'male', NULL, NULL, '2021-04-11', NULL, '2021-04-26', NULL, NULL, NULL, NULL, NULL, '2021-10-07 05:57:27', '2021-10-07 05:57:27'),
(172, 'Angelica', 'Palacio', 'Viscara', 'female', NULL, NULL, '2021-04-14', NULL, '2021-04-15', NULL, NULL, NULL, NULL, NULL, '2021-10-07 05:59:35', '2021-11-05 05:47:03'),
(173, 'Ricardo', NULL, 'Labe', 'male', NULL, NULL, '2021-04-16', NULL, '2021-04-29', NULL, NULL, NULL, NULL, NULL, '2021-10-07 06:00:20', '2021-10-07 06:00:20'),
(176, 'Ronaldo', NULL, 'Lopez', 'male', NULL, NULL, '2021-04-25', NULL, '2021-04-29', NULL, NULL, NULL, NULL, NULL, '2021-10-07 06:01:45', '2021-10-07 06:01:45'),
(177, 'Albert', NULL, 'Ranara', 'male', NULL, NULL, '2021-04-25', NULL, '2021-04-29', NULL, NULL, NULL, NULL, NULL, '2021-10-07 06:02:12', '2021-10-07 06:02:12'),
(178, 'Jordan', NULL, 'Ranara', 'male', NULL, NULL, '2021-04-25', NULL, '2021-04-29', NULL, NULL, NULL, NULL, NULL, '2021-10-07 06:02:41', '2021-10-07 06:02:41'),
(181, 'Cyprian', 'Vanguardia', 'Flores', 'male', 'BP22', NULL, '2021-10-07', NULL, '2021-10-07', '2021-10-419', 1, '2021-10-07', '2021-10-07', 'Cash Bond', '2021-10-07 12:15:55', '2021-10-08 16:15:49'),
(184, 'Arnold', 'Bañares', 'Señido', 'male', 'Sec. 5 and 11 Art. II of RA 9165', '1981-09-25', '2021-10-08', NULL, '2021-10-29', '2021-10-464', 1, '2021-10-21', '2021-10-31', '(Transferred to BJMP)', '2021-10-08 15:19:01', '2021-10-31 10:59:41'),
(185, 'Jerox', 'Camacho', 'Lodor', 'male', 'Frustrated Murder', NULL, '2021-10-09', NULL, '2021-10-11', '2021-10-429', 1, '2021-10-11', '2021-10-31', 'Affidavit (Kasunduan)', '2021-10-08 17:31:35', '2021-10-31 11:48:21'),
(186, 'Florence May', 'Francisco', 'Racimo', 'female', 'RIR', NULL, '2021-10-10', NULL, '2021-10-11', '2021-10-427', 1, '2021-10-11', '2021-10-11', 'Affidavit (Kasunduan)', '2021-10-11 01:30:46', '2021-10-31 11:48:53'),
(188, 'Rodrigo', 'Pagdunsulan', 'Gamez', 'male', 'BP22', NULL, '2021-10-11', NULL, '2021-10-12', '2021-10-432', 1, '2021-10-12', '2021-10-12', 'Bail Bond', '2021-10-11 13:14:54', '2021-10-31 11:47:56'),
(189, 'Diosdado', 'Nanip', 'Yango Jr.', 'male', 'BP22', NULL, '2021-10-11', NULL, '2021-10-12', '2021-10-434', 1, '2021-10-12', '2021-10-12', 'Cash Bond', '2021-10-11 13:16:14', '2021-11-08 06:24:26'),
(190, 'Noe', 'Paloma', 'Mallorca', 'male', 'RIR Resulting to Homicide\r\nPhysical Injury', '1961-03-06', '2021-10-14', NULL, '2021-10-15', '2021-10-438', 1, '2021-10-15', '2021-10-15', 'Affidavit (Kasunduan)', '2021-10-14 14:46:24', '2021-10-31 11:47:11'),
(191, 'Hamlet', 'Rivas', 'Cuasay', 'male', 'SEC 5 and 11 ART. 2 RA 9165', NULL, '2021-10-15', '2021-11-02', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-16 01:47:19', '2021-11-15 12:56:03'),
(192, 'Noel', 'Purrificacion', 'Barriga', 'male', 'Sec. 5 and 11 ART II of RA 9165', '1972-10-23', '2021-10-16', '2021-11-02', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-16 15:22:10', '2021-11-15 12:54:35'),
(193, 'Allan Xavier', 'Laudiza', 'Reyes', 'male', 'Stabbing Incident', NULL, '2021-10-20', NULL, '2021-10-20', '2021-10-447', 1, '2021-10-20', '2021-10-20', 'Affidavit (Kasunduan)', '2021-10-20 13:07:41', '2021-10-31 11:46:45'),
(194, 'Mark Allan', 'Dela Cerna', 'Espiritu', 'male', 'Sec. 5 and 11 ART II of RA 9165', NULL, '2021-10-20', '2021-11-10', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-21 14:00:53', '2021-11-15 12:52:56'),
(195, 'Exevino', 'Reyes', 'Medina', 'male', 'Sec. 5 and 11 ART II of RA 9165', '1971-08-23', '2021-10-22', '2021-11-10', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 13:51:20', '2021-11-15 12:52:30'),
(197, 'Rodrigo', 'Samson', 'Guanizo', 'male', 'RIR Damage to Property', NULL, '2021-10-24', NULL, '2021-11-04', '2021-11-478', 1, '2021-11-04', NULL, 'Bail Bond', '2021-10-24 05:36:24', '2021-11-04 13:40:05'),
(198, 'Nerrisa', 'Alcober', 'Reyes', 'female', 'Theft', NULL, '2021-10-25', NULL, '2021-11-02', '2021-11-467', 2, '2021-11-02', '2021-11-02', 'Cash Bond', '2021-10-25 14:57:31', '2021-11-02 06:40:29'),
(199, 'Michael', 'Inocia', 'Tumbaga', 'male', 'Sec. 5 and 11 ART II of RA 9165', '1989-06-22', '2021-10-27', '2021-11-10', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-28 13:51:27', '2021-11-15 12:53:35'),
(200, 'Mark Braian', 'Zapico', 'Igharas', 'male', 'Sec. 5 and 11 ART II of RA 9165', '1990-01-03', '2021-10-27', '2021-11-10', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-28 13:56:07', '2021-11-15 12:54:12'),
(201, 'Remielyn', 'Hernandez', 'Sardido', 'female', 'Sec. 5 and 11 ART II of RA 9165', '1987-06-20', '2021-10-27', '2021-11-10', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-28 13:57:24', '2021-11-15 12:54:00'),
(202, 'Ronald', 'Atienza', 'Durumpili', 'male', 'Section 5 & 11 Article II RA 9165', '1984-06-02', '2021-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-28 15:02:09', '2021-10-28 15:02:09'),
(203, 'Raymond', 'Bondoc', 'Sarmiento', 'male', 'Theft', NULL, '2021-10-31', NULL, '2021-11-18', '2021-11-499', 2, '2021-11-18', NULL, 'Bail Bond', '2021-10-31 13:51:28', '2021-11-18 07:58:21'),
(204, 'Roberto', 'Roque', 'Gallano', 'male', 'RIR Damage to Property', NULL, '2021-11-03', NULL, '2021-11-03', '2021-11-472', 2, '2021-11-03', '2021-11-03', 'Affidavit (Kasunduan)', '2021-11-03 09:37:21', '2021-11-03 11:49:51'),
(205, 'Kears Glenn', NULL, 'Veloso', 'male', 'Violation of PD 1602', NULL, '2021-11-03', NULL, '2021-11-15', '2021-11-496', 3, '2021-11-15', NULL, 'Bail Bond', '2021-11-03 11:50:37', '2021-11-15 09:29:47'),
(206, 'Ruel', 'Grangos', 'Purificacion', 'male', 'Sec. 5 and 11 ART II of RA 9165', '1973-10-29', '2021-11-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-04 13:41:31', '2021-11-04 13:41:31'),
(207, 'Sonia', 'Motas', 'Cortez', 'female', 'Sec. 5 and 11 ART II of RA 9165', '1979-03-01', '2021-11-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-04 13:42:46', '2021-11-04 13:42:46'),
(208, 'Ralf Azel', 'Castillo', 'Motas', 'male', 'Murder', '1992-03-02', '2021-11-03', '2021-11-10', NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-04 13:43:54', '2021-11-15 12:51:59'),
(209, 'John Carlo', 'Roz', 'Gutierrez', 'male', NULL, NULL, '2021-04-25', NULL, '2021-04-29', NULL, NULL, NULL, NULL, NULL, '2021-11-04 14:29:11', '2021-11-04 14:29:11'),
(210, 'Bert', 'Solis', 'Lova', 'male', NULL, NULL, '2021-04-25', NULL, '2021-04-29', NULL, NULL, NULL, NULL, NULL, '2021-11-04 14:29:11', '2021-11-04 14:29:11'),
(211, 'Raymond', 'Parago', 'Zeta', 'male', NULL, NULL, '2021-04-25', NULL, '2021-04-29', NULL, NULL, NULL, NULL, NULL, '2021-11-04 14:29:11', '2021-11-04 14:29:11'),
(212, 'Renier', 'Perez', 'Zeta', 'male', NULL, NULL, '2021-04-25', NULL, '2021-04-29', NULL, NULL, NULL, NULL, NULL, '2021-11-04 14:29:11', '2021-11-04 14:29:11'),
(213, 'Joshua', 'Rico', 'Angcaya', 'male', NULL, NULL, '2021-04-20', NULL, '2021-04-21', NULL, NULL, NULL, NULL, NULL, '2021-11-04 14:29:11', '2021-11-04 14:29:11'),
(214, 'Avelina', 'Laurora', 'Apuntar', 'male', NULL, NULL, '2021-04-20', NULL, '2021-04-21', NULL, NULL, NULL, NULL, NULL, '2021-11-04 14:29:11', '2021-11-04 14:29:11'),
(215, 'Dennis', 'Cabatuan', 'Larong', 'male', NULL, NULL, '2021-04-11', NULL, '2021-04-16', NULL, NULL, NULL, NULL, NULL, '2021-11-04 14:29:11', '2021-11-04 14:29:11'),
(218, 'Jimmy', 'Ornopia', 'Montañez Jr', 'male', NULL, NULL, '2021-02-06', NULL, '2021-04-11', NULL, NULL, NULL, NULL, NULL, '2021-11-04 14:29:11', '2021-11-04 14:29:11'),
(219, 'Eduardo', 'Calitis', 'Milagroso', 'male', NULL, NULL, '2021-02-14', NULL, '2021-04-11', NULL, NULL, NULL, NULL, NULL, '2021-11-04 14:29:11', '2021-11-04 14:29:11'),
(220, 'Ben-hur', 'Magtoles', 'Villarin', 'male', NULL, NULL, '2021-02-24', NULL, '2021-04-11', NULL, NULL, NULL, NULL, NULL, '2021-11-04 14:29:11', '2021-11-04 14:29:11'),
(221, 'John Adrian', 'Abantao', 'Apura', 'male', NULL, NULL, '2021-03-01', NULL, '2021-04-11', NULL, NULL, NULL, NULL, NULL, '2021-11-04 14:29:11', '2021-11-04 14:29:11'),
(222, 'Niel', 'Deleon', 'Borromeo', 'male', 'Frustrated', NULL, '2021-04-05', NULL, '2021-04-08', NULL, NULL, NULL, NULL, NULL, '2021-11-04 14:29:11', '2021-11-04 14:29:11'),
(223, 'Salvador', 'Sulano', 'Alpache', 'male', NULL, NULL, '2021-03-23', NULL, '2021-03-24', NULL, NULL, NULL, NULL, NULL, '2021-11-04 14:29:12', '2021-11-04 14:29:12'),
(224, 'Edwardo', 'Valenzuela', 'Loyola', 'male', NULL, NULL, '2020-12-29', NULL, '2021-03-19', NULL, NULL, NULL, NULL, NULL, '2021-11-04 14:29:12', '2021-11-04 14:29:12'),
(225, 'Edwin', 'Parolina', 'Belen', 'male', NULL, NULL, '2021-03-04', NULL, '2021-03-19', NULL, NULL, NULL, NULL, NULL, '2021-11-04 14:29:12', '2021-11-04 14:29:12'),
(226, 'Elpidio', 'Sibulino', 'Barlao', 'male', NULL, NULL, '2021-03-16', NULL, '2021-03-19', NULL, NULL, NULL, NULL, NULL, '2021-11-04 14:29:12', '2021-11-04 14:29:12'),
(227, 'Engilbert', 'Gonzales', 'Mendoza', 'male', NULL, NULL, '2021-03-16', NULL, '2021-03-19', NULL, NULL, NULL, NULL, NULL, '2021-11-04 14:29:12', '2021-11-04 14:29:12'),
(228, 'Jeffrey', 'Trinidad', 'Ello', 'male', NULL, NULL, '2021-03-07', NULL, '2021-03-12', NULL, NULL, NULL, NULL, NULL, '2021-11-04 14:29:12', '2021-11-04 14:29:12'),
(229, 'Rosemarie', 'Salva', 'Mejia', 'female', NULL, NULL, '2021-03-07', NULL, '2021-03-10', NULL, NULL, NULL, NULL, NULL, '2021-11-04 14:29:12', '2021-11-04 14:29:12'),
(230, 'Michael', 'Delos Santos', 'Magnaye', 'male', NULL, NULL, '2021-03-08', NULL, '2021-03-09', NULL, NULL, NULL, NULL, NULL, '2021-11-04 14:29:12', '2021-11-04 14:29:12'),
(231, 'Gene Paula', 'Cordenete', 'Gomez', 'female', NULL, NULL, '2021-03-08', NULL, '2021-03-09', NULL, NULL, NULL, NULL, NULL, '2021-11-04 14:29:12', '2021-11-04 14:29:12'),
(232, 'Biejay', 'Laurora', 'Apuntar', 'male', NULL, NULL, '2021-02-10', NULL, '2021-03-01', NULL, NULL, NULL, NULL, NULL, '2021-11-04 14:29:12', '2021-11-04 14:29:12'),
(233, 'Jayson', 'Sy', 'Reyes', 'male', NULL, NULL, '2021-02-15', NULL, '2021-03-01', NULL, NULL, NULL, NULL, NULL, '2021-11-04 14:29:12', '2021-11-04 14:29:12'),
(234, 'Donato', 'Reformado', 'Servando', 'male', NULL, NULL, '2020-12-25', NULL, '2021-02-24', NULL, NULL, NULL, NULL, NULL, '2021-11-04 14:29:12', '2021-11-04 14:29:12'),
(235, 'Manuel', 'Diwata', 'Tolentino Jr', 'male', NULL, NULL, '2020-12-29', NULL, '2021-02-24', NULL, NULL, NULL, NULL, NULL, '2021-11-04 14:29:12', '2021-11-04 14:29:12'),
(236, 'Resty', 'Basa', 'Lederos', 'male', NULL, NULL, '2020-12-29', NULL, '2021-02-24', NULL, NULL, NULL, NULL, NULL, '2021-11-04 14:29:12', '2021-11-04 14:29:12'),
(237, 'Alexander', 'Espiritu', 'Fontanilla', 'male', NULL, NULL, '2021-01-08', NULL, '2021-02-24', NULL, NULL, NULL, NULL, NULL, '2021-11-04 14:29:12', '2021-11-04 14:29:12'),
(238, 'Jessie', 'Ygbuhay', 'Lopez', 'male', NULL, NULL, '2021-01-10', NULL, '2021-02-24', NULL, NULL, NULL, NULL, NULL, '2021-11-04 14:29:12', '2021-11-04 14:29:12'),
(239, 'Argie', 'Delos Santos', 'Eraga', 'female', NULL, NULL, '2021-01-13', NULL, '2021-02-24', NULL, NULL, NULL, NULL, NULL, '2021-11-04 14:29:12', '2021-11-04 15:37:14'),
(240, 'Raven', 'Umali', 'Mapanoo', 'male', NULL, NULL, '2020-01-13', NULL, '2021-02-24', NULL, NULL, NULL, NULL, NULL, '2021-11-04 14:29:12', '2021-11-04 14:29:12'),
(241, 'Ronald', 'Baybay', 'Pacay', 'male', NULL, NULL, '2020-01-19', NULL, '2021-02-24', NULL, NULL, NULL, NULL, NULL, '2021-11-04 14:29:12', '2021-11-04 14:29:12'),
(242, 'Christian Alvin', 'Bautista', 'Oriel', 'male', NULL, NULL, '2021-01-22', NULL, '2021-02-24', NULL, NULL, NULL, NULL, NULL, '2021-11-04 14:29:12', '2021-11-04 14:29:12'),
(243, 'Joel', 'Gomez', 'Magnaye', 'male', NULL, NULL, '2021-01-22', NULL, '2021-02-24', NULL, NULL, NULL, NULL, NULL, '2021-11-04 14:29:12', '2021-11-04 14:29:12'),
(244, 'Roland', 'Ines', 'Cortez', 'male', NULL, NULL, '2021-01-23', NULL, '2021-02-24', NULL, NULL, NULL, NULL, NULL, '2021-11-04 14:29:12', '2021-11-04 14:29:12'),
(245, 'Carmelito', 'Dagame', 'Laguan', 'male', NULL, NULL, '2021-01-23', NULL, '2021-02-24', NULL, NULL, NULL, NULL, NULL, '2021-11-04 14:29:12', '2021-11-04 14:29:12'),
(246, 'Arvin', 'Parolina', 'Jacinto', 'male', NULL, NULL, '2021-01-24', NULL, '2021-02-24', NULL, NULL, NULL, NULL, NULL, '2021-11-04 14:29:12', '2021-11-04 14:29:12'),
(247, 'Rosalito', 'Loyola', 'Barruga', 'male', NULL, NULL, '2021-01-24', NULL, '2021-02-24', NULL, NULL, NULL, NULL, NULL, '2021-11-04 14:29:12', '2021-11-04 14:29:12'),
(248, 'Geoffrey', 'Perello', 'Rafol', 'male', NULL, NULL, '2021-02-01', NULL, '2021-02-24', NULL, NULL, NULL, NULL, NULL, '2021-11-04 14:29:12', '2021-11-04 14:29:12'),
(249, 'Ryan Chester', 'Anor', 'Andrade', 'male', NULL, NULL, '2021-02-01', NULL, '2021-02-24', NULL, NULL, NULL, NULL, NULL, '2021-11-04 14:29:13', '2021-11-04 14:29:13'),
(250, 'Edwin', 'Lacsol', 'Arnaiz Jr', 'male', NULL, NULL, '2021-02-16', NULL, '2021-02-24', NULL, NULL, NULL, NULL, NULL, '2021-11-04 14:29:13', '2021-11-04 14:29:13'),
(251, 'Charito', 'Beduya', 'Martizano', 'male', NULL, NULL, '2021-02-19', NULL, '2021-02-23', NULL, NULL, NULL, NULL, NULL, '2021-11-04 14:29:13', '2021-11-04 14:29:13'),
(252, 'Loida', 'Martizano', 'Javelosa', 'female', NULL, NULL, '2021-02-19', NULL, '2021-02-22', NULL, NULL, NULL, NULL, NULL, '2021-11-04 14:29:13', '2021-11-05 05:29:00'),
(253, 'Jerome', 'Cadalso', 'Elipon', 'male', NULL, NULL, '2021-02-19', NULL, '2021-02-19', NULL, NULL, NULL, NULL, NULL, '2021-11-04 14:29:13', '2021-11-04 14:29:13'),
(254, 'Jolie', 'Abaigar', 'Acutim', 'female', NULL, NULL, '2021-02-19', NULL, '2021-02-19', NULL, NULL, NULL, NULL, NULL, '2021-11-04 14:29:13', '2021-11-04 14:29:13'),
(255, 'Mariel', 'Mitra', 'Llavanes', 'female', NULL, NULL, '2021-02-16', NULL, '2021-02-16', NULL, NULL, NULL, NULL, NULL, '2021-11-04 14:29:13', '2021-11-04 14:29:13'),
(256, 'Albert', 'Ebuan', 'Manlangit', 'male', NULL, NULL, '2021-02-06', NULL, '2021-02-15', NULL, NULL, NULL, NULL, NULL, '2021-11-04 14:29:13', '2021-11-04 14:29:13'),
(257, 'Albert', 'Sotis', 'Pajaron', 'male', NULL, NULL, '2021-02-06', NULL, '2021-02-15', NULL, NULL, NULL, NULL, NULL, '2021-11-04 14:29:13', '2021-11-04 14:29:13'),
(258, 'Darius', 'Inian', 'Romano', 'male', NULL, NULL, '2020-12-26', NULL, '2021-02-02', NULL, NULL, NULL, NULL, NULL, '2021-11-04 14:29:13', '2021-11-04 14:29:13'),
(259, 'Bianzon', 'Atienza', 'Privado', 'male', NULL, NULL, '2021-02-02', NULL, '2021-02-01', NULL, NULL, NULL, NULL, NULL, '2021-11-04 14:29:13', '2021-11-04 14:29:13'),
(260, 'Marben', 'Victoriano', 'Villanueva', 'male', NULL, NULL, '2021-01-08', NULL, '2021-01-27', NULL, NULL, NULL, NULL, NULL, '2021-11-04 14:29:13', '2021-11-04 14:29:13'),
(261, 'John Eddiezon', 'Castillo', 'Bañados', 'male', NULL, NULL, '2020-12-19', NULL, '2021-01-20', NULL, NULL, NULL, NULL, NULL, '2021-11-04 14:29:13', '2021-11-04 14:29:13'),
(262, 'Jonas', 'Pamesa', 'Obniala', 'male', NULL, NULL, '2020-11-04', NULL, '2021-01-19', NULL, NULL, NULL, NULL, NULL, '2021-11-04 14:29:13', '2021-11-04 14:29:13'),
(263, 'Erika', 'Manlunas', 'Deleon', 'female', NULL, NULL, '2020-11-04', NULL, '2021-01-19', NULL, NULL, NULL, NULL, NULL, '2021-11-04 14:29:13', '2021-11-04 15:37:22'),
(264, 'Joel', 'Pakingan', 'Vargas', 'male', NULL, NULL, '2020-11-04', NULL, '2021-01-19', NULL, NULL, NULL, NULL, NULL, '2021-11-04 14:29:13', '2021-11-04 14:29:13'),
(265, 'Arnold', 'Sombrio', 'Pantoja', 'male', NULL, NULL, '2020-11-18', NULL, '2021-01-19', NULL, NULL, NULL, NULL, NULL, '2021-11-04 14:29:13', '2021-11-04 14:29:13'),
(266, 'Anthony', 'Pañoso', 'Perez', 'male', NULL, NULL, '2020-11-18', NULL, '2021-01-19', NULL, NULL, NULL, NULL, NULL, '2021-11-04 14:29:13', '2021-11-04 14:29:13'),
(267, 'Celso', 'Lara', 'Torrejano', 'male', NULL, NULL, '2020-11-19', NULL, '2021-01-19', NULL, NULL, NULL, NULL, NULL, '2021-11-04 14:29:13', '2021-11-04 14:29:13'),
(268, 'Ricsan', 'Lacorte', 'Sabangan', 'male', NULL, NULL, '2020-11-20', NULL, '2021-01-19', NULL, NULL, NULL, NULL, NULL, '2021-11-04 14:29:13', '2021-11-04 14:29:13'),
(269, 'Joel', 'Sandino', 'Narceda', 'male', NULL, NULL, '2020-11-20', NULL, '2021-01-19', NULL, NULL, NULL, NULL, NULL, '2021-11-04 14:29:13', '2021-11-04 14:29:13'),
(270, 'Jewel Jem', 'Dearoz', 'Tan', 'male', NULL, NULL, '2020-11-26', NULL, '2021-01-19', NULL, NULL, NULL, NULL, NULL, '2021-11-04 14:29:13', '2021-11-04 14:29:13'),
(271, 'Christian', 'Daniel', 'Lladoc', 'male', NULL, NULL, '2020-11-26', NULL, '2021-01-19', NULL, NULL, NULL, NULL, NULL, '2021-11-04 14:29:13', '2021-11-04 14:29:13'),
(272, 'John Lester', 'Balbuena', 'Manaba', 'male', NULL, NULL, '2020-11-26', NULL, '2021-01-19', NULL, NULL, NULL, NULL, NULL, '2021-11-04 14:29:13', '2021-11-04 14:29:13'),
(273, 'Gerome Jan', 'Miday', 'Tison', 'male', NULL, NULL, '2020-12-01', NULL, '2021-01-19', NULL, NULL, NULL, NULL, NULL, '2021-11-04 14:29:13', '2021-11-04 14:29:13'),
(274, 'Garry', 'Bayson', 'Fortuno', 'male', NULL, NULL, '2020-12-04', NULL, '2021-01-19', NULL, NULL, NULL, NULL, NULL, '2021-11-04 14:29:13', '2021-11-04 14:29:13'),
(275, 'Michael', 'Villaganas', 'Benitez', 'male', NULL, NULL, '2020-12-29', NULL, '2021-01-15', NULL, NULL, NULL, NULL, NULL, '2021-11-04 14:29:13', '2021-11-04 14:29:13'),
(276, 'Manuel', 'Gamier', 'De Roxas', 'male', NULL, NULL, '2020-01-15', NULL, '2021-01-15', NULL, NULL, NULL, NULL, NULL, '2021-11-04 14:29:13', '2021-11-04 14:29:13'),
(277, 'Biemor', 'Malapitan', 'De Capia', 'male', NULL, NULL, '2021-01-09', NULL, '2021-01-12', NULL, NULL, NULL, NULL, NULL, '2021-11-04 14:29:13', '2021-11-04 14:29:13'),
(278, 'Joven', 'Remano', 'Banares', 'male', NULL, NULL, '2021-01-09', NULL, '2021-01-12', NULL, NULL, NULL, NULL, NULL, '2021-11-04 14:29:13', '2021-11-04 14:29:13'),
(279, 'Judy', 'Figueroa', 'Tremucita', 'female', NULL, NULL, '2021-01-09', NULL, '2021-01-12', NULL, NULL, NULL, NULL, NULL, '2021-11-04 14:29:13', '2021-11-04 15:37:39'),
(280, 'John Paul', 'Cortez', 'Olaso', 'male', NULL, NULL, '2021-01-03', NULL, '2021-01-07', NULL, NULL, NULL, NULL, NULL, '2021-11-04 14:29:13', '2021-11-04 14:29:13'),
(281, 'Joel', 'Rusiana', 'Betangcor', 'male', NULL, NULL, '2021-01-03', NULL, '2021-01-07', NULL, NULL, NULL, NULL, NULL, '2021-11-04 14:29:14', '2021-11-04 14:29:14'),
(282, 'Jerick', 'Memije', 'Villaflor', 'male', NULL, NULL, '2021-01-03', NULL, '2021-01-07', NULL, NULL, NULL, NULL, NULL, '2021-11-04 14:29:14', '2021-11-04 14:29:14'),
(283, 'Rommel', 'Medina', 'Lacao', 'male', NULL, NULL, '2021-01-03', NULL, '2021-01-07', NULL, NULL, NULL, NULL, NULL, '2021-11-04 14:29:14', '2021-11-04 14:29:14'),
(284, 'Danilo', 'Libot', 'Badillo', 'male', NULL, NULL, '2020-12-25', NULL, '2021-01-06', NULL, NULL, NULL, NULL, NULL, '2021-11-04 14:29:14', '2021-11-04 14:29:14'),
(285, 'Bernie', 'Fat', 'Villarin', 'male', NULL, NULL, '2021-01-03', NULL, '2021-01-06', NULL, NULL, NULL, NULL, NULL, '2021-11-04 14:29:14', '2021-11-04 14:29:14'),
(286, 'Lanie', 'Diaz', 'Saño', 'female', NULL, NULL, '2021-01-03', NULL, '2021-01-06', NULL, NULL, NULL, NULL, NULL, '2021-11-04 14:29:14', '2021-11-04 15:37:33'),
(287, 'Rizalyn', 'Manao', 'Mascareñas', 'female', NULL, NULL, '2021-01-03', NULL, '2021-01-06', NULL, NULL, NULL, NULL, NULL, '2021-11-04 14:29:14', '2021-11-04 15:37:27'),
(288, 'Elbert', 'Tandel', 'Romeo', 'male', 'Reckless Imprudence Resulting Damage to Property', NULL, '2021-11-07', NULL, '2021-11-08', '2021-11-480', 3, '2021-11-08', NULL, 'Affidavit (Kasunduan)', '2021-11-08 14:26:17', '2021-11-08 14:26:17'),
(289, 'Marlon', 'Dalupan', 'Bañares', 'male', 'Sec. 5 and 11 ART II of RA 9165', '1990-04-25', '2021-11-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 03:13:13', '2021-11-09 03:13:13'),
(290, 'Jhon Carlo', 'Elevencione', 'Cabanela', 'male', 'Sec. 5 (a) of RA 9162 and Sec. 5 (I) of RA 9262', NULL, '2021-11-09', NULL, '2021-11-09', '2021-11-486', 2, '2021-11-09', NULL, 'On Bail (Cash Bond & Surety Bond)', '2021-11-09 09:12:34', '2021-11-15 09:45:22'),
(291, 'Krishna Lois', 'Fajardo', 'Bigay', 'female', 'Sec. 3 of RA 10883 (New Anti-Carnapping Act of 2016)', '1998-09-05', '2021-11-09', '2021-11-11', NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-09 10:17:34', '2021-11-15 12:53:16'),
(292, 'Jason', 'Valdez', 'Celevarte', 'male', 'City/Municipal Ordinance (Warrant)', '1982-04-17', '2021-11-10', NULL, '2021-11-11', '2021-11-492', 3, '2021-11-11', NULL, 'Cash Bond', '2021-11-10 09:05:00', '2021-11-11 08:41:35');
INSERT INTO `detainees` (`id`, `first_name`, `middle_name`, `last_name`, `gender`, `violation`, `birth_date`, `detained_date`, `commitment_date`, `released_date`, `released_blotter_number`, `jailer_id`, `released_date_court`, `released_date_erogue`, `remarks`, `created_at`, `updated_at`) VALUES
(293, 'Laurence', 'Moratillo', 'Decena', 'male', 'Sec. 5 and 11 ART II of RA 9165', NULL, '2021-11-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-11 02:23:39', '2021-11-11 02:23:39'),
(294, 'Niel', 'Deleon', 'Borromeo', 'male', 'Frustrated Murder (Warrant)', NULL, '2021-11-15', NULL, '2021-11-17', '2021-11-497', 3, '2021-11-17', NULL, 'Bail Bond', '2021-11-04 14:29:11', '2021-11-17 11:08:07');

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
(1, 'PSMs Jober S Manaig', '2021-10-08 13:59:34', '2021-11-08 06:34:47'),
(2, 'PSSg Hernane V Quintana', '2021-10-08 13:59:34', '2021-10-14 13:39:27'),
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
(11, '2021_10_04_151204_add_new_columns_on_detainees_table', 3),
(13, '2021_10_12_133306_create_tables_for_setting_of_detainees', 4),
(15, '2021_11_15_122737_add_commitment_date_to_detainees_table', 5);

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
-- Table structure for table `r7_invest`
--

CREATE TABLE `r7_invest` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `r7_invest`
--

INSERT INTO `r7_invest` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'PTCOL NOEL D NUÑEZ', '2021-10-14 14:31:01', '2021-10-14 14:31:01');

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
(1, 'Admin', 'admin@pupc.com', NULL, '$2y$10$Ky2fV08DWj9a8pa8BWsrxet6mS8KoZNvgx8Xn1CShuZbmjrunAN4.', '8dedxbTkG3OjAfiiK0jmpy8Qp2Eu0PshA4pGKJ6AVCVBP1KviBamJcgd6Ytk', '2021-05-20 04:43:02', '2021-08-20 14:06:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chief_invest`
--
ALTER TABLE `chief_invest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chief_police`
--
ALTER TABLE `chief_police`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `r7_invest`
--
ALTER TABLE `r7_invest`
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
-- AUTO_INCREMENT for table `chief_invest`
--
ALTER TABLE `chief_invest`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `chief_police`
--
ALTER TABLE `chief_police`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `detainees`
--
ALTER TABLE `detainees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=295;

--
-- AUTO_INCREMENT for table `jailers`
--
ALTER TABLE `jailers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `r7_invest`
--
ALTER TABLE `r7_invest`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
