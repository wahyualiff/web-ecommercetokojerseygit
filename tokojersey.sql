-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Apr 2020 pada 15.35
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tokojersey`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(120) NOT NULL,
  `keterangan` varchar(225) NOT NULL,
  `kategori` varchar(60) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(4) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_barang`
--

INSERT INTO `tb_barang` (`id_brg`, `nama_brg`, `keterangan`, `kategori`, `harga`, `stok`, `gambar`) VALUES
(84, 'Chelsea Home Kit 2019-2020', 'Chelsea Home Stadium Shirt 2019-20', 'Home kits', 995000, 10, 'home15.jpg'),
(85, 'Liverpool Away Kit 19-20', 'Liverpool Away Stadium Shirt 2019-20', 'away', 800000, 10, 'away4.jpg'),
(86, 'Chelsea Third Kit 2019-2020', 'Chelsea Third Stadium Kit  2019-2020', 'third_Kits', 600000, 10, 'bct2.jpg'),
(87, 'Chelsea Retro Kit 1996', 'Chelsea Retro Kit 1996', 'Retro', 1000000, 5, 'chelsesa.jpg'),
(88, 'Training Chelsea  Kit 2019-2020', 'Training Chelsea  Kit 2019-2020', 'Training', 900000, 10, 'tr.jpg'),
(90, 'Liverpool Clothing', 'Clothing', 'Clothing', 150000, 10, 'cl.jpg'),
(91, 'Accesoriess EPL', 'Accesoriess', 'accesoriess', 300000, 5, 'bola.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_invoice`
--

CREATE TABLE `tb_invoice` (
  `id` int(11) NOT NULL,
  `nama` varchar(60) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `tgl_pesan` datetime NOT NULL,
  `batas_bayar` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_invoice`
--

INSERT INTO `tb_invoice` (`id`, `nama`, `alamat`, `tgl_pesan`, `batas_bayar`) VALUES
(12, 'Muhamad Wahyu Alif', 'kedep', '2020-04-14 17:30:11', '2020-04-15 17:30:11'),
(13, 'hahah', 'kedep', '2020-04-14 17:46:55', '2020-04-15 17:46:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pesanan`
--

CREATE TABLE `tb_pesanan` (
  `id` int(11) NOT NULL,
  `id_invoice` int(11) NOT NULL,
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(50) NOT NULL,
  `jumlah` int(4) NOT NULL,
  `harga` int(15) NOT NULL,
  `pilihan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pesanan`
--

INSERT INTO `tb_pesanan` (`id`, `id_invoice`, `id_brg`, `nama_brg`, `jumlah`, `harga`, `pilihan`) VALUES
(1, 2, 2, 'Laptop', 1, 15000000, ''),
(2, 2, 3, 'Iphone XS', 1, 30000000, ''),
(3, 3, 2, 'Laptop', 1, 15000000, ''),
(4, 3, 3, 'Iphone XS', 1, 30000000, ''),
(5, 3, 9, 'ASUS ROG G703GI', 1, 69000000, ''),
(6, 3, 4, 'Camera Digital', 1, 6000000, ''),
(7, 4, 12, 'TV Led ', 2, 500000, ''),
(8, 4, 4, 'Camera Digital', 2, 6000000, ''),
(9, 4, 3, 'Iphone XS', 1, 30000000, ''),
(10, 4, 11, 'Laptop Gaming', 1, 90000000, ''),
(11, 5, 3, 'Iphone XS', 1, 30000000, ''),
(12, 6, 4, 'Camera Digital', 1, 6000000, ''),
(13, 6, 12, 'TV Led ', 1, 500000, ''),
(14, 8, 4, 'Camera Digital', 1, 6000000, ''),
(15, 8, 16, 'Windows 10 ', 1, 1000000, ''),
(16, 8, 3, 'Iphone XS', 1, 30000000, ''),
(17, 9, 12, 'TV Led ', 3, 500000, ''),
(18, 10, 31, 'Intel Core i9', 1, 26500000, ''),
(19, 10, 26, 'Murai Batu ', 1, 200000000, ''),
(20, 11, 45, 'Vespa P200E', 1, 10000000, ''),
(21, 11, 50, 'Vespa New PX 150', 1, 30000000, ''),
(22, 11, 57, 'Poecilotheria metallica', 2, 2500000, ''),
(23, 11, 44, ' Kawasaki Ninja ZX-10R', 1, 35000000, ''),
(24, 11, 14, 'Laptop Gaming', 1, 90000000, ''),
(25, 11, 31, 'Intel Core i9', 1, 26500000, ''),
(26, 11, 17, 'Gitar Yamaha C315', 1, 500000, ''),
(27, 12, 63, 'Real Madrid Home Kit 2019-2020', 1, 995000, ''),
(28, 13, 63, 'Real Madrid Home Kit 2019-2020', 4, 995000, '');

--
-- Trigger `tb_pesanan`
--
DELIMITER $$
CREATE TRIGGER `pesanan_penjualan` AFTER INSERT ON `tb_pesanan` FOR EACH ROW BEGIN
	UPDATE tb_barang SET stok = stok-NEW.jumlah
    WHERE id_brg = NEW.id_brg;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role_id` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id`, `nama`, `username`, `password`, `role_id`) VALUES
(1, 'admin toko', 'admin', 'admin123', 1),
(8, 'User Baru', 'user', 'user123', 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_brg`);

--
-- Indeks untuk tabel `tb_invoice`
--
ALTER TABLE `tb_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id_brg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT untuk tabel `tb_invoice`
--
ALTER TABLE `tb_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
