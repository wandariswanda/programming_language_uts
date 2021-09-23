/*
 Navicat Premium Data Transfer

 Source Server         : LOCAL SERVER
 Source Server Type    : MySQL
 Source Server Version : 100411
 Source Host           : localhost:3306
 Source Schema         : learn_pl2_uts

 Target Server Type    : MySQL
 Target Server Version : 100411
 File Encoding         : 65001

 Date: 23/09/2021 10:55:30
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for kelas
-- ----------------------------
DROP TABLE IF EXISTS `kelas`;
CREATE TABLE `kelas`  (
  `id_kelas` int NOT NULL AUTO_INCREMENT,
  `nama_kelas` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kompetensi_keahlian` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_kelas`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kelas
-- ----------------------------
INSERT INTO `kelas` VALUES (2, 'C1', 'Sistem Informasi');
INSERT INTO `kelas` VALUES (3, 'C3', 'Sistem Informasi');

-- ----------------------------
-- Table structure for mahasiswa
-- ----------------------------
DROP TABLE IF EXISTS `mahasiswa`;
CREATE TABLE `mahasiswa`  (
  `npm` int NOT NULL,
  `nama` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mahasiswa
-- ----------------------------
INSERT INTO `mahasiswa` VALUES (12, 'asas');
INSERT INTO `mahasiswa` VALUES (110602, 'Saepudin');
INSERT INTO `mahasiswa` VALUES (110608, 'Deni Pangale');

-- ----------------------------
-- Table structure for pbo_pegawai
-- ----------------------------
DROP TABLE IF EXISTS `pbo_pegawai`;
CREATE TABLE `pbo_pegawai`  (
  `nip` int NOT NULL,
  `nama` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `jns_kel` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `mulai_kerja` date NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pbo_pegawai
-- ----------------------------
INSERT INTO `pbo_pegawai` VALUES (132442, 'Dani Anggoro', 'L', '2021-09-08', 'M', '2021-09-15');
INSERT INTO `pbo_pegawai` VALUES (1419707070, 'Yadi Ramadhan Tenggara', 'L', '2012-01-03', 'B', '2021-09-10');

-- ----------------------------
-- Table structure for pembayaran
-- ----------------------------
DROP TABLE IF EXISTS `pembayaran`;
CREATE TABLE `pembayaran`  (
  `id_pembayaran` int NOT NULL AUTO_INCREMENT,
  `id_petugas` int NULL DEFAULT NULL,
  `nisn` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tgl_bayar` int NULL DEFAULT NULL,
  `bulan_bayar` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tahun_bayar` int NULL DEFAULT NULL,
  `id_spp` int NULL DEFAULT NULL,
  `jumlah_bayar` int NULL DEFAULT NULL,
  PRIMARY KEY (`id_pembayaran`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pembayaran
-- ----------------------------
INSERT INTO `pembayaran` VALUES (3, 3, '14197093', 24, '09', 21, 2, 10000);

-- ----------------------------
-- Table structure for petugas
-- ----------------------------
DROP TABLE IF EXISTS `petugas`;
CREATE TABLE `petugas`  (
  `id_petugas` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `nama_petugas` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `level` enum('Administrator','Petugas') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_petugas`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of petugas
-- ----------------------------
INSERT INTO `petugas` VALUES (3, 'wawan19', 'YXlhbQ==', 'Wanda Riswanda', 'Administrator');

-- ----------------------------
-- Table structure for siswa
-- ----------------------------
DROP TABLE IF EXISTS `siswa`;
CREATE TABLE `siswa`  (
  `nisn` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nis` int NULL DEFAULT NULL,
  `nama` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `id_kelas` int NULL DEFAULT NULL,
  `alamat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `no_telp` varchar(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `id_spp` int NULL DEFAULT NULL,
  PRIMARY KEY (`nisn`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of siswa
-- ----------------------------
INSERT INTO `siswa` VALUES ('14197093', 14197039, 'Wanda Riswanda', 2, 'Cisarua', '08951650259', 2);

-- ----------------------------
-- Table structure for spp
-- ----------------------------
DROP TABLE IF EXISTS `spp`;
CREATE TABLE `spp`  (
  `id_spp` int NOT NULL AUTO_INCREMENT,
  `tahun` int NULL DEFAULT NULL,
  `nominal` int NULL DEFAULT NULL,
  PRIMARY KEY (`id_spp`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spp
-- ----------------------------
INSERT INTO `spp` VALUES (2, 2021, 100000);
INSERT INTO `spp` VALUES (3, 2020, 150000);

SET FOREIGN_KEY_CHECKS = 1;
