-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 16 Sep 2018 pada 04.52
-- Versi Server: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eoffice`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `divisi`
--

CREATE TABLE `divisi` (
  `divisiid` int(11) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `desc` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `divisi`
--

INSERT INTO `divisi` (`divisiid`, `nama`, `desc`) VALUES
(9, 'DIVISI CABANG BONE', NULL),
(10, 'DIVISI JAMU ECERAN', NULL),
(11, 'DIVISI JAMU GROSIR', NULL),
(12, 'DIVISI HR', NULL),
(13, 'DIVISI CABANG MAKASSAR', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `event`
--

CREATE TABLE `event` (
  `eventid` int(11) NOT NULL,
  `admin` int(11) DEFAULT NULL,
  `subject` varchar(250) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `date` datetime DEFAULT CURRENT_TIMESTAMP,
  `kategori` varchar(45) DEFAULT NULL,
  `pimpinan` int(11) DEFAULT NULL,
  `peserta` varchar(45) DEFAULT NULL,
  `jammulai` varchar(45) DEFAULT NULL,
  `jamakhir` varchar(45) DEFAULT NULL,
  `tempat` varchar(45) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `event`
--

INSERT INTO `event` (`eventid`, `admin`, `subject`, `tanggal`, `date`, `kategori`, `pimpinan`, `peserta`, `jammulai`, `jamakhir`, `tempat`, `userid`) VALUES
(2, 594, 'Rakor Januari', '2018-09-17', '2018-09-15 12:58:06', 'Rapat/Meeting', 595, '594', '12.00', '2.00', 'Ruang Rapat Utama', 1),
(3, 594, 'Rapat Koordinasi Antar Divisi', '2018-09-17', '2018-09-15 12:58:19', 'Rapat/Meeting', 595, '595,597,594', '12.00', '2.00', 'Ruang Rapat Utama', 1),
(4, 598, 'Rapat Koordinasi Antar Divisi', '2018-09-18', '2018-09-16 05:25:04', 'Rapat/Meeting', 599, '595,596,597,599,598', '10.00', '12.00', 'Ruang Rapat Utama', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `indikator`
--

CREATE TABLE `indikator` (
  `indikatorid` int(11) NOT NULL,
  `parameterid` int(11) DEFAULT NULL,
  `nama` varchar(45) DEFAULT NULL,
  `bobot` decimal(5,2) DEFAULT NULL,
  `unit` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `indikator`
--

INSERT INTO `indikator` (`indikatorid`, `parameterid`, `nama`, `bobot`, `unit`) VALUES
(1, 1, 'Juarayya Regional Eceran Revenue', '15.00', 'Rp'),
(2, 1, 'Juarayya Regional Grosir Revenue', '15.00', 'Rp'),
(3, 1, 'Growth YoY Revenue Jamu', '5.00', '%'),
(4, 2, 'Pelanggan Baru', '5.00', 'pcs');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jabatan`
--

