-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Jan 2021 pada 16.46
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mbti`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `participant`
--

CREATE TABLE `participant` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `participant_answer`
--

CREATE TABLE `participant_answer` (
  `id` int(11) NOT NULL,
  `participant_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `participant_perspective`
--

CREATE TABLE `participant_perspective` (
  `id` int(11) NOT NULL,
  `participant_id` int(11) NOT NULL,
  `ei_i` int(11) DEFAULT 0,
  `ei_e` int(11) DEFAULT 0,
  `sn_s` int(11) DEFAULT 0,
  `sn_n` int(11) DEFAULT 0,
  `tf_t` int(11) DEFAULT 0,
  `tf_f` int(11) DEFAULT 0,
  `jp_j` int(11) DEFAULT 0,
  `jp_p` int(11) DEFAULT 0,
  `summary` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `question` varchar(87) DEFAULT NULL,
  `dimension` varchar(2) DEFAULT NULL,
  `direction` int(2) DEFAULT NULL,
  `meaning` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `question`
--

INSERT INTO `question` (`id`, `question`, `dimension`, `direction`, `meaning`) VALUES
(1, 'You find it takes effort to introduce yourself to other people.', 'EI', 1, 'I'),
(2, 'You consider yourself more practical than creative.', 'SN', -1, 'S'),
(3, 'Winning a debate matters less to you than making sure no one gets upset.', 'TF', 1, 'F'),
(4, 'You get energized going to social events that involve many interactions.', 'EI', -1, 'E'),
(5, 'You often spend time exploring unrealistic and impractical yet intriguing ideas.', 'SN', 1, 'N'),
(6, 'Deadlines seem to you to be of relative rather than absolute importance.', 'JP', 1, 'P'),
(7, 'Logic is usually more important than heart when it comes to making important decisions.', 'TF', -1, 'T'),
(8, 'Your home and work environments are quite tidy.', 'JP', -1, 'J'),
(9, 'You do not mind being at the center of attention.', 'EI', -1, 'E'),
(10, 'Keeping your options open is more important than having a to-do list.', 'JP', 1, 'P');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `participant`
--
ALTER TABLE `participant`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `participant_answer`
--
ALTER TABLE `participant_answer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `participant_id` (`participant_id`),
  ADD KEY `question_id` (`question_id`);

--
-- Indeks untuk tabel `participant_perspective`
--
ALTER TABLE `participant_perspective`
  ADD PRIMARY KEY (`id`),
  ADD KEY `participant_id` (`participant_id`);

--
-- Indeks untuk tabel `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dimension` (`dimension`),
  ADD KEY `direction` (`direction`),
  ADD KEY `meaning` (`meaning`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `participant`
--
ALTER TABLE `participant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `participant_answer`
--
ALTER TABLE `participant_answer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `participant_perspective`
--
ALTER TABLE `participant_perspective`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `participant_answer`
--
ALTER TABLE `participant_answer`
  ADD CONSTRAINT `participant_answer_ibfk_1` FOREIGN KEY (`participant_id`) REFERENCES `participant` (`id`),
  ADD CONSTRAINT `participant_answer_ibfk_2` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`);

--
-- Ketidakleluasaan untuk tabel `participant_perspective`
--
ALTER TABLE `participant_perspective`
  ADD CONSTRAINT `participant_perspective_ibfk_1` FOREIGN KEY (`participant_id`) REFERENCES `participant` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
