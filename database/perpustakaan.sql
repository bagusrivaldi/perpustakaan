-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2021 at 11:18 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggotas`
--

CREATE TABLE `anggotas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sex` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telp` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `anggotas`
--

INSERT INTO `anggotas` (`id`, `nama`, `sex`, `telp`, `alamat`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'P', '891281111', 'Bandung', 'admin@gmail.com', NULL, NULL),
(2, 'Pelita', 'P', '2147483647', 'Gunung Batu, Bandung', 'pelita@gmail.com', NULL, NULL),
(3, 'Ayu', 'P', '2147483647', 'Sukawarna, Bandung', 'ayu@gmail.com', NULL, NULL),
(4, 'Fadhli', 'L', '2147483647', 'Cilandak, Jakarta', 'fadhli@gmail.com', NULL, NULL),
(5, 'Nur', 'P', '2147483647', 'Sunter, Jakarta', 'nur@gmail.com', NULL, NULL),
(6, 'Bagus', 'L', '827379111', 'Sarijadi, Bandung', 'bagus@gmail.com', NULL, NULL),
(7, 'Mahendra', 'P', '2147483647', 'Sariwangi, Bandung', 'mahendra@gmail.com', NULL, NULL),
(8, 'Najmin', 'P', '2147483647', 'Sukaraja, Bandung', 'najmina@gmail.com', NULL, NULL),
(9, 'Putri', 'P', '827191811', 'Cimahi', 'putri@gmail.com', NULL, NULL),
(10, 'Ridwan', 'L', '898188191', 'Baros, Cimahi', 'ridwan@gmail.com', NULL, NULL),
(11, 'Feby', 'P', '2147483647', 'Sukajadi, Bandung', 'feby@gmail.com', NULL, NULL),
(12, 'Cindy', 'P', '2147483647', 'Sentral, Cimahi', 'cindy@gmail.com', NULL, NULL),
(13, 'Farid', 'P', '876637911', 'Buah Batu, Bandung', 'farid@gmail.com', NULL, NULL),
(14, 'Bayu', 'L', '887639199', 'Sunter, Jakarta', 'bayu@gmail.com', NULL, NULL),
(15, 'Deni', 'L', '876619111', 'Cikutra, Subang', 'deni@gmail.com', NULL, NULL),
(16, 'Dr. Elva Renner', 'P', '395', '9353 Sanford Common Apt. 852\nLake Roscoestad, PA 29857-1821', 'bonnie.runolfsdottir@hotmail.com', '2021-09-06 02:03:33', '2021-09-06 02:03:33'),
(17, 'Prof. Cristian Spinka MD', 'L', '221208', '21919 Ismael Corner Suite 895\nEast Keagan, MN 80000', 'ykreiger@gmail.com', '2021-09-06 02:05:33', '2021-09-06 02:05:33'),
(18, 'Alexis Kertzmann', 'L', '776', '5671 Adolphus Terrace\nSouth Santos, VA 20791', 'oondricka@hotmail.com', '2021-09-06 02:05:33', '2021-09-06 02:05:33'),
(19, 'Mrs. River Harber DVM', 'P', '1-267-482-6032', '28597 Nikolaus Union Suite 065\nBodemouth, ND 37520', 'concepcion.toy@yahoo.com', '2021-09-06 02:15:51', '2021-09-06 02:15:51'),
(20, 'Toney Lubowitz', 'P', '551-361-2924 x613', '5350 Miller Way Suite 370\nEast Karina, OR 60999', 'billie11@hotmail.com', '2021-09-06 02:15:51', '2021-09-06 02:15:51'),
(21, 'Emil Schaden', 'L', '959-688-3205', '2754 Emard Shores Suite 706\nRohanborough, MO 07931', 'lisa.gulgowski@gmail.com', '2021-09-06 02:15:51', '2021-09-06 02:15:51'),
(22, 'Ms. Gerda Kovacek II', 'L', '1-383-898-0898 x740', '1254 Tomas Canyon Apt. 119\nSouth Jarvishaven, OR 01538-2116', 'vbailey@hotmail.com', '2021-09-06 02:15:51', '2021-09-06 02:15:51'),
(23, 'Mr. Harvey Schuppe DDS', 'L', '1-505-212-9343', '22825 Nikolaus Stream Apt. 665\nMannberg, IL 05134-8414', 'buford.koss@gmail.com', '2021-09-06 02:15:52', '2021-09-06 02:15:52'),
(24, 'Ludwig Schmitt', 'L', '(407) 997-6537 x914', '187 Thompson Streets\nTurnerberg, MA 48699', 'judy.hirthe@yahoo.com', '2021-09-06 02:15:52', '2021-09-06 02:15:52'),
(25, 'Helen Boehm', 'P', '975.622.6839', '88407 Kris Road\nWest Magnushaven, NJ 81348-8515', 'garrison.rath@gmail.com', '2021-09-06 02:15:52', '2021-09-06 02:15:52'),
(26, 'Thora Koelpin Sr.', 'P', '879.501.8215 x0408', '245 Ferry Knoll\nNew Aubreeburgh, HI 10369-8735', 'pquigley@yahoo.com', '2021-09-06 02:15:52', '2021-09-06 02:15:52'),
(27, 'Jailyn Kunze', 'L', '819.935.2173', '4253 Carmel Mountain\nSouth Golden, KS 53162', 'harvey.mclaughlin@gmail.com', '2021-09-06 02:15:52', '2021-09-06 02:15:52'),
(28, 'Cecile Rippin', 'L', '(660) 459-9390', '6873 Toy Run Suite 941\nJanaeland, VT 42762', 'kuhic.krystina@gmail.com', '2021-09-06 02:15:52', '2021-09-06 02:15:52');

