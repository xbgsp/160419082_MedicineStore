-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2022 at 04:17 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `medicinestore`
--

-- --------------------------------------------------------

--
-- Table structure for table `buyers`
--

CREATE TABLE `buyers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `buyers`
--

INSERT INTO `buyers` (`id`, `name`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Ari', 'Surabaya', '2022-04-11 08:19:24', '2022-04-11 08:19:24'),
(2, 'Bryant', 'Sidoarjo', '2022-04-11 08:19:36', '2022-04-11 08:19:36'),
(3, 'Wijaya', 'Porong', '2022-04-11 08:19:48', '2022-04-11 08:19:48'),
(4, 'Bagus', 'Tuwowo', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'ANALGESIK NON NARKOTIK', '1.2. ANALGESIK NON NARKOTIK', NULL, NULL),
(2, 'ANTIPIRAI', '1.3. ANTIPIRAI', NULL, NULL),
(3, 'ANESTETIK LOKAL', '2.1 ANESTETIK LOKAL', NULL, NULL),
(4, 'ANTIMIGREN', '7.1 ANTIMIGREN', NULL, NULL),
(5, 'ANTIVERTIGO', '7.2 ANTIVERTIGO', NULL, NULL),
(6, 'IMUNOSUPRESAN', '8.2 IMUNOSUPRESAN', NULL, NULL),
(7, 'SITOTOKSIK', '8.3 SITOTOKSIK', NULL, NULL),
(8, 'DIURETIK', '15.1 DIURETIK', NULL, NULL),
(9, 'OBAT untuk HIPERTROFI PROSTAT', '15.2 OBAT untuk HIPERTROFI PROSTAT', NULL, NULL),
(10, 'HORMON ANTIDIURETIK', '16.1 HORMON ANTIDIURETIK', NULL, NULL),
(11, 'ANTIDIABETES', '16.2 ANTIDIABETES', NULL, NULL),
(12, 'TROMBOLITIK', '17.5 TROMBOLITIK', NULL, NULL),
(13, 'ANALGESIK NON NARKOTIK', '1.2. ANALGESIK NON NARKOTIK', NULL, NULL),
(14, 'ANTIPIRAI', '1.3. ANTIPIRAI', NULL, NULL),
(15, 'ANESTETIK LOKAL', '2.1 ANESTETIK LOKAL', NULL, NULL),
(16, 'ANTIMIGREN', '7.1 ANTIMIGREN', NULL, NULL),
(17, 'ANTIVERTIGO', '7.2 ANTIVERTIGO', NULL, NULL),
(18, 'IMUNOSUPRESAN', '8.2 IMUNOSUPRESAN', NULL, NULL),
(19, 'SITOTOKSIK', '8.3 SITOTOKSIK', NULL, NULL),
(20, 'DIURETIK', '15.1 DIURETIK', NULL, NULL),
(21, 'OBAT untuk HIPERTROFI PROSTAT', '15.2 OBAT untuk HIPERTROFI PROSTAT', NULL, NULL),
(22, 'HORMON ANTIDIURETIK', '16.1 HORMON ANTIDIURETIK', NULL, NULL),
(23, 'ANTIDIABETES', '16.2 ANTIDIABETES', NULL, NULL),
(24, 'TROMBOLITIK', '17.5 TROMBOLITIK', NULL, NULL),
(25, 'ANALGESIK NON NARKOTIK', '1.2. ANALGESIK NON NARKOTIK', NULL, NULL),
(26, 'ANTIPIRAI', '1.3. ANTIPIRAI', NULL, NULL),
(27, 'ANESTETIK LOKAL', '2.1 ANESTETIK LOKAL', NULL, NULL),
(28, 'ANTIMIGREN', '7.1 ANTIMIGREN', NULL, NULL),
(29, 'ANTIVERTIGO', '7.2 ANTIVERTIGO', NULL, NULL),
(30, 'IMUNOSUPRESAN', '8.2 IMUNOSUPRESAN', NULL, NULL),
(31, 'SITOTOKSIK', '8.3 SITOTOKSIK', NULL, NULL),
(32, 'DIURETIK', '15.1 DIURETIK', NULL, NULL),
(33, 'OBAT untuk HIPERTROFI PROSTAT', '15.2 OBAT untuk HIPERTROFI PROSTAT', NULL, NULL),
(34, 'HORMON ANTIDIURETIK', '16.1 HORMON ANTIDIURETIK', NULL, NULL),
(35, 'ANTIDIABETES', '16.2 ANTIDIABETES', NULL, NULL),
(36, 'TROMBOLITIK', '17.5 TROMBOLITIK', NULL, NULL),
(37, 'ANALGESIK NON NARKOTIK', '1.2. ANALGESIK NON NARKOTIK', NULL, NULL),
(38, 'ANTIPIRAI', '1.3. ANTIPIRAI', NULL, NULL),
(39, 'ANESTETIK LOKAL', '2.1 ANESTETIK LOKAL', NULL, NULL),
(40, 'ANTIMIGREN', '7.1 ANTIMIGREN', NULL, NULL),
(41, 'ANTIVERTIGO', '7.2 ANTIVERTIGO', NULL, NULL),
(42, 'IMUNOSUPRESAN', '8.2 IMUNOSUPRESAN', NULL, NULL),
(43, 'SITOTOKSIK', '8.3 SITOTOKSIK', NULL, NULL),
(44, 'DIURETIK', '15.1 DIURETIK', NULL, NULL),
(45, 'OBAT untuk HIPERTROFI PROSTAT', '15.2 OBAT untuk HIPERTROFI PROSTAT', NULL, NULL),
(46, 'HORMON ANTIDIURETIK', '16.1 HORMON ANTIDIURETIK', NULL, NULL),
(47, 'ANTIDIABETES', '16.2 ANTIDIABETES', NULL, NULL),
(48, 'TROMBOLITIK', '17.5 TROMBOLITIK', NULL, NULL),
(49, 'ANALGESIK NON NARKOTIK', '1.2. ANALGESIK NON NARKOTIK', NULL, NULL),
(50, 'ANTIPIRAI', '1.3. ANTIPIRAI', NULL, NULL),
(51, 'ANESTETIK LOKAL', '2.1 ANESTETIK LOKAL', NULL, NULL),
(52, 'ANTIMIGREN', '7.1 ANTIMIGREN', NULL, NULL),
(53, 'ANTIVERTIGO', '7.2 ANTIVERTIGO', NULL, NULL),
(54, 'IMUNOSUPRESAN', '8.2 IMUNOSUPRESAN', NULL, NULL),
(55, 'SITOTOKSIK', '8.3 SITOTOKSIK', NULL, NULL),
(56, 'DIURETIK', '15.1 DIURETIK', NULL, NULL),
(57, 'OBAT untuk HIPERTROFI PROSTAT', '15.2 OBAT untuk HIPERTROFI PROSTAT', NULL, NULL),
(58, 'HORMON ANTIDIURETIK', '16.1 HORMON ANTIDIURETIK', NULL, NULL),
(59, 'ANTIDIABETES', '16.2 ANTIDIABETES', NULL, NULL),
(60, 'TROMBOLITIK', '17.5 TROMBOLITIK', NULL, NULL),
(61, 'Batuk', 'Obat Batuk', '2022-04-21 03:24:32', '2022-04-21 03:24:32'),
(62, 'Pusing', 'Obat Pusing', '2022-04-21 03:25:38', '2022-04-21 03:25:38'),
(63, 'Demam', 'Obat Demam', '2022-04-21 04:18:42', '2022-04-21 04:18:42'),
(64, 'baru', 'baruu', '2022-06-11 19:05:50', '2022-06-11 19:05:50');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medicines`
--

