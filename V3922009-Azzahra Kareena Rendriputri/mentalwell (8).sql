-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Agu 2025 pada 08.01
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mentalwell`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nama_admin` varchar(255) DEFAULT NULL,
  `password_admin` varchar(255) DEFAULT NULL,
  `email_admin` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `nama_admin`, `password_admin`, `email_admin`, `created_at`, `updated_at`) VALUES
(2, 'hai', '$2y$10$TNcMaKDVlhkPx/Ftjf3dguUccS.n.H2G4jYKrHTBM.IdD5EpIE5.S', 'hai@example.com', '2024-03-24 01:06:12', '2024-04-02 18:59:59'),
(5, 'mona', '$2y$10$bGmuv6HimN1.a6t6RnnC5uDaiIQyPgFZIKA3jIMxzKg8Uy0Qm2me2', 'mona@gmail.com', '2024-03-24 01:12:48', '2024-03-24 05:40:20'),
(7, 'diana', '$2y$10$f9EHj8m28/L9iTPbwdtHF.3JpQ7t9gDpDgodT.c9ev9SQolgUXZ1u', 'diana@gmail.com', '2024-03-24 05:40:10', '2024-03-24 05:40:10'),
(8, 'admin', '$2y$10$pK7EPY0dsrk1TA1DvNyMFOPOOFrbPfLsm.0jW89wKLOmyjbLEns2y', 'adminbaru@google.com', '2024-04-01 22:53:23', '2024-04-01 22:53:23'),
(10, 'Admin Baru', '$2y$10$N20H0VCb8OsgzmUz/DvWUO2Q6tD64hkde/6u1j7scTPcGRRzXWB.G', 'adminbaru@example.com', '2024-04-01 23:51:16', '2024-04-01 23:51:16'),
(11, 'Admin Baru', '$2y$10$IQeX4aGaHBee9aRkXDLtZepsW/Gkw95eyR73f1Mukh1jrNwBiJm4u', 'adminbaru@example.com', '2024-04-01 23:54:45', '2024-04-01 23:54:45'),
(12, 'Admin aru', '$2y$10$PjxwlVxyPopDExsuMumWUOAcFX2ZdfTtGtPxFAZl2rOLG6Cti759G', 'adminbaru@example.com', '2024-04-02 00:24:19', '2024-04-02 00:24:19'),
(13, 'hai', '$2y$10$5TaNAzjvjf3zWOpDYIITEufuD5MSTEEBo/.FBflVjLjlPZVmlSEwa', 'hai@example.com', '2024-04-02 18:53:17', '2024-04-02 18:53:17'),
(14, 'iya', '$2y$10$NLidMfmz0i0w3CigWGS6nuakbYhkoKILwGN05bG.0pJGNeyCWBBhW', 'iya@example.com', '2024-04-02 19:13:25', '2024-04-02 19:13:25'),
(15, 'grey', '$2y$10$LZqr3.na/vooUXR9JLgYs.qaUc5z8pIRGw46BDkg1rDYJMFKTxKBu', 'iya@example.com', '2024-04-02 19:32:39', '2024-04-02 19:32:39'),
(16, 'grey', '$2y$10$911uJTJPFbp28JrkfDi9IOtC5eWT7cXhoXjTW.vomxbL.zTWvx5OG', 'iya@example.com', '2024-04-02 19:54:39', '2024-04-02 19:54:39'),
(17, 'sinta', '$2y$10$Lm92cmW4a.Oa9g7URxoxZ.4zHqwe7dxUa/817rfSMtQeelENkDG26', 'sinta@gmail.com', '2024-04-02 19:55:29', '2024-04-02 19:55:29'),
(18, 'moji', '$2y$10$VOh7gGf/YR2vPY47wT7aXu4Eiu7bV.13J1bGSqp5KHd3PpHEc0I0K', 'moji@gmail.com', '2024-04-02 20:02:04', '2024-04-02 20:02:04'),
(19, 'moji', '$2y$10$YZEZJB/tdzn0KPJb1ljugeZf3U/F22TW4RFo9rBMr7Dl5DcF/mGoK', 'moji@gmail.com', '2024-04-02 20:03:10', '2024-04-02 20:03:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `analisis`
--

CREATE TABLE `analisis` (
  `id_analisis` int(11) NOT NULL,
  `id_partisipan` int(11) DEFAULT NULL,
  `headaches` int(11) DEFAULT NULL,
  `appetite_poor` int(11) DEFAULT NULL,
  `sleep_badly` int(11) DEFAULT NULL,
  `easily_frightened` int(11) DEFAULT NULL,
  `hands_shake` int(11) DEFAULT NULL,
  `nervous` int(11) DEFAULT NULL,
  `digestion_poor` int(11) DEFAULT NULL,
  `thinking_clearly` int(11) DEFAULT NULL,
  `unhappy` int(11) DEFAULT NULL,
  `cry` int(11) DEFAULT NULL,
  `difficult_enjoy_activities` int(11) DEFAULT NULL,
  `difficult_make_decisions` int(11) DEFAULT NULL,
  `work_suffering` int(11) DEFAULT NULL,
  `unable_useful` int(11) DEFAULT NULL,
  `lost_interest` int(11) DEFAULT NULL,
  `worthless_person` int(11) DEFAULT NULL,
  `ending_life` int(11) DEFAULT NULL,
  `tired` int(11) DEFAULT NULL,
  `easily_tired` int(11) DEFAULT NULL,
  `uncomfortable_stomach` int(11) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `mental_disorders` varchar(255) DEFAULT NULL,
  `klasifikasi` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `analisis`
--

INSERT INTO `analisis` (`id_analisis`, `id_partisipan`, `headaches`, `appetite_poor`, `sleep_badly`, `easily_frightened`, `hands_shake`, `nervous`, `digestion_poor`, `thinking_clearly`, `unhappy`, `cry`, `difficult_enjoy_activities`, `difficult_make_decisions`, `work_suffering`, `unable_useful`, `lost_interest`, `worthless_person`, `ending_life`, `tired`, `easily_tired`, `uncomfortable_stomach`, `points`, `mental_disorders`, `klasifikasi`) VALUES
(1, 25, 1, 1, 1, 0, 0, 0, 1, 1, 0, 1, 0, 1, 1, 0, 0, 1, 1, 0, 1, 0, NULL, NULL, NULL),
(2, 25, 1, 1, 1, 0, 0, 0, 1, 1, 0, 1, 0, 1, 1, 0, 0, 1, 1, 0, 1, 0, NULL, NULL, NULL),
(3, 38, 1, 0, 0, 1, 1, 0, 0, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1, 1, 1, NULL, NULL, NULL),
(4, 38, 1, 0, 0, 1, 1, 0, 0, 1, 1, 1, 0, 1, 1, 0, 0, 1, 0, 1, 1, 0, NULL, NULL, NULL),
(5, 38, 1, 1, 0, 1, 1, 1, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 1, 1, 1, 1, NULL, NULL, NULL),
(6, 38, 1, 1, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, 1, 0, 1, 0, 1, NULL, NULL, NULL),
(7, 38, 1, 1, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, 0, 1, 1, 0, 0, NULL, NULL, NULL),
(8, 38, 1, 1, 0, 0, 0, 1, 1, 1, 0, 1, 0, 1, 1, 0, 0, 0, 1, 0, 1, 1, NULL, NULL, NULL),
(9, 38, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 1, 1, 0, 0, 1, 1, 0, 1, 1, NULL, NULL, NULL),
(10, 38, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 1, 0, 1, 1, 0, 0, 1, 1, 1, 0, NULL, NULL, NULL),
(11, 38, 1, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 1, 1, 0, 0, 1, 1, 0, 1, NULL, NULL, NULL),
(12, 38, 1, 1, 0, 0, 1, 1, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0, 1, 1, 0, 1, NULL, NULL, NULL),
(13, 39, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 1, NULL, NULL, NULL),
(14, 39, 1, 0, 0, 1, 1, 0, 0, 0, 1, 1, 1, 0, 0, 1, 1, 1, 0, 1, 0, 1, NULL, NULL, NULL),
(15, 39, 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 0, 1, 0, 1, 1, 0, 1, 1, 1, NULL, NULL, NULL),
(16, 39, 1, 0, 1, 0, 0, 1, 1, 1, 1, 0, 0, 1, 0, 1, 0, 1, 1, 1, 0, 0, NULL, NULL, NULL),
(17, 40, 1, 0, 0, 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 1, 0, 0, 1, 1, 0, NULL, NULL, NULL),
(18, 40, 0, 1, 1, 0, 0, 0, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, NULL, NULL, NULL),
(19, 31, 1, 0, 0, 1, 1, 0, 0, 1, 1, 0, 1, 0, 0, 1, 1, 1, 0, 1, 1, 0, NULL, NULL, NULL),
(20, 31, 1, 0, 0, 1, 1, 0, 0, 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 1, 1, 1, NULL, NULL, NULL),
(21, 42, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 0, 1, 1, 1, 1, NULL, NULL, NULL),
(22, 42, 1, 0, 1, 0, 0, 1, 1, 0, 1, 0, 1, 1, 1, 0, 0, 1, 1, 0, 1, 1, NULL, NULL, NULL),
(23, 42, 0, 0, 0, 0, 1, 1, 1, 0, 0, 1, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, NULL, NULL, NULL),
(24, 45, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL),
(25, 46, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 1, 1, 1, 0, 1, 1, 1, NULL, NULL, NULL),
(26, 46, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, NULL, NULL, NULL),
(27, 46, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 1, 0, 0, 0, 1, 1, 1, 1, NULL, NULL, NULL),
(28, 46, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 0, 0, 1, NULL, NULL, NULL),
(29, 46, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 1, 1, NULL, NULL, NULL),
(30, 53, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 1, 1, NULL, NULL, NULL),
(31, 53, 1, 1, 1, 1, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 1, 1, NULL, NULL, NULL),
(32, 53, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL),
(33, 53, 1, 0, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, NULL, NULL, NULL),
(34, 53, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL),
(35, 53, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, NULL, NULL, NULL),
(36, 53, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1, NULL, NULL, NULL),
(37, 46, 1, 0, 0, 1, 1, 1, 1, 0, 0, 1, 1, 0, 0, 1, 1, 1, 1, 1, 0, 1, NULL, NULL, NULL),
(38, 46, 1, 1, 1, 1, 0, 0, 1, 1, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 1, NULL, NULL, NULL),
(39, 46, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 1, 1, 0, 1, 1, NULL, NULL, NULL),
(40, 46, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL),
(41, 56, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, NULL, NULL, NULL),
(42, 56, 1, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 0, 1, 1, 0, NULL, NULL, NULL),
(43, 56, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, NULL, NULL, NULL),
(44, 56, 0, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, NULL, NULL, NULL),
(45, 56, 0, 0, 1, 1, 0, 0, 1, 1, 1, 1, 0, 0, 1, 1, 0, 0, 1, 1, 1, 1, NULL, NULL, NULL),
(46, 56, 0, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 0, NULL, NULL, NULL),
(47, 56, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, 1, NULL, NULL, NULL),
(48, 57, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, NULL, NULL, NULL),
(49, 57, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL),
(50, 57, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, NULL, NULL, NULL),
(51, 58, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, 0, 1, 1, 0, 0, 1, 1, 0, NULL, NULL, NULL),
(52, 58, 1, 1, 1, 1, 0, 0, 0, 1, 1, 0, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, NULL, NULL, NULL),
(53, 59, 1, 0, 1, 1, 0, 0, 0, 1, 0, 0, 1, 1, 0, 1, 0, 1, 1, 0, 0, 0, NULL, NULL, NULL),
(54, 59, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, 0, 0, NULL, NULL, NULL),
(55, 59, 1, 0, 0, 1, 1, 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 0, 0, 0, 1, NULL, NULL, NULL),
(56, 59, 1, 0, 0, 1, 1, 0, 0, 1, 1, 0, 1, 1, 1, 0, 1, 0, 0, 1, 0, 0, NULL, NULL, NULL),
(57, 59, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cbt_daily_task`
--

CREATE TABLE `cbt_daily_task` (
  `id_task` int(11) NOT NULL,
  `id_session` int(11) DEFAULT NULL,
  `no_hari` int(11) DEFAULT NULL,
  `judul_task` varchar(100) DEFAULT NULL,
  `deskripsi_task` text DEFAULT NULL,
  `tips_task` text DEFAULT NULL,
  `is_completed` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `cbt_daily_task`
--

INSERT INTO `cbt_daily_task` (`id_task`, `id_session`, `no_hari`, `judul_task`, `deskripsi_task`, `tips_task`, `is_completed`) VALUES
(3, 2, 1, 'Hari 1 : Mengenali Pemikiran Negatif', 'Tugas: Selama sehari penuh, amati pikiranmu dan catat setiap pikiran negatif yang muncul, atau sesuatu yang membuatmu depresi. Catatlah sebanyak mungkin dibawah!\nContoh pikiran negatif: \"Saya tidak berguna\", \"Saya akan selalu gagal\", \"Tidak ada yang peduli pada saya\".', 'Tips: Perhatikan situasi atau kejadian apa yang memicu pikiran negatif tersebut.', 0),
(4, 2, 2, 'Hari 2 : Periksa Keabsahan Pikiran Negatif', 'Tugas: Pilih 3 pikiran negatif yang kamu catat kemarin.\nTugas: Untuk setiap pikiran negatif, tanyakan pada diri sendiri: \"Apakah pikiran ini benar-benar terjadi?\" dan \"Adakah bukti yang mendukung pikiran ini?\".\nContoh: \"Semua orang membenciku\" - Tanyakan: \"Apakah ada bukti semua orang membenciku?\" atau \"Adakah orang yang pernah menunjukkan bahwa mereka peduli padaku?\".', 'Tips: Perhatikan situasi atau kejadian apa yang memicu pikiran negatif tersebut.', 0),
(5, 2, 3, 'Hari 3: Ganti dengan Pikiran yang Lebih Realistis', 'Tugas: Kembali ke 3 pikiran negatif dari kemarin.\nTugas: Ganti setiap pikiran negatif dengan pikiran yang lebih realistis dan positif.\nContoh: Ganti \"Semua orang membenciku\" dengan \"Mungkin tidak semua orang menyukaiku, tapi pasti ada orang yang peduli padaku\".', 'Tips: Perhatikan situasi atau kejadian apa yang memicu pikiran negatif tersebut.', 0),
(6, 2, 4, 'Hari 4: Identifikasi Pemikiran yang Membantu', 'Tugas: Pikirkan situasi yang membuatmu merasa terpuruk.\nTugas: Coba ingat apa yang kamu pikirkan saat itu. Apakah pikiran tersebut membantu atau justru memperburuk keadaan?\nContoh: Kamu gagal dalam ujian. Pikiran yang membantumu: \"Ini hanya satu ujian. Saya bisa belajar lebih giat untuk ujian berikutnya\". Pikiran yang tidak membantu: \"Saya bodoh. Saya tidak akan pernah bisa sukses\".', 'Tips: Perhatikan situasi atau kejadian apa yang memicu pikiran negatif tersebut.', 0),
(12, 2, 5, 'Hari 5: Latihan Berpikir Positif', '\nTugas: Pilih 3 situasi yang kamu akan hadapi hari ini atau situasi besok.\nTugas: Untuk setiap situasi, pikirkan terlebih dahulu pikiran positif yang dapat membantumu menghadapinya.\nContoh: Presentasi di depan kelas - Pikiran positif: \"Saya sudah mempersiapkan presentasi ini dengan baik. Saya bisa melakukannya!\".', 'Tips: Perhatikan situasi atau kejadian apa yang memicu pikiran negatif tersebut.', 0),
(13, 2, 6, 'Hari 6: Ubah Kata \"Tidak Bisa\" Menjadi \"Akan Dicoba\"', 'Tugas: Perhatikan berapa kali kamu menggunakan kata \"tidak bisa\" dalam pikiranmu hari ini.\nTugas: Ganti kata \"tidak bisa\" dengan \"akan dicoba\" atau \"akan saya pelajari\".\nContoh: Ganti \"Saya tidak bisa melakukan ini\" dengan \"Saya akan mencoba melakukan ini sebaik mungkin\" atau \"Saya akan belajar bagaimana melakukan ini\".', 'Tips: Perhatikan situasi atau kejadian apa yang memicu pikiran negatif tersebut.', 0),
(14, 2, 7, 'Hari 7: Rayakan Kemajuanmu!', 'Tugas: Luangkan waktu sejenak untuk merenungkan pengalamanmu selama 7 hari tantangan ini.\nTugas: Catat kemajuan yang kamu rasakan dalam mengenali dan mengubah pola pikir negatif.', 'Tips: Pikirkan cara untuk mempertahankan kebiasaan berpikir positif ini dalam kehidupan sehari-hari.', 0),
(15, 3, 1, ' Hari ke 1 : Kenali Emosimu', 'Selama sehari penuh, perhatikan dan catat emosi yang kamu rasakan.', 'Tips: Perhatikan situasi atau kejadian apa yang memicu emosi-emosi tersebut.', 0),
(16, 3, 2, '  Hari ke 2 :Pahami Pemicu Emosimu', ' Pilih 3 emosi yang kamu catat kemarin.Untuk setiap emosi, tanyakan pada diri sendiri: \"Apa yang memicu emosi ini?\" dan \"Apa yang dapat saya lakukan untuk mengelola emosi ini dengan lebih baik?\"', 'Berhenti sejenak, tarik napas dalam-dalam, dan komunikasikan perasaan dengan tenang.', 0),
(17, 3, 3, ' Hari ke 3 :Temukan Mekanisme Koping Sehat', 'Tugas: Buatlah daftar aktivitas yang dapat membantumu merasa lebih baik saat kamu merasa sedih, marah, atau cemas.\nContoh aktivitas: Olahraga, mendengarkan musik, menulis jurnal, berbicara dengan teman, meditasi.', 'Tips: Pilih aktivitas yang kamu sukai dan yang mudah dilakukan kamu bisa membuka intervensi lain yang disediakan diwebsite ini untuk referensi.', 0),
(18, 3, 4, '  Hari ke 4 : Latih Teknik Relaksasi', 'Tugas: Pelajari dan praktikkan teknik relaksasi seperti pernapasan dalam, meditasi, atau yoga selama 10 menit.', 'Tips: Kamu bisa membuka intervensi Mindfulness-Based Stress Reduction sebagai panduan, dan tulis pengalamanmu dibaah.', 0),
(19, 3, 5, ' Hari ke 5 :Ekspresikan Emosimu dengan Cara Sehat', 'Tugas: Jika kamu merasa sedih atau marah, temukan cara yang sehat untuk mengekspresikan emosimu.\nContoh: Menulis jurnal, berbicara dengan teman atau terapis, melukis, berolahraga. Semua intervensi ini sudah disediakan di website ini.  Temukan cara paling kamu suka dan tulis pengalamanmu dibawah', 'Tips: Hindari cara yang tidak sehat seperti menyakiti diri sendiri, menyalahgunakan zat, atau menarik diri dari orang lain.', 0),
(20, 3, 6, ' Hari ke 6 : Berlatih Berpikir Positif', 'Tugas: Pilih 3 situasi yang membuatmu merasa tertekan.\nUntuk setiap situasi, pikirkan terlebih dahulu hal-hal positif yang dapat kamu syukuri.\nContoh: Kamu dipecat dari pekerjaan. Hal-hal positif: Kamu memiliki waktu untuk mencari pekerjaan yang lebih baik, kamu memiliki tabungan untuk sementara waktu, kamu memiliki keterampilan dan pengalaman yang dapat membantumu mendapatkan pekerjaan baru.', 'Isi sesuai dengan keterampilanmu', 0),
(21, 3, 7, ' Hari ke 7 : Rayakan Kemajuanmu!', 'Tugas: Luangkan waktu sejenak untuk merenungkan pengalamanmu selama 7 hari tantangan ini.\nCatat kemajuan yang kamu rasakan dalam mengelola dan mengekspresikan emosimu.', 'Tips: Pikirkan cara untuk mempertahankan kebiasaan ini dalam kehidupan sehari-hari.', 0),
(22, 4, 1, 'Hari 1: Kenali Pola Perilaku yang Tidak Sehat', 'Tugas: Selama sehari penuh, amati perilaku dan kebiasaanmu.\nCatat perilaku apa pun yang menurutmu dapat memperburuk depresimu.\nContoh perilaku: Menunda-nunda pekerjaan, makan tidak sehat, mengisolasi diri dari orang lain, menyalahgunakan zat.', 'Catat sesuai pengalamanmu!', 0),
(23, 4, 2, 'Hari 2: Pahami Dampak Perilaku Tidak Sehat', 'Tugas: Pilih 3 perilaku tidak sehat yang kamu catat kemarin.\nUntuk setiap perilaku, tanyakan pada diri sendiri: \"Apa dampak perilaku ini pada depresiku?\" dan \"Bagaimana cara mengubah perilaku ini?\".\nContoh: Menunda-nunda pekerjaan dapat membuatmu merasa lebih cemas dan stres. \nCara mengubahnya: Buatlah daftar tugas dan atur waktu untuk menyelesaikannya kamu juga bisa memanfaatkan fitur intervensi lain dari website ini.', 'Tuliskan sesuai pengalam pribadimu ya!', 0),
(24, 4, 3, 'Hari 3: Buatlah Daftar Tujuan', 'Tugas: Buatlah daftar tujuan kecil yang ingin kamu capai dalam seminggu ini tulis sebanyak mungkin.\nPastikan tujuan tersebut realistis, terukur, dan dapat dicapai.\nContoh tujuan: Bangun tidur 1 jam lebih awal setiap hari, berolahraga 30 menit 3 kali seminggu, menghabiskan waktu bersama teman atau keluarga 2 kali seminggu.', 'Buatlah tujuan yang ingin kamu capai!', 0),
(25, 4, 4, 'Hari 4: Kembangkan Kebiasaan Positif', 'Tugas: Pilih 1 tujuan dari daftar yang kamu buat kemarin.\nBuatlah rencana untuk mencapai tujuan tersebut dan mulai implementasikan rencanamu. Tulis caramu mengimplementasikan dibawah.\nContoh: Jika tujuanmu adalah bangun tidur 1 jam lebih awal, atur alarm 1 jam lebih awal dan siapkan pakaian dan aktivitas pagi hari di malam sebelumnya.', 'Selalu catat perkembangan positif yang telah kamu lakukan', 0),
(26, 4, 5, 'Hari 5: Latih Motivasi dan Disiplin Diri', 'Tugas: Saat kamu merasa malas atau tidak termotivasi, ingatkan dirimu tentang tujuan yang ingin kamu capai. Tulis semua dibawah !\nBerikan reward pada diri sendiri setiap kali kamu berhasil mencapai tujuan kecil.', 'Tips: Temukan cara untuk membuat proses mencapai tujuanmu menjadi menyenangkan.', 0),
(27, 4, 6, 'Hari 6: Hindari Pemicu Perilaku Tidak Sehat', 'Tugas: Kenali situasi atau kejadian yang dapat memicu perilaku tidak sehatmu.\nHindari situasi atau kejadian tersebut sebisa mungkin.\nContoh: Jika kamu tergoda untuk makan tidak sehat ketika kamu merasa stres, carilah cara lain untuk mengatasi stres seperti berolahraga atau mendengarkan musik. ', 'Kamu juga bisa mengalihkan perhatianmu dengan mengakses fitur intervensi lain di website ini!', 0),
(28, 4, 7, 'Hari 7: Rayakan Kemajuanmu!', 'Tugas: Luangkan waktu sejenak untuk merenungkan pengalamanmu selama 7 hari tantangan ini.\nCatat kemajuan yang kamu rasakan dalam mengubah pola perilakumu.', 'Tips: Pikirkan cara untuk mempertahankan kebiasaan positif ini dalam kehidupan sehari-hari.', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cbt_judol`
--

CREATE TABLE `cbt_judol` (
  `id_responses` int(11) NOT NULL,
  `id_task` int(11) DEFAULT NULL,
  `id_partisipan` int(11) DEFAULT NULL,
  `jawaban` varchar(255) DEFAULT NULL,
  `submission_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `cbt_judol`
--

INSERT INTO `cbt_judol` (`id_responses`, `id_task`, `id_partisipan`, `jawaban`, `submission_date`) VALUES
(1, 3, 57, 'Hai hai', '2025-06-03'),
(2, 3, 59, 'tes', '2025-07-14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cbt_session`
--

CREATE TABLE `cbt_session` (
  `id_session` int(11) NOT NULL,
  `no_session` int(11) DEFAULT NULL,
  `judul_session` varchar(100) DEFAULT NULL,
  `deskripsi_session` text DEFAULT NULL,
  `durasi_session` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `cbt_session`
--

INSERT INTO `cbt_session` (`id_session`, `no_session`, `judul_session`, `deskripsi_session`, `durasi_session`) VALUES
(2, 1, 'Session 1', 'Kelola Depresi Anda dengan Kendalikan Pikiran !', 7),
(3, 2, 'Session 2', 'Kelola Depresi Anda dengan Kendalikan Perasaan!', 7),
(4, 3, 'Session 3', 'Kelola Depresi Anda dengan Kendalikan Perilaku!', 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cbt_task_responses`
--

CREATE TABLE `cbt_task_responses` (
  `id_responses` int(11) NOT NULL,
  `id_task` int(11) DEFAULT NULL,
  `id_partisipan` int(11) DEFAULT NULL,
  `jawaban` varchar(255) DEFAULT NULL,
  `submission_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `cbt_task_responses`
--

INSERT INTO `cbt_task_responses` (`id_responses`, `id_task`, `id_partisipan`, `jawaban`, `submission_date`) VALUES
(2, 3, 29, 'baik', '2024-05-16'),
(3, 3, 35, 'vdbskd', '2024-06-01'),
(4, 3, 35, '', '2024-06-01'),
(5, 3, 35, '', '2024-06-01'),
(6, 3, 1, 'baik', '2024-06-01'),
(7, 3, 2, 'baik', '2024-06-01'),
(8, 3, 36, 'halo', '2024-06-01'),
(9, 3, 3, ' baik', '2024-06-01'),
(10, 3, 4, ' baik', '2024-06-01'),
(11, 3, 35, 'zc', '2024-06-03'),
(12, 3, 37, 'bbb', '2024-06-03'),
(13, 3, 25, 'bjm', '2024-06-04'),
(14, 3, 42, 'hai', '2024-06-11'),
(15, NULL, 25, NULL, '2024-06-12'),
(16, NULL, 42, NULL, '2024-06-12'),
(17, 4, 37, 'tes', '2024-06-12'),
(18, 4, 35, 'tes', '2024-06-12'),
(19, 5, 35, 'tes', '2024-06-12'),
(20, 6, 35, 'tes', '2024-06-12'),
(21, 15, 39, 'jjj', '2024-06-12'),
(22, 3, 48, 'Saya pemalas', '2024-06-13'),
(23, 5, 37, 'orang peduli', '2024-06-13'),
(24, 3, 39, 'tes', '2024-06-13'),
(25, 4, 25, 'tes', '2024-06-13'),
(26, 3, 46, 'hai', '2024-06-13'),
(27, 15, 50, 'tes', '2024-06-13'),
(28, 3, 7, 'hai', '2024-06-13'),
(29, 3, 51, 'uhuy', '2024-06-13'),
(30, 3, 56, 'tes', '2025-05-21'),
(31, 4, 56, 'hari2', '2025-05-22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cemas_ringan_progress`
--

CREATE TABLE `cemas_ringan_progress` (
  `id` int(11) NOT NULL,
  `id_partisipan` int(11) NOT NULL,
  `hari` int(11) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `cemas_ringan_progress`
--

INSERT INTO `cemas_ringan_progress` (`id`, `id_partisipan`, `hari`, `tanggal`, `status`) VALUES
(1, 1, 0, NULL, 1),
(2, 1, 1, NULL, 1),
(3, 10, 1, '2024-05-30', 1),
(4, 31, 1, '2024-05-30', 1),
(5, 32, 1, '2024-05-30', 1),
(6, 33, 1, '2024-05-30', 1),
(7, 25, 1, '2024-05-30', 1),
(8, 25, 2, '2024-05-31', 1),
(9, 37, 1, '2024-06-04', 1),
(10, 42, 1, '2024-06-11', 1),
(11, 42, 2, '2024-06-12', 1),
(12, 30, 1, '2024-06-13', 1),
(13, 44, 1, '2024-06-13', 1),
(14, 33, 2, '2024-06-13', 1),
(15, 25, 3, '2024-06-13', 1),
(16, 48, 1, '2024-06-13', 1),
(17, 46, 1, '2024-06-14', 1),
(18, 57, 1, '2025-06-03', 1),
(19, 59, 1, '2025-07-19', 1),
(20, 57, 2, '2025-07-21', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `daily_insight`
--

CREATE TABLE `daily_insight` (
  `id_daily_insight` int(11) NOT NULL,
  `judul_content` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `tanggal_upload` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `daily_insight`
--

INSERT INTO `daily_insight` (`id_daily_insight`, `judul_content`, `image`, `deskripsi`, `tanggal_upload`) VALUES
(2, 'Meditasi di Rumah: Cara Sederhana Merawat Kesehatan Mental', '1748783689_e28b5289c8a7b8461e60.jpg', 'Meditasi adalah salah satu cara yang paling efektif untuk menjaga kesehatan mental. Tanpa perlu pergi ke tempat khusus, kamu bisa melakukannya di rumah dengan suasana yang tenang. Hanya dengan duduk diam selama 10-15 menit dan fokus pada napas, kamu sudah bisa memberikan dampak positif bagi pikiranmu.\r\n\r\nManfaat meditasi meliputi pengurangan stres, peningkatan fokus, dan pengendalian emosi. Dalam jangka panjang, rutin bermeditasi dapat membantu mengurangi gejala gangguan kecemasan dan depresi. Bahkan, beberapa penelitian menunjukkan bahwa meditasi meningkatkan hormon serotonin yang berperan dalam perasaan bahagia.\r\n\r\nBuatlah sudut kecil yang nyaman di rumah sebagai tempat meditasi. Gunakan aromaterapi atau musik relaksasi untuk membantu menciptakan suasana damai. Dengan kebiasaan ini, kamu akan merasa lebih terkoneksi dengan diri sendiri dan lebih siap menghadapi tantangan sehari-hari.', '2025-06-01'),
(4, 'Pentingnya Tidur Berkualitas untuk Kesehatan Mental', '1748783720_60fa8485ecff5349ce86.jpg', 'Tidur yang cukup dan berkualitas sangat penting bagi kesehatan mental. Saat tidur, otak melakukan proses pemulihan dan pengolahan informasi yang diterima sepanjang hari. Kurang tidur dapat meningkatkan risiko gangguan kecemasan, stres, dan bahkan depresi.\r\n\r\nCobalah untuk tidur 7-8 jam setiap malam dan pertahankan rutinitas tidur yang konsisten. Hindari kafein, layar gawai, atau aktivitas berat menjelang tidur. Gantikan dengan membaca buku ringan atau mendengarkan musik santai sebagai bagian dari rutinitas sebelum tidur.\r\n\r\nDengan tidur yang cukup, kamu akan merasa lebih segar, fokus, dan emosimu pun lebih stabil. Jangan remehkan kekuatan tidur yang berkualitas dalam membantu menjaga pikiran tetap sehat dan semangat tetap terjaga.', '2025-06-01'),
(6, 'Menulis Jurnal: Terapi Sederhana untuk Ketenangan Pikiran', '1748783760_0adb1c293cdc3c4902d2.jpg', 'Menulis jurnal atau diary bisa menjadi cara yang efektif untuk menenangkan pikiran. Saat kamu menuangkan pikiran dan perasaan ke dalam tulisan, kamu sebenarnya sedang melakukan proses refleksi diri yang bermanfaat untuk kesehatan mental.\r\n\r\nKegiatan ini membantu mengidentifikasi pola pikir negatif dan mengelola emosi secara lebih sehat. Selain itu, menulis jurnal juga bisa meningkatkan rasa syukur dan memperkuat kesadaran diri akan hal-hal positif dalam hidup.\r\n\r\nLuangkan waktu setiap hari, bahkan hanya 5 menit, untuk menulis. Kamu bisa mulai dengan menuliskan 3 hal yang kamu syukuri hari ini. Dengan konsistensi, kamu akan merasakan ketenangan dan kejernihan berpikir yang lebih baik dari waktu ke waktu.', '2025-06-01'),
(7, 'Detoks Sosial Media: Sejenak Jauh, Agar Jiwa Lebih Dekat', '1748783786_87604d0599f2e0a10599.jpg', 'Media sosial membawa banyak manfaat, tapi penggunaan berlebihan bisa berdampak negatif bagi kesehatan mental. Rasa cemas, perbandingan sosial, dan tekanan untuk selalu tampil sempurna seringkali muncul tanpa disadari.\r\n\r\nDetoks media sosial berarti mengambil jeda dari aktivitas online untuk fokus pada diri sendiri. Kamu bisa mulai dengan tidak membuka aplikasi tertentu selama beberapa jam, atau memilih satu hari dalam seminggu untuk offline sepenuhnya.\r\n\r\nSelama detoks, isi waktu dengan kegiatan positif seperti berjalan di luar, membaca buku, atau berinteraksi langsung dengan orang terdekat. Kamu akan merasakan pikiran yang lebih tenang, suasana hati yang lebih stabil, dan hubungan sosial yang lebih berkualitas.', '2025-06-01'),
(8, 'Koneksi Sosial: Obat Ampuh di Tengah Kesepian', '1748783823_57d5117159909e2c9fc2.jpg', 'Manusia adalah makhluk sosial yang membutuhkan koneksi dengan orang lain. Dukungan dari teman, keluarga, atau komunitas memiliki peran besar dalam menjaga kesehatan mental, terutama saat kita merasa stres atau tertekan.\r\n\r\nMengobrol santai, saling mendengarkan, atau sekadar tertawa bersama dapat meningkatkan hormon oksitosin yang membuat kita merasa lebih bahagia dan tenang. Koneksi sosial juga membantu kita merasa dihargai dan tidak sendirian menghadapi masalah.\r\n\r\nJika kamu merasa kesepian, cobalah mulai dengan mengirim pesan pada teman lama atau bergabung dengan komunitas sesuai minatmu. Hubungan yang bermakna bukan hanya memperkuat mental, tapi juga memberikan warna dalam hidup sehari-hari.', '2025-06-01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `daily_status`
--

CREATE TABLE `daily_status` (
  `id` int(11) NOT NULL,
  `id_partisipan` int(11) DEFAULT NULL,
  `intervention_category` varchar(255) DEFAULT NULL,
  `intervention_week` int(11) DEFAULT NULL,
  `intervention_day` int(11) DEFAULT NULL,
  `is_completed` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `daily_status`
--

INSERT INTO `daily_status` (`id`, `id_partisipan`, `intervention_category`, `intervention_week`, `intervention_day`, `is_completed`, `created_at`, `updated_at`) VALUES
(1, 26, 'mindfulness', 1, 1, 1, '2024-05-07 04:52:09', '2024-05-07 04:52:09'),
(2, NULL, 'mindfulness', 0, 0, 1, '2024-05-07 05:17:05', '2024-05-07 05:17:05'),
(3, NULL, 'mindfulness', 0, 0, 1, '2024-05-07 05:17:06', '2024-05-07 05:17:06'),
(4, NULL, 'mindfulness', 0, 0, 1, '2024-05-07 05:17:08', '2024-05-07 05:17:08'),
(5, NULL, 'mindfulness', 0, 0, 1, '2024-05-07 05:17:09', '2024-05-07 05:17:09'),
(6, NULL, 'mindfulness', 0, 0, 0, '2024-05-07 05:17:14', '2024-05-07 05:17:14'),
(7, NULL, 'mindfulness', 0, 0, 0, '2024-05-07 05:17:15', '2024-05-07 05:17:15'),
(8, NULL, 'mindfulness', 0, 0, 0, '2024-05-07 05:17:17', '2024-05-07 05:17:17'),
(13, 26, 'mindfulness', 1, 1, 0, '2024-05-07 05:29:28', '2024-05-07 05:29:28'),
(14, NULL, 'mindfulness', 0, 1, 1, '2024-05-07 05:50:16', '2024-05-07 05:50:16'),
(15, NULL, 'mindfulness', 0, 2, 0, '2024-05-07 05:50:18', '2024-05-07 05:50:18'),
(16, NULL, 'mindfulness', 0, 3, 0, '2024-05-07 05:50:20', '2024-05-07 05:50:20'),
(17, NULL, 'mindfulness', 0, 4, 0, '2024-05-07 05:50:22', '2024-05-07 05:50:22'),
(18, NULL, 'mindfulness', 0, 5, 0, '2024-05-07 05:50:23', '2024-05-07 05:50:23'),
(19, NULL, 'mindfulness', 0, 6, 0, '2024-05-07 05:50:24', '2024-05-07 05:50:24'),
(20, NULL, 'mindfulness', 0, 7, 0, '2024-05-07 05:50:25', '2024-05-07 05:50:25'),
(21, NULL, 'mindfulness', 1, 1, 0, '2024-05-07 05:51:13', '2024-05-07 05:51:13'),
(22, 27, 'mindfulness', 1, 1, 1, '2024-05-07 05:53:24', '2024-05-07 05:53:24'),
(23, 27, 'mindfulness', 1, 2, 0, '2024-05-07 05:53:26', '2024-05-07 05:53:26'),
(24, 27, 'mindfulness', 1, 3, 0, '2024-05-07 05:53:27', '2024-05-07 05:53:27'),
(25, 27, 'mindfulness', 1, 4, 0, '2024-05-07 05:53:28', '2024-05-07 05:53:28'),
(26, 27, 'mindfulness', 1, 5, 0, '2024-05-07 05:53:29', '2024-05-07 05:53:29'),
(27, 27, 'mindfulness', 1, 6, 0, '2024-05-07 05:53:31', '2024-05-07 05:53:31'),
(28, 27, 'mindfulness', 1, 7, 0, '2024-05-07 05:53:32', '2024-05-07 05:53:32'),
(29, 27, 'mindfulness', 1, 1, 1, '2024-05-07 05:56:41', '2024-05-07 05:56:41'),
(30, 27, 'mindfulness', 1, 1, 1, '2024-05-07 05:59:08', '2024-05-07 05:59:08'),
(31, 27, 'mindfulness', 1, 2, 0, '2024-05-07 05:59:10', '2024-05-07 05:59:10'),
(32, 27, 'mindfulness', 1, 3, 1, '2024-05-07 05:59:12', '2024-05-07 05:59:12'),
(33, 27, 'mindfulness', 1, 4, 0, '2024-05-07 05:59:13', '2024-05-07 05:59:13'),
(34, 27, 'mindfulness', 1, 5, 1, '2024-05-07 05:59:16', '2024-05-07 05:59:16'),
(35, 27, 'mindfulness', 2, 1, 1, '2024-05-07 06:16:38', '2024-05-07 06:16:38'),
(36, 27, 'mindfulness', 2, 2, 0, '2024-05-07 06:16:39', '2024-05-07 06:16:39'),
(37, 27, 'mindfulness', 2, 3, 1, '2024-05-07 06:16:40', '2024-05-07 06:16:40'),
(38, 27, 'mindfulness', 1, 1, 1, '2024-05-07 08:24:57', '2024-05-07 08:24:57'),
(39, 27, 'mindfulness', 1, 1, 0, '2024-05-07 08:25:06', '2024-05-07 08:25:06'),
(40, 27, 'mindfulness', 1, 1, 1, '2024-05-07 08:36:46', '2024-05-07 08:36:46'),
(41, 27, 'mindfulness', 1, 1, 0, '2024-05-07 08:36:49', '2024-05-07 08:36:49'),
(42, 27, 'mindfulness', 1, 1, 1, '2024-05-07 08:38:56', '2024-05-07 08:38:56'),
(43, 27, 'mindfulness', 1, 1, 0, '2024-05-07 08:38:58', '2024-05-07 08:38:58'),
(44, 27, 'mindfulness', 1, 1, 1, '2024-05-07 08:42:00', '2024-05-07 08:42:00'),
(45, 27, 'mindfulness', 1, 1, 0, '2024-05-07 08:42:03', '2024-05-07 08:42:03'),
(46, 27, 'mindfulness', 1, 1, 1, '2024-05-07 08:42:04', '2024-05-07 08:42:04'),
(47, 27, 'mindfulness', 1, 1, 1, '2024-05-07 08:43:42', '2024-05-07 08:43:42'),
(48, 27, 'mindfulness', 1, 1, 0, '2024-05-07 08:43:43', '2024-05-07 08:43:43'),
(49, 27, 'mindfulness', 1, 1, 1, '2024-05-07 08:43:44', '2024-05-07 08:43:44'),
(50, 27, 'mindfulness', 1, 1, 0, '2024-05-07 08:43:45', '2024-05-07 08:43:45'),
(51, 27, 'mindfulness', 1, 1, 1, '2024-05-07 08:43:46', '2024-05-07 08:43:46'),
(52, 27, 'mindfulness', 1, 1, 1, '2024-05-07 08:47:06', '2024-05-07 08:47:06'),
(53, 27, 'mindfulness', 1, 1, 0, '2024-05-07 08:47:08', '2024-05-07 08:47:08'),
(54, 27, 'mindfulness', 1, 1, 1, '2024-05-07 08:47:11', '2024-05-07 08:47:11'),
(55, 27, 'mindfulness', 1, 1, 0, '2024-05-07 08:47:12', '2024-05-07 08:47:12'),
(56, 27, 'mindfulness', 1, 1, 1, '2024-05-07 08:49:04', '2024-05-07 08:49:04'),
(57, 27, 'mindfulness', 1, 1, 0, '2024-05-07 08:49:05', '2024-05-07 08:49:05'),
(58, 27, 'mindfulness', 1, 1, 1, '2024-05-07 08:49:06', '2024-05-07 08:49:06'),
(59, 27, 'mindfulness', 1, 1, 0, '2024-05-07 08:49:08', '2024-05-07 08:49:08'),
(60, 27, 'mindfulness', 1, 1, 1, '2024-05-07 08:50:11', '2024-05-07 08:50:11'),
(61, 27, 'mindfulness', 1, 1, 1, '2024-05-07 08:51:05', '2024-05-07 08:51:05'),
(62, 27, 'mindfulness', 1, 1, 1, '2024-05-07 08:51:35', '2024-05-07 08:51:35'),
(63, 27, 'mindfulness', 1, 1, 1, '2024-05-07 08:51:54', '2024-05-07 08:51:54'),
(64, 27, 'mindfulness', 1, 1, 0, '2024-05-07 08:51:54', '2024-05-07 08:51:54'),
(65, 27, 'mindfulness', 1, 1, 1, '2024-05-07 08:51:56', '2024-05-07 08:51:56'),
(66, 27, 'mindfulness', 1, 2, 1, '2024-05-07 08:52:26', '2024-05-07 08:52:26'),
(67, 27, 'mindfulness', 1, 3, 1, '2024-05-07 08:52:29', '2024-05-07 08:52:29'),
(68, 27, 'mindfulness', 1, 1, 1, '2024-05-07 08:52:30', '2024-05-07 08:52:30'),
(69, 27, 'mindfulness', 1, 1, 0, '2024-05-07 08:53:26', '2024-05-07 08:53:26'),
(70, 27, 'mindfulness', 1, 1, 0, '2024-05-07 08:53:26', '2024-05-07 08:53:26'),
(71, 27, 'mindfulness', 1, 1, 1, '2024-05-07 08:53:30', '2024-05-07 08:53:30'),
(72, 27, 'mindfulness', 1, 1, 0, '2024-05-07 08:53:31', '2024-05-07 08:53:31'),
(73, 27, 'mindfulness', 1, 1, 1, '2024-05-07 08:53:32', '2024-05-07 08:53:32'),
(74, 27, 'mindfulness', 1, 1, 0, '2024-05-07 08:53:34', '2024-05-07 08:53:34'),
(75, 27, 'mindfulness', 1, 1, 1, '2024-05-07 08:53:59', '2024-05-07 08:53:59'),
(76, 27, 'mindfulness', 1, 1, 1, '2024-05-07 08:53:59', '2024-05-07 08:53:59'),
(77, 27, 'mindfulness', 1, 1, 1, '2024-05-07 08:53:59', '2024-05-07 08:53:59'),
(78, 27, 'mindfulness', 1, 1, 1, '2024-05-07 08:53:59', '2024-05-07 08:53:59'),
(79, 27, 'mindfulness', 1, 1, 0, '2024-05-07 08:54:00', '2024-05-07 08:54:00'),
(80, 27, 'mindfulness', 1, 2, 1, '2024-05-07 08:54:02', '2024-05-07 08:54:02'),
(81, 27, 'mindfulness', 1, 1, 1, '2024-05-07 08:54:04', '2024-05-07 08:54:04'),
(82, 27, 'mindfulness', 1, 1, 0, '2024-05-07 08:54:08', '2024-05-07 08:54:08'),
(83, 27, 'mindfulness', 1, 1, 1, '2024-05-07 08:54:09', '2024-05-07 08:54:09'),
(84, 27, 'mindfulness', 1, 2, 0, '2024-05-07 08:54:49', '2024-05-07 08:54:49'),
(85, 27, 'mindfulness', 1, 1, 0, '2024-05-07 08:54:55', '2024-05-07 08:54:55'),
(86, 27, 'mindfulness', 1, 1, 1, '2024-05-07 08:57:00', '2024-05-07 08:57:00'),
(87, 27, 'mindfulness', 1, 1, 0, '2024-05-07 08:57:02', '2024-05-07 08:57:02'),
(88, 27, 'mindfulness', 1, 1, 1, '2024-05-07 08:57:03', '2024-05-07 08:57:03'),
(89, 27, 'mindfulness', 1, 1, 0, '2024-05-07 08:57:04', '2024-05-07 08:57:04'),
(90, 27, 'mindfulness', 1, 2, 1, '2024-05-07 08:57:05', '2024-05-07 08:57:05'),
(91, 27, 'mindfulness', 1, 3, 1, '2024-05-07 08:57:07', '2024-05-07 08:57:07'),
(92, 27, 'mindfulness', 1, 3, 0, '2024-05-07 08:57:08', '2024-05-07 08:57:08'),
(93, 27, 'mindfulness', 1, 1, 1, '2024-05-07 08:57:09', '2024-05-07 08:57:09'),
(94, 27, 'mindfulness', 1, 1, 0, '2024-05-07 08:57:19', '2024-05-07 08:57:19'),
(95, 27, 'mindfulness', 1, 1, 1, '2024-05-07 08:57:20', '2024-05-07 08:57:20'),
(96, 27, 'mindfulness', 1, 1, 0, '2024-05-07 08:58:03', '2024-05-07 08:58:03'),
(97, 27, 'mindfulness', 1, 1, 1, '2024-05-07 08:58:04', '2024-05-07 08:58:04'),
(98, 27, 'mindfulness', 1, 1, 0, '2024-05-07 08:58:06', '2024-05-07 08:58:06'),
(99, 27, 'mindfulness', 1, 1, 1, '2024-05-07 08:58:40', '2024-05-07 08:58:40'),
(100, 27, 'mindfulness', 1, 2, 0, '2024-05-07 08:58:46', '2024-05-07 08:58:46'),
(101, 27, 'mindfulness', 1, 1, 0, '2024-05-07 08:59:24', '2024-05-07 08:59:24'),
(102, 27, 'mindfulness', 1, 1, 1, '2024-05-07 08:59:29', '2024-05-07 08:59:29'),
(103, 27, 'mindfulness', 1, 1, 0, '2024-05-07 08:59:30', '2024-05-07 08:59:30'),
(104, 27, 'mindfulness', 1, 1, 1, '2024-05-07 08:59:51', '2024-05-07 08:59:51'),
(105, 27, 'mindfulness', 1, 1, 0, '2024-05-07 08:59:52', '2024-05-07 08:59:52'),
(106, 27, 'mindfulness', 1, 1, 1, '2024-05-07 09:00:00', '2024-05-07 09:00:00'),
(107, 27, 'mindfulness', 1, 1, 0, '2024-05-07 09:00:01', '2024-05-07 09:00:01'),
(108, 27, 'mindfulness', 1, 1, 1, '2024-05-07 09:00:02', '2024-05-07 09:00:02'),
(109, 27, 'mindfulness', 1, 1, 0, '2024-05-07 09:00:03', '2024-05-07 09:00:03'),
(110, 27, 'mindfulness', 1, 1, 1, '2024-05-07 09:00:04', '2024-05-07 09:00:04'),
(111, 27, 'mindfulness', 1, 1, 1, '2024-05-07 09:00:33', '2024-05-07 09:00:33'),
(112, 1, 'mindfulness', 1, 1, 1, '2024-05-07 09:02:17', '2024-05-07 09:02:17'),
(113, 27, 'mindfulness', 1, 1, 1, '2024-05-07 09:03:02', '2024-05-07 09:03:02'),
(114, 27, 'mindfulness', 1, 1, 1, '2024-05-07 09:03:31', '2024-05-07 09:03:31'),
(115, 27, 'mindfulness', 1, 1, 1, '2024-05-07 09:03:32', '2024-05-07 09:03:32'),
(116, 27, 'mindfulness', 1, 1, 1, '2024-05-07 09:03:46', '2024-05-07 09:03:46'),
(117, 27, 'mindfulness', 1, 2, 0, '2024-05-07 09:03:47', '2024-05-07 09:03:47'),
(118, 27, 'mindfulness', 1, 3, 1, '2024-05-07 09:03:48', '2024-05-07 09:03:48'),
(119, 27, 'mindfulness', 1, 1, 1, '2024-05-07 09:10:01', '2024-05-07 09:10:01'),
(120, 27, 'mindfulness', 1, 1, 0, '2024-05-07 09:10:04', '2024-05-07 09:10:04'),
(121, 27, 'mindfulness', 1, 1, 1, '2024-05-07 09:10:10', '2024-05-07 09:10:10'),
(122, 27, 'mindfulness', 1, 1, 0, '2024-05-07 09:10:11', '2024-05-07 09:10:11'),
(123, 27, 'mindfulness', 1, 1, 1, '2024-05-07 09:12:00', '2024-05-07 09:12:00'),
(124, 27, 'mindfulness', 1, 1, 0, '2024-05-07 09:12:01', '2024-05-07 09:12:01'),
(125, 27, 'mindfulness', 1, 1, 1, '2024-05-07 09:14:02', '2024-05-07 09:14:02'),
(126, 27, 'mindfulness', 1, 2, 1, '2024-05-07 09:14:05', '2024-05-07 09:14:05'),
(127, 27, 'mindfulness', 1, 3, 1, '2024-05-07 09:14:08', '2024-05-07 09:14:08'),
(128, 27, 'mindfulness', 1, 4, 1, '2024-05-07 09:14:10', '2024-05-07 09:14:10'),
(129, 27, 'mindfulness', 1, 5, 1, '2024-05-07 09:14:12', '2024-05-07 09:14:12'),
(130, 27, 'mindfulness', 1, 6, 1, '2024-05-07 09:14:13', '2024-05-07 09:14:13'),
(131, 27, 'mindfulness', 1, 7, 1, '2024-05-07 09:14:14', '2024-05-07 09:14:14'),
(132, 30, 'mindfulness', 1, 1, 1, '2024-05-19 21:33:14', '2024-05-19 21:33:14'),
(133, 30, 'mindfulness', 1, 2, 1, '2024-05-19 21:33:15', '2024-05-19 21:33:15'),
(134, 30, 'mindfulness', 1, 3, 1, '2024-05-19 21:33:17', '2024-05-19 21:33:17'),
(135, 30, 'mindfulness', 1, 4, 1, '2024-05-19 21:33:18', '2024-05-19 21:33:18'),
(136, 30, 'mindfulness', 1, 5, 1, '2024-05-19 21:33:19', '2024-05-19 21:33:19'),
(137, 30, 'mindfulness', 1, 6, 1, '2024-05-19 21:33:20', '2024-05-19 21:33:20'),
(138, 30, 'mindfulness', 1, 7, 1, '2024-05-19 21:33:21', '2024-05-19 21:33:21'),
(139, 10, 'mindfulness', 2, 1, 1, '2024-05-30 01:40:21', '2024-05-30 01:40:21'),
(140, 25, 'mindfulness', 1, 1, 1, '2024-05-30 01:49:58', '2024-05-30 01:49:58'),
(141, 35, 'mindfulness', 1, 1, 1, '2024-05-31 21:03:38', '2024-05-31 21:03:38'),
(142, 25, 'mindfulness', 1, 1, 1, '2024-06-04 01:37:34', '2024-06-04 01:37:34'),
(143, 25, 'mindfulness', 1, 2, 1, '2024-06-04 22:13:45', '2024-06-04 22:13:45'),
(144, 42, 'mindfulness', 1, 3, 1, '2024-06-11 05:59:50', '2024-06-11 05:59:50'),
(145, 42, 'mindfulness', 1, 4, 1, '2024-06-11 19:26:29', '2024-06-11 19:26:29'),
(148, 27, NULL, 1, 1, 1, '2024-06-11 21:37:29', '2024-06-11 21:37:29'),
(149, 27, NULL, 1, 2, 1, '2024-06-11 21:37:45', '2024-06-11 21:37:45'),
(150, 10, NULL, 1, 2, 1, '2024-06-11 21:37:52', '2024-06-11 21:37:52'),
(151, 10, NULL, 2, 2, 1, '2024-06-11 21:38:00', '2024-06-11 21:38:00'),
(152, 10, 'mindfulness', 2, 2, 1, '2024-06-11 21:39:13', '2024-06-11 21:39:13'),
(153, 10, 'mindfulness', 1, 2, 1, '2024-06-11 21:41:29', '2024-06-11 21:41:29'),
(154, 10, 'mindfulness', 1, 3, 1, '2024-06-11 21:41:38', '2024-06-11 21:41:38'),
(155, 10, 'mindfulness', 1, 4, 1, '2024-06-11 21:41:43', '2024-06-11 21:41:43'),
(157, 20, 'mindfulness', 1, 1, 1, '2024-06-11 21:43:56', '2024-06-11 21:43:56'),
(158, 20, 'mindfulness', 2, 1, 1, '2024-06-11 21:44:09', '2024-06-11 21:44:09'),
(159, 20, 'mindfulness', 3, 1, 1, '2024-06-11 21:44:33', '2024-06-11 21:44:33'),
(160, 20, 'mindfulness', 4, 1, 1, '2024-06-11 21:44:48', '2024-06-11 21:44:48'),
(161, 18, 'mindfulness', 1, 1, 1, '2024-06-11 21:48:57', '2024-06-11 21:48:57'),
(162, 18, 'mindfulness', 2, 1, 1, '2024-06-11 21:49:39', '2024-06-11 21:49:39'),
(163, 18, 'mindfulness', 3, 1, 1, '2024-06-11 21:51:13', '2024-06-11 21:51:13'),
(164, 19, 'mindfulness', 1, 1, 1, '2024-06-11 21:59:47', '2024-06-11 21:59:47'),
(165, 19, 'mindfulness', 2, 1, 1, '2024-06-11 22:00:16', '2024-06-11 22:00:16'),
(166, 19, 'mindfulness', 3, 1, 1, '2024-06-11 22:01:43', '2024-06-11 22:01:43'),
(168, 22, 'mindfulness', 1, 1, 1, '2024-06-11 22:06:30', '2024-06-11 22:06:30'),
(169, 43, 'mindfulness', 1, 1, 1, '2024-06-11 23:24:31', '2024-06-11 23:24:31'),
(170, 44, 'mindfulness', 1, 1, 1, '2024-06-11 23:46:22', '2024-06-11 23:46:22'),
(171, 5, 'mindfulness', 1, 1, 0, '2024-06-12 18:06:24', '2024-06-12 18:06:24'),
(172, 3, 'mindfulness', 1, 1, 1, '2024-06-12 18:09:17', '2024-06-12 18:09:17'),
(173, 30, NULL, 1, 7, 1, '2024-06-12 18:19:26', '2024-06-12 18:19:26'),
(174, 45, 'mindfulness', 1, 1, 1, '2024-06-12 19:11:27', '2024-06-12 19:11:27'),
(175, 46, 'mindfulness', 1, 1, 1, '2024-06-12 19:34:53', '2024-06-12 19:34:53'),
(176, 24, 'mindfulness', 1, 1, 1, '2024-06-12 19:41:06', '2024-06-12 19:41:06'),
(177, 48, 'mindfulness', 1, 1, 1, '2024-06-12 19:43:33', '2024-06-12 19:43:33'),
(178, 51, 'mindfulness', 1, 1, 1, '2024-06-13 20:16:27', '2024-06-13 20:16:27'),
(179, 52, 'mindfulness', 1, 1, 1, '2024-06-13 20:29:23', '2024-06-13 20:29:23'),
(180, 59, 'mindfulness', 1, 1, 1, '2025-07-13 23:06:51', '2025-07-13 23:06:51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `depresi_ringan_progress`
--

CREATE TABLE `depresi_ringan_progress` (
  `id` int(11) NOT NULL,
  `id_partisipan` int(11) NOT NULL,
  `hari` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `depresi_ringan_progress`
--

INSERT INTO `depresi_ringan_progress` (`id`, `id_partisipan`, `hari`, `tanggal`, `status`) VALUES
(1, 10, 1, '2024-05-30', 1),
(2, 42, 1, '2024-06-10', 1),
(3, 42, 3, '2024-06-12', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `grateful`
--

CREATE TABLE `grateful` (
  `id_grateful` int(11) NOT NULL,
  `id_partisipan` int(11) DEFAULT NULL,
  `tanggal` date NOT NULL,
  `hal_disyukuri` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `grateful`
--

INSERT INTO `grateful` (`id_grateful`, `id_partisipan`, `tanggal`, `hal_disyukuri`) VALUES
(1, 1, '2024-05-15', 'Pekerjaan baru'),
(2, 1, '2024-05-15', 'Mendapatkan hadiah ulang tahun'),
(3, 1, '2024-05-15', 'Waktu berkualitas bersama keluarga'),
(4, 1, '2024-05-15', 'Pertemuan dengan teman lama'),
(5, 1, '2024-05-15', 'Kesehatan yang baik'),
(6, 1, '2024-05-15', 'Pekerjaan baru, Mendapatkan hadiah ulang tahun, Waktu berkualitas bersama keluarga, Pertemuan dengan teman lama, Kesehatan yang baik'),
(7, 3, '2024-05-15', 'Pekerjaan baru, Mendapatkan hadiah ulang tahun, Waktu berkualitas bersama keluarga, Pertemuan dengan teman lama, Kesehatan yang baik'),
(8, NULL, '2024-05-15', 'hadbs, dsnd, sbfs, sfs, sfs'),
(9, 28, '2024-05-15', 'bisa bernafas, bisa minum es, bisa makan, bisa tidur, senyum'),
(10, 30, '2024-05-20', 'Bisa bernafas, Bisa tidur nyenyak, ad, dsd, snbs');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil_prediksi`
--

CREATE TABLE `hasil_prediksi` (
  `id_hasil` int(11) NOT NULL,
  `id_partisipan` int(11) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `mental_disorders` int(11) DEFAULT NULL,
  `klasifikasi` varchar(255) DEFAULT NULL,
  `tanggal_tes` date DEFAULT NULL,
  `id_analisis` int(11) DEFAULT NULL,
  `waktu_submit` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `hasil_prediksi`
--

INSERT INTO `hasil_prediksi` (`id_hasil`, `id_partisipan`, `points`, `mental_disorders`, `klasifikasi`, `tanggal_tes`, `id_analisis`, `waktu_submit`) VALUES
(1, 13, 0, 0, 'Depresi', NULL, NULL, NULL),
(5, 14, 9, 1, 'Depresi', NULL, NULL, NULL),
(7, 13, NULL, 1, 'Depresi', NULL, NULL, NULL),
(10, 18, 13, 1, 'Depresi', NULL, NULL, NULL),
(12, 20, 10, 1, 'Depresi', NULL, NULL, NULL),
(18, 13, 0, 0, 'Tidak Menderita', NULL, NULL, NULL),
(19, 13, 0, 0, 'Tidak Menderita', NULL, NULL, NULL),
(20, 1, 10, 1, 'Depresi', NULL, NULL, NULL),
(21, 123, 9, 1, 'Depresi', NULL, NULL, NULL),
(22, 14, 9, 1, 'Depresi', NULL, NULL, NULL),
(23, 10, 10, 1, 'Depresi', NULL, NULL, NULL),
(74, 18, 13, 1, 'Depresi', NULL, NULL, NULL),
(75, 19, 10, 1, 'Depresi', NULL, NULL, NULL),
(76, 20, 10, 1, 'Depresi', NULL, NULL, NULL),
(77, 21, 7, 0, 'Tidak Menderita', NULL, NULL, NULL),
(78, 22, 10, 1, 'Depresi', NULL, NULL, NULL),
(85, 28, 11, 1, 'Depresi', NULL, NULL, NULL),
(86, 29, 6, 0, 'Tidak Menderita', NULL, NULL, NULL),
(87, 16, 12, 1, 'Depresi', NULL, NULL, NULL),
(88, 17, 9, 1, 'Depresi', NULL, NULL, NULL),
(89, 25, 9, 1, 'Depresi', NULL, NULL, NULL),
(90, 26, 9, 1, 'Depresi', NULL, NULL, NULL),
(91, 30, 7, 1, 'Depresi', NULL, NULL, NULL),
(92, 31, 7, 0, 'Tidak Menderita', '2024-05-21', NULL, NULL),
(93, 35, 12, 1, 'Depresi', '2024-05-31', NULL, NULL),
(94, 36, 47, 0, 'Tidak Menderita', '2024-06-02', NULL, NULL),
(95, 37, 11, 1, 'Depresi', '2024-06-06', NULL, NULL),
(96, 38, 10, 1, 'Depresi', '2024-06-06', NULL, NULL),
(97, 25, 11, 1, 'Depresi', '2024-06-06', 1, NULL),
(98, 25, 11, 1, 'Depresi', '2024-06-06', 2, NULL),
(99, 38, 10, 1, 'Depresi', '2024-06-06', 3, NULL),
(100, 38, 11, 1, 'Depresi', '2024-06-06', 4, NULL),
(101, 38, 12, 1, 'Depresi', '2024-06-06', 5, NULL),
(102, 38, 10, 1, 'Depresi', '2024-06-06', 6, NULL),
(103, 38, 10, 1, 'Depresi', '2024-06-06', 7, NULL),
(104, 38, 11, 1, 'Depresi', '2024-06-06', 8, NULL),
(105, 38, 10, 1, 'Depresi', '2024-06-06', 9, NULL),
(106, 38, 12, 1, 'Depresi', '2024-06-06', 10, NULL),
(107, 38, 10, 1, 'Depresi', '2024-06-06', 11, NULL),
(108, 38, 10, 1, 'Depresi', '2024-06-06', 12, NULL),
(109, 39, 10, 1, 'Depresi', '2024-06-06', 13, NULL),
(110, 39, 11, 1, 'Depresi', '2024-06-06', 14, NULL),
(111, 39, 12, 1, 'Depresi', '2024-06-06', 15, NULL),
(112, 39, 11, 1, 'Depresi', '2024-06-06', 16, NULL),
(113, 40, 10, 1, 'Stress', '2024-06-06', 17, NULL),
(114, 40, 13, 1, 'Depresi', '2024-06-06', 18, NULL),
(115, 31, 11, 1, 'Cemas', '2024-06-06', 19, NULL),
(116, 31, 11, 1, 'Stress', '2024-06-10', 20, '2024-06-10 14:43:20'),
(117, 42, 11, 1, 'Stress', '2024-06-10', 21, '2024-06-10 14:49:44'),
(118, 42, 12, 1, 'Stress', '2024-06-11', 22, NULL),
(119, 42, 7, 1, 'Cemas', '2024-06-12', 23, NULL),
(120, 45, 7, 0, 'Tidak Menderita', '2024-06-13', 24, NULL),
(121, 46, 10, 1, 'Stress', '2024-06-13', 25, '2024-06-13 13:26:34'),
(122, 46, 9, 1, 'Stress', '2024-06-13', 26, '2024-06-13 13:26:34'),
(123, 46, 12, 1, 'Stress', '2024-06-13', 27, '2024-06-13 13:26:35'),
(124, 46, 11, 1, 'Depresi', '2024-06-13', 28, '2024-06-13 13:26:35'),
(125, 46, 10, 1, 'Stress', '2024-06-13', 29, '2024-06-13 13:26:35'),
(126, 53, 9, 1, 'Stress', '2024-06-15', 30, '2024-06-15 00:39:28'),
(127, 53, 12, 1, 'Stress', '2024-06-15', 31, '2024-06-15 00:39:28'),
(128, 53, 8, 1, 'Cemas', '2024-06-15', 32, '2024-06-15 00:41:44'),
(129, 53, 15, 1, 'Depresi', '2024-06-15', 33, '2024-06-15 00:44:06'),
(130, 53, 4, 0, 'Tidak Menderita', '2024-06-15', 34, '2024-06-15 00:45:26'),
(131, 53, 6, 0, 'Tidak Menderita', '2024-06-15', 35, '2024-06-15 01:11:15'),
(132, 53, 7, 0, 'Tidak Menderita', '2024-06-15', 36, '2024-06-15 01:11:15'),
(133, 46, 13, 1, 'Cemas', '2024-11-08', 37, '2024-11-08 21:45:25'),
(134, 46, 12, 1, 'Stress', '2024-11-08', 38, '2024-11-08 21:45:26'),
(135, 46, 10, 1, 'Cemas', '2024-11-08', 39, '2024-11-08 21:45:26'),
(136, 46, 7, 1, 'Stress', '2024-11-08', 40, '2024-11-08 21:49:59'),
(137, 56, 11, 1, 'Stress', '2025-06-04', 41, '2025-06-04 14:48:28'),
(138, 56, 12, 1, 'Stress', '2025-06-04', 42, '2025-06-04 14:48:28'),
(139, 56, 13, 1, 'Cemas', '2025-06-04', 43, '2025-06-04 14:48:28'),
(140, 56, 15, 1, 'Depresi', '2025-06-04', 44, '2025-06-04 14:48:28'),
(141, 56, 12, 1, 'Depresi', '2025-06-04', 45, '2025-06-04 14:48:28'),
(142, 56, 14, 1, 'Cemas', '2025-06-04', 46, '2025-06-04 14:48:28'),
(143, 56, 12, 1, 'Depresi', '2025-06-04', 47, '2025-06-04 14:48:28'),
(144, 57, 9, 1, 'Stress', '2025-06-04', 48, '2025-06-04 14:48:28'),
(145, 57, 4, 0, 'Tidak Menderita', '2025-06-04', 49, '2025-06-04 14:49:42'),
(146, 57, 13, 1, 'Stress', '2025-06-04', 50, '2025-06-04 16:54:00'),
(147, 58, 10, 1, 'Cemas', '2025-06-05', 51, '2025-06-05 15:32:00'),
(148, 58, 11, 1, 'Stress', '2025-07-11', 52, '2025-07-11 11:57:55'),
(149, 59, 9, 1, 'Cemas', '2025-07-14', 53, '2025-07-14 13:05:52'),
(150, 59, 8, 1, 'Cemas', '2025-07-14', 54, '2025-07-14 13:05:53'),
(151, 59, 10, 1, 'Cemas', '2025-07-14', 55, '2025-07-14 13:25:08'),
(152, 59, 10, 1, 'Cemas', '2025-07-14', 56, '2025-07-14 13:26:45'),
(153, 59, 0, 0, 'Tidak Menderita', '2025-07-14', 57, '2025-07-14 13:28:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil_prediksi_post`
--

CREATE TABLE `hasil_prediksi_post` (
  `id_hasil` int(11) NOT NULL,
  `id_partisipan` int(11) NOT NULL,
  `points` int(11) NOT NULL,
  `mental_disorders` tinyint(1) NOT NULL,
  `klasifikasi` varchar(255) NOT NULL,
  `tanggal_tes` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `hasil_prediksi_post`
--

INSERT INTO `hasil_prediksi_post` (`id_hasil`, `id_partisipan`, `points`, `mental_disorders`, `klasifikasi`, `tanggal_tes`) VALUES
(1, 36, 45, 1, 'Depresi', '2024-06-02 00:00:00'),
(2, 36, 45, 1, 'Depresi', '2024-06-02 00:00:00'),
(3, 36, 8, 1, 'Depresi', '2024-06-02 00:00:00'),
(4, 35, 11, 1, 'Depresi', '2024-06-02 00:00:00'),
(5, 42, 5, 0, 'Tidak Menderita', '2024-06-11 00:00:00'),
(6, 57, 9, 1, 'Depresi', '2025-06-05 00:00:00'),
(7, 57, 3, 0, 'Tidak Menderita', '2025-06-05 00:00:00'),
(8, 58, 3, 0, 'Tidak Menderita', '2025-06-05 00:00:00'),
(9, 58, 11, 1, 'Depresi', '2025-06-05 00:00:00'),
(10, 58, 9, 1, 'Depresi', '2025-06-05 00:00:00'),
(11, 58, 11, 1, 'Depresi', '2025-06-05 08:41:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `intervensi`
--

CREATE TABLE `intervensi` (
  `id_intervensi` int(11) NOT NULL,
  `id_kategori_intervensi` int(11) DEFAULT NULL,
  `deskripsi_challenge` text DEFAULT NULL,
  `image_challenge` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `intervensi`
--

INSERT INTO `intervensi` (`id_intervensi`, `id_kategori_intervensi`, `deskripsi_challenge`, `image_challenge`, `created_at`, `updated_at`) VALUES
(1, 5, 'Deskripsikan diri anda dalam 3 kata!', '1748942975_0b3cfa47cd2a5f731440.png', '2024-04-28 16:59:30', '2025-06-03 09:29:35'),
(2, 5, 'Tuliskan 5 Hal yang membuat kamu bahagia!', '1748943200_648f1da1c42c0f64959b.png', '2024-04-29 04:06:47', '2025-06-03 09:33:20'),
(3, 5, 'Tuliskan tempat yang ingin kamu kunjungi!', '1748943209_0aa9b75ddd689d83a2a8.png', '2024-04-29 04:07:39', '2025-06-03 09:33:29'),
(4, 5, 'Sebutkan seseorang yang kamu rindukan saat ini!', '1748943220_ca83a3fa6447d477142e.png', '2024-04-29 04:08:45', '2025-06-03 09:33:40'),
(5, 5, 'Tuliskan buku favoritmu dan alasan kamu menyukainya!', '1748943229_4eb939b7fe35b488bb0e.png', '2024-04-29 04:09:38', '2025-06-03 09:33:49'),
(6, 5, 'Tuliskan Film/Drama favoritmu dan berikan alasannya!', '1748943238_5e312e68b5a32e7dc645.png', '2024-04-29 04:10:24', '2025-06-03 09:33:58'),
(7, 5, 'Tuliskan 5 hal yang membuatmu sedih!', '1748943246_69cea09a11dfd2e22338.png', '2024-04-29 04:11:14', '2025-06-03 09:34:06'),
(8, 5, 'Ceritakan sosok dirimu di masa kecil!', '1748943257_059e7de2e3eb13dfd56d.png', '2024-04-29 04:11:50', '2025-06-03 09:34:17'),
(9, 5, 'Tuliskan musik favoritmu dan alasan kamu menyukainya!', '1748943268_9d1f636431193820ce9d.png', '2024-04-29 04:12:40', '2025-06-03 09:34:28'),
(10, 5, 'Deskripsikan 5 hal yang kamu suka di dunia ini!', '1748943279_dd92e02210dadb488b74.png', '2024-04-29 04:13:18', '2025-06-03 09:34:39'),
(11, 5, 'Siapa role modelmu (sosok yang kamu impikan) dan kenapa kamu menyukainya?', '1748943289_ae9b7c829787f3886348.png', '2024-04-29 04:14:13', '2025-06-03 09:34:49'),
(12, 5, 'Deskripsikan kriteria pasangan hidupmu!', '1748943385_e1720ad69c5ea299bfd2.png', '2024-04-29 04:15:02', '2025-06-03 09:36:25'),
(13, 5, 'Sebutkan 5 hal yang kamu suka dari dirimu!', '1748943408_2429fd638fe752eb645d.png', '2024-04-29 04:15:47', '2025-06-03 09:36:48'),
(14, 5, 'Sebutkan 5 hal yang ingin kamu ubah dari dirimu!', '1748943422_174e67ac2e42e7020007.png', '2024-04-29 04:17:05', '2025-06-03 09:37:02'),
(15, 5, 'Deskripsikan tentang keluargamu!', '1748943437_21f248c835ae7671e3e0.png', '2024-04-29 04:19:01', '2025-06-03 09:37:17'),
(16, 5, 'Deskripsikan dirimu 5 tahun kedepan!', '1748943452_6661213eeaadc1b674ef.png', '2024-04-29 04:19:46', '2025-06-03 09:37:32'),
(17, 5, 'Satu kalimat yang memotivasi hidupmu!', '1748943477_3b1acda861f2370fc6a8.png', '2024-04-29 04:20:16', '2025-06-03 09:37:57'),
(18, 5, 'Sebutkan 5 teman terdekatmu!', '1748943492_fb53b44d19dca8636103.png', '2024-04-29 04:20:41', '2025-06-03 09:38:12'),
(19, 5, 'Tuliskan 3 nilai yang kamu pegang teguh!', '1748943505_1d53039314cf5e2f29aa.png', '2024-04-29 04:21:37', '2025-06-03 09:38:25'),
(20, 5, 'Deskripsikan suasana hatimu dalam 3 bulan terakhir', '1748943519_dd1041728d84949a758c.png', '2024-04-29 04:30:10', '2025-06-03 09:38:39'),
(21, 5, 'Sebutkan seseorang yang kamu suka dan alasannya!', '1748943538_eb126262a71ecc132a9f.png', '2024-04-29 04:30:48', '2025-06-03 09:38:58'),
(22, 5, 'Deskripsikan arti kata \"keluarga\" menurutmu!', '1748943552_b1eb2ad9bacaff0e116a.png', '2024-04-29 04:31:35', '2025-06-03 09:39:12'),
(23, 5, 'Sebutkan 5 impian kamu dimasa depan!', '1748943569_2c9a467c13700d360f78.png', '2024-04-29 04:32:05', '2025-06-03 09:39:29'),
(24, 5, 'Deskripsikan arti kata \"cinta\" menurutmu!', '1748943583_85fe46e6281d9bc2a329.png', '2024-04-29 04:32:44', '2025-06-03 09:39:43'),
(25, 5, 'Deskripsikan arti kata \"hidup\" menurutmu!', '1748943599_50cedf759d5795cbf319.png', '2024-04-29 04:33:18', '2025-06-03 09:39:59'),
(26, 5, 'Apa tujuan hidupmu?', '1748943614_fbf064de3edda9152c99.png', '2024-04-29 04:33:41', '2025-06-03 09:40:14'),
(27, 5, 'Tulis satu kalimat motivasi untuk dirimu', '1748943628_5b0140339ea8209ffcfb.png', '2024-04-29 04:34:05', '2025-06-03 09:40:28'),
(28, 5, 'Tuliskan 3 hal yang ingin kamu berikan pada dirimu!', '1748943638_00319cfdbb7d86186f6b.png', '2024-04-29 04:34:48', '2025-06-03 09:40:38'),
(29, 5, 'Alasan kamu bertahan hidup', '1748943652_4c84fbaa7c068b9c965d.png', '2024-04-29 04:35:24', '2025-06-03 09:40:52'),
(30, 5, 'Apa perasaanmu setelah menulis challenge ini?', '1748943669_12866953cf2d3bedbc04.png', '2024-04-29 04:35:53', '2025-06-03 09:41:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal_olahraga`
--

CREATE TABLE `jadwal_olahraga` (
  `id_olahraga` int(11) NOT NULL,
  `id_partisipan` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `jenis_olahraga` varchar(50) DEFAULT NULL,
  `durasi` varchar(20) DEFAULT NULL,
  `catatan` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `jadwal_olahraga`
--

INSERT INTO `jadwal_olahraga` (`id_olahraga`, `id_partisipan`, `tanggal`, `jenis_olahraga`, `durasi`, `catatan`, `created_at`, `updated_at`) VALUES
(1, 26, '2024-05-10', 'jogging', '1 jam', 'Rutin jogging setiap pagi', '2024-05-06 22:44:55', '2024-05-06 22:44:55'),
(2, 26, '2024-05-07', 'Jogging/Lari', '30 menit', 'bjd', '2024-05-06 23:00:53', '2024-05-06 23:00:53'),
(3, 26, '2024-05-07', 'Jogging/Lari', '2 jam', 'SASAD', '2024-05-06 23:01:04', '2024-05-06 23:01:04'),
(4, 26, '2024-05-08', 'Basket', '45 menit', 'ndsndlksa', '2024-05-06 23:01:46', '2024-05-06 23:01:46'),
(5, 30, '2024-05-20', 'Jogging/Lari', '30 menit', 'Lari di gor', '2024-05-19 22:17:42', '2024-05-19 22:17:42'),
(6, 30, '2024-05-21', 'Renang', '30 menit', 'renang di gor', '2024-05-19 22:17:44', '2024-05-19 22:17:44'),
(7, 25, '2024-06-05', 'Jogging/Lari', '45 menit', 'ayo', '2024-06-04 21:39:58', '2024-06-04 21:39:58'),
(8, 25, '2024-06-05', 'Taekwondo', '30 menit', 'ayo', '2024-06-04 21:40:12', '2024-06-04 21:40:12'),
(9, 42, '2024-06-10', 'Jogging/Lari', '45 menit', 'yuk', '2024-06-10 01:20:17', '2024-06-10 01:20:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal_tidur`
--

CREATE TABLE `jadwal_tidur` (
  `id_tidur` int(11) NOT NULL,
  `id_partisipan` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `waktu_tidur` time DEFAULT NULL,
  `waktu_bangun` time DEFAULT NULL,
  `gangguan_tidur` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `jadwal_tidur`
--

INSERT INTO `jadwal_tidur` (`id_tidur`, `id_partisipan`, `tanggal`, `waktu_tidur`, `waktu_bangun`, `gangguan_tidur`, `created_at`, `updated_at`) VALUES
(1, 2, '2024-05-07', '22:00:00', '06:00:00', 'Tidak ada', '2024-05-06 21:35:05', '2024-05-06 21:35:05'),
(2, 26, '2024-05-07', '22:00:00', '06:00:00', 'Tidak ada', '2024-05-06 22:04:25', '2024-05-06 22:04:25'),
(3, 26, '2024-05-07', '12:12:00', '12:17:00', 'tidak ada', '2024-05-06 22:12:23', '2024-05-06 22:12:23'),
(4, 26, '2024-05-30', '15:18:00', '17:20:00', 'tidak ada', '2024-05-06 22:15:15', '2024-05-06 22:15:15'),
(5, 30, '2024-05-20', '12:16:00', '00:16:00', 'tidak ada', '2024-05-19 22:16:52', '2024-05-19 22:16:52'),
(6, 30, '2024-05-21', '22:20:00', '07:00:00', 'Semoga tidak ada', '2024-05-20 20:18:09', '2024-05-20 20:18:09'),
(7, 25, '2024-06-05', '21:33:00', '05:35:00', 'Semoga tidak ada', '2024-06-04 21:33:35', '2024-06-04 21:33:35'),
(8, 42, '2024-06-10', '15:19:00', '20:22:00', 'Semoga tidak ada', '2024-06-10 01:19:46', '2024-06-10 01:19:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jawaban`
--

CREATE TABLE `jawaban` (
  `id_jawaban` int(11) NOT NULL,
  `id_partisipan` int(11) NOT NULL,
  `id_kuisioner` int(11) NOT NULL,
  `jawaban` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `jawaban`
--

INSERT INTO `jawaban` (`id_jawaban`, `id_partisipan`, `id_kuisioner`, `jawaban`, `created_at`, `updated_at`) VALUES
(1, 1, 5, 'YA', '2024-04-19 07:01:33', '2024-04-19 07:01:33'),
(2, 1, 5, 'YA', '2024-04-19 07:10:43', '2024-04-19 07:10:43'),
(3, 1, 5, 'YA', '2024-04-19 07:27:21', '2024-04-19 07:27:21'),
(4, 1, 5, 'YA', '2024-04-19 07:50:11', '2024-04-19 07:50:11'),
(5, 13, 1, 'YA', '2024-04-19 07:55:43', '2024-04-19 07:55:43'),
(6, 13, 5, 'TIDAK', '2024-04-19 07:55:46', '2024-04-19 07:55:46'),
(7, 13, 6, 'YA', '2024-04-19 07:57:00', '2024-04-19 07:57:00'),
(8, 13, 7, 'TIDAK', '2024-04-19 07:57:02', '2024-04-19 07:57:02'),
(9, 13, 8, 'YA', '2024-04-19 07:57:04', '2024-04-19 07:57:04'),
(10, 13, 9, 'TIDAK', '2024-04-19 07:57:05', '2024-04-19 07:57:05'),
(11, 13, 10, 'YA', '2024-04-19 07:57:07', '2024-04-19 07:57:07'),
(12, 13, 11, 'TIDAK', '2024-04-19 07:57:09', '2024-04-19 07:57:09'),
(13, 13, 12, 'TIDAK', '2024-04-19 07:57:10', '2024-04-19 07:57:10'),
(14, 13, 12, 'TIDAK', '2024-04-19 07:57:12', '2024-04-19 07:57:12'),
(15, 13, 13, 'TIDAK', '2024-04-19 07:57:14', '2024-04-19 07:57:14'),
(16, 13, 14, 'YA', '2024-04-19 07:57:16', '2024-04-19 07:57:16'),
(17, 13, 15, 'TIDAK', '2024-04-19 07:57:17', '2024-04-19 07:57:17'),
(18, 13, 16, 'TIDAK', '2024-04-19 07:57:18', '2024-04-19 07:57:18'),
(19, 13, 17, 'TIDAK', '2024-04-19 07:57:20', '2024-04-19 07:57:20'),
(20, 13, 18, 'YA', '2024-04-19 07:57:21', '2024-04-19 07:57:21'),
(21, 13, 20, 'TIDAK', '2024-04-19 07:57:22', '2024-04-19 07:57:22'),
(22, 13, 21, 'YA', '2024-04-19 07:57:24', '2024-04-19 07:57:24'),
(23, 13, 22, 'YA', '2024-04-19 07:57:25', '2024-04-19 07:57:25'),
(24, 13, 23, 'YA', '2024-04-19 07:57:26', '2024-04-19 07:57:26'),
(71, 13, 1, 'YA', '2024-04-21 02:29:56', '2024-04-21 02:29:56'),
(72, 13, 5, 'YA', '2024-04-21 02:29:59', '2024-04-21 02:29:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jawaban_dass_cemas`
--

CREATE TABLE `jawaban_dass_cemas` (
  `id` int(11) NOT NULL,
  `id_partisipan` int(11) NOT NULL,
  `question_1` int(11) NOT NULL,
  `question_2` int(11) NOT NULL,
  `question_3` int(11) NOT NULL,
  `question_4` int(11) NOT NULL,
  `question_5` int(11) NOT NULL,
  `question_6` int(11) NOT NULL,
  `question_7` int(11) NOT NULL,
  `question_8` int(11) NOT NULL,
  `question_9` int(11) NOT NULL,
  `question_10` int(11) NOT NULL,
  `question_11` int(11) NOT NULL,
  `question_12` int(11) NOT NULL,
  `question_13` int(11) NOT NULL,
  `question_14` int(11) NOT NULL,
  `points` int(11) NOT NULL,
  `klasifikasi` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tanggal_tes` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `jawaban_dass_cemas`
--

INSERT INTO `jawaban_dass_cemas` (`id`, `id_partisipan`, `question_1`, `question_2`, `question_3`, `question_4`, `question_5`, `question_6`, `question_7`, `question_8`, `question_9`, `question_10`, `question_11`, `question_12`, `question_13`, `question_14`, `points`, `klasifikasi`, `created_at`, `updated_at`, `tanggal_tes`) VALUES
(1, 1, 1, 0, 1, 2, 3, 2, 1, 0, 2, 3, 1, 0, 2, 1, 19, 'Kecemasan Parah', '2024-04-26 08:29:53', '2024-04-26 08:29:53', NULL),
(2, 24, 0, 2, 2, 1, 1, 2, 3, 2, 2, 3, 2, 2, 3, 2, 27, 'Kecemasan Sangat Parah', '2024-04-26 08:30:20', '2024-04-26 08:30:20', NULL),
(3, 25, 0, 3, 2, 1, 3, 1, 3, 1, 1, 0, 1, 3, 2, 0, 21, 'Kecemasan Sangat Parah', '2024-04-29 05:14:00', '2024-04-29 05:14:00', NULL),
(4, 30, 1, 1, 2, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 8, 'Kecemasan Ringan', '2024-05-21 06:41:42', '2024-05-21 06:41:42', NULL),
(5, 31, 1, 1, 1, 2, 2, 2, 3, 1, 1, 2, 1, 2, 1, 1, 21, 'Kecemasan Sangat Parah', '2024-05-21 09:12:23', '2024-05-21 09:12:23', '2024-05-21'),
(6, 31, 1, 1, 1, 3, 2, 2, 1, 2, 2, 1, 1, 1, 2, 1, 21, 'Kecemasan Sangat Parah', '2024-05-24 08:54:46', '2024-05-24 08:54:46', '2024-05-24'),
(7, 42, 1, 1, 2, 3, 2, 1, 1, 2, 2, 2, 1, 0, 1, 1, 20, 'Kecemasan Sangat Parah', '2024-06-11 05:39:06', '2024-06-11 05:39:06', '2024-06-11'),
(8, 46, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 3, 'Kecemasan Normal', '2024-06-13 09:41:10', '2024-06-13 09:41:10', '2024-06-13'),
(9, 57, 2, 2, 1, 3, 0, 0, 0, 1, 1, 2, 0, 0, 1, 0, 13, 'Kecemasan Sedang', '2025-06-04 12:56:54', '2025-06-04 12:56:54', '2025-06-04'),
(10, 57, 0, 0, 0, 1, 1, 0, 0, 1, 1, 1, 0, 0, 0, 0, 5, 'Kecemasan Normal', '2025-06-04 13:54:21', '2025-06-04 13:54:21', '2025-06-04'),
(11, 57, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 2, 'Kecemasan Normal', '2025-06-04 13:54:46', '2025-06-04 13:54:46', '2025-06-04'),
(12, 57, 3, 2, 3, 2, 2, 2, 3, 2, 2, 1, 2, 2, 0, 1, 27, 'Kecemasan Sangat Parah', '2025-06-05 05:24:10', '2025-06-05 05:24:10', '2025-06-05'),
(13, 58, 2, 1, 2, 0, 1, 1, 0, 1, 2, 0, 3, 1, 0, 0, 14, 'Kecemasan Sedang', '2025-06-05 08:32:24', '2025-06-05 08:32:24', '2025-06-05'),
(14, 58, 0, 1, 0, 0, 1, 0, 1, 1, 0, 0, 1, 0, 0, 1, 6, 'Kecemasan Normal', '2025-07-11 05:10:49', '2025-07-11 05:10:49', '2025-07-11'),
(15, 59, 1, 2, 1, 1, 2, 0, 2, 1, 0, 0, 1, 1, 1, 1, 14, 'Kecemasan Sedang', '2025-07-14 06:06:30', '2025-07-14 06:06:30', '2025-07-14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jawaban_dass_depresi`
--

CREATE TABLE `jawaban_dass_depresi` (
  `id` int(11) NOT NULL,
  `id_partisipan` int(11) NOT NULL,
  `question_1` int(11) NOT NULL,
  `question_2` int(11) NOT NULL,
  `question_3` int(11) NOT NULL,
  `question_4` int(11) NOT NULL,
  `question_5` int(11) NOT NULL,
  `question_6` int(11) NOT NULL,
  `question_7` int(11) NOT NULL,
  `question_8` int(11) NOT NULL,
  `question_9` int(11) NOT NULL,
  `question_10` int(11) NOT NULL,
  `question_11` int(11) NOT NULL,
  `question_12` int(11) NOT NULL,
  `question_13` int(11) NOT NULL,
  `question_14` int(11) NOT NULL,
  `points` int(11) NOT NULL,
  `klasifikasi` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tanggal_tes` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `jawaban_dass_depresi`
--

INSERT INTO `jawaban_dass_depresi` (`id`, `id_partisipan`, `question_1`, `question_2`, `question_3`, `question_4`, `question_5`, `question_6`, `question_7`, `question_8`, `question_9`, `question_10`, `question_11`, `question_12`, `question_13`, `question_14`, `points`, `klasifikasi`, `created_at`, `updated_at`, `tanggal_tes`) VALUES
(1, 24, 0, 0, 1, 1, 2, 2, 1, 2, 1, 2, 1, 2, 3, 2, 20, 'Depresi Sedang', '2024-04-26 08:28:14', '2024-04-26 08:28:14', NULL),
(3, 25, 3, 3, 3, 3, 3, 2, 2, 3, 3, 2, 3, 3, 3, 3, 39, 'Depresi Sangat Parah', '2024-04-29 04:44:57', '2024-04-29 04:44:57', NULL),
(4, 30, 1, 1, 0, 1, 1, 2, 0, 1, 1, 1, 1, 0, 1, 1, 12, 'Depresi Ringan', '2024-05-20 04:30:59', '2024-05-20 04:30:59', NULL),
(5, 30, 2, 2, 1, 1, 2, 2, 3, 2, 1, 1, 2, 2, 1, 1, 23, 'Depresi Parah', '2024-05-21 07:06:41', '2024-05-21 07:06:41', NULL),
(6, 31, 1, 1, 2, 1, 1, 0, 1, 1, 0, 0, 1, 1, 1, 2, 13, 'Depresi Ringan', '2024-05-21 09:17:22', '2024-05-21 09:17:22', '2024-05-21'),
(7, 46, 3, 2, 3, 2, 2, 2, 1, 2, 3, 0, 1, 1, 2, 3, 27, 'Depresi Parah', '2024-06-13 09:43:51', '2024-06-13 09:43:51', '2024-06-13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jawaban_dass_stress`
--

CREATE TABLE `jawaban_dass_stress` (
  `id` int(11) NOT NULL,
  `id_partisipan` int(11) NOT NULL,
  `question_1` int(11) NOT NULL,
  `question_2` int(11) NOT NULL,
  `question_3` int(11) NOT NULL,
  `question_4` int(11) NOT NULL,
  `question_5` int(11) NOT NULL,
  `question_6` int(11) NOT NULL,
  `question_7` int(11) NOT NULL,
  `question_8` int(11) NOT NULL,
  `question_9` int(11) NOT NULL,
  `question_10` int(11) NOT NULL,
  `question_11` int(11) NOT NULL,
  `question_12` int(11) NOT NULL,
  `question_13` int(11) NOT NULL,
  `question_14` int(11) NOT NULL,
  `points` int(11) NOT NULL,
  `klasifikasi` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tanggal_tes` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `jawaban_dass_stress`
--

INSERT INTO `jawaban_dass_stress` (`id`, `id_partisipan`, `question_1`, `question_2`, `question_3`, `question_4`, `question_5`, `question_6`, `question_7`, `question_8`, `question_9`, `question_10`, `question_11`, `question_12`, `question_13`, `question_14`, `points`, `klasifikasi`, `created_at`, `updated_at`, `tanggal_tes`) VALUES
(1, 1, 1, 0, 1, 2, 3, 2, 1, 0, 2, 3, 1, 0, 2, 1, 0, '', '2024-04-26 05:35:29', '2024-04-26 05:35:29', NULL),
(2, 1, 1, 0, 1, 2, 3, 2, 1, 0, 2, 3, 1, 0, 2, 1, 26, 'Stress Parah', '2024-04-26 05:41:20', '2024-04-26 05:41:20', NULL),
(3, 1, 1, 0, 1, 2, 3, 2, 1, 0, 2, 3, 1, 0, 2, 1, 26, 'Stress Parah', '2024-04-26 06:09:18', '2024-04-26 06:09:18', NULL),
(4, 1, 1, 0, 1, 2, 3, 2, 1, 0, 2, 3, 1, 0, 2, 1, 26, 'Stress Parah', '2024-04-26 06:11:42', '2024-04-26 06:11:42', NULL),
(5, 1, 1, 0, 1, 2, 3, 2, 1, 0, 2, 3, 1, 0, 2, 1, 19, 'Stress Sedang', '2024-04-26 06:17:12', '2024-04-26 06:17:12', NULL),
(6, 22, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 1, 1, 14, 'Stress Normal', '2024-04-26 06:17:19', '2024-04-26 06:17:19', NULL),
(7, 25, 1, 1, 2, 2, 3, 2, 2, 1, 1, 2, 2, 2, 3, 3, 27, 'Stress Parah', '2024-04-29 05:18:08', '2024-04-29 05:18:08', NULL),
(8, 31, 3, 2, 2, 3, 3, 3, 2, 3, 3, 3, 2, 2, 3, 3, 37, 'Stress Sangat Parah', '2024-05-21 09:18:29', '2024-05-21 09:18:29', '2024-05-21'),
(9, 31, 2, 1, 3, 2, 1, 1, 0, 0, 1, 1, 1, 0, 0, 1, 14, 'Stress Normal', '2024-05-24 08:57:38', '2024-05-24 08:57:38', '2024-05-24'),
(10, 31, 1, 1, 1, 1, 1, 2, 1, 0, 0, 0, 2, 1, 2, 1, 14, 'Stress Normal', '2024-05-24 09:06:16', '2024-05-24 09:06:16', '2024-05-24'),
(11, 42, 1, 1, 2, 2, 1, 2, 3, 0, 1, 1, 2, 2, 2, 2, 22, 'Stress Sedang', '2024-06-10 07:53:54', '2024-06-10 07:53:54', '2024-06-10'),
(12, 42, 2, 2, 2, 1, 1, 2, 1, 2, 1, 1, 2, 0, 1, 2, 20, 'Stress Sedang', '2024-06-11 04:25:42', '2024-06-11 04:25:42', '2024-06-11'),
(13, 46, 1, 1, 2, 1, 1, 2, 2, 1, 1, 2, 3, 3, 2, 1, 23, 'Stress Sedang', '2024-06-13 07:16:51', '2024-06-13 07:16:51', '2024-06-13'),
(14, 53, 1, 1, 1, 1, 2, 1, 0, 1, 1, 1, 1, 2, 1, 1, 15, 'Stress Ringan', '2024-06-14 18:05:05', '2024-06-14 18:05:05', '2024-06-14'),
(15, 57, 0, 1, 1, 2, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 6, 'Stress Normal', '2025-06-05 07:11:51', '2025-06-05 07:11:51', '2025-06-05'),
(16, 57, 3, 1, 2, 1, 0, 1, 2, 1, 2, 1, 1, 2, 1, 2, 20, 'Stress Sedang', '2025-06-05 07:12:34', '2025-06-05 07:12:34', '2025-06-05'),
(17, 58, 0, 0, 1, 0, 2, 2, 1, 1, 3, 3, 3, 1, 3, 3, 23, 'Stress Sedang', '2025-07-11 05:17:11', '2025-07-11 05:17:11', '2025-07-11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jawaban_dsm5`
--

CREATE TABLE `jawaban_dsm5` (
  `id_jawaban` int(11) NOT NULL,
  `id_partisipan` int(11) DEFAULT NULL,
  `question_1` varchar(10) DEFAULT NULL,
  `question_2` varchar(10) DEFAULT NULL,
  `question_3` varchar(10) DEFAULT NULL,
  `question_4` varchar(10) DEFAULT NULL,
  `question_5` varchar(10) DEFAULT NULL,
  `question_6` varchar(10) DEFAULT NULL,
  `question_7` varchar(10) DEFAULT NULL,
  `question_8` varchar(10) DEFAULT NULL,
  `question_9` varchar(10) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `klasifikasi` varchar(50) DEFAULT NULL,
  `tanggal_tes` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `jawaban_dsm5`
--

INSERT INTO `jawaban_dsm5` (`id_jawaban`, `id_partisipan`, `question_1`, `question_2`, `question_3`, `question_4`, `question_5`, `question_6`, `question_7`, `question_8`, `question_9`, `score`, `klasifikasi`, `tanggal_tes`) VALUES
(1, 56, '0', '0', '1', '1', '0', '0', '0', '1', '0', 3, 'Resiko Ringan', '2025-05-04 00:00:00'),
(2, 56, '0', '0', '0', '1', '1', '1', '0', '0', '0', 3, 'Resiko Ringan', '2025-05-04 00:00:00'),
(3, 56, '1', '1', '1', '1', '1', '0', '0', '0', '0', 5, '', '2025-05-04 00:00:00'),
(4, 56, '1', '1', '1', '0', '0', '1', '1', '0', '0', 5, 'Potensi Gangguan Kecanduan Judi Online', '2025-05-04 00:00:00'),
(5, 56, '1', '0', '0', '0', '0', '0', '0', '0', '0', 1, 'Tidak ada gangguan', '2025-05-04 00:00:00'),
(6, 56, '1', '1', '1', '0', '0', '1', '1', '1', '1', 7, 'Potensi Gangguan Kecanduan Judi Online', '2025-05-04 00:00:00'),
(7, 56, '0', '0', '1', '1', '1', '0', '0', '1', '1', 5, 'Potensi Gangguan Kecanduan Judi Online', '2025-05-05 00:00:00'),
(8, 56, '0', '0', '0', '1', '0', '0', '0', '1', '1', 3, 'Resiko Ringan', '2025-05-08 00:00:00'),
(9, 56, '1', '1', '1', '1', '1', '0', '0', '1', '1', 7, 'Potensi Gangguan Kecanduan Judi Online', '2025-05-08 00:00:00'),
(10, 56, '0', '0', '0', '1', '1', '1', '1', '1', '0', 5, 'Potensi Gangguan Kecanduan Judi Online', '2025-05-08 00:00:00'),
(11, 56, '1', '1', '1', '0', '0', '1', '1', '1', '1', 7, 'Potensi Gangguan Kecanduan Judi Online', '2025-05-16 00:00:00'),
(12, 56, '1', '1', '1', '0', '0', '0', '0', '1', '1', 5, 'Potensi Gangguan Kecanduan Judi Online', '2025-05-22 00:00:00'),
(13, 56, '0', '1', '1', '1', '0', '1', '1', '0', '0', 5, 'Potensi Gangguan Kecanduan Judi Online', '2025-05-27 00:00:00'),
(14, 57, '0', '0', '1', '1', '1', '1', '0', '0', '1', 5, 'Potensi Gangguan Kecanduan Judi Online', '2025-06-03 00:00:00'),
(15, 57, '1', '1', '1', '1', '0', '1', '1', '1', '1', 8, 'Potensi Gangguan Kecanduan Judi Online', '2025-06-03 05:52:18'),
(16, 57, '1', '0', '1', '1', '0', '0', '0', '0', '0', 3, 'Resiko Ringan', '2025-06-05 06:59:51'),
(17, 57, '1', '1', '1', '0', '1', '1', '1', '0', '0', 6, 'Potensi Gangguan Kecanduan Judi Online', '2025-06-05 07:04:38'),
(18, 58, '0', '1', '1', '0', '0', '0', '1', '1', '0', 4, 'Potensi Gangguan Kecanduan Judi Online', '2025-06-11 02:14:13'),
(19, 58, '1', '0', '0', '1', '0', '0', '1', '0', '1', 4, 'Potensi Gangguan Kecanduan Judi Online', '2025-07-11 06:20:34'),
(20, 59, '1', '1', '0', '1', '1', '0', '0', '1', '0', 5, 'Potensi Gangguan Kecanduan Judi Online', '2025-07-14 06:07:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jawaban_intervensi`
--

CREATE TABLE `jawaban_intervensi` (
  `id_jawaban_intervensi` int(11) NOT NULL,
  `id_intervensi` int(11) DEFAULT NULL,
  `id_partisipan` int(11) DEFAULT NULL,
  `respon` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `tanggal_submit` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `jawaban_intervensi`
--

INSERT INTO `jawaban_intervensi` (`id_jawaban_intervensi`, `id_intervensi`, `id_partisipan`, `respon`, `created_at`, `tanggal_submit`) VALUES
(1, 1, 1, 'Ini adalah jawaban untuk intervensi pertama.', '2024-05-07 07:30:07', NULL),
(2, 1, 27, 'aku cantik sekali', '2024-05-07 07:36:16', NULL),
(3, 2, 27, 'orang tua, doi, uang, codingan ga eror, healing ', '2024-05-07 07:37:16', NULL),
(4, 1, 35, 'baik', '2024-05-31 22:28:39', '2024-06-01'),
(5, 1, 35, 'baik ', '2024-06-02 20:24:21', '2024-06-03'),
(6, 1, 37, 'hello\n', '2024-06-03 01:19:46', '2024-06-03'),
(7, 1, 25, 'bn', '2024-06-04 02:44:50', '2024-06-04'),
(8, 1, 42, 'hai', '2024-06-10 00:54:45', '2024-06-10'),
(9, 2, 42, 'uang', '2024-06-10 23:11:18', '2024-06-11'),
(10, 3, 42, 'pantai', '2024-06-11 19:27:56', '2024-06-12'),
(11, 4, 42, 'doi', '2024-06-12 18:25:27', '2024-06-13'),
(12, 1, 48, 'Canti, cerdas, periang', '2024-06-12 21:13:47', '2024-06-13'),
(13, 1, 49, 'hei', '2024-06-12 21:17:52', '2024-06-13'),
(14, 2, 25, 'apaya', '2024-06-12 21:29:53', '2024-06-13'),
(15, 2, 37, 'apaya', '2024-06-12 21:40:21', '2024-06-13'),
(16, 1, 57, 'tes', '2025-06-03 02:41:35', '2025-06-03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jawaban_nods_r`
--

CREATE TABLE `jawaban_nods_r` (
  `id_jawaban` int(11) NOT NULL,
  `id_partisipan` varchar(50) NOT NULL,
  `question_1` tinyint(4) NOT NULL,
  `question_2` tinyint(4) NOT NULL,
  `question_3` tinyint(4) NOT NULL,
  `question_4` tinyint(4) NOT NULL,
  `question_5` tinyint(4) NOT NULL,
  `question_6` tinyint(4) NOT NULL,
  `question_7` tinyint(4) NOT NULL,
  `question_8` tinyint(4) NOT NULL,
  `question_9` tinyint(4) NOT NULL,
  `question_10` tinyint(4) NOT NULL,
  `question_11` tinyint(4) NOT NULL,
  `question_12` tinyint(4) NOT NULL,
  `question_13` tinyint(4) NOT NULL,
  `question_14` tinyint(4) NOT NULL,
  `question_15` tinyint(4) NOT NULL,
  `question_16` tinyint(4) NOT NULL,
  `question_17` tinyint(4) NOT NULL,
  `score` int(11) NOT NULL,
  `klasifikasi` varchar(100) NOT NULL,
  `tanggal_tes` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `jawaban_nods_r`
--

INSERT INTO `jawaban_nods_r` (`id_jawaban`, `id_partisipan`, `question_1`, `question_2`, `question_3`, `question_4`, `question_5`, `question_6`, `question_7`, `question_8`, `question_9`, `question_10`, `question_11`, `question_12`, `question_13`, `question_14`, `question_15`, `question_16`, `question_17`, `score`, `klasifikasi`, `tanggal_tes`) VALUES
(1, '56', 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Risiko ringan/subklinis', '2025-05-04 00:00:00'),
(2, '56', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Risiko ringan/subklinis', '2025-05-04 00:00:00'),
(3, '56', 1, 0, 0, 0, 1, 1, 1, 0, 1, 0, 0, 0, 0, 1, 0, 1, 1, 8, 'Kemungkinan diagnosis gangguan judi (pathological gambling)', '2025-05-08 00:00:00'),
(4, '56', 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 5, 'Kemungkinan diagnosis gangguan judi (pathological gambling)', '2025-05-16 00:00:00'),
(5, '56', 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 'Risiko sedang/subklinis', '2025-05-16 00:00:00'),
(6, '56', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 3, 'Risiko sedang/subklinis', '2025-05-16 00:00:00'),
(7, '56', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Risiko ringan/subklinis', '2025-05-16 00:00:00'),
(8, '56', 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 'Risiko sedang/subklinis', '2025-05-16 00:00:00'),
(9, '56', 0, 0, 0, 1, 1, 0, 0, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 5, 'Kemungkinan diagnosis gangguan judi (pathological gambling)', '2025-05-22 00:00:00'),
(10, '56', 1, 1, 1, 0, 1, 1, 1, 0, 1, 0, 0, 1, 1, 0, 1, 0, 1, 11, 'Kemungkinan diagnosis gangguan judi (pathological gambling)', '2025-06-01 00:00:00'),
(11, '57', 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 5, 'Kemungkinan diagnosis gangguan judi (pathological gambling)', '2025-06-03 00:00:00'),
(12, '57', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 4, 'Risiko sedang/subklinis', '2025-06-03 00:00:00'),
(13, '57', 1, 1, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 6, 'Kemungkinan diagnosis gangguan judi (pathological gambling)', '2025-06-03 05:52:55'),
(14, '57', 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 4, 'Risiko sedang/subklinis', '2025-06-03 05:53:27'),
(15, '57', 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 6, 'Kemungkinan diagnosis gangguan judi (pathological gambling)', '2025-06-05 07:05:14'),
(16, '59', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 4, 'Risiko sedang/subklinis', '2025-07-14 06:07:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jawaban_post_test`
--

CREATE TABLE `jawaban_post_test` (
  `id_jawaban` int(11) NOT NULL,
  `id_partisipan` int(11) NOT NULL,
  `headaches` tinyint(1) NOT NULL,
  `appetite_poor` tinyint(1) NOT NULL,
  `sleep_badly` tinyint(1) NOT NULL,
  `easily_frightened` tinyint(1) NOT NULL,
  `hands_shake` tinyint(1) NOT NULL,
  `nervous` tinyint(1) NOT NULL,
  `digestion_poor` tinyint(1) NOT NULL,
  `thinking_clearly` tinyint(1) NOT NULL,
  `unhappy` tinyint(1) NOT NULL,
  `cry` tinyint(1) NOT NULL,
  `difficult_enjoy_activities` tinyint(1) NOT NULL,
  `difficult_make_decisions` tinyint(1) NOT NULL,
  `work_suffering` tinyint(1) NOT NULL,
  `unable_useful` tinyint(1) NOT NULL,
  `lost_interest` tinyint(1) NOT NULL,
  `worthless_person` tinyint(1) NOT NULL,
  `ending_life` tinyint(1) NOT NULL,
  `tired` tinyint(1) NOT NULL,
  `easily_tired` tinyint(1) NOT NULL,
  `uncomfortable_stomach` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `jawaban_post_test`
--

INSERT INTO `jawaban_post_test` (`id_jawaban`, `id_partisipan`, `headaches`, `appetite_poor`, `sleep_badly`, `easily_frightened`, `hands_shake`, `nervous`, `digestion_poor`, `thinking_clearly`, `unhappy`, `cry`, `difficult_enjoy_activities`, `difficult_make_decisions`, `work_suffering`, `unable_useful`, `lost_interest`, `worthless_person`, `ending_life`, `tired`, `easily_tired`, `uncomfortable_stomach`) VALUES
(1, 36, 1, 0, 0, 1, 1, 1, 0, 0, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, 0),
(2, 36, 0, 0, 1, 1, 0, 0, 1, 1, 1, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0),
(3, 36, 1, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 1, 0, 1, 0, 0, 0, 0),
(4, 36, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0),
(5, 35, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0, 0, 0),
(6, 42, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0),
(7, 57, 1, 0, 0, 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 0, 0, 1, 1, 0, 1, 0),
(8, 57, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(9, 58, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(10, 58, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(11, 58, 1, 1, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 0),
(12, 58, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jawaban_srq`
--

CREATE TABLE `jawaban_srq` (
  `id_jawaban` int(11) NOT NULL,
  `id_partisipan` int(11) DEFAULT NULL,
  `headaches` tinyint(1) DEFAULT NULL,
  `appetite_poor` tinyint(1) DEFAULT NULL,
  `sleep_badly` tinyint(1) DEFAULT NULL,
  `easily_frightened` tinyint(1) DEFAULT NULL,
  `hands_shake` tinyint(1) DEFAULT NULL,
  `nervous` tinyint(1) DEFAULT NULL,
  `digestion_poor` tinyint(1) DEFAULT NULL,
  `thinking_clearly` tinyint(1) DEFAULT NULL,
  `unhappy` tinyint(1) DEFAULT NULL,
  `cry` tinyint(1) DEFAULT NULL,
  `difficult_enjoy_activities` tinyint(1) DEFAULT NULL,
  `difficult_make_decisions` tinyint(1) DEFAULT NULL,
  `work_suffering` tinyint(1) DEFAULT NULL,
  `unable_useful` tinyint(1) DEFAULT NULL,
  `lost_interest` tinyint(1) DEFAULT NULL,
  `worthless_person` tinyint(1) DEFAULT NULL,
  `ending_life` tinyint(1) DEFAULT NULL,
  `tired` tinyint(1) DEFAULT NULL,
  `easily_tired` tinyint(1) DEFAULT NULL,
  `uncomfortable_stomach` tinyint(1) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `mental_disorders` varchar(255) DEFAULT NULL,
  `klasifikasi` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `jawaban_srq`
--

INSERT INTO `jawaban_srq` (`id_jawaban`, `id_partisipan`, `headaches`, `appetite_poor`, `sleep_badly`, `easily_frightened`, `hands_shake`, `nervous`, `digestion_poor`, `thinking_clearly`, `unhappy`, `cry`, `difficult_enjoy_activities`, `difficult_make_decisions`, `work_suffering`, `unable_useful`, `lost_interest`, `worthless_person`, `ending_life`, `tired`, `easily_tired`, `uncomfortable_stomach`, `points`, `mental_disorders`, `klasifikasi`) VALUES
(1, 13, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 13, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, NULL, NULL, NULL),
(4, 123, 1, 0, 1, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1, NULL, NULL, NULL),
(5, 14, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, NULL, NULL, NULL),
(6, 10, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, NULL, NULL, NULL),
(7, 14, 1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, NULL, NULL, NULL),
(8, 14, 1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, NULL, NULL, NULL),
(9, 14, 1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, NULL, NULL, NULL),
(10, 14, 1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, NULL, NULL, NULL),
(11, 14, 1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, NULL, NULL, NULL),
(12, 14, 1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, NULL, NULL, NULL),
(13, 14, 1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, NULL, NULL, NULL),
(14, 14, 1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, NULL, NULL, NULL),
(15, 14, 1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, NULL, NULL, NULL),
(16, 14, 1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, NULL, NULL, NULL),
(17, 14, 1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, NULL, NULL, NULL),
(18, 14, 1, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, NULL, NULL, NULL),
(19, 16, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, NULL),
(20, 16, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL),
(21, 16, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL),
(22, 17, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL),
(23, 18, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, NULL, NULL, NULL),
(24, 18, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, NULL, NULL, NULL),
(25, 19, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL),
(26, 20, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL),
(27, 21, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL),
(28, 22, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL),
(29, 25, 1, 1, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, NULL, NULL, NULL),
(30, 25, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 1, 0, 0, 0, NULL, NULL, NULL),
(31, 26, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, NULL, NULL, NULL),
(32, 28, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL),
(33, 28, 1, 1, 1, 0, 1, 1, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 1, 1, 1, NULL, NULL, NULL),
(34, 28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 28, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, NULL, NULL, NULL),
(36, 28, 1, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 1, 1, NULL, NULL, NULL),
(37, 29, 1, 0, 0, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL, NULL, NULL),
(38, 29, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL),
(39, 30, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, NULL, NULL, NULL),
(40, 30, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, NULL, NULL, NULL),
(41, 31, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL),
(42, 25, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, NULL, NULL, NULL),
(43, 35, 1, 1, 0, 1, 1, 0, 0, 0, 1, 1, 1, 1, 0, 0, 1, 1, 1, 0, 0, 1, NULL, NULL, NULL),
(44, 35, 1, 0, 1, 1, 1, 0, 0, 1, 1, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, NULL, NULL, NULL),
(45, 37, 1, 1, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 1, 1, NULL, NULL, NULL),
(46, 37, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL),
(47, 25, 1, 1, 1, 0, 0, 0, 1, 1, 0, 1, 0, 1, 1, 0, 0, 1, 1, 0, 1, 0, NULL, NULL, NULL),
(48, 25, 1, 1, 1, 0, 0, 0, 1, 1, 0, 1, 0, 1, 1, 0, 0, 1, 1, 0, 1, 0, NULL, NULL, NULL),
(49, 38, 1, 0, 0, 1, 1, 0, 0, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1, 1, 1, NULL, NULL, NULL),
(50, 38, 1, 0, 0, 1, 1, 0, 0, 1, 1, 1, 0, 1, 1, 0, 0, 1, 0, 1, 1, 0, NULL, NULL, NULL),
(51, 38, 1, 1, 0, 1, 1, 1, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 1, 1, 1, 1, NULL, NULL, NULL),
(52, 38, 1, 1, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, 1, 0, 1, 0, 1, NULL, NULL, NULL),
(53, 38, 1, 1, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, 0, 1, 1, 0, 0, NULL, NULL, NULL),
(54, 38, 1, 1, 0, 0, 0, 1, 1, 1, 0, 1, 0, 1, 1, 0, 0, 0, 1, 0, 1, 1, NULL, NULL, NULL),
(55, 38, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 1, 1, 0, 0, 1, 1, 0, 1, 1, NULL, NULL, NULL),
(56, 38, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 1, 0, 1, 1, 0, 0, 1, 1, 1, 0, NULL, NULL, NULL),
(57, 38, 1, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 1, 1, 0, 0, 1, 1, 0, 1, NULL, NULL, NULL),
(58, 38, 1, 1, 0, 0, 1, 1, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0, 1, 1, 0, 1, NULL, NULL, NULL),
(59, 39, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 1, NULL, NULL, NULL),
(60, 39, 1, 0, 0, 1, 1, 0, 0, 0, 1, 1, 1, 0, 0, 1, 1, 1, 0, 1, 0, 1, NULL, NULL, NULL),
(61, 39, 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 0, 1, 0, 1, 1, 0, 1, 1, 1, NULL, NULL, NULL),
(62, 39, 1, 0, 1, 0, 0, 1, 1, 1, 1, 0, 0, 1, 0, 1, 0, 1, 1, 1, 0, 0, NULL, NULL, NULL),
(63, 40, 1, 0, 0, 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 1, 0, 0, 1, 1, 0, NULL, NULL, NULL),
(64, 40, 0, 1, 1, 0, 0, 0, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, NULL, NULL, NULL),
(65, 31, 1, 0, 0, 1, 1, 0, 0, 1, 1, 0, 1, 0, 0, 1, 1, 1, 0, 1, 1, 0, NULL, NULL, NULL),
(66, 31, 1, 0, 0, 1, 1, 0, 0, 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 1, 1, 1, NULL, NULL, NULL),
(67, 42, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 0, 1, 1, 1, 1, NULL, NULL, NULL),
(68, 42, 1, 0, 1, 0, 0, 1, 1, 0, 1, 0, 1, 1, 1, 0, 0, 1, 1, 0, 1, 1, NULL, NULL, NULL),
(69, 42, 0, 0, 0, 0, 1, 1, 1, 0, 0, 1, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, NULL, NULL, NULL),
(70, 45, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL),
(71, 46, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 1, 1, 1, 0, 1, 1, 1, NULL, NULL, NULL),
(72, 46, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, NULL, NULL, NULL),
(73, 46, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 1, 0, 0, 0, 1, 1, 1, 1, NULL, NULL, NULL),
(74, 46, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 0, 0, 1, NULL, NULL, NULL),
(75, 46, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 1, 1, NULL, NULL, NULL),
(76, 53, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 1, 1, NULL, NULL, NULL),
(77, 53, 1, 1, 1, 1, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 1, 1, NULL, NULL, NULL),
(78, 53, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL),
(79, 53, 1, 0, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, NULL, NULL, NULL),
(80, 53, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL),
(81, 53, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, NULL, NULL, NULL),
(82, 53, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1, NULL, NULL, NULL),
(83, 46, 1, 0, 0, 1, 1, 1, 1, 0, 0, 1, 1, 0, 0, 1, 1, 1, 1, 1, 0, 1, NULL, NULL, NULL),
(84, 46, 1, 1, 1, 1, 0, 0, 1, 1, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 1, NULL, NULL, NULL),
(85, 46, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 1, 1, 0, 1, 1, NULL, NULL, NULL),
(86, 46, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL),
(87, 56, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, NULL, NULL, NULL),
(88, 56, 1, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 0, 1, 1, 0, NULL, NULL, NULL),
(89, 56, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, NULL, NULL, NULL),
(90, 56, 0, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, NULL, NULL, NULL),
(91, 56, 0, 0, 1, 1, 0, 0, 1, 1, 1, 1, 0, 0, 1, 1, 0, 0, 1, 1, 1, 1, NULL, NULL, NULL),
(92, 56, 0, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 0, NULL, NULL, NULL),
(93, 56, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, 1, NULL, NULL, NULL),
(94, 57, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, NULL, NULL, NULL),
(95, 57, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL),
(96, 57, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, NULL, NULL, NULL),
(97, 58, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, 0, 1, 1, 0, 0, 1, 1, 0, NULL, NULL, NULL),
(98, 58, 1, 1, 1, 1, 0, 0, 0, 1, 1, 0, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, NULL, NULL, NULL),
(99, 59, 1, 0, 1, 1, 0, 0, 0, 1, 0, 0, 1, 1, 0, 1, 0, 1, 1, 0, 0, 0, NULL, NULL, NULL),
(100, 59, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, 0, 0, NULL, NULL, NULL),
(101, 59, 1, 0, 0, 1, 1, 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 0, 0, 0, 1, NULL, NULL, NULL),
(102, 59, 1, 0, 0, 1, 1, 0, 0, 1, 1, 0, 1, 1, 1, 0, 1, 0, 0, 1, 0, 0, NULL, NULL, NULL),
(103, 59, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jawaban_suicide`
--

CREATE TABLE `jawaban_suicide` (
  `id` int(11) NOT NULL,
  `id_partisipan` int(11) NOT NULL,
  `question_1` int(11) NOT NULL,
  `question_2` int(11) NOT NULL,
  `question_3` int(11) NOT NULL,
  `question_4` int(11) NOT NULL,
  `question_5` int(11) NOT NULL,
  `question_6` int(11) NOT NULL,
  `question_7` int(11) NOT NULL,
  `question_8` int(11) NOT NULL,
  `question_9` int(11) NOT NULL,
  `question_10` int(11) NOT NULL,
  `points` int(11) NOT NULL,
  `klasifikasi` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tanggal_tes` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `jawaban_suicide`
--

INSERT INTO `jawaban_suicide` (`id`, `id_partisipan`, `question_1`, `question_2`, `question_3`, `question_4`, `question_5`, `question_6`, `question_7`, `question_8`, `question_9`, `question_10`, `points`, `klasifikasi`, `created_at`, `updated_at`, `tanggal_tes`) VALUES
(1, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Tidak Ada Resiko Bunuh Diri', '2024-04-26 08:44:39', '2024-04-26 08:44:39', NULL),
(2, 24, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 4, 'Resiko Bunuh Diri Sedang', '2024-04-26 08:45:03', '2024-04-26 08:45:03', NULL),
(3, 25, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 4, 'Resiko Bunuh Diri Sedang', '2024-04-29 05:02:03', '2024-04-29 05:02:03', NULL),
(4, 46, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 3, 'Resiko Bunuh Diri Sedang', '2024-06-13 09:48:06', '2024-06-13 09:48:06', '2024-06-13'),
(5, 58, 1, 1, 0, 0, 1, 1, 0, 0, 1, 0, 5, 'Resiko Bunuh Diri Sedang', '2025-07-11 05:56:38', '2025-07-11 05:56:38', '2025-07-11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_test`
--

CREATE TABLE `kategori_test` (
  `id_test` int(11) NOT NULL,
  `nama_test` varchar(255) NOT NULL,
  `sub_test` varchar(255) DEFAULT NULL,
  `deskripsi_test` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kategori_test`
--

INSERT INTO `kategori_test` (`id_test`, `nama_test`, `sub_test`, `deskripsi_test`) VALUES
(1, 'SRQ-20', 'Pre-Test', 'Self Rating Ques  Self Rating Questionnaire (SRQ)- tionnaire (SRQ)-20\r\nTes ini digunakan sebagai acuan Pre-test untuk mengetahui apakah kamu terindikasi memiliki gangguan kesehatan mental dan pengklasifikasian jenis gangguan kesehatan mental.'),
(2, 'DASS-42-cemas', 'Dass Cemas', 'DASS-42 Merupakan Test yang akan mendeteksi gangguan stress, depresi, dan cemas\r\n'),
(5, 'DASS-42-stress', 'Dass Stress', 'Dass Stress merupakan tes yang digunakan untuk mendeteksi gejala gangguan kesehatan mental dalam kategori stress'),
(6, 'Dass-42-depresi', 'DASS Depresi', 'Tes dass 42 kategori depresi'),
(7, 'Suicide', 'suicide', 'Tes untuk deteksi bunuh diri'),
(8, 'DSM 5', 'DSM 5', 'Tes untuk deteksi gangguan kecanduan judi online'),
(9, 'NODS', 'NODS', 'Tes lanjutan untuk deteksi gangguan kecanduan judi online');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kegiatan`
--

CREATE TABLE `kegiatan` (
  `id_kegiatan` int(11) NOT NULL,
  `id_partisipan` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `jenis_kegiatan` varchar(50) DEFAULT NULL,
  `catatan` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kegiatan`
--

INSERT INTO `kegiatan` (`id_kegiatan`, `id_partisipan`, `tanggal`, `jenis_kegiatan`, `catatan`, `created_at`, `updated_at`) VALUES
(1, 26, '2024-05-10', 'Yoga di taman kota', 'yuhu', '2024-05-07 00:23:28', '2024-05-07 00:23:28'),
(2, 26, '2024-05-07', 'Yoga di Taman Kota', 'Pengen deh ke taman kota', '2024-05-07 00:34:16', '2024-05-07 00:34:16'),
(3, 30, '2024-05-20', 'Yoga di Taman Kota', 'yoga', '2024-05-19 22:18:23', '2024-05-19 22:18:23'),
(4, 42, '2024-06-10', 'Acara Stand-up Comedy', 'yuk', '2024-06-10 01:18:49', '2024-06-10 01:18:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kuisioner`
--

CREATE TABLE `kuisioner` (
  `id_kuesioner` int(11) NOT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  `pertanyaan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kuisioner`
--

INSERT INTO `kuisioner` (`id_kuesioner`, `id_kategori`, `pertanyaan`) VALUES
(1, 1, 'Apakah Anda sering merasa sakit kepala?\r\n'),
(5, 1, ' Apakah Anda kehilangan nafsu makan?'),
(6, 1, ' Apakah tidur Anda tidak nyenyak?'),
(7, 1, ' Apakah Anda mudah merasa takut?'),
(8, 1, 'Apakah Anda merasa cemas, tegang, atau khawatir?'),
(9, 1, 'Apakah tangan Anda gemetar?'),
(10, 1, 'Apakah Anda mengalami gangguan pencernaan?'),
(11, 1, ' Apakah Anda merasa sulit berpikir jernih?'),
(12, 1, 'Apakah Anda merasa tidak bahagia?'),
(13, 1, 'Apakah Anda lebih sering menangis?'),
(14, 1, ' Apakah Anda merasa sulit untuk menikmati aktivitas sehari-hari?'),
(15, 1, 'Apakah Anda merasa kesulitan untuk mengambil keputusan?'),
(16, 1, ' Apakah aktivitas dan tugas sehari-hari Anda terbengkalai?'),
(17, 1, 'Apakah Anda merasa tidak mampu berperan dalam kehidupan ini?'),
(18, 1, ' Apakah Anda kehilangan minat terhadap banyak hal?'),
(19, 1, 'Apakah Anda merasa tidak berharga?'),
(20, 1, 'Apakah Anda mempunyai pikiran untuk mengakhiri hidup Anda?'),
(21, 1, 'Apakah Anda merasa lelah sepanjang waktu?'),
(22, 1, ' Apakah Anda merasa tidak enak di perut?'),
(23, 1, 'Apakah Anda mudah lelah?\r\n'),
(24, 2, 'Apakah Anda tidak dapat melihat hal yang positif dari suatu kejadian?'),
(25, 2, 'Apakah Anda merasa sepertinya tidak kuat lagi untuk melakukan suatu kegiatan?\r\n'),
(26, 2, 'Apakah Anda pesimis akan suatu hal yang akan terjadi?\r\n\r\n'),
(27, 2, ' Apakah Anda merasa mudah sedih dan depresi?\r\n\r\n'),
(28, 2, 'Apakah Anda merasa kehilangan minat pada banyak hal (misal: makan,ambulasi, sosialisasi)?\r\n\r\n'),
(29, 2, ' Apakah Anda merasa diri tidak layak?\r\n\r\n'),
(30, 2, 'Apakah Anda merasa hidup tidak berharga?'),
(31, 2, 'Apakah Anda merasa tidak dapat menikmati hal-hal yang biasa anda lakukan?'),
(32, 2, 'Apakah Anda merasa hilang harapan dan putus asa?'),
(33, 2, 'Apakah Anda kesulitan untuk antusias pada banyak hal?\r\n\r\n'),
(34, 2, 'Apakah Anda merasa tidak berharga?'),
(35, 2, 'Apakah Anda merasa tidak ada harapan untuk masa depan'),
(36, 2, 'Apakah Anda merasa hidup anda tidak berarti?'),
(37, 2, 'Apakah Anda merasa hidup anda tidak berarti?'),
(38, 5, 'Apakah Anda tidak dapat melihat hal yang positif dari suatu kejadian?'),
(39, 5, 'Apakah Anda merasa sepertinya tidak kuat lagi untuk melakukan suatu kegiatan?'),
(40, 5, 'Apakah Anda pesimis akan suatu hal yang akan terjadi?'),
(41, 5, 'Apakah Anda merasa mudah sedih dan depresi?'),
(42, 5, 'Apakah Anda merasa kehilangan minat pada banyak hal (misal: makan,ambulasi, sosialisasi)?'),
(43, 5, 'Apakah Anda merasa diri tidak layak?'),
(44, 5, 'Apakah Anda merasa hidup tidak berharga?'),
(45, 5, 'Apakah Anda merasa tidak dapat menikmati hal-hal yang biasa anda lakukan?'),
(46, 5, 'Apakah Anda merasa hilang harapan dan putus asa?'),
(47, 5, 'Apakah Anda kesulitan untuk antusias pada banyak hal?'),
(48, 5, 'Apakah Anda merasa tidak berharga?'),
(49, 5, 'Apakah Anda merasa tidak ada harapan untuk masa depan?'),
(50, 5, 'Apakah Anda merasa hidup anda tidak berarti?'),
(51, 5, 'Apakah Anda kesulitan untuk meningkatkan inisiatif dalam melakukan sesuatu?'),
(52, 6, 'Apakah Anda tidak dapat melihat hal yang positif dari suatu kejadian?'),
(53, 6, 'Apakah Anda merasa sepertinya tidak kuat lagi untuk melakukan suatu kegiatan?'),
(54, 6, 'Apakah Anda pesimis akan suatu hal yang akan terjadi?'),
(55, 6, 'Apakah Anda merasa mudah sedih dan depresi?'),
(56, 6, 'Apakah Anda merasa kehilangan minat pada banyak hal (misal: makan,ambulasi, sosialisasi)?'),
(57, 6, 'Apakah Anda merasa diri tidak layak?'),
(58, 6, 'Apakah Anda merasa hidup tidak berharga?'),
(59, 6, 'Apakah Anda merasa tidak dapat menikmati hal-hal yang biasa anda lakukan?'),
(60, 6, 'Apakah Anda merasa hilang harapan dan putus asa?'),
(61, 6, 'Apakah Anda kesulitan untuk antusias pada banyak hal?'),
(62, 6, 'Apakah Anda merasa tidak berharga?'),
(63, 6, 'Apakah Anda merasa tidak ada harapan untuk masa depan?'),
(64, 6, 'Apakah Anda merasa hidup anda tidak berarti?'),
(65, 6, 'Apakah Anda kesulitan untuk meningkatkan inisiatif dalam melakukan sesuatu?'),
(66, 7, 'S-ex : laki-laki\r\n'),
(67, 7, 'A-ge : kurang dari 19 tahun atau lebih dari 45 tahun'),
(68, 7, 'D-epression : pasien MRS dengan depresi atau penurunan konsentrasi, gangguan tidur, gangguan pola makan, dan/atau gangguan libido'),
(69, 7, 'P-revious suicide : ada riwayat percobaan bunuh diri atau perawatan psikiatri'),
(70, 7, 'E-xcessive alcohol : ketergantungan alkohol atau pemakai narkoba'),
(71, 7, 'R-ational thinking loss : kehilangan pikiran rasional : psikosis, organic brain syndrome'),
(72, 7, 'S-eparated : bercerai atau janda'),
(73, 7, 'O-rganized plan : menunjukkan rencana bunuh diri yang terorganisasi atau niat yang serius'),
(74, 7, 'N-o social support : tidak ada pendukung'),
(75, 7, 'S-ickness : menderita penyakit kronis'),
(76, 8, 'Pernahkah Anda sering menemukan diri Anda berpikir tentang perjudian (misalnya, Menghidupkan kembali pengalaman perjudian masa lalu, merencanakan Anda lain kali akan bermain atau memikirkan cara mendapatkan uang untuk berjudi)?'),
(77, 8, 'Apakah Anda perlu berjudi dengan lebih banyak uang untuk mendapatkan jumlah kegembiraan yang Anda cari?'),
(78, 8, 'Apakah Anda menjadi gelisah atau mudah tersinggung saat mencoba mengurangi atau berhenti berjudi?'),
(79, 8, 'Pernahkah Anda berjudi untuk melarikan diri dari masalah atau ketika Anda merasa tertekan, cemas, atau buruk tentang diri sendiri?'),
(80, 8, 'Setelah kehilangan uang dengan perjudian, apakah Anda kembali di hari lain untuk mengulangi judi kembali?'),
(81, 8, 'Apakah Anda telah berbohong kepada keluarga Anda atau orang lain untuk menyembunyikan sejauh mana Anda melakukan perjudian?'),
(82, 8, 'Apakah Anda telah berulang kali mencoba untuk mengontrol, memotong kembali atau berhenti berjudi?'),
(83, 8, 'Apakah Anda mempertaruhkan atau kehilangan hubungan, pekerjaan, pendidikan yang signifikan atau peluang karir karena perjudian?'),
(84, 8, 'Sudahkah Anda mencari bantuan dari orang lain untuk memberikan uang untuk meringankan situasi keuangan putus asa yang disebabkan oleh perjudian?'),
(85, 9, 'Pernahkah Anda mengalami masa-masa yang berlangsung selama 2 minggu atau lebih ketika Anda menghabiskan banyak waktu untuk berpikir tentang pengalaman perjudian Anda, atau merencanakan usaha perjudian di masa depan?'),
(86, 9, 'Pernahkah Anda mengalami masa-masa yang berlangsung selama 2 minggu atau lebih ketika Anda menghabiskan banyak waktu untuk berpikir tentang cara mendapatkan uang dari berjudi?'),
(87, 9, 'Pernahkah Anda berbohong kepada anggota keluarga, teman, atau orang lain tentang seberapa banyak Anda berjudi atau berapa banyak uang yang hilang karena berjudi?'),
(88, 9, 'Jika Ya, apakah hari ini sudah terjadi tiga kali atau lebih?'),
(89, 9, 'Pernahkah Anda mencoba menghentikan, mengurangi, atau mengendalikan perjudian Anda?'),
(90, 9, 'Pada satu atau beberapa kali ketika Anda mencoba menghentikan atau mengontrol berjudi, apakah Anda merasa gelisah atau mudah tersinggung?'),
(91, 9, 'Pernahkah Anda mencoba tetapi tidak berhasil menghentikan atau mengendalikan perjudian Anda?'),
(92, 9, 'Apakah proses pemberhentian berjudi itu terjadi tiga kali atau lebih?'),
(93, 9, 'Pernahkan Anda mengalami masa-masa ketika Anda harus bertaruh dengan uang yang semakin besar untuk mendapatkan perasaan senang yang sama?'),
(94, 9, 'Pernahkan Anda berjudi untuk menghilangkan perasaan tidak nyaman seperti rasa bersalah, cemas, tidak berdaya, atau depresi?'),
(95, 9, 'Pernahkan Anda berjudi sebagai cara untuk melarikan diri dari masalah pribadi?'),
(96, 9, 'Pernahkan Anda mengalami masa di mana, jika Anda kehilangan uang dalam perjudian pada suatu hari Anda akan sering kembali lagi di hari lain untuk menyeimbangkannya?'),
(97, 9, 'Pernahkan Anda menulis cek palsu atau mengambil uang yang bukan milik Anda dari anggota keluarga atau orang lain untuk membayar perjudian Anda?'),
(98, 9, 'Apakah perjudian Anda menyebabkan Anda mengalami masalah serius atau berulang dalam hubungan Anda dengan anggota keluarga atau teman anda?'),
(99, 9, 'Apakah perjudian Anda menyebabkan masalah di sekolah, seperti membolos atau tidak masuk sekolah/kuliah selama berhari-hari atau bahkan nilai menurun?'),
(100, 9, 'Apakah perjudian Anda pernah menyebabkan Anda kehilangan pekerjaan, memiliki masalah dengan pekerjaan Anda, atau bahkan kehilangan pekerjaan?'),
(101, 9, 'Pernahkan Anda perlu meminta anggota keluarga atau orang lain untuk meminjamkan uang kepada Anda atau sebaliknya menolong Anda keluar dari situasi keuangan yang sulit yang diakibatkan oleh perjudian Anda?');

-- --------------------------------------------------------

--
-- Struktur dari tabel `makanan`
--

CREATE TABLE `makanan` (
  `id_makan` int(11) NOT NULL,
  `id_partisipan` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `jenis_makanan` varchar(255) DEFAULT NULL,
  `deskripsi_makanan` text DEFAULT NULL,
  `kalori` int(11) DEFAULT NULL,
  `karbohidrat` int(11) DEFAULT NULL,
  `protein` int(11) DEFAULT NULL,
  `lemak` int(11) DEFAULT NULL,
  `keterangan_tambahan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `makanan`
--

INSERT INTO `makanan` (`id_makan`, `id_partisipan`, `tanggal`, `jenis_makanan`, `deskripsi_makanan`, `kalori`, `karbohidrat`, `protein`, `lemak`, `keterangan_tambahan`) VALUES
(1, 26, '2024-05-10', 'Pagi', 'Nasi goreng', 400, 50, 15, 20, 'Tidak ada'),
(2, 30, '2024-05-20', 'sarapan', 'English Breakfast', 300, 10, 10, 10, 'Tidak ada'),
(3, 25, '2024-06-05', 'sarapan', 'English Breakfast', 300, 10, 10, 10, 'Tidak ada'),
(4, 42, '2024-06-10', 'sarapan', 'English Breakfast', 300, 10, 10, 10, 'Tidak ada');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2023-11-26-010013', 'App\\Database\\Migrations\\Users', 'default', 'App', 1711339046, 1),
(2, '2023-11-26-010052', 'App\\Database\\Migrations\\Restaurant', 'default', 'App', 1711339046, 1),
(3, '2023-11-26-010057', 'App\\Database\\Migrations\\Reservation', 'default', 'App', 1711339046, 1),
(4, '2023-11-27-055640', 'App\\Database\\Migrations\\MenuItems', 'default', 'App', 1711339046, 1),
(5, '2023-11-27-055703', 'App\\Database\\Migrations\\Reviews', 'default', 'App', 1711339046, 1),
(6, '2023-12-15-121256', 'App\\Database\\Migrations\\Chef', 'default', 'App', 1711339046, 1),
(7, '2023-12-15-121346', 'App\\Database\\Migrations\\ContactUs', 'default', 'App', 1711339046, 1),
(8, '20240325035501', 'App\\Database\\Migrations\\AddTimestampsToPsikolog', 'default', 'App', 1711339046, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `partisipan`
--

CREATE TABLE `partisipan` (
  `id_partisipan` int(11) NOT NULL,
  `email_partisipan` varchar(255) NOT NULL,
  `password_partisipan` varchar(255) NOT NULL,
  `nama_partisipan` varchar(255) NOT NULL,
  `usia` int(11) DEFAULT NULL,
  `no_telp` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `partisipan`
--

INSERT INTO `partisipan` (`id_partisipan`, `email_partisipan`, `password_partisipan`, `nama_partisipan`, `usia`, `no_telp`, `created_at`, `updated_at`) VALUES
(1, 'rena@gmail.com.com', '$2y$10$Q/7LNKzWyVgGW0RuKCxJ8u7c/LXyDPrcykC6e0JbfiemhWxcDn5si', 'Rena', 21, '081234567890', '2024-04-01 23:09:54', '2024-04-01 23:09:54'),
(2, 'hello@gmail.com', 'hello12!!', 'helloww', 20, '085347851296', '2024-04-01 23:10:21', '2024-04-18 18:30:17'),
(3, 'rena@gmail.com', '$2y$10$.n3T2v2y85vA.XVbcnbtZ.6bK2AnToV.tL7WePEx8.3F4qAyPK6KW', 'Rena', 21, '085855373612', '2024-04-02 21:24:35', '2024-04-02 21:24:35'),
(4, 'user@gmail.com', '$2y$10$1nhTd08CykEhilXOCFIh7uMy3dmESM0Yu.W6zakUcU2KBFUsq42se', 'user', 20, '087234567841', '2024-04-04 21:34:47', '2024-04-04 21:34:47'),
(5, 'rena30@gmail.com', '$2y$10$fD5czxE9nATvckXmHnzxqOnkdotGYXE3BR0iTLcc/krh4JclJnfGS', 'rena', 20, '085855373612', '2024-04-12 18:13:49', '2024-04-12 18:13:49'),
(6, 'renarena@gmail.com', '$2y$10$7Fd00rsygiCIuGkAPSf14eLhgddy6KuKyVx.rNp0s.3rZFdGJoMDK', 'Rena', 20, '085855373612', '2024-04-17 03:46:42', '2024-04-17 03:46:42'),
(7, 'deswinta@gmail.com', '$2y$10$xhN4iReS8L/1DKgwLIiXbeAeQBM4DD7FkYTbpJrYGvAr5zjdf1/M6', 'deswinta', 20, '0856134258192', '2024-04-18 00:07:49', '2024-04-18 00:07:49'),
(8, 'johndoe@example.com', '$2y$10$C1zydMPtDHyMX2fQ3Gyy1OTSp3MDGwkKaoCRrY3Z14STL2JbfrlyO', 'John Doe', 30, '081234567890', '2024-04-18 06:50:04', '2024-04-18 06:50:04'),
(9, 'hello@gmail.com', 'hello12!!', 'hello', 20, '0852356712478', '2024-04-18 18:13:10', '2024-04-18 18:13:10'),
(10, 'hello@gmail.com', 'hello12!!', 'helloww', 20, '085347851296', '2024-04-18 18:25:19', '2024-04-18 18:25:19'),
(11, 'hello@gmail.com', 'hello12!!', 'helloww', 20, '085347851296', '2024-04-18 18:27:15', '2024-04-18 18:27:15'),
(13, 'lia@gmail.com', '$2y$10$xvTZ/xBwWc5GDfRvu0Q.9.cP/lZC1iqanbPIRtE/lnow4ThR72uAy', 'lia', 20, '0852186942310', '2024-04-19 07:13:21', '2024-04-19 07:13:21'),
(14, 'renay@gmail.com', '$2y$10$uwiT.yqPOYEwZH2TtAayGu8GrESGTARAKaUBXM7/sY9Qf/mObpJMm', 'renay', 20, '085246812147', '2024-04-21 03:08:42', '2024-04-21 03:08:42'),
(15, 'mona@gmail.com', '$2y$10$JRzks.eSYqtPzrlFIwfRze2HPRx7ZKowLmKS9wY5o.J7UYBvgOq2i', 'mona', 20, '082457136452', '2024-04-23 21:18:46', '2024-04-23 21:18:46'),
(16, 'appa@gmail.com', '$2y$10$ZDbhQIfwwtfMUHFsg8/QxO01ypPirELRFm4mXdY26fI4ncpRGFjee', 'appa', 20, '085246374120', '2024-04-23 21:19:45', '2024-04-23 21:19:45'),
(17, 'diana123@gmail.com', '$2y$10$ZFf6/gVTlIqHJu7A6iAiyuyzcYDw6ieCyXmfwz1jVIk6NTTHs/tlO', 'diana', 20, '085854127841', '2024-04-23 22:55:14', '2024-04-23 22:55:14'),
(18, 'dewi@gmail.com', '$2y$10$9nXiLrfm0hvC99t96W11UuvU8fQD5opSZlCnKmDE2mgLVZFLY8uFC', 'dewi', 20, '0852147896412', '2024-04-23 23:04:55', '2024-04-23 23:04:55'),
(19, 'diah@gmail.com', '$2y$10$UwJH1o9hiafwDNLQhDjFiembMDhpV9sRa0qZYWG9WxxrxRr1lIr7G', 'diah', 20, '0852471236412', '2024-04-23 23:10:34', '2024-04-23 23:10:34'),
(20, 'munica@gmail.com', '$2y$10$7SvDgWLoj4YbSj31t4BcFuNupKAfdWzArDAMuwt7IL84dxcoL3lP2', 'munica', 20, '085247126345', '2024-04-23 23:24:44', '2024-04-23 23:24:44'),
(21, 'iya@gmail.com', '$2y$10$xWmge/bxDE3VlpfnSDTm9enHurATu2MhCMlYtHldvuhQh527fjDyi', 'iya', 20, '085241781247', '2024-04-23 23:45:21', '2024-04-23 23:45:21'),
(22, 'zahra@gmail.com', '$2y$10$TunKqEk6HEyX3lh16wIFO.kWE3Is/gdMRi4N.th.MYXN0LiGPFsfS', 'azzahra', 20, '085841785423', '2024-04-23 23:59:01', '2024-04-23 23:59:01'),
(23, 'kareena@gmail.com', '$2y$10$5YEcg0/CRYfZ5xcO2CgccOBzqLPK8yn41iZiQQ1YAhNKNmQxyQ2dy', 'kareena', 20, '085214523014', '2024-04-26 01:21:26', '2024-04-26 01:21:26'),
(24, 'cika@gmail.com', '$2y$10$A63NvHnpydvWf0jQtZED5OVAFceQmAVVLrAUnjYoeg7hvgupdUXya', 'cika', 20, '085247961423', '2024-04-26 01:23:03', '2024-04-26 01:23:03'),
(25, 'putri@gmail.com', '$2y$10$b8SdLyzZY04S74vzqzDVi.Gas0jE3wxFxiopzjNVuHC6.8WCYxGI.', 'putri', 20, '085841237896', '2024-04-28 21:00:27', '2024-04-28 21:00:27'),
(26, 'caca@gmail.com', '$2y$10$LKch6pc7iXflnmYZ3IOjCezTceurdUzKnna9Q7Pz355o2D4xMu166', 'caca', 20, '085631478230', '2024-05-06 20:32:03', '2024-05-06 20:32:03'),
(27, 'grey@gmail.com', '$2y$10$miZk9tVu2zSX73SQdPtwm.aHmFAwshT0wVuPLinbsnz8qDAHN.kXm', 'grey', 20, '085247965120', '2024-05-07 05:48:50', '2024-05-07 05:48:50'),
(28, 'teh@gmail.com', '$2y$10$bX8AqNqYRNv1sQ5mav.9dO5K0xk3V/mrWxgtEVWs/eueycwEV3cjW', 'teh', 20, '08523780233', '2024-05-14 23:55:11', '2024-05-14 23:55:11'),
(29, 'iu@gmail.com', '$2y$10$5EstduSESNWOseP0qgfSLuaA8nIck74ofMxRwyVvOLIwW/8n1mTa2', 'iu', 20, '0852315632', '2024-05-15 04:18:38', '2024-05-15 04:18:38'),
(30, 'moji@gmail.com', '$2y$10$UGK5xo0v2HnhukeUdR5b6OCZLOAjsGrPUOdzj3lkVhXm14gyQGgyu', 'moji', 20, '085247961245', '2024-05-19 21:27:52', '2024-05-19 21:27:52'),
(31, 'pink@gmail.com', '$2y$10$/HO8sQFKSvGhjdiupKA7jOJZYp0zTq3J6UOJRJ.xbz4wV4x6hyZi2', 'pink', 20, '085412789412', '2024-05-21 01:29:12', '2024-05-21 01:29:12'),
(32, 'raisha@gmail.com', '$2y$10$e2oJsiygwZc2IX7pU0NA4OMfpxYP4AH1grv.XtcRpuz4nmE2RKCWO', 'raisha', 20, '08547123694', '2024-05-29 23:07:06', '2024-05-29 23:07:06'),
(33, 'cipung@gmail.com', '$2y$10$UR1Gp4V6d/gW1fXrId/gNe.ZrkusI0vE2c2/3HVJiVbxsGXjMdxie', 'cipung', 20, '085236417', '2024-05-29 23:09:26', '2024-05-29 23:09:26'),
(34, 'putri@gmail.com', '$2y$10$MogyxWy9cfs9tbDw1Yef3.SixMIgdtIp.nyaxQZxeGWSkeqk4tWJ6', 'putri', 20, '08547123695', '2024-05-30 00:19:47', '2024-05-30 00:19:47'),
(35, 'cinta@gmail.com', '$2y$10$iyxFDhmnZLE/v.KYZlfJEe5kpcyn6eZMKSs94KOSlXZa0eT.5.3Ki', 'cinta', 20, '028523862', '2024-05-31 02:21:44', '2024-05-31 02:21:44'),
(36, 'bayu@gmail.com', '$2y$10$jT9K2c2D4wi4ZKHhxQNHi.2LwYWOWiwO/4y0Wd.ymwebsF5cV96QG', 'bayu', 20, '085236974', '2024-06-01 01:10:21', '2024-06-01 01:10:21'),
(37, 'azure@gmail.com', '$2y$10$0zN.0mu1AWNcO/pq5YZCC.cDlqPEDxBKsbsgvod0.5X2lTgW61lU2', 'azure', 20, '085214561241', '2024-06-02 23:12:22', '2024-06-02 23:12:22'),
(38, 'lalisa@gmail.com', '$2y$10$QnrtA.zcUsCoRgr5zWy9Gep1nU5OEV4eYqczAHANSvGYwWGnZWu.2', 'lalisa', 20, '0852147896541', '2024-06-06 04:42:55', '2024-06-06 04:42:55'),
(39, 'emon@gmail.com', '$2y$10$lMfLXJzbdYV.pyDnJJP3YeLvwr4IxrCYRlWIOj6e.BEJtSWcQM6M2', 'emon', 20, '08521478513', '2024-06-06 05:34:39', '2024-06-06 05:34:39'),
(40, 'depa@gmail.com', '$2y$10$G1tvCK0bw0m2B7lfAJCesOUu1G3BbUDoU5s4YNku2k/lz6DeKwIFC', 'depa', 20, '0852463147', '2024-06-06 06:12:39', '2024-06-06 06:12:39'),
(41, 'rena@gmail.com', '$2y$10$BBqs.H/ad7NZy7IyntJdqe81kehOuqlbJvUzC5LXWnJG4RG8ekuuC', 'rena', 19, '08524789641', '2024-06-06 06:30:18', '2024-06-06 06:30:18'),
(42, 'shintya@gmail.com', '$2y$10$W8pl2qJK.I03yJkwC7uWI.ke.1yxfl3xELV2yKzwDHyMJL/cl5gt6', 'shitya', 20, '08521456347', '2024-06-10 00:48:34', '2024-06-10 00:48:34'),
(43, 'mawar@gmail.com', '$2y$10$jZMehNNMIgZE3AaNVDkOqedq5PI3x8mKYsNkJrHDIrlJuWoEAUbde', 'mawar', 20, '085212457841', '2024-06-11 22:14:58', '2024-06-11 22:14:58'),
(44, 'melati@gmail.com', '$2y$10$veMPyKhckY5tSz/LoPS32eL0DYSLMneJfhilstkTc.Ifr2hfsBKra', 'melati', 20, '085247894123', '2024-06-11 23:34:36', '2024-06-11 23:34:36'),
(45, 'rendri@gmail.com', '$2y$10$sTHG5yZbXC4V.j4p.sOEoeYZUBqmTsbraxBXZ7Z9k9lTqJEV5KCMe', 'rendri', 20, '08524785133', '2024-06-12 18:57:05', '2024-06-12 18:57:05'),
(46, 'nobi@gmail.com', '$2y$10$LTVBJEL/iwwNSkbg3sVuyO8StjBR.KMkk1OC5Uj7ol5ZasIHjRJAi', 'nobi', 20, '08524785131', '2024-06-12 19:27:59', '2024-06-12 19:27:59'),
(47, 'cika@gmail.com', '$2y$10$SBjY7tbO0zMIMC7vha39j.ku8ljJLiY1O3keZS5H3qXLjnwKcTbe.', 'cika', 20, '085417961', '2024-06-12 19:40:26', '2024-06-12 19:40:26'),
(48, 'roy@gmail.com', '$2y$10$SZrQA44jIRxux7OMDCkypuCG.hCA4cBWNHqyz4NLgSjYGGssOSL4G', 'roy', 20, '0854123684', '2024-06-12 19:43:05', '2024-06-12 19:43:05'),
(49, 'ciqui@gmail.com', '$2y$10$PK0I4eWqrPNu/foloEkRuOugwKljoOzOLkJOqnvpqGNHWjj3QulUG', 'ciqui', 20, '08524796142', '2024-06-12 21:17:11', '2024-06-12 21:17:11'),
(50, 'coklat@gmail.com', '$2y$10$Q3DV/zRcr5vH0MUWNBEfAOmHAJBbMABOG2/Hz.qDyJSoTD3V/w/M6', 'coklat', 20, '0852478596', '2024-06-13 09:19:30', '2024-06-13 09:19:30'),
(51, 'tyo@gmail.com', '$2y$10$fsd3rBSnUWnC6.piUHriweluWjrsaao0iGFMMm/.CxwcWIRF/GbzK', 'tyo', 20, '08524697', '2024-06-13 09:42:52', '2024-06-13 09:42:52'),
(52, 'nawang@gmail.com', '$2y$10$aS9yyFudnLqw1OzbGa9CWeJkUQogByelMNC19/Pzq6MJ1KRLbQ6g2', 'nawang', 20, '08574963', '2024-06-13 20:28:45', '2024-06-13 20:28:45'),
(53, 'black@gmail.com', '$2y$10$vq5rkmQ3BHuXCoy6DrMayu.KnNG4/n5dCk4F7iMmPHJVUoe1db936', 'black', 20, '085243684', '2024-06-14 09:11:33', '2024-06-14 09:11:33'),
(54, 'rena123@gmail.com', '$2y$10$BP6FZoAGVUB5NX4Ne6sRFel4LKCwpgF.to4ZNQg33gQzN7do6uUUq', 'rena', 20, '096232435', '2025-04-08 20:01:59', '2025-04-08 20:01:59'),
(55, 'rena@gmail.com', '$2y$10$3lPdKVHFKwVLfvDbX0RKVOA9YwaP55rn7DERQF.nO7SGsYsyXsZyK', 'rena', 21, '085855373612', '2025-04-16 17:17:39', '2025-04-16 17:17:39'),
(56, 'ciqubuya@gmail.com', '$2y$10$09sX7HXQi5g8YHmQmRWaG.NC/IhE0.cHHvggk/yy7ZHUHdk0m9zsm', 'ciqubuya', 21, '07319361903', '2025-04-16 17:18:52', '2025-04-16 17:18:52'),
(57, 'niceso@gmail.com', '$2y$10$ggd1GVr9x8.lt2Y65MnYfOJhCrKFzXrtAkhjqvdo4vYlBOm.0cwoW', 'niceo', 21, '085746914753', '2025-06-02 22:41:56', '2025-06-02 22:41:56'),
(58, 'bocil@gmail.com', '$2y$10$MJ7EmdrUpjaG1gG6C.nEIO2BQE./SigrMYhUEznZj7y6OCkE3pLQe', 'bocil', 22, '05213523', '2025-06-05 01:31:05', '2025-06-05 01:31:05'),
(59, 'day@gmail.com', '$2y$10$NAD7YudRV2kgB83uSZUmw.OhhO0NkIGsRtCf2clwGyfqc6Dmo2JGC', 'day', 22, '0812364892035', '2025-07-13 22:59:41', '2025-07-13 22:59:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengalaman`
--

CREATE TABLE `pengalaman` (
  `id` int(11) NOT NULL,
  `id_partisipan` int(11) DEFAULT NULL,
  `intervention_category` varchar(255) DEFAULT NULL,
  `intervention_week` int(11) DEFAULT NULL,
  `experience` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pengalaman`
--

INSERT INTO `pengalaman` (`id`, `id_partisipan`, `intervention_category`, `intervention_week`, `experience`, `created_at`, `updated_at`) VALUES
(1, 26, 'mindfulness', 1, 'Hari ini saya merasa lebih tenang setelah melakukan meditasi.', '2024-05-07 04:52:45', '2024-05-07 04:52:45'),
(2, 27, 'mindfulness', 1, 'bdnsihd', '2024-05-07 06:02:02', '2024-05-07 06:02:02'),
(3, 30, 'mindfulness', 1, 'sangat menarik', '2024-05-19 21:33:36', '2024-05-19 21:33:36'),
(4, 30, 'mindfulness', 1, 'Bahagia', '2024-06-12 18:19:41', '2024-06-12 18:19:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `psikolog`
--

CREATE TABLE `psikolog` (
  `id_psikolog` int(11) NOT NULL,
  `nama_psikolog` text DEFAULT NULL,
  `deskripsi_psikolog` text DEFAULT NULL,
  `image_psikolog` varchar(255) DEFAULT NULL,
  `lokasi_psikolog` varchar(255) DEFAULT NULL,
  `telephone_psikolog` varchar(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `url_psikolog` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `psikolog`
--

INSERT INTO `psikolog` (`id_psikolog`, `nama_psikolog`, `deskripsi_psikolog`, `image_psikolog`, `lokasi_psikolog`, `telephone_psikolog`, `created_at`, `updated_at`, `url_psikolog`) VALUES
(7, 'Wiwien Handayani, S.Psi., Psi.', 'Wiwien Handayani, S.Psi., Psi adalah seorang psikolog di Madiun. Telah meyelesaikan Strata 1 di Universitas Muhammadiyah Malang pada Tahun 1997 dan telah mendapat Surat Ijin Praktik Psikologi dari Himpunan Psikologi Indonesia.', '1717297201_c0987773a78f7a59f6a1.jpg', 'Biro Psikologi Klinis & Terapan, Jl. Panglima Sudirman No.10 B, Kartoharjo, Madiun City, East Java 63116', '08115616543', '2024-06-02 03:00:01', '2024-06-02 03:00:01', 'https://www.wiwien.com/');

-- --------------------------------------------------------

--
-- Struktur dari tabel `stress_ringan_progress`
--

CREATE TABLE `stress_ringan_progress` (
  `id` int(11) NOT NULL,
  `id_partisipan` int(11) NOT NULL,
  `hari` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `stress_ringan_progress`
--

INSERT INTO `stress_ringan_progress` (`id`, `id_partisipan`, `hari`, `tanggal`, `status`) VALUES
(1, 10, 1, '2024-05-30', 1),
(2, 42, 1, '2024-06-11', 1),
(3, 42, 2, '2024-06-12', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `stress_videos`
--

CREATE TABLE `stress_videos` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `stress_videos`
--

INSERT INTO `stress_videos` (`id`, `judul`, `url`) VALUES
(1, '2 minutes Relaxing Piano Music | Music for Stress Relief ', 'https://youtu.be/Rm-2gKAvnZY?si=dIVJmjPqeiKuchMh'),
(2, '2 minutes of relaxing music', 'https://youtu.be/pDNaSCqW8qo?si=My2YHTe5pOwxrnXY'),
(3, 'Hoh Rainforest | 2 Minute Instant Relaxation', 'https://youtu.be/JVHxl16MZn8');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tujuan`
--

CREATE TABLE `tujuan` (
  `id_tujuan` int(11) NOT NULL,
  `id_partisipan` int(11) DEFAULT NULL,
  `to_do` varchar(255) DEFAULT NULL,
  `in_progress` varchar(255) DEFAULT NULL,
  `done` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tujuan`
--

INSERT INTO `tujuan` (`id_tujuan`, `id_partisipan`, `to_do`, `in_progress`, `done`) VALUES
(1, 26, 'makan', 'coding', 'tidak ada'),
(2, 26, 'makan', '', 'tidak ada'),
(3, 26, 'snd', 'sknd', 'knds');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_tokens`
--

CREATE TABLE `user_tokens` (
  `id` int(11) NOT NULL,
  `id_partisipan` int(11) NOT NULL,
  `fcm_token` text NOT NULL,
  `platform` varchar(50) DEFAULT 'web',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user_tokens`
--

INSERT INTO `user_tokens` (`id`, `id_partisipan`, `fcm_token`, `platform`, `updated_at`) VALUES
(1, 1, 'dummy_token_abc123', 'web', '2025-07-18 17:41:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `voice_overs`
--

CREATE TABLE `voice_overs` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `file_voice` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `voice_overs`
--

INSERT INTO `voice_overs` (`id`, `judul`, `deskripsi`, `file_voice`, `created_at`) VALUES
(3, '30 Days Writing Challenge', 'contoh', '1717256415_0d6c0c79780a7e97ffd1.wav', '2024-06-01 15:40:15'),
(6, 'Voice over 54321', '54321', '1748950173_a66d8ec7fd9d9f7e48b5.wav', '2025-06-03 11:29:33'),
(7, 'MBSR', 'MBSR', '1748950748_1db93b7ddfea186cd224.mp3', '2025-06-03 11:39:08'),
(8, 'Voice over cbt', 'cbt', '1748951231_1a6a19b9dfe9a666eb0b.mp3', '2025-06-03 11:47:11'),
(9, 'cbt-judol', 'cbt-judol', '1748952715_fd3efa83089fb747d227.mp3', '2025-06-03 12:11:55'),
(10, 'activity therapy', 'activity therapy', '1748952845_9aba3990f2ae4c4e1f46.mp3', '2025-06-03 12:14:05'),
(11, 'stress coping', 'stress coping', '1748953137_760c00e93c91ce650f35.mp3', '2025-06-03 12:18:57');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `analisis`
--
ALTER TABLE `analisis`
  ADD PRIMARY KEY (`id_analisis`);

--
-- Indeks untuk tabel `cbt_daily_task`
--
ALTER TABLE `cbt_daily_task`
  ADD PRIMARY KEY (`id_task`),
  ADD KEY `id_session` (`id_session`);

--
-- Indeks untuk tabel `cbt_judol`
--
ALTER TABLE `cbt_judol`
  ADD PRIMARY KEY (`id_responses`),
  ADD KEY `id_task` (`id_task`),
  ADD KEY `id_partisipan` (`id_partisipan`);

--
-- Indeks untuk tabel `cbt_session`
--
ALTER TABLE `cbt_session`
  ADD PRIMARY KEY (`id_session`);

--
-- Indeks untuk tabel `cbt_task_responses`
--
ALTER TABLE `cbt_task_responses`
  ADD PRIMARY KEY (`id_responses`),
  ADD KEY `id_task` (`id_task`),
  ADD KEY `id_partisipan` (`id_partisipan`);

--
-- Indeks untuk tabel `cemas_ringan_progress`
--
ALTER TABLE `cemas_ringan_progress`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_partisipan` (`id_partisipan`);

--
-- Indeks untuk tabel `daily_insight`
--
ALTER TABLE `daily_insight`
  ADD PRIMARY KEY (`id_daily_insight`);

--
-- Indeks untuk tabel `daily_status`
--
ALTER TABLE `daily_status`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_partisipan` (`id_partisipan`);

--
-- Indeks untuk tabel `depresi_ringan_progress`
--
ALTER TABLE `depresi_ringan_progress`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_partisipan` (`id_partisipan`);

--
-- Indeks untuk tabel `grateful`
--
ALTER TABLE `grateful`
  ADD PRIMARY KEY (`id_grateful`),
  ADD KEY `id_partisipan` (`id_partisipan`);

--
-- Indeks untuk tabel `hasil_prediksi`
--
ALTER TABLE `hasil_prediksi`
  ADD PRIMARY KEY (`id_hasil`),
  ADD KEY `fk_id_analisis` (`id_analisis`);

--
-- Indeks untuk tabel `hasil_prediksi_post`
--
ALTER TABLE `hasil_prediksi_post`
  ADD PRIMARY KEY (`id_hasil`),
  ADD KEY `id_partisipan` (`id_partisipan`);

--
-- Indeks untuk tabel `intervensi`
--
ALTER TABLE `intervensi`
  ADD PRIMARY KEY (`id_intervensi`),
  ADD KEY `id_kategori_intervensi` (`id_kategori_intervensi`);

--
-- Indeks untuk tabel `jadwal_olahraga`
--
ALTER TABLE `jadwal_olahraga`
  ADD PRIMARY KEY (`id_olahraga`),
  ADD KEY `id_partisipan` (`id_partisipan`);

--
-- Indeks untuk tabel `jadwal_tidur`
--
ALTER TABLE `jadwal_tidur`
  ADD PRIMARY KEY (`id_tidur`),
  ADD KEY `id_partisipan` (`id_partisipan`);

--
-- Indeks untuk tabel `jawaban`
--
ALTER TABLE `jawaban`
  ADD PRIMARY KEY (`id_jawaban`),
  ADD KEY `id_partisipan` (`id_partisipan`),
  ADD KEY `id_kuisioner` (`id_kuisioner`);

--
-- Indeks untuk tabel `jawaban_dass_cemas`
--
ALTER TABLE `jawaban_dass_cemas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_partisipan` (`id_partisipan`);

--
-- Indeks untuk tabel `jawaban_dass_depresi`
--
ALTER TABLE `jawaban_dass_depresi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_partisipan` (`id_partisipan`);

--
-- Indeks untuk tabel `jawaban_dass_stress`
--
ALTER TABLE `jawaban_dass_stress`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_partisipan` (`id_partisipan`);

--
-- Indeks untuk tabel `jawaban_dsm5`
--
ALTER TABLE `jawaban_dsm5`
  ADD PRIMARY KEY (`id_jawaban`);

--
-- Indeks untuk tabel `jawaban_intervensi`
--
ALTER TABLE `jawaban_intervensi`
  ADD PRIMARY KEY (`id_jawaban_intervensi`),
  ADD KEY `id_intervensi` (`id_intervensi`),
  ADD KEY `id_partisipan` (`id_partisipan`);

--
-- Indeks untuk tabel `jawaban_nods_r`
--
ALTER TABLE `jawaban_nods_r`
  ADD PRIMARY KEY (`id_jawaban`);

--
-- Indeks untuk tabel `jawaban_post_test`
--
ALTER TABLE `jawaban_post_test`
  ADD PRIMARY KEY (`id_jawaban`),
  ADD KEY `id_partisipan` (`id_partisipan`);

--
-- Indeks untuk tabel `jawaban_srq`
--
ALTER TABLE `jawaban_srq`
  ADD PRIMARY KEY (`id_jawaban`);

--
-- Indeks untuk tabel `jawaban_suicide`
--
ALTER TABLE `jawaban_suicide`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_partisipan` (`id_partisipan`);

--
-- Indeks untuk tabel `kategori_test`
--
ALTER TABLE `kategori_test`
  ADD PRIMARY KEY (`id_test`);

--
-- Indeks untuk tabel `kegiatan`
--
ALTER TABLE `kegiatan`
  ADD PRIMARY KEY (`id_kegiatan`),
  ADD KEY `id_partisipan` (`id_partisipan`);

--
-- Indeks untuk tabel `kuisioner`
--
ALTER TABLE `kuisioner`
  ADD PRIMARY KEY (`id_kuesioner`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- Indeks untuk tabel `makanan`
--
ALTER TABLE `makanan`
  ADD PRIMARY KEY (`id_makan`),
  ADD KEY `id_partisipan` (`id_partisipan`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `partisipan`
--
ALTER TABLE `partisipan`
  ADD PRIMARY KEY (`id_partisipan`);

--
-- Indeks untuk tabel `pengalaman`
--
ALTER TABLE `pengalaman`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_partisipan` (`id_partisipan`);

--
-- Indeks untuk tabel `psikolog`
--
ALTER TABLE `psikolog`
  ADD PRIMARY KEY (`id_psikolog`);

--
-- Indeks untuk tabel `stress_ringan_progress`
--
ALTER TABLE `stress_ringan_progress`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_partisipan` (`id_partisipan`);

--
-- Indeks untuk tabel `stress_videos`
--
ALTER TABLE `stress_videos`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tujuan`
--
ALTER TABLE `tujuan`
  ADD PRIMARY KEY (`id_tujuan`),
  ADD KEY `id_partisipan` (`id_partisipan`);

--
-- Indeks untuk tabel `user_tokens`
--
ALTER TABLE `user_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_partisipan` (`id_partisipan`);

--
-- Indeks untuk tabel `voice_overs`
--
ALTER TABLE `voice_overs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `analisis`
--
ALTER TABLE `analisis`
  MODIFY `id_analisis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT untuk tabel `cbt_daily_task`
--
ALTER TABLE `cbt_daily_task`
  MODIFY `id_task` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `cbt_judol`
--
ALTER TABLE `cbt_judol`
  MODIFY `id_responses` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `cbt_session`
--
ALTER TABLE `cbt_session`
  MODIFY `id_session` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `cbt_task_responses`
--
ALTER TABLE `cbt_task_responses`
  MODIFY `id_responses` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `cemas_ringan_progress`
--
ALTER TABLE `cemas_ringan_progress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `daily_insight`
--
ALTER TABLE `daily_insight`
  MODIFY `id_daily_insight` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `daily_status`
--
ALTER TABLE `daily_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT untuk tabel `depresi_ringan_progress`
--
ALTER TABLE `depresi_ringan_progress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `grateful`
--
ALTER TABLE `grateful`
  MODIFY `id_grateful` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `hasil_prediksi`
--
ALTER TABLE `hasil_prediksi`
  MODIFY `id_hasil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT untuk tabel `hasil_prediksi_post`
--
ALTER TABLE `hasil_prediksi_post`
  MODIFY `id_hasil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `intervensi`
--
ALTER TABLE `intervensi`
  MODIFY `id_intervensi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `jadwal_olahraga`
--
ALTER TABLE `jadwal_olahraga`
  MODIFY `id_olahraga` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `jadwal_tidur`
--
ALTER TABLE `jadwal_tidur`
  MODIFY `id_tidur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `jawaban`
--
ALTER TABLE `jawaban`
  MODIFY `id_jawaban` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT untuk tabel `jawaban_dass_cemas`
--
ALTER TABLE `jawaban_dass_cemas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `jawaban_dass_depresi`
--
ALTER TABLE `jawaban_dass_depresi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `jawaban_dass_stress`
--
ALTER TABLE `jawaban_dass_stress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `jawaban_dsm5`
--
ALTER TABLE `jawaban_dsm5`
  MODIFY `id_jawaban` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `jawaban_intervensi`
--
ALTER TABLE `jawaban_intervensi`
  MODIFY `id_jawaban_intervensi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `jawaban_nods_r`
--
ALTER TABLE `jawaban_nods_r`
  MODIFY `id_jawaban` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `jawaban_post_test`
--
ALTER TABLE `jawaban_post_test`
  MODIFY `id_jawaban` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `jawaban_srq`
--
ALTER TABLE `jawaban_srq`
  MODIFY `id_jawaban` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT untuk tabel `jawaban_suicide`
--
ALTER TABLE `jawaban_suicide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `kategori_test`
--
ALTER TABLE `kategori_test`
  MODIFY `id_test` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `kegiatan`
--
ALTER TABLE `kegiatan`
  MODIFY `id_kegiatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `kuisioner`
--
ALTER TABLE `kuisioner`
  MODIFY `id_kuesioner` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT untuk tabel `makanan`
--
ALTER TABLE `makanan`
  MODIFY `id_makan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `partisipan`
--
ALTER TABLE `partisipan`
  MODIFY `id_partisipan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT untuk tabel `pengalaman`
--
ALTER TABLE `pengalaman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `psikolog`
--
ALTER TABLE `psikolog`
  MODIFY `id_psikolog` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `stress_ringan_progress`
--
ALTER TABLE `stress_ringan_progress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `stress_videos`
--
ALTER TABLE `stress_videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tujuan`
--
ALTER TABLE `tujuan`
  MODIFY `id_tujuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `user_tokens`
--
ALTER TABLE `user_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `voice_overs`
--
ALTER TABLE `voice_overs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `cbt_daily_task`
--
ALTER TABLE `cbt_daily_task`
  ADD CONSTRAINT `cbt_daily_task_ibfk_1` FOREIGN KEY (`id_session`) REFERENCES `cbt_session` (`id_session`);

--
-- Ketidakleluasaan untuk tabel `cbt_judol`
--
ALTER TABLE `cbt_judol`
  ADD CONSTRAINT `fk_judol_partisipan` FOREIGN KEY (`id_partisipan`) REFERENCES `partisipan` (`id_partisipan`),
  ADD CONSTRAINT `fk_judol_task` FOREIGN KEY (`id_task`) REFERENCES `cbt_daily_task` (`id_task`);

--
-- Ketidakleluasaan untuk tabel `cbt_task_responses`
--
ALTER TABLE `cbt_task_responses`
  ADD CONSTRAINT `cbt_task_responses_ibfk_1` FOREIGN KEY (`id_task`) REFERENCES `cbt_daily_task` (`id_task`),
  ADD CONSTRAINT `cbt_task_responses_ibfk_2` FOREIGN KEY (`id_partisipan`) REFERENCES `partisipan` (`id_partisipan`);

--
-- Ketidakleluasaan untuk tabel `cemas_ringan_progress`
--
ALTER TABLE `cemas_ringan_progress`
  ADD CONSTRAINT `cemas_ringan_progress_ibfk_1` FOREIGN KEY (`id_partisipan`) REFERENCES `partisipan` (`id_partisipan`);

--
-- Ketidakleluasaan untuk tabel `daily_status`
--
ALTER TABLE `daily_status`
  ADD CONSTRAINT `daily_status_ibfk_1` FOREIGN KEY (`id_partisipan`) REFERENCES `partisipan` (`id_partisipan`);

--
-- Ketidakleluasaan untuk tabel `depresi_ringan_progress`
--
ALTER TABLE `depresi_ringan_progress`
  ADD CONSTRAINT `depresi_ringan_progress_ibfk_1` FOREIGN KEY (`id_partisipan`) REFERENCES `partisipan` (`id_partisipan`);

--
-- Ketidakleluasaan untuk tabel `grateful`
--
ALTER TABLE `grateful`
  ADD CONSTRAINT `grateful_ibfk_1` FOREIGN KEY (`id_partisipan`) REFERENCES `partisipan` (`id_partisipan`);

--
-- Ketidakleluasaan untuk tabel `hasil_prediksi`
--
ALTER TABLE `hasil_prediksi`
  ADD CONSTRAINT `fk_id_analisis` FOREIGN KEY (`id_analisis`) REFERENCES `analisis` (`id_analisis`);

--
-- Ketidakleluasaan untuk tabel `hasil_prediksi_post`
--
ALTER TABLE `hasil_prediksi_post`
  ADD CONSTRAINT `hasil_prediksi_post_ibfk_1` FOREIGN KEY (`id_partisipan`) REFERENCES `partisipan` (`id_partisipan`);

--
-- Ketidakleluasaan untuk tabel `jadwal_olahraga`
--
ALTER TABLE `jadwal_olahraga`
  ADD CONSTRAINT `jadwal_olahraga_ibfk_1` FOREIGN KEY (`id_partisipan`) REFERENCES `partisipan` (`id_partisipan`);

--
-- Ketidakleluasaan untuk tabel `jadwal_tidur`
--
ALTER TABLE `jadwal_tidur`
  ADD CONSTRAINT `jadwal_tidur_ibfk_1` FOREIGN KEY (`id_partisipan`) REFERENCES `partisipan` (`id_partisipan`);

--
-- Ketidakleluasaan untuk tabel `jawaban`
--
ALTER TABLE `jawaban`
  ADD CONSTRAINT `jawaban_ibfk_1` FOREIGN KEY (`id_partisipan`) REFERENCES `partisipan` (`id_partisipan`),
  ADD CONSTRAINT `jawaban_ibfk_2` FOREIGN KEY (`id_kuisioner`) REFERENCES `kuisioner` (`id_kuesioner`);

--
-- Ketidakleluasaan untuk tabel `jawaban_dass_cemas`
--
ALTER TABLE `jawaban_dass_cemas`
  ADD CONSTRAINT `jawaban_dass_cemas_ibfk_1` FOREIGN KEY (`id_partisipan`) REFERENCES `partisipan` (`id_partisipan`);

--
-- Ketidakleluasaan untuk tabel `jawaban_dass_depresi`
--
ALTER TABLE `jawaban_dass_depresi`
  ADD CONSTRAINT `jawaban_dass_depresi_ibfk_1` FOREIGN KEY (`id_partisipan`) REFERENCES `partisipan` (`id_partisipan`);

--
-- Ketidakleluasaan untuk tabel `jawaban_dass_stress`
--
ALTER TABLE `jawaban_dass_stress`
  ADD CONSTRAINT `jawaban_dass_stress_ibfk_1` FOREIGN KEY (`id_partisipan`) REFERENCES `partisipan` (`id_partisipan`);

--
-- Ketidakleluasaan untuk tabel `jawaban_intervensi`
--
ALTER TABLE `jawaban_intervensi`
  ADD CONSTRAINT `jawaban_intervensi_ibfk_1` FOREIGN KEY (`id_intervensi`) REFERENCES `intervensi` (`id_intervensi`),
  ADD CONSTRAINT `jawaban_intervensi_ibfk_2` FOREIGN KEY (`id_partisipan`) REFERENCES `partisipan` (`id_partisipan`);

--
-- Ketidakleluasaan untuk tabel `jawaban_post_test`
--
ALTER TABLE `jawaban_post_test`
  ADD CONSTRAINT `jawaban_post_test_ibfk_1` FOREIGN KEY (`id_partisipan`) REFERENCES `partisipan` (`id_partisipan`);

--
-- Ketidakleluasaan untuk tabel `jawaban_suicide`
--
ALTER TABLE `jawaban_suicide`
  ADD CONSTRAINT `jawaban_suicide_ibfk_1` FOREIGN KEY (`id_partisipan`) REFERENCES `partisipan` (`id_partisipan`);

--
-- Ketidakleluasaan untuk tabel `kegiatan`
--
ALTER TABLE `kegiatan`
  ADD CONSTRAINT `kegiatan_ibfk_1` FOREIGN KEY (`id_partisipan`) REFERENCES `partisipan` (`id_partisipan`);

--
-- Ketidakleluasaan untuk tabel `kuisioner`
--
ALTER TABLE `kuisioner`
  ADD CONSTRAINT `kuisioner_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `kategori_test` (`id_test`);

--
-- Ketidakleluasaan untuk tabel `makanan`
--
ALTER TABLE `makanan`
  ADD CONSTRAINT `makanan_ibfk_1` FOREIGN KEY (`id_partisipan`) REFERENCES `partisipan` (`id_partisipan`);

--
-- Ketidakleluasaan untuk tabel `pengalaman`
--
ALTER TABLE `pengalaman`
  ADD CONSTRAINT `pengalaman_ibfk_1` FOREIGN KEY (`id_partisipan`) REFERENCES `partisipan` (`id_partisipan`);

--
-- Ketidakleluasaan untuk tabel `stress_ringan_progress`
--
ALTER TABLE `stress_ringan_progress`
  ADD CONSTRAINT `stress_ringan_progress_ibfk_1` FOREIGN KEY (`id_partisipan`) REFERENCES `partisipan` (`id_partisipan`);

--
-- Ketidakleluasaan untuk tabel `tujuan`
--
ALTER TABLE `tujuan`
  ADD CONSTRAINT `tujuan_ibfk_1` FOREIGN KEY (`id_partisipan`) REFERENCES `partisipan` (`id_partisipan`);

--
-- Ketidakleluasaan untuk tabel `user_tokens`
--
ALTER TABLE `user_tokens`
  ADD CONSTRAINT `user_tokens_ibfk_1` FOREIGN KEY (`id_partisipan`) REFERENCES `partisipan` (`id_partisipan`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
