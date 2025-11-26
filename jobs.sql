-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2025 at 05:47 PM
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
-- Database: `jobs`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(256) NOT NULL,
  `email` varchar(150) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `email`, `created_at`) VALUES
(1, 'admin', '240be518fabd2724ddb6f04eeb1da5967448d7e831c08c8fa822809f74c720a9', 'admin@example.com', '2025-11-24 12:42:09');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(11) NOT NULL,
  `jobtype` varchar(100) NOT NULL,
  `title` varchar(255) NOT NULL,
  `department` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `qualification` varchar(255) DEFAULT NULL,
  `salary` varchar(100) DEFAULT NULL,
  `apply_link` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `jobtype`, `title`, `department`, `description`, `location`, `qualification`, `salary`, `apply_link`, `created_at`, `updated_at`, `image`) VALUES
(1, 'TN Govt Jobs', 'ghvjgbh', 'tgytgygyyu', '', '6yghgtbhbh', 'yubhuybg', '12345', NULL, '2025-11-10 13:47:39', '2025-11-10 13:47:39', ''),
(2, 'Central Govt Jobs', 'fececefcecef', 'fcedfcxdcfcfc', '', 'chennai', 'be', '100000-200000', NULL, '2025-11-16 13:42:04', '2025-11-16 13:42:04', ''),
(3, 'TNPSC Jobs', 'sdjnfksjdd', 'sdklmfclskdmf', '', 'madurai', 'mba', '200000-300000', NULL, '2025-11-16 13:46:19', '2025-11-16 13:46:19', ''),
(4, 'Bank Jobs', 'jnfjsdfsjd', 'djnfcsdkckd', '', 'bangalore', 'ba', '300000-500000', NULL, '2025-11-16 13:47:07', '2025-11-16 13:47:07', ''),
(5, 'Railway Jobs', 'hfdbjhdbsvjdsfv', 'ncjdnscnsdhc', '', 'salem', 'computer science', '70000-600000', NULL, '2025-11-16 13:49:07', '2025-11-16 13:49:07', ''),
(6, 'Private Jobs', 'fdjvfdvdfv', 'skjfvkfdjvmkjdfv', 'fgbfgbfgb gfbfgbfgbfgbfgbfgb', 'ydfhdhefdv', 'ujvdcjdknv', '400000-700000', NULL, '2025-11-16 13:49:51', '2025-11-16 14:02:04', ''),
(8, 'Private Jobs', 'IT software', 'Computer science', 'fvnjkdnvfemnvermvjvj ncienvcenvdv', 'Chennai', 'B.E', '100000-300000', NULL, '2025-11-19 18:00:20', '2025-11-19 18:01:25', NULL),
(9, 'TN Govt Jobs', 'dfvfgdvvfvgv', 'fdvfdfcef', 'fvcdfcfdcdf', 'fcscxrfe', 'fvcfdcerc', '10000-20000', NULL, '2025-11-19 18:03:57', '2025-11-19 18:03:57', 'default.png'),
(10, 'Bank Jobs', 'dfuyhcnedncf', 'uydfhchjfdc', 'jjehc ejcn ', 'nhfdnv cjdfnvjdfv', 'fncvnc vdf', '10300', NULL, '2025-11-19 18:08:07', '2025-11-19 18:08:07', 'default.png'),
(11, 'Railway Jobs', 'afnuhefc', 'sncfdsjf', 'ndjsnfjsdncfjksdcf ', 'decnfsfnc', 'dsjfn s', '10000-29999', NULL, '2025-11-19 18:16:32', '2025-11-19 18:18:09', '1763576289_e987b3a59f696f3cd9db.jpg'),
(12, 'TN Govt Jobs', 'testin', 'dfdfvfdvgffdcv', 'jfcmfiermciueuericjierujcm rencierjcierjmciuemciuermcuiemrciemrc', 'emjcemcejfmckje', 'edc,efc', '100000-200000', 'https://manhwatop.com/', '2025-11-25 16:11:59', '2025-11-25 16:11:59', '1764087119_7154e6ed3d940a354b18.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
