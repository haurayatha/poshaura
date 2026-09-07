-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.4.3 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.20.0.7320
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for pos_haura
CREATE DATABASE IF NOT EXISTS `pos_haura` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `pos_haura`;

-- Dumping structure for table pos_haura.cache
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table pos_haura.cache: ~0 rows (approximately)

-- Dumping structure for table pos_haura.cache_locks
CREATE TABLE IF NOT EXISTS `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table pos_haura.cache_locks: ~0 rows (approximately)

-- Dumping structure for table pos_haura.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table pos_haura.failed_jobs: ~0 rows (approximately)

-- Dumping structure for table pos_haura.item_penjualan
CREATE TABLE IF NOT EXISTS `item_penjualan` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `penjualan_id` bigint unsigned NOT NULL,
  `produk_id` bigint unsigned NOT NULL,
  `kuantitas` int NOT NULL,
  `harga_satuan` int NOT NULL,
  `subtotal` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `item_penjualan_penjualan_id_foreign` (`penjualan_id`),
  KEY `item_penjualan_produk_id_foreign` (`produk_id`),
  CONSTRAINT `item_penjualan_penjualan_id_foreign` FOREIGN KEY (`penjualan_id`) REFERENCES `penjualan` (`id`),
  CONSTRAINT `item_penjualan_produk_id_foreign` FOREIGN KEY (`produk_id`) REFERENCES `produk` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table pos_haura.item_penjualan: ~140 rows (approximately)
INSERT INTO `item_penjualan` (`id`, `penjualan_id`, `produk_id`, `kuantitas`, `harga_satuan`, `subtotal`, `created_at`, `updated_at`) VALUES
	(1, 1, 7, 3, 157587, 472761, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(2, 1, 55, 6, 560921, 3365526, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(3, 2, 32, 4, 243709, 974836, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(4, 3, 75, 8, 525827, 4206616, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(5, 3, 26, 8, 265973, 2127784, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(6, 4, 39, 2, 385847, 771694, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(7, 4, 61, 4, 447469, 1789876, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(8, 4, 31, 8, 285782, 2286256, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(9, 5, 97, 4, 519473, 2077892, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(10, 5, 49, 5, 378935, 1894675, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(11, 6, 28, 5, 541847, 2709235, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(12, 7, 74, 9, 352950, 3176550, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(13, 7, 21, 10, 515504, 5155040, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(14, 7, 52, 7, 442197, 3095379, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(15, 7, 7, 2, 157587, 315174, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(16, 7, 73, 1, 128839, 128839, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(17, 8, 58, 4, 329049, 1316196, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(18, 8, 52, 6, 442197, 2653182, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(19, 8, 82, 1, 262280, 262280, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(20, 9, 95, 10, 396791, 3967910, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(21, 9, 2, 4, 176009, 704036, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(22, 9, 4, 4, 235809, 943236, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(23, 9, 1, 1, 406240, 406240, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(24, 9, 47, 9, 299918, 2699262, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(25, 10, 21, 8, 515504, 4124032, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(26, 11, 98, 9, 598501, 5386509, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(27, 11, 92, 3, 180576, 541728, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(28, 11, 24, 6, 127308, 763848, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(29, 11, 100, 4, 140186, 560744, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(30, 11, 88, 4, 462374, 1849496, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(31, 12, 18, 5, 408884, 2044420, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(32, 12, 53, 9, 231443, 2082987, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(33, 13, 1, 2, 406240, 812480, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(34, 13, 15, 1, 144310, 144310, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(35, 14, 42, 2, 136447, 272894, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(36, 14, 55, 10, 560921, 5609210, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(37, 14, 2, 6, 176009, 1056054, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(38, 15, 75, 7, 525827, 3680789, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(39, 15, 28, 4, 541847, 2167388, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(40, 15, 68, 5, 140926, 704630, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(41, 15, 39, 5, 385847, 1929235, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(42, 16, 32, 5, 243709, 1218545, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(43, 17, 1, 3, 406240, 1218720, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(44, 17, 29, 5, 401961, 2009805, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(45, 18, 74, 1, 352950, 352950, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(46, 18, 61, 6, 447469, 2684814, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(47, 19, 71, 9, 388264, 3494376, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(48, 19, 70, 4, 485465, 1941860, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(49, 20, 2, 3, 176009, 528027, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(50, 20, 16, 5, 97382, 486910, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(51, 20, 3, 7, 187346, 1311422, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(52, 20, 30, 10, 423122, 4231220, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(53, 21, 99, 7, 126809, 887663, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(54, 21, 17, 1, 384341, 384341, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(55, 21, 91, 1, 81098, 81098, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(56, 21, 79, 2, 472260, 944520, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(57, 21, 38, 2, 413827, 827654, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(58, 22, 58, 4, 329049, 1316196, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(59, 22, 72, 5, 299749, 1498745, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(60, 22, 98, 8, 598501, 4788008, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(61, 22, 97, 9, 519473, 4675257, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(62, 23, 29, 3, 401961, 1205883, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(63, 23, 43, 10, 320605, 3206050, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(64, 23, 48, 4, 238731, 954924, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(65, 24, 72, 8, 299749, 2397992, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(66, 25, 22, 3, 544177, 1632531, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(67, 25, 94, 5, 375699, 1878495, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(68, 25, 33, 1, 274708, 274708, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(69, 25, 68, 7, 140926, 986482, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(70, 25, 28, 6, 541847, 3251082, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(71, 26, 5, 1, 157466, 157466, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(72, 26, 33, 1, 274708, 274708, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(73, 26, 2, 7, 176009, 1232063, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(74, 26, 96, 3, 380798, 1142394, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(75, 26, 27, 2, 235624, 471248, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(76, 27, 38, 5, 413827, 2069135, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(77, 27, 46, 8, 298409, 2387272, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(78, 27, 33, 4, 274708, 1098832, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(79, 27, 6, 6, 313972, 1883832, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(80, 28, 7, 10, 157587, 1575870, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(81, 28, 47, 5, 299918, 1499590, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(82, 28, 94, 1, 375699, 375699, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(83, 29, 46, 2, 298409, 596818, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(84, 30, 67, 2, 308617, 617234, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(85, 31, 51, 8, 518514, 4148112, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(86, 31, 29, 1, 401961, 401961, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(87, 31, 43, 8, 320605, 2564840, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(88, 32, 45, 2, 440468, 880936, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(89, 32, 19, 3, 488080, 1464240, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(90, 32, 55, 2, 560921, 1121842, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(91, 33, 57, 4, 155872, 623488, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(92, 33, 77, 10, 262731, 2627310, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(93, 33, 30, 1, 423122, 423122, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(94, 34, 25, 6, 396673, 2380038, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(95, 35, 80, 1, 516449, 516449, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(96, 35, 40, 2, 276591, 553182, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(97, 35, 54, 9, 164320, 1478880, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(98, 35, 64, 10, 248323, 2483230, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(99, 36, 46, 6, 298409, 1790454, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(100, 36, 1, 7, 406240, 2843680, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(101, 36, 75, 8, 525827, 4206616, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(102, 36, 35, 1, 433480, 433480, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(103, 36, 97, 6, 519473, 3116838, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(104, 37, 78, 5, 302045, 1510225, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(105, 37, 41, 3, 235295, 705885, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(106, 37, 85, 7, 44356, 310492, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(107, 37, 52, 5, 442197, 2210985, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(108, 38, 46, 8, 298409, 2387272, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(109, 38, 66, 7, 577376, 4041632, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(110, 39, 96, 2, 380798, 761596, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(111, 39, 58, 7, 329049, 2303343, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(112, 39, 23, 7, 480161, 3361127, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(113, 40, 44, 2, 264062, 528124, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(114, 40, 89, 2, 245568, 491136, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(115, 41, 34, 5, 99832, 499160, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(116, 42, 15, 3, 144310, 432930, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(117, 43, 9, 6, 423761, 2542566, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(118, 43, 99, 6, 126809, 760854, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(119, 43, 61, 3, 447469, 1342407, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(120, 44, 7, 8, 157587, 1260696, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(121, 45, 27, 3, 235624, 706872, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(122, 45, 57, 7, 155872, 1091104, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(123, 46, 93, 8, 343372, 2746976, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(124, 46, 15, 9, 144310, 1298790, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(125, 46, 50, 1, 561083, 561083, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(126, 46, 61, 6, 447469, 2684814, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(127, 46, 17, 6, 384341, 2306046, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(128, 47, 33, 4, 274708, 1098832, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(129, 47, 36, 1, 360574, 360574, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(130, 47, 10, 2, 513828, 1027656, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(131, 47, 20, 9, 432639, 3893751, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(132, 47, 76, 9, 373649, 3362841, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(133, 48, 91, 2, 81098, 162196, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(134, 48, 47, 3, 299918, 899754, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(135, 48, 45, 4, 440468, 1761872, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(136, 49, 47, 8, 299918, 2399344, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(137, 49, 78, 5, 302045, 1510225, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(138, 50, 65, 1, 490414, 490414, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(139, 1, 51, 12, 518514, 6222168, '2026-09-06 22:20:49', '2026-09-06 22:21:13'),
	(140, 1, 94, 1, 375699, 375699, '2026-09-06 22:21:16', '2026-09-06 22:21:16');

-- Dumping structure for table pos_haura.job_batches
CREATE TABLE IF NOT EXISTS `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table pos_haura.job_batches: ~0 rows (approximately)

