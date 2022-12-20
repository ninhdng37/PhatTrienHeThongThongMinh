-- MySQL dump 10.16  Distrib 10.1.26-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	10.1.26-MariaDB-0+deb9u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dbo.BANGGIA`
--

DROP TABLE IF EXISTS `dbo.BANGGIA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbo.BANGGIA` (
  `MAMH` varchar(10) DEFAULT NULL,
  `MANV` varchar(10) DEFAULT NULL,
  `NGAYAPDUNG` varchar(10) DEFAULT NULL,
  `GIAMOI` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo.BANGGIA`
--

LOCK TABLES `dbo.BANGGIA` WRITE;
/*!40000 ALTER TABLE `dbo.BANGGIA` DISABLE KEYS */;
INSERT INTO `dbo.BANGGIA` VALUES ('MH1       ','NV1       ','2021-02-02',3000),('MH2       ','NV2       ','2021-02-02',2500),('MH3       ','NV3       ','2021-02-02',2500),('MH4       ','NV4       ','2021-02-02',2000),('MH5       ','NV1       ','2021-02-02',2000),('MH6       ','NV2       ','2021-02-02',1700),('MH7       ','NV3       ','2021-02-02',4300),('MH8       ','NV4       ','2021-02-02',3400);
/*!40000 ALTER TABLE `dbo.BANGGIA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbo.CHATLIEU`
--

DROP TABLE IF EXISTS `dbo.CHATLIEU`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbo.CHATLIEU` (
  `MACL` varchar(10) DEFAULT NULL,
  `TENVAI` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo.CHATLIEU`
--

LOCK TABLES `dbo.CHATLIEU` WRITE;
/*!40000 ALTER TABLE `dbo.CHATLIEU` DISABLE KEYS */;
INSERT INTO `dbo.CHATLIEU` VALUES ('CL1       ','COTTON'),('CL3       ','JEAN'),('CL2       ','KAKI');
/*!40000 ALTER TABLE `dbo.CHATLIEU` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbo.CHINHANH`
--

DROP TABLE IF EXISTS `dbo.CHINHANH`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbo.CHINHANH` (
  `MACN` varchar(10) DEFAULT NULL,
  `TENCN` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo.CHINHANH`
--

LOCK TABLES `dbo.CHINHANH` WRITE;
/*!40000 ALTER TABLE `dbo.CHINHANH` DISABLE KEYS */;
INSERT INTO `dbo.CHINHANH` VALUES ('CN1       ','CHI NHÃNH 1'),('CN2       ','CHI NHÃNH 2'),('CN3       ','CHI NHÃNH 3');
/*!40000 ALTER TABLE `dbo.CHINHANH` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbo.CTDDH`
--

DROP TABLE IF EXISTS `dbo.CTDDH`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbo.CTDDH` (
  `MADDH` varchar(10) DEFAULT NULL,
  `MAMH` varchar(10) DEFAULT NULL,
  `SOLUONG` tinyint(4) DEFAULT NULL,
  `DONGIA` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo.CTDDH`
--

LOCK TABLES `dbo.CTDDH` WRITE;
/*!40000 ALTER TABLE `dbo.CTDDH` DISABLE KEYS */;
INSERT INTO `dbo.CTDDH` VALUES ('DDH1      ','MH1       ',20,2500),('DDH1      ','MH2       ',20,2000),('DDH1      ','MH3       ',30,2000),('DDH2      ','MH4       ',20,1500),('DDH2      ','MH5       ',35,1700),('DDH3      ','MH6       ',40,1200),('DDH3      ','MH7       ',35,4000),('DDH3      ','MH8       ',20,3000);
/*!40000 ALTER TABLE `dbo.CTDDH` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbo.CTDKM`
--

DROP TABLE IF EXISTS `dbo.CTDKM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbo.CTDKM` (
  `MADKM` varchar(10) DEFAULT NULL,
  `MAMH` varchar(10) DEFAULT NULL,
  `MUCGIAMGIA` decimal(3,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo.CTDKM`
--

LOCK TABLES `dbo.CTDKM` WRITE;
/*!40000 ALTER TABLE `dbo.CTDKM` DISABLE KEYS */;
INSERT INTO `dbo.CTDKM` VALUES ('DKM1      ','MH1       ',0.50),('DKM1      ','MH2       ',0.10),('DKM2      ','MH3       ',0.15),('DKM2      ','MH4       ',0.20);
/*!40000 ALTER TABLE `dbo.CTDKM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbo.CTHD`
--

DROP TABLE IF EXISTS `dbo.CTHD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbo.CTHD` (
  `SOHD` varchar(10) DEFAULT NULL,
  `MAMH` varchar(10) DEFAULT NULL,
  `SOLUONG` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo.CTHD`
--

LOCK TABLES `dbo.CTHD` WRITE;
/*!40000 ALTER TABLE `dbo.CTHD` DISABLE KEYS */;
INSERT INTO `dbo.CTHD` VALUES ('HD1       ','MH1       ',5),('HD1       ','MH10      ',4),('HD1       ','MH2       ',4),('HD1       ','MH3       ',5),('HD1       ','MH4       ',2),('HD1       ','MH5       ',4),('HD1       ','MH6       ',2),('HD1       ','MH7       ',5),('HD1       ','MH8       ',3),('HD1       ','MH9       ',5),('HD10      ','MH1       ',2),('HD10      ','MH10      ',4),('HD10      ','MH2       ',5),('HD10      ','MH3       ',5),('HD10      ','MH4       ',3),('HD10      ','MH5       ',3),('HD10      ','MH6       ',5),('HD10      ','MH7       ',3),('HD10      ','MH8       ',2),('HD10      ','MH9       ',4),('HD2       ','MH1       ',5),('HD2       ','MH10      ',4),('HD2       ','MH2       ',5),('HD2       ','MH3       ',3),('HD2       ','MH4       ',5),('HD2       ','MH5       ',4),('HD2       ','MH6       ',2),('HD2       ','MH7       ',4),('HD2       ','MH8       ',2),('HD2       ','MH9       ',2),('HD3       ','MH1       ',2),('HD3       ','MH10      ',2),('HD3       ','MH2       ',5),('HD3       ','MH3       ',3),('HD3       ','MH4       ',4),('HD3       ','MH5       ',3),('HD3       ','MH6       ',5),('HD3       ','MH7       ',5),('HD3       ','MH8       ',5),('HD3       ','MH9       ',5),('HD4       ','MH1       ',5),('HD4       ','MH10      ',4),('HD4       ','MH2       ',4),('HD4       ','MH3       ',2),('HD4       ','MH4       ',4),('HD4       ','MH5       ',5),('HD4       ','MH6       ',2),('HD4       ','MH7       ',2),('HD4       ','MH8       ',4),('HD4       ','MH9       ',4),('HD5       ','MH1       ',4),('HD5       ','MH10      ',2),('HD5       ','MH2       ',5),('HD5       ','MH3       ',5),('HD5       ','MH4       ',3),('HD5       ','MH5       ',4),('HD5       ','MH6       ',3),('HD5       ','MH7       ',5),('HD5       ','MH8       ',2),('HD5       ','MH9       ',4),('HD6       ','MH1       ',4),('HD6       ','MH10      ',2),('HD6       ','MH2       ',4),('HD6       ','MH3       ',5),('HD6       ','MH4       ',2),('HD6       ','MH5       ',5),('HD6       ','MH6       ',3),('HD6       ','MH7       ',3),('HD6       ','MH8       ',5),('HD6       ','MH9       ',5),('HD7       ','MH1       ',5),('HD7       ','MH10      ',3),('HD7       ','MH2       ',3),('HD7       ','MH3       ',3),('HD7       ','MH4       ',2),('HD7       ','MH5       ',3),('HD7       ','MH6       ',4),('HD7       ','MH7       ',3),('HD7       ','MH8       ',5),('HD7       ','MH9       ',2),('HD8       ','MH1       ',2),('HD8       ','MH10      ',3),('HD8       ','MH2       ',5),('HD8       ','MH3       ',3),('HD8       ','MH4       ',4),('HD8       ','MH5       ',4),('HD8       ','MH6       ',2),('HD8       ','MH7       ',4),('HD8       ','MH8       ',4),('HD8       ','MH9       ',3),('HD9       ','MH1       ',5),('HD9       ','MH10      ',4),('HD9       ','MH2       ',2),('HD9       ','MH3       ',3),('HD9       ','MH4       ',5),('HD9       ','MH5       ',5),('HD9       ','MH6       ',3),('HD9       ','MH7       ',5),('HD9       ','MH8       ',5),('HD9       ','MH9       ',3);
/*!40000 ALTER TABLE `dbo.CTHD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbo.CTPD`
--

DROP TABLE IF EXISTS `dbo.CTPD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbo.CTPD` (
  `MAPD` varchar(10) DEFAULT NULL,
  `MAMH` varchar(10) DEFAULT NULL,
  `SOLUONG` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo.CTPD`
--

LOCK TABLES `dbo.CTPD` WRITE;
/*!40000 ALTER TABLE `dbo.CTPD` DISABLE KEYS */;
INSERT INTO `dbo.CTPD` VALUES ('PD1       ','MH1       ',5),('PD1       ','MH10      ',4),('PD1       ','MH2       ',4),('PD1       ','MH3       ',5),('PD1       ','MH4       ',2),('PD1       ','MH5       ',4),('PD1       ','MH6       ',2),('PD1       ','MH7       ',5),('PD1       ','MH8       ',3),('PD1       ','MH9       ',5),('PD10      ','MH1       ',2),('PD10      ','MH10      ',4),('PD10      ','MH2       ',5),('PD10      ','MH3       ',5),('PD10      ','MH4       ',3),('PD10      ','MH5       ',3),('PD10      ','MH6       ',5),('PD10      ','MH7       ',3),('PD10      ','MH8       ',2),('PD10      ','MH9       ',4),('PD2       ','MH1       ',5),('PD2       ','MH10      ',4),('PD2       ','MH2       ',5),('PD2       ','MH3       ',3),('PD2       ','MH4       ',5),('PD2       ','MH5       ',4),('PD2       ','MH6       ',2),('PD2       ','MH7       ',4),('PD2       ','MH8       ',2),('PD2       ','MH9       ',2),('PD3       ','MH1       ',2),('PD3       ','MH10      ',2),('PD3       ','MH2       ',5),('PD3       ','MH3       ',3),('PD3       ','MH4       ',4),('PD3       ','MH5       ',3),('PD3       ','MH6       ',5),('PD3       ','MH7       ',5),('PD3       ','MH8       ',5),('PD3       ','MH9       ',5),('PD4       ','MH1       ',5),('PD4       ','MH10      ',4),('PD4       ','MH2       ',4),('PD4       ','MH3       ',2),('PD4       ','MH4       ',4),('PD4       ','MH5       ',5),('PD4       ','MH6       ',2),('PD4       ','MH7       ',2),('PD4       ','MH8       ',4),('PD4       ','MH9       ',4),('PD5       ','MH1       ',4),('PD5       ','MH10      ',2),('PD5       ','MH2       ',5),('PD5       ','MH3       ',5),('PD5       ','MH4       ',3),('PD5       ','MH5       ',4),('PD5       ','MH6       ',3),('PD5       ','MH7       ',5),('PD5       ','MH8       ',2),('PD5       ','MH9       ',4),('PD6       ','MH1       ',4),('PD6       ','MH10      ',2),('PD6       ','MH2       ',4),('PD6       ','MH3       ',5),('PD6       ','MH4       ',2),('PD6       ','MH5       ',5),('PD6       ','MH6       ',3),('PD6       ','MH7       ',3),('PD6       ','MH8       ',5),('PD6       ','MH9       ',5),('PD7       ','MH1       ',5),('PD7       ','MH10      ',3),('PD7       ','MH2       ',3),('PD7       ','MH3       ',3),('PD7       ','MH4       ',2),('PD7       ','MH5       ',3),('PD7       ','MH6       ',4),('PD7       ','MH7       ',3),('PD7       ','MH8       ',5),('PD7       ','MH9       ',2),('PD8       ','MH1       ',2),('PD8       ','MH10      ',3),('PD8       ','MH2       ',5),('PD8       ','MH3       ',3),('PD8       ','MH4       ',4),('PD8       ','MH5       ',4),('PD8       ','MH6       ',2),('PD8       ','MH7       ',4),('PD8       ','MH8       ',4),('PD8       ','MH9       ',3),('PD9       ','MH1       ',5),('PD9       ','MH10      ',4),('PD9       ','MH2       ',2),('PD9       ','MH3       ',3),('PD9       ','MH4       ',5),('PD9       ','MH5       ',5),('PD9       ','MH6       ',3),('PD9       ','MH7       ',5),('PD9       ','MH8       ',5),('PD9       ','MH9       ',3);
/*!40000 ALTER TABLE `dbo.CTPD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbo.CTPN`
--

DROP TABLE IF EXISTS `dbo.CTPN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbo.CTPN` (
  `MAPN` varchar(10) DEFAULT NULL,
  `MAMH` varchar(10) DEFAULT NULL,
  `SOLUONG` tinyint(4) DEFAULT NULL,
  `DONGIA` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo.CTPN`
--

LOCK TABLES `dbo.CTPN` WRITE;
/*!40000 ALTER TABLE `dbo.CTPN` DISABLE KEYS */;
INSERT INTO `dbo.CTPN` VALUES ('PN1       ','MH1       ',20,2500),('PN1       ','MH2       ',20,2000),('PN1       ','MH3       ',30,2000),('PN2       ','MH4       ',20,1500),('PN2       ','MH5       ',35,1700),('PN3       ','MH6       ',40,1200),('PN3       ','MH7       ',35,4000),('PN3       ','MH8       ',20,3000);
/*!40000 ALTER TABLE `dbo.CTPN` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbo.CTPX`
--

DROP TABLE IF EXISTS `dbo.CTPX`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbo.CTPX` (
  `MAPX` varchar(10) DEFAULT NULL,
  `MAMH` varchar(10) DEFAULT NULL,
  `SOLUONG` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo.CTPX`
--

LOCK TABLES `dbo.CTPX` WRITE;
/*!40000 ALTER TABLE `dbo.CTPX` DISABLE KEYS */;
INSERT INTO `dbo.CTPX` VALUES ('PX1       ','MH1       ',10),('PX1       ','MH2       ',10),('PX2       ','MH3       ',10),('PX2       ','MH4       ',15),('PX3       ','MH6       ',20),('PX3       ','MH7       ',15);
/*!40000 ALTER TABLE `dbo.CTPX` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbo.DANHGIA`
--

DROP TABLE IF EXISTS `dbo.DANHGIA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbo.DANHGIA` (
  `TENTK` varchar(0) DEFAULT NULL,
  `MAMH` varchar(0) DEFAULT NULL,
  `DANHGIA` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo.DANHGIA`
--

LOCK TABLES `dbo.DANHGIA` WRITE;
/*!40000 ALTER TABLE `dbo.DANHGIA` DISABLE KEYS */;
/*!40000 ALTER TABLE `dbo.DANHGIA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbo.DONDATHANG`
--

DROP TABLE IF EXISTS `dbo.DONDATHANG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbo.DONDATHANG` (
  `MADDH` varchar(10) DEFAULT NULL,
  `NGAYDAT` varchar(10) DEFAULT NULL,
  `MANCC` varchar(10) DEFAULT NULL,
  `MANV` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo.DONDATHANG`
--

LOCK TABLES `dbo.DONDATHANG` WRITE;
/*!40000 ALTER TABLE `dbo.DONDATHANG` DISABLE KEYS */;
INSERT INTO `dbo.DONDATHANG` VALUES ('DDH1      ','2022-10-26','NCC1      ','NV1       '),('DDH2      ','2022-10-26','NCC2      ','NV2       '),('DDH3      ','2022-10-26','NCC3      ','NV3       ');
/*!40000 ALTER TABLE `dbo.DONDATHANG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbo.DOTKHUYENMAI`
--

DROP TABLE IF EXISTS `dbo.DOTKHUYENMAI`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbo.DOTKHUYENMAI` (
  `MADKM` varchar(10) DEFAULT NULL,
  `LYDOKM` varchar(3) DEFAULT NULL,
  `NGAYBD` varchar(10) DEFAULT NULL,
  `NGAYKT` varchar(10) DEFAULT NULL,
  `MANV` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo.DOTKHUYENMAI`
--

LOCK TABLES `dbo.DOTKHUYENMAI` WRITE;
/*!40000 ALTER TABLE `dbo.DOTKHUYENMAI` DISABLE KEYS */;
INSERT INTO `dbo.DOTKHUYENMAI` VALUES ('DKM1      ','ABC','2022-11-26','2022-12-12','NV1       '),('DKM2      ','ABC','2022-11-26','2022-12-20','NV2       ');
/*!40000 ALTER TABLE `dbo.DOTKHUYENMAI` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbo.HINHANHMH`
--

DROP TABLE IF EXISTS `dbo.HINHANHMH`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbo.HINHANHMH` (
  `MAHA` varchar(10) DEFAULT NULL,
  `DUONGDAN` varchar(0) DEFAULT NULL,
  `MAMH` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo.HINHANHMH`
--

LOCK TABLES `dbo.HINHANHMH` WRITE;
/*!40000 ALTER TABLE `dbo.HINHANHMH` DISABLE KEYS */;
INSERT INTO `dbo.HINHANHMH` VALUES ('HA1       ','','MH1       '),('HA2       ','','MH2       '),('HA3       ','','MH3       '),('HA4       ','','MH4       ');
/*!40000 ALTER TABLE `dbo.HINHANHMH` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbo.HOADON`
--

DROP TABLE IF EXISTS `dbo.HOADON`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbo.HOADON` (
  `SOHD` varchar(10) DEFAULT NULL,
  `NGAYIN` varchar(10) DEFAULT NULL,
  `MASOTHUEKH` varchar(15) DEFAULT NULL,
  `MANV` varchar(10) DEFAULT NULL,
  `MAPD` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo.HOADON`
--

LOCK TABLES `dbo.HOADON` WRITE;
/*!40000 ALTER TABLE `dbo.HOADON` DISABLE KEYS */;
INSERT INTO `dbo.HOADON` VALUES ('HD1       ','2022-11-27','123456780      ','NV1       ','PD1       '),('HD10      ','2023-01-02','123456784      ','NV5       ','PD10      '),('HD2       ','2022-11-27','123456781      ','NV2       ','PD2       '),('HD3       ','2023-01-02','123456782      ','NV3       ','PD3       '),('HD4       ','2023-01-02','123456783      ','NV4       ','PD4       '),('HD5       ','2023-01-02','123456784      ','NV5       ','PD5       '),('HD6       ','2023-01-02','123456780      ','NV1       ','PD6       '),('HD7       ','2023-01-02','123456781      ','NV2       ','PD7       '),('HD8       ','2023-01-02','123456782      ','NV3       ','PD8       '),('HD9       ','2023-01-02','123456783      ','NV4       ','PD9       ');
/*!40000 ALTER TABLE `dbo.HOADON` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbo.KHACHHANG`
--

DROP TABLE IF EXISTS `dbo.KHACHHANG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbo.KHACHHANG` (
  `MAKH` varchar(10) DEFAULT NULL,
  `HOTENKH` varchar(14) DEFAULT NULL,
  `SOCMND` varchar(15) DEFAULT NULL,
  `GIOITINH` tinyint(4) DEFAULT NULL,
  `NGAYSINH` varchar(10) DEFAULT NULL,
  `DIACHI` varchar(22) DEFAULT NULL,
  `SDT` varchar(15) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `MASOTHUE` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo.KHACHHANG`
--

LOCK TABLES `dbo.KHACHHANG` WRITE;
/*!40000 ALTER TABLE `dbo.KHACHHANG` DISABLE KEYS */;
INSERT INTO `dbo.KHACHHANG` VALUES ('KH1       ','TRáº¦N VÄ‚N A','191999250      ',0,'2000-03-03','TIá»€N GIANG','0969687690     ','AVANTRAN@GMAIL.COM                                ','123456780      '),('KH10      ','TRáº¦N VÄ‚N F','191999255      ',0,'2000-03-03','AN GIANG','0969668795     ','FVANTRAN@GMAIL.COM                                ','123456785      '),('KH2       ','TRáº¦N VÄ‚N B','191999251      ',0,'2000-03-03','BÃŒNH DÆ¯Æ NG','0969687691     ','BVANTRAN@GMAIL.COM                                ','123456781      '),('KH3       ','TRáº¦N VÄ‚N C','191999252      ',0,'2000-03-03','Há»’ CHÃ MINH','0969687692     ','CVANTRAN@GMAIL.COM                                ','123456782      '),('KH4       ','TRáº¦N THá»Š D','191999253      ',1,'2000-03-03','BÃ€ Rá»ŠA - VÅ¨NG TÃ€U','0969687693     ','DTHITRAN@GMAIL.COM                                ','123456783      '),('KH5       ','TRáº¦N THá»Š E','191999254      ',1,'2000-03-03','KIÃŠN GIANG','0969687694     ','ETHITRAN@GMAIL.COM                                ','123456784      ');
/*!40000 ALTER TABLE `dbo.KHACHHANG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbo.KHO`
--

DROP TABLE IF EXISTS `dbo.KHO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbo.KHO` (
  `MAKHO` varchar(10) DEFAULT NULL,
  `TENKHO` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo.KHO`
--

LOCK TABLES `dbo.KHO` WRITE;
/*!40000 ALTER TABLE `dbo.KHO` DISABLE KEYS */;
INSERT INTO `dbo.KHO` VALUES ('NK1       ','NHÃ€ KHO 1'),('NK2       ','NHÃ€ KHO 2'),('NK3       ','NHÃ€ KHO 3');
/*!40000 ALTER TABLE `dbo.KHO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbo.KHO_MH_SIZE`
--

DROP TABLE IF EXISTS `dbo.KHO_MH_SIZE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbo.KHO_MH_SIZE` (
  `MAKHO` varchar(0) DEFAULT NULL,
  `MAMH` varchar(0) DEFAULT NULL,
  `MASIZE` varchar(0) DEFAULT NULL,
  `SOLUONGTON` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo.KHO_MH_SIZE`
--

LOCK TABLES `dbo.KHO_MH_SIZE` WRITE;
/*!40000 ALTER TABLE `dbo.KHO_MH_SIZE` DISABLE KEYS */;
/*!40000 ALTER TABLE `dbo.KHO_MH_SIZE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbo.LOAIKH`
--

DROP TABLE IF EXISTS `dbo.LOAIKH`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbo.LOAIKH` (
  `MALOAIKH` tinyint(4) DEFAULT NULL,
  `TENLOAIKH` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo.LOAIKH`
--

LOCK TABLES `dbo.LOAIKH` WRITE;
/*!40000 ALTER TABLE `dbo.LOAIKH` DISABLE KEYS */;
INSERT INTO `dbo.LOAIKH` VALUES (1,'NAM'),(2,'Ná»®');
/*!40000 ALTER TABLE `dbo.LOAIKH` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbo.LOAIMH`
--

DROP TABLE IF EXISTS `dbo.LOAIMH`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbo.LOAIMH` (
  `MALOAIMH` tinyint(4) DEFAULT NULL,
  `TENLOAIMH` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo.LOAIMH`
--

LOCK TABLES `dbo.LOAIMH` WRITE;
/*!40000 ALTER TABLE `dbo.LOAIMH` DISABLE KEYS */;
INSERT INTO `dbo.LOAIMH` VALUES (5,'ÃO POLO'),(7,'ÃO SÆ  MI'),(3,'DÃ‚Y CHUYá»€N'),(4,'KÃNH MÃT'),(1,'NÆ¯á»šC HOA'),(6,'QUáº¦N JEAN'),(2,'TÃšI XÃCH');
/*!40000 ALTER TABLE `dbo.LOAIMH` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbo.MATHANG`
--

DROP TABLE IF EXISTS `dbo.MATHANG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbo.MATHANG` (
  `MAMH` varchar(10) DEFAULT NULL,
  `TENMH` varchar(71) DEFAULT NULL,
  `MOTA` varchar(3) DEFAULT NULL,
  `TRANGTHAI` tinyint(4) DEFAULT NULL,
  `CACHLAM` tinyint(4) DEFAULT NULL,
  `MANH` varchar(10) DEFAULT NULL,
  `MALOAIMH` tinyint(4) DEFAULT NULL,
  `MALOAIKH` tinyint(4) DEFAULT NULL,
  `MACL` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo.MATHANG`
--

LOCK TABLES `dbo.MATHANG` WRITE;
/*!40000 ALTER TABLE `dbo.MATHANG` DISABLE KEYS */;
INSERT INTO `dbo.MATHANG` VALUES ('MH1       ','TÃšI XÃCH MONOGRAM MULTICOLORE - KEEPALL','ABC',1,0,'NH1       ',2,2,'CL1       '),('MH10      ','Ão SÆ¡ Mi Nam Cá»™c Tay Versace Jean Couture 72GAL2BC CN002 003','ABC',1,0,'NH4       ',5,1,'CL2       '),('MH11      ','AÌo Polo Valentino Logo Embroiders In Black RV3MH00BEXP','ABC',1,1,'NH5       ',5,1,'CL1       '),('MH2       ','TÃšI XÃCH DAMIER GEANT AVENTURIER','ABC',1,0,'NH1       ',2,2,'CL2       '),('MH3       ','Ão SÆ¡ Mi Gucci King Snake Logo 433550 Z309E 9000','ABC',1,0,'NH2       ',1,1,'CL2       '),('MH4       ','QUáº¦N JEAN MLB UNI MONOGRAM STRAIGHT DENIM PANTS NEW YORK YANKEES BLUE','ABC',1,0,'NH2       ',6,2,'CL1       '),('MH5       ','Cáº·p Da TAIGA HANDMADE','ABC',1,1,'NH3       ',2,2,'CL1       '),('MH6       ','HERMES TÃšI XÃCH HM MINI DA CÃ Sáº¤U','ABC',1,1,'NH3       ',2,2,'CL1       '),('MH7       ','Quáº§n Jeans Baggy','ABC',1,0,'NH4       ',6,2,'CL3       '),('MH8       ','TÃšI CHANEL 2.55','ABC',1,1,'NH5       ',2,2,'CL3       '),('MH9       ','Prada Logo-Printed Crewneck T-Shirt','ABC',1,0,'NH4       ',5,3,'CL2       ');
/*!40000 ALTER TABLE `dbo.MATHANG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbo.NHACUNGCAP`
--

DROP TABLE IF EXISTS `dbo.NHACUNGCAP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbo.NHACUNGCAP` (
  `MANCC` varchar(10) DEFAULT NULL,
  `TENNCC` varchar(15) DEFAULT NULL,
  `DIACHI` varchar(14) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `SDT` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo.NHACUNGCAP`
--

LOCK TABLES `dbo.NHACUNGCAP` WRITE;
/*!40000 ALTER TABLE `dbo.NHACUNGCAP` DISABLE KEYS */;
INSERT INTO `dbo.NHACUNGCAP` VALUES ('NCC1      ','DÆ¯Æ NG VÄ‚N A','Há»’ CHÃ MINH','ADUONGVAN@GMAIL.COM                               ','0969687562     '),('NCC2      ','DÆ¯Æ NG VÄ‚N B','HÃ€ Ná»˜I','BDUONGVAN@GMAIL.COM                               ','0969687563     '),('NCC3      ','DÆ¯Æ NG VÄ‚N C','BÃŒNH DÆ¯Æ NG','CDUONGVAN@GMAIL.COM                               ','0969687564     '),('NCC4      ','DÆ¯Æ NG THá»Š D','Äá»’NG NAI','DTHIDUONG@GMAIL.COM                               ','0969687565     '),('NCC5      ','DÆ¯Æ NG THá»Š E','TÃ‚Y NINH','ETHIDUONG@GMAIL.COM                               ','0969687566     ');
/*!40000 ALTER TABLE `dbo.NHACUNGCAP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbo.NHANHIEU`
--

DROP TABLE IF EXISTS `dbo.NHANHIEU`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbo.NHANHIEU` (
  `MANH` varchar(10) DEFAULT NULL,
  `TENNH` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo.NHANHIEU`
--

LOCK TABLES `dbo.NHANHIEU` WRITE;
/*!40000 ALTER TABLE `dbo.NHANHIEU` DISABLE KEYS */;
INSERT INTO `dbo.NHANHIEU` VALUES ('NH5       ','CHANEL'),('NH2       ','GUCCI'),('NH3       ','HERMES'),('NH1       ','LOUIS VUITTON'),('NH4       ','PRADA');
/*!40000 ALTER TABLE `dbo.NHANHIEU` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbo.NHANVIEN`
--

DROP TABLE IF EXISTS `dbo.NHANVIEN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbo.NHANVIEN` (
  `MANV` varchar(10) DEFAULT NULL,
  `TENNV` varchar(16) DEFAULT NULL,
  `GIOITINH` tinyint(4) DEFAULT NULL,
  `NGAYSINH` varchar(10) DEFAULT NULL,
  `DIACHI` varchar(14) DEFAULT NULL,
  `SDT` varchar(15) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo.NHANVIEN`
--

LOCK TABLES `dbo.NHANVIEN` WRITE;
/*!40000 ALTER TABLE `dbo.NHANVIEN` DISABLE KEYS */;
INSERT INTO `dbo.NHANVIEN` VALUES ('NV1       ','NGUYá»„N VÄ‚N A',0,'2001-02-02','Há»’ CHÃ MINH','0969665482     ','ABC@GMAIL.COM                                     '),('NV2       ','NGUYá»„N THá»Š B',1,'2000-03-03','HÃ€ Ná»˜I','0969665492     ','ABCD@GMAIL.COM                                    '),('NV3       ','NGUYá»„N THá»Š C',1,'2000-03-03','Háº¢I PHÃ’NG','0969665493     ','CTHI@GMAIL.COM                                    '),('NV4       ','NGUYá»„N VÄ‚N D',0,'2000-04-04','BÃŒNH DÆ¯Æ NG','0969665494     ','DVAN@GMAIL.COM                                    '),('NV5       ','NGUYá»„N VÄ‚N E',0,'2000-04-05','TÃ‚Y NINH','0969665495     ','EVAN@GMAIL.COM                                    ');
/*!40000 ALTER TABLE `dbo.NHANVIEN` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbo.PHIEUDAT`
--

DROP TABLE IF EXISTS `dbo.PHIEUDAT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbo.PHIEUDAT` (
  `MAPD` varchar(10) DEFAULT NULL,
  `NGAYDAT` varchar(19) DEFAULT NULL,
  `HOTENNGUOINHAN` varchar(12) DEFAULT NULL,
  `DIACHI` varchar(19) DEFAULT NULL,
  `SDT` varchar(15) DEFAULT NULL,
  `NGAYGIOGIAO` varchar(19) DEFAULT NULL,
  `MANV` varchar(10) DEFAULT NULL,
  `MAKH` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo.PHIEUDAT`
--

LOCK TABLES `dbo.PHIEUDAT` WRITE;
/*!40000 ALTER TABLE `dbo.PHIEUDAT` DISABLE KEYS */;
INSERT INTO `dbo.PHIEUDAT` VALUES ('PD1       ','2022-11-26 00:00:00','PHAN VÄ‚N A','Há»’ CHÃ MINH','0969684510     ','2022-12-01 00:00:00','NV1       ','KH1       '),('PD10      ','2022-12-08 13:39:53','PHAN VÄ‚N J','THANH HÃ“A','0969665419     ','2023-01-01 00:00:00','NV5       ','KH5       '),('PD2       ','2022-11-26 00:00:00','PHAN VÄ‚N B','BÃŒNH DÆ¯Æ NG','0969684511     ','2022-12-01 00:00:00','NV2       ','KH2       '),('PD3       ','2022-11-26 00:00:00','PHAN VÄ‚N C','TÃ‚Y NINH','0969684512     ','2022-12-01 00:00:00','NV3       ','KH3       '),('PD4       ','2022-12-08 13:33:22','PHAN VÄ‚N D','HÃ’A BÃŒNH','0969665413     ','2023-01-01 00:00:00','NV4       ','KH4       '),('PD5       ','2022-12-08 13:34:52','PHAN VÄ‚N E','KHÃNH HÃ’A','0969665414     ','2023-01-01 00:00:00','NV5       ','KH5       '),('PD6       ','2022-12-08 13:37:41','PHAN VÄ‚N F','THá»ªA THIÃŠN HUáº¾','0969665415     ','2023-01-01 00:00:00','NV1       ','KH1       '),('PD7       ','2022-12-08 13:38:16','PHAN VÄ‚N G','QUáº¢NG TRá»Š','0969665416     ','2023-01-01 00:00:00','NV2       ','KH2       '),('PD8       ','2022-12-01 00:00:00','PHAN THá»Š H','QUáº¢NG NGÃƒI','0969665417     ','2023-01-01 00:00:00','NV3       ','KH3       '),('PD9       ','2022-12-08 13:39:18','PHAN THá»Š I','QUáº¢NG BÃŒNH','0969665418     ','2023-01-01 00:00:00','NV4       ','KH4       ');
/*!40000 ALTER TABLE `dbo.PHIEUDAT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbo.PHIEUNHAP`
--

DROP TABLE IF EXISTS `dbo.PHIEUNHAP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbo.PHIEUNHAP` (
  `MAPN` varchar(10) DEFAULT NULL,
  `NGAYNHAP` varchar(10) DEFAULT NULL,
  `MANV` varchar(10) DEFAULT NULL,
  `MADDH` varchar(10) DEFAULT NULL,
  `MAKHO` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo.PHIEUNHAP`
--

LOCK TABLES `dbo.PHIEUNHAP` WRITE;
/*!40000 ALTER TABLE `dbo.PHIEUNHAP` DISABLE KEYS */;
INSERT INTO `dbo.PHIEUNHAP` VALUES ('PN1       ','2022-11-20','NV1       ','DDH1      ','NK1       '),('PN2       ','2022-11-20','NV2       ','DDH2      ','NK2       '),('PN3       ','2022-11-20','NV3       ','DDH3      ','NK3       ');
/*!40000 ALTER TABLE `dbo.PHIEUNHAP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbo.PHIEUXUAT`
--

DROP TABLE IF EXISTS `dbo.PHIEUXUAT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbo.PHIEUXUAT` (
  `MAPX` varchar(10) DEFAULT NULL,
  `NGAYXUAT` varchar(10) DEFAULT NULL,
  `MANV` varchar(10) DEFAULT NULL,
  `MAKHO` varchar(10) DEFAULT NULL,
  `MACN` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo.PHIEUXUAT`
--

LOCK TABLES `dbo.PHIEUXUAT` WRITE;
/*!40000 ALTER TABLE `dbo.PHIEUXUAT` DISABLE KEYS */;
INSERT INTO `dbo.PHIEUXUAT` VALUES ('PX1       ','2022-11-26','NV1       ','NK1       ','CN1       '),('PX2       ','2022-11-26','NV2       ','NK2       ','CN2       '),('PX3       ','2022-11-26','NV3       ','NK3       ','CN3       ');
/*!40000 ALTER TABLE `dbo.PHIEUXUAT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbo.QUYEN`
--

DROP TABLE IF EXISTS `dbo.QUYEN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbo.QUYEN` (
  `MAQUYEN` tinyint(4) DEFAULT NULL,
  `TENQUYEN` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo.QUYEN`
--

LOCK TABLES `dbo.QUYEN` WRITE;
/*!40000 ALTER TABLE `dbo.QUYEN` DISABLE KEYS */;
INSERT INTO `dbo.QUYEN` VALUES (5,'Káº¾ TOÃN TRÆ¯á»žNG'),(2,'KHÃCH HÃ€NG'),(3,'QUáº¢N LÃ KHO');
/*!40000 ALTER TABLE `dbo.QUYEN` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbo.SIZE`
--

DROP TABLE IF EXISTS `dbo.SIZE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbo.SIZE` (
  `MASIZE` tinyint(4) DEFAULT NULL,
  `TENSIZE` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo.SIZE`
--

LOCK TABLES `dbo.SIZE` WRITE;
/*!40000 ALTER TABLE `dbo.SIZE` DISABLE KEYS */;
INSERT INTO `dbo.SIZE` VALUES (1,'L    '),(2,'M    '),(3,'XL   '),(4,'S    ');
/*!40000 ALTER TABLE `dbo.SIZE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbo.TAIKHOAN`
--

DROP TABLE IF EXISTS `dbo.TAIKHOAN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbo.TAIKHOAN` (
  `TENTK` varchar(50) DEFAULT NULL,
  `MATKHAU` varchar(16) DEFAULT NULL,
  `MAKH` varchar(10) DEFAULT NULL,
  `MANV` varchar(0) DEFAULT NULL,
  `MAQUYEN` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo.TAIKHOAN`
--

LOCK TABLES `dbo.TAIKHOAN` WRITE;
/*!40000 ALTER TABLE `dbo.TAIKHOAN` DISABLE KEYS */;
INSERT INTO `dbo.TAIKHOAN` VALUES ('TRANTHID                                          ','12345673        ','KH4       ','',''),('TRANTHIE                                          ','12345674        ','KH5       ','',''),('TRANVANA                                          ','12345670        ','KH1       ','',''),('TRANVANB                                          ','12345671        ','KH2       ','',''),('TRANVANC                                          ','12345672        ','KH3       ','','');
/*!40000 ALTER TABLE `dbo.TAIKHOAN` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-22 15:20:33