-- --------------------------------------------------------

--
-- Table structure for table `bukus`
--

CREATE TABLE `bukus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `isbn` int(6) NOT NULL,
  `judul` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun` int(11) NOT NULL,
  `id_penerbit` bigint(20) UNSIGNED NOT NULL,
  `id_pengarang` bigint(20) UNSIGNED NOT NULL,
  `id_katalog` bigint(20) UNSIGNED NOT NULL,
  `qty_stok` int(11) NOT NULL,
  `harga_pinjam` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bukus`
--

INSERT INTO `bukus` (`id`, `isbn`, `judul`, `tahun`, `id_penerbit`, `id_pengarang`, `id_katalog`, `qty_stok`, `harga_pinjam`, `created_at`, `updated_at`) VALUES
(1, 92, 'Belajar PHP', 2010, 1, 1, 2, 12, 12000, NULL, NULL),
(2, 377, 'MySQL Dasar', 2020, 4, 4, 1, 20, 4000, NULL, NULL),
(3, 381, 'Basic Vue.js', 2014, 3, 1, 2, 5, 5000, NULL, NULL),
(4, 774, 'Laravel Master', 2021, 3, 5, 1, 7, 6500, NULL, NULL),
(5, 774, 'Laravel Part 1', 2018, 3, 5, 1, 5, 4500, NULL, NULL),
(6, 777, 'Mongo DB Lanjut', 2020, 1, 3, 2, 7, 10000, NULL, NULL),
(7, 882, 'Belajar CSS', 2020, 3, 5, 1, 8, 12000, NULL, NULL),
(8, 777, 'MySQL Lanjut', 2021, 1, 4, 3, 9, 8000, NULL, NULL),
(9, 882, 'Belajar Laravel', 2020, 3, 5, 1, 3, 11500, NULL, NULL),
(10, 902, 'CSS Part 2', 2020, 4, 5, 1, 8, 15000, NULL, NULL),
(11, 929, 'Basic JQuery', 2019, 1, 5, 2, 11, 5500, NULL, NULL),
(12, 977, 'CSS Part 1', 2018, 1, 1, 2, 9, 8000, NULL, NULL),
(13, 999, 'Laravel Part 2', 2020, 4, 5, 1, 11, 13000, NULL, NULL),
(14, 2, 'Lancar Javascript', 2018, 2, 5, 2, 8, 5000, NULL, NULL),
(15, 9, 'Basic PHP', 2021, 4, 1, 1, 19, 7500, NULL, NULL),
(16, 92, 'Belajar PHP', 2010, 1, 1, 2, 12, 12000, NULL, NULL),
(17, 377, 'MySQL Dasar', 2020, 4, 4, 1, 20, 4000, NULL, NULL),
(18, 381, 'Basic Vue.js', 2014, 3, 1, 2, 5, 5000, NULL, NULL),
(19, 774, 'Laravel Master', 2021, 3, 5, 1, 7, 6500, NULL, NULL),
(20, 774, 'Laravel Part 1', 2018, 3, 5, 1, 5, 4500, NULL, NULL),
(21, 777, 'MySQL Lanjut', 2021, 1, 4, 3, 9, 8000, NULL, NULL),
(22, 777, 'Mongo DB Lanjut', 2020, 1, 3, 2, 7, 10000, NULL, NULL),
(23, 882, 'Belajar CSS', 2020, 3, 5, 1, 8, 12000, NULL, NULL),
(24, 882, 'Belajar Laravel', 2020, 3, 5, 1, 3, 11500, NULL, NULL),
(25, 902, 'CSS Part 2', 2020, 4, 5, 1, 8, 15000, NULL, NULL),
(43, 929, 'Basic JQuery', 2019, 1, 5, 2, 11, 5500, NULL, NULL),
(44, 977, 'CSS Part 1', 2018, 1, 1, 2, 9, 8000, NULL, NULL),
(45, 999, 'Laravel Part 2', 2020, 4, 5, 1, 11, 13000, NULL, NULL),
(46, 281094, 'Shaina Mosciski', 2017, 4, 1, 5, 14, 17508, '2021-09-06 01:41:11', '2021-09-06 01:41:11'),
(47, 846573, 'Luisa Terry IV', 2016, 5, 7, 3, 18, 11788, '2021-09-06 01:41:11', '2021-09-06 01:41:11'),
(48, 253725, 'Elton Rodriguez', 2015, 2, 5, 5, 12, 17715, '2021-09-06 01:41:11', '2021-09-06 01:41:11'),
(49, 558561, 'Prof. Trevion Daniel DVM', 2019, 3, 3, 5, 14, 10185, '2021-09-06 01:41:11', '2021-09-06 01:41:11'),
(50, 779749, 'Dr. Mya Schmitt IV', 2018, 6, 3, 4, 15, 10363, '2021-09-06 01:41:11', '2021-09-06 01:41:11'),
(51, 820151, 'Regan Runolfsdottir', 2015, 6, 7, 5, 13, 8700, '2021-09-06 01:41:12', '2021-09-06 01:41:12'),
(52, 246265, 'Marion O\'Keefe', 2017, 1, 3, 3, 5, 9033, '2021-09-06 01:41:12', '2021-09-06 01:41:12'),
(53, 254821, 'Randi Wiegand', 2020, 2, 2, 5, 10, 16699, '2021-09-06 01:41:12', '2021-09-06 01:41:12'),
(54, 424939, 'Jamel Hand', 2015, 3, 2, 3, 14, 17736, '2021-09-06 01:41:12', '2021-09-06 01:41:12'),
(55, 680108, 'Afton Kirlin DDS', 2016, 6, 6, 4, 12, 15430, '2021-09-06 01:41:12', '2021-09-06 01:41:12');

-- --------------------------------------------------------

--
-- Table structure for table `detail_peminjamen`
--

CREATE TABLE `detail_peminjamen` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_peminjaman` bigint(20) UNSIGNED NOT NULL,
  `id_buku` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `detail_peminjamen`
