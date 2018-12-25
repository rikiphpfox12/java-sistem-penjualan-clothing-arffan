# Host: localhost  (Version 5.5.5-10.1.32-MariaDB)
# Date: 2018-12-22 01:45:46
# Generator: MySQL-Front 6.1  (Build 1.23)


#
# Structure for table "barang"
#

DROP TABLE IF EXISTS `barang`;
CREATE TABLE `barang` (
  `KdBrg` varchar(6) NOT NULL DEFAULT '',
  `NmBrg` varchar(50) DEFAULT NULL,
  `Ukuran` varchar(10) DEFAULT NULL,
  `HargaBrg` int(6) DEFAULT NULL,
  `Stok` int(3) DEFAULT NULL,
  `KdKategori` int(3) DEFAULT NULL,
  PRIMARY KEY (`KdBrg`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

#
# Data for table "barang"
#

INSERT INTO `barang` VALUES ('B101','Panel Chambray Shirt','M',1000000,8,1),('B102','Denim Blank T-Shirt','S',100000,8,1),('B201','Armani Track Pants','L',120000,24,2);

#
# Structure for table "buktipesan"
#

DROP TABLE IF EXISTS `buktipesan`;
CREATE TABLE `buktipesan` (
  `NoPesan` varchar(7) NOT NULL DEFAULT '',
  `TglPesan` date DEFAULT NULL,
  `KdPlg` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`NoPesan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

#
# Data for table "buktipesan"
#

INSERT INTO `buktipesan` VALUES ('BP00001','2018-12-22',NULL),('BP00002','2018-12-22',NULL),('BP00003','2018-12-22',NULL),('BP00004','2018-12-22',NULL),('BP00005','2018-12-22',NULL),('BP00006','2018-12-22',NULL),('BP00007','2018-12-22',NULL),('BP00008','2018-12-22',NULL),('BP00009','2018-12-22',NULL);

#
# Structure for table "detilpesan"
#

DROP TABLE IF EXISTS `detilpesan`;
CREATE TABLE `detilpesan` (
  `NoPesan` varchar(7) NOT NULL DEFAULT '',
  `KdBrg` varchar(6) NOT NULL DEFAULT '0',
  `HrgPesan` int(6) DEFAULT NULL,
  `JmlPesan` int(3) DEFAULT NULL,
  PRIMARY KEY (`NoPesan`,`KdBrg`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

#
# Data for table "detilpesan"
#

INSERT INTO `detilpesan` VALUES ('BP00001','B102',100000,1),('BP00002','B102',100000,1),('BP00002','B201',120000,1),('BP00003','B101',1000000,2),('BP00004','B201',120000,1),('BP00005','B101',1000000,1),('BP00006','B201',120000,3),('BP00007','B201',120000,1),('BP00008','B101',1000000,1),('BP00009','B201',120000,1),('Ich ken','B101',1000,1);

#
# Structure for table "kategori"
#

DROP TABLE IF EXISTS `kategori`;
CREATE TABLE `kategori` (
  `KdKategori` varchar(3) NOT NULL DEFAULT '',
  `NmKategori` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`KdKategori`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

#
# Data for table "kategori"
#

INSERT INTO `kategori` VALUES ('1','Atasan'),('2','Bawahan'),('3','Sepatu'),('4','Aksesoris');

#
# Structure for table "pelanggan"
#

DROP TABLE IF EXISTS `pelanggan`;
CREATE TABLE `pelanggan` (
  `KdPlg` varchar(6) NOT NULL DEFAULT '',
  `NmPlg` varchar(50) DEFAULT NULL,
  `AlamatPlg` varchar(50) DEFAULT NULL,
  `TelpPlg` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`KdPlg`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

#
# Data for table "pelanggan"
#

INSERT INTO `pelanggan` VALUES ('1','lusi','jakarta\n\t','089324'),('2','Fajar','Jakarta','1');
