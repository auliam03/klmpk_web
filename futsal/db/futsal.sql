-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2023 at 02:03 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `futsal`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `id_album` int(11) NOT NULL,
  `nama_album` char(50) NOT NULL,
  `slug_album` char(50) NOT NULL,
  `foto` text NOT NULL,
  `created_by` char(20) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_by` char(20) DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`id_album`, `nama_album`, `slug_album`, `foto`, `created_by`, `created_at`, `modified_by`, `modified_at`) VALUES
(1, 'Januari-Juni 2021', 'januari-juni-2021', 'januari-juni-202120231202193754.png', 'kelompok 3', '2018-04-11 06:14:08', 'superadmin', '2023-12-02 19:37:54'),
(2, 'Juli-Desember 2021', 'juli-desember-2021', 'juli-desember-202120231202193827.png', 'kelompok 3', '2018-04-11 06:20:52', 'superadmin', '2023-12-02 19:38:27'),
(3, 'Januari-Juni 2022', 'januari-juni-2022', 'januari-juni-202220231202193708.png', 'kelompok 3', '2018-04-11 06:23:01', 'superadmin', '2023-12-02 19:37:08'),
(4, 'Juli-Desember 2022', 'juli-desember-2022', 'juli-desember-202220231202193622.png', 'kelompok 3', '2018-04-11 06:23:11', 'superadmin', '2023-12-02 19:36:22'),
(5, 'Januari-Juni 2023', 'januari-juni-2023', 'januari-juni-202320231202193352.jpg', 'kelompok 3', '2018-04-14 19:16:46', 'superadmin', '2023-12-02 19:33:52'),
(6, 'Juli-Desember 2023', 'juli-desember-2023', 'juli-desember-202320231202193321.jpg', 'kelompok 3', '2018-04-14 19:17:05', 'superadmin', '2023-12-02 19:33:21');

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `id_bank` int(11) NOT NULL,
  `nama_bank` varchar(100) NOT NULL,
  `atas_nama` varchar(100) NOT NULL,
  `norek` varchar(100) NOT NULL,
  `logo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`id_bank`, `nama_bank`, `atas_nama`, `norek`, `logo`) VALUES
(1, 'BNI', 'Microtron', '12345678', 'bni.png'),
(2, 'BRI', 'Microtron', '87873412323', 'bri.png'),
(3, 'Mandiri', 'Microtron', '778734098', 'mandiri.png'),
(4, 'BCA', 'Microtron', '998980342487', 'bca.png');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id_company` int(11) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `company_desc` text NOT NULL,
  `company_address` text NOT NULL,
  `company_maps` text NOT NULL,
  `company_phone` char(30) NOT NULL,
  `company_phone2` char(30) NOT NULL,
  `company_fax` char(30) NOT NULL,
  `company_email` char(30) NOT NULL,
  `foto` text NOT NULL,
  `foto_type` char(10) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `modified` datetime DEFAULT NULL,
  `created_by` char(50) NOT NULL,
  `modified_by` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id_company`, `company_name`, `company_desc`, `company_address`, `company_maps`, `company_phone`, `company_phone2`, `company_fax`, `company_email`, `foto`, `foto_type`, `created`, `modified`, `created_by`, `modified_by`) VALUES
