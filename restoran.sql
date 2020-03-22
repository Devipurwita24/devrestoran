-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Mar 2020 pada 08.21
-- Versi server: 10.4.6-MariaDB
-- Versi PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restoran`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('devi', 'devi'),
('lia', 'lia'),
('lia', 'lia'),
('soke', 'bahtera'),
('soke', 'bahtera');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

CREATE TABLE `menu` (
  `no` int(2) NOT NULL,
  `makanan` varchar(50) DEFAULT NULL,
  `minuman` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`no`, `makanan`, `minuman`) VALUES
(1, 'nasi goreng', 'es teh'),
(2, 'bakso', 'es jeruk'),
(3, 'soto', 'es kopi'),
(4, 'sate', 'soda'),
(5, 'ayam goreng', 'vanilla latte'),
(6, 'ayam bakar', 'mocachino'),
(7, 'ayam rica', 'green tea'),
(8, 'bebek bakar', 'taro'),
(9, 'ayam madu', 'air putih');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanan`
--

CREATE TABLE `pesanan` (
  `no_bangku` int(100) NOT NULL,
  `makanan` varchar(50) DEFAULT NULL,
  `jumlah_makanan` int(4) DEFAULT NULL,
  `minuman` varchar(50) DEFAULT NULL,
  `jumlah_minuman` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pesanan`
--

INSERT INTO `pesanan` (`no_bangku`, `makanan`, `jumlah_makanan`, `minuman`, `jumlah_minuman`) VALUES
(1, 'bakso', 2, 'taro', 2),
(2, 'nasi goreng', 3, 'taro', 2),
(3, '', 0, '', 0),
(4, '', 0, '', 0),
(5, '', 0, '', 0),
(6, '', 0, '', 0),
(7, '', 0, '', 0),
(8, '', 0, '', 0),
(9, '', 0, '', 0),
(10, '', 0, '', 0),
(11, '', 0, '', 0),
(12, '', 0, '', 0),
(13, '', 0, '', 0),
(14, '', 0, '', 0),
(15, '', 0, '', 0),
(16, '', 0, '', 0),
(17, '', 0, '', 0),
(18, '', 0, '', 0),
(19, '', 0, '', 0),
(20, '', 0, '', 0),
(21, '', 0, '', 0),
(22, '', 0, '', 0),
(23, '', 0, '', 0),
(24, '', 0, '', 0),
(25, '', 0, '', 0),
(90, 'soto', 1, 'taro', 2),
(100, 'hh', 2, 'hh', 2),
(101, 'kk', 3, 'jj', 9),
(102, 'dd', 2, 'ed', 2),
(103, 'nasigoreng', 3, 'dddd', 33),
(104, 'nasi goreng', 2, 'es teh', 9),
(105, 'bakso', 2, 'se', 9),
(106, 'bakso', 2, 'se', 9),
(107, 'bakso', 2, 'se', 9),
(108, 'bakso', 2, 'se', 9),
(109, 'bakso', 2, 'se', 9),
(110, 'bakso', 2, 'se', 9),
(111, 'bakso', 2, 'se', 9),
(112, 'bakso', 2, 'se', 9),
(113, 'bakso', 2, 'se', 9),
(114, 'bakso', 2, 'se', 9),
(115, 'bakso', 2, 'se', 9),
(116, 'bakso', 2, 'se', 9),
(117, 'bakso', 2, 'se', 9),
(118, 'bakso', 2, 'se', 9),
(119, 'bakso', 2, 'se', 9),
(120, 'bakso', 2, 'se', 9),
(121, 'bakso', 2, 'se', 9),
(122, 'bakso', 2, 'se', 9),
(123, 'bakso', 2, 'se', 9),
(124, 'bakso', 2, 'se', 9);

-- --------------------------------------------------------

--
-- Struktur dari tabel `registrasi`
--

CREATE TABLE `registrasi` (
  `name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `registrasi`
--

INSERT INTO `registrasi` (`name`, `username`, `password`) VALUES
('devi', 'devi', 'devi'),
('devi', 'devi', 'devi'),
('devi', 'devi', 'dev'),
('safrina', 'saf', 'safr'),
('aprilia soke bahtera', 'bahtera', 'bahtera'),
('JUNGWOO', 'JUNGWOO', 'JUNGWOO'),
('', '', ''),
('irene', 'irene', 'irene'),
('', '', ''),
('', '', '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`no`);

--
-- Indeks untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`no_bangku`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `no_bangku` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
