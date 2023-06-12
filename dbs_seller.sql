-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2023 at 06:10 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbs_seller`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_produk_seller`
--

CREATE TABLE `tbl_produk_seller` (
  `id` int(11) NOT NULL,
  `id_seller` varchar(11) NOT NULL,
  `id_produk` varchar(11) NOT NULL,
  `qty` varchar(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_produk_seller`
--

INSERT INTO `tbl_produk_seller` (`id`, `id_seller`, `id_produk`, `qty`, `date`) VALUES
(16, '6', '9', '1', '2023-06-12 02:05:37'),
(17, '6', '10', '25', '2023-06-12 02:05:37'),
(18, '6', '11', '44', '2023-06-12 02:05:37'),
(19, '7', '9', '9', '2023-06-12 03:49:46'),
(20, '7', '10', '3', '2023-06-12 03:49:46');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_produk_stok`
--

CREATE TABLE `tbl_produk_stok` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `stok` int(11) NOT NULL,
  `berat` varchar(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_produk_stok`
--

INSERT INTO `tbl_produk_stok` (`id`, `nama`, `stok`, `berat`, `date`) VALUES
(9, 'Genthong Eko 30kg', 1, '30', '2023-06-12 01:56:05'),
(10, 'Genthong Eko 10kg', 1, '10', '2023-06-12 01:56:05'),
(11, 'Genthong Eko 5kg', 1, '5', '2023-06-12 01:56:27'),
(12, 'Genthong Premium 5kg', 1, '5', '2023-06-12 01:56:27');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_seller`
--

CREATE TABLE `tbl_seller` (
  `id` int(11) NOT NULL,
  `kode_seller` varchar(15) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `jk` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `kab` varchar(11) NOT NULL,
  `kel` varchar(11) NOT NULL,
  `kec` varchar(11) NOT NULL,
  `alamat_toko` text NOT NULL,
  `nama_toko` varchar(50) NOT NULL,
  `no_wa` varchar(13) NOT NULL,
  `no_ktp` varchar(16) NOT NULL,
  `deposit` varchar(11) NOT NULL,
  `jml_kg` varchar(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_seller`
--

INSERT INTO `tbl_seller` (`id`, `kode_seller`, `nama`, `jk`, `alamat`, `kab`, `kel`, `kec`, `alamat_toko`, `nama_toko`, `no_wa`, `no_ktp`, `deposit`, `jml_kg`, `date`) VALUES
(6, '', 'Aldi', 'Laki-Laki', 'Dsn VI Kp. Melayu Desa Karang Anyar kec. Secanggang Kabupaten Langkat Sumatera Utara', '1201', '1201061012', '1201061', 'Dsn VI Kp. Melayu Desa Karang Anyar kec. Secanggang Kabupaten Langkat Sumatera Utara', 'Segar wangi', '083138184143', '1205092102860001', '5 JTA', '500', '2023-06-08 07:38:20'),
(7, '', 'Nusa', 'Laki-Laki', 'Binjai', '1276', '1276020002', '1276020', 'Binjai', 'Sembako Nusa', '083138184143', '1205092102860001', '3 JTA', '300', '2023-06-12 03:49:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_produk_seller`
--
ALTER TABLE `tbl_produk_seller`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_produk_stok`
--
ALTER TABLE `tbl_produk_stok`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_seller`
--
ALTER TABLE `tbl_seller`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_produk_seller`
--
ALTER TABLE `tbl_produk_seller`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_produk_stok`
--
ALTER TABLE `tbl_produk_stok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_seller`
--
ALTER TABLE `tbl_seller`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
