-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: thoitrang
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `banggia`
--

DROP TABLE IF EXISTS `banggia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banggia` (
  `MAMH` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `MANV` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `NGAYAPDUNG` date NOT NULL,
  `GIAMOI` int NOT NULL,
  PRIMARY KEY (`MAMH`,`MANV`,`NGAYAPDUNG`),
  KEY `FK_BANGGIA_NHANVIEN` (`MANV`),
  CONSTRAINT `FK_BANGGIA_MATHANG` FOREIGN KEY (`MAMH`) REFERENCES `mathang` (`MAMH`),
  CONSTRAINT `FK_BANGGIA_NHANVIEN` FOREIGN KEY (`MANV`) REFERENCES `nhanvien` (`MANV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banggia`
--

LOCK TABLES `banggia` WRITE;
/*!40000 ALTER TABLE `banggia` DISABLE KEYS */;
INSERT INTO `banggia` VALUES ('MH1','NV1','2021-02-02',3000),('MH2','NV2','2021-02-02',2500),('MH3','NV3','2021-02-02',2500),('MH4','NV4','2021-02-02',2000),('MH5','NV1','2021-02-02',2000),('MH6','NV2','2021-02-02',1700),('MH7','NV3','2021-02-02',4300),('MH8','NV4','2021-02-02',3400);
/*!40000 ALTER TABLE `banggia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chatlieu`
--

DROP TABLE IF EXISTS `chatlieu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chatlieu` (
  `MAVAI` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `TENVAI` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `MACL` varchar(10) NOT NULL,
  PRIMARY KEY (`MAVAI`),
  UNIQUE KEY `UK_TENVAI` (`TENVAI`),
  UNIQUE KEY `UK2g39wwetaq5k5k3lornkes1se` (`TENVAI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chatlieu`
--

LOCK TABLES `chatlieu` WRITE;
/*!40000 ALTER TABLE `chatlieu` DISABLE KEYS */;
/*!40000 ALTER TABLE `chatlieu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chinhanh`
--

DROP TABLE IF EXISTS `chinhanh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chinhanh` (
  `MACN` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `TENCN` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`MACN`),
  UNIQUE KEY `UK_TENCN` (`TENCN`),
  UNIQUE KEY `UKr8y5hjws3dxox0y6mor3b3x5d` (`TENCN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chinhanh`
--

LOCK TABLES `chinhanh` WRITE;
/*!40000 ALTER TABLE `chinhanh` DISABLE KEYS */;
INSERT INTO `chinhanh` VALUES ('CN1','CHI NHÃNH 1'),('CN2','CHI NHÃNH 2'),('CN3','CHI NHÃNH 3');
/*!40000 ALTER TABLE `chinhanh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctddh`
--

DROP TABLE IF EXISTS `ctddh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ctddh` (
  `MADDH` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `MAMH` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `SOLUONG` int NOT NULL,
  `DONGIA` int NOT NULL,
  PRIMARY KEY (`MADDH`,`MAMH`),
  KEY `FK_CTDDH_MATHANG` (`MAMH`),
  CONSTRAINT `FK_CTDDH_DONDATHANG` FOREIGN KEY (`MADDH`) REFERENCES `dondathang` (`MADDH`),
  CONSTRAINT `FK_CTDDH_MATHANG` FOREIGN KEY (`MAMH`) REFERENCES `mathang` (`MAMH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctddh`
--

LOCK TABLES `ctddh` WRITE;
/*!40000 ALTER TABLE `ctddh` DISABLE KEYS */;
INSERT INTO `ctddh` VALUES ('DDH1','MH1',20,2500),('DDH1','MH2',20,2000),('DDH1','MH3',30,2000),('DDH2','MH4',20,1500),('DDH2','MH5',35,1700),('DDH3','MH6',40,1200),('DDH3','MH7',35,4000),('DDH3','MH8',20,3000);
/*!40000 ALTER TABLE `ctddh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctdkm`
--

DROP TABLE IF EXISTS `ctdkm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ctdkm` (
  `MADKM` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `MAMH` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `MUCGIAMGIA` double NOT NULL,
  PRIMARY KEY (`MADKM`,`MAMH`),
  KEY `FK_CTDKM_MATHANG` (`MAMH`),
  CONSTRAINT `FK_CTDKM_DOTKHUYENMAI` FOREIGN KEY (`MADKM`) REFERENCES `ctkhuyenmai` (`MADKM`),
  CONSTRAINT `FK_CTDKM_MATHANG` FOREIGN KEY (`MAMH`) REFERENCES `mathang` (`MAMH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctdkm`
--

LOCK TABLES `ctdkm` WRITE;
/*!40000 ALTER TABLE `ctdkm` DISABLE KEYS */;
INSERT INTO `ctdkm` VALUES ('DKM1','MH1',0.5),('DKM1','MH2',0.1),('DKM2','MH3',0.15),('DKM2','MH4',0.2);
/*!40000 ALTER TABLE `ctdkm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cthd`
--

DROP TABLE IF EXISTS `cthd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cthd` (
  `SOHD` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `MAMH` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `SOLUONG` int NOT NULL,
  PRIMARY KEY (`SOHD`,`MAMH`),
  KEY `FK_CTHD_MATHANG` (`MAMH`),
  CONSTRAINT `FK_CTHD_HOADON` FOREIGN KEY (`SOHD`) REFERENCES `hoadon` (`SOHD`),
  CONSTRAINT `FK_CTHD_MATHANG` FOREIGN KEY (`MAMH`) REFERENCES `mathang` (`MAMH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cthd`
--

LOCK TABLES `cthd` WRITE;
/*!40000 ALTER TABLE `cthd` DISABLE KEYS */;
INSERT INTO `cthd` VALUES ('HD1','MH2',1),('HD2','MH1',1);
/*!40000 ALTER TABLE `cthd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctkhuyenmai`
--

DROP TABLE IF EXISTS `ctkhuyenmai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ctkhuyenmai` (
  `MADKM` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `LYDOKM` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `NGAYBD` date NOT NULL,
  `NGAYKT` date NOT NULL,
  `MANV` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`MADKM`),
  KEY `FK_DOTKHUYENMAI_NHANVIEN` (`MANV`),
  CONSTRAINT `FK_DOTKHUYENMAI_NHANVIEN` FOREIGN KEY (`MANV`) REFERENCES `nhanvien` (`MANV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctkhuyenmai`
--

LOCK TABLES `ctkhuyenmai` WRITE;
/*!40000 ALTER TABLE `ctkhuyenmai` DISABLE KEYS */;
INSERT INTO `ctkhuyenmai` VALUES ('DKM1','ABC','2022-11-26','2022-12-12','NV1'),('DKM2','ABC','2022-11-26','2022-12-20','NV2');
/*!40000 ALTER TABLE `ctkhuyenmai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctpd`
--

DROP TABLE IF EXISTS `ctpd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ctpd` (
  `MAPD` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `MAMH` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `SOLUONG` int NOT NULL,
  PRIMARY KEY (`MAPD`,`MAMH`),
  KEY `FK_CTPD_MATHANG` (`MAMH`),
  CONSTRAINT `FK_CTPD_MATHANG` FOREIGN KEY (`MAMH`) REFERENCES `mathang` (`MAMH`),
  CONSTRAINT `FK_CTPD_PHIEUDAT` FOREIGN KEY (`MAPD`) REFERENCES `phieudat` (`MAPD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctpd`
--

LOCK TABLES `ctpd` WRITE;
/*!40000 ALTER TABLE `ctpd` DISABLE KEYS */;
INSERT INTO `ctpd` VALUES ('PD1','MH1',1),('PD2','MH2',1),('PD3','MH3',2);
/*!40000 ALTER TABLE `ctpd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctpn`
--

DROP TABLE IF EXISTS `ctpn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ctpn` (
  `MAPN` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `MAMH` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `SOLUONG` int NOT NULL,
  `DONGIA` int NOT NULL,
  `MADDH` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`MAPN`,`MAMH`),
  KEY `FK_CTPN_DONDATHANG` (`MADDH`),
  KEY `FK_CTPN_MATHANG` (`MAMH`),
  CONSTRAINT `FK_CTPN_DONDATHANG` FOREIGN KEY (`MADDH`) REFERENCES `dondathang` (`MADDH`),
  CONSTRAINT `FK_CTPN_MATHANG` FOREIGN KEY (`MAMH`) REFERENCES `mathang` (`MAMH`),
  CONSTRAINT `FK_CTPN_PHIEUNHAP` FOREIGN KEY (`MAPN`) REFERENCES `phieunhap` (`MAPN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctpn`
--

LOCK TABLES `ctpn` WRITE;
/*!40000 ALTER TABLE `ctpn` DISABLE KEYS */;
INSERT INTO `ctpn` VALUES ('PN1','MH1',20,2500,NULL),('PN1','MH2',20,2000,NULL),('PN1','MH3',30,2000,NULL),('PN2','MH4',20,1500,NULL),('PN2','MH5',35,1700,NULL),('PN3','MH6',40,1200,NULL),('PN3','MH7',35,4000,NULL),('PN3','MH8',20,3000,NULL);
/*!40000 ALTER TABLE `ctpn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctpx`
--

DROP TABLE IF EXISTS `ctpx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ctpx` (
  `MAPX` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `MAMH` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `SOLUONG` int NOT NULL,
  PRIMARY KEY (`MAPX`,`MAMH`),
  KEY `FK_CTPX_MATHANG` (`MAMH`),
  CONSTRAINT `FK_CTPX_MATHANG` FOREIGN KEY (`MAMH`) REFERENCES `mathang` (`MAMH`),
  CONSTRAINT `FK_CTPX_PHIEUXUAT` FOREIGN KEY (`MAPX`) REFERENCES `phieuxuat` (`MAPX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctpx`
--

LOCK TABLES `ctpx` WRITE;
/*!40000 ALTER TABLE `ctpx` DISABLE KEYS */;
INSERT INTO `ctpx` VALUES ('PX1','MH1',10),('PX1','MH2',10),('PX2','MH3',10),('PX2','MH4',15),('PX3','MH6',20),('PX3','MH7',15);
/*!40000 ALTER TABLE `ctpx` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `danhgia`
--

DROP TABLE IF EXISTS `danhgia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `danhgia` (
  `TENTK` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `MAMH` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `DANHGIA` int NOT NULL,
  PRIMARY KEY (`TENTK`,`MAMH`),
  KEY `FK_DANHGIA_MATHANG` (`MAMH`),
  CONSTRAINT `FK_DANHGIA_MATHANG` FOREIGN KEY (`MAMH`) REFERENCES `mathang` (`MAMH`) ON UPDATE CASCADE,
  CONSTRAINT `FK_DANHGIA_TAIKHOAN` FOREIGN KEY (`TENTK`) REFERENCES `taikhoan` (`TENTK`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `danhgia`
--

LOCK TABLES `danhgia` WRITE;
/*!40000 ALTER TABLE `danhgia` DISABLE KEYS */;
/*!40000 ALTER TABLE `danhgia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dondathang`
--

DROP TABLE IF EXISTS `dondathang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dondathang` (
  `MADDH` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `NGAYDAT` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `MANCC` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `MANV` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`MADDH`),
  KEY `FK_DONDATHANG_NHACUNGCAP` (`MANCC`),
  KEY `FK_DONDATHANG_NHANVIEN` (`MANV`),
  CONSTRAINT `FK_DONDATHANG_NHACUNGCAP` FOREIGN KEY (`MANCC`) REFERENCES `nhacungcap` (`MANCC`),
  CONSTRAINT `FK_DONDATHANG_NHANVIEN` FOREIGN KEY (`MANV`) REFERENCES `nhanvien` (`MANV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dondathang`
--

LOCK TABLES `dondathang` WRITE;
/*!40000 ALTER TABLE `dondathang` DISABLE KEYS */;
INSERT INTO `dondathang` VALUES ('DDH1','2022-10-26','NCC1','NV1'),('DDH2','2022-10-26','NCC2','NV2'),('DDH3','2022-10-26','NCC3','NV3');
/*!40000 ALTER TABLE `dondathang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dotkhuyenmai`
--

DROP TABLE IF EXISTS `dotkhuyenmai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dotkhuyenmai` (
  `MADKM` varchar(10) NOT NULL,
  `LYDOKM` varchar(100) NOT NULL,
  `NGAYBD` date NOT NULL,
  `NGAYKT` date NOT NULL,
  `MANV` varchar(10) NOT NULL,
  PRIMARY KEY (`MADKM`),
  KEY `FKbow7g6551a9bmxn1m6b17j45i` (`MANV`),
  CONSTRAINT `FKbow7g6551a9bmxn1m6b17j45i` FOREIGN KEY (`MANV`) REFERENCES `nhanvien` (`MANV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dotkhuyenmai`
--

LOCK TABLES `dotkhuyenmai` WRITE;
/*!40000 ALTER TABLE `dotkhuyenmai` DISABLE KEYS */;
/*!40000 ALTER TABLE `dotkhuyenmai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hinhanhmh`
--

DROP TABLE IF EXISTS `hinhanhmh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hinhanhmh` (
  `MAHA` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `DUONGDAN` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `MAMH` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`MAHA`),
  KEY `FK_HINHANHMH_MATHANG` (`MAMH`),
  CONSTRAINT `FK_HINHANHMH_MATHANG` FOREIGN KEY (`MAMH`) REFERENCES `mathang` (`MAMH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hinhanhmh`
--

LOCK TABLES `hinhanhmh` WRITE;
/*!40000 ALTER TABLE `hinhanhmh` DISABLE KEYS */;
INSERT INTO `hinhanhmh` VALUES ('HA1','/images/Ophidia GG mini bag.png','MH1'),('HA11','/images/men-shirts/blue-stripe-shirt.jpg','MH3'),('HA12','/images/men-shirts/blue-stripe-shirt-1.jpg','MH3'),('HA13','/images/men-shirts/men-blue-stripe-shirt.jpg','MH3'),('HA14','/images/men-shirts/blue-stripe-shirt-men-1.jpg','MH3'),('HA15','/images/men-shirts/blue-stripe-shirt-men-2.jpg','MH3'),('HA2','/images/Ophidia small handbag.png','MH2'),('HA3','/images/An archival design from the 1930s inspired the_yyth.jpg','MH3'),('HA4','/images/Hero.jpg','MH4'),('HA5','/images/men-shirts/brown-shirt.jpg','MH5'),('HA6','/images/men-shirts/green-shirt.jpg','MH6'),('HA7','/images/men-shirts/pink-shirt.jpg','MH7'),('HA8','/images/Ophidia GG zip around wallet.png','MH8');
/*!40000 ALTER TABLE `hinhanhmh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hoadon`
--

DROP TABLE IF EXISTS `hoadon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hoadon` (
  `SOHD` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `NGAYIN` date DEFAULT NULL,
  `MASOTHUEKH` char(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `MANV` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `MAPD` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`SOHD`),
  UNIQUE KEY `UK_MAPD` (`MAPD`),
  UNIQUE KEY `UK88qi7iko15qjhom28cwjs77v5` (`MAPD`),
  KEY `FK_HOADON_KHACHHANG` (`MASOTHUEKH`),
  KEY `FK_HOADON_NHANVIEN` (`MANV`),
  CONSTRAINT `FK_HOADON_KHACHHANG` FOREIGN KEY (`MASOTHUEKH`) REFERENCES `khachhang` (`MASOTHUE`),
  CONSTRAINT `FK_HOADON_NHANVIEN` FOREIGN KEY (`MANV`) REFERENCES `nhanvien` (`MANV`),
  CONSTRAINT `FK_HOADON_PHIEUDAT` FOREIGN KEY (`MAPD`) REFERENCES `phieudat` (`MAPD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hoadon`
--

LOCK TABLES `hoadon` WRITE;
/*!40000 ALTER TABLE `hoadon` DISABLE KEYS */;
INSERT INTO `hoadon` VALUES ('HD1','2022-11-27',NULL,'NV1',NULL),('HD2','2022-11-27',NULL,'NV2','PD1');
/*!40000 ALTER TABLE `hoadon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `khachhang`
--

DROP TABLE IF EXISTS `khachhang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `khachhang` (
  `MAKH` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `HOTENKH` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `SOCMND` char(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `GIOITINH` tinyint(1) DEFAULT '0',
  `NGAYSINH` date NOT NULL,
  `DIACHI` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `SDT` char(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `EMAIL` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `MASOTHUE` char(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`MAKH`),
  UNIQUE KEY `UK_EMAIL` (`EMAIL`),
  UNIQUE KEY `UK_MASOTHUE` (`MASOTHUE`),
  UNIQUE KEY `UK_SDT` (`SDT`),
  UNIQUE KEY `UK_SOCMND` (`SOCMND`),
  UNIQUE KEY `UKtml5qsa6826bxfhlknql2xnr3` (`EMAIL`),
  UNIQUE KEY `UK76varnro4phn268r3xsxdf5ig` (`MASOTHUE`),
  UNIQUE KEY `UKbx8qu2h8u98xq5c67a7heabc9` (`SDT`),
  UNIQUE KEY `UK6ufded3obpiqxu8ccbghovwcv` (`SOCMND`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khachhang`
--

LOCK TABLES `khachhang` WRITE;
/*!40000 ALTER TABLE `khachhang` DISABLE KEYS */;
INSERT INTO `khachhang` VALUES ('KH1','TRáº¦N VÄ‚N A','191999250',0,'2000-03-03','TIá»€N GIANG','0969687690','AVANTRAN@GMAIL.COM','123456780'),('KH2','TRáº¦N VÄ‚N B','191999251',0,'2000-03-03','BÃŒNH DÆ¯Æ NG','0969687691','BVANTRAN@GMAIL.COM','123456781'),('KH3','TRáº¦N VÄ‚N C','191999252',0,'2000-03-03','Há»’ CHÃ MINH','0969687692','CVANTRAN@GMAIL.COM','123456782'),('KH4','TRáº¦N THá»Š D','191999253',1,'2000-03-03','BÃ€ Rá»ŠA - VÅ¨NG TÃ€U','0969687693','DTHITRAN@GMAIL.COM','123456783'),('KH5','TRáº¦N THá»Š E','191999254',1,'2000-03-03','KIÃŠN GIANG','0969687694','ETHITRAN@GMAIL.COM','123456784');
/*!40000 ALTER TABLE `khachhang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kho`
--

DROP TABLE IF EXISTS `kho`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kho` (
  `MAKHO` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `TENKHO` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`MAKHO`),
  KEY `UK_TENKHO` (`TENKHO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kho`
--

LOCK TABLES `kho` WRITE;
/*!40000 ALTER TABLE `kho` DISABLE KEYS */;
INSERT INTO `kho` VALUES ('NK1','NHÃ€ KHO 1'),('NK2','NHÃ€ KHO 2'),('NK3','NHÃ€ KHO 3');
/*!40000 ALTER TABLE `kho` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kho_mh_size`
--

DROP TABLE IF EXISTS `kho_mh_size`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kho_mh_size` (
  `MAKHO` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `MAMH` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `MASIZE` int NOT NULL,
  `SOLUONGTON` int NOT NULL,
  PRIMARY KEY (`MAKHO`,`MAMH`,`MASIZE`),
  KEY `FK_KHO_MH_SIZE_MATHANG` (`MAMH`),
  KEY `FK_KHO_MH_SIZE_SIZE` (`MASIZE`),
  CONSTRAINT `FK_KHO_MH_SIZE_KHO` FOREIGN KEY (`MAKHO`) REFERENCES `kho` (`MAKHO`),
  CONSTRAINT `FK_KHO_MH_SIZE_MATHANG` FOREIGN KEY (`MAMH`) REFERENCES `mathang` (`MAMH`),
  CONSTRAINT `FK_KHO_MH_SIZE_SIZE` FOREIGN KEY (`MASIZE`) REFERENCES `size` (`MASIZE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kho_mh_size`
--

LOCK TABLES `kho_mh_size` WRITE;
/*!40000 ALTER TABLE `kho_mh_size` DISABLE KEYS */;
/*!40000 ALTER TABLE `kho_mh_size` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loaikh`
--

DROP TABLE IF EXISTS `loaikh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loaikh` (
  `MALOAIKH` int NOT NULL,
  `TENLOAIKH` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`MALOAIKH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loaikh`
--

LOCK TABLES `loaikh` WRITE;
/*!40000 ALTER TABLE `loaikh` DISABLE KEYS */;
/*!40000 ALTER TABLE `loaikh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loaimh`
--

DROP TABLE IF EXISTS `loaimh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loaimh` (
  `MALOAIMH` int NOT NULL,
  `TENLOAIMH` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`MALOAIMH`),
  UNIQUE KEY `UK_TENLOAIMH` (`TENLOAIMH`),
  UNIQUE KEY `UKd6w0qdo4dvcirfjgc83cf5d8b` (`TENLOAIMH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loaimh`
--

LOCK TABLES `loaimh` WRITE;
/*!40000 ALTER TABLE `loaimh` DISABLE KEYS */;
/*!40000 ALTER TABLE `loaimh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mathang`
--

DROP TABLE IF EXISTS `mathang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mathang` (
  `MAMH` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `TENMH` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `MOTA` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `TRANGTHAI` int NOT NULL DEFAULT '1',
  `MANH` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `MALOAIMH` int DEFAULT NULL,
  `MALOAIKH` int DEFAULT NULL,
  `MAVAI` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `CACHLAM` int DEFAULT NULL,
  `MACL` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`MAMH`),
  KEY `FK_MATHANG_LOAIKH` (`MALOAIKH`),
  KEY `FK_MATHANG_LOAIMH` (`MALOAIMH`),
  KEY `FK_MATHANG_NHANHIEU` (`MANH`),
  KEY `FK_MATHANG_VAI` (`MAVAI`),
  CONSTRAINT `FK_MATHANG_LOAIKH` FOREIGN KEY (`MALOAIKH`) REFERENCES `loaikh` (`MALOAIKH`),
  CONSTRAINT `FK_MATHANG_LOAIMH` FOREIGN KEY (`MALOAIMH`) REFERENCES `loaimh` (`MALOAIMH`),
  CONSTRAINT `FK_MATHANG_NHANHIEU` FOREIGN KEY (`MANH`) REFERENCES `nhanhieu` (`MANH`),
  CONSTRAINT `FK_MATHANG_VAI` FOREIGN KEY (`MAVAI`) REFERENCES `chatlieu` (`MAVAI`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mathang`
--

LOCK TABLES `mathang` WRITE;
/*!40000 ALTER TABLE `mathang` DISABLE KEYS */;
INSERT INTO `mathang` VALUES ('MH1','TÃšI XÃCH MONOGRAM MULTICOLORE - KEEPALL','ABC',1,'NH1',NULL,NULL,NULL,NULL,NULL),('MH2','TÃšI XÃCH DAMIER GEANT AVENTURIER','ABC',1,'NH1',NULL,NULL,NULL,NULL,NULL),('MH3','NÆ¯á»šC HOA NAM GUCCI GUILTY POUR HOME EDP','ABC',1,'NH2',NULL,NULL,NULL,NULL,NULL),('MH4','NÆ¯á»šC HOA Ná»® GUCCI FLORA EDP','ABC',1,'NH2',NULL,NULL,NULL,NULL,NULL),('MH5','MH5 Double G cotton poplin shirt ','ABC',1,'NH3',NULL,NULL,NULL,NULL,NULL),('MH6','MH6 HERMES TÃšI XÃCH HM MINI DA CÃ Sáº¤U','ABC',1,'NH3',NULL,NULL,NULL,NULL,NULL),('MH7','MH7 NÆ¯á»šC HOA PRADA IRIS EAU DE PARFUM','ABC',1,'NH4',NULL,NULL,NULL,NULL,NULL),('MH8','TÃšI CHANEL 2.55','ABC',1,'NH5',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `mathang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhacungcap`
--

DROP TABLE IF EXISTS `nhacungcap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nhacungcap` (
  `MANCC` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `TENNCC` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `DIACHI` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `EMAIL` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `SDT` char(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`MANCC`),
  UNIQUE KEY `UK_EMAIL_NCC` (`EMAIL`),
  UNIQUE KEY `UK_SDT_NCC` (`SDT`),
  UNIQUE KEY `UK10lvfxiv7hae34yeputoip695` (`EMAIL`),
  UNIQUE KEY `UK8anse2f65q135amoj3qjio04n` (`SDT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhacungcap`
--

LOCK TABLES `nhacungcap` WRITE;
/*!40000 ALTER TABLE `nhacungcap` DISABLE KEYS */;
INSERT INTO `nhacungcap` VALUES ('NCC1','DÆ¯Æ NG VÄ‚N A','Há»’ CHÃ MINH','ADUONGVAN@GMAIL.COM','0969687562'),('NCC2','DÆ¯Æ NG VÄ‚N B','HÃ€ Ná»˜I','BDUONGVAN@GMAIL.COM','0969687563'),('NCC3','DÆ¯Æ NG VÄ‚N C','BÃŒNH DÆ¯Æ NG','CDUONGVAN@GMAIL.COM','0969687564'),('NCC4','DÆ¯Æ NG THá»Š D','Äá»’NG NAI','DTHIDUONG@GMAIL.COM','0969687565'),('NCC5','DÆ¯Æ NG THá»Š E','TÃ‚Y NINH','ETHIDUONG@GMAIL.COM','0969687566');
/*!40000 ALTER TABLE `nhacungcap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhanhieu`
--

DROP TABLE IF EXISTS `nhanhieu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nhanhieu` (
  `MANH` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `TENNH` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`MANH`),
  UNIQUE KEY `UK_TENNH` (`TENNH`),
  UNIQUE KEY `UKo0t4rklns7m0eypb78segok0f` (`TENNH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhanhieu`
--

LOCK TABLES `nhanhieu` WRITE;
/*!40000 ALTER TABLE `nhanhieu` DISABLE KEYS */;
INSERT INTO `nhanhieu` VALUES ('NH5','CHANEL'),('NH2','GUCCI'),('NH3','HERMES'),('NH1','LOUIS VUITTON'),('NH4','PRADA');
/*!40000 ALTER TABLE `nhanhieu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhanvien`
--

DROP TABLE IF EXISTS `nhanvien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nhanvien` (
  `MANV` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `TENNV` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `GIOITINH` tinyint(1) DEFAULT '0',
  `NGAYSINH` date NOT NULL,
  `DIACHI` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `SDT` char(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `EMAIL` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`MANV`),
  UNIQUE KEY `UK_EMAIL_NV` (`EMAIL`),
  UNIQUE KEY `UK_SDT_NV` (`SDT`),
  UNIQUE KEY `UKna252dkd6k17kc0rl5adgw32k` (`EMAIL`),
  UNIQUE KEY `UK25x876ftv1a6viph6h5gv09bh` (`SDT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhanvien`
--

LOCK TABLES `nhanvien` WRITE;
/*!40000 ALTER TABLE `nhanvien` DISABLE KEYS */;
INSERT INTO `nhanvien` VALUES ('NV1','NGUYá»„N VÄ‚N A',0,'2001-02-02','Há»’ CHÃ MINH','0969665482','ABC@GMAIL.COM'),('NV2','NGUYá»„N THá»Š B',1,'2000-03-03','HÃ€ Ná»˜I','0969665492','ABCD@GMAIL.COM'),('NV3','NGUYá»„N THá»Š C',1,'2000-03-03','Háº¢I PHÃ’NG','0969665493','CTHI@GMAIL.COM'),('NV4','NGUYá»„N VÄ‚N D',0,'2000-04-04','BÃŒNH DÆ¯Æ NG','0969665494','DVAN@GMAIL.COM');
/*!40000 ALTER TABLE `nhanvien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phanquyen`
--

DROP TABLE IF EXISTS `phanquyen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phanquyen` (
  `MAPQ` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `TENQUYEN` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`MAPQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phanquyen`
--

LOCK TABLES `phanquyen` WRITE;
/*!40000 ALTER TABLE `phanquyen` DISABLE KEYS */;
/*!40000 ALTER TABLE `phanquyen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phieudat`
--

DROP TABLE IF EXISTS `phieudat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phieudat` (
  `MAPD` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `NGAYDAT` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `HOTENNGUOINHAN` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `DIACHI` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `SDT` char(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `NGAYGIOGIAO` datetime(6) DEFAULT NULL,
  `MANV` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `MAKH` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`MAPD`),
  KEY `FK_PHIEUDAT_KHACHHANG` (`MAKH`),
  KEY `FK_PHIEUDAT_NHANVIEN` (`MANV`),
  CONSTRAINT `FK_PHIEUDAT_KHACHHANG` FOREIGN KEY (`MAKH`) REFERENCES `khachhang` (`MAKH`),
  CONSTRAINT `FK_PHIEUDAT_NHANVIEN` FOREIGN KEY (`MANV`) REFERENCES `nhanvien` (`MANV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phieudat`
--

LOCK TABLES `phieudat` WRITE;
/*!40000 ALTER TABLE `phieudat` DISABLE KEYS */;
INSERT INTO `phieudat` VALUES ('PD1','2022-11-25 17:00:00','PHAN VÄ‚N A','Há»’ CHÃ MINH','0969684510','2022-12-01 00:00:00.000000','NV1','KH1'),('PD2','2022-11-25 17:00:00','PHAN VÄ‚N B','BÃŒNH DÆ¯Æ NG','0969684511','2022-12-01 00:00:00.000000','NV2','KH2'),('PD3','2022-11-25 17:00:00','PHAN VÄ‚N C','TÃ‚Y NINH','0969684512','2022-12-01 00:00:00.000000','NV3','KH3');
/*!40000 ALTER TABLE `phieudat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phieunhap`
--

DROP TABLE IF EXISTS `phieunhap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phieunhap` (
  `MAPN` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `NGAYNHAP` date DEFAULT NULL,
  `MANV` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `MADDH` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `MAKHO` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`MAPN`),
  KEY `FK_PHIEUNHAP_KHO` (`MAKHO`),
  KEY `FK_PHIEUNHAP_NHANVIEN` (`MANV`),
  KEY `FKo9asv494af4my9q53f61yqbc2` (`MADDH`),
  CONSTRAINT `FK_PHIEUNHAP_KHO` FOREIGN KEY (`MAKHO`) REFERENCES `kho` (`MAKHO`),
  CONSTRAINT `FK_PHIEUNHAP_NHANVIEN` FOREIGN KEY (`MANV`) REFERENCES `nhanvien` (`MANV`),
  CONSTRAINT `FKo9asv494af4my9q53f61yqbc2` FOREIGN KEY (`MADDH`) REFERENCES `dondathang` (`MADDH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phieunhap`
--

LOCK TABLES `phieunhap` WRITE;
/*!40000 ALTER TABLE `phieunhap` DISABLE KEYS */;
INSERT INTO `phieunhap` VALUES ('PN1','2022-11-20','NV1','DDH1','NK1'),('PN2','2022-11-20','NV2','DDH2','NK2'),('PN3','2022-11-20','NV3','DDH3','NK3');
/*!40000 ALTER TABLE `phieunhap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phieuxuat`
--

DROP TABLE IF EXISTS `phieuxuat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phieuxuat` (
  `MAPX` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `NGAYXUAT` date DEFAULT NULL,
  `MANV` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `MAKHO` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `MACN` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`MAPX`),
  KEY `FK_PHIEUXUAT_CHINHANH` (`MACN`),
  KEY `FK_PHIEUXUAT_KHO` (`MAKHO`),
  KEY `FK_PHIEUXUAT_NHANVIEN` (`MANV`),
  CONSTRAINT `FK_PHIEUXUAT_CHINHANH` FOREIGN KEY (`MACN`) REFERENCES `chinhanh` (`MACN`),
  CONSTRAINT `FK_PHIEUXUAT_KHO` FOREIGN KEY (`MAKHO`) REFERENCES `kho` (`MAKHO`),
  CONSTRAINT `FK_PHIEUXUAT_NHANVIEN` FOREIGN KEY (`MANV`) REFERENCES `nhanvien` (`MANV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phieuxuat`
--

LOCK TABLES `phieuxuat` WRITE;
/*!40000 ALTER TABLE `phieuxuat` DISABLE KEYS */;
INSERT INTO `phieuxuat` VALUES ('PX1','2022-11-26','NV1','NK1','CN1'),('PX2','2022-11-26','NV2','NK2','CN2'),('PX3','2022-11-26','NV3','NK3','CN3');
/*!40000 ALTER TABLE `phieuxuat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quyen`
--

DROP TABLE IF EXISTS `quyen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quyen` (
  `MAQUYEN` int NOT NULL,
  `TENQUYEN` varchar(20) NOT NULL,
  PRIMARY KEY (`MAQUYEN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quyen`
--

LOCK TABLES `quyen` WRITE;
/*!40000 ALTER TABLE `quyen` DISABLE KEYS */;
/*!40000 ALTER TABLE `quyen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `size`
--

DROP TABLE IF EXISTS `size`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `size` (
  `MASIZE` int NOT NULL,
  `TENSIZE` char(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`MASIZE`),
  UNIQUE KEY `UK_TENSIZE` (`MASIZE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `size`
--

LOCK TABLES `size` WRITE;
/*!40000 ALTER TABLE `size` DISABLE KEYS */;
/*!40000 ALTER TABLE `size` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sysdiagrams`
--

DROP TABLE IF EXISTS `sysdiagrams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sysdiagrams` (
  `name` varchar(160) NOT NULL,
  `principal_id` int NOT NULL,
  `diagram_id` int NOT NULL,
  `version` int DEFAULT NULL,
  `definition` longblob,
  PRIMARY KEY (`diagram_id`),
  UNIQUE KEY `UK_principal_name` (`principal_id`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sysdiagrams`
--

LOCK TABLES `sysdiagrams` WRITE;
/*!40000 ALTER TABLE `sysdiagrams` DISABLE KEYS */;
INSERT INTO `sysdiagrams` VALUES ('Diagram_0',1,1,1,_binary '\Ð\Ïà¡±\Z\á\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0>\0\0þÿ	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0B\0\0\0\0\0\0þÿÿÿ\0\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿýÿÿÿD\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\n\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0\0þÿÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Z\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0!\0\0\0\"\0\0\0#\0\0\0$\0\0\0%\0\0\0&\0\0\0\'\0\0\0(\0\0\0)\0\0\0*\0\0\0+\0\0\0,\0\0\0-\0\0\0.\0\0\0/\0\0\00\0\0\01\0\0\02\0\0\03\0\0\04\0\0\05\0\0\06\0\0\07\0\0\08\0\0\09\0\0\0:\0\0\0;\0\0\0<\0\0\0=\0\0\0>\0\0\0?\0\0\0@\0\0\0A\0\0\0þÿÿÿþÿÿÿl\0\0\0þÿÿÿF\0\0\0G\0\0\0H\0\0\0I\0\0\0J\0\0\0K\0\0\0L\0\0\0M\0\0\0N\0\0\0O\0\0\0P\0\0\0Q\0\0\0R\0\0\0S\0\0\0T\0\0\0U\0\0\0V\0\0\0W\0\0\0X\0\0\0Y\0\0\0Z\0\0\0[\0\0\0\\\0\0\0]\0\0\0^\0\0\0_\0\0\0`\0\0\0a\0\0\0b\0\0\0c\0\0\0d\0\0\0e\0\0\0f\0\0\0g\0\0\0h\0\0\0i\0\0\0j\0\0\0k\0\0\0þÿÿÿm\0\0\0n\0\0\0þÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿR\0o\0o\0t\0 \0E\0n\0t\0r\0y\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\à\Ì[Hr\ÙC\0\0\0@\0\0\0\0\0\0f\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿÿÿÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0f\0\0\0\0\0\0o\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0@`\0\0\0\0\0\0\0C\0o\0m\0p\0O\0b\0j\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿÿÿÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0_\0\0\0\0\0\0\0\04\0\nP\0\0€h\0\0\0\0ÿÿP\0\0\0h\0\0\0\0}\0\0W\0\0K/\0\0]\0\01~\0\0Eõÿÿ\0\0Þ€[ñ•\Ð° \0ª\0½\Ë\\\0\0\00\0\0\0\0\0\0\0\0\08\0+\0\0\0	\0\0\0\Ù\æ°\é\Ð­Q\0 \ÉW9ô;„a\ÇC…5)†\á\ÕRø 2}²\Øb•B˜\'<%¢\Ú-\0\0,\0C \0\0\0\0\0\0\0\0\0\0SDM\Ò\ÑŽc\0`—\Ò\ßH4\É\Òwyw\Øp\0[„\rœ\0\0,\0C \0\0\0\0\0\0\0\0\0\0QDM\Ò\ÑŽc\0`—\Ò\ßH4\É\Òwyw\Øp\0[„\rœc\0\0\0l\0\0\0\ãW\0\04\0¥	\0\0\0\0€\0\0\0¤\0\0\0€\0\0	\0\0€SchGrid\0\0\0\0\0\0\0\0\0KHACHHANG\0\0\0\0\00\0¥	\0\0\0\0€\0\0\0¢\0\0\0€\0\0\0\0€SchGrid\0ž\0\0ž\0\0PHIEUDAT\0\0p\0¥	\0\0\0\0€\0\0\0j\0\0\0€\0\0G\0\0€Control\0y\0\0\â\0\0Relationship \'FK_PHIEUDAT_KHACHHANG\' between \'KHACHHANG\' and \'PHIEUDAT\'\0\0\0(\0µ\0\0\0\0€\0\0\01\0\0\0]\0\0\0€\0\0Control\0N\0\0\0\0\0\0,\0¥	\0\0\0\0€\0\0\0š\0\0\0€\0\0\0\0€SchGrid\0\Ò\0\0\Ò\0\0CTPD\0\0h\0¥	\0\0\0\0€\0\0\0j\0\0\0€\0\0=\0\0€Control\0!\0\0\r\0\0Relationship \'FK_CTPD_PHIEUDAT\' between \'PHIEUDAT\' and \'CTPD\'\0\0\0\0\0(\0µ\0\0\0\0€\0\0\01\0\0\0S\0\0\0€\0\0Control\0º!\0\0@\0\0\0\00\0¥	\0\0\0\0€\0\0\0 \0\0\0€\0\0\0\0€SchGrid\0p\0\0p\0\0MATHANG\0\0\0d\0¥	\0\0\0\0€	\0\0\0R\0\0\0€\0\0;\0\0€Control\0D\0\0o\0\0Relationship \'FK_CTPD_MATHANG\' between \'MATHANG\' and \'CTPD\'D\0\0(\0µ\0\0\0\0€\n\0\0\01\0\0\0Q\0\0\0€\0\0Control\0 \0\0\0\0\0\00\0¥	\0\0\0\0€\0\0\0 \0\0\0€\0\0\0\0€SchGrid\0\0\0\0\0BANGGIA\0\0\0l\0¥	\0\0\0\0€\0\0\0j\0\0\0€\0\0A\0\0€ControlT\é0\0\0R\0\0Relationship \'FK_BANGGIA_MATHANG\' between \'MATHANG\' and \'BANGGIA\'\0\0\0\0\0(\0µ\0\0\0\0€\r\0\0\01\0\0\0W\0\0\0€\0\0ControlT¥0\0\0|\0\0\0\00\0¥	\0\0\0\0€\0\0\0¢\0\0\0€\0\0\0\0€SchGrid\0(#\0\0f!\0\0CHATLIEU\0\0h\0¥	\0\0\0\0€\0\0\0j\0\0\0€\0\0>\0\0€Control\0l \0\0´\0\0Relationship \'FK_MATHANG_VAI\' between \'CHATLIEU\' and \'MATHANG\'\0\0\0\0(\0µ\0\0\0\0€\0\0\01\0\0\0O\0\0\0€\0\0Control\0\\\0\0x\Z\0\0\0\00\0¥	\0\0\0\0€\0\0\0ž\0\0\0€\0\0\0\0€SchGrid\0tõÿÿ”\0\0LOAIMHd\0\0\0h\0¥	\0\0\0\0€\0\0\0R\0\0\0€\0\0?\0\0€Control\0C\0\0o\0\0Relationship \'FK_MATHANG_LOAIMH\' between \'LOAIMH\' and \'MATHANG\'\0\0\0(\0µ\0\0\0\0€\0\0\01\0\0\0U\0\0\0€\0\0Control\0ˆ\0\0µ\0\0\0\04\0¥	\0\0\0\0€\0\0\0¤\0\0\0€\0\0	\0\0€SchGrid\0ýÿÿ2\0\0HINHANHMH\0\0\0\0\0p\0¥	\0\0\0\0€\0\0\0R\0\0\0€\0\0E\0\0€Control\0\á\0\01\0\0Relationship \'FK_HINHANHMH_MATHANG\' between \'MATHANG\' and \'HINHANHMH\'H\0\0(\0µ\0\0\0\0€\0\0\01\0\0\0[\0\0\0€\0\0Control\04\0\0\Æ\0\0\0\0,\0¥	\0\0\0\0€\0\0\0š\0\0\0€\0\0\0\0€SchGrid\0°\0\0\Ð \0\0SIZE\0\0,\0¥	\0\0\0\0€\0\0\0˜\0\0\0€\0\0\0\0€SchGridTtõÿÿ”\0\0KHOG\0\04\0¥	\0\0\0\0€\0\0\0¦\0\0\0€\0\0\n\0\0€SchGrid\0ýÿÿ2\0\0NHACUNGCAP\0\0\0\00\0¥	\0\0\0\0€\0\0\0¢\0\0\0€\0\0\0\0€SchGrid\0°\0\0\Ð \0\0NHANHIEU\0\0l\0¥	\0\0\0\0€ \0\0\0R\0\0\0€\0\0C\0\0€Control\0o\0\0¥(\0\0Relationship \'FK_MATHANG_NHANHIEU\' between \'NHANHIEU\' and \'MATHANG\'D\0\0(\0µ\0\0\0\0€!\0\0\01\0\0\0Y\0\0\0€\0\0Control\0F\n\0\0\Ø,\0\0\0\04\0¥	\0\0\0\0€\"\0\0\0¤\0\0\0€\0\0	\0\0€SchGrid\0\ä\0\0)\0\0PHIEUNHAP\0\0\0\0\0h\0¥	\0\0\0\0€#\0\0\0b\0\0\0€\0\0=\0\0€Control\0M\0\0i\0\0Relationship \'FK_PHIEUNHAP_KHO\' between \'KHO\' and \'PHIEUNHAP\'G\'\0\0\0(\0µ\0\0\0\0€$\0\0\01\0\0\0S\0\0\0€\0\0Control\0@\0\0A#\0\0\0\04\0¥	\0\0\0\0€%\0\0\0¦\0\0\0€\0\0\n\0\0€SchGrid\0\È\0\0¢0\0\0DONDATHANG\0\0\0\0x\0¥	\0\0\0\0€&\0\0\0b\0\0\0€\0\0M\0\0€ControlU\ë\0\0x(\0\0Relationship \'FK_DONDATHANG_NHACUNGCAP\' between \'NHACUNGCAP\' and \'DONDATHANG\'\0\0\0\0\0(\0µ\0\0\0\0€\'\0\0\01\0\0\0c\0\0\0€\0\0Control\0\\\0\0—.\0\0\0\0,\0¥	\0\0\0\0€(\0\0\0š\0\0\0€\0\0\0\0€SchGrid\0 \0\0@8\0\0CTPN\0\0l\0¥	\0\0\0\0€)\0\0\0R\0\0\0€\0\0A\0\0€Control\0ô\Z\0\0?7\0\0Relationship \'FK_CTPN_DONDATHANG\' between \'DONDATHANG\' and \'CTPN\'HMH\0\0(\0µ\0\0\0\0€*\0\0\01\0\0\0W\0\0\0€\0\0Control\01 \0\0\Ô6\0\0\0\0d\0¥	\0\0\0\0€+\0\0\0R\0\0\0€\0\0;\0\0€Control\0\0\0ò,\0\0Relationship \'FK_CTPN_MATHANG\' between \'MATHANG\' and \'CTPN\'P\0\0(\0µ\0\0\0\0€,\0\0\01\0\0\0Q\0\0\0€\0\0Control\0|\0\0J3\0\0\0\0h\0¥	\0\0\0\0€-\0\0\0j\0\0\0€\0\0?\0\0€Control\0\Ù\"\0\0„5\0\0Relationship \'FK_CTPN_PHIEUNHAP\' between \'PHIEUNHAP\' and \'CTPN\'\0\0\0(\0µ\0\0\0\0€.\0\0\01\0\0\0U\0\0\0€\0\0Control\03#\0\0®4\0\0\0\00\0¥	\0\0\0\0€/\0\0\0œ\0\0\0€\0\0\0\0€SchGrid\0T$\0\0t@\0\0CTDDHid\0\0\0l\0¥	\0\0\0\0€0\0\0\0R\0\0\0€\0\0C\0\0€Control\0S#\0\0m=\0\0Relationship \'FK_CTDDH_DONDATHANG\' between \'DONDATHANG\' and \'CTDDH\'\0\0\0(\0µ\0\0\0\0€1\0\0\01\0\0\0Y\0\0\0€\0\0Control\0\Î\0\0¢?\0\0\0\0h\0¥	\0\0\0\0€2\0\0\0R\0\0\0€\0\0=\0\0€ControlUS#\0\0ò,\0\0Relationship \'FK_CTDDH_MATHANG\' between \'MATHANG\' and \'CTDDH\'N\'\0\0\0(\0µ\0\0\0\0€3\0\0\01\0\0\0S\0\0\0€\0\0ControlU\à\0\0d7\0\0\0\04\0¥	\0\0\0\0€4\0\0\0¤\0\0\0€\0\0	\0\0€SchGrid\0tõÿÿ&\0\0PHIEUXUAT\0\0\0\0\0h\0¥	\0\0\0\0€5\0\0\0R\0\0\0€\0\0=\0\0€Control\0sôÿÿi\0\0Relationship \'FK_PHIEUXUAT_KHO\' between \'KHO\' and \'PHIEUXUAT\'N\'\0\0\0(\0µ\0\0\0\0€6\0\0\01\0\0\0S\0\0\0€\0\0Control\0¹\êÿÿq \0\0\0\0,\0¥	\0\0\0\0€7\0\0\0š\0\0\0€\0\0\0\0€SchGrid\0ýÿÿ´-\0\0CTPX\0\0d\0¥	\0\0\0\0€8\0\0\0R\0\0\0€\0\0;\0\0€Control\0\á\0\0³,\0\0Relationship \'FK_CTPX_MATHANG\' between \'MATHANG\' and \'CTPX\'T\0\0(\0µ\0\0\0\0€9\0\0\01\0\0\0Q\0\0\0€\0\0Control\0÷\0\0H,\0\0\0\0h\0¥	\0\0\0\0€:\0\0\0j\0\0\0€\0\0?\0\0€Control\0i\0\0ø*\0\0Relationship \'FK_CTPX_PHIEUXUAT\' between \'PHIEUXUAT\' and \'CTPX\'\0\0\0(\0µ\0\0\0\0€;\0\0\01\0\0\0U\0\0\0€\0\0Control\0š\r\0\0\"*\0\0\0\04\0¥	\0\0\0\0€<\0\0\0¨\0\0\0€\0\0\0\0€SchGrid\0°\0\0R5\0\0CTKHUYENMAI\0\0\00\0¥	\0\0\0\0€=\0\0\0œ\0\0\0€\0\0\0\0€SchGrid\0\ä\0\0†=\0\0CTDKMid\0\0\0p\0¥	\0\0\0\0€>\0\0\0j\0\0\0€\0\0F\0\0€Control\0¥\Z\0\0\Ê:\0\0Relationship \'FK_CTDKM_DOTKHUYENMAI\' between \'CTKHUYENMAI\' and \'CTDKM\'\0\0(\0µ\0\0\0\0€?\0\0\01\0\0\0]\0\0\0€\0\0Control\0T\0\0ô9\0\0\0\0h\0¥	\0\0\0\0€@\0\0\0R\0\0\0€\0\0=\0\0€Control\0o\0\0ò,\0\0Relationship \'FK_CTDKM_MATHANG\' between \'MATHANG\' and \'CTDKM\'X\'\0\0\0(\0µ\0\0\0\0€A\0\0\01\0\0\0S\0\0\0€\0\0ControlT\æ\0\0\í5\0\0\0\00\0¥	\0\0\0\0€B\0\0\0ž\0\0\0€\0\0\0\0€SchGrid\0‚\0\0$E\0\0HOADONd\0\0\0l\0¥	\0\0\0\0€C\0\0\0R\0\0\0€\0\0C\0\0€Control\0\0\0U\0\0Relationship \'FK_HOADON_KHACHHANG\' between \'KHACHHANG\' and \'HOADON\'D\0\0(\0µ\0\0\0\0€D\0\0\01\0\0\0Y\0\0\0€\0\0Control\0ü\0\0\î.\0\0\0\0l\0¥	\0\0\0\0€E\0\0\0R\0\0\0€\0\0A\0\0€Control\0\0\0¢\0\0Relationship \'FK_HOADON_PHIEUDAT\' between \'PHIEUDAT\' and \'HOADON\'TDK\0\0(\0µ\0\0\0\0€F\0\0\01\0\0\0W\0\0\0€\0\0Control\0\'\0\0”1\0\0\0\0,\0¥	\0\0\0\0€G\0\0\0š\0\0\0€\0\0\0\0€SchGrid\0tõÿÿ&\0\0CTHD\0\0d\0¥	\0\0\0\0€H\0\0\0b\0\0\0€\0\09\0\0€ControlTO\0\0b0\0\0Relationship \'FK_CTHD_HOADON\' between \'HOADON\' and \'CTHD\'DKM\0\0(\0µ\0\0\0\0€I\0\0\01\0\0\0O\0\0\0€\0\0Control\0]\0\0j;\0\0\0\0d\0¥	\0\0\0\0€J\0\0\0R\0\0\0€\0\0;\0\0€Control\0C\0\0%\0\0Relationship \'FK_CTHD_MATHANG\' between \'MATHANG\' and \'CTHD\'M\0\0(\0µ\0\0\0\0€K\0\0\01\0\0\0Q\0\0\0€\0\0Control\0\r\0\0ª$\0\0\0\00\0¥	\0\0\0\0€L\0\0\0¢\0\0\0€\0\0\0\0€SchGridUýÿÿ´-\0\0CHINHANH\0\0p\0¥	\0\0\0\0€M\0\0\0j\0\0\0€\0\0G\0\0€Control\0üÿÿø*\0\0Relationship \'FK_PHIEUXUAT_CHINHANH\' between \'CHINHANH\' and \'PHIEUXUAT\'\0\0\0(\0µ\0\0\0\0€N\0\0\01\0\0\0]\0\0\0€\0\0Control\0|\0\0\0\"*\0\0\0\00\0¥	\0\0\0\0€O\0\0\0 \0\0\0€\0\0\0\0€SchGrid\0°\0\0R5\0\0DANHGIA\0\0\0l\0¥	\0\0\0\0€P\0\0\0R\0\0\0€\0\0A\0\0€Control\0o\0\0ò,\0\0Relationship \'FK_DANHGIA_MATHANG\' between \'MATHANG\' and \'DANHGIA\'UXU\0\0(\0µ\0\0\0\0€Q\0\0\01\0\0\0W\0\0\0€\0\0Control\0\è\n\0\0\Ó1\0\0\0\00\0¥	\0\0\0\0€R\0\0\0¢\0\0\0€\0\0\0\0€SchGrid\0\ä\0\0ð<\0\0TAIKHOAN\0\0l\0¥	\0\0\0\0€S\0\0\0R\0\0\0€\0\0C\0\0€Control\0¸\0\0\ï;\0\0Relationship \'FK_DANHGIA_TAIKHOAN\' between \'TAIKHOAN\' and \'DANHGIA\'K\0\0(\0µ\0\0\0\0€T\0\0\01\0\0\0Y\0\0\0€\0\0Control\0x\0\0„;\0\0\0\0p\0¥	\0\0\0\0€U\0\0\0R\0\0\0€\0\0G\0\0€Control\0\ã\0\0U\0\0Relationship \'FK_TAIKHOAN_KHACHHANG\' between \'KHACHHANG\' and \'TAIKHOAN\'\0\0\0(\0µ\0\0\0\0€V\0\0\01\0\0\0]\0\0\0€\0\0Control\0wþÿÿ\Ó*\0\0\0\00\0¥	\0\0\0\0€W\0\0\0¢\0\0\0€\0\0\0\0€SchGrid\0tõÿÿŠ\0\0NHANVIEN\0\0l\0¥	\0\0\0\0€X\0\0\0R\0\0\0€\0\0C\0\0€ControlNC\0\0\r\0\0Relationship \'FK_BANGGIA_NHANVIEN\' between \'NHANVIEN\' and \'BANGGIA\'U\0\0(\0µ\0\0\0\0€Y\0\0\01\0\0\0Y\0\0\0€\0\0Control\0\0\0S \0\0\0\0t\0¥	\0\0\0\0€Z\0\0\0j\0\0\0€\0\0L\0\0€ControlNô\0\0\Æ/\0\0Relationship \'FK_DOTKHUYENMAI_NHANVIEN\' between \'NHANVIEN\' and \'CTKHUYENMAI\'\0\0(\0µ\0\0\0\0€[\0\0\01\0\0\0c\0\0\0€\0\0Control\0_\0\0\Ô8\0\0\0\0t\0¥	\0\0\0\0€\\\0\0\0b\0\0\0€\0\0I\0\0€Control\0C\0\0³,\0\0Relationship \'FK_DONDATHANG_NHANVIEN\' between \'NHANVIEN\' and \'DONDATHANG\'AI\'\0\0(\0µ\0\0\0\0€]\0\0\01\0\0\0_\0\0\0€\0\0Control\0\0\06/\0\0\0\0l\0¥	\0\0\0\0€^\0\0\0b\0\0\0€\0\0A\0\0€Control\03\0\0\Æ/\0\0Relationship \'FK_HOADON_NHANVIEN\' between \'NHANVIEN\' and \'HOADON\'A\'K\0\0(\0µ\0\0\0\0€_\0\0\01\0\0\0W\0\0\0€\0\0Control\0w\0\0g@\0\0\0\0p\0¥	\0\0\0\0€`\0\0\0j\0\0\0€\0\0E\0\0€ControlN	õÿÿ\Î\0\0Relationship \'FK_PHIEUDAT_NHANVIEN\' between \'NHANVIEN\' and \'PHIEUDAT\'N\'\0\0\0(\0µ\0\0\0\0€a\0\0\01\0\0\0[\0\0\0€\0\0Control\0÷øÿÿø\0\0\0\0p\0¥	\0\0\0\0€b\0\0\0b\0\0\0€\0\0G\0\0€Control\0M\0\0I&\0\0Relationship \'FK_PHIEUNHAP_NHANVIEN\' between \'NHANVIEN\' and \'PHIEUNHAP\'\0\0\0(\0µ\0\0\0\0€c\0\0\01\0\0\0]\0\0\0€\0\0Control\0\Þ\r\0\0p.\0\0\0\0p\0¥	\0\0\0\0€d\0\0\0j\0\0\0€\0\0G\0\0€Control\0¸òÿÿ\Î\0\0Relationship \'FK_PHIEUXUAT_NHANVIEN\' between \'NHANVIEN\' and \'PHIEUXUAT\'\0\0\0(\0µ\0\0\0\0€e\0\0\01\0\0\0]\0\0\0€\0\0ControlHy\éÿÿ©\Z\0\0\0\04\0¥	\0\0\0\0€f\0\0\0¤\0\0\0€\0\0	\0\0€SchGrid\0ýÿÿ(#\0\0PHANQUYEN\0\0\0\0\0p\0¥	\0\0\0\0€g\0\0\0j\0\0\0€\0\0G\0\0€Control\0(\n\0\0ý*\0\0Relationship \'FK_TAIKHOAN_PHANQUYEN\' between \'PHANQUYEN\' and \'TAIKHOAN\'\0\0\0(\0µ\0\0\0\0€h\0\0\01\0\0\0]\0\0\0€\0\0ControlU“\r\0\0<9\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0!C4\0\0\0‰\0\0\Z\0\0xV4\0\0\0\0\0K\0H\0A\0C\0H\0H\0A\0N\0G\0\0\0U\0S\0E\0R\0\\\0S\0-\01\0-\05\0-\02\01\0-\05\01\02\07\00\03\08\07\01\0-\02\01\01\02\04\09\00\08\04\00\0-\03\00\04\05\00\08\06\00\01\06\0-\01\00\00\01\0\\\0S\0o\0f\0t\0w\0a\0r\0e\0\\\0M\0i\0c\0r\0o\0s\0o\0f\0t\0\\\0S\0Q\0L\0 \0S\0e\0r\0v\0e\0r\0 \0M\0a\0n\0a\0g\0e\0m\0e\0n\0t\0 \0S\0t\0u\0d\0i\0o\0\\\01\02\0.\00\0_\0C\0o\0n\0f\0i\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0T\0\0\0,\0\0\0,\0\0\0,\0\0\04\0\0\0\0\0\0\0\0\0\0\04\0\0ƒ\0\0\0\0\0\0-\0\0\0\0\0\0\0\0\0\0\0\0\0ˆ\0\0l	\0\0H\0\0,\0\0\è\0\0<\0\0H\0\0À\0\0H\0\0ø\0\0p\0\0\0\0\0\0\0\0\0‰\0\0\Z\0\0\0\0\0\0	\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\\\r\0\0\0\0\0\0\0\0\0:\0\0\â\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ˆ\0\0\0\0\0\0\0\0\0:\0\0¹\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ˆ\0\0\0\0\0\0\0\0\0\0+?\0\0ú\"\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0ˆ\0\0¤\r\0\0X\0\0xV4\0\0\0\\\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\n\0\0\0\0\0\0d\0b\0o\0\0\0\n\0\0\0K\0H\0A\0C\0H\0H\0A\0N\0G\0\0\0!C4\0\0\0‰\0\0»\0\0xV4\0\0\0\0\0P\0H\0I\0E\0U\0D\0A\0T\0\0\0\\\0U\0S\0E\0R\0\\\0S\0-\01\0-\05\0-\02\01\0-\05\01\02\07\00\03\08\07\01\0-\02\01\01\02\04\09\00\08\04\00\0-\03\00\04\05\00\08\06\00\01\06\0-\01\00\00\01\0\\\0S\0o\0f\0t\0w\0a\0r\0e\0\\\0M\0i\0c\0r\0o\0s\0o\0f\0t\0\\\0S\0Q\0L\0 \0S\0e\0r\0v\0e\0r\0 \0M\0a\0n\0a\0g\0e\0m\0e\0n\0t\0 \0S\0t\0u\0d\0i\0o\0\\\01\02\0.\00\0_\0C\0o\0n\0f\0i\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0T\0\0\0,\0\0\0,\0\0\0,\0\0\04\0\0\0\0\0\0\0\0\0\0\04\0\0G\0\0\0\0\0\0-\0\0\n\0\0\0\0\0\0\0\0\0\0\0ˆ\0\0l	\0\0H\0\0,\0\0\è\0\0<\0\0H\0\0À\0\0H\0\0ø\0\0p\0\0\0\0\0\0\0\0\0‰\0\0»\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\\\r\0\0\0\0\0\0\0\0\0:\0\0k\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ˆ\0\0\0\0\0\0\0\0\0:\0\0¹\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ˆ\0\0\0\0\0\0\0\0\0\0+?\0\0ú\"\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0ˆ\0\0¤\r\0\0X\0\0xV4\0\0\0Z\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\n\0\0\0\0\0\0d\0b\0o\0\0\0	\0\0\0P\0H\0I\0E\0U\0D\0A\0T\0\0\0\0\0‰\0\0ž\0\0\0\0ž\0\0\0\0\0\0ô\Z\0\0\0\0ô\Z\0\0ž\0\0\0\0\0\0\0\0\0ððð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0N\0\0\0\0&\0\0S\0\07\0\0\0\0\0\0\0&\0\0S\0\0\0\0\0\0\0\0\0€\0\0€\0\0\0\0\0\0\0°0\0Tahoma\0F\0K\0_\0P\0H\0I\0E\0U\0D\0A\0T\0_\0K\0H\0A\0C\0H\0H\0A\0N\0G\0!C4\0\0\0‰\0\0(\0\0xV4\0\0\0\0\0C\0T\0P\0D\0\0\0S\0T\0R\0Y\0\\\0U\0S\0E\0R\0\\\0S\0-\01\0-\05\0-\02\01\0-\05\01\02\07\00\03\08\07\01\0-\02\01\01\02\04\09\00\08\04\00\0-\03\00\04\05\00\08\06\00\01\06\0-\01\00\00\01\0\\\0S\0o\0f\0t\0w\0a\0r\0e\0\\\0M\0i\0c\0r\0o\0s\0o\0f\0t\0\\\0S\0Q\0L\0 \0S\0e\0r\0v\0e\0r\0 \0M\0a\0n\0a\0g\0e\0m\0e\0n\0t\0 \0S\0t\0u\0d\0i\0o\0\\\01\02\0.\00\0_\0C\0o\0n\0f\0i\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0T\0\0\0,\0\0\0,\0\0\0,\0\0\04\0\0\0\0\0\0\0\0\0\0\04\0\0•\0\0\0\0\0\0-\0\0\0\0\0\0\0\0\0\0\0\0\0ˆ\0\0l	\0\0H\0\0,\0\0\è\0\0<\0\0H\0\0À\0\0H\0\0ø\0\0p\0\0\0\0\0\0\0\0\0‰\0\0(\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\\\r\0\0\0\0\0\0\0\0\0:\0\00\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ˆ\0\0\0\0\0\0\0\0\0:\0\0¹\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ˆ\0\0\0\0\0\0\0\0\0\0+?\0\0ú\"\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0ˆ\0\0¤\r\0\0X\0\0xV4\0\0\0R\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\n\0\0\0\0\0\0d\0b\0o\0\0\0\0\0\0C\0T\0P\0D\0\0\0\0\0\'#\0\0\Ò\0\0·$\0\0\Ò\0\0·$\0\0B\0\0’\"\0\0B\0\0’\"\0\0\Ò\0\0\0\0\0\0\0\0\0ððð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0º!\0\0@\0\0‹\n\0\0S\0\06\0\0\0\0\0\0\0‹\n\0\0S\0\0\0\0\0\0\0\0\0€\0\0€\0\0\0\0\0\0\0°0\0Tahoma\0F\0K\0_\0C\0T\0P\0D\0_\0P\0H\0I\0E\0U\0D\0A\0T\0!C4\0\0\0‰\0\09\0\0xV4\0\0\0\0\0M\0A\0T\0H\0A\0N\0G\0\0\0\ÑŒz\0ÀOÂ—\ë\0\0\0\Ðf\ë\ïg\àtE¤ñ(q[\íe\0\0\0\0\0\0\0\0f\0\0\0\0\0 \0\0\0#…Ã§¢GKŠÁŽ¥\åš½%»$7¯h? \'\Üu\ß\Þ(ò\0\0\0\0€\0\0\0\0\0 \0\0\0\ëk\ä)\Ú]\Ú 2‹\é\ÏÒ¡N(‚6ƒ9º¤\Ï*¸`\0\0\0\r”†\ÄX\Îgw)Ì¡(\ÃnXg[\é[n”B|\Ú8‹Ñ¼¢|À\Ò†z\áª\Ø˜r·\áHœò=uÒ‡\Å$JtÈŠ÷\Çt^\0a\Ò$\\£\à\Ëu·+s\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0T\0\0\0,\0\0\0,\0\0\0,\0\0\04\0\0\0\0\0\0\0\0\0\0\04\0\0G\0\0\0\0\0\0-\0\0\n\0\0\0\0\0\0\0\0\0\0\0ˆ\0\0l	\0\0H\0\0,\0\0\è\0\0<\0\0H\0\0À\0\0H\0\0ø\0\0p\0\0\0\0\0\0\0\0\0‰\0\09\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\\\r\0\0\0\0\0\0\0\0\0:\0\0\â\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ˆ\0\0\0\0\0\0\0\0\0:\0\0¹\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ˆ\0\0\0\0\0\0\0\0\0\0+?\0\0ú\"\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0ˆ\0\0¤\r\0\0X\0\0xV4\0\0\0X\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\n\0\0\0\0\0\0d\0b\0o\0\0\0\0\0\0M\0A\0T\0H\0A\0N\0G\0\0\0\0\0p\0\0\0\0[+\0\0\0\0\0\0\0\0\0\0\0ððð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0 \0\0\0\0‹\n\0\0S\0\02\0\0\0\0\0\0\0‹\n\0\0S\0\0\0\0\0\0\0\0\0€\0\0€\0\0\0\0\0\0\0°0\0Tahoma\0F\0K\0_\0C\0T\0P\0D\0_\0M\0A\0T\0H\0A\0N\0G\0!C4\0\0\0‰\0\0x\0\0xV4\0\0\0\0\0B\0A\0N\0G\0G\0I\0A\0\0\0M\0a\0c\0h\0i\0n\0e\0\\\0S\0O\0F\0T\0W\0A\0R\0E\0\\\0M\0i\0c\0r\0o\0s\0o\0f\0t\0\\\0A\0p\0p\0M\0o\0d\0e\0l\0\\\0L\0o\0o\0k\0a\0s\0i\0d\0e\0\\\0u\0s\0e\0r\0\\\0S\0o\0f\0t\0w\0a\0r\0e\0\\\0M\0i\0c\0r\0o\0s\0o\0f\0t\0\\\0S\0Q\0L\0 \0S\0e\0r\0v\0e\0r\0 \0M\0a\0n\0a\0g\0e\0m\0e\0n\0t\0 \0S\0t\0u\0d\0i\0o\0\\\01\02\0.\00\0_\0C\0o\0n\0f\0i\0g\0\\\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0T\0\0\0,\0\0\0,\0\0\0,\0\0\04\0\0\0\0\0\0\0\0\0\0\04\0\0•\0\0\0\0\0\0-\0\0\0\0\0\0\0\0\0\0\0\0\0ˆ\0\0l	\0\0H\0\0,\0\0\è\0\0<\0\0H\0\0À\0\0H\0\0ø\0\0p\0\0\0\0\0\0\0\0\0‰\0\0x\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0h\r\0\0\0\0\0\0\0\0\0:\0\0k\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ˆ\0\0\0\0\0\0\0\0\0:\0\0¹\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ˆ\0\0\0\0\0\0\0\0\0\0+?\0\0ú\"\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0ˆ\0\0¤\r\0\0X\0\0xV4\0\0\0X\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\n\0\0\0\0\0\0d\0b\0o\0\0\0\0\0\0B\0A\0N\0G\0G\0I\0A\0\0\0\0\0ù2\0\0\0\0‰4\0\0\0\0‰4\0\0~\0\0d2\0\0~\0\0d2\0\0\0\0\0\0\0\0\0\0\0ððð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0¥0\0\0|\0\0Y\0\0S\0\07\0\0\0\0\0\0\0Y\0\0S\0\0\0\0\0\0\0\0\0€\0\0€\0\0\0\0\0\0\0°0\0Tahoma\0F\0K\0_\0B\0A\0N\0G\0G\0I\0A\0_\0M\0A\0T\0H\0A\0N\0G\0!C4\0\0\0‰\0\0\×	\0\0xV4\0\0\0\0\0C\0H\0A\0T\0L\0I\0E\0U\0\0\0\\\0U\0S\0E\0R\0\\\0S\0-\01\0-\05\0-\02\01\0-\05\01\02\07\00\03\08\07\01\0-\02\01\01\02\04\09\00\08\04\00\0-\03\00\04\05\00\08\06\00\01\06\0-\01\00\00\01\0\\\0S\0o\0f\0t\0w\0a\0r\0e\0\\\0M\0i\0c\0r\0o\0s\0o\0f\0t\0\\\0S\0Q\0L\0 \0S\0e\0r\0v\0e\0r\0 \0M\0a\0n\0a\0g\0e\0m\0e\0n\0t\0 \0S\0t\0u\0d\0i\0o\0\\\01\02\0.\00\0_\0C\0o\0n\0f\0i\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0T\0\0\0,\0\0\0,\0\0\0,\0\0\04\0\0\0\0\0\0\0\0\0\0\04\0\0•\0\0\0\0\0\0-\0\0\0\0\0\0\0\0\0\0\0\0\0ˆ\0\0l	\0\0H\0\0,\0\0\è\0\0<\0\0H\0\0À\0\0H\0\0ø\0\0p\0\0\0\0\0\0\0\0\0‰\0\0\×	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0h\r\0\0\0\0\0\0\0\0\0:\0\00\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ˆ\0\0\0\0\0\0\0\0\0:\0\0¹\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ˆ\0\0\0\0\0\0\0\0\0\0+?\0\0ú\"\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0ˆ\0\0¤\r\0\0X\0\0xV4\0\0\0Z\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\n\0\0\0\0\0\0d\0b\0o\0\0\0	\0\0\0C\0H\0A\0T\0L\0I\0E\0U\0\0\0\0\0(#\0\0ü!\0\0˜!\0\0ü!\0\0˜!\0\0\à\0\0(#\0\0\à\0\0(#\0\0p\0\0\0\0\0\0\0\0\0ððð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\\\0\0x\Z\0\0	\0\0S\0\01\0\0\0\0\0\0\0	\0\0S\0\0\0\0\0\0\0\0\0€\0\0€\0\0\0\0\0\0\0°0\0Tahoma\0F\0K\0_\0M\0A\0T\0H\0A\0N\0G\0_\0V\0A\0I\0!C4\0\0\0û\0\0Œ\n\0\0xV4\0\0\0\0\0L\0O\0A\0I\0M\0H\0\0\0ÿÿÿÿÿÿÿÿÿÕ€+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0UªÿÿÕ€+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0UªÿÿÕ€+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0UªÿÿÕ€+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0UªÿÿÕ€+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0UªÿÿÕ€+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0UªÿÿÕ€+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0UªÿÿÕ€+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0T\0\0\0,\0\0\0,\0\0\0,\0\0\04\0\0\0\0\0\0\0\0\0\0\0€*\0\0¿\0\0\0\0\0\0-\0\0\0\0\0\0\0\0\0\0\0\0\0<	\0\0Œ\0\0H\0\0,\0\0\è\0\0ø\0\0H\0\0À\0\0H\0\0ø\0\0p\0\0\0\0\0\0\0\0\0û\0\0Œ\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0d\0\0\0\0\0\0\0\0\0B\0\0E\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0<	\0\0\0\0\0\0\0\0\0B\0\0¹\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0<	\0\0\0\0\0\0\0\0\0\0n3\0\0N#\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0<	\0\0\ì\n\0\0¨\0\0xV4\0\0\0V\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\n\0\0\0\0\0\0d\0b\0o\0\0\0\0\0\0L\0O\0A\0I\0M\0H\0\0\0\0\0o\r\0\0\0\0p\0\0\0\0\0\0\0\0\0\0\0ððð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ˆ\0\0µ\0\0\Î\0\0S\0\02\0\0\0\0\0\0\0\Î\0\0S\0\0\0\0\0\0\0\0\0€\0\0€\0\0\0\0\0\0\0°0\0Tahoma\0F\0K\0_\0M\0A\0T\0H\0A\0N\0G\0_\0L\0O\0A\0I\0M\0H\0!C4\0\0\0û\0\0\r\0\0xV4\0\0\0\0\0H\0I\0N\0H\0A\0N\0H\0M\0H\0\0\0U\0S\0E\0R\0\\\0S\0-\01\0-\05\0-\02\01\0-\05\01\02\07\00\03\08\07\01\0-\02\01\01\02\04\09\00\08\04\00\0-\03\00\04\05\00\08\06\00\01\06\0-\01\00\00\01\0\\\0S\0o\0f\0t\0w\0a\0r\0e\0\\\0M\0i\0c\0r\0o\0s\0o\0f\0t\0\\\0S\0Q\0L\0 \0S\0e\0r\0v\0e\0r\0 \0M\0a\0n\0a\0g\0e\0m\0e\0n\0t\0 \0S\0t\0u\0d\0i\0o\0\\\01\02\0.\00\0_\0C\0o\0n\0f\0i\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0T\0\0\0,\0\0\0,\0\0\0,\0\0\04\0\0\0\0\0\0\0\0\0\0\0€*\0\0¿\0\0\0\0\0\0-\0\0\0\0\0\0\0\0\0\0\0\0\0<	\0\0Œ\0\0H\0\0,\0\0\è\0\0ø\0\0H\0\0À\0\0H\0\0ø\0\0p\0\0\0\0\0\0\0\0\0û\0\0\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0d\0\0\0\0\0\0\0\0\0B\0\0E\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0<	\0\0\0\0\0\0\0\0\0B\0\0¹\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0<	\0\0\0\0\0\0\0\0\0\0n3\0\0N#\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0<	\0\0\ì\n\0\0¨\0\0xV4\0\0\0\\\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\n\0\0\0\0\0\0d\0b\0o\0\0\0\n\0\0\0H\0I\0N\0H\0A\0N\0H\0M\0H\0\0\0\0\0p\0\0\È\0\0\r\0\0\È\0\0\0\0\0\0\0\0\0ððð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\04\0\0\Æ\0\0\0\0S\0\02\0\0\0\0\0\0\0\0\0S\0\0\0\0\0\0\0\0\0€\0\0€\0\0\0\0\0\0\0°0\0Tahoma\0F\0K\0_\0H\0I\0N\0H\0A\0N\0H\0M\0H\0_\0M\0A\0T\0H\0A\0N\0G\0!C4\0\0\0\Ï\0\0Œ\n\0\0xV4\0\0\0\0\0S\0I\0Z\0E\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0„·uD\É\ÓD\É\Ó\0\0\0ÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0x\É\Ó\ÕÿªU\0\0\0\0ˆ\É\Óþÿÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0T\0\0\0,\0\0\0,\0\0\0,\0\0\04\0\0\0\0\0\0\0\0\0\0\0€*\0\0¿\0\0\0\0\0\0-\0\0\0\0\0\0\0\0\0\0\0\0\0<	\0\0Œ\0\0H\0\0,\0\0\è\0\0ø\0\0H\0\0À\0\0H\0\0ø\0\0p\0\0\0\0\0\0\0\0\0\Ï\0\0Œ\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \n\0\0\0\0\0\0\0\0\0B\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0<	\0\0\0\0\0\0\0\0\0B\0\0¹\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0<	\0\0\0\0\0\0\0\0\0\0n3\0\0N#\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0<	\0\0\ì\n\0\0¨\0\0xV4\0\0\0R\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\n\0\0\0\0\0\0d\0b\0o\0\0\0\0\0\0S\0I\0Z\0E\0\0\0!C4\0\0\0û\0\0Œ\n\0\0xV4\0\0\0\0\0K\0H\0O\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0¨U¥\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0„·uµ\Óµ\Ó\0\0\0ÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Pµ\Ó\ÕÿªU\0\0\0\0`µ\Ó\0\0\0\0\0\0\0\0\0\0\0€+\0\0+€\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0T\0\0\0,\0\0\0,\0\0\0,\0\0\04\0\0\0\0\0\0\0\0\0\0\0€*\0\0¿\0\0\0\0\0\0-\0\0\0\0\0\0\0\0\0\0\0\0\0<	\0\0Œ\0\0H\0\0,\0\0\è\0\0ø\0\0H\0\0À\0\0H\0\0ø\0\0p\0\0\0\0\0\0\0\0\0û\0\0Œ\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0d\0\0\0\0\0\0\0\0\0B\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0<	\0\0\0\0\0\0\0\0\0B\0\0¹\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0<	\0\0\0\0\0\0\0\0\0\0n3\0\0N#\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0<	\0\0\ì\n\0\0¨\0\0xV4\0\0\0P\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\n\0\0\0\0\0\0d\0b\0o\0\0\0\0\0\0K\0H\0O\0\0\0!C4\0\0\0û\0\0ý\0\0xV4\0\0\0\0\0N\0H\0A\0C\0U\0N\0G\0C\0A\0P\0\0\0o\0w\0s\0.\0F\0o\0r\0m\0s\0,\0 \0V\0e\0r\0s\0i\0o\0n\0=\04\0.\00\0.\00\0.\00\0,\0 \0C\0u\0l\0t\0u\0r\0e\0=\0n\0e\0u\0t\0r\0a\0l\0,\0 \0P\0u\0b\0l\0i\0c\0K\0e\0y\0T\0o\0k\0e\0n\0=\0b\07\07\0a\05\0c\05\06\01\09\03\04\0e\00\08\09\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0T\0\0\0,\0\0\0,\0\0\0,\0\0\04\0\0\0\0\0\0\0\0\0\0\0€*\0\0¿\0\0\0\0\0\0-\0\0\0\0\0\0\0\0\0\0\0\0\0<	\0\0Œ\0\0H\0\0,\0\0\è\0\0ø\0\0H\0\0À\0\0H\0\0ø\0\0p\0\0\0\0\0\0\0\0\0û\0\0ý\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0d\0\0\0\0\0\0\0\0\0B\0\0€\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0<	\0\0\0\0\0\0\0\0\0B\0\0¹\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0<	\0\0\0\0\0\0\0\0\0\0n3\0\0N#\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0<	\0\0\ì\n\0\0¨\0\0xV4\0\0\0^\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\n\0\0\0\0\0\0d\0b\0o\0\0\0\0\0\0N\0H\0A\0C\0U\0N\0G\0C\0A\0P\0\0\0!C4\0\0\0\Ï\0\0Œ\n\0\0xV4\0\0\0\0\0N\0H\0A\0N\0H\0I\0E\0U\0\0\0\\\0U\0S\0E\0R\0\\\0S\0-\01\0-\05\0-\02\01\0-\05\01\02\07\00\03\08\07\01\0-\02\01\01\02\04\09\00\08\04\00\0-\03\00\04\05\00\08\06\00\01\06\0-\01\00\00\01\0\\\0S\0o\0f\0t\0w\0a\0r\0e\0\\\0M\0i\0c\0r\0o\0s\0o\0f\0t\0\\\0S\0Q\0L\0 \0S\0e\0r\0v\0e\0r\0 \0M\0a\0n\0a\0g\0e\0m\0e\0n\0t\0 \0S\0t\0u\0d\0i\0o\0\\\01\02\0.\00\0_\0C\0o\0n\0f\0i\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0T\0\0\0,\0\0\0,\0\0\0,\0\0\04\0\0\0\0\0\0\0\0\0\0\0€*\0\0¿\0\0\0\0\0\0-\0\0\0\0\0\0\0\0\0\0\0\0\0<	\0\0Œ\0\0H\0\0,\0\0\è\0\0ø\0\0H\0\0À\0\0H\0\0ø\0\0p\0\0\0\0\0\0\0\0\0\Ï\0\0Œ\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \n\0\0\0\0\0\0\0\0\0B\0\0E\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0<	\0\0\0\0\0\0\0\0\0B\0\0¹\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0<	\0\0\0\0\0\0\0\0\0\0n3\0\0N#\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0<	\0\0\ì\n\0\0¨\0\0xV4\0\0\0Z\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\n\0\0\0\0\0\0d\0b\0o\0\0\0	\0\0\0N\0H\0A\0N\0H\0I\0E\0U\0\0\0\0\0\0\0\\+\0\0\0\0©/\0\0\0\0\0\0\0\0\0ððð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0!\0\0\0\0\0\0\0F\n\0\0\Ø,\0\0\r\0\0S\0\02\0\0\0\0\0\0\0\r\0\0S\0\0\0\0\0\0\0\0\0€\0\0€\0\0\0\0\0\0\0°0\0Tahoma\0F\0K\0_\0M\0A\0T\0H\0A\0N\0G\0_\0N\0H\0A\0N\0H\0I\0E\0U\0!C4\0\0\0û\0\0ý\0\0xV4\0\0\0\0\0P\0H\0I\0E\0U\0N\0H\0A\0P\0\0\0U\0S\0E\0R\0\\\0S\0-\01\0-\05\0-\02\01\0-\05\01\02\07\00\03\08\07\01\0-\02\01\01\02\04\09\00\08\04\00\0-\03\00\04\05\00\08\06\00\01\06\0-\01\00\00\01\0\\\0S\0o\0f\0t\0w\0a\0r\0e\0\\\0M\0i\0c\0r\0o\0s\0o\0f\0t\0\\\0S\0Q\0L\0 \0S\0e\0r\0v\0e\0r\0 \0M\0a\0n\0a\0g\0e\0m\0e\0n\0t\0 \0S\0t\0u\0d\0i\0o\0\\\01\02\0.\00\0_\0C\0o\0n\0f\0i\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0T\0\0\0,\0\0\0,\0\0\0,\0\0\04\0\0\0\0\0\0\0\0\0\0\0€*\0\0¿\0\0\0\0\0\0-\0\0\0\0\0\0\0\0\0\0\0\0\0<	\0\0Œ\0\0H\0\0,\0\0\è\0\0ø\0\0H\0\0À\0\0H\0\0ø\0\0p\0\0\0\0\0\0\0\0\0û\0\0ý\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0d\0\0\0\0\0\0\0\0\0B\0\0€\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0<	\0\0\0\0\0\0\0\0\0B\0\0¹\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0<	\0\0\0\0\0\0\0\0\0\0n3\0\0N#\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0<	\0\0\ì\n\0\0¨\0\0xV4\0\0\0\\\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\n\0\0\0\0\0\0d\0b\0o\0\0\0\n\0\0\0P\0H\0I\0E\0U\0N\0H\0A\0P\0\0\0\0\0\ä\0\0 \0\0\ä\0\0’\"\0\0z\r\0\0’\"\0\0z\r\0\0)\0\0\0\0\0\0\0\0\0ððð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0$\0\0\0\0\0\0\0@\0\0A#\0\0‹\n\0\0S\0\04\0\0\0\0\0\0\0‹\n\0\0S\0\0\0\0\0\0\0\0\0€\0\0€\0\0\0\0\0\0\0°0\0Tahoma\0F\0K\0_\0P\0H\0I\0E\0U\0N\0H\0A\0P\0_\0K\0H\0O\0!C4\0\0\0û\0\0‚\0\0xV4\0\0\0\0\0D\0O\0N\0D\0A\0T\0H\0A\0N\0G\0\0\0S\0E\0R\0\\\0S\0-\01\0-\05\0-\02\01\0-\05\01\02\07\00\03\08\07\01\0-\02\01\01\02\04\09\00\08\04\00\0-\03\00\04\05\00\08\06\00\01\06\0-\01\00\00\01\0\\\0S\0o\0f\0t\0w\0a\0r\0e\0\\\0M\0i\0c\0r\0o\0s\0o\0f\0t\0\\\0S\0Q\0L\0 \0S\0e\0r\0v\0e\0r\0 \0M\0a\0n\0a\0g\0e\0m\0e\0n\0t\0 \0S\0t\0u\0d\0i\0o\0\\\01\02\0.\00\0_\0C\0o\0n\0f\0i\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0T\0\0\0,\0\0\0,\0\0\0,\0\0\04\0\0\0\0\0\0\0\0\0\0\0€*\0\0¿\0\0\0\0\0\0-\0\0\0\0\0\0\0\0\0\0\0\0\0<	\0\0Œ\0\0H\0\0,\0\0\è\0\0ø\0\0H\0\0À\0\0H\0\0ø\0\0p\0\0\0\0\0\0\0\0\0û\0\0‚\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0d\0\0\0\0\0\0\0\0\0B\0\0€\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0<	\0\0\0\0\0\0\0\0\0B\0\0¹\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0<	\0\0\0\0\0\0\0\0\0\0n3\0\0N#\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0<	\0\0\ì\n\0\0¨\0\0xV4\0\0\0^\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\n\0\0\0\0\0\0d\0b\0o\0\0\0\0\0\0D\0O\0N\0D\0A\0T\0H\0A\0N\0G\0\0\0\0\0‚\0\0/+\0\0‚\0\0\è-\0\0^\Z\0\0\è-\0\0^\Z\0\0¢0\0\0\0\0\0\0\0\0\0ððð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\'\0\0\0\0\0\0\0\\\0\0—.\0\0ñ\0\0S\0\07\0\0\0\0\0\0\0ñ\0\0S\0\0\0\0\0\0\0\0\0€\0\0€\0\0\0\0\0\0\0°0\0Tahoma\0F\0K\0_\0D\0O\0N\0D\0A\0T\0H\0A\0N\0G\0_\0N\0H\0A\0C\0U\0N\0G\0C\0A\0P\0!C4\0\0\0û\0\0ý\0\0xV4\0\0\0\0\0C\0T\0P\0N\0\0\0S\0T\0R\0Y\0\\\0U\0S\0E\0R\0\\\0S\0-\01\0-\05\0-\02\01\0-\05\01\02\07\00\03\08\07\01\0-\02\01\01\02\04\09\00\08\04\00\0-\03\00\04\05\00\08\06\00\01\06\0-\01\00\00\01\0\\\0S\0o\0f\0t\0w\0a\0r\0e\0\\\0M\0i\0c\0r\0o\0s\0o\0f\0t\0\\\0S\0Q\0L\0 \0S\0e\0r\0v\0e\0r\0 \0M\0a\0n\0a\0g\0e\0m\0e\0n\0t\0 \0S\0t\0u\0d\0i\0o\0\\\01\02\0.\00\0_\0C\0o\0n\0f\0i\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0T\0\0\0,\0\0\0,\0\0\0,\0\0\04\0\0\0\0\0\0\0\0\0\0\0€*\0\0¿\0\0\0\0\0\0-\0\0\0\0\0\0\0\0\0\0\0\0\0<	\0\0Œ\0\0H\0\0,\0\0\è\0\0ø\0\0H\0\0À\0\0H\0\0ø\0\0p\0\0\0\0\0\0\0\0\0û\0\0ý\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0d\0\0\0\0\0\0\0\0\0B\0\0€\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0<	\0\0\0\0\0\0\0\0\0B\0\0¹\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0<	\0\0\0\0\0\0\0\0\0\0n3\0\0N#\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0<	\0\0\ì\n\0\0¨\0\0xV4\0\0\0R\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\n\0\0\0\0\0\0d\0b\0o\0\0\0\0\0\0C\0T\0P\0N\0\0\0\0\0\Ã1\0\0\Ö8\0\0 \0\0\Ö8\0\0\0\0\0\0\0\0\0ððð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*\0\0\0\0\0\0\01 \0\0\Ô6\0\0\0\0S\0\07\0\0\0\0\0\0\0\0\0S\0\0\0\0\0\0\0\0\0€\0\0€\0\0\0\0\0\0\0°0\0Tahoma\0F\0K\0_\0C\0T\0P\0N\0_\0D\0O\0N\0D\0A\0T\0H\0A\0N\0G\0\0\0¶\0\0©/\0\0¶\0\0@8\0\0\0\0\0\0\0\0\0ððð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0,\0\0\0\0\0\0\0|\0\0J3\0\0‹\n\0\0S\0\02\0\0\0\0\0\0\0‹\n\0\0S\0\0\0\0\0\0\0\0\0€\0\0€\0\0\0\0\0\0\0°0\0Tahoma\0F\0K\0_\0C\0T\0P\0N\0_\0M\0A\0T\0H\0A\0N\0G\0\0\0\ß$\0\0@8\0\0o&\0\0@8\0\0o&\0\0°6\0\0T$\0\0°6\0\0T$\0\0@8\0\0\0\0\0\0\0\0\0ððð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0.\0\0\0\0\0\0\03#\0\0®4\0\0-\0\0S\0\06\0\0\0\0\0\0\0-\0\0S\0\0\0\0\0\0\0\0\0€\0\0€\0\0\0\0\0\0\0°0\0Tahoma\0F\0K\0_\0C\0T\0P\0N\0_\0P\0H\0I\0E\0U\0N\0H\0A\0P\0!C4\0\0\0û\0\0‚\0\0xV4\0\0\0\0\0C\0T\0D\0D\0H\0\0\0y\0\\\0M\0a\0c\0h\0i\0n\0e\0\\\0S\0O\0F\0T\0W\0A\0R\0E\0\\\0M\0i\0c\0r\0o\0s\0o\0f\0t\0\\\0A\0p\0p\0M\0o\0d\0e\0l\0\\\0L\0o\0o\0k\0a\0s\0i\0d\0e\0\\\0u\0s\0e\0r\0\\\0S\0o\0f\0t\0w\0a\0r\0e\0\\\0M\0i\0c\0r\0o\0s\0o\0f\0t\0\\\0S\0Q\0L\0 \0S\0e\0r\0v\0e\0r\0 \0M\0a\0n\0a\0g\0e\0m\0e\0n\0t\0 \0S\0t\0u\0d\0i\0o\0\\\01\02\0.\00\0\\\0F\0o\0n\0t\0A\0n\0d\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0T\0\0\0,\0\0\0,\0\0\0,\0\0\04\0\0\0\0\0\0\0\0\0\0\0€*\0\0¿\0\0\0\0\0\0-\0\0\0\0\0\0\0\0\0\0\0\0\0<	\0\0Œ\0\0H\0\0,\0\0\è\0\0ø\0\0H\0\0À\0\0H\0\0ø\0\0p\0\0\0\0\0\0\0\0\0û\0\0‚\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0|\0\0\0\0\0\0\0\0\0B\0\0E\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0<	\0\0\0\0\0\0\0\0\0B\0\0¹\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0<	\0\0\0\0\0\0\0\0\0\0n3\0\0N#\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0<	\0\0\ì\n\0\0¨\0\0xV4\0\0\0T\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\n\0\0\0\0\0\0d\0b\0o\0\0\0\0\0\0C\0T\0D\0D\0H\0\0\0\0\0\ê$\0\0$@\0\0\ê$\0\0t@\0\0\0\0\0\0\0\0\0ððð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\01\0\0\0\0\0\0\0\Î\0\0¢?\0\0m\r\0\0S\0\02\0\0\0\0\0\0\0m\r\0\0S\0\0\0\0\0\0\0\0\0€\0\0€\0\0\0\0\0\0\0°0\0Tahoma\0F\0K\0_\0C\0T\0D\0D\0H\0_\0D\0O\0N\0D\0A\0T\0H\0A\0N\0G\0\0\0\ê$\0\0©/\0\0\ê$\0\0t@\0\0\0\0\0\0\0\0\0ððð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\03\0\0\0\0\0\0\0\à\0\0d7\0\0[\0\0S\0\02\0\0\0\0\0\0\0[\0\0S\0\0\0\0\0\0\0\0\0€\0\0€\0\0\0\0\0\0\0°0\0Tahoma\0F\0K\0_\0C\0T\0D\0D\0H\0_\0M\0A\0T\0H\0A\0N\0G\0!C4\0\0\0û\0\0ý\0\0xV4\0\0\0\0\0P\0H\0I\0E\0U\0X\0U\0A\0T\0\0\0d\0o\0w\0s\0.\0F\0o\0r\0m\0s\0,\0 \0V\0e\0r\0s\0i\0o\0n\0=\04\0.\00\0.\00\0.\00\0,\0 \0C\0u\0l\0t\0u\0r\0e\0=\0n\0e\0u\0t\0r\0a\0l\0,\0 \0P\0u\0b\0l\0i\0c\0K\0e\0y\0T\0o\0k\0e\0n\0=\0b\07\07\0a\05\0c\05\06\01\09\03\04\0e\00\08\09\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0T\0\0\0,\0\0\0,\0\0\0,\0\0\04\0\0\0\0\0\0\0\0\0\0\0€*\0\0¿\0\0\0\0\0\0-\0\0\0\0\0\0\0\0\0\0\0\0\0<	\0\0Œ\0\0H\0\0,\0\0\è\0\0ø\0\0H\0\0À\0\0H\0\0ø\0\0p\0\0\0\0\0\0\0\0\0û\0\0ý\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0d\0\0\0\0\0\0\0\0\0B\0\0¼\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0<	\0\0\0\0\0\0\0\0\0B\0\0¹\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0<	\0\0\0\0\0\0\0\0\0\0n3\0\0N#\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0<	\0\0\ì\n\0\0¨\0\0xV4\0\0\0\\\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\n\0\0\0\0\0\0d\0b\0o\0\0\0\n\0\0\0P\0H\0I\0E\0U\0X\0U\0A\0T\0\0\0\0\0\nöÿÿ \0\0\nöÿÿ&\0\0\0\0\0\0\0\0\0ððð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\06\0\0\0\0\0\0\0¹\êÿÿq \0\0¢\n\0\0S\0\02\0\0\0\0\0\0\0¢\n\0\0S\0\0\0\0\0\0\0\0\0€\0\0€\0\0\0\0\0\0\0°0\0Tahoma\0F\0K\0_\0P\0H\0I\0E\0U\0X\0U\0A\0T\0_\0K\0H\0O\0!C4\0\0\0û\0\0\r\0\0xV4\0\0\0\0\0C\0T\0P\0X\0\0\0S\0T\0R\0Y\0\\\0U\0S\0E\0R\0\\\0S\0-\01\0-\05\0-\02\01\0-\05\01\02\07\00\03\08\07\01\0-\02\01\01\02\04\09\00\08\04\00\0-\03\00\04\05\00\08\06\00\01\06\0-\01\00\00\01\0\\\0S\0o\0f\0t\0w\0a\0r\0e\0\\\0M\0i\0c\0r\0o\0s\0o\0f\0t\0\\\0S\0Q\0L\0 \0S\0e\0r\0v\0e\0r\0 \0M\0a\0n\0a\0g\0e\0m\0e\0n\0t\0 \0S\0t\0u\0d\0i\0o\0\\\01\02\0.\00\0_\0C\0o\0n\0f\0i\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0T\0\0\0,\0\0\0,\0\0\0,\0\0\04\0\0\0\0\0\0\0\0\0\0\0€*\0\0¿\0\0\0\0\0\0-\0\0\0\0\0\0\0\0\0\0\0\0\0<	\0\0Œ\0\0H\0\0,\0\0\è\0\0ø\0\0H\0\0À\0\0H\0\0ø\0\0p\0\0\0\0\0\0\0\0\0û\0\0\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0d\0\0\0\0\0\0\0\0\0B\0\0E\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0<	\0\0\0\0\0\0\0\0\0B\0\0¹\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0<	\0\0\0\0\0\0\0\0\0\0n3\0\0N#\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0<	\0\0\ì\n\0\0¨\0\0xV4\0\0\0R\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\n\0\0\0\0\0\0d\0b\0o\0\0\0\0\0\0C\0T\0P\0X\0\0\0\0\0p\0\0J.\0\0\r\0\0J.\0\0\0\0\0\0\0\0\0ððð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\09\0\0\0\0\0\0\0÷\0\0H,\0\0‹\n\0\0S\0\02\0\0\0\0\0\0\0‹\n\0\0S\0\0\0\0\0\0\0\0\0€\0\0€\0\0\0\0\0\0\0°0\0Tahoma\0F\0K\0_\0C\0T\0P\0X\0_\0M\0A\0T\0H\0A\0N\0G\0\0\0o\r\0\0J.\0\0ÿ\0\0J.\0\0ÿ\0\0$,\0\0\ä\0\0$,\0\0\ä\0\0´-\0\0\0\0\0\0\0\0\0ððð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0;\0\0\0\0\0\0\0š\r\0\0\"*\0\0D\0\0S\0\06\0\0\0\0\0\0\0D\0\0S\0\0\0\0\0\0\0\0\0€\0\0€\0\0\0\0\0\0\0°0\0Tahoma\0F\0K\0_\0C\0T\0P\0X\0_\0P\0H\0I\0E\0U\0X\0U\0A\0T\0!C4\0\0\0û\0\0ý\0\0xV4\0\0\0\0\0C\0T\0K\0H\0U\0Y\0E\0N\0M\0A\0I\0\0\0i\0n\0e\0\\\0S\0O\0F\0T\0W\0A\0R\0E\0\\\0M\0i\0c\0r\0o\0s\0o\0f\0t\0\\\0A\0p\0p\0M\0o\0d\0e\0l\0\\\0L\0o\0o\0k\0a\0s\0i\0d\0e\0\\\0u\0s\0e\0r\0\\\0S\0o\0f\0t\0w\0a\0r\0e\0\\\0M\0i\0c\0r\0o\0s\0o\0f\0t\0\\\0S\0Q\0L\0 \0S\0e\0r\0v\0e\0r\0 \0M\0a\0n\0a\0g\0e\0m\0e\0n\0t\0 \0S\0t\0u\0d\0i\0o\0\\\01\02\0.\00\0_\0C\0o\0n\0f\0i\0g\0\\\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0T\0\0\0,\0\0\0,\0\0\0,\0\0\04\0\0\0\0\0\0\0\0\0\0\0€*\0\0¿\0\0\0\0\0\0-\0\0\0\0\0\0\0\0\0\0\0\0\0<	\0\0Œ\0\0H\0\0,\0\0\è\0\0ø\0\0H\0\0À\0\0H\0\0ø\0\0p\0\0\0\0\0\0\0\0\0û\0\0ý\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0d\0\0\0\0\0\0\0\0\0B\0\0E\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0<	\0\0\0\0\0\0\0\0\0B\0\0¹\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0<	\0\0\0\0\0\0\0\0\0\0n3\0\0N#\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0<	\0\0\ì\n\0\0¨\0\0xV4\0\0\0`\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\n\0\0\0\0\0\0d\0b\0o\0\0\0\0\0\0C\0T\0K\0H\0U\0Y\0E\0N\0M\0A\0I\0\0\0!C4\0\0\0û\0\0\r\0\0xV4\0\0\0\0\0C\0T\0D\0K\0M\0\0\0y\0\\\0M\0a\0c\0h\0i\0n\0e\0\\\0S\0O\0F\0T\0W\0A\0R\0E\0\\\0M\0i\0c\0r\0o\0s\0o\0f\0t\0\\\0A\0p\0p\0M\0o\0d\0e\0l\0\\\0L\0o\0o\0k\0a\0s\0i\0d\0e\0\\\0u\0s\0e\0r\0\\\0S\0o\0f\0t\0w\0a\0r\0e\0\\\0M\0i\0c\0r\0o\0s\0o\0f\0t\0\\\0S\0Q\0L\0 \0S\0e\0r\0v\0e\0r\0 \0M\0a\0n\0a\0g\0e\0m\0e\0n\0t\0 \0S\0t\0u\0d\0i\0o\0\\\01\02\0.\00\0\\\0F\0o\0n\0t\0A\0n\0d\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0T\0\0\0,\0\0\0,\0\0\0,\0\0\04\0\0\0\0\0\0\0\0\0\0\0€*\0\0¿\0\0\0\0\0\0-\0\0\0\0\0\0\0\0\0\0\0\0\0<	\0\0Œ\0\0H\0\0,\0\0\è\0\0ø\0\0H\0\0À\0\0H\0\0ø\0\0p\0\0\0\0\0\0\0\0\0û\0\0\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0d\0\0\0\0\0\0\0\0\0B\0\0E\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0<	\0\0\0\0\0\0\0\0\0B\0\0¹\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0<	\0\0\0\0\0\0\0\0\0\0n3\0\0N#\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0<	\0\0\ì\n\0\0¨\0\0xV4\0\0\0T\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\n\0\0\0\0\0\0d\0b\0o\0\0\0\0\0\0C\0T\0D\0K\0M\0\0\0\0\0«\0\0†=\0\0;\0\0†=\0\0;\0\0ö;\0\0 \0\0ö;\0\0 \0\0†=\0\0\0\0\0\0\0\0\0ððð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0?\0\0\0\0\0\0\0T\0\0ô9\0\0‚\0\0S\0\08\0\0\0\0\0\0\0‚\0\0S\0\0\0\0\0\0\0\0\0€\0\0€\0\0\0\0\0\0\0°0\0Tahoma\0F\0K\0_\0C\0T\0D\0K\0M\0_\0D\0O\0T\0K\0H\0U\0Y\0E\0N\0M\0A\0I\0\0\0\0\0©/\0\0\0\0†=\0\0\0\0\0\0\0\0\0ððð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0A\0\0\0\0\0\0\0\æ\0\0\í5\0\0q\0\0S\0\02\0\0\0\0\0\0\0q\0\0S\0\0\0\0\0\0\0\0\0€\0\0€\0\0\0\0\0\0\0°0\0Tahoma\0F\0K\0_\0C\0T\0D\0K\0M\0_\0M\0A\0T\0H\0A\0N\0G\0!C4\0\0\0û\0\0ý\0\0xV4\0\0\0\0\0H\0O\0A\0D\0O\0N\0\0\0R\0Y\0\\\0U\0S\0E\0R\0\\\0S\0-\01\0-\05\0-\02\01\0-\05\01\02\07\00\03\08\07\01\0-\02\01\01\02\04\09\00\08\04\00\0-\03\00\04\05\00\08\06\00\01\06\0-\01\00\00\01\0\\\0S\0o\0f\0t\0w\0a\0r\0e\0\\\0M\0i\0c\0r\0o\0s\0o\0f\0t\0\\\0S\0Q\0L\0 \0S\0e\0r\0v\0e\0r\0 \0M\0a\0n\0a\0g\0e\0m\0e\0n\0t\0 \0S\0t\0u\0d\0i\0o\0\\\01\02\0.\00\0_\0C\0o\0n\0f\0i\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0T\0\0\0,\0\0\0,\0\0\0,\0\0\04\0\0\0\0\0\0\0\0\0\0\0€*\0\0¿\0\0\0\0\0\0-\0\0\0\0\0\0\0\0\0\0\0\0\0<	\0\0Œ\0\0H\0\0,\0\0\è\0\0ø\0\0H\0\0À\0\0H\0\0ø\0\0p\0\0\0\0\0\0\0\0\0û\0\0ý\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0d\0\0\0\0\0\0\0\0\0B\0\0¼\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0<	\0\0\0\0\0\0\0\0\0B\0\0¹\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0<	\0\0\0\0\0\0\0\0\0\0n3\0\0N#\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0<	\0\0\ì\n\0\0¨\0\0xV4\0\0\0V\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\n\0\0\0\0\0\0d\0b\0o\0\0\0\0\0\0H\0O\0A\0D\0O\0N\0\0\0\0\0\0\0\Z\0\0\0\0$E\0\0\0\0\0\0\0\0\0ððð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0D\0\0\0\0\0\0\0ü\0\0\î.\0\0m\r\0\0S\0\02\0\0\0\0\0\0\0m\r\0\0S\0\0\0\0\0\0\0\0\0€\0\0€\0\0\0\0\0\0\0°0\0Tahoma\0F\0K\0_\0H\0O\0A\0D\0O\0N\0_\0K\0H\0A\0C\0H\0H\0A\0N\0G\0\0\0\0\0Y\0\0\0\0$E\0\0\0\0\0\0\0\0ððð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0F\0\0\0\0\0\0\0\'\0\0”1\0\0B\0\0S\0\02\0\0\0\0\0\0\0B\0\0S\0\0\0\0\0\0\0\0\0€\0\0€\0\0\0\0\0\0\0°0\0Tahoma\0F\0K\0_\0H\0O\0A\0D\0O\0N\0_\0P\0H\0I\0E\0U\0D\0A\0T\0!C4\0\0\0û\0\0\r\0\0xV4\0\0\0\0\0C\0T\0H\0D\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0`² \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0„·u,8¤,8¤\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0`8¤u\0d\0\0\0\0\0p8¤2\0.\00\0_\0\0\0\0n\0f\0i\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0T\0\0\0,\0\0\0,\0\0\0,\0\0\04\0\0\0\0\0\0\0\0\0\0\0€*\0\0¿\0\0\0\0\0\0-\0\0\0\0\0\0\0\0\0\0\0\0\0<	\0\0Œ\0\0H\0\0,\0\0\è\0\0ø\0\0H\0\0À\0\0H\0\0ø\0\0p\0\0\0\0\0\0\0\0\0û\0\0\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0d\0\0\0\0\0\0\0\0\0B\0\0E\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0<	\0\0\0\0\0\0\0\0\0B\0\0¹\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0<	\0\0\0\0\0\0\0\0\0\0n3\0\0N#\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0<	\0\0\ì\n\0\0¨\0\0xV4\0\0\0R\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\n\0\0\0\0\0\0d\0b\0o\0\0\0\0\0\0C\0T\0H\0D\0\0\0\0\0®\0\0$E\0\0®\0\0\Ý:\0\0\Ê\0\0\Ý:\0\0\Ê\0\03\0\0\0\0\0\0\0\0\0ððð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0I\0\0\0\0\0\0\0]\0\0j;\0\0\é	\0\0S\0\0\0\0\0\0\0\0\0\é	\0\0S\0\0\0\0\0\0\0\0\0€\0\0€\0\0\0\0\0\0\0°0\0Tahoma\0F\0K\0_\0C\0T\0H\0D\0_\0H\0O\0A\0D\0O\0N\0\0\0p\0\0¬&\0\0o\r\0\0¬&\0\0\0\0\0\0\0\0\0ððð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0K\0\0\0\0\0\0\0\r\0\0ª$\0\0¢\n\0\0S\0\02\0\0\0\0\0\0\0¢\n\0\0S\0\0\0\0\0\0\0\0\0€\0\0€\0\0\0\0\0\0\0°0\0Tahoma\0F\0K\0_\0C\0T\0H\0D\0_\0M\0A\0T\0H\0A\0N\0G\0!C4\0\0\0û\0\0Œ\n\0\0xV4\0\0\0\0\0C\0H\0I\0N\0H\0A\0N\0H\0\0\0a\0c\0h\0i\0n\0e\0\\\0S\0O\0F\0T\0W\0A\0R\0E\0\\\0M\0i\0c\0r\0o\0s\0o\0f\0t\0\\\0A\0p\0p\0M\0o\0d\0e\0l\0\\\0L\0o\0o\0k\0a\0s\0i\0d\0e\0\\\0u\0s\0e\0r\0\\\0S\0o\0f\0t\0w\0a\0r\0e\0\\\0M\0i\0c\0r\0o\0s\0o\0f\0t\0\\\0S\0Q\0L\0 \0S\0e\0r\0v\0e\0r\0 \0M\0a\0n\0a\0g\0e\0m\0e\0n\0t\0 \0S\0t\0u\0d\0i\0o\0\\\01\02\0.\00\0\\\0F\0o\0n\0t\0A\0n\0d\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0T\0\0\0,\0\0\0,\0\0\0,\0\0\04\0\0\0\0\0\0\0\0\0\0\0€*\0\0¿\0\0\0\0\0\0-\0\0\0\0\0\0\0\0\0\0\0\0\0<	\0\0Œ\0\0H\0\0,\0\0\è\0\0ø\0\0H\0\0À\0\0H\0\0ø\0\0p\0\0\0\0\0\0\0\0\0û\0\0Œ\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0d\0\0\0\0\0\0\0\0\0B\0\0E\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0<	\0\0\0\0\0\0\0\0\0B\0\0¹\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0<	\0\0\0\0\0\0\0\0\0\0n3\0\0N#\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0<	\0\0\ì\n\0\0¨\0\0xV4\0\0\0Z\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\n\0\0\0\0\0\0d\0b\0o\0\0\0	\0\0\0C\0H\0I\0N\0H\0A\0N\0H\0\0\0\0\0¨ýÿÿ´-\0\0¨ýÿÿ$,\0\0ÿ\0\0$,\0\0ÿ\0\0´-\0\0o\r\0\0´-\0\0\0\0\0\0\0\0\0ððð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0N\0\0\0\0\0\0\0|\0\0\0\"*\0\0\á\r\0\0S\0\01\0\0\0\0\0\0\0\á\r\0\0S\0\0\0\0\0\0\0ÿÿÿ\0\0\0€\0\0\0\0\0\0\0°0\0Tahoma\0F\0K\0_\0P\0H\0I\0E\0U\0X\0U\0A\0T\0_\0C\0H\0I\0N\0H\0A\0N\0H\0!C4\0\0\0û\0\0\r\0\0xV4\0\0\0\0\0D\0A\0N\0H\0G\0I\0A\0\0\0Y\0\\\0U\0S\0E\0R\0\\\0S\0-\01\0-\05\0-\02\01\0-\05\01\02\07\00\03\08\07\01\0-\02\01\01\02\04\09\00\08\04\00\0-\03\00\04\05\00\08\06\00\01\06\0-\01\00\00\01\0\\\0S\0o\0f\0t\0w\0a\0r\0e\0\\\0M\0i\0c\0r\0o\0s\0o\0f\0t\0\\\0S\0Q\0L\0 \0S\0e\0r\0v\0e\0r\0 \0M\0a\0n\0a\0g\0e\0m\0e\0n\0t\0 \0S\0t\0u\0d\0i\0o\0\\\01\02\0.\00\0_\0C\0o\0n\0f\0i\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0T\0\0\0,\0\0\0,\0\0\0,\0\0\04\0\0\0\0\0\0\0\0\0\0\0€*\0\0¿\0\0\0\0\0\0-\0\0\0\0\0\0\0\0\0\0\0\0\0<	\0\0Œ\0\0H\0\0,\0\0\è\0\0ø\0\0H\0\0À\0\0H\0\0ø\0\0p\0\0\0\0\0\0\0\0\0û\0\0\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0d\0\0\0\0\0\0\0\0\0B\0\0E\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0<	\0\0\0\0\0\0\0\0\0B\0\0¹\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0<	\0\0\0\0\0\0\0\0\0\0n3\0\0N#\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0<	\0\0\ì\n\0\0¨\0\0xV4\0\0\0X\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\n\0\0\0\0\0\0d\0b\0o\0\0\0\0\0\0D\0A\0N\0H\0G\0I\0A\0\0\0\0\0\0\0©/\0\0\0\0R5\0\0\0\0\0\0\0\0\0ððð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Q\0\0\0\0\0\0\0\è\n\0\0\Ó1\0\0o\0\0S\0\02\0\0\0\0\0\0\0o\0\0S\0\0\0\0\0\0\0ÿÿÿ\0\0\0€\0\0\0\0\0\0\0°0\0Tahoma\0F\0K\0_\0D\0A\0N\0H\0G\0I\0A\0_\0M\0A\0T\0H\0A\0N\0G\0!C4\0\0\0û\0\0›\0\0xV4\0\0\0\0\0T\0A\0I\0K\0H\0O\0A\0N\0\0\0a\0c\0h\0i\0n\0e\0\\\0S\0O\0F\0T\0W\0A\0R\0E\0\\\0M\0i\0c\0r\0o\0s\0o\0f\0t\0\\\0A\0p\0p\0M\0o\0d\0e\0l\0\\\0L\0o\0o\0k\0a\0s\0i\0d\0e\0\\\0u\0s\0e\0r\0\\\0S\0o\0f\0t\0w\0a\0r\0e\0\\\0M\0i\0c\0r\0o\0s\0o\0f\0t\0\\\0S\0Q\0L\0 \0S\0e\0r\0v\0e\0r\0 \0M\0a\0n\0a\0g\0e\0m\0e\0n\0t\0 \0S\0t\0u\0d\0i\0o\0\\\01\02\0.\00\0\\\0F\0o\0n\0t\0A\0n\0d\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0T\0\0\0,\0\0\0,\0\0\0,\0\0\04\0\0\0\0\0\0\0\0\0\0\0€*\0\0¿\0\0\0\0\0\0-\0\0\0\0\0\0\0\0\0\0\0\0\0<	\0\0Œ\0\0H\0\0,\0\0\è\0\0ø\0\0H\0\0À\0\0H\0\0ø\0\0p\0\0\0\0\0\0\0\0\0û\0\0›\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0d\0\0\0\0\0\0\0\0\0B\0\0€\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0<	\0\0\0\0\0\0\0\0\0B\0\0¹\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0<	\0\0\0\0\0\0\0\0\0\0n3\0\0N#\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0<	\0\0\ì\n\0\0¨\0\0xV4\0\0\0Z\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\n\0\0\0\0\0\0d\0b\0o\0\0\0	\0\0\0T\0A\0I\0K\0H\0O\0A\0N\0\0\0\0\0\ä\0\0†=\0\0«\0\0†=\0\0\0\0\0\0\0\0\0ððð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0T\0\0\0\0\0\0\0x\0\0„;\0\0\0\0S\0\02\0\0\0\0\0\0\0\0\0S\0\0\0\0\0\0\0ÿÿÿ\0\0\0€\0\0\0\0\0\0\0°0\0Tahoma\0F\0K\0_\0D\0A\0N\0H\0G\0I\0A\0_\0T\0A\0I\0K\0H\0O\0A\0N\0\0\0z\r\0\0\Z\0\0z\r\0\0ð<\0\0\0\0\0\0\0\0\0ððð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0V\0\0\0\0\0\0\0wþÿÿ\Ó*\0\0T\0\0S\0\02\0\0\0\0\0\0\0T\0\0S\0\0\0\0\0\0\0ÿÿÿ\0\0\0€\0\0\0\0\0\0\0°0\0Tahoma\0F\0K\0_\0T\0A\0I\0K\0H\0O\0A\0N\0_\0K\0H\0A\0C\0H\0H\0A\0N\0G\0!C4\0\0\0û\0\0ó\0\0xV4\0\0\0\0\0N\0H\0A\0N\0V\0I\0E\0N\0\0\0\ÑŒz\0ÀOÂ—\ë\0\0\0\Ðf\ë\ïg\àtE¤ñ(q[\íe\0\0\0\0\0\0\0\0f\0\0\0\0\0 \0\0\0#…Ã§¢GKŠÁŽ¥\åš½%»$7¯h? \'\Üu\ß\Þ(ò\0\0\0\0€\0\0\0\0\0 \0\0\0\ëk\ä)\Ú]\Ú 2‹\é\ÏÒ¡N(‚6ƒ9º¤\Ï*¸`\0\0\0\r”†\ÄX\Îgw)Ì¡(\ÃnXg[\é[n”B|\Ú8‹Ñ¼¢|À\Ò†z\áª\Ø˜r·\áHœò=uÒ‡\Å$JtÈŠ÷\Çt^\0a\Ò$\\£\à\Ëu·+s\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0T\0\0\0,\0\0\0,\0\0\0,\0\0\04\0\0\0\0\0\0\0\0\0\0\0€*\0\0K\Z\0\0\0\0\0\0-\0\0	\0\0\0\0\0\0\0\0\0\0\0<	\0\0Œ\0\0H\0\0,\0\0\è\0\0ø\0\0H\0\0À\0\0H\0\0ø\0\0p\0\0\0\0\0\0\0\0\0û\0\0ó\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0d\0\0\0\0\0\0\0\0\0B\0\0€\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0<	\0\0\0\0\0\0\0\0\0B\0\0¹\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0<	\0\0\0\0\0\0\0\0\0\0n3\0\0N#\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0<	\0\0\ì\n\0\0¨\0\0xV4\0\0\0Z\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\n\0\0\0\0\0\0d\0b\0o\0\0\0	\0\0\0N\0H\0A\0N\0V\0I\0E\0N\0\0\0\0\0o\r\0\0¤\0\0\0\0¤\0\0\0\0\0\0\0\0\0ððð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Y\0\0\0\0\0\0\0\0\0S \0\0o\0\0S\0\02\0\0\0\0\0\0\0o\0\0S\0\0\0\0\0\0\0ÿÿÿ\0\0\0€\0\0\0\0\0\0\0°0\0Tahoma\0F\0K\0_\0B\0A\0N\0G\0G\0I\0A\0_\0N\0H\0A\0N\0V\0I\0E\0N\0\0\0°\0\0}2\0\0°\0\0\Ü;\0\0 \0\0\Ü;\0\0 \0\0:\0\0°\0\0:\0\0\0\0\0\0\0\0\0ððð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0[\0\0\0\0\0\0\0_\0\0\Ô8\0\0\"\0\0S\0\0)\0\0\0\0\0\0\0\"\0\0S\0\0\0\0\0\0\0ÿÿÿ\0\0\0€\0\0\0\0\0\0\0°0\0Tahoma\0F\0K\0_\0D\0O\0T\0K\0H\0U\0Y\0E\0N\0M\0A\0I\0_\0N\0H\0A\0N\0V\0I\0E\0N\0\0\0o\r\0\0J.\0\0¿\0\0J.\0\0¿\0\081\0\0\È\0\081\0\0\0\0\0\0\0\0\0ððð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0]\0\0\0\0\0\0\0\0\06/\0\0$\0\0S\0\02\0\0\0\0\0\0\0$\0\0S\0\0\0\0\0\0\0ÿÿÿ\0\0\0€\0\0\0\0\0\0\0°0\0Tahoma\0F\0K\0_\0D\0O\0N\0D\0A\0T\0H\0A\0N\0G\0_\0N\0H\0A\0N\0V\0I\0E\0N\0\0\0\Ê\0\0}2\0\0\Ê\0\0¸?\0\0\0\0¸?\0\0\0\0$E\0\0\0\0\0\0\0\0\0ððð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0_\0\0\0\0\0\0\0w\0\0g@\0\0Y\0\0S\0\0@\0\0\0\0\0\0\0Y\0\0S\0\0\0\0\0\0\0ÿÿÿ\0\0\0€\0\0\0\0\0\0\0°0\0Tahoma\0F\0K\0_\0H\0O\0A\0D\0O\0N\0_\0N\0H\0A\0N\0V\0I\0E\0N\0\0\0 öÿÿŠ\0\0 öÿÿú\0\0\0\0ú\0\0\0\0Š\0\0ž\0\0Š\0\0\0\0\0\0\0\0\0ððð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0a\0\0\0\0\0\0\0÷øÿÿø\0\0\r\0\0S\0\01\0\0\0\0\0\0\0\r\0\0S\0\0\0\0\0\0\0ÿÿÿ\0\0\0€\0\0\0\0\0\0\0°0\0Tahoma\0F\0K\0_\0P\0H\0I\0E\0U\0D\0A\0T\0_\0N\0H\0A\0N\0V\0I\0E\0N\0\0\0\ä\0\0}2\0\0\ä\0\0Á-\0\0z\r\0\0Á-\0\0z\r\0\0)\0\0\0\0\0\0\0\0\0ððð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0c\0\0\0\0\0\0\0\Þ\r\0\0p.\0\0²\r\0\0S\0\02\0\0\0\0\0\0\0²\r\0\0S\0\0\0\0\0\0\0ÿÿÿ\0\0\0€\0\0\0\0\0\0\0°0\0Tahoma\0F\0K\0_\0P\0H\0I\0E\0U\0N\0H\0A\0P\0_\0N\0H\0A\0N\0V\0I\0E\0N\0\0\0\nöÿÿŠ\0\0\nöÿÿú\0\0\äóÿÿú\0\0\äóÿÿ¬&\0\0tõÿÿ¬&\0\0\0\0\0\0\0\0\0ððð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0e\0\0\0\0\0\0\0y\éÿÿ©\Z\0\0\Ê\r\0\0S\0\0\n\0\0\0\0\0\0\0\Ê\r\0\0S\0\0\0\0\0\0\0ÿÿÿ\0\0\0€\0\0\0\0\0\0\0°0\0Tahoma\0F\0K\0_\0P\0H\0I\0E\0U\0X\0U\0A\0T\0_\0N\0H\0A\0N\0V\0I\0E\0N\0!C4\0\0\0û\0\0Œ\n\0\0xV4\0\0\0\0\0P\0H\0A\0N\0Q\0U\0Y\0E\0N\0\0\0U\0S\0E\0R\0\\\0S\0-\01\0-\05\0-\02\01\0-\05\01\02\07\00\03\08\07\01\0-\02\01\01\02\04\09\00\08\04\00\0-\03\00\04\05\00\08\06\00\01\06\0-\01\00\00\01\0\\\0S\0o\0f\0t\0w\0a\0r\0e\0\\\0M\0i\0c\0r\0o\0s\0o\0f\0t\0\\\0S\0Q\0L\0 \0S\0e\0r\0v\0e\0r\0 \0M\0a\0n\0a\0g\0e\0m\0e\0n\0t\0 \0S\0t\0u\0d\0i\0o\0\\\01\02\0.\00\0_\0C\0o\0n\0f\0i\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0T\0\0\0,\0\0\0,\0\0\0,\0\0\04\0\0\0\0\0\0\0\0\0\0\0€*\0\0¿\0\0\0\0\0\0-\0\0\0\0\0\0\0\0\0\0\0\0\0<	\0\0Œ\0\0H\0\0,\0\0\è\0\0ø\0\0H\0\0À\0\0H\0\0ø\0\0p\0\0\0\0\0\0\0\0\0û\0\0Œ\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0d\0\0\0\0\0\0\0\0\0B\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0<	\0\0\0\0\0\0\0\0\0B\0\0¹\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0<	\0\0\0\0\0\0\0\0\0\0n3\0\0N#\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0<	\0\0\ì\n\0\0¨\0\0xV4\0\0\0\\\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\n\0\0\0\0\0\0d\0b\0o\0\0\0\n\0\0\0P\0H\0A\0N\0Q\0U\0Y\0E\0N\0\0\0\0\0\ä\0\0´-\0\0\ä\0\0zC\0\0T\0\0zC\0\0T\0\0 A\0\0\ä\0\0 A\0\0\0\0\0\0\0\0\0ððð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0“\r\0\0<9\0\0<\0\0S\0\0*\0\0\0\0\0\0\0<\0\0S\0\0\0\0\0\0\0ÿÿÿ\0\0\0€\0\0\0\0\0\0\0°0\0Tahoma\0F\0K\0_\0T\0A\0I\0K\0H\0O\0A\0N\0_\0P\0H\0A\0N\0Q\0U\0Y\0E\0N\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0þÿÿÿþÿÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\n\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Z\0\0\0\0\0\0þÿÿÿþÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0þÿ\n\0\0ÿÿÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Microsoft DDS Form 2.0\0\0\0\0Embedded Object\0\0\0\0\0ô9²q\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Na¼\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Û\æ°\é\Ð­Q\0 \ÉW9\0\0\0\0ªYHr\Ù\0\0HE\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0x\0\0D\0a\0t\0a\0 \0S\0o\0u\0r\0c\0e\0=\0Q\0U\0Y\0N\0H\0;\0I\0n\0i\0t\0i\0a\0l\0 \0C\0a\0t\0a\0l\0o\0g\0=\0T\0H\0O\0I\0T\0R\0A\0N\0G\0;\0P\0e\0r\0s\0i\0s\0t\0 \0S\0e\0c\0u\0r\0i\0t\0y\0 \0I\0n\0f\0o\0=\0T\0r\0u\0e\0;\0U\0s\0e\0r\0 \0I\0D\0=\0S\0A\0;\0M\0u\0l\0t\0i\0p\0l\0e\0A\0c\0t\0i\0v\0e\0R\0e\0s\0u\0l\0t\0S\0e\0t\0s\0=\0F\0a\0l\0s\0e\0;\0P\0a\0c\0k\0e\0t\0 \0S\0i\0z\0e\0=\04\00\09\06\0;\0A\0p\0\0D\0d\0s\0S\0t\0r\0e\0a\0m\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0E\0\0\0XL\0\0\0\0\0\0S\0c\0h\0e\0m\0a\0 \0U\0D\0V\0 \0D\0e\0f\0a\0u\0l\0t\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0&\0\0ÿÿÿÿÿÿÿÿÿÿÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0D\0S\0R\0E\0F\0-\0S\0C\0H\0E\0M\0A\0-\0C\0O\0N\0T\0E\0N\0T\0S\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0,\0\0\0\0\0\0\0ÿÿÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0S\0c\0h\0e\0m\0a\0 \0U\0D\0V\0 \0D\0e\0f\0a\0u\0l\0t\0 \0P\0o\0s\0t\0 \0V\06\0\0\0\0\0\0\0\0\0\0\0\0\06\0\0ÿÿÿÿÿÿÿÿÿÿÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Eõÿÿ\0\0\0&\0\0\0s\0c\0h\0_\0l\0a\0b\0e\0l\0s\0_\0v\0i\0s\0i\0b\0l\0e\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0d\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ð\0\0\0(\0\0\0A\0c\0t\0i\0v\0e\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0\0\0\0\0\0\0\0\0\01\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\00\0\0\0\0\0\0\0:\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\09\05\02\0,\01\0,\02\04\01\02\0,\05\0,\01\05\09\06\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\01\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\03\04\02\00\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\02\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\09\05\02\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\03\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\09\05\02\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\04\0\0\0\0\0\0\0>\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\09\05\02\0,\01\02\0,\03\04\09\02\0,\01\01\0,\02\01\03\06\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ð\0\0\0(\0\0\0A\0c\0t\0i\0v\0e\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0\0\0\0\0\0\0\0\0\01\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\00\0\0\0\0\0\0\0:\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\09\05\02\0,\01\0,\02\04\01\02\0,\05\0,\01\05\09\06\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\01\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\03\04\02\00\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\02\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\09\05\02\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\03\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\09\05\02\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\04\0\0\0\0\0\0\0>\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\09\05\02\0,\01\02\0,\03\04\09\02\0,\01\01\0,\02\01\03\06\0\0\0\0\0\0\0\0\0\0\0\0\0<\0\0\0\0\0\â\0\0\0d\0b\0o\0\0\0F\0K\0_\0P\0H\0I\0E\0U\0D\0A\0T\0_\0K\0H\0A\0C\0H\0H\0A\0N\0G\0\0\0\0\0\0\0\0\0\0\0\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0{¡¸{¡\0\0\0\0\0\0\0\0­\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ð\0\0\0(\0\0\0A\0c\0t\0i\0v\0e\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0\0\0\0\0\0\0\0\0\01\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\00\0\0\0\0\0\0\0:\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\09\05\02\0,\01\0,\02\04\01\02\0,\05\0,\01\05\09\06\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\01\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\03\04\02\00\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\02\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\09\05\02\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\03\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\09\05\02\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\04\0\0\0\0\0\0\0>\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\09\05\02\0,\01\02\0,\03\04\09\02\0,\01\01\0,\02\01\03\06\0\0\0\0\0\0\0\0\0\0\0\0\02\0\0\0\0\0\0\0\0\0d\0b\0o\0\0\0F\0K\0_\0C\0T\0P\0D\0_\0P\0H\0I\0E\0U\0D\0A\0T\0\0\0\0\0\0\0\0\0\0\0\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0w¡øw¡\0\0\0\0\0\0\0\0­\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ð\0\0\0(\0\0\0A\0c\0t\0i\0v\0e\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0\0\0\0\0\0\0\0\0\01\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\00\0\0\0\0\0\0\0:\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\09\05\02\0,\01\0,\02\04\01\02\0,\05\0,\01\05\09\06\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\01\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\03\04\02\00\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\02\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\09\05\02\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\03\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\09\05\02\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\04\0\0\0\0\0\0\0>\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\09\05\02\0,\01\02\0,\03\04\09\02\0,\01\01\0,\02\01\03\06\0\0\0	\0\0\0	\0\0\0\0\0\0\00\0\0\0j!\0\0\0d\0b\0o\0\0\0F\0K\0_\0C\0T\0P\0D\0_\0M\0A\0T\0H\0A\0N\0G\0\0\0\0\0\0\0\0\0\0\0\Ä\0\0\0\0\n\0\0\0\n\0\0\0	\0\0\0\0\0\0Ò©pÒ©\0\0\0\0\0\0\0\0­\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ð\0\0\0(\0\0\0A\0c\0t\0i\0v\0e\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0\0\0\0\0\0\0\0\0\01\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\00\0\0\0\0\0\0\0:\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\09\05\02\0,\01\0,\02\04\01\02\0,\05\0,\01\05\09\06\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\01\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\03\04\03\02\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\02\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\09\05\02\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\03\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\09\05\02\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\04\0\0\0\0\0\0\0>\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\09\05\02\0,\01\02\0,\03\04\09\02\0,\01\01\0,\02\01\03\06\0\0\0\0\0\0\0\0\0\0\0\0\06\0\0\0€Y\0\0\0d\0b\0o\0\0\0F\0K\0_\0B\0A\0N\0G\0G\0I\0A\0_\0M\0A\0T\0H\0A\0N\0G\0\0\0\0\0\0\0\0\0\0\0\Ä\0\0\0\0\r\0\0\0\r\0\0\0\0\0\0\0\0\0Ç©ðÇ©\0\0\0\0\0\0\0\0­\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ð\0\0\0(\0\0\0A\0c\0t\0i\0v\0e\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0\0\0\0\0\0\0\0\0\01\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\00\0\0\0\0\0\0\0:\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\09\05\02\0,\01\0,\02\04\01\02\0,\05\0,\01\05\09\06\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\01\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\03\04\03\02\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\02\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\09\05\02\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\03\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\09\05\02\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\04\0\0\0\0\0\0\0>\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\09\05\02\0,\01\02\0,\03\04\09\02\0,\01\01\0,\02\01\03\06\0\0\0\0\0\0\0\0\0\0\0\0\0.\0\0\0j!\0\0\0d\0b\0o\0\0\0F\0K\0_\0M\0A\0T\0H\0A\0N\0G\0_\0V\0A\0I\0\0\0\0\0\0\0\0\0\0\0\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ï©0Ï©\0\0\0\0\0\0\0\0­\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ð\0\0\0(\0\0\0A\0c\0t\0i\0v\0e\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0\0\0\0\0\0\0\0\0\01\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\00\0\0\0\0\0\0\0:\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0,\01\0,\01\09\03\02\0,\05\0,\01\02\07\02\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\01\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\09\01\06\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\02\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\03\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\04\0\0\0\0\0\0\0>\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0,\01\02\0,\02\07\09\06\0,\01\01\0,\01\07\00\04\0\0\0\0\0\0\0\0\0\0\0\0\04\0\0\0\0\0\0\0\0\0d\0b\0o\0\0\0F\0K\0_\0M\0A\0T\0H\0A\0N\0G\0_\0L\0O\0A\0I\0M\0H\0\0\0\0\0\0\0\0\0\0\0\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0w¡xw¡\0\0\0\0\0\0\0\0­\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ð\0\0\0(\0\0\0A\0c\0t\0i\0v\0e\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0\0\0\0\0\0\0\0\0\01\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\00\0\0\0\0\0\0\0:\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0,\01\0,\01\09\03\02\0,\05\0,\01\02\07\02\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\01\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\09\01\06\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\02\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\03\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\04\0\0\0\0\0\0\0>\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0,\01\02\0,\02\07\09\06\0,\01\01\0,\01\07\00\04\0\0\0\0\0\0\0\0\0\0\0\0\0:\0\0\0j!\0\0\0d\0b\0o\0\0\0F\0K\0_\0H\0I\0N\0H\0A\0N\0H\0M\0H\0_\0M\0A\0T\0H\0A\0N\0G\0\0\0\0\0\0\0\0\0\0\0\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ï©°Ï©\0\0\0\0\0\0\0\0­\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ð\0\0\0(\0\0\0A\0c\0t\0i\0v\0e\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0\0\0\0\0\0\0\0\0\01\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\00\0\0\0\0\0\0\0:\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0,\01\0,\01\09\03\02\0,\05\0,\01\02\07\02\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\01\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\05\09\02\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\02\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\03\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\04\0\0\0\0\0\0\0>\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0,\01\02\0,\02\07\09\06\0,\01\01\0,\01\07\00\04\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ð\0\0\0(\0\0\0A\0c\0t\0i\0v\0e\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0\0\0\0\0\0\0\0\0\01\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\00\0\0\0\0\0\0\0:\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0,\01\0,\01\09\03\02\0,\05\0,\01\02\07\02\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\01\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\09\01\06\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\02\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\03\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\04\0\0\0\0\0\0\0>\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0,\01\02\0,\02\07\09\06\0,\01\01\0,\01\07\00\04\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ð\0\0\0(\0\0\0A\0c\0t\0i\0v\0e\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0\0\0\0\0\0\0\0\0\01\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\00\0\0\0\0\0\0\0:\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0,\01\0,\01\09\03\02\0,\05\0,\01\02\07\02\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\01\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\09\01\06\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\02\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\03\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\04\0\0\0\0\0\0\0>\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0,\01\02\0,\02\07\09\06\0,\01\01\0,\01\07\00\04\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ð\0\0\0(\0\0\0A\0c\0t\0i\0v\0e\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0\0\0\0\0\0\0\0\0\01\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\00\0\0\0\0\0\0\0:\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0,\01\0,\01\09\03\02\0,\05\0,\01\02\07\02\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\01\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\05\09\02\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\02\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\03\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\04\0\0\0\0\0\0\0>\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0,\01\02\0,\02\07\09\06\0,\01\01\0,\01\07\00\04\0\0\0 \0\0\0 \0\0\0\0\0\0\08\0\0\0\0\0\0\0\0\0d\0b\0o\0\0\0F\0K\0_\0M\0A\0T\0H\0A\0N\0G\0_\0N\0H\0A\0N\0H\0I\0E\0U\0\0\0\0\0\0\0\0\0\0\0\Ä\0\0\0\0!\0\0\0!\0\0\0 \0\0\0\0\0\0­_\nð­_\n\0\0\0\0\0\0\0\0­\0\0\0\0\"\0\0\0\"\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ð\0\0\0(\0\0\0A\0c\0t\0i\0v\0e\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0\0\0\0\0\0\0\0\0\01\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\00\0\0\0\0\0\0\0:\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0,\01\0,\01\09\03\02\0,\05\0,\01\02\07\02\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\01\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\09\01\06\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\02\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\03\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\04\0\0\0\0\0\0\0>\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0,\01\02\0,\02\07\09\06\0,\01\01\0,\01\07\00\04\0\0\0#\0\0\0#\0\0\0\0\0\0\02\0\0\0€Y\0\0\0d\0b\0o\0\0\0F\0K\0_\0P\0H\0I\0E\0U\0N\0H\0A\0P\0_\0K\0H\0O\0\0\0\0\0\0\0\0\0\0\0\Ä\0\0\0\0$\0\0\0$\0\0\0#\0\0\0\0\0\0´_\np´_\n\0\0\0\0\0\0\0\0­\0\0\0\0%\0\0\0%\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ð\0\0\0(\0\0\0A\0c\0t\0i\0v\0e\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0\0\0\0\0\0\0\0\0\01\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\00\0\0\0\0\0\0\0:\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0,\01\0,\01\09\03\02\0,\05\0,\01\02\07\02\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\01\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\09\01\06\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\02\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\03\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\04\0\0\0\0\0\0\0>\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0,\01\02\0,\02\07\09\06\0,\01\01\0,\01\07\00\04\0\0\0&\0\0\0&\0\0\0\0\0\0\0B\0\0\0&u^\0\0\0d\0b\0o\0\0\0F\0K\0_\0D\0O\0N\0D\0A\0T\0H\0A\0N\0G\0_\0N\0H\0A\0C\0U\0N\0G\0C\0A\0P\0\0\0\0\0\0\0\0\0\0\0\Ä\0\0\0\0\'\0\0\0\'\0\0\0&\0\0\0\0\0\0°_\np°_\n\0\0\0\0\0\0\0\0­\0\0\0\0(\0\0\0(\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ð\0\0\0(\0\0\0A\0c\0t\0i\0v\0e\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0\0\0\0\0\0\0\0\0\01\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\00\0\0\0\0\0\0\0:\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0,\01\0,\01\09\03\02\0,\05\0,\01\02\07\02\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\01\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\09\01\06\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\02\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\03\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\04\0\0\0\0\0\0\0>\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0,\01\02\0,\02\07\09\06\0,\01\01\0,\01\07\00\04\0\0\0)\0\0\0)\0\0\0\0\0\0\06\0\0\0\0\0\0\0\0\0d\0b\0o\0\0\0F\0K\0_\0C\0T\0P\0N\0_\0D\0O\0N\0D\0A\0T\0H\0A\0N\0G\0\0\0\0\0\0\0\0\0\0\0\Ä\0\0\0\0*\0\0\0*\0\0\0)\0\0\0\0\0\0±W\nÐ±W\n\0\0\0\0\0\0\0\0­\0\0\0\0+\0\0\0+\0\0\0\0\0\0\00\0\0\0\0€?\0\0\0d\0b\0o\0\0\0F\0K\0_\0C\0T\0P\0N\0_\0M\0A\0T\0H\0A\0N\0G\0\0\0\0\0\0\0\0\0\0\0\Ä\0\0\0\0,\0\0\0,\0\0\0+\0\0\0\0\0\0±W\n±W\n\0\0\0\0\0\0\0\0­\0\0\0\0-\0\0\0-\0\0\0\0\0\0\04\0\0\0€Y\0\0\0d\0b\0o\0\0\0F\0K\0_\0C\0T\0P\0N\0_\0P\0H\0I\0E\0U\0N\0H\0A\0P\0\0\0\0\0\0\0\0\0\0\0\Ä\0\0\0\0.\0\0\0.\0\0\0-\0\0\0\0\0\0­W\nÐ­W\n\0\0\0\0\0\0\0\0­\0\0\0\0/\0\0\0/\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ð\0\0\0(\0\0\0A\0c\0t\0i\0v\0e\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0\0\0\0\0\0\0\0\0\01\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\00\0\0\0\0\0\0\0:\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0,\01\0,\01\09\03\02\0,\05\0,\01\02\07\02\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\01\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\09\04\00\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\02\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\03\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\04\0\0\0\0\0\0\0>\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0,\01\02\0,\02\07\09\06\0,\01\01\0,\01\07\00\04\0\0\00\0\0\00\0\0\0\0\0\0\08\0\0\0\0\0\0\0\0\0d\0b\0o\0\0\0F\0K\0_\0C\0T\0D\0D\0H\0_\0D\0O\0N\0D\0A\0T\0H\0A\0N\0G\0\0\0\0\0\0\0\0\0\0\0\Ä\0\0\0\01\0\0\01\0\0\00\0\0\0\0\0\0Ú©pÚ©\0\0\0\0\0\0\0\0­\0\0\0\02\0\0\02\0\0\0\0\0\0\02\0\0\0\0\0\0\0\0\0d\0b\0o\0\0\0F\0K\0_\0C\0T\0D\0D\0H\0_\0M\0A\0T\0H\0A\0N\0G\0\0\0\0\0\0\0\0\0\0\0\Ä\0\0\0\03\0\0\03\0\0\02\0\0\0\0\0\0Ú©0Ú©\0\0\0\0\0\0\0\0­\0\0\0\04\0\0\04\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ð\0\0\0(\0\0\0A\0c\0t\0i\0v\0e\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0\0\0\0\0\0\0\0\0\01\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\00\0\0\0\0\0\0\0:\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0,\01\0,\01\09\03\02\0,\05\0,\01\02\07\02\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\01\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\09\01\06\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\02\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\03\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\04\0\0\0\0\0\0\0>\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0,\01\02\0,\02\07\09\06\0,\01\01\0,\01\07\00\04\0\0\05\0\0\05\0\0\0\0\0\0\02\0\0\0€Y\0\0\0d\0b\0o\0\0\0F\0K\0_\0P\0H\0I\0E\0U\0X\0U\0A\0T\0_\0K\0H\0O\0\0\0\0\0\0\0\0\0\0\0\Ä\0\0\0\06\0\0\06\0\0\05\0\0\0\0\0\0‰\è‰\0\0\0\0\0\0\0\0­\0\0\0\07\0\0\07\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ð\0\0\0(\0\0\0A\0c\0t\0i\0v\0e\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0\0\0\0\0\0\0\0\0\01\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\00\0\0\0\0\0\0\0:\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0,\01\0,\01\09\03\02\0,\05\0,\01\02\07\02\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\01\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\09\01\06\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\02\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\03\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\04\0\0\0\0\0\0\0>\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0,\01\02\0,\02\07\09\06\0,\01\01\0,\01\07\00\04\0\0\08\0\0\08\0\0\0\0\0\0\00\0\0\0ˆe\0\0\0d\0b\0o\0\0\0F\0K\0_\0C\0T\0P\0X\0_\0M\0A\0T\0H\0A\0N\0G\0\0\0\0\0\0\0\0\0\0\0\Ä\0\0\0\09\0\0\09\0\0\08\0\0\0\0\0\0Þ©pÞ©\0\0\0\0\0\0\0\0­\0\0\0\0:\0\0\0:\0\0\0\0\0\0\04\0\0\0\0\0\0\0\0\0d\0b\0o\0\0\0F\0K\0_\0C\0T\0P\0X\0_\0P\0H\0I\0E\0U\0X\0U\0A\0T\0\0\0\0\0\0\0\0\0\0\0\Ä\0\0\0\0;\0\0\0;\0\0\0:\0\0\0\0\0\0\á©ð\á©\0\0\0\0\0\0\0\0­\0\0\0\0<\0\0\0<\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ð\0\0\0(\0\0\0A\0c\0t\0i\0v\0e\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0\0\0\0\0\0\0\0\0\01\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\00\0\0\0\0\0\0\0:\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0,\01\0,\01\09\03\02\0,\05\0,\01\02\07\02\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\01\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\09\01\06\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\02\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\03\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\04\0\0\0\0\0\0\0>\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0,\01\02\0,\02\07\09\06\0,\01\01\0,\01\07\00\04\0\0\0=\0\0\0=\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ð\0\0\0(\0\0\0A\0c\0t\0i\0v\0e\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0\0\0\0\0\0\0\0\0\01\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\00\0\0\0\0\0\0\0:\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0,\01\0,\01\09\03\02\0,\05\0,\01\02\07\02\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\01\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\09\01\06\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\02\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\03\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\04\0\0\0\0\0\0\0>\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0,\01\02\0,\02\07\09\06\0,\01\01\0,\01\07\00\04\0\0\0>\0\0\0>\0\0\0\0\0\0\0<\0\0\0\0\0\â\0\0\0d\0b\0o\0\0\0F\0K\0_\0C\0T\0D\0K\0M\0_\0D\0O\0T\0K\0H\0U\0Y\0E\0N\0M\0A\0I\0\0\0\0\0\0\0\0\0\0\0\Ä\0\0\0\0?\0\0\0?\0\0\0>\0\0\0\0\0\0\â©°\â©\0\0\0\0\0\0\0\0­\0\0\0\0@\0\0\0@\0\0\0\0\0\0\02\0\0\0\0\0\0\0\0\0d\0b\0o\0\0\0F\0K\0_\0C\0T\0D\0K\0M\0_\0M\0A\0T\0H\0A\0N\0G\0\0\0\0\0\0\0\0\0\0\0\Ä\0\0\0\0A\0\0\0A\0\0\0@\0\0\0\0\0\0Þ©ðÞ©\0\0\0\0\0\0\0\0­\0\0\0\0B\0\0\0B\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ð\0\0\0(\0\0\0A\0c\0t\0i\0v\0e\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0\0\0\0\0\0\0\0\0\01\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\00\0\0\0\0\0\0\0:\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0,\01\0,\01\09\03\02\0,\05\0,\01\02\07\02\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\01\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\09\01\06\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\02\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\03\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\04\0\0\0\0\0\0\0>\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0,\01\02\0,\02\07\09\06\0,\01\01\0,\01\07\00\04\0\0\0C\0\0\0C\0\0\0\0\0\0\08\0\0\0\0\0\0\0\0\0d\0b\0o\0\0\0F\0K\0_\0H\0O\0A\0D\0O\0N\0_\0K\0H\0A\0C\0H\0H\0A\0N\0G\0\0\0\0\0\0\0\0\0\0\0\Ä\0\0\0\0D\0\0\0D\0\0\0C\0\0\0\0\0\0±W\nP±W\n\0\0\0\0\0\0\0\0­\0\0\0\0E\0\0\0E\0\0\0\0\0\0\06\0\0\0\0\0\0\0\0\0d\0b\0o\0\0\0F\0K\0_\0H\0O\0A\0D\0O\0N\0_\0P\0H\0I\0E\0U\0D\0A\0T\0\0\0\0\0\0\0\0\0\0\0\Ä\0\0\0\0F\0\0\0F\0\0\0E\0\0\0\0\0\0³W\nP³W\n\0\0\0\0\0\0\0\0­\0\0\0\0G\0\0\0G\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ð\0\0\0(\0\0\0A\0c\0t\0i\0v\0e\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0\0\0\0\0\0\0\0\0\01\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\00\0\0\0\0\0\0\0:\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0,\01\0,\01\09\03\02\0,\05\0,\01\02\07\02\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\01\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\09\01\06\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\02\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\03\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\04\0\0\0\0\0\0\0>\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0,\01\02\0,\02\07\09\06\0,\01\01\0,\01\07\00\04\0\0\0H\0\0\0H\0\0\0\0\0\0\0.\0\0\0*›d\0\0\0d\0b\0o\0\0\0F\0K\0_\0C\0T\0H\0D\0_\0H\0O\0A\0D\0O\0N\0\0\0\0\0\0\0\0\0\0\0\Ä\0\0\0\0I\0\0\0I\0\0\0H\0\0\0\0\0\0V\nÀV\n\0\0\0\0\0\0\0\0­\0\0\0\0J\0\0\0J\0\0\0\0\0\0\00\0\0\0*›d\0\0\0d\0b\0o\0\0\0F\0K\0_\0C\0T\0H\0D\0_\0M\0A\0T\0H\0A\0N\0G\0\0\0\0\0\0\0\0\0\0\0\Ä\0\0\0\0K\0\0\0K\0\0\0J\0\0\0\0\0\0V\nÀV\n\0\0\0\0\0\0\0\0­\0\0\0\0L\0\0\0L\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ð\0\0\0(\0\0\0A\0c\0t\0i\0v\0e\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0\0\0\0\0\0\0\0\0\01\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\00\0\0\0\0\0\0\0:\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0,\01\0,\01\09\03\02\0,\05\0,\01\02\07\02\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\01\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\09\01\06\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\02\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\03\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\04\0\0\0\0\0\0\0>\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0,\01\02\0,\02\07\09\06\0,\01\01\0,\01\07\00\04\0\0\0M\0\0\0M\0\0\0\0\0\0\0<\0\0\0\0\0\â\0\0\0d\0b\0o\0\0\0F\0K\0_\0P\0H\0I\0E\0U\0X\0U\0A\0T\0_\0C\0H\0I\0N\0H\0A\0N\0H\0\0\0\0\0\0\0\0\0\0\0\Ä\0\0\0\0N\0\0\0N\0\0\0M\0\0\0\0\0\0¹0¹\0\0\0\0\0\0\0\0­\0\0\0\0O\0\0\0O\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ð\0\0\0(\0\0\0A\0c\0t\0i\0v\0e\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0\0\0\0\0\0\0\0\0\01\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\00\0\0\0\0\0\0\0:\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0,\01\0,\01\09\03\02\0,\05\0,\01\02\07\02\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\01\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\09\01\06\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\02\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\03\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\04\0\0\0\0\0\0\0>\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0,\01\02\0,\02\07\09\06\0,\01\01\0,\01\07\00\04\0\0\0P\0\0\0P\0\0\0\0\0\0\06\0\0\0\0\0\0\0\0\0d\0b\0o\0\0\0F\0K\0_\0D\0A\0N\0H\0G\0I\0A\0_\0M\0A\0T\0H\0A\0N\0G\0\0\0\0\0\0\0\0\0\0\0\Ä\0\0\0\0Q\0\0\0Q\0\0\0P\0\0\0\0\0\0m@m\0\0\0\0\0\0\0\0­\0\0\0\0R\0\0\0R\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ð\0\0\0(\0\0\0A\0c\0t\0i\0v\0e\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0\0\0\0\0\0\0\0\0\01\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\00\0\0\0\0\0\0\0:\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0,\01\0,\01\09\03\02\0,\05\0,\01\02\07\02\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\01\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\09\01\06\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\02\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\03\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\04\0\0\0\0\0\0\0>\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0,\01\02\0,\02\07\09\06\0,\01\01\0,\01\07\00\04\0\0\0S\0\0\0S\0\0\0\0\0\0\08\0\0\0€Y\0\0\0d\0b\0o\0\0\0F\0K\0_\0D\0A\0N\0H\0G\0I\0A\0_\0T\0A\0I\0K\0H\0O\0A\0N\0\0\0\0\0\0\0\0\0\0\0\Ä\0\0\0\0T\0\0\0T\0\0\0S\0\0\0\0\0\0(¥((¥\0\0\0\0\0\0\0\0­\0\0\0\0U\0\0\0U\0\0\0\0\0\0\0<\0\0\0j!\0\0\0d\0b\0o\0\0\0F\0K\0_\0T\0A\0I\0K\0H\0O\0A\0N\0_\0K\0H\0A\0C\0H\0H\0A\0N\0G\0\0\0\0\0\0\0\0\0\0\0\Ä\0\0\0\0V\0\0\0V\0\0\0U\0\0\0\0\0\0#¥¨#¥\0\0\0\0\0\0\0\0­\0\0\0\0W\0\0\0W\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ð\0\0\0(\0\0\0A\0c\0t\0i\0v\0e\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0\0\0\0\0\0\0\0\0\01\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\00\0\0\0\0\0\0\0:\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0,\01\0,\01\09\03\02\0,\05\0,\01\02\07\02\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\01\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\09\01\06\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\02\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\03\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\04\0\0\0\0\0\0\0>\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0,\01\02\0,\02\07\09\06\0,\01\01\0,\01\07\00\04\0\0\0X\0\0\0X\0\0\0\0\0\0\08\0\0\0\0\0\0\0\0\0d\0b\0o\0\0\0F\0K\0_\0B\0A\0N\0G\0G\0I\0A\0_\0N\0H\0A\0N\0V\0I\0E\0N\0\0\0\0\0\0\0\0\0\0\0\Ä\0\0\0\0Y\0\0\0Y\0\0\0X\0\0\0\0\0\0z\èz\0\0\0\0\0\0\0\0­\0\0\0\0Z\0\0\0Z\0\0\0\0\0\0\0B\0\0\0&u^\0\0\0d\0b\0o\0\0\0F\0K\0_\0D\0O\0T\0K\0H\0U\0Y\0E\0N\0M\0A\0I\0_\0N\0H\0A\0N\0V\0I\0E\0N\0\0\0\0\0\0\0\0\0\0\0\Ä\0\0\0\0[\0\0\0[\0\0\0Z\0\0\0\0\0\0~¨~\0\0\0\0\0\0\0\0­\0\0\0\0\\\0\0\0\\\0\0\0\0\0\0\0>\0\0\0j!\0\0\0d\0b\0o\0\0\0F\0K\0_\0D\0O\0N\0D\0A\0T\0H\0A\0N\0G\0_\0N\0H\0A\0N\0V\0I\0E\0N\0\0\0\0\0\0\0\0\0\0\0\Ä\0\0\0\0]\0\0\0]\0\0\0\\\0\0\0\0\0\0~\è~\0\0\0\0\0\0\0\0­\0\0\0\0^\0\0\0^\0\0\0\0\0\0\06\0\0\0€Y\0\0\0d\0b\0o\0\0\0F\0K\0_\0H\0O\0A\0D\0O\0N\0_\0N\0H\0A\0N\0V\0I\0E\0N\0\0\0\0\0\0\0\0\0\0\0\Ä\0\0\0\0_\0\0\0_\0\0\0^\0\0\0\0\0\0y\èy\0\0\0\0\0\0\0\0­\0\0\0\0`\0\0\0`\0\0\0\0\0\0\0:\0\0\0\0\0\0\0\0\0d\0b\0o\0\0\0F\0K\0_\0P\0H\0I\0E\0U\0D\0A\0T\0_\0N\0H\0A\0N\0V\0I\0E\0N\0\0\0\0\0\0\0\0\0\0\0\Ä\0\0\0\0a\0\0\0a\0\0\0`\0\0\0\0\0\0h\0\0\0\0\0\0\0\0­\0\0\0\0b\0\0\0b\0\0\0\0\0\0\0<\0\0\0\0\0\â\0\0\0d\0b\0o\0\0\0F\0K\0_\0P\0H\0I\0E\0U\0N\0H\0A\0P\0_\0N\0H\0A\0N\0V\0I\0E\0N\0\0\0\0\0\0\0\0\0\0\0\Ä\0\0\0\0c\0\0\0c\0\0\0b\0\0\0\0\0\0\n¶¨\n¶\0\0\0\0\0\0\0\0­\0\0\0\0d\0\0\0d\0\0\0\0\0\0\0<\0\0\0\0\0\0\0\0\0d\0b\0o\0\0\0F\0K\0_\0P\0H\0I\0E\0U\0X\0U\0A\0T\0_\0N\0H\0A\0N\0V\0I\0E\0N\0\0\0\0\0\0\0\0\0\0\0\Ä\0\0\0\0e\0\0\0e\0\0\0d\0\0\0\0\0\0\n¶(\n¶\0\0\0\0\0\0\0\0­\0\0\0\0f\0\0\0f\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ð\0\0\0(\0\0\0A\0c\0t\0i\0v\0e\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0\0\0\0\0\0\0\0\0\01\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\00\0\0\0\0\0\0\0:\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0,\01\0,\01\09\03\02\0,\05\0,\01\02\07\02\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\01\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\09\01\06\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\02\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\03\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\04\0\0\0\0\0\0\0>\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\03\06\04\0,\01\02\0,\02\07\09\06\0,\01\01\0,\01\07\00\04\0\0\0g\0\0\0g\0\0\0\0\0\0\0<\0\0\0\0\0\â\0\0\0d\0b\0o\0\0\0F\0K\0_\0T\0A\0I\0K\0H\0O\0A\0N\0_\0P\0H\0A\0N\0Q\0U\0Y\0E\0N\0\0\0\0\0\0\0\0\0\0\0\Ä\0\0\0\0h\0\0\0h\0\0\0g\0\0\0\0\0\0Ý©0Ý©\0\0\0\0\0\0\0\0­\0\0\0\0´\0\0\0U\0\0\0\0\0\0R\0\0\0-\0\0\0\0\0\0\0C\0\0\0\0\0\0B\0\0\0G\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0u\0\0\0@\0\0\0E\0\0\0\0\0\0B\0\0\0-\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0w\0\0\0>\0\0\0P\0\0\0\0\0\0O\0\0\0\0\0\0@\0\0\0J\0\0\0\0\0\0G\0\0\0Ž\0\0\0Q\0\0\0@\0\0\0\0\0\0=\0\0\0\0\0\0$\0\0\08\0\0\0\0\0\07\0\0\0¨\0\0\0Q\0\0\02\0\0\0\0\0\0/\0\0\0-\0\0\0\0\0\0\0+\0\0\0\0\0\0(\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0b\0\0\0Q\0\0\0\0\0\0\0\0\0\0\0\0u\0\0\0@\0\0\0	\0\0\0\0\0\0\0\0\0\\\0\0\0w\0\0\0\0\0\0\0\0\0\0\0\0\\\0\0\0&\0\0\0\0\0\0\0\0\0\0\0\0e\0\0\0\\\0\0\05\0\0\0\0\0\04\0\0\0\0\0\0\0\0\0\0#\0\0\0\0\0\0\"\0\0\0O\0\0\0\0\0\0\0&\0\0\0\0\0\0%\0\0\0O\0\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0A\0\0\0\0\0\0-\0\0\0\"\0\0\0(\0\0\0ƒ\0\0\0\Z\0\0\00\0\0\0%\0\0\0/\0\0\0%\0\0\0\0\0\0\0)\0\0\0%\0\0\0(\0\0\0k\0\0\0P\0\0\0:\0\0\04\0\0\07\0\0\0k\0\0\04\0\0\0>\0\0\0<\0\0\0=\0\0\0k\0\0\02\0\0\0H\0\0\0B\0\0\0G\0\0\0\0\0\0A\0\0\0M\0\0\0L\0\0\04\0\0\0\0\0\0\0i\0\0\0S\0\0\0R\0\0\0O\0\0\0P\0\0\0k\0\0\0d\0\0\0W\0\0\04\0\0\0\0\0\0\0P\0\0\0b\0\0\0W\0\0\0\"\0\0\0O\0\0\0\0\0\0\0`\0\0\0W\0\0\0\0\0\0\0\0\0ž\0\0\0^\0\0\0W\0\0\0B\0\0\0A\0\0\0\0\0\0\0\\\0\0\0W\0\0\0%\0\0\0\0\0\0P\0\0\0Z\0\0\0W\0\0\0<\0\0\03\0\0\0^\0\0\0X\0\0\0W\0\0\0\0\0\0]\0\0\0\\\0\0\0g\0\0\0f\0\0\0R\0\0\05\0\0\0^\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0p\0l\0i\0c\0a\0t\0i\0o\0n\0 \0N\0a\0m\0e\0=\0\"\0M\0i\0c\0r\0o\0s\0o\0f\0t\0 \0S\0Q\0L\0 \0S\0e\0r\0v\0e\0r\0 \0M\0a\0n\0a\0g\0e\0m\0e\0n\0t\0 \0S\0t\0u\0d\0i\0o\0\"\0\0\0\0€\0\0\0\0D\0i\0a\0g\0r\0a\0m\0_\00\0\0\0\0&\0\0\0\0K\0H\0A\0C\0H\0H\0A\0N\0G\0\0\0\0\0\0d\0b\0o\0\0\0\0&\0\0\0\0P\0H\0I\0E\0U\0D\0A\0T\0\0\0\0\0\0d\0b\0o\0\0\0\0&\0\n\0\0\0C\0T\0P\0D\0\0\0\0\0\0d\0b\0o\0\0\0\0&\0\0\0\0M\0A\0T\0H\0A\0N\0G\0\0\0\0\0\0d\0b\0o\0\0\0\0&\0\0\0\0B\0A\0N\0G\0G\0I\0A\0\0\0\0\0\0d\0b\0o\0\0\0\0&\0\0\0\0C\0H\0A\0T\0L\0I\0E\0U\0\0\0\0\0\0d\0b\0o\0\0\0\0&\0\0\0\0L\0O\0A\0I\0M\0H\0\0\0\0\0\0d\0b\0o\0\0\0\0&\0\0\0\0H\0I\0N\0H\0A\0N\0H\0M\0H\0\0\0\0\0\0d\0b\0o\0\0\0\0&\0\n\0\0\0S\0I\0Z\0E\0\0\0\0\0\0d\0b\0o\0\0\0\0&\0\0\0\0K\0H\0O\0\0\0\0\0\0d\0b\0o\0\0\0\0&\0\0\0\0N\0H\0A\0C\0U\0N\0G\0C\0A\0P\0\0\0\0\0\0d\0b\0o\0\0\0\0&\0\0\0\0N\0H\0A\0N\0H\0I\0E\0U\0\0\0\0\0\0d\0b\0o\0\0\0\0&\0\0\0\0P\0H\0I\0E\0U\0N\0H\0A\0P\0\0\0\0\0\0d\0b\0o\0\0\0\0&\0\0\0\0D\0O\0N\0D\0A\0T\0H\0A\0N\0G\0\0\0\0\0\0d\0b\0o\0\0\0\0&\0\n\0\0\0C\0T\0P\0N\0\0\0\0\0\0d\0b\0o\0\0\0\0&\0\0\0\0C\0T\0D\0D\0H\0\0\0\0\0\0d\0b\0o\0\0\0\0&\0\0\0\0P\0H\0I\0E\0U\0X\0U\0A\0T\0\0\0\0\0\0d\0b\0o\0\0\0\0&\0\n\0\0\0C\0T\0P\0X\0\0\0\0\0\0d\0b\0o\0\0\0\0&\0\0\0\0C\0T\0K\0H\0U\0Y\0E\0N\0M\0A\0I\0\0\0\0\0\0d\0b\0o\0\0\0\0&\0\0\0\0C\0T\0D\0K\0M\0\0\0\0\0\0d\0b\0o\0\0\0\0&\0\0\0\0H\0O\0A\0D\0O\0N\0\0\0\0\0\0d\0b\0o\0\0\0\0&\0\n\0\0\0C\0T\0H\0D\0\0\0\0\0\0d\0b\0o\0\0\0\0&\0\0\0\0C\0H\0I\0N\0H\0A\0N\0H\0\0\0\0\0\0d\0b\0o\0\0\0\0&\0\0\0\0D\0A\0N\0H\0G\0I\0A\0\0\0\0\0\0d\0b\0o\0\0\0\0&\0\0\0\0T\0A\0I\0K\0H\0O\0A\0N\0\0\0\0\0\0d\0b\0o\0\0\0\0&\0\0\0\0N\0H\0A\0N\0V\0I\0E\0N\0\0\0\0\0\0d\0b\0o\0\0\0\0$\0\0\0\0P\0H\0A\0N\0Q\0U\0Y\0E\0N\0\0\0\0\0\0d\0b\0o\0\0\0\0\0\0Ö…	³»kòEš¸7dð2p\0N\0\0\0{\01\06\03\04\0C\0D\0D\07\0-\00\08\08\08\0-\04\02\0E\03\0-\09\0F\0A\02\0-\0B\06\0D\03\02\05\06\03\0B\09\01\0D\0}\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0bˆR');
/*!40000 ALTER TABLE `sysdiagrams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taikhoan`
--

DROP TABLE IF EXISTS `taikhoan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taikhoan` (
  `TENTK` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `MATKHAU` char(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `MAKH` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `MANV` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `MAPQ` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `MAQUYEN` int DEFAULT NULL,
  PRIMARY KEY (`TENTK`),
  KEY `FK_TAIKHOAN_PHANQUYEN` (`MAPQ`),
  KEY `FK_TAIKHOAN_KHACHHANG` (`MAKH`),
  KEY `FKis9h0jolijw2pnwac69d9r2i` (`MAQUYEN`),
  CONSTRAINT `FK_TAIKHOAN_KHACHHANG` FOREIGN KEY (`MAKH`) REFERENCES `khachhang` (`MAKH`),
  CONSTRAINT `FK_TAIKHOAN_PHANQUYEN` FOREIGN KEY (`MAPQ`) REFERENCES `phanquyen` (`MAPQ`),
  CONSTRAINT `FKis9h0jolijw2pnwac69d9r2i` FOREIGN KEY (`MAQUYEN`) REFERENCES `quyen` (`MAQUYEN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taikhoan`
--

LOCK TABLES `taikhoan` WRITE;
/*!40000 ALTER TABLE `taikhoan` DISABLE KEYS */;
INSERT INTO `taikhoan` VALUES ('TRANTHID','12345673','KH4',NULL,NULL,NULL),('TRANTHIE','12345674','KH5',NULL,NULL,NULL),('TRANVANA','12345670','KH1',NULL,NULL,NULL),('TRANVANB','12345671','KH2',NULL,NULL,NULL),('TRANVANC','12345672','KH3',NULL,NULL,NULL);
/*!40000 ALTER TABLE `taikhoan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-12 18:33:10
