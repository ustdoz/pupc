-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 17, 2022 at 02:48 PM
-- Server version: 8.0.29-0ubuntu0.22.04.2
-- PHP Version: 7.4.29

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
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `id` bigint UNSIGNED NOT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `middle_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `violation` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `birth_date` date DEFAULT NULL,
  `detained_date` date DEFAULT NULL,
  `commitment_date` date DEFAULT NULL,
  `released_date` date DEFAULT NULL,
  `released_blotter_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jailer_id` int UNSIGNED DEFAULT NULL,
  `released_date_court` date DEFAULT NULL,
  `released_date_erogue` date DEFAULT NULL,
  `remarks` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `detainees`
--

INSERT INTO `detainees` (`id`, `first_name`, `middle_name`, `last_name`, `gender`, `violation`, `birth_date`, `detained_date`, `commitment_date`, `released_date`, `released_blotter_number`, `jailer_id`, `released_date_court`, `released_date_erogue`, `remarks`, `created_at`, `updated_at`) VALUES
(1, 'Chuck', 'Osmeña', 'Lagumbay', 'male', 'Sec. 5 and 11 ART II of RA 9165', '1990-07-07', '2020-09-26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-24 20:07:45', '2021-10-08 16:19:06'),
(2, 'Jun', 'Lanceta', 'Marcilla', 'male', 'Section 11 and 12 Art II of RA 9165', '1980-06-20', '2020-03-09', NULL, '2022-04-11', '2022-04-166', 3, '2022-04-11', '2022-04-11', 'Sentence Served', '2021-05-25 06:16:45', '2022-04-11 09:33:59'),
(3, 'Jaymar', 'Castro', 'Gerona', 'male', 'Anti-Carnapping Act of. 1972', '2001-11-30', '2020-07-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-25 06:18:00', '2021-10-15 13:51:18'),
(4, 'Marvin', 'Besin', 'Dalut', 'male', 'Rape', '1998-01-26', '2020-08-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-25 15:13:13', '2022-05-24 09:22:02'),
(5, 'Francisco', 'Martinez', 'Almendras', 'male', 'Sec. 5 and 11 ART II of RA 9165', '1969-10-10', '2020-09-10', NULL, '2022-05-26', '2022-05-246', 6, '2022-05-26', '2022-05-26', 'Dismissed', '2021-05-26 05:48:32', '2022-05-26 07:51:22'),
(6, 'Paolo', 'Kasilag', 'Diago', 'male', NULL, NULL, '2020-12-09', NULL, '2021-05-19', '2021-05-197', 5, '2021-05-19', '2021-05-19', '(Transferred to BJMP)', '2021-05-26 05:51:00', '2022-03-04 03:57:10'),
(7, 'Ariel', 'Levardo', 'Maala', 'male', 'Sec. 5 and 11 ART II of RA 9165', NULL, '2020-12-18', '2021-01-05', '2021-12-10', '2021-12-534', 4, NULL, '2021-12-10', '(Transferred to BJMP)', '2021-05-26 05:51:42', '2021-12-10 05:44:17'),
(8, 'Isagani', 'Altarez', 'Cambronero Jr.', 'male', NULL, '1984-09-06', '2020-12-20', NULL, '2021-06-10', '2021-06-219', 3, '2021-06-10', '2021-06-10', '(Transferred to BJMP)', '2021-05-26 05:53:31', '2022-03-04 05:08:33'),
(9, 'Jerry', 'Datwin', 'Manubay', 'male', NULL, '1975-04-17', '2021-02-24', NULL, '2021-06-04', '2022-06-214', 5, '2021-06-04', '2021-06-04', 'Surety Bond', '2021-05-26 05:54:47', '2022-03-04 05:04:09'),
(10, 'Laurence', 'Perez', 'Garcia', 'male', 'Theft (2 Pending Case)', '1983-12-20', '2021-03-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-26 05:57:29', '2022-05-24 09:22:31'),
(11, 'John Von', NULL, 'Cortes', 'male', NULL, NULL, '2021-03-15', NULL, '2021-05-19', '2021-05-197', 5, '2021-05-19', '2021-05-19', '(Transferred to BJMP)', '2021-05-26 05:57:48', '2022-03-04 03:57:13'),
(12, 'Mark Hill', NULL, 'Galonga', 'male', NULL, NULL, '2021-03-03', NULL, '2021-05-19', '2021-05-197', 5, '2021-05-19', '2021-05-19', '(Transferred to BJMP)', '2021-05-26 05:58:45', '2022-03-04 03:57:15'),
(13, 'Icasiano', NULL, 'Ancero', 'male', NULL, NULL, '2021-03-24', NULL, '2021-05-19', '2021-05-197', 5, '2021-05-19', '2021-05-19', '(Transferred to BJMP)', '2021-05-26 05:59:13', '2022-03-04 03:57:12'),
(14, 'Reynold', NULL, 'Javines', 'male', NULL, NULL, '2021-03-27', NULL, '2021-05-19', '2021-05-197', 5, '2021-05-19', '2021-05-19', '(Transferred to BJMP)', '2021-05-26 06:00:39', '2022-03-04 03:57:11'),
(15, 'Michael', NULL, 'Tenedero', 'male', NULL, NULL, '2021-03-26', NULL, '2021-05-08', '2021-05-188', 5, '2021-05-08', '2021-05-08', '(Transferred to BJMP)', '2021-05-26 06:01:02', '2022-03-04 03:49:38'),
(16, 'Ferry', NULL, 'Cristo', 'male', NULL, NULL, '2021-04-09', NULL, '2021-06-10', '2021-06-219', 3, '2021-06-10', '2021-06-10', '(Transferred to BJMP)', '2021-05-26 06:01:12', '2022-03-04 05:08:32'),
(17, 'Michael', NULL, 'Dequilla', 'male', NULL, NULL, '2021-04-15', NULL, '2021-05-19', '2021-05-197', 5, '2021-05-19', '2021-05-19', '(Transferred to BJMP)', '2021-05-26 06:01:30', '2022-03-04 03:57:09'),
(18, 'Narciso', 'Sta. Barbara', 'Levantino', 'male', NULL, NULL, '2021-04-20', NULL, '2021-06-10', '2021-06-219', 3, '2021-06-10', '2021-06-10', '(Transferred to BJMP)', '2021-05-26 06:01:51', '2022-03-04 05:08:32'),
(19, 'Joey', NULL, 'Casintahan', 'male', NULL, NULL, '2021-04-22', NULL, '2021-05-19', '2021-05-197', 5, '2021-05-19', '2021-05-19', '(Transferred to BJMP)', '2021-05-26 06:02:08', '2022-03-04 03:57:02'),
(20, 'Sandy', NULL, 'Cabigan', 'male', 'PD 1602', NULL, '2021-04-25', NULL, '2021-05-03', '2021-05-182', 5, '2021-05-03', '2021-05-03', 'Cash Bond', '2021-05-26 06:02:25', '2022-03-04 03:01:18'),
(21, 'Nervin', 'Bayugo', 'Diaz', 'male', 'PD 1602', NULL, '2021-04-25', NULL, '2021-05-03', '2021-05-182', 5, '2021-05-03', '2021-05-03', 'Cash Bond', '2021-05-26 06:02:37', '2022-03-04 03:00:41'),
(22, 'Raydan', NULL, 'Cortez', 'male', NULL, NULL, '2021-04-30', NULL, '2021-05-19', '2021-05-197', 5, '2021-05-19', '2021-05-19', '(Transferred to BJMP)', '2021-05-26 06:02:47', '2022-03-04 03:57:04'),
(23, 'Darwin', NULL, 'Dialola', 'male', NULL, NULL, '2021-05-04', NULL, '2021-05-19', '2021-05-197', 5, '2021-05-19', '2021-05-19', '(Transferred to BJMP)', '2021-05-26 06:05:53', '2022-03-04 03:57:08'),
(24, 'Samuel', NULL, 'Manlangit', 'male', NULL, NULL, '2021-05-04', NULL, '2021-05-19', '2021-05-197', 5, '2021-05-19', '2021-05-19', '(Transferred to BJMP)', '2021-05-26 06:08:43', '2022-03-04 03:57:03'),
(25, 'Alberto', NULL, 'Macalintal', 'male', NULL, '1992-12-16', '2021-05-06', NULL, '2021-05-26', '2021-05-201', 3, '2021-05-26', '2021-05-26', 'Surety Bond', '2021-05-26 06:10:11', '2022-03-04 04:09:02'),
(26, 'Stefanie', NULL, 'Macaspac', 'female', NULL, NULL, '2021-04-29', NULL, '2021-05-06', '2021-05-186', 3, '2021-05-06', '2021-05-06', 'Bail Bond', '2021-05-26 06:11:11', '2022-03-04 03:44:48'),
(27, 'Zenaida', NULL, 'Pa Dero', 'female', NULL, NULL, '2021-04-29', NULL, '2021-05-06', '2021-05-186', 3, '2021-05-06', '2021-05-06', 'Bail Bond', '2021-05-26 06:13:57', '2022-03-04 03:44:47'),
(28, 'Jenibeth', NULL, 'Padilla', 'female', NULL, NULL, '2021-04-29', NULL, '2021-05-06', '2021-05-186', 3, '2021-05-06', '2021-05-06', 'Bail Bond', '2021-05-26 06:14:46', '2022-03-04 03:44:45'),
(29, 'Henry Roy', NULL, 'Deo', 'male', NULL, '1989-06-12', '2021-05-10', NULL, '2021-06-10', '2021-06-219', 3, '2021-06-10', '2021-06-10', '(Transferred to BJMP)', '2021-05-26 06:17:12', '2022-03-04 05:08:35'),
(30, 'Dan J.b Ron', NULL, 'Avila', 'male', NULL, NULL, '2021-05-11', NULL, '2021-05-18', '2021-05-196', 3, '2021-05-18', '2021-05-18', 'Bail Bond', '2021-05-26 06:19:33', '2022-03-04 03:49:09'),
(31, 'John Freddierick', NULL, 'Balboa', 'male', NULL, NULL, '2021-05-11', NULL, '2021-05-18', '2021-05-196', 3, '2021-05-18', '2021-05-18', 'Bail Bond', '2021-05-26 06:21:47', '2022-03-04 03:49:06'),
(32, 'Alberto', 'Panganiban', 'Alfonso', 'male', NULL, '1967-05-23', '2021-05-13', NULL, '2021-06-10', '2021-06-219', 3, '2021-06-10', '2021-06-10', '(Transferred to BJMP)', '2021-05-26 06:22:51', '2022-03-04 05:08:37'),
(33, 'Eduardo', NULL, 'Valenzuela Jr', 'male', NULL, NULL, '2021-05-14', NULL, '2021-06-10', '2021-06-219', 3, '2021-06-10', '2021-06-10', '(Transferred to BJMP)', '2021-05-26 06:24:02', '2022-03-04 05:08:38'),
(34, 'Ruben', 'Odtohan', 'Gio', 'male', 'Theft', '1974-02-24', '2021-05-16', NULL, '2022-03-10', '2022-03-114', 3, '2022-03-10', '2022-03-10', 'Provisionally Dismissed', '2021-05-26 06:25:01', '2022-03-10 11:16:47'),
(35, 'Paulo', NULL, 'Samson', 'male', NULL, '1994-08-21', '2021-05-19', NULL, '2021-06-10', '2021-06-219', 3, '2021-06-10', '2021-06-10', '(Transferred to BJMP)', '2021-05-26 06:31:11', '2022-03-04 05:08:34'),
(36, 'Nolasco', 'Dearoz', 'Cabaylo', 'male', NULL, '1967-01-31', '2021-05-20', NULL, '2021-06-10', '2021-06-219', 3, '2021-06-10', '2021-06-10', '(Transferred to BJMP)', '2021-05-26 06:32:21', '2022-03-04 05:08:36'),
(37, 'Jefferson', 'Vicencio', 'Natanauan', 'male', NULL, '1982-07-04', '2021-05-20', NULL, '2021-06-10', '2021-06-219', 3, '2021-06-10', '2021-06-10', '(Transferred to BJMP)', '2021-05-26 06:33:46', '2022-03-04 05:08:37'),
(38, 'Vizmark', NULL, 'Del Monte', 'male', NULL, '1998-12-22', '2021-05-26', NULL, '2021-07-07', '2021-07-256', 5, '2021-07-07', '2021-07-07', '(Transferred to BJMP)', '2021-05-27 02:46:32', '2022-03-04 06:24:11'),
(39, 'Ramiro', NULL, 'Paglinawan', 'male', NULL, '1968-05-18', '2021-05-26', NULL, '2021-07-07', '2021-07-256', 5, '2021-07-07', '2021-07-07', '(Transferred to BJMP)', '2021-05-27 02:47:34', '2022-03-04 06:24:10'),
(40, 'Michelle', 'Dela Masa', 'Tiballa', 'female', 'Sec. 11 ART II of RA 9165', NULL, '2021-01-22', NULL, '2021-10-29', '2021-10-464', 1, '2021-02-05', '2021-10-31', '(Transferred to BJMP)', '2021-05-31 03:14:55', '2021-10-31 11:00:18'),
(41, 'Apple Mae', NULL, 'Masicampo', 'female', NULL, NULL, '2021-02-22', NULL, '2021-07-01', '2021-07-245', 3, '2021-07-01', '2021-07-01', 'Cash Bond', '2021-05-31 03:15:42', '2022-03-04 06:36:15'),
(42, 'Kier Angel Man', NULL, 'Pagne', 'male', NULL, NULL, '2021-05-26', NULL, '2021-05-27', NULL, NULL, NULL, NULL, 'DSWD', '2021-05-31 03:16:42', '2022-03-04 04:37:09'),
(43, 'Renato', NULL, 'Popes', 'male', NULL, NULL, '2021-05-27', NULL, '2021-07-07', '2021-07-256', 5, '2021-07-07', '2021-07-07', '(Transferred to BJMP)', '2021-05-31 03:18:15', '2022-03-04 06:24:10'),
(44, 'Abigael', 'Lee', 'Lagrata', 'female', 'Sec. 5 and 11 ART II of RA 9165', NULL, '2021-02-24', NULL, '2021-10-29', '2021-10-464', 1, '2021-03-09', '2021-10-31', '(Transferred to BJMP)', '2021-05-31 03:19:11', '2021-10-31 11:05:08'),
(45, 'Jessie', NULL, 'Delos Reyes', 'male', NULL, '1995-11-28', '2021-05-31', NULL, '2021-06-10', '2021-06-220', 3, '2021-06-10', '2021-06-10', 'Bail Bond', '2021-05-31 06:55:41', '2022-03-04 05:19:09'),
(46, 'Jeffrey', NULL, 'Trapalgar', 'male', NULL, '2001-01-05', '2021-05-31', NULL, '2021-06-10', '2021-06-220', 3, '2021-06-10', '2021-06-10', 'Bail Bond', '2021-05-31 06:57:01', '2022-03-04 05:19:07'),
(47, 'John Paolo', 'Panganiban', 'Alcantara', 'male', NULL, '1998-09-30', '2021-05-31', NULL, '2021-06-10', '2021-06-220', 3, '2021-06-10', '2021-06-10', 'Bail Bond', '2021-05-31 06:57:45', '2022-03-04 05:10:47'),
(48, 'Noel', NULL, 'Martillano', 'male', NULL, NULL, '2021-06-03', NULL, '2021-07-07', '2021-07-256', 5, '2021-07-07', '2021-07-07', '(Transferred to BJMP)', '2021-06-09 18:10:53', '2022-03-04 06:24:13'),
(49, 'Felipe', NULL, 'Jamon', 'male', NULL, NULL, '2021-06-07', NULL, '2021-07-02', '2021-07-246', 5, '2021-07-02', '2021-07-02', 'Surety Bond', '2021-06-09 18:11:14', '2022-03-04 06:18:53'),
(50, 'Jeric', NULL, 'Cabarles', 'male', NULL, NULL, '2021-06-09', NULL, '2021-06-21', '2021-06-229', 5, '2021-06-21', '2021-06-21', 'Cash Bond', '2021-06-09 18:11:41', '2022-03-04 05:13:18'),
(51, 'Wenceslao', 'Dela Cruz', 'Gallardo', 'male', NULL, NULL, '2021-06-04', NULL, '2021-06-07', '2021-06-216', 3, '2021-06-07', '2021-06-07', 'Surety Bond', '2021-06-09 18:12:16', '2022-03-04 05:17:17'),
(52, 'Elecito', NULL, 'Rabino', 'male', NULL, NULL, '2021-06-01', NULL, '2021-07-07', '2021-07-256', 5, '2021-07-07', '2021-07-07', '(Transferred to BJMP)', '2021-06-12 02:14:19', '2022-03-04 06:24:12'),
(53, 'Andrei', NULL, 'Espinar', 'male', NULL, NULL, '2021-06-01', NULL, '2021-07-07', '2021-07-256', 5, '2021-07-07', '2021-07-07', '(Transferred to BJMP)', '2021-06-12 02:14:48', '2022-03-04 06:24:12'),
(54, 'Ronaldo', NULL, 'Sosmeña', 'male', NULL, NULL, '2021-06-08', NULL, '2021-07-07', '2021-07-256', 5, '2021-07-07', '2021-07-07', '(Transferred to BJMP)', '2021-06-12 02:16:16', '2022-03-04 06:24:07'),
(55, 'Dennis', NULL, 'Vargas', 'male', NULL, NULL, '2021-06-11', NULL, '2021-07-07', '2021-07-256', 5, '2021-07-07', '2021-07-07', '(Transferred to BJMP)', '2021-06-12 02:24:41', '2022-03-04 06:24:08'),
(56, 'Allan', NULL, 'Gonzales', 'male', NULL, NULL, '2021-06-11', NULL, '2021-07-07', '2021-07-256', 5, '2021-07-07', '2021-07-07', '(Transferred to BJMP)', '2021-06-12 02:25:08', '2022-03-04 06:24:09'),
(57, 'Avelito', 'Quilao', 'Levardo', 'male', NULL, '1994-08-12', '2021-06-11', NULL, '2021-07-07', '2021-07-256', 5, '2021-07-07', '2021-07-07', '(Transferred to BJMP)', '2021-06-12 02:25:30', '2022-03-04 06:24:17'),
(58, 'Lolita', 'Daaco', 'Javier', 'female', NULL, NULL, '2021-06-11', NULL, '2021-06-15', '2021-06-225', 3, '2021-06-15', '2021-06-15', 'Motion to lift bench warrant of arrest', '2021-06-12 02:26:03', '2022-03-04 05:12:34'),
(59, 'Alfred', 'Vargas', 'Almeda', 'male', NULL, NULL, '2021-06-15', NULL, '2021-06-16', NULL, NULL, NULL, NULL, NULL, '2021-06-17 07:03:10', '2021-06-17 07:03:10'),
(60, 'Lionel', 'Ramirez', 'Resnera', 'male', NULL, NULL, '2021-06-17', NULL, '2021-07-07', '2021-07-256', 5, '2021-07-07', '2021-07-07', '(Transferred to BJMP)', '2021-06-20 01:28:55', '2022-03-04 06:24:15'),
(61, 'Jersey Boy', NULL, 'Merquinez', 'male', NULL, NULL, '2021-06-20', NULL, '2021-07-07', '2021-07-256', 5, '2021-07-07', '2021-07-07', '(Transferred to BJMP)', '2021-07-01 21:56:29', '2022-03-04 06:24:14'),
(62, 'Jeffrey', 'Castillo', 'Sarabia', 'male', NULL, '1989-08-23', '2021-06-22', NULL, '2021-06-24', '2021-06-232', 5, '2021-06-24', '2021-06-24', 'Motion to lift bench warrant of arrest', '2021-07-02 05:13:58', '2022-03-04 05:14:22'),
(63, 'Ferlino', NULL, 'Acbay', 'male', NULL, '1992-10-09', '2021-06-24', NULL, '2021-08-09', '2021-08-316', 3, '2021-08-09', '2021-08-09', '(Transferred to BJMP)', '2021-07-02 05:15:05', '2022-03-04 06:44:49'),
(64, 'Andro', 'Calayo', 'Mira', 'male', NULL, '1986-11-30', '2021-06-25', NULL, '2021-07-08', '2021-07-261', 3, '2021-07-08', '2021-07-08', 'Cash Bond', '2021-07-02 05:18:49', '2022-03-04 06:30:15'),
(65, 'Winifredo', NULL, 'Lende', 'male', NULL, '1968-03-22', '2021-06-28', NULL, '2021-07-07', '2021-07-256', 5, '2021-07-07', '2021-07-07', '(Transferred to BJMP)', '2021-07-02 05:20:02', '2022-03-04 06:24:16'),
(66, 'Darwin', NULL, 'Cañete', 'male', NULL, '1996-01-02', '2021-06-29', NULL, '2021-08-09', '2021-08-316', 3, '2021-08-09', '2021-08-09', '(Transferred to BJMP)', '2021-07-02 05:21:11', '2022-03-04 06:44:50'),
(67, 'Alex', NULL, 'Palaña', 'male', NULL, '1998-01-16', '2021-06-30', NULL, '2021-08-09', '2021-08-316', 3, '2021-08-09', '2021-08-09', '(Transferred to BJMP)', '2021-07-02 05:22:13', '2022-03-04 06:44:58'),
(68, 'Noel', NULL, 'Palaña', 'male', NULL, '1988-12-05', '2021-06-30', NULL, '2021-08-09', '2021-08-316', 3, '2021-08-09', '2021-08-09', '(Transferred to BJMP)', '2021-07-02 05:22:58', '2022-03-04 06:44:57'),
(69, 'John Angelo', 'Lagunzad', 'Manginao', 'male', NULL, NULL, '2021-07-06', NULL, '2021-07-06', '2022-07-252', 5, '2021-07-06', '2021-07-06', 'Cash Bond', '2021-07-06 16:51:31', '2022-03-04 05:39:18'),
(70, 'Marlon', NULL, 'Santos', 'male', NULL, NULL, '2021-06-30', NULL, '2021-06-30', NULL, NULL, NULL, NULL, NULL, '2021-07-09 13:53:19', '2021-07-09 13:53:19'),
(71, 'Mark Angelo', NULL, 'Manginaon', 'male', NULL, NULL, '2021-07-06', NULL, '2021-07-06', NULL, NULL, NULL, NULL, NULL, '2021-07-09 14:33:20', '2021-07-09 14:43:14'),
(72, 'Agusto', NULL, 'Rebamba', 'male', NULL, NULL, '2021-07-06', NULL, '2021-07-13', '2021-07-268', 3, '2021-07-13', '2021-07-13', 'DISMISSED', '2021-07-09 14:33:41', '2022-03-04 06:34:30'),
(73, 'Joel', NULL, 'Millagracia', 'male', NULL, NULL, '2021-07-06', NULL, '2021-07-13', '2021-07-268', 3, '2021-07-13', '2021-07-13', 'DISMISSED', '2021-07-09 14:34:06', '2022-03-04 06:34:29'),
(74, 'Robert', NULL, 'Imperial', 'male', NULL, NULL, '2021-07-06', NULL, '2021-08-09', '2021-08-316', 3, '2021-08-09', '2021-08-09', '(Transferred to BJMP)', '2021-07-09 14:34:29', '2022-03-04 06:44:59'),
(75, 'Diosdado', NULL, 'Veraces', 'male', NULL, NULL, '2021-07-06', NULL, '2021-08-09', '2021-08-316', 3, '2021-08-09', '2021-08-09', '(Transferred to BJMP)', '2021-07-09 14:34:49', '2022-03-04 06:44:58'),
(76, 'John Ralph', NULL, 'Lanuza', 'male', NULL, NULL, '2021-07-07', NULL, '2021-07-07', '2021-07-257', NULL, '2021-07-07', '2021-07-07', 'Affidavit (Kasunduan)', '2021-07-09 14:35:10', '2022-03-04 06:27:49'),
(77, 'Sergio', NULL, 'Panganiban', 'male', NULL, NULL, '2021-07-07', NULL, '2021-07-08', '2021-07-262', 3, '2021-07-08', '2021-07-08', 'Cash Bond', '2021-07-09 14:35:28', '2022-03-04 06:29:30'),
(78, 'Jessie', NULL, 'Forgalidad', 'male', NULL, NULL, '2021-07-08', NULL, '2021-08-09', '2021-08-316', 3, '2021-08-09', '2021-08-09', '(Transferred to BJMP)', '2021-07-09 14:35:58', '2022-03-04 06:45:01'),
(79, 'Alexander', NULL, 'Amaro', 'male', NULL, NULL, '2021-07-08', NULL, '2021-08-09', '2021-08-316', 3, '2021-08-09', '2021-08-09', '(Transferred to BJMP)', '2021-07-09 14:36:18', '2022-03-04 06:45:00'),
(80, 'Michael', NULL, 'Delos Santos', 'male', NULL, '1984-07-06', '2021-07-03', NULL, '2021-07-14', '2021-07-272', 5, '2021-07-14', '2021-07-14', 'Bail Bond', '2021-07-11 14:37:38', '2022-03-04 06:35:03'),
(81, 'Artemio', 'Biliran', 'Sauquillo', 'male', NULL, '1987-09-24', '2021-07-13', NULL, '2021-08-09', '2021-08-316', 3, '2021-08-09', '2021-08-09', '(Transferred to BJMP)', '2021-07-13 13:51:24', '2022-03-04 06:45:01'),
(82, 'Rhea Camille', 'Niez', 'Matunhay', 'female', 'Sec 11 ART II of RA 9165', '2002-09-11', '2021-07-13', NULL, '2021-10-29', '2021-10-464', 1, '2021-07-27', '2021-10-31', '(Transferred to BJMP)', '2021-07-13 13:51:59', '2021-10-31 11:04:31'),
(83, 'Alexander', NULL, 'Ferrer', 'male', NULL, NULL, '2021-07-13', NULL, '2021-08-09', '2021-08-316', 3, '2021-08-09', '2021-08-09', '(Transferred to BJMP)', '2021-07-13 16:56:46', '2022-03-04 06:45:04'),
(84, 'Cris', NULL, 'Villareal', 'male', NULL, NULL, '2021-07-13', NULL, '2021-08-09', '2021-08-316', 3, '2021-08-09', '2021-08-09', '(Transferred to BJMP)', '2021-07-13 16:57:30', '2022-03-04 06:45:04'),
(85, 'Joan Pauline', 'Castanares', 'Flores', 'female', 'Sec 11 ART II of RA 9165', NULL, '2021-07-13', NULL, '2021-10-29', '2021-10-464', 1, '2021-07-27', '2021-10-31', '(Transferred to BJMP)', '2021-07-13 16:59:22', '2021-10-31 14:01:26'),
(86, 'Janet', NULL, 'Aluciman', 'female', NULL, '1974-03-21', '2021-07-17', NULL, '2021-07-22', '2021-07-286', 5, '2021-07-22', '2021-07-22', 'Cash Bond', '2021-07-19 19:00:34', '2022-03-04 06:37:25'),
(87, 'Reynan', 'Barca', 'Alvarado', 'male', 'Murder', '1989-05-06', '2021-07-14', NULL, '2021-10-29', '2021-10-464', 1, '2021-08-10', '2021-10-31', '(Transferred to BJMP)', '2021-07-19 19:01:45', '2021-10-31 11:03:42'),
(88, 'John Robert', 'Rosales', 'Aying', 'male', NULL, NULL, '2021-07-16', NULL, '2021-07-16', '2021-07-275', 3, '2021-07-16', '2021-07-16', 'Cash Bond', '2021-07-19 19:02:39', '2022-03-04 06:36:48'),
(89, 'Jayson', 'Roncal', 'Jamer', 'male', 'Sec 5 and 11 ART II of RA 9165', NULL, '2021-07-22', NULL, '2021-10-29', '2021-10-464', 1, '2021-08-04', '2021-10-31', '(Transferred to BJMP)', '2021-07-22 23:40:15', '2021-10-31 11:05:40'),
(90, 'Maria Theresa', 'Ocampo', 'Miranda', 'female', 'Sec 5 and 11 ART II of RA 9165', NULL, '2021-07-22', NULL, '2021-10-29', '2021-10-464', 1, '2021-08-04', '2021-10-31', '(Transferred to BJMP)', '2021-07-22 23:41:14', '2021-10-31 10:58:45'),
(91, 'Malo', 'Sayuman', 'Malabanan', 'female', NULL, NULL, '2021-07-20', NULL, '2021-09-20', '2021-09-384', 2, '2021-09-20', '2021-09-20', 'Bail', '2021-07-22 23:41:40', '2022-03-04 07:14:08'),
(92, 'Richard', 'Dias', 'Oracion', 'male', 'Sec 5 and 11 ART II of RA 9165', '1982-06-29', '2021-07-24', NULL, '2021-10-29', '2021-10-464', 1, '2021-08-04', '2021-10-31', '(Transferred to BJMP)', '2021-07-24 21:22:57', '2021-10-31 11:01:22'),
(93, 'Jose', 'Bacig', 'Carpina', 'male', NULL, '1958-06-19', '2021-07-25', NULL, '2021-07-26', NULL, NULL, NULL, NULL, NULL, '2021-07-25 14:46:04', '2021-07-26 08:08:05'),
(94, 'Dennis', 'Amorin', 'Sarmiento', 'male', 'Sec 5 and 11 ART II of RA 9165', '1995-02-12', '2021-07-27', NULL, '2021-10-29', '2021-10-464', 1, '2021-08-10', '2021-10-31', '(Transferred to BJMP)', '2021-07-30 17:01:10', '2021-10-31 10:58:17'),
(95, 'Richard', 'Torres', 'Panciles', 'male', NULL, '1979-01-26', '2021-08-31', NULL, '2021-09-27', '2021-09-389', 2, '2021-09-27', '2021-09-27', 'Surety Bond', '2021-07-30 17:02:16', '2022-03-04 07:15:10'),
(96, 'Aira', NULL, 'Sales', 'female', NULL, NULL, '2021-07-29', NULL, '2021-08-25', '2021-08-345', 2, '2021-08-25', '2021-08-25', 'Bail Bond', '2021-07-30 17:03:06', '2022-03-04 07:03:39'),
(97, 'Annaliza', 'Torres', 'Panciles', 'female', NULL, NULL, '2021-08-31', NULL, '2021-09-27', '2021-09-389', 2, '2021-09-27', '2021-09-27', 'Surety Bond', '2021-07-30 17:04:13', '2022-03-04 07:15:07'),
(98, 'Carlo', NULL, 'Almendras', 'male', NULL, NULL, '2021-08-08', NULL, '2021-08-10', '2021-08-321', NULL, '2021-08-10', '2021-08-10', 'DISMISSED', '2021-10-05 15:04:17', '2022-03-04 06:55:27'),
(99, 'Ezekiel', 'Onella', 'Bautista', 'male', 'Sec 5 and 11 ART II of RA 9165', NULL, '2021-08-28', NULL, '2021-10-29', '2021-10-464', 1, '2021-09-15', '2021-10-31', '(Transferred to BJMP)', '2021-10-05 15:05:34', '2021-10-31 11:08:45'),
(100, 'Marlon', NULL, 'Burgos', 'male', NULL, NULL, '2021-08-08', NULL, '2021-08-10', '2021-08-321', NULL, '2021-08-10', '2021-08-10', 'DISMISSED', '2021-10-05 15:06:29', '2022-03-04 06:55:24'),
(101, 'Elmer', NULL, 'Cacatihan', 'male', NULL, NULL, '2021-08-08', NULL, '2021-08-10', '2021-08-321', NULL, '2021-08-10', '2021-08-10', 'DISMISSED', '2021-10-05 15:07:13', '2022-03-04 06:55:26'),
(102, 'Eduardo', 'Catapang', 'Catibog', 'male', 'Sec 5 and 11 ART II of RA 9165', NULL, '2021-08-10', NULL, '2021-10-29', '2021-10-464', 1, '2021-09-15', '2021-10-31', '(Transferred to BJMP)', '2021-10-05 15:09:00', '2021-10-31 11:08:36'),
(103, 'Jonnel', 'Peneda', 'Cerdeña', 'male', 'Sec 10 (a) of RA 7610', NULL, '2021-08-07', NULL, '2021-10-29', '2021-10-464', 1, '2021-08-25', '2021-10-31', '(Transferred to BJMP)', '2021-10-05 15:09:40', '2021-10-31 11:08:12'),
(104, 'Mark', 'Llanto', 'Cortez', 'male', NULL, NULL, '2021-08-08', NULL, '2021-08-10', '2021-08-321', NULL, '2021-08-10', '2021-08-10', 'DISMISSED', '2021-10-05 15:11:12', '2022-03-04 06:55:24'),
(105, 'Samuel', NULL, 'Dagonon', 'male', NULL, NULL, '2021-08-12', NULL, '2021-08-13', NULL, NULL, NULL, NULL, NULL, '2021-10-05 15:11:53', '2021-10-05 15:11:53'),
(106, 'Gaudencio', 'Esteves', 'David', 'male', NULL, NULL, '2021-08-20', NULL, '2021-08-24', '2021-08-343', 3, '2021-08-24', '2021-08-24', 'Cash Bond', '2021-10-05 15:13:17', '2022-03-04 07:02:02'),
(107, 'Melvin', NULL, 'Emia', 'male', NULL, NULL, '2021-08-08', NULL, '2021-08-10', '2021-08-321', NULL, '2021-08-10', '2021-08-10', 'DISMISSED', '2021-10-05 15:14:00', '2022-03-04 06:55:22'),
(108, 'Rey', 'Manrique', 'Fernandez', 'male', NULL, NULL, '2021-08-09', NULL, '2021-08-12', '2021-08-324', 2, '2021-08-12', '2021-08-12', 'Cash Bond', '2021-10-05 15:14:39', '2022-03-04 06:57:15'),
(109, 'Larry', NULL, 'Javier', 'male', NULL, NULL, '2021-08-08', NULL, '2021-08-10', '2021-08-321', NULL, '2021-08-10', '2021-08-10', 'DISMISSED', '2021-10-05 15:15:16', '2022-03-04 06:55:37'),
(110, 'Christopher', 'Vasquez', 'Ladica', 'male', 'Section 10 (a) of RA 7610', NULL, '2021-08-21', NULL, '2021-10-16', '2021-10-440', 1, '2021-10-15', '2021-10-16', 'Bail Bond', '2021-10-05 15:16:11', '2021-10-31 11:46:54'),
(111, 'Leonardo', NULL, 'Loyola', 'male', NULL, NULL, '2021-08-08', NULL, '2021-08-10', '2021-08-321', NULL, '2021-08-10', '2021-08-10', 'DISMISSED', '2021-10-05 15:16:41', '2022-03-04 06:55:21'),
(112, 'Rossano', 'Villeza', 'Macha', 'male', 'Sec 5 and 11 ART II of RA 9165', NULL, '2021-08-29', NULL, '2021-10-29', '2021-10-464', 1, '2021-09-15', '2021-10-31', '(Transferred to BJMP)', '2021-10-05 15:17:25', '2021-10-31 11:09:24'),
(113, 'Gilbert', 'Padre', 'Manzano', 'male', 'RA 7610', NULL, '2021-08-05', NULL, '2021-12-09', '2021-12-533', 4, '2021-12-09', '2021-12-09', 'Bail Bond', '2021-10-05 15:17:56', '2021-12-09 09:32:39'),
(114, 'Roldan', 'Abellana', 'Maypa', 'male', 'Sec 5 and 11 ART II of RA 9165', NULL, '2021-08-02', NULL, '2021-10-29', '2021-10-464', 1, '2021-08-10', '2021-10-31', '(Transferred to BJMP)', '2021-10-05 15:18:41', '2021-10-31 11:04:03'),
(115, 'Nelvin', 'Mendoza', 'Cipriano', 'male', 'Sec 5 and 11 ART II of RA 9165', NULL, '2021-08-27', NULL, '2021-10-29', '2021-10-464', 1, '2021-09-15', '2021-10-31', '(Transferred to BJMP)', '2021-10-05 15:20:05', '2021-10-31 11:07:18'),
(116, 'Guillermo', 'Panopio', 'Miranda', 'male', 'Sec 5 and 11 ART II of RA 9165', NULL, '2021-08-10', NULL, '2021-10-29', '2021-10-464', 1, '2021-09-15', '2021-10-31', '(Transferred to BJMP)', '2021-10-05 15:21:03', '2021-10-31 11:03:28'),
(117, 'Sanny', 'Maala', 'Naz', 'male', 'Sec 5 and 11 ART II of RA 9165', NULL, '2021-08-10', NULL, '2021-10-29', '2021-10-464', 1, '2021-09-15', '2021-10-31', '(Transferred to BJMP)', '2021-10-05 15:21:27', '2021-10-31 11:02:00'),
(118, 'Joel', 'Mendoza', 'Paulin', 'male', 'Frustrated Homicide', NULL, '2021-08-27', NULL, '2021-10-29', '2021-10-464', 1, '2021-09-09', '2021-10-31', '(Transferred to BJMP)', '2021-10-05 15:33:02', '2021-10-31 10:59:05'),
(119, 'Mark Anthony', 'Serenio', 'Rodriguez', 'male', NULL, NULL, '2021-08-27', NULL, '2021-08-25', '2021-08-344', 2, '2021-08-25', '2021-08-25', 'Bail Bond', '2021-10-05 15:35:39', '2022-03-04 07:03:23'),
(120, 'Warren', 'Villanueva', 'Solmoro', 'male', NULL, NULL, '2021-08-22', NULL, '2021-08-22', NULL, NULL, NULL, NULL, NULL, '2021-10-05 15:37:40', '2021-10-05 15:37:40'),
(121, 'Rex Slander', NULL, 'Tolentino', 'male', NULL, NULL, '2021-08-08', NULL, '2021-08-10', '2021-08-321', NULL, '2021-08-10', '2021-08-10', 'DISMISSED', '2021-10-05 15:40:03', '2022-03-04 06:55:25'),
(122, 'Aljhen', 'Umali', 'Torres', 'male', NULL, NULL, '2021-08-31', NULL, '2021-09-03', '2021-09-358', 3, '2021-09-03', '2021-09-03', 'Bail Bond', '2021-10-05 15:40:46', '2022-03-04 07:06:25'),
(123, 'Jhen Adrei', 'Umali', 'Torres', 'male', NULL, NULL, '2021-08-31', NULL, '2021-09-03', '2021-09-358', 3, '2021-09-03', '2021-09-03', 'Bail Bond', '2021-10-05 15:41:21', '2022-03-04 07:06:23'),
(124, 'Robert', 'Dalupe', 'Tupas', 'male', 'Sec 5 and 11 ART II of RA 9165', NULL, '2021-08-18', NULL, '2021-10-29', '2021-10-464', 1, '2021-09-15', '2021-10-31', '(Transferred to BJMP)', '2021-10-05 15:41:53', '2021-10-31 11:02:17'),
(125, 'Romar', NULL, 'Umandap', 'male', NULL, NULL, '2021-08-08', NULL, '2021-08-10', '2021-08-321', NULL, '2021-08-10', '2021-08-10', 'DISMISSED', '2021-10-05 15:42:24', '2022-03-04 06:55:26'),
(126, 'Feliciano', 'Joson', 'Aranda', 'male', NULL, NULL, '2021-09-07', NULL, '2021-09-10', '2021-09-371', 2, '2021-09-10', '2021-09-10', 'Bail Bond', '2021-10-05 16:27:12', '2022-03-04 07:12:37'),
(127, 'Jeffrey', 'Joson', 'Aranda', 'male', NULL, NULL, '2021-09-07', NULL, '2021-09-10', '2021-09-371', 2, '2021-09-10', '2021-09-10', 'Bail Bond', '2021-10-05 16:27:33', '2022-03-04 07:12:45'),
(128, 'Jonathan', 'Rodorocio', 'Arches', 'male', 'Sec 5 and 11 ART II of RA 9165', NULL, '2021-09-09', NULL, '2021-10-29', '2021-10-464', 1, '2021-09-27', '2021-10-31', '(Transferred to BJMP)', '2021-10-05 16:28:04', '2021-10-31 11:09:15'),
(129, 'Julius', 'Padilla', 'Bibay', 'male', NULL, NULL, '2021-09-05', NULL, '2021-09-05', NULL, NULL, NULL, NULL, NULL, '2021-10-05 16:28:37', '2021-10-05 16:46:22'),
(130, 'Elmer', 'Alfaro', 'Cabrera', 'male', NULL, NULL, '2021-09-02', NULL, '2021-09-06', NULL, NULL, NULL, NULL, NULL, '2021-10-05 16:29:05', '2021-10-05 16:46:45'),
(131, 'Jose Ariel', 'Madoro', 'Camacho Jr.', 'male', NULL, NULL, '2021-09-07', NULL, '2021-09-10', '2021-09-371', 2, '2021-09-10', '2021-09-10', 'Bail Bond', '2021-10-05 16:29:47', '2022-03-04 07:12:50'),
(132, 'Robert', 'Catulong', 'Cerdeña', 'male', 'Rape', NULL, '2021-09-27', NULL, '2021-10-29', '2021-10-464', 1, '2021-10-13', '2021-10-31', '(Transferred to BJMP)', '2021-10-05 16:30:34', '2021-10-31 11:07:35'),
(133, 'Ricky', 'Levardo', 'Corpin', 'male', 'Sec 5 and 11 ART II of RA 9165', NULL, '2021-09-28', NULL, '2021-10-29', '2021-10-464', 1, '2021-10-12', '2021-10-31', '(Transferred to BJMP)', '2021-10-05 16:31:08', '2021-10-31 11:07:01'),
(134, 'Kerveen', 'Cabral', 'Dorado', 'male', 'Sec 5 and 11 ART II of RA 9165', NULL, '2021-09-30', NULL, '2021-10-29', '2021-10-464', 1, '2021-10-21', '2021-10-31', '(Transferred to BJMP)', '2021-10-05 16:31:49', '2021-10-31 11:06:17'),
(135, 'Jovan', 'Sarmiento', 'Gabelo', 'male', 'Sec 5 and 11 ART II of RA 9165', NULL, '2021-09-17', NULL, '2021-10-29', '2021-10-464', 1, '2021-09-27', '2021-10-31', '(Transferred to BJMP)', '2021-10-05 16:32:12', '2021-10-31 11:05:51'),
(136, 'Christian', 'Cruz', 'Guttierez', 'male', 'RIR', NULL, '2021-09-14', NULL, '2021-10-12', '2021-10-433', 1, '2021-10-12', '2021-10-12', 'Bail Bond', '2021-10-05 16:32:41', '2021-10-31 11:47:38'),
(137, 'Edmar', 'Amparo', 'Hernandez', 'male', NULL, NULL, '2021-09-24', NULL, '2021-09-30', '2021-09-402', NULL, '2021-09-30', '2021-09-30', 'Surety Bond', '2021-10-05 16:33:29', '2022-03-04 07:16:39'),
(138, 'Norman', 'Ronero', 'Magat', 'male', NULL, NULL, '2021-09-07', NULL, '2021-09-10', '2021-09-371', 2, '2021-09-10', '2021-09-10', 'Bail Bond', '2021-10-05 16:33:50', '2022-03-04 07:12:47'),
(139, 'Ronald', 'Inicencio', 'Maglaya', 'male', 'Sec 5 and 11 ART II of RA 9165', NULL, '2021-09-10', NULL, '2021-10-29', '2021-10-464', 1, '2021-09-27', '2021-10-31', '(Transferred to BJMP)', '2021-10-05 16:34:24', '2021-10-31 11:04:50'),
(140, 'Carfil', 'Aranda', 'Memije', 'male', NULL, NULL, '2021-09-07', NULL, '2021-09-10', '2021-09-371', 2, '2021-09-10', '2021-09-10', 'Bail Bond', '2021-10-05 16:35:29', '2022-03-04 07:12:43'),
(141, 'Roelito', 'Durumpili', 'Montre', 'male', 'Sec 5 and 11 ART II of RA 9165', NULL, '2021-09-29', NULL, '2021-10-29', '2021-10-464', 1, '2021-10-21', '2021-10-31', '(Transferred to BJMP)', '2021-10-05 16:35:55', '2021-10-31 11:03:13'),
(142, 'Wilnor', 'Aves', 'Peñales', 'male', NULL, NULL, '2021-09-07', NULL, '2021-09-10', '2021-09-371', 2, '2021-09-10', '2021-09-10', 'Bail Bond', '2021-10-05 16:36:27', '2022-03-04 07:12:41'),
(143, 'Letty', 'Tan', 'Polillo', 'female', 'Slight Physical Injuries', NULL, '2021-09-30', NULL, '2021-10-04', '2021-10-411', 1, '2021-10-04', '2021-10-04', 'Cash Bond', '2021-10-05 16:36:53', '2021-10-08 16:31:48'),
(144, 'Conrado', 'Malaiba', 'Realon', 'male', NULL, NULL, '2021-09-09', NULL, '2021-09-09', '2021-09-367', 3, '2021-09-09', '2021-09-09', 'Motion to lift warrant of arrest', '2021-10-05 16:37:26', '2022-03-04 07:10:04'),
(145, 'Victorio', 'Lirios', 'Vargas', 'male', 'Sec 5 and 11 ART II of RA 9165', NULL, '2021-09-28', NULL, '2021-10-29', '2021-10-464', 1, '2021-10-12', '2021-10-31', '(Transferred to BJMP)', '2021-10-05 16:37:54', '2021-10-31 11:03:00'),
(146, 'Froilan', 'Frondo', 'Zulueta', 'male', 'RIR DAMAGED TO  PROPERTY AND VIOL OF SEC 56(e) OF RA 4136', NULL, '2021-09-14', NULL, '2022-02-11', '2022-02-059', 3, '2022-02-11', '2022-02-11', 'Dismissed', '2021-10-05 16:38:31', '2022-02-11 10:01:51'),
(147, 'Mian', 'Toledo', 'Sevilla', 'female', NULL, NULL, '2021-09-07', NULL, '2021-09-10', '2021-09-371', 2, '2021-09-10', '2021-09-10', 'Bail Bond', '2021-10-05 16:43:55', '2022-03-04 07:12:39'),
(148, 'Marcos', 'Macaraeg', 'Toledo', 'male', NULL, NULL, '2021-09-09', NULL, '2021-09-09', NULL, NULL, NULL, NULL, NULL, '2021-10-05 16:44:40', '2021-10-05 16:55:44'),
(149, 'Severino', 'Alpeche', 'Ang', 'male', 'Qualified Theft', NULL, '2021-10-03', NULL, '2021-10-11', '2021-10-430', 1, '2021-10-11', '2021-10-11', 'Surety Bond', '2021-10-05 16:58:28', '2021-10-31 11:48:06'),
(150, 'Joselito', 'Lopez', 'Purificacion', 'male', 'Attempted Homicide', NULL, '2021-10-04', NULL, '2021-10-07', '2021-10-416', 1, '2021-10-07', '2021-10-07', 'Cash Bond', '2021-10-05 16:58:59', '2021-10-08 16:16:39'),
(151, 'Mark Anthony', 'Dequina', 'Arandia', 'male', 'RIR', NULL, '2021-10-06', NULL, '2021-10-07', '2021-10-415', 1, '2021-10-07', '2021-10-07', 'Affidavit (Kasunduan)', '2021-10-07 03:45:57', '2021-10-08 16:14:56'),
(152, 'Marnie', 'Blasorca', 'Macabuhay', 'female', 'Theft', NULL, '2021-10-06', NULL, '2021-10-14', '2021-10-435', 2, '2021-10-06', '2021-10-14', 'Cash Bond', '2021-10-07 03:48:03', '2021-10-31 11:47:20'),
(154, 'Steven', 'Reyes', 'Samson', 'male', NULL, NULL, '2021-01-07', NULL, '2021-04-10', NULL, NULL, NULL, NULL, NULL, '2021-10-07 05:40:03', '2021-10-07 05:40:03'),
(155, 'Lester', 'Perez', 'Micosa', 'male', NULL, NULL, '2021-03-03', NULL, '2021-04-13', NULL, NULL, NULL, NULL, NULL, '2021-10-07 05:42:59', '2021-11-05 05:39:54'),
(158, 'Jay-ar', 'Monares', 'Ramos', 'male', NULL, NULL, '2021-02-16', NULL, '2021-05-10', NULL, NULL, NULL, NULL, '(Transferred to BJMP)', '2021-10-07 05:47:33', '2022-03-04 04:37:58'),
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
(191, 'Hamlet', 'Rivas', 'Cuasay', 'male', 'Sec. 5 and 11 ART II of RA 9165', NULL, '2021-10-15', '2021-11-02', '2021-12-10', '2021-12-534', 4, NULL, '2021-12-10', '(Transferred to BJMP)', '2021-10-16 01:47:19', '2021-12-10 05:45:06'),
(192, 'Noel', 'Purrificacion', 'Barriga', 'male', 'Sec. 5 and 11 ART II of RA 9165', '1972-10-23', '2021-10-16', '2021-11-02', '2021-12-10', '2021-12-534', 4, NULL, '2021-12-10', '(Transferred to BJMP)', '2021-10-16 15:22:10', '2021-12-10 05:47:04'),
(193, 'Allan Xavier', 'Laudiza', 'Reyes', 'male', 'Stabbing Incident', NULL, '2021-10-20', NULL, '2021-10-20', '2021-10-447', 1, '2021-10-20', '2021-10-20', 'Affidavit (Kasunduan)', '2021-10-20 13:07:41', '2021-10-31 11:46:45'),
(194, 'Mark Allan', 'Dela Cerna', 'Espiritu', 'male', 'Sec. 5 and 11 ART II of RA 9165', NULL, '2021-10-20', '2021-11-10', '2021-12-10', '2021-12-534', 4, NULL, '2021-12-10', '(Transferred to BJMP)', '2021-10-21 14:00:53', '2021-12-10 05:46:05'),
(195, 'Exevino', 'Reyes', 'Medina', 'male', 'Sec. 5 and 11 ART II of RA 9165', '1971-08-23', '2021-10-22', '2021-11-10', '2021-12-10', '2021-12-534', 4, NULL, '2021-12-10', '(Transferred to BJMP)', '2021-10-22 13:51:20', '2021-12-10 05:44:47'),
(197, 'Rodrigo', 'Samson', 'Guanizo', 'male', 'RIR Damage to Property', NULL, '2021-10-24', NULL, '2021-11-04', '2021-11-478', 1, '2021-11-04', '2021-11-04', 'Bail Bond', '2021-10-24 05:36:24', '2021-12-01 02:23:58'),
(198, 'Nerrisa', 'Alcober', 'Reyes', 'female', 'Theft', NULL, '2021-10-25', NULL, '2021-11-02', '2021-11-467', 2, '2021-11-02', '2021-11-02', 'Cash Bond', '2021-10-25 14:57:31', '2021-11-02 06:40:29'),
(199, 'Michael', 'Inocia', 'Tumbaga', 'male', 'Sec. 5 and 11 ART II of RA 9165', '1989-06-22', '2021-10-27', '2021-11-10', '2021-12-10', '2021-12-534', 4, NULL, '2021-12-10', '(Transferred to BJMP)', '2021-10-28 13:51:27', '2021-12-10 05:46:41'),
(200, 'Mark Braian', 'Zapico', 'Igharas', 'male', 'Sec. 5 and 11 ART II of RA 9165', '1990-01-03', '2021-10-27', '2021-11-10', '2021-12-10', '2021-12-534', 4, NULL, '2021-12-10', '(Transferred to BJMP)', '2021-10-28 13:56:07', '2021-12-10 05:46:23'),
(201, 'Remielyn', 'Hernandez', 'Sardido', 'female', 'Sec. 5 and 11 ART II of RA 9165', '1987-06-20', '2021-10-27', '2021-11-10', '2021-12-10', '2021-12-534', 4, NULL, '2021-12-10', '(Transferred to BJMP)', '2021-10-28 13:57:24', '2021-12-10 05:47:25'),
(202, 'Ronald', 'Atienza', 'Durumpili', 'male', 'Sec. 5 and 11 ART II of RA 9165', '1984-06-02', '2021-10-28', '2021-11-18', '2021-12-13', '2021-12-539', 4, NULL, '2021-12-13', '(Transferred to BJMP)', '2021-10-28 15:02:09', '2021-12-13 11:19:50'),
(203, 'Raymond', 'Bondoc', 'Sarmiento', 'male', 'Theft', NULL, '2021-10-31', NULL, '2021-11-18', '2021-11-499', 2, '2021-11-18', '2021-11-18', 'Bail Bond', '2021-10-31 13:51:28', '2021-12-01 02:24:39'),
(204, 'Roberto', 'Roque', 'Gallano', 'male', 'RIR Damage to Property', NULL, '2021-11-03', NULL, '2021-11-03', '2021-11-472', 2, '2021-11-03', '2021-11-03', 'Affidavit (Kasunduan)', '2021-11-03 09:37:21', '2021-11-03 11:49:51'),
(205, 'Kears Glenn', NULL, 'Veloso', 'male', 'Violation of PD 1602', NULL, '2021-11-03', NULL, '2021-11-15', '2021-11-496', 3, '2021-11-15', '2021-11-15', 'Bail Bond', '2021-11-03 11:50:37', '2021-12-01 02:24:26'),
(206, 'Ruel', 'Grangos', 'Purificacion', 'male', 'Sec. 5 and 11 ART II of RA 9165', '1973-10-29', '2021-11-03', '2021-11-18', '2021-12-13', '2021-12-539', 4, NULL, '2021-12-13', '(Transferred to BJMP)', '2021-11-04 13:41:31', '2021-12-13 11:19:52'),
(207, 'Sonia', 'Motas', 'Cortez', 'female', 'Sec. 5 and 11 ART II of RA 9165', '1979-03-01', '2021-11-03', '2021-11-18', '2021-12-13', '2021-12-539', 4, NULL, '2021-12-13', '(Transferred to BJMP)', '2021-11-04 13:42:46', '2021-12-13 11:19:54'),
(208, 'Ralf Azel', 'Castillo', 'Motas', 'male', 'Murder', '1992-03-02', '2021-11-03', '2021-11-10', '2021-12-10', '2021-12-534', 4, NULL, '2021-12-10', '(Transferred to BJMP)', '2021-11-04 13:43:54', '2021-12-10 05:47:49'),
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
(268, 'Ricsan', 'Lacorte', 'Sabangan', 'male', NULL, NULL, '2020-11-20', NULL, '2021-01-19', NULL, NULL, NULL, NULL, NULL, '2021-11-04 14:29:13', '2021-11-04 14:29:13');
INSERT INTO `detainees` (`id`, `first_name`, `middle_name`, `last_name`, `gender`, `violation`, `birth_date`, `detained_date`, `commitment_date`, `released_date`, `released_blotter_number`, `jailer_id`, `released_date_court`, `released_date_erogue`, `remarks`, `created_at`, `updated_at`) VALUES
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
(288, 'Elbert', 'Tandel', 'Romeo', 'male', 'RIR Damage to Property', NULL, '2021-11-07', NULL, '2021-11-08', '2021-11-480', 3, '2021-11-08', '2021-11-08', 'Affidavit (Kasunduan)', '2021-11-08 14:26:17', '2021-12-01 05:43:30'),
(289, 'Marlon', 'Dalupan', 'Bañares', 'male', 'Sec. 5 and 11 ART II of RA 9165', '1990-04-25', '2021-11-08', '2021-11-18', '2021-12-13', '2021-12-539', 4, NULL, '2021-12-13', '(Transferred to BJMP)', '2021-11-09 03:13:13', '2021-12-13 11:19:47'),
(290, 'Jhon Carlo', 'Elevencione', 'Cabanela', 'male', 'Sec. 5 (a) of RA 9162 and Sec. 5 (I) of RA 9262', NULL, '2021-11-09', NULL, '2021-11-09', '2021-11-486', 2, '2021-11-09', '2021-11-09', 'On Bail (Cash Bond & Surety Bond)', '2021-11-09 09:12:34', '2021-12-01 02:24:11'),
(291, 'Krishna Lois', 'Fajardo', 'Bigay', 'female', 'Sec. 3 of RA 10883 (New Anti-Carnapping Act of 2016)', '1998-09-05', '2021-11-09', '2021-11-11', '2021-12-10', '2021-12-534', 4, NULL, '2021-12-10', '(Transferred to BJMP)', '2021-11-09 10:17:34', '2021-12-10 05:45:28'),
(292, 'Jason', 'Valdez', 'Celevarte', 'male', 'City/Municipal Ordinance (Warrant)', '1982-04-17', '2021-11-10', NULL, '2021-11-11', '2021-11-492', 3, '2021-11-11', '2021-11-11', 'Cash Bond', '2021-11-10 09:05:00', '2021-12-01 02:24:18'),
(293, 'Laurence', 'Moratillo', 'Decena', 'male', 'Sec. 5 and 11 ART II of RA 9165', NULL, '2021-11-10', '2021-11-26', '2021-12-13', '2021-12-539', 4, NULL, '2021-12-13', '(Transferred to BJMP)', '2021-11-11 02:23:39', '2021-12-13 11:19:43'),
(294, 'Niel', 'Deleon', 'Borromeo', 'male', 'Frustrated Murder (Warrant)', NULL, '2021-11-15', NULL, '2021-11-17', '2021-11-497', 3, '2021-11-17', '2021-11-17', 'Bail Bond', '2021-11-04 14:29:11', '2021-12-01 02:24:33'),
(295, 'Jason', 'Bataller', 'Roxas', 'male', 'Sec. 5 and 11 ART II of RA 9165', '1999-08-10', '2021-11-18', '2021-12-28', '2022-04-29', '2022-04-200', 6, '2022-04-29', '2022-04-29', '(Transferred to BJMP)', '2021-11-19 02:11:19', '2022-04-29 09:41:21'),
(296, 'Ryan', 'Dela Rosa', 'Ravelo', 'male', 'Section 5 (e) of RA 9262', '1986-11-21', '2021-11-24', NULL, '2021-11-25', '2021-11-510', 3, '2021-11-25', '2021-11-25', 'Bail Bond', '2021-11-24 03:22:43', '2021-12-01 02:24:45'),
(297, 'Narcel', 'Levardo', 'Durumpili', 'male', 'Sec. 5 and 11 ART II of RA 9165', NULL, '2021-11-24', '2021-12-07', '2022-01-18', '2022-01-026', 3, '2022-01-18', '2022-01-18', '(Transferred to BJMP)', '2021-11-24 11:37:55', '2022-01-18 11:51:34'),
(298, 'Erlina', 'Aguila', 'Macha', 'female', 'Sec. 5 and 11  ART II of RA 9165', '1975-03-03', '2021-11-24', '2021-12-07', NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 11:39:09', '2022-05-24 09:23:45'),
(299, 'Sheela', 'Escara', 'Villasanta', 'female', 'Sec. 5 and 11  ART II of RA 9165', '1981-05-28', '2021-11-24', '2021-12-07', '2022-02-17', '2022-02-068', 4, '2022-02-17', '2022-02-17', '(Transferred to BJMP)', '2021-11-24 11:40:30', '2022-02-18 03:55:37'),
(300, 'Renato', 'Omega', 'Regal', 'male', 'RIR in Homicide', '1965-05-19', '2021-11-27', NULL, '2021-12-10', '2021-12-536', 4, '2021-12-10', '2021-12-10', 'Bail Bond', '2021-11-27 06:38:48', '2021-12-10 05:49:34'),
(301, 'Jaypee', 'Olfato', 'Mendoza', 'male', 'Sec. 5 and 11 ART II of RA 9165', '1983-06-29', '2021-11-26', '2021-12-16', '2022-01-18', '2022-01-026', 3, '2022-01-18', '2022-01-18', '(Transferred to BJMP)', '2021-11-27 06:41:59', '2022-01-18 11:52:42'),
(302, 'Ruel', 'Macatangay', 'Rosales', 'male', 'Sec. 13 and 14  ART II of RA 9165', '1980-09-29', '2021-11-26', '2021-12-16', '2022-01-18', '2022-01-026', 3, '2022-01-18', '2022-01-18', '(Transferred to BJMP)', '2021-11-27 06:43:01', '2022-01-18 11:52:53'),
(303, 'Bencio', 'Bilog', 'Landicho', 'male', 'Sec. 13 and 14  ART II of RA 9165', '1980-08-23', '2021-11-26', '2021-12-16', '2022-01-18', '2022-01-026', 3, '2022-01-18', '2022-01-18', '(Transferred to BJMP)', '2021-11-27 06:45:04', '2022-01-18 11:52:33'),
(304, 'Adrian', 'Usal', 'Micosa', 'male', 'Sec. 5 and 11 ART II of RA 9165', '1986-01-09', '2021-11-26', '2021-12-16', '2022-01-18', '2022-01-026', 3, '2022-01-18', '2022-01-18', '(Transferred to BJMP)', '2021-11-27 06:45:56', '2022-01-18 11:52:23'),
(305, 'Kris Ann Joyce', 'Delos Santos', 'Seco', 'female', 'Sec. 13 and 14  ART II of RA 9165', '2001-08-13', '2021-11-26', '2021-12-16', NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-27 06:48:47', '2022-01-18 02:19:17'),
(306, 'Rosalie', 'Pondales', 'Enriquez', 'female', 'Sec. 13 and 14  ART II of RA 9165', '1994-02-06', '2021-11-26', '2021-12-16', '2022-06-24', '2022-06-294', 3, '2022-06-24', '2022-06-24', '(Transferred to BJMP)', '2021-11-27 06:49:59', '2022-06-24 07:51:55'),
(307, 'Dennis', 'Mendoza', 'Gonzales', 'male', 'BP22', NULL, '2021-11-29', NULL, '2021-11-29', '2021-11-514', 3, '2021-11-29', '2021-11-29', 'Cash Bond', '2021-11-29 09:50:03', '2021-12-01 02:24:59'),
(308, 'Angelito', 'Tope', 'Juliano', 'male', 'Frustrated Murder', NULL, '2021-11-29', NULL, '2021-11-30', '2021-11-517', 3, '2021-11-30', '2021-11-30', 'Affidavit (Kasunduan)', '2021-11-30 10:17:16', '2021-12-01 02:25:09'),
(309, 'Jose', 'Amador', 'Arvesu', 'male', 'Qualified Theft (Warrant)', '1965-12-24', '2021-12-01', NULL, '2021-12-06', '2021-12-526', 4, '2021-12-06', '2021-12-06', 'Bail Bond', '2021-12-01 02:16:29', '2021-12-06 11:48:50'),
(310, 'Montreal Almond', 'Ambayec', 'Medina', 'male', 'Sec. 5 and 11 ART II of RA 9165', '1982-12-08', '2021-12-02', '2021-12-16', '2022-01-18', '2022-01-026', 3, '2022-01-18', '2022-01-18', '(Transferred to BJMP)', '2021-12-02 09:18:07', '2022-01-18 11:50:28'),
(311, 'Joker Ace', 'Villanueva', 'Castillo', 'male', 'Sec. 5 and 11 ART II of RA 9165', '1986-12-04', '2021-12-02', '2021-12-16', '2022-01-18', '2022-01-026', 3, '2022-01-18', '2022-01-18', '(Transferred to BJMP)', '2021-12-02 09:19:43', '2022-01-18 11:51:00'),
(312, 'Danny', 'Dela Cruz', 'Escalderon', 'male', 'RIR Damage to Property', NULL, '2021-12-03', NULL, '2021-12-06', '2021-12-524', 4, '2021-12-06', '2021-12-06', 'Affidavit (Kasunduan)', '2021-12-03 07:12:01', '2021-12-06 11:49:31'),
(313, 'Elmar', 'Baybay', 'Torres', 'male', 'Serious Physical Injury', '1994-08-08', '2021-12-05', NULL, '2021-12-10', '2021-12-535', 4, '2021-12-10', '2021-12-10', 'Bail Bond', '2021-12-06 11:52:06', '2021-12-10 05:49:07'),
(314, 'Raymart', NULL, 'Baybay', 'male', 'Serious Physical Injury', '2000-10-30', '2021-12-05', NULL, '2021-12-10', '2021-12-535', 4, '2021-12-10', '2021-12-10', 'Bail Bond', '2021-12-06 11:57:50', '2021-12-10 05:48:49'),
(315, 'Karl Bryan', 'Salasar', 'Algordo', 'male', 'Sec. 5 and 11 ART II of RA 9165', '1993-06-15', '2021-12-06', '2021-12-28', '2022-02-17', '2022-02-068', 4, '2022-02-17', '2022-02-17', '(Transferred to BJMP)', '2021-12-07 01:27:29', '2022-02-18 03:55:24'),
(316, 'Barry', 'Palomo', 'Gonzales', 'male', 'Sec. 5 and 11 ART II of RA 9165', '1990-01-11', '2021-12-06', '2021-12-28', NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-07 01:28:41', '2022-01-25 10:33:12'),
(317, 'Mariel', 'Gongona', 'Catalbas', 'female', 'Qualified Theft (Warrant)', '1996-06-23', '2021-12-10', '2022-03-30', '2022-04-27', '2022-04-196', 3, '2022-04-27', '2022-04-27', '(Transferred to BuCor Mandaluyong)', '2021-12-10 12:41:21', '2022-04-27 22:59:00'),
(318, 'Edwin', 'Paildelan', 'Macatumpag', 'male', 'Qualified Theft', '1986-03-09', '2021-12-10', NULL, '2021-12-17', '2021-12-547', 4, '2021-12-17', '2021-12-17', 'Cash Bond', '2021-12-10 14:36:24', '2021-12-19 11:55:36'),
(319, 'Ricoyan', 'Payba', 'Abayon', 'male', 'Rape under Art. 266-A, par. (1) of the RPC (Warrant)', '1998-11-17', '2021-12-14', '2021-12-27', NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-15 11:54:44', '2022-01-25 10:35:18'),
(320, 'Rex', 'Alcantara', 'Roxas', 'male', 'Sec. 5 and 11 ART II of RA 9165', '1985-08-05', '2021-12-13', '2021-12-28', '2022-02-17', '2022-02-068', 4, '2022-02-17', '2022-02-17', '(Transferred to BJMP)', '2021-12-15 11:56:01', '2022-02-18 03:55:31'),
(321, 'Gerald', 'Ronquillo', 'Fetalvero', 'male', 'Sec. 5 and 11 ART II of RA 9165', '1991-12-15', '2021-12-15', '2021-12-28', '2022-02-17', '2022-02-068', 4, '2022-02-17', '2022-02-17', '(Transferred to BJMP)', '2021-12-16 09:03:43', '2022-02-18 03:55:18'),
(322, 'Garry', 'Panopio', 'Miranda', 'male', 'Murder (Warrant)', '1976-06-10', '2021-12-16', '2022-05-11', '2022-05-20', '2022-05-235', 3, '2022-05-20', '2022-05-20', '(Transferred to BJMP)', '2021-12-16 10:12:36', '2022-05-21 10:28:21'),
(323, 'Anthony', 'Valenzuela', 'Leyesa', 'male', 'Qualified Theft (Warrant)', '1995-11-10', '2021-12-21', NULL, '2022-01-05', '2022-01-05', 3, '2022-01-05', '2022-01-05', 'Surety Bond', '2021-12-22 04:39:07', '2022-01-05 07:36:15'),
(324, 'Reyboy', 'Calda', 'Umandap', 'male', 'Sec. 5 and 11 ART II of RA 9165', '1989-02-23', '2021-12-22', '2022-01-11', '2022-02-17', '2022-02-068', 4, '2022-02-17', '2022-02-17', '(Transferred to BJMP)', '2021-12-23 02:05:52', '2022-02-18 03:55:34'),
(325, 'Ely', 'Salazar', 'Tinasas', 'male', 'Direct Assault', '1969-08-12', '2021-12-24', NULL, '2022-01-17', '2022-01-025', 3, '2022-01-17', '2022-01-17', 'Cash Bond', '2021-12-24 02:49:16', '2022-01-18 02:43:23'),
(326, 'Nancy', 'Belamide', 'Tinasas', 'female', 'Direct Assault', '1978-09-15', '2021-12-24', NULL, '2022-01-17', '2022-01-025', 3, '2022-01-17', '2022-01-17', 'Cash Bond', '2021-12-24 02:54:12', '2022-01-18 02:42:58'),
(327, 'Carlos', 'Bayalan', 'Belamide', 'male', 'Sec. 5 ART II of RA 9165', '1992-09-17', '2021-12-24', '2022-01-11', '2022-02-17', '2022-02-068', 4, '2022-02-17', '2022-02-17', '(Transferred to BJMP)', '2021-12-24 05:55:03', '2022-02-18 03:52:01'),
(328, 'Joselito', 'Bordado', 'Barros', 'male', 'Attempted Homicide (Warrant)', NULL, '2021-12-27', NULL, '2021-12-27', '2021-12-558', 3, '2021-12-27', '2021-12-27', 'Cash Bond', '2021-12-27 08:12:59', '2021-12-27 08:12:59'),
(329, 'Chember', NULL, 'Albiana', 'male', 'RIR Homicide', NULL, '2021-12-27', NULL, '2021-12-28', '2021-12-560', 4, '2021-12-28', '2021-12-28', 'Affidavit (Kasunduan)', '2021-12-28 09:12:57', '2021-12-28 09:12:57'),
(330, 'Mark Jonnel', 'Fernandez', 'Nabor', 'male', 'Qualified Theft (2 Counts) (Warrant)', '1998-08-23', '2021-12-31', '2022-01-04', '2022-01-25', '2022-01-037', 3, '2022-01-25', '2022-01-25', 'Surety Bond', '2021-12-31 07:48:06', '2022-01-25 10:30:51'),
(331, 'Dennis', 'Diaz', 'Austria', 'male', 'Sec. 5 and 11 ART II of RA 9165', '1983-05-23', '2021-12-31', '2022-01-11', '2022-02-17', '2022-02-068', 4, '2022-02-17', '2022-02-17', '(Transferred to BJMP)', '2021-12-31 07:48:59', '2022-02-18 03:52:38'),
(332, 'Eugenio', 'Aya', 'Zamora', 'male', 'Sec. 5 and 11 ART II of RA 9165', '1979-07-13', '2021-12-31', '2022-01-11', NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-31 07:49:39', '2022-01-26 09:20:14'),
(333, 'Joven', 'Bautista', 'Vergara', 'male', 'Sec. 5 and 11 ART II of RA 9165', '1975-10-14', '2021-12-31', '2022-01-11', '2022-02-17', '2022-02-068', 4, '2022-02-17', '2022-02-17', '(Transferred to BJMP)', '2021-12-31 07:50:23', '2022-02-18 03:55:22'),
(334, 'Mark', 'Magbanua', 'Aquillo', 'male', 'Sec. 5 and 11 ART II of RA 9165', '1981-04-25', '2021-12-31', '2022-01-11', '2022-02-17', '2022-02-068', 4, '2022-02-17', '2022-02-17', '(Transferred to BJMP)', '2021-12-31 07:51:09', '2022-02-18 03:55:29'),
(335, 'Victoriano', 'Grecia', 'Empiso', 'male', 'Frustrated Murder', '1966-11-02', '2021-12-31', '2022-01-11', '2022-02-17', '2022-02-068', 4, '2022-02-17', '2022-02-17', '(Transferred to BJMP)', '2022-01-01 02:13:34', '2022-02-18 03:55:41'),
(336, 'Elizabeth', 'Punongbayan', 'Dela Cruz', 'female', 'Theft', '1968-07-19', '2022-01-04', NULL, '2022-05-04', '2022-05-210', 6, '2022-05-04', '2022-05-04', 'Sentence Served', '2022-01-04 06:06:18', '2022-05-04 09:10:21'),
(337, 'Jonathan', 'Chica', 'Guzon', 'male', 'Rape (Warrant)', '1969-09-29', '2022-01-05', '2022-01-06', '2022-02-17', '2022-02-068', 4, '2022-02-17', '2022-02-17', '(Transferred to BJMP)', '2022-01-05 04:30:45', '2022-02-18 03:55:20'),
(338, 'Mario', 'Bobis', 'Candano', 'male', 'Sec. 5 (b) of RA 7610', '1966-08-04', '2022-01-05', '2022-01-06', '2022-02-17', '2022-02-068', 4, '2022-02-17', '2022-02-17', '(Transferred to BJMP)', '2022-01-05 04:33:01', '2022-02-18 03:55:26'),
(339, 'John Lester', 'Siño', 'De Guzman', 'male', 'Sec. 5 and 11 ART II of RA 9165', '2002-01-29', '2022-01-05', '2022-01-25', '2022-04-29', '2022-04-200', 6, '2022-04-29', '2022-04-29', '(Transferred to BJMP)', '2022-01-05 23:59:24', '2022-04-29 09:41:45'),
(340, 'Marcelino', 'Perlas', 'Enriquez', 'male', 'Sec. 5 and 11 ART II of RA 9165', '1977-04-26', '2022-01-06', '2022-01-25', '2022-04-29', '2022-04-200', 6, '2022-04-29', '2022-04-29', '(Transferred to BJMP)', '2022-01-06 00:00:24', '2022-04-29 09:42:15'),
(341, 'Jerox', 'Camacho', 'Lodor', 'male', 'Attempted Murder', '1985-06-08', '2022-01-09', '2022-01-25', '2022-03-15', '2022-03-123', 3, '2022-03-15', '2022-03-15', 'Surety Bond', '2022-01-10 12:29:50', '2022-03-15 10:14:56'),
(342, 'Manolito', 'De Lara', 'Dominguez', 'male', 'Sec. 5 and 11 ART II of RA 9165', '1978-09-29', '2022-01-12', NULL, '2022-02-24', '2022-02-077', 3, '2022-02-24', '2022-02-24', 'DISMISSED', '2022-01-13 02:58:47', '2022-02-24 08:38:35'),
(343, 'Edgardo', 'Falcon', 'De Castro', 'male', 'Anti-Fencing Law of 1979 (PD 1612)', '1960-08-24', '2022-01-11', NULL, '2022-01-18', '2022-01-028', 3, '2022-01-18', '2022-01-18', 'Cash Bond', '2022-01-13 03:00:32', '2022-01-18 10:00:34'),
(344, 'Romeo', 'Abiera', 'Ludovice', 'male', 'Theft', '1991-02-07', '2022-01-11', NULL, '2022-02-02', '2022-02-045', 3, '2022-02-02', '2022-02-02', 'Bail Bond', '2022-01-13 03:02:06', '2022-03-01 02:43:19'),
(345, 'Robert', 'Borungan', 'Ludovice', 'male', 'Theft', '1985-09-21', '2022-01-11', NULL, '2022-02-02', '2022-02-045', 3, '2022-02-02', '2022-02-02', 'Bail Bond', '2022-01-13 03:04:19', '2022-03-01 02:43:22'),
(346, 'Rodel', NULL, 'Dela Torre', 'male', 'Theft', '1989-11-04', '2022-01-11', NULL, '2022-01-31', '2022-01-044', 4, '2022-01-31', '2022-01-31', 'Bail Bond', '2022-01-13 03:05:55', '2022-01-31 05:35:17'),
(347, 'Romeo', 'Saenz', 'Manlangit', 'male', 'Anti-Violence Against Women And Their Children Act Of 2004 (5(E)(2) Of RA 9262)', NULL, '2022-01-14', NULL, '2022-01-21', '2022-01-031', 3, '2022-01-21', '2022-01-21', 'Bail Bond', '2022-01-14 10:43:40', '2022-01-21 09:37:07'),
(348, 'Randy', 'Caravana', 'Alcanse', 'male', 'Sec. 5 and 11 ART II of RA 9165', '1977-04-20', '2022-01-18', '2022-02-08', '2022-04-29', '2022-04-200', 6, '2022-04-29', '2022-04-29', '(Transferred to BJMP)', '2022-01-19 01:56:46', '2022-04-29 09:42:46'),
(349, 'Jay Jay', 'Torado', 'Macandog', 'male', 'Theft', '1994-09-18', '2022-01-18', NULL, '2022-01-27', '2022-01-040', 4, '2022-01-27', '2022-01-27', 'Bail Bond', '2022-01-19 01:58:13', '2022-01-28 06:23:58'),
(350, 'Jayvee', 'Babila', 'Balaye', 'male', 'Sec. 5(b) of RA 7610 (Warrant)', NULL, '2022-01-21', NULL, '2022-01-25', '2022-01-036', 3, '2022-01-25', '2022-01-25', 'Surety Bond', '2022-01-21 23:34:22', '2022-01-25 09:40:15'),
(351, 'Norman Jason', 'Alamag', 'Abenes', 'male', 'RIR Homicide', NULL, '2022-01-23', NULL, '2022-01-24', '2022-01-035', 4, '2022-01-24', '2022-01-24', 'Affidavit (Kasunduan)', '2022-01-25 09:38:57', '2022-01-25 09:38:57'),
(352, 'Gregorio', 'Mendoza', 'Leyban', 'male', 'Sec. 5 and 11 ART II of RA 9165', '1970-05-25', '2022-01-28', '2022-02-18', '2022-04-29', '2022-04-200', 6, '2022-04-29', '2022-04-29', '(Transferred to BJMP)', '2022-01-29 08:03:44', '2022-04-29 09:43:07'),
(353, 'Ivan', 'Boncato', 'Sentillas', 'male', 'Rape under Art 266-A, par1 RPC (2 counts)\r\nRape under Art 266-A, par2 RPC (1 count)', '1987-07-05', '2022-02-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-03 11:44:00', '2022-06-03 06:32:29'),
(354, 'Virgilio', 'Diaros', 'Bayadna', 'male', 'Sec. 5 and 11 ART II of RA 9165', '1964-04-17', '2022-02-04', '2022-02-18', '2022-04-29', '2022-04-200', 6, '2022-04-29', '2022-04-29', '(Transferred to BJMP)', '2022-02-04 14:29:35', '2022-04-29 09:44:07'),
(355, 'Nilson', 'Toñacao', 'Campos', 'male', 'Sec. 5 and 11 ART II of RA 9165', '1965-08-14', '2022-02-04', '2022-02-18', '2022-04-29', '2022-04-200', 6, '2022-04-29', '2022-04-29', '(Transferred to BJMP)', '2022-02-04 14:30:27', '2022-04-29 09:43:43'),
(356, 'Joanne', 'Nicolas', 'Mercado', 'female', 'ESTAFA under Art. 315par.1(B) of the RPC', NULL, '2022-02-08', NULL, '2022-02-08', '2022-02-055', 4, '2022-02-08', '2022-02-08', 'Bail Bond', '2022-02-08 11:29:43', '2022-02-08 11:29:43'),
(357, 'Rayjohn', 'Umandap', 'Gagarin', 'male', 'Sec. 5 and 11 ART II of RA 9165', '1989-04-12', '2022-02-10', '2022-02-23', '2022-04-29', '2022-04-200', 6, '2022-04-29', '2022-04-29', '(Transferred to BJMP)', '2022-02-10 23:24:45', '2022-04-29 09:44:27'),
(358, 'Ronaldo', 'Diotiles', 'Ortiz', 'male', 'Sec. 5 and 11 ART II of RA 9165', '1985-08-24', '2022-02-10', '2022-02-23', '2022-04-29', '2022-04-200', 6, '2022-04-29', '2022-04-29', '(Transferred to BJMP)', '2022-02-10 23:27:36', '2022-04-29 09:44:48'),
(359, 'Jayson', 'Punzalan', 'Libres', 'male', 'Sec. 5(a) of RA 9262 (Warrant)', '1991-06-19', '2022-02-14', NULL, '2022-02-15', '2022-02-062', 3, '2022-02-15', '2022-02-15', 'Cash Bond', '2022-02-14 16:36:36', '2022-02-15 09:43:04'),
(360, 'Melencio', 'Garcia', 'Dela Cruz', 'male', 'Sec. 5 (a) of RA 9262 (2 Counts)', '1965-05-24', '2022-02-15', NULL, '2022-02-18', '2022-02-070', 3, '2022-02-18', '2022-02-18', 'Cash Bond', '2022-02-16 04:18:15', '2022-02-18 06:10:08'),
(361, 'Rhyan Jay', 'Realon', 'Medes', 'male', 'Frustrated Murder', '2001-01-06', '2022-02-18', NULL, '2022-02-21', '2022-02-073', 4, '2022-02-21', '2022-02-21', 'Affidavit (Kasunduan)', '2022-02-18 09:35:43', '2022-02-22 09:33:24'),
(362, 'Christoper Kevin', 'Cardona', 'Amoranto', 'male', 'Sec. 5 and 11 ART II of RA 9165', '1985-06-12', '2022-02-18', '2022-03-18', '2022-04-29', '2022-04-200', 6, '2022-04-29', '2022-04-29', '(Transferred to BJMP)', '2022-02-20 12:06:49', '2022-04-29 09:45:40'),
(363, 'Kyle Roger', NULL, 'Lirio', 'male', 'Estafa under para. 1 (b), Art. 315 of the RPC', NULL, '2022-02-22', NULL, '2022-02-22', '2022-02-076', 3, '2022-02-22', '2022-02-22', 'Cash Bond', '2022-02-22 09:35:30', '2022-02-22 09:35:30'),
(364, 'Sammy', 'Labayo', 'Tiradez', 'male', 'Sec. 5 and 11 ART II of RA 9165', '1982-01-04', '2022-02-26', '2022-03-18', '2022-04-29', '2022-04-200', 6, '2022-04-29', '2022-04-29', '(Transferred to BJMP)', '2022-02-27 01:54:12', '2022-04-29 09:38:05'),
(365, 'Wilfredo', 'Mape', 'Loyola', 'male', 'Sec. 5 and 11 ART II of RA 9165', '1980-09-16', '2022-02-26', '2022-03-18', '2022-04-29', '2022-04-200', 6, '2022-04-29', '2022-04-29', '(Transferred to BJMP)', '2022-02-27 01:54:58', '2022-04-29 09:39:47'),
(366, 'Torres', 'Pasupil', 'Tonguia', 'male', 'Sec. 28 (e) of RA 11199 (Warrant)', '1962-06-12', '2022-02-26', NULL, '2022-03-02', '2022-03-095', 3, '2022-03-02', '2022-03-02', 'Surety Bond', '2022-02-27 01:57:08', '2022-03-02 10:54:19'),
(367, 'Clarence', 'De Guzman', 'Banlaygas', 'male', 'Theft', '1998-09-11', '2022-02-26', NULL, '2022-03-02', '2022-03-096', 3, '2022-03-02', '2022-03-02', 'Cash Bond', '2022-02-27 01:58:43', '2022-03-02 11:21:30'),
(368, 'Raymond', 'Bondoc', 'Sarmiento', 'male', 'Theft', '1962-03-02', '2022-02-25', NULL, '2022-04-11', '2022-04-165', 3, '2022-04-11', '2022-04-11', 'Cash Bond', '2022-02-28 00:57:16', '2022-04-11 07:48:12'),
(369, 'John Herry', 'Tambiga', 'Sumingit', 'male', 'RIR Damage to Property & Multiple Slight Physical Injuries', NULL, '2022-02-28', NULL, '2022-02-28', '2022-02-089', 4, '2022-02-28', '2022-02-28', 'Cash Bond', '2022-02-28 10:07:15', '2022-02-28 10:07:15'),
(370, 'Reynaldo', 'Espelita', 'Panganiban Jr.', 'male', 'Violation of RA 10591 (search warrant) and Omnibus Election Code', '1966-04-02', '2022-02-27', NULL, '2022-03-01', '2022-03-094', 4, '2022-03-01', '2022-03-01', 'Dismissed', '2022-02-28 10:21:27', '2022-04-01 15:52:11'),
(371, 'Jose Mari', 'V', 'Romero', 'male', 'Theft', NULL, '2022-02-28', NULL, '2022-02-28', '2022-02-090', 4, '2022-02-28', '2022-02-28', 'Bail Bond', '2022-03-01 00:05:17', '2022-03-01 00:05:17'),
(372, 'Joey', 'Mañabo', 'Gutierrez', 'male', 'Theft', '1981-12-16', '2022-02-28', NULL, '2022-03-07', '2022-03-107', 3, '2022-03-07', '2022-03-07', 'Cash Bond', '2022-03-01 00:18:52', '2022-03-07 10:16:13'),
(373, 'Jouie', 'De Sosa', 'De Lunas', 'male', 'RECKLESS IMPRUDENCE RESULTING TO SLIGHT PHYSICAL INJURIES WITH ABANDONMENT OF ONE’S OWN VICTIM', '1991-02-28', '2022-02-28', NULL, '2022-03-04', '2022-03-097', 4, '2022-03-04', '2022-03-04', 'Bail Bond', '2022-03-01 00:20:05', '2022-03-09 13:21:10'),
(374, 'Rommel', 'Gasga', 'Tolentino', 'male', 'Sec. 14 and 7 Art. II of RA 9165 (Bench Warrant)', NULL, '2022-03-04', NULL, '2022-03-11', '2022-03-117', 4, '2022-03-11', '2022-03-11', 'Bench Warrant Lifted', '2022-03-04 09:39:21', '2022-03-11 07:45:18'),
(375, 'Dionisio', 'Villarin', 'Magalong Iii', 'male', 'Qualified Theft', '1996-02-14', '2022-03-04', NULL, '2022-03-15', '2022-03-122', 3, '2022-03-15', '2022-03-15', 'Surety Bond', '2022-03-06 07:55:50', '2022-03-15 05:57:45'),
(376, 'Arturo', 'Purificacion', 'Macha', 'male', 'Sec. 5 and 11 ART II of RA 9165', '1968-01-16', '2022-03-04', '2022-03-24', NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-06 07:58:01', '2022-04-12 12:34:06'),
(377, 'Sherwin Roy', 'S', 'Lorenzo', 'male', 'BP 22', NULL, '2022-03-07', NULL, '2022-03-07', '2022-03-108', 3, '2022-03-07', '2022-03-07', 'Cash Bond', '2022-03-07 10:17:48', '2022-03-07 10:17:48'),
(378, 'Christian', 'Huab', 'Adrao', 'male', 'RECKLESS IMPRUDENCE RESULTING IN DAMAGE TO PROPERTY (RPC ART 365)', NULL, '2022-03-08', NULL, '2022-03-09', '2022-03-112', 4, '2022-03-09', '2022-03-09', 'Cash Bond', '2022-03-09 03:30:15', '2022-03-09 13:18:45'),
(379, 'Lester', 'Bulan', 'Repol', 'male', 'Theft', '2002-11-26', '2022-03-07', NULL, '2022-03-14', '2022-03-119', 3, '2022-03-14', '2022-03-14', 'Cash Bond', '2022-03-09 03:56:08', '2022-03-14 08:10:27'),
(380, 'Ricardo', 'Escarilla', 'Gallano', 'male', 'Theft (2 Counts)', '1977-01-18', '2022-03-09', NULL, '2022-05-02', '2022-05-209', 3, '2022-05-02', '2022-05-02', 'Cash Bond', '2022-03-09 22:32:25', '2022-05-02 08:21:49'),
(381, 'Gerwin', 'Palalon', 'Guillermo', 'male', 'Sec. 5 and 11 ART II of RA 9165', '1983-12-12', '2022-03-10', '2022-03-24', '2022-04-29', '2022-04-200', 6, '2022-04-29', '2022-04-29', '(Transferred to BJMP)', '2022-03-11 07:48:04', '2022-04-29 09:39:19'),
(383, 'Etchel', 'Espejo', 'Binalla', 'male', 'Rape under Art. 66-A, par. (1) of the RPC and Rape through Sexual Assult under Art. 266-A par. (2) of the RPC', NULL, '2022-03-14', '2022-03-24', '2022-04-29', '2022-04-200', 6, '2022-04-29', '2022-04-29', '(Transferred to BJMP)', '2022-03-15 05:59:58', '2022-04-29 09:40:59'),
(384, 'Nicolas', 'Levardo', 'Marqueses', 'male', 'Sec. 5 and 11 Art. II of RA 9165', '1976-09-10', '2022-03-17', '2022-04-01', NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-20 07:40:15', '2022-04-12 12:27:24'),
(385, 'Jay-r', 'Boringot', 'Espiritu', 'male', 'Sec. 5 and 11 Art. II of RA 9165', '1988-09-22', '2022-03-17', '2022-04-01', '2022-04-29', '2022-04-200', 6, '2022-04-29', '2022-04-29', '(Transferred to BJMP)', '2022-03-20 07:42:17', '2022-04-29 09:38:51'),
(386, 'Ramil', 'Casim', 'Cortez', 'male', 'RIR to damage to property & Sec. 5 in rel. to Sec. 56 (D) of RA 4136 & Sec. 19 in rel. to Sec. 56 (E) of RA 4136', NULL, '2022-03-20', NULL, '2022-04-04', '2022-04-154', 3, '2022-04-04', '2022-04-04', 'Cash Bond', '2022-03-24 00:34:49', '2022-04-04 07:46:53'),
(387, 'Randy', 'Andrade', 'Cristobal', 'male', 'Murder (Warrant)', NULL, '2022-03-22', '2022-03-28', '2022-04-29', '2022-04-200', 6, '2022-04-29', '2022-04-29', '(Transferred to BJMP)', '2022-03-24 00:35:37', '2022-04-29 09:40:20'),
(388, 'Rolly', 'Andrade', 'Cristobal', 'male', 'Murder (Warrant)', NULL, '2022-03-22', '2022-03-28', '2022-04-29', '2022-04-200', 6, '2022-04-29', '2022-04-29', '(Transferred to BJMP)', '2022-03-24 00:36:02', '2022-04-29 09:40:32'),
(389, 'Mervin', 'Vergara', 'Manalo', 'male', 'Sec. 5 and 11 ART II of RA 9165', '1982-12-17', '2022-03-23', '2022-04-12', '2022-05-20', '2022-05-235', 3, '2022-05-20', '2022-05-20', '(Transferred to BJMP)', '2022-03-24 10:34:07', '2022-05-21 10:28:21'),
(390, 'Ronald', 'Reobilo', 'Laudiza', 'male', 'Sec. 5 and 11 ART II of RA 9165', '1979-12-24', '2022-03-25', '2022-04-27', '2022-05-20', '2022-05-235', 3, '2022-05-20', '2022-05-20', '(Transferred to BJMP)', '2022-03-29 01:22:48', '2022-05-21 10:28:21'),
(391, 'Chirstian', 'Gregorio', 'Rongalerios', 'male', 'Qualified Theft', '1988-05-02', '2022-03-28', NULL, '2022-04-01', '2022-04-151', 4, '2022-04-01', '2022-04-01', 'Cash Bond', '2022-03-29 01:24:27', '2022-04-01 09:03:55'),
(392, 'Ryan', 'Dela Rosa', 'Ravelo', 'male', 'Sec 5 (e-2), RA 9262 (Warrant)', NULL, '2022-03-28', NULL, '2022-04-06', '2022-04-157', 6, '2022-04-06', '2022-04-06', 'Motion for Reconsideration', '2022-03-29 01:26:24', '2022-04-06 11:36:20'),
(393, 'Edgar', 'Ramirez', 'Sadsad', 'male', 'Sec. 5 (b) Art 3 RA 7610', NULL, '2022-03-21', NULL, '2022-03-21', '2022-03-133', 4, '2022-03-21', '2022-03-21', '(Turnover)', '2022-03-29 05:37:08', '2022-03-31 06:54:30'),
(394, 'Jose Billy', 'Aquilo', 'Laniog', 'male', 'Penalizing Obstruction of Apprehension and Prosecution of Criminal offenders PD 1829 (Warrant)', NULL, '2022-03-30', NULL, '2022-03-31', '2022-03-148', 3, '2022-03-31', '2022-03-31', 'Cash Bond', '2022-03-30 15:36:53', '2022-03-31 07:56:21'),
(395, 'Anthony', 'Valenzuela', 'Leyesa', 'male', 'Qualified Theft (Warrant)', NULL, '2022-03-31', NULL, '2022-03-31', '2022-03-147', 3, '2022-03-31', '2022-03-31', 'Bench Warrant Lifted', '2022-03-31 07:10:44', '2022-03-31 07:10:44'),
(396, 'Allan', 'Ferry', 'Diaz', 'male', 'Sec. 5 and 11 ART II of RA 9165', '1979-03-22', '2022-03-31', '2022-04-22', '2022-05-20', '2022-05-235', 3, '2022-05-20', '2022-05-20', '(Transferred to BJMP)', '2022-03-31 16:46:07', '2022-05-21 10:28:21'),
(397, 'Ray Ryan Jan', 'Tan', 'Hernandez', 'male', 'Estafa', '1985-09-07', '2022-04-02', NULL, '2022-04-11', '2022-04-164', 3, '2022-04-11', '2022-04-11', 'Dismissed', '2022-04-03 04:44:18', '2022-04-11 05:06:52'),
(398, 'Marlon', 'Aquino', 'Lontoc', 'male', 'Sec. 5 and 11 ART II of RA 9165', '1981-08-10', '2022-04-06', '2022-04-27', '2022-05-20', '2022-05-235', 3, '2022-05-20', '2022-05-20', '(Transferred to BJMP)', '2022-04-07 03:54:38', '2022-05-21 10:28:21'),
(399, 'Reynold', 'Basbas', 'Requieron', 'male', 'Sec. 5 and 11 ART II of RA 9165', '1989-02-24', '2022-04-06', '2022-04-27', '2022-05-20', '2022-05-235', 3, '2022-05-20', '2022-05-20', '(Transferred to BJMP)', '2022-04-07 03:55:17', '2022-05-21 10:28:21'),
(400, 'Joey', 'Cantina', 'Fortuna', 'male', 'Sec. 5 and 11 ART II of RA 9165', '1987-09-15', '2022-04-07', '2022-05-20', '2022-06-24', '2022-06-294', 3, '2022-06-24', '2022-06-24', '(Transferred to BJMP)', '2022-04-07 03:55:42', '2022-06-24 07:55:57'),
(401, 'Joharra', 'Guarda', 'Bedico', 'female', 'Sec. 5 and 11 ART II of RA 9165', '1989-10-29', '2022-04-07', NULL, '2022-06-01', '2022-06-256', 3, '2022-06-01', '2022-06-01', 'Surety Bond', '2022-04-07 03:56:08', '2022-06-01 10:50:20'),
(402, 'Harold', 'Comintan', 'Roa', 'male', 'Qualified Theft', '1982-05-19', '2022-04-09', NULL, '2022-04-19', '2022-04-180', 3, '2022-04-19', '2022-04-19', 'Surety Bond', '2022-04-10 11:12:26', '2022-04-19 10:17:27'),
(403, 'Aira Jane', 'Abezar', 'Cabus', 'female', 'Theft', '1975-04-04', '2022-04-10', NULL, '2022-04-19', '2022-04-179', 3, '2022-04-19', '2022-04-19', 'Cash Bond', '2022-04-11 10:28:06', '2022-04-19 07:40:28'),
(404, 'Nilda', 'Costimiano', 'Tolosa', 'female', 'RIR IN DAMAGE TO PROPERTY (RPC Art. 365)', NULL, '2022-04-12', NULL, '2022-04-12', '2022-04-169', 3, '2022-04-12', '2022-04-12', 'Cash Bond', '2022-04-12 12:24:16', '2022-04-12 12:24:40'),
(405, 'John Daniel', 'Perante', 'Francisco', 'male', 'Sec. 5 and 11 ART II of RA 9165', '2004-01-19', '2022-04-12', '2022-04-27', '2022-05-20', '2022-05-235', 3, '2022-05-20', '2022-05-20', '(Transferred to BJMP)', '2022-04-13 02:02:53', '2022-05-21 10:28:21'),
(406, 'Grazel', 'Belda', 'Mendoza', 'female', 'Sec. 5 and 11 ART II of RA 9165', '1998-02-04', '2022-04-13', '2022-04-27', '2022-05-20', '2022-05-235', 3, '2022-05-20', '2022-05-20', '(Transferred to BJMP)', '2022-04-13 02:04:28', '2022-05-21 10:28:21'),
(407, 'Joel', NULL, 'Sasota', 'male', 'Violation of Batas Pambansa Blg. 22', NULL, '2022-04-18', NULL, '2022-04-18', '2022-04-178', 6, '2022-04-18', '2022-04-18', 'Cash Bond', '2022-04-18 07:44:47', '2022-04-18 07:44:47'),
(408, 'Ruel', 'Reyes', 'Bañados', 'male', 'Sec. 5, 11 and 26 ART II of RA 9165', '1993-12-21', '2022-04-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-25 05:39:58', '2022-05-24 09:26:06'),
(409, 'Arnel', 'Llanes', 'Rafael', 'male', 'Sec. 5, 11 and 26 ART II of RA 9165', '1988-12-01', '2022-04-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-25 05:41:16', '2022-05-24 09:25:18'),
(410, 'Mike Angelo', 'Espadilla', 'Rodriguez', 'male', 'Sec. 5 and 11 ART II of RA 9165', '2001-06-20', '2022-04-23', '2022-05-04', '2022-05-20', '2022-05-235', 3, '2022-05-20', '2022-05-20', '(Transferred to BJMP)', '2022-04-25 05:53:21', '2022-05-21 10:28:21'),
(411, 'Benedicto', 'Papuran', 'Quizol', 'male', 'Sec. 5 and 11 ART II of RA 9165', '1965-05-07', '2022-04-23', '2022-05-04', '2022-05-20', '2022-05-235', 3, '2022-05-20', '2022-05-20', '(Transferred to BJMP)', '2022-04-25 05:54:33', '2022-05-21 10:28:21'),
(412, 'Richard', 'Castillo', 'Tanega', 'male', 'Sec. 5 and 11 ART II of RA 9165', '1968-04-28', '2022-04-23', '2022-05-04', '2022-05-20', '2022-05-235', 3, '2022-05-20', '2022-05-20', '(Transferred to BJMP)', '2022-04-25 05:56:18', '2022-05-21 10:28:21'),
(413, 'Ryan', 'Dualin', 'Roquid', 'male', 'RIR Physical Injury and Damage to Property Incident', NULL, '2022-04-23', NULL, '2022-04-26', '2022-04-192', 6, '2022-04-26', '2022-04-26', 'Cash Bond', '2022-04-25 08:24:13', '2022-04-27 12:39:56'),
(414, 'Leonardo', 'Belando', 'Sanggalan Jr', 'male', 'RIR in Homicide, Multiple Physical Injuries and Damage to Properties', '1998-12-30', '2022-04-26', NULL, '2022-04-27', '2022-04-197', 3, '2022-04-27', '2022-04-27', 'Affidavit (Kasunduan)', '2022-04-27 10:15:03', '2022-04-27 12:31:26'),
(415, 'Alberto', 'Pasco', 'Cortez', 'male', 'RIR in Homicide', NULL, '2022-04-26', NULL, '2022-04-27', '2022-04-195', 3, '2022-04-27', '2022-04-27', 'Affidavit (Kasunduan)', '2022-04-27 10:40:09', '2022-04-27 10:40:09'),
(416, 'Darrell', 'Canaria', 'Bunag', 'male', 'Acts of LasCiviousness & Rape under Art. 266-A, par. (1) of the RPC (Warrant)', '1984-03-15', '2022-04-29', '2022-05-20', NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-29 11:27:04', '2022-06-12 22:15:07'),
(417, 'Gregorio', 'Guia', 'Guinto', 'male', 'RIR Homicide', NULL, '2022-04-29', NULL, '2022-05-02', '2022-05-208', 3, '2022-05-02', '2022-05-02', 'Affidavit (Kasunduan)', '2022-04-30 00:50:01', '2022-05-02 12:30:03'),
(418, 'Jose Franco', 'Faustino', 'Tabanera', 'male', 'Sec. 5 and 11 ART II of RA 9165', '1999-06-03', '2022-04-30', '2022-05-10', '2022-05-20', '2022-05-235', 3, '2022-05-20', '2022-05-20', '(Transferred to BJMP)', '2022-05-01 02:02:55', '2022-05-21 10:28:21'),
(419, 'Edwin', 'Versola', 'Dagmante', 'male', 'Sec. 5 and 11 ART II of RA 9165', '1974-10-08', '2022-04-30', '2022-05-10', '2022-05-20', '2022-05-235', 3, '2022-05-20', '2022-05-20', '(Transferred to BJMP)', '2022-05-01 02:04:07', '2022-05-21 10:28:21'),
(420, 'Jason', 'Bathan', 'Justo', 'male', 'Theft', '1987-07-16', '2022-04-30', NULL, '2022-05-06', '2022-05-212', 3, '2022-05-06', '2022-05-06', 'Cash Bond', '2022-05-01 02:05:37', '2022-05-06 07:31:39'),
(421, 'Bonifacio', 'Albarrasin', 'Chua Jr', 'male', 'Serious Physical Injury', NULL, '2022-05-01', NULL, '2022-05-05', '2022-05-211', 3, '2022-05-05', '2022-05-05', 'Dismissed', '2022-05-02 12:17:31', '2022-05-05 10:26:12'),
(422, 'Herbert', 'Gaffud', 'Amaro', 'male', 'RIR in Homicide and Multiple Damage to Properties', '2002-02-25', '2022-05-08', NULL, '2022-05-08', '2022-05-215', 3, '2022-05-08', '2022-05-08', 'Affidavit (Kasunduan)', '2022-05-08 11:07:02', '2022-05-08 11:08:35'),
(423, 'Donald Jayson', 'Credo', 'Alvaran', 'male', 'Qualified Theft through Falsification of Commercial Document (Warrant)', NULL, '2022-05-11', NULL, '2022-05-18', '2022-05-229', 6, '2022-05-18', '2022-05-18', 'Surety Bond', '2022-05-11 23:52:03', '2022-05-18 10:42:06'),
(424, 'Genimar', 'Silvano', 'Brion', 'male', 'Sec. 5 (b) of RA 7610 (Warrant)', '1981-01-12', '2022-05-12', '2022-05-20', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-12 08:06:24', '2022-06-12 22:16:40'),
(425, 'John Edrian', 'Pupa', 'Santos', 'male', 'Sec. 5 and 11 ART II of RA 9165', '1998-02-24', '2022-05-12', '2022-05-27', '2022-06-24', '2022-06-294', 3, '2022-06-24', '2022-06-24', '(Transferred to BJMP)', '2022-05-12 23:49:22', '2022-06-24 07:54:58'),
(426, 'Jerico', 'Pinol', 'Umandap', 'male', 'Sec. 5 and 11 ART II of RA 9165', '1998-03-28', '2022-05-12', '2022-05-27', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-12 23:50:56', '2022-06-12 22:14:24'),
(427, 'Francis', 'Martinez', 'Delos Santos', 'male', 'Sec. 5 and 11 ART II of RA 9165', '1994-07-25', '2022-05-12', '2022-05-27', '2022-06-24', '2022-06-294', 3, '2022-06-24', '2022-06-24', '(Transferred to BJMP)', '2022-05-12 23:52:01', '2022-06-24 07:54:50'),
(428, 'Tristan Roniel', 'Eroles', 'Pelayo', 'male', 'Rape under Art. 266-A, Par. 2 of the RPC as amended by RA 8353', '1998-08-30', '2022-05-13', '2022-05-20', '2022-06-28', '2022-06-298', 3, '2022-06-28', '2022-06-28', 'Bail Bond', '2022-05-13 10:18:37', '2022-06-28 14:11:24'),
(429, 'Nelson', 'Umali', 'Dimailig', 'male', 'Sec. 5 and 11 ART II of RA 9165', '1971-03-04', '2022-05-19', '2022-06-03', '2022-06-24', '2022-06-294', 3, '2022-06-24', '2022-06-24', '(Transferred to BJMP)', '2022-05-20 02:05:56', '2022-06-24 07:55:44'),
(430, 'John Patrick', 'Abala', 'Bustamante', 'male', 'Sec. 5 and 11 ART II of RA 9165', '1999-06-14', '2022-05-19', '2022-06-03', '2022-06-24', '2022-06-294', 3, '2022-06-24', '2022-06-24', '(Transferred to BJMP)', '2022-05-20 02:06:54', '2022-06-24 07:58:00'),
(431, 'Michael', 'Villaganas', 'Benitez', 'male', 'Homicide (RPC Art. 249)', '1998-09-15', '2022-05-19', NULL, '2022-06-20', '2022-06-283', 3, '2022-06-20', '2022-06-20', 'Surety Bond', '2022-05-20 02:08:36', '2022-06-20 22:43:59'),
(432, 'Boniclyde', 'Rosell', 'Maglinte', 'male', 'Sec. 5E (2) in Relation to 5 (i) of RA 9262', NULL, '2022-05-25', NULL, '2022-05-25', '2022-05-244', 6, '2022-05-25', '2022-05-25', 'Cash Bond', '2022-05-25 03:33:15', '2022-05-25 10:00:52'),
(433, 'Ricardo', 'Dela Vega', 'Sanje', 'male', 'Sec. 5 and 11 ART II of RA 9165', '1994-11-18', '2022-05-24', '2022-06-03', '2022-06-24', '2022-06-294', 3, '2022-06-24', '2022-06-24', '(Transferred to BJMP)', '2022-05-25 03:42:32', '2022-06-24 07:55:13'),
(434, 'Hazel', 'Trinidad', 'Navarro', 'male', 'Sec. 5 and 11 ART II of RA 9165', '1969-05-26', '2022-05-24', '2022-06-03', '2022-06-24', '2022-06-294', 3, '2022-06-24', '2022-06-24', '(Transferred to BJMP)', '2022-05-25 03:43:56', '2022-06-24 07:55:27'),
(435, 'Henry', 'Estobio', 'Del Rosario', 'male', 'Qualified Theft', '1980-07-09', '2022-05-25', NULL, '2022-05-25', '2022-05-243', 6, '2022-05-25', '2022-05-25', 'Surety Bond', '2022-05-25 09:59:08', '2022-05-31 04:10:09'),
(436, 'Michael', 'Samosa', 'Talento', 'male', 'Sec. 11 ART II of RA 9165', '1989-09-14', '2022-05-25', NULL, '2022-06-13', '2022-06-272', 3, '2022-06-13', '2022-06-13', 'Bench Warrant Lifted', '2022-05-26 01:49:36', '2022-06-13 12:03:21'),
(437, 'Keith James', 'Boco', 'Pasigan', 'male', 'Theft', '2001-05-17', '2022-05-28', NULL, '2022-06-02', '2022-06-259', 6, '2022-06-02', '2022-06-02', 'Cash Bond', '2022-05-28 16:51:36', '2022-06-02 07:46:55'),
(438, 'Roger', 'Belando', 'Avila', 'male', 'Theft', '1992-04-07', '2022-05-28', NULL, '2022-06-03', '2022-06-260', 6, '2022-06-03', '2022-06-03', 'Cash Bond', '2022-05-29 01:08:01', '2022-06-04 00:37:50'),
(439, 'Justine Michael', 'Mondejar', 'Castillo', 'male', 'Sec. 5 and 11 Art. II of RA 9165', '2001-09-19', '2022-05-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-31 15:28:02', '2022-05-31 15:28:02'),
(440, 'Jinma', NULL, 'Shan', 'male', 'Grave Threats (RPC Art. 282)', NULL, '2022-06-01', NULL, '2022-06-01', '2022-06-257', 3, '2022-06-01', '2022-06-01', 'Cash Bond', '2022-06-01 10:47:13', '2022-06-01 10:48:03'),
(441, 'Edson', NULL, 'Reyes', 'male', 'Robbery with the Use of Force Upon Things', NULL, '2022-06-08', NULL, '2022-06-08', '2022-06-264', 3, '2022-06-08', '2022-06-08', 'Surety Bond', '2022-06-08 09:46:41', '2022-06-08 09:46:41'),
(443, 'Mark Carlo', 'Pitao', 'Bernardino', 'male', 'Sec. 5 and 11 ART II of RA 9165', '1991-09-19', '2022-06-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-10 23:33:02', '2022-07-05 01:40:47'),
(444, 'Ericson', 'Castor', 'Parawan', 'male', 'Sec. 5 and 11 ART II of RA 9165', '1977-11-17', '2022-06-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-10 23:34:03', '2022-07-05 01:39:34'),
(445, 'Allan', 'Martines', 'Dela Cruz', 'male', 'Murder', '1975-12-22', '2022-06-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-10 23:36:33', '2022-07-05 01:41:54'),
(446, 'Marlette', 'Gestiada', 'Moradilla', 'female', 'Sec. 5 and 11 ART II of RA 9165', '1991-06-17', '2022-06-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-10 23:37:39', '2022-07-05 01:40:01'),
(447, 'Jonathan', 'De Dios', 'Estrellado', 'male', 'RIR in Serious Physical Injuries', '1992-06-25', '2022-06-12', NULL, '2022-06-16', '2022-06-280', 3, '2022-06-16', '2022-06-16', 'Cash Bond', '2022-06-13 12:08:16', '2022-06-16 23:35:41'),
(448, 'Joanna', 'Pablo', 'Prado', 'male', 'Violation of Makati City Ordinance No. 2003-095', NULL, '2022-06-13', NULL, '2022-06-14', '2022-06-276', 6, '2022-06-14', '2022-06-14', 'Cash Bond', '2022-06-16 23:33:09', '2022-06-16 23:33:09'),
(449, 'Emerson', 'Dulay', 'Corpuz', 'male', 'Sec. 5 and 11 ART II of RA 9165', '1997-11-26', '2022-06-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-16 23:37:58', '2022-06-16 23:37:58'),
(450, 'Glenn', 'Maruzen', 'Diwa', 'male', 'Sec. 5 and 11 ART II of RA 9165', '1995-08-30', '2022-06-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-16 23:40:10', '2022-06-16 23:40:10'),
(452, 'Oliver', 'Mondelo', 'De Sosa', 'male', 'Sec. 5 and 11 ART II of RA 9165', '1982-04-09', '2022-06-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 07:42:38', '2022-07-05 01:42:38'),
(453, 'Rommel John', 'Operina', 'Fijer', 'male', 'Sec. 5 and 11 ART II of RA 9165', '1998-06-30', '2022-06-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 07:43:31', '2022-07-05 01:43:12'),
(454, 'Anthony', NULL, 'Manabat', 'male', 'Serious Physical Injuries', NULL, '2022-06-22', NULL, '2022-06-22', '2022-06-287', 6, '2022-06-22', '2022-06-22', 'Bail Bond', '2022-06-27 13:48:24', '2022-06-27 13:50:55'),
(455, 'Charles Tristan', NULL, 'Bodota', 'male', 'Slight Physical Injuries', NULL, '2022-06-22', NULL, '2022-06-22', '2022-06-288', 6, '2022-06-22', '2022-06-22', 'Cash Bond', '2022-06-27 13:50:31', '2022-06-27 13:50:31'),
(456, 'Anthony', 'Norcio', 'Ibañez', 'male', 'Sec. 5 and 11 ART II of RA 9165', '1984-09-19', '2022-06-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-01 11:16:15', '2022-07-05 01:45:22'),
(457, 'Manuel', 'Lingad', 'Galang', 'male', 'Sec. 5 and 11 ART II of RA 9165', '1984-11-06', '2022-06-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-01 11:17:00', '2022-07-05 01:46:10'),
(458, 'Mat Santos', 'Dela Rosa', 'Conde', 'male', 'Sec. 5 and 11 ART II of RA 9165', '1993-11-01', '2022-06-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-01 11:18:12', '2022-07-05 01:43:50'),
(459, 'Jerome', 'Domasin', 'Recamadas', 'male', 'RIR in Damage to Properties', NULL, '2022-06-29', NULL, '2022-06-30', '2022-06-301', 6, '2022-06-30', '2022-06-30', 'Affidavit (Kasunduan)', '2022-07-04 01:33:33', '2022-07-04 01:33:33'),
(461, 'Joseph', 'Glova', 'Ruba', 'male', 'RIR in Damage to Property', NULL, '2022-07-04', NULL, '2022-07-04', '2022-07-311', 6, '2022-07-04', '2022-07-04', 'Bail Bond', '2022-07-05 00:58:59', '2022-07-05 00:58:59'),
(462, 'Jonel', 'Besona', 'Bealin', 'male', 'Stabbing Incident', '1975-08-06', '2022-07-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 01:10:58', '2022-07-05 01:47:46'),
(463, 'Lito', 'Togores', 'Joven', 'male', 'Sec. 5 (E2) of RA 9262 in Rel. to Sec. 7 (C) in Fur. Rel. to Sec. 5 (K) RA 8369', '1971-06-10', '2022-07-01', NULL, '2022-07-11', '2022-07-325', 3, '2022-07-11', '2022-07-11', 'Surety Bond', '2022-07-05 01:14:22', '2022-07-11 12:46:31'),
(464, 'Erwin', 'Barias', 'Solomon', 'male', 'PD 1866', NULL, '2022-07-05', NULL, '2022-07-07', '2022-07-316', 3, '2022-07-07', '2022-07-07', 'Cash Bond', '2022-07-07 07:01:46', '2022-07-07 07:01:46'),
(465, 'Menardo', 'Polloso', 'Saguisa', 'male', 'Sec. 5 and 11 ART II of RA 9165', NULL, '2022-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-09 23:42:37', '2022-07-09 23:42:37'),
(466, 'Jeff', 'Arandia', 'Dimaranan', 'male', 'Sec. 5 and 11 ART II of RA 9165', NULL, '2022-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-09 23:43:33', '2022-07-09 23:43:33'),
(467, 'Herbert', 'Lana', 'Pernada', 'male', 'Sec. 5 and 11 ART II of RA 9165', NULL, '2022-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-09 23:44:24', '2022-07-09 23:44:24'),
(468, 'Rodel', 'Flores', 'Cañaveral', 'male', 'Sec. 5 and 11 ART II of RA 9165', NULL, '2022-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-09 23:45:16', '2022-07-09 23:45:16'),
(469, 'John Jose', 'Cezar', 'Rojo', 'male', 'Sec. 4 of R.A 11313 (Safe Spaces Act)', '1993-01-22', '2022-07-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-11 12:51:04', '2022-07-11 12:51:04'),
(470, 'Jenward', 'Alcanse', 'Abdon', 'male', 'Theft', NULL, '2022-07-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-14 00:42:48', '2022-07-14 00:42:48'),
(471, 'Richmond', 'Hernandez', 'Landrito', 'male', 'Unjust Vexation', NULL, '2022-07-12', NULL, '2022-07-14', '2022-07-331', 3, '2022-07-14', '2022-07-14', 'Cash Bond', '2022-07-14 00:45:13', '2022-07-14 10:41:41'),
(472, 'Reymart', 'Cortez', 'Oblepias', 'male', 'Sec. 5 and 11 ART II of RA 9165', NULL, '2022-07-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-17 14:39:10', '2022-07-17 14:39:10'),
(473, 'Alvin', 'Macaso', 'Mia', 'male', 'Sec. 5 and 11 Art. II of RA 9165', NULL, '2022-07-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-17 14:42:18', '2022-07-17 14:42:18'),
(474, 'Rommel', 'Darao', 'Canaria', 'male', 'Qualified Theft', NULL, '2022-07-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-17 14:45:31', '2022-07-17 14:45:31'),
(475, 'Rafael', 'Yanday', 'Coraje', 'male', 'Qualified Theft', NULL, '2022-07-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-17 14:46:01', '2022-07-17 14:46:01'),
(476, 'Nobert', 'Bertis', 'Gayola', 'male', 'Qualified Theft', NULL, '2022-07-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-17 14:46:34', '2022-07-17 14:46:34');

-- --------------------------------------------------------

--
-- Table structure for table `jailers`
--

CREATE TABLE `jailers` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` int DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jailers`
--

INSERT INTO `jailers` (`id`, `name`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'PSMs Jober S Manaig', 0, '2021-10-08 13:59:34', '2022-03-23 03:29:11'),
(2, 'PSSg Hernane V Quintana', 0, '2021-10-08 13:59:34', '2022-03-23 03:29:15'),
(3, 'PSSg Percival Restrivera', 1, '2021-10-08 14:59:34', '2021-10-08 14:59:34'),
(4, 'PSSg Anderson A Videña', 0, '2021-12-06 11:48:14', '2022-04-30 00:01:01'),
(5, 'Pat. Phoebe Cajiles', 0, '2022-03-04 02:59:39', '2022-03-23 03:29:19'),
(6, 'PSSg Daniel M Toledo', 1, '2022-04-06 11:33:11', '2022-04-06 11:47:37');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
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
(15, '2021_11_15_122737_add_commitment_date_to_detainees_table', 5),
(17, '2021_12_19_071127_set_jailer_active_status', 6),
(18, '2022_02_10_055621_set_r7_invest_active_status', 7);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `r7_invest`
--

CREATE TABLE `r7_invest` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` int DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `r7_invest`
--

