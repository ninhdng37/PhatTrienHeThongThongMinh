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
  CONSTRAINT `FK_BANGGIA_MATHANG` FOREIGN KEY (`MAMH`) REFERENCES `mathang` (`MAMH`) ON UPDATE CASCADE,
  CONSTRAINT `FK_BANGGIA_NHANVIEN` FOREIGN KEY (`MANV`) REFERENCES `nhanvien` (`MANV`) ON UPDATE CASCADE
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
  `MACL` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `TENVAI` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`MACL`),
  UNIQUE KEY `UK_TENVAI` (`TENVAI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chatlieu`
--

LOCK TABLES `chatlieu` WRITE;
/*!40000 ALTER TABLE `chatlieu` DISABLE KEYS */;
INSERT INTO `chatlieu` VALUES ('CL1','COTTON'),('CL3','JEAN'),('CL2','KAKI');
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
  UNIQUE KEY `UK_TENCN` (`TENCN`)
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
  CONSTRAINT `FK_CTDDH_DONDATHANG` FOREIGN KEY (`MADDH`) REFERENCES `dondathang` (`MADDH`) ON UPDATE CASCADE,
  CONSTRAINT `FK_CTDDH_MATHANG` FOREIGN KEY (`MAMH`) REFERENCES `mathang` (`MAMH`) ON UPDATE CASCADE
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
  CONSTRAINT `FK_CTDKM_DOTKHUYENMAI` FOREIGN KEY (`MADKM`) REFERENCES `dotkhuyenmai` (`MADKM`) ON UPDATE CASCADE,
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
  CONSTRAINT `FK_CTHD_HOADON` FOREIGN KEY (`SOHD`) REFERENCES `hoadon` (`SOHD`) ON UPDATE CASCADE,
  CONSTRAINT `FK_CTHD_MATHANG` FOREIGN KEY (`MAMH`) REFERENCES `mathang` (`MAMH`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cthd`
--

LOCK TABLES `cthd` WRITE;
/*!40000 ALTER TABLE `cthd` DISABLE KEYS */;
INSERT INTO `cthd` VALUES ('HD1','MH1',5),('HD1','MH10',4),('HD1','MH2',4),('HD1','MH3',5),('HD1','MH4',2),('HD1','MH5',4),('HD1','MH6',2),('HD1','MH7',5),('HD1','MH8',3),('HD1','MH9',5),('HD10','MH1',2),('HD10','MH10',4),('HD10','MH2',5),('HD10','MH3',5),('HD10','MH4',3),('HD10','MH5',3),('HD10','MH6',5),('HD10','MH7',3),('HD10','MH8',2),('HD10','MH9',4),('HD2','MH1',5),('HD2','MH10',4),('HD2','MH2',5),('HD2','MH3',3),('HD2','MH4',5),('HD2','MH5',4),('HD2','MH6',2),('HD2','MH7',4),('HD2','MH8',2),('HD2','MH9',2),('HD3','MH1',2),('HD3','MH10',2),('HD3','MH2',5),('HD3','MH3',3),('HD3','MH4',4),('HD3','MH5',3),('HD3','MH6',5),('HD3','MH7',5),('HD3','MH8',5),('HD3','MH9',5),('HD4','MH1',5),('HD4','MH10',4),('HD4','MH2',4),('HD4','MH3',2),('HD4','MH4',4),('HD4','MH5',5),('HD4','MH6',2),('HD4','MH7',2),('HD4','MH8',4),('HD4','MH9',4),('HD5','MH1',4),('HD5','MH10',2),('HD5','MH2',5),('HD5','MH3',5),('HD5','MH4',3),('HD5','MH5',4),('HD5','MH6',3),('HD5','MH7',5),('HD5','MH8',2),('HD5','MH9',4),('HD6','MH1',4),('HD6','MH10',2),('HD6','MH2',4),('HD6','MH3',5),('HD6','MH4',2),('HD6','MH5',5),('HD6','MH6',3),('HD6','MH7',3),('HD6','MH8',5),('HD6','MH9',5),('HD7','MH1',5),('HD7','MH10',3),('HD7','MH2',3),('HD7','MH3',3),('HD7','MH4',2),('HD7','MH5',3),('HD7','MH6',4),('HD7','MH7',3),('HD7','MH8',5),('HD7','MH9',2),('HD8','MH1',2),('HD8','MH10',3),('HD8','MH2',5),('HD8','MH3',3),('HD8','MH4',4),('HD8','MH5',4),('HD8','MH6',2),('HD8','MH7',4),('HD8','MH8',4),('HD8','MH9',3),('HD9','MH1',5),('HD9','MH10',4),('HD9','MH2',2),('HD9','MH3',3),('HD9','MH4',5),('HD9','MH5',5),('HD9','MH6',3),('HD9','MH7',5),('HD9','MH8',5),('HD9','MH9',3);
/*!40000 ALTER TABLE `cthd` ENABLE KEYS */;
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
  CONSTRAINT `FK_CTPD_MATHANG` FOREIGN KEY (`MAMH`) REFERENCES `mathang` (`MAMH`) ON UPDATE CASCADE,
  CONSTRAINT `FK_CTPD_PHIEUDAT` FOREIGN KEY (`MAPD`) REFERENCES `phieudat` (`MAPD`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctpd`
--

LOCK TABLES `ctpd` WRITE;
/*!40000 ALTER TABLE `ctpd` DISABLE KEYS */;
INSERT INTO `ctpd` VALUES ('PD1','MH1',5),('PD1','MH10',4),('PD1','MH2',4),('PD1','MH3',5),('PD1','MH4',2),('PD1','MH5',4),('PD1','MH6',2),('PD1','MH7',5),('PD1','MH8',3),('PD1','MH9',5),('PD10','MH1',2),('PD10','MH10',4),('PD10','MH2',5),('PD10','MH3',5),('PD10','MH4',3),('PD10','MH5',3),('PD10','MH6',5),('PD10','MH7',3),('PD10','MH8',2),('PD10','MH9',4),('PD2','MH1',5),('PD2','MH10',4),('PD2','MH2',5),('PD2','MH3',3),('PD2','MH4',5),('PD2','MH5',4),('PD2','MH6',2),('PD2','MH7',4),('PD2','MH8',2),('PD2','MH9',2),('PD3','MH1',2),('PD3','MH10',2),('PD3','MH2',5),('PD3','MH3',3),('PD3','MH4',4),('PD3','MH5',3),('PD3','MH6',5),('PD3','MH7',5),('PD3','MH8',5),('PD3','MH9',5),('PD4','MH1',5),('PD4','MH10',4),('PD4','MH2',4),('PD4','MH3',2),('PD4','MH4',4),('PD4','MH5',5),('PD4','MH6',2),('PD4','MH7',2),('PD4','MH8',4),('PD4','MH9',4),('PD5','MH1',4),('PD5','MH10',2),('PD5','MH2',5),('PD5','MH3',5),('PD5','MH4',3),('PD5','MH5',4),('PD5','MH6',3),('PD5','MH7',5),('PD5','MH8',2),('PD5','MH9',4),('PD6','MH1',4),('PD6','MH10',2),('PD6','MH2',4),('PD6','MH3',5),('PD6','MH4',2),('PD6','MH5',5),('PD6','MH6',3),('PD6','MH7',3),('PD6','MH8',5),('PD6','MH9',5),('PD7','MH1',5),('PD7','MH10',3),('PD7','MH2',3),('PD7','MH3',3),('PD7','MH4',2),('PD7','MH5',3),('PD7','MH6',4),('PD7','MH7',3),('PD7','MH8',5),('PD7','MH9',2),('PD8','MH1',2),('PD8','MH10',3),('PD8','MH2',5),('PD8','MH3',3),('PD8','MH4',4),('PD8','MH5',4),('PD8','MH6',2),('PD8','MH7',4),('PD8','MH8',4),('PD8','MH9',3),('PD9','MH1',5),('PD9','MH10',4),('PD9','MH2',2),('PD9','MH3',3),('PD9','MH4',5),('PD9','MH5',5),('PD9','MH6',3),('PD9','MH7',5),('PD9','MH8',5),('PD9','MH9',3);
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
  PRIMARY KEY (`MAPN`,`MAMH`),
  KEY `FK_CTPN_MATHANG` (`MAMH`),
  CONSTRAINT `FK_CTPN_MATHANG` FOREIGN KEY (`MAMH`) REFERENCES `mathang` (`MAMH`) ON UPDATE CASCADE,
  CONSTRAINT `FK_CTPN_PHIEUNHAP` FOREIGN KEY (`MAPN`) REFERENCES `phieunhap` (`MAPN`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctpn`
--

LOCK TABLES `ctpn` WRITE;
/*!40000 ALTER TABLE `ctpn` DISABLE KEYS */;
INSERT INTO `ctpn` VALUES ('PN1','MH1',20,2500),('PN1','MH2',20,2000),('PN1','MH3',30,2000),('PN2','MH4',20,1500),('PN2','MH5',35,1700),('PN3','MH6',40,1200),('PN3','MH7',35,4000),('PN3','MH8',20,3000);
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
  CONSTRAINT `FK_CTPX_MATHANG` FOREIGN KEY (`MAMH`) REFERENCES `mathang` (`MAMH`) ON UPDATE CASCADE,
  CONSTRAINT `FK_CTPX_PHIEUXUAT` FOREIGN KEY (`MAPX`) REFERENCES `phieuxuat` (`MAPX`) ON UPDATE CASCADE
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
  CONSTRAINT `FK_DONDATHANG_NHACUNGCAP` FOREIGN KEY (`MANCC`) REFERENCES `nhacungcap` (`MANCC`) ON UPDATE CASCADE,
  CONSTRAINT `FK_DONDATHANG_NHANVIEN` FOREIGN KEY (`MANV`) REFERENCES `nhanvien` (`MANV`) ON UPDATE CASCADE
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
  `MADKM` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `LYDOKM` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `NGAYBD` date NOT NULL,
  `NGAYKT` date NOT NULL,
  `MANV` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`MADKM`),
  KEY `FK_DOTKHUYENMAI_NHANVIEN` (`MANV`),
  CONSTRAINT `FK_DOTKHUYENMAI_NHANVIEN` FOREIGN KEY (`MANV`) REFERENCES `nhanvien` (`MANV`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dotkhuyenmai`
--

LOCK TABLES `dotkhuyenmai` WRITE;
/*!40000 ALTER TABLE `dotkhuyenmai` DISABLE KEYS */;
INSERT INTO `dotkhuyenmai` VALUES ('DKM1','ABC','2022-11-26','2022-12-12','NV1'),('DKM2','ABC','2022-11-26','2022-12-20','NV2');
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
  CONSTRAINT `FK_HINHANHMH_MATHANG` FOREIGN KEY (`MAMH`) REFERENCES `mathang` (`MAMH`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hinhanhmh`
--

LOCK TABLES `hinhanhmh` WRITE;
/*!40000 ALTER TABLE `hinhanhmh` DISABLE KEYS */;
INSERT INTO `hinhanhmh` VALUES ('HA1',NULL,'MH1'),('HA2',NULL,'MH2'),('HA3',NULL,'MH3'),('HA4',NULL,'MH4');
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
  KEY `FK_HOADON_KHACHHANG` (`MASOTHUEKH`),
  KEY `FK_HOADON_NHANVIEN` (`MANV`),
  CONSTRAINT `FK_HOADON_KHACHHANG` FOREIGN KEY (`MASOTHUEKH`) REFERENCES `khachhang` (`MASOTHUE`) ON UPDATE CASCADE,
  CONSTRAINT `FK_HOADON_NHANVIEN` FOREIGN KEY (`MANV`) REFERENCES `nhanvien` (`MANV`) ON UPDATE CASCADE,
  CONSTRAINT `FK_HOADON_PHIEUDAT` FOREIGN KEY (`MAPD`) REFERENCES `phieudat` (`MAPD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hoadon`
--

LOCK TABLES `hoadon` WRITE;
/*!40000 ALTER TABLE `hoadon` DISABLE KEYS */;
INSERT INTO `hoadon` VALUES ('HD1','2022-11-27','123456780','NV1','PD1'),('HD10','2023-01-02','123456784','NV5','PD10'),('HD2','2022-11-27','123456781','NV2','PD2'),('HD3','2023-01-02','123456782','NV3','PD3'),('HD4','2023-01-02','123456783','NV4','PD4'),('HD5','2023-01-02','123456784','NV5','PD5'),('HD6','2023-01-02','123456780','NV1','PD6'),('HD7','2023-01-02','123456781','NV2','PD7'),('HD8','2023-01-02','123456782','NV3','PD8'),('HD9','2023-01-02','123456783','NV4','PD9');
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
  UNIQUE KEY `UK_SOCMND` (`SOCMND`),
  UNIQUE KEY `UK_MASOTHUE` (`MASOTHUE`),
  UNIQUE KEY `UK_SDT` (`SDT`),
  UNIQUE KEY `UK_EMAIL` (`EMAIL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khachhang`
--

LOCK TABLES `khachhang` WRITE;
/*!40000 ALTER TABLE `khachhang` DISABLE KEYS */;
INSERT INTO `khachhang` VALUES ('KH1','TRáº¦N VÄ‚N A','191999250',0,'2000-03-03','TIá»€N GIANG','0969687690','AVANTRAN@GMAIL.COM','123456780'),('KH10','TRáº¦N VÄ‚N F','191999255',0,'2000-03-03','AN GIANG','0969668795','FVANTRAN@GMAIL.COM','123456785'),('KH2','TRáº¦N VÄ‚N B','191999251',0,'2000-03-03','BÃŒNH DÆ¯Æ NG','0969687691','BVANTRAN@GMAIL.COM','123456781'),('KH3','TRáº¦N VÄ‚N C','191999252',0,'2000-03-03','Há»’ CHÃ MINH','0969687692','CVANTRAN@GMAIL.COM','123456782'),('KH4','TRáº¦N THá»Š D','191999253',1,'2000-03-03','BÃ€ Rá»ŠA - VÅ¨NG TÃ€U','0969687693','DTHITRAN@GMAIL.COM','123456783'),('KH5','TRáº¦N THá»Š E','191999254',1,'2000-03-03','KIÃŠN GIANG','0969687694','ETHITRAN@GMAIL.COM','123456784');
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
  KEY `FK_KHO_MH_SIZE_SIZE` (`MASIZE`),
  KEY `FK_KHO_MH_SIZE_MATHANG` (`MAMH`),
  CONSTRAINT `FK_KHO_MH_SIZE_KHO` FOREIGN KEY (`MAKHO`) REFERENCES `kho` (`MAKHO`) ON UPDATE CASCADE,
  CONSTRAINT `FK_KHO_MH_SIZE_MATHANG` FOREIGN KEY (`MAMH`) REFERENCES `mathang` (`MAMH`) ON UPDATE CASCADE,
  CONSTRAINT `FK_KHO_MH_SIZE_SIZE` FOREIGN KEY (`MASIZE`) REFERENCES `size` (`MASIZE`) ON UPDATE CASCADE
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
INSERT INTO `loaikh` VALUES (1,'NAM'),(2,'Ná»®'),(3,'NAM VÃ€ Ná»®');
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
  UNIQUE KEY `UK_TENLOAIMH` (`TENLOAIMH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loaimh`
--

LOCK TABLES `loaimh` WRITE;
/*!40000 ALTER TABLE `loaimh` DISABLE KEYS */;
INSERT INTO `loaimh` VALUES (5,'ÃO POLO'),(7,'ÃO SÆ  MI'),(3,'DÃ‚Y CHUYá»€N'),(4,'KÃNH MÃT'),(1,'NÆ¯á»šC HOA'),(6,'QUáº¦N JEAN'),(2,'TÃšI XÃCH');
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
  `MOTA` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `TRANGTHAI` int NOT NULL DEFAULT '1',
  `CACHLAM` int DEFAULT NULL,
  `MANH` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `MALOAIMH` int DEFAULT NULL,
  `MALOAIKH` int DEFAULT NULL,
  `MACL` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`MAMH`),
  KEY `FK_MATHANG_LOAIMH` (`MALOAIMH`),
  KEY `FK_MATHANG_LOAIKH` (`MALOAIKH`),
  KEY `FK_MATHANG_NHANHIEU` (`MANH`),
  KEY `FK_MATHANG_VAI` (`MACL`),
  CONSTRAINT `FK_MATHANG_LOAIKH` FOREIGN KEY (`MALOAIKH`) REFERENCES `loaikh` (`MALOAIKH`) ON UPDATE CASCADE,
  CONSTRAINT `FK_MATHANG_LOAIMH` FOREIGN KEY (`MALOAIMH`) REFERENCES `loaimh` (`MALOAIMH`) ON UPDATE CASCADE,
  CONSTRAINT `FK_MATHANG_NHANHIEU` FOREIGN KEY (`MANH`) REFERENCES `nhanhieu` (`MANH`) ON UPDATE CASCADE,
  CONSTRAINT `FK_MATHANG_VAI` FOREIGN KEY (`MACL`) REFERENCES `chatlieu` (`MACL`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mathang`
--

LOCK TABLES `mathang` WRITE;
/*!40000 ALTER TABLE `mathang` DISABLE KEYS */;
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
  UNIQUE KEY `UK_SDT_NCC` (`SDT`)
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
  UNIQUE KEY `UK_TENNH` (`TENNH`)
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
  UNIQUE KEY `UK_SDT_NV` (`SDT`),
  UNIQUE KEY `UK_EMAIL_NV` (`EMAIL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhanvien`
--

LOCK TABLES `nhanvien` WRITE;
/*!40000 ALTER TABLE `nhanvien` DISABLE KEYS */;
INSERT INTO `nhanvien` VALUES ('NV1','NGUYá»„N VÄ‚N A',0,'2001-02-02','Há»’ CHÃ MINH','0969665482','ABC@GMAIL.COM'),('NV2','NGUYá»„N THá»Š B',1,'2000-03-03','HÃ€ Ná»˜I','0969665492','ABCD@GMAIL.COM'),('NV3','NGUYá»„N THá»Š C',1,'2000-03-03','Háº¢I PHÃ’NG','0969665493','CTHI@GMAIL.COM'),('NV4','NGUYá»„N VÄ‚N D',0,'2000-04-04','BÃŒNH DÆ¯Æ NG','0969665494','DVAN@GMAIL.COM'),('NV5','NGUYá»„N VÄ‚N E',0,'2000-04-05','TÃ‚Y NINH','0969665495','EVAN@GMAIL.COM');
/*!40000 ALTER TABLE `nhanvien` ENABLE KEYS */;
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
  KEY `FK_PHIEUDAT_NHANVIEN` (`MANV`),
  KEY `FK_PHIEUDAT_KHACHHANG` (`MAKH`),
  CONSTRAINT `FK_PHIEUDAT_KHACHHANG` FOREIGN KEY (`MAKH`) REFERENCES `khachhang` (`MAKH`) ON UPDATE CASCADE,
  CONSTRAINT `FK_PHIEUDAT_NHANVIEN` FOREIGN KEY (`MANV`) REFERENCES `nhanvien` (`MANV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phieudat`
--

LOCK TABLES `phieudat` WRITE;
/*!40000 ALTER TABLE `phieudat` DISABLE KEYS */;
INSERT INTO `phieudat` VALUES ('PD1','2022-11-25 17:00:00','PHAN VÄ‚N A','Há»’ CHÃ MINH','0969684510','2022-12-01 00:00:00.000000','NV1','KH1'),('PD10','2022-12-08 06:39:53','PHAN VÄ‚N J','THANH HÃ“A','0969665419','2023-01-01 00:00:00.000000','NV5','KH5'),('PD2','2022-11-25 17:00:00','PHAN VÄ‚N B','BÃŒNH DÆ¯Æ NG','0969684511','2022-12-01 00:00:00.000000','NV2','KH2'),('PD3','2022-11-25 17:00:00','PHAN VÄ‚N C','TÃ‚Y NINH','0969684512','2022-12-01 00:00:00.000000','NV3','KH3'),('PD4','2022-12-08 06:33:23','PHAN VÄ‚N D','HÃ’A BÃŒNH','0969665413','2023-01-01 00:00:00.000000','NV4','KH4'),('PD5','2022-12-08 06:34:53','PHAN VÄ‚N E','KHÃNH HÃ’A','0969665414','2023-01-01 00:00:00.000000','NV5','KH5'),('PD6','2022-12-08 06:37:42','PHAN VÄ‚N F','THá»ªA THIÃŠN HUáº¾','0969665415','2023-01-01 00:00:00.000000','NV1','KH1'),('PD7','2022-12-08 06:38:16','PHAN VÄ‚N G','QUáº¢NG TRá»Š','0969665416','2023-01-01 00:00:00.000000','NV2','KH2'),('PD8','2022-11-30 17:00:00','PHAN THá»Š H','QUáº¢NG NGÃƒI','0969665417','2023-01-01 00:00:00.000000','NV3','KH3'),('PD9','2022-12-08 06:39:19','PHAN THá»Š I','QUáº¢NG BÃŒNH','0969665418','2023-01-01 00:00:00.000000','NV4','KH4');
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
  KEY `FK_PHIEUNHAP_NHANVIEN` (`MANV`),
  KEY `FK_PHIEUNHAP_KHO` (`MAKHO`),
  KEY `FK_PHIEUNHAP_DONDATHANG` (`MADDH`),
  CONSTRAINT `FK_PHIEUNHAP_DONDATHANG` FOREIGN KEY (`MADDH`) REFERENCES `dondathang` (`MADDH`),
  CONSTRAINT `FK_PHIEUNHAP_KHO` FOREIGN KEY (`MAKHO`) REFERENCES `kho` (`MAKHO`) ON UPDATE CASCADE,
  CONSTRAINT `FK_PHIEUNHAP_NHANVIEN` FOREIGN KEY (`MANV`) REFERENCES `nhanvien` (`MANV`) ON UPDATE CASCADE
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
  CONSTRAINT `FK_PHIEUXUAT_CHINHANH` FOREIGN KEY (`MACN`) REFERENCES `chinhanh` (`MACN`) ON UPDATE CASCADE,
  CONSTRAINT `FK_PHIEUXUAT_KHO` FOREIGN KEY (`MAKHO`) REFERENCES `kho` (`MAKHO`) ON UPDATE CASCADE,
  CONSTRAINT `FK_PHIEUXUAT_NHANVIEN` FOREIGN KEY (`MANV`) REFERENCES `nhanvien` (`MANV`) ON UPDATE CASCADE
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
  `TENQUYEN` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`MAQUYEN`),
  KEY `UK_TENQUYEN` (`TENQUYEN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quyen`
--

LOCK TABLES `quyen` WRITE;
/*!40000 ALTER TABLE `quyen` DISABLE KEYS */;
INSERT INTO `quyen` VALUES (5,'Káº¾ TOÃN TRÆ¯á»žNG'),(2,'KHÃCH HÃ€NG'),(1,'NHÃ‚N VIÃŠN BÃN HÃ€NG'),(4,'NHÃ‚N VIÃŠN Káº¾ TOÃN'),(3,'QUáº¢N LÃ KHO');
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
INSERT INTO `size` VALUES (1,'L'),(2,'M'),(3,'XL'),(4,'S');
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
INSERT INTO `sysdiagrams` VALUES ('THOITRANG',1,1,1,_binary '\Ð\Ïà¡±\Z\á\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0>\0\0þÿ	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0F\0\0\0\0\0\0þÿÿÿ\0\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿýÿÿÿH\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\n\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0þÿÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Z\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0!\0\0\0\"\0\0\0#\0\0\0$\0\0\0%\0\0\0&\0\0\0\'\0\0\0(\0\0\0)\0\0\0*\0\0\0+\0\0\0,\0\0\0-\0\0\0.\0\0\0/\0\0\00\0\0\01\0\0\02\0\0\03\0\0\04\0\0\05\0\0\06\0\0\07\0\0\08\0\0\09\0\0\0:\0\0\0;\0\0\0<\0\0\0=\0\0\0>\0\0\0?\0\0\0@\0\0\0A\0\0\0B\0\0\0C\0\0\0D\0\0\0E\0\0\0þÿÿÿþÿÿÿs\0\0\0þÿÿÿJ\0\0\0K\0\0\0L\0\0\0M\0\0\0N\0\0\0O\0\0\0P\0\0\0Q\0\0\0R\0\0\0S\0\0\0T\0\0\0U\0\0\0V\0\0\0W\0\0\0X\0\0\0Y\0\0\0Z\0\0\0[\0\0\0\\\0\0\0]\0\0\0^\0\0\0_\0\0\0`\0\0\0a\0\0\0b\0\0\0c\0\0\0d\0\0\0e\0\0\0f\0\0\0g\0\0\0h\0\0\0i\0\0\0j\0\0\0k\0\0\0l\0\0\0m\0\0\0n\0\0\0o\0\0\0p\0\0\0q\0\0\0r\0\0\0þÿÿÿt\0\0\0u\0\0\0þÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿR\0o\0o\0t\0 \0E\0n\0t\0r\0y\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0@·\á#\ÙG\0\0\0€\0\0\0\0\0\0f\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿÿÿÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0B\0\0\0\0\0\0o\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0^g\0\0\0\0\0\0\0C\0o\0m\0p\0O\0b\0j\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿÿÿÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0_\0\0\0\0\0\0\0\04\0\nP\0\0€‹\0\0\0\0ÿÿF\0\0\0‹\0\0\0\0}\0\0ªŒ\0\0([\0\0®\ä\0\0\ï\Ê\0\0¾ÿÿ`òÿÿÞ€[ñ•\Ð° \0ª\0½\Ë\\\0\0\00\0\0\0\0\0\0\0\0\0<\0k\0\0\0	\0\0\0\0\0\0\0\Ù\æ°\é\Ð­Q\0 \ÉW9ô;„a\ÇC…5)†\á\ÕRø 2}²\Øb•B˜\'<%¢\Ú-\0\0(\0C\0\0\0\0\0\0\0SDM\Ò\ÑŽc\0`—\Ò\ßH4\É\Òwyw\Øp\0[„\rœ\0\0(\0C\0\0\0\0\0\0\0QDM\Ò\ÑŽc\0`—\Ò\ßH4\É\Òwyw\Øp\0[„\rœm\0\0\0L\0\0\0\í[\0\00\0¥	\0\0\0\0€\0\0\0 \0\0\0€\0\0\0\0€SchGrid\0\Ò\0\0¦\0\0BANGGIA\0\0\00\0¥	\0\0\0\0€\0\0\0œ\0\0\0€\0\0\0\0€SchGrid\0”\0\0*]\0\0CTDDHid\0\0\00\0¥	\0\0\0\0€\0\0\0œ\0\0\0€\0\0\0\0€SchGrid\0ª\ìÿÿ¨ýÿÿCTDKMid\0\0\0,\0¥	\0\0\0\0€\0\0\0š\0\0\0€\0\0\0\0€SchGrid\0&\0\0$úÿÿCTPD\0\0,\0¥	\0\0\0\0€\0\0\0š\0\0\0€\0\0\0\0€SchGrid\0ô\Ïÿÿ\"V\0\0CTPN\0\04\0¥	\0\0\0\0€\0\0\0¦\0\0\0€\0\0\n\0\0€SchGrid\0J.\0\0„N\0\0DONDATHANG\0\0\0\04\0¥	\0\0\0\0€\0\0\0ª\0\0\0€\0\0\0\0€SchGrid\0\åÿÿô\Z\0\0DOTKHUYENMAI\0\00\0¥	\0\0\0\0€	\0\0\0ž\0\0\0€\0\0\0\0€SchGrid\0H?\0\0ºúÿÿHOADONd\0\0\04\0¥	\0\0\0\0€\n\0\0\0¤\0\0\0€\0\0	\0\0€SchGrid\0\îM\0\0B\'\0\0KHACHHANG\0\0\0\0\00\0¥	\0\0\0\0€\0\0\0 \0\0\0€\0\0\0\0€SchGrid\0Œ\n\0\08\æÿÿMATHANG\0\0\04\0¥	\0\0\0\0€\0\0\0¦\0\0\0€\0\0\n\0\0€SchGrid\0\ÂL\0\0„N\0\0NHACUNGCAPAI\0\00\0¥	\0\0\0\0€\r\0\0\0¢\0\0\0€\0\0\0\0€SchGrid\0\Ö\íÿÿ\\\àÿÿNHANHIEU\0\00\0¥	\0\0\0\0€\0\0\0¢\0\0\0€\0\0\0\0€SchGridUr\0\0n(\0\0NHANVIEN\0\00\0¥	\0\0\0\0€\0\0\0¢\0\0\0€\0\0\0\0€SchGrid\0-\0\0ò+\0\0PHIEUDAT\0\04\0¥	\0\0\0\0€\0\0\0¤\0\0\0€\0\0	\0\0€SchGridT$úÿÿ\æF\0\0PHIEUNHAPPAI\0\04\0¥	\0\0\0\0€\0\0\0¤\0\0\0€\0\0	\0\0€SchGridN\Æ*\0\0š\ÞÿÿHINHANHMHPAI\0\0,\0¥	\0\0\0\0€\0\0\0š\0\0\0€\0\0\0\0€SchGridNH?\0\0J\ãÿÿCTHD\0\0d\0¥	\0\0\0\0€\0\0\0R\0\0\0€\0\09\0\0€ControlT\ÓH\0\0)óÿÿRelationship \'FK_CTHD_HOADON\' between \'HOADON\' and \'CTHD\'\0\0\0\0\0(\0µ\0\0\0\0€\0\0\01\0\0\0O\0\0\0€\0\0ControlTK\0\0£÷ÿÿ\0\0d\0¥	\0\0\0\0€\0\0\0R\0\0\0€\0\0;\0\0€ControlN¡ \0\0YðÿÿRelationship \'FK_CTHD_MATHANG\' between \'MATHANG\' and \'CTHD\'\0\0\0(\0µ\0\0\0\0€\0\0\01\0\0\0Q\0\0\0€\0\0ControlN\è*\0\0Ÿòÿÿ\0\0p\0¥	\0\0\0\0€\0\0\0R\0\0\0€\0\0E\0\0€ControlN¡ \0\07\åÿÿRelationship \'FK_HINHANHMH_MATHANG\' between \'MATHANG\' and \'HINHANHMH\'\0\0\0\0\0(\0µ\0\0\0\0€\0\0\01\0\0\0[\0\0\0€\0\0ControlN\Â \0\0\Ç\äÿÿ\0\0l\0¥	\0\0\0\0€\Z\0\0\0R\0\0\0€\0\0C\0\0€ControlT\íL\0\0_\0\0Relationship \'FK_HOADON_KHACHHANG\' between \'KHACHHANG\' and \'HOADON\'H\0\0(\0µ\0\0\0\0€\0\0\01\0\0\0Y\0\0\0€\0\0ControlT3O\0\0\ê\0\0\0\0l\0¥	\0\0\0\0€\0\0\0j\0\0\0€\0\0A\0\0€ControlN›\0\0±ÿÿÿRelationship \'FK_HOADON_NHANVIEN\' between \'NHANVIEN\' and \'HOADON\'N\'H\0\0(\0µ\0\0\0\0€\0\0\01\0\0\0W\0\0\0€\0\0ControlN\Ïl\0\0\ÇM\0\0\0\0l\0¥	\0\0\0\0€\0\0\0R\0\0\0€\0\0A\0\0€ControlT\á\0\0K\0\0\0Relationship \'FK_BANGGIA_MATHANG\' between \'MATHANG\' and \'BANGGIA\'N\'H\0\0(\0µ\0\0\0\0€\0\0\01\0\0\0W\0\0\0€\0\0ControlT\0\02\0\0\0\0l\0¥	\0\0\0\0€ \0\0\0R\0\0\0€\0\0C\0\0€ControlT­\0\0~\0\0Relationship \'FK_BANGGIA_NHANVIEN\' between \'NHANVIEN\' and \'BANGGIA\'H\0\0(\0µ\0\0\0\0€!\0\0\01\0\0\0Y\0\0\0€\0\0ControlNó\0\0§#\0\0\0\0p\0¥	\0\0\0\0€\"\0\0\0R\0\0\0€\0\0G\0\0€ControlN C\0\0ñ*\0\0Relationship \'FK_PHIEUDAT_KHACHHANG\' between \'KHACHHANG\' and \'PHIEUDAT\'\0\0\0(\0µ\0\0\0\0€#\0\0\01\0\0\0]\0\0\0€\0\0ControlT:A\0\07-\0\0\0\0p\0¥	\0\0\0\0€$\0\0\0R\0\0\0€\0\0E\0\0€ControlT‡\0\0ñ*\0\0Relationship \'FK_PHIEUDAT_NHANVIEN\' between \'NHANVIEN\' and \'PHIEUDAT\'T\'\0\0\0(\0µ\0\0\0\0€%\0\0\01\0\0\0[\0\0\0€\0\0ControlTT\0\07-\0\0\0\0p\0¥	\0\0\0\0€&\0\0\0R\0\0\0€\0\0G\0\0€ControlNq\0\0´?\0\0Relationship \'FK_PHIEUNHAP_NHANVIEN\' between \'NHANVIEN\' and \'PHIEUNHAP\'\0\0\0(\0µ\0\0\0\0€\'\0\0\01\0\0\0]\0\0\0€\0\0ControlNz÷ÿÿ£C\0\0\0\0x\0¥	\0\0\0\0€*\0\0\0R\0\0\0€\0\0M\0\0€ControlNMD\0\0MV\0\0Relationship \'FK_DONDATHANG_NHACUNGCAP\' between \'NHACUNGCAP\' and \'DONDATHANG\'\0\0\0\0\0(\0µ\0\0\0\0€+\0\0\01\0\0\0c\0\0\0€\0\0ControlN\î?\0\0\ÝU\0\0\0\0t\0¥	\0\0\0\0€,\0\0\0Z\0\0\0€\0\0I\0\0€ControlN­\0\0´?\0\0Relationship \'FK_DONDATHANG_NHANVIEN\' between \'NHANVIEN\' and \'DONDATHANG\'ANG\0\0(\0µ\0\0\0\0€-\0\0\01\0\0\0_\0\0\0€\0\0ControlN\0\0\ÉO\0\0\0\0h\0¥	\0\0\0\0€.\0\0\0R\0\0\0€\0\0?\0\0€ControlNö\åÿÿ!U\0\0Relationship \'FK_CTPN_PHIEUNHAP\' between \'PHIEUNHAP\' and \'CTPN\'\0\0\0(\0µ\0\0\0\0€/\0\0\01\0\0\0U\0\0\0€\0\0ControlT\éÿÿ±T\0\0\0\0d\0¥	\0\0\0\0€0\0\0\0b\0\0\0€\0\0;\0\0€ControlTL\Âÿÿ5öÿÿRelationship \'FK_CTPN_MATHANG\' between \'MATHANG\' and \'CTPN\'T\0\0(\0µ\0\0\0\0€1\0\0\01\0\0\0Q\0\0\0€\0\0ControlT£·ÿÿ–\0\0\0\0x\0¥	\0\0\0\0€2\0\0\0R\0\0\0€\0\0M\0\0€ControlN!ûÿÿ™(\0\0Relationship \'FK_DOTKHUYENMAI_NHANVIEN\' between \'NHANVIEN\' and \'DOTKHUYENMAI\'\0\0\0\0\0(\0µ\0\0\0\0€3\0\0\01\0\0\0c\0\0\0€\0\0ControlT\Èùÿÿ)(\0\0\0\0p\0¥	\0\0\0\0€4\0\0\0R\0\0\0€\0\0G\0\0€ControlN	õÿÿð\0\0Relationship \'FK_CTDKM_DOTKHUYENMAI\' between \'DOTKHUYENMAI\' and \'CTDKM\'\0\0\0(\0µ\0\0\0\0€5\0\0\01\0\0\0]\0\0\0€\0\0ControlTO÷ÿÿU\0\0\0\0h\0¥	\0\0\0\0€6\0\0\0R\0\0\0€\0\0=\0\0€ControlT¬\0\0•ÿÿÿRelationship \'FK_CTDKM_MATHANG\' between \'MATHANG\' and \'CTDKM\'\0\0\0\0\0(\0µ\0\0\0\0€7\0\0\01\0\0\0S\0\0\0€\0\0ControlT”\0\0\0\Û\0\0\0\0h\0¥	\0\0\0\0€8\0\0\0R\0\0\0€\0\0=\0\0€ControlT6\0\0\0\0Relationship \'FK_CTPD_PHIEUDAT\' between \'PHIEUDAT\' and \'CTPD\'\0\0\0\0\0(\0µ\0\0\0\0€9\0\0\01\0\0\0S\0\0\0€\0\0ControlTY8\0\00\0\0\0\0d\0¥	\0\0\0\0€:\0\0\0R\0\0\0€\0\0;\0\0€ControlN¡ \0\0•ÿÿÿRelationship \'FK_CTPD_MATHANG\' between \'MATHANG\' and \'CTPD\'T\0\0(\0µ\0\0\0\0€;\0\0\01\0\0\0Q\0\0\0€\0\0ControlN_\0\0\Û\0\0\0\0l\0¥	\0\0\0\0€<\0\0\0R\0\0\0€\0\0C\0\0€ControlN\ë\0\0\çÿÿRelationship \'FK_MATHANG_NHANHIEU\' between \'NHANHIEU\' and \'MATHANG\'D\0\0(\0µ\0\0\0\0€=\0\0\01\0\0\0Y\0\0\0€\0\0ControlT\È\0\0\0\Õ\éÿÿ\0\0l\0¥	\0\0\0\0€>\0\0\0R\0\0\0€\0\0C\0\0€ControlN¼\'\0\0oa\0\0Relationship \'FK_CTDDH_DONDATHANG\' between \'DONDATHANG\' and \'CTDDH\'[\0\0(\0µ\0\0\0\0€?\0\0\01\0\0\0Y\0\0\0€\0\0ControlT7\"\0\0ÿ`\0\0\0\0h\0¥	\0\0\0\0€@\0\0\0r\0\0\0€\0\0=\0\0€ControlNX¿ÿÿ±òÿÿRelationship \'FK_CTDDH_MATHANG\' between \'MATHANG\' and \'CTDDH\'N\'\0\0\0(\0µ\0\0\0\0€A\0\0\01\0\0\0S\0\0\0€\0\0ControlTÈ³ÿÿ†7\0\0\0\00\0¥	\0\0\0\0€B\0\0\0¢\0\0\0€\0\0\0\0€SchGridTNW\0\0N\0\0TAIKHOAN\0\0p\0¥	\0\0\0\0€C\0\0\0R\0\0\0€\0\0G\0\0€ControlNMV\0\0&\0\0Relationship \'FK_TAIKHOAN_KHACHHANG\' between \'KHACHHANG\' and \'TAIKHOAN\'\0\0\0(\0µ\0\0\0\0€D\0\0\01\0\0\0]\0\0\0€\0\0ControlN“X\0\0‘\0\0\0\00\0¥	\0\0\0\0€E\0\0\0¢\0\0\0€\0\0\0\0€SchGridNþ\ÅÿÿøC\0\0CHINHANH\0\0,\0¥	\0\0\0\0€F\0\0\0˜\0\0\0€\0\0\0\0€SchGridN¬\Ûÿÿ:\0\0KHOG\0\0l\0¥	\0\0\0\0€G\0\0\0R\0\0\0€\0\0A\0\0€ControlHG>\0\0\î\r\0\0Relationship \'FK_HOADON_PHIEUDAT\' between \'PHIEUDAT\' and \'HOADON\'KHO\0\0(\0µ\0\0\0\0€H\0\0\01\0\0\0W\0\0\0€\0\0ControlH@\0\0T\0\0\0\0,\0¥	\0\0\0\0€I\0\0\0š\0\0\0€\0\0\0\0€SchGridHf\Öÿÿ–\0\0\0CTPX\0\04\0¥	\0\0\0\0€J\0\0\0¤\0\0\0€\0\0	\0\0€SchGridN2\Îÿÿ¤\0\0PHIEUXUATPAI\0\0p\0¥	\0\0\0\0€K\0\0\0R\0\0\0€\0\0G\0\0€ControlH\'\àÿÿ\Í0\0\0Relationship \'FK_PHIEUXUAT_NHANVIEN\' between \'NHANVIEN\' and \'PHIEUXUAT\'\0\0\0(\0µ\0\0\0\0€L\0\0\01\0\0\0]\0\0\0€\0\0ControlH\r\êÿÿ]0\0\0\0\0p\0¥	\0\0\0\0€M\0\0\0R\0\0\0€\0\0G\0\0€ControlH]\ÎÿÿE2\0\0Relationship \'FK_PHIEUXUAT_CHINHANH\' between \'CHINHANH\' and \'PHIEUXUAT\'\0\0\0(\0µ\0\0\0\0€N\0\0\01\0\0\0]\0\0\0€\0\0ControlH£\Ðÿÿ<\0\0\0\0h\0¥	\0\0\0\0€O\0\0\0R\0\0\0€\0\0=\0\0€ControlH™\ÝÿÿE2\0\0Relationship \'FK_PHIEUXUAT_KHO\' between \'KHO\' and \'PHIEUXUAT\'N\'\0\0\0(\0µ\0\0\0\0€P\0\0\01\0\0\0S\0\0\0€\0\0ControlN\ß\ßÿÿ\Â6\0\0\0\0h\0¥	\0\0\0\0€Q\0\0\0R\0\0\0€\0\0?\0\0€ControlN\Å\ÞÿÿI\0\0Relationship \'FK_CTPX_PHIEUXUAT\' between \'PHIEUXUAT\' and \'CTPX\'\0\0\0(\0µ\0\0\0\0€R\0\0\01\0\0\0U\0\0\0€\0\0ControlH\áÿÿþ\0\0\0\0d\0¥	\0\0\0\0€S\0\0\0j\0\0\0€\0\0;\0\0€ControlN‘\ãÿÿ#ùÿÿRelationship \'FK_CTPX_MATHANG\' between \'MATHANG\' and \'CTPX\'T\0\0(\0µ\0\0\0\0€T\0\0\01\0\0\0Q\0\0\0€\0\0ControlN‡ðÿÿšøÿÿ\0\0h\0¥	\0\0\0\0€U\0\0\0b\0\0\0€\0\0=\0\0€ControlN¡\íÿÿ#D\0\0Relationship \'FK_PHIEUNHAP_KHO\' between \'KHO\' and \'PHIEUNHAP\'X\'\0\0\0(\0µ\0\0\0\0€V\0\0\01\0\0\0S\0\0\0€\0\0ControlNRòÿÿ³C\0\0\0\00\0¥	\0\0\0\0€\\\0\0\0ž\0\0\0€\0\0\0\0€SchGridNŽùÿÿ¶\ÑÿÿLOAIKHdN\0\0,\0¥	\0\0\0\0€_\0\0\0š\0\0\0€\0\0\0\0€SchGridNT\Ùÿÿ\ÞÿÿSIZE\0\00\0¥	\0\0\0\0€h\0\0\0ž\0\0\0€\0\0\0\0€SchGridH\0\0 \ÑÿÿLOAIMHdH\0\0h\0¥	\0\0\0\0€n\0\0\0R\0\0\0€\0\0?\0\0€ControlN\r\0\0^\ÚÿÿRelationship \'FK_MATHANG_LOAIMH\' between \'LOAIMH\' and \'MATHANG\'\0\0\0(\0µ\0\0\0\0€o\0\0\01\0\0\0U\0\0\0€\0\0ControlNX\0\06\áÿÿ\0\0h\0¥	\0\0\0\0€p\0\0\0R\0\0\0€\0\0?\0\0€ControlH‹	\0\0ô\ÚÿÿRelationship \'FK_MATHANG_LOAIKH\' between \'LOAIKH\' and \'MATHANG\'\0\0\0(\0µ\0\0\0\0€q\0\0\01\0\0\0U\0\0\0€\0\0ControlNþÿÿF\áÿÿ\0\04\0¥	\0\0\0\0€r\0\0\0¨\0\0\0€\0\0\0\0€SchGridN\äÁÿÿò\àÿÿKHO_MH_SIZE\0\0\0l\0¥	\0\0\0\0€s\0\0\0Z\0\0\0€\0\0A\0\0€ControlH3\ÉÿÿÀ\îÿÿRelationship \'FK_KHO_MH_SIZE_KHO\' between \'KHO\' and \'KHO_MH_SIZE\'UXU\0\0(\0µ\0\0\0\0€t\0\0\01\0\0\0W\0\0\0€\0\0ControlN]\Ëÿÿ+\0\0\0\0t\0¥	\0\0\0\0€u\0\0\0R\0\0\0€\0\0I\0\0€ControlNž\Óÿÿ—\îÿÿRelationship \'FK_KHO_MH_SIZE_MATHANG\' between \'MATHANG\' and \'KHO_MH_SIZE\'MAI\0\0(\0µ\0\0\0\0€v\0\0\01\0\0\0_\0\0\0€\0\0ControlNv\äÿÿ\'\îÿÿ\0\0l\0¥	\0\0\0\0€w\0\0\0R\0\0\0€\0\0C\0\0€ControlHž\Óÿÿ\áÿÿRelationship \'FK_KHO_MH_SIZE_SIZE\' between \'SIZE\' and \'KHO_MH_SIZE\'U\0\0(\0µ\0\0\0\0€x\0\0\01\0\0\0Y\0\0\0€\0\0ControlH\í\Îÿÿ­\àÿÿ\0\00\0¥	\0\0\0\0€y\0\0\0 \0\0\0€\0\0\0\0€SchGridHFP\0\0 \ÑÿÿDANHGIAH\0\0l\0¥	\0\0\0\0€z\0\0\0b\0\0\0€\0\0C\0\0€ControlN;Y\0\0)\ÝÿÿRelationship \'FK_DANHGIA_TAIKHOAN\' between \'TAIKHOAN\' and \'DANHGIA\'U\0\0(\0µ\0\0\0\0€{\0\0\01\0\0\0Y\0\0\0€\0\0ControlHûR\0\0}öÿÿ\0\0l\0¥	\0\0\0\0€|\0\0\0b\0\0\0€\0\0A\0\0€ControlNU\0\0\Ä\ÌÿÿRelationship \'FK_DANHGIA_MATHANG\' between \'MATHANG\' and \'DANHGIA\'A\'U\0\0(\0µ\0\0\0\0€}\0\0\01\0\0\0W\0\0\0€\0\0ControlH‘\0\0Ÿ\Îÿÿ\0\00\0¥	\0\0\0\0€„\0\0\0¢\0\0\0€\0\0\0\0€SchGridHv\äÿÿ \ÑÿÿCHATLIEU\0\0h\0¥	\0\0\0\0€…\0\0\0b\0\0\0€\0\0>\0\0€ControlU…ñÿÿt\ËÿÿRelationship \'FK_MATHANG_VAI\' between \'CHATLIEU\' and \'MATHANG\'\'\0\0\0(\0µ\0\0\0\0€†\0\0\01\0\0\0O\0\0\0€\0\0ControlNV\0\0O\Íÿÿ\0\00\0¥	\0\0\0\0€‡\0\0\0œ\0\0\0€\0\0\0\0€SchGridU¶g\0\0&\0\0QUYENidU\0\0h\0¥	\0\0\0\0€ˆ\0\0\0R\0\0\0€\0\0?\0\0€ControlNµf\0\0&\0\0Relationship \'FK_TAIKHOAN_QUYEN\' between \'QUYEN\' and \'TAIKHOAN\'\0\0\0(\0µ\0\0\0\0€‰\0\0\01\0\0\0U\0\0\0€\0\0ControlUûh\0\0P!\0\0\0\0t\0¥	\0\0\0\0€Š\0\0\0R\0\0\0€\0\0K\0\0€ControlNL\0\0Q\0\0Relationship \'FK_PHIEUNHAP_DONDATHANG\' between \'DONDATHANG\' and \'PHIEUNHAP\'I\0\0(\0µ\0\0\0\0€‹\0\0\01\0\0\0a\0\0\0€\0\0ControlUŒ\0\0-Q\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0!C4\0\0\0.\0\0“\0\0xV4\0\0\0\0\0B\0A\0N\0G\0G\0I\0A\0\0\0\0\0\0ðð\Â\n\0\0\0\0ðð\Â\nX\Ï\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¤œ_n\ÔtnÔœ_n\\¹vn…sn…sn±tn±tn\Ôtnhtn7»*Ìª@GÕ¿\ê7ý?.\Ï/)õ=b8\ÑPY¤CgAi«\ë_.·hpÛ´_\äšABË³´©õ\ÚR¼¥ƒöÿ\Â\Â\é–i)¶¸\Ú[õ\0c\ÄE`Ž­òƒ£N\Ö\ê\Ç¾`S\Ò6»\î3t\â¤\ÇC¯*¹Ÿ°`\íi·\ã-\ã$i¬\Â~ž§\n\í\ÎV´\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0T\0\0\0,\0\0\0,\0\0\0,\0\0\04\0\0\0\0\0\0\0\0\0\0\0§)\0\0	\0\0\0\0\0\0-\0\0\0\0\0\0\0\0\0\0\0\0\0÷\0\0S\0\0I\0\0\Ð\0\0þ\0\0\Ý\0\0G\0\0…\0\0G\0\0d\0\0±\0\0\0\0\0\0\0\0\0.\0\0“\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0›\n\0\0\0\0\0\0\0\0\0ò\0\0\Ú\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0÷\0\0\0\0\0\0\0\0\0ò\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0÷\0\0\0\0\0\0\0\0\0\0U2\0\0\Ý#\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0÷\0\0›\n\0\0\0\0xV4\0\0\0X\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\n\0\0\0\0\0\0d\0b\0o\0\0\0\0\0\0B\0A\0N\0G\0G\0I\0A\0\0\0!C4\0\0\0T\0\0)\0\0xV4\0\0\0\0\0C\0T\0D\0D\0H\0\0\0\È	\Ï\0\0\0pü\ì\0\0\0\0pü\ì¸	\Ï\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ôtnotn4\'`n\Ôtnotn4\'`n4^½R3Ÿu\é\ïháµ€²ŠGlž‹½\×B¾Y½šº;+\ä¶i{\Ãw\èÁL]A/\Æ\Z-±M§úóó—€\Z*œ»1\Î*\Ò)µ\é¥}ß›\é ž´/:³bIö‘´ 9/û€S?‡R’@-GV\ì’dª«)\Ý\'\\±\ÕO;ü¿\ÔO j|\ÒÁªÄ¬LY\ÈR¦©»¹÷\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0T\0\0\0,\0\0\0,\0\0\0,\0\0\04\0\0\0\0\0\0\0\0\0\0\0§)\0\09\0\0\0\0\0\0-\0\0\0\0\0\0\0\0\0\0\0\0\0÷\0\0S\0\0I\0\0\Ð\0\0þ\0\0\Ý\0\0G\0\0…\0\0G\0\0d\0\0±\0\0\0\0\0\0\0\0\0T\0\0)\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ª\n\0\0\0\0\0\0\0\0\0ò\0\0”\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0÷\0\0\0\0\0\0\0\0\0ò\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0÷\0\0\0\0\0\0\0\0\0\0U2\0\0\Ý#\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0÷\0\0›\n\0\0\0\0xV4\0\0\0T\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\n\0\0\0\0\0\0d\0b\0o\0\0\0\0\0\0C\0T\0D\0D\0H\0\0\0!C4\0\0\0.\0\0\0\0xV4\0\0\0\0\0C\0T\0D\0K\0M\0\0\0\0\0\0\0(2Žÿÿÿÿÿÿÿÿ\ÈÖ(q\à\n\È\á\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿ8\Ú\nÿÿÿÿ\0\0\0\0\0\0\0\0(\É\á \ïÁ\0\0\0\0p#\à\n\ì`\Ú\nÿÿÿÿ\0\0\0\0 \ÂØœ\ÂÿÿÿÿX!\âh<\à\nh\â\0\0\0\0\Èm\á\nÿÿÿÿP%\Â\È<Žÿÿÿÿˆ½\Ø\n\0\0\0\0˜2\Âÿÿÿÿ\0\0\0\0ÿÿÿÿ`Ÿ\à\n\àD\á\nø’\áÿÿÿÿa\áÿÿÿÿÿÿÿÿ\0\0\0\0\0\0\0\0\è^\á˜F\ã\nÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0T\0\0\0,\0\0\0,\0\0\0,\0\0\04\0\0\0\0\0\0\0\0\0\0\0§)\0\09\0\0\0\0\0\0-\0\0\0\0\0\0\0\0\0\0\0\0\0÷\0\0S\0\0I\0\0\Ð\0\0þ\0\0\Ý\0\0G\0\0…\0\0G\0\0d\0\0±\0\0\0\0\0\0\0\0\0.\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0›\n\0\0\0\0\0\0\0\0\0ò\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0÷\0\0\0\0\0\0\0\0\0ò\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0÷\0\0\0\0\0\0\0\0\0\0U2\0\0\Ý#\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0÷\0\0›\n\0\0\0\0xV4\0\0\0T\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\n\0\0\0\0\0\0d\0b\0o\0\0\0\0\0\0C\0T\0D\0K\0M\0\0\0!C4\0\0\0m\0\0£\0\0xV4\0\0\0\0\0C\0T\0P\0D\0\0\0\Âm\Â\àº\Ø\n0z\à\nð\ÉÁ\0\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿ¨3\Â\0\0\0\0ÿÿÿÿÿÿÿÿ(^\Âÿÿÿÿ\0\0\0\0\0h¦\n\0\0\0\0ÿÿÿÿ\0\0\0\0\0\0\0\08\Õ\nÿÿÿÿPL\á\Ð\Â\è7\Âÿÿÿÿ\0\0\0\0ÿÿÿÿ\Øl\ã\nÿÿÿÿø\à\nÿÿÿÿÿÿÿÿ¸\ßÁÿÿÿÿ\0\0\0\0Y\áxh\á\n@\\\á€G\Ò\nh\ÂÀ\à\nÿÿÿÿÿÿÿÿ\è}\à\n¨:Ž\àu\ã\n\0\0\0\0ðs\Âxþ\à\nµ\Ô\nÿÿÿÿP\á\nÿÿÿÿ¨h\à\nÿÿÿÿÀB\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0T\0\0\0,\0\0\0,\0\0\0,\0\0\04\0\0\0\0\0\0\0\0\0\0\0§)\0\09\0\0\0\0\0\0-\0\0\0\0\0\0\0\0\0\0\0\0\0÷\0\0S\0\0I\0\0\Ð\0\0þ\0\0\Ý\0\0G\0\0…\0\0G\0\0d\0\0±\0\0\0\0\0\0\0\0\0m\0\0£\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\È\n\0\0\0\0\0\0\0\0\0ò\0\0”\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0÷\0\0\0\0\0\0\0\0\0ò\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0÷\0\0\0\0\0\0\0\0\0\0U2\0\0\Ý#\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0÷\0\0›\n\0\0\0\0xV4\0\0\0R\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\n\0\0\0\0\0\0d\0b\0o\0\0\0\0\0\0C\0T\0P\0D\0\0\0!C4\0\0\0.\0\0u\0\0xV4\0\0\0\0\0C\0T\0P\0N\0\0\0ÿÿ˜e\Â~\Âhv\ã\n\0\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿ\È\ç\0\0\0\0ÿÿÿÿ(P\ã\n˜ÿÁ\0\0\0\0\0\0\0\0ð\Õ\n\0\0\0\0°\Õ\nxc\Âˆ\á\n\0\0\0\0\èŽ@9\â *\Â˜\ÝÁÿÿÿÿ\Ð\Ú\n`¢\áÿÿÿÿÿÿÿÿÀ”\à\nÿÿÿÿ\0\0\0\0¨/\à\n\0\0\0\0 .\â\0\0\0\0¨X\ã\nˆ©Áÿÿÿÿðb\ÂH\Ü\áC\Âÿÿÿÿÿÿÿÿh@\Âˆ$\Õ\n\à\n û\áh•…\0H\Õ\nÿÿÿÿ÷\à\nð\á\n\0\0\0\0ÿÿÿÿÿÿÿÿo\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0T\0\0\0,\0\0\0,\0\0\0,\0\0\04\0\0\0\0\0\0\0\0\0\0\0§)\0\09\0\0\0\0\0\0-\0\0\0\0\0\0\0\0\0\0\0\0\0÷\0\0S\0\0I\0\0\Ð\0\0þ\0\0\Ý\0\0G\0\0…\0\0G\0\0d\0\0±\0\0\0\0\0\0\0\0\0.\0\0u\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0›\n\0\0\0\0\0\0\0\0\0ò\0\0”\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0÷\0\0\0\0\0\0\0\0\0ò\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0÷\0\0\0\0\0\0\0\0\0\0U2\0\0\Ý#\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0÷\0\0›\n\0\0\0\0xV4\0\0\0R\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\n\0\0\0\0\0\0d\0b\0o\0\0\0\0\0\0C\0T\0P\0N\0\0\0!C4\0\0\0/\0\0¼\0\0xV4\0\0\0\0\0D\0O\0N\0D\0A\0T\0H\0A\0N\0G\0\0\0Á\èK\ã\n\0\à\nÿÿÿÿÿÿÿÿ˜%\Õ\n·\á\0\0\0\0xHŽÿÿÿÿðv\ã\n\0\0\0\0\Ðe\á0œ\à\n¸\'\â\0\0\0\0\0\0\0\0È±\áÿÿÿÿÿÿÿÿ f\ÂPz\ÂøL\ã\n\0\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0\0\0\0\0\0\0\0ÿÿÿÿ\0\0\0\0\0\0\0\0 ;\Â\0\0\0\0\0\0\0\0Àd\áˆ\Ï\áÿÿÿÿÿÿÿÿ\à\Ú\n€=\âø\Z\â€rûÀc¦\n\0\0\0\0ÿÿÿÿÿÿÿÿÐ‡\áÿÿÿÿÿÿÿÿÀ_\Â\0\0\0\0€o\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0T\0\0\0,\0\0\0,\0\0\0,\0\0\04\0\0\0\0\0\0\0\0\0\0\0§)\0\09\0\0\0\0\0\0-\0\0\0\0\0\0\0\0\0\0\0\0\0÷\0\0S\0\0I\0\0\Ð\0\0þ\0\0\Ý\0\0G\0\0…\0\0G\0\0d\0\0±\0\0\0\0\0\0\0\0\0/\0\0¼\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0›\n\0\0\0\0\0\0\0\0\0ò\0\0N\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0÷\0\0\0\0\0\0\0\0\0ò\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0÷\0\0\0\0\0\0\0\0\0\0U2\0\0\Ý#\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0÷\0\0›\n\0\0\0\0xV4\0\0\0^\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\n\0\0\0\0\0\0d\0b\0o\0\0\0\0\0\0D\0O\0N\0D\0A\0T\0H\0A\0N\0G\0\0\0!C4\0\0\0A\0\0`\0\0xV4\0\0\0\0\0D\0O\0T\0K\0H\0U\0Y\0E\0N\0M\0A\0I\0\0\0\ã\n\È{\à\nÿÿÿÿø\Z\Õ\nˆ¬\Ø\n\0\0\0\0ø\Ú\nÿÿÿÿÿÿÿÿ\0\0\0\0ÿÿÿÿÿÿÿÿxW\á\npn\ã\n\0\0\0\0\0\0\0\0ÿÿÿÿX1\ã\n\0\0\0\0ÿÿÿÿ\0\0\0\0\ØL\áÿÿÿÿÿÿÿÿxó0\Â\0\0\0\0\Ð4Ž\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¶\Ø\n°	\Â0\æÿÿÿÿÈ\à\nÿÿÿÿxh\áhŽÿÿÿÿø\Ö\á\0\0\0\0¥\Ø\nÿÿÿÿ\0\0\0\0€£\Ø\n\0\0\0\0\Ð1\âÿÿÿÿÿÿÿÿx1\á\n,\ã\nÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0T\0\0\0,\0\0\0,\0\0\0,\0\0\04\0\0\0\0\0\0\0\0\0\0\0§)\0\0\Ö\0\0\0\0\0\0-\0\0\0\0\0\0\0\0\0\0\0\0\0÷\0\0S\0\0I\0\0\Ð\0\0þ\0\0\Ý\0\0G\0\0…\0\0G\0\0d\0\0±\0\0\0\0\0\0\0\0\0A\0\0`\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ª\n\0\0\0\0\0\0\0\0\0ò\0\0N\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0÷\0\0\0\0\0\0\0\0\0ò\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0÷\0\0\0\0\0\0\0\0\0\0U2\0\0\Ý#\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0÷\0\0›\n\0\0\0\0xV4\0\0\0b\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\n\0\0\0\0\0\0d\0b\0o\0\0\0\r\0\0\0D\0O\0T\0K\0H\0U\0Y\0E\0N\0M\0A\0I\0\0\0!C4\0\0\0A\0\0`\0\0xV4\0\0\0\0\0H\0O\0A\0D\0O\0N\0\0\0\ÂpÙ A\Ò\n\0\0\0\0ÿÿÿÿpE\à\nÿÿÿÿ\0\0\0\0ˆ—\Â˜{\áÿÿÿÿ\0\0\0\0P\á\nÿÿÿÿ\0\0\0\0ÿÿÿÿÿÿÿÿ\0\0\0\0ú\á\0\0\0\0øŽ\È\á\nÿÿÿÿð—\à\n°¸\á\0\0\0\0PNŽ€\Õ\n\0\0\0\0ˆ!\á\n\0\0\0\00i\à\nÿÿÿÿÿÿÿÿ\0\0\0\0\0\0\0\0(§\á\è€\á\0\0\0\0ÿÿÿÿ\è‘\áÿÿÿÿ\0\0\0\0pL\ã\n@Š\Â H\à\nHðÿÿÿÿ€\á\nÿÿÿÿ@K\á\nÿÿÿÿp=\á\nx«\Ø\nð§Áø\ãÁ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0T\0\0\0,\0\0\0,\0\0\0,\0\0\04\0\0\0\0\0\0\0\0\0\0\0§)\0\0ù\0\0\0\0\0\0-\0\0\0\0\0\0\0\0\0\0\0\0\0÷\0\0S\0\0I\0\0\Ð\0\0þ\0\0\Ý\0\0G\0\0…\0\0G\0\0d\0\0±\0\0\0\0\0\0\0\0\0A\0\0`\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0›\n\0\0\0\0\0\0\0\0\0ò\0\0N\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0÷\0\0\0\0\0\0\0\0\0ò\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0÷\0\0\0\0\0\0\0\0\0\0U2\0\0\Ý#\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0÷\0\0›\n\0\0\0\0xV4\0\0\0V\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\n\0\0\0\0\0\0d\0b\0o\0\0\0\0\0\0H\0O\0A\0D\0O\0N\0\0\0!C4\0\0\0T\0\0™\0\0xV4\0\0\0\0\0K\0H\0A\0C\0H\0H\0A\0N\0G\0\0\0xU\ã\n0À\Ø\n¸}\á \í˜®\áÿÿÿÿ i\ã\n`\Õ\nÿÿÿÿ\0\0\0\0ÿÿÿÿ°\îÿÿÿÿÿÿÿÿ\è¦\n\0\0\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ8\Û\áÿÿÿÿhb\Âˆx\ã\n\Ø[\ã\n\0\0\0\0\0\0\0\0¸\'\Õ\nÿÿÿÿP±\Ô\nÿÿÿÿ\0\0\0\0\0\0\0\0ÿÿÿÿ 8\á\nðò\0\0\0\0ÿÿÿÿÿÿÿÿÿÿÿÿ\ÐK\à\n\0\0\0\0ÿÿÿÿXB\ã\n\0\0\0\0\0\0\0\0\0\0\0\0ˆ\à\á¸\Ò\á \Â\Ø\áÿÿÿÿ\è\á\n\0\0\0\0H`\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0T\0\0\0,\0\0\0,\0\0\0,\0\0\04\0\0\0\0\0\0\0\0\0\0\0§)\0\0%\0\0\0\0\0\0-\0\0\0\0\0\0\0\0\0\0\0\0\0÷\0\0S\0\0I\0\0\Ð\0\0þ\0\0\Ý\0\0G\0\0…\0\0G\0\0d\0\0±\0\0\0\0\0\0\0\0\0T\0\0™\0\0\0\0\0\0	\0\0\0	\0\0\0\0\0\0\0\0\0\0\0ª\n\0\0\0\0\0\0\0\0\0ò\0\0\Ú\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0÷\0\0\0\0\0\0\0\0\0ò\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0÷\0\0\0\0\0\0\0\0\0\0U2\0\0\Ý#\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0÷\0\0›\n\0\0\0\0xV4\0\0\0\\\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\n\0\0\0\0\0\0d\0b\0o\0\0\0\n\0\0\0K\0H\0A\0C\0H\0H\0A\0N\0G\0\0\0!C4\0\0\0A\0\0\Ê\0\0xV4\0\0\0\0\0M\0A\0T\0H\0A\0N\0G\0\0\0ÿÿÿÿ &\à\n°R\áÿÿÿÿ\"\á\n(R\á\n\0\0\0\0ÿÿÿÿ\Øz\Âÿÿÿÿ\0\0\0\0ÿÿÿÿ¨\Ú\n\0\0\0\0ÿÿÿÿ\0\0\0\0\È\\\á\n \0\ÂpPŽÿÿÿÿ\à…\à\n€O\á0k¦\n\0\0\0\0ðg\á\n k\áÿÿÿÿ Q\á\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿ\0\0\0\0(\'\à\nÿÿÿÿÿÿÿÿøŸÁ\0\0\0\0ÿÿÿÿÿÿÿÿ\ÐA\ã\n°\r\Õ\nPY‰\0\Ø|\à\n\0\0\0\0(_‰\0ÿÿÿÿÿÿÿÿÿÿÿÿPö\á\0\0\0\0H\Ë\á\0\0\0\0Àd\á\nÿÿÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0T\0\0\0,\0\0\0,\0\0\0,\0\0\04\0\0\0\0\0\0\0\0\0\0\0§)\0\0M\0\0\0\0\0\0-\0\0\0\0\0\0\0\0\0\0\0\0\0÷\0\0S\0\0I\0\0\Ð\0\0þ\0\0\Ý\0\0G\0\0…\0\0G\0\0d\0\0±\0\0\0\0\0\0\0\0\0A\0\0\Ê\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ª\n\0\0\0\0\0\0\0\0\0ò\0\0”\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0÷\0\0\0\0\0\0\0\0\0ò\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0÷\0\0\0\0\0\0\0\0\0\0U2\0\0\Ý#\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0÷\0\0›\n\0\0\0\0xV4\0\0\0X\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\n\0\0\0\0\0\0d\0b\0o\0\0\0\0\0\0M\0A\0T\0H\0A\0N\0G\0\0\0!C4\0\0\0A\0\0\â\0\0xV4\0\0\0\0\0N\0H\0A\0C\0U\0N\0G\0C\0A\0P\0\0\0\0\083Žÿÿÿÿ(\Õ\n˜Y\á\nÿÿÿÿ\0\0\0\0\0\0\0\0Û\í¨\à\n\0\0\0\0`\Ú\n\0\0\0\0\0\0\0\0\0\0\0\0Ð‚\Âÿÿÿÿ\0\0\0\08\×Á\0\0\0\0\Ú\n€‚\á°J\Ò\nh\Õ\n\0ÿ\à\nÿÿÿÿ\0\0\0\0\Ð#ŽˆS\Â\0\0\0\0\0\0\0\0P\á\nÿÿÿÿÿÿÿÿ \Âÿÿÿÿÿÿÿÿ \Z\á\n¨®\Ø\nÿÿÿÿP\è˜\â`-Žÿÿÿÿ\0\0\0\0ÿÿÿÿÿÿÿÿ\0\0\0\0`l\à\nð\r\Â\0\0\0\0€>\á\n\0\Ú\nÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0T\0\0\0,\0\0\0,\0\0\0,\0\0\04\0\0\0\0\0\0\0\0\0\0\0§)\0\09\0\0\0\0\0\0-\0\0\0\0\0\0\0\0\0\0\0\0\0÷\0\0S\0\0I\0\0\Ð\0\0þ\0\0\Ý\0\0G\0\0…\0\0G\0\0d\0\0±\0\0\0\0\0\0\0\0\0A\0\0\â\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0›\n\0\0\0\0\0\0\0\0\0ò\0\0N\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0÷\0\0\0\0\0\0\0\0\0ò\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0÷\0\0\0\0\0\0\0\0\0\0U2\0\0\Ý#\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0÷\0\0›\n\0\0\0\0xV4\0\0\0^\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\n\0\0\0\0\0\0d\0b\0o\0\0\0\0\0\0N\0H\0A\0C\0U\0N\0G\0C\0A\0P\0\0\0!C4\0\0\0A\0\0x\0\0xV4\0\0\0\0\0N\0H\0A\0N\0H\0I\0E\0U\0\0\0ÿÿ\0\0\0\0˜‡\Â\ÈZ\ã\nÿÿÿÿ\0\0\0\0€\á\n;\Âÿÿÿÿ€O\á\nÿÿÿÿ\0\0\0\0p\ç\á\0\0\0\0ÿÿÿÿ\0\0\0\0ÿÿÿÿÿÿÿÿÿÿÿÿ\0\0\0\0ÿÿÿÿÿÿÿÿ\0\0\0\0H>\Â0¯\Ô\nø€¦\n \Ú\nÿÿÿÿHT\á°‚\à\n\0\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿ°2Ž\0\0\0\0ÿÿÿÿ\0\0\0\0ÿÿÿÿ(\n\á\n¸š\ÂðV\á\n\0\0\0\0€`\á\nð»\Ø\n\Ø(\ã\n¸i\à\n\0\0\0\00\à\nÈ­Á\à\Õ\nÿÿÿÿ\È}¦\nX.\Â\àr\Âÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0T\0\0\0,\0\0\0,\0\0\0,\0\0\04\0\0\0\0\0\0\0\0\0\0\0§)\0\09\0\0\0\0\0\0-\0\0\0\0\0\0\0\0\0\0\0\0\0÷\0\0S\0\0I\0\0\Ð\0\0þ\0\0\Ý\0\0G\0\0…\0\0G\0\0d\0\0±\0\0\0\0\0\0\0\0\0A\0\0x\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0›\n\0\0\0\0\0\0\0\0\0ò\0\0”\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0÷\0\0\0\0\0\0\0\0\0ò\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0÷\0\0\0\0\0\0\0\0\0\0U2\0\0\Ý#\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0÷\0\0›\n\0\0\0\0xV4\0\0\0Z\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\n\0\0\0\0\0\0d\0b\0o\0\0\0	\0\0\0N\0H\0A\0N\0H\0I\0E\0U\0\0\0!C4\0\0\0A\0\0ý\0\0xV4\0\0\0\0\0N\0H\0A\0N\0V\0I\0E\0N\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0T\0\0\0,\0\0\0,\0\0\0,\0\0\04\0\0\0\0\0\0\0\0\0\0\0§)\0\0M\0\0\0\0\0\0-\0\0	\0\0\0\0\0\0\0\0\0\0\0÷\0\0S\0\0I\0\0\Ð\0\0þ\0\0\Ý\0\0G\0\0…\0\0G\0\0d\0\0±\0\0\0\0\0\0\0\0\0A\0\0ý\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0›\n\0\0\0\0\0\0\0\0\0ò\0\0N\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0÷\0\0\0\0\0\0\0\0\0ò\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0÷\0\0\0\0\0\0\0\0\0\0U2\0\0\Ý#\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0÷\0\0›\n\0\0\0\0xV4\0\0\0Z\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\n\0\0\0\0\0\0d\0b\0o\0\0\0	\0\0\0N\0H\0A\0N\0V\0I\0E\0N\0\0\0!C4\0\0\0.\0\0\Ê\0\0xV4\0\0\0\0\0P\0H\0I\0E\0U\0D\0A\0T\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0T\0\0\0,\0\0\0,\0\0\0,\0\0\04\0\0\0\0\0\0\0\0\0\0\0§)\0\0A\"\0\0\0\0\0\0-\0\0\n\0\0\0\0\0\0\0\0\0\0\0÷\0\0S\0\0I\0\0\Ð\0\0þ\0\0\Ý\0\0G\0\0…\0\0G\0\0d\0\0±\0\0\0\0\0\0\0\0\0.\0\0\Ê\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0›\n\0\0\0\0\0\0\0\0\0ò\0\0N\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0÷\0\0\0\0\0\0\0\0\0ò\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0÷\0\0\0\0\0\0\0\0\0\0U2\0\0\Ý#\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0÷\0\0›\n\0\0\0\0xV4\0\0\0Z\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\n\0\0\0\0\0\0d\0b\0o\0\0\0	\0\0\0P\0H\0I\0E\0U\0D\0A\0T\0\0\0!C4\0\0\0T\0\0›\0\0xV4\0\0\0\0\0P\0H\0I\0E\0U\0N\0H\0A\0P\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0T\0\0\0,\0\0\0,\0\0\0,\0\0\04\0\0\0\0\0\0\0\0\0\0\0§)\0\0\Ö\0\0\0\0\0\0-\0\0\0\0\0\0\0\0\0\0\0\0\0÷\0\0S\0\0I\0\0\Ð\0\0þ\0\0\Ý\0\0G\0\0…\0\0G\0\0d\0\0±\0\0\0\0\0\0\0\0\0T\0\0›\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ª\n\0\0\0\0\0\0\0\0\0ò\0\0N\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0÷\0\0\0\0\0\0\0\0\0ò\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0÷\0\0\0\0\0\0\0\0\0\0U2\0\0\Ý#\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0÷\0\0›\n\0\0\0\0xV4\0\0\0\\\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\n\0\0\0\0\0\0d\0b\0o\0\0\0\n\0\0\0P\0H\0I\0E\0U\0N\0H\0A\0P\0\0\0!C4\0\0\0£\0\0€\0\0xV4\0\0\0\0\0H\0I\0N\0H\0A\0N\0H\0M\0H\0\0\0r\0s\0i\0o\0n\0=\02\0.\00\0.\00\0.\00\0,\0 \0C\0u\0l\0t\0u\0r\0e\0=\0n\0e\0u\0t\0r\0a\0l\0,\0 \0P\0u\0b\0l\0i\0c\0K\0e\0y\0T\0o\0k\0e\0n\0=\0b\07\07\0a\05\0c\05\06\01\09\03\04\0e\00\08\09\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0T\0\0\0,\0\0\0,\0\0\0,\0\0\04\0\0\0\0\0\0\0\0\0\0\0P#\0\00\0\0\0\0\0\0-\0\0\0\0\0\0\0\0\0\0\0\0\0‘\0\0­\0\0I\0\0\Ð\0\0þ\0\0v\0\0G\0\0…\0\0G\0\0d\0\0±\0\0\0\0\0\0\0\0\0£\0\0€\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0g\0\0ƒ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ƒ\0\0\0\0\0\0\0\0\0g\0\0\"\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ƒ\0\0\0\0\0\0\0\0\0\0\0\0j%\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0ƒ\0\0U\0\0H\0\0xV4\0\0\0\\\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\n\0\0\0\0\0\0d\0b\0o\0\0\0\n\0\0\0H\0I\0N\0H\0A\0N\0H\0M\0H\0\0\0!C4\0\0\0£\0\0š\0\0xV4\0\0\0\0\0C\0T\0H\0D\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0€\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0?d\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0T\0\0\0,\0\0\0,\0\0\0,\0\0\04\0\0\0\0\0\0\0\0\0\0\0«\0\0\'\0\0\0\0\0\0-\0\0\0\0\0\0\0\0\0\0\0\0\0ƒ\0\0±\0\0I\0\0\Ð\0\0þ\0\0v\0\0G\0\0…\0\0G\0\0d\0\0±\0\0\0\0\0\0\0\0\0£\0\0š\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0g\0\0\ã\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ƒ\0\0\0\0\0\0\0\0\0g\0\0\"\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ƒ\0\0\0\0\0\0\0\0\0\0\0\0j%\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0ƒ\0\0U\0\0H\0\0xV4\0\0\0R\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\n\0\0\0\0\0\0d\0b\0o\0\0\0\0\0\0C\0T\0H\0D\0\0\0\0\0jJ\0\0ºúÿÿjJ\0\0\äõÿÿ\0\0\0\0\0\0\0ððð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0K\0\0£÷ÿÿ´\n\0\0X\0\02\0\0\0\0\0\0\0´\n\0\0X\0\0\0\0\0\0\0\0\0€\0\0€\0\0\0\0\0\0\0DB\0Tahoma\0F\0K\0_\0C\0T\0H\0D\0_\0H\0O\0A\0D\0O\0N\0\0\0\Í!\0\0ðñÿÿH?\0\0ðñÿÿ\0\0\0\0\0\0\0ððð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\è*\0\0ŸòÿÿD\0\0X\0\02\0\0\0\0\0\0\0D\0\0X\0\0\0\0\0\0\0\0\0€\0\0€\0\0\0\0\0\0\0DB\0Tahoma\0F\0K\0_\0C\0T\0H\0D\0_\0M\0A\0T\0H\0A\0N\0G\0\0\0\Í!\0\0\Î\æÿÿ\Æ*\0\0\Î\æÿÿ\0\0\0\0\0\0\0ððð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Â \0\0\Ç\äÿÿ\0\0X\0\0\0\0\0\0\0\0\0\0\0X\0\0\0\0\0\0\0\0\0€\0\0€\0\0\0\0\0\0\0DB\0Tahoma\0F\0K\0_\0H\0I\0N\0H\0A\0N\0H\0M\0H\0_\0M\0A\0T\0H\0A\0N\0G\0\0\0„N\0\0B\'\0\0„N\0\0\Z\0\0\0\0\0\0\0\0\0ððð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\03O\0\0\ê\0\0¥\0\0X\0\09\0\0\0\0\0\0\0¥\0\0X\0\0\0\0\0\0\0\0\0€\0\0€\0\0\0\0\0\0\0DB\0Tahoma\0F\0K\0_\0H\0O\0A\0D\0O\0N\0_\0K\0H\0A\0C\0H\0H\0A\0N\0G\0\0\02\0\0kB\0\02\0\0M\0\0\Ê{\0\0M\0\0\Ê{\0\0,\0\0‰V\0\0,\0\0\0\0\0\0\0\0\0ððð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ïl\0\0\ÇM\0\0h\r\0\0X\0\0+\0\0\0\0\0\0\0h\r\0\0X\0\0\0\0\0\0\0\0\0€\0\0€\0\0\0\0\0\0\0DB\0Tahoma\0F\0K\0_\0H\0O\0A\0D\0O\0N\0_\0N\0H\0A\0N\0V\0I\0E\0N\0\0\0x\0\0\0\0x\0\0¦\0\0\0\0\0\0\0\0\0ððð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02\0\0J\r\0\0X\0\0\0\0\0\0\0\0\0J\r\0\0X\0\0\0\0\0\0\0\0\0€\0\0€\0\0\0\0\0\0\0DB\0Tahoma\0F\0K\0_\0B\0A\0N\0G\0G\0I\0A\0_\0M\0A\0T\0H\0A\0N\0G\0\0\0D\0\0n(\0\0D\0\09 \0\0\0\0\0\0\0\0\0ððð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0!\0\0\0\0\0\0\0ó\0\0§#\0\0„\r\0\0X\0\02\0\0\0\0\0\0\0„\r\0\0X\0\0\0\0\0\0\0\0\0€\0\0€\0\0\0\0\0\0\0DB\0Tahoma\0F\0K\0_\0B\0A\0N\0G\0G\0I\0A\0_\0N\0H\0A\0N\0V\0I\0E\0N\0\0\0\îM\0\0ˆ,\0\0LD\0\0ˆ,\0\0\0\0\0\0\0\0\0ððð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0#\0\0\0\0\0\0\0:A\0\07-\0\0Q\0\0X\0\0.\0\0\0\0\0\0\0Q\0\0X\0\0\0\0\0\0\0\0\0€\0\0€\0\0\0\0\0\0\0DB\0Tahoma\0F\0K\0_\0P\0H\0I\0E\0U\0D\0A\0T\0_\0K\0H\0A\0C\0H\0H\0A\0N\0G\0\0\0³\0\0ˆ,\0\0-\0\0ˆ,\0\0\0\0\0\0\0\0\0ððð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0%\0\0\0\0\0\0\0T\0\07-\0\0\0\0X\0\0/\0\0\0\0\0\0\0\0\0X\0\0\0\0\0\0\0\0\0€\0\0€\0\0\0\0\0\0\0DB\0Tahoma\0F\0K\0_\0P\0H\0I\0E\0U\0D\0A\0T\0_\0N\0H\0A\0N\0V\0I\0E\0N\0\0\0\0\0kB\0\0\0\0\æF\0\0\0\0\0\0\0\0\0ððð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\'\0\0\0\0\0\0\0z÷ÿÿ£C\0\0\ß\0\0X\0\0\'\0\0\0\0\0\0\0\ß\0\0X\0\0\0\0\0\0\0\0\0€\0\0€\0\0\0\0\0\0\0DB\0Tahoma\0F\0K\0_\0P\0H\0I\0E\0U\0N\0H\0A\0P\0_\0N\0H\0A\0N\0V\0I\0E\0N\0\0\0\ÂL\0\0\äW\0\0yE\0\0\äW\0\0\0\0\0\0\0\0\0ððð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0+\0\0\0\0\0\0\0\î?\0\0\ÝU\0\0]\0\0X\0\02\0\0\0\0\0\0\0]\0\0X\0\0\0\0\0\0\0\0\0€\0\0€\0\0\0\0\0\0\0DB\0Tahoma\0F\0K\0_\0D\0O\0N\0D\0A\0T\0H\0A\0N\0G\0_\0N\0H\0A\0C\0U\0N\0G\0C\0A\0P\0\0\0D\0\0kB\0\0D\0\0\ZO\0\0J.\0\0\ZO\0\0\0\0\0\0\0\0\0ððð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0-\0\0\0\0\0\0\0\0\0\ÉO\0\0U\0\0X\0\02\0\0\0\0\0\0\0U\0\0X\0\0\0\0\0\0\0\0\0€\0\0€\0\0\0\0\0\0\0DB\0Tahoma\0F\0K\0_\0D\0O\0N\0D\0A\0T\0H\0A\0N\0G\0_\0N\0H\0A\0N\0V\0I\0E\0N\0\0\0$úÿÿ¸V\0\0\"\çÿÿ¸V\0\0\0\0\0\0\0\0\0ððð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0/\0\0\0\0\0\0\0\éÿÿ±T\0\0\r\0\0X\0\0H\0\0\0\0\0\0\0\r\0\0X\0\0\0\0\0\0\0\0\0€\0\0€\0\0\0\0\0\0\0DB\0Tahoma\0F\0K\0_\0C\0T\0P\0N\0_\0P\0H\0I\0E\0U\0N\0H\0A\0P\0\0\0Œ\n\0\0\Ì÷ÿÿx\Ãÿÿ\Ì÷ÿÿx\ÃÿÿV^\0\0ô\ÏÿÿV^\0\0\0\0\0\0\0\0\0ððð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\01\0\0\0\0\0\0\0£·ÿÿ–\0\0&\0\0X\0\0/\0\0\0\0\0\0\0&\0\0X\0\0\0\0\0\0\0\0\0€\0\0€\0\0\0\0\0\0\0DB\0Tahoma\0F\0K\0_\0C\0T\0P\0N\0_\0M\0A\0T\0H\0A\0N\0G\0\0\0r\0\00*\0\0Müÿÿ0*\0\0\0\0\0\0\0\0\0ððð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\03\0\0\0\0\0\0\0\Èùÿÿ)(\0\0Y\0\0X\0\0A\0\0\0\0\0\0\0Y\0\0X\0\0\0\0\0\0\0\0\0€\0\0€\0\0\0\0\0\0\0DB\0Tahoma\0F\0K\0_\0D\0O\0T\0K\0H\0U\0Y\0E\0N\0M\0A\0I\0_\0N\0H\0A\0N\0V\0I\0E\0N\0\0\0 öÿÿô\Z\0\0 öÿÿ«\0\0\0\0\0\0\0\0\0ððð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\05\0\0\0\0\0\0\0O÷ÿÿU\0\0o\0\0X\0\0+\0\0\0\0\0\0\0o\0\0X\0\0\0\0\0\0\0\0\0€\0\0€\0\0\0\0\0\0\0DB\0Tahoma\0F\0K\0_\0C\0T\0D\0K\0M\0_\0D\0O\0T\0K\0H\0U\0Y\0E\0N\0M\0A\0I\0\0\0Œ\n\0\0,\0\0\Ø\0\0,\0\0\0\0\0\0\0\0\0ððð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\07\0\0\0\0\0\0\0”\0\0\0\Û\0\0\r\0\0X\0\0\'\0\0\0\0\0\0\0\r\0\0X\0\0\0\0\0\0\0\0\0€\0\0€\0\0\0\0\0\0\0DB\0Tahoma\0F\0K\0_\0C\0T\0D\0K\0M\0_\0M\0A\0T\0H\0A\0N\0G\0\0\0ª7\0\0ò+\0\0ª7\0\0\Ç\r\0\0\0\0\0\0\0\0\0ððð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\09\0\0\0\0\0\0\0Y8\0\00\0\0D\0\0X\0\02\0\0\0\0\0\0\0D\0\0X\0\0\0\0\0\0\0\0\0€\0\0€\0\0\0\0\0\0\0DB\0Tahoma\0F\0K\0_\0C\0T\0P\0D\0_\0P\0H\0I\0E\0U\0D\0A\0T\0\0\0\Í!\0\0,\0\0&\0\0,\0\0\0\0\0\0\0\0\0ððð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0;\0\0\0\0\0\0\0_\0\0\Û\0\0&\0\0X\0\02\0\0\0\0\0\0\0&\0\0X\0\0\0\0\0\0\0\0\0€\0\0€\0\0\0\0\0\0\0DB\0Tahoma\0F\0K\0_\0C\0T\0P\0D\0_\0M\0A\0T\0H\0A\0N\0G\0\0\0\0\0&\éÿÿŒ\n\0\0&\éÿÿ\0\0\0\0\0\0\0ððð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0=\0\0\0\0\0\0\0\È\0\0\0\Õ\éÿÿ\0\0X\0\02\0\0\0\0\0\0\0\0\0X\0\0\0\0\0\0\0\0\0€\0\0€\0\0\0\0\0\0\0DB\0Tahoma\0F\0K\0_\0M\0A\0T\0H\0A\0N\0G\0_\0N\0H\0A\0N\0H\0I\0E\0U\0\0\0J.\0\0c\0\0\è(\0\0c\0\0\0\0\0\0\0\0\0ððð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0?\0\0\0\0\0\0\07\"\0\0ÿ`\0\0k\0\0X\0\0\Z\0\0\0\0\0\0\0k\0\0X\0\0\0\0\0\0\0\0\0€\0\0€\0\0\0\0\0\0\0DB\0Tahoma\0F\0K\0_\0C\0T\0D\0D\0H\0_\0D\0O\0N\0D\0A\0T\0H\0A\0N\0G\0\0\0Œ\n\0\0Hôÿÿü\0\0Hôÿÿü\0\0!ôÿÿ„Àÿÿ!ôÿÿ„Àÿÿj\0\0”\0\0j\0\0\0\0\0\0\0\0\0ððð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0A\0\0\0\0\0\0\0È³ÿÿ†7\0\0\r\0\0X\0\04\0\0\0\0\0\0\0\r\0\0X\0\0\0\0\0\0\0\0\0€\0\0€\0\0\0\0\0\0\0DB\0Tahoma\0F\0K\0_\0C\0T\0D\0D\0H\0_\0M\0A\0T\0H\0A\0N\0G\0!C4\0\0\0!\0\0“\0\0xV4\0\0\0\0\0T\0A\0I\0K\0H\0O\0A\0N\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0No\Z\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0p\éu\ì\ì\ì\ì\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \ì\0\0\0\0\0\0\0\00\ì\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0T\0\0\0,\0\0\0,\0\0\0,\0\0\04\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0-\0\0\0\0\0\0\0\0\0\0\0\0\0d\0\0e\0\0I\0\0\Ð\0\0þ\0\0\î\0\0G\0\0…\0\0G\0\0d\0\0±\0\0\0\0\0\0\0\0\0!\0\0“\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0R\0\0\0\0\0\0\0\0\0\Ù\r\0\0h\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0d\0\0\0\0\0\0\0\0\0\Ù\r\0\0\"\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0d\0\0\0\0\0\0\0\0\0\0Y \0\0\æ$\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0d\0\0c\0\0\í\0\0xV4\0\0\0Z\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\n\0\0\0\0\0\0d\0b\0o\0\0\0	\0\0\0T\0A\0I\0K\0H\0O\0A\0N\0\0\0\0\0\äW\0\0B\'\0\0\äW\0\0\á\0\0\0\0\0\0\0\0\0ððð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0D\0\0\0\0\0\0\0“X\0\0‘\0\0‹\0\0X\0\0O\0\0\0\0\0\0\0‹\0\0X\0\0\0\0\0\0\0\0\0€\0\0€\0\0\0\0\0\0\0DB\0Tahoma\0F\0K\0_\0T\0A\0I\0K\0H\0O\0A\0N\0_\0K\0H\0A\0C\0H\0H\0A\0N\0G\0!C4\0\0\0!\0\0’\0\0xV4\0\0\0\0\0C\0H\0I\0N\0H\0A\0N\0H\0\0\0\0\0x*ž\0\0\0\0x*ž\â\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0±•m±•m±•m \æ€m\\¹—m\Ô•mo•m4\'m\Óõÿÿ\Óõÿÿ\Óõÿÿ\Óõÿÿ\Óõÿÿ\Óõÿÿ\Óõÿÿ\Óõÿÿ\Óõÿÿ\Óõÿÿ\Óõÿÿ\Óõÿÿ\Óõÿÿ\Óõÿÿ\Óõÿÿ\Óõÿÿ\Óõÿÿ\Óõÿÿ\Óõÿÿ\Óõÿÿ\Óõÿÿ\Óõÿÿ\Óõÿÿ\Óõÿÿ\Óõÿÿ\Óõÿÿ\Óõÿÿ\Óõÿÿ\Óõÿÿ\Óõÿÿ\Óõÿÿ\Óõÿÿ\Óõÿÿ\Óõÿÿ\Óõ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0T\0\0\0,\0\0\0,\0\0\0,\0\0\04\0\0\0\0\0\0\0\0\0\0\0\0\0\×\0\0\0\0\0\0-\0\0\0\0\0\0\0\0\0\0\0\0\0d\0\0e\0\0I\0\0\Ð\0\0þ\0\0\î\0\0G\0\0…\0\0G\0\0d\0\0±\0\0\0\0\0\0\0\0\0!\0\0’\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0R\0\0\0\0\0\0\0\0\0\Ù\r\0\0\É\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0d\0\0\0\0\0\0\0\0\0\Ù\r\0\0\"\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0d\0\0\0\0\0\0\0\0\0\0Y \0\0\æ$\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0d\0\0c\0\0\í\0\0xV4\0\0\0Z\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\n\0\0\0\0\0\0d\0b\0o\0\0\0	\0\0\0C\0H\0I\0N\0H\0A\0N\0H\0\0\0!C4\0\0\0!\0\0’\0\0xV4\0\0\0\0\0K\0H\0O\0\0\0ømŒø\ä\0\0\0¸\'ž\0\0\0\0¸\'žX\ã\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ô•mo•m4\'mX\0\0\Ø\0\0X\0\0\0\0\0\0\î\0\0\Ø\0\0\î\0\0\0\0\0\0„\0\0\Ø\0\0„\0\0\0\0\0\0\Z\0\0\Ø\0\0\Z\0\0\0\0\0\0°\0\0\Ø\0\0°\0\0\0\0\0\0F\0\0\Ø\0\0F\0\0\0\0\0\0\Ü\0\0\Ø\0\0\Ü\0\0\0\0\0\0r\0\0\Ø\0\0r\0\0\0\0\0\0\0\0\Ø\0\0\0\0\0\0\0\0ž\0\0\Ø\0\0ž\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0T\0\0\0,\0\0\0,\0\0\0,\0\0\04\0\0\0\0\0\0\0\0\0\0\0\0\0\×\0\0\0\0\0\0-\0\0\0\0\0\0\0\0\0\0\0\0\0d\0\0e\0\0I\0\0\Ð\0\0þ\0\0\î\0\0G\0\0…\0\0G\0\0d\0\0±\0\0\0\0\0\0\0\0\0!\0\0’\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0R\0\0\0\0\0\0\0\0\0\Ù\r\0\0h\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0d\0\0\0\0\0\0\0\0\0\Ù\r\0\0\"\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0d\0\0\0\0\0\0\0\0\0\0Y \0\0\æ$\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0d\0\0c\0\0\í\0\0xV4\0\0\0P\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\n\0\0\0\0\0\0d\0b\0o\0\0\0\0\0\0K\0H\0O\0\0\0\0\0\Þ?\0\0ò+\0\0\Þ?\0\0\Z\0\0\0\0\0\0\0\0ððð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0H\0\0\0\0\0\0\0@\0\0T\0\0J\r\0\0X\0\0)\0\0\0\0\0\0\0J\r\0\0X\0\0\0\0\0\0\0\0\0€\0\0€\0\0\0\0\0\0\0DB\0Tahoma\0F\0K\0_\0H\0O\0A\0D\0O\0N\0_\0P\0H\0I\0E\0U\0D\0A\0T\0!C4\0\0\0!\0\0n\0\0xV4\0\0\0\0\0C\0T\0P\0X\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0€\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0lc\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0T\0\0\0,\0\0\0,\0\0\0,\0\0\04\0\0\0\0\0\0\0\0\0\0\0\0\0\×\0\0\0\0\0\0-\0\0\0\0\0\0\0\0\0\0\0\0\0d\0\0e\0\0I\0\0\Ð\0\0þ\0\0\î\0\0G\0\0…\0\0G\0\0d\0\0±\0\0\0\0\0\0\0\0\0!\0\0n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0R\0\0\0\0\0\0\0\0\0\Ù\r\0\0\É\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0d\0\0\0\0\0\0\0\0\0\Ù\r\0\0\"\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0d\0\0\0\0\0\0\0\0\0\0Y \0\0\æ$\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0d\0\0c\0\0\í\0\0xV4\0\0\0R\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\n\0\0\0\0\0\0d\0b\0o\0\0\0\0\0\0C\0T\0P\0X\0\0\0!C4\0\0\0!\0\0\\\0\0xV4\0\0\0\0\0P\0H\0I\0E\0U\0X\0U\0A\0T\0\0\0\0\0\0€\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0lc\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0T\0\0\0,\0\0\0,\0\0\0,\0\0\04\0\0\0\0\0\0\0\0\0\0\0\0\0\×\0\0\0\0\0\0-\0\0\0\0\0\0\0\0\0\0\0\0\0d\0\0e\0\0I\0\0\Ð\0\0þ\0\0\î\0\0G\0\0…\0\0G\0\0d\0\0±\0\0\0\0\0\0\0\0\0!\0\0\\\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0C\0\0\0\0\0\0\0\0\0\Ù\r\0\0h\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0d\0\0\0\0\0\0\0\0\0\Ù\r\0\0\"\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0d\0\0\0\0\0\0\0\0\0\0Y \0\0\æ$\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0d\0\0c\0\0\í\0\0xV4\0\0\0\\\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\n\0\0\0\0\0\0d\0b\0o\0\0\0\n\0\0\0P\0H\0I\0E\0U\0X\0U\0A\0T\0\0\0\0\0r\0\0d2\0\0S\áÿÿd2\0\0\0\0\0\0\0\0\0ððð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0L\0\0\0\0\0\0\0\r\êÿÿ]0\0\0Á\0\0X\0\0=\0\0\0\0\0\0\0Á\0\0X\0\0\0\0\0\0\0\0\0€\0\0€\0\0\0\0\0\0\0DB\0Tahoma\0F\0K\0_\0P\0H\0I\0E\0U\0X\0U\0A\0T\0_\0N\0H\0A\0N\0V\0I\0E\0N\0\0\0ô\ÏÿÿøC\0\0ô\Ïÿÿ\05\0\0\0\0\0\0\0\0\0ððð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0N\0\0\0\0\0\0\0£\Ðÿÿ<\0\0û\0\0X\0\00\0\0\0\0\0\0\0û\0\0X\0\0\0\0\0\0\0\0\0€\0\0€\0\0\0\0\0\0\0DB\0Tahoma\0F\0K\0_\0P\0H\0I\0E\0U\0X\0U\0A\0T\0_\0C\0H\0I\0N\0H\0A\0N\0H\0\0\00\ßÿÿ:\0\00\ßÿÿ\05\0\0\0\0\0\0\0\0\0ððð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0P\0\0\0\0\0\0\0\ß\ßÿÿ\Â6\0\0`\0\0X\0\04\0\0\0\0\0\0\0`\0\0X\0\0\0\0\0\0\0\0\0€\0\0€\0\0\0\0\0\0\0DB\0Tahoma\0F\0K\0_\0P\0H\0I\0E\0U\0X\0U\0A\0T\0_\0K\0H\0O\0\0\0\\\àÿÿ¤\0\0\\\àÿÿ\0\0\0\0\0\0\0\0\0ððð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0R\0\0\0\0\0\0\0\áÿÿþ\0\0\Ô\0\0X\0\0&\0\0\0\0\0\0\0\Ô\0\0X\0\0\0\0\0\0\0\0\0€\0\0€\0\0\0\0\0\0\0DB\0Tahoma\0F\0K\0_\0C\0T\0P\0X\0_\0P\0H\0I\0E\0U\0X\0U\0A\0T\0\0\0Œ\n\0\0ºúÿÿªÿÿÿºúÿÿªÿÿÿ¡úÿÿ\åÿÿ¡úÿÿ\åÿÿ–\0\0\0\0\0\0\0\0\0\0ððð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0T\0\0\0\0\0\0\0‡ðÿÿšøÿÿ\n\0\0X\0\02\0\0\0\0\0\0\0\n\0\0X\0\0\0\0\0\0\0\0\0€\0\0€\0\0\0\0\0\0\0DB\0Tahoma\0F\0K\0_\0C\0T\0P\0X\0_\0M\0A\0T\0H\0A\0N\0G\0\0\0\Í\îÿÿºE\0\0xôÿÿºE\0\0xôÿÿ|G\0\0$úÿÿ|G\0\0\0\0\0\0\0\0\0ððð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0V\0\0\0\0\0\0\0Ròÿÿ³C\0\0}\0\0X\0\0\0\0\0\0\0\0\0}\0\0X\0\0\0\0\0\0\0ÿÿÿ\0\0\0€\0\0\0\0\0\0\0DB\0Tahoma\0F\0K\0_\0P\0H\0I\0E\0U\0N\0H\0A\0P\0_\0K\0H\0O\0!C4\0\0\0\ç\0\0õ\0\0xV4\0\0\0\0\0L\0O\0A\0I\0K\0H\0\0\0 \0V\0e\0r\0s\0i\0o\0n\0=\02\0.\00\0.\00\0.\00\0,\0 \0C\0u\0l\0t\0u\0r\0e\0=\0n\0e\0u\0t\0r\0a\0l\0,\0 \0P\0u\0b\0l\0i\0c\0K\0e\0y\0T\0o\0k\0e\0n\0=\0b\07\07\0a\05\0c\05\06\01\09\03\04\0e\00\08\09\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0T\0\0\0,\0\0\0,\0\0\0,\0\0\04\0\0\0\0\0\0\0\0\0\0\0²\0\0l\0\0\0\0\0\0-\0\0\0\0\0\0\0\0\0\0\0\0\0E\0\0(\0\0I\0\0\Ð\0\0þ\0\0f\0\0G\0\0…\0\0G\0\0d\0\0±\0\0\0\0\0\0\0\0\0\ç\0\0õ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\04\0\0\0\0\0\0\0\0\0L\0\0h\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0E\0\0\0\0\0\0\0\0\0L\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0E\0\0\0\0\0\0\0\0\0\0\Ë$\0\0|$\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0E\0\0q\0\0’\0\0xV4\0\0\0V\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\n\0\0\0\0\0\0d\0b\0o\0\0\0\0\0\0L\0O\0A\0I\0K\0H\0\0\0!C4\0\0\02\0\0õ\0\0xV4\0\0\0\0\0S\0I\0Z\0E\0\0\0\0\0C\0:\0\\\0P\0r\0o\0g\0r\0a\0m\0 \0F\0i\0l\0e\0s\0 \0(\0x\08\06\0)\0\\\0M\0i\0c\0r\0o\0s\0o\0f\0t\0 \0S\0Q\0L\0 \0S\0e\0r\0v\0e\0r\0\\\01\02\00\0\\\0T\0o\0o\0l\0s\0\\\0B\0i\0n\0n\0\\\0M\0a\0n\0a\0g\0e\0m\0e\0n\0t\0S\0t\0u\0d\0i\0o\0\\\0T\0o\0o\0l\0s\0\\\0V\0D\0T\0\\\0D\0a\0t\0a\0D\0e\0s\0i\0g\0n\0e\0r\0s\0.\0d\0l\0l\0\\\02\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0T\0\0\0,\0\0\0,\0\0\0,\0\0\04\0\0\0\0\0\0\0\0\0\0\0²\0\0l\0\0\0\0\0\0-\0\0\0\0\0\0\0\0\0\0\0\0\0E\0\0(\0\0I\0\0\Ð\0\0þ\0\0f\0\0G\0\0…\0\0G\0\0d\0\0±\0\0\0\0\0\0\0\0\02\0\0õ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0R\0\0\0\0\0\0\0\0\0L\0\0h\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0E\0\0\0\0\0\0\0\0\0L\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0E\0\0\0\0\0\0\0\0\0\0\Ë$\0\0|$\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0E\0\0q\0\0’\0\0xV4\0\0\0R\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\n\0\0\0\0\0\0d\0b\0o\0\0\0\0\0\0S\0I\0Z\0E\0\0\0!C4\0\0\0\ç\0\0õ\0\0xV4\0\0\0\0\0L\0O\0A\0I\0M\0H\0\0\0W\0i\0n\0d\0o\0w\0s\0.\0F\0o\0r\0m\0s\0,\0 \0V\0e\0r\0s\0i\0o\0n\0=\04\0.\00\0.\00\0.\00\0,\0 \0C\0u\0l\0t\0u\0r\0e\0=\0n\0e\0u\0t\0r\0a\0l\0,\0 \0P\0u\0b\0l\0i\0c\0K\0e\0y\0T\0o\0k\0e\0n\0=\0b\07\07\0a\05\0c\05\06\01\09\03\04\0e\00\08\09\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0T\0\0\0,\0\0\0,\0\0\0,\0\0\04\0\0\0\0\0\0\0\0\0\0\0²\0\0l\0\0\0\0\0\0-\0\0\0\0\0\0\0\0\0\0\0\0\0E\0\0(\0\0I\0\0\Ð\0\0þ\0\0f\0\0G\0\0…\0\0G\0\0d\0\0±\0\0\0\0\0\0\0\0\0\ç\0\0õ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\04\0\0\0\0\0\0\0\0\0L\0\0¯\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0E\0\0\0\0\0\0\0\0\0L\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0E\0\0\0\0\0\0\0\0\0\0\Ë$\0\0|$\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0E\0\0q\0\0’\0\0xV4\0\0\0V\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\n\0\0\0\0\0\0d\0b\0o\0\0\0\0\0\0L\0O\0A\0I\0M\0H\0\0\0\0\0¤\0\0\Ýÿÿ¤\0\08\æÿÿ\0\0\0\0\0\0\0ððð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0o\0\0\0\0\0\0\0X\0\06\áÿÿ\0\0X\0\05\0\0\0\0\0\0\0\0\0X\0\0\0\0\0\0\0ÿÿÿ\0\0\0€\0\0\0\0\0\0\0DB\0Tahoma\0F\0K\0_\0M\0A\0T\0H\0A\0N\0G\0_\0L\0O\0A\0I\0M\0H\0\0\0\"\0\0«\Ýÿÿ\"\0\08\æÿÿ\0\0\0\0\0\0\0ððð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0q\0\0\0\0\0\0\0þÿÿF\áÿÿc\0\0X\0\02\0\0\0\0\0\0\0c\0\0X\0\0\0\0\0\0\0ÿÿÿ\0\0\0€\0\0\0\0\0\0\0DB\0Tahoma\0F\0K\0_\0M\0A\0T\0H\0A\0N\0G\0_\0L\0O\0A\0I\0K\0H\0!C4\0\0\0\æ\0\0‰\0\0xV4\0\0\0\0\0K\0H\0O\0_\0M\0H\0_\0S\0I\0Z\0E\0\0\0\0\0\0\00j\Þp\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0±œn±œn±œn \æ‡n\\¹žn\Ôœnoœn4\'ˆn\Ôœnoœn4\'ˆn\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0T\0\0\0,\0\0\0,\0\0\0,\0\0\04\0\0\0\0\0\0\0\0\0\0\0²\0\0¢\0\0\0\0\0\0-\0\0\0\0\0\0\0\0\0\0\0\0\0E\0\0(\0\0I\0\0\Ð\0\0þ\0\0f\0\0G\0\0…\0\0G\0\0d\0\0±\0\0\0\0\0\0\0\0\0\æ\0\0‰\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\04\0\0\0\0\0\0\0\0\0L\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0E\0\0\0\0\0\0\0\0\0L\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0E\0\0\0\0\0\0\0\0\0\0\Ë$\0\0|$\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0E\0\0q\0\0’\0\0xV4\0\0\0`\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\n\0\0\0\0\0\0d\0b\0o\0\0\0\0\0\0K\0H\0O\0_\0M\0H\0_\0S\0I\0Z\0E\0\0\0\0\0¬\ÛÿÿZ<\0\0®\ÊÿÿZ<\0\0®\Êÿÿ{ñÿÿ\0\0\0\0\0\0\0ððð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0t\0\0\0\0\0\0\0]\Ëÿÿ+\0\0ô\0\0X\0\02\0\0\0\0\0\0\0ô\0\0X\0\0\0\0\0\0\0ÿÿÿ\0\0\0€\0\0\0\0\0\0\0DB\0Tahoma\0F\0K\0_\0K\0H\0O\0_\0M\0H\0_\0S\0I\0Z\0E\0_\0K\0H\0O\0\0\0Œ\n\0\0.ðÿÿ\Ê\Ôÿÿ.ðÿÿ\0\0\0\0\0\0\0ððð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0v\0\0\0\0\0\0\0v\äÿÿ\'\îÿÿ\0\0X\0\0:\0\0\0\0\0\0\0\0\0X\0\0\0\0\0\0\0ÿÿÿ\0\0\0€\0\0\0\0\0\0\0DB\0Tahoma\0F\0K\0_\0K\0H\0O\0_\0M\0H\0_\0S\0I\0Z\0E\0_\0M\0A\0T\0H\0A\0N\0G\0\0\0T\Ùÿÿ´\âÿÿ\Ê\Ôÿÿ´\âÿÿ\0\0\0\0\0\0\0ððð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0x\0\0\0\0\0\0\0\í\Îÿÿ­\àÿÿ\r\0\0X\0\0\0\0\0\0\0\0\0\r\0\0X\0\0\0\0\0\0\0ÿÿÿ\0\0\0€\0\0\0\0\0\0\0DB\0Tahoma\0F\0K\0_\0K\0H\0O\0_\0M\0H\0_\0S\0I\0Z\0E\0_\0S\0I\0Z\0E\0!C4\0\0\0\ç\0\0\Ä\0\0xV4\0\0\0\0\0D\0A\0N\0H\0G\0I\0A\0\0\0g\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0C\0\0\0G\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0G\0\0\0\0\0\0\0\0\0\0\0\0\èÿÿÿ\0\0\0\0\0\0\0G\0\0\0\0\0\0\0\0\0\0\0\0\0\ìÿÿÿ\0\0\0\0\0\0\0G\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0S\0\0\0N\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0S\0\0\0N\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0T\0\0\0,\0\0\0,\0\0\0,\0\0\04\0\0\0\0\0\0\0\0\0\0\0²\0\0¢\0\0\0\0\0\0-\0\0\0\0\0\0\0\0\0\0\0\0\0E\0\0(\0\0I\0\0\Ð\0\0þ\0\0f\0\0G\0\0…\0\0G\0\0d\0\0±\0\0\0\0\0\0\0\0\0\ç\0\0\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\04\0\0\0\0\0\0\0\0\0L\0\0¯\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0E\0\0\0\0\0\0\0\0\0L\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0E\0\0\0\0\0\0\0\0\0\0\Ë$\0\0|$\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0E\0\0q\0\0’\0\0xV4\0\0\0X\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\n\0\0\0\0\0\0d\0b\0o\0\0\0\0\0\0D\0A\0N\0H\0G\0I\0A\0\0\0\0\0\ÒZ\0\0N\0\0\ÒZ\0\0E\0\0\ÒZ\0\0E\0\0\ÒZ\0\0\ä\ßÿÿ\0\0\0\0\0\0\0ððð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0{\0\0\0\0\0\0\0ûR\0\0}öÿÿ¾\r\0\0X\0\02\0\0\0\0\0\0\0¾\r\0\0X\0\0\0\0\0\0\0ÿÿÿ\0\0\0€\0\0\0\0\0\0\0DB\0Tahoma\0F\0K\0_\0D\0A\0N\0H\0G\0I\0A\0_\0T\0A\0I\0K\0H\0O\0A\0N\0\0\0\ì\0\08\æÿÿ\ì\0\0ð\Íÿÿ\ÜP\0\0ð\Íÿÿ\ÜP\0\0 \Ñÿÿ\0\0\0\0\0\0\0ððð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0}\0\0\0\0\0\0\0‘\0\0Ÿ\Îÿÿh\r\0\0X\0\0,\0\0\0\0\0\0\0h\r\0\0X\0\0\0\0\0\0\0ÿÿÿ\0\0\0€\0\0\0\0\0\0\0DB\0Tahoma\0F\0K\0_\0D\0A\0N\0H\0G\0I\0A\0_\0M\0A\0T\0H\0A\0N\0G\0!C4\0\0\0\ç\0\0õ\0\0xV4\0\0\0\0\0C\0H\0A\0T\0L\0I\0E\0U\0\0\0P\0r\0o\0g\0r\0a\0m\0 \0F\0i\0l\0e\0s\0 \0(\0x\08\06\0)\0\\\0M\0i\0c\0r\0o\0s\0o\0f\0t\0 \0S\0Q\0L\0 \0S\0e\0r\0v\0e\0r\0\\\01\02\00\0\\\0T\0o\0o\0l\0s\0\\\0B\0i\0n\0n\0\\\0M\0a\0n\0a\0g\0e\0m\0e\0n\0t\0S\0t\0u\0d\0i\0o\0\\\0T\0o\0o\0l\0s\0\\\0V\0D\0T\0\\\0D\0a\0t\0a\0D\0e\0s\0i\0g\0n\0e\0r\0s\0.\0d\0l\0l\0\\\02\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0T\0\0\0,\0\0\0,\0\0\0,\0\0\04\0\0\0\0\0\0\0\0\0\0\0²\0\0¢\0\0\0\0\0\0-\0\0\0\0\0\0\0\0\0\0\0\0\0E\0\0(\0\0I\0\0\Ð\0\0þ\0\0f\0\0G\0\0…\0\0G\0\0d\0\0±\0\0\0\0\0\0\0\0\0\ç\0\0õ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0C\0\0\0\0\0\0\0\0\0L\0\0¯\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0E\0\0\0\0\0\0\0\0\0L\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0E\0\0\0\0\0\0\0\0\0\0\Ë$\0\0|$\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0E\0\0q\0\0’\0\0xV4\0\0\0Z\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\n\0\0\0\0\0\0d\0b\0o\0\0\0	\0\0\0C\0H\0A\0T\0L\0I\0E\0U\0\0\0\0\0óÿÿ \Ñÿÿóÿÿ \Ìÿÿ<\0\0 \Ìÿÿ<\0\08\æÿÿ\0\0\0\0\0\0\0ððð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0†\0\0\0\0\0\0\0V\0\0O\Íÿÿ#\n\0\0X\0\02\0\0\0\0\0\0\0#\n\0\0X\0\0\0\0\0\0\0ÿÿÿ\0\0\0€\0\0\0\0\0\0\0DB\0Tahoma\0F\0K\0_\0M\0A\0T\0H\0A\0N\0G\0_\0V\0A\0I\0!C4\0\0\0\ç\0\0õ\0\0xV4\0\0\0\0\0Q\0U\0Y\0E\0N\0\0\0\0\0\0g\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0C\0\0\0G\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0G\0\0\0\0\0\0\0\0\0\0\0\0\èÿÿÿ\0\0\0\0\0\0\0G\0\0\0\0\0\0\0\0\0\0\0\0\0\ìÿÿÿ\0\0\0\0\0\0\0G\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0S\0\0\0N\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0S\0\0\0N\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0T\0\0\0,\0\0\0,\0\0\0,\0\0\04\0\0\0\0\0\0\0\0\0\0\0²\0\0¢\0\0\0\0\0\0-\0\0\0\0\0\0\0\0\0\0\0\0\0E\0\0(\0\0I\0\0\Ð\0\0þ\0\0f\0\0G\0\0…\0\0G\0\0d\0\0±\0\0\0\0\0\0\0\0\0\ç\0\0õ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\04\0\0\0\0\0\0\0\0\0L\0\0h\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0E\0\0\0\0\0\0\0\0\0L\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0E\0\0\0\0\0\0\0\0\0\0\Ë$\0\0|$\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0E\0\0q\0\0’\0\0xV4\0\0\0T\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\n\0\0\0\0\0\0d\0b\0o\0\0\0\0\0\0Q\0U\0Y\0E\0N\0\0\0\0\0Lh\0\0&\0\0Lh\0\0\á\0\0\0\0\0\0\0\0\0ððð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0‰\0\0\0\0\0\0\0ûh\0\0P!\0\0c\0\0X\0\02\0\0\0\0\0\0\0c\0\0X\0\0\0\0\0\0\0ÿÿÿ\0\0\0€\0\0\0\0\0\0\0DB\0Tahoma\0F\0K\0_\0T\0A\0I\0K\0H\0O\0A\0N\0_\0Q\0U\0Y\0E\0N\0\0\0J.\0\04S\0\0x\0\04S\0\0\0\0\0\0\0\0\0ððð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0‹\0\0\0\0\0\0\0Œ\0\0-Q\0\0\0\0X\0\0 \0\0\0\0\0\0\0\0\0X\0\0\0\0\0\0\0ÿÿÿ\0\0\0€\0\0\0\0\0\0\0DB\0Tahoma\0F\0K\0_\0P\0H\0I\0E\0U\0N\0H\0A\0P\0_\0D\0O\0N\0D\0A\0T\0H\0A\0N\0G\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0þÿÿÿþÿÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\n\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Z\0\0\0\0\0\0\0\0\0þÿÿÿþÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0þÿ\n\0\0ÿÿÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Microsoft DDS Form 2.0\0\0\0\0Embedded Object\0\0\0\0\0ô9²q\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Na¼\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Û\æ°\é\Ð­Q\0 \ÉW9\0\0\0 øŒ\á#\Ù\0\0HE\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Œ\0\0D\0a\0t\0a\0 \0S\0o\0u\0r\0c\0e\0=\0D\0E\0S\0K\0T\0O\0P\0-\0E\0N\0O\02\0D\0P\06\0;\0I\0n\0i\0t\0i\0a\0l\0 \0C\0a\0t\0a\0l\0o\0g\0=\0T\0H\0O\0I\0T\0R\0A\0N\0G\0;\0P\0e\0r\0s\0i\0s\0t\0 \0S\0e\0c\0u\0r\0i\0t\0y\0 \0I\0n\0f\0o\0=\0T\0r\0u\0e\0;\0U\0s\0e\0r\0 \0I\0D\0=\0s\0a\0;\0M\0u\0l\0t\0i\0p\0l\0e\0A\0c\0t\0i\0v\0e\0R\0e\0s\0u\0l\0t\0S\0e\0t\0s\0=\0F\0a\0l\0s\0e\0;\0P\0a\0c\0k\0e\0t\0 \0S\0i\0\0D\0d\0s\0S\0t\0r\0e\0a\0m\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0I\0\0\0œR\0\0\0\0\0\0S\0c\0h\0e\0m\0a\0 \0U\0D\0V\0 \0D\0e\0f\0a\0u\0l\0t\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0&\0\0ÿÿÿÿÿÿÿÿÿÿÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0D\0S\0R\0E\0F\0-\0S\0C\0H\0E\0M\0A\0-\0C\0O\0N\0T\0E\0N\0T\0S\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0,\0\0\0\0\0\0\0ÿÿÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0^\0\0\0\0\0\0S\0c\0h\0e\0m\0a\0 \0U\0D\0V\0 \0D\0e\0f\0a\0u\0l\0t\0 \0P\0o\0s\0t\0 \0V\06\0\0\0\0\0\0\0\0\0\0\0\0\06\0\0ÿÿÿÿÿÿÿÿÿÿÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¾ÿÿ`òÿÿ\0&\0\0\0s\0c\0h\0_\0l\0a\0b\0e\0l\0s\0_\0v\0i\0s\0i\0b\0l\0e\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0d\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ð\0\0\0(\0\0\0A\0c\0t\0i\0v\0e\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0\0\0\0\0\0\0\0\0\01\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\00\0\0\0\0\0\0\0:\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\02\09\05\0,\01\0,\01\08\07\05\0,\05\0,\01\02\04\05\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\01\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\07\01\05\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\02\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\02\09\05\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\03\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\02\09\05\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\04\0\0\0\0\0\0\0>\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\02\09\05\0,\01\02\0,\02\07\01\05\0,\01\01\0,\01\06\06\05\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ð\0\0\0(\0\0\0A\0c\0t\0i\0v\0e\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0\0\0\0\0\0\0\0\0\01\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\00\0\0\0\0\0\0\0:\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\02\09\05\0,\01\0,\01\08\07\05\0,\05\0,\01\02\04\05\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\01\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\07\03\00\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\02\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\02\09\05\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\03\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\02\09\05\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\04\0\0\0\0\0\0\0>\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\02\09\05\0,\01\02\0,\02\07\01\05\0,\01\01\0,\01\06\06\05\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ð\0\0\0(\0\0\0A\0c\0t\0i\0v\0e\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0\0\0\0\0\0\0\0\0\01\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\00\0\0\0\0\0\0\0:\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\02\09\05\0,\01\0,\01\08\07\05\0,\05\0,\01\02\04\05\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\01\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\07\01\05\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\02\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\02\09\05\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\03\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\02\09\05\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\04\0\0\0\0\0\0\0>\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\02\09\05\0,\01\02\0,\02\07\01\05\0,\01\01\0,\01\06\06\05\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ð\0\0\0(\0\0\0A\0c\0t\0i\0v\0e\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0\0\0\0\0\0\0\0\0\01\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\00\0\0\0\0\0\0\0:\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\02\09\05\0,\01\0,\01\08\07\05\0,\05\0,\01\02\04\05\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\01\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\07\06\00\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\02\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\02\09\05\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\03\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\02\09\05\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\04\0\0\0\0\0\0\0>\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\02\09\05\0,\01\02\0,\02\07\01\05\0,\01\01\0,\01\06\06\05\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ð\0\0\0(\0\0\0A\0c\0t\0i\0v\0e\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0\0\0\0\0\0\0\0\0\01\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\00\0\0\0\0\0\0\0:\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\02\09\05\0,\01\0,\01\08\07\05\0,\05\0,\01\02\04\05\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\01\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\07\01\05\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\02\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\02\09\05\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\03\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\02\09\05\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\04\0\0\0\0\0\0\0>\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\02\09\05\0,\01\02\0,\02\07\01\05\0,\01\01\0,\01\06\06\05\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ð\0\0\0(\0\0\0A\0c\0t\0i\0v\0e\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0\0\0\0\0\0\0\0\0\01\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\00\0\0\0\0\0\0\0:\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\02\09\05\0,\01\0,\01\08\07\05\0,\05\0,\01\02\04\05\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\01\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\07\01\05\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\02\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\02\09\05\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\03\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\02\09\05\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\04\0\0\0\0\0\0\0>\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\02\09\05\0,\01\02\0,\02\07\01\05\0,\01\01\0,\01\06\06\05\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ð\0\0\0(\0\0\0A\0c\0t\0i\0v\0e\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0\0\0\0\0\0\0\0\0\01\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\00\0\0\0\0\0\0\0:\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\02\09\05\0,\01\0,\01\08\07\05\0,\05\0,\01\02\04\05\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\01\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\07\03\00\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\02\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\02\09\05\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\03\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\02\09\05\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\04\0\0\0\0\0\0\0>\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\02\09\05\0,\01\02\0,\02\07\01\05\0,\01\01\0,\01\06\06\05\0\0\0	\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ð\0\0\0(\0\0\0A\0c\0t\0i\0v\0e\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0\0\0\0\0\0\0\0\0\01\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\00\0\0\0\0\0\0\0:\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\02\09\05\0,\01\0,\01\08\07\05\0,\05\0,\01\02\04\05\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\01\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\07\01\05\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\02\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\02\09\05\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\03\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\02\09\05\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\04\0\0\0\0\0\0\0>\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\02\09\05\0,\01\02\0,\02\07\01\05\0,\01\01\0,\01\06\06\05\0\0\0\n\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ð\0\0\0(\0\0\0A\0c\0t\0i\0v\0e\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0\0\0\0\0\0\0\0\0\01\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\00\0\0\0\0\0\0\0:\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\02\09\05\0,\01\0,\01\08\07\05\0,\05\0,\01\02\04\05\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\01\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\07\03\00\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\02\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\02\09\05\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\03\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\02\09\05\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\04\0\0\0\0\0\0\0>\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\02\09\05\0,\01\02\0,\02\07\01\05\0,\01\01\0,\01\06\06\05\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ð\0\0\0(\0\0\0A\0c\0t\0i\0v\0e\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0\0\0\0\0\0\0\0\0\01\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\00\0\0\0\0\0\0\0:\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\02\09\05\0,\01\0,\01\08\07\05\0,\05\0,\01\02\04\05\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\01\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\07\03\00\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\02\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\02\09\05\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\03\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\02\09\05\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\04\0\0\0\0\0\0\0>\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\02\09\05\0,\01\02\0,\02\07\01\05\0,\01\01\0,\01\06\06\05\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ð\0\0\0(\0\0\0A\0c\0t\0i\0v\0e\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0\0\0\0\0\0\0\0\0\01\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\00\0\0\0\0\0\0\0:\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\02\09\05\0,\01\0,\01\08\07\05\0,\05\0,\01\02\04\05\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\01\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\07\01\05\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\02\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\02\09\05\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\03\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\02\09\05\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\04\0\0\0\0\0\0\0>\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\02\09\05\0,\01\02\0,\02\07\01\05\0,\01\01\0,\01\06\06\05\0\0\0\r\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ð\0\0\0(\0\0\0A\0c\0t\0i\0v\0e\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0\0\0\0\0\0\0\0\0\01\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\00\0\0\0\0\0\0\0:\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\02\09\05\0,\01\0,\01\08\07\05\0,\05\0,\01\02\04\05\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\01\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\07\01\05\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\02\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\02\09\05\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\03\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\02\09\05\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\04\0\0\0\0\0\0\0>\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\02\09\05\0,\01\02\0,\02\07\01\05\0,\01\01\0,\01\06\06\05\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ð\0\0\0(\0\0\0A\0c\0t\0i\0v\0e\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0\0\0\0\0\0\0\0\0\01\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\00\0\0\0\0\0\0\0:\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\02\09\05\0,\01\0,\01\08\07\05\0,\05\0,\01\02\04\05\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\01\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\07\01\05\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\02\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\02\09\05\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\03\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\02\09\05\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\04\0\0\0\0\0\0\0>\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\02\09\05\0,\01\02\0,\02\07\01\05\0,\01\01\0,\01\06\06\05\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ð\0\0\0(\0\0\0A\0c\0t\0i\0v\0e\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0\0\0\0\0\0\0\0\0\01\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\00\0\0\0\0\0\0\0:\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\02\09\05\0,\01\0,\01\08\07\05\0,\05\0,\01\02\04\05\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\01\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\07\01\05\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\02\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\02\09\05\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\03\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\02\09\05\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\04\0\0\0\0\0\0\0>\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\02\09\05\0,\01\02\0,\02\07\01\05\0,\01\01\0,\01\06\06\05\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ð\0\0\0(\0\0\0A\0c\0t\0i\0v\0e\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0\0\0\0\0\0\0\0\0\01\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\00\0\0\0\0\0\0\0:\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\02\09\05\0,\01\0,\01\08\07\05\0,\05\0,\01\02\04\05\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\01\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\07\03\00\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\02\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\02\09\05\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\03\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\02\09\05\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\04\0\0\0\0\0\0\0>\0\0\04\0,\00\0,\02\08\04\0,\00\0,\02\02\09\05\0,\01\02\0,\02\07\01\05\0,\01\01\0,\01\06\06\05\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ð\0\0\0(\0\0\0A\0c\0t\0i\0v\0e\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0\0\0\0\0\0\0\0\0\01\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\00\0\0\0\0\0\0\08\0\0\04\0,\00\0,\02\08\04\0,\00\0,\01\04\02\05\0,\01\0,\01\09\06\05\0,\05\0,\06\03\00\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\01\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\02\00\05\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\02\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\01\01\05\05\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\03\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\01\01\05\05\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\04\0\0\0\0\0\0\0<\0\0\04\0,\00\0,\02\08\04\0,\00\0,\01\01\05\05\0,\01\02\0,\01\03\06\05\0,\01\01\0,\08\04\00\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ð\0\0\0(\0\0\0A\0c\0t\0i\0v\0e\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0\0\0\0\0\0\0\0\0\01\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\00\0\0\0\0\0\0\06\0\0\04\0,\00\0,\02\08\04\0,\00\0,\01\01\05\05\0,\01\0,\09\04\05\0,\05\0,\06\03\00\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\01\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\02\00\05\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\02\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\01\01\05\05\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\03\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\01\01\05\05\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\04\0\0\0\0\0\0\0<\0\0\04\0,\00\0,\02\08\04\0,\00\0,\01\01\05\05\0,\01\02\0,\01\03\06\05\0,\01\01\0,\08\04\00\0\0\0\0\0\0\0\0\0\0\0\0\0.\0\0\0jTX\0\0\0d\0b\0o\0\0\0F\0K\0_\0C\0T\0H\0D\0_\0H\0O\0A\0D\0O\0N\0\0\0\0\0\0\0\0\0\0\0\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ŠŸ\Z€ŠŸ\Z\0\0\0\0\0\0\0\0­\0\0\0\0\0\0\0\0\0\0\0\0\0\0\00\0\0\0jTX\0\0\0d\0b\0o\0\0\0F\0K\0_\0C\0T\0H\0D\0_\0M\0A\0T\0H\0A\0N\0G\0\0\0\0\0\0\0\0\0\0\0\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0‰Ÿ\ZÀ‰Ÿ\Z\0\0\0\0\0\0\0\0­\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0:\0\0\0jTX\0\0\0d\0b\0o\0\0\0F\0K\0_\0H\0I\0N\0H\0A\0N\0H\0M\0H\0_\0M\0A\0T\0H\0A\0N\0G\0\0\0\0\0\0\0\0\0\0\0\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ŒŸ\Z@ŒŸ\Z\0\0\0\0\0\0\0\0­\0\0\0\0\0\Z\0\0\0\Z\0\0\0\0\0\0\08\0\0\0\0\0\0\0\0\0d\0b\0o\0\0\0F\0K\0_\0H\0O\0A\0D\0O\0N\0_\0K\0H\0A\0C\0H\0H\0A\0N\0G\0\0\0\0\0\0\0\0\0\0\0\Ä\0\0\0\0\0\0\0\0\0\0\Z\0\0\0\0\0\0ŒŸ\ZÀŒŸ\Z\0\0\0\0\0\0\0\0­\0\0\0\0\0\0\0\0\0\0\0\0\0\0\06\0\0\0\0\0\0\0\0\0d\0b\0o\0\0\0F\0K\0_\0H\0O\0A\0D\0O\0N\0_\0N\0H\0A\0N\0V\0I\0E\0N\0\0\0\0\0\0\0\0\0\0\0\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ÿ\Z€Ÿ\Z\0\0\0\0\0\0\0\0­\0\0\0\0\0\0\0\0\0\0\0\0\0\0\06\0\0\0\0\0\0\0\0\0d\0b\0o\0\0\0F\0K\0_\0B\0A\0N\0G\0G\0I\0A\0_\0M\0A\0T\0H\0A\0N\0G\0\0\0\0\0\0\0\0\0\0\0\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ÿ\ZÀŸ\Z\0\0\0\0\0\0\0\0­\0\0\0\0\0 \0\0\0 \0\0\0\0\0\0\08\0\0\0\0\0\0\0\0\0d\0b\0o\0\0\0F\0K\0_\0B\0A\0N\0G\0G\0I\0A\0_\0N\0H\0A\0N\0V\0I\0E\0N\0\0\0\0\0\0\0\0\0\0\0\Ä\0\0\0\0!\0\0\0!\0\0\0 \0\0\0\0\0\0‰Ÿ\Z€‰Ÿ\Z\0\0\0\0\0\0\0\0­\0\0\0\0\0\"\0\0\0\"\0\0\0\0\0\0\0<\0\0\0jTX\0\0\0d\0b\0o\0\0\0F\0K\0_\0P\0H\0I\0E\0U\0D\0A\0T\0_\0K\0H\0A\0C\0H\0H\0A\0N\0G\0\0\0\0\0\0\0\0\0\0\0\Ä\0\0\0\0#\0\0\0#\0\0\0\"\0\0\0\0\0\0Ÿ\Z€Ÿ\Z\0\0\0\0\0\0\0\0­\0\0\0\0\0$\0\0\0$\0\0\0\0\0\0\0:\0\0\0jTX\0\0\0d\0b\0o\0\0\0F\0K\0_\0P\0H\0I\0E\0U\0D\0A\0T\0_\0N\0H\0A\0N\0V\0I\0E\0N\0\0\0\0\0\0\0\0\0\0\0\Ä\0\0\0\0%\0\0\0%\0\0\0$\0\0\0\0\0\0‹Ÿ\ZÀ‹Ÿ\Z\0\0\0\0\0\0\0\0­\0\0\0\0\0&\0\0\0&\0\0\0\0\0\0\0<\0\0\0jTX\0\0\0d\0b\0o\0\0\0F\0K\0_\0P\0H\0I\0E\0U\0N\0H\0A\0P\0_\0N\0H\0A\0N\0V\0I\0E\0N\0\0\0\0\0\0\0\0\0\0\0\Ä\0\0\0\0\'\0\0\0\'\0\0\0&\0\0\0\0\0\0ŒŸ\Z€ŒŸ\Z\0\0\0\0\0\0\0\0­\0\0\0\0\0*\0\0\0*\0\0\0\0\0\0\0B\0\0\0\0\0\0\0\0\0d\0b\0o\0\0\0F\0K\0_\0D\0O\0N\0D\0A\0T\0H\0A\0N\0G\0_\0N\0H\0A\0C\0U\0N\0G\0C\0A\0P\0\0\0\0\0\0\0\0\0\0\0\Ä\0\0\0\0+\0\0\0+\0\0\0*\0\0\0\0\0\0‹Ÿ\Z@‹Ÿ\Z\0\0\0\0\0\0\0\0­\0\0\0\0\0,\0\0\0,\0\0\0\0\0\0\0>\0\0\0jTX\0\0\0d\0b\0o\0\0\0F\0K\0_\0D\0O\0N\0D\0A\0T\0H\0A\0N\0G\0_\0N\0H\0A\0N\0V\0I\0E\0N\0\0\0\0\0\0\0\0\0\0\0\Ä\0\0\0\0-\0\0\0-\0\0\0,\0\0\0\0\0\0Ÿ\Z€Ÿ\Z\0\0\0\0\0\0\0\0­\0\0\0\0\0.\0\0\0.\0\0\0\0\0\0\04\0\0\0\0\0\0\0\0\0d\0b\0o\0\0\0F\0K\0_\0C\0T\0P\0N\0_\0P\0H\0I\0E\0U\0N\0H\0A\0P\0\0\0\0\0\0\0\0\0\0\0\Ä\0\0\0\0/\0\0\0/\0\0\0.\0\0\0\0\0\0ŠŸ\ZÀŠŸ\Z\0\0\0\0\0\0\0\0­\0\0\0\0\00\0\0\00\0\0\0\0\0\0\00\0\0\0jTX\0\0\0d\0b\0o\0\0\0F\0K\0_\0C\0T\0P\0N\0_\0M\0A\0T\0H\0A\0N\0G\0\0\0\0\0\0\0\0\0\0\0\Ä\0\0\0\01\0\0\01\0\0\00\0\0\0\0\0\0‰Ÿ\Z\0‰Ÿ\Z\0\0\0\0\0\0\0\0­\0\0\0\0\02\0\0\02\0\0\0\0\0\0\0B\0\0\0\0\0\0\0\0\0d\0b\0o\0\0\0F\0K\0_\0D\0O\0T\0K\0H\0U\0Y\0E\0N\0M\0A\0I\0_\0N\0H\0A\0N\0V\0I\0E\0N\0\0\0\0\0\0\0\0\0\0\0\Ä\0\0\0\03\0\0\03\0\0\02\0\0\0\0\0\0ŠŸ\Z@ŠŸ\Z\0\0\0\0\0\0\0\0­\0\0\0\0\04\0\0\04\0\0\0\0\0\0\0<\0\0\0jTX\0\0\0d\0b\0o\0\0\0F\0K\0_\0C\0T\0D\0K\0M\0_\0D\0O\0T\0K\0H\0U\0Y\0E\0N\0M\0A\0I\0\0\0\0\0\0\0\0\0\0\0\Ä\0\0\0\05\0\0\05\0\0\04\0\0\0\0\0\0Ÿ\Z@Ÿ\Z\0\0\0\0\0\0\0\0­\0\0\0\0\06\0\0\06\0\0\0\0\0\0\02\0\0\0\0\0\0\0\0\0d\0b\0o\0\0\0F\0K\0_\0C\0T\0D\0K\0M\0_\0M\0A\0T\0H\0A\0N\0G\0\0\0\0\0\0\0\0\0\0\0\Ä\0\0\0\07\0\0\07\0\0\06\0\0\0\0\0\0Ÿ\Z\0Ÿ\Z\0\0\0\0\0\0\0\0­\0\0\0\0\08\0\0\08\0\0\0\0\0\0\02\0\0\0\0\0\0\0\0\0d\0b\0o\0\0\0F\0K\0_\0C\0T\0P\0D\0_\0P\0H\0I\0E\0U\0D\0A\0T\0\0\0\0\0\0\0\0\0\0\0\Ä\0\0\0\09\0\0\09\0\0\08\0\0\0\0\0\0Ÿ\ZÀŸ\Z\0\0\0\0\0\0\0\0­\0\0\0\0\0:\0\0\0:\0\0\0\0\0\0\00\0\0\0jTX\0\0\0d\0b\0o\0\0\0F\0K\0_\0C\0T\0P\0D\0_\0M\0A\0T\0H\0A\0N\0G\0\0\0\0\0\0\0\0\0\0\0\Ä\0\0\0\0;\0\0\0;\0\0\0:\0\0\0\0\0\0ŽŸ\ZÀŽŸ\Z\0\0\0\0\0\0\0\0­\0\0\0\0\0<\0\0\0<\0\0\0\0\0\0\08\0\0\0\0\0\0\0\0\0d\0b\0o\0\0\0F\0K\0_\0M\0A\0T\0H\0A\0N\0G\0_\0N\0H\0A\0N\0H\0I\0E\0U\0\0\0\0\0\0\0\0\0\0\0\Ä\0\0\0\0=\0\0\0=\0\0\0<\0\0\0\0\0\0Ÿ\Z@Ÿ\Z\0\0\0\0\0\0\0\0­\0\0\0\0\0>\0\0\0>\0\0\0\0\0\0\08\0\0\0\0\0\0\0\0\0d\0b\0o\0\0\0F\0K\0_\0C\0T\0D\0D\0H\0_\0D\0O\0N\0D\0A\0T\0H\0A\0N\0G\0\0\0\0\0\0\0\0\0\0\0\Ä\0\0\0\0?\0\0\0?\0\0\0>\0\0\0\0\0\0Ÿ\Z@Ÿ\Z\0\0\0\0\0\0\0\0­\0\0\0\0\0@\0\0\0@\0\0\0\0\0\0\02\0\0\0\0\0\0\0\0\0d\0b\0o\0\0\0F\0K\0_\0C\0T\0D\0D\0H\0_\0M\0A\0T\0H\0A\0N\0G\0\0\0\0\0\0\0\0\0\0\0\Ä\0\0\0\0A\0\0\0A\0\0\0@\0\0\0\0\0\0ŽŸ\Z@ŽŸ\Z\0\0\0\0\0\0\0\0­\0\0\0\0\0B\0\0\0B\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ð\0\0\0(\0\0\0A\0c\0t\0i\0v\0e\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0\0\0\0\0\0\0\0\0\01\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\00\0\0\0\0\0\0\08\0\0\04\0,\00\0,\02\08\04\0,\00\0,\01\03\08\00\0,\01\0,\01\01\02\05\0,\05\0,\07\05\00\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\01\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\01\03\00\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\02\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\01\03\08\00\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\03\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\01\03\08\00\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\04\0\0\0\0\0\0\0>\0\0\04\0,\00\0,\02\08\04\0,\00\0,\01\03\08\00\0,\01\02\0,\01\06\03\05\0,\01\01\0,\01\00\00\05\0\0\0C\0\0\0C\0\0\0\0\0\0\0<\0\0\0jTX\0\0\0d\0b\0o\0\0\0F\0K\0_\0T\0A\0I\0K\0H\0O\0A\0N\0_\0K\0H\0A\0C\0H\0H\0A\0N\0G\0\0\0\0\0\0\0\0\0\0\0\Ä\0\0\0\0D\0\0\0D\0\0\0C\0\0\0\0\0\0ŠŸ\Z\0ŠŸ\Z\0\0\0\0\0\0\0\0­\0\0\0\0\0E\0\0\0E\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ð\0\0\0(\0\0\0A\0c\0t\0i\0v\0e\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0\0\0\0\0\0\0\0\0\01\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\00\0\0\0\0\0\0\08\0\0\04\0,\00\0,\02\08\04\0,\00\0,\01\03\08\00\0,\01\0,\01\01\02\05\0,\05\0,\07\05\00\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\01\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\01\03\00\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\02\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\01\03\08\00\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\03\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\01\03\08\00\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\04\0\0\0\0\0\0\0>\0\0\04\0,\00\0,\02\08\04\0,\00\0,\01\03\08\00\0,\01\02\0,\01\06\03\05\0,\01\01\0,\01\00\00\05\0\0\0F\0\0\0F\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ð\0\0\0(\0\0\0A\0c\0t\0i\0v\0e\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0\0\0\0\0\0\0\0\0\01\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\00\0\0\0\0\0\0\08\0\0\04\0,\00\0,\02\08\04\0,\00\0,\01\03\08\00\0,\01\0,\01\01\02\05\0,\05\0,\07\05\00\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\01\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\01\03\00\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\02\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\01\03\08\00\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\03\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\01\03\08\00\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\04\0\0\0\0\0\0\0>\0\0\04\0,\00\0,\02\08\04\0,\00\0,\01\03\08\00\0,\01\02\0,\01\06\03\05\0,\01\01\0,\01\00\00\05\0\0\0G\0\0\0G\0\0\0\0\0\0\06\0\0\0\0\0\0\0\0\0d\0b\0o\0\0\0F\0K\0_\0H\0O\0A\0D\0O\0N\0_\0P\0H\0I\0E\0U\0D\0A\0T\0\0\0\0\0\0\0\0\0\0\0\Ä\0\0\0\0H\0\0\0H\0\0\0G\0\0\0\0\0\0’Ÿ\Z\0’Ÿ\Z\0\0\0\0\0\0\0\0­\0\0\0\0\0I\0\0\0I\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ð\0\0\0(\0\0\0A\0c\0t\0i\0v\0e\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0\0\0\0\0\0\0\0\0\01\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\00\0\0\0\0\0\0\08\0\0\04\0,\00\0,\02\08\04\0,\00\0,\01\03\08\00\0,\01\0,\01\01\02\05\0,\05\0,\07\05\00\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\01\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\01\03\00\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\02\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\01\03\08\00\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\03\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\01\03\08\00\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\04\0\0\0\0\0\0\0>\0\0\04\0,\00\0,\02\08\04\0,\00\0,\01\03\08\00\0,\01\02\0,\01\06\03\05\0,\01\01\0,\01\00\00\05\0\0\0J\0\0\0J\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ð\0\0\0(\0\0\0A\0c\0t\0i\0v\0e\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0\0\0\0\0\0\0\0\0\01\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\00\0\0\0\0\0\0\08\0\0\04\0,\00\0,\02\08\04\0,\00\0,\01\03\08\00\0,\01\0,\01\01\02\05\0,\05\0,\07\05\00\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\01\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\01\01\05\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\02\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\01\03\08\00\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\03\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\01\03\08\00\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\04\0\0\0\0\0\0\0>\0\0\04\0,\00\0,\02\08\04\0,\00\0,\01\03\08\00\0,\01\02\0,\01\06\03\05\0,\01\01\0,\01\00\00\05\0\0\0K\0\0\0K\0\0\0\0\0\0\0<\0\0\0jTX\0\0\0d\0b\0o\0\0\0F\0K\0_\0P\0H\0I\0E\0U\0X\0U\0A\0T\0_\0N\0H\0A\0N\0V\0I\0E\0N\0\0\0\0\0\0\0\0\0\0\0\Ä\0\0\0\0L\0\0\0L\0\0\0K\0\0\0\0\0\0•Ÿ\Z\0•Ÿ\Z\0\0\0\0\0\0\0\0­\0\0\0\0\0M\0\0\0M\0\0\0\0\0\0\0<\0\0\0jTX\0\0\0d\0b\0o\0\0\0F\0K\0_\0P\0H\0I\0E\0U\0X\0U\0A\0T\0_\0C\0H\0I\0N\0H\0A\0N\0H\0\0\0\0\0\0\0\0\0\0\0\Ä\0\0\0\0N\0\0\0N\0\0\0M\0\0\0\0\0\0“Ÿ\ZÀ“Ÿ\Z\0\0\0\0\0\0\0\0­\0\0\0\0\0O\0\0\0O\0\0\0\0\0\0\02\0\0\0\0\0\0\0\0\0d\0b\0o\0\0\0F\0K\0_\0P\0H\0I\0E\0U\0X\0U\0A\0T\0_\0K\0H\0O\0\0\0\0\0\0\0\0\0\0\0\Ä\0\0\0\0P\0\0\0P\0\0\0O\0\0\0\0\0\0—Ÿ\ZÀ—Ÿ\Z\0\0\0\0\0\0\0\0­\0\0\0\0\0Q\0\0\0Q\0\0\0\0\0\0\04\0\0\0\0\0\0\0\0\0d\0b\0o\0\0\0F\0K\0_\0C\0T\0P\0X\0_\0P\0H\0I\0E\0U\0X\0U\0A\0T\0\0\0\0\0\0\0\0\0\0\0\Ä\0\0\0\0R\0\0\0R\0\0\0Q\0\0\0\0\0\0•Ÿ\Z€•Ÿ\Z\0\0\0\0\0\0\0\0­\0\0\0\0\0S\0\0\0S\0\0\0\0\0\0\00\0\0\0jTX\0\0\0d\0b\0o\0\0\0F\0K\0_\0C\0T\0P\0X\0_\0M\0A\0T\0H\0A\0N\0G\0\0\0\0\0\0\0\0\0\0\0\Ä\0\0\0\0T\0\0\0T\0\0\0S\0\0\0\0\0\0—Ÿ\Z€—Ÿ\Z\0\0\0\0\0\0\0\0­\0\0\0\0\0U\0\0\0U\0\0\0\0\0\0\02\0\0\0\0\0\0\0\0\0d\0b\0o\0\0\0F\0K\0_\0P\0H\0I\0E\0U\0N\0H\0A\0P\0_\0K\0H\0O\0\0\0\0\0\0\0\0\0\0\0\Ä\0\0\0\0V\0\0\0V\0\0\0U\0\0\0\0\0\0“Ÿ\Z@“Ÿ\Z\0\0\0\0\0\0\0\0­\0\0\0\0\0\\\0\0\0\\\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ð\0\0\0(\0\0\0A\0c\0t\0i\0v\0e\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0\0\0\0\0\0\0\0\0\01\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\00\0\0\0\0\0\0\08\0\0\04\0,\00\0,\02\08\04\0,\00\0,\01\06\00\05\0,\01\0,\01\03\02\00\0,\05\0,\08\07\00\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\01\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\01\00\00\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\02\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\01\06\00\05\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\03\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\01\06\00\05\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\04\0\0\0\0\0\0\0>\0\0\04\0,\00\0,\02\08\04\0,\00\0,\01\06\00\05\0,\01\02\0,\01\09\00\05\0,\01\01\0,\01\01\07\00\0\0\0_\0\0\0_\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ð\0\0\0(\0\0\0A\0c\0t\0i\0v\0e\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0\0\0\0\0\0\0\0\0\01\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\00\0\0\0\0\0\0\08\0\0\04\0,\00\0,\02\08\04\0,\00\0,\01\06\00\05\0,\01\0,\01\03\02\00\0,\05\0,\08\07\00\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\01\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\01\03\00\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\02\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\01\06\00\05\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\03\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\01\06\00\05\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\04\0\0\0\0\0\0\0>\0\0\04\0,\00\0,\02\08\04\0,\00\0,\01\06\00\05\0,\01\02\0,\01\09\00\05\0,\01\01\0,\01\01\07\00\0\0\0h\0\0\0h\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ð\0\0\0(\0\0\0A\0c\0t\0i\0v\0e\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0\0\0\0\0\0\0\0\0\01\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\00\0\0\0\0\0\0\08\0\0\04\0,\00\0,\02\08\04\0,\00\0,\01\06\00\05\0,\01\0,\01\03\02\00\0,\05\0,\08\07\00\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\01\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\01\00\00\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\02\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\01\06\00\05\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\03\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\01\06\00\05\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\04\0\0\0\0\0\0\0>\0\0\04\0,\00\0,\02\08\04\0,\00\0,\01\06\00\05\0,\01\02\0,\01\09\00\05\0,\01\01\0,\01\01\07\00\0\0\0n\0\0\0n\0\0\0\0\0\0\04\0\0\0\0\0\0\0\0\0d\0b\0o\0\0\0F\0K\0_\0M\0A\0T\0H\0A\0N\0G\0_\0L\0O\0A\0I\0M\0H\0\0\0\0\0\0\0\0\0\0\0\Ä\0\0\0\0o\0\0\0o\0\0\0n\0\0\0\0\0\0’Ÿ\Z@’Ÿ\Z\0\0\0\0\0\0\0\0­\0\0\0\0\0p\0\0\0p\0\0\0\0\0\0\04\0\0\0\0\0\0\0\0\0d\0b\0o\0\0\0F\0K\0_\0M\0A\0T\0H\0A\0N\0G\0_\0L\0O\0A\0I\0K\0H\0\0\0\0\0\0\0\0\0\0\0\Ä\0\0\0\0q\0\0\0q\0\0\0p\0\0\0\0\0\0‘Ÿ\Z€‘Ÿ\Z\0\0\0\0\0\0\0\0­\0\0\0\0\0r\0\0\0r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ð\0\0\0(\0\0\0A\0c\0t\0i\0v\0e\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0\0\0\0\0\0\0\0\0\01\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\00\0\0\0\0\0\0\08\0\0\04\0,\00\0,\02\08\04\0,\00\0,\01\06\00\05\0,\01\0,\01\03\02\00\0,\05\0,\08\07\00\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\01\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\01\00\00\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\02\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\01\06\00\05\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\03\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\01\06\00\05\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\04\0\0\0\0\0\0\0>\0\0\04\0,\00\0,\02\08\04\0,\00\0,\01\06\00\05\0,\01\02\0,\01\09\00\05\0,\01\01\0,\01\01\07\00\0\0\0s\0\0\0s\0\0\0\0\0\0\06\0\0\0Œ>\0\0\0d\0b\0o\0\0\0F\0K\0_\0K\0H\0O\0_\0M\0H\0_\0S\0I\0Z\0E\0_\0K\0H\0O\0\0\0\0\0\0\0\0\0\0\0\Ä\0\0\0\0t\0\0\0t\0\0\0s\0\0\0\0\0\0”Ÿ\ZÀ”Ÿ\Z\0\0\0\0\0\0\0\0­\0\0\0\0\0u\0\0\0u\0\0\0\0\0\0\0>\0\0\0jTX\0\0\0d\0b\0o\0\0\0F\0K\0_\0K\0H\0O\0_\0M\0H\0_\0S\0I\0Z\0E\0_\0M\0A\0T\0H\0A\0N\0G\0\0\0\0\0\0\0\0\0\0\0\Ä\0\0\0\0v\0\0\0v\0\0\0u\0\0\0\0\0\0—Ÿ\Z@—Ÿ\Z\0\0\0\0\0\0\0\0­\0\0\0\0\0w\0\0\0w\0\0\0\0\0\0\08\0\0\0Œ>\0\0\0d\0b\0o\0\0\0F\0K\0_\0K\0H\0O\0_\0M\0H\0_\0S\0I\0Z\0E\0_\0S\0I\0Z\0E\0\0\0\0\0\0\0\0\0\0\0\Ä\0\0\0\0x\0\0\0x\0\0\0w\0\0\0\0\0\0•Ÿ\Z@•Ÿ\Z\0\0\0\0\0\0\0\0­\0\0\0\0\0y\0\0\0y\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ð\0\0\0(\0\0\0A\0c\0t\0i\0v\0e\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0\0\0\0\0\0\0\0\0\01\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\00\0\0\0\0\0\0\08\0\0\04\0,\00\0,\02\08\04\0,\00\0,\01\06\00\05\0,\01\0,\01\03\02\00\0,\05\0,\08\07\00\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\01\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\01\00\00\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\02\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\01\06\00\05\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\03\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\01\06\00\05\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\04\0\0\0\0\0\0\0>\0\0\04\0,\00\0,\02\08\04\0,\00\0,\01\06\00\05\0,\01\02\0,\01\09\00\05\0,\01\01\0,\01\01\07\00\0\0\0z\0\0\0z\0\0\0\0\0\0\08\0\0\0Œ>\0\0\0d\0b\0o\0\0\0F\0K\0_\0D\0A\0N\0H\0G\0I\0A\0_\0T\0A\0I\0K\0H\0O\0A\0N\0\0\0\0\0\0\0\0\0\0\0\Ä\0\0\0\0{\0\0\0{\0\0\0z\0\0\0\0\0\0’Ÿ\ZÀ’Ÿ\Z\0\0\0\0\0\0\0\0­\0\0\0\0\0|\0\0\0|\0\0\0\0\0\0\06\0\0\0Œ>\0\0\0d\0b\0o\0\0\0F\0K\0_\0D\0A\0N\0H\0G\0I\0A\0_\0M\0A\0T\0H\0A\0N\0G\0\0\0\0\0\0\0\0\0\0\0\Ä\0\0\0\0}\0\0\0}\0\0\0|\0\0\0\0\0\0—Ÿ\Z\0—Ÿ\Z\0\0\0\0\0\0\0\0­\0\0\0\0\0„\0\0\0„\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ð\0\0\0(\0\0\0A\0c\0t\0i\0v\0e\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0\0\0\0\0\0\0\0\0\01\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\00\0\0\0\0\0\0\08\0\0\04\0,\00\0,\02\08\04\0,\00\0,\01\06\00\05\0,\01\0,\01\03\02\00\0,\05\0,\08\07\00\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\01\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\01\01\05\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\02\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\01\06\00\05\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\03\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\01\06\00\05\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\04\0\0\0\0\0\0\0>\0\0\04\0,\00\0,\02\08\04\0,\00\0,\01\06\00\05\0,\01\02\0,\01\09\00\05\0,\01\01\0,\01\01\07\00\0\0\0…\0\0\0…\0\0\0\0\0\0\0.\0\0\0jTX\0\0\0d\0b\0o\0\0\0F\0K\0_\0M\0A\0T\0H\0A\0N\0G\0_\0V\0A\0I\0\0\0\0\0\0\0\0\0\0\0\Ä\0\0\0\0†\0\0\0†\0\0\0…\0\0\0\0\0\0’Ÿ\Z€’Ÿ\Z\0\0\0\0\0\0\0\0­\0\0\0\0\0‡\0\0\0‡\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ð\0\0\0(\0\0\0A\0c\0t\0i\0v\0e\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0\0\0\0\0\0\0\0\0\01\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\00\0\0\0\0\0\0\08\0\0\04\0,\00\0,\02\08\04\0,\00\0,\01\06\00\05\0,\01\0,\01\03\02\00\0,\05\0,\08\07\00\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\01\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\02\01\00\00\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\02\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\01\06\00\05\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\03\0\0\0\0\0\0\0\0\0\02\0,\00\0,\02\08\04\0,\00\0,\01\06\00\05\0\0\0 \0\0\0T\0a\0b\0l\0e\0V\0i\0e\0w\0M\0o\0d\0e\0:\04\0\0\0\0\0\0\0>\0\0\04\0,\00\0,\02\08\04\0,\00\0,\01\06\00\05\0,\01\02\0,\01\09\00\05\0,\01\01\0,\01\01\07\00\0\0\0ˆ\0\0\0ˆ\0\0\0\0\0\0\04\0\0\0Œ>\0\0\0d\0b\0o\0\0\0F\0K\0_\0T\0A\0I\0K\0H\0O\0A\0N\0_\0Q\0U\0Y\0E\0N\0\0\0\0\0\0\0\0\0\0\0\Ä\0\0\0\0‰\0\0\0‰\0\0\0ˆ\0\0\0\0\0\0“Ÿ\Z€“Ÿ\Z\0\0\0\0\0\0\0\0­\0\0\0\0\0Š\0\0\0Š\0\0\0\0\0\0\0@\0\0\0jTX\0\0\0d\0b\0o\0\0\0F\0K\0_\0P\0H\0I\0E\0U\0N\0H\0A\0P\0_\0D\0O\0N\0D\0A\0T\0H\0A\0N\0G\0\0\0\0\0\0\0\0\0\0\0\Ä\0\0\0\0‹\0\0\0‹\0\0\0Š\0\0\0\0\0\0\ä:\ä:\0\0\0\0\0\0\0\0­\0\0\0\0\È\0\0\0Š\0\0\0\0\0\0\0\0\0Z\0\0\0w\0\0\0>\0\0\0\0\0\0\0\0\0\0\0\0a\0\0\04\0\0\0\0\0\0\0\0\0:\0\0\0!\0\0\0\0\0\0	\0\0\0\0\0\0$\0\0\0%\0\0\0\Z\0\0\0\n\0\0\0	\0\0\0\0\0\0\03\0\0\0\"\0\0\0\n\0\0\0\0\0\0^\0\0\0M\0\0\0C\0\0\0\n\0\0\0B\0\0\0 \0\0\0\0\0\0u\0\0\0\0\0\0r\0\0\0l\0\0\0q\0\0\0S\0\0\0\0\0\0I\0\0\0\0\0\00\0\0\0\0\0\0\0\0\0\0\0\0s\0\0\0p\0\0\0\0\0\0\0\0\0\0\0\0M\0\0\0Z\0\0\0\0\0\0\0\0\0\0\0\0C\0\0\00\0\0\00\0\0\0\0\0\0\0\0\0†\0\0\0f\0\0\06\0\0\0\0\0\0\0\0\0¦\0\0\0W\0\0\0:\0\0\0\0\0\0\0\0\0§\0\0\0d\0\0\0@\0\0\0\0\0\0\0\0\0z\0\0\0x\0\0\0|\0\0\0\0\0\0y\0\0\0\0\0\0\0\0\0\0*\0\0\0\0\0\0\0\0\0j\0\0\0k\0\0\0<\0\0\0\r\0\0\0\0\0\0i\0\0\0T\0\0\0K\0\0\0\0\0\0J\0\0\0l\0\0\0}\0\0\0\0\0\0\0\0\0	\0\0\0?\0\0\0a\0\0\0 \0\0\0\0\0\0\0\0\04\0\0\0\0\0\0$\0\0\0\0\0\0\0\0\0Y\0\0\0L\0\0\0&\0\0\0\0\0\0\0\0\0\0\0\0*\0\0\0,\0\0\0\0\0\0\0\0\05\0\0\0L\0\0\02\0\0\0\0\0\0\0\0\0P\0\0\0\0\0\0G\0\0\0\0\0\0	\0\0\0>\0\0\0\0\0\08\0\0\0\0\0\0\0\0\0\"\0\0\0;\0\0\0.\0\0\0\0\0\0\0\0\0‚\0\0\0M\0\0\0z\0\0\0B\0\0\0y\0\0\0\n\0\0\0#\0\0\0M\0\0\0E\0\0\0J\0\0\0 \0\0\0\0\0\0s\0\0\0F\0\0\0r\0\0\0D\0\0\0\0\0\0U\0\0\0F\0\0\0\0\0\0e\0\0\0N\0\0\0O\0\0\0F\0\0\0J\0\0\0\n\0\0\09\0\0\0Q\0\0\0J\0\0\0I\0\0\0<\0\0\0!\0\0\0p\0\0\0\\\0\0\0\0\0\0;\0\0\0\0\0\0\0w\0\0\0_\0\0\0r\0\0\0N\0\0\0C\0\0\0n\0\0\0h\0\0\0\0\0\0\0\0\0F\0\0\0…\0\0\0„\0\0\0\0\0\00\0\0\0\0\0\0ˆ\0\0\0‡\0\0\0B\0\0\0\0\0\0\09\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0z\0e\0=\04\00\09\06\0;\0A\0p\0p\0l\0i\0c\0a\0t\0i\0o\0n\0 \0N\0a\0m\0e\0=\0\"\0M\0i\0c\0r\0o\0s\0o\0f\0t\0 \0S\0Q\0L\0 \0S\0e\0r\0v\0e\0r\0 \0M\0a\0n\0a\0g\0e\0m\0e\0n\0t\0 \0S\0t\0u\0d\0i\0o\0\"\0\0\0\0€\0\0\0\0T\0H\0O\0I\0T\0R\0A\0N\0G\0\0\0\0&\0\0\0\0Q\0U\0Y\0E\0N\0\0\0\0\0\0d\0b\0o\0\0\0\0&\0\0\0\0C\0H\0A\0T\0L\0I\0E\0U\0\0\0\0\0\0d\0b\0o\0\0\0\0&\0\0\0\0D\0A\0N\0H\0G\0I\0A\0\0\0\0\0\0d\0b\0o\0\0\0\0&\0\0\0\0K\0H\0O\0_\0M\0H\0_\0S\0I\0Z\0E\0\0\0\0\0\0d\0b\0o\0\0\0\0&\0\0\0\0L\0O\0A\0I\0M\0H\0\0\0\0\0\0d\0b\0o\0\0\0\0&\0\n\0\0\0S\0I\0Z\0E\0\0\0\0\0\0d\0b\0o\0\0\0\0&\0\0\0\0L\0O\0A\0I\0K\0H\0\0\0\0\0\0d\0b\0o\0\0\0\0&\0\0\0\0P\0H\0I\0E\0U\0X\0U\0A\0T\0\0\0\0\0\0d\0b\0o\0\0\0\0&\0\n\0\0\0C\0T\0P\0X\0\0\0\0\0\0d\0b\0o\0\0\0\0&\0\0\0\0K\0H\0O\0\0\0\0\0\0d\0b\0o\0\0\0\0&\0\0\0\0C\0H\0I\0N\0H\0A\0N\0H\0\0\0\0\0\0d\0b\0o\0\0\0\0&\0\0\0\0T\0A\0I\0K\0H\0O\0A\0N\0\0\0\0\0\0d\0b\0o\0\0\0\0&\0\n\0\0\0C\0T\0H\0D\0\0\0\0\0\0d\0b\0o\0\0\0\0&\0\0\0\0H\0I\0N\0H\0A\0N\0H\0M\0H\0\0\0\0\0\0d\0b\0o\0\0\0\0&\0\0\0\0P\0H\0I\0E\0U\0N\0H\0A\0P\0\0\0\0\0\0d\0b\0o\0\0\0\0&\0\0\0\0P\0H\0I\0E\0U\0D\0A\0T\0\0\0\0\0\0d\0b\0o\0\0\0\0&\0\0\0\0N\0H\0A\0N\0V\0I\0E\0N\0\0\0\0\0\0d\0b\0o\0\0\0\0&\0\0\0\0N\0H\0A\0N\0H\0I\0E\0U\0\0\0\0\0\0d\0b\0o\0\0\0\0&\0\0\0\0N\0H\0A\0C\0U\0N\0G\0C\0A\0P\0\0\0\0\0\0d\0b\0o\0\0\0\0&\0\0\0\0M\0A\0T\0H\0A\0N\0G\0\0\0\0\0\0d\0b\0o\0\0\0\0&\0\0\0\0K\0H\0A\0C\0H\0H\0A\0N\0G\0\0\0\0\0\0d\0b\0o\0\0\0\0&\0\0\0\0H\0O\0A\0D\0O\0N\0\0\0\0\0\0d\0b\0o\0\0\0\0&\0\Z\0\0\0D\0O\0T\0K\0H\0U\0Y\0E\0N\0M\0A\0I\0\0\0\0\0\0d\0b\0o\0\0\0\0&\0\0\0\0D\0O\0N\0D\0A\0T\0H\0A\0N\0G\0\0\0\0\0\0d\0b\0o\0\0\0\0&\0\n\0\0\0C\0T\0P\0N\0\0\0\0\0\0d\0b\0o\0\0\0\0&\0\n\0\0\0C\0T\0P\0D\0\0\0\0\0\0d\0b\0o\0\0\0\0&\0\0\0\0C\0T\0D\0K\0M\0\0\0\0\0\0d\0b\0o\0\0\0\0&\0\0\0\0C\0T\0D\0D\0H\0\0\0\0\0\0d\0b\0o\0\0\0\0$\0\0\0\0B\0A\0N\0G\0G\0I\0A\0\0\0\0\0\0d\0b\0o\0\0\0\0\0\0Ö…	³»kòEš¸7dð2p\0N\0\0\0{\01\06\03\04\0C\0D\0D\07\0-\00\08\08\08\0-\04\02\0E\03\0-\09\0F\0A\02\0-\0B\06\0D\03\02\05\06\03\0B\09\01\0D\0}\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0bˆR');
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
  `MAQUYEN` int DEFAULT NULL,
  PRIMARY KEY (`TENTK`),
  KEY `FK_TAIKHOAN_QUYEN` (`MAQUYEN`),
  KEY `FK_TAIKHOAN_KHACHHANG` (`MAKH`),
  CONSTRAINT `FK_TAIKHOAN_KHACHHANG` FOREIGN KEY (`MAKH`) REFERENCES `khachhang` (`MAKH`) ON UPDATE CASCADE,
  CONSTRAINT `FK_TAIKHOAN_QUYEN` FOREIGN KEY (`MAQUYEN`) REFERENCES `quyen` (`MAQUYEN`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taikhoan`
--

LOCK TABLES `taikhoan` WRITE;
/*!40000 ALTER TABLE `taikhoan` DISABLE KEYS */;
INSERT INTO `taikhoan` VALUES ('TRANTHID','12345673','KH4',NULL,NULL),('TRANTHIE','12345674','KH5',NULL,NULL),('TRANVANA','12345670','KH1',NULL,NULL),('TRANVANB','12345671','KH2',NULL,NULL),('TRANVANC','12345672','KH3',NULL,NULL);
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

-- Dump completed on 2022-12-21  9:39:18