-- Dumping structure for table pos_haura.jobs
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table pos_haura.jobs: ~0 rows (approximately)

-- Dumping structure for table pos_haura.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table pos_haura.migrations: ~7 rows (approximately)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '0001_01_01_000000_create_roles_table', 1),
	(2, '0001_01_01_000000_create_users_table', 1),
	(3, '0001_01_01_000001_create_cache_table', 1),
	(4, '0001_01_01_000002_create_jobs_table', 1),
	(5, '2026_04_20_073533_create_produk_table', 1),
	(6, '2026_04_20_074317_create_penjualan_table', 1),
	(7, '2026_04_21_005126_create_item_penjualan_table', 1);

-- Dumping structure for table pos_haura.password_reset_tokens
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table pos_haura.password_reset_tokens: ~0 rows (approximately)

-- Dumping structure for table pos_haura.penjualan
CREATE TABLE IF NOT EXISTS `penjualan` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `total_pembayaran` int NOT NULL,
  `metode_pembayaran` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('OPEN','COMPLETED') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `penjualan_user_id_foreign` (`user_id`),
  CONSTRAINT `penjualan_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table pos_haura.penjualan: ~50 rows (approximately)
INSERT INTO `penjualan` (`id`, `user_id`, `total_pembayaran`, `metode_pembayaran`, `status`, `created_at`, `updated_at`) VALUES
	(1, 4, 10436154, 'TRANSFER', 'OPEN', '2026-09-06 19:36:12', '2026-09-06 22:21:16'),
	(2, 3, 974836, 'CASH', 'OPEN', '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(3, 5, 6334400, 'CASH', 'OPEN', '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(4, 2, 4847826, 'QRIS', 'COMPLETED', '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(5, 2, 3972567, 'QRIS', 'COMPLETED', '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(6, 3, 2709235, 'CASH', 'COMPLETED', '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(7, 1, 11870982, 'TRANSFER', 'OPEN', '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(8, 3, 4231658, 'TRANSFER', 'OPEN', '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(9, 3, 8720684, 'TRANSFER', 'OPEN', '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(10, 5, 4124032, 'TRANSFER', 'OPEN', '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(11, 5, 9102325, 'CASH', 'OPEN', '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(12, 1, 4127407, 'CASH', 'OPEN', '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(13, 2, 956790, 'TRANSFER', 'OPEN', '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(14, 3, 6938158, 'QRIS', 'OPEN', '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(15, 5, 8482042, 'TRANSFER', 'COMPLETED', '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(16, 5, 1218545, 'CASH', 'OPEN', '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(17, 5, 3228525, 'TRANSFER', 'COMPLETED', '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(18, 4, 3037764, 'CASH', 'COMPLETED', '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(19, 4, 5436236, 'QRIS', 'COMPLETED', '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(20, 5, 6557579, 'CASH', 'OPEN', '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(21, 3, 3125276, 'QRIS', 'OPEN', '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(22, 3, 12278206, 'QRIS', 'COMPLETED', '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(23, 5, 5366857, 'TRANSFER', 'COMPLETED', '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(24, 3, 2397992, 'TRANSFER', 'COMPLETED', '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(25, 5, 8023298, 'QRIS', 'COMPLETED', '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(26, 2, 3277879, 'TRANSFER', 'COMPLETED', '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(27, 4, 7439071, 'QRIS', 'COMPLETED', '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(28, 3, 3451159, 'QRIS', 'OPEN', '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(29, 5, 596818, 'QRIS', 'OPEN', '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(30, 3, 617234, 'QRIS', 'COMPLETED', '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(31, 1, 7114913, 'TRANSFER', 'COMPLETED', '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(32, 5, 3467018, 'CASH', 'COMPLETED', '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(33, 3, 3673920, 'TRANSFER', 'OPEN', '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(34, 1, 2380038, 'CASH', 'OPEN', '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(35, 1, 5031741, 'CASH', 'OPEN', '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(36, 3, 12391068, 'CASH', 'COMPLETED', '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(37, 3, 4737587, 'TRANSFER', 'OPEN', '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(38, 2, 6428904, 'QRIS', 'COMPLETED', '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(39, 3, 6426066, 'CASH', 'COMPLETED', '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(40, 1, 1019260, 'CASH', 'COMPLETED', '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(41, 3, 499160, 'QRIS', 'OPEN', '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(42, 5, 432930, 'TRANSFER', 'OPEN', '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(43, 1, 4645827, 'TRANSFER', 'OPEN', '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(44, 1, 1260696, 'TRANSFER', 'OPEN', '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(45, 5, 1797976, 'TRANSFER', 'OPEN', '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(46, 1, 9597709, 'TRANSFER', 'OPEN', '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(47, 4, 9743654, 'QRIS', 'COMPLETED', '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(48, 5, 2823822, 'QRIS', 'OPEN', '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(49, 1, 3909569, 'QRIS', 'COMPLETED', '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(50, 4, 490414, 'TRANSFER', 'OPEN', '2026-09-06 19:36:12', '2026-09-06 19:36:12');

-- Dumping structure for table pos_haura.produk
CREATE TABLE IF NOT EXISTS `produk` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga_beli` int NOT NULL,
  `harga_jual` int NOT NULL,
  `stok` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `produk_user_id_foreign` (`user_id`),
  KEY `produk_nama_index` (`nama`),
  CONSTRAINT `produk_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table pos_haura.produk: ~100 rows (approximately)
INSERT INTO `produk` (`id`, `user_id`, `foto`, `nama`, `harga_beli`, `harga_jual`, `stok`, `created_at`, `updated_at`) VALUES
	(1, 4, 'produk/d7afad35-48a7-37ff-b03c-70953b4dc56c.jpg', 'suscipit harum eos', 316173, 406240, 87, '2026-09-06 19:36:11', '2026-09-06 19:36:11'),
	(2, 4, 'produk/b97f0719-f669-3671-99e4-0f1adad3b580.jpg', 'doloribus ratione eum', 167525, 176009, 261, '2026-09-06 19:36:11', '2026-09-06 19:36:11'),
	(3, 4, 'produk/f91572a5-c022-391c-9a1e-8a85491f6c68.jpg', 'eveniet aut repellendus', 120876, 187346, 192, '2026-09-06 19:36:11', '2026-09-06 19:36:11'),
	(4, 4, 'produk/46d5f0f2-3cb8-32c3-9d3a-336d32bd72a0.jpg', 'eligendi a et', 222031, 235809, 230, '2026-09-06 19:36:11', '2026-09-06 19:36:11'),
	(5, 4, 'produk/ece278e9-06e3-36bc-8307-e387fb9c6bd2.jpg', 'aut aperiam nam', 104108, 157466, 103, '2026-09-06 19:36:11', '2026-09-06 19:36:11'),
	(6, 4, 'produk/2bbfdf25-9ae4-3a26-8310-6085ec45b809.jpg', 'accusamus sunt omnis', 299290, 313972, 108, '2026-09-06 19:36:11', '2026-09-06 19:36:11'),
	(7, 4, 'produk/ffee7ff2-1a33-3126-a44d-d55b541dd00f.jpg', 'a qui explicabo', 89246, 157587, 14, '2026-09-06 19:36:11', '2026-09-06 19:36:11'),
	(8, 4, 'produk/0d451e22-7935-3dc9-83da-b65c9e29939f.jpg', 'eum rerum labore', 102651, 165965, 289, '2026-09-06 19:36:11', '2026-09-06 19:36:11'),
	(9, 4, 'produk/061ca6b3-d1d7-3a29-bbbe-6ee34754e29a.jpg', 'sunt quia eveniet', 392627, 423761, 111, '2026-09-06 19:36:11', '2026-09-06 19:36:11'),
	(10, 4, 'produk/2a615a59-e935-3f70-94a3-ccfeb7a38641.jpg', 'molestiae autem corporis', 438971, 513828, 429, '2026-09-06 19:36:11', '2026-09-06 19:36:11'),
	(11, 4, 'produk/38a30f59-4043-3edd-9e6b-06353669e1e2.jpg', 'cum delectus cupiditate', 415450, 422680, 205, '2026-09-06 19:36:11', '2026-09-06 19:36:11'),
	(12, 4, 'produk/8a1f2547-d557-3450-9f26-6dc6ac023a9f.jpg', 'recusandae nobis ea', 14002, 57297, 158, '2026-09-06 19:36:11', '2026-09-06 19:36:11'),
	(13, 4, 'produk/0def811a-1f31-3bdb-99ee-68c10c3d43f3.jpg', 'natus quo beatae', 312027, 349859, 209, '2026-09-06 19:36:11', '2026-09-06 19:36:11'),
	(14, 4, 'produk/aa186f6f-136b-3c16-9389-9b145ef4e310.jpg', 'beatae et omnis', 422399, 511573, 206, '2026-09-06 19:36:11', '2026-09-06 19:36:11'),
	(15, 4, 'produk/583ff444-3279-3729-a1a2-186384d61849.jpg', 'tempore voluptatem culpa', 129630, 144310, 212, '2026-09-06 19:36:11', '2026-09-06 19:36:11'),
	(16, 4, 'produk/f8e4a49c-f7c6-34c0-84b1-dbabfb3b0d79.jpg', 'soluta quia vel', 62398, 97382, 64, '2026-09-06 19:36:11', '2026-09-06 19:36:11'),
	(17, 4, 'produk/4c17ceb9-4198-3f21-af18-ea7e311010f2.jpg', 'aliquam similique repellat', 375384, 384341, 8, '2026-09-06 19:36:11', '2026-09-06 19:36:11'),
	(18, 4, 'produk/2898eb43-af4d-3615-9d82-1f0e15d7e9c2.jpg', 'laborum et repudiandae', 372131, 408884, 325, '2026-09-06 19:36:11', '2026-09-06 19:36:11'),
	(19, 4, 'produk/f5ac26b2-969d-3175-aa55-c336aaf84b50.jpg', 'saepe cum sapiente', 443572, 488080, 185, '2026-09-06 19:36:11', '2026-09-06 19:36:11'),
	(20, 4, 'produk/cdf365c4-6465-39c1-a07d-5fcb5ea60064.jpg', 'aut molestiae impedit', 364110, 432639, 414, '2026-09-06 19:36:11', '2026-09-06 19:36:11'),
	(21, 4, 'produk/73493197-f9a7-3abe-bcea-26539a706e9c.jpg', 'ut non magnam', 470129, 515504, 222, '2026-09-06 19:36:11', '2026-09-06 19:36:11'),
	(22, 4, 'produk/3ba8126f-e2f0-3492-a615-d53860a310ac.jpg', 'fuga quod hic', 459378, 544177, 466, '2026-09-06 19:36:11', '2026-09-06 19:36:11'),
	(23, 4, 'produk/350bfdd6-ee71-36d2-849a-d62176a00aa3.jpg', 'cupiditate et ea', 433340, 480161, 196, '2026-09-06 19:36:11', '2026-09-06 19:36:11'),
	(24, 4, 'produk/9ec0ea90-2e9d-3970-9ac9-ed22f1a119d9.jpg', 'dolores in tenetur', 40421, 127308, 128, '2026-09-06 19:36:11', '2026-09-06 19:36:11'),
	(25, 4, 'produk/63118b22-099f-3ece-9af2-c3631263149d.jpg', 'ut aperiam quo', 339687, 396673, 375, '2026-09-06 19:36:11', '2026-09-06 19:36:11'),
	(26, 4, 'produk/5c2fcc96-4af5-348a-ae6c-89c68e5b40ba.jpg', 'incidunt animi ratione', 260209, 265973, 129, '2026-09-06 19:36:11', '2026-09-06 19:36:11'),
	(27, 4, 'produk/e1b3395a-0734-3f8e-9f65-d719f0809964.jpg', 'voluptatem et similique', 227772, 235624, 148, '2026-09-06 19:36:11', '2026-09-06 19:36:11'),
	(28, 4, 'produk/daf057f1-2e22-3152-a693-06cb09652548.jpg', 'aut aut mollitia', 447554, 541847, 362, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(29, 4, 'produk/453fc4d9-80dd-3f8d-8765-b932ff7508d3.jpg', 'reprehenderit voluptas culpa', 361999, 401961, 171, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(30, 4, 'produk/63d70f4e-15f0-3179-bc84-c6505cd7fd3e.jpg', 'nihil delectus vitae', 337308, 423122, 215, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(31, 4, 'produk/afa8eeb6-138f-3dd9-b394-439724ba13cd.jpg', 'facilis dolorum harum', 270944, 285782, 239, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(32, 4, 'produk/bce84501-8e1a-3c7c-b93c-7589d05dfb65.jpg', 'nihil rerum veniam', 225414, 243709, 129, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(33, 4, 'produk/60a49e0a-07dc-3866-9bdd-6e63a3755673.jpg', 'consectetur numquam non', 180983, 274708, 331, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(34, 4, 'produk/8046feba-3b35-3204-a1d9-bd0e1920ad7e.jpg', 'repudiandae dolore est', 56412, 99832, 500, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(35, 4, 'produk/175903a1-88d6-31c7-8011-1c6be4881049.jpg', 'asperiores blanditiis cum', 404178, 433480, 172, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(36, 4, 'produk/5f65ea46-971b-3e43-8d46-95238f658d3a.jpg', 'reiciendis voluptatibus officiis', 304916, 360574, 450, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(37, 4, 'produk/94770b30-b9e0-36f6-a854-dd54133f23d3.jpg', 'eius omnis eveniet', 226552, 323680, 14, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(38, 4, 'produk/a4c560a6-316c-3cb2-8d31-a97c255c503b.jpg', 'assumenda ut doloribus', 356984, 413827, 499, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(39, 4, 'produk/d581e187-f17e-3331-9d07-baa137d14361.jpg', 'voluptates eum sed', 358134, 385847, 31, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(40, 4, 'produk/d467e37c-d05d-3ff4-bffb-5d5de44e3913.jpg', 'quae aut voluptas', 220950, 276591, 343, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(41, 4, 'produk/11feb751-b88b-320a-b4c2-31aebc80161a.jpg', 'rerum facere atque', 165208, 235295, 38, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(42, 4, 'produk/93368efb-76fb-3893-9dfe-e1fa9ca943bd.jpg', 'id sequi dolorem', 121190, 136447, 479, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(43, 4, 'produk/575d1074-4248-360d-a26b-0c126f61214a.jpg', 'neque doloremque et', 260705, 320605, 65, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(44, 4, 'produk/3d9cc14e-4041-3824-8a0e-674feba126e8.jpg', 'in quasi dolores', 185950, 264062, 221, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(45, 4, 'produk/b307192c-c438-3e6a-a8e9-23d3e4ad79d0.jpg', 'placeat voluptatem in', 361213, 440468, 23, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(46, 4, 'produk/d6f5dbc8-1ed2-3bc0-a43c-4d76e08ad75f.jpg', 'voluptatem animi quae', 285352, 298409, 355, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(47, 4, 'produk/35ae466e-f99b-3bb1-98b6-b8264f7adac1.jpg', 'dolorem et blanditiis', 261843, 299918, 271, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(48, 4, 'produk/aa36e33c-4a48-3777-9fa5-65a9686b376b.jpg', 'nihil eum asperiores', 189960, 238731, 347, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(49, 4, 'produk/e7eea090-631e-36dc-bf52-e5dd74c2b5fd.jpg', 'odio enim natus', 334110, 378935, 452, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(50, 4, 'produk/ff3e6a3d-fa54-3940-b1d5-45c589a80043.jpg', 'exercitationem aut voluptas', 474954, 561083, 128, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(51, 4, 'produk/4412dd89-58ca-33d9-bb5b-7232533681b8.jpg', 'a impedit ipsum', 470489, 518514, 305, '2026-09-06 19:36:12', '2026-09-06 22:21:13'),
	(52, 4, 'produk/f58f7834-e788-32c5-afae-4a2ba5d5cf1c.jpg', 'at aut reiciendis', 383516, 442197, 427, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(53, 4, 'produk/ee533b33-8ad0-381c-8f58-07519120494c.jpg', 'dolorem minima soluta', 216718, 231443, 82, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(54, 4, 'produk/62abaeb9-cd04-3eed-af7f-71ec44f7299c.jpg', 'itaque aperiam assumenda', 109752, 164320, 399, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(55, 4, 'produk/e66e4b88-bc8f-38bd-98fc-66821ef9e977.jpg', 'quaerat est voluptatem', 476600, 560921, 387, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(56, 4, 'produk/b893685d-c22c-3300-9b87-99def4d30c7c.jpg', 'sunt perspiciatis doloribus', 199615, 232933, 44, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(57, 4, 'produk/32ac7d28-253e-323a-afc2-ce60ab1819dc.jpg', 'tempore pariatur nobis', 104550, 155872, 20, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(58, 4, 'produk/28699d01-e831-3964-8d1f-34b6cb28f54e.jpg', 'aliquid hic aliquid', 252892, 329049, 39, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(59, 4, 'produk/3d10bcd3-579c-3863-8170-42102efdbee5.jpg', 'omnis recusandae in', 282720, 382352, 14, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(60, 4, 'produk/da30b5bc-12ff-35ca-8c36-bd654da9dff8.jpg', 'deserunt quibusdam error', 75647, 144367, 279, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(61, 4, 'produk/4c6bf625-604c-3945-9364-5185ae0bac91.jpg', 'aliquid voluptas cumque', 347525, 447469, 462, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(62, 4, 'produk/8500e747-6e3b-3995-8f9e-90c5605b4fc3.jpg', 'reiciendis quod voluptatem', 352243, 436974, 432, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(63, 4, 'produk/507daa52-636c-32fc-b8e6-a3aac3ff7857.jpg', 'expedita ex maiores', 448907, 488806, 422, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(64, 4, 'produk/49402c31-0b2e-3090-baef-1e529128d030.jpg', 'non molestias exercitationem', 234070, 248323, 342, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(65, 4, 'produk/e77d195e-b231-3bf0-93cf-9f68c45d55cd.jpg', 'dolor voluptatum voluptas', 448954, 490414, 129, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(66, 4, 'produk/3e9006dd-698d-3c03-b51e-1e67c7c63309.jpg', 'fugit ipsam rem', 493939, 577376, 189, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(67, 4, 'produk/64279d82-c92d-3adb-a318-08a173ef3d94.jpg', 'sunt qui molestiae', 218305, 308617, 300, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(68, 4, 'produk/7f3138b3-9df1-3ba8-bd14-fab7048329a8.jpg', 'atque perspiciatis quidem', 57383, 140926, 386, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(69, 4, 'produk/7c359707-da5f-34d4-8fa0-72cd4dd62c4d.jpg', 'cupiditate nulla veniam', 298269, 381981, 12, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(70, 4, 'produk/d4c17f2d-ccbc-35da-8438-f34fc8f96046.jpg', 'asperiores natus et', 406903, 485465, 12, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(71, 4, 'produk/8a105738-8f93-3d3b-bba6-229665c2a360.jpg', 'rem alias eos', 316797, 388264, 22, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(72, 4, 'produk/00a1673e-002c-3f0f-9a95-805f14875da6.jpg', 'ipsa nemo iste', 235713, 299749, 110, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(73, 4, 'produk/8162dc33-0abf-3cfe-976e-38701055940e.jpg', 'sed aut ut', 115175, 128839, 356, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(74, 4, 'produk/b07007ae-6a4c-32ef-8369-aba55254f3a8.jpg', 'molestiae vero aliquam', 294822, 352950, 136, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(75, 4, 'produk/d9183186-48cc-3ecf-9832-61d995a76f9a.jpg', 'eligendi iusto est', 479480, 525827, 271, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(76, 4, 'produk/2686c582-8256-338d-a148-4f21798343cb.jpg', 'veritatis ut voluptatem', 367585, 373649, 364, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(77, 4, 'produk/aa48a9dd-8bc8-30b9-b605-0a42db75afb9.jpg', 'distinctio dolorem totam', 227404, 262731, 276, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(78, 4, 'produk/f2e0985c-806b-3b9e-95fd-a98880521d51.jpg', 'aut rerum et', 290992, 302045, 188, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(79, 4, 'produk/c5cc4ea2-86b0-3c2b-91d2-e952d2d00e11.jpg', 'modi labore ut', 391468, 472260, 175, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(80, 4, 'produk/76c8c986-eaca-3b82-8015-9ecd0c710090.jpg', 'debitis blanditiis iste', 494504, 516449, 143, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(81, 4, 'produk/d3754e96-13db-36aa-937c-6f4761587de4.jpg', 'sint odit tempora', 223715, 266334, 405, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(82, 4, 'produk/9db8e27e-7545-3653-8d9a-7b5837d5c95a.jpg', 'molestiae sed et', 256019, 262280, 333, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(83, 4, 'produk/403c82bd-d9db-3412-a0bd-d4e2bd561baa.jpg', 'nemo animi quisquam', 76058, 114757, 112, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(84, 4, 'produk/44cea477-6695-3ec5-b8aa-38242f1c8352.jpg', 'reiciendis dicta blanditiis', 69992, 92646, 228, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(85, 4, 'produk/11a6d3a2-0389-375d-b74d-e501f59758f7.jpg', 'minus quia rerum', 32193, 44356, 21, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(86, 4, 'produk/bf2b693b-63a0-3193-90c7-e32880519766.jpg', 'voluptates eaque doloribus', 97837, 175048, 415, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(87, 4, 'produk/ebb9a036-93de-3e31-a7bd-1e40cba42fce.jpg', 'magnam sit quo', 405293, 461210, 325, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(88, 4, 'produk/d1aa3378-1a34-3720-8369-ab4e0d19b212.jpg', 'enim minima tenetur', 433809, 462374, 419, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(89, 4, 'produk/570ce122-6172-3cf7-88d0-c78578a4d165.jpg', 'quaerat ut et', 211559, 245568, 129, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(90, 4, 'produk/98103834-ada1-33a1-aa43-5cf16bcc0a73.jpg', 'facilis inventore ipsa', 114954, 126414, 448, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(91, 4, 'produk/f359b858-e50f-349d-9887-81ebdfb6b2cb.jpg', 'quis dolor quod', 17619, 81098, 8, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(92, 4, 'produk/09d0c57f-3291-3330-8cb3-e06c15affbd3.jpg', 'libero molestiae nihil', 142862, 180576, 204, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(93, 4, 'produk/de4f7822-c766-3ac5-b74f-cbe1503dd552.jpg', 'enim molestiae optio', 288590, 343372, 455, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(94, 4, 'produk/60f08573-bd8d-3b97-a883-635bfc07512f.jpg', 'accusantium optio itaque', 275768, 375699, 324, '2026-09-06 19:36:12', '2026-09-06 22:21:16'),
	(95, 4, 'produk/7ec27322-c592-3d4c-bff5-b71a4be415e6.jpg', 'mollitia alias ut', 335125, 396791, 319, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(96, 4, 'produk/bb2d64a0-9c21-35f4-a6be-8851eed508b6.jpg', 'sed omnis in', 307854, 380798, 246, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(97, 4, 'produk/499f233d-d253-3033-bda3-971cc8d74916.jpg', 'non aliquam ab', 448243, 519473, 197, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(98, 4, 'produk/c2fab6b8-b121-3a4c-9fb2-d63979173ee5.jpg', 'soluta laboriosam ut', 499954, 598501, 430, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(99, 4, 'produk/7a4bac3e-c0eb-3cd4-b1cc-0f392e74b368.jpg', 'voluptatum explicabo et', 70073, 126809, 425, '2026-09-06 19:36:12', '2026-09-06 19:36:12'),
	(100, 4, 'produk/ade22d9b-5fed-30ac-9259-083ecd0cfdb8.jpg', 'fugiat sit necessitatibus', 60004, 140186, 19, '2026-09-06 19:36:12', '2026-09-06 19:36:12');

-- Dumping structure for table pos_haura.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table pos_haura.roles: ~2 rows (approximately)
INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(1, 'admin', '2026-09-06 19:36:11', '2026-09-06 19:36:11'),
	(2, 'kasir', '2026-09-06 19:36:11', '2026-09-06 19:36:11');

-- Dumping structure for table pos_haura.sessions
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table pos_haura.sessions: ~0 rows (approximately)
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
	('C82z7YvsuHCCJ1QenJXV8cNVZd8OF5Yiwm6I0BHO', 4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoieEtrb29ETGpNcWQza0ZUV2dDbEhIUlVFNDUyeTJKQU1jQXJuVTRIeSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWsiO3M6NToicm91dGUiO3M6MTI6InByb2R1ay5pbmRleCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjQ7fQ==', 1788762687);

-- Dumping structure for table pos_haura.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  FULLTEXT KEY `users_name_email_fulltext` (`name`,`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table pos_haura.users: ~6 rows (approximately)
INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 2, 'Keanu Purdy', 'earnest02@example.net', '2026-09-06 19:36:11', '$2y$12$WouYLinputxZ9/Z1MVUm9.CZFSBe381E7VG/hDTv2567Kf5ePkmV6', 'z1xP8lnsh5', '2026-09-06 19:36:11', '2026-09-06 19:36:11'),
	(2, 2, 'Kamron Howe', 'qstroman@example.net', '2026-09-06 19:36:11', '$2y$12$WouYLinputxZ9/Z1MVUm9.CZFSBe381E7VG/hDTv2567Kf5ePkmV6', 'EAUjNkkNrg', '2026-09-06 19:36:11', '2026-09-06 19:36:11'),
	(3, 2, 'Griffin Rippin', 'clare.mueller@example.org', '2026-09-06 19:36:11', '$2y$12$WouYLinputxZ9/Z1MVUm9.CZFSBe381E7VG/hDTv2567Kf5ePkmV6', 'QN6KH4nwNM', '2026-09-06 19:36:11', '2026-09-06 19:36:11'),
	(4, 1, 'Anabelle Zboncak Sr.', 'lindgren.robyn@example.com', '2026-09-06 19:36:11', '$2y$12$WouYLinputxZ9/Z1MVUm9.CZFSBe381E7VG/hDTv2567Kf5ePkmV6', 't9SS6d0nHk', '2026-09-06 19:36:11', '2026-09-06 19:36:11'),
	(5, 2, 'Miss Bianka Harvey', 'trantow.nolan@example.com', '2026-09-06 19:36:11', '$2y$12$WouYLinputxZ9/Z1MVUm9.CZFSBe381E7VG/hDTv2567Kf5ePkmV6', 'XHg8SIttyZ', '2026-09-06 19:36:11', '2026-09-06 19:36:11'),
	(6, 1, 'Test User', 'test@example.com', '2026-09-06 19:36:12', '$2y$12$WouYLinputxZ9/Z1MVUm9.CZFSBe381E7VG/hDTv2567Kf5ePkmV6', '8atYSJXeWn', '2026-09-06 19:36:12', '2026-09-06 19:36:12');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