INSERT INTO `r7_invest` (`id`, `name`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'PCOL NOEL D NUÑEZ', 0, '2021-10-14 14:31:01', '2022-02-10 06:00:39'),
(2, 'PCOL FRANCISCO J LUCEÑA III', 1, '2022-02-10 05:45:59', '2022-02-10 05:45:59');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@pupc.com', NULL, '$2y$10$Ky2fV08DWj9a8pa8BWsrxet6mS8KoZNvgx8Xn1CShuZbmjrunAN4.', 'Z7KFXUaKheWkjI1cyiHSPIsYLYMd6LgU8lL85at12j8Cg6ztFU61DtLTbdK6', '2021-05-20 04:43:02', '2021-08-20 14:06:38'),
(2, 'PNP Ogie', 'ogie@pnp.ph', NULL, '$2y$10$SBHa6BvtO03gVaVwHTZYF.x6yp2EhS8.UC9ijPGUQm1DiQGIl01f6', '', '2021-05-20 04:43:02', '2022-06-09 02:42:03'),
(3, 'kristinabrans', 'kristinabrans@gmail.com', NULL, '$2y$10$OsqWsQb31NLObkCJsm9KGObB15i.GQxO3JsPfnVkSgmBsu6aQFjPy', NULL, '2022-07-11 21:46:58', '2022-07-11 21:46:58');

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `chief_police`
--
ALTER TABLE `chief_police`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `detainees`
--
ALTER TABLE `detainees`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=477;

--
-- AUTO_INCREMENT for table `jailers`
--
ALTER TABLE `jailers`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `r7_invest`
--
ALTER TABLE `r7_invest`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
