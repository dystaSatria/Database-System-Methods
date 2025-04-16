-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 16, 2025 at 08:47 PM
-- Server version: 11.4.5-MariaDB
-- PHP Version: 8.3.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `efotokopi_fotokopidb`
--

-- --------------------------------------------------------

--
-- Table structure for table `provinces`
--

CREATE TABLE `provinces` (
  `id` int(11) NOT NULL,
  `province_name` varchar(100) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `provinces`
--

INSERT INTO `provinces` (`id`, `province_name`, `is_active`, `created_at`) VALUES
(1, 'Adana', 1, '2025-04-08 12:29:24'),
(2, 'Adıyaman', 1, '2025-04-08 12:29:24'),
(3, 'Afyonkarahisar', 1, '2025-04-08 12:29:24'),
(4, 'Ağrı', 1, '2025-04-08 12:29:24'),
(5, 'Amasya', 1, '2025-04-08 12:29:24'),
(6, 'Ankara', 1, '2025-04-08 12:29:24'),
(7, 'Antalya', 1, '2025-04-08 12:29:24'),
(8, 'Artvin', 1, '2025-04-08 12:29:24'),
(9, 'Aydın', 1, '2025-04-08 12:29:24'),
(10, 'Balıkesir', 1, '2025-04-08 12:29:24'),
(11, 'Bilecik', 1, '2025-04-08 12:29:24'),
(12, 'Bingöl', 1, '2025-04-08 12:29:24'),
(13, 'Bitlis', 1, '2025-04-08 12:29:24'),
(14, 'Bolu', 1, '2025-04-08 12:29:24'),
(15, 'Burdur', 1, '2025-04-08 12:29:24'),
(16, 'Bursa', 1, '2025-04-08 12:29:24'),
(17, 'Çanakkale', 1, '2025-04-08 12:29:24'),
(18, 'Çankırı', 1, '2025-04-08 12:29:24'),
(19, 'Çorum', 1, '2025-04-08 12:29:24'),
(20, 'Denizli', 1, '2025-04-08 12:29:24'),
(21, 'Diyarbakır', 1, '2025-04-08 12:29:24'),
(22, 'Edirne', 1, '2025-04-08 12:29:24'),
(23, 'Elazığ', 1, '2025-04-08 12:29:24'),
(24, 'Erzincan', 1, '2025-04-08 12:29:24'),
(25, 'Erzurum', 1, '2025-04-08 12:29:24'),
(26, 'Eskişehir', 1, '2025-04-08 12:29:24'),
(27, 'Gaziantep', 1, '2025-04-08 12:29:24'),
(28, 'Giresun', 1, '2025-04-08 12:29:24'),
(29, 'Gümüşhane', 1, '2025-04-08 12:29:24'),
(30, 'Hakkari', 1, '2025-04-08 12:29:24'),
(31, 'Hatay', 1, '2025-04-08 12:29:24'),
(32, 'Isparta', 1, '2025-04-08 12:29:24'),
(33, 'Mersin(İçel)', 1, '2025-04-08 12:29:24'),
(34, 'İstanbul', 1, '2025-04-08 12:29:24'),
(35, 'İzmir', 1, '2025-04-08 12:29:24'),
(36, 'Kars', 1, '2025-04-08 12:29:24'),
(37, 'Kastamonu', 1, '2025-04-08 12:29:24'),
(38, 'Kayseri', 1, '2025-04-08 12:29:24'),
(39, 'Kırklareli', 1, '2025-04-08 12:29:24'),
(40, 'Kırşehir', 1, '2025-04-08 12:29:24'),
(41, 'Kocaeli', 1, '2025-04-08 12:29:24'),
(42, 'Konya', 1, '2025-04-08 12:29:24'),
(43, 'Kütahya', 1, '2025-04-08 12:29:24'),
(44, 'Malatya', 1, '2025-04-08 12:29:24'),
(45, 'Manisa', 1, '2025-04-08 12:29:24'),
(46, 'Kahramanmaraş', 1, '2025-04-08 12:29:24'),
(47, 'Mardin', 1, '2025-04-08 12:29:24'),
(48, 'Muğla', 1, '2025-04-08 12:29:24'),
(49, 'Muş', 1, '2025-04-08 12:29:24'),
(50, 'Nevşehir', 1, '2025-04-08 12:29:24'),
(51, 'Niğde', 1, '2025-04-08 12:29:24'),
(52, 'Ordu', 1, '2025-04-08 12:29:24'),
(53, 'Rize', 1, '2025-04-08 12:29:24'),
(54, 'Sakarya', 1, '2025-04-08 12:29:24'),
(55, 'Samsun', 1, '2025-04-08 12:29:24'),
(56, 'Siirt', 1, '2025-04-08 12:29:24'),
(57, 'Sinop', 1, '2025-04-08 12:29:24'),
(58, 'Sivas', 1, '2025-04-08 12:29:24'),
(59, 'Tekirdağ', 1, '2025-04-08 12:29:24'),
(60, 'Tokat', 1, '2025-04-08 12:29:24'),
(61, 'Trabzon', 1, '2025-04-08 12:29:24'),
(62, 'Tunceli', 1, '2025-04-08 12:29:24'),
(63, 'Şanlıurfa', 1, '2025-04-08 12:29:24'),
(64, 'Uşak', 1, '2025-04-08 12:29:24'),
(65, 'Van', 1, '2025-04-08 12:29:24'),
(66, 'Yozgat', 1, '2025-04-08 12:29:24'),
(67, 'Zonguldak', 1, '2025-04-08 12:29:24'),
(68, 'Aksaray', 1, '2025-04-08 12:29:24'),
(69, 'Bayburt', 1, '2025-04-08 12:29:24'),
(70, 'Karaman', 1, '2025-04-08 12:29:24'),
(71, 'Kırıkkale', 1, '2025-04-08 12:29:24'),
(72, 'Batman', 1, '2025-04-08 12:29:24'),
(73, 'Şırnak', 1, '2025-04-08 12:29:24'),
(74, 'Bartın', 1, '2025-04-08 12:29:24'),
(75, 'Ardahan', 1, '2025-04-08 12:29:24'),
(76, 'Iğdır', 1, '2025-04-08 12:29:24'),
(77, 'Yalova', 1, '2025-04-08 12:29:24'),
(78, 'Karabük', 1, '2025-04-08 12:29:24'),
(79, 'Kilis', 1, '2025-04-08 12:29:24'),
(80, 'Osmaniye', 1, '2025-04-08 12:29:24'),
(81, 'Düzce', 1, '2025-04-08 12:29:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `provinces`
--
ALTER TABLE `provinces`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
