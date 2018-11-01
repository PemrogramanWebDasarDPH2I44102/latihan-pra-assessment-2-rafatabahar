-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 01, 2018 at 03:06 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pra_assesment`
--

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `nama` varchar(50) NOT NULL,
  `NIP` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`nama`, `NIP`) VALUES
('Nia', '111111'),
('Rafata', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `paket`
--

CREATE TABLE `paket` (
  `id_paket` int(11) NOT NULL,
  `tanggal_datang` date NOT NULL,
  `sasaran` varchar(20) NOT NULL,
  `penerima` varchar(20) NOT NULL,
  `isi_paket` text NOT NULL,
  `tanggal_ambil` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paket`
--

INSERT INTO `paket` (`id_paket`, `tanggal_datang`, `sasaran`, `penerima`, `isi_paket`, `tanggal_ambil`) VALUES
(1, '2018-01-20', '98765', '12345', 'Meja Belajar', '2018-02-01'),
(2, '2018-11-01', '99999', '111111', 'Baju Kotor', '2018-11-02'),
(3, '2018-11-01', '98765', '111111', 'Mobil', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `penghuni`
--

CREATE TABLE `penghuni` (
  `no_KTP` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `unit` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penghuni`
--

INSERT INTO `penghuni` (`no_KTP`, `nama`, `unit`) VALUES
('5678', 'Eliza', '108'),
('98765', 'Burhan', '305'),
('99999', 'Martya', '306');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`NIP`);

--
-- Indexes for table `paket`
--
ALTER TABLE `paket`
  ADD PRIMARY KEY (`id_paket`),
  ADD KEY `sasaran` (`sasaran`),
  ADD KEY `penerima` (`penerima`);

--
-- Indexes for table `penghuni`
--
ALTER TABLE `penghuni`
  ADD PRIMARY KEY (`no_KTP`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `paket`
--
ALTER TABLE `paket`
  MODIFY `id_paket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `paket`
--
ALTER TABLE `paket`
  ADD CONSTRAINT `paket_ibfk_1` FOREIGN KEY (`sasaran`) REFERENCES `penghuni` (`no_KTP`),
  ADD CONSTRAINT `paket_ibfk_2` FOREIGN KEY (`penerima`) REFERENCES `karyawan` (`NIP`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