--

INSERT INTO `detail_peminjamen` (`id`, `id_peminjaman`, `id_buku`, `qty`, `created_at`, `updated_at`) VALUES
(1, 2, 7, 1, NULL, NULL),
(2, 3, 1, 1, NULL, NULL),
(3, 3, 11, 1, NULL, NULL),
(4, 3, 3, 2, NULL, NULL),
(5, 3, 15, 1, NULL, NULL),
(6, 4, 8, 1, NULL, NULL),
(7, 4, 2, 1, NULL, NULL),
(8, 5, 6, 1, NULL, NULL),
(9, 5, 9, 2, NULL, NULL),
(10, 6, 1, 1, NULL, NULL),
(11, 6, 2, 2, NULL, NULL),
(12, 6, 7, 1, NULL, NULL),
(13, 6, 9, 1, NULL, NULL),
(14, 7, 8, 1, NULL, NULL),
(15, 8, 10, 2, NULL, NULL),
(16, 8, 9, 1, NULL, NULL),
(17, 9, 11, 1, NULL, NULL),
(18, 9, 13, 1, NULL, NULL),
(19, 9, 12, 1, NULL, NULL),
(20, 10, 11, 1, NULL, NULL),
(21, 10, 1, 1, NULL, NULL),
(22, 10, 9, 1, NULL, NULL),
(23, 10, 12, 2, NULL, NULL);

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `katalogs`
--

