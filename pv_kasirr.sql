/*
SQLyog Ultimate v8.63 
MySQL - 5.5.5-10.3.8-MariaDB : Database - pv_kasir
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`pv_kasir` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `pv_kasir`;

/*Table structure for table `keranjang` */

DROP TABLE IF EXISTS `keranjang`;

CREATE TABLE `keranjang` (
  `id_pesanan` varchar(20) NOT NULL,
  `admin_pesanan` varchar(50) NOT NULL,
  `nama_pesanan` varchar(50) NOT NULL,
  `harga_pesanan` int(20) NOT NULL,
  `banyak_pesanan` int(20) NOT NULL,
  PRIMARY KEY (`admin_pesanan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `keranjang` */

/*Table structure for table `pemesanan` */

DROP TABLE IF EXISTS `pemesanan`;

CREATE TABLE `pemesanan` (
  `id_produk` int(20) NOT NULL,
  `banyak_pesanan` int(20) DEFAULT NULL,
  `nama_pesanan` varchar(20) DEFAULT NULL,
  `admin_pesanan` varchar(20) DEFAULT NULL,
  `total_pesanan` int(20) DEFAULT NULL,
  PRIMARY KEY (`id_produk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pemesanan` */

/*Table structure for table `produk` */

DROP TABLE IF EXISTS `produk`;

CREATE TABLE `produk` (
  `id_produk` varchar(20) NOT NULL,
  `nama_produk` varchar(50) DEFAULT NULL,
  `harga_produk` int(20) DEFAULT NULL,
  `stok_jumlah` int(20) DEFAULT NULL,
  `total_produk` int(20) DEFAULT NULL,
  `kategori_produk` int(10) DEFAULT NULL,
  PRIMARY KEY (`id_produk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `produk` */

insert  into `produk`(`id_produk`,`nama_produk`,`harga_produk`,`stok_jumlah`,`total_produk`,`kategori_produk`) values ('BBDRNK01','boba ice',16000,100,0,0),('COO01','cookies coklat',7000,100,0,0),('NSGRG01','nasi goreng',15000,100,0,0),('RTBKR01','roti bakar keju',17000,100,0,0),('THTEA01','thai tea',15000,100,0,0);

/*Table structure for table `riwayat` */

DROP TABLE IF EXISTS `riwayat`;

CREATE TABLE `riwayat` (
  `no_pesanan` int(11) NOT NULL,
  `admin_pesanan` varchar(50) NOT NULL,
  `total_pesanan` int(11) NOT NULL,
  `tanggal_pesanan` date NOT NULL,
  PRIMARY KEY (`no_pesanan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `riwayat` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `user_acces` tinyint(5) DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`id_user`,`username`,`email`,`password`,`user_acces`) values (1,'hawwina','hawwina@gmail.com','hawwina',2);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
