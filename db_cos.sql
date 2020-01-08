-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 08 Jan 2020 pada 12.32
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
-- Database: `serah`
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
('BRAA000003', 0, 'undefined', 'imgBRAA000003.jpeg'),
('BRAA000004', 0, 'undefined', 'imgBRAA000004.jpg'),
('BRAA000005', 0, 'undefined', 'undefined');

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
('UDAA000003', 'Baru Membuat', '2003-03-06', 'M', 2002, '9194919191', 'andora@gmail.com', '01010101010', 'Belum menulis alamat', 'KB413', 'PK001', 'SMA 1 Gerato', '3', '3', 'BRAA000003'),
('UDAA000004', 'Herlandro Test', '2019-10-09', 'M', 4120, '25252424', 'herlandro@gmail.com', '0832939223', 'Jln Puncak Tidar', 'KB249', 'PK001', 'SMP 2 Kalibata City', 'SMP', '2', 'BRAA000004'),
('UDAA000005', 'Letmego', '2005-01-21', 'F', 0, '9193193233', 'user1@gmail.com', '0832939223', 'Belum mengisi alamat', 'KB000', 'PK001', 'SMA 2 Kalibata City', 'SMA', '1', 'BRAA000005');

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
(5, 'herlandro', 'herlandroo@yahoo.com', 'Password salah katanya', 'Report Bug', 'ada bug mas.\r\n\r\nsaya sudah coba beberapa kali tetep gabisa', 'Read');

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
  `id_nilai` char(10) NOT NULL,
  `id_udata` char(10) DEFAULT NULL,
  `id_mapel` char(6) DEFAULT NULL,
  `nilai` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
('IDAA000003', 'uu', '123', 'UDAA000003', 'Active', 'No Reason'),
('IDAA000004', 'eee', '222', 'UDAA000004', 'Active', 'No Reason'),
('IDAA000005', 'let', '12345', 'UDAA000005', 'Active', 'No Reason');

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
  MODIFY `id_ticket` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
