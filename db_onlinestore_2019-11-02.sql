# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.5.5-10.4.8-MariaDB)
# Database: db_onlinestore
# Generation Time: 2019-11-02 03:51:25 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table tbl_barang
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tbl_barang`;

CREATE TABLE `tbl_barang` (
  `id_barang` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama_produk` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jml_produk` int(11) NOT NULL,
  `spesifikasi` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` char(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_barang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `tbl_barang` WRITE;
/*!40000 ALTER TABLE `tbl_barang` DISABLE KEYS */;

INSERT INTO `tbl_barang` (`id_barang`, `nama_produk`, `brand`, `jenis`, `harga`, `jml_produk`, `spesifikasi`, `gambar`)
VALUES
	(3,'Acer Predator triton 300','Acer','Gaming Laptop','15000000',2,'Core i7-9000HQ Nvidia GTX1080 RAM 32GB DDR4 STORAGE 512GB SSD','1572403993_laptop3.png'),
	(4,'Lenovo Legion Y520','Lenovo','Gaming Laptop','16000000',3,'Core i7-9000HQ Nvidia GTX1080 RAM 32GB DDR4 STORAGE 512GB SSD','1572498377_laptop4.0.png');

/*!40000 ALTER TABLE `tbl_barang` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tbl_checkout
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tbl_checkout`;

CREATE TABLE `tbl_checkout` (
  `id_checkout` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` double(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table tbl_keranjang
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tbl_keranjang`;

CREATE TABLE `tbl_keranjang` (
  `id_keranjang` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_keranjang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table tbl_konfirmasi
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tbl_konfirmasi`;

CREATE TABLE `tbl_konfirmasi` (
  `id_konfirmasi` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_checkout` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bukti` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_konfirmasi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table tbl_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tbl_users`;

CREATE TABLE `tbl_users` (
  `id_user` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `tbl_users` WRITE;
/*!40000 ALTER TABLE `tbl_users` DISABLE KEYS */;

INSERT INTO `tbl_users` (`id_user`, `nama_user`, `email`, `password`)
VALUES
	(2,'rheyno apria','rheynoapria11@gmail.com','qwerty'),
	(3,'fadli','fadlifas@faf.com','12345');

/*!40000 ALTER TABLE `tbl_users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
