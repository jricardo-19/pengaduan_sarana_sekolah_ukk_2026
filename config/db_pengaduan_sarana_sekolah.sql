-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 02, 2026 at 12:42 AM
-- Server version: 8.0.30
-- PHP Version: 8.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_pengaduan_sarana_sekolah`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id_admin` int NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`id_admin`, `username`, `password`) VALUES
(2, 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `tb_aspirasi`
--

CREATE TABLE `tb_aspirasi` (
  `id_aspirasi` int NOT NULL,
  `id_pelaporan` int NOT NULL,
  `status` enum('0','Menunggu','Proses','Selesai','Ditolak') DEFAULT '0',
  `id_kategori` int NOT NULL,
  `feedback` text NOT NULL,
  `id_admin` int DEFAULT NULL,
  `tgl_feedback` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_input_aspirasi`
--

CREATE TABLE `tb_input_aspirasi` (
  `id_pelaporan` int NOT NULL,
  `nis` int NOT NULL,
  `id_kategori` int NOT NULL,
  `lokasi` varchar(50) NOT NULL,
  `ket` varchar(50) NOT NULL,
  `status` enum('0','Menunggu','Proses','Selesai','Ditolak') NOT NULL DEFAULT '0',
  `foto` varchar(255) DEFAULT 'default.png',
  `tgl_laporan` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategori`
--

CREATE TABLE `tb_kategori` (
  `id_kategori` int NOT NULL,
  `ket_kategori` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_kategori`
--

INSERT INTO `tb_kategori` (`id_kategori`, `ket_kategori`) VALUES
(1, 'Sarana Prasarana'),
(2, 'Kebersihan'),
(3, 'Kenyamanan Kelas'),
(4, 'Keamanan Sekolah');

-- --------------------------------------------------------

--
-- Table structure for table `tb_riwayat`
--

CREATE TABLE `tb_riwayat` (
  `id_riwayat` int NOT NULL,
  `id_pelaporan` int NOT NULL,
  `id_kategori` int NOT NULL,
  `id_admin` int NOT NULL,
  `tgl_selesai` date NOT NULL,
  `feedback` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_siswa`
--

CREATE TABLE `tb_siswa` (
  `nis` int NOT NULL,
  `nama` varchar(50) NOT NULL,
  `kelas` varchar(10) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_siswa`
--

INSERT INTO `tb_siswa` (`nis`, `nama`, `kelas`, `password`) VALUES
(1234, 'Roofid', 'XII RPL 3', '81dc9bdb52d04dc20036dbd8313ed055'),
(123456, 'Salma Noviyanti', 'XII MPLB 3', 'e10adc3949ba59abbe56e057f20f883e'),
(456789, 'Samuel Ricardo', 'X PPLG 1', 'e35cf7b66449df565f93c607d5a81d09'),
(20217142, 'Julian Ricardo', 'XII RPL 4', '25fbadcdd8c1ef7f1e60b64e0ba40342');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tb_aspirasi`
--
ALTER TABLE `tb_aspirasi`
  ADD PRIMARY KEY (`id_aspirasi`),
  ADD KEY `id_pelaporan` (`id_pelaporan`),
  ADD KEY `id_kategori` (`id_kategori`),
  ADD KEY `id_admin` (`id_admin`);

--
-- Indexes for table `tb_input_aspirasi`
--
ALTER TABLE `tb_input_aspirasi`
  ADD PRIMARY KEY (`id_pelaporan`),
  ADD KEY `nis` (`nis`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- Indexes for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `tb_riwayat`
--
ALTER TABLE `tb_riwayat`
  ADD PRIMARY KEY (`id_riwayat`),
  ADD KEY `id_pelaporan` (`id_pelaporan`),
  ADD KEY `id_kategori` (`id_kategori`),
  ADD KEY `id_admin` (`id_admin`);

--
-- Indexes for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD PRIMARY KEY (`nis`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id_admin` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_aspirasi`
--
ALTER TABLE `tb_aspirasi`
  MODIFY `id_aspirasi` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `tb_input_aspirasi`
--
ALTER TABLE `tb_input_aspirasi`
  MODIFY `id_pelaporan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  MODIFY `id_kategori` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_riwayat`
--
ALTER TABLE `tb_riwayat`
  MODIFY `id_riwayat` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_aspirasi`
--
ALTER TABLE `tb_aspirasi`
  ADD CONSTRAINT `tb_aspirasi_ibfk_1` FOREIGN KEY (`id_pelaporan`) REFERENCES `tb_input_aspirasi` (`id_pelaporan`) ON DELETE CASCADE,
  ADD CONSTRAINT `tb_aspirasi_ibfk_2` FOREIGN KEY (`id_kategori`) REFERENCES `tb_kategori` (`id_kategori`) ON DELETE CASCADE,
  ADD CONSTRAINT `tb_aspirasi_ibfk_3` FOREIGN KEY (`id_admin`) REFERENCES `tb_admin` (`id_admin`) ON DELETE SET NULL;

--
-- Constraints for table `tb_input_aspirasi`
--
ALTER TABLE `tb_input_aspirasi`
  ADD CONSTRAINT `tb_input_aspirasi_ibfk_1` FOREIGN KEY (`nis`) REFERENCES `tb_siswa` (`nis`) ON DELETE CASCADE,
  ADD CONSTRAINT `tb_input_aspirasi_ibfk_2` FOREIGN KEY (`id_kategori`) REFERENCES `tb_kategori` (`id_kategori`) ON DELETE CASCADE;

--
-- Constraints for table `tb_riwayat`
--
ALTER TABLE `tb_riwayat`
  ADD CONSTRAINT `fk_riwayat_admin` FOREIGN KEY (`id_admin`) REFERENCES `tb_admin` (`id_admin`),
  ADD CONSTRAINT `fk_riwayat_kategori` FOREIGN KEY (`id_kategori`) REFERENCES `tb_kategori` (`id_kategori`),
  ADD CONSTRAINT `fk_riwayat_pelaporan` FOREIGN KEY (`id_pelaporan`) REFERENCES `tb_input_aspirasi` (`id_pelaporan`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