(1, 'GoalRush Arena', 'Selamat datang di GoalRush Arena - Destinasi Terbaik untuk Sewa Lapangan Futsal! Kami adalah tempat yang sempurna bagi para pecinta sepak bola untuk merayakan kecintaan mereka pada olahraga favorit. Dengan fasilitas lapangan futsal terbaik dan pelayanan yang ramah, kami berkomitmen untuk memberikan pengalaman bermain yang tak terlupakan bagi setiap tim dan individu.', 'Jl. Maju Mundur Kec. Camat Kel. Lurahan, Kab. Bupaten, Dunia Lain', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d16327777.649419477!2d108.84621849858628!3d-2.415291213289622!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2c4c07d7496404b7%3A0xe37b4de71badf485!2sIndonesia!5e0!3m2!1sen!2sid!4v1506312173230\" width=\"100%\" height=\"200\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '085873452165', '0212134758', '12414', 'goalrusharena2021@gmail.com', 'goalrush-arena20231202181725', '.png', '2017-11-09 06:45:34', NULL, 'kelompok 3', 'kelompok 3');

-- --------------------------------------------------------

--
-- Table structure for table `diskon`
--

CREATE TABLE `diskon` (
  `id` int(11) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `diskon`
--

INSERT INTO `diskon` (`id`, `harga`) VALUES
(1, 55000);

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id_event` int(11) NOT NULL,
  `nama_event` varchar(100) NOT NULL,
  `slug_event` varchar(100) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `kategori` int(11) DEFAULT NULL,
  `foto` text DEFAULT NULL,
  `foto_type` char(10) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` char(50) NOT NULL,
  `modified_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `modified_by` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id_event`, `nama_event`, `slug_event`, `deskripsi`, `kategori`, `foto`, `foto_type`, `created_at`, `created_by`, `modified_at`, `modified_by`) VALUES
(2, 'Futsal Rutin', 'futsal-rutin', '<p>shgfghuiwsdx etwyuidxkmew cvbdsc9whdhewmdw</p>', 1, 'yes', '.jpg', '2023-12-02 15:37:14', 'kelompok 3', '2023-12-10 19:41:49', 'superadmin'),
(10, 'futsal', 'futsal', '', 1, 'futsal20231202195825', '.png', '2023-12-02 19:58:25', 'superadmin', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `foto`
--

CREATE TABLE `foto` (
  `id_foto` int(11) NOT NULL,
  `album_id` int(11) NOT NULL,
  `nama_foto` char(100) NOT NULL,
  `slug_foto` char(100) NOT NULL,
  `foto` text NOT NULL,
  `created_by` char(20) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_by` char(20) NOT NULL,
  `modified_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `foto`
--

INSERT INTO `foto` (`id_foto`, `album_id`, `nama_foto`, `slug_foto`, `foto`, `created_by`, `created_at`, `modified_by`, `modified_at`) VALUES
(1, 1, '15 Januari', '15-januari', '15-januari20231202164107.png', 'kelompok 3', '2018-04-11 07:41:29', 'superadmin', '2023-12-02 16:41:07'),
(2, 1, '28 Januari', '28-januari', '28-januari20231202164801.png', 'kelompok 3', '2018-04-11 07:45:03', 'superadmin', '2023-12-02 16:48:01'),
(3, 1, '6 Maret', '6-maret', '6-maret20231202164135.png', 'kelompok 3', '2018-04-11 07:47:12', 'superadmin', '2023-12-02 16:41:35'),
(4, 1, '28 Mei', '28-mei', '28-mei20231202164214.png', 'kelompok 3', '2018-04-14 15:13:17', 'superadmin', '2023-12-02 16:42:14'),
(5, 1, '3 Juni', '3-juni', '3-juni20231202164228.png', 'kelompok 3', '2018-04-14 15:14:29', 'superadmin', '2023-12-02 16:42:29'),
(6, 2, '18 Agustus', '18-agustus', '18-agustus20231202164249.png', 'kelompok 3', '2018-04-14 15:15:15', 'superadmin', '2023-12-02 16:42:49'),
(7, 2, '25 Oktober', '25-oktober', '25-oktober20231202164306.png', 'kelompok 3', '2018-04-14 15:15:45', 'superadmin', '2023-12-02 16:43:06'),
(8, 2, '21 November', '21-november', '21-november20231202164321.png', 'kelompok 3', '2018-04-14 15:16:05', 'superadmin', '2023-12-02 16:43:21'),
(9, 2, '4 Desember', '4 Desember', '4des2.png', 'kelompok 3', '2018-04-14 15:16:13', 'kelompok 3', '2023-12-02 16:46:24'),
(10, 3, '21 Januari', '21-januari', '21-januari20231202164412.png', 'superadmin', '2023-12-02 16:11:42', 'superadmin', '2023-12-02 16:44:12'),
(11, 3, '10 Juni', '10-juni', '10-juni20231202164430.png', 'superadmin', '2023-12-02 16:12:16', 'superadmin', '2023-12-02 16:44:30'),
(12, 3, '13 Maret', '13-maret', '13-maret20231202164444.png', 'superadmin', '2023-12-02 16:12:39', 'superadmin', '2023-12-02 16:44:44'),
(13, 3, '19 Mei', '19-mei', '19-mei20231202164459.png', 'superadmin', '2023-12-02 16:13:50', 'superadmin', '2023-12-02 16:44:59'),
(14, 3, '27 April', '27-april', '27-april20231202164521.png', 'superadmin', '2023-12-02 16:14:16', 'superadmin', '2023-12-02 16:45:21'),
(15, 3, '8 Februari', '8-februari', '8-februari20231202184133.png', 'superadmin', '2023-12-02 18:41:33', '', NULL),
(16, 1, '10 April', '10-april', '10-april20231202184314.png', 'superadmin', '2023-12-02 18:43:14', '', NULL),
(17, 2, '2 Juli', '2-juli', '2-juli20231202191406.png', 'superadmin', '2023-12-02 19:14:06', '', NULL),
(18, 2, '16 September', '16-september', '16-september20231202191435.png', 'superadmin', '2023-12-02 19:14:35', '', NULL),
(19, 4, '2 Desember', '2-desember', '2-desember20231202191819.png', 'superadmin', '2023-12-02 19:18:19', '', NULL),
(20, 4, '4 Agustus', '4-agustus', '4-agustus20231202191841.png', 'superadmin', '2023-12-02 19:18:41', '', NULL),
(21, 4, '10 November', '10-november', '10-november20231202192008.png', 'superadmin', '2023-12-02 19:19:04', 'superadmin', '2023-12-02 19:20:08'),
(22, 4, '17 September', '17-september', '17-september20231202192034.png', 'superadmin', '2023-12-02 19:20:34', '', NULL),
(23, 4, '22 Oktober', '22-oktober', '22okt22.png', 'kelompok 3', '2023-12-02 19:21:06', '', '2023-12-02 19:23:02'),
(24, 5, '2 Juni', '2-juni', '2-juni20231202194647.png', 'superadmin', '2023-12-02 19:26:58', 'superadmin', '2023-12-02 19:46:47'),
(25, 5, '7 April', '7-april', '7-april20231202194605.png', 'superadmin', '2023-12-02 19:27:14', 'superadmin', '2023-12-02 19:46:05'),
(26, 5, '10 Februari', '10-februari', '10-februari20231202194525.png', 'superadmin', '2023-12-02 19:27:33', 'superadmin', '2023-12-02 19:45:25'),
(27, 5, '13 Mei', '13-mei', '13-mei20231202193506.jpg', 'superadmin', '2023-12-02 19:27:50', 'superadmin', '2023-12-02 19:35:06'),
(28, 5, '21 Januari', '21-januari', '21-januari20231202194737.png', 'superadmin', '2023-12-02 19:28:11', 'superadmin', '2023-12-02 19:47:37'),
(29, 4, '25 Juli', '25-juli', '25-juli20231202194204.png', 'superadmin', '2023-12-02 19:41:03', 'superadmin', '2023-12-02 19:42:04'),
(30, 5, '9 Maret', '9-maret', '9-maret20231202194820.png', 'superadmin', '2023-12-02 19:48:20', '', NULL),
(31, 6, '1 Juli', '1-juli', '1-juli20231202195350.png', 'superadmin', '2023-12-02 19:53:50', '', NULL),
(32, 6, '5 Desember', '5-desember', '5-desember20231202195405.png', 'superadmin', '2023-12-02 19:54:05', '', NULL),
(33, 6, '7 Oktober', '7-oktober', '7-oktober20231202195420.png', 'superadmin', '2023-12-02 19:54:20', '', NULL),
(34, 6, '12 November', '12-november', '12-november20231202195436.png', 'superadmin', '2023-12-02 19:54:36', '', NULL),
(35, 6, '15 September', '15-september', '15-september20231202195509.png', 'superadmin', '2023-12-02 19:55:09', '', NULL),
(36, 6, '29 Agustus', '29-agustus', '29-agustus20231202195525.png', 'superadmin', '2023-12-02 19:55:25', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jam`
--

CREATE TABLE `jam` (
  `id` int(11) NOT NULL,
  `jam` varchar(50) NOT NULL,
  `is_available` tinytext DEFAULT '1',
  `tdk_tersedia` enum('tersedia','tidak tersedia') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `jam`
--

INSERT INTO `jam` (`id`, `jam`, `is_available`, `tdk_tersedia`) VALUES
(1, '06:00:00', '1', 'tersedia'),
(2, '07:00:00', '1', 'tersedia'),
(3, '08:00:00', '0\r\n', 'tidak tersedia'),
(4, '09:00:00', '1\r\n', 'tersedia'),
(5, '10:00:00', '0', 'tidak tersedia'),
(6, '11:00:00', '1', 'tersedia'),
(7, '12:00:00', '1', 'tersedia'),
(8, '13:00:00', '1', 'tersedia'),
(9, '14:00:00', '1', 'tersedia'),
(10, '15:00:00', '1', 'tersedia'),
(11, '16:00:00', '1', 'tersedia'),
(12, '17:00:00', '1', 'tersedia'),
(13, '18:00:00', '1', 'tersedia'),
(14, '19:00:00', '1', 'tersedia'),
(15, '20:00:00', '1', 'tersedia'),
(16, '21:00:00', '1', 'tersedia'),
(17, '22:00:00', '1', 'tersedia'),
(18, '23:00:00', '1', 'tersedia'),
(19, '24:00:00', '1', 'tersedia'),
(20, '10:00:00', '0', 'tersedia');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(20) NOT NULL,
  `slug_kat` varchar(20) NOT NULL,
  `created_by` char(50) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_by` char(50) NOT NULL,
  `modified_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `slug_kat`, `created_by`, `created_at`, `modified_by`, `modified_at`) VALUES
(1, 'Turnamen', 'turnamen', 'kelompok 3', '2018-07-23 08:38:39', 'kelompok 3', '2023-12-02 11:00:46'),
(2, 'Kerja Sama', 'kerja-sama', 'kelompok 3', '2018-07-23 08:38:39', 'kelompok 3', '2023-12-02 11:01:05');

-- --------------------------------------------------------

--
-- Table structure for table `kontak`
--

CREATE TABLE `kontak` (
  `id_kontak` int(11) NOT NULL,
  `nama_kontak` char(50) NOT NULL,
  `nohp` char(50) NOT NULL,
  `created_by` char(50) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_by` char(50) NOT NULL,
  `modified_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kontak`
--

INSERT INTO `kontak` (`id_kontak`, `nama_kontak`, `nohp`, `created_by`, `created_at`, `modified_by`, `modified_at`) VALUES
(1, 'Alsa', '6285887123360', 'kelompok 3', '2018-07-23 11:16:57', 'kelompok 3', '2023-12-02 11:04:47'),
(2, 'aulia', '6281310376095', 'kelompok 3', '2018-07-23 11:16:57', 'kelompok 3', '2023-12-02 11:04:47'),
(3, 'arifin', '6281380520436', 'kelompok 3', '2018-07-23 11:20:44', 'kelompok 3', '2023-12-02 11:04:47'),
(4, 'rayni', '081315440177', 'kelompok 3', '2023-12-28 10:05:45', 'kelompok 3', '2023-12-28 11:05:45'),
(5, 'hanif', '085694252593', 'kelompok 3', '2023-12-02 11:08:31', 'kelompok 3', '2023-12-02 18:26:15');

-- --------------------------------------------------------

--
-- Table structure for table `kota`
--

CREATE TABLE `kota` (
  `id_kota` int(11) NOT NULL,
  `provinsi_id` int(11) NOT NULL,
  `nama_kota` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kota`
--

INSERT INTO `kota` (`id_kota`, `provinsi_id`, `nama_kota`) VALUES
(1, 21, 'Aceh Barat'),
(2, 21, 'Aceh Barat Daya'),
(3, 21, 'Aceh Besar'),
(4, 21, 'Aceh Jaya'),
(5, 21, 'Aceh Selatan'),
(6, 21, 'Aceh Singkil'),
(7, 21, 'Aceh Tamiang'),
(8, 21, 'Aceh Tengah'),
(9, 21, 'Aceh Tenggara'),
(10, 21, 'Aceh Timur'),
(11, 21, 'Aceh Utara'),
(12, 32, 'Agam'),
(13, 23, 'Alor'),
(14, 19, 'Ambon'),
(15, 34, 'Asahan'),
(16, 24, 'Asmat'),
(17, 1, 'Badung'),
(18, 13, 'Balangan'),
(19, 15, 'Balikpapan'),
(20, 21, 'Banda Aceh'),
(21, 18, 'Bandar Lampung'),
(22, 9, 'Bandung'),
(23, 9, 'Bandung'),
(24, 9, 'Bandung Barat'),
(25, 29, 'Banggai'),
(26, 29, 'Banggai Kepulauan'),
(27, 2, 'Bangka'),
(28, 2, 'Bangka Barat'),
(29, 2, 'Bangka Selatan'),
(30, 2, 'Bangka Tengah'),
(31, 11, 'Bangkalan'),
(32, 1, 'Bangli'),
(33, 13, 'Banjar'),
(34, 9, 'Banjar'),
(35, 13, 'Banjarbaru'),
(36, 13, 'Banjarmasin'),
(37, 10, 'Banjarnegara'),
(38, 28, 'Bantaeng'),
(39, 5, 'Bantul'),
(40, 33, 'Banyuasin'),
(41, 10, 'Banyumas'),
(42, 11, 'Banyuwangi'),
(43, 13, 'Barito Kuala'),
(44, 14, 'Barito Selatan'),
(45, 14, 'Barito Timur'),
(46, 14, 'Barito Utara'),
(47, 28, 'Barru'),
(48, 17, 'Batam'),
(49, 10, 'Batang'),
(50, 8, 'Batang Hari'),
(51, 11, 'Batu'),
(52, 34, 'Batu Bara'),
(53, 30, 'Bau-Bau'),
(54, 9, 'Bekasi'),
(55, 9, 'Bekasi'),
(56, 2, 'Belitung'),
(57, 2, 'Belitung Timur'),
(58, 23, 'Belu'),
(59, 21, 'Bener Meriah'),
(60, 26, 'Bengkalis'),
(61, 12, 'Bengkayang'),
(62, 4, 'Bengkulu'),
(63, 4, 'Bengkulu Selatan'),
(64, 4, 'Bengkulu Tengah'),
(65, 4, 'Bengkulu Utara'),
(66, 15, 'Berau'),
(67, 24, 'Biak Numfor'),
(68, 22, 'Bima'),
(69, 22, 'Bima'),
(70, 34, 'Binjai'),
(71, 17, 'Bintan'),
(72, 21, 'Bireuen'),
(73, 31, 'Bitung'),
(74, 11, 'Blitar'),
(75, 11, 'Blitar'),
(76, 10, 'Blora'),
(77, 7, 'Boalemo'),
(78, 9, 'Bogor'),
(79, 9, 'Bogor'),
(80, 11, 'Bojonegoro'),
(81, 31, 'Bolaang Mongondow (Bolmong)'),
(82, 31, 'Bolaang Mongondow Selatan'),
(83, 31, 'Bolaang Mongondow Timur'),
(84, 31, 'Bolaang Mongondow Utara'),
(85, 30, 'Bombana'),
(86, 11, 'Bondowoso'),
(87, 28, 'Bone'),
(88, 7, 'Bone Bolango'),
(89, 15, 'Bontang'),
(90, 24, 'Boven Digoel'),
(91, 10, 'Boyolali'),
(92, 10, 'Brebes'),
(93, 32, 'Bukittinggi'),
(94, 1, 'Buleleng'),
(95, 28, 'Bulukumba'),
(96, 16, 'Bulungan (Bulongan)'),
(97, 8, 'Bungo'),
(98, 29, 'Buol'),
(99, 19, 'Buru'),
(100, 19, 'Buru Selatan'),
(101, 30, 'Buton'),
(102, 30, 'Buton Utara'),
(103, 9, 'Ciamis'),
(104, 9, 'Cianjur'),
(105, 10, 'Cilacap'),
(106, 3, 'Cilegon'),
(107, 9, 'Cimahi'),
(108, 9, 'Cirebon'),
(109, 9, 'Cirebon'),
(110, 34, 'Dairi'),
(111, 24, 'Deiyai (Deliyai)'),
(112, 34, 'Deli Serdang'),
(113, 10, 'Demak'),
(114, 1, 'Denpasar'),
(115, 9, 'Depok'),
(116, 32, 'Dharmasraya'),
(117, 24, 'Dogiyai'),
(118, 22, 'Dompu'),
(119, 29, 'Donggala'),
(120, 26, 'Dumai'),
(121, 33, 'Empat Lawang'),
(122, 23, 'Ende'),
(123, 28, 'Enrekang'),
(124, 25, 'Fakfak'),
(125, 23, 'Flores Timur'),
(126, 9, 'Garut'),
(127, 21, 'Gayo Lues'),
(128, 1, 'Gianyar'),
(129, 7, 'Gorontalo'),
(130, 7, 'Gorontalo'),
(131, 7, 'Gorontalo Utara'),
(132, 28, 'Gowa'),
(133, 11, 'Gresik'),
(134, 10, 'Grobogan'),
(135, 5, 'Gunung Kidul'),
(136, 14, 'Gunung Mas'),
(137, 34, 'Gunungsitoli'),
(138, 20, 'Halmahera Barat'),
(139, 20, 'Halmahera Selatan'),
(140, 20, 'Halmahera Tengah'),
(141, 20, 'Halmahera Timur'),
(142, 20, 'Halmahera Utara'),
(143, 13, 'Hulu Sungai Selatan'),
(144, 13, 'Hulu Sungai Tengah'),
(145, 13, 'Hulu Sungai Utara'),
(146, 34, 'Humbang Hasundutan'),
(147, 26, 'Indragiri Hilir'),
(148, 26, 'Indragiri Hulu'),
(149, 9, 'Indramayu'),
(150, 24, 'Intan Jaya'),
(151, 6, 'Jakarta Barat'),
(152, 6, 'Jakarta Pusat'),
(153, 6, 'Jakarta Selatan'),
(154, 6, 'Jakarta Timur'),
(155, 6, 'Jakarta Utara'),
(156, 8, 'Jambi'),
(157, 24, 'Jayapura'),
(158, 24, 'Jayapura'),
(159, 24, 'Jayawijaya'),
(160, 11, 'Jember'),
(161, 1, 'Jembrana'),
(162, 28, 'Jeneponto'),
(163, 10, 'Jepara'),
(164, 11, 'Jombang'),
(165, 25, 'Kaimana'),
(166, 26, 'Kampar'),
(167, 14, 'Kapuas'),
(168, 12, 'Kapuas Hulu'),
(169, 10, 'Karanganyar'),
(170, 1, 'Karangasem'),
(171, 9, 'Karawang'),
(172, 17, 'Karimun'),
(173, 34, 'Karo'),
(174, 14, 'Katingan'),
(175, 4, 'Kaur'),
(176, 12, 'Kayong Utara'),
(177, 10, 'Kebumen'),
(178, 11, 'Kediri'),
(179, 11, 'Kediri'),
(180, 24, 'Keerom'),
(181, 10, 'Kendal'),
(182, 30, 'Kendari'),
(183, 4, 'Kepahiang'),
(184, 17, 'Kepulauan Anambas'),
(185, 19, 'Kepulauan Aru'),
(186, 32, 'Kepulauan Mentawai'),
(187, 26, 'Kepulauan Meranti'),
(188, 31, 'Kepulauan Sangihe'),
(189, 6, 'Kepulauan Seribu'),
(190, 31, 'Kepulauan Siau Tagulandang Biaro (Sitaro)'),
(191, 20, 'Kepulauan Sula'),
(192, 31, 'Kepulauan Talaud'),
(193, 24, 'Kepulauan Yapen (Yapen Waropen)'),
(194, 8, 'Kerinci'),
(195, 12, 'Ketapang'),
(196, 10, 'Klaten'),
(197, 1, 'Klungkung'),
(198, 30, 'Kolaka'),
(199, 30, 'Kolaka Utara'),
(200, 30, 'Konawe'),
(201, 30, 'Konawe Selatan'),
(202, 30, 'Konawe Utara'),
(203, 13, 'Kotabaru'),
(204, 31, 'Kotamobagu'),
(205, 14, 'Kotawaringin Barat'),
(206, 14, 'Kotawaringin Timur'),
(207, 26, 'Kuantan Singingi'),
(208, 12, 'Kubu Raya'),
(209, 10, 'Kudus'),
(210, 5, 'Kulon Progo'),
(211, 9, 'Kuningan'),
(212, 23, 'Kupang'),
(213, 23, 'Kupang'),
(214, 15, 'Kutai Barat'),
(215, 15, 'Kutai Kartanegara'),
(216, 15, 'Kutai Timur'),
(217, 34, 'Labuhan Batu'),
(218, 34, 'Labuhan Batu Selatan'),
(219, 34, 'Labuhan Batu Utara'),
(220, 33, 'Lahat'),
(221, 14, 'Lamandau'),
(222, 11, 'Lamongan'),
(223, 18, 'Lampung Barat'),
(224, 18, 'Lampung Selatan'),
(225, 18, 'Lampung Tengah'),
(226, 18, 'Lampung Timur'),
(227, 18, 'Lampung Utara'),
(228, 12, 'Landak'),
(229, 34, 'Langkat'),
(230, 21, 'Langsa'),
(231, 24, 'Lanny Jaya'),
(232, 3, 'Lebak'),
(233, 4, 'Lebong'),
(234, 23, 'Lembata'),
(235, 21, 'Lhokseumawe'),
(236, 32, 'Lima Puluh Koto/Kota'),
(237, 17, 'Lingga'),
(238, 22, 'Lombok Barat'),
(239, 22, 'Lombok Tengah'),
(240, 22, 'Lombok Timur'),
(241, 22, 'Lombok Utara'),
(242, 33, 'Lubuk Linggau'),
(243, 11, 'Lumajang'),
(244, 28, 'Luwu'),
(245, 28, 'Luwu Timur'),
(246, 28, 'Luwu Utara'),
(247, 11, 'Madiun'),
(248, 11, 'Madiun'),
(249, 10, 'Magelang'),
(250, 10, 'Magelang'),
(251, 11, 'Magetan'),
(252, 9, 'Majalengka'),
(253, 27, 'Majene'),
(254, 28, 'Makassar'),
(255, 11, 'Malang'),
(256, 11, 'Malang'),
(257, 16, 'Malinau'),
(258, 19, 'Maluku Barat Daya'),
(259, 19, 'Maluku Tengah'),
(260, 19, 'Maluku Tenggara'),
(261, 19, 'Maluku Tenggara Barat'),
(262, 27, 'Mamasa'),
(263, 24, 'Mamberamo Raya'),
(264, 24, 'Mamberamo Tengah'),
(265, 27, 'Mamuju'),
(266, 27, 'Mamuju Utara'),
(267, 31, 'Manado'),
(268, 34, 'Mandailing Natal'),
(269, 23, 'Manggarai'),
(270, 23, 'Manggarai Barat'),
(271, 23, 'Manggarai Timur'),
(272, 25, 'Manokwari'),
(273, 25, 'Manokwari Selatan'),
(274, 24, 'Mappi'),
(275, 28, 'Maros'),
(276, 22, 'Mataram'),
(277, 25, 'Maybrat'),
(278, 34, 'Medan'),
(279, 12, 'Melawi'),
(280, 8, 'Merangin'),
(281, 24, 'Merauke'),
(282, 18, 'Mesuji'),
(283, 18, 'Metro'),
(284, 24, 'Mimika'),
(285, 31, 'Minahasa'),
(286, 31, 'Minahasa Selatan'),
(287, 31, 'Minahasa Tenggara'),
(288, 31, 'Minahasa Utara'),
(289, 11, 'Mojokerto'),
(290, 11, 'Mojokerto'),
(291, 29, 'Morowali'),
(292, 33, 'Muara Enim'),
(293, 8, 'Muaro Jambi'),
(294, 4, 'Muko Muko'),
(295, 30, 'Muna'),
(296, 14, 'Murung Raya'),
(297, 33, 'Musi Banyuasin'),
(298, 33, 'Musi Rawas'),
(299, 24, 'Nabire'),
(300, 21, 'Nagan Raya'),
(301, 23, 'Nagekeo'),
(302, 17, 'Natuna'),
(303, 24, 'Nduga'),
(304, 23, 'Ngada'),
(305, 11, 'Nganjuk'),
(306, 11, 'Ngawi'),
(307, 34, 'Nias'),
(308, 34, 'Nias Barat'),
(309, 34, 'Nias Selatan'),
(310, 34, 'Nias Utara'),
(311, 16, 'Nunukan'),
(312, 33, 'Ogan Ilir'),
(313, 33, 'Ogan Komering Ilir'),
(314, 33, 'Ogan Komering Ulu'),
(315, 33, 'Ogan Komering Ulu Selatan'),
(316, 33, 'Ogan Komering Ulu Timur'),
(317, 11, 'Pacitan'),
(318, 32, 'Padang'),
(319, 34, 'Padang Lawas'),
(320, 34, 'Padang Lawas Utara'),
(321, 32, 'Padang Panjang'),
(322, 32, 'Padang Pariaman'),
(323, 34, 'Padang Sidempuan'),
(324, 33, 'Pagar Alam'),
(325, 34, 'Pakpak Bharat'),
(326, 14, 'Palangka Raya'),
(327, 33, 'Palembang'),
(328, 28, 'Palopo'),
(329, 29, 'Palu'),
(330, 11, 'Pamekasan'),
(331, 3, 'Pandeglang'),
(332, 9, 'Pangandaran'),
(333, 28, 'Pangkajene Kepulauan'),
(334, 2, 'Pangkal Pinang'),
(335, 24, 'Paniai'),
(336, 28, 'Parepare'),
(337, 32, 'Pariaman'),
(338, 29, 'Parigi Moutong'),
(339, 32, 'Pasaman'),
(340, 32, 'Pasaman Barat'),
(341, 15, 'Paser'),
(342, 11, 'Pasuruan'),
(343, 11, 'Pasuruan'),
(344, 10, 'Pati'),
(345, 32, 'Payakumbuh'),
(346, 25, 'Pegunungan Arfak'),
(347, 24, 'Pegunungan Bintang'),
(348, 10, 'Pekalongan'),
(349, 10, 'Pekalongan'),
(350, 26, 'Pekanbaru'),
(351, 26, 'Pelalawan'),
(352, 10, 'Pemalang'),
(353, 34, 'Pematang Siantar'),
(354, 15, 'Penajam Paser Utara'),
(355, 18, 'Pesawaran'),
(356, 18, 'Pesisir Barat'),
(357, 32, 'Pesisir Selatan'),
(358, 21, 'Pidie'),
(359, 21, 'Pidie Jaya'),
(360, 28, 'Pinrang'),
(361, 7, 'Pohuwato'),
(362, 27, 'Polewali Mandar'),
(363, 11, 'Ponorogo'),
(364, 12, 'Pontianak'),
(365, 12, 'Pontianak'),
(366, 29, 'Poso'),
(367, 33, 'Prabumulih'),
(368, 18, 'Pringsewu'),
(369, 11, 'Probolinggo'),
(370, 11, 'Probolinggo'),
(371, 14, 'Pulang Pisau'),
(372, 20, 'Pulau Morotai'),
(373, 24, 'Puncak'),
(374, 24, 'Puncak Jaya'),
(375, 10, 'Purbalingga'),
(376, 9, 'Purwakarta'),
(377, 10, 'Purworejo'),
(378, 25, 'Raja Ampat'),
(379, 4, 'Rejang Lebong'),
(380, 10, 'Rembang'),
(381, 26, 'Rokan Hilir'),
(382, 26, 'Rokan Hulu'),
(383, 23, 'Rote Ndao'),
(384, 21, 'Sabang'),
(385, 23, 'Sabu Raijua'),
(386, 10, 'Salatiga'),
(387, 15, 'Samarinda'),
(388, 12, 'Sambas'),
(389, 34, 'Samosir'),
(390, 11, 'Sampang'),
(391, 12, 'Sanggau'),
(392, 24, 'Sarmi'),
(393, 8, 'Sarolangun'),
(394, 32, 'Sawah Lunto'),
(395, 12, 'Sekadau'),
(396, 28, 'Selayar (Kepulauan Selayar)'),
(397, 4, 'Seluma'),
(398, 10, 'Semarang'),
(399, 10, 'Semarang'),
(400, 19, 'Seram Bagian Barat'),
(401, 19, 'Seram Bagian Timur'),
(402, 3, 'Serang'),
(403, 3, 'Serang'),
(404, 34, 'Serdang Bedagai'),
(405, 14, 'Seruyan'),
(406, 26, 'Siak'),
(407, 34, 'Sibolga'),
(408, 28, 'Sidenreng Rappang/Rapang'),
(409, 11, 'Sidoarjo'),
(410, 29, 'Sigi'),
(411, 32, 'Sijunjung (Sawah Lunto Sijunjung)'),
(412, 23, 'Sikka'),
(413, 34, 'Simalungun'),
(414, 21, 'Simeulue'),
(415, 12, 'Singkawang'),
(416, 28, 'Sinjai'),
(417, 12, 'Sintang'),
(418, 11, 'Situbondo'),
(419, 5, 'Sleman'),
(420, 32, 'Solok'),
(421, 32, 'Solok'),
(422, 32, 'Solok Selatan'),
(423, 28, 'Soppeng'),
(424, 25, 'Sorong'),
(425, 25, 'Sorong'),
(426, 25, 'Sorong Selatan'),
(427, 10, 'Sragen'),
(428, 9, 'Subang'),
(429, 21, 'Subulussalam'),
(430, 9, 'Sukabumi'),
(431, 9, 'Sukabumi'),
(432, 14, 'Sukamara'),
(433, 10, 'Sukoharjo'),
(434, 23, 'Sumba Barat'),
(435, 23, 'Sumba Barat Daya'),
(436, 23, 'Sumba Tengah'),
(437, 23, 'Sumba Timur'),
(438, 22, 'Sumbawa'),
(439, 22, 'Sumbawa Barat'),
(440, 9, 'Sumedang'),
(441, 11, 'Sumenep'),
(442, 8, 'Sungaipenuh'),
(443, 24, 'Supiori'),
(444, 11, 'Surabaya'),
(445, 10, 'Surakarta (Solo)'),
(446, 13, 'Tabalong'),
(447, 1, 'Tabanan'),
(448, 28, 'Takalar'),
(449, 25, 'Tambrauw'),
(450, 16, 'Tana Tidung'),
(451, 28, 'Tana Toraja'),
(452, 13, 'Tanah Bumbu'),
(453, 32, 'Tanah Datar'),
(454, 13, 'Tanah Laut'),
(455, 3, 'Tangerang'),
(456, 3, 'Tangerang'),
(457, 3, 'Tangerang Selatan'),
(458, 18, 'Tanggamus'),
(459, 34, 'Tanjung Balai'),
(460, 8, 'Tanjung Jabung Barat'),
(461, 8, 'Tanjung Jabung Timur'),
(462, 17, 'Tanjung Pinang'),
(463, 34, 'Tapanuli Selatan'),
(464, 34, 'Tapanuli Tengah'),
(465, 34, 'Tapanuli Utara'),
(466, 13, 'Tapin'),
(467, 16, 'Tarakan'),
(468, 9, 'Tasikmalaya'),
(469, 9, 'Tasikmalaya'),
(470, 34, 'Tebing Tinggi'),
(471, 8, 'Tebo'),
(472, 10, 'Tegal'),
(473, 10, 'Tegal'),
(474, 25, 'Teluk Bintuni'),
(475, 25, 'Teluk Wondama'),
(476, 10, 'Temanggung'),
(477, 20, 'Ternate'),
(478, 20, 'Tidore Kepulauan'),
(479, 23, 'Timor Tengah Selatan'),
(480, 23, 'Timor Tengah Utara'),
(481, 34, 'Toba Samosir'),
(482, 29, 'Tojo Una-Una'),
(483, 29, 'Toli-Toli'),
(484, 24, 'Tolikara'),
(485, 31, 'Tomohon'),
(486, 28, 'Toraja Utara'),
(487, 11, 'Trenggalek'),
(488, 19, 'Tual'),
(489, 11, 'Tuban'),
(490, 18, 'Tulang Bawang'),
(491, 18, 'Tulang Bawang Barat'),
(492, 11, 'Tulungagung'),
(493, 28, 'Wajo'),
(494, 30, 'Wakatobi'),
(495, 24, 'Waropen'),
(496, 18, 'Way Kanan'),
(497, 10, 'Wonogiri'),
(498, 10, 'Wonosobo'),
(499, 24, 'Yahukimo'),
(500, 24, 'Yalimo'),
(501, 5, 'Yogyakarta');

-- --------------------------------------------------------

--
-- Table structure for table `lapangan`
--

CREATE TABLE `lapangan` (
  `id_lapangan` int(11) NOT NULL,
  `nama_lapangan` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `foto` text NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_by` varchar(50) NOT NULL,
  `modified_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `lapangan`
--

INSERT INTO `lapangan` (`id_lapangan`, `nama_lapangan`, `harga`, `foto`, `created_by`, `created_at`, `modified_by`, `modified_at`) VALUES
(1, 'Lapangan A', 100000, 'lapangan-a20231202151419.png', 'kelompok 3', '2018-06-10 15:37:43', 'superadmin', '2023-12-02 15:14:19'),
(2, 'Lapangan B', 150000, 'lapangan-b20231202151802.png', 'kelompok 3', '2018-06-10 16:02:44', 'superadmin', '2023-12-02 15:18:02'),
(3, 'Lapangan C', 80000, 'lapangan-c20231202151813.png', 'kelompok 3', '2018-06-10 16:16:17', 'superadmin', '2023-12-02 15:18:13'),
(4, 'Lapangan D', 100000, 'lapangan-d20231202151823.png', 'kelompok 3', '2018-06-10 16:25:05', 'superadmin', '2023-12-02 15:18:23'),
(5, 'Lapangan E', 200000, 'lapangan-e20231202151836.png', 'kelompok 3', '2018-06-10 16:38:10', 'superadmin', '2023-12-02 15:18:36'),
(6, 'Lapangan F', 150000, 'lapangan-f20231202151853.png', 'kelompok 3', '2018-06-10 16:54:28', 'superadmin', '2023-12-02 15:18:53');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `login` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `login_attempts`
--

INSERT INTO `login_attempts` (`id`, `ip_address`, `login`, `time`) VALUES
(19, '::1', 'superadmin@gmail.com', 1702208031);

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `id_page` int(11) NOT NULL,
  `judul_page` varchar(50) NOT NULL,
  `judul_seo` varchar(50) NOT NULL,
  `isi_page` text NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`id_page`, `judul_page`, `judul_seo`, `isi_page`, `gambar`) VALUES
(1, 'Home', 'home', '', ''),
(2, 'Download', 'download', 'download', ''),
(3, 'Kontak', 'kontak', '<p style=\"text-align: center;\">&nbsp;<img src=\"http://localhost/tol/assets/images/upload/whatsapp.png\" /><br /><strong>SMS/ Call/ Whatsapp</strong></p>\r\n<p style=\"text-align: center;\">0853-6873-3631</p>\r\n<p style=\"text-align: center;\">0822-8155-1666</p>', ''),
(4, 'Profil', 'profil', '<p style=\"text-align: justify;\">Kami merupakan toko yang menyediakan berbagai macam parfum, obat-obatan herbal, baju koko, dan aksesoris muslim lainnya. Toko kami beralamat di Jl. Dr. M. Isa No.1109, Kuto Batu, Ilir Tim. II, Kota Palembang, Sumatera Selatan 30114.</p>\r\n<p style=\"text-align: justify;\">Berikut adalah foto toko kami:</p>', ''),
(5, 'Order', 'order', '<p>Anda dapat menghubungi&nbsp;kami melalui tombol order via whatsapp di masing-masing produk atau melalui customer service/ kontak yang telah disediakan di sisi kanan website ini</p>', '');

-- --------------------------------------------------------

--
-- Table structure for table `provinsi`
--

CREATE TABLE `provinsi` (
  `id_provinsi` int(11) NOT NULL,
  `nama_provinsi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `provinsi`
--

INSERT INTO `provinsi` (`id_provinsi`, `nama_provinsi`) VALUES
(1, 'Bali'),
(2, 'Bangka Belitung'),
(3, 'Banten'),
(4, 'Bengkulu'),
(5, 'DI Yogyakarta'),
(6, 'DKI Jakarta'),
(7, 'Gorontalo'),
(8, 'Jambi'),
(9, 'Jawa Barat'),
(10, 'Jawa Tengah'),
(11, 'Jawa Timur'),
(12, 'Kalimantan Barat'),
(13, 'Kalimantan Selatan'),
(14, 'Kalimantan Tengah'),
(15, 'Kalimantan Timur'),
(16, 'Kalimantan Utara'),
(17, 'Kepulauan Riau'),
(18, 'Lampung'),
(19, 'Maluku'),
(20, 'Maluku Utara'),
(21, 'Nanggroe Aceh Darussalam (NAD)'),
(22, 'Nusa Tenggara Barat (NTB)'),
(23, 'Nusa Tenggara Timur (NTT)'),
(24, 'Papua'),
(25, 'Papua Barat'),
(26, 'Riau'),
(27, 'Sulawesi Barat'),
(28, 'Sulawesi Selatan'),
(29, 'Sulawesi Tengah'),
(30, 'Sulawesi Tenggara'),
(31, 'Sulawesi Utara'),
(32, 'Sumatera Barat'),
(33, 'Sumatera Selatan'),
(34, 'Sumatera Utara');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id_slider` int(11) NOT NULL,
  `no_urut` int(11) NOT NULL,
  `nama_slider` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  `foto` text NOT NULL,
  `foto_type` char(10) NOT NULL,
  `foto_size` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` char(50) NOT NULL,
  `modified_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `modified_by` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id_slider`, `no_urut`, `nama_slider`, `link`, `foto`, `foto_type`, `foto_size`, `created_at`, `created_by`, `modified_at`, `modified_by`) VALUES
(1, 1, 'Slider 1', 'http://www.yahoo.com ', '120180610164516', '.jpg', 203, '2017-11-25 08:05:03', 'kelompok 3', '2023-12-02 11:33:48', 'kelompok 3'),
(2, 2, 'Slider 2', 'http://www.google.com ', '220180610164521', '.jpg', 833, '2017-11-25 08:05:03', 'kelompok 3', '2023-12-02 11:33:48', 'kelompok 3'),
(3, 3, 'XXZ', 'http://www.facebook.com', '320180610164527', '.jpg', 167, '2017-11-25 08:05:03', 'kelompok 3', '2023-12-02 11:33:48', 'kelompok 3');

-- --------------------------------------------------------

--
-- Table structure for table `subscriber`
--

CREATE TABLE `subscriber` (
  `id_subscriber` int(11) NOT NULL,
  `email` char(20) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_trans` int(11) NOT NULL,
  `id_invoice` char(15) NOT NULL,
  `user_id` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `diskon` int(11) NOT NULL,
  `grand_total` int(11) NOT NULL,
  `deadline` datetime NOT NULL,
  `catatan` text NOT NULL,
  `status` int(11) NOT NULL,
  `created_date` date NOT NULL,
  `created_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_trans`, `id_invoice`, `user_id`, `subtotal`, `diskon`, `grand_total`, `deadline`, `catatan`, `status`, `created_date`, `created_time`) VALUES
(9, 'J-231202-0001', 5, 450000, 0, 450000, '2023-12-02 12:35:30', '', 2, '2023-12-02', '10:39:43'),
(10, 'J-231202-0002', 5, 150000, 0, 150000, '2023-12-02 12:40:29', '', 2, '2023-12-02', '11:40:22'),
(11, 'J-231202-0003', 5, 0, 0, 0, '0000-00-00 00:00:00', '', 2, '2023-12-02', '11:42:16'),
(12, 'J-231202-0004', 1, 200000, 0, 200000, '2023-12-02 21:01:30', '', 2, '2023-12-02', '08:01:11'),
(15, 'J-231203-0007', 1, 100000, 0, 100000, '2023-12-03 15:36:35', '', 2, '2023-12-03', '02:33:16'),
(16, 'J-231203-0008', 1, 100000, 0, 100000, '2023-12-03 15:46:31', '', 2, '2023-12-03', '02:40:42'),
(23, 'J-231208-0015', 1, 80000, 0, 80000, '2023-12-08 09:56:13', '', 2, '2023-12-08', '08:55:10'),
(24, 'J-231208-0016', 1, 250000, 0, 250000, '2023-12-08 10:02:03', '', 2, '2023-12-08', '08:56:42'),
(27, 'J-231208-0017', 1, 150000, 0, 150000, '2023-12-08 21:31:19', '', 1, '2023-12-08', '08:31:02'),
(28, 'J-231210-0018', 7, 200000, 0, 200000, '2023-12-10 19:35:17', '', 1, '2023-12-10', '06:35:04');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_detail`
--

CREATE TABLE `transaksi_detail` (
  `id_transdet` int(11) NOT NULL,
  `trans_id` int(11) NOT NULL,
  `lapangan_id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `jam_mulai` time DEFAULT NULL,
  `durasi` int(11) NOT NULL,
  `jam_selesai` time DEFAULT NULL,
  `harga_jual` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `transaksi_detail`
--

INSERT INTO `transaksi_detail` (`id_transdet`, `trans_id`, `lapangan_id`, `tanggal`, `jam_mulai`, `durasi`, `jam_selesai`, `harga_jual`, `total`, `created_at`) VALUES
(12, 9, 2, '2023-12-21', '17:00:00', 3, '20:00:00', 150000, 450000, '2023-12-02 10:39:43'),
(13, 10, 2, '2023-12-28', '19:00:00', 1, '20:00:00', 150000, 150000, '2023-12-02 11:40:22'),
(14, 11, 1, '0000-00-00', NULL, 0, NULL, 100000, 100000, '2023-12-02 11:42:16'),
(15, 12, 4, '2023-12-14', '18:00:00', 2, '20:00:00', 100000, 200000, '2023-12-02 20:01:11'),
(18, 15, 4, '2023-12-19', '07:00:00', 1, '08:00:00', 100000, 100000, '2023-12-03 14:33:16'),
(19, 16, 1, '2023-12-20', '12:00:00', 1, '13:00:00', 100000, 100000, '2023-12-03 14:40:42'),
(26, 23, 3, '2023-12-28', '13:00:00', 1, '14:00:00', 80000, 80000, '2023-12-08 08:55:10'),
(27, 24, 2, '2023-12-26', '20:00:00', 1, '21:00:00', 150000, 150000, '2023-12-08 08:56:42'),
(28, 24, 1, '2023-12-15', '16:00:00', 1, '17:00:00', 100000, 100000, '2023-12-08 08:59:31'),
(31, 27, 2, '2023-12-21', '12:00:00', 1, '13:00:00', 150000, 150000, '2023-12-08 20:31:02'),
(32, 28, 5, '2023-12-17', '17:00:00', 1, '18:00:00', 200000, 200000, '2023-12-10 18:35:04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `provinsi` int(11) DEFAULT NULL,
  `kota` int(11) DEFAULT NULL,
  `address` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `usertype` int(11) NOT NULL,
  `active` tinyint(3) UNSIGNED DEFAULT NULL,
  `photo` text CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `photo_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `salt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `activation_code` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `forgotten_password_code` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `forgotten_password_time` int(10) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `last_login` int(11) DEFAULT NULL,
  `created_on` int(11) NOT NULL,
  `modified` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `email`, `phone`, `provinsi`, `kota`, `address`, `usertype`, `active`, `photo`, `photo_type`, `ip_address`, `salt`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `last_login`, `created_on`, `modified`) VALUES
(1, 'SuperAdmin', 'superadmin', '$2y$08$TWMdtdacqPE5yEz9n1LwFuhEVmiDTTsupl12M45tCQihzF1tu2N/6', 'superadmin@gmail.com', '081228289766', 6, 151, 'asdasdasdsa', 1, 1, 'mazmi20180205001726', '.jpg', '::1', NULL, 'c6ad242e6fd3de875568c7de5ba23af4a24137ef', 'tHafW45duPzrU3oWR0AVuO48b26088a3cd65edc4', 1621246176, NULL, 1702042724, 2147483647, '2023-12-08 20:38:44'),
(2, 'Admin', 'administrator', '$2y$08$rnCngWyQhFLdVJijctNDKuwJZ8o9VfcSsZ9IM9XN71ugxIpQFeCWe', 'administrator@gmail.com', '08124124', NULL, NULL, 'kaldjlas', 2, 1, 'admin20180424102408', '.jpeg', '::1', NULL, NULL, NULL, NULL, NULL, 1621252084, 1524551716, '2021-05-17 18:48:04'),
(5, 'Aulia', 'auliaz03', '$2y$08$lksbJ7ssDf68ea3e2a4E9ufs9/VH1f5GIiCVTEEF.p1Io1QCD6hN.', 'aulia.maulida1612@gmail.com', '081310376095', 11, 31, 'bks', 4, 1, NULL, NULL, '::1', NULL, NULL, NULL, NULL, 'U/qazkW/e2Ms3YyQPd7cDu', 1701488367, 1701487556, '2023-12-08 20:40:03'),
(7, 'Shifa', 'Shifa', '$2y$08$H6jAZGLjbyCDdmuFx2kjFOye.hKtb8l/vjcbV6fkHma3YJqRh9JsS', 'syifaaa548@gmail.com', '85887123360', 9, 54, 'Bekasi', 4, 1, NULL, NULL, '::1', NULL, NULL, NULL, NULL, NULL, 1702208100, 1702208077, '2023-12-10 18:35:00');

-- --------------------------------------------------------

--
-- Table structure for table `users_group`
--

CREATE TABLE `users_group` (
  `id_group` int(11) NOT NULL,
  `name_group` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users_group`
--

INSERT INTO `users_group` (`id_group`, `name_group`) VALUES
(1, 'SuperAdmin'),
(2, 'Administrator'),
(3, 'Member Premium'),
(4, 'Member Biasa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id_album`);

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`id_bank`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id_company`);

--
-- Indexes for table `diskon`
--
ALTER TABLE `diskon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id_event`);

--
-- Indexes for table `foto`
--
ALTER TABLE `foto`
  ADD PRIMARY KEY (`id_foto`),
  ADD KEY `foto_FK` (`album_id`);

--
-- Indexes for table `jam`
--
ALTER TABLE `jam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`id_kontak`);

--
-- Indexes for table `lapangan`
--
ALTER TABLE `lapangan`
  ADD PRIMARY KEY (`id_lapangan`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id_page`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id_slider`);

--
-- Indexes for table `subscriber`
--
ALTER TABLE `subscriber`
  ADD PRIMARY KEY (`id_subscriber`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_trans`),
  ADD KEY `transaksi_FK` (`user_id`);

--
-- Indexes for table `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  ADD PRIMARY KEY (`id_transdet`),
  ADD KEY `transaksi_detail_FK` (`lapangan_id`),
  ADD KEY `transaksi_detail_FK_1` (`trans_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_group`
--
ALTER TABLE `users_group`
  ADD PRIMARY KEY (`id_group`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `id_album` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `bank`
--
ALTER TABLE `bank`
  MODIFY `id_bank` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id_company` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id_event` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `foto`
--
ALTER TABLE `foto`
  MODIFY `id_foto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `jam`
--
ALTER TABLE `jam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kontak`
--
ALTER TABLE `kontak`
  MODIFY `id_kontak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `lapangan`
--
ALTER TABLE `lapangan`
  MODIFY `id_lapangan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `id_page` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id_slider` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subscriber`
--
ALTER TABLE `subscriber`
  MODIFY `id_subscriber` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_trans` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  MODIFY `id_transdet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users_group`
--
ALTER TABLE `users_group`
  MODIFY `id_group` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `foto`
--
ALTER TABLE `foto`
  ADD CONSTRAINT `foto_FK` FOREIGN KEY (`album_id`) REFERENCES `album` (`id_album`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_FK` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  ADD CONSTRAINT `transaksi_detail_FK` FOREIGN KEY (`lapangan_id`) REFERENCES `lapangan` (`id_lapangan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksi_detail_FK_1` FOREIGN KEY (`trans_id`) REFERENCES `transaksi` (`id_trans`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
