-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2018 at 03:59 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_data_ajax`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_kabupaten`
--

CREATE TABLE `data_kabupaten` (
  `id_kabupaten` int(11) NOT NULL,
  `nama_kabupaten` varchar(200) NOT NULL,
  `id_provinsi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_kabupaten`
--

INSERT INTO `data_kabupaten` (`id_kabupaten`, `nama_kabupaten`, `id_provinsi`) VALUES
(7, 'Gianyar', 1),
(8, 'Badung', 1),
(9, 'Bantul', 2),
(10, 'Sleman', 2);

-- --------------------------------------------------------

--
-- Table structure for table `data_kecamatan`
--

CREATE TABLE `data_kecamatan` (
  `id_kecamatan` int(11) NOT NULL,
  `nama_kecamatan` varchar(200) NOT NULL,
  `id_kabupaten` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_kecamatan`
--

INSERT INTO `data_kecamatan` (`id_kecamatan`, `nama_kecamatan`, `id_kabupaten`) VALUES
(2, 'Blahbatuh', 7),
(3, 'Kuta', 8),
(4, 'Bantul', 9),
(5, 'Berbah', 10);

-- --------------------------------------------------------

--
-- Table structure for table `data_provinsi`
--

CREATE TABLE `data_provinsi` (
  `id_provinsi` int(11) NOT NULL,
  `nama_provinsi` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_provinsi`
--

INSERT INTO `data_provinsi` (`id_provinsi`, `nama_provinsi`) VALUES
(1, 'Bali'),
(2, 'Yogyakarta'),
(3, 'Jawa Tengah'),
(15, 'Jawa Barat'),
(16, 'Jakarta'),
(17, 'Jawa Timur'),
(18, 'Riau');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_kabupaten`
--
ALTER TABLE `data_kabupaten`
  ADD PRIMARY KEY (`id_kabupaten`),
  ADD KEY `id_provinsi` (`id_provinsi`);

--
-- Indexes for table `data_kecamatan`
--
ALTER TABLE `data_kecamatan`
  ADD PRIMARY KEY (`id_kecamatan`),
  ADD KEY `fk_kabupaten` (`id_kabupaten`);

--
-- Indexes for table `data_provinsi`
--
ALTER TABLE `data_provinsi`
  ADD PRIMARY KEY (`id_provinsi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_kabupaten`
--
ALTER TABLE `data_kabupaten`
  MODIFY `id_kabupaten` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `data_kecamatan`
--
ALTER TABLE `data_kecamatan`
  MODIFY `id_kecamatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `data_provinsi`
--
ALTER TABLE `data_provinsi`
  MODIFY `id_provinsi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_kecamatan`
--
ALTER TABLE `data_kecamatan`
  ADD CONSTRAINT `fk_kabupaten` FOREIGN KEY (`id_kabupaten`) REFERENCES `data_kabupaten` (`id_kabupaten`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
