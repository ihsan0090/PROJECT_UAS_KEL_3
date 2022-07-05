-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Jul 2022 pada 17.31
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smkmetro_sekolah`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_agenda`
--

CREATE TABLE `tbl_agenda` (
  `agenda_id` int(11) NOT NULL,
  `agenda_nama` varchar(200) DEFAULT NULL,
  `agenda_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `agenda_deskripsi` text DEFAULT NULL,
  `agenda_mulai` date DEFAULT NULL,
  `agenda_selesai` date DEFAULT NULL,
  `agenda_tempat` varchar(90) DEFAULT NULL,
  `agenda_waktu` varchar(30) DEFAULT NULL,
  `agenda_keterangan` varchar(200) DEFAULT NULL,
  `agenda_author` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_agenda`
--

INSERT INTO `tbl_agenda` (`agenda_id`, `agenda_nama`, `agenda_tanggal`, `agenda_deskripsi`, `agenda_mulai`, `agenda_selesai`, `agenda_tempat`, `agenda_waktu`, `agenda_keterangan`, `agenda_author`) VALUES
(2, 'Lipsum', '2017-01-22 06:26:33', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc arcu nunc, pretium a enim blandit, blandit lacinia ligula. Suspendisse lacinia tincidunt mi sed sagittis. Aenean a tempor quam. Praesent ac dapibus quam. Nunc ac velit sed elit maximus ullamcorper eget a enim. Donec in leo in tellus pretium faucibus. Praesent et lectus in urna mollis sagittis. Vestibulum et velit vitae sem sagittis posuere eu ac nibh. Integer rhoncus vel massa cursus dignissim.\r\n\r\nSed blandit semper felis, non mollis velit mollis non. Fusce tristique sed purus et accumsan. Fusce vulputate diam ut felis lobortis, vitae interdum tellus placerat. Phasellus tempus est eu consequat iaculis. Nunc placerat ultrices ipsum eget commodo. In tristique at ligula in condimentum. Ut at enim odio. Phasellus a scelerisque libero. Fusce justo sem, ultrices et luctus sit amet, interdum sit amet massa. Sed risus mi, tristique sed nisi sed, laoreet placerat lectus. Duis gravida dui ligula, quis placerat tellus luctus sed. Quisque quam purus, efficitur ac porta non, dignissim id diam. Phasellus eleifend velit ac augue semper laoreet. Vestibulum rhoncus, urna at sagittis semper, neque odio pulvinar nunc, quis dapibus mauris elit sed arcu. Proin at nibh malesuada, dignissim velit ac, tincidunt tellus. Duis condimentum euismod tellus, vitae sagittis leo suscipit vitae.\r\n\r\nProin lobortis volutpat porttitor. Maecenas at porta augue. Duis eget ornare nibh, sit amet mattis augue. Sed ultrices fermentum urna eu consectetur. In aliquam quam non metus vestibulum blandit eget non diam. Curabitur non orci nec ligula eleifend vehicula eu vel purus. Duis iaculis mauris orci, ut ornare sem finibus eget. Integer nec dignissim justo. Cras rhoncus tellus id euismod suscipit. Donec elementum euismod faucibus. Suspendisse vehicula lorem purus, id placerat sem efficitur at. Nullam eget diam ut odio varius tincidunt. Quisque imperdiet elit nec blandit pretium. Nulla ac lacinia elit, nec posuere metus. Maecenas et facilisis sem, a maximus nisl.\r\n\r\nDonec tellus nibh, dapibus in porttitor nec, facilisis ac lectus. Aliquam semper consequat nulla. Duis placerat neque nec neque molestie, ac aliquam est mollis. Nunc imperdiet, nibh at scelerisque fringilla, tortor velit euismod neque, non efficitur erat augue quis lectus. In hac habitasse platea dictumst. Cras faucibus magna et velit suscipit pharetra. Nunc at euismod libero, vel posuere mi. Duis in felis in nunc dictum pulvinar.\r\n\r\nEtiam vitae lectus nisi. Quisque eget tellus ut velit mattis egestas vitae non diam. Nunc quis tristique justo. Nam a pellentesque sapien. Maecenas iaculis at mauris placerat sodales. Aliquam porttitor sapien nisl, non vulputate ex consequat non. Duis id ante sed massa elementum ullamcorper.', '2017-01-04', '2017-01-04', 'M-Sekolah', '07.30 - 12.00 WIB', '-', 'IHSAN'),
(4, 'asdad', '2022-06-15 07:51:22', 'asdad', '2022-06-06', '2022-06-15', 'adasd', '13.00', 'aasda', 'IHSAN');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_album`
--

CREATE TABLE `tbl_album` (
  `album_id` int(11) NOT NULL,
  `album_nama` varchar(50) DEFAULT NULL,
  `album_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `album_pengguna_id` int(11) DEFAULT NULL,
  `album_author` varchar(60) DEFAULT NULL,
  `album_count` int(11) DEFAULT 0,
  `album_cover` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_album`
--

INSERT INTO `tbl_album` (`album_id`, `album_nama`, `album_tanggal`, `album_pengguna_id`, `album_author`, `album_count`, `album_cover`) VALUES
(5, 'MEME 6', '2021-07-03 09:01:06', 5, 'IHSAN', 0, '758327a11a65af3c288e63c1c5442a99.jpg'),
(6, 'MEME 5', '2021-07-03 09:01:45', 5, 'IHSAN', -2, '9db82489acbdbd2372b61f9636f0afd7.jpg'),
(7, 'MEME 4', '2021-07-03 09:02:13', 5, 'IHSAN', 0, 'dde8da57cc30c18befc7b74a2a6eb5af.jpg'),
(8, 'MEME 3', '2021-07-03 09:02:57', 5, 'IHSAN', 0, '957d91ea1d43b113f5a5063f18b97b1e.jpg'),
(9, 'MEME 2', '2021-07-03 09:03:43', 5, 'IHSAN', 4, '44c4e53f263dabcec18f13482b6184e8.jpg'),
(10, 'MEME 1', '2021-07-03 09:03:58', 5, 'IHSAN', 5, '491f28c44de050f1897c2f82bceec514.jpg'),
(11, 'giat baksos', '2022-06-15 07:35:41', 1, 'Tata', 2, '75c30a06d0bf09aa91cada5d7c2bd6ff.JPG');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_files`
--

CREATE TABLE `tbl_files` (
  `file_id` int(11) NOT NULL,
  `file_judul` varchar(120) DEFAULT NULL,
  `file_deskripsi` text DEFAULT NULL,
  `file_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `file_oleh` varchar(60) DEFAULT NULL,
  `file_data` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_galeri`
--

CREATE TABLE `tbl_galeri` (
  `galeri_id` int(11) NOT NULL,
  `galeri_judul` varchar(60) DEFAULT NULL,
  `galeri_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `galeri_gambar` varchar(40) DEFAULT NULL,
  `galeri_album_id` int(11) DEFAULT NULL,
  `galeri_pengguna_id` int(11) DEFAULT NULL,
  `galeri_author` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_galeri`
--

INSERT INTO `tbl_galeri` (`galeri_id`, `galeri_judul`, `galeri_tanggal`, `galeri_gambar`, `galeri_album_id`, `galeri_pengguna_id`, `galeri_author`) VALUES
(48, 'LDKS 2', '2021-07-03 09:11:32', 'ca1cf5b5b483f14170e7e06a2977b4ee.jpg', 7, 5, 'IHSAN'),
(49, 'Lipsum 3', '2021-07-03 09:11:43', '3c87d9e2dad2c1fc2076bebe15cf7e6f.jpg', 9, 5, 'IHSAN'),
(50, 'Lipsum 3', '2021-07-03 09:11:57', '74f8a8ad9b3609b71ab61201160d498d.jpg', 10, 5, 'IHSAN'),
(51, 'Lipsum 2', '2021-07-03 09:12:13', 'b2fb786fc2e7619c3002312ceb5ceecf.jpg', 10, 5, 'IHSAN'),
(52, 'Lipsum 2', '2021-07-03 09:38:29', 'bbf37fc112babb28479eb726a915b5b5.jpg', 9, 5, 'IHSAN'),
(53, 'Lipsum', '2021-07-03 09:38:46', '9c06d9a060a7b06621cc4290a68bd4b6.jpg', 9, 5, 'IHSAN'),
(55, 'Lipsum', '2021-07-03 09:39:17', '641e2825165a71ae459db9a195178420.jpg', 9, 5, 'IHSAN'),
(57, 'baksos 1', '2022-06-15 07:37:22', '39989313feaa7212afd0a1bede0f346d.jpg', 11, 1, 'Tata'),
(58, 'baksos 2', '2022-06-15 07:37:56', '3ec8db7a0fd47d8b94fc906c7bca63ce.jpg', 11, 1, 'Tata');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_guru`
--

CREATE TABLE `tbl_guru` (
  `guru_id` int(11) NOT NULL,
  `guru_nip` varchar(30) DEFAULT NULL,
  `guru_password` varchar(15) DEFAULT NULL,
  `guru_nama` varchar(70) DEFAULT NULL,
  `guru_jenkel` varchar(2) DEFAULT NULL,
  `guru_tmp_lahir` varchar(80) DEFAULT NULL,
  `guru_tgl_lahir` varchar(80) DEFAULT NULL,
  `guru_photo` varchar(40) DEFAULT NULL,
  `guru_tgl_input` timestamp NULL DEFAULT current_timestamp(),
  `guru_mapel` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_guru`
--

INSERT INTO `tbl_guru` (`guru_id`, `guru_nip`, `guru_password`, `guru_nama`, `guru_jenkel`, `guru_tmp_lahir`, `guru_tgl_lahir`, `guru_photo`, `guru_tgl_input`, `guru_mapel`) VALUES
(9, '21551216', '21551216', '2155121622', 'P', 'medan', '20 agustus 1980', '75f62e8bc34955c649eb2ed8f93d618c.jpg', '2022-06-15 07:39:54', 'jakaarta'),
(13, '222333', 'wsdasdad', 'RENI', 'P', 'surabaya', '25 juni 1980', '322cf638768ed1623b323aefa286099b.png', '2022-07-04 09:27:01', 'PLKJ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_inbox`
--

CREATE TABLE `tbl_inbox` (
  `inbox_id` int(11) NOT NULL,
  `inbox_nama` varchar(40) DEFAULT NULL,
  `inbox_email` varchar(60) DEFAULT NULL,
  `inbox_kontak` varchar(20) DEFAULT NULL,
  `inbox_pesan` text DEFAULT NULL,
  `inbox_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `inbox_status` int(11) DEFAULT 1 COMMENT '1=Belum dilihat, 0=Telah dilihat'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_inbox`
--

INSERT INTO `tbl_inbox` (`inbox_id`, `inbox_nama`, `inbox_email`, `inbox_kontak`, `inbox_pesan`, `inbox_tanggal`, `inbox_status`) VALUES
(9, 'ADASD', 'ADAD@SDADAD', '2323123', 'WRDFSDFSF', '2022-06-15 07:40:56', 0),
(10, 'ASDAD', 'RERER@DDFD', 'SADSDA', 'WEADAD', '2022-06-15 07:41:27', 0),
(11, 'IHSAN NUR RAHMAN', 'haaseeggaw4@gmail.com', '089698130294', 'fsdfs', '2022-06-17 18:00:20', 0),
(12, 'asd', 'sad@sd', '23232423', 'asdadasd', '2022-06-26 10:33:13', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(30) DEFAULT NULL,
  `kategori_tanggal` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`kategori_id`, `kategori_nama`, `kategori_tanggal`) VALUES
(1, 'Pendidikan', '2016-09-06 05:49:04'),
(2, 'Politik', '2016-09-06 05:50:01'),
(5, 'Penelitian', '2016-09-06 06:19:26'),
(6, 'Prestasi', '2016-09-07 02:51:09'),
(13, 'Olah Raga', '2017-01-13 13:20:31'),
(14, 'Hiburan', '2022-07-05 05:55:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kelas`
--

CREATE TABLE `tbl_kelas` (
  `kelas_id` int(11) NOT NULL,
  `kelas_nama` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kelas`
--

INSERT INTO `tbl_kelas` (`kelas_id`, `kelas_nama`) VALUES
(1, 'Kelas X.1'),
(2, 'Kelas X.2'),
(3, 'Kelas X.3'),
(4, 'Kelas X.4'),
(5, 'Kelas X.5'),
(6, 'Kelas X.6'),
(7, 'Kelas X.7'),
(8, 'Kelas XI IPA.1'),
(9, 'Kelas XI IPA.2'),
(10, 'Kelas XI IPA.3'),
(11, 'Kelas XI IPA.4'),
(12, 'Kelas XI IPA.5'),
(13, 'Kelas XI IPA.6'),
(14, 'Kelas XI IPA.7'),
(15, 'Kelas XI IPS.1'),
(16, 'Kelas XI IPS.2'),
(17, 'Kelas XI IPS.3'),
(18, 'Kelas XI IPS.4'),
(19, 'Kelas XI IPS.5'),
(20, 'Kelas XI IPS.6'),
(21, 'Kelas XI IPS.7');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_komentar`
--

CREATE TABLE `tbl_komentar` (
  `komentar_id` int(11) NOT NULL,
  `komentar_nama` varchar(30) DEFAULT NULL,
  `komentar_email` varchar(50) DEFAULT NULL,
  `komentar_isi` varchar(120) DEFAULT NULL,
  `komentar_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `komentar_status` varchar(2) DEFAULT NULL,
  `komentar_tulisan_id` int(11) DEFAULT NULL,
  `komentar_parent` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_komentar`
--

INSERT INTO `tbl_komentar` (`komentar_id`, `komentar_nama`, `komentar_email`, `komentar_isi`, `komentar_tanggal`, `komentar_status`, `komentar_tulisan_id`, `komentar_parent`) VALUES
(6, 'iashjj', 'adkas@fas', ' sdadw', '2022-06-27 03:52:08', '1', 27, 0),
(7, 'wakwak', '', 'ewew', '2022-06-27 03:57:05', '1', 27, 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_log_aktivitas`
--

CREATE TABLE `tbl_log_aktivitas` (
  `log_id` int(11) NOT NULL,
  `log_nama` text DEFAULT NULL,
  `log_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `log_ip` varchar(20) DEFAULT NULL,
  `log_pengguna_id` int(11) DEFAULT NULL,
  `log_icon` blob DEFAULT NULL,
  `log_jenis_icon` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengguna`
--

CREATE TABLE `tbl_pengguna` (
  `pengguna_id` int(11) NOT NULL,
  `pengguna_nama` varchar(50) DEFAULT NULL,
  `pengguna_jenkel` varchar(2) DEFAULT NULL,
  `pengguna_username` varchar(30) DEFAULT NULL,
  `pengguna_password` varchar(35) DEFAULT NULL,
  `pengguna_email` varchar(50) DEFAULT NULL,
  `pengguna_nohp` varchar(20) DEFAULT NULL,
  `pengguna_status` int(2) DEFAULT 1,
  `pengguna_level` varchar(3) DEFAULT NULL,
  `pengguna_register` timestamp NULL DEFAULT current_timestamp(),
  `pengguna_photo` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pengguna`
--

INSERT INTO `tbl_pengguna` (`pengguna_id`, `pengguna_nama`, `pengguna_jenkel`, `pengguna_username`, `pengguna_password`, `pengguna_email`, `pengguna_nohp`, `pengguna_status`, `pengguna_level`, `pengguna_register`, `pengguna_photo`) VALUES
(5, 'IHSAN', 'L', 'loking9090', 'loking9090', 'ihsannurrahman1241@gmail.com', '087715642215', 1, '1', '2022-06-15 07:47:43', '1b308099d129a60a930ceb2085bb710f.png'),
(6, 'YANTI', 'P', 'yanti222', 'emas168', 'yantisuryani@gmail.com', '085611254463', 1, '1', '2022-06-15 07:48:53', '2f56db00bbbd344b423b58fa098b0219.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengumuman`
--

CREATE TABLE `tbl_pengumuman` (
  `pengumuman_id` int(11) NOT NULL,
  `pengumuman_judul` varchar(150) DEFAULT NULL,
  `pengumuman_deskripsi` text DEFAULT NULL,
  `pengumuman_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `pengumuman_author` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pengumuman`
--

INSERT INTO `tbl_pengumuman` (`pengumuman_id`, `pengumuman_judul`, `pengumuman_deskripsi`, `pengumuman_tanggal`, `pengumuman_author`) VALUES
(1, 'Lipsum 3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc arcu nunc, pretium a enim blandit, blandit lacinia ligula. Suspendisse lacinia tincidunt mi sed sagittis. Aenean a tempor quam. Praesent ac dapibus quam. Nunc ac velit sed elit maximus ullamcorper eget a enim. Donec in leo in tellus pretium faucibus. Praesent et lectus in urna mollis sagittis. Vestibulum et velit vitae sem sagittis posuere eu ac nibh. Integer rhoncus vel massa cursus dignissim.\r\n\r\nSed blandit semper felis, non mollis velit mollis non. Fusce tristique sed purus et accumsan. Fusce vulputate diam ut felis lobortis, vitae interdum tellus placerat. Phasellus tempus est eu consequat iaculis. Nunc placerat ultrices ipsum eget commodo. In tristique at ligula in condimentum. Ut at enim odio. Phasellus a scelerisque libero. Fusce justo sem, ultrices et luctus sit amet, interdum sit amet massa. Sed risus mi, tristique sed nisi sed, laoreet placerat lectus. Duis gravida dui ligula, quis placerat tellus luctus sed. Quisque quam purus, efficitur ac porta non, dignissim id diam. Phasellus eleifend velit ac augue semper laoreet. Vestibulum rhoncus, urna at sagittis semper, neque odio pulvinar nunc, quis dapibus mauris elit sed arcu. Proin at nibh malesuada, dignissim velit ac, tincidunt tellus. Duis condimentum euismod tellus, vitae sagittis leo suscipit vitae.\r\n\r\nProin lobortis volutpat porttitor. Maecenas at porta augue. Duis eget ornare nibh, sit amet mattis augue. Sed ultrices fermentum urna eu consectetur. In aliquam quam non metus vestibulum blandit eget non diam. Curabitur non orci nec ligula eleifend vehicula eu vel purus. Duis iaculis mauris orci, ut ornare sem finibus eget. Integer nec dignissim justo. Cras rhoncus tellus id euismod suscipit. Donec elementum euismod faucibus. Suspendisse vehicula lorem purus, id placerat sem efficitur at. Nullam eget diam ut odio varius tincidunt. Quisque imperdiet elit nec blandit pretium. Nulla ac lacinia elit, nec posuere metus. Maecenas et facilisis sem, a maximus nisl.\r\n\r\nDonec tellus nibh, dapibus in porttitor nec, facilisis ac lectus. Aliquam semper consequat nulla. Duis placerat neque nec neque molestie, ac aliquam est mollis. Nunc imperdiet, nibh at scelerisque fringilla, tortor velit euismod neque, non efficitur erat augue quis lectus. In hac habitasse platea dictumst. Cras faucibus magna et velit suscipit pharetra. Nunc at euismod libero, vel posuere mi. Duis in felis in nunc dictum pulvinar.\r\n\r\nEtiam vitae lectus nisi. Quisque eget tellus ut velit mattis egestas vitae non diam. Nunc quis tristique justo. Nam a pellentesque sapien. Maecenas iaculis at mauris placerat sodales. Aliquam porttitor sapien nisl, non vulputate ex consequat non. Duis id ante sed massa elementum ullamcorper.', '2017-01-21 01:17:30', 'IHSAN'),
(2, 'Lipsum 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc arcu nunc, pretium a enim blandit, blandit lacinia ligula. Suspendisse lacinia tincidunt mi sed sagittis. Aenean a tempor quam. Praesent ac dapibus quam. Nunc ac velit sed elit maximus ullamcorper eget a enim. Donec in leo in tellus pretium faucibus. Praesent et lectus in urna mollis sagittis. Vestibulum et velit vitae sem sagittis posuere eu ac nibh. Integer rhoncus vel massa cursus dignissim.\r\n\r\nSed blandit semper felis, non mollis velit mollis non. Fusce tristique sed purus et accumsan. Fusce vulputate diam ut felis lobortis, vitae interdum tellus placerat. Phasellus tempus est eu consequat iaculis. Nunc placerat ultrices ipsum eget commodo. In tristique at ligula in condimentum. Ut at enim odio. Phasellus a scelerisque libero. Fusce justo sem, ultrices et luctus sit amet, interdum sit amet massa. Sed risus mi, tristique sed nisi sed, laoreet placerat lectus. Duis gravida dui ligula, quis placerat tellus luctus sed. Quisque quam purus, efficitur ac porta non, dignissim id diam. Phasellus eleifend velit ac augue semper laoreet. Vestibulum rhoncus, urna at sagittis semper, neque odio pulvinar nunc, quis dapibus mauris elit sed arcu. Proin at nibh malesuada, dignissim velit ac, tincidunt tellus. Duis condimentum euismod tellus, vitae sagittis leo suscipit vitae.\r\n\r\nProin lobortis volutpat porttitor. Maecenas at porta augue. Duis eget ornare nibh, sit amet mattis augue. Sed ultrices fermentum urna eu consectetur. In aliquam quam non metus vestibulum blandit eget non diam. Curabitur non orci nec ligula eleifend vehicula eu vel purus. Duis iaculis mauris orci, ut ornare sem finibus eget. Integer nec dignissim justo. Cras rhoncus tellus id euismod suscipit. Donec elementum euismod faucibus. Suspendisse vehicula lorem purus, id placerat sem efficitur at. Nullam eget diam ut odio varius tincidunt. Quisque imperdiet elit nec blandit pretium. Nulla ac lacinia elit, nec posuere metus. Maecenas et facilisis sem, a maximus nisl.\r\n\r\nDonec tellus nibh, dapibus in porttitor nec, facilisis ac lectus. Aliquam semper consequat nulla. Duis placerat neque nec neque molestie, ac aliquam est mollis. Nunc imperdiet, nibh at scelerisque fringilla, tortor velit euismod neque, non efficitur erat augue quis lectus. In hac habitasse platea dictumst. Cras faucibus magna et velit suscipit pharetra. Nunc at euismod libero, vel posuere mi. Duis in felis in nunc dictum pulvinar.\r\n\r\nEtiam vitae lectus nisi. Quisque eget tellus ut velit mattis egestas vitae non diam. Nunc quis tristique justo. Nam a pellentesque sapien. Maecenas iaculis at mauris placerat sodales. Aliquam porttitor sapien nisl, non vulputate ex consequat non. Duis id ante sed massa elementum ullamcorper.', '2017-01-21 01:16:20', 'IHSAN'),
(3, 'Lipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc arcu nunc, pretium a enim blandit, blandit lacinia ligula. Suspendisse lacinia tincidunt mi sed sagittis. Aenean a tempor quam. Praesent ac dapibus quam. Nunc ac velit sed elit maximus ullamcorper eget a enim. Donec in leo in tellus pretium faucibus. Praesent et lectus in urna mollis sagittis. Vestibulum et velit vitae sem sagittis posuere eu ac nibh. Integer rhoncus vel massa cursus dignissim.\r\n\r\nSed blandit semper felis, non mollis velit mollis non. Fusce tristique sed purus et accumsan. Fusce vulputate diam ut felis lobortis, vitae interdum tellus placerat. Phasellus tempus est eu consequat iaculis. Nunc placerat ultrices ipsum eget commodo. In tristique at ligula in condimentum. Ut at enim odio. Phasellus a scelerisque libero. Fusce justo sem, ultrices et luctus sit amet, interdum sit amet massa. Sed risus mi, tristique sed nisi sed, laoreet placerat lectus. Duis gravida dui ligula, quis placerat tellus luctus sed. Quisque quam purus, efficitur ac porta non, dignissim id diam. Phasellus eleifend velit ac augue semper laoreet. Vestibulum rhoncus, urna at sagittis semper, neque odio pulvinar nunc, quis dapibus mauris elit sed arcu. Proin at nibh malesuada, dignissim velit ac, tincidunt tellus. Duis condimentum euismod tellus, vitae sagittis leo suscipit vitae.\r\n\r\nProin lobortis volutpat porttitor. Maecenas at porta augue. Duis eget ornare nibh, sit amet mattis augue. Sed ultrices fermentum urna eu consectetur. In aliquam quam non metus vestibulum blandit eget non diam. Curabitur non orci nec ligula eleifend vehicula eu vel purus. Duis iaculis mauris orci, ut ornare sem finibus eget. Integer nec dignissim justo. Cras rhoncus tellus id euismod suscipit. Donec elementum euismod faucibus. Suspendisse vehicula lorem purus, id placerat sem efficitur at. Nullam eget diam ut odio varius tincidunt. Quisque imperdiet elit nec blandit pretium. Nulla ac lacinia elit, nec posuere metus. Maecenas et facilisis sem, a maximus nisl.\r\n\r\nDonec tellus nibh, dapibus in porttitor nec, facilisis ac lectus. Aliquam semper consequat nulla. Duis placerat neque nec neque molestie, ac aliquam est mollis. Nunc imperdiet, nibh at scelerisque fringilla, tortor velit euismod neque, non efficitur erat augue quis lectus. In hac habitasse platea dictumst. Cras faucibus magna et velit suscipit pharetra. Nunc at euismod libero, vel posuere mi. Duis in felis in nunc dictum pulvinar.\r\n\r\nEtiam vitae lectus nisi. Quisque eget tellus ut velit mattis egestas vitae non diam. Nunc quis tristique justo. Nam a pellentesque sapien. Maecenas iaculis at mauris placerat sodales. Aliquam porttitor sapien nisl, non vulputate ex consequat non. Duis id ante sed massa elementum ullamcorper.', '2017-01-22 07:16:16', 'IHSAN'),
(6, 'Baru Hari Pertama Operasi Patuh Jaya, 2 Ribu Orang Kena Tilang', 'asdasdasdasda', '2022-06-17 17:30:31', 'RENI'),
(7, 'Lipsum 3', '87878', '2022-07-05 05:56:05', 'IHSAN');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengunjung`
--

CREATE TABLE `tbl_pengunjung` (
  `pengunjung_id` int(11) NOT NULL,
  `pengunjung_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `pengunjung_ip` varchar(40) DEFAULT NULL,
  `pengunjung_perangkat` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pengunjung`
--

INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES
(930, '2018-08-09 08:04:59', '::1', 'Chrome'),
(931, '2021-01-29 00:57:59', '127.0.0.1', 'Firefox'),
(932, '2021-07-03 02:35:49', '8.25.96.158', 'Firefox'),
(933, '2021-07-03 09:45:41', '140.213.7.123', 'Chrome'),
(934, '2021-07-03 10:29:14', '140.213.33.45', 'Other'),
(935, '2021-07-03 10:33:04', '101.255.140.81', 'Chrome'),
(936, '2021-07-03 13:24:49', '140.213.33.161', 'Chrome'),
(937, '2021-07-04 02:06:09', '8.25.96.158', 'Firefox'),
(938, '2021-07-04 06:03:47', '176.119.29.20', 'Firefox'),
(939, '2021-07-04 06:16:21', '74.120.14.37', 'Other'),
(940, '2021-07-04 07:08:29', '128.1.248.42', 'Chrome'),
(941, '2021-07-04 07:11:45', '176.119.29.3', 'Firefox'),
(942, '2021-07-04 07:14:42', '192.241.215.92', 'Mozilla'),
(943, '2021-07-04 11:36:40', '45.129.18.160', 'Chrome'),
(944, '2021-07-04 12:09:35', '34.79.107.251', 'Other'),
(945, '2021-07-04 13:47:27', '193.118.53.202', 'Chrome'),
(946, '2021-07-04 14:06:15', '116.203.58.207', 'Chrome'),
(947, '2021-07-04 14:32:08', '45.146.164.110', 'Chrome'),
(948, '2021-07-04 15:15:11', '128.14.134.170', 'Chrome'),
(949, '2021-07-04 16:58:00', '61.147.15.66', 'ZTE'),
(950, '2021-07-04 18:33:36', '173.245.202.201', 'Chrome'),
(951, '2021-07-04 20:51:45', '209.107.196.34', 'Chrome'),
(952, '2021-07-04 21:30:13', '80.82.77.192', 'Chrome'),
(953, '2021-07-04 22:30:46', '213.32.122.82', 'Chrome'),
(954, '2021-07-04 23:25:34', '143.110.221.30', 'Chrome'),
(955, '2021-07-04 23:26:14', '165.22.54.72', 'Chrome'),
(956, '2021-07-04 23:26:24', '107.175.31.238', 'Chrome'),
(957, '2021-07-05 00:19:45', '192.241.214.86', 'Mozilla'),
(958, '2021-07-05 00:39:41', '101.128.127.16', 'Other'),
(959, '2021-07-05 00:40:09', '112.215.235.126', 'Chrome'),
(960, '2021-07-05 01:23:42', '138.68.132.66', 'Chrome'),
(961, '2021-07-05 01:50:37', '180.252.119.251', 'Chrome'),
(962, '2021-07-05 02:20:02', '107.189.1.220', 'Internet Explorer'),
(963, '2021-07-05 02:37:22', '184.105.247.254', 'Other'),
(964, '2021-07-05 03:08:10', '162.62.123.46', 'Other'),
(965, '2021-07-05 03:16:33', '142.202.240.122', 'Chrome'),
(966, '2021-07-05 03:17:51', '77.247.110.160', 'Chrome'),
(967, '2021-07-05 03:17:58', '112.215.235.130', 'Chrome'),
(968, '2021-07-05 04:04:17', '64.233.172.140', 'Chrome'),
(969, '2021-07-05 04:19:38', '128.14.134.170', 'Chrome'),
(970, '2021-07-05 05:00:37', '185.220.101.6', 'Baiduspider'),
(971, '2021-07-05 05:01:08', '185.220.100.252', 'Baiduspider'),
(972, '2021-07-05 05:05:24', '18.218.97.64', 'Chrome'),
(973, '2021-07-05 05:11:57', '128.1.248.26', 'Chrome'),
(974, '2021-07-05 07:34:18', '45.146.164.110', 'Chrome'),
(975, '2021-07-05 07:53:53', '192.35.168.112', 'Mozilla'),
(976, '2021-07-05 12:23:09', '140.213.11.37', 'Chrome'),
(977, '2021-07-05 13:17:48', '23.251.102.90', 'Chrome'),
(978, '2021-07-05 13:18:16', '147.139.32.106', 'Other'),
(979, '2021-07-05 13:40:03', '63.141.251.234', 'Chrome'),
(980, '2021-07-05 15:22:58', '142.54.177.6', 'Chrome'),
(981, '2021-07-05 16:05:54', '162.142.125.54', 'Mozilla'),
(982, '2021-07-05 16:30:12', '92.118.160.13', 'Vario'),
(983, '2021-07-05 16:33:46', '192.241.220.237', 'Mozilla'),
(984, '2021-07-05 16:55:01', '112.215.170.210', 'Chrome'),
(985, '2021-07-05 18:03:29', '77.88.5.109', 'YandexBot'),
(986, '2021-07-05 18:03:29', '77.88.5.38', 'YandexBot'),
(987, '2021-07-05 18:19:08', '45.33.96.205', 'Chrome'),
(988, '2021-07-05 19:14:46', '198.204.234.250', 'Chrome'),
(989, '2021-07-05 22:05:12', '23.251.102.74', 'Chrome'),
(990, '2021-07-05 22:44:20', '128.14.134.170', 'Chrome'),
(991, '2021-07-06 00:42:28', '167.71.239.4', 'Other'),
(992, '2021-07-06 00:43:30', '143.198.234.226', 'Chrome'),
(993, '2021-07-06 01:06:32', '37.0.11.16', 'Chrome'),
(994, '2021-07-06 02:22:16', '64.62.197.32', 'Other'),
(995, '2021-07-06 02:52:14', '180.252.117.247', 'Chrome'),
(996, '2021-07-06 02:53:42', '162.62.123.46', 'Other'),
(997, '2021-07-06 03:30:40', '101.128.127.16', 'Firefox'),
(998, '2022-06-15 07:17:21', '::1', 'Chrome'),
(999, '2022-06-17 14:21:15', '::1', 'Chrome'),
(1000, '2022-06-17 17:30:05', '::1', 'Chrome'),
(1001, '2022-06-20 02:17:53', '::1', 'Chrome'),
(1002, '2022-06-21 03:02:13', '::1', 'Chrome'),
(1003, '2022-06-26 08:53:49', '::1', 'Chrome'),
(1004, '2022-06-27 03:51:53', '::1', 'Chrome'),
(1005, '2022-06-28 06:29:56', '::1', 'Chrome'),
(1006, '2022-07-03 11:55:58', '::1', 'Chrome'),
(1007, '2022-07-03 19:00:13', '::1', 'Chrome'),
(1008, '2022-07-05 05:36:29', '::1', 'Chrome');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_siswa`
--

CREATE TABLE `tbl_siswa` (
  `siswa_id` int(11) NOT NULL,
  `siswa_nis` varchar(20) DEFAULT NULL,
  `siswa_password` varchar(15) DEFAULT NULL,
  `siswa_nama` varchar(70) DEFAULT NULL,
  `siswa_jenkel` varchar(2) DEFAULT NULL,
  `siswa_kelas_id` int(11) DEFAULT NULL,
  `siswa_photo` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_siswa`
--

INSERT INTO `tbl_siswa` (`siswa_id`, `siswa_nis`, `siswa_password`, `siswa_nama`, `siswa_jenkel`, `siswa_kelas_id`, `siswa_photo`) VALUES
(22, '5518845422', '5518845422', 'wkwkw', 'L', 4, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_tulisan`
--

CREATE TABLE `tbl_tulisan` (
  `tulisan_id` int(11) NOT NULL,
  `tulisan_judul` varchar(100) DEFAULT NULL,
  `tulisan_isi` text DEFAULT NULL,
  `tulisan_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `tulisan_kategori_id` int(11) DEFAULT NULL,
  `tulisan_kategori_nama` varchar(30) DEFAULT NULL,
  `tulisan_views` int(11) DEFAULT 0,
  `tulisan_gambar` varchar(40) DEFAULT NULL,
  `tulisan_pengguna_id` int(11) DEFAULT NULL,
  `tulisan_author` varchar(40) DEFAULT NULL,
  `tulisan_img_slider` int(2) NOT NULL DEFAULT 0,
  `tulisan_slug` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_tulisan`
--

INSERT INTO `tbl_tulisan` (`tulisan_id`, `tulisan_judul`, `tulisan_isi`, `tulisan_tanggal`, `tulisan_kategori_id`, `tulisan_kategori_nama`, `tulisan_views`, `tulisan_gambar`, `tulisan_pengguna_id`, `tulisan_author`, `tulisan_img_slider`, `tulisan_slug`) VALUES
(20, 'Lipsum 3', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc arcu nunc, pretium a enim blandit, blandit lacinia ligula. Suspendisse lacinia tincidunt mi sed sagittis. Aenean a tempor quam. Praesent ac dapibus quam. Nunc ac velit sed elit maximus ullamcorper eget a enim. Donec in leo in tellus pretium faucibus. Praesent et lectus in urna mollis sagittis. Vestibulum et velit vitae sem sagittis posuere eu ac nibh. Integer rhoncus vel massa cursus dignissim.</p>\r\n\r\n<p>Sed blandit semper felis, non mollis velit mollis non. Fusce tristique sed purus et accumsan. Fusce vulputate diam ut felis lobortis, vitae interdum tellus placerat. Phasellus tempus est eu consequat iaculis. Nunc placerat ultrices ipsum eget commodo. In tristique at ligula in condimentum. Ut at enim odio. Phasellus a scelerisque libero. Fusce justo sem, ultrices et luctus sit amet, interdum sit amet massa. Sed risus mi, tristique sed nisi sed, laoreet placerat lectus. Duis gravida dui ligula, quis placerat tellus luctus sed. Quisque quam purus, efficitur ac porta non, dignissim id diam. Phasellus eleifend velit ac augue semper laoreet. Vestibulum rhoncus, urna at sagittis semper, neque odio pulvinar nunc, quis dapibus mauris elit sed arcu. Proin at nibh malesuada, dignissim velit ac, tincidunt tellus. Duis condimentum euismod tellus, vitae sagittis leo suscipit vitae.</p>\r\n\r\n<p>Proin lobortis volutpat porttitor. Maecenas at porta augue. Duis eget ornare nibh, sit amet mattis augue. Sed ultrices fermentum urna eu consectetur. In aliquam quam non metus vestibulum blandit eget non diam. Curabitur non orci nec ligula eleifend vehicula eu vel purus. Duis iaculis mauris orci, ut ornare sem finibus eget. Integer nec dignissim justo. Cras rhoncus tellus id euismod suscipit. Donec elementum euismod faucibus. Suspendisse vehicula lorem purus, id placerat sem efficitur at. Nullam eget diam ut odio varius tincidunt. Quisque imperdiet elit nec blandit pretium. Nulla ac lacinia elit, nec posuere metus. Maecenas et facilisis sem, a maximus nisl.</p>\r\n\r\n<p>Donec tellus nibh, dapibus in porttitor nec, facilisis ac lectus. Aliquam semper consequat nulla. Duis placerat neque nec neque molestie, ac aliquam est mollis. Nunc imperdiet, nibh at scelerisque fringilla, tortor velit euismod neque, non efficitur erat augue quis lectus. In hac habitasse platea dictumst. Cras faucibus magna et velit suscipit pharetra. Nunc at euismod libero, vel posuere mi. Duis in felis in nunc dictum pulvinar.</p>\r\n\r\n<p>Etiam vitae lectus nisi. Quisque eget tellus ut velit mattis egestas vitae non diam. Nunc quis tristique justo. Nam a pellentesque sapien. Maecenas iaculis at mauris placerat sodales. Aliquam porttitor sapien nisl, non vulputate ex consequat non. Duis id ante sed massa elementum ullamcorper.</p>\r\n', '2017-05-17 09:24:42', 1, 'Pendidikan', 29, '0a927c6d34dc5560b72f053313f14638.jpg', 5, 'IHSAN', 0, 'lipsum-3'),
(22, 'Lipsum 2', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc arcu nunc, pretium a enim blandit, blandit lacinia ligula. Suspendisse lacinia tincidunt mi sed sagittis. Aenean a tempor quam. Praesent ac dapibus quam. Nunc ac velit sed elit maximus ullamcorper eget a enim. Donec in leo in tellus pretium faucibus. Praesent et lectus in urna mollis sagittis. Vestibulum et velit vitae sem sagittis posuere eu ac nibh. Integer rhoncus vel massa cursus dignissim.</p>\r\n\r\n<p>Sed blandit semper felis, non mollis velit mollis non. Fusce tristique sed purus et accumsan. Fusce vulputate diam ut felis lobortis, vitae interdum tellus placerat. Phasellus tempus est eu consequat iaculis. Nunc placerat ultrices ipsum eget commodo. In tristique at ligula in condimentum. Ut at enim odio. Phasellus a scelerisque libero. Fusce justo sem, ultrices et luctus sit amet, interdum sit amet massa. Sed risus mi, tristique sed nisi sed, laoreet placerat lectus. Duis gravida dui ligula, quis placerat tellus luctus sed. Quisque quam purus, efficitur ac porta non, dignissim id diam. Phasellus eleifend velit ac augue semper laoreet. Vestibulum rhoncus, urna at sagittis semper, neque odio pulvinar nunc, quis dapibus mauris elit sed arcu. Proin at nibh malesuada, dignissim velit ac, tincidunt tellus. Duis condimentum euismod tellus, vitae sagittis leo suscipit vitae.</p>\r\n\r\n<p>Proin lobortis volutpat porttitor. Maecenas at porta augue. Duis eget ornare nibh, sit amet mattis augue. Sed ultrices fermentum urna eu consectetur. In aliquam quam non metus vestibulum blandit eget non diam. Curabitur non orci nec ligula eleifend vehicula eu vel purus. Duis iaculis mauris orci, ut ornare sem finibus eget. Integer nec dignissim justo. Cras rhoncus tellus id euismod suscipit. Donec elementum euismod faucibus. Suspendisse vehicula lorem purus, id placerat sem efficitur at. Nullam eget diam ut odio varius tincidunt. Quisque imperdiet elit nec blandit pretium. Nulla ac lacinia elit, nec posuere metus. Maecenas et facilisis sem, a maximus nisl.</p>\r\n\r\n<p>Donec tellus nibh, dapibus in porttitor nec, facilisis ac lectus. Aliquam semper consequat nulla. Duis placerat neque nec neque molestie, ac aliquam est mollis. Nunc imperdiet, nibh at scelerisque fringilla, tortor velit euismod neque, non efficitur erat augue quis lectus. In hac habitasse platea dictumst. Cras faucibus magna et velit suscipit pharetra. Nunc at euismod libero, vel posuere mi. Duis in felis in nunc dictum pulvinar.</p>\r\n\r\n<p>Etiam vitae lectus nisi. Quisque eget tellus ut velit mattis egestas vitae non diam. Nunc quis tristique justo. Nam a pellentesque sapien. Maecenas iaculis at mauris placerat sodales. Aliquam porttitor sapien nisl, non vulputate ex consequat non. Duis id ante sed massa elementum ullamcorper.</p>\r\n', '2017-05-17 09:38:21', 6, 'Prestasi', 3, 'a59aa487ab2e3b57b2fcf75063b67575.jpg', 5, 'IHSAN', 0, 'lipsum-2'),
(23, 'Lipsum', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc arcu nunc, pretium a enim blandit, blandit lacinia ligula. Suspendisse lacinia tincidunt mi sed sagittis. Aenean a tempor quam. Praesent ac dapibus quam. Nunc ac velit sed elit maximus ullamcorper eget a enim. Donec in leo in tellus pretium faucibus. Praesent et lectus in urna mollis sagittis. Vestibulum et velit vitae sem sagittis posuere eu ac nibh. Integer rhoncus vel massa cursus dignissim.</p>\r\n\r\n<p>Sed blandit semper felis, non mollis velit mollis non. Fusce tristique sed purus et accumsan. Fusce vulputate diam ut felis lobortis, vitae interdum tellus placerat. Phasellus tempus est eu consequat iaculis. Nunc placerat ultrices ipsum eget commodo. In tristique at ligula in condimentum. Ut at enim odio. Phasellus a scelerisque libero. Fusce justo sem, ultrices et luctus sit amet, interdum sit amet massa. Sed risus mi, tristique sed nisi sed, laoreet placerat lectus. Duis gravida dui ligula, quis placerat tellus luctus sed. Quisque quam purus, efficitur ac porta non, dignissim id diam. Phasellus eleifend velit ac augue semper laoreet. Vestibulum rhoncus, urna at sagittis semper, neque odio pulvinar nunc, quis dapibus mauris elit sed arcu. Proin at nibh malesuada, dignissim velit ac, tincidunt tellus. Duis condimentum euismod tellus, vitae sagittis leo suscipit vitae.</p>\r\n\r\n<p>Proin lobortis volutpat porttitor. Maecenas at porta augue. Duis eget ornare nibh, sit amet mattis augue. Sed ultrices fermentum urna eu consectetur. In aliquam quam non metus vestibulum blandit eget non diam. Curabitur non orci nec ligula eleifend vehicula eu vel purus. Duis iaculis mauris orci, ut ornare sem finibus eget. Integer nec dignissim justo. Cras rhoncus tellus id euismod suscipit. Donec elementum euismod faucibus. Suspendisse vehicula lorem purus, id placerat sem efficitur at. Nullam eget diam ut odio varius tincidunt. Quisque imperdiet elit nec blandit pretium. Nulla ac lacinia elit, nec posuere metus. Maecenas et facilisis sem, a maximus nisl.</p>\r\n\r\n<p>Donec tellus nibh, dapibus in porttitor nec, facilisis ac lectus. Aliquam semper consequat nulla. Duis placerat neque nec neque molestie, ac aliquam est mollis. Nunc imperdiet, nibh at scelerisque fringilla, tortor velit euismod neque, non efficitur erat augue quis lectus. In hac habitasse platea dictumst. Cras faucibus magna et velit suscipit pharetra. Nunc at euismod libero, vel posuere mi. Duis in felis in nunc dictum pulvinar.</p>\r\n\r\n<p>Etiam vitae lectus nisi. Quisque eget tellus ut velit mattis egestas vitae non diam. Nunc quis tristique justo. Nam a pellentesque sapien. Maecenas iaculis at mauris placerat sodales. Aliquam porttitor sapien nisl, non vulputate ex consequat non. Duis id ante sed massa elementum ullamcorper.</p>\r\n', '2017-05-17 09:41:30', 1, 'Pendidikan', 18, '12bfb1953df800c59835a2796f8c6619.jpg', 5, 'IHSAN', 0, 'lipsum'),
(27, 'Lipsum 4', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus porta ullamcorper nibh in porttitor. Duis eros elit, elementum vel commodo eget, laoreet a erat. Cras laoreet consectetur lacinia. Nunc scelerisque ex et mi fermentum varius. Integer rutrum nisl ante, quis feugiat sem tempus vel. Suspendisse at euismod orci. Ut eget nisi nulla. Pellentesque consectetur vulputate vulputate. Pellentesque egestas lectus quis rhoncus accumsan. In hac habitasse platea dictumst. Fusce lacus massa, suscipit eget lorem ac, consequat lacinia tellus. Nam vitae magna ac turpis convallis imperdiet vel vel nunc. Maecenas vitae ultrices massa, et blandit enim. Phasellus tincidunt viverra elit, et placerat nisl aliquam in. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>\r\n\r\n<p>Sed vitae diam ultrices, consequat urna vel, luctus arcu. Sed vel blandit nunc, nec vehicula nisl. Sed rhoncus augue sed arcu facilisis pellentesque. Nullam ac velit eget metus interdum sollicitudin. Mauris eget maximus nunc. Nullam finibus facilisis dictum. Nulla facilisi. Morbi vehicula libero sit amet commodo laoreet. In rutrum sem libero, et malesuada nisl fermentum ut. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc porttitor libero eu pharetra iaculis. Donec luctus pretium urna. Etiam id neque tempus, imperdiet augue sit amet, blandit tortor. Vivamus in faucibus lectus.</p>\r\n\r\n<p>Donec lacinia sem lacus, et laoreet augue volutpat in. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In id est nec augue dapibus posuere. Integer nec ultrices turpis. Quisque quis turpis nunc. Suspendisse nec lobortis nisl. Sed vestibulum ultricies mauris, at bibendum mauris. Maecenas ut lacinia diam. Nunc at semper odio, et accumsan sapien. Cras ultricies ex eu ex gravida condimentum. Praesent facilisis urna sit amet dictum porta. Suspendisse potenti. Cras tempus lorem ut felis aliquet faucibus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ac erat id nisl fermentum dictum.</p>\r\n\r\n<p>Fusce non varius odio. Ut sed accumsan erat. In iaculis, ante ac rhoncus interdum, massa enim porttitor orci, ut tincidunt enim nisl a magna. Integer aliquam augue sed eleifend bibendum. Etiam volutpat feugiat ipsum, at lacinia massa rhoncus quis. Pellentesque mattis augue felis, vel ullamcorper arcu imperdiet sit amet. Nam tristique hendrerit lectus placerat hendrerit. Nulla lobortis velit dolor, quis interdum arcu porta ac. Praesent dignissim nulla ut arcu efficitur lacinia. Fusce pharetra risus id magna gravida viverra. Nunc auctor viverra fringilla.</p>\r\n\r\n<p>Nunc sodales purus lectus, vitae ultricies risus faucibus non. Nunc eu tristique purus. Integer rhoncus neque sit amet lorem posuere ultrices. Nulla mattis pretium congue. Vestibulum lacinia eros nec sapien vestibulum mollis. Morbi suscipit, justo eget ornare varius, ipsum nunc facilisis massa, vehicula condimentum dolor velit nec mi. Aliquam in justo in nulla lacinia tristique. Fusce semper mollis risus, a feugiat mi tristique molestie. Nunc iaculis elementum magna fermentum tempor.</p>\r\n', '2022-06-26 14:03:44', 1, 'Pendidikan', 7, '2ddbc85d94cbe128518557ebc8d4bb45.png', 5, 'IHSAN', 0, 'lipsum-4');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_agenda`
--
ALTER TABLE `tbl_agenda`
  ADD PRIMARY KEY (`agenda_id`);

--
-- Indeks untuk tabel `tbl_album`
--
ALTER TABLE `tbl_album`
  ADD PRIMARY KEY (`album_id`),
  ADD KEY `album_pengguna_id` (`album_pengguna_id`);

--
-- Indeks untuk tabel `tbl_files`
--
ALTER TABLE `tbl_files`
  ADD PRIMARY KEY (`file_id`);

--
-- Indeks untuk tabel `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
  ADD PRIMARY KEY (`galeri_id`),
  ADD KEY `galeri_album_id` (`galeri_album_id`),
  ADD KEY `galeri_pengguna_id` (`galeri_pengguna_id`);

--
-- Indeks untuk tabel `tbl_guru`
--
ALTER TABLE `tbl_guru`
  ADD PRIMARY KEY (`guru_id`);

--
-- Indeks untuk tabel `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  ADD PRIMARY KEY (`inbox_id`);

--
-- Indeks untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indeks untuk tabel `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  ADD PRIMARY KEY (`kelas_id`);

--
-- Indeks untuk tabel `tbl_komentar`
--
ALTER TABLE `tbl_komentar`
  ADD PRIMARY KEY (`komentar_id`),
  ADD KEY `komentar_tulisan_id` (`komentar_tulisan_id`);

--
-- Indeks untuk tabel `tbl_log_aktivitas`
--
ALTER TABLE `tbl_log_aktivitas`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `log_pengguna_id` (`log_pengguna_id`);

--
-- Indeks untuk tabel `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  ADD PRIMARY KEY (`pengguna_id`);

--
-- Indeks untuk tabel `tbl_pengumuman`
--
ALTER TABLE `tbl_pengumuman`
  ADD PRIMARY KEY (`pengumuman_id`);

--
-- Indeks untuk tabel `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  ADD PRIMARY KEY (`pengunjung_id`);

--
-- Indeks untuk tabel `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`siswa_id`);

--
-- Indeks untuk tabel `tbl_tulisan`
--
ALTER TABLE `tbl_tulisan`
  ADD PRIMARY KEY (`tulisan_id`),
  ADD KEY `tulisan_kategori_id` (`tulisan_kategori_id`),
  ADD KEY `tulisan_pengguna_id` (`tulisan_pengguna_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_agenda`
--
ALTER TABLE `tbl_agenda`
  MODIFY `agenda_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbl_album`
--
ALTER TABLE `tbl_album`
  MODIFY `album_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tbl_files`
--
ALTER TABLE `tbl_files`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
  MODIFY `galeri_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT untuk tabel `tbl_guru`
--
ALTER TABLE `tbl_guru`
  MODIFY `guru_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  MODIFY `inbox_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  MODIFY `kelas_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `tbl_komentar`
--
ALTER TABLE `tbl_komentar`
  MODIFY `komentar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tbl_log_aktivitas`
--
ALTER TABLE `tbl_log_aktivitas`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  MODIFY `pengguna_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tbl_pengumuman`
--
ALTER TABLE `tbl_pengumuman`
  MODIFY `pengumuman_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  MODIFY `pengunjung_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1009;

--
-- AUTO_INCREMENT untuk tabel `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  MODIFY `siswa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `tbl_tulisan`
--
ALTER TABLE `tbl_tulisan`
  MODIFY `tulisan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
