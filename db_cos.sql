-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 09 Jan 2020 pada 06.14
-- Versi server: 10.4.10-MariaDB
-- Versi PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_cos`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `adminrole`
--

CREATE TABLE `adminrole` (
  `id_role` char(5) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `adminrole`
--

INSERT INTO `adminrole` (`id_role`, `name`) VALUES
('AR001', 'Admin Customer Service'),
('AR002', 'Admin CRUD'),
('AR003', 'Admin Newbie'),
('AR004', 'High Admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `admintable`
--

CREATE TABLE `admintable` (
  `id_admin` char(5) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `id_role` char(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admintable`
--

INSERT INTO `admintable` (`id_admin`, `name`, `username`, `password`, `id_role`) VALUES
('AT001', 'Zam Admin', 'zamzam', 'airsuci', 'AR002'),
('AT002', 'Lemma', 'letmeintroduce', 'myself', 'AR001'),
('AT003', 'Manasih', 'dimana', 'siapa', 'AR003'),
('AT004', 'High Admin', 'yourhighness', 'hi', 'AR004'),
('AT005', 'admin', 'admin', 'admin', 'AR001');

-- --------------------------------------------------------

--
-- Struktur dari tabel `berkas`
--

CREATE TABLE `berkas` (
  `id_berkas` char(10) NOT NULL,
  `valid` int(1) DEFAULT NULL,
  `raport` varchar(100) DEFAULT NULL,
  `profilfoto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `berkas`
--

INSERT INTO `berkas` (`id_berkas`, `valid`, `raport`, `profilfoto`) VALUES
('BRAA000001', 0, 'undefined', 'imgBRAA000001.png'),
('BRAA000002', 0, 'undefined', 'undefined'),
('BRAA000003', 1, 'raportBRAA000003.pdf', 'imgBRAA000003.svg'),
('BRAA000004', 0, 'undefined', 'imgBRAA000004.jpg'),
('BRAA000005', 0, 'undefined', 'undefined'),
('BRAA000006', 0, 'undefined', 'undefined'),
('BRAA000007', 0, 'undefined', 'undefined'),
('BRAA000008', 0, 'undefined', 'undefined'),
('BRAA000009', 0, 'undefined', 'undefined'),
('BRAA000010', 0, 'undefined', 'undefined'),
('BRAA000011', 0, 'undefined', 'undefined'),
('BRAA000012', 0, 'undefined', 'undefined'),
('BRAA000013', 0, 'undefined', 'undefined'),
('BRAA000014', 0, 'undefined', 'undefined'),
('BRAA000015', 0, 'undefined', 'undefined'),
('BRAA000016', 0, 'undefined', 'undefined'),
('BRAA000017', 0, 'undefined', 'undefined'),
('BRAA000018', 0, 'undefined', 'undefined'),
('BRAA000019', 0, 'undefined', 'undefined'),
('BRAA000020', 0, 'undefined', 'undefined'),
('BRAA000021', 0, 'undefined', 'undefined'),
('BRAA000022', 0, 'undefined', 'undefined'),
('BRAA000023', 0, 'undefined', 'undefined'),
('BRAA000024', 0, 'undefined', 'undefined'),
('BRAA000025', 0, 'undefined', 'undefined'),
('BRAA000026', 0, 'undefined', 'undefined'),
('BRAA000027', 0, 'undefined', 'undefined'),
('BRAA000028', 0, 'undefined', 'undefined'),
('BRAA000029', 0, 'undefined', 'undefined'),
('BRAA000030', 0, 'undefined', 'undefined'),
('BRAA000031', 0, 'undefined', 'undefined'),
('BRAA000032', 0, 'undefined', 'undefined'),
('BRAA000033', 0, 'undefined', 'undefined'),
('BRAA000034', 0, 'undefined', 'undefined'),
('BRAA000035', 0, 'undefined', 'undefined'),
('BRAA000036', 0, 'undefined', 'undefined'),
('BRAA000037', 0, 'undefined', 'undefined'),
('BRAA000038', 0, 'undefined', 'undefined'),
('BRAA000039', 0, 'undefined', 'undefined'),
('BRAA000040', 0, 'undefined', 'undefined'),
('BRAA000041', 0, 'undefined', 'undefined'),
('BRAA000042', 0, 'undefined', 'undefined'),
('BRAA000043', 0, 'undefined', 'undefined'),
('BRAA000044', 0, 'undefined', 'undefined'),
('BRAA000045', 0, 'undefined', 'undefined'),
('BRAA000046', 0, 'undefined', 'undefined'),
('BRAA000047', 0, 'undefined', 'undefined'),
('BRAA000048', 0, 'undefined', 'undefined'),
('BRAA000049', 0, 'undefined', 'undefined'),
('BRAA000050', 0, 'undefined', 'undefined');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cvguru`
--

CREATE TABLE `cvguru` (
  `id_cv` char(10) NOT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `detail` varchar(100) DEFAULT NULL,
  `berkas` varchar(100) DEFAULT NULL,
  `id_dguru` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_guru`
--

CREATE TABLE `data_guru` (
  `id_dguru` char(10) NOT NULL,
  `nama` varchar(254) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `phone` varchar(14) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `poin` varchar(6) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `id_kabupaten` char(5) DEFAULT NULL,
  `id_peringkat` char(5) DEFAULT NULL,
  `pathfoto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_pengguna`
--

CREATE TABLE `data_pengguna` (
  `id_udata` char(10) NOT NULL,
  `name` varchar(254) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `poin` int(6) DEFAULT NULL,
  `nisn` varchar(10) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `id_kabupaten` char(6) DEFAULT NULL,
  `id_peringkat` char(6) DEFAULT NULL,
  `sekolah` varchar(100) DEFAULT NULL,
  `tingkat` varchar(4) DEFAULT NULL,
  `kelas` varchar(2) DEFAULT NULL,
  `id_berkas` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_pengguna`
--

INSERT INTO `data_pengguna` (`id_udata`, `name`, `tgl_lahir`, `gender`, `poin`, `nisn`, `email`, `phone`, `alamat`, `id_kabupaten`, `id_peringkat`, `sekolah`, `tingkat`, `kelas`, `id_berkas`) VALUES
('UDAA000001', 'Ando', '1999-10-10', 'F', 12, '9993201323', 'lidecorp@workshop.com', '081234567890', 'Jl.Negoro No.34B, Condong Catur', 'KB413', 'PK001', 'SMA N 1 DJ', '', '', 'BRAA000001'),
('UDAA000002', 'Sapa', '1999-10-11', 'M', 42, '9993201444', 'sapa@workshop.com', '081234567222', 'Jl.Jaka No.34B, Condong Catur', 'KB413', 'PK001', 'SMK N 1 Jaka', 'SMK', '1', 'BRAA000002'),
('UDAA000003', 'Baru Membuat', '2003-03-06', 'F', 2002, '9194919191', 'andora@gmail.com', '01010101010', 'Jalan Gunung Salak', 'KB413', 'PK001', 'SMA 1 Gerato', '3', '3', 'BRAA000003'),
('UDAA000004', 'Herlandro Test', '2019-10-09', 'F', 4120, '25252424', 'herlandro@gmail.com', '0832939223', 'Jln Puncak Tidar', 'KB248', 'PK001', 'SMP 2 Kalibata City', 'SMP', '2', 'BRAA000004'),
('UDAA000005', 'Letmego', '2005-01-21', 'F', 0, '9193193233', 'user1@gmail.com', '0832939223', 'Belum mengisi alamat', 'KB000', 'PK001', 'SMA 2 Kalibata City', 'SMA', '1', 'BRAA000005'),
('UDAA000006', 'Naji', '1999-08-26', 'M', 50, '26262727', 'Naji@gmail.com', '08123442950', 'Jl. Garuda No.1', 'KB249', 'PK004', 'SMK Baku Hantam 666', 'SMK', '1', 'BRAA000006'),
('UDAA000007', 'Udin', '1997-02-21', 'M', 200, '9193191345', 'Udin@gmail.com', '0832939251', 'Jl.Jambu No.34B, Condong Catur', 'KB413', 'PK001', 'SMA 2 Jambu City', 'SMA', '2', 'BRAA000007'),
('UDAA000008', 'Gepeng', '2005-03-21', 'M', 100, '9193193236', 'Gepeng@gmail.com', '0832939252', 'Jl.Duren No.34B, Condong Catur', 'KB249', 'PK001', 'SMK 2 Duren City', 'SMK', '3', 'BRAA000008'),
('UDAA000009', 'Aida', '2005-04-21', 'F', 40, '9193193237', 'Aida@gmail.com', '0832939253', 'Jl.Markisa No.34B, Condong Catur', 'KB200', 'PK001', 'SMA 2 Markisa City', 'SMA', '1', 'BRAA000009'),
('UDAA000010', 'Budi', '2005-05-21', 'M', 85, '9193193238', 'Budi@gmail.com', '0832939254', 'Jl.Mangga No.34B, Condong Catur', 'KB413', 'PK001', 'SMK 2 Mangga City', 'SMK', '2', 'BRAA000010'),
('UDAA000011', 'Catika', '2005-06-21', 'M', 75, '9193193239', 'Catika@gmail.com', '0832939255', 'Jl.Jambu No.34B, Condong Catur', 'KB180', 'PK001', 'SMA 2 Jambu City', 'SMA', '3', 'BRAA000011'),
('UDAA000012', 'Jarjit', '2005-07-21', 'M', 1000, '9193193240', 'Jarjit@gmail.com', '0832939256', 'Jl.Manggis No.34B, Condong Catur', 'KB200', 'PK001', 'SMK 2 Manggis City', 'SMK', '1', 'BRAA000012'),
('UDAA000013', 'Devi', '2005-08-21', 'F', 90, '9193193241', 'Devi@gmail.com', '0832939257', 'Jl.Elang No.34B, Condong Catur', 'KB413', 'PK001', 'SMA 2 Elang City', 'SMA', '2', 'BRAA000013'),
('UDAA000014', 'Susi', '2005-09-21', 'F', 65, '9193193242', 'Susi@gmail.com', '0832939258', 'Jl.Angsa No.34B, Condong Catur', 'KB249', 'PK001', 'SMK 2 Angsa City', 'SMK', '3', 'BRAA000014'),
('UDAA000015', 'Jojo', '2005-10-21', 'M', 1090, '9193193243', 'Jojo@gmail.com', '0832939259', 'Jl.Bebek No.34B, Condong Catur', 'KB413', 'PK001', 'SMA 2 Bebek City', 'SMA', '1', 'BRAA000015'),
('UDAA000016', 'Garok', '2005-11-21', 'M', 1080, '9193193244', 'Garok@gmail.com', '0832939260', 'Jl.Kelapa No.34B, Condong Catur', 'KB180', 'PK001', 'SMK 2 Kelapa City', 'SMK', '2', 'BRAA000016'),
('UDAA000017', 'Nanda', '2005-12-21', 'F', 20, '9193193245', 'Nanda@gmail.com', '0832939261', 'Jl.Mujair No.34B, Condong Catur', 'KB314', 'PK001', 'SMA 2 Mujair City', 'SMA', '3', 'BRAA000017'),
('UDAA000018', 'Joni', '2005-01-21', 'M', 10, '9193193246', 'Joni@gmail.com', '0832939262', 'Jl.Nila No.34B, Condong Catur', 'KB413', 'PK001', 'SMK 2 Nila City', 'SMK', '1', 'BRAA000018'),
('UDAA000019', 'Yeyen', '2005-02-21', 'F', 50, '9193193247', 'Yeyen@gmail.com', '0832939263', 'Jl.Gurame No.34B, Condong Catur', 'KB314', 'PK001', 'SMA 2 Gurame City', 'SMA', '2', 'BRAA000019'),
('UDAA000020', 'Ridwan', '2005-03-21', 'M', 90, '9193193248', 'Ridwan@gmail.com', '0832939264', 'Jl.Gagak No.34B, Condong Catur', 'KB249', 'PK001', 'SMK 2 Gagak City', 'SMK', '3', 'BRAA000020'),
('UDAA000021', 'Eka', '2005-04-21', 'F', 40, '9193193249', 'Eka@gmail.com', '0832939265', 'Jl.Pattimura No.34B, Condong Catur', 'KB180', 'PK001', 'SMA 2 Pattimura City', 'SMA', '1', 'BRAA000021'),
('UDAA000022', 'Rhaka', '2005-05-21', 'M', 900, '9193193250', 'Rhaka@gmail.com', '0832939266', 'Jl.Imam Bonjol No.34B, Condong Catur', 'KB180', 'PK001', 'SMA 2 Imam City', 'SMA', '2', 'BRAA000022'),
('UDAA000023', 'Akbar', '2005-06-21', 'F', 800, '9193193251', 'Akbar@gmail.com', '0832939267', 'Jl.Sriwijaya No.34B, Condong Catur', 'KB200', 'PK001', 'SMA 2 Sriwijaya City', 'SMA', '3', 'BRAA000023'),
('UDAA000024', 'Fiah', '2005-07-21', 'M', 500, '9193193252', 'Fiah@gmail.com', '0832939268', 'Jl.Majapahit No.34B, Condong Catur', 'KB249', 'PK001', 'SMA 2 Majapahit City', 'SMA', '1', 'BRAA000024'),
('UDAA000025', 'Mutt', '2005-08-21', 'F', 400, '91931932', 'Mutt@gmail.com', '0832939269', 'Jl.Kerapu No.34B, Condong Catur', 'KB413', 'PK001', 'SMA 2 Kerapu City', 'SMA', '2', 'BRAA000025'),
('UDAA000026', 'Destri', '2005-09-21', 'F', 300, '9193193254', 'Destri@gmail.com', '0832939270', 'Jl.Belimbing No.34B, Condong Catur', 'KB180', 'PK001', 'SMA 2 Belimbing City', 'SMA', '3', 'BRAA000026'),
('UDAA000027', 'Hanif', '2003-10-06', 'M', 1980, '9194919155', 'Hanif@gmail.com', '01010101080', 'Jl.Nangka No.34B, Condong Catur', 'KB413', 'PK001', 'SMA 1 Nangka', 'SMA', '1', 'BRAA000027'),
('UDAA000028', 'Edo', '2019-11-09', 'M', 1870, '25252456', 'Edo@gmail.com', '0832939281', 'Jl.Hiu No.34B, Condong Catur', 'KB249', 'PK001', 'SMA 2 Hiu City', 'SMA', '2', 'BRAA000028'),
('UDAA000029', 'Laila', '2005-12-21', 'F', 1500, '9193193257', 'Laila@gmail.com', '08329392282', 'Jl.Paus No.34B, Condong Catur', 'KB413', 'PK001', 'SMA 2 Paus City', 'SMA', '3', 'BRAA000029'),
('UDAA000030', 'Millen', '2005-01-21', 'F', 1400, '9193193258', 'Millen@gmail.com', '0832939283', 'Jl.Mana No.34B, Condong Catur', 'KB200', 'PK001', 'SMA 2 Kalibata City', 'SMA', '1', 'BRAA000030'),
('UDAA000031', 'Sri', '2005-02-21', 'F', 1300, '9193193259', 'Sri@gmail.com', '0832939284', 'Jl.Sini No.34B, Condong Catur', 'KB314', 'PK001', 'SMK 2 Sini City', 'SMK', '2', 'BRAA000031'),
('UDAA000032', 'Arba', '2005-03-21', 'M', 1200, '9193193260', 'Arba@gmail.com', '0832939285', 'Jl.Sana No.34B, Condong Catur', 'KB249', 'PK001', 'SMK 2 Sana City', 'SMK', '3', 'BRAA000032'),
('UDAA000033', 'Daffa', '2005-04-21', 'M', 1000, '9193193270', 'Daffa@gmail.com', '0832939286', 'Jl.Nanas No.34B, Condong Catur', 'KB180', 'PK001', 'SMK 2 Nanas City', 'SMK', '1', 'BRAA000033'),
('UDAA000034', 'Yudi', '2005-05-21', 'M', 405, '9193193271', 'Yudi@gmail.com', '0832939287', 'Jl.Alas No.34B, Condong Catur', 'KB200', 'PK001', 'SMK 2 Alas City', 'SMK', '2', 'BRAA000034'),
('UDAA000035', 'Selva', '2005-06-21', 'F', 320, '9193193272', 'Selva@gmail.com', '0832939288', 'Jl.Matoa No.34B, Condong Catur', 'KB314', 'PK001', 'SMK 2 Matoa City', 'SMK', '3', 'BRAA000035'),
('UDAA000036', 'Rahma', '2005-07-21', 'F', 120, '9193193273', 'Rahma@gmail.com', '0832939289', 'Jl.Kukup No.34B, Condong Catur', 'KB249', 'PK001', 'SMK 2 Kukup City', 'SMK', '1', 'BRAA000036'),
('UDAA000037', 'Faisal', '2005-08-21', 'M', 60, '9193193274', 'Faisal@gmail.com', '0832939290', 'Jl.Tulip No.34B, Condong Catur', 'KB180', 'PK001', 'SMK 2 Tulip City', 'SMK', '2', 'BRAA000037'),
('UDAA000038', 'Amin', '2005-09-21', 'M', 70, '9193193275', 'Amin@gmail.com', '0832939100', 'Jl.Melati No.34B, Condong Catur', 'KB200', 'PK001', 'SMK 2 Melati City', 'SMK', '3', 'BRAA000038'),
('UDAA000039', 'Ade', '2005-10-21', 'M', 80, '91931932', 'Ade@gmail.com', '0832939101', 'Jl.Mawar No.34B, Condong Catur', 'KB314', 'PK001', 'SMK 2 Mawar City', 'SMK', '1', 'BRAA000039'),
('UDAA000040', 'Rudi', '2005-11-21', 'M', 90, '9193193277', 'Rudi@gmail.com', '0832939102', 'Jl.Anggrek No.34B, Condong Catur', 'KB249', 'PK001', 'SMK 2 Anggrek City', 'SMK', '2', 'BRAA000040'),
('UDAA000041', 'Denny', '2005-12-21', 'M', 100, '9193193278', 'Denny@gmail.com', '0832939103', 'Jl.Kamboja No.34B, Condong Catur', 'KB180', 'PK001', 'SMK 2 Kamboja City', 'SMK', '3', 'BRAA000041'),
('UDAA000042', 'Rizki', '2005-01-21', 'F', 105, '9193193279', 'Rizki@gmail.com', '0832939104', 'Jl.Pok No.34B, Condong Catur', 'KB200', 'PK001', 'SMK 2 Pok City', 'SMK', '1', 'BRAA000042'),
('UDAA000043', 'Dista', '2005-02-21', 'F', 205, '9193193280', 'Dista@gmail.com', '0832939105', 'Jl.Rajawali No.34B, Condong Catur', 'KB314', 'PK001', 'SMK 2 Rajawali City', 'SMK', '2', 'BRAA000043'),
('UDAA000044', 'Ima', '2005-03-21', 'F', 305, '9193193281', 'Ima@gmail.com', '0832939106', 'Jl.Roki No.34B, Condong Catur', 'KB200', 'PK001', 'SMK 2 Roki City', 'SMK', '3', 'BRAA000044'),
('UDAA000045', 'Nurul', '2005-04-21', 'F', 405, '9193193282', 'Nurul@gmail.com', '08329392107', 'Jl.Mabel No.34B, Condong Catur', 'KB180', 'PK001', 'SMK 2 Mabel City', 'SMK', '1', 'BRAA000045'),
('UDAA000046', 'Della', '2005-05-21', 'F', 300, '9193193283', 'Della@gmail.com', '08329392108', 'Jl.Brawijaya No.34B, Condong Catur', 'KB314', 'PK001', 'SMP 2 Brawijaya City', 'SMP', '2', 'BRAA000046'),
('UDAA000047', 'Aisyah', '2005-06-21', 'F', 150, '9193193284', 'Aisyah@gmail.com', '08329392109', 'Jl.Sanjaya No.34B, Condong Catur', 'KB200', 'PK001', 'SMP 2 Sanjaya City', 'SMP', '3', 'BRAA000047'),
('UDAA000048', 'Nando', '2005-07-21', 'M', 105, '9193193285', 'Nando@gmail.com', '0832939110', 'Jl.Jayajaya No.34B, Condong Catur', 'KB180', 'PK001', 'SMP 2 Jayajaya City', 'SMP', '1', 'BRAA000048'),
('UDAA000049', 'Isti', '2005-08-21', 'F', 90, '9193193286', 'Isti@gmail.com', '0832939111', 'Jl.Hoki No.34B, Condong Catur', 'KB200', 'PK001', 'SMP 2 Hoki City', 'SMP', '2', 'BRAA000049'),
('UDAA000050', 'Viga', '2005-09-21', 'F', 220, '9193193287', 'Viga@gmail.com', '0832939112', 'Jl.Kolam No.34B, Condong Catur', 'KB314', 'PK001', 'SMP 2 Kolam City', 'SMP', '3', 'BRAA000050');

-- --------------------------------------------------------

--
-- Struktur dari tabel `forget_password`
--

CREATE TABLE `forget_password` (
  `verify_code` int(10) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `id_guru` char(10) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `id_dguru` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `help_ticket`
--

CREATE TABLE `help_ticket` (
  `id_ticket` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `judul_ticket` varchar(50) NOT NULL,
  `jenis_ticket` varchar(50) NOT NULL,
  `isi_ticket` text NOT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `help_ticket`
--

INSERT INTO `help_ticket` (`id_ticket`, `name`, `email`, `judul_ticket`, `jenis_ticket`, `isi_ticket`, `status`) VALUES
(1, 'Rhaka Novyansyah Dewanto', 'rhakadewanto26@gmail.com', 'Web Bug', 'Report Bug', 'Halo,\r\nsaya Rhaka kelas 2 smp', 'Read'),
(2, 'Rhaka Novyansyah Dewanto', 'rhakadewanto@gmail.com', 'assas', 'Others', 'wew andah hebath', 'Read'),
(3, 'Forget Password', 'herlandroaaa@gmail.com', 'Forget Password', 'Forget Password', '1903400125', 'Read'),
(4, 'akbar Hari', 'akbar@gmail.co.id', 'Weeheee', 'Others', 'waw aku terkejut', 'Read'),
(5, 'herlandro', 'herlandroo@yahoo.com', 'Password salah katanya', 'Report Bug', 'ada bug mas.\r\n\r\nsaya sudah coba beberapa kali tetep gabisa', 'Read'),
(9, 'BRAA000003,Baru Membuat', 'andora@gmail.com', 'Validasi Rapot', 'Validasi', 'Validasi rapot untuk menggunakan fitur cari partner.', 'Read'),
(10, 'UDAA000003,Baru Membuat', 'andora@gmail.com', 'Validasi Rapot', 'Validasi', 'Validasi rapot untuk menggunakan fitur cari partner.', 'Unread'),
(11, 'UDAA000003,Baru Membuat', 'andora@gmail.com', 'Validasi Rapot', 'Validasi', 'Validasi rapot untuk menggunakan fitur cari partner.', 'Unread');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal_guru`
--

CREATE TABLE `jadwal_guru` (
  `id_jguru` char(10) NOT NULL,
  `id_dguru` char(10) DEFAULT NULL,
  `tanggal_ngajar` date DEFAULT NULL,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kabupaten`
--

CREATE TABLE `kabupaten` (
  `id_kabupaten` char(5) NOT NULL,
  `name` varchar(60) DEFAULT NULL,
  `id_prov` char(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kabupaten`
--

INSERT INTO `kabupaten` (`id_kabupaten`, `name`, `id_prov`) VALUES
('KB000', 'Belum memilih Kabupaten', 'PR000'),
('KB001', 'Kabupaten Aceh Barat Daya', 'PR024'),
('KB002', 'Kabupaten Aceh Barat', 'PR024'),
('KB003', 'Kabupaten Aceh Besar', 'PR024'),
('KB004', 'Kabupaten Aceh Jaya', 'PR024'),
('KB005', 'Kabupaten Aceh Selatan', 'PR024'),
('KB006', 'Kabupaten Aceh Singkil', 'PR024'),
('KB007', 'Kabupaten Aceh Tamiang', 'PR024'),
('KB008', 'Kabupaten Aceh Tengah', 'PR024'),
('KB009', 'Kabupaten Aceh Tenggara', 'PR024'),
('KB010', 'Kabupaten Aceh Timur', 'PR024'),
('KB011', 'Kabupaten Aceh Utara', 'PR024'),
('KB012', 'Kabupaten Bener Meriah', 'PR024'),
('KB013', 'Kabupaten Bireuen', 'PR024'),
('KB014', 'Kabupaten Gayo Lues', 'PR024'),
('KB015', 'Kabupaten Nagan Raya', 'PR024'),
('KB016', 'Kabupaten Pidie Jaya', 'PR024'),
('KB017', 'Kabupaten Pidie', 'PR024'),
('KB018', 'Kabupaten Simeulue', 'PR024'),
('KB019', 'Kabupaten Badung', 'PR014'),
('KB020', 'Kabupaten Bangli', 'PR014'),
('KB021', 'Kabupaten Buleleng', 'PR014'),
('KB022', 'Kabupaten Gianyar', 'PR014'),
('KB023', 'Kabupaten Jembrana', 'PR014'),
('KB024', 'Kabupaten Karangasem', 'PR014'),
('KB025', 'Kabupaten Klungkung', 'PR014'),
('KB026', 'Kabupaten Tabanan', 'PR014'),
('KB027', 'Kabupaten Lebak', 'PR001'),
('KB028', 'Kabupaten Pandeglang', 'PR001'),
('KB029', 'Kabupaten Serang', 'PR001'),
('KB030', 'Kabupaten Tangerang', 'PR001'),
('KB031', 'Kabupaten Bengkulu Selatan', 'PR025'),
('KB032', 'Kabupaten Bengkulu Tengah', 'PR025'),
('KB033', 'Kabupaten Bengkulu Utara', 'PR025'),
('KB034', 'Kabupaten Kaur', 'PR025'),
('KB035', 'Kabupaten Kepahiang', 'PR025'),
('KB036', 'Kabupaten Lebong', 'PR025'),
('KB037', 'Kabupaten Mukomuko', 'PR025'),
('KB038', 'Kabupaten Rejang Lebong', 'PR025'),
('KB039', 'Kabupaten Seluma', 'PR025'),
('KB040', 'Kabupaten Boalemo', 'PR019'),
('KB041', 'Kabupaten Bone Bolango', 'PR019'),
('KB042', 'Kabupaten Gorontalo Utara', 'PR019'),
('KB043', 'Kabupaten Gorontalo', 'PR019'),
('KB044', 'Kabupaten Pohuwato', 'PR019'),
('KB045', 'Kabupaten Administrasi Kepulauan Seribu', 'PR002'),
('KB046', 'Kabupaten Batanghari', 'PR026'),
('KB047', 'Kabupaten Bungo', 'PR026'),
('KB048', 'Kabupaten Kerinci', 'PR026'),
('KB049', 'Kabupaten Merangin', 'PR026'),
('KB050', 'Kabupaten Muaro Jambi', 'PR026'),
('KB051', 'Kabupaten Sarolangun', 'PR026'),
('KB052', 'Kabupaten Tanjung Jabung Barat', 'PR026'),
('KB053', 'Kabupaten Tanjung Jabung Timur', 'PR026'),
('KB054', 'Kabupaten Tebo', 'PR026'),
('KB055', 'Kabupaten Bandung Barat', 'PR003'),
('KB056', 'Kabupaten Bandung', 'PR003'),
('KB057', 'Kabupaten Bekasi', 'PR003'),
('KB058', 'Kabupaten Bogor', 'PR003'),
('KB059', 'Kabupaten Ciamis', 'PR003'),
('KB060', 'Kabupaten Cianjur', 'PR003'),
('KB061', 'Kabupaten Cirebon', 'PR003'),
('KB062', 'Kabupaten Garut', 'PR003'),
('KB063', 'Kabupaten Indramayu', 'PR003'),
('KB064', 'Kabupaten Karawang', 'PR003'),
('KB065', 'Kabupaten Kuningan', 'PR003'),
('KB066', 'Kabupaten Majalengka', 'PR003'),
('KB067', 'Kabupaten Pangandaran', 'PR003'),
('KB068', 'Kabupaten Purwakarta', 'PR003'),
('KB069', 'Kabupaten Subang', 'PR003'),
('KB070', 'Kabupaten Sukabumi', 'PR003'),
('KB071', 'Kabupaten Sumedang', 'PR003'),
('KB072', 'Kabupaten Tasikmalaya', 'PR003'),
('KB073', 'Kabupaten Banjarnegara', 'PR004'),
('KB074', 'Kabupaten Banyumas', 'PR004'),
('KB075', 'Kabupaten Batang', 'PR004'),
('KB076', 'Kabupaten Blora', 'PR004'),
('KB077', 'Kabupaten Boyolali', 'PR004'),
('KB078', 'Kabupaten Brebes', 'PR004'),
('KB079', 'Kabupaten Cilacap', 'PR004'),
('KB080', 'Kabupaten Demak', 'PR004'),
('KB081', 'Kabupaten Grobogan', 'PR004'),
('KB082', 'Kabupaten Jepara', 'PR004'),
('KB083', 'Kabupaten Karanganyar', 'PR004'),
('KB084', 'Kabupaten Kebumen', 'PR004'),
('KB085', 'Kabupaten Kendal', 'PR004'),
('KB086', 'Kabupaten Klaten', 'PR004'),
('KB087', 'Kabupaten Kudus', 'PR004'),
('KB088', 'Kabupaten Magelang', 'PR004'),
('KB089', 'Kabupaten Pati', 'PR004'),
('KB090', 'Kabupaten Pekalongan', 'PR004'),
('KB091', 'Kabupaten Pemalang', 'PR004'),
('KB092', 'Kabupaten Purbalingga', 'PR004'),
('KB093', 'Kabupaten Purworejo', 'PR004'),
('KB094', 'Kabupaten Rembang', 'PR004'),
('KB095', 'Kabupaten Semarang', 'PR004'),
('KB096', 'Kabupaten Sragen', 'PR004'),
('KB097', 'Kabupaten Sukoharjo', 'PR004'),
('KB098', 'Kabupaten Tegal', 'PR004'),
('KB099', 'Kabupaten Temanggung', 'PR004'),
('KB100', 'Kabupaten Wonogiri', 'PR004'),
('KB101', 'Kabupaten Wonosobo', 'PR004'),
('KB102', 'Kabupaten Bangkalan', 'PR005'),
('KB103', 'Kabupaten Banyuwangi', 'PR005'),
('KB104', 'Kabupaten Blitar', 'PR005'),
('KB105', 'Kabupaten Bojonegoro', 'PR005'),
('KB106', 'Kabupaten Bondowoso', 'PR005'),
('KB107', 'Kabupaten Gresik', 'PR005'),
('KB108', 'Kabupaten Jember', 'PR005'),
('KB109', 'Kabupaten Jombang', 'PR005'),
('KB110', 'Kabupaten Kediri', 'PR005'),
('KB111', 'Kabupaten Lamongan', 'PR005'),
('KB112', 'Kabupaten Lumajang', 'PR005'),
('KB113', 'Kabupaten Madiun', 'PR005'),
('KB114', 'Kabupaten Magetan', 'PR005'),
('KB115', 'Kabupaten Malang', 'PR005'),
('KB116', 'Kabupaten Mojokerto', 'PR005'),
('KB117', 'Kabupaten Nganjuk', 'PR005'),
('KB118', 'Kabupaten Ngawi', 'PR005'),
('KB119', 'Kabupaten Pacitan', 'PR005'),
('KB120', 'Kabupaten Pamekasan', 'PR005'),
('KB121', 'Kabupaten Pasuruan', 'PR005'),
('KB122', 'Kabupaten Ponorogo', 'PR005'),
('KB123', 'Kabupaten Probolinggo', 'PR005'),
('KB124', 'Kabupaten Sampang', 'PR005'),
('KB125', 'Kabupaten Sidoarjo', 'PR005'),
('KB126', 'Kabupaten Situbondo', 'PR005'),
('KB127', 'Kabupaten Sumenep', 'PR005'),
('KB128', 'Kabupaten Trenggalek', 'PR005'),
('KB129', 'Kabupaten Tuban', 'PR005'),
('KB130', 'Kabupaten Tulungagung', 'PR005'),
('KB131', 'Kabupaten Bengkayang', 'PR007'),
('KB132', 'Kabupaten Kapuas Hulu', 'PR007'),
('KB133', 'Kabupaten Kayong Utara', 'PR007'),
('KB134', 'Kabupaten Ketapang', 'PR007'),
('KB135', 'Kabupaten Kubu Raya', 'PR007'),
('KB136', 'Kabupaten Landak', 'PR007'),
('KB137', 'Kabupaten Melawi', 'PR007'),
('KB138', 'Kabupaten Mempawah', 'PR007'),
('KB139', 'Kabupaten Sambas', 'PR007'),
('KB140', 'Kabupaten Sanggau', 'PR007'),
('KB141', 'Kabupaten Sekadau', 'PR007'),
('KB142', 'Kabupaten Sintang', 'PR007'),
('KB143', 'Kabupaten Balangan', 'PR008'),
('KB144', 'Kabupaten Banjar', 'PR008'),
('KB145', 'Kabupaten Barito Kuala', 'PR008'),
('KB146', 'Kabupaten Hulu Sungai Selatan', 'PR008'),
('KB147', 'Kabupaten Hulu Sungai Tengah', 'PR008'),
('KB148', 'Kabupaten Hulu Sungai Utara', 'PR008'),
('KB149', 'Kabupaten Kotabaru', 'PR008'),
('KB150', 'Kabupaten Tabalong', 'PR008'),
('KB151', 'Kabupaten Tanah Bumbu', 'PR008'),
('KB152', 'Kabupaten Tanah Laut', 'PR008'),
('KB153', 'Kabupaten Tapin', 'PR008'),
('KB154', 'Kabupaten Barito Selatan', 'PR009'),
('KB155', 'Kabupaten Barito Timur', 'PR009'),
('KB156', 'Kabupaten Barito Utara', 'PR009'),
('KB157', 'Kabupaten Gunung Mas', 'PR009'),
('KB158', 'Kabupaten Kapuas', 'PR009'),
('KB159', 'Kabupaten Katingan', 'PR009'),
('KB160', 'Kabupaten Kotawaringin Barat', 'PR009'),
('KB161', 'Kabupaten Kotawaringin Timur', 'PR009'),
('KB162', 'Kabupaten Lamandau', 'PR009'),
('KB163', 'Kabupaten Murung Raya', 'PR009'),
('KB164', 'Kabupaten Pulang Pisau', 'PR009'),
('KB165', 'Kabupaten Seruyan', 'PR009'),
('KB166', 'Kabupaten Sukamara', 'PR009'),
('KB167', 'Kabupaten Berau', 'PR010'),
('KB168', 'Kabupaten Kutai Barat', 'PR010'),
('KB169', 'Kabupaten Kutai Kartanegara', 'PR010'),
('KB170', 'Kabupaten Kutai Timur', 'PR010'),
('KB171', 'Kabupaten Mahakam Ulu', 'PR010'),
('KB172', 'Kabupaten Paser', 'PR010'),
('KB173', 'Kabupaten Penajam Paser Utara', 'PR010'),
('KB174', 'Kabupaten Bulungan', 'PR011'),
('KB175', 'Kabupaten Malinau', 'PR011'),
('KB176', 'Kabupaten Nunukan', 'PR011'),
('KB177', 'Kabupaten Tana Tidung', 'PR011'),
('KB178', 'Kabupaten Bangka Barat', 'PR027'),
('KB179', 'Kabupaten Bangka Selatan', 'PR027'),
('KB180', 'Kabupaten Bangka Tengah', 'PR027'),
('KB181', 'Kabupaten Bangka', 'PR027'),
('KB182', 'Kabupaten Belitung Timur', 'PR027'),
('KB183', 'Kabupaten Belitung', 'PR027'),
('KB184', 'Kabupaten Bintan', 'PR028'),
('KB185', 'Kabupaten Karimun', 'PR028'),
('KB186', 'Kabupaten Kepulauan Anambas', 'PR028'),
('KB187', 'Kabupaten Lingga', 'PR028'),
('KB188', 'Kabupaten Natuna', 'PR028'),
('KB189', 'Kabupaten Lampung Barat', 'PR029'),
('KB190', 'Kabupaten Lampung Selatan', 'PR029'),
('KB191', 'Kabupaten Lampung Tengah', 'PR029'),
('KB192', 'Kabupaten Lampung Timur', 'PR029'),
('KB193', 'Kabupaten Lampung Utara', 'PR029'),
('KB194', 'Kabupaten Mesuji', 'PR029'),
('KB195', 'Kabupaten Pesawaran', 'PR029'),
('KB196', 'Kabupaten Pesisir Barat', 'PR029'),
('KB197', 'Kabupaten Pringsewu', 'PR029'),
('KB198', 'Kabupaten Tanggamus', 'PR029'),
('KB199', 'Kabupaten Tulang Bawang Barat', 'PR029'),
('KB200', 'Kabupaten Tulang Bawang', 'PR029'),
('KB201', 'Kabupaten Way Kanan', 'PR029'),
('KB202', 'Kabupaten Buru Selatan', 'PR012'),
('KB203', 'Kabupaten Buru', 'PR012'),
('KB204', 'Kabupaten Kepulauan Aru', 'PR012'),
('KB205', 'Kabupaten Maluku Barat Daya', 'PR012'),
('KB206', 'Kabupaten Maluku Tengah', 'PR012'),
('KB207', 'Kabupaten Maluku Tenggara Barat', 'PR012'),
('KB208', 'Kabupaten Maluku Tenggara', 'PR012'),
('KB209', 'Kabupaten Seram Bagian Barat', 'PR012'),
('KB210', 'Kabupaten Seram Bagian Timur', 'PR012'),
('KB211', 'Kabupaten Halmahera Barat', 'PR013'),
('KB212', 'Kabupaten Halmahera Selatan', 'PR013'),
('KB213', 'Kabupaten Halmahera Tengah', 'PR013'),
('KB214', 'Kabupaten Halmahera Timur', 'PR013'),
('KB215', 'Kabupaten Halmahera Utara', 'PR013'),
('KB216', 'Kabupaten Kepulauan Sula', 'PR013'),
('KB217', 'Kabupaten Pulau Morotai', 'PR013'),
('KB218', 'Kabupaten Pulau Taliabu', 'PR013'),
('KB219', 'Kabupaten Bima', 'PR015'),
('KB220', 'Kabupaten Dompu', 'PR015'),
('KB221', 'Kabupaten Lombok Barat', 'PR015'),
('KB222', 'Kabupaten Lombok Tengah', 'PR015'),
('KB223', 'Kabupaten Lombok Timur', 'PR015'),
('KB224', 'Kabupaten Lombok Utara', 'PR015'),
('KB225', 'Kabupaten Sumbawa Barat', 'PR015'),
('KB226', 'Kabupaten Sumbawa', 'PR015'),
('KB227', 'Kabupaten Alor', 'PR016'),
('KB228', 'Kabupaten Belu', 'PR016'),
('KB229', 'Kabupaten Ende', 'PR016'),
('KB230', 'Kabupaten Flores Timur', 'PR016'),
('KB231', 'Kabupaten Kupang', 'PR016'),
('KB232', 'Kabupaten Lembata', 'PR016'),
('KB233', 'Kabupaten Malaka', 'PR016'),
('KB234', 'Kabupaten Manggarai Barat', 'PR016'),
('KB235', 'Kabupaten Manggarai Timur', 'PR016'),
('KB236', 'Kabupaten Manggarai', 'PR016'),
('KB237', 'Kabupaten Nagekeo', 'PR016'),
('KB238', 'Kabupaten Ngada', 'PR016'),
('KB239', 'Kabupaten Rote Ndao', 'PR016'),
('KB240', 'Kabupaten Sabu Raijua', 'PR016'),
('KB241', 'Kabupaten Sikka', 'PR016'),
('KB242', 'Kabupaten Sumba Barat Daya', 'PR016'),
('KB243', 'Kabupaten Sumba Barat', 'PR016'),
('KB244', 'Kabupaten Sumba Tengah', 'PR016'),
('KB245', 'Kabupaten Sumba Timur', 'PR016'),
('KB246', 'Kabupaten Timor Tengah Selatan', 'PR016'),
('KB247', 'Kabupaten Timor Tengah Utara', 'PR016'),
('KB248', 'Kabupaten Asmat', 'PR017'),
('KB249', 'Kabupaten Biak Numfor', 'PR017'),
('KB250', 'Kabupaten Boven Digoel', 'PR017'),
('KB251', 'Kabupaten Deiyai', 'PR017'),
('KB252', 'Kabupaten Dogiyai', 'PR017'),
('KB253', 'Kabupaten Intan Jaya', 'PR017'),
('KB254', 'Kabupaten Jayapura', 'PR017'),
('KB255', 'Kabupaten Jayawijaya', 'PR017'),
('KB256', 'Kabupaten Keerom', 'PR017'),
('KB257', 'Kabupaten Kepulauan Yapen', 'PR017'),
('KB258', 'Kabupaten Lanny Jaya', 'PR017'),
('KB259', 'Kabupaten Mamberamo Raya', 'PR017'),
('KB260', 'Kabupaten Mamberamo Tengah', 'PR017'),
('KB261', 'Kabupaten Mappi', 'PR017'),
('KB262', 'Kabupaten Merauke', 'PR017'),
('KB263', 'Kabupaten Mimika', 'PR017'),
('KB264', 'Kabupaten Nabire', 'PR017'),
('KB265', 'Kabupaten Nduga', 'PR017'),
('KB266', 'Kabupaten Paniai', 'PR017'),
('KB267', 'Kabupaten Pegunungan Bintang', 'PR017'),
('KB268', 'Kabupaten Puncak Jaya', 'PR017'),
('KB269', 'Kabupaten Puncak', 'PR017'),
('KB270', 'Kabupaten Sarmi', 'PR017'),
('KB271', 'Kabupaten Supiori', 'PR017'),
('KB272', 'Kabupaten Tolikara', 'PR017'),
('KB273', 'Kabupaten Waropen', 'PR017'),
('KB274', 'Kabupaten Yahukimo', 'PR017'),
('KB275', 'Kabupaten Yalimo', 'PR017'),
('KB276', 'Kabupaten Fakfak', 'PR018'),
('KB277', 'Kabupaten Kaimana', 'PR018'),
('KB278', 'Kabupaten Manokwari', 'PR018'),
('KB279', 'Kabupaten Manokwari Selatan', 'PR018'),
('KB280', 'Kabupaten Maybrat', 'PR018'),
('KB281', 'Kabupaten Pegunungan Arfak', 'PR018'),
('KB282', 'Kabupaten Raja Ampat', 'PR018'),
('KB283', 'Kabupaten Sorong', 'PR018'),
('KB284', 'Kabupaten Sorong Selatan', 'PR018'),
('KB285', 'Kabupaten Tambrauw', 'PR018'),
('KB286', 'Kabupaten Teluk Bintuni', 'PR018'),
('KB287', 'Kabupaten Teluk Wondama', 'PR018'),
('KB288', 'Kabupaten Bengkalis', 'PR030'),
('KB289', 'Kabupaten Indragiri Hilir', 'PR030'),
('KB290', 'Kabupaten Indragiri Hulu', 'PR030'),
('KB291', 'Kabupaten Kampar', 'PR030'),
('KB292', 'Kabupaten Kepulauan Meranti', 'PR030'),
('KB293', 'Kabupaten Kuantan Singingi', 'PR030'),
('KB294', 'Kabupaten Pelalawan', 'PR030'),
('KB295', 'Kabupaten Rokan Hilir', 'PR030'),
('KB296', 'Kabupaten Rokan Hulu', 'PR030'),
('KB297', 'Kabupaten Siak', 'PR030'),
('KB298', 'Kabupaten Majene', 'PR020'),
('KB299', 'Kabupaten Mamasa', 'PR020'),
('KB300', 'Kabupaten Mamuju', 'PR020'),
('KB301', 'Kabupaten Mamuju Tengah', 'PR020'),
('KB302', 'Kabupaten Mamuju Utara', 'PR020'),
('KB303', 'Kabupaten Polewali Mandar', 'PR020'),
('KB304', 'Kabupaten Bantaeng', 'PR021'),
('KB305', 'Kabupaten Barru', 'PR021'),
('KB306', 'Kabupaten Bone', 'PR021'),
('KB307', 'Kabupaten Bulukumba', 'PR021'),
('KB308', 'Kabupaten Enrekang', 'PR021'),
('KB309', 'Kabupaten Gowa', 'PR021'),
('KB310', 'Kabupaten Jeneponto', 'PR021'),
('KB311', 'Kabupaten Kepulauan Selayar', 'PR021'),
('KB312', 'Kabupaten Luwu', 'PR021'),
('KB313', 'Kabupaten Luwu Timur', 'PR021'),
('KB314', 'Kabupaten Luwu Utara', 'PR021'),
('KB315', 'Kabupaten Maros', 'PR021'),
('KB316', 'Kabupaten Pangkajene dan Kepulauan', 'PR021'),
('KB317', 'Kabupaten Pinrang', 'PR021'),
('KB318', 'Kabupaten Sidenreng Rappang', 'PR021'),
('KB319', 'Kabupaten Sinjai', 'PR021'),
('KB320', 'Kabupaten Soppeng', 'PR021'),
('KB321', 'Kabupaten Takalar', 'PR021'),
('KB322', 'Kabupaten Tana Toraja', 'PR021'),
('KB323', 'Kabupaten Toraja Utara', 'PR021'),
('KB324', 'Kabupaten Wajo', 'PR021'),
('KB325', 'Kabupaten Banggai', 'PR034'),
('KB326', 'Kabupaten Banggai Kepulauan', 'PR034'),
('KB327', 'Kabupaten Banggai Laut', 'PR034'),
('KB328', 'Kabupaten Buol', 'PR034'),
('KB329', 'Kabupaten Donggala', 'PR034'),
('KB330', 'Kabupaten Morowali', 'PR034'),
('KB331', 'Kabupaten Morowali Utara', 'PR034'),
('KB332', 'Kabupaten Parigi Moutong', 'PR034'),
('KB333', 'Kabupaten Poso', 'PR034'),
('KB334', 'Kabupaten Sigi', 'PR034'),
('KB335', 'Kabupaten Tojo Una-Una', 'PR034'),
('KB336', 'Kabupaten Toli-Toli', 'PR034'),
('KB337', 'Kabupaten Bombana', 'PR022'),
('KB338', 'Kabupaten Buton', 'PR022'),
('KB339', 'Kabupaten Buton Selatan', 'PR022'),
('KB340', 'Kabupaten Buton Tengah', 'PR022'),
('KB341', 'Kabupaten Buton Utara', 'PR022'),
('KB342', 'Kabupaten Kolaka', 'PR022'),
('KB343', 'Kabupaten Kolaka Timur', 'PR022'),
('KB344', 'Kabupaten Kolaka Utara', 'PR022'),
('KB345', 'Kabupaten Konawe Kepulauan', 'PR022'),
('KB346', 'Kabupaten Konawe Selatan', 'PR022'),
('KB347', 'Kabupaten Konawe Utara', 'PR022'),
('KB348', 'Kabupaten Konawe', 'PR022'),
('KB349', 'Kabupaten Muna', 'PR022'),
('KB350', 'Kabupaten Muna Barat', 'PR022'),
('KB351', 'Kabupaten Wakatobi', 'PR022'),
('KB352', 'Kabupaten Bolaang Mongondow', 'PR023'),
('KB353', 'Kabupaten Bolaang Mongondow Selatan', 'PR023'),
('KB354', 'Kabupaten Bolaang Mongondow Timur', 'PR023'),
('KB355', 'Kabupaten Bolaang Mongondow Utara', 'PR023'),
('KB356', 'Kabupaten Kepulauan Sangihe', 'PR023'),
('KB357', 'Kabupaten Kepulauan Siau Tagulandang Biaro', 'PR023'),
('KB358', 'Kabupaten Kepulauan Talaud', 'PR023'),
('KB359', 'Kabupaten Minahasa', 'PR023'),
('KB360', 'Kabupaten Minahasa Selatan', 'PR023'),
('KB361', 'Kabupaten Minahasa Tenggara', 'PR023'),
('KB362', 'Kabupaten Minahasa Utara', 'PR023'),
('KB363', 'Kabupaten Agam', 'PR031'),
('KB364', 'Kabupaten Dharmasraya', 'PR031'),
('KB365', 'Kabupaten Kepulauan Mentawai', 'PR031'),
('KB366', 'Kabupaten Lima Puluh Kota', 'PR031'),
('KB367', 'Kabupaten Padang Pariaman', 'PR031'),
('KB368', 'Kabupaten Pasaman Barat', 'PR031'),
('KB369', 'Kabupaten Pasaman', 'PR031'),
('KB370', 'Kabupaten Pesisir Selatan', 'PR031'),
('KB371', 'Kabupaten Sijunjung', 'PR031'),
('KB372', 'Kabupaten Solok Selatan', 'PR031'),
('KB373', 'Kabupaten Solok', 'PR031'),
('KB374', 'Kabupaten Tanah Datar', 'PR031'),
('KB375', 'Kabupaten Banyuasin', 'PR032'),
('KB376', 'Kabupaten Empat Lawang', 'PR032'),
('KB377', 'Kabupaten Lahat', 'PR032'),
('KB378', 'Kabupaten Muara Enim', 'PR032'),
('KB379', 'Kabupaten Musi Banyuasin', 'PR032'),
('KB380', 'Kabupaten Musi Rawas', 'PR032'),
('KB381', 'Kabupaten Musi Rawas Utara', 'PR032'),
('KB382', 'Kabupaten Ogan Ilir', 'PR032'),
('KB383', 'Kabupaten Ogan Komering Ilir', 'PR032'),
('KB384', 'Kabupaten Ogan Komering Ulu Selatan', 'PR032'),
('KB385', 'Kabupaten Ogan Komering Ulu Timur', 'PR032'),
('KB386', 'Kabupaten Ogan Komering Ulu', 'PR032'),
('KB387', 'Kabupaten Penukal Abab Lematang Ilir', 'PR032'),
('KB388', 'Kabupaten Asahan', 'PR033'),
('KB389', 'Kabupaten Batubara', 'PR033'),
('KB390', 'Kabupaten Dairi', 'PR033'),
('KB391', 'Kabupaten Deli Serdang', 'PR033'),
('KB392', 'Kabupaten Humbang Hasundutan', 'PR033'),
('KB393', 'Kabupaten Karo', 'PR033'),
('KB394', 'Kabupaten Labuhanbatu Selatan', 'PR033'),
('KB395', 'Kabupaten Labuhanbatu Utara', 'PR033'),
('KB396', 'Kabupaten Labuhanbatu', 'PR033'),
('KB397', 'Kabupaten Langkat', 'PR033'),
('KB398', 'Kabupaten Mandailing Natal', 'PR033'),
('KB399', 'Kabupaten Nias Barat', 'PR033'),
('KB400', 'Kabupaten Nias Selatan', 'PR033'),
('KB401', 'Kabupaten Nias Utara', 'PR033'),
('KB402', 'Kabupaten Nias', 'PR033'),
('KB403', 'Kabupaten Padang Lawas Utara', 'PR033'),
('KB404', 'Kabupaten Padang Lawas', 'PR033'),
('KB405', 'Kabupaten Pakpak Bharat', 'PR033'),
('KB406', 'Kabupaten Samosir', 'PR033'),
('KB407', 'Kabupaten Serdang Bedagai', 'PR033'),
('KB408', 'Kabupaten Simalungun', 'PR033'),
('KB409', 'Kabupaten Tapanuli Selatan', 'PR033'),
('KB410', 'Kabupaten Tapanuli Tengah', 'PR033'),
('KB411', 'Kabupaten Tapanuli Utara', 'PR033'),
('KB412', 'Kabupaten Toba Samosir', 'PR033'),
('KB413', 'Kabupaten Bantul', 'PR006'),
('KB414', 'Kabupaten Gunung Kidul', 'PR006'),
('KB415', 'Kabupaten Kulon Progo', 'PR006'),
('KB416', 'Kabupaten Sleman', 'PR006'),
('KB417', 'Banda Aceh', 'PR024'),
('KB418', 'Langsa', 'PR024'),
('KB419', 'Lhokseumawe', 'PR024'),
('KB420', 'Meulaboh', 'PR024'),
('KB421', 'Sabang', 'PR024'),
('KB422', 'Subulussalam', 'PR024'),
('KB423', 'Denpasar', 'PR014'),
('KB424', 'Pangkalpinang', 'PR027'),
('KB425', 'Cilegon', 'PR001'),
('KB426', 'Serang', 'PR001'),
('KB427', 'Tangerang Selatan', 'PR001'),
('KB428', 'Tangerang', 'PR001'),
('KB429', 'Bengkulu', 'PR025'),
('KB430', 'Gorontalo', 'PR019'),
('KB431', 'Kota Administrasi Jakarta Barat', 'PR002'),
('KB432', 'Kota Administrasi Jakarta Pusat', 'PR002'),
('KB433', 'Kota Administrasi Jakarta Selatan', 'PR002'),
('KB434', 'Kota Administrasi Jakarta Timur', 'PR002'),
('KB435', 'Kota Administrasi Jakarta Utara', 'PR002'),
('KB436', 'Sungai Penuh', 'PR026'),
('KB437', 'Jambi', 'PR026'),
('KB438', 'Bandung', 'PR003'),
('KB439', 'Bekasi', 'PR003'),
('KB440', 'Bogor', 'PR003'),
('KB441', 'Cimahi', 'PR003'),
('KB442', 'Cirebon', 'PR003'),
('KB443', 'Depok', 'PR003'),
('KB444', 'Sukabumi', 'PR003'),
('KB445', 'Tasikmalaya', 'PR003'),
('KB446', 'Banjar', 'PR003'),
('KB447', 'Magelang', 'PR004'),
('KB448', 'Pekalongan', 'PR004'),
('KB449', 'Purwokerto', 'PR004'),
('KB450', 'Salatiga', 'PR004'),
('KB451', 'Semarang', 'PR004'),
('KB452', 'Surakarta', 'PR004'),
('KB453', 'Tegal', 'PR004'),
('KB454', 'Batu', 'PR005'),
('KB455', 'Blitar', 'PR005'),
('KB456', 'Kediri', 'PR005'),
('KB457', 'Madiun', 'PR005'),
('KB458', 'Malang', 'PR005'),
('KB459', 'Mojokerto', 'PR005'),
('KB460', 'Pasuruan', 'PR005'),
('KB461', 'Probolinggo', 'PR005'),
('KB462', 'Surabaya', 'PR005'),
('KB463', 'Pontianak', 'PR007'),
('KB464', 'Singkawang', 'PR007'),
('KB465', 'Banjarbaru', 'PR008'),
('KB466', 'Banjarmasin', 'PR008'),
('KB467', 'Palangkaraya', 'PR009'),
('KB468', 'Balikpapan', 'PR010'),
('KB469', 'Bontang', 'PR010'),
('KB470', 'Samarinda', 'PR010'),
('KB471', 'Tarakan', 'PR011'),
('KB472', 'Batam', 'PR028'),
('KB473', 'Tanjungpinang', 'PR028'),
('KB474', 'Bandar Lampung', 'PR029'),
('KB475', 'Metro', 'PR029'),
('KB476', 'Ternate', 'PR013'),
('KB477', 'Tidore Kepulauan', 'PR013'),
('KB478', 'Ambon', 'PR012'),
('KB479', 'Tual', 'PR012'),
('KB480', 'Bima', 'PR015'),
('KB481', 'Mataram', 'PR015'),
('KB482', 'Kupang', 'PR016'),
('KB483', 'Sorong', 'PR018'),
('KB484', 'Jayapura', 'PR017'),
('KB485', 'Dumai', 'PR030'),
('KB486', 'Pekanbaru', 'PR030'),
('KB487', 'Makassar', 'PR021'),
('KB488', 'Palopo', 'PR021'),
('KB489', 'Parepare', 'PR021'),
('KB490', 'Palu', 'PR034'),
('KB491', 'Bau-Bau', 'PR022'),
('KB492', 'Kendari', 'PR022'),
('KB493', 'Bitung', 'PR023'),
('KB494', 'Kotamobagu', 'PR023'),
('KB495', 'Manado', 'PR023'),
('KB496', 'Tomohon', 'PR023'),
('KB497', 'Bukittinggi', 'PR031'),
('KB498', 'Padang', 'PR031'),
('KB499', 'Padangpanjang', 'PR031'),
('KB500', 'Pariaman', 'PR031'),
('KB501', 'Payakumbuh', 'PR031'),
('KB502', 'Sawahlunto', 'PR031'),
('KB503', 'Solok', 'PR031'),
('KB504', 'Lubuklinggau', 'PR032'),
('KB505', 'Pagaralam', 'PR032'),
('KB506', 'Palembang', 'PR032'),
('KB507', 'Prabumulih', 'PR032'),
('KB508', 'Binjai', 'PR033'),
('KB509', 'Medan', 'PR033'),
('KB510', 'Padang Sidempuan', 'PR033'),
('KB511', 'Pematangsiantar', 'PR033'),
('KB512', 'Sibolga', 'PR033'),
('KB513', 'Tanjungbalai', 'PR033'),
('KB514', 'Tebingtinggi', 'PR033'),
('KB515', 'Yogyakarta', 'PR006');

-- --------------------------------------------------------

--
-- Struktur dari tabel `les_private`
--

CREATE TABLE `les_private` (
  `id_les` char(10) NOT NULL,
  `id_jguru` char(10) DEFAULT NULL,
  `id_mapelguru` char(10) DEFAULT NULL,
  `id_udata` char(10) DEFAULT NULL,
  `durasi_les` date DEFAULT NULL,
  `total_harga` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mapel`
--

CREATE TABLE `mapel` (
  `id_mapel` char(5) NOT NULL,
  `name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mapel`
--

INSERT INTO `mapel` (`id_mapel`, `name`) VALUES
('MP001', 'PPKn'),
('MP002', 'Matematika'),
('MP003', 'Bahasa Indonesia'),
('MP004', 'Bahasa Inggris'),
('MP005', 'Biologi'),
('MP006', 'Fisika'),
('MP007', 'Kimia'),
('MP008', 'Geografi'),
('MP009', 'Sejarah'),
('MP010', 'Sosiologi dan Anthropologi'),
('MP011', 'Ekonomi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mapel_guru`
--

CREATE TABLE `mapel_guru` (
  `id_mapelguru` char(10) NOT NULL,
  `id_dguru` char(10) DEFAULT NULL,
  `id_mapel` char(5) DEFAULT NULL,
  `harga` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_mapel`
--

CREATE TABLE `nilai_mapel` (
  `id_nilai` int(10) NOT NULL,
  `id_udata` char(10) DEFAULT NULL,
  `id_mapel` char(6) DEFAULT NULL,
  `nilai` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `nilai_mapel`
--

INSERT INTO `nilai_mapel` (`id_nilai`, `id_udata`, `id_mapel`, `nilai`) VALUES
(1, 'UDAA000001', 'MP001', 50),
(2, 'UDAA000001', 'MP002', 87),
(3, 'UDAA000001', 'MP003', 67),
(4, 'UDAA000001', 'MP004', 33),
(5, 'UDAA000001', 'MP005', 89),
(6, 'UDAA000001', 'MP006', 67),
(7, 'UDAA000001', 'MP007', 55),
(8, 'UDAA000001', 'MP008', 67),
(9, 'UDAA000001', 'MP009', 68),
(10, 'UDAA000001', 'MP010', 67),
(11, 'UDAA000001', 'MP011', 35),
(12, 'UDAA000002', 'MP001', 80),
(13, 'UDAA000002', 'MP002', 69),
(14, 'UDAA000002', 'MP003', 74),
(15, 'UDAA000002', 'MP004', 44),
(16, 'UDAA000002', 'MP005', 98),
(17, 'UDAA000002', 'MP006', 79),
(18, 'UDAA000002', 'MP007', 60),
(19, 'UDAA000002', 'MP008', 50),
(20, 'UDAA000002', 'MP009', 80),
(21, 'UDAA000002', 'MP010', 85),
(22, 'UDAA000002', 'MP011', 95),
(23, 'UDAA000003', 'MP001', 66),
(24, 'UDAA000003', 'MP002', 80),
(25, 'UDAA000003', 'MP003', 90),
(26, 'UDAA000003', 'MP004', 20),
(27, 'UDAA000003', 'MP005', 87),
(28, 'UDAA000003', 'MP006', 50),
(29, 'UDAA000003', 'MP007', 100),
(30, 'UDAA000003', 'MP008', 48),
(31, 'UDAA000003', 'MP009', 96),
(32, 'UDAA000003', 'MP010', 72),
(33, 'UDAA000003', 'MP011', 28),
(34, 'UDAA000004', 'MP001', 78),
(35, 'UDAA000004', 'MP002', 25),
(36, 'UDAA000004', 'MP003', 15),
(37, 'UDAA000004', 'MP004', 77),
(38, 'UDAA000004', 'MP005', 89),
(39, 'UDAA000004', 'MP006', 43),
(40, 'UDAA000004', 'MP007', 67),
(41, 'UDAA000004', 'MP008', 88),
(42, 'UDAA000004', 'MP009', 100),
(43, 'UDAA000004', 'MP010', 43),
(44, 'UDAA000004', 'MP011', 66),
(45, 'UDAA000005', 'MP001', 43),
(46, 'UDAA000005', 'MP002', 77),
(47, 'UDAA000005', 'MP003', 98),
(48, 'UDAA000005', 'MP004', 65),
(49, 'UDAA000005', 'MP005', 43),
(50, 'UDAA000005', 'MP006', 89),
(51, 'UDAA000005', 'MP007', 88),
(52, 'UDAA000005', 'MP008', 67),
(53, 'UDAA000005', 'MP009', 76),
(54, 'UDAA000005', 'MP010', 89),
(55, 'UDAA000005', 'MP011', 67),
(56, 'UDAA000006', 'MP001', 13),
(57, 'UDAA000006', 'MP002', 45),
(58, 'UDAA000006', 'MP003', 22),
(59, 'UDAA000006', 'MP004', 99),
(60, 'UDAA000006', 'MP005', 76),
(61, 'UDAA000006', 'MP006', 89),
(62, 'UDAA000006', 'MP007', 43),
(63, 'UDAA000006', 'MP008', 87),
(64, 'UDAA000006', 'MP009', 88),
(65, 'UDAA000006', 'MP010', 97),
(66, 'UDAA000006', 'MP011', 54),
(67, 'UDAA000007', 'MP001', 78),
(68, 'UDAA000007', 'MP002', 98),
(69, 'UDAA000007', 'MP003', 54),
(70, 'UDAA000007', 'MP004', 46),
(71, 'UDAA000007', 'MP005', 85),
(72, 'UDAA000007', 'MP006', 99),
(73, 'UDAA000007', 'MP007', 76),
(74, 'UDAA000007', 'MP008', 46),
(75, 'UDAA000007', 'MP009', 99),
(76, 'UDAA000007', 'MP010', 98),
(77, 'UDAA000007', 'MP011', 34),
(78, 'UDAA000008', 'MP001', 50),
(79, 'UDAA000008', 'MP002', 87),
(80, 'UDAA000008', 'MP003', 67),
(81, 'UDAA000008', 'MP004', 33),
(82, 'UDAA000008', 'MP005', 89),
(83, 'UDAA000008', 'MP006', 67),
(84, 'UDAA000008', 'MP007', 55),
(85, 'UDAA000008', 'MP008', 67),
(86, 'UDAA000008', 'MP009', 68),
(87, 'UDAA000008', 'MP010', 67),
(88, 'UDAA000008', 'MP011', 35),
(89, 'UDAA000009', 'MP001', 80),
(90, 'UDAA000009', 'MP002', 69),
(91, 'UDAA000009', 'MP003', 74),
(92, 'UDAA000009', 'MP004', 44),
(93, 'UDAA000009', 'MP005', 98),
(94, 'UDAA000009', 'MP006', 79),
(95, 'UDAA000009', 'MP007', 60),
(96, 'UDAA000009', 'MP008', 50),
(97, 'UDAA000009', 'MP009', 80),
(98, 'UDAA000009', 'MP010', 85),
(99, 'UDAA000009', 'MP011', 95),
(100, 'UDAA000010', 'MP001', 66),
(101, 'UDAA000010', 'MP002', 80),
(102, 'UDAA000010', 'MP003', 90),
(103, 'UDAA000010', 'MP004', 20),
(104, 'UDAA000010', 'MP005', 87),
(105, 'UDAA000010', 'MP006', 50),
(106, 'UDAA000010', 'MP007', 100),
(107, 'UDAA000010', 'MP008', 48),
(108, 'UDAA000010', 'MP010', 72),
(109, 'UDAA000010', 'MP011', 28),
(110, 'UDAA000011', 'MP001', 78),
(111, 'UDAA000011', 'MP002', 25),
(112, 'UDAA000011', 'MP003', 15),
(113, 'UDAA000011', 'MP004', 77),
(114, 'UDAA000011', 'MP005', 89),
(115, 'UDAA000011', 'MP006', 43),
(116, 'UDAA000011', 'MP007', 67),
(117, 'UDAA000011', 'MP008', 88),
(118, 'UDAA000011', 'MP009', 100),
(119, 'UDAA000011', 'MP010', 43),
(120, 'UDAA000011', 'MP011', 66),
(121, 'UDAA000012', 'MP001', 43),
(122, 'UDAA000012', 'MP002', 77),
(123, 'UDAA000012', 'MP003', 98),
(124, 'UDAA000012', 'MP004', 65),
(125, 'UDAA000012', 'MP005', 43),
(126, 'UDAA000012', 'MP006', 89),
(127, 'UDAA000012', 'MP007', 88),
(128, 'UDAA000012', 'MP008', 67),
(129, 'UDAA000012', 'MP009', 76),
(130, 'UDAA000012', 'MP010', 89),
(131, 'UDAA000012', 'MP011', 67),
(132, 'UDAA000013', 'MP001', 50),
(133, 'UDAA000013', 'MP002', 87),
(134, 'UDAA000013', 'MP003', 67),
(135, 'UDAA000013', 'MP004', 33),
(136, 'UDAA000013', 'MP005', 89),
(137, 'UDAA000013', 'MP006', 67),
(138, 'UDAA000013', 'MP007', 55),
(139, 'UDAA000013', 'MP008', 67),
(140, 'UDAA000013', 'MP009', 68),
(141, 'UDAA000013', 'MP010', 67),
(142, 'UDAA000013', 'MP011', 35),
(143, 'UDAA000014', 'MP001', 80),
(144, 'UDAA000014', 'MP002', 69),
(145, 'UDAA000014', 'MP003', 74),
(146, 'UDAA000014', 'MP004', 44),
(147, 'UDAA000014', 'MP005', 98),
(148, 'UDAA000014', 'MP006', 79),
(149, 'UDAA000014', 'MP007', 60),
(150, 'UDAA000014', 'MP008', 50),
(151, 'UDAA000014', 'MP009', 80),
(152, 'UDAA000014', 'MP010', 85),
(153, 'UDAA000014', 'MP011', 95),
(154, 'UDAA000015', 'MP001', 66),
(155, 'UDAA000015', 'MP002', 80),
(156, 'UDAA000015', 'MP003', 90),
(157, 'UDAA000015', 'MP004', 20),
(158, 'UDAA000015', 'MP005', 87),
(159, 'UDAA000015', 'MP006', 50),
(160, 'UDAA000015', 'MP007', 100),
(161, 'UDAA000015', 'MP008', 48),
(162, 'UDAA000015', 'MP009', 96),
(163, 'UDAA000015', 'MP010', 72),
(164, 'UDAA000015', 'MP011', 28),
(165, 'UDAA000016', 'MP001', 78),
(166, 'UDAA000016', 'MP002', 25),
(167, 'UDAA000016', 'MP003', 15),
(168, 'UDAA000016', 'MP004', 77),
(169, 'UDAA000016', 'MP005', 89),
(170, 'UDAA000016', 'MP006', 43),
(171, 'UDAA000016', 'MP007', 67),
(172, 'UDAA000016', 'MP008', 88),
(173, 'UDAA000016', 'MP009', 100),
(174, 'UDAA000016', 'MP010', 43),
(175, 'UDAA000016', 'MP011', 66),
(176, 'UDAA000017', 'MP001', 43),
(177, 'UDAA000017', 'MP002', 77),
(178, 'UDAA000017', 'MP003', 98),
(179, 'UDAA000017', 'MP004', 65),
(180, 'UDAA000017', 'MP005', 43),
(181, 'UDAA000017', 'MP006', 89),
(182, 'UDAA000017', 'MP007', 88),
(183, 'UDAA000017', 'MP008', 67),
(184, 'UDAA000017', 'MP009', 76),
(185, 'UDAA000017', 'MP010', 89),
(186, 'UDAA000017', 'MP011', 67),
(187, 'UDAA000018', 'MP001', 50),
(188, 'UDAA000018', 'MP002', 87),
(189, 'UDAA000018', 'MP003', 67),
(190, 'UDAA000018', 'MP004', 33),
(191, 'UDAA000018', 'MP005', 89),
(192, 'UDAA000018', 'MP006', 67),
(193, 'UDAA000018', 'MP007', 55),
(194, 'UDAA000018', 'MP008', 67),
(195, 'UDAA000018', 'MP009', 68),
(196, 'UDAA000018', 'MP010', 67),
(197, 'UDAA000018', 'MP011', 35),
(198, 'UDAA000019', 'MP001', 80),
(199, 'UDAA000019', 'MP002', 69),
(200, 'UDAA000019', 'MP003', 74),
(201, 'UDAA000019', 'MP004', 44),
(202, 'UDAA000019', 'MP005', 98),
(203, 'UDAA000019', 'MP006', 79),
(204, 'UDAA000019', 'MP007', 60),
(205, 'UDAA000019', 'MP008', 50),
(206, 'UDAA000019', 'MP009', 80),
(207, 'UDAA000019', 'MP010', 85),
(208, 'UDAA000019', 'MP011', 95),
(209, 'UDAA000020', 'MP001', 66),
(210, 'UDAA000020', 'MP002', 80),
(211, 'UDAA000020', 'MP003', 90),
(212, 'UDAA000020', 'MP004', 20),
(213, 'UDAA000020', 'MP005', 87),
(214, 'UDAA000020', 'MP006', 50),
(215, 'UDAA000020', 'MP007', 100),
(216, 'UDAA000020', 'MP008', 48),
(217, 'UDAA000020', 'MP009', 96),
(218, 'UDAA000020', 'MP010', 72),
(219, 'UDAA000020', 'MP011', 28),
(220, 'UDAA000021', 'MP001', 78),
(221, 'UDAA000021', 'MP002', 25),
(222, 'UDAA000021', 'MP003', 15),
(223, 'UDAA000021', 'MP004', 77),
(224, 'UDAA000021', 'MP005', 89),
(225, 'UDAA000021', 'MP006', 43),
(226, 'UDAA000021', 'MP007', 67),
(227, 'UDAA000021', 'MP008', 88),
(228, 'UDAA000021', 'MP009', 100),
(229, 'UDAA000021', 'MP010', 43),
(230, 'UDAA000021', 'MP011', 66),
(231, 'UDAA000022', 'MP001', 43),
(232, 'UDAA000022', 'MP002', 77),
(233, 'UDAA000022', 'MP003', 98),
(234, 'UDAA000022', 'MP004', 65),
(235, 'UDAA000022', 'MP005', 43),
(236, 'UDAA000022', 'MP006', 89),
(237, 'UDAA000022', 'MP007', 88),
(238, 'UDAA000022', 'MP008', 67),
(239, 'UDAA000022', 'MP009', 76),
(240, 'UDAA000022', 'MP010', 89),
(241, 'UDAA000022', 'MP011', 67),
(242, 'UDAA000022', 'MP001', 50),
(243, 'UDAA000022', 'MP002', 87),
(244, 'UDAA000022', 'MP003', 67),
(245, 'UDAA000022', 'MP004', 33),
(246, 'UDAA000022', 'MP005', 89),
(247, 'UDAA000022', 'MP006', 67),
(248, 'UDAA000022', 'MP007', 55),
(249, 'UDAA000022', 'MP008', 67),
(250, 'UDAA000022', 'MP009', 68),
(251, 'UDAA000022', 'MP010', 67),
(252, 'UDAA000022', 'MP011', 35),
(253, 'UDAA000023', 'MP001', 80),
(254, 'UDAA000023', 'MP002', 69),
(255, 'UDAA000023', 'MP003', 74),
(256, 'UDAA000023', 'MP004', 44),
(257, 'UDAA000023', 'MP005', 98),
(258, 'UDAA000023', 'MP006', 79),
(259, 'UDAA000023', 'MP007', 60),
(260, 'UDAA000023', 'MP008', 50),
(261, 'UDAA000023', 'MP009', 80),
(262, 'UDAA000023', 'MP010', 85),
(263, 'UDAA000023', 'MP011', 95),
(264, 'UDAA000024', 'MP001', 66),
(265, 'UDAA000024', 'MP002', 80),
(266, 'UDAA000024', 'MP003', 90),
(267, 'UDAA000024', 'MP004', 20),
(268, 'UDAA000024', 'MP005', 87),
(269, 'UDAA000024', 'MP006', 50),
(270, 'UDAA000024', 'MP007', 100),
(271, 'UDAA000024', 'MP008', 48),
(272, 'UDAA000024', 'MP009', 96),
(273, 'UDAA000024', 'MP010', 72),
(274, 'UDAA000024', 'MP011', 28),
(275, 'UDAA000025', 'MP001', 78),
(276, 'UDAA000025', 'MP002', 25),
(277, 'UDAA000025', 'MP003', 15),
(278, 'UDAA000025', 'MP004', 77),
(279, 'UDAA000025', 'MP005', 89),
(280, 'UDAA000025', 'MP006', 43),
(281, 'UDAA000025', 'MP007', 67),
(282, 'UDAA000025', 'MP008', 88),
(283, 'UDAA000025', 'MP009', 100),
(284, 'UDAA000025', 'MP010', 43),
(285, 'UDAA000025', 'MP011', 66),
(286, 'UDAA000026', 'MP001', 50),
(287, 'UDAA000026', 'MP002', 87),
(288, 'UDAA000026', 'MP003', 67),
(289, 'UDAA000026', 'MP004', 33),
(290, 'UDAA000026', 'MP005', 89),
(291, 'UDAA000026', 'MP006', 67),
(292, 'UDAA000026', 'MP007', 55),
(293, 'UDAA000026', 'MP008', 67),
(294, 'UDAA000026', 'MP009', 68),
(295, 'UDAA000026', 'MP010', 67),
(296, 'UDAA000026', 'MP011', 35),
(297, 'UDAA000027', 'MP001', 80),
(298, 'UDAA000027', 'MP002', 69),
(299, 'UDAA000027', 'MP003', 74),
(300, 'UDAA000027', 'MP004', 44),
(301, 'UDAA000027', 'MP005', 98),
(302, 'UDAA000027', 'MP006', 79),
(303, 'UDAA000027', 'MP007', 60),
(304, 'UDAA000027', 'MP008', 50),
(305, 'UDAA000027', 'MP009', 80),
(306, 'UDAA000027', 'MP010', 85),
(307, 'UDAA000027', 'MP011', 95),
(308, 'UDAA000028', 'MP001', 66),
(309, 'UDAA000028', 'MP002', 80),
(310, 'UDAA000028', 'MP003', 90),
(311, 'UDAA000028', 'MP004', 20),
(312, 'UDAA000028', 'MP005', 87),
(313, 'UDAA000028', 'MP006', 50),
(314, 'UDAA000028', 'MP007', 100),
(315, 'UDAA000028', 'MP008', 48),
(316, 'UDAA000028', 'MP009', 96),
(317, 'UDAA000028', 'MP010', 72),
(318, 'UDAA000028', 'MP011', 28),
(319, 'UDAA000029', 'MP001', 78),
(320, 'UDAA000029', 'MP002', 25),
(321, 'UDAA000029', 'MP003', 15),
(322, 'UDAA000029', 'MP004', 77),
(323, 'UDAA000029', 'MP005', 89),
(324, 'UDAA000029', 'MP006', 43),
(325, 'UDAA000029', 'MP007', 67),
(326, 'UDAA000029', 'MP008', 88),
(327, 'UDAA000029', 'MP009', 100),
(328, 'UDAA000029', 'MP010', 43),
(329, 'UDAA000029', 'MP011', 66),
(330, 'UDAA000030', 'MP001', 43),
(331, 'UDAA000030', 'MP002', 77),
(332, 'UDAA000030', 'MP003', 98),
(333, 'UDAA000030', 'MP004', 65),
(334, 'UDAA000030', 'MP005', 43),
(335, 'UDAA000030', 'MP006', 89),
(336, 'UDAA000030', 'MP007', 88),
(337, 'UDAA000030', 'MP008', 67),
(338, 'UDAA000030', 'MP009', 76),
(339, 'UDAA000030', 'MP010', 89),
(340, 'UDAA000030', 'MP011', 67),
(341, 'UDAA000031', 'MP001', 13),
(342, 'UDAA000031', 'MP002', 45),
(343, 'UDAA000031', 'MP003', 22),
(344, 'UDAA000031', 'MP004', 99),
(345, 'UDAA000031', 'MP005', 76),
(346, 'UDAA000031', 'MP006', 89),
(347, 'UDAA000031', 'MP007', 43),
(348, 'UDAA000031', 'MP008', 87),
(349, 'UDAA000031', 'MP009', 88),
(350, 'UDAA000031', 'MP010', 97),
(351, 'UDAA000031', 'MP011', 54),
(352, 'UDAA000032', 'MP001', 78),
(353, 'UDAA000032', 'MP002', 98),
(354, 'UDAA000032', 'MP003', 54),
(355, 'UDAA000032', 'MP004', 46),
(356, 'UDAA000032', 'MP005', 85),
(357, 'UDAA000032', 'MP006', 99),
(358, 'UDAA000032', 'MP007', 76),
(359, 'UDAA000032', 'MP008', 46),
(360, 'UDAA000032', 'MP009', 99),
(361, 'UDAA000032', 'MP010', 98),
(362, 'UDAA000032', 'MP011', 34),
(363, 'UDAA000033', 'MP001', 50),
(364, 'UDAA000033', 'MP002', 87),
(365, 'UDAA000033', 'MP003', 67),
(366, 'UDAA000033', 'MP004', 33),
(367, 'UDAA000033', 'MP005', 89),
(368, 'UDAA000033', 'MP006', 67),
(369, 'UDAA000033', 'MP007', 55),
(370, 'UDAA000033', 'MP008', 67),
(371, 'UDAA000033', 'MP009', 68),
(372, 'UDAA000033', 'MP010', 67),
(373, 'UDAA000033', 'MP011', 35),
(374, 'UDAA000034', 'MP001', 80),
(375, 'UDAA000034', 'MP002', 69),
(376, 'UDAA000034', 'MP003', 74),
(377, 'UDAA000034', 'MP004', 44),
(378, 'UDAA000034', 'MP005', 98),
(379, 'UDAA000034', 'MP006', 79),
(380, 'UDAA000034', 'MP007', 60),
(381, 'UDAA000034', 'MP008', 50),
(382, 'UDAA000034', 'MP009', 80),
(383, 'UDAA000034', 'MP010', 85),
(384, 'UDAA000034', 'MP011', 95),
(385, 'UDAA000035', 'MP001', 66),
(386, 'UDAA000035', 'MP002', 80),
(387, 'UDAA000035', 'MP003', 90),
(388, 'UDAA000035', 'MP004', 20),
(389, 'UDAA000035', 'MP005', 87),
(390, 'UDAA000035', 'MP006', 50),
(391, 'UDAA000035', 'MP007', 100),
(392, 'UDAA000035', 'MP008', 48),
(393, 'UDAA000035', 'MP010', 72),
(394, 'UDAA000035', 'MP011', 28),
(395, 'UDAA000036', 'MP001', 78),
(396, 'UDAA000036', 'MP002', 25),
(397, 'UDAA000036', 'MP003', 15),
(398, 'UDAA000036', 'MP004', 77),
(399, 'UDAA000036', 'MP005', 89),
(400, 'UDAA000036', 'MP006', 43),
(401, 'UDAA000036', 'MP007', 67),
(402, 'UDAA000036', 'MP008', 88),
(403, 'UDAA000036', 'MP009', 100),
(404, 'UDAA000036', 'MP010', 43),
(405, 'UDAA000036', 'MP011', 66),
(406, 'UDAA000037', 'MP001', 43),
(407, 'UDAA000037', 'MP002', 77),
(408, 'UDAA000037', 'MP003', 98),
(409, 'UDAA000037', 'MP004', 65),
(410, 'UDAA000037', 'MP005', 43),
(411, 'UDAA000037', 'MP006', 89),
(412, 'UDAA000037', 'MP007', 88),
(413, 'UDAA000037', 'MP008', 67),
(414, 'UDAA000037', 'MP009', 76),
(415, 'UDAA000037', 'MP010', 89),
(416, 'UDAA000037', 'MP011', 67),
(417, 'UDAA000038', 'MP001', 50),
(418, 'UDAA000038', 'MP002', 87),
(419, 'UDAA000038', 'MP003', 67),
(420, 'UDAA000038', 'MP004', 33),
(421, 'UDAA000038', 'MP005', 89),
(422, 'UDAA000038', 'MP006', 67),
(423, 'UDAA000038', 'MP007', 55),
(424, 'UDAA000038', 'MP008', 67),
(425, 'UDAA000038', 'MP009', 68),
(426, 'UDAA000038', 'MP010', 67),
(427, 'UDAA000038', 'MP011', 35),
(428, 'UDAA000039', 'MP001', 80),
(429, 'UDAA000039', 'MP002', 69),
(430, 'UDAA000039', 'MP003', 74),
(431, 'UDAA000039', 'MP004', 44),
(432, 'UDAA000039', 'MP005', 98),
(433, 'UDAA000039', 'MP006', 79),
(434, 'UDAA000039', 'MP007', 60),
(435, 'UDAA000039', 'MP008', 50),
(436, 'UDAA000039', 'MP009', 80),
(437, 'UDAA000039', 'MP010', 85),
(438, 'UDAA000039', 'MP011', 95),
(439, 'UDAA000040', 'MP001', 66),
(440, 'UDAA000040', 'MP002', 80),
(441, 'UDAA000040', 'MP003', 90),
(442, 'UDAA000040', 'MP004', 20),
(443, 'UDAA000040', 'MP005', 87),
(444, 'UDAA000040', 'MP006', 50),
(445, 'UDAA000040', 'MP007', 100),
(446, 'UDAA000040', 'MP008', 48),
(447, 'UDAA000040', 'MP009', 96),
(448, 'UDAA000040', 'MP010', 72),
(449, 'UDAA000040', 'MP011', 28),
(450, 'UDAA000041', 'MP001', 78),
(451, 'UDAA000041', 'MP002', 25),
(452, 'UDAA000041', 'MP003', 15),
(453, 'UDAA000041', 'MP004', 77),
(454, 'UDAA000041', 'MP005', 89),
(455, 'UDAA000041', 'MP006', 43),
(456, 'UDAA000041', 'MP007', 67),
(457, 'UDAA000041', 'MP008', 88),
(458, 'UDAA000041', 'MP009', 100),
(459, 'UDAA000041', 'MP010', 43),
(460, 'UDAA000041', 'MP011', 66),
(461, 'UDAA000042', 'MP001', 43),
(462, 'UDAA000042', 'MP002', 77),
(463, 'UDAA000042', 'MP003', 98),
(464, 'UDAA000042', 'MP004', 65),
(465, 'UDAA000042', 'MP005', 43),
(466, 'UDAA000042', 'MP006', 89),
(467, 'UDAA000042', 'MP007', 88),
(468, 'UDAA000042', 'MP008', 67),
(469, 'UDAA000042', 'MP009', 76),
(470, 'UDAA000042', 'MP010', 89),
(471, 'UDAA000042', 'MP011', 67),
(472, 'UDAA000043', 'MP001', 50),
(473, 'UDAA000043', 'MP002', 87),
(474, 'UDAA000043', 'MP003', 67),
(475, 'UDAA000043', 'MP004', 33),
(476, 'UDAA000043', 'MP005', 89),
(477, 'UDAA000043', 'MP006', 67),
(478, 'UDAA000043', 'MP007', 55),
(479, 'UDAA000043', 'MP008', 67),
(480, 'UDAA000043', 'MP009', 68),
(481, 'UDAA000043', 'MP010', 67),
(482, 'UDAA000043', 'MP011', 35),
(483, 'UDAA000044', 'MP001', 80),
(484, 'UDAA000044', 'MP002', 69),
(485, 'UDAA000044', 'MP003', 74),
(486, 'UDAA000044', 'MP004', 44),
(487, 'UDAA000044', 'MP005', 98),
(488, 'UDAA000044', 'MP006', 79),
(489, 'UDAA000044', 'MP007', 60),
(490, 'UDAA000044', 'MP008', 50),
(491, 'UDAA000044', 'MP009', 80),
(492, 'UDAA000044', 'MP010', 85),
(493, 'UDAA000044', 'MP011', 95),
(494, 'UDAA000045', 'MP001', 66),
(495, 'UDAA000045', 'MP002', 80),
(496, 'UDAA000045', 'MP003', 90),
(497, 'UDAA000045', 'MP004', 20),
(498, 'UDAA000045', 'MP005', 87),
(499, 'UDAA000045', 'MP006', 50),
(500, 'UDAA000045', 'MP007', 100),
(501, 'UDAA000045', 'MP008', 48),
(502, 'UDAA000045', 'MP009', 96),
(503, 'UDAA000045', 'MP010', 72),
(504, 'UDAA000045', 'MP011', 28),
(505, 'UDAA000046', 'MP001', 78),
(506, 'UDAA000046', 'MP002', 25),
(507, 'UDAA000046', 'MP003', 15),
(508, 'UDAA000046', 'MP004', 77),
(509, 'UDAA000046', 'MP005', 89),
(510, 'UDAA000046', 'MP006', 43),
(511, 'UDAA000046', 'MP007', 67),
(512, 'UDAA000046', 'MP008', 88),
(513, 'UDAA000046', 'MP009', 100),
(514, 'UDAA000046', 'MP010', 43),
(515, 'UDAA000046', 'MP011', 66),
(516, 'UDAA000047', 'MP001', 43),
(517, 'UDAA000047', 'MP002', 77),
(518, 'UDAA000047', 'MP003', 98),
(519, 'UDAA000047', 'MP004', 65),
(520, 'UDAA000047', 'MP005', 43),
(521, 'UDAA000047', 'MP006', 89),
(522, 'UDAA000047', 'MP007', 88),
(523, 'UDAA000047', 'MP008', 67),
(524, 'UDAA000047', 'MP009', 76),
(525, 'UDAA000047', 'MP010', 89),
(526, 'UDAA000047', 'MP011', 67),
(527, 'UDAA000048', 'MP001', 50),
(528, 'UDAA000048', 'MP002', 87),
(529, 'UDAA000048', 'MP003', 67),
(530, 'UDAA000048', 'MP004', 33),
(531, 'UDAA000048', 'MP005', 89),
(532, 'UDAA000048', 'MP006', 67),
(533, 'UDAA000048', 'MP007', 55),
(534, 'UDAA000048', 'MP008', 67),
(535, 'UDAA000048', 'MP009', 68),
(536, 'UDAA000048', 'MP010', 67),
(537, 'UDAA000048', 'MP011', 35),
(538, 'UDAA000049', 'MP001', 80),
(539, 'UDAA000049', 'MP002', 69),
(540, 'UDAA000049', 'MP003', 74),
(541, 'UDAA000049', 'MP004', 44),
(542, 'UDAA000049', 'MP005', 98),
(543, 'UDAA000049', 'MP006', 79),
(544, 'UDAA000049', 'MP007', 60),
(545, 'UDAA000049', 'MP008', 50),
(546, 'UDAA000049', 'MP009', 80),
(547, 'UDAA000049', 'MP010', 85),
(548, 'UDAA000049', 'MP011', 95),
(549, 'UDAA000050', 'MP001', 66),
(550, 'UDAA000050', 'MP002', 80),
(551, 'UDAA000050', 'MP003', 90),
(552, 'UDAA000050', 'MP004', 20),
(553, 'UDAA000050', 'MP005', 87),
(554, 'UDAA000050', 'MP006', 50),
(555, 'UDAA000050', 'MP007', 100),
(556, 'UDAA000050', 'MP008', 48),
(557, 'UDAA000050', 'MP009', 96),
(558, 'UDAA000050', 'MP010', 72),
(559, 'UDAA000050', 'MP011', 28);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `id_user` char(10) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `id_udata` char(10) DEFAULT NULL,
  `status` varchar(40) NOT NULL,
  `reason` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id_user`, `username`, `password`, `id_udata`, `status`, `reason`) VALUES
('IDAA000001', 'eratozando', 'karepmu', 'UDAA000001', 'Active', 'No Reason'),
('IDAA000002', 'ratos', 'ratos', 'UDAA000002', 'Active', 'No Reason'),
('IDAA000003', 'uu', '123', 'UDAA000003', 'Active', 'No Reason'),
('IDAA000004', 'eee', '222', 'UDAA000004', 'Active', 'No Reason'),
('IDAA000005', 'let', '12345', 'UDAA000005', 'Active', 'No Reason'),
('IDAA000006', 'letma', 'karepmu', 'UDAA000006', 'Active', 'No Reason'),
('IDAA000007', 'uu', '123', 'UDAA000007', 'Active', 'No Reason'),
('IDAA000008', 'eee', '222', 'UDAA000008', 'Active', 'No Reason'),
('IDAA000009', 'let', '12345', 'UDAA000009', 'Active', 'No Reason'),
('IDAA000010', 'eratozando', 'karepmu', 'UDAA000010', 'Active', 'No Reason'),
('IDAA000011', 'uu', '123', 'UDAA000011', 'Active', 'No Reason'),
('IDAA000012', 'eee', '222', 'UDAA000012', 'Active', 'No Reason'),
('IDAA000013', 'let', '12345', 'UDAA000013', 'Active', 'No Reason'),
('IDAA000014', 'eratozando', 'karepmu', 'UDAA000014', 'Active', 'No Reason'),
('IDAA000015', 'uu', '123', 'UDAA000015', 'Active', 'No Reason'),
('IDAA000016', 'eee', '222', 'UDAA000016', 'Active', 'No Reason'),
('IDAA000017', 'let', '12345', 'UDAA000017', 'Active', 'No Reason'),
('IDAA000018', 'eratozando', 'karepmu', 'UDAA000018', 'Active', 'No Reason'),
('IDAA000019', 'uu', '123', 'UDAA000019', 'Active', 'No Reason'),
('IDAA000020', 'eee', '222', 'UDAA000020', 'Active', 'No Reason'),
('IDAA000021', 'let', '12345', 'UDAA000021', 'Active', 'No Reason'),
('IDAA000022', 'eratozando', 'karepmu', 'UDAA000022', 'Active', 'No Reason'),
('IDAA000023', 'eratozando', 'karepmu', 'UDAA000023', 'Active', 'No Reason'),
('IDAA000024', 'uu', '123', 'UDAA000024', 'Active', 'No Reason'),
('IDAA000025', 'eee', '222', 'UDAA000025', 'Active', 'No Reason'),
('IDAA000026', 'eratozando', 'karepmu', 'UDAA000026', 'Active', 'No Reason'),
('IDAA000027', 'eratozando', 'karepmu', 'UDAA000027', 'Active', 'No Reason'),
('IDAA000028', 'uu', '123', 'UDAA000028', 'Active', 'No Reason'),
('IDAA000029', 'eee', '222', 'UDAA000029', 'Active', 'No Reason'),
('IDAA000030', 'let', '12345', 'UDAA000030', 'Active', 'No Reason'),
('IDAA000031', 'eratozando', 'karepmu', 'UDAA000031', 'Active', 'No Reason'),
('IDAA000032', 'uu', '123', 'UDAA000032', 'Active', 'No Reason'),
('IDAA000033', 'eee', '222', 'UDAA000033', 'Active', 'No Reason'),
('IDAA000034', 'let', '12345', 'UDAA000034', 'Active', 'No Reason'),
('IDAA000035', 'eratozando', 'karepmu', 'UDAA000035', 'Active', 'No Reason'),
('IDAA000036', 'uu', '123', 'UDAA000036', 'Active', 'No Reason'),
('IDAA000037', 'eee', '222', 'UDAA000037', 'Active', 'No Reason'),
('IDAA000038', 'let', '12345', 'UDAA000038', 'Active', 'No Reason'),
('IDAA000039', 'eratozando', 'karepmu', 'UDAA000039', 'Active', 'No Reason'),
('IDAA000040', 'uu', '123', 'UDAA000040', 'Active', 'No Reason'),
('IDAA000041', 'eee', '222', 'UDAA000041', 'Active', 'No Reason'),
('IDAA000042', 'let', '12345', 'UDAA000042', 'Active', 'No Reason'),
('IDAA000043', 'eratozando', 'karepmu', 'UDAA000044', 'Active', 'No Reason'),
('IDAA000044', 'uu', '123', 'UDAA000044', 'Active', 'No Reason'),
('IDAA000045', 'eee', '222', 'UDAA000045', 'Active', 'No Reason'),
('IDAA000046', 'let', '12345', 'UDAA000046', 'Active', 'No Reason'),
('IDAA000047', 'eratozando', 'karepmu', 'UDAA000047', 'Active', 'No Reason'),
('IDAA000048', 'eratozando', 'karepmu', 'UDAA000048', 'Active', 'No Reason'),
('IDAA000049', 'uu', '123', 'UDAA000049', 'Active', 'No Reason'),
('IDAA000050', 'eee', '222', 'UDAA000050', 'Active', 'No Reason');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peringkat`
--

CREATE TABLE `peringkat` (
  `id_peringkat` char(5) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `reqexp` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `peringkat`
--

INSERT INTO `peringkat` (`id_peringkat`, `name`, `reqexp`) VALUES
('PG001', 'Training', 0),
('PG002', 'Teacher', 500),
('PG003', 'Pro Teacher', 2000),
('PG004', 'Expert Teacher', 4000),
('PG005', 'Listener Teacher', 6000),
('PG006', 'Golden Teacher', 10000),
('PG007', 'Platinum Science', 20000),
('PK001', 'Beginner', 0),
('PK002', 'Intermediate', 500),
('PK003', 'Expert', 2000),
('PK004', 'Bronze Teacher', 4000),
('PK005', 'Silver Teacher', 6000),
('PK006', 'Golden Teacher', 10000),
('PK007', 'Platinum Science', 20000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `provinsi`
--

CREATE TABLE `provinsi` (
  `id_prov` char(5) NOT NULL,
  `name` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `provinsi`
--

INSERT INTO `provinsi` (`id_prov`, `name`) VALUES
('PR000', 'Belum memilih Provinsi'),
('PR001', 'Banten'),
('PR002', 'Jakarta'),
('PR003', 'Jawa Barat'),
('PR004', 'Jawa Tengah'),
('PR005', 'Jawa Timur'),
('PR006', 'DI Yogyakarta'),
('PR007', 'Kalimantan Barat'),
('PR008', 'Kalimantan Selatan'),
('PR009', 'Kalimantan Tengah'),
('PR010', 'Kalimantan Timur'),
('PR011', 'Kalimantan Utara'),
('PR012', 'Maluku'),
('PR013', 'Maluku Utara'),
('PR014', 'Bali'),
('PR015', 'Nusa Tenggara Barat'),
('PR016', 'Nusa Tenggara Timur'),
('PR017', 'Papua'),
('PR018', 'Papua Barat'),
('PR019', 'Gorontalo'),
('PR020', 'Sulawesi Barat'),
('PR021', 'Sulawesi Selatan'),
('PR022', 'Sulawesi Tenggara'),
('PR023', 'Sulawesi Utara'),
('PR024', 'Aceh'),
('PR025', 'Bengkulu'),
('PR026', 'Jambi'),
('PR027', 'Kepulauan Bangka Belitung'),
('PR028', 'Kepulauan Riau'),
('PR029', 'Lampung'),
('PR030', 'Riau'),
('PR031', 'Sumatra Barat'),
('PR032', 'Sumatra Selatan'),
('PR033', 'Sumatra Utara'),
('PR034', 'Sulawesi Tengah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `star_pengguna`
--

CREATE TABLE `star_pengguna` (
  `id_star` char(10) NOT NULL,
  `rate_poin` int(3) DEFAULT NULL,
  `id_receive` char(10) DEFAULT NULL,
  `id_send` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `adminrole`
--
ALTER TABLE `adminrole`
  ADD PRIMARY KEY (`id_role`);

--
-- Indeks untuk tabel `admintable`
--
ALTER TABLE `admintable`
  ADD PRIMARY KEY (`id_admin`),
  ADD KEY `id_role` (`id_role`);

--
-- Indeks untuk tabel `berkas`
--
ALTER TABLE `berkas`
  ADD PRIMARY KEY (`id_berkas`);

--
-- Indeks untuk tabel `cvguru`
--
ALTER TABLE `cvguru`
  ADD PRIMARY KEY (`id_cv`),
  ADD KEY `id_dguru` (`id_dguru`);

--
-- Indeks untuk tabel `data_guru`
--
ALTER TABLE `data_guru`
  ADD PRIMARY KEY (`id_dguru`),
  ADD KEY `id_kabupaten` (`id_kabupaten`),
  ADD KEY `id_peringkat` (`id_peringkat`);

--
-- Indeks untuk tabel `data_pengguna`
--
ALTER TABLE `data_pengguna`
  ADD PRIMARY KEY (`id_udata`),
  ADD KEY `id_kabupaten` (`id_kabupaten`),
  ADD KEY `id_peringkat` (`id_peringkat`),
  ADD KEY `id_berkas` (`id_berkas`);

--
-- Indeks untuk tabel `forget_password`
--
ALTER TABLE `forget_password`
  ADD PRIMARY KEY (`verify_code`);

--
-- Indeks untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id_guru`),
  ADD KEY `id_dguru` (`id_dguru`);

--
-- Indeks untuk tabel `help_ticket`
--
ALTER TABLE `help_ticket`
  ADD PRIMARY KEY (`id_ticket`);

--
-- Indeks untuk tabel `jadwal_guru`
--
ALTER TABLE `jadwal_guru`
  ADD PRIMARY KEY (`id_jguru`),
  ADD KEY `id_dguru` (`id_dguru`);

--
-- Indeks untuk tabel `kabupaten`
--
ALTER TABLE `kabupaten`
  ADD PRIMARY KEY (`id_kabupaten`),
  ADD KEY `id_prov` (`id_prov`);

--
-- Indeks untuk tabel `les_private`
--
ALTER TABLE `les_private`
  ADD PRIMARY KEY (`id_les`),
  ADD KEY `id_jguru` (`id_jguru`),
  ADD KEY `id_mapelguru` (`id_mapelguru`),
  ADD KEY `id_udata` (`id_udata`);

--
-- Indeks untuk tabel `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`id_mapel`);

--
-- Indeks untuk tabel `mapel_guru`
--
ALTER TABLE `mapel_guru`
  ADD PRIMARY KEY (`id_mapelguru`),
  ADD KEY `id_dguru` (`id_dguru`),
  ADD KEY `id_mapel` (`id_mapel`);

--
-- Indeks untuk tabel `nilai_mapel`
--
ALTER TABLE `nilai_mapel`
  ADD PRIMARY KEY (`id_nilai`),
  ADD KEY `id_udata` (`id_udata`),
  ADD KEY `id_mapel` (`id_mapel`);

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_udata` (`id_udata`);

--
-- Indeks untuk tabel `peringkat`
--
ALTER TABLE `peringkat`
  ADD PRIMARY KEY (`id_peringkat`);

--
-- Indeks untuk tabel `provinsi`
--
ALTER TABLE `provinsi`
  ADD PRIMARY KEY (`id_prov`);

--
-- Indeks untuk tabel `star_pengguna`
--
ALTER TABLE `star_pengguna`
  ADD PRIMARY KEY (`id_star`),
  ADD KEY `fk_idreceiver` (`id_receive`),
  ADD KEY `fk_idsend` (`id_send`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `forget_password`
--
ALTER TABLE `forget_password`
  MODIFY `verify_code` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2122137923;

--
-- AUTO_INCREMENT untuk tabel `help_ticket`
--
ALTER TABLE `help_ticket`
  MODIFY `id_ticket` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `nilai_mapel`
--
ALTER TABLE `nilai_mapel`
  MODIFY `id_nilai` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=560;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `admintable`
--
ALTER TABLE `admintable`
  ADD CONSTRAINT `admintable_ibfk_1` FOREIGN KEY (`id_role`) REFERENCES `adminrole` (`id_role`);

--
-- Ketidakleluasaan untuk tabel `cvguru`
--
ALTER TABLE `cvguru`
  ADD CONSTRAINT `cvguru_ibfk_1` FOREIGN KEY (`id_dguru`) REFERENCES `data_guru` (`id_dguru`);

--
-- Ketidakleluasaan untuk tabel `data_guru`
--
ALTER TABLE `data_guru`
  ADD CONSTRAINT `data_guru_ibfk_1` FOREIGN KEY (`id_kabupaten`) REFERENCES `kabupaten` (`id_kabupaten`),
  ADD CONSTRAINT `data_guru_ibfk_2` FOREIGN KEY (`id_peringkat`) REFERENCES `peringkat` (`id_peringkat`);

--
-- Ketidakleluasaan untuk tabel `data_pengguna`
--
ALTER TABLE `data_pengguna`
  ADD CONSTRAINT `data_pengguna_ibfk_1` FOREIGN KEY (`id_kabupaten`) REFERENCES `kabupaten` (`id_kabupaten`),
  ADD CONSTRAINT `data_pengguna_ibfk_2` FOREIGN KEY (`id_peringkat`) REFERENCES `peringkat` (`id_peringkat`),
  ADD CONSTRAINT `data_pengguna_ibfk_3` FOREIGN KEY (`id_berkas`) REFERENCES `berkas` (`id_berkas`);

--
-- Ketidakleluasaan untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD CONSTRAINT `guru_ibfk_1` FOREIGN KEY (`id_dguru`) REFERENCES `data_guru` (`id_dguru`);

--
-- Ketidakleluasaan untuk tabel `jadwal_guru`
--
ALTER TABLE `jadwal_guru`
  ADD CONSTRAINT `jadwal_guru_ibfk_1` FOREIGN KEY (`id_dguru`) REFERENCES `data_guru` (`id_dguru`);

--
-- Ketidakleluasaan untuk tabel `kabupaten`
--
ALTER TABLE `kabupaten`
  ADD CONSTRAINT `kabupaten_ibfk_1` FOREIGN KEY (`id_prov`) REFERENCES `provinsi` (`id_prov`);

--
-- Ketidakleluasaan untuk tabel `les_private`
--
ALTER TABLE `les_private`
  ADD CONSTRAINT `les_private_ibfk_1` FOREIGN KEY (`id_jguru`) REFERENCES `jadwal_guru` (`id_jguru`),
  ADD CONSTRAINT `les_private_ibfk_2` FOREIGN KEY (`id_mapelguru`) REFERENCES `mapel_guru` (`id_mapelguru`),
  ADD CONSTRAINT `les_private_ibfk_3` FOREIGN KEY (`id_udata`) REFERENCES `data_pengguna` (`id_udata`);

--
-- Ketidakleluasaan untuk tabel `mapel_guru`
--
ALTER TABLE `mapel_guru`
  ADD CONSTRAINT `mapel_guru_ibfk_1` FOREIGN KEY (`id_dguru`) REFERENCES `data_guru` (`id_dguru`),
  ADD CONSTRAINT `mapel_guru_ibfk_2` FOREIGN KEY (`id_mapel`) REFERENCES `mapel` (`id_mapel`);

--
-- Ketidakleluasaan untuk tabel `nilai_mapel`
--
ALTER TABLE `nilai_mapel`
  ADD CONSTRAINT `nilai_mapel_ibfk_1` FOREIGN KEY (`id_udata`) REFERENCES `data_pengguna` (`id_udata`),
  ADD CONSTRAINT `nilai_mapel_ibfk_2` FOREIGN KEY (`id_mapel`) REFERENCES `mapel` (`id_mapel`);

--
-- Ketidakleluasaan untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD CONSTRAINT `fk_udata` FOREIGN KEY (`id_udata`) REFERENCES `data_pengguna` (`id_udata`);

--
-- Ketidakleluasaan untuk tabel `star_pengguna`
--
ALTER TABLE `star_pengguna`
  ADD CONSTRAINT `fk_idreceiver` FOREIGN KEY (`id_receive`) REFERENCES `data_pengguna` (`id_udata`),
  ADD CONSTRAINT `fk_idsend` FOREIGN KEY (`id_send`) REFERENCES `data_pengguna` (`id_udata`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
