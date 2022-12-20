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
INSERT INTO `banggia` VALUES ('MH1','NV1','2021-02-02',3000),('MH1','NV2','2022-12-01',1000),('MH2','NV2','2021-02-02',2500),('MH3','NV3','2021-02-02',2500),('MH4','NV4','2021-02-02',2000),('MH5','NV1','2021-02-02',2000),('MH6','NV2','2021-02-02',1700),('MH7','NV3','2021-02-02',4300),('MH8','NV4','2021-02-02',3400);
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
  UNIQUE KEY `UK_TENVAI` (`TENVAI`),
  UNIQUE KEY `UK2g39wwetaq5k5k3lornkes1se` (`TENVAI`)
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
  UNIQUE KEY `UK_TENCN` (`TENCN`),
  UNIQUE KEY `UKr8y5hjws3dxox0y6mor3b3x5d` (`TENCN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chinhanh`
--

LOCK TABLES `chinhanh` WRITE;
/*!40000 ALTER TABLE `chinhanh` DISABLE KEYS */;
INSERT INTO `chinhanh` VALUES ('CN1','CHI NHÁNH 1'),('CN2','CHI NHÁNH 2'),('CN3','CHI NHÁNH 3');
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
  CONSTRAINT `FK_CTDKM_DOTKHUYENMAI` FOREIGN KEY (`MADKM`) REFERENCES `dotkhuyenmai` (`MADKM`),
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
  CONSTRAINT `FK_CTPD_MATHANG` FOREIGN KEY (`MAMH`) REFERENCES `mathang` (`MAMH`),
  CONSTRAINT `FK_CTPD_PHIEUDAT` FOREIGN KEY (`MAPD`) REFERENCES `phieudat` (`MAPD`)
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
  CONSTRAINT `FK_CTPN_MATHANG` FOREIGN KEY (`MAMH`) REFERENCES `mathang` (`MAMH`),
  CONSTRAINT `FK_CTPN_PHIEUNHAP` FOREIGN KEY (`MAPN`) REFERENCES `phieunhap` (`MAPN`)
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
  CONSTRAINT `FK_HINHANHMH_MATHANG` FOREIGN KEY (`MAMH`) REFERENCES `mathang` (`MAMH`)
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
INSERT INTO `khachhang` VALUES ('KH1','TRẦN VĂN A','191999250',0,'2000-03-03','TIỀN GIANG','0969687690','AVANTRAN@GMAIL.COM','123456780'),('KH2','TRẦN VĂN B','191999251',0,'2000-03-03','BÌNH DƯƠNG','0969687691','BVANTRAN@GMAIL.COM','123456781'),('KH3','TRẦN VĂN C','191999252',0,'2000-03-03','HỒ CHÍ MINH','0969687692','CVANTRAN@GMAIL.COM','123456782'),('KH4','TRẦN THỊ D','191999253',1,'2000-03-03','BÀ RỊA - VŨNG TÀU','0969687693','DTHITRAN@GMAIL.COM','123456783'),('KH5','TRẦN THỊ E','191999254',1,'2000-03-03','KIÊN GIANG','0969687694','ETHITRAN@GMAIL.COM','123456784');
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
INSERT INTO `kho` VALUES ('NK1','NHÀ KHO 1'),('NK2','NHÀ KHO 2'),('NK3','NHÀ KHO 3');
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
INSERT INTO `loaikh` VALUES (1,'NAM'),(2,'NỮ'),(3,'NAM VÀ NỮ');
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
INSERT INTO `loaimh` VALUES (5,'ÁO POLO'),(7,'ÁO SƠ MI'),(3,'DÂY CHUYỀN'),(4,'KÍNH MÁT'),(1,'NƯỚC HOA'),(6,'QUẦN JEAN'),(2,'TÚI XÁCH');
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
  `TENMH` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `MOTA` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `TRANGTHAI` int NOT NULL DEFAULT '1',
  `CACHLAM` int DEFAULT NULL,
  `MANH` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `MALOAIMH` int DEFAULT NULL,
  `MALOAIKH` int DEFAULT NULL,
  `MACL` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`MAMH`),
  KEY `FK_MATHANG_LOAIKH` (`MALOAIKH`),
  KEY `FK_MATHANG_LOAIMH` (`MALOAIMH`),
  KEY `FK_MATHANG_NHANHIEU` (`MANH`),
  KEY `FK_MATHANG_VAI` (`MACL`),
  CONSTRAINT `FK_MATHANG_LOAIKH` FOREIGN KEY (`MALOAIKH`) REFERENCES `loaikh` (`MALOAIKH`),
  CONSTRAINT `FK_MATHANG_LOAIMH` FOREIGN KEY (`MALOAIMH`) REFERENCES `loaimh` (`MALOAIMH`),
  CONSTRAINT `FK_MATHANG_NHANHIEU` FOREIGN KEY (`MANH`) REFERENCES `nhanhieu` (`MANH`),
  CONSTRAINT `FK_MATHANG_VAI` FOREIGN KEY (`MACL`) REFERENCES `chatlieu` (`MACL`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mathang`
--

LOCK TABLES `mathang` WRITE;
/*!40000 ALTER TABLE `mathang` DISABLE KEYS */;
INSERT INTO `mathang` VALUES ('MH1','TÚI XÁCH MONOGRAM MULTICOLORE - KEEPALL','ABC',1,0,'NH1',2,2,'CL1'),('MH10','Áo Sơ Mi Nam Cộc Tay Versace Jean Couture 72GAL2BC CN002 003','ABC',1,0,'NH4',5,1,'CL2'),('MH11','Áo Polo Valentino Logo Embroiders In Black RV3MH00BEXP','ABC',1,1,'NH5',5,1,'CL1'),('MH2','TÚI XÁCH DAMIER GEANT AVENTURIER','ABC',1,0,'NH1',2,2,'CL2'),('MH3','Áo Sơ Mi Gucci King Snake Logo 433550 Z309E 9000','ABC',1,0,'NH2',1,1,'CL2'),('MH4','QUẦN JEAN MLB UNI MONOGRAM STRAIGHT DENIM PANTS NEW YORK YANKEES BLUE','ABC',1,0,'NH2',6,2,'CL1'),('MH5','Cặp Da TAIGA HANDMADE','ABC',1,1,'NH3',2,2,'CL1'),('MH6','HERMES TÚI XÁCH HM MINI DA CÁ SẤU','ABC',1,1,'NH3',2,2,'CL1'),('MH7','Quần Jeans Baggy','ABC',1,0,'NH4',6,2,'CL3'),('MH8','TÚI CHANEL 2.55','ABC',1,1,'NH5',2,2,'CL3'),('MH9','Prada Logo-Printed Crewneck T-Shirt','ABC',1,0,'NH4',5,3,'CL2');
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
INSERT INTO `nhacungcap` VALUES ('NCC1','DƯƠNG VĂN A','HỒ CHÍ MINH','ADUONGVAN@GMAIL.COM','0969687562'),('NCC2','DƯƠNG VĂN B','HÀ NỘI','BDUONGVAN@GMAIL.COM','0969687563'),('NCC3','DƯƠNG VĂN C','BÌNH DƯƠNG','CDUONGVAN@GMAIL.COM','0969687564'),('NCC4','DƯƠNG THỊ D','ĐỒNG NAI','DTHIDUONG@GMAIL.COM','0969687565'),('NCC5','DƯƠNG THỊ E','TÂY NINH','ETHIDUONG@GMAIL.COM','0969687566');
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
INSERT INTO `nhanvien` VALUES ('NV1','NGUYỄN VĂN A',0,'2001-02-02','HỒ CHÍ MINH','0969665482','ABC@GMAIL.COM'),('NV2','NGUYỄN THỊ B',1,'2000-03-03','HÀ NỘI','0969665492','ABCD@GMAIL.COM'),('NV3','NGUYỄN THỊ C',1,'2000-03-03','HẢI PHÒNG','0969665493','CTHI@GMAIL.COM'),('NV4','NGUYỄN VĂN D',0,'2000-04-04','BÌNH DƯƠNG','0969665494','DVAN@GMAIL.COM'),('NV5','NGUYỄN VĂN E',0,'2000-04-05','TÂY NINH','0969665495','EVAN@GMAIL.COM');
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
INSERT INTO `phieudat` VALUES ('PD1','2022-11-25 17:00:00','PHAN VĂN A','HỒ CHÍ MINH','0969684510','2022-12-01 00:00:00.000000','NV1','KH1'),('PD10','2022-12-08 06:39:53','PHAN VĂN J','THANH HÓA','0969665419','2023-01-01 00:00:00.000000','NV5','KH5'),('PD2','2022-11-25 17:00:00','PHAN VĂN B','BÌNH DƯƠNG','0969684511','2022-12-01 00:00:00.000000','NV2','KH2'),('PD3','2022-11-25 17:00:00','PHAN VĂN C','TÂY NINH','0969684512','2022-12-01 00:00:00.000000','NV3','KH3'),('PD4','2022-12-08 06:33:23','PHAN VĂN D','HÒA BÌNH','0969665413','2023-01-01 00:00:00.000000','NV4','KH4'),('PD5','2022-12-08 06:34:53','PHAN VĂN E','KHÁNH HÒA','0969665414','2023-01-01 00:00:00.000000','NV5','KH5'),('PD6','2022-12-08 06:37:42','PHAN VĂN F','THỪA THIÊN HUẾ','0969665415','2023-01-01 00:00:00.000000','NV1','KH1'),('PD7','2022-12-08 06:38:16','PHAN VĂN G','QUẢNG TRỊ','0969665416','2023-01-01 00:00:00.000000','NV2','KH2'),('PD8','2022-11-30 17:00:00','PHAN THỊ H','QUẢNG NGÃI','0969665417','2023-01-01 00:00:00.000000','NV3','KH3'),('PD9','2022-12-08 06:39:19','PHAN THỊ I','QUẢNG BÌNH','0969665418','2023-01-01 00:00:00.000000','NV4','KH4');
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
  KEY `FK_PHIEUNHAP_DONDATHANG` (`MADDH`),
  KEY `FK_PHIEUNHAP_KHO` (`MAKHO`),
  KEY `FK_PHIEUNHAP_NHANVIEN` (`MANV`),
  CONSTRAINT `FK_PHIEUNHAP_DONDATHANG` FOREIGN KEY (`MADDH`) REFERENCES `dondathang` (`MADDH`),
  CONSTRAINT `FK_PHIEUNHAP_KHO` FOREIGN KEY (`MAKHO`) REFERENCES `kho` (`MAKHO`),
  CONSTRAINT `FK_PHIEUNHAP_NHANVIEN` FOREIGN KEY (`MANV`) REFERENCES `nhanvien` (`MANV`)
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
INSERT INTO `quyen` VALUES (5,'KẾ TOÁN TRƯỞNG'),(2,'KHÁCH HÀNG'),(1,'NHÂN VIÊN BÁN HÀNG'),(4,'NHÂN VIÊN KẾ TOÁN'),(3,'QUẢN LÝ KHO');
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
  CONSTRAINT `FK_TAIKHOAN_KHACHHANG` FOREIGN KEY (`MAKH`) REFERENCES `khachhang` (`MAKH`),
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

-- Dump completed on 2022-12-20 21:57:08
