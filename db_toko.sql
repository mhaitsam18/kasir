-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2021 at 02:31 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_toko`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `nama_barang` text NOT NULL,
  `deskripsi` varchar(500) NOT NULL,
  `warna` varchar(255) NOT NULL,
  `harga_beli` varchar(255) NOT NULL,
  `harga_jual` varchar(255) NOT NULL,
  `satuan_barang` varchar(255) NOT NULL,
  `stok` text NOT NULL,
  `tgl_input` date NOT NULL,
  `tgl_update` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `id_barang`, `id_kategori`, `nama_barang`, `deskripsi`, `warna`, `harga_beli`, `harga_jual`, `satuan_barang`, `stok`, `tgl_input`, `tgl_update`) VALUES
(4, 'BR001', 8, 'Gamis', '', 'Merah', '35000', '45000', 'Lbr', '291', '2021-05-10', NULL),
(5, 'BR002', 8, 'Baju Kodok Levis', '', 'Biru', '40000', '50000', 'Lbr', '113', '2021-05-10', NULL),
(6, 'BR003', 8, 'Daster Korea', '', 'Cream', '15000', '25000', 'Lbr', '214', '2021-05-10', NULL),
(7, 'BR004', 8, 'Kemeja', '', 'Dark Grey', '18000', '28000', 'Lbr', '40', '2021-05-10', NULL),
(8, 'BR005', 8, 'Setelan Kaos', '', 'Hitam', '35000', '50000', 'Lbr', '29', '2021-05-10', NULL),
(9, 'BR006', 8, 'Setelan Kaos', '', 'Putih', '35000', '50000', 'Lbr', '29', '2021-05-10', NULL),
(10, 'BR007', 8, 'Setelan Kaos', '', 'Biru', '35000', '50000', 'Lbr', '29', '2021-05-10', NULL),
(11, 'BR008', 8, 'Tunik', '', 'Pink', '18000', '28000', 'Lbr', '600', '2021-05-10', NULL),
(12, 'BR009', 9, 'Rok Phisket Levis', '', 'Hitam', '45000', '60000', 'Lbr', '100', '2021-05-10', NULL),
(13, 'BR010', 9, 'Celana Kulot', '', 'Navy', '20000', '30000', 'Lbr', '100', '2021-05-10', NULL),
(14, 'BR011', 9, 'Celana Cutbray', 'Ukuran 34', 'Biru', '20000', '30000', 'Lbr', '97', '2021-05-10', '2021-05-10'),
(15, 'BR012', 9, 'Kulot Batik', '', 'Coklat', '25000', '35000', 'Lbr', '40', '2021-05-10', NULL),
(16, 'BR013', 9, 'Kulot Wafle', '', 'Cream', '18000', '28000', 'Lbr', '200', '2021-05-10', '2021-05-10'),
(17, 'BR014', 9, 'Celana Scuba Mutiara', '', 'Abu Abu', '25000', '35000', 'Lbr', '200', '2021-05-10', '2021-05-10'),
(18, 'BR015', 9, 'Celana Katun', '', 'Hitam', '30000', '40000', 'Lbr', '184', '2021-05-10', '2021-05-10'),
(19, 'BR016', 9, 'Hot Pants', 'Ukuran S', 'Merah', '8000', '15000', 'Lbr', '91', '2021-05-10', '2021-05-10'),
(30, 'BR017', 8, 'Kemeja Flanel', 'Ukuran M', 'Grey', '200000', '350000', '', '98', '2021-05-10', '2021-05-23');

-- --------------------------------------------------------

--
-- Table structure for table `beban`
--

CREATE TABLE `beban` (
  `id` int(11) NOT NULL,
  `id_beban` varchar(255) NOT NULL,
  `nama_beban` text NOT NULL,
  `biaya` double NOT NULL,
  `tanggal` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `beban`
--

INSERT INTO `beban` (`id`, `id_beban`, `nama_beban`, `biaya`, `tanggal`, `keterangan`) VALUES
(26, 'BB003', 'Gaji', 1000000, '2021-05-05', 'Bayar'),
(27, 'BB004', 'Listrik', 1000000, '2021-05-10', 'Lunas');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `tgl_input` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `tgl_input`) VALUES
(8, 'Baju', '2021-05-10'),
(9, 'Celana', '2021-05-10');

-- --------------------------------------------------------

--
-- Table structure for table `labarugi`
--

CREATE TABLE `labarugi` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `ket` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `labarugi`
--

INSERT INTO `labarugi` (`id`, `nama`, `ket`) VALUES
(1, 'Pendapatan', 'Penjualan'),
(2, 'Beban', 'Beban');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id_login` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` char(32) NOT NULL,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id_login`, `user`, `pass`, `id_member`) VALUES
(1, 'admin', '202cb962ac59075b964b07152d234b70', 1),
(2, 'owner', '827ccb0eea8a706c4c34a16891f84e7b', 2);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id_member` int(11) NOT NULL,
  `nm_member` varchar(255) NOT NULL,
  `alamat_member` text NOT NULL,
  `telepon` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `NIK` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id_member`, `nm_member`, `alamat_member`, `telepon`, `email`, `NIK`) VALUES
