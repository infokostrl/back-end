-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 20 Jul 2021 pada 17.19
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_infokost`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `email`, `pass`, `name`, `img`) VALUES
(3, 'darulrul7@gmail.com', '$2y$10$.6Whd.UJNbnsAmDr.PTEQOXpNYuSRlT5nVwO45a50teBf7FS8bUoK', 'Darul Ikhsan', 'default.jpg'),
(4, 'dandy@gmail.com', '$2y$10$rVf5NLSweWPFO85WMRlxpuDWPU1y9zS9BUiU3WZAoSnbt.WnvC5YG', 'Dandi Garda Dirgantara', 'default.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `id_kost` int(255) NOT NULL,
  `main_image` int(1) NOT NULL,
  `image_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `image`
--

INSERT INTO `image` (`id`, `id_kost`, `main_image`, `image_name`) VALUES
(1, 1, 1, 'Rapid_tes-5.jpg'),
(2, 1, 0, 'Rapid_tes-6.jpg'),
(3, 2, 1, 'Rapid_tes-1.jpg'),
(4, 9, 1, 'Rapid_tes-3.jpg'),
(6, 10, 1, 'Bukti_Kehadiran_ILT_CC1.png'),
(7, 10, 0, 'absen-2.png'),
(8, 11, 0, 'cakap.png'),
(9, 11, 1, 'Logo-UH.png'),
(10, 11, 0, 'BACKGROUND.jpeg'),
(14, 11, 0, 'abstrack-ss-5.png'),
(15, 11, 0, 'abstrack-ss-2.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kost`
--

CREATE TABLE `kost` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `longlat` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kost`
--

INSERT INTO `kost` (`id`, `name`, `description`, `contact`, `link`, `price`, `longlat`, `address`) VALUES
(1, 'Kost Namira', 'kost elektro', '081355905756', 'https://www.google.com/maps/place/Kost+Namira/@-5.2257342,119.5045377,306m/data=!3m2!1e3!4b1!4m5!3m4!1s0x2dbee13b8cff51b1:0x6960b8a56489766c!8m2!3d-5.225752!4d119.5051116!5m1!1e4', '3.500.000-4.000.000', '-5.225719473397714, 119.50512375081009', 'Jl. Nangka no.43 Bontomarannu'),
(2, 'Kost Zavair', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. At tempor commodo', '081355905756', 'https://www.google.com/maps/place/Pondok+Zavair/@-5.2256585,119.5047986,187m/data=!3m1!1e3!4m5!3m4!1s0x2dbee1cc9403e0d7:0x929d28b283f13ffa!8m2!3d-5.2258963!4d119.5051257!5m1!1e4', '4.000.000', '-5.225828329326562, 119.50510958679779', 'Jl. Nangka no.40 Bontomarannu'),
(4, 'Pondok Ihsan', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. At tempor commodo', '081355905756', 'https://www.google.com/maps/place/Pondok+Ihsan,+Romang+Lompoa,+Bontomarannu,+Kabupaten+Gowa,+Sulawesi+Selatan+92118/@-5.2256552,119.5047364,19z/data=!4m2!3m1!1s0x2dbee19dd61ec331:0xded802f4665d704f', '5.000.000', '-5.225666923531244, 119.50474839383527', 'Romang Lompoa, Bontomarannu, Kabupaten Gowa, Sulawesi Selatan 92118'),
(5, 'Pondok Tayuri', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. At tempor commodo', '081355905756', 'https://www.google.com/maps/place/Pondok+Tayuri,+Jl.+Mangga+No.103,+Romang+Lompoa,+Bontomarannu,+Kabupaten+Gowa,+Sulawesi+Selatan+92118/@-5.2256552,119.5047364,19z/data=!4m2!3m1!1s0x2dbee17ccbdc8a7b:0xd3f3321c117f8350', '4.500.000', '-5.225177410191271, 119.50439562995976', 'Jl. Mangga No.103, Romang Lompoa, Bontomarannu, Kabupaten Gowa, Sulawesi Selatan 92118'),
(6, 'Pondok Biru', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. At tempor commodo', '081355905756', 'https://www.google.com/maps/place/Pondok+Biru,+Romang+Lompoa,+Bontomarannu,+Kabupaten+Gowa,+Sulawesi+Selatan+92118/@-5.2256552,119.5047364,19z/data=!4m2!3m1!1s0x2dbee14eb0497055:0xa759be462bb1266e', '3.500.000', '-5.225265714586757, 119.50412190061374', 'Romang Lompoa, Bontomarannu, Kabupaten Gowa, Sulawesi Selatan 92118'),
(7, 'Kost Ernias', 'Kostnya Dandi', '081355905756', 'https://www.google.com/maps/place/Kost+Ernias/@-5.226772,119.5033026,20.05z/data=!4m5!3m4!1s0x2dbee1493cb45857:0xd7edf46f5ec1dab!8m2!3d-5.2268109!4d119.50286', '5.000.000-7.000.000', '-5.22678949548072, 119.5028514589909', 'Bontomarannu Kabupaten Gowa, Sulawesi Selatan.'),
(8, 'Kost Adhitya', 'Kost depan Dandi', '081355905756', 'https://www.google.com/maps/place/Kost+Adhitya/@-5.226772,119.5033026,20.05z/data=!4m5!3m4!1s0x2dbee10ca2eee18b:0xf0caf4ff4bf8db3a!8m2!3d-5.2267725!4d119.502985', '5.000.000-7.000.000', '-5.226739075014374, 119.50298777320533', 'Jl. Kedondong, Romang Lompoa, Bontomarannu, Kabupaten Gowa, Sulawesi Selatan 92118'),
(9, 'Pondok Salsa', 'Kost lamanya dea', '081355905756', 'https://www.google.com/maps/place/Pondok+Salsa/@-5.2267833,119.5033918,19.81z/data=!4m5!3m4!1s0x2dbee199bc2d6547:0xda25a6dcef5b7b89!8m2!3d-5.227009!4d119.503559', '5.000.000-7.000.000', '-5.226979266205423, 119.50355333208606', 'Romang Lompoa, Bontomarannu, Kabupaten Gowa, Sulawesi Selatan 92118'),
(10, 'Pondok Alif', 'Kostnya Kak Wawan', '081355905756', 'https://www.google.com/maps/place/Pondok+Alif/@-5.2281496,119.504775,17.72z/data=!4m5!3m4!1s0x2dbee10b468754e7:0xde877f513bd73b63!8m2!3d-5.2270968!4d119.5060972', '5.000.000-7.000.000', '-5.226976737116442, 119.50614199803582', 'Romang Lompoa, Bontomarannu, Kabupaten Gowa, Sulawesi Selatan 92171'),
(11, 'Pondok Hidayat', 'Kostnya Arum', '081355905756', 'https://www.google.com/maps/place/Pondok+Hidayat/@-5.2281496,119.504775,17.72z/data=!4m5!3m4!1s0x2dbee149feabac75:0xd1dc2140f4785332!8m2!3d-5.2300996!4d119.5047519', '5.000.000-7.000.000', '-5.2299462464997, 119.504791326899', 'Romang Lompoa, Bontomarannu, Kabupaten Gowa, Sulawesi Selatan 92171');

-- --------------------------------------------------------

--
-- Struktur dari tabel `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `test`
--

INSERT INTO `test` (`id`, `judul`) VALUES
(1, 'Rapid_tes.jpg'),
(2, 'Rapid_tes1.jpg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kost`
--
ALTER TABLE `kost`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `kost`
--
ALTER TABLE `kost`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
