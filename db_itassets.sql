/*
SQLyog Ultimate v12.4.3 (64 bit)
MySQL - 10.1.28-MariaDB : Database - db_itaset
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_itaset` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `db_itaset`;

/*Table structure for table `tb_barang` */

DROP TABLE IF EXISTS `tb_barang`;

CREATE TABLE `tb_barang` (
  `kode_barang` varchar(30) NOT NULL DEFAULT '',
  `id_kategori` int(30) DEFAULT NULL,
  `nama_barang` varchar(50) DEFAULT NULL,
  `merek_barang` varchar(30) DEFAULT NULL,
  `spesifikasi` varchar(250) DEFAULT NULL,
  `satuan` enum('PCS','PACK','UNIT','ROLL','METER','BUAH') DEFAULT 'PCS',
  `gid` int(10) DEFAULT NULL,
  PRIMARY KEY (`kode_barang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_barang` */

insert  into `tb_barang`(`kode_barang`,`id_kategori`,`nama_barang`,`merek_barang`,`spesifikasi`,`satuan`,`gid`) values 
('B018.0001',1,'LATITUDE 3330','DELL','CORE I3, RAM 4 GB','PCS',1),
('B018.0002',1,'LQ-2190','EPSON','PRINTER EPSON LQ-2190','PCS',1),
('B018.0003',3,'HDD EXTERNAL','TRANSCEND','HDD EXTERNAL 1 TB','PCS',1);

/*Table structure for table `tb_cabang` */

DROP TABLE IF EXISTS `tb_cabang`;

CREATE TABLE `tb_cabang` (
  `id_cabang` int(11) NOT NULL AUTO_INCREMENT,
  `namacabang` varchar(50) NOT NULL,
  `wilayah` varchar(45) NOT NULL,
  PRIMARY KEY (`id_cabang`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

/*Data for the table `tb_cabang` */

insert  into `tb_cabang`(`id_cabang`,`namacabang`,`wilayah`) values 
(1,'Holding','Jabodetabek'),
(2,'PuloGadung','Jabodetabek'),
(3,'Body Repair','Jabodetabek'),
(4,'Bumi Serpong Damai','Jabodetabek'),
(5,'Pantai Indah Kapuk','Jabodetabek'),
(6,'Dewi Sartika','Jabodetabek'),
(7,'Sunter','Jabodetabek'),
(8,'MT. Haryono','Jabodetabek'),
(9,'Harapan Indah','Jabodetabek'),
(10,'PDC','Jabodetabek'),
(11,'Lippo Cikarang','Jabodetabek'),
(12,'KotaBumi','Jabodetabek'),
(13,'Gading Serpong','Jabodetabek'),
(14,'Puri Indah','Jabodetabek'),
(15,'Parung','Jabodetabek'),
(16,'Klender','Jabodetabek'),
(17,'Cipulir','Jabodetabek'),
(18,'Husein SastraNegara','Jabodetabek'),
(19,'Tanah Tinggi','Jabodetabek'),
(20,'Alam Sutera','Jabodetabek'),
(21,'Cakung (JGC)','Jabodetabek'),
(22,'Koja','Jabodetabek'),
(23,'Body Repair Cikarang','Jabodetabek');

/*Table structure for table `tb_departemen` */

DROP TABLE IF EXISTS `tb_departemen`;

CREATE TABLE `tb_departemen` (
  `id_dept` int(10) NOT NULL AUTO_INCREMENT,
  `gid` int(10) DEFAULT NULL,
  `nama` varchar(40) DEFAULT NULL,
  `parent` int(20) DEFAULT NULL,
  PRIMARY KEY (`id_dept`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=latin1;

/*Data for the table `tb_departemen` */

insert  into `tb_departemen`(`id_dept`,`gid`,`nama`,`parent`) values 
(2,1,'TECHNIC',1),
(3,1,'CIVIL',1),
(4,1,'IPAL',1),
(6,1,'QUALITY CONTROL',5),
(7,1,'PROSES CONTROL',5),
(8,1,'JAHIT/ KEMAS',5),
(9,1,'KEMAS',8),
(10,1,'DISTRIBUSI',8),
(11,1,'HRD & GA',0),
(16,1,'FINISHING',15),
(17,1,'PRINTING PREP',15),
(18,1,'PRINTING PROD',15),
(19,1,'DESIGNER PRINTING',15),
(21,1,'DYEING',20),
(23,1,'WAREHOUSE',22),
(24,1,'PURCHASING',22),
(25,1,'MATERIAL CONTROL',22),
(27,1,'PPIC PPC',26),
(28,1,'MATERIAL CONTROL',26),
(33,1,'PRODUKSI PPIC',32),
(35,1,'WEAVING 2 DAN 3 ',32),
(36,1,'QC WEAVING',32),
(37,1,'FINANCE & ACCOUNTING',0),
(38,1,'FINANCE',37),
(39,1,'ACCOUNTING',37),
(40,1,'IT',0),
(41,1,'IT Support',40),
(47,1,'SALES & MARKETING',0),
(48,1,'SALES SUPPORT',47),
(49,1,'SALES HEAD',47),
(57,2,'TEKNIK',0),
(58,2,'HRD & GA',0),
(59,2,'FINANCE & ACCOUNTING',0),
(70,2,'ICT',0),
(71,2,'NETWARE',70),
(72,1,'AFTER SALES',0),
(73,1,'SERVICE ADVISOR',72),
(74,1,'SERVICE ADMIN',72),
(75,1,'SRO',72),
(76,1,'KEPALA BENGKEL',72),
(77,1,'MARKETING SUPPORT',47),
(78,1,'CRO',47),
(79,1,'SPAREPART ADMIN',72),
(80,1,'KASIR SERVICE',37),
(81,1,'KASIR BESAR',37),
(82,1,'HRD/GA',11),
(83,1,'SALES ADMIN',47),
(84,1,'KEPALA CABANG',47);

/*Table structure for table `tb_group` */

DROP TABLE IF EXISTS `tb_group`;

CREATE TABLE `tb_group` (
  `gid` int(11) NOT NULL AUTO_INCREMENT,
  `nama_group` varchar(20) NOT NULL,
  `nama_alias` varchar(3) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `logo` varchar(50) NOT NULL,
  `logo_dashboard` varchar(30) NOT NULL,
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `tb_group` */

insert  into `tb_group`(`gid`,`nama_group`,`nama_alias`,`alamat`,`logo`,`logo_dashboard`) values 
(1,'Jabodetabek','JKT','Jabodetabek','k1.png','k1.png'),
(2,'Jawa Timur','SBY','Jawa Timur','k7.png','k7.jpg'),
(3,'Pekanbaru','PKU','Pekanbaru Riau','k2.png','k2.png');

/*Table structure for table `tb_internet` */

DROP TABLE IF EXISTS `tb_internet`;

CREATE TABLE `tb_internet` (
  `id_internet` int(11) NOT NULL AUTO_INCREMENT,
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
  `kode_internet` varchar(45) NOT NULL,
  `createddate` datetime NOT NULL,
  `createby` varchar(45) NOT NULL,
  PRIMARY KEY (`id_internet`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tb_internet` */

insert  into `tb_internet`(`id_internet`,`nama_provider`,`nama_cabang`,`nomor_pelanggan`,`tipe_koneksi`,`ip_public`,`spesifikasi`,`tanggal_kontrak`,`masa_kontrak`,`status`,`biaya`,`gid`,`kode_internet`,`createddate`,`createby`) values 
(1,'REMALA','Harapan Indah','YTH-1022','FIBER OPTIC','111.111.111.111','BANDWIDTH : 20 MBPS','2018-03-20','2018-04-15','AKTIF','3000000','1','KIC-JKT-03.001','0000-00-00 00:00:00','');

/*Table structure for table `tb_inv_history` */

DROP TABLE IF EXISTS `tb_inv_history`;

CREATE TABLE `tb_inv_history` (
  `id_history` int(11) NOT NULL AUTO_INCREMENT,
  `no_inventaris` varchar(20) DEFAULT NULL,
  `tgl_update` datetime DEFAULT NULL,
  `status` enum('Buat Baru','Dipinjamkan','Kembali','Mutasi') DEFAULT 'Buat Baru',
  `admin` varchar(30) DEFAULT NULL,
  `id_pengguna_awal` varchar(30) DEFAULT NULL,
  `id_pengguna` varchar(30) DEFAULT NULL,
  `lokasi` varchar(50) NOT NULL,
  `note` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id_history`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `tb_inv_history` */

insert  into `tb_inv_history`(`id_history`,`no_inventaris`,`tgl_update`,`status`,`admin`,`id_pengguna_awal`,`id_pengguna`,`lokasi`,`note`) values 
(1,'LAP-JKT-18001','2018-03-20 08:19:23','Buat Baru','Ahmad Sopian','U018.0003','U018.0003','','Inventory Baru'),
(2,'LAP-JKT-18001','2018-03-20 09:15:02','Buat Baru','Ahmad Sopian','U018.0003','U018.0003','','Inventory Baru'),
(3,'LAP-JKT-18001','2018-03-20 11:30:57','Buat Baru','Ahmad Sopian','U018.0003','U018.0003','','Inventory Baru'),
(4,'CPU-JKT-18001','2018-03-20 11:32:20','Buat Baru','Ahmad Sopian','U018.0003','U018.0003','','Inventory Baru'),
(5,'CPU-JKT-18002','2018-03-21 04:45:15','Buat Baru','Ahmad Sopian','U018.0003','U018.0003','','Inventory Baru'),
(6,'LAP-JKT-18002','2018-05-16 10:24:34','Buat Baru','Ahmad Sopian','U018.0003','U018.0003','','Inventory Baru'),
(7,'PRI-JKT-18001','2018-06-12 09:00:54','Buat Baru','Ahmad Sopian',NULL,'U018.0003','','New Inventory');

/*Table structure for table `tb_inv_komputer` */

DROP TABLE IF EXISTS `tb_inv_komputer`;

CREATE TABLE `tb_inv_komputer` (
  `id_komputer` int(20) NOT NULL AUTO_INCREMENT,
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
  `gid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_komputer`),
  UNIQUE KEY `kode_komputer` (`kode_komputer`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `tb_inv_komputer` */

insert  into `tb_inv_komputer`(`id_komputer`,`kode_komputer`,`aset_hrd`,`id_pengguna`,`nama_komputer`,`spesifikasi`,`serial_number`,`id_lisence`,`network`,`tgl_inv`,`tgl_garansi`,`harga_beli`,`status`,`note`,`gid`) values 
(1,'CPU-JKT-18001','BITJ01/7/6/2/763/7','U018.0003','DELL','ASASA','122342CC',NULL,'111.111.111.111','2018-03-20','2018-03-31',8500000,'DIGUNAKAN',NULL,1),
(2,'CPU-JKT-18002','bitj09/7/7/8/676/7','U018.0003','DELL','<p><strong>HJHJHJHJ</strong></p>','6756GHGHGH',NULL,'111.111.111.222','2018-03-21','2018-03-31',8500000,'DIGUNAKAN','TEST',1);

/*Table structure for table `tb_inv_laptop` */

DROP TABLE IF EXISTS `tb_inv_laptop`;

CREATE TABLE `tb_inv_laptop` (
  `id_laptop` int(30) NOT NULL AUTO_INCREMENT,
  `kode_laptop` varchar(20) NOT NULL,
  `id_pengguna` varchar(30) DEFAULT NULL,
  `nama_laptop` varchar(50) DEFAULT NULL,
  `tipe_laptop` varchar(50) NOT NULL,
  `spesifikasi` varchar(300) DEFAULT NULL,
  `serial_number` varchar(20) DEFAULT NULL,
  `id_lisence` varchar(30) DEFAULT NULL,
  `network` varchar(30) DEFAULT NULL,
  `tgl_inv` date DEFAULT NULL,
  `tgl_garansi` date DEFAULT NULL,
  `harga_beli` decimal(10,0) NOT NULL,
  `status` enum('DIGUNAKAN','SIAP DIGUNAKAN','DIPERBAIKI','DIPINJAMKAN','ARSIP/DISIMPAN','RUSAK/NOT FIXABLE','HILANG/DICURI') DEFAULT 'DIGUNAKAN',
  `note` varchar(100) DEFAULT NULL,
  `gid` int(11) DEFAULT NULL,
  `aset_hrd` varchar(50) NOT NULL,
  `createddate` datetime DEFAULT NULL,
  `createby` varchar(45) DEFAULT NULL,
  `lastupdate` datetime DEFAULT NULL,
  `updateby` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_laptop`),
  UNIQUE KEY `kode_laptop` (`kode_laptop`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `tb_inv_laptop` */

insert  into `tb_inv_laptop`(`id_laptop`,`kode_laptop`,`id_pengguna`,`nama_laptop`,`tipe_laptop`,`spesifikasi`,`serial_number`,`id_lisence`,`network`,`tgl_inv`,`tgl_garansi`,`harga_beli`,`status`,`note`,`gid`,`aset_hrd`,`createddate`,`createby`,`lastupdate`,`updateby`) values 
(3,'LAP-JKT-18001','U018.0003','DELL','','<h2><strong><span xss=removed>ASASAS</span></strong></h2>\r\n','ASDSVFCV',NULL,'111.111.111.111','2018-03-20','2018-03-31',8500000,'DIGUNAKAN','TEST',1,'BITJ01/7/6/7/263/7','2018-03-20 11:30:57','Ahmad Sopian',NULL,NULL),
(4,'LAP-JKT-18002','U018.0003','DELL','','<p><strong>TEST CKEDITOR zzz</strong></p><ol><li><strong>Test Okezz</strong></li></ol>','17811',NULL,'111.111.111.111','2018-05-16','2018-05-31',12000000,'DIGUNAKAN','ASA',1,'BITJ10/2/8/9/898/9',NULL,NULL,NULL,NULL);

/*Table structure for table `tb_inv_monitor` */

DROP TABLE IF EXISTS `tb_inv_monitor`;

CREATE TABLE `tb_inv_monitor` (
  `id_monitor` int(30) NOT NULL AUTO_INCREMENT,
  `kode_monitor` varchar(30) NOT NULL,
  `id_pengguna` varchar(30) DEFAULT NULL,
  `jenis_monitor` enum('LED','LCD','CRT','TOUCH SCREEN') DEFAULT 'LED',
  `spesifikasi` varchar(200) DEFAULT NULL,
  `tgl_inv` date DEFAULT NULL,
  `harga_beli` decimal(20,0) NOT NULL,
  `status` enum('DIGUNAKAN','SIAP DIGUNAKAN','DIPERBAIKI','DIPINJAMKAN','ARSIP/DISIMPAN','RUSAK/NOT FIXABLE','DIJUAL/HILANG') DEFAULT 'DIGUNAKAN',
  `note` varchar(100) DEFAULT NULL,
  `gid` int(11) DEFAULT NULL,
  `createddate` datetime NOT NULL,
  `createby` varchar(45) NOT NULL,
  PRIMARY KEY (`id_monitor`),
  UNIQUE KEY `kode_monitor` (`kode_monitor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_inv_monitor` */

/*Table structure for table `tb_inv_network` */

DROP TABLE IF EXISTS `tb_inv_network`;

CREATE TABLE `tb_inv_network` (
  `id_network` int(20) NOT NULL AUTO_INCREMENT,
  `kode_network` varchar(30) NOT NULL,
  `namacabang` varchar(50) DEFAULT NULL,
  `lokasi` varchar(50) DEFAULT NULL,
  `jenis_network` varchar(50) DEFAULT NULL,
  `spesifikasi` varchar(200) DEFAULT NULL,
  `tgl_inv` date DEFAULT NULL,
  `harga_beli` decimal(20,0) NOT NULL,
  `status` enum('DIGUNAKAN','SIAP DIGUNAKAN','DIPERBAIKI','DIPINJAMKAN','ARSIP/DISIMPAN','RUSAK/NOT FIXABLE','HILANG/DICURI') DEFAULT 'DIGUNAKAN',
  `gid` int(20) DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `createby` varchar(20) DEFAULT NULL,
  `updatedate` datetime DEFAULT NULL,
  `updateby` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_network`),
  UNIQUE KEY `kode_network` (`kode_network`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_inv_network` */

/*Table structure for table `tb_inv_printer` */

DROP TABLE IF EXISTS `tb_inv_printer`;

CREATE TABLE `tb_inv_printer` (
  `id_printer` int(20) NOT NULL AUTO_INCREMENT,
  `kode_printer` varchar(30) DEFAULT NULL,
  `aset_hrd` varchar(45) NOT NULL,
  `id_pengguna` varchar(30) DEFAULT NULL,
  `jenis_printer` enum('DESKJET','LASERJET','DOTMATRIX','ALL-IN','SCANER','FAX') DEFAULT 'DESKJET',
  `spesifikasi` varchar(200) DEFAULT NULL,
  `tgl_inv` date DEFAULT NULL,
  `harga_beli` decimal(20,0) NOT NULL,
  `status` enum('DIGUNAKAN','SIAP DIGUNAKAN','DIPERBAIKI','DIPINJAMKAN','ARSIP/DISIMPAN','RUSAK/NOT FIXABLE','HILANG/DICURI') DEFAULT 'DIGUNAKAN',
  `note` varchar(100) DEFAULT NULL,
  `gid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_printer`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tb_inv_printer` */

insert  into `tb_inv_printer`(`id_printer`,`kode_printer`,`aset_hrd`,`id_pengguna`,`jenis_printer`,`spesifikasi`,`tgl_inv`,`harga_beli`,`status`,`note`,`gid`) values 
(1,'PRI-JKT-18001','BITJ97/2/3/8/723/8','U018.0003','DESKJET','TEST','2018-06-12',200000,'DIGUNAKAN',NULL,1);

/*Table structure for table `tb_jabatan` */

DROP TABLE IF EXISTS `tb_jabatan`;

CREATE TABLE `tb_jabatan` (
  `id_jabatan` int(30) NOT NULL AUTO_INCREMENT,
  `nama_jabatan` varchar(50) NOT NULL,
  `jobdes` varchar(200) NOT NULL,
  PRIMARY KEY (`id_jabatan`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `tb_jabatan` */

insert  into `tb_jabatan`(`id_jabatan`,`nama_jabatan`,`jobdes`) values 
(1,'PRESIDEN DIREKTUR',''),
(2,'DIREKTUR',''),
(3,'SALES HEAD',''),
(4,'FOREMAN',''),
(5,'SENIOR FOREMAN',''),
(6,'STAFF',''),
(7,'SUPPORT',''),
(8,'KEPALA CABANG','');

/*Table structure for table `tb_kategori` */

DROP TABLE IF EXISTS `tb_kategori`;

CREATE TABLE `tb_kategori` (
  `id_kategori` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(20) NOT NULL,
  PRIMARY KEY (`id_kategori`),
  UNIQUE KEY `nama_kategori` (`nama_kategori`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `tb_kategori` */

insert  into `tb_kategori`(`id_kategori`,`nama_kategori`) values 
(1,'Komputer'),
(2,'Laptop'),
(3,'Periferal'),
(4,'Separepart'),
(5,'Network Device'),
(6,'ATK'),
(7,'Monitor'),
(8,'Printer'),
(9,'Alat'),
(10,'Habis Pakai');

/*Table structure for table `tb_lisensi` */

DROP TABLE IF EXISTS `tb_lisensi`;

CREATE TABLE `tb_lisensi` (
  `id_lisensi` int(11) NOT NULL AUTO_INCREMENT,
  `kode_lisensi` varchar(45) DEFAULT NULL,
  `id_supplier` varchar(20) DEFAULT NULL,
  `jenis_lisensi` varchar(45) DEFAULT NULL,
  `id_cabang` varchar(20) DEFAULT NULL,
  `key_lisensi` varchar(100) DEFAULT NULL,
  `tgl_pembelian` date DEFAULT NULL,
  `tgl_habis` date DEFAULT NULL,
  `jumlah_lisensi` varchar(45) DEFAULT NULL,
  `keterangan` varchar(200) DEFAULT NULL,
  `createby` varchar(45) DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `updateby` varchar(45) DEFAULT NULL,
  `updatedate` datetime DEFAULT NULL,
  `gid` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_lisensi`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `tb_lisensi` */

insert  into `tb_lisensi`(`id_lisensi`,`kode_lisensi`,`id_supplier`,`jenis_lisensi`,`id_cabang`,`key_lisensi`,`tgl_pembelian`,`tgl_habis`,`jumlah_lisensi`,`keterangan`,`createby`,`createdate`,`updateby`,`updatedate`,`gid`) values 
(1,'LIC-JKT-09.001','16','AntiVirus','17','123AGBJSA','2018-09-22','2019-09-22','10','<p>asas</p>','root','2018-09-22 00:00:00',NULL,NULL,'1'),
(2,'LIC-JKT-09.001','17','AntiVirus','1','ABCDEFG123','2018-09-22','2018-09-22','20','<p>asasa</p>','root','2018-09-22 18:20:43',NULL,NULL,'1'),
(3,'LIC-JKT-0918001','17','AntiVirus','13','1298298192','2018-09-22','2018-09-26','10','<p>asas</p>','root','2018-09-22 18:29:42',NULL,NULL,'1'),
(4,'LIC-JKT-0918001','16','Office','16','1298298192','2018-09-23','2018-10-07','11','<p>asas</p>','root','2018-09-22 18:30:21',NULL,NULL,'1');

/*Table structure for table `tb_maintenance` */

DROP TABLE IF EXISTS `tb_maintenance`;

CREATE TABLE `tb_maintenance` (
  `no_permohonan` varchar(15) NOT NULL DEFAULT '',
  `tgl_permohonan` datetime DEFAULT NULL,
  `tgl_estimasi` date DEFAULT NULL,
  `tgl_selesai` datetime DEFAULT NULL,
  `jenis_permohonan` varchar(50) DEFAULT NULL,
  `nama_kategori` varchar(20) DEFAULT NULL,
  `no_inventaris` varchar(20) DEFAULT NULL,
  `aset_hrd` varchar(50) DEFAULT NULL,
  `catatan_pemohon` varchar(100) DEFAULT NULL,
  `nama_pemohon` varchar(50) DEFAULT 'Admin',
  `catatan_perbaikan` varchar(100) DEFAULT NULL,
  `nama_supplier` varchar(50) DEFAULT NULL,
  `biaya` decimal(10,0) DEFAULT NULL,
  `lama_garansi` varchar(45) DEFAULT NULL,
  `status` enum('OPEN','PROCESS','PENDING','CLOSED') DEFAULT 'OPEN',
  `gid` int(11) DEFAULT NULL,
  `terbilang` varchar(100) DEFAULT NULL,
  `createddate` datetime NOT NULL,
  `createby` varchar(45) NOT NULL,
  PRIMARY KEY (`no_permohonan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

/*Data for the table `tb_maintenance` */

insert  into `tb_maintenance`(`no_permohonan`,`tgl_permohonan`,`tgl_estimasi`,`tgl_selesai`,`jenis_permohonan`,`nama_kategori`,`no_inventaris`,`aset_hrd`,`catatan_pemohon`,`nama_pemohon`,`catatan_perbaikan`,`nama_supplier`,`biaya`,`lama_garansi`,`status`,`gid`,`terbilang`,`createddate`,`createby`) values 
('MTC1.0603.001','2018-06-03 09:06:39','0000-00-00','0000-00-00 00:00:00','Hardware','Laptop','LAP-JKT-18001',NULL,'<p>asaasfsd</p>','AHMAD SOPIAN','OKEZZ','',0,NULL,'OPEN',1,NULL,'2018-06-03 09:06:39',''),
('MTC1.0813.001','2018-08-13 16:15:00','0000-00-00','2018-08-19 16:08:00','Hardware','Printer','PRI-JKT-18001',NULL,'<p>PRINTER TIDAK JELAS</p>','Admin','Ganti Head','PT. SEMESTA SINERGI',560000,'3 Bulan','PROCESS',1,NULL,'0000-00-00 00:00:00','');

/*Table structure for table `tb_maintenance_detail` */

DROP TABLE IF EXISTS `tb_maintenance_detail`;

CREATE TABLE `tb_maintenance_detail` (
  `id_detail` int(50) NOT NULL AUTO_INCREMENT,
  `no_permohonan` varchar(15) NOT NULL DEFAULT '',
  `tgl_proses` datetime DEFAULT NULL,
  `catatan` varchar(100) DEFAULT NULL,
  `user` varchar(80) NOT NULL,
  PRIMARY KEY (`id_detail`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

/*Data for the table `tb_maintenance_detail` */

insert  into `tb_maintenance_detail`(`id_detail`,`no_permohonan`,`tgl_proses`,`catatan`,`user`) values 
(9,'MTC1.0603.001','2018-06-03 09:06:39','<p>asaasfsd</p>','AHMAD SOPIAN'),
(10,'MTC1.0813.001','2018-08-13 11:16:48','PRINTER TIDAK JELAS','User');

/*Table structure for table `tb_manufacture` */

DROP TABLE IF EXISTS `tb_manufacture`;

CREATE TABLE `tb_manufacture` (
  `id_manufacture` int(11) NOT NULL AUTO_INCREMENT,
  `nama_manufacture` varchar(45) NOT NULL,
  PRIMARY KEY (`id_manufacture`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `tb_manufacture` */

insert  into `tb_manufacture`(`id_manufacture`,`nama_manufacture`) values 
(1,'DELL'),
(4,'EPSON'),
(5,'TRANSCEND');

/*Table structure for table `tb_menu` */

DROP TABLE IF EXISTS `tb_menu`;

CREATE TABLE `tb_menu` (
  `id_menu` int(11) NOT NULL AUTO_INCREMENT,
  `nama_menu` varchar(50) NOT NULL,
  `icon` varchar(40) NOT NULL,
  `link` varchar(30) NOT NULL,
  `parent` int(11) NOT NULL,
  `role` enum('Administrator','Admin') DEFAULT 'Admin',
  `aktif` enum('Y','N') NOT NULL,
  PRIMARY KEY (`id_menu`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

/*Data for the table `tb_menu` */

insert  into `tb_menu`(`id_menu`,`nama_menu`,`icon`,`link`,`parent`,`role`,`aktif`) values 
(1,'Dashboard','fa fa-home','dashboard',0,'Admin','Y'),
(2,'Master','fa fa-suitcase','#',0,'Administrator','Y'),
(3,'Barang','fa fa-plus-square text-aqua','barang',2,'Administrator','Y'),
(4,'Supplier','fa fa-truck text-aqua','supplier',2,'Administrator','Y'),
(5,'Pengguna','fa fa-user text-aqua','pengguna',2,'Administrator','Y'),
(6,'Inventory','fa fa-university','#',0,'Admin','Y'),
(7,'Laptop','fa fa-laptop text-aqua','laptop',6,'Admin','Y'),
(8,'PC/ Komputer','fa fa-desktop text-aqua','komputer',6,'Admin','Y'),
(9,'Monitor','fa fa-barcode text-aqua','monitor',6,'Admin','Y'),
(10,'Printer','fa fa-print text-aqua','printer',6,'Admin','Y'),
(11,'Device Suport','fa fa-sitemap text-aqua','device',6,'Admin','Y'),
(12,'Transaksi','fa fa-th-list','#',0,'Admin','Y'),
(13,'Barang Masuk','fa fa-shopping-cart text-aqua','masuk',12,'Admin','Y'),
(14,'Barang Keluar','fa fa-minus-square text-aqua','keluar',12,'Admin','Y'),
(16,'Stok Barang','fa fa-th-large text-aqua','stok',12,'Admin','Y'),
(17,'Maintenance','fa fa-wrench','#',0,'Administrator','Y'),
(19,'Dedpartemen','fa fa-align-center text-aqua','departemen',2,'Administrator','Y'),
(20,'Inventory','fa fa-list-alt text-aqua','maintenance',17,'Administrator','Y'),
(22,'Seting','fa fa-cogs','#',0,'Administrator','Y'),
(23,'Menu seting','fa  fa-bars text-aqua','menu',22,'Administrator','Y'),
(24,'User Seting','fa fa-user-circle text-aqua','user',22,'Administrator','Y'),
(25,'Archived','fa fa-save text-aqua','archived',6,'Admin','Y'),
(26,'Group Seting','fa fa-users text-aqua','group',22,'Admin','Y'),
(27,'Master Cabang','fa fa-building text-aqua','cabang',2,'Administrator','Y'),
(29,'Provider Internet','fa fa-signal text-aqua','provider',2,'Administrator','Y'),
(30,'Koneksi Internet','fa fa-globe text-aqua','internet',6,'Admin','Y'),
(31,'Manufacture (Merk)','fa fa-bullseye text-aqua','manufacture',2,'Administrator','Y'),
(32,'Laporan','fa fa-print','#',0,'Admin','Y'),
(33,'Inventory Laptop','fa fa-file-excel-o text-aqua','laptop/export_excel',32,'Admin','Y'),
(34,'Laporan Register','fa fa-book text-aqua','#',32,'Admin','Y'),
(35,'Tipe (Model)','fa fa-qrcode text-aqua','model',2,'Administrator','Y'),
(36,'Lisensi & Password','fa fa-key','#',0,'Administrator','Y'),
(37,'AntiVirus & Software','fa fa-syringe','lisensi',36,'Admin','Y'),
(38,'Mikrotik & Lainnya','fa fa-unlock-alt','#',36,'Admin','Y'),
(39,'Permintaan Barang','fas fa-box-open text-aqua','permintaan',12,'Admin','Y');

/*Table structure for table `tb_pelayanan` */

DROP TABLE IF EXISTS `tb_pelayanan`;

CREATE TABLE `tb_pelayanan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tgl_pelayanan` datetime DEFAULT NULL,
  `id_pengguna` varchar(50) DEFAULT NULL,
  `note` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_pelayanan` */

/*Table structure for table `tb_pengguna` */

DROP TABLE IF EXISTS `tb_pengguna`;

CREATE TABLE `tb_pengguna` (
  `id_pengguna` varchar(30) NOT NULL DEFAULT '',
  `nik` varchar(30) NOT NULL,
  `nama_pengguna` varchar(30) NOT NULL,
  `id_dept` int(30) NOT NULL,
  `id_jabatan` int(30) NOT NULL,
  `ruang_kantor` varchar(50) NOT NULL,
  `id_cabang` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_pengguna`,`nik`),
  UNIQUE KEY `nik_UNIQUE` (`nik`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_pengguna` */

insert  into `tb_pengguna`(`id_pengguna`,`nik`,`nama_pengguna`,`id_dept`,`id_jabatan`,`ruang_kantor`,`id_cabang`) values 
('U018.0003','51919','SOPIAN',41,4,'-','5'),
('U018.0005','512','TEST',82,2,'-','6');

/*Table structure for table `tb_permintaandtl` */

DROP TABLE IF EXISTS `tb_permintaandtl`;

CREATE TABLE `tb_permintaandtl` (
  `id_trans_detail` int(30) NOT NULL DEFAULT '0',
  `kode_permintaan` varchar(30) DEFAULT NULL,
  `tgl_permintaan` date NOT NULL,
  `kode_barang` varchar(30) DEFAULT NULL,
  `qty_permintaan` int(10) DEFAULT NULL,
  `catatan` varchar(100) DEFAULT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '0',
  `gid` varchar(45) NOT NULL,
  `createddate` date DEFAULT NULL,
  `createby` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_permintaandtl` */

/*Table structure for table `tb_permintaanhdr` */

DROP TABLE IF EXISTS `tb_permintaanhdr`;

CREATE TABLE `tb_permintaanhdr` (
  `id_permintaan` int(30) NOT NULL DEFAULT '0',
  `kode_permintaan` varchar(30) DEFAULT NULL,
  `tgl_permintaan` date DEFAULT NULL,
  `id_supplier` int(20) DEFAULT NULL,
  `scan_formulir` varchar(45) DEFAULT NULL,
  `gid` int(10) DEFAULT NULL,
  `createddate` varchar(45) DEFAULT NULL,
  `createdby` varchar(45) DEFAULT NULL,
  `status_permintaan` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_permintaanhdr` */

/*Table structure for table `tb_provider` */

DROP TABLE IF EXISTS `tb_provider`;

CREATE TABLE `tb_provider` (
  `id_provider` int(11) NOT NULL AUTO_INCREMENT,
  `nama_provider` varchar(45) NOT NULL,
  `telpon_provider` varchar(45) NOT NULL,
  `nama_sales` varchar(45) NOT NULL,
  `telpon_sales` varchar(45) NOT NULL,
  `email_provider` varchar(50) NOT NULL,
  PRIMARY KEY (`id_provider`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tb_provider` */

insert  into `tb_provider`(`id_provider`,`nama_provider`,`telpon_provider`,`nama_sales`,`telpon_sales`,`email_provider`) values 
(1,'REMALA','09981828172','SOPIAN','01201892188','cs.test@test.com');

/*Table structure for table `tb_remote` */

DROP TABLE IF EXISTS `tb_remote`;

CREATE TABLE `tb_remote` (
  `id_remote` int(11) NOT NULL AUTO_INCREMENT,
  `namacabang` varchar(45) NOT NULL,
  `nama_user` varchar(45) NOT NULL,
  `remote_address` varchar(45) NOT NULL,
  PRIMARY KEY (`id_remote`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_remote` */

/*Table structure for table `tb_status` */

DROP TABLE IF EXISTS `tb_status`;

CREATE TABLE `tb_status` (
  `id_status` int(10) NOT NULL AUTO_INCREMENT,
  `nama_status` varchar(20) NOT NULL,
  PRIMARY KEY (`id_status`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `tb_status` */

insert  into `tb_status`(`id_status`,`nama_status`) values 
(1,'DIGUNAKAN'),
(2,'SIAP DIGUNAKAN'),
(3,'DIPERBAIKI'),
(4,'ARSIP/DISIMPAN'),
(5,'RUSAK/NOT FIXABLE'),
(6,'DIJUAL/HILANG'),
(7,'DIPINJAMKAN');

/*Table structure for table `tb_supplier` */

DROP TABLE IF EXISTS `tb_supplier`;

CREATE TABLE `tb_supplier` (
  `id_supplier` int(20) NOT NULL AUTO_INCREMENT,
  `nama_supplier` varchar(50) NOT NULL,
  `alamat_supplier` varchar(100) NOT NULL,
  `telepon` varchar(20) NOT NULL,
  `nama_pic` varchar(45) NOT NULL,
  `nomor_npwp` varchar(45) NOT NULL,
  `nomor_ktp` varchar(45) NOT NULL,
  `isactive` varchar(5) NOT NULL,
  PRIMARY KEY (`id_supplier`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

/*Data for the table `tb_supplier` */

insert  into `tb_supplier`(`id_supplier`,`nama_supplier`,`alamat_supplier`,`telepon`,`nama_pic`,`nomor_npwp`,`nomor_ktp`,`isactive`) values 
(16,'PT. SEMESTA SINERGI','TEST','08128912121','OKE','00.000.000.0-000.001','1111111111111112','True'),
(17,'PT. HELIOS','TEST ALAMAT','088212','ANNISA','00.000.000.0-000.002','1111111111111113','True');

/*Table structure for table `tb_tipe` */

DROP TABLE IF EXISTS `tb_tipe`;

CREATE TABLE `tb_tipe` (
  `id_tipe` int(11) NOT NULL AUTO_INCREMENT,
  `id_manufacture` int(11) NOT NULL,
  `tipe` varchar(60) NOT NULL,
  `spesifikasi` varchar(200) NOT NULL,
  PRIMARY KEY (`id_tipe`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `tb_tipe` */

insert  into `tb_tipe`(`id_tipe`,`id_manufacture`,`tipe`,`spesifikasi`) values 
(1,1,'OPTIPLEX 3310',''),
(2,4,'LQ-2190','');

/*Table structure for table `tb_trans_detail` */

DROP TABLE IF EXISTS `tb_trans_detail`;

CREATE TABLE `tb_trans_detail` (
  `id_trans_detail` int(30) NOT NULL AUTO_INCREMENT,
  `id_cabang` varchar(100) DEFAULT NULL,
  `kode_transaksi` varchar(30) DEFAULT NULL,
  `tgl_transaksi` date NOT NULL,
  `kode_barang` varchar(30) DEFAULT NULL,
  `harga` decimal(10,0) DEFAULT NULL,
  `qty_masuk` int(10) DEFAULT NULL,
  `qty_keluar` int(10) DEFAULT NULL,
  `catatan` varchar(100) DEFAULT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '0',
  `gid` varchar(45) NOT NULL,
  `createddate` date DEFAULT NULL,
  `createby` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_trans_detail`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

/*Data for the table `tb_trans_detail` */

insert  into `tb_trans_detail`(`id_trans_detail`,`id_cabang`,`kode_transaksi`,`tgl_transaksi`,`kode_barang`,`harga`,`qty_masuk`,`qty_keluar`,`catatan`,`status`,`gid`,`createddate`,`createby`) values 
(19,NULL,'BM-JKT-08.001','2018-08-21','B018.0001',2000000,3,NULL,'untuk pku','1','1',NULL,NULL),
(21,NULL,'BK-JKT-08.001','2018-08-21','B018.0001',2000000,NULL,1,'UNTUK SH','1','1','2018-08-21',NULL);

/*Table structure for table `tb_trans_keluar` */

DROP TABLE IF EXISTS `tb_trans_keluar`;

CREATE TABLE `tb_trans_keluar` (
  `id_transaksi` int(30) NOT NULL AUTO_INCREMENT,
  `kode_transaksi` varchar(30) DEFAULT NULL,
  `tgl_transaksi` date DEFAULT NULL,
  `id_pengguna` varchar(30) DEFAULT NULL,
  `gid` int(10) DEFAULT NULL,
  `id_cabang` varchar(45) DEFAULT NULL,
  `createddate` datetime NOT NULL,
  `createby` varchar(45) NOT NULL,
  `form_permintaan` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_transaksi`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `tb_trans_keluar` */

insert  into `tb_trans_keluar`(`id_transaksi`,`kode_transaksi`,`tgl_transaksi`,`id_pengguna`,`gid`,`id_cabang`,`createddate`,`createby`,`form_permintaan`) values 
(8,'BK-JKT-08.001','2018-08-21','U018.0003',1,'PuloGadung','0000-00-00 00:00:00','',NULL),
(9,'BK-JKT-08.002','2018-08-22','U018.0005',1,'Bumi Serpong Damai','0000-00-00 00:00:00','',NULL),
(10,'BK-JKT-08.003','2018-08-22','U018.0005',1,'Pantai Indah Kapuk','0000-00-00 00:00:00','',NULL),
(11,'BK-JKT-08.004','2018-08-22','U018.0005',1,'Dewi Sartika','0000-00-00 00:00:00','',NULL);

/*Table structure for table `tb_trans_masuk` */

DROP TABLE IF EXISTS `tb_trans_masuk`;

CREATE TABLE `tb_trans_masuk` (
  `id_transaksi` int(30) NOT NULL AUTO_INCREMENT,
  `kode_transaksi` varchar(30) DEFAULT NULL,
  `no_po` varchar(30) DEFAULT NULL,
  `tgl_transaksi` date DEFAULT NULL,
  `id_supplier` int(20) DEFAULT NULL,
  `po` varchar(45) DEFAULT NULL,
  `tgl_po` date DEFAULT NULL,
  `afa` varchar(45) DEFAULT NULL,
  `penawaran` varchar(45) DEFAULT NULL,
  `gid` int(10) DEFAULT NULL,
  `createddate` varchar(45) DEFAULT NULL,
  `createdby` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_transaksi`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

/*Data for the table `tb_trans_masuk` */

insert  into `tb_trans_masuk`(`id_transaksi`,`kode_transaksi`,`no_po`,`tgl_transaksi`,`id_supplier`,`po`,`tgl_po`,`afa`,`penawaran`,`gid`,`createddate`,`createdby`) values 
(17,'BM-JKT-08.001','PO/18/IT-SBT/123','2018-08-21',17,NULL,'2018-08-21',NULL,NULL,1,NULL,NULL);

/*Table structure for table `tb_user` */

DROP TABLE IF EXISTS `tb_user`;

CREATE TABLE `tb_user` (
  `id_user` int(10) NOT NULL AUTO_INCREMENT,
  `nama_user` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `role` enum('Administrator','Admin') COLLATE latin1_general_ci DEFAULT NULL,
  `last_login` datetime NOT NULL,
  `gid` int(11) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `tb_user` */

insert  into `tb_user`(`id_user`,`nama_user`,`username`,`password`,`role`,`last_login`,`gid`) values 
(8,'Ahmad Sopian','root','59520785981ac5a0b12fc284f01c301e8c7708fb','Administrator','2018-09-22 16:03:32',1),
(9,'Cabang1','cabang1','db90c32f65f86203f9d3686efc1fa86e6d6c8284','Administrator','2018-03-26 05:06:17',1),
(10,'user','user','160fe3379cd498ad438e89f768fa3a00e477faa9','Admin','2018-06-22 12:07:44',1);

/*Table structure for table `tb_wilayah` */

DROP TABLE IF EXISTS `tb_wilayah`;

CREATE TABLE `tb_wilayah` (
  `id_wilayah` int(11) NOT NULL,
  `namawilayah` varchar(45) NOT NULL,
  PRIMARY KEY (`id_wilayah`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_wilayah` */

insert  into `tb_wilayah`(`id_wilayah`,`namawilayah`) values 
(1,'Jabodetabek'),
(2,'Jawa Timur'),
(3,'Riau / Pekanbaru');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