(1, 'Annisa', 'Lemabang\r\n', '087884727305', 'annisaaulia@gmail.com', '17000002847'),
(2, 'Rafli Nugraha', 'Plaju Ujung', '081246583827', 'rafli@gmail.com', '125121251');

-- --------------------------------------------------------

--
-- Table structure for table `nota`
--

CREATE TABLE `nota` (
  `id_nota` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_member` int(11) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `tanggal_input` varchar(255) NOT NULL,
  `periode` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nota`
--

INSERT INTO `nota` (`id_nota`, `id_barang`, `id_member`, `jumlah`, `total`, `tanggal_input`, `periode`) VALUES
(38, 'BR004', 1, '50', '1400000', '2021-05-10', '05-2021'),
(39, 'BR017', 1, '8', '2800000', '2021-05-10', '05-2021'),
(40, 'BR002', 1, '1', '50000', '2021-05-23', '05-2021'),
(41, 'BR002', 1, '1', '50000', '2021-05-23', '05-2021'),
(42, 'BR001', 1, '1', '45000', '2021-05-24', '05-2021'),
(43, 'BR001', 1, '1', '45000', '2021-05-24', '05-2021'),
(44, 'BR017', 1, '2', '700000', '2021-05-24', '05-2021');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_member` int(11) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `tanggal_input` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id_penjualan`, `id_barang`, `id_member`, `jumlah`, `total`, `tanggal_input`) VALUES
(28, 'BR001', 1, '1', '45000', '2021-05-24'),
(30, 'BR017', 1, '2', '700000', '2021-05-24');

-- --------------------------------------------------------

--
-- Table structure for table `toko`
--

CREATE TABLE `toko` (
  `id_toko` int(11) NOT NULL,
  `nama_toko` varchar(255) NOT NULL,
  `alamat_toko` text NOT NULL,
  `tlp` varchar(255) NOT NULL,
  `nama_pemilik` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `toko`
--

INSERT INTO `toko` (`id_toko`, `nama_toko`, `alamat_toko`, `tlp`, `nama_pemilik`) VALUES
(1, 'Toko Cahaya Pelangi', 'Pasar 16 Ilir', '08123456789', 'Asril Amir S.E');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beban`
--
ALTER TABLE `beban`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_login`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`);

--
-- Indexes for table `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`id_nota`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`);

--
-- Indexes for table `toko`
--
ALTER TABLE `toko`
  ADD PRIMARY KEY (`id_toko`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `beban`
--
ALTER TABLE `beban`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `nota`
--
ALTER TABLE `nota`
  MODIFY `id_nota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `toko`
--
ALTER TABLE `toko`
  MODIFY `id_toko` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
