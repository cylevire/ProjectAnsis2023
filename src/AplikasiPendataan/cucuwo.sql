-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2023 at 03:25 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cucuwo`
--

-- --------------------------------------------------------

--
-- Table structure for table `entri`
--

CREATE TABLE `entri` (
  `id` int(15) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `telp` varchar(15) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `email` varchar(30) NOT NULL,
  `tgl` date NOT NULL,
  `area` varchar(10) NOT NULL,
  `paket` varchar(15) NOT NULL,
  `total` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `entri`
--

INSERT INTO `entri` (`id`, `nama`, `telp`, `alamat`, `email`, `tgl`, `area`, `paket`, `total`) VALUES
(1, 'Siti Nurfaira Novelia', '083819794563', 'Jl. Kebon Pala No.5 Bogor Tengah', 'nurfairanvl@gmail.com', '2023-12-30', '1', '2', 725000),
(2, 'Muhammad Al Ghiffari Firdaus', '08951234345', 'Jl. Kapten Muslihat Gang Sukma No.92 Bogor Selatan', 'algi@gmail.com', '2025-01-25', '2', '1', 1000000),
(3, 'Ahmad Ali Azmi', '08124563235', 'Jl. Mawar No. 32 Jakarta Pusat', 'ali27@gmail.com', '2025-02-03', '2', '3', 1225000);

-- --------------------------------------------------------

--
-- Table structure for table `loginuser`
--

CREATE TABLE `loginuser` (
  `id` int(2) NOT NULL,
  `user` varchar(15) NOT NULL,
  `pass` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loginuser`
--

INSERT INTO `loginuser` (`id`, `user`, `pass`) VALUES
(1, 'cucu', 'bonpal');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `entri`
--
ALTER TABLE `entri`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loginuser`
--
ALTER TABLE `loginuser`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `entri`
--
ALTER TABLE `entri`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `loginuser`
--
ALTER TABLE `loginuser`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