CREATE TABLE `medicines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `generic_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `form` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restriction_formula` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(12,2) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `faskes1` tinyint(1) NOT NULL DEFAULT 0,
  `faskes2` tinyint(1) NOT NULL DEFAULT 0,
  `faskes3` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supplier_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `medicines`
--

INSERT INTO `medicines` (`id`, `generic_name`, `form`, `restriction_formula`, `price`, `description`, `category_id`, `faskes1`, `faskes2`, `faskes3`, `created_at`, `updated_at`, `image`, `supplier_id`) VALUES
(1, 'asam mefenamat', 'kaps 250 mg', '30 kaps/bulan.', 10000.00, 'ini obat asam mefenamat', 1, 1, 1, 1, NULL, '2022-06-11 18:20:41', '1654996841_asam_mefenamat1.jpg', 3),
(2, 'asam mefenamat', 'tab 500 mg', '30 tab/bulan.', 12000.00, '', 1, 1, 1, 1, NULL, '2022-06-11 17:00:13', 'asam_mefenamat2.jpg', 3),
(3, 'ibuprofen', 'tab 200 mg', '30 tab/bulan.', 8000.00, '', 1, 1, 1, 1, NULL, NULL, 'ibuprofen1.jpg', 3),
(4, 'ibuprofen', 'tab 400 mg', '30 tab/bulan.', 9500.00, '', 1, 1, 1, 1, NULL, NULL, 'ibuprofen2.jpg', 2),
(5, 'asam mefenamat', ' susp 100 mg/5 mL', '1 btl/kasus.', 15000.00, '', 1, 1, 1, 1, NULL, NULL, 'asam_mefenamat3.jpg', 2),
(6, 'ketoprofen', ' inj 50 mg/mL', '', 22000.00, 'Untuk nyeri sedang sampai berat pada pasien yang tidak', 1, 1, 1, 1, NULL, NULL, 'ketoprofen1.jpg', 2),
(7, 'ketoprofen', 'sup 100 mg', '2 sup/hari, maks 3 hari.', 25000.00, 'Untuk nyeri sedang sampai berat pada pasien yang tidak', 1, 1, 1, 1, NULL, NULL, 'ketoprofen2.jpg', 6),
(8, 'alopurinol', 'tab 100 mg', '30tab/bulan', 17500.00, 'Tidak diberikan pada saat nyeri akut', 2, 1, 1, 1, NULL, NULL, 'alopurinol1.jpg', 6),
(9, 'alopurinol', 'tab 300 mg', '30tab/bulan', 17500.00, 'Tidak diberikan pada saat nyeri akut', 2, 1, 1, 1, NULL, NULL, 'alopurinol2.jpg', 6),
(10, 'kolkisin', 'tab 500 mcg', '30tab/bulan', 16500.00, 'Tidak diberikan pada saat nyeri akut', 2, 1, 1, 1, NULL, NULL, 'kolkisin.jpg', 3),
(11, 'bupivakain', 'inj 0,5%', '', 12250.00, '', 3, 0, 1, 1, NULL, NULL, 'bupivakain.jpeg', 3),
(12, 'lidokain', 'inj 0,5%', '', 12250.00, '', 3, 1, 1, 1, NULL, NULL, 'lidokain1.jpg', 3),
(13, 'lidokain', 'spray topikal 10%', '', 12250.00, '', 3, 1, 1, 1, NULL, NULL, 'lidokain2.jpg', 2),
(14, 'propranolol', 'tab 10 mg', '', 25250.00, '', 4, 1, 1, 1, NULL, NULL, 'propranolol.jpg', 2),
(15, 'betahistin', 'tab 6 mg', 'Untuk vertigo perifer:\n                - BPPV: 1 minggu.\n                - non BPPV: 30 \n                tab/bulan', 25250.00, 'Hanya untuk sindrom \n             meniere atau vertigo perifer.  Untuk sindrom meniere atau\n             vertigo non BPPV hanya di \n             Faskes Tk. 2 dan 3', 5, 1, 1, 1, NULL, NULL, 'betahistin1.jpg', 2),
(16, 'betahistin', 'tab 24 mg', '90 tab/bulan.n', 35000.00, 'Hanya untuk sindrom \n             meniere atau vertigo perifer.  Untuk sindrom meniere atau\n             vertigo non BPPV hanya di \n             Faskes Tk. 2 dan 3. Hanya untuk sindrom meniere', 5, 0, 1, 1, NULL, NULL, 'betahistin2.jpeg', 2),
(86, 'Obat Test', 'Form Test', 'Formula Test', 7000.00, 'Deskripsi', 1, 1, 1, 1, '2022-06-09 04:30:42', '2022-06-11 17:03:32', '1654992212_86ffb87572d657f335cd7cd828c70de3.jpg', 6),
(94, 'oobat test', 'form test', 'restric test', 1200.00, 'ini test deskripsi', 21, 1, 1, 1, '2022-06-11 18:33:35', '2022-06-11 18:33:35', '1654997615_endgame_4.jpg', 6),
(96, 'nama obat test', 'form juga test', 'restriction formula test', 13000.00, 'ini deskripsi test', 18, 1, 1, 1, '2022-06-11 18:43:19', '2022-06-11 19:00:29', '1654999229_laptop.jpg', 6);

-- --------------------------------------------------------

--
-- Table structure for table `medicine_transaction`
--

CREATE TABLE `medicine_transaction` (
  `quantity` int(11) NOT NULL,
  `price` double DEFAULT NULL,
  `medicine_id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` bigint(20) UNSIGNED NOT NULL,
  `subtotal` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `medicine_transaction`
--

INSERT INTO `medicine_transaction` (`quantity`, `price`, `medicine_id`, `transaction_id`, `subtotal`) VALUES
(1, 1000, 3, 1, NULL),
(5, 12000, 16, 1, NULL),
(4, 32000, 4, 2, NULL),
(7, 28000, 10, 4, NULL),
(2, 8500, 13, 2, NULL),
(4, 10000, 6, 3, NULL),
(2, 2000, 16, 3, NULL),
(4, 6000, 14, 4, NULL),
(12, 30000, 8, 5, NULL),
(3, 9000, 2, 5, NULL),
(5, 6000, 8, 1, NULL),
(1, NULL, 1, 13, 10000),
(2, NULL, 2, 13, 12000),
(1, NULL, 6, 14, 22000),
(1, NULL, 10, 14, 16500),
(1, NULL, 11, 15, 12250),
(2, NULL, 1, 16, 10000),
(1, NULL, 3, 16, 8000),
(1, NULL, 7, 17, 25000),
(1, NULL, 13, 18, 12250),
(1, NULL, 16, 18, 35000),
(1, NULL, 16, 19, 35000),
(2, NULL, 1, 20, 10000),
(1, NULL, 2, 20, 12000),
(1, NULL, 3, 20, 8000),
(2, NULL, 1, 21, 10000),
(1, NULL, 2, 21, 12000),
(1, NULL, 1, 23, 10000),
(1, NULL, 1, 24, 10000),
(1, NULL, 7, 25, 25000),
(1, NULL, 1, 26, 10000),
(1, NULL, 10, 27, 16500),
(1, NULL, 14, 27, 25250),
(1, NULL, 2, 28, 12000),
(2, NULL, 3, 28, 8000),
(2, NULL, 1, 29, 10000),
(2, NULL, 3, 29, 8000),
(1, NULL, 96, 30, 13000);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(21, '2014_10_12_000000_create_users_table', 1),
(22, '2019_08_19_000000_create_failed_jobs_table', 1),
(23, '2022_02_27_144308_create_categories_table', 1),
(24, '2022_02_27_145853_create_medicines_table', 1),
(25, '2022_02_27_145947_update_foreignkey_medicines', 1),
(26, '2022_03_05_142139_alter_medicines_table', 2),
(27, '2022_04_11_070539_create_buyers_table', 3),
(28, '2022_04_11_070900_create_transactions_table', 3),
(29, '2022_04_11_071546_addforeign_transactions_table', 4),
(30, '2022_04_11_074318_create_medicinetransaction_table', 5),
(31, '2022_04_11_074554_addforeign_medicinetransaction_table', 6),
(32, '2022_04_21_093337_create_suppliers_table', 7),
(33, '2022_04_25_001552_addforeign_medicines_table', 8),
(34, '2022_04_25_082434_altersoftdelete_suppliers_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `logo` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `address`, `created_at`, `updated_at`, `deleted_at`, `logo`) VALUES
(2, 'Naufal', 'NTT', '2022-04-21 03:02:10', '2022-06-11 19:08:16', NULL, '1654996981_endgame_3.jpg'),
(3, 'Bagus', 'Jakarta', '2022-04-21 03:02:37', '2022-06-11 19:08:47', NULL, '1654996966_captainmarvel.jpg'),
(6, 'Hendro', 'Tenggilis', '2022-05-19 02:34:27', '2022-06-11 18:22:34', NULL, '1654996954_1654772063_captainamerica.jpg'),
(8, 'Adi', 'Banjar', '2022-06-09 03:28:31', '2022-06-11 17:03:19', NULL, '1654992199_captainamerica_2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaction_date` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `buyer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `total` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `transaction_date`, `created_at`, `updated_at`, `buyer_id`, `user_id`, `total`) VALUES
(1, '2022-04-11 10:21:38', '2022-04-11 08:23:15', '2022-04-11 08:23:15', 1, 1, NULL),
(2, '2022-04-11 10:23:26', '2022-04-11 08:23:49', '2022-04-11 08:23:49', 2, 1, NULL),
(3, '2022-04-11 10:23:55', '2022-04-11 08:24:14', '2022-04-11 08:24:14', 3, 1, NULL),
(4, '2022-04-11 10:24:15', '2022-04-11 08:24:30', '2022-04-11 08:24:30', 1, 2, NULL),
(5, '2022-04-11 10:24:34', '2022-04-11 08:24:48', '2022-04-11 08:24:48', 2, 1, NULL),
(6, '2022-02-11 00:00:00', '2022-04-24 20:57:05', '2022-04-24 20:57:05', 4, 2, NULL),
(7, '2022-02-22 00:00:00', '2022-04-24 21:48:03', '2022-04-24 21:48:03', 3, 2, NULL),
(8, '2022-04-13 00:00:00', '2022-04-24 21:48:27', '2022-04-24 21:48:27', 2, 1, NULL),
(9, '2022-04-08 00:00:00', '2022-04-24 21:48:53', '2022-04-24 21:48:53', 1, 1, NULL),
(13, '2022-06-03 00:53:35', '2022-06-02 17:53:35', '2022-06-02 17:53:35', NULL, 8, 34000),
(14, '2022-06-03 00:54:20', '2022-06-02 17:54:20', '2022-06-02 17:54:20', NULL, 8, 38500),
(15, '2022-06-03 00:55:58', '2022-06-02 17:55:58', '2022-06-02 17:55:58', NULL, 8, 12250),
(16, '2022-06-03 01:02:42', '2022-06-02 18:02:42', '2022-06-02 18:02:42', NULL, 8, 28000),
(17, '2022-06-03 01:10:29', '2022-06-02 18:10:29', '2022-06-02 18:10:29', NULL, 8, 25000),
(18, '2022-06-03 01:23:04', '2022-06-02 18:23:04', '2022-06-02 18:23:04', NULL, 8, 47250),
(19, '2022-06-03 01:38:57', '2022-06-02 18:38:57', '2022-06-02 18:38:57', NULL, 9, 35000),
(20, '2022-06-03 06:10:28', '2022-06-02 23:10:28', '2022-06-02 23:10:28', NULL, 9, 40000),
(21, '2022-06-03 06:35:18', '2022-06-02 23:35:18', '2022-06-02 23:35:18', NULL, 9, 32000),
(22, '2022-06-03 06:56:16', '2022-06-02 23:56:16', '2022-06-02 23:56:16', NULL, 9, NULL),
(23, '2022-06-03 06:56:29', '2022-06-02 23:56:29', '2022-06-02 23:56:29', NULL, 9, 10000),
(24, '2022-06-03 07:06:38', '2022-06-03 00:06:38', '2022-06-03 00:06:38', NULL, 9, 10000),
(25, '2022-06-03 07:07:11', '2022-06-03 00:07:11', '2022-06-03 00:07:11', NULL, 9, 25000),
(26, '2022-06-03 07:56:53', '2022-06-03 00:56:53', '2022-06-03 00:56:53', NULL, 9, 10000),
(27, '2022-06-03 08:19:34', '2022-06-03 01:19:34', '2022-06-03 01:19:34', NULL, 9, 41750),
(28, '2022-06-03 08:29:11', '2022-06-03 01:29:11', '2022-06-03 01:29:11', NULL, 9, 28000),
(29, '2022-06-12 01:56:24', '2022-06-11 18:56:24', '2022-06-11 18:56:24', NULL, 8, 36000),
(30, '2022-06-12 02:00:49', '2022-06-11 19:00:49', '2022-06-11 19:00:49', NULL, 8, 13000);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sebagai` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `sebagai`) VALUES
(1, 'Deni', 'deni@gmail.com', '2022-04-11 08:20:43', 'deni', '1', '2022-04-11 08:20:43', '2022-04-11 08:20:43', 'pegawai'),
(2, 'Wijaya', 'wijaya@gmail.com', '2022-04-11 08:21:23', 'wijaya', '2', '2022-04-11 08:21:23', '2022-04-11 08:21:23', 'pegawai'),
(3, 'Bagus', 'bagusp248@gmail.com', NULL, '$2y$10$scXkyzAyvi308biIrlh00ObI2Piby6p1Z8zq.QgMZlpWopftuErwq', NULL, '2022-05-25 20:45:19', '2022-05-25 20:45:19', 'owner'),
(4, 'Alexander Calvin', 'calvin@gmail.com', NULL, '$2y$10$oIKevx1Zik9Hs17eEtqw.uNfjmXtbXL6fmU3XFrzXTzzbBTh9HQR6', NULL, '2022-05-25 22:03:56', '2022-05-25 22:03:56', 'pegawai'),
(5, 'Admin', 'admin@gmail.com', NULL, '$2y$10$aT6ftTRgbmPdRCq.hGQFVuQ4URMdjZae5eGnGV//2YkepXWWNyURO', NULL, '2022-05-25 22:25:00', '2022-05-25 22:25:00', 'owner'),
(6, 'Pegawai 1', 'pegawai1@gmail.com', NULL, '$2y$10$gGt8D4KtT4RhXVXgOBaoYe5XUdFqf7lpq03afcLUy5b4P.8lFd.bK', NULL, '2022-05-25 22:25:29', '2022-05-25 22:25:29', 'pegawai'),
(7, 'Pegawai 2', 'pegawai2@gmail.com', NULL, '$2y$10$s3OajBPH9Z7sp1CJn8iehONU/QQO1funQ5/OQCJLBWQ/uW1UxCkCK', NULL, '2022-05-25 22:25:59', '2022-05-25 22:25:59', 'pegawai'),
(8, 'Member 1', 'member1@gmail.com', NULL, '$2y$10$oapB0AZW3p0Tr/CyuntZhe7EiUzlLfftg4LZaKnCGfM/k.OKt5hcu', NULL, '2022-06-02 03:10:08', '2022-06-02 03:10:08', 'member'),
(9, 'Member 2', 'member2@gmail.com', NULL, '$2y$10$2A0LR492TCh6STkop4ewkOWnjBhqBlFRWqmlblz.6D0vcSUZO/CD.', NULL, '2022-06-02 18:38:42', '2022-06-02 18:38:42', 'member'),
(10, 'bagas', 'bagas@gmail.com', NULL, '$2y$10$HJVu.YJLHumP/IL7bSMctOhsxzc6IfdkLmrHpu4YYnpdQpMgAg8zq', NULL, '2022-06-11 00:49:21', '2022-06-11 00:49:21', 'owner'),
(11, 'nanana', 'nanana@gmail.com', NULL, '$2y$10$feXpKLePQlGEaPg/1eJ32eCMmkaYAb6oUbScXHS0FO6NgMuu38NdW', NULL, '2022-06-11 01:00:52', '2022-06-11 01:00:52', 'pegawai'),
(12, 'linda', 'linda@gmail.com', NULL, '$2y$10$ghLihFsanEmIYQc6/6/30OqzP5xIJ1vVCybLYhrMVCFN6PB2EOLoW', NULL, '2022-06-11 01:18:08', '2022-06-11 01:18:08', 'pegawai');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buyers`
--
ALTER TABLE `buyers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicines`
--
ALTER TABLE `medicines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `medicines_category_id_foreign` (`category_id`),
  ADD KEY `medicines_supplier_id_foreign` (`supplier_id`);

--
-- Indexes for table `medicine_transaction`
--
ALTER TABLE `medicine_transaction`
  ADD KEY `medicine_transaction_medicine_id_foreign` (`medicine_id`),
  ADD KEY `medicine_transaction_transaction_id_foreign` (`transaction_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_buyer_id_foreign` (`buyer_id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buyers`
--
ALTER TABLE `buyers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medicines`
--
ALTER TABLE `medicines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `medicines`
--
ALTER TABLE `medicines`
  ADD CONSTRAINT `medicines_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `medicines_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`);

--
-- Constraints for table `medicine_transaction`
--
ALTER TABLE `medicine_transaction`
  ADD CONSTRAINT `medicine_transaction_medicine_id_foreign` FOREIGN KEY (`medicine_id`) REFERENCES `medicines` (`id`),
  ADD CONSTRAINT `medicine_transaction_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_buyer_id_foreign` FOREIGN KEY (`buyer_id`) REFERENCES `buyers` (`id`),
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
