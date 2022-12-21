-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Des 2022 pada 17.48
-- Versi server: 10.4.20-MariaDB
-- Versi PHP: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_pinjamkelas`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_peminjaman`
--

CREATE TABLE `tb_peminjaman` (
  `id_peminjaman` varchar(10) NOT NULL,
  `peminjam` varchar(25) NOT NULL,
  `ruangan_dipinjam` varchar(15) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `waktu_pengajuan` datetime NOT NULL,
  `waktu_penyetujuan` datetime NOT NULL,
  `waktu_pembatalan` datetime NOT NULL,
  `waktu_pengembalian` datetime NOT NULL,
  `verifikasi_bp` varchar(5) NOT NULL,
  `verifikasi_kabag` varchar(5) NOT NULL,
  `status_pinjam` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_peminjaman`
--

INSERT INTO `tb_peminjaman` (`id_peminjaman`, `peminjam`, `ruangan_dipinjam`, `keterangan`, `waktu_pengajuan`, `waktu_penyetujuan`, `waktu_pembatalan`, `waktu_pengembalian`, `verifikasi_bp`, `verifikasi_kabag`, `status_pinjam`) VALUES
('DPK-00001', 'Muhammad Haikal Buldan', 'Kelas-01', 'Aku pinjam kelas buat makan', '2022-12-20 23:43:47', '2022-12-20 23:44:15', '0000-00-00 00:00:00', '2022-12-20 23:46:29', '-', '-', 'Selesai'),
('DPK-00002', 'Muhammad Haikal Buldan', 'Kelas-01', 'tidur', '2022-12-20 23:47:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '-', '-', 'Menunggu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_ruangan`
--

CREATE TABLE `tb_ruangan` (
  `id_ruangan` varchar(10) NOT NULL,
  `nama_ruangan` varchar(15) NOT NULL,
  `status` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_ruangan`
--

INSERT INTO `tb_ruangan` (`id_ruangan`, `nama_ruangan`, `status`) VALUES
('R001', 'Kelas-01', 'Menunggu'),
('R002', 'Kelas-02', 'Tersedia'),
('R003', 'Ruang Haikal', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_tap`
--

CREATE TABLE `tb_tap` (
  `id` int(5) NOT NULL,
  `id_kartu` varchar(20) NOT NULL,
  `nama_ruangan` varchar(15) NOT NULL,
  `waktu_akses` datetime NOT NULL,
  `waktu_tutup` datetime NOT NULL,
  `status_akses` varchar(10) NOT NULL DEFAULT 'Dibuka'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `username` varchar(10) NOT NULL,
  `fullname` varchar(25) NOT NULL,
  `password` varchar(35) NOT NULL,
  `level` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`username`, `fullname`, `password`, `level`) VALUES
('haikalb', 'Muhammad Haikal Buldan', 'e6622d8b1b53d157a432861ad739a9da', 'Bagian Umum'),
('umum', 'Bagian Umum', '215e95f88936b204603dfcff01e9f614', 'Bagian Umum');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_peminjaman`
--
ALTER TABLE `tb_peminjaman`
  ADD PRIMARY KEY (`id_peminjaman`);

--
-- Indeks untuk tabel `tb_ruangan`
--
ALTER TABLE `tb_ruangan`
  ADD PRIMARY KEY (`id_ruangan`);

--
-- Indeks untuk tabel `tb_tap`
--
ALTER TABLE `tb_tap`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_tap`
--
ALTER TABLE `tb_tap`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