CREATE TABLE `jabatan` (
  `jabatanid` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `divisiid` int(11) NOT NULL,
  `desc` varchar(250) DEFAULT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kompetitor`
--

CREATE TABLE `kompetitor` (
  `kompetitorid` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `address` varchar(250) DEFAULT NULL,
  `city` varchar(250) DEFAULT NULL,
  `date` datetime DEFAULT CURRENT_TIMESTAMP,
  `cp` varchar(255) DEFAULT NULL,
  `status` varchar(45) NOT NULL DEFAULT 'Active',
  `state` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `parameter`
--

CREATE TABLE `parameter` (
  `parameterid` int(11) NOT NULL,
  `nama` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `parameter`
--

INSERT INTO `parameter` (`parameterid`, `nama`) VALUES
(1, 'Revenue'),
(2, 'Jamu Acquisition'),
(3, 'Layanan Service Center');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `pegawaiid` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `nik` varchar(25) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `telp` varchar(45) DEFAULT NULL,
  `divisi` varchar(45) DEFAULT NULL,
  `userid` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `jabatan` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`pegawaiid`, `name`, `nik`, `email`, `telp`, `divisi`, `userid`, `date`, `jabatan`) VALUES
(594, 'OBET', 'A1', 'obet@gmail.com', '0811-1111111', '13', 1, '2018-09-13 02:33:38', 'Supervisor'),
(595, 'ILHAM', 'A12', 'ilham@gmail.com', '', '9', 1, '2018-09-14 03:13:00', 'KAKANDATEL BONE'),
(596, 'NARULITA', 'A13', 'siti@gmail.com', '', '12', 1, '2018-09-14 03:13:31', 'MGR HR & CDC'),
(597, 'SATRIA ', 'B12', '', '', '11', 1, '2018-09-14 03:13:59', 'MGR HOME SERVICE 1'),
(598, 'WILFI', 'B2', '', '', '10', 1, '2018-09-14 03:14:19', 'MGR BUSINESS SERVICE'),
(599, 'SIMANUNGKALIT', 'AA1', '', '', '13', 1, '2018-09-15 11:20:38', 'GM WITEL MAKASAR');

-- --------------------------------------------------------

--
-- Struktur dari tabel `point`
--

CREATE TABLE `point` (
  `pointid` int(11) NOT NULL,
  `uraian` varchar(250) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `penanggungjawab` int(11) DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL,
  `eventid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `point`
--

INSERT INTO `point` (`pointid`, `uraian`, `status`, `penanggungjawab`, `tanggal`, `eventid`) VALUES
(1, 'Pont 1', 'In-progress', 597, '2018-09-16 00:00:00', 3),
(9, 'Point 2', NULL, 598, '2018-09-19 00:00:00', 3),
(10, '', NULL, NULL, '0000-00-00 00:00:00', 0),
(11, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL),
(12, '', NULL, NULL, '0000-00-00 00:00:00', 0),
(13, 'Peningkatan hasil penjualan 20% di divisi eceran', NULL, 598, '2018-09-21 00:00:00', 4),
(14, 'Peningkatan hasil penjualan 20% di divisi bone', 'In-progress', 595, '2018-09-21 00:00:00', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `progres`
--

CREATE TABLE `progres` (
  `progresid` int(11) NOT NULL,
  `rencanaid` int(11) NOT NULL,
  `date` datetime DEFAULT CURRENT_TIMESTAMP,
  `userid` varchar(45) DEFAULT NULL,
  `b1` decimal(10,2) DEFAULT NULL,
  `b2` decimal(10,2) DEFAULT NULL,
  `b3` decimal(10,2) DEFAULT NULL,
  `b4` decimal(10,2) DEFAULT NULL,
  `b5` decimal(10,2) DEFAULT NULL,
  `b6` decimal(10,2) DEFAULT NULL,
  `b7` decimal(10,2) DEFAULT NULL,
  `b8` decimal(10,2) DEFAULT NULL,
  `b9` decimal(10,2) DEFAULT NULL,
  `b10` decimal(10,2) DEFAULT NULL,
  `b11` decimal(10,2) DEFAULT NULL,
  `b12` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `progres`
--

INSERT INTO `progres` (`progresid`, `rencanaid`, `date`, `userid`, `b1`, `b2`, `b3`, `b4`, `b5`, `b6`, `b7`, `b8`, `b9`, `b10`, `b11`, `b12`) VALUES
(4, 2, '2018-09-13 15:51:07', '1', '1600.00', '1680.00', '1764.00', '1852.20', '1944.81', '2042.05', '2144.15', '2251.36', '0.00', '0.00', '0.00', '0.00'),
(5, 1, '2018-09-13 16:55:54', '1', '960.00', '1108.00', '1258.00', '1011.00', '967.00', '1125.00', '1386.00', '1451.00', '1218.00', '1389.00', '1164.00', '1442.00'),
(6, 3, '2018-09-15 22:31:49', '1', '2305000.00', '2368000.00', '4387000.00', '2270000.00', '2367000.00', '2187000.00', '2385000.00', '2231000.00', '2194000.00', '1257000.00', '1635000.00', '2571000.00'),
(7, 4, '2018-09-15 22:34:28', '1', '19241000.00', '19174000.00', '19837000.00', '20641000.00', '21127000.00', '22036000.00', '22508000.00', '17630000.00', '17646000.00', '18148000.00', '18780000.00', '19340000.00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rencana`
--

CREATE TABLE `rencana` (
  `rencanaid` int(11) NOT NULL,
  `indikator` int(11) DEFAULT NULL,
  `divisi` int(11) DEFAULT NULL,
  `periode` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `date` datetime DEFAULT CURRENT_TIMESTAMP,
  `userid` varchar(45) DEFAULT NULL,
  `b1` decimal(10,2) DEFAULT NULL,
  `b2` decimal(10,2) DEFAULT NULL,
  `b3` decimal(10,2) DEFAULT NULL,
  `b4` decimal(10,2) DEFAULT NULL,
  `b5` decimal(10,2) DEFAULT NULL,
  `b6` decimal(10,2) DEFAULT NULL,
  `b7` decimal(10,2) DEFAULT NULL,
  `b8` decimal(10,2) DEFAULT NULL,
  `b9` decimal(10,2) DEFAULT NULL,
  `b10` decimal(10,2) DEFAULT NULL,
  `b11` decimal(10,2) DEFAULT NULL,
  `b12` decimal(10,2) DEFAULT NULL,
  `b1_1` decimal(10,2) DEFAULT NULL,
  `b2_1` decimal(10,2) DEFAULT NULL,
  `b3_1` decimal(10,2) DEFAULT NULL,
  `b4_1` decimal(10,2) DEFAULT NULL,
  `b5_1` decimal(10,2) DEFAULT NULL,
  `b6_1` decimal(10,2) DEFAULT NULL,
  `b7_1` decimal(10,2) DEFAULT NULL,
  `b8_1` decimal(10,2) DEFAULT NULL,
  `b9_1` decimal(10,2) DEFAULT NULL,
  `b10_1` decimal(10,2) DEFAULT NULL,
  `b11_1` decimal(10,2) DEFAULT NULL,
  `b12_1` decimal(10,2) DEFAULT NULL,
  `b1_2` decimal(10,2) DEFAULT NULL,
  `b2_2` decimal(10,2) DEFAULT NULL,
  `b3_2` decimal(10,2) DEFAULT NULL,
  `b4_2` decimal(10,2) DEFAULT NULL,
  `b5_2` decimal(10,2) DEFAULT NULL,
  `b6_2` decimal(10,2) DEFAULT NULL,
  `b7_2` decimal(10,2) DEFAULT NULL,
  `b8_2` decimal(10,2) DEFAULT NULL,
  `b9_2` decimal(10,2) DEFAULT NULL,
  `b10_2` decimal(10,2) DEFAULT NULL,
  `b11_2` decimal(10,2) DEFAULT NULL,
  `b12_2` decimal(10,2) DEFAULT NULL,
  `b1_3` decimal(10,2) DEFAULT NULL,
  `b2_3` decimal(10,2) DEFAULT NULL,
  `b3_3` decimal(10,2) DEFAULT NULL,
  `b4_3` decimal(10,2) DEFAULT NULL,
  `b5_3` decimal(10,2) DEFAULT NULL,
  `b6_3` decimal(10,2) DEFAULT NULL,
  `b7_3` decimal(10,2) DEFAULT NULL,
  `b8_3` decimal(10,2) DEFAULT NULL,
  `b9_3` decimal(10,2) DEFAULT NULL,
  `b10_3` decimal(10,2) DEFAULT NULL,
  `b11_3` decimal(10,2) DEFAULT NULL,
  `b12_3` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rencana`
--

INSERT INTO `rencana` (`rencanaid`, `indikator`, `divisi`, `periode`, `status`, `date`, `userid`, `b1`, `b2`, `b3`, `b4`, `b5`, `b6`, `b7`, `b8`, `b9`, `b10`, `b11`, `b12`, `b1_1`, `b2_1`, `b3_1`, `b4_1`, `b5_1`, `b6_1`, `b7_1`, `b8_1`, `b9_1`, `b10_1`, `b11_1`, `b12_1`, `b1_2`, `b2_2`, `b3_2`, `b4_2`, `b5_2`, `b6_2`, `b7_2`, `b8_2`, `b9_2`, `b10_2`, `b11_2`, `b12_2`, `b1_3`, `b2_3`, `b3_3`, `b4_3`, `b5_3`, `b6_3`, `b7_3`, `b8_3`, `b9_3`, `b10_3`, `b11_3`, `b12_3`) VALUES
(3, 1, 10, NULL, NULL, '2018-09-15 21:24:41', '1', '1934000.00', '1981000.00', '2122000.00', '2237000.00', '2323000.00', '2443000.00', '2679000.00', '3190000.00', '3209000.00', '3228000.00', '3246000.00', '3265000.00', '3473186.00', '3646845.00', '3829188.00', '4020647.00', '4221679.00', '4432763.00', '4654402.00', '4887122.00', '5131478.00', '5388052.00', '5657454.00', '5940327.00', '6237343.00', '6549210.00', '6876671.00', '7220505.00', '7581530.00', '7960606.00', '8358637.00', '8776568.00', '9215397.00', '9676167.00', '10159975.00', '10667974.00', '1932000.00', '2028600.00', '2130030.00', '2236532.00', '2348358.00', '2465776.00', '2589065.00', '2718518.00', '2854444.00', '2997166.00', '3147024.00', '3304376.00'),
(4, 2, 11, NULL, NULL, '2018-09-15 22:14:30', '1', '18612000.00', '18678000.00', '18933000.00', '19209000.00', '19560000.00', '18933000.00', '20118000.00', '19548000.00', '20424000.00', '22106000.00', '23638000.00', '25559000.00', '33424478.00', '35095702.00', '36850487.00', '38693011.00', '40627662.00', '42659045.00', '44791997.00', '47031597.00', '49383177.00', '51852336.00', '54444953.00', '57167200.00', '60025560.00', '63026838.00', '66178180.00', '69487089.00', '72961444.00', '76609516.00', '80439991.00', '84461991.00', '88685091.00', '93119345.00', '97775312.00', '99999999.99', '18622000.00', '19553100.00', '20530755.00', '21557293.00', '20635157.00', '19766915.00', '20955261.00', '22203024.00', '23513175.00', '22888834.00', '20333276.00', '23849940.00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tindakan`
--

CREATE TABLE `tindakan` (
  `tindakanid` int(11) NOT NULL,
  `uraian` varchar(255) DEFAULT NULL,
  `tanggal` varchar(45) DEFAULT NULL,
  `pointid` int(11) DEFAULT NULL,
  `penanggungjawab1` varchar(45) DEFAULT NULL,
  `lampiran` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tindakan`
--

INSERT INTO `tindakan` (`tindakanid`, `uraian`, `tanggal`, `pointid`, `penanggungjawab1`, `lampiran`) VALUES
(6, NULL, '--', NULL, NULL, NULL),
(7, 'Tindakan A', '2018-09-17', 1, NULL, NULL),
(8, 'Tindakan 2', '2018-09-19', 1, NULL, NULL),
(9, 'Melakukan penyebaran brosur di Mall ABC', '2018-09-20', 14, 'Amran', 'dsc004181.jpg'),
(10, 'Mengintensifkan kunjungan edukasi ke toko-toko retail', '2018-09-21', 14, 'Joko', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `userid` int(4) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(200) NOT NULL,
  `pegawaiid` int(4) DEFAULT NULL,
  `level` varchar(45) NOT NULL,
  `waktu` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `userlog` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`userid`, `username`, `password`, `pegawaiid`, `level`, `waktu`, `userlog`) VALUES
(333, 'satria', '477054c78baea7a1242f79d898a2ca46', 597, 'User', '2018-09-15 11:22:52', NULL),
(332, 'obet', 'ac8052eb700a9d93f7ff3762a39abd1a', 594, 'Administrator', '2018-09-15 11:22:29', NULL),
(331, 'narulita', 'b0e63736f36084d3e32029c1897208de', 596, 'User', '2018-09-15 11:22:15', NULL),
(330, 'ilham', 'b63d204bf086017e34d8bd27ab969f28', 595, 'User', '2018-09-15 11:21:53', NULL),
(334, 'wilfi', '7f80d4d1ba779f97232d66d7af121cf8', 598, 'User', '2018-09-15 11:23:13', NULL),
(335, 'siman', '322f3681ffb4580ab4653d5013797068', 599, 'Administrator', '2018-09-15 13:38:23', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user1`
--

CREATE TABLE `user1` (
  `userid` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `level` varchar(45) NOT NULL,
  `vedorid` int(11) DEFAULT NULL,
  `regionalid` int(11) DEFAULT NULL,
  `witelid` int(11) DEFAULT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(45) NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(254) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `warehouse`
--

CREATE TABLE `warehouse` (
  `warehouseid` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `regionalid` int(11) DEFAULT NULL,
  `witelid` int(11) DEFAULT NULL,
  `vendorid` int(11) DEFAULT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(45) NOT NULL DEFAULT 'Active',
  `type` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `cp` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `divisi`
--
ALTER TABLE `divisi`
  ADD PRIMARY KEY (`divisiid`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`eventid`);

--
-- Indexes for table `indikator`
--
ALTER TABLE `indikator`
  ADD PRIMARY KEY (`indikatorid`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`jabatanid`);

--
-- Indexes for table `kompetitor`
--
ALTER TABLE `kompetitor`
  ADD PRIMARY KEY (`kompetitorid`);

--
-- Indexes for table `parameter`
--
ALTER TABLE `parameter`
  ADD PRIMARY KEY (`parameterid`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`pegawaiid`);

--
-- Indexes for table `point`
--
ALTER TABLE `point`
  ADD PRIMARY KEY (`pointid`);

--
-- Indexes for table `progres`
--
ALTER TABLE `progres`
  ADD PRIMARY KEY (`progresid`);

--
-- Indexes for table `rencana`
--
ALTER TABLE `rencana`
  ADD PRIMARY KEY (`rencanaid`);

--
-- Indexes for table `tindakan`
--
ALTER TABLE `tindakan`
  ADD PRIMARY KEY (`tindakanid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `user1`
--
ALTER TABLE `user1`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warehouse`
--
ALTER TABLE `warehouse`
  ADD PRIMARY KEY (`warehouseid`),
  ADD UNIQUE KEY `name_UNIQUE` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `divisi`
--
ALTER TABLE `divisi`
  MODIFY `divisiid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `eventid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `indikator`
--
ALTER TABLE `indikator`
  MODIFY `indikatorid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `jabatanid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `kompetitor`
--
ALTER TABLE `kompetitor`
  MODIFY `kompetitorid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `parameter`
--
ALTER TABLE `parameter`
  MODIFY `parameterid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `pegawaiid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=600;

--
-- AUTO_INCREMENT for table `point`
--
ALTER TABLE `point`
  MODIFY `pointid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `progres`
--
ALTER TABLE `progres`
  MODIFY `progresid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `rencana`
--
ALTER TABLE `rencana`
  MODIFY `rencanaid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tindakan`
--
ALTER TABLE `tindakan`
  MODIFY `tindakanid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=336;

--
-- AUTO_INCREMENT for table `user1`
--
ALTER TABLE `user1`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `warehouse`
--
ALTER TABLE `warehouse`
  MODIFY `warehouseid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=452;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
