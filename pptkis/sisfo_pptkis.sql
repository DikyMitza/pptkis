-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 26 Jan 2017 pada 09.54
-- Versi Server: 10.1.19-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sisfo_pptkis`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `byr_piutang`
--

CREATE TABLE `byr_piutang` (
  `id_pembayaran` varchar(5) NOT NULL,
  `id_piutang` varchar(5) DEFAULT NULL,
  `tgl_pembayaran` date DEFAULT NULL,
  `jmlh_bayar` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `calling_visa_tki`
--

CREATE TABLE `calling_visa_tki` (
  `id_calling_visa` varchar(5) NOT NULL,
  `id_paspor` varchar(5) DEFAULT NULL,
  `no_calling_visa` varchar(25) DEFAULT NULL,
  `tgl_dikirim` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_tki`
--

CREATE TABLE `data_tki` (
  `id_tki` varchar(5) NOT NULL,
  `nm_tki` varchar(50) DEFAULT NULL,
  `no_ktp` varchar(25) DEFAULT NULL,
  `tmp_lahir` varchar(25) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `id_provinsi` varchar(5) DEFAULT NULL,
  `id_kota` varchar(5) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `nm_ortu` varchar(50) DEFAULT NULL,
  `jenis_kelamin` enum('Laki-Laki','Perempuan') DEFAULT NULL,
  `pendidikan` varchar(25) DEFAULT NULL,
  `id_job_order` varchar(5) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil_medical`
--

CREATE TABLE `hasil_medical` (
  `id_medical` varchar(5) NOT NULL,
  `id_tki` varchar(5) DEFAULT NULL,
  `hasil` enum('Lulus','Tidak Lulus') DEFAULT NULL,
  `keterangan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil_termuduga`
--

CREATE TABLE `hasil_termuduga` (
  `id_termuduga` varchar(5) NOT NULL,
  `id_tki` varchar(5) DEFAULT NULL,
  `hasil` enum('Lulus','Tidak Lulus') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `job_order`
--

CREATE TABLE `job_order` (
  `id_job_order` varchar(5) NOT NULL,
  `no_job_order` varchar(50) DEFAULT NULL,
  `id_perusahaan` varchar(5) DEFAULT NULL,
  `sektor_pekerjaan` varchar(30) DEFAULT NULL,
  `tgl_job_order` date DEFAULT NULL,
  `jml_job` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `keberangkatan_tki`
--

CREATE TABLE `keberangkatan_tki` (
  `id_keberangkatan` varchar(5) NOT NULL,
  `id_tki` varchar(5) DEFAULT NULL,
  `tgl_keberangkatan` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kota`
--

CREATE TABLE `kota` (
  `id_kota` varchar(5) NOT NULL,
  `id_provinsi` varchar(5) DEFAULT NULL,
  `nm_kota` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `paspor_tki`
--

CREATE TABLE `paspor_tki` (
  `id_paspor` varchar(5) NOT NULL,
  `id_tki` varchar(5) DEFAULT NULL,
  `no_paspor` varchar(10) DEFAULT NULL,
  `tgl_terbit` date DEFAULT NULL,
  `tgl_berakhir` date DEFAULT NULL,
  `tempat_terbit` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `perusahaan`
--

CREATE TABLE `perusahaan` (
  `id_perusahaan` varchar(5) NOT NULL,
  `nm_perusahaan` varchar(25) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `telp` varchar(20) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `piutang_tki`
--

CREATE TABLE `piutang_tki` (
  `id_piutang` varchar(5) NOT NULL,
  `id_tki` varchar(5) DEFAULT NULL,
  `jmlh_hutang` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `provinsi`
--

CREATE TABLE `provinsi` (
  `id_provinsi` varchar(5) NOT NULL,
  `nm_provinsi` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` varchar(5) NOT NULL,
  `username` varchar(25) DEFAULT NULL,
  `password` varchar(25) DEFAULT NULL,
  `nama_lengkap` varchar(50) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  `no_telp` varchar(20) DEFAULT NULL,
  `level` enum('Admin','Administrasi','Manajer','Rekrut') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `byr_piutang`
--
ALTER TABLE `byr_piutang`
  ADD PRIMARY KEY (`id_pembayaran`),
  ADD KEY `id_piutang` (`id_piutang`),
  ADD KEY `id_pembayaran` (`id_pembayaran`);

--
-- Indexes for table `calling_visa_tki`
--
ALTER TABLE `calling_visa_tki`
  ADD PRIMARY KEY (`id_calling_visa`),
  ADD KEY `id_paspor` (`id_paspor`);

--
-- Indexes for table `data_tki`
--
ALTER TABLE `data_tki`
  ADD PRIMARY KEY (`id_tki`),
  ADD KEY `id_provinsi` (`id_provinsi`),
  ADD KEY `id_job_order` (`id_job_order`),
  ADD KEY `id_kota` (`id_kota`);

--
-- Indexes for table `hasil_medical`
--
ALTER TABLE `hasil_medical`
  ADD PRIMARY KEY (`id_medical`),
  ADD KEY `id_tki` (`id_tki`);

--
-- Indexes for table `hasil_termuduga`
--
ALTER TABLE `hasil_termuduga`
  ADD PRIMARY KEY (`id_termuduga`),
  ADD KEY `id_tki` (`id_tki`);

--
-- Indexes for table `job_order`
--
ALTER TABLE `job_order`
  ADD PRIMARY KEY (`id_job_order`),
  ADD KEY `id_perusahaan` (`id_perusahaan`);

--
-- Indexes for table `keberangkatan_tki`
--
ALTER TABLE `keberangkatan_tki`
  ADD PRIMARY KEY (`id_keberangkatan`),
  ADD KEY `id_tki` (`id_tki`),
  ADD KEY `id_tki_2` (`id_tki`);

--
-- Indexes for table `kota`
--
ALTER TABLE `kota`
  ADD PRIMARY KEY (`id_kota`),
  ADD KEY `id_provinsi` (`id_provinsi`);

--
-- Indexes for table `paspor_tki`
--
ALTER TABLE `paspor_tki`
  ADD PRIMARY KEY (`id_paspor`),
  ADD KEY `id_tki` (`id_tki`);

--
-- Indexes for table `perusahaan`
--
ALTER TABLE `perusahaan`
  ADD PRIMARY KEY (`id_perusahaan`);

--
-- Indexes for table `piutang_tki`
--
ALTER TABLE `piutang_tki`
  ADD PRIMARY KEY (`id_piutang`),
  ADD KEY `id_tki` (`id_tki`);

--
-- Indexes for table `provinsi`
--
ALTER TABLE `provinsi`
  ADD PRIMARY KEY (`id_provinsi`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `byr_piutang`
--
ALTER TABLE `byr_piutang`
  ADD CONSTRAINT `byr_piutang_ibfk_1` FOREIGN KEY (`id_piutang`) REFERENCES `piutang_tki` (`id_piutang`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `calling_visa_tki`
--
ALTER TABLE `calling_visa_tki`
  ADD CONSTRAINT `calling_visa_tki_ibfk_1` FOREIGN KEY (`id_paspor`) REFERENCES `paspor_tki` (`id_paspor`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `data_tki`
--
ALTER TABLE `data_tki`
  ADD CONSTRAINT `data_tki_ibfk_1` FOREIGN KEY (`id_provinsi`) REFERENCES `provinsi` (`id_provinsi`),
  ADD CONSTRAINT `data_tki_ibfk_2` FOREIGN KEY (`id_kota`) REFERENCES `kota` (`id_kota`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `data_tki_ibfk_3` FOREIGN KEY (`id_job_order`) REFERENCES `job_order` (`id_job_order`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `hasil_medical`
--
ALTER TABLE `hasil_medical`
  ADD CONSTRAINT `hasil_medical_ibfk_1` FOREIGN KEY (`id_tki`) REFERENCES `data_tki` (`id_tki`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `hasil_termuduga`
--
ALTER TABLE `hasil_termuduga`
  ADD CONSTRAINT `hasil_termuduga_ibfk_1` FOREIGN KEY (`id_tki`) REFERENCES `data_tki` (`id_tki`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `job_order`
--
ALTER TABLE `job_order`
  ADD CONSTRAINT `job_order_ibfk_1` FOREIGN KEY (`id_perusahaan`) REFERENCES `perusahaan` (`id_perusahaan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `keberangkatan_tki`
--
ALTER TABLE `keberangkatan_tki`
  ADD CONSTRAINT `keberangkatan_tki_ibfk_1` FOREIGN KEY (`id_tki`) REFERENCES `data_tki` (`id_tki`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `kota`
--
ALTER TABLE `kota`
  ADD CONSTRAINT `kota_ibfk_1` FOREIGN KEY (`id_provinsi`) REFERENCES `provinsi` (`id_provinsi`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `paspor_tki`
--
ALTER TABLE `paspor_tki`
  ADD CONSTRAINT `paspor_tki_ibfk_1` FOREIGN KEY (`id_tki`) REFERENCES `data_tki` (`id_tki`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `piutang_tki`
--
ALTER TABLE `piutang_tki`
  ADD CONSTRAINT `piutang_tki_ibfk_1` FOREIGN KEY (`id_tki`) REFERENCES `data_tki` (`id_tki`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
