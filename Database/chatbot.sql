-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Bulan Mei 2023 pada 04.24
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chatbot`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `chat`
--

CREATE TABLE `chat` (
  `id` int(10) NOT NULL,
  `pertanyaan` varchar(200) NOT NULL,
  `jawaban` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `chat`
--

INSERT INTO `chat` (`id`, `pertanyaan`, `jawaban`) VALUES
(1, 'siapa kamu/kamu siapa/kamu apa', 'saya adalah sebuah chatbot'),
(2, 'hai/hi', 'hi juga'),
(3, 'hello', 'hello juga'),
(4, 'saya ingin bertanya/tanya/mau tanya', 'baik, silahkan bertanya'),
(5, 'Apa yang bisa kamu lakukan?\r\n', 'Saya bisa menjawab pertanyaan dan memberikan informasi'),
(6, 'Bagaimana cara kerjamu?\r\n', 'Saya bekerja dengan memproses masukan yang diberikan oleh pengguna dan mencari jawaban atau solusi yang sesuai dalam basis data atau pengetahuan yang saya miliki.'),
(7, 'Bagaimana cuaca di sana?', ' Maaf, sebagai chatbot, saya tidak memiliki akses langsung ke informasi cuaca. '),
(8, 'Apa lagu favoritmu?', 'Saya adalah chatbot dan tidak memiliki preferensi musik pribadi.');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
