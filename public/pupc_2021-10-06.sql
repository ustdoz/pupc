-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2021 at 07:14 PM
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
  `birth_date` date DEFAULT NULL,
  `detained_date` date DEFAULT NULL,
  `released_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `detainees`
--

INSERT INTO `detainees` (`id`, `first_name`, `middle_name`, `last_name`, `birth_date`, `detained_date`, `released_date`, `created_at`, `updated_at`) VALUES
(1, 'Chuck', 'Osmeña', 'Lagumbay', '1990-07-07', '2020-09-26', NULL, '2021-05-24 20:07:45', '2021-05-31 03:34:32'),
(2, 'Jun', 'Lanceta', 'Marcilla', '1980-06-20', '2020-03-09', NULL, '2021-05-25 06:16:45', '2021-05-25 18:22:05'),
(3, 'Jaymar', 'Castro', 'Gerona', '2001-11-30', '2020-07-07', NULL, '2021-05-25 06:18:00', '2021-05-26 02:59:17'),
(4, 'Marvin', 'Besin', 'Dalut', NULL, '2020-08-15', NULL, '2021-05-25 15:13:13', '2021-10-05 16:50:03'),
(5, 'Francisco', 'Martinez', 'Almendras', '1969-10-10', '2020-09-10', NULL, '2021-05-26 05:48:32', '2021-05-26 05:48:32'),
(6, 'Paolo', 'Kasilag', 'Diago', NULL, '2020-12-09', '2021-05-19', '2021-05-26 05:51:00', '2021-05-26 06:26:38'),
(7, 'Ariel', 'Levardo', 'Maala', NULL, '2020-12-18', NULL, '2021-05-26 05:51:42', '2021-10-05 16:51:42'),
(8, 'Isagani', 'Altarez', 'Cambronero Jr.', '1984-09-06', '2020-12-20', '2021-06-10', '2021-05-26 05:53:31', '2021-06-12 02:07:21'),
(9, 'Jerry', 'Datwin', 'Manubay', '1975-04-17', '2021-02-24', '2021-06-04', '2021-05-26 05:54:47', '2021-06-09 17:47:13'),
(10, 'Laurence', 'Perez', 'Garcia', NULL, '2021-03-07', NULL, '2021-05-26 05:57:29', '2021-10-05 16:51:04'),
(11, 'John Von', NULL, 'Cortes', NULL, '2021-03-15', '2021-05-19', '2021-05-26 05:57:48', '2021-05-27 02:10:26'),
(12, 'Mark Hill', NULL, 'Galonga', NULL, '2021-03-03', '2021-05-19', '2021-05-26 05:58:45', '2021-05-27 02:10:48'),
(13, 'Icasiano', NULL, 'Ancero', NULL, '2021-03-24', '2021-05-19', '2021-05-26 05:59:13', '2021-05-27 02:09:41'),
(14, 'Reynold', NULL, 'Javines', NULL, '2021-03-27', '2021-05-19', '2021-05-26 06:00:39', '2021-05-27 02:12:33'),
(15, 'Michael', NULL, 'Tenedero', NULL, '2021-03-26', '2021-05-08', '2021-05-26 06:01:02', '2021-05-27 02:14:02'),
(16, 'Ferry', NULL, 'Cristo', NULL, '2021-04-09', '2021-06-10', '2021-05-26 06:01:12', '2021-06-12 02:07:36'),
(17, 'Michael', NULL, 'Dequilla', NULL, '2021-04-15', '2021-05-19', '2021-05-26 06:01:30', '2021-05-27 02:25:07'),
(18, 'Narciso', 'Sta. Barbara', 'Levantino', NULL, '2021-04-20', '2021-06-10', '2021-05-26 06:01:51', '2021-06-12 02:07:50'),
(19, 'Joey', NULL, 'Casintahan', NULL, '2021-04-22', '2021-05-19', '2021-05-26 06:02:08', '2021-05-27 02:24:07'),
(20, 'Sandy', NULL, 'Cabigan', NULL, '2021-04-25', '2021-05-03', '2021-05-26 06:02:25', '2021-05-26 06:36:10'),
(21, 'Mervin', NULL, 'Diaz', NULL, '2021-04-25', '2021-05-03', '2021-05-26 06:02:37', '2021-05-26 06:36:49'),
(22, 'Raydan', NULL, 'Cortez', NULL, '2021-04-30', '2021-05-19', '2021-05-26 06:02:47', '2021-05-26 09:46:35'),
(23, 'Darwin', NULL, 'Dialola', NULL, '2021-05-04', '2021-05-19', '2021-05-26 06:05:53', '2021-05-27 02:25:43'),
(24, 'Samuel', NULL, 'Manlangit', NULL, '2021-05-04', '2021-05-19', '2021-05-26 06:08:43', '2021-05-27 02:23:00'),
(25, 'Alberto', NULL, 'Macalintal', '1992-12-16', '2021-05-06', '2021-05-26', '2021-05-26 06:10:11', '2021-05-27 02:41:21'),
(26, 'Stefanie', NULL, 'Macaspac', NULL, '2021-04-29', '2021-05-06', '2021-05-26 06:11:11', '2021-05-27 02:26:15'),
(27, 'Zenaida', NULL, 'Pa Dero', NULL, '2021-04-29', '2021-05-06', '2021-05-26 06:13:57', '2021-05-27 02:26:32'),
(28, 'Jenibeth', NULL, 'Padilla', NULL, '2021-04-29', '2021-05-06', '2021-05-26 06:14:46', '2021-05-27 02:26:54'),
(29, 'Henry Roy', NULL, 'Deo', '1989-06-12', '2021-05-10', '2021-06-10', '2021-05-26 06:17:12', '2021-06-12 02:08:09'),
(30, 'Dan J.b Ron', NULL, 'Avila', NULL, '2021-05-11', '2021-05-18', '2021-05-26 06:19:33', '2021-05-26 06:25:42'),
(31, 'John Freddierick', NULL, 'Balboa', NULL, '2021-05-11', '2021-05-18', '2021-05-26 06:21:47', '2021-05-26 06:26:00'),
(32, 'Alberto', 'Panganiban', 'Alfonso', '1967-05-23', '2021-05-13', '2021-06-10', '2021-05-26 06:22:51', '2021-06-12 02:09:04'),
(33, 'Eduardo', NULL, 'Valenzuela Jr', NULL, '2021-05-14', '2021-06-10', '2021-05-26 06:24:02', '2021-06-12 02:09:21'),
(34, 'Ruben', 'Udtuhan', 'Gio', '1974-02-24', '2021-05-16', NULL, '2021-05-26 06:25:01', '2021-10-05 16:51:24'),
(35, 'Paulo', NULL, 'Samson', '1994-08-21', '2021-05-19', '2021-06-10', '2021-05-26 06:31:11', '2021-06-12 02:09:34'),
(36, 'Nolasco', 'Dearoz', 'Cabaylo', '1967-01-31', '2021-05-20', '2021-06-10', '2021-05-26 06:32:21', '2021-06-12 02:09:47'),
(37, 'Jefferson', 'Vicencio', 'Natanauan', '1982-07-04', '2021-05-20', '2021-06-10', '2021-05-26 06:33:46', '2021-06-12 02:10:01'),
(38, 'Vizmark', NULL, 'Del Monte', '1998-12-22', '2021-05-26', '2021-07-07', '2021-05-27 02:46:32', '2021-07-09 14:38:03'),
(39, 'Ramiro', NULL, 'Paglinawan', '1968-05-18', '2021-05-26', '2021-07-07', '2021-05-27 02:47:34', '2021-07-09 14:38:17'),
(40, 'Michelle', 'Dela Masa', 'Tiballa', NULL, '2021-01-22', NULL, '2021-05-31 03:14:55', '2021-10-05 16:52:33'),
(41, 'Apple Mae', NULL, 'Masicampo', NULL, '2021-02-22', '2021-07-01', '2021-05-31 03:15:42', '2021-07-02 05:24:47'),
(42, 'Kier Angel Man', NULL, 'Pagne', NULL, '2021-05-26', '2021-05-27', '2021-05-31 03:16:42', '2021-05-31 03:17:32'),
(43, 'Renato', NULL, 'Popes', NULL, '2021-05-27', '2021-07-07', '2021-05-31 03:18:15', '2021-07-09 14:39:18'),
(44, 'Abigael', 'Lee', 'Lagrata', NULL, '2021-02-24', NULL, '2021-05-31 03:19:11', '2021-10-05 16:51:32'),
(45, 'Jessie', NULL, 'Delos Reyes', '1995-11-28', '2021-05-31', '2021-06-10', '2021-05-31 06:55:41', '2021-06-12 02:24:02'),
(46, 'Jeffrey', NULL, 'Trapalgar', '2001-01-05', '2021-05-31', '2021-06-10', '2021-05-31 06:57:01', '2021-06-12 02:22:51'),
(47, 'John Paolo', NULL, 'Alcantara', '1998-09-30', '2021-05-31', '2021-06-10', '2021-05-31 06:57:45', '2021-06-12 02:23:21'),
(48, 'Noel', NULL, 'Martillano', NULL, '2021-06-03', '2021-07-07', '2021-06-09 18:10:53', '2021-07-09 14:40:27'),
(49, 'Felipe', NULL, 'Jamon', NULL, '2021-06-07', '2021-07-02', '2021-06-09 18:11:14', '2021-07-02 05:34:14'),
(50, 'Jeric', NULL, 'Cabarles', NULL, '2021-06-09', '2021-06-21', '2021-06-09 18:11:41', '2021-07-02 05:24:10'),
(51, 'Wenceslao', NULL, 'Gallardo', NULL, '2021-06-04', '2021-06-07', '2021-06-09 18:12:16', '2021-06-09 18:12:16'),
(52, 'Elecito', NULL, 'Rabino', NULL, '2021-06-01', '2021-07-07', '2021-06-12 02:14:19', '2021-07-09 14:39:27'),
(53, 'Andrei', NULL, 'Espinar', NULL, '2021-06-01', '2021-07-07', '2021-06-12 02:14:48', '2021-07-09 14:39:52'),
(54, 'Ronaldo', NULL, 'Sosmeña', NULL, '2021-06-08', '2021-07-07', '2021-06-12 02:16:16', '2021-07-09 14:40:44'),
(55, 'Dennis', NULL, 'Vargas', NULL, '2021-06-11', '2021-07-07', '2021-06-12 02:24:41', '2021-07-09 14:41:21'),
(56, 'Allan', NULL, 'Gonzales', NULL, '2021-06-11', '2021-07-07', '2021-06-12 02:25:08', '2021-07-09 14:41:32'),
(57, 'Avelito', 'Quilao', 'Levardo', '1994-08-12', '2021-06-11', '2021-07-07', '2021-06-12 02:25:30', '2021-07-09 14:41:42'),
(58, 'Lolita', 'Daaco', 'Javier', NULL, '2021-06-11', '2021-06-15', '2021-06-12 02:26:03', '2021-06-17 04:35:00'),
(59, 'Alfred', 'Vargas', 'Almeda', NULL, '2021-06-15', '2021-06-16', '2021-06-17 07:03:10', '2021-06-17 07:03:10'),
(60, 'Lionel', 'Ramirez', 'Resnera', NULL, '2021-06-17', '2021-07-07', '2021-06-20 01:28:55', '2021-07-09 14:42:34'),
(61, 'Jersey Boy', NULL, 'Merquinez', NULL, '2021-06-20', '2021-07-07', '2021-07-01 21:56:29', '2021-07-09 14:42:44'),
(62, 'Jeffrey', 'Castillo', 'Sarabia', '1989-08-23', '2021-06-22', '2021-06-24', '2021-07-02 05:13:58', '2021-07-02 05:13:58'),
(63, 'Ferlino', NULL, 'Acbay', '1992-10-09', '2021-06-24', '2021-08-09', '2021-07-02 05:15:05', '2021-10-05 15:45:33'),
(64, 'Andro', 'Calayo', 'Mira', '1986-11-30', '2021-06-25', '2021-07-08', '2021-07-02 05:18:49', '2021-07-09 14:37:45'),
(65, 'Winifredo', NULL, 'Lende', '1968-03-22', '2021-06-28', '2021-07-07', '2021-07-02 05:20:02', '2021-07-09 14:42:54'),
(66, 'Darwin', NULL, 'Cañete', '1996-01-02', '2021-06-29', '2021-08-09', '2021-07-02 05:21:11', '2021-10-05 15:49:06'),
(67, 'Alex', NULL, 'Palaña', '1998-01-16', '2021-06-30', '2021-08-09', '2021-07-02 05:22:13', '2021-10-05 15:53:23'),
(68, 'Noel', NULL, 'Palaña', '1988-12-05', '2021-06-30', '2021-08-09', '2021-07-02 05:22:58', '2021-10-05 15:53:29'),
(69, 'John Angelo', 'Lagunzad', 'Manginao', '2021-07-01', '2021-06-30', '2021-06-30', '2021-07-06 16:51:31', '2021-07-06 16:51:31'),
(70, 'Marlon', NULL, 'Santos', NULL, '2021-06-30', '2021-06-30', '2021-07-09 13:53:19', '2021-07-09 13:53:19'),
(71, 'Mark Angelo', NULL, 'Manginaon', NULL, '2021-07-06', '2021-07-06', '2021-07-09 14:33:20', '2021-07-09 14:43:14'),
(72, 'Agusto', NULL, 'Rebamba', NULL, '2021-07-06', '2021-07-13', '2021-07-09 14:33:41', '2021-07-13 13:50:32'),
(73, 'Joel', NULL, 'Millagracia', NULL, '2021-07-06', '2021-07-13', '2021-07-09 14:34:06', '2021-07-13 13:50:13'),
(74, 'Robert', NULL, 'Imperial', NULL, '2021-07-06', '2021-08-09', '2021-07-09 14:34:29', '2021-10-05 15:51:46'),
(75, 'Diosdado', NULL, 'Veraces', NULL, '2021-07-06', '2021-08-09', '2021-07-09 14:34:49', '2021-10-05 15:56:50'),
(76, 'John Ralph', NULL, 'Lanuza', NULL, '2021-07-07', '2021-07-07', '2021-07-09 14:35:10', '2021-07-09 14:37:04'),
(77, 'Sergio', NULL, 'Panganiban', NULL, '2021-07-07', '2021-07-07', '2021-07-09 14:35:28', '2021-07-09 14:37:16'),
(78, 'Jessie', NULL, 'Forgalidad', NULL, '2021-07-08', '2021-08-09', '2021-07-09 14:35:58', '2021-10-05 15:51:28'),
(79, 'Alexander', NULL, 'Amaro', NULL, '2021-07-08', '2021-08-09', '2021-07-09 14:36:18', '2021-10-05 15:47:41'),
(80, 'Michael', NULL, 'Delos Santos', '1984-07-06', '2021-07-03', '2021-07-14', '2021-07-11 14:37:38', '2021-07-14 08:18:35'),
(81, 'Artemio', 'Biliran', 'Sauquillo', '1987-09-24', '2021-07-13', '2021-08-09', '2021-07-13 13:51:24', '2021-10-05 15:54:54'),
(82, 'Rhea Camille', 'Niez', 'Catunhay', '1992-09-11', '2021-07-13', NULL, '2021-07-13 13:51:59', '2021-10-05 16:49:50'),
(83, 'Alexander', NULL, 'Ferrer', NULL, '2021-07-13', '2021-08-09', '2021-07-13 16:56:46', '2021-10-05 16:16:43'),
(84, 'Cris', NULL, 'Villareal', NULL, '2021-07-13', '2021-08-09', '2021-07-13 16:57:30', '2021-10-05 15:56:56'),
(85, 'Joan Pauline', 'Castanares', 'Florez', NULL, '2021-07-13', NULL, '2021-07-13 16:59:22', '2021-10-05 16:50:54'),
(86, 'Janet', NULL, 'Aluciman', '1974-03-21', '2021-07-17', '2021-07-22', '2021-07-19 19:00:34', '2021-07-22 23:42:12'),
(87, 'Reynan', 'Barca', 'Alvarado', '1989-05-06', '2021-07-14', NULL, '2021-07-19 19:01:45', '2021-10-05 16:48:53'),
(88, 'John Robert', 'Rosales', 'Aying', NULL, '2021-07-16', '2021-07-16', '2021-07-19 19:02:39', '2021-07-19 19:06:53'),
(89, 'Jayson', 'Roncal', 'Jamer', NULL, '2021-07-22', NULL, '2021-07-22 23:40:15', '2021-07-22 23:40:15'),
(90, 'Maria Theresa', 'Ocampo', 'Miranda', NULL, '2021-07-22', NULL, '2021-07-22 23:41:14', '2021-07-22 23:41:14'),
(91, 'Malo', 'Sayuman', 'Malabanan', NULL, '2021-07-20', '2021-09-20', '2021-07-22 23:41:40', '2021-10-05 16:48:39'),
(92, 'Richard', 'Dias', 'Oracion', '1982-06-29', '2021-07-24', NULL, '2021-07-24 21:22:57', '2021-07-24 21:22:57'),
(93, 'Jose', 'Bacig', 'Carpina', '1958-06-19', '2021-07-25', '2021-07-26', '2021-07-25 14:46:04', '2021-07-26 08:08:05'),
(94, 'Dennis', 'Amorin', 'Sarmiento', '1995-02-12', '2021-07-27', NULL, '2021-07-30 17:01:10', '2021-07-30 17:01:10'),
(95, 'Richard', 'Torres', 'Panciles', '1979-01-26', '2021-08-31', '2021-09-27', '2021-07-30 17:02:16', '2021-10-05 16:54:04'),
(96, 'Aira', NULL, 'Sales', NULL, '2021-07-29', '2021-08-25', '2021-07-30 17:03:06', '2021-10-05 15:53:53'),
(97, 'Annaliza', 'Torres', 'Panciles', NULL, '2021-08-31', '2021-09-27', '2021-07-30 17:04:13', '2021-10-05 16:54:10'),
(98, 'Carlo', NULL, 'Almendras', NULL, '2021-08-08', '2021-08-10', '2021-10-05 15:04:17', '2021-10-05 15:04:17'),
(99, 'Ezekiel', 'Onella', 'Bautista', NULL, '2021-08-28', NULL, '2021-10-05 15:05:34', '2021-10-05 15:05:43'),
(100, 'Marlon', NULL, 'Burgos', NULL, '2021-08-08', '2021-08-10', '2021-10-05 15:06:29', '2021-10-05 15:06:29'),
(101, 'Elmer', NULL, 'Cacatihan', NULL, '2021-08-08', '2021-08-10', '2021-10-05 15:07:13', '2021-10-05 15:07:13'),
(102, 'Eduardo', 'Catapang', 'Catibog', NULL, '2021-08-10', NULL, '2021-10-05 15:09:00', '2021-10-05 16:49:10'),
(103, 'Jonnel', 'Peneda', 'Cerdeña', NULL, '2021-08-07', NULL, '2021-10-05 15:09:40', '2021-10-05 15:09:40'),
(104, 'Mark', 'Llanto', 'Cortez', NULL, '2021-08-08', '2021-08-10', '2021-10-05 15:11:12', '2021-10-05 15:30:45'),
(105, 'Samuel', NULL, 'Dagonon', NULL, '2021-08-12', '2021-08-13', '2021-10-05 15:11:53', '2021-10-05 15:11:53'),
(106, 'Gaudencio', 'Esteves', 'David', NULL, '2021-08-20', '2021-08-24', '2021-10-05 15:13:17', '2021-10-05 15:13:17'),
(107, 'Melvin', NULL, 'Emia', NULL, '2021-08-08', '2021-08-10', '2021-10-05 15:14:00', '2021-10-05 15:14:00'),
(108, 'Rey', 'Manrique', 'Fernandez', NULL, '2021-08-09', '2021-08-12', '2021-10-05 15:14:39', '2021-10-05 15:14:39'),
(109, 'Larry', NULL, 'Javier', NULL, '2021-08-08', '2021-08-10', '2021-10-05 15:15:16', '2021-10-05 15:15:16'),
(110, 'Christopher', 'Vasquez', 'Ladica', NULL, '2021-08-21', NULL, '2021-10-05 15:16:11', '2021-10-05 16:42:19'),
(111, 'Leonardo', NULL, 'Loyola', NULL, '2021-08-08', '2021-08-10', '2021-10-05 15:16:41', '2021-10-05 15:16:41'),
(112, 'Rossano', 'Villeza', 'Macha', NULL, '2021-08-29', NULL, '2021-10-05 15:17:25', '2021-10-05 15:19:17'),
(113, 'Gilbert', 'Padre', 'Manzano', NULL, '2021-08-05', NULL, '2021-10-05 15:17:56', '2021-10-05 15:17:56'),
(114, 'Roldan', 'Abellana', 'Maypa', NULL, '2021-08-02', NULL, '2021-10-05 15:18:41', '2021-10-05 15:18:41'),
(115, 'Nelvin', 'Mendoza', 'Cipriano', NULL, '2021-08-27', NULL, '2021-10-05 15:20:05', '2021-10-05 15:20:05'),
(116, 'Guillermo', 'Panopio', 'Miranda', NULL, '2021-08-10', NULL, '2021-10-05 15:21:03', '2021-10-05 16:52:01'),
(117, 'Sanny', 'Maala', 'Naz', NULL, '2021-08-10', NULL, '2021-10-05 15:21:27', '2021-10-05 16:52:13'),
(118, 'Joel', 'Mendoza', 'Paulin', NULL, '2021-08-27', NULL, '2021-10-05 15:33:02', '2021-10-05 15:33:02'),
(119, 'Mark Anthony', 'Serenio', 'Rodriguez', NULL, '2021-08-27', '2021-08-25', '2021-10-05 15:35:39', '2021-10-05 15:35:39'),
(120, 'Warren', 'Villanueva', 'Solmoro', NULL, '2021-08-22', '2021-08-22', '2021-10-05 15:37:40', '2021-10-05 15:37:40'),
(121, 'Rex Slander', NULL, 'Tolentino', NULL, '2021-08-08', '2021-08-10', '2021-10-05 15:40:03', '2021-10-05 15:40:03'),
(122, 'Aljhen', 'Umali', 'Torres', NULL, '2021-08-31', '2021-09-03', '2021-10-05 15:40:46', '2021-10-05 16:56:08'),
(123, 'Jhen Adrei', 'Umali', 'Torres', NULL, '2021-08-31', '2021-09-03', '2021-10-05 15:41:21', '2021-10-05 16:56:13'),
(124, 'Robert', 'Dalupe', 'Tupas', NULL, '2021-08-18', NULL, '2021-10-05 15:41:53', '2021-10-05 15:41:53'),
(125, 'Romar', NULL, 'Umandap', NULL, '2021-08-08', '2021-08-10', '2021-10-05 15:42:24', '2021-10-05 15:42:48'),
(126, 'Feliciano', 'Joson', 'Aranda', NULL, '2021-09-07', '2021-09-10', '2021-10-05 16:27:12', '2021-10-05 16:45:55'),
(127, 'Jeffrey', 'Joson', 'Aranda', NULL, '2021-09-07', '2021-09-10', '2021-10-05 16:27:33', '2021-10-05 16:46:00'),
(128, 'Jonathan', 'Rodorocio', 'Arches', NULL, '2021-09-09', NULL, '2021-10-05 16:28:04', '2021-10-05 16:28:04'),
(129, 'Julius', 'Padilla', 'Bibay', NULL, '2021-09-05', '2021-09-05', '2021-10-05 16:28:37', '2021-10-05 16:46:22'),
(130, 'Elmer', 'Alfaro', 'Cabrera', NULL, '2021-09-02', '2021-09-06', '2021-10-05 16:29:05', '2021-10-05 16:46:45'),
(131, 'Jose Ariel', 'Madoro', 'Camacho Jr.', NULL, '2021-09-07', '2021-09-10', '2021-10-05 16:29:47', '2021-10-05 16:47:24'),
(132, 'Robert', 'Catulong', 'Cerdeña', NULL, '2021-09-27', NULL, '2021-10-05 16:30:34', '2021-10-05 16:30:34'),
(133, 'Ricky', 'Levardo', 'Corpin', NULL, '2021-09-28', NULL, '2021-10-05 16:31:08', '2021-10-05 16:31:08'),
(134, 'Kerveen', 'Cabral', 'Dorado', NULL, '2021-09-30', NULL, '2021-10-05 16:31:49', '2021-10-05 16:31:49'),
(135, 'Jovan', 'Sarmiento', 'Gabelo', NULL, '2021-09-17', NULL, '2021-10-05 16:32:12', '2021-10-05 16:32:12'),
(136, 'Christian', 'Cruz', 'Guttierez', NULL, '2021-09-14', NULL, '2021-10-05 16:32:41', '2021-10-05 16:32:41'),
(137, 'Edmar', 'Amparo', 'Hernandez', NULL, '2021-09-24', '2021-09-30', '2021-10-05 16:33:29', '2021-10-05 16:47:48'),
(138, 'Norman', 'Ronero', 'Magat', NULL, '2021-09-07', '2021-09-10', '2021-10-05 16:33:50', '2021-10-05 16:48:08'),
(139, 'Ronald', 'Inicencio', 'Maglaya', NULL, '2021-09-10', NULL, '2021-10-05 16:34:24', '2021-10-05 16:34:24'),
(140, 'Carfil', 'Aranda', 'Memije', NULL, '2021-09-07', '2021-09-10', '2021-10-05 16:35:29', '2021-10-05 16:53:40'),
(141, 'Roelito', 'Durumpili', 'Montre', NULL, '2021-09-29', NULL, '2021-10-05 16:35:55', '2021-10-05 16:35:55'),
(142, 'Wilnor', 'Aves', 'Peñales', NULL, '2021-09-07', '2021-09-10', '2021-10-05 16:36:27', '2021-10-05 16:54:34'),
(143, 'Letty', 'Tan', 'Polillo', NULL, '2021-09-30', NULL, '2021-10-05 16:36:53', '2021-10-05 16:36:53'),
(144, 'Conrado', 'Malaiba', 'Realon', NULL, '2021-09-09', '2021-09-09', '2021-10-05 16:37:26', '2021-10-05 16:55:08'),
(145, 'Victorio', 'Lirios', 'Vargas', NULL, '2021-09-28', NULL, '2021-10-05 16:37:54', '2021-10-05 16:37:54'),
(146, 'Froilan', 'Frondo', 'Zulueta', NULL, '2021-09-14', NULL, '2021-10-05 16:38:31', '2021-10-05 16:38:31'),
(147, 'Mian', 'Toledo', 'Sevilla', NULL, '2021-09-07', '2021-09-10', '2021-10-05 16:43:55', '2021-10-05 16:55:28'),
(148, 'Marcos', 'Macaraeg', 'Toledo', NULL, '2021-09-09', '2021-09-09', '2021-10-05 16:44:40', '2021-10-05 16:55:44'),
(149, 'Severino', NULL, 'Ang', NULL, '2021-10-03', NULL, '2021-10-05 16:58:28', '2021-10-05 16:58:28'),
(150, 'Lito', 'Lopez', 'Purificacion', NULL, '2021-10-04', NULL, '2021-10-05 16:58:59', '2021-10-05 16:58:59');

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
(5, '2021_05_20_231022_create_detainees_table', 2);

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
(1, 'Admin', 'admin@pupc.com', NULL, '$2y$10$Ky2fV08DWj9a8pa8BWsrxet6mS8KoZNvgx8Xn1CShuZbmjrunAN4.', 'P3l10sxbLkeDUnIdJaeyfLUFw18xreYCBAdOUWQEbqPJHYJqMUbZupBIT5fC', '2021-05-20 04:43:02', '2021-08-20 14:06:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detainees`
--
ALTER TABLE `detainees`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