CREATE TABLE `katalogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `katalogs`
--

INSERT INTO `katalogs` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Buku Dewasa', NULL, NULL),
(2, 'Buku Anak', NULL, NULL),
(3, 'Buku Belajar', NULL, NULL),
(4, 'Buku Belajar Agama', NULL, NULL),
(5, 'Buku Kesehatan', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2010_09_02_150257_create_anggotas_table', 2),
(5, '2021_09_02_145941_create_penerbits_table', 2),
(6, '2021_09_02_150021_create_pengarangs_table', 2),
(7, '2021_09_02_150106_create_katalogs_table', 2),
(8, '2021_09_02_150143_create_bukus_table', 2),
(9, '2021_09_02_150201_create_peminjamen_table', 2),
(10, '2021_09_02_150202_create_detail_peminjamen_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `peminjamen`
--

CREATE TABLE `peminjamen` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_anggota` bigint(20) UNSIGNED NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `peminjamen`
--

INSERT INTO `peminjamen` (`id`, `id_anggota`, `tgl_pinjam`, `tgl_kembali`, `created_at`, `updated_at`) VALUES
(1, 4, '2021-05-26', '2021-05-31', NULL, NULL),
(2, 2, '2021-05-27', '2021-05-29', NULL, NULL),
(3, 3, '2021-05-10', '2021-05-12', NULL, NULL),
(4, 7, '2021-05-27', '2021-05-31', NULL, NULL),
(5, 5, '2021-06-01', '2021-06-05', NULL, NULL),
(6, 10, '2021-06-01', '2021-06-03', NULL, NULL),
(7, 3, '2021-05-04', '2021-05-06', NULL, NULL),
(8, 4, '2021-06-03', '2021-06-09', NULL, NULL),
(9, 11, '2021-06-02', '2021-06-08', NULL, NULL),
(10, 5, '2021-05-25', '2021-06-02', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `penerbits`
--

CREATE TABLE `penerbits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_penerbit` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telp` char(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `penerbits`
--

INSERT INTO `penerbits` (`id`, `nama_penerbit`, `email`, `telp`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'Penerbit 01', 'penerbit@perpus.co.id', '0219999333', 'Surabaya', NULL, NULL),
(2, 'Penerbit 02', 'penerbit2@gmail.com', '08765158111', 'Bandung', NULL, NULL),
(3, 'Penerbit 03', 'penerbit3@gmail.com', '', 'Jakarta Barat', NULL, NULL),
(4, 'Penerbit 04', 'penerbit4@gmail.com', '08972017209', 'Jakarta Selatan', NULL, NULL),
(5, 'Penerbit 05', 'penerbit5@gmail.com', '08972187209', 'Jakarta Selatan', NULL, NULL),
(6, 'Penerbit 06', 'penerbit6@gmail.com', '08112187209', 'Jakarta Barat', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pengarangs`
--

CREATE TABLE `pengarangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_pengarang` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telp` char(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengarangs`
--

INSERT INTO `pengarangs` (`id`, `nama_pengarang`, `email`, `telp`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'Pengarang 01', 'pengarang1@perpus.co.id', '0929211', 'Bandung', NULL, NULL),
(2, 'Pengarang 02', 'pengarang2@perpus.co.id', '0929211222', 'Yogyakarta', NULL, NULL),
(3, 'Pengarang 03', 'pengarang3@perpus.co.id', '092921199', 'Banten', NULL, NULL),
(4, 'Pengarang 04', 'pengarang4@perpus.co.id', '93938199', 'Jakarta', NULL, NULL),
(5, 'Pengarang 05', 'pengarang5@perpus.co.id', '93938199', 'Cimahi', NULL, NULL),
(6, 'Pengarang 06', 'pengarang6@perpus.co.id', '0818176111', 'Cimahi', NULL, NULL),
(7, 'Pengarang 07', 'pengarang7@perpus.co.id', '08181762291', 'Semarang', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'rivaldi', 'bagus.rivaldi.95@gmail.com', NULL, '$2y$10$wIT0e9BmhJeNOIAAzFrfKuTtG4kfEie9RlVd7YjJSK1BwReplXgee', NULL, '2021-09-02 07:07:39', '2021-09-02 07:07:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggotas`
--
ALTER TABLE `anggotas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bukus`
--
ALTER TABLE `bukus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bukus_id_penerbit_foreign` (`id_penerbit`),
  ADD KEY `bukus_id_pengarang_foreign` (`id_pengarang`),
  ADD KEY `bukus_id_katalog_foreign` (`id_katalog`);

--
-- Indexes for table `detail_peminjamen`
--
ALTER TABLE `detail_peminjamen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detail_peminjamen_id_peminjaman_foreign` (`id_peminjaman`),
  ADD KEY `detail_peminjamen_id_buku_foreign` (`id_buku`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `katalogs`
--
ALTER TABLE `katalogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `peminjamen`
--
ALTER TABLE `peminjamen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `peminjamen_id_anggota_foreign` (`id_anggota`);

--
-- Indexes for table `penerbits`
--
ALTER TABLE `penerbits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengarangs`
--
ALTER TABLE `pengarangs`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `anggotas`
--
ALTER TABLE `anggotas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `bukus`
--
ALTER TABLE `bukus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `detail_peminjamen`
--
ALTER TABLE `detail_peminjamen`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `katalogs`
--
ALTER TABLE `katalogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `peminjamen`
--
ALTER TABLE `peminjamen`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `penerbits`
--
ALTER TABLE `penerbits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pengarangs`
--
ALTER TABLE `pengarangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bukus`
--
ALTER TABLE `bukus`
  ADD CONSTRAINT `bukus_id_katalog_foreign` FOREIGN KEY (`id_katalog`) REFERENCES `katalogs` (`id`),
  ADD CONSTRAINT `bukus_id_penerbit_foreign` FOREIGN KEY (`id_penerbit`) REFERENCES `penerbits` (`id`),
  ADD CONSTRAINT `bukus_id_pengarang_foreign` FOREIGN KEY (`id_pengarang`) REFERENCES `pengarangs` (`id`);

--
-- Constraints for table `detail_peminjamen`
--
ALTER TABLE `detail_peminjamen`
  ADD CONSTRAINT `detail_peminjamen_id_buku_foreign` FOREIGN KEY (`id_buku`) REFERENCES `bukus` (`id`),
  ADD CONSTRAINT `detail_peminjamen_id_peminjaman_foreign` FOREIGN KEY (`id_peminjaman`) REFERENCES `peminjamen` (`id`);

--
-- Constraints for table `peminjamen`
--
ALTER TABLE `peminjamen`
  ADD CONSTRAINT `peminjamen_id_anggota_foreign` FOREIGN KEY (`id_anggota`) REFERENCES `anggotas` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
