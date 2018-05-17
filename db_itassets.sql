-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2018 at 09:41 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_itaset`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang`
--

CREATE TABLE `tb_barang` (
  `kode_barang` varchar(30) NOT NULL DEFAULT '',
  `id_kategori` int(30) DEFAULT NULL,
  `nama_barang` varchar(50) DEFAULT NULL,
  `merek_barang` varchar(30) DEFAULT NULL,
  `spesifikasi` varchar(250) DEFAULT NULL,
  `satuan` enum('PCS','PACK','UNIT','ROLL','METER','BUAH') DEFAULT 'PCS',
  `gid` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_barang`
--

INSERT INTO `tb_barang` (`kode_barang`, `id_kategori`, `nama_barang`, `merek_barang`, `spesifikasi`, `satuan`, `gid`) VALUES
('B018.0001', 1, 'LATITUDE 3330', 'DELL', 'CORE I3, RAM 4 GB', 'PCS', 1),
('B018.0002', 1, 'LQ-2190', 'EPSON', 'PRINTER EPSON LQ-2190', 'PCS', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_cabang`
--

CREATE TABLE `tb_cabang` (
  `id_cabang` int(11) NOT NULL,
  `namacabang` varchar(50) NOT NULL,
  `wilayah` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_cabang`
--

INSERT INTO `tb_cabang` (`id_cabang`, `namacabang`, `wilayah`) VALUES
(1, 'Holding', 'Jabodetabek'),
(2, 'PuloGadung', 'Jabodetabek'),
(3, 'Body Repair', 'Jabodetabek'),
(4, 'Bumi Serpong Damai', 'Jabodetabek'),
(5, 'Pantai Indah Kapuk', 'Jabodetabek'),
(6, 'Dewi Sartika', 'Jabodetabek'),
(7, 'Sunter', 'Jabodetabek'),
(8, 'MT. Haryono', 'Jabodetabek'),
(9, 'Harapan Indah', 'Jabodetabek'),
(10, 'PDC', 'Jabodetabek'),
(11, 'Lippo Cikarang', 'Jabodetabek'),
(12, 'KotaBumi', 'Jabodetabek'),
(13, 'Gading Serpong', 'Jabodetabek'),
(14, 'Puri Indah', 'Jabodetabek'),
(15, 'Parung', 'Jabodetabek'),
(16, 'Klender', 'Jabodetabek'),
(17, 'Cipulir', 'Jabodetabek'),
(18, 'Husein SastraNegara', 'Jabodetabek'),
(19, 'Tanah Tinggi', 'Jabodetabek'),
(20, 'Alam Sutera', 'Jabodetabek'),
(21, 'Cakung (JGC)', 'Jabodetabek'),
(22, 'Koja', 'Jabodetabek'),
(23, 'Body Repair Cikarang', 'Jabodetabek');

-- --------------------------------------------------------

--
-- Table structure for table `tb_departemen`
--

CREATE TABLE `tb_departemen` (
  `id_dept` int(10) NOT NULL,
  `gid` int(10) DEFAULT NULL,
  `nama` varchar(40) DEFAULT NULL,
  `parent` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_departemen`
--

INSERT INTO `tb_departemen` (`id_dept`, `gid`, `nama`, `parent`) VALUES
(2, 1, 'TECHNIC', 1),
(3, 1, 'CIVIL', 1),
(4, 1, 'IPAL', 1),
(6, 1, 'QUALITY CONTROL', 5),
(7, 1, 'PROSES CONTROL', 5),
(8, 1, 'JAHIT/ KEMAS', 5),
(9, 1, 'KEMAS', 8),
(10, 1, 'DISTRIBUSI', 8),
(11, 1, 'HRD & GA', 0),
(16, 1, 'FINISHING', 15),
(17, 1, 'PRINTING PREP', 15),
(18, 1, 'PRINTING PROD', 15),
(19, 1, 'DESIGNER PRINTING', 15),
(21, 1, 'DYEING', 20),
(23, 1, 'WAREHOUSE', 22),
(24, 1, 'PURCHASING', 22),
(25, 1, 'MATERIAL CONTROL', 22),
(27, 1, 'PPIC PPC', 26),
(28, 1, 'MATERIAL CONTROL', 26),
(33, 1, 'PRODUKSI PPIC', 32),
(35, 1, 'WEAVING 2 DAN 3 ', 32),
(36, 1, 'QC WEAVING', 32),
(37, 1, 'FINANCE & ACCOUNTING', 0),
(38, 1, 'FINANCE', 37),
(39, 1, 'ACCOUNTING', 37),
(40, 1, 'IT', 0),
(41, 1, 'IT Support', 40),
(47, 1, 'SALES & MARKETING', 0),
(48, 1, 'SALES SUPPORT', 47),
(49, 1, 'SALES HEAD', 47),
(57, 2, 'TEKNIK', 0),
(58, 2, 'HRD & GA', 0),
(59, 2, 'FINANCE & ACCOUNTING', 0),
(70, 2, 'ICT', 0),
(71, 2, 'NETWARE', 70),
(72, 1, 'AFTER SALES', 0),
(73, 1, 'SERVICE ADVISOR', 72),
(74, 1, 'SERVICE ADMIN', 72),
(75, 1, 'SRO', 72),
(76, 1, 'KEPALA BENGKEL', 72),
(77, 1, 'MARKETING SUPPORT', 47),
(78, 1, 'CRO', 47),
(79, 1, 'SPAREPART ADMIN', 72),
(80, 1, 'KASIR SERVICE', 37),
(81, 1, 'KASIR BESAR', 37),
(82, 1, 'HRD/GA', 11),
(83, 1, 'SALES ADMIN', 47),
(84, 1, 'KEPALA CABANG', 47);

-- --------------------------------------------------------

--
-- Table structure for table `tb_group`
--

CREATE TABLE `tb_group` (
  `gid` int(11) NOT NULL,
  `nama_group` varchar(20) NOT NULL,
  `nama_alias` varchar(3) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `logo` varchar(50) NOT NULL,
  `logo_dashboard` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_group`
--

INSERT INTO `tb_group` (`gid`, `nama_group`, `nama_alias`, `alamat`, `logo`, `logo_dashboard`) VALUES
(1, 'Jabodetabek', 'JKT', 'Jabodetabek', 'k1.png', 'k1.png'),
(2, 'Jawa Timur', 'SBY', 'Jawa Timur', 'k7.png', 'k7.jpg'),
(3, 'Pekanbaru', 'PKU', 'Pekanbaru Riau', 'k2.png', 'k2.png');

-- --------------------------------------------------------

--
-- Table structure for table `tb_internet`
--

CREATE TABLE `tb_internet` (
  `id_internet` int(11) NOT NULL,
  `nama_provider` varchar(45) NOT NULL,
  `nama_cabang` varchar(45) NOT NULL,
  `nomor_pelanggan` varchar(45) NOT NULL,
  `tipe_koneksi` varchar(45) NOT NULL,
  `ip_public` varchar(45) NOT NULL,
  `spesifikasi` varchar(200) NOT NULL,
  `tanggal_kontrak` date NOT NULL,
  `masa_kontrak` date NOT NULL,
  `status` varchar(13) NOT NULL,
  `biaya` varchar(45) NOT NULL,
  `gid` varchar(45) DEFAULT NULL,
  `kode_internet` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_inv_history`
--

CREATE TABLE `tb_inv_history` (
  `id_history` int(11) NOT NULL,
  `no_inventaris` varchar(20) DEFAULT NULL,
  `tgl_update` datetime DEFAULT NULL,
  `status` enum('Buat Baru','Dipinjamkan','Kembali','Mutasi') DEFAULT 'Buat Baru',
  `admin` varchar(30) DEFAULT NULL,
  `id_pengguna_awal` varchar(30) DEFAULT NULL,
  `id_pengguna` varchar(30) DEFAULT NULL,
  `lokasi` varchar(50) NOT NULL,
  `note` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_inv_history`
--

INSERT INTO `tb_inv_history` (`id_history`, `no_inventaris`, `tgl_update`, `status`, `admin`, `id_pengguna_awal`, `id_pengguna`, `lokasi`, `note`) VALUES
(1, 'LAP-JKT-18001', '2018-02-17 15:24:59', 'Buat Baru', 'Ahmad Sopian', 'U018.0001', 'U018.0001', '', 'Inventory Baru'),
(2, 'LAP-JKT-18002', '2018-02-17 15:26:32', 'Buat Baru', 'Ahmad Sopian', 'U018.0001', 'U018.0001', '', 'Inventory Baru');

-- --------------------------------------------------------

--
-- Table structure for table `tb_inv_komputer`
--

CREATE TABLE `tb_inv_komputer` (
  `id_komputer` int(20) NOT NULL,
  `kode_komputer` varchar(20) NOT NULL,
  `aset_hrd` varchar(45) NOT NULL,
  `id_pengguna` varchar(30) DEFAULT NULL,
  `nama_komputer` varchar(50) DEFAULT NULL,
  `spesifikasi` varchar(200) DEFAULT NULL,
  `serial_number` varchar(20) DEFAULT NULL,
  `id_lisence` varchar(30) DEFAULT NULL,
  `network` varchar(30) DEFAULT NULL,
  `tgl_inv` date DEFAULT NULL,
  `tgl_garansi` date NOT NULL,
  `harga_beli` decimal(20,0) NOT NULL,
  `status` enum('DIGUNAKAN','SIAP DIGUNAKAN','DIPERBAIKI','DIPINJAMKAN','ARSIP/DISIMPAN','RUSAK/NOT FIXABLE','HILANG/DICURI') DEFAULT 'DIGUNAKAN',
  `note` varchar(30) DEFAULT NULL,
  `gid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_inv_laptop`
--

CREATE TABLE `tb_inv_laptop` (
  `id_laptop` int(30) NOT NULL,
  `kode_laptop` varchar(20) NOT NULL,
  `id_pengguna` varchar(30) DEFAULT NULL,
  `nama_laptop` varchar(50) DEFAULT NULL,
  `tipe_laptop` varchar(50) NOT NULL,
  `spesifikasi` varchar(200) DEFAULT NULL,
  `serial_number` varchar(20) DEFAULT NULL,
  `id_lisence` varchar(30) DEFAULT NULL,
  `network` varchar(30) DEFAULT NULL,
  `tgl_inv` date DEFAULT NULL,
  `tgl_garansi` date DEFAULT NULL,
  `harga_beli` decimal(10,0) NOT NULL,
  `status` enum('DIGUNAKAN','SIAP DIGUNAKAN','DIPERBAIKI','DIPINJAMKAN','ARSIP/DISIMPAN','RUSAK/NOT FIXABLE','HILANG/DICURI') DEFAULT 'DIGUNAKAN',
  `note` varchar(100) DEFAULT NULL,
  `gid` int(11) DEFAULT NULL,
  `aset_hrd` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_inv_laptop`
--

INSERT INTO `tb_inv_laptop` (`id_laptop`, `kode_laptop`, `id_pengguna`, `nama_laptop`, `tipe_laptop`, `spesifikasi`, `serial_number`, `id_lisence`, `network`, `tgl_inv`, `tgl_garansi`, `harga_beli`, `status`, `note`, `gid`, `aset_hrd`) VALUES
(1, 'LAP-JKT-18001', 'U018.0001', 'DELL', '', 'TEST', '6178200', NULL, '111.111.111.111', '2018-02-17', '2018-05-31', '12000000', 'DIGUNAKAN', NULL, 1, 'BITJ00/2/6/7/819/9'),
(2, 'LAP-JKT-18002', 'U018.0001', 'DELL', '', 'TEST', 'BCF123', NULL, '111.111.111.111', '2018-02-17', '2018-06-03', '1200000', 'DIGUNAKAN', NULL, 1, 'BITJ10/1/7/7/255/5');

-- --------------------------------------------------------

--
-- Table structure for table `tb_inv_monitor`
--

CREATE TABLE `tb_inv_monitor` (
  `id_monitor` int(30) NOT NULL,
  `kode_monitor` varchar(30) NOT NULL,
  `id_pengguna` varchar(30) DEFAULT NULL,
  `jenis_monitor` enum('LED','LCD','CRT','TOUCH SCREEN') DEFAULT 'LED',
  `spesifikasi` varchar(200) DEFAULT NULL,
  `tgl_inv` date DEFAULT NULL,
  `harga_beli` decimal(20,0) NOT NULL,
  `status` enum('DIGUNAKAN','SIAP DIGUNAKAN','DIPERBAIKI','DIPINJAMKAN','ARSIP/DISIMPAN','RUSAK/NOT FIXABLE','DIJUAL/HILANG') DEFAULT 'DIGUNAKAN',
  `note` varchar(100) DEFAULT NULL,
  `gid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_inv_network`
--

CREATE TABLE `tb_inv_network` (
  `id_network` int(20) NOT NULL,
  `kode_network` varchar(30) NOT NULL,
  `lokasi` varchar(50) DEFAULT NULL,
  `jenis_network` varchar(50) DEFAULT NULL,
  `spesifikasi` varchar(200) DEFAULT NULL,
  `tgl_inv` date DEFAULT NULL,
  `harga_beli` decimal(20,0) NOT NULL,
  `status` enum('DIGUNAKAN','SIAP DIGUNAKAN','DIPERBAIKI','DIPINJAMKAN','ARSIP/DISIMPAN','RUSAK/NOT FIXABLE','HILANG/DICURI') DEFAULT 'DIGUNAKAN',
  `gid` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_inv_printer`
--

CREATE TABLE `tb_inv_printer` (
  `id_printer` int(20) NOT NULL,
  `kode_printer` varchar(30) DEFAULT NULL,
  `aset_hrd` varchar(45) NOT NULL,
  `id_pengguna` varchar(30) DEFAULT NULL,
  `jenis_printer` enum('DESKJET','LASERJET','DOTMATRIX','ALL-IN','SCANER','FAX') DEFAULT 'DESKJET',
  `spesifikasi` varchar(200) DEFAULT NULL,
  `tgl_inv` date DEFAULT NULL,
  `harga_beli` decimal(20,0) NOT NULL,
  `status` enum('DIGUNAKAN','SIAP DIGUNAKAN','DIPERBAIKI','DIPINJAMKAN','ARSIP/DISIMPAN','RUSAK/NOT FIXABLE','HILANG/DICURI') DEFAULT 'DIGUNAKAN',
  `note` varchar(100) DEFAULT NULL,
  `gid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_jabatan`
--

CREATE TABLE `tb_jabatan` (
  `id_jabatan` int(30) NOT NULL,
  `nama_jabatan` varchar(50) NOT NULL,
  `jobdes` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_jabatan`
--

INSERT INTO `tb_jabatan` (`id_jabatan`, `nama_jabatan`, `jobdes`) VALUES
(1, 'PRESIDEN DIREKTUR', ''),
(2, 'DIREKTUR', ''),
(3, 'SALES HEAD', ''),
(4, 'FOREMAN', ''),
(5, 'SENIOR FOREMAN', ''),
(6, 'STAFF', ''),
(7, 'SUPPORT', ''),
(8, 'KEPALA CABANG', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategori`
--

CREATE TABLE `tb_kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kategori`
--

INSERT INTO `tb_kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Komputer'),
(2, 'Laptop'),
(3, 'Periferal'),
(4, 'Separepart'),
(5, 'Network Device'),
(6, 'ATK'),
(7, 'Monitor'),
(8, 'Printer'),
(9, 'Alat'),
(10, 'Habis Pakai');

-- --------------------------------------------------------

--
-- Table structure for table `tb_maintenance`
--

CREATE TABLE `tb_maintenance` (
  `no_permohonan` varchar(15) NOT NULL DEFAULT '',
  `tgl_permohonan` datetime DEFAULT NULL,
  `tgl_selesai` datetime DEFAULT NULL,
  `jenis_permohonan` varchar(50) DEFAULT NULL,
  `nama_kategori` varchar(20) DEFAULT NULL,
  `no_inventaris` varchar(20) DEFAULT NULL,
  `catatan_pemohon` varchar(100) DEFAULT NULL,
  `nama_pemohon` varchar(50) DEFAULT 'Admin',
  `catatan_perbaikan` varchar(100) DEFAULT NULL,
  `nama_supplier` varchar(50) DEFAULT NULL,
  `biaya` decimal(10,0) DEFAULT NULL,
  `status` enum('OPEN','PROCESS','PENDING','CLOSED') DEFAULT 'OPEN',
  `gid` int(11) DEFAULT NULL,
  `terbilang` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `tb_maintenance_detail`
--

CREATE TABLE `tb_maintenance_detail` (
  `id_detail` int(50) NOT NULL,
  `no_permohonan` varchar(15) NOT NULL DEFAULT '',
  `tgl_proses` datetime DEFAULT NULL,
  `catatan` varchar(100) DEFAULT NULL,
  `user` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `tb_manufacture`
--

CREATE TABLE `tb_manufacture` (
  `id_manufacture` int(11) NOT NULL,
  `nama_manufacture` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_manufacture`
--

INSERT INTO `tb_manufacture` (`id_manufacture`, `nama_manufacture`) VALUES
(1, 'DELL'),
(4, 'EPSON');

-- --------------------------------------------------------

--
-- Table structure for table `tb_menu`
--

CREATE TABLE `tb_menu` (
  `id_menu` int(11) NOT NULL,
  `nama_menu` varchar(50) NOT NULL,
  `icon` varchar(40) NOT NULL,
  `link` varchar(30) NOT NULL,
  `parent` int(11) NOT NULL,
  `role` enum('Administrator','Admin') DEFAULT 'Admin',
  `aktif` enum('Y','N') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_menu`
--

INSERT INTO `tb_menu` (`id_menu`, `nama_menu`, `icon`, `link`, `parent`, `role`, `aktif`) VALUES
(1, 'Dashboard', 'fa fa-dashboard', 'dashboard', 0, 'Admin', 'Y'),
(2, 'Master', 'fa fa-suitcase', '#', 0, 'Admin', 'Y'),
(3, 'Barang', 'fa fa-plus-square text-aqua', 'barang', 2, 'Admin', 'Y'),
(4, 'Supplier', 'fa fa-truck text-aqua', 'supplier', 2, 'Admin', 'Y'),
(5, 'Pengguna', 'fa fa-user text-aqua', 'pengguna', 2, 'Admin', 'Y'),
(6, 'Inventory', 'fa fa-archive', '#', 0, 'Admin', 'Y'),
(7, 'Laptop', 'fa fa-laptop text-aqua', 'laptop', 6, 'Admin', 'Y'),
(8, 'PC/ Komputer', 'fa fa-desktop text-aqua', 'komputer', 6, 'Admin', 'Y'),
(9, 'Monitor', 'fa fa-barcode text-aqua', 'monitor', 6, 'Admin', 'Y'),
(10, 'Printer', 'fa fa-print text-aqua', 'printer', 6, 'Admin', 'Y'),
(11, 'Device Suport', 'fa fa-sitemap text-aqua', 'device', 6, 'Admin', 'Y'),
(12, 'Transaksi', 'fa fa-th-list', '#', 0, 'Admin', 'Y'),
(13, 'Barang Masuk', 'fa fa-shopping-cart text-aqua', 'masuk', 12, 'Admin', 'Y'),
(14, 'Barang Keluar', 'fa fa-minus-square text-aqua', 'keluar', 12, 'Admin', 'Y'),
(16, 'Stok Barang', 'fa fa-th-large text-aqua', 'stok', 12, 'Admin', 'Y'),
(17, 'Maintenance', 'fa fa-wrench', '#', 0, 'Admin', 'Y'),
(19, 'Dedpartemen', 'fa fa-align-center text-aqua', 'departemen', 2, 'Admin', 'Y'),
(20, 'Inventory', 'fa fa-hdd-o text-aqua', 'maintenance', 17, 'Admin', 'Y'),
(22, 'Seting', 'fa fa-gears', '#', 0, 'Administrator', 'Y'),
(23, 'Menu seting', 'fa  fa-bars text-aqua', 'menu', 22, 'Administrator', 'Y'),
(24, 'User Seting', 'fa fa-users text-aqua', 'user', 22, 'Administrator', 'Y'),
(25, 'Archived', 'fa fa-save text-aqua', 'archived', 6, 'Admin', 'Y'),
(26, 'Group Seting', 'fa fa-gear text-aqua', 'group', 22, 'Admin', 'Y'),
(27, 'Master Cabang', 'fa fa-building-o text-aqua', 'cabang', 2, 'Admin', 'Y'),
(29, 'Provider Internet', 'fa fa-signal text-aqua', 'provider', 2, 'Admin', 'Y'),
(30, 'Koneksi Internet', 'fa fa-globe text-aqua', 'internet', 6, 'Admin', 'Y'),
(31, 'Manufacture (Merk)', 'fa fa-bullseye text-aqua', 'manufacture', 2, 'Admin', 'Y'),
(32, 'Laporan', 'fa fa-print', '#', 0, 'Admin', 'Y'),
(33, 'Inventory Laptop', 'fa fa-floppy-o text-aqua', 'laptop/export_excel', 32, 'Admin', 'Y'),
(34, 'Laporan Register', 'fa fa-book text-aqua', '#', 32, 'Admin', 'Y'),
(35, 'Tipe (Model)', 'fa fa-qrcode text-aqua', 'model', 2, 'Admin', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pelayanan`
--

CREATE TABLE `tb_pelayanan` (
  `id` int(11) NOT NULL,
  `tgl_pelayanan` datetime DEFAULT NULL,
  `id_pengguna` varchar(50) DEFAULT NULL,
  `note` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengguna`
--

CREATE TABLE `tb_pengguna` (
  `id_pengguna` varchar(30) NOT NULL DEFAULT '',
  `nik` varchar(30) NOT NULL,
  `nama_pengguna` varchar(30) NOT NULL,
  `id_dept` int(30) NOT NULL,
  `id_jabatan` int(30) NOT NULL,
  `ruang_kantor` varchar(50) NOT NULL,
  `id_cabang` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pengguna`
--

INSERT INTO `tb_pengguna` (`id_pengguna`, `nik`, `nama_pengguna`, `id_dept`, `id_jabatan`, `ruang_kantor`, `id_cabang`) VALUES
('U018.0001', '51919', 'AHMAD SOPIAN', 41, 6, 'HOLDING', '1'),
('U018.0002', '51919', 'AHMAD SOPIANA', 41, 3, '-', '1'),
('U018.0003', '51919', 'TEST KARYAWAN', 82, 4, '-', '0'),
('U018.0004', '51917', 'TEST KARYAWAN', 11, 2, '-', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tb_provider`
--

CREATE TABLE `tb_provider` (
  `id_provider` int(11) NOT NULL,
  `nama_provider` varchar(45) NOT NULL,
  `telpon_provider` varchar(45) NOT NULL,
  `nama_sales` varchar(45) NOT NULL,
  `telpon_sales` varchar(45) NOT NULL,
  `email_provider` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_remote`
--

CREATE TABLE `tb_remote` (
  `id_remote` int(11) NOT NULL,
  `namacabang` varchar(45) NOT NULL,
  `nama_user` varchar(45) NOT NULL,
  `remote_address` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_status`
--

CREATE TABLE `tb_status` (
  `id_status` int(10) NOT NULL,
  `nama_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_status`
--

INSERT INTO `tb_status` (`id_status`, `nama_status`) VALUES
(1, 'DIGUNAKAN'),
(2, 'SIAP DIGUNAKAN'),
(3, 'DIPERBAIKI'),
(4, 'ARSIP/DISIMPAN'),
(5, 'RUSAK/NOT FIXABLE'),
(6, 'DIJUAL/HILANG'),
(7, 'DIPINJAMKAN');

-- --------------------------------------------------------

--
-- Table structure for table `tb_supplier`
--

CREATE TABLE `tb_supplier` (
  `id_supplier` int(20) NOT NULL,
  `nama_supplier` varchar(50) NOT NULL,
  `alamat_supplier` varchar(100) NOT NULL,
  `telepon` varchar(20) NOT NULL,
  `nama_pic` varchar(45) NOT NULL,
  `nomor_npwp` varchar(45) NOT NULL,
  `nomor_ktp` varchar(45) NOT NULL,
  `isactive` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_supplier`
--

INSERT INTO `tb_supplier` (`id_supplier`, `nama_supplier`, `alamat_supplier`, `telepon`, `nama_pic`, `nomor_npwp`, `nomor_ktp`, `isactive`) VALUES
(16, 'PT. SEMESTA SINERGI', 'TEST', '08128912121', 'OKE', '00.000.000.0-000.001', '1111111111111112', 'True'),
(17, 'PT. HELIOS', 'TEST ALAMAT                                                                                    ', '088212', 'ANNISA', '00.000.000.0-000.002', '1111111111111113', 'True');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tipe`
--

CREATE TABLE `tb_tipe` (
  `id_tipe` int(11) NOT NULL,
  `id_manufacture` int(11) NOT NULL,
  `tipe` varchar(60) NOT NULL,
  `spesifikasi` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_tipe`
--

INSERT INTO `tb_tipe` (`id_tipe`, `id_manufacture`, `tipe`, `spesifikasi`) VALUES
(1, 1, 'OPTIPLEX 3310', ''),
(2, 4, 'LQ-2190', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_trans_detail`
--

CREATE TABLE `tb_trans_detail` (
  `id_trans_detail` int(30) NOT NULL,
  `kode_transaksi` varchar(30) DEFAULT NULL,
  `tgl_transaksi` date NOT NULL,
  `kode_barang` varchar(30) DEFAULT NULL,
  `harga` decimal(10,0) DEFAULT NULL,
  `qty_masuk` int(10) DEFAULT NULL,
  `qty_keluar` int(10) DEFAULT NULL,
  `catatan` varchar(100) DEFAULT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '0',
  `gid` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_trans_detail`
--

INSERT INTO `tb_trans_detail` (`id_trans_detail`, `kode_transaksi`, `tgl_transaksi`, `kode_barang`, `harga`, `qty_masuk`, `qty_keluar`, `catatan`, `status`, `gid`) VALUES
(1, 'BM-JKT-02.001', '2018-02-20', 'B018.0001', '87000000', 2, NULL, 'UNTUK SH', '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_trans_keluar`
--

CREATE TABLE `tb_trans_keluar` (
  `id_transaksi` int(30) NOT NULL,
  `kode_transaksi` varchar(30) DEFAULT NULL,
  `tgl_transaksi` date DEFAULT NULL,
  `id_pengguna` varchar(30) DEFAULT NULL,
  `gid` int(10) DEFAULT NULL,
  `id_cabang` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_trans_keluar`
--

INSERT INTO `tb_trans_keluar` (`id_transaksi`, `kode_transaksi`, `tgl_transaksi`, `id_pengguna`, `gid`, `id_cabang`) VALUES
(1, 'BK-JKT-02.001', '2018-02-20', 'U018.0002', 1, '2');

-- --------------------------------------------------------

--
-- Table structure for table `tb_trans_masuk`
--

CREATE TABLE `tb_trans_masuk` (
  `id_transaksi` int(30) NOT NULL,
  `kode_transaksi` varchar(30) DEFAULT NULL,
  `no_po` varchar(30) DEFAULT NULL,
  `tgl_transaksi` date DEFAULT NULL,
  `id_supplier` int(20) DEFAULT NULL,
  `gid` int(10) DEFAULT NULL,
  `createddate` varchar(45) DEFAULT NULL,
  `createdby` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_trans_masuk`
--

INSERT INTO `tb_trans_masuk` (`id_transaksi`, `kode_transaksi`, `no_po`, `tgl_transaksi`, `id_supplier`, `gid`, `createddate`, `createdby`) VALUES
(1, 'BM-JKT-02.001', 'PO109/18/0001', '2018-02-20', 17, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(10) NOT NULL,
  `nama_user` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `role` enum('Administrator','Admin') COLLATE latin1_general_ci DEFAULT NULL,
  `last_login` datetime NOT NULL,
  `gid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `nama_user`, `username`, `password`, `role`, `last_login`, `gid`) VALUES
(8, 'Ahmad Sopian', 'root', '59520785981ac5a0b12fc284f01c301e8c7708fb', 'Administrator', '2018-02-20 06:41:31', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_wilayah`
--

CREATE TABLE `tb_wilayah` (
  `id_wilayah` int(11) NOT NULL,
  `namawilayah` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_wilayah`
--

INSERT INTO `tb_wilayah` (`id_wilayah`, `namawilayah`) VALUES
(1, 'Jabodetabek'),
(2, 'Jawa Timur'),
(3, 'Riau / Pekanbaru');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`kode_barang`);

--
-- Indexes for table `tb_cabang`
--
ALTER TABLE `tb_cabang`
  ADD PRIMARY KEY (`id_cabang`);

--
-- Indexes for table `tb_departemen`
--
ALTER TABLE `tb_departemen`
  ADD PRIMARY KEY (`id_dept`);

--
-- Indexes for table `tb_group`
--
ALTER TABLE `tb_group`
  ADD PRIMARY KEY (`gid`);

--
-- Indexes for table `tb_internet`
--
ALTER TABLE `tb_internet`
  ADD PRIMARY KEY (`id_internet`);

--
-- Indexes for table `tb_inv_history`
--
ALTER TABLE `tb_inv_history`
  ADD PRIMARY KEY (`id_history`);

--
-- Indexes for table `tb_inv_komputer`
--
ALTER TABLE `tb_inv_komputer`
  ADD PRIMARY KEY (`id_komputer`),
  ADD UNIQUE KEY `kode_komputer` (`kode_komputer`);

--
-- Indexes for table `tb_inv_laptop`
--
ALTER TABLE `tb_inv_laptop`
  ADD PRIMARY KEY (`id_laptop`),
  ADD UNIQUE KEY `kode_laptop` (`kode_laptop`);

--
-- Indexes for table `tb_inv_monitor`
--
ALTER TABLE `tb_inv_monitor`
  ADD PRIMARY KEY (`id_monitor`),
  ADD UNIQUE KEY `kode_monitor` (`kode_monitor`);

--
-- Indexes for table `tb_inv_network`
--
ALTER TABLE `tb_inv_network`
  ADD PRIMARY KEY (`id_network`),
  ADD UNIQUE KEY `kode_network` (`kode_network`);

--
-- Indexes for table `tb_inv_printer`
--
ALTER TABLE `tb_inv_printer`
  ADD PRIMARY KEY (`id_printer`);

--
-- Indexes for table `tb_jabatan`
--
ALTER TABLE `tb_jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indexes for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  ADD PRIMARY KEY (`id_kategori`),
  ADD UNIQUE KEY `nama_kategori` (`nama_kategori`);

--
-- Indexes for table `tb_maintenance`
--
ALTER TABLE `tb_maintenance`
  ADD PRIMARY KEY (`no_permohonan`);

--
-- Indexes for table `tb_maintenance_detail`
--
ALTER TABLE `tb_maintenance_detail`
  ADD PRIMARY KEY (`id_detail`);

--
-- Indexes for table `tb_manufacture`
--
ALTER TABLE `tb_manufacture`
  ADD PRIMARY KEY (`id_manufacture`);

--
-- Indexes for table `tb_menu`
--
ALTER TABLE `tb_menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `tb_pelayanan`
--
ALTER TABLE `tb_pelayanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pengguna`
--
ALTER TABLE `tb_pengguna`
  ADD PRIMARY KEY (`id_pengguna`,`nik`);

--
-- Indexes for table `tb_provider`
--
ALTER TABLE `tb_provider`
  ADD PRIMARY KEY (`id_provider`);

--
-- Indexes for table `tb_remote`
--
ALTER TABLE `tb_remote`
  ADD PRIMARY KEY (`id_remote`);

--
-- Indexes for table `tb_status`
--
ALTER TABLE `tb_status`
  ADD PRIMARY KEY (`id_status`);

--
-- Indexes for table `tb_supplier`
--
ALTER TABLE `tb_supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indexes for table `tb_tipe`
--
ALTER TABLE `tb_tipe`
  ADD PRIMARY KEY (`id_tipe`);

--
-- Indexes for table `tb_trans_detail`
--
ALTER TABLE `tb_trans_detail`
  ADD PRIMARY KEY (`id_trans_detail`);

--
-- Indexes for table `tb_trans_keluar`
--
ALTER TABLE `tb_trans_keluar`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `tb_trans_masuk`
--
ALTER TABLE `tb_trans_masuk`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `tb_wilayah`
--
ALTER TABLE `tb_wilayah`
  ADD PRIMARY KEY (`id_wilayah`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_cabang`
--
ALTER TABLE `tb_cabang`
  MODIFY `id_cabang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tb_departemen`
--
ALTER TABLE `tb_departemen`
  MODIFY `id_dept` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `tb_group`
--
ALTER TABLE `tb_group`
  MODIFY `gid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_internet`
--
ALTER TABLE `tb_internet`
  MODIFY `id_internet` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_inv_history`
--
ALTER TABLE `tb_inv_history`
  MODIFY `id_history` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_inv_komputer`
--
ALTER TABLE `tb_inv_komputer`
  MODIFY `id_komputer` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_inv_laptop`
--
ALTER TABLE `tb_inv_laptop`
  MODIFY `id_laptop` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_inv_monitor`
--
ALTER TABLE `tb_inv_monitor`
  MODIFY `id_monitor` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_inv_network`
--
ALTER TABLE `tb_inv_network`
  MODIFY `id_network` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_inv_printer`
--
ALTER TABLE `tb_inv_printer`
  MODIFY `id_printer` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_jabatan`
--
ALTER TABLE `tb_jabatan`
  MODIFY `id_jabatan` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tb_maintenance_detail`
--
ALTER TABLE `tb_maintenance_detail`
  MODIFY `id_detail` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_manufacture`
--
ALTER TABLE `tb_manufacture`
  MODIFY `id_manufacture` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_menu`
--
ALTER TABLE `tb_menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tb_pelayanan`
--
ALTER TABLE `tb_pelayanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_provider`
--
ALTER TABLE `tb_provider`
  MODIFY `id_provider` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_remote`
--
ALTER TABLE `tb_remote`
  MODIFY `id_remote` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_status`
--
ALTER TABLE `tb_status`
  MODIFY `id_status` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_supplier`
--
ALTER TABLE `tb_supplier`
  MODIFY `id_supplier` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tb_tipe`
--
ALTER TABLE `tb_tipe`
  MODIFY `id_tipe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_trans_detail`
--
ALTER TABLE `tb_trans_detail`
  MODIFY `id_trans_detail` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_trans_keluar`
--
ALTER TABLE `tb_trans_keluar`
  MODIFY `id_transaksi` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_trans_masuk`
--
ALTER TABLE `tb_trans_masuk`
  MODIFY `id_transaksi` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
