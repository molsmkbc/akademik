-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2021 at 07:32 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wbsiakadv2`
--

-- --------------------------------------------------------

--
-- Table structure for table `rb_absensi_guru`
--

CREATE TABLE `rb_absensi_guru` (
  `id_absensi_guru` int(5) NOT NULL,
  `kodejdwl` int(10) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `kode_kehadiran` varchar(5) NOT NULL,
  `tanggal` date NOT NULL,
  `waktu_input` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rb_absensi_siswa`
--

CREATE TABLE `rb_absensi_siswa` (
  `id_absensi_siswa` int(5) NOT NULL,
  `kodejdwl` int(10) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `kode_kehadiran` varchar(5) NOT NULL,
  `tanggal` date NOT NULL,
  `waktu_input` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rb_agama`
--

CREATE TABLE `rb_agama` (
  `id_agama` int(5) NOT NULL,
  `nama_agama` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_agama`
--

INSERT INTO `rb_agama` (`id_agama`, `nama_agama`) VALUES
(1, 'Islam'),
(2, 'Kristen'),
(3, 'Hindu'),
(4, 'Budha');

-- --------------------------------------------------------

--
-- Table structure for table `rb_elearning`
--

CREATE TABLE `rb_elearning` (
  `id_elearning` int(10) NOT NULL,
  `id_kategori_elearning` int(5) NOT NULL,
  `kodejdwl` int(5) NOT NULL,
  `nama_file` varchar(255) NOT NULL,
  `file_upload` text NOT NULL,
  `tanggal_tugas` datetime NOT NULL,
  `tanggal_selesai` datetime NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_elearning`
--

INSERT INTO `rb_elearning` (`id_elearning`, `id_kategori_elearning`, `kodejdwl`, `nama_file`, `file_upload`, `tanggal_tugas`, `tanggal_selesai`, `keterangan`) VALUES
(13, 1, 7, 'File Upload Materi 1', 'Contoh_Kasus_AHP.docx', '2015-12-09 08:07:15', '0000-00-00 00:00:00', ''),
(22, 2, 7, 'Tugas Untuk Siswa Kelompok yang Malas', 'cover_Pidana_korupsi.docx', '2015-12-09 22:37:51', '2015-12-23 13:07:09', 'Tolong Dikerjakan, Kalau Tidak Maka nilai Raport anda merah..'),
(23, 2, 7, 'Tugas Pertama ', 'Surat-Keterangan-Kepsek.docx', '2015-12-13 15:02:00', '2016-01-22 15:02:00', 'Selesaikan Secepatnya,..!'),
(24, 1, 5, 'Bahan Untuk Tugas Semester 2', 'journal_profile_matching_beasiswa.pdf', '2016-02-23 09:04:22', '2016-12-23 11:04:22', 'Bahan Untuk Tugas Semester 2 ini tolong dipelajari karena akan banyak keluar di ujian semester nanti.'),
(25, 2, 5, 'Tugas Semester 1 Tahun Ajaran 2015/2016', 'Metode-Profile-Matching.pdf', '2015-12-23 09:11:15', '2016-04-25 09:11:15', 'Silahkan Dijawab dan unutk jawaban di upload disini paling lambat sesuai tanggal selesai..'),
(26, 1, 13, 'Bahan Unutk Peljaran Besok', '20160311072304-Tugas_laura.docx', '2016-03-11 07:22:32', '2016-03-11 07:22:32', ''),
(27, 2, 13, 'Tugas Unutk Dikumpul Besok 12 Maret 2016', '20160311072502-Aturan Main Projects.docx', '2016-03-11 07:24:16', '2016-03-13 07:24:16', ''),
(28, 1, 13, 'kjbkjbkbk', '20160311143928-HITUNG NILAI RAPORT.docx', '2016-03-11 14:39:09', '2016-03-11 14:39:09', 'kjbkbk');

-- --------------------------------------------------------

--
-- Table structure for table `rb_elearning_jawab`
--

CREATE TABLE `rb_elearning_jawab` (
  `id_elearning_jawab` int(5) NOT NULL,
  `id_elearning` int(5) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `keterangan` text NOT NULL,
  `file_tugas` varchar(255) NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_elearning_jawab`
--

INSERT INTO `rb_elearning_jawab` (`id_elearning_jawab`, `id_elearning`, `nisn`, `keterangan`, `file_tugas`, `waktu`) VALUES
(3, 25, '9991268756', 'Ini buk Guru tugas dari saya, Tolong diperiksa,..', '20160309112015-Nilai_Siswa_9982679070.pdf', '2016-03-09 11:20:15'),
(4, 27, '9991268756', 'Ini Tugas saya buk..', '20160311072733-Pengembangan Members.txt', '2016-03-11 07:27:33');

-- --------------------------------------------------------

--
-- Table structure for table `rb_forum_komentar`
--

CREATE TABLE `rb_forum_komentar` (
  `id_forum_komentar` int(10) NOT NULL,
  `id_forum_topic` int(10) NOT NULL,
  `nisn_nip` varchar(20) NOT NULL,
  `isi_komentar` text NOT NULL,
  `waktu_komentar` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_forum_komentar`
--

INSERT INTO `rb_forum_komentar` (`id_forum_komentar`, `id_forum_topic`, `nisn_nip`, `isi_komentar`, `waktu_komentar`) VALUES
(1, 3, '9980707189', 'Senangi dulu pelajaran yang diharapkan nilainya bagus. Tanpa menyenangi pelajaran tersebut, maka hasil yang diperoleh melalui belajar tidak akan maksimal. Paling tidak, jangan sampai membenci pelajarannya. Hal ini karena akan tidak mungkin seseorang bisa betah lama-lama belajar materi suatu mata pelajaran yang dibencinya, apalagi untuk memahaminya.', '2015-12-12 05:09:15'),
(7, 1, '9980722436', 'Hallo teman teman, Numpang share lowongan ya. lagi di butuhkan segera nih buat posisi Full Time Web Developer/ Web Programmer.', '2016-02-26 00:34:01'),
(13, 1, '9991268756', 'Kami hanya ingin berdoa, ingin beribadah dan menjalankan ibadat kami. Kami tidak pernah menggangu apalagi berusaha untuk mengganggu umat beragama lain apalagi melakukan kristenisasi. Berpikir untuk itu saja kami tidak pernah.', '2016-03-09 10:38:51'),
(12, 1, '195704111980032004', 'Kami cuma ingin memiliki rumah ibadat agar kami dapat berdoa kepada Tuhan kami dengan khusuk. Dosakah itu? apakah itu terlarang di negara yag berazaskan Pancasila ini? Dimanakah rasa damai dan keadilan itu? Masih adakah toleransi di negara ini?', '2016-03-09 10:36:22'),
(3, 3, '9980722436', 'Milikilah rasa ingin tahu yang besar, karena hanya orang-orang yang memiliki rasa ingin tahu yang besar dalam banyak hal lah yang akan selalu senang dalam belajar, dan selalu ingin mempelajari dan memahami hal-hal baru dan banyak hal yang ia temui.', '2015-12-11 17:09:55');

-- --------------------------------------------------------

--
-- Table structure for table `rb_forum_topic`
--

CREATE TABLE `rb_forum_topic` (
  `id_forum_topic` int(10) NOT NULL,
  `kodejdwl` int(10) NOT NULL,
  `judul_topic` varchar(255) NOT NULL,
  `isi_topic` text NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_forum_topic`
--

INSERT INTO `rb_forum_topic` (`id_forum_topic`, `kodejdwl`, `judul_topic`, `isi_topic`, `waktu`) VALUES
(1, 33, 'Cara Unutk Memahami Rumus Pitagoras dengan mudah.', 'Dalam matematika, teorema Pythagoras adalah suatu keterkaitan dalam geometri Euklides antara tiga sisi sebuah segitiga siku-siku. Teorema ini dinamakan menurut nama filsuf dan matematikawan Yunani abad ke-6 SM, Pythagoras. . Pythagoras mendapat kredit karena ialah yang pertama membuktikan kebenaran universal dari teorema ini melalui pembuktian matematis.', '2015-12-11 08:08:18'),
(2, 7, 'Rumus untuk menghitung pendapatan perkapita', 'Pendapatan per kapita adalah jumlah (nilai) barang dan jasa rata-rata yang tersedia bagi setiap penduduk suatu negara pada suatu periode tertentu.\r\n\r\nPendapatan per kapita dapat digunakan untuk membandingkan kesejahteraan atau standar hidup suatu negara dari tahun ke tahun. Dengan melakukan perbandingan seperti itu, kita dapat mengamati apakah kesejahteraan masyarakat pada suatu negara secara rata-rata telah meningkat. Pendapatan per kapita yang meningkat merupakan salah satu tanda bahwa rata-rata kesejahteraan penduduk telah meningkat. Pendapatan per kapita menunjukkan pula apakah pembangunan yang telah dilaksanakan oleh pemerintah telah berhasil, berapa besar keberhasilan tersebut, dan akibat apa yang timbul oleh peningkatan tersebut.', '2015-12-12 13:13:27'),
(3, 7, 'Cara Mendapatkan Nilai Bagus Dan Menjadi Juara Kelas Di Sekolah', 'Bagaimana caranya agar nilai rapor mata pelajaran di sekolah hasilnya baik dan bagus sehingga syukur-syukur bisa menjadi juara kelas ? Ikuti tips di bawah ini yang didasarkan pada sebuah pengalaman nyata bertahun-tahun dari berbagai sumber. \r\n\r\nPerlu untuk digaris-bawahi, tak dibutuhkan otak yang pintar atau jenius untuk mendapatkan nilai yang bagus di sekolah ataupun untuk menjadi seorang juara kelas. Seseorang yang kemampuan otaknya biasa-biasa saja akan bisa memperoleh hasil yang bagus asalkan ia memiliki niat, kemauan, maupun sikap yang tepat dalam mewujudkan ambisinya.', '2015-12-11 16:20:51');

-- --------------------------------------------------------

--
-- Table structure for table `rb_gedung`
--

CREATE TABLE `rb_gedung` (
  `kode_gedung` varchar(10) NOT NULL,
  `nama_gedung` varchar(100) NOT NULL,
  `jumlah_lantai` varchar(20) NOT NULL,
  `panjang` varchar(20) NOT NULL,
  `tinggi` varchar(20) NOT NULL,
  `lebar` varchar(20) NOT NULL,
  `keterangan` text NOT NULL,
  `aktif` enum('Y','N') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_gedung`
--

INSERT INTO `rb_gedung` (`kode_gedung`, `nama_gedung`, `jumlah_lantai`, `panjang`, `tinggi`, `lebar`, `keterangan`, `aktif`) VALUES
('G001', 'Gedung A', '2', '100', '50', '50', '', 'Y'),
('G002', 'KELAS RPL 1', '1', '90', '80', '80', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `rb_golongan`
--

CREATE TABLE `rb_golongan` (
  `id_golongan` int(5) NOT NULL,
  `nama_golongan` varchar(150) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_golongan`
--

INSERT INTO `rb_golongan` (`id_golongan`, `nama_golongan`, `keterangan`) VALUES
(1, 'IV/a', 'Golongan IV/a');

-- --------------------------------------------------------

--
-- Table structure for table `rb_guru`
--

CREATE TABLE `rb_guru` (
  `nip` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama_guru` varchar(150) NOT NULL,
  `id_jenis_kelamin` int(5) NOT NULL,
  `tempat_lahir` varchar(150) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `nik` varchar(50) NOT NULL,
  `niy_nigk` varchar(50) NOT NULL,
  `nuptk` varchar(50) NOT NULL,
  `id_status_kepegawaian` int(5) NOT NULL,
  `id_jenis_ptk` int(5) NOT NULL,
  `pengawas_bidang_studi` varchar(150) NOT NULL,
  `id_agama` int(5) NOT NULL,
  `alamat_jalan` varchar(255) NOT NULL,
  `rt` varchar(5) NOT NULL,
  `rw` varchar(5) NOT NULL,
  `nama_dusun` varchar(100) NOT NULL,
  `desa_kelurahan` varchar(100) NOT NULL,
  `kecamatan` varchar(100) NOT NULL,
  `kode_pos` int(10) NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `hp` varchar(15) NOT NULL,
  `email` varchar(150) NOT NULL,
  `tugas_tambahan` varchar(100) NOT NULL,
  `id_status_keaktifan` int(5) NOT NULL,
  `sk_cpns` varchar(150) NOT NULL,
  `tanggal_cpns` date NOT NULL,
  `sk_pengangkatan` varchar(150) NOT NULL,
  `tmt_pengangkatan` date NOT NULL,
  `lembaga_pengangkatan` varchar(150) NOT NULL,
  `id_golongan` int(5) NOT NULL,
  `keahlian_laboratorium` varchar(150) NOT NULL,
  `sumber_gaji` varchar(150) NOT NULL,
  `nama_ibu_kandung` varchar(100) NOT NULL,
  `id_status_pernikahan` int(5) NOT NULL,
  `nama_suami_istri` varchar(100) NOT NULL,
  `nip_suami_istri` varchar(30) NOT NULL,
  `pekerjaan_suami_istri` varchar(100) NOT NULL,
  `tmt_pns` date NOT NULL,
  `lisensi_kepsek` varchar(20) NOT NULL,
  `jumlah_sekolah_binaan` int(5) NOT NULL,
  `diklat_kepengawasan` varchar(20) NOT NULL,
  `mampu_handle_kk` varchar(20) NOT NULL,
  `keahlian_breile` varchar(20) NOT NULL,
  `keahlian_bahasa_isyarat` varchar(20) NOT NULL,
  `npwp` varchar(50) NOT NULL,
  `kewarganegaraan` varchar(50) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_guru`
--

INSERT INTO `rb_guru` (`nip`, `password`, `nama_guru`, `id_jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `nik`, `niy_nigk`, `nuptk`, `id_status_kepegawaian`, `id_jenis_ptk`, `pengawas_bidang_studi`, `id_agama`, `alamat_jalan`, `rt`, `rw`, `nama_dusun`, `desa_kelurahan`, `kecamatan`, `kode_pos`, `telepon`, `hp`, `email`, `tugas_tambahan`, `id_status_keaktifan`, `sk_cpns`, `tanggal_cpns`, `sk_pengangkatan`, `tmt_pengangkatan`, `lembaga_pengangkatan`, `id_golongan`, `keahlian_laboratorium`, `sumber_gaji`, `nama_ibu_kandung`, `id_status_pernikahan`, `nama_suami_istri`, `nip_suami_istri`, `pekerjaan_suami_istri`, `tmt_pns`, `lisensi_kepsek`, `jumlah_sekolah_binaan`, `diklat_kepengawasan`, `mampu_handle_kk`, `keahlian_breile`, `keahlian_bahasa_isyarat`, `npwp`, `kewarganegaraan`, `foto`) VALUES
('195704111980032004', '12169300491', 'April Daniati', 2, 'Padang Panjang', '1957-04-11', '1374025104571989', '', '1743735636300012', 3, 2, '', 1, 'Jl.Perintis Kemerdekaan No.121 B', '3', '0', '', 'Balai-Balai', 'Kec. Padang Panjang Barat', 27114, '0751461692', '081267771344', 'dankrez48@gmail.com', 'Kepala Laboratorium', 1, '56483/C/2/80', '1980-03-01', '56483/C/2/80', '1980-03-01', 'Pemerintah Pusat', 1, '', 'APBD Kabupaten/Kota', 'Hj. Djawana', 1, 'Zainudin, S.PD.I', '', 'Wiraswasta', '1981-05-01', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '', 'INDONESIA', ''),
('195806161984032002', '6883346563', 'Aisyah', 2, 'Bukittinggi', '1958-06-16', '1374025104571989', '', '3948736639300012', 3, 2, '', 1, 'Birugo Puhun 80.266', '0', '0', '', 'Tarok Dipo', 'Kec. Aur Birugo Tigo Baleh', 0, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '822/1412/III-BKD-2005', '2005-12-23', '822/1412/III-BKD-2005', '1983-03-01', 'Pemerintah Pusat', 1, '', 'APBD Kabupaten/Kota', 'Djuniar', 1, 'Mufti SH, S.Pd', '', '3/TNI/Polri', '2006-03-01', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '475928198202000', 'INDONESIA', ''),
('195806161984000001', '12177967191', 'Aina Yonavia', 2, 'Bukittinggi', '1989-02-28', '1374025104571989', '', '', 2, 2, '', 1, 'Jl.bonjo Baru By Pass', '3', '5', '', 'Tarok DIpo', 'Kec. Guguk Panjang', 26122, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '', '0000-00-00', '', '2015-07-13', 'Kepala Sekolah', 1, '', 'Sekolah', 'Nuraida', 2, '', '', 'Tidak bekerja', '0000-00-00', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '', 'INDONESIA', ''),
('196209051987031007', '8066957354', 'Amri Jaya', 1, 'Jakarta', '1962-09-05', '1374025104571989', '', '1237740641300043', 3, 2, '', 1, 'Jorong Biaro', '0', '0', '', 'Biaro Gadang', 'Kec. Ampek Angkek', 0, '0751461692', '081267771344', 'dankrez48@gmail.com', 'Kepala Sekolah', 1, '1402/IV.E/KWPK-1987', '1987-03-01', '821.20/05/III-BKD-2013', '2013-03-05', 'Pemerintah Kab/Kota', 1, '', 'APBN', 'Nurhayati', 1, 'Erni', '', '3/TNI/Polri', '1988-07-01', 'YA', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '', 'INDONESIA', ''),
('195806161984000016', '11435453225', 'Agus Musanib', 1, 'Bali', '1950-02-02', '1374025104571989', '', '', 1, 1, '', 1, 'Prof.M.Yamin, SH', '4', '4', '', 'Tarok Dipo', 'Kec. Guguk Panjang', 0, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '', '0000-00-00', '800.sma.3.bkt', '2004-05-05', 'Kepala Sekolah', 1, '', 'Sekolah', 'Hy', 2, '', '', 'Tidak bekerja', '0000-00-00', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '', 'INDONESIA', ''),
('195901241986032002', '7438122975', 'Asbaidar', 2, 'Pakan Kamis', '1959-01-24', '1374025104571989', '', '6456737638300012', 3, 2, '', 1, 'Bukareh', '0', '0', '', 'Bukareh', 'Kec. Tilatang Kamang', 0, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '873/IV.E/Kwpk-1986', '1986-03-01', '873/IV.E/Kwpk-1986', '1986-03-01', 'Pemerintah Pusat', 1, '', 'APBD Kabupaten/Kota', 'Nuraini', 1, 'Mawardi', '195906071987031005', '3/TNI/Polri', '1988-02-01', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '475928271202000', 'INDONESIA', ''),
('196703011992031006', '10518823227', 'Azwaldi', 1, 'Agam', '1967-03-01', '1374025104571989', '', '5633745648200022', 3, 2, '', 1, 'Jorong Aia Kaciak', '0', '0', '', 'Nagari Kubang Putiah', 'Kec. Banuhampu', 0, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '2746/IV/KWPK-1993', '1992-03-01', '2746/IV/KWPK-1993', '1993-07-29', 'Pemerintah Pusat', 1, '', 'APBN', 'Zurada', 1, 'Ermawati', '197003271994122001', '3/TNI/Polri', '1994-01-01', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '698210374202000', 'INDONESIA', ''),
('196812211997022002', '11376043945', 'Darmawati', 2, 'Bukittinggi', '1968-12-21', '1374025104571989', '', '8553746649300023', 3, 2, '', 1, 'Jl.Syekh Arrasuli No.66E', '4', '1', '', 'Aur Tajungkang Tengah Saw', 'Kec. Guguk Panjang', 26111, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '16872/A2/Kp/1997', '1997-02-01', '16872/A2/Kp/1997', '1997-02-01', 'Pemerintah Pusat', 1, '', 'APBD Kabupaten/Kota', 'Asmiar', 1, 'Herman Arif', '', 'Wiraswasta', '1998-05-06', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '150070308202000', 'INDONESIA', ''),
('196312041987031000', '6420046780', 'Dasmir', 1, 'Magek,Agam', '1963-03-04', '1374025104571989', '', '0536741643200023', 3, 2, '', 1, 'Jln. Sawah Dangka No. 58 A III Kampung Gadut', '0', '0', '', 'Koto Tangah', 'Kec. Tilatang Kamang', 26152, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '501/IV.E/Kwpk-1987', '1987-03-01', '501/W.E/Kwpk-1987', '1987-03-01', 'Pemerintah Pusat', 1, '', 'APBN', 'Syamsiar', 1, 'Almiati', '196809081989032004', '3/TNI/Polri', '1988-08-01', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '146058979202000', 'INDONESIA', ''),
('198406142009012003', '12241237914', 'Dellya', 2, 'Bukittinggi', '1984-06-14', '1374025104571989', '', '3946762664210112', 3, 3, '', 1, 'Parak Kongsi Jorong Parik Putuih', '0', '0', '', 'Ampang Gadang', 'Kec. Ampek Angkek', 0, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '813/022-5D/BKD-2009', '2009-01-01', '813/022-5D/BKD-2009', '2009-01-01', 'Pemerintah Pusat', 1, '', 'APBD Kabupaten/Kota', 'Yarmini', 1, 'Syawaldi', '', 'Karyawan Swasta', '2010-04-01', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '', 'INDONESIA', ''),
('198012112005012005', '9773210321', 'Desi Eriani', 2, 'Payakumbuh', '1980-12-11', '1374025104571989', '', '7543758660300113', 3, 2, '', 1, 'Balai Nan Duo No.57', '3', '1', '', 'Balai Nan Duo', 'Kec. Payakumbuh Barat', 0, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '813/034/5D-BKD/2005', '2005-01-01', '813/034/5D-BKD/2005', '2005-01-01', 'Pemerintah Kab/Kota', 1, '', 'APBD Kabupaten/Kota', 'Warnidawati', 1, 'ROBBY EFENDI', '198107132005011002', '3/TNI/Polri', '2006-04-01', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '475928404202000', 'INDONESIA', ''),
('196305141990032003', '6507770244', 'Desmainil', 2, 'Barulak', '1963-05-14', '1374025104571989', '', '', 3, 1, '', 1, 'Komplek Taman Asri Blok E.1 ', '0', '0', 'Parik Putuih', 'Ampang Gadang', 'Kec. Ampek Angkek', 0, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '167/IV-A/KWPK-1990', '1990-03-01', '167/IV-A/KWPK-1990', '1990-03-01', 'Pemerintah Propinsi', 1, '', 'APBD Kabupaten/Kota', 'Nufiar', 1, 'Zulferis, SE', '', 'Lainnya', '1990-08-01', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '', 'INDONESIA', ''),
('198312252009022007', '10853788285', 'Destri Eka Putri', 2, 'Kambing VII', '1983-12-25', '1374025104571989', '', '6557761663300133', 3, 2, '', 1, 'Jl Prof M Yamin SH Gang Langsat No 78', '2', '2', '', 'Aur Kuning', 'Kec. Aur Birugo Tigo Baleh', 26132, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '813.3/56/KKD-SWL/2009', '2009-02-01', '824.3/2169/BKD-2014', '2014-08-01', 'Pemerintah Propinsi', 1, '', 'APBD Kabupaten/Kota', 'Yusna', 1, 'Ferdi Rahadian', '198003062005011005', '3/TNI/Polri', '2010-11-01', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '780971883203000', 'INDONESIA', ''),
('195806161984000002', '9207359605', 'Dian Lestari', 1, 'Bukittinggi', '1989-08-03', '1374025104571989', '', '', 2, 2, '', 1, 'Jalan Ahmad Karim Nomor 96', '2', '4', '', 'Benteng Pasar Atas', 'Kec. Guguk Panjang', 0, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '', '0000-00-00', '800.001.SMA.3.BKT.2013', '2013-01-07', 'Kepala Sekolah', 1, '', 'Sekolah', 'Zelniar Zen', 2, '', '', 'Tidak bekerja', '0000-00-00', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '', 'INDONESIA', ''),
('195912121986021004', '7840865552', 'Edwardi', 1, 'Sungai Landir', '1959-12-12', '1374025104571989', '', '4544737639200063', 3, 2, '', 1, 'Jl.Pakoan Indah II No.83 Jorong Aro Kandikir', '0', '0', '', 'Gaduik', 'Kec. Guguk Panjang', 26122, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '822/979/III-bkd-2005', '2006-02-01', '822/979/III-bkd-2005', '2006-02-01', 'Pemerintah Pusat', 1, '', 'APBD Kabupaten/Kota', 'Sareda', 1, 'ny edwardi', '', 'Tidak bekerja', '2006-02-01', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '', 'INDONESIA', ''),
('197411132000032007', '5947681324', 'Efayanti', 2, 'Balingka', '1974-11-13', '1374025104571989', '', '4445752654300023', 3, 2, '', 1, 'Jl.Pakoan Indah III Gang Arwana No.1 Jorong Aro Kandikir', '0', '0', '', 'Gaduik', 'Kec. Guguk Panjang', 0, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '8527/A2/kp/2000', '2000-03-01', '001/2/II-Bkd/2001', '2002-02-01', 'Pemerintah Kab/Kota', 1, '', 'APBD Kabupaten/Kota', 'Ratna', 1, 'Defia', '', 'Wiraswasta', '2002-02-01', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '476470810202000', 'INDONESIA', ''),
('197110292005011003', '7215810171', 'Efrizal M', 1, 'Bukittinggi', '1971-10-29', '1374025104571989', '', '1361749652200013', 3, 2, '', 1, 'Jl;.Raya Tigo Baleh No.8', '1', '6', '', 'Pakan Labuah', 'Kec. Aur Birugo Tigo Baleh', 26134, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, 'bkd.049/813.3/Kep/Wako-2005', '2005-01-01', '188.45/159/821.13/kpts/bsl/bkd-2006', '2006-03-01', 'Pemerintah Kab/Kota', 1, '', 'APBD Kabupaten/Kota', 'Sariaji', 1, 'Hafnesi', '', 'Karyawan Swasta', '2006-03-01', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '', 'INDONESIA', ''),
('195806161984000003', '5966871440', 'Ega Nerifalinda', 2, 'Pekan Kamis', '1983-03-20', '1374025104571989', '', '', 2, 2, '', 1, 'Jorong Padang Canting', '0', '0', '', 'Kapau', 'Kec. Tilatang Kamang', 26152, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '', '0000-00-00', '800.642.SMA.3.BKT-2015', '2015-07-06', 'Kepala Sekolah', 1, '', 'Sekolah', 'Rifdayati', 1, 'Abdul Halim', '', 'Karyawan Swasta', '0000-00-00', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '', 'INDONESIA', ''),
('196709021991032006', '9186926890', 'Eli Noverma', 2, 'Ampalu Gurun, Batusa', '1967-09-02', '1374025104571989', '', '6234745648300033', 3, 2, '', 1, 'Jl.Haji Miskin No. 91A Palolok', '0', '0', '', 'Campago Ipuh', 'Kec. Guguk Panjang', 0, '0751461692', '081267771344', 'dankrez48@gmail.com', 'Kepala Laboratorium', 1, '822/005/disdikpora.bkt/skt-200', '2009-03-01', '822/005/disdikpora.bkt/skt-200', '2009-03-01', 'Pemerintah Pusat', 1, '', 'Lainnya', 'Ratna', 1, '', '', 'Tidak bekerja', '2009-03-01', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '', 'INDONESIA', ''),
('197004031997022001', '9130316866', 'Elianis', 2, 'Pasanehan', '1970-04-03', '1374025104571989', '', '0735748650300032', 3, 2, '', 1, 'Bonjo Alam', '0', '0', '', 'Ampang Gadang', 'Kec. Ampek Angkek', 0, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '16858/A2.KP.1997', '1997-02-01', '2335/IV/Kwpk-1998', '1998-06-01', 'Pemerintah Pusat', 1, '', 'APBN', 'Djarnian', 1, 'Salmetri', '196804271992031004', '3/TNI/Polri', '1998-06-01', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '', 'INDONESIA', ''),
('196709271989031003', '5821668218', 'Elno', 1, 'Agam', '1967-09-27', '1374025104571989', '', '5259745646200003', 3, 2, '', 1, 'Perumahan Pasia Permai No.7', '0', '0', 'Cibuak Ameh', 'Pasia', 'Kec. Ampek Angkek', 0, '0751461692', '081267771344', 'dankrez48@gmail.com', 'Wakil Kepala Sekolah Kesiswaan', 1, '1474/IV.E/KWP-1989', '1989-03-01', '1474/ME/KWP-29', '1989-06-29', 'Pemerintah Pusat', 1, '', 'APBD Kabupaten/Kota', 'NURHEMA', 1, 'Maulida Patriana', '196805251995032002', '3/TNI/Polri', '1991-01-01', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '475928412202000', 'INDONESIA', ''),
('196109191988031006', '9351958521', 'Elza Refni', 1, 'Padang Lawas', '1961-09-19', '1374025104571989', '', '8251739641200023', 3, 3, '', 1, 'Komplek Veteran Guguk Randah Jl.Ak Gani', '5', '2', '', 'Campago Guguak Bulek', 'Kec. Mandiangin Koto Selayan', 0, '0751461692', '081267771344', 'dankrez48@gmail.com', 'Wakil Kepala Sekolah Humas', 1, '760/IV.E/Kwpk-1988', '1988-03-01', '760/IV.E/Kwpk-1988', '1988-03-01', 'Pemerintah Pusat', 1, '', 'APBD Kabupaten/Kota', 'Hj. Nurmelis', 1, 'Retni Akmalia', '196412231987032004', '3/TNI/Polri', '1989-09-01', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '475928172202000', 'INDONESIA', ''),
('195806161984000004', '10391084688', 'Erdison', 1, 'Sungai Liku', '1981-01-03', '1374025104571989', '', '', 1, 1, '', 1, 'Birugo Bungo', '2', '1', '', 'Birugo', 'Kec. Aur Birugo Tigo Baleh', 0, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '', '0000-00-00', '800.sma.3.bkt-2010', '2010-07-01', 'Kepala Sekolah', 1, '', 'Sekolah', 'Siti', 1, 'Yulisna', '', 'Tidak bekerja', '0000-00-00', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '', 'INDONESIA', ''),
('196202191990032001', '11630412432', 'Erlis', 2, 'Tampunik, Agam', '1962-02-19', '1374025104571989', '', '8551740641300032', 3, 2, '', 1, 'Tampunik', '0', '0', '', 'Tampunik', 'Kec. Tilatang Kamang', 0, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '525/IV.E/Kwpk-1990', '1990-03-01', '525/IV.E/Kwpk-1990', '1990-03-01', 'Pemerintah Pusat', 1, '', 'APBD Kabupaten/Kota', 'Rosmaniar', 1, 'Jaya Putra', '-                 ', 'Wiraswasta', '1991-08-01', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '475928438202000', 'INDONESIA', ''),
('196308051983012001', '8075104832', 'Ernawilis', 2, 'Palembayan', '1963-09-05', '1374025104571989', '', '7137741642300043', 3, 1, '', 1, 'Perumnas Blok H7 ', '0', '0', 'Jorong Kudang Duo', 'Bukik Batabuah', 'Kec. Candung', 0, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '1357/c/3/1982', '1983-03-01', '2485/4/Kwpk-1984', '1984-08-01', 'Pemerintah Propinsi', 1, '', 'APBD Provinsi', 'Siti Budiman', 1, 'Suarni, SH', '196212311983031128', '3/TNI/Polri', '1984-08-01', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '476474077202000', 'INDONESIA', ''),
('197305312014061001', '6484287069', 'Erwin', 1, 'Bandung', '1973-05-31', '1374025104571989', '', '5863751653200002', 5, 1, '', 1, 'Jl.Merapi 2986', '1', '4', '', 'Puhun Tembok', 'Kec. Mandiangin Koto Selayan', 0, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '813/043-5D/BKD-2014', '2014-06-01', '82.800.SMA.3-Bkt-2004', '2004-03-01', 'Kepala Sekolah', 1, '', 'APBN', 'Erwani Noer', 1, 'Febriyanti Novita Mara', '', 'Tidak bekerja', '0000-00-00', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '', 'INDONESIA', ''),
('195712091982022001', '9196121053', 'Faridawaty', 2, 'Tanjung Karang', '1957-12-09', '1374025104571989', '', '2541735636300013', 3, 2, '', 1, 'Perumahan Kubang Duo B.12 Koto Panjang', '0', '0', '', 'Bukik Batabuah', 'Kec. Candung', 0, '0751461692', '081267771344', 'dankrez48@gmail.com', 'Kepala Perpustakaan', 1, '40250/C/2/82', '1982-02-01', '3730/III/KWPK-82', '1982-11-01', 'Pemerintah Pusat', 1, '', 'APBD Kabupaten/Kota', 'Bawai Yahya', 1, 'Adwar. Bac', '', 'Karyawan Swasta', '1983-08-01', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '475928370202000', 'INDONESIA', ''),
('195806161984000005', '7624040793', 'Fauzana Fitri zalona', 1, 'Bukittinggi', '1988-05-27', '1374025104571989', '', '', 2, 3, '', 1, 'Jl.Soekarno Hatta No.17', '4', '0', '', 'Bukit Surungan', 'Kec. Padang Panjang Barat', 0, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '', '0000-00-00', '', '2015-07-13', 'Kepala Sekolah', 1, '', 'Sekolah', 'Floria Napolis', 1, 'Ahmad SYukri', '', 'Karyawan Swasta', '0000-00-00', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '', 'INDONESIA', ''),
('196307251987112001', '11531841010', 'Firdawati', 2, 'Bukittinggi', '1963-07-25', '1374025104571989', '', '7057741642300003', 3, 2, '', 1, 'Jl.Hamka No.15', '3', '6', '', 'tarok dipo', 'Kec. Guguk Panjang', 0, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '1000/IV.E/Kwpk-1987', '1987-11-01', '1989', '1989-05-01', 'Pemerintah Pusat', 1, '', 'APBN', 'Rosmanidar', 1, 'Syuhrawardi', '', 'Pensiunan', '1989-05-01', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '152702387202000', 'INDONESIA', ''),
('197908232006042004', '9248811582', 'Fitria Lisa', 2, 'Sungai Tanang', '1979-08-23', '1374025104571989', '', '4155757659302005', 3, 2, '', 1, 'Pandan Gadang', '0', '0', '', 'Sungai Tanang', 'Kec. Banuhampu', 0, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '813/007-5D/BKD-2006', '2006-04-01', '813/007-5D/BKD-2006', '2007-08-01', 'Pemerintah Kab/Kota', 1, '', 'APBN', 'Yarmiati', 1, 'Asrial', '', 'Wiraswasta', '2007-08-01', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '476473566202000', 'INDONESIA', ''),
('196005151984032003', '6013967263', 'Floria Napolis', 2, 'Tanjung Pandan', '1960-05-15', '1374025104571989', '', '5847738639300052', 3, 2, '', 1, 'Jl.Soekarno Hatta No.17', '0', '0', '', 'Bukit Surungan', 'Kec. Padang Panjang Barat', 21175, '0751461692', '081267771344', 'dankrez48@gmail.com', 'Kepala Laboratorium', 1, '78167/C/K.IV.I/84', '1984-03-01', '812/IV/KWPK-86', '1986-02-01', 'Pemerintah Pusat', 1, '', 'APBD Kabupaten/Kota', 'Marni', 2, '', '', 'Tidak bekerja', '1986-02-01', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '475928339202000', 'INDONESIA', ''),
('197305292003122001', '9957969597', 'Frimayasti', 2, 'Bukittinggi', '1973-05-29', '1374025104571989', '', '3861751653300012', 3, 2, '', 1, 'Jl.Bahder Johan No.43', '2', '5', '', 'Puhun Tembok', 'Kec. Mandiangin Koto Selayan', 26124, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '800.05/25/WK-PYK/2004', '2003-12-01', '800', '2003-12-01', 'Pemerintah Pusat', 1, '', 'APBN', 'Wanimar', 1, 'A.Chandra', '', 'Wiraswasta', '2005-04-01', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '671678688204000', 'INDONESIA', ''),
('196310031988032002', '6209675109', 'Hanifah', 2, 'Bukittinggi', '1963-10-03', '1374025104571989', '', '4335741644300013', 3, 2, '', 1, 'Sanjai Dalam No.32', '0', '0', '', 'Manggis Ganting', 'Kec. Mandiangin Koto Selayan', 0, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '53766/A.2.IV/c/1998', '1998-03-01', '53766/A.2.IV/c/1998', '1998-03-01', 'Pemerintah Pusat', 1, '', 'APBN', 'Upik', 1, 'Ari Candra', '196401311988031003', '3/TNI/Polri', '1989-07-01', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '', 'INDONESIA', ''),
('198105182009011003', '8809034779', 'Herman Novia Rozi', 1, 'Kab.Lima Puluh Kota', '1981-05-18', '1374025104571989', '', '8850759660200002', 3, 2, '', 1, 'Jl. Nurul Huda No. 32 S', '2', '5', '', 'Tarok Dipo', 'Kec. Guguk Panjang', 0, '0751461692', '081267771344', 'dankrez48@gmail.com', 'Kepala Laboratorium', 1, '813/081-5D/BKD-2009', '2009-01-01', '813/081-5D/BKD-2009', '2009-01-01', 'Pemerintah Kab/Kota', 1, '', 'APBD Kabupaten/Kota', 'Yurnelis', 1, 'Syafria', '197905272006042003', '3/TNI/Polri', '2010-04-01', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '149385536202000', 'INDONESIA', ''),
('198512152009012003', '6512445304', 'Indrawati', 2, 'Pasaman', '1985-12-15', '1374025104571989', '', '9547763664210073', 3, 2, '', 1, 'Bukit Ambacang', '6', '1', '', 'Kubu Gulai Bancah', 'Kec. Mandiangin Koto Selayan', 26122, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '813.3/128/BKPL-2009', '2009-01-01', '813.3/113/BKPL-2010', '2010-10-01', 'Pemerintah Kab/Kota', 1, '', 'APBN', 'Helma', 1, 'Faishal Yasin', '', 'Lainnya', '2010-10-01', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '153409362202000', 'INDONESIA', ''),
('196712271991012002', '7135122386', 'Irma Hadi Surya', 2, 'Bukittinggi', '1967-12-27', '1374025104571989', '', '7559745647300033', 3, 2, '', 1, 'Jl. Bantolaweh 4c', '2', '1', '', 'Kayu Kubu', 'Kec. Guguk Panjang', 26115, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '5182/A2IV/IC/1991', '1991-01-01', '5182/A2IV/IC/1991', '1991-01-01', 'Pemerintah Pusat', 1, '', 'APBN', 'Syamsidar', 1, 'Darwin', '', 'Wiraswasta', '1992-07-01', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '776386260202000', 'INDONESIA', ''),
('198401272005012003', '10503708401', 'Irma Yunita', 2, 'Kab. Agam', '1984-01-27', '1374025104571989', '', '', 3, 1, '', 1, 'Jl.Jendral Sudirman', '2', '2', '', 'Birugo', 'Kec. Aur Birugo Tigo Baleh', 26138, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '813-117/5D-BKD/2005', '2005-01-01', '821/106-3D/BKD-2006', '2006-04-01', 'Pemerintah Kab/Kota', 1, '', 'APBD Kabupaten/Kota', 'Suryati', 1, 'Muhammad Fauzi Zen', '198408252005011003', '3/TNI/Polri', '2006-04-01', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '165216417202000', 'INDONESIA', ''),
('195806161984000006', '12209471584', 'Jusnawita', 2, 'Bukittinggi', '1976-09-22', '1374025104571989', '', '2754754658300002', 4, 2, '', 1, 'Jl.Raya Tigo Baleh No.B', '0', '0', '', 'Pakan Labuah', 'Kec. Aur Birugo Tigo Baleh', 26134, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '', '0000-00-00', '', '2015-07-13', 'Ketua Yayasan', 1, '', 'Yayasan', 'Suarni', 1, 'Hendri Satria', '', 'Wiraswasta', '0000-00-00', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '', 'INDONESIA', ''),
('196207071989032002', '10632529451', 'Khairiati', 2, 'Curup', '1962-07-07', '1374025104571989', '', '8039740641300033', 3, 2, '', 1, 'Jl.Merak No. 185 Perumnas Kubang Putih', '0', '0', 'Kampuang Nan V', 'Kubang Putih', 'Kec. Banuhampu', 26181, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '881/IV.E/Kwpk-1989', '1989-03-01', '881/IV.E/Kwpk-1989', '1989-03-01', 'Pemerintah Pusat', 1, '', 'APBD Kabupaten/Kota', 'Kamiar', 1, 'Anwar', '196501041987081001', '3/TNI/Polri', '1990-08-01', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '475928297202000', 'INDONESIA', ''),
('197705032009012002', '10899664884', 'Khairina Hafni', 2, 'Bukittinggi', '1977-05-03', '1374025104571989', '', '8835755657300022', 3, 2, '', 1, 'Jorong Sungai Tanang Ketek', '0', '0', '', 'Sungai Tanang', 'Kec. Banuhampu', 0, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '813/100-5D/BKD-2009', '2009-01-01', '821/060-3D/BKD-2010', '2010-04-01', 'Pemerintah Kab/Kota', 1, '', 'APBD Kabupaten/Kota', 'Suhasma', 1, 'Aruza', '', 'Karyawan Swasta', '2010-04-01', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '149385528202000', 'INDONESIA', ''),
('195904211984031004', '10331600624', 'Krisnal Razali', 1, 'Lubuk Basung', '1959-04-21', '1374025104571989', '', '5753737638200022', 3, 2, '', 1, 'Komplek PU 2977 Merapi', '0', '0', '', 'Puhun Tembok', 'Kec. Guguk Panjang', 0, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '822/876/DISDIKBKT/TU-08', '2008-01-16', '822/876/DISDIKBKT/TU-08', '2008-01-16', 'Pemerintah Pusat', 1, '', 'Lainnya', 'Jawaher', 1, 'NIBRAS', '196209071984032001', '3/TNI/Polri', '2008-03-01', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '473928371202000', 'INDONESIA', ''),
('198011132009012004', '6689873028', 'Kurnia Mira Lestari', 2, 'Payakumbuh', '1980-11-13', '1374025104571989', '', '4445758660300033', 3, 2, '', 1, 'Jl.Ipuh Mandiangin', '6', '2', '', 'Campago Ipuh', 'Kec. Mandiangin Koto Selayan', 26121, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '813.3/142/BKPL-2009', '2009-01-01', '813.3/304/BKPL-2010', '2010-10-01', 'Pemerintah Kab/Kota', 1, '', 'APBD Kabupaten/Kota', 'Nursyamsianis', 1, 'Husnul Qadry', '', 'Sudah Meninggal', '2010-10-01', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '', 'INDONESIA', ''),
('197001122007012005', '10089131297', 'Lasmiyenti', 2, 'Bukittinggi', '1970-01-12', '1374025104571989', '', '5444748650300002', 3, 2, '', 1, 'Ladang Cangkiah', '2', '2', '', 'Ladang Cangkiah', 'Kec. Aur Birugo Tigo Baleh', 26135, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '813/255-5D/BKD-2007', '2007-01-01', '821/171-3D/BKD.2008', '2007-01-01', 'Pemerintah Kab/Kota', 1, '', 'APBD Kabupaten/Kota', 'Nurbaiti', 1, 'Firdaus', '', 'Wiraswasta', '2008-11-01', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '149838688200200', 'INDONESIA', ''),
('196411041994122001', '11472334134', 'Leli Novianti', 2, 'Bukittinggi', '1964-11-04', '1374025104571989', '', '3436742644300033', 3, 2, '', 1, 'Jl.Jambu No.22', '2', '3', '', 'Aur Kuning', 'Kec. Aur Birugo Tigo Baleh', 0, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '85052Acc1994', '1994-12-01', '83052/al/1994', '1994-11-12', 'Ketua Yayasan', 1, '', 'APBN', 'Nurjanah Amin', 1, 'Zaifuli Anri Kasiah', '196309171994031003', '3/TNI/Polri', '1996-08-01', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '', 'INDONESIA', ''),
('197505102006042004', '8190573513', 'Leni Marlina', 2, 'Lundang', '1975-05-10', '1374025104571989', '', '3842753655300052', 3, 2, '', 1, 'Lundang', '0', '0', '', 'Lundang', 'Kec. Ampek Angkek', 0, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '188.45/276/821.13/KTPS/WSL/BKD-2006', '2006-04-01', '188.45/031/821.13/KPTS/WSL/BKD-2007', '2007-08-01', 'Pemerintah Kab/Kota', 1, '', 'APBN', 'Yurnida', 1, 'Rudi Arpono', '', 'Wiraswasta', '2007-08-01', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '480991330201000', 'INDONESIA', ''),
('195806161984000007', '7535865371', 'Lidya Puspita Sari', 2, 'Bukittinggi', '1984-08-05', '1374025104571989', '', '', 1, 1, '', 1, 'Jl.Kehamikam', '4', '2', '', 'Belakang Balok', 'Kec. Aur Birugo Tigo Baleh', 0, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '', '0000-00-00', '800.290.SMA.3.Bkt-2010', '2010-07-01', 'Komite Sekolah', 1, '', 'Sekolah', 'Nurlela', 1, 'Abdurrohman Hasyim', '', 'Karyawan Swasta', '0000-00-00', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '', 'INDONESIA', ''),
('196608201993032006', '7473038696', 'Lili Suyani', 2, 'Agam', '1966-08-20', '1374025104571989', '', '8152744647300033', 3, 4, '', 1, 'simpang empat padang lua', '0', '0', 'padang lua', 'banuhampu', 'Kec. Banuhampu', 0, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '271/IV.E/KWPK-1993', '1993-03-01', '3234/IV/KWPK-1994', '1994-06-01', 'Pemerintah Propinsi', 1, '', 'APBN', 'Erma', 1, 'Yonnofa Hendri', '', 'Petani', '1994-06-01', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '', 'INDONESIA', ''),
('196002071984031003', '9123029747', 'M.Nasir', 1, 'Bukittinggi', '1960-02-07', '1374025104571989', '', '5539738639200022', 3, 2, '', 1, 'Jl.H.Abdul Manan', '0', '0', '', 'Campago Ipuh', 'Kec. Mandiangin Koto Selayan', 26121, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '41607/c/KIV.I/84', '1984-03-01', '4267/III/KWPK-88', '1988-03-01', 'Pemerintah Propinsi', 1, '', 'APBN', 'Jani', 1, 'Azuhelmi', '', 'Tidak bekerja', '1986-02-01', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '', 'INDONESIA', ''),
('196412271989032005', '10926897207', 'Maria Magdalena', 2, 'Payakumbuh', '1964-12-27', '1374025104571989', '', '5559742644300043', 3, 2, '', 1, 'Koto Tuo Nagari Panyalaian', '0', '0', '', 'Koto Tuo', 'Kec. Sepuluh Koto', 0, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '431/IV.E/KWPK-1989', '1989-03-01', '431/IV.E/KWPK-1989', '1989-03-01', 'Pemerintah Pusat', 1, '', 'APBN', 'Nazria', 1, 'Dedy Fernando', '', 'Wiraswasta', '1989-08-01', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '', 'INDONESIA', ''),
('195903161984031001', '8361693528', 'Masrafli', 1, 'Padang', '1959-03-16', '1374025104571989', '', '1648737639200022', 3, 2, '', 1, 'Jl.Titih Padang Tarok', '0', '0', '', '-', 'Kec. Baso', 0, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '30/01/1986', '1984-03-01', '42254/C/K.IV.1/84', '1984-03-01', 'Pemerintah Pusat', 1, '', 'Lainnya', 'SAIDAH', 1, 'ILHAM AZIZ', '', 'Tidak bekerja', '1986-02-01', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '475928164202000', 'INDONESIA', ''),
('195904031982021006', '10027776225', 'Masril Hakim', 1, 'Bukittinggi', '1959-04-03', '1374025104571989', '', '7735737638200022', 3, 2, '', 1, 'Sawah Sianik', '1', '1', '', 'Nan Balimo', 'Kec. Tanjung Harapan', 0, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '39863/C/2/82', '1982-02-01', '1052/III/KWPK/1994', '1994-04-01', 'Pemerintah Pusat', 1, '', 'APBD Kabupaten/Kota', 'Upik Aji', 1, 'Deswita', '195412181982112001', '3/TNI/Polri', '1984-01-01', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '476470687202000', 'INDONESIA', ''),
('195806161984000008', '6150097274', 'Megawati', 2, 'Bukittinggi', '1985-02-28', '1374025104571989', '', '', 2, 2, '', 1, 'Jl. Prof. M. Yamin, SH', '1', '1', '', 'Aur Kuning', 'Kec. Aur Birugo Tigo Baleh', 26131, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '', '0000-00-00', '800.642.SMA.3 Bkt-2015', '2015-07-06', 'Kepala Sekolah', 1, '', 'Sekolah', 'Epi Anis', 1, 'Mondri Efendi', '198401162011011002', '3/TNI/Polri', '0000-00-00', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '', 'INDONESIA', ''),
('195608041980032002', '8301725723', 'Meiri Hasnetty', 2, 'Bukittinggi', '1956-08-04', '1374025104571989', '', '2136734635300013', 3, 2, '', 1, 'Jl. H. Abdul Manan', '3', '1', '', 'Campago Guguak Bulek', 'Kec. Mandiangin Koto Selayan', 26128, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '23800/C/2/1980', '1980-03-01', '238000/C/2/1980', '1980-03-01', 'Pemerintah Pusat', 1, '', 'APBD Kabupaten/Kota', 'Rukayah', 1, 'Drs. Herman Ladri', '195911051979121001', '3/TNI/Polri', '1981-09-01', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '475928487202000', 'INDONESIA', ''),
('198710052010012011', '10789201352', 'Meliya Defrina', 2, 'Agam', '1987-10-05', '1374025104571989', '', '', 3, 1, '', 1, 'Jl.Perintis Kemerdekaan No.146', '1', '2', '', 'jati', 'Kec. Padang Timur', 0, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '813/119-5D/BKD-2010', '2010-01-01', '821/159-3D/BKD-2011', '2011-05-01', 'Pemerintah Kab/Kota', 1, '', 'APBD Kabupaten/Kota', 'Ratna Ernita', 1, 'Muhamad Farid', '', 'Karyawan Swasta', '2011-05-01', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '', 'INDONESIA', ''),
('196403171988032004', '10137126327', 'Metraneliza', 2, 'Patapaian', '1964-03-17', '1374025104571989', '', '3649742643300042', 3, 2, '', 1, 'Komplek SMA Negeri 1 Bukittinggi', '0', '0', '', 'Pakan Kurai', 'Kec. Guguk Panjang', 0, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '975/IV.E/Kwpk-1988', '1988-03-01', '822/878/disdik.bkt/tu-2008', '2008-10-01', 'Pemerintah Pusat', 1, '', 'Lainnya', 'Dahnuir', 1, 'YUSRIZAL', '196205111985121001', '3/TNI/Polri', '1988-03-01', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '476470877202000', 'INDONESIA', ''),
('197412162008012001', '6048892135', 'Mira Fujiati', 2, 'Guguk Tinggi', '1974-12-16', '1374025104571989', '', '7548752654300033', 3, 2, '', 1, 'Jl.Anggur No.2', '4', '3', '', 'Puhun Pintu Kabun', 'Kec. Mandiangin Koto Selayan', 26123, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '813/253/BKD-2008', '2008-01-01', '22 Tahun 2010', '2010-02-01', 'Pemerintah Kab/Kota', 1, '', 'APBD Kabupaten/Kota', 'Zulnani Z', 1, 'Tonrino Hendri', '', 'Wiraswasta', '2010-02-01', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '', 'INDONESIA', ''),
('196307311989032003', '7467649723', 'Misteti', 2, 'Bukittinggi', '1963-07-31', '1374025104571989', '', '7063741642300023', 3, 2, '', 1, 'Koto Katiak No. 20 Tigo Baleh', '1', '2', 'Koto Katiak No. 20 Tigo Baleh', 'Parit Antang', 'Kec. Guguk Panjang', 0, '0751461692', '081267771344', 'dankrez48@gmail.com', 'Wakil Kepala Sekolah Sarpras', 1, '801/IV.E/KWPK-89', '1989-03-01', '2987/IV/Kwpk-1990', '1989-08-01', 'Pemerintah Pusat', 1, '', 'APBD Kabupaten/Kota', 'Hj.Lisdar', 1, 'Yuswar', '-                 ', 'Pensiunan', '1990-08-01', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '476470711202000', 'INDONESIA', ''),
('197508102002122002', '6922436770', 'Murnita', 2, 'Padang Kudo', '1975-08-10', '1374025104571989', '', '7142753655300053', 3, 2, '', 1, 'Padang Kudo Kanagarian Batagak, Agam', '0', '0', '', 'Batagak', 'Kec. Sungai Pua', 0, '0751461692', '081267771344', 'dankrez48@gmail.com', 'Wakil Kepala Sekolah', 1, '870/045/5d/2002', '2002-12-30', '870/045/5d/2002', '2002-12-30', 'Pemerintah Pusat', 1, '', 'APBD Kabupaten/Kota', 'Ramunas', 1, 'zul azmi', '', 'Petani', '2004-01-01', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '476470828202000', 'INDONESIA', ''),
('196301121987032005', '6574667062', 'Musniar', 2, 'Bukittinggi', '1963-01-12', '1374025104571989', '', '2444741642300032', 3, 2, '', 1, 'pakan kurai', '2', '4', '', 'tarok dipo', 'Kec. Guguk Panjang', 0, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '1108/8.E/KWPK-1987', '1987-03-01', '1108/8.E/KWPK-1987', '1987-03-01', 'Pemerintah Pusat', 1, '', 'APBN', 'ibu', 1, 'Idramayulis', '196104131987031005', '3/TNI/Polri', '1988-04-01', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '476472980202000', 'INDONESIA', ''),
('195802141982021001', '6471457382', 'Naan', 1, 'Tanah Datar', '1958-02-14', '1374025104571989', '', '6546736638200022', 3, 2, '', 1, 'Jl.Puding Mas No. 20, Bukittinggi', '2', '3', '', 'Aur Kuning', 'Kec. Aur Birugo Tigo Baleh', 26131, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '39868/C/2/82', '1982-02-01', '686/III/Kwpk-93', '1993-04-01', 'Pemerintah Pusat', 1, '', 'APBD Kabupaten/Kota', 'Halima', 1, 'Aminah', '', 'Lainnya', '1983-08-01', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '', 'INDONESIA', ''),
('195702161981032002', '6998718105', 'Nadra Juami', 2, 'Solok', '1957-02-16', '1374025104571989', '', '1548735637300012', 3, 2, '', 1, 'Mahkota Mas E.7 Garegeh, Bukittinggi', '3', '1', '', 'Garegeh', 'Kec. Guguk Panjang', 0, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '4739/C/K.IV.1/1984', '1984-01-25', '85476/A2.IV.1/C/1986', '1986-11-01', 'Pemerintah Pusat', 1, '', 'APBD Kabupaten/Kota', 'Rostiam', 1, 'Joni Anwar, S.Pd.', '196507171993031010', '3/TNI/Polri', '1986-11-01', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '475928206202000', 'INDONESIA', ''),
('195709071984122001', '9944650762', 'Nilusmi', 2, 'Agam', '1957-09-07', '1374025104571989', '', '9239735637300013', 3, 2, '', 1, 'Perumahan Bukittinggi Indah No.3B', '0', '0', '', 'Pakan Labuah', 'Kec. Guguk Panjang', 0, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '823.4/1233/bd-2007', '2008-12-01', '823.4/1233/bd-2007', '2008-12-01', 'Pemerintah Pusat', 1, '', 'Lainnya', 'Janiah', 1, '', '', 'Tidak bekerja', '2008-12-01', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '', 'INDONESIA', ''),
('198411032008032001', '9823396230', 'Nofitatri Purnama', 2, 'Jakarta', '1984-11-03', '1374025104571989', '', '2435762663300063', 3, 4, '', 1, 'Kp Tangah', '0', '0', 'Jorong Tigo Kampuang', 'Salo', 'Kec. Baso', 0, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '813.3/49/KKD-SWL/2008', '2008-03-01', '821.3/49/KKD-SWL/2010', '2010-03-01', 'Pemerintah Kab/Kota', 1, '', 'APBN', 'Ibu', 1, 'Ryantoni', '', 'Wiraswasta', '2010-03-01', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '149350621203000', 'INDONESIA', ''),
('195806161984000009', '7013893422', 'Nova Camelia', 2, 'Bukittinggi', '1991-11-15', '1374025104571989', '', '', 2, 3, '', 1, 'Panji Jorong Tigo SUrau', '0', '0', '', 'Koto Baru III Jorong', 'Kec. Baso', 0, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '', '0000-00-00', '', '2015-07-13', 'Kepala Sekolah', 1, '', 'Sekolah', 'Jasnidar', 2, '', '', 'Tidak bekerja', '0000-00-00', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '', 'INDONESIA', ''),
('196107121984122002', '6599278626', 'Nurlaili', 2, 'Agam', '1961-07-12', '1374025104571989', '', '0044739641300053', 3, 2, '', 1, 'Perum Wisma Ganting Permai No.55F', '3', '0', '', 'Pulai Anak Air', 'Kec. Guguk Panjang', 26125, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '2783/IV.E/KWPK-1985', '1984-12-01', '2783/IV.E/KWPK-1985', '1984-12-01', 'Pemerintah Pusat', 1, '', 'Lainnya', 'Nurma', 1, 'Sukardi', '196105201987021003', '3/TNI/Polri', '1986-05-01', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '476470752202000', 'INDONESIA', ''),
('198605012009011001', '6320145245', 'Oki Surya Ananda', 1, 'Kab.Agam', '1986-05-01', '1374025104571989', '', '7833764665110052', 3, 2, '', 1, 'Kampung Pisang Bansa', '0', '0', '', 'Kamang Mudiak', 'Kec. Kamang Magek', 0, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '813/146-5D/BKD-2009', '2009-01-01', '813/146-5D/BKD-2009', '2009-01-01', 'Pemerintah Kab/Kota', 1, '', 'APBD Kabupaten/Kota', 'Nawibar', 1, 'Fuji Rasyid', '198602212011012001', '3/TNI/Polri', '2010-04-01', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '149385510202000', 'INDONESIA', ''),
('197910182002122002', '6168322730', 'Oktamira', 2, 'Bukittinggi', '1979-10-18', '1374025104571989', '', '3350757659300023', 3, 2, '', 1, 'Jakmesis', '0', '0', 'jr. Koto Marapak', 'Lambah', 'Kec. Ampek Angkek', 0, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '870/013/5D/2002', '2002-12-01', '870/013/5D/2002', '2002-12-01', 'Pemerintah Kab/Kota', 1, '', 'APBN', 'Nurbeti', 1, 'Aswandi. A', '', 'Lainnya', '2004-12-01', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '', 'INDONESIA', ''),
('195806161984000010', '6246610293', 'Putra Alfajri Wanto', 1, 'Bukittinggi', '1990-04-17', '1374025104571989', '', '', 2, 2, '', 1, 'Kayu Rantingan', '0', '0', '', 'Bukik Batabuah', 'Kec. Candung', 0, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '', '0000-00-00', '800.459.SMA.3.BKT-2013', '2013-07-11', 'Kepala Sekolah', 1, '', 'Sekolah', 'Badri Mutia', 2, '', '', 'Tidak bekerja', '0000-00-00', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '', 'INDONESIA', ''),
('197709072003122004', '7093515658', 'Rahmawati', 2, 'Payakumbuh', '1977-09-07', '1374025104571989', '', '2239755656300033', 3, 2, '', 1, 'Jl.Dahlia No.86', '2', '2', '', 'Padang Tinggi', 'Kec. Payakumbuh Barat', 26224, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '813/050/5D-BKD/2003', '2003-12-01', '813/050/5D-BKD/2003', '2003-12-01', 'Pemerintah Kab/Kota', 1, '', 'APBD Kabupaten/Kota', 'Kamsinar', 1, 'Moh. Arief Hidayat', '197203062005011004', '3/TNI/Polri', '2005-01-01', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '476470885202000', 'INDONESIA', ''),
('198208182009012004', '11093179792', 'Rahmawitri', 2, 'Padang', '1982-08-18', '1374025104571989', '', '7150760661300073', 3, 2, '', 1, 'Jl.Terpadu No.19', '4', '4', '', 'Kalumbuk', 'Kec. Kuranji', 25155, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '813/152-5D/Bkd-2009', '2009-01-01', '813/152-5D/Bkd-2009', '2009-01-01', 'Pemerintah Pusat', 1, '', 'APBD Kabupaten/Kota', 'Mariyetti', 1, 'Jonefri', '198106042005011009', '3/TNI/Polri', '2009-01-01', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '149385551200200', 'INDONESIA', ''),
('196807021995122002', '8647080900', 'Rahmayenti Bustami', 2, 'Bukittinggi', '1968-07-02', '1374025104571989', '', '6034746649300003', 3, 2, '', 1, 'Jl.Sumur', '2', '1', '', 'Koto Selayan', 'Kec. Mandiangin Koto Selayan', 26126, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '65989/A2/Kp/1995', '1995-12-01', '3182/IV/KWPK-1997', '1997-07-07', 'Pemerintah Pusat', 1, '', 'APBN', 'Rosnizar', 1, 'Heri Warman', '', 'Petani', '1997-08-01', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '476471727202000', 'INDONESIA', ''),
('196802131994032006', '10955865325', 'Rasti Mirza', 2, 'Agam', '1968-02-13', '1374025104571989', '', '2545746648300032', 3, 4, '', 1, 'Kapau', '0', '0', '', 'Kapau', 'Kec. Tilatang Kamang', 0, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '33/IV.E/KWPK/1994', '1994-03-01', '1484/IV/KWPK-1995', '1995-07-01', 'Pemerintah Propinsi', 1, '', 'APBN', 'Saemar', 1, 'Muhammad Syawal', '', 'Wiraswasta', '1995-07-01', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '', 'INDONESIA', ''),
('195806161984000011', '9934380663', 'Rezki Putra', 1, 'Payakumbuh', '1987-02-15', '1374025104571989', '', '', 1, 1, '', 1, 'Jorong Padang Ambacang', '0', '0', 'Kenag SItujuah Banda Dalam', 'Kenag SItujuah Banda Dalam', 'Kec. Situjuah Limo Nagari', 0, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '', '0000-00-00', '800.45.sma.3.bkt-2013', '2013-10-13', 'Kepala Sekolah', 1, '', 'Sekolah', 'Asma', 1, 'Marini', '198703012009012002', '3/TNI/Polri', '0000-00-00', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '', 'INDONESIA', ''),
('195806161984000012', '11169739723', 'Riadi', 1, 'Simarpinggan', '1974-10-04', '1374025104571989', '', '2336752656200003', 1, 1, '', 1, 'Komplek SMA Negeri 3 Bukittinggi', '4', '4', '', 'Tarok Dipo', 'Kec. Guguk Panjang', 26117, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '800.669.sma.3.bkt-2012', '2012-09-07', '314/108/29.1/smu.02/kp-22', '2002-07-01', 'Kepala Sekolah', 1, '', 'Sekolah', 'Lasmi', 1, 'Overa Sisna', '', 'Tidak bekerja', '2002-01-07', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '', 'INDONESIA', ''),
('197706132006042010', '7141853359', 'Rini', 2, 'Bukittinggi', '1977-06-13', '1374025104571989', '', '2945755656300022', 3, 2, '', 1, 'Jl.Pintu Kabun Gang Kemuning', '2', '4', '', 'Puhun Pintu Kabun', 'Kec. Mandiangin Koto Selayan', 0, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '813/091-5D/BKD-2006', '2006-04-01', '821/107-3D/Bkd-2007', '2008-01-01', 'Pemerintah Kab/Kota', 1, '', 'APBD Kabupaten/Kota', 'Zubaidar', 1, 'Ramayana', '', 'Karyawan Swasta', '2008-01-01', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '475928230202000', 'INDONESIA', ''),
('198302102009011003', '9834615652', 'Riry Mardiyan', 1, 'Bukittinggi', '1983-02-10', '1374025104571989', '', '9542761662200012', 3, 2, '', 1, 'Jl. Prof M Yamin SH Gang Mengkudu No. 32', '2', '2', '', 'Aur Kuning', 'Kec. Aur Birugo Tigo Baleh', 26123, '0751461692', '081267771344', 'dankrez48@gmail.com', 'Wakil Kepala Sekolah Sarpras', 1, '822/498/Disdik-Bkt/KGB-2012', '2009-01-01', '813/172-5D/BKD-2009', '2009-01-01', 'Pemerintah Kab/Kota', 1, '', 'APBD Kabupaten/Kota', 'Yusnimar', 1, 'Nadia Fadhila', '', 'Lainnya', '2010-04-01', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '149385494202000', 'INDONESIA', ''),
('196109291986032004', '8843814922', 'Rismitri', 2, 'Maninjau', '1961-09-29', '1374025104571989', '', '3261739640300043', 3, 2, '', 1, 'Komplek RSAM', '1', '1', '', 'Bukit Apit Puhun', 'Kec. Guguk Panjang', 26114, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '2268/IV.E/Kwpk-1986', '1986-03-01', '2268/IV.E/Kwpk-1986', '1986-03-01', 'Pemerintah Pusat', 1, '', 'APBD Kabupaten/Kota', 'Yulinar', 1, 'NAZDI', '195704131988031001', '3/TNI/Polri', '1988-02-01', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '475928396202000', 'INDONESIA', ''),
('195806161984000013', '9080660033', 'Rozi Kurniawan', 1, 'Sigiran', '1989-07-05', '1374025104571989', '', '', 2, 2, '', 1, 'Jl. Malalak-Sicincin', '0', '0', 'Jorong Sigiran', 'Malalak Utara', 'Kec. Malalak', 0, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '', '0000-00-00', '800.459.SMA.3.Bkt-2013', '2013-07-11', 'Kepala Sekolah', 1, '', 'Sekolah', 'Midiar', 2, '', '', 'Tidak bekerja', '0000-00-00', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '', 'INDONESIA', ''),
('195608281982032004', '6602719959', 'Salmah', 2, 'Bukittinggi', '1956-08-28', '1374025104571989', '', '', 3, 2, '', 1, 'Jl.H.Miskin No.61 B', '2', '5', '', 'Campago Ipuh', 'Kec. Mandiangin Koto Selayan', 0, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '01/03/1982', '1982-03-01', '44/199c14/1982', '1983-03-01', 'Pemerintah Pusat', 1, '', 'APBN', 'Yulidar', 1, 'Syaibul Azmi', '', '3/TNI/Polri', '1983-03-01', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '475471768202000', 'INDONESIA', ''),
('196701152014061002', '6771619899', 'Suhardiman', 1, 'Pasaman', '1967-01-15', '1374025104571989', '', '1034743653200003', 5, 1, '', 1, 'Komplek SMA Negeri 3 Bukittinggi', '4', '4', '', 'Tarok Dipo', 'Kec. Guguk Panjang', 0, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '813/041-5D/BKT-2014', '2014-06-01', '30/II08.09.30.03/C-1984', '1984-07-01', 'Kepala Sekolah', 1, '', 'APBN', 'Kamidah', 1, 'Suningsih', '', 'Lainnya', '1984-01-07', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '', 'INDONESIA', ''),
('196109081984122001', '8415371999', 'Syamsiwarni', 2, 'Agam', '1961-09-08', '1374025104571989', '', '3240739641300043', 3, 2, '', 1, 'Jl.Cendrawasih I No.145 Perumnas KP.Nan Limo', '0', '0', '', 'Kubang Putih', 'Kec. Guguk Panjang', 26181, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '822/408/disdik-bkt/tu-08', '1984-12-01', '822/408/disdik-bkt/tu-08', '2008-12-01', 'Pemerintah Pusat', 1, '', 'Lainnya', 'Upik Ini', 1, '', '', 'Tidak bekerja', '1986-12-01', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '', 'INDONESIA', ''),
('196412051989032005', '9492864858', 'Telfi Yendra', 2, 'Tanah Datar', '1964-12-05', '1374025104571989', '', '8537742644300033', 3, 2, '', 1, 'Jl.Lubuk Bawah No.07, Tangah Jua', '3', '3', '', 'Aur Kuning', 'Kec. Aur Birugo Tigo Baleh', 0, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '1434/IVE/Kwpk-89', '1989-03-01', '1434/IVE/Kwpk-89', '1989-03-01', 'Pemerintah Pusat', 1, '', 'APBD Kabupaten/Kota', 'Nurmayanis', 1, 'Zulkarnain Rivai', '0602              ', 'Pensiunan', '1990-04-01', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '475928263202000', 'INDONESIA', ''),
('197301032006042005', '9949072850', 'Tuti Triana', 2, 'Pakan Sinayan', '1973-01-03', '1374025104571989', '', '3435751651300002', 3, 2, '', 1, 'Jl.Gurun Panjang No.36G', '1', '6', '', 'Pakan Kurai', 'Kec. Guguk Panjang', 0, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '822/221/Disdik-Bkt/SKT-2011', '2011-01-06', '822/221/Disdik-Bkt/SKT-2011', '2011-01-06', 'Pemerintah Pusat', 1, '', 'Lainnya', 'Chairani', 1, 'Sumarno', '', 'Wiraswasta', '2011-01-06', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '475928255202000', 'INDONESIA', ''),
('197001091994122001', '8997634237', 'Vera Tri Ningsih', 2, 'Maluku', '1970-01-09', '1374025104571989', '', '2441748649300032', 3, 2, '', 1, 'Jl. Melati 03 Komplek Inkorba', '1', '6', 'Sanjai', 'Campago Guguak Bulek', 'Kec. Mandiangin Koto Selayan', 26128, '0751461692', '081267771344', 'dankrez48@gmail.com', 'Wakil Kepala Sekolah', 1, '84347/A2/C/1994', '1994-12-01', '84347/A2/C/1994', '1994-12-01', 'Pemerintah Pusat', 1, '', 'APBD Kabupaten/Kota', 'Hj. Erni Suhaimi', 1, 'Ir. Bambang Winarto', '', 'Wiraswasta', '1997-10-01', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '148612591204000', 'INDONESIA', ''),
('197906062009012002', '9506385015', 'Vivi Sunarti', 2, 'Balai Talang', '1979-06-06', '1374025104571989', '', '3938757659300042', 3, 2, '', 1, 'Balai Talang', '0', '0', '', 'Balai Talang', 'Kec. Guguak', 0, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '448/108.23.2/SMU.01/KP-2003', '2003-07-17', '448/108.23.2/SMU.01/KP-2003', '2003-07-17', 'Pemerintah Kab/Kota', 1, '', 'APBD Kabupaten/Kota', 'Ermiati', 1, '', '', 'Tidak bekerja', '2010-04-01', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '', 'INDONESIA', ''),
('196107051985122003', '8269886920', 'Yelfina', 2, 'Bukittinggi', '1961-07-05', '1374025104571989', '', '0037739641300023', 3, 2, '', 1, 'Jl.Banuhampu Raya No. 306', '0', '0', '', 'Kambung Nan Limo', 'Kec. Banuhampu', 26186, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '12/IV.E/Kwpk-1986', '1985-12-01', '1434/IV/KWPK-1987', '1987-04-01', 'Pemerintah Kab/Kota', 1, '', 'APBD Kabupaten/Kota', 'Yulinar', 1, 'Jaman', '195908171987031004', '3/TNI/Polri', '1987-04-01', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '', 'INDONESIA', ''),
('196306101988032005', '7195711939', 'Yernita', 2, 'Magek', '1963-06-10', '1374025104571989', '', '4942741643300052', 3, 2, '', 1, 'Jl. Bukik Cangang', '1', '2', '', 'Bukik Cangang-Kayu Ramang', 'Kec. Guguk Panjang', 26116, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '279/IV.E/KWPK-88', '1988-03-01', '3839/III/KWPK/KP-1996', '1996-12-01', 'Pemerintah Pusat', 1, '', 'APBD Kabupaten/Kota', 'Hj. Ajinar', 1, 'Muhsin Prawira', '', 'Wiraswasta', '1989-07-01', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '476470695202000', 'INDONESIA', ''),
('196201081985012001', '12168899139', 'Yetmaliar', 2, 'Lubuk Basung', '1962-01-08', '1374025104571989', '', '9440740641300032', 3, 2, '', 1, 'Parit Rantang Hilir Jorong III Sangkir', '0', '0', '', 'Lubuk Basung', 'Kec. Guguk Panjang', 26415, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '1864/IV.E/Kwpk-1985', '1985-01-01', '3925/IV/Kwpk-1986', '1986-09-01', 'Pemerintah Pusat', 1, '', 'Lainnya', 'Nurema', 1, 'Asrizal. B', '196012292006041006', '3/TNI/Polri', '1986-09-01', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '476470778202000', 'INDONESIA', ''),
('195806161984000014', '7084520969', 'Yosnimar', 2, 'Bukittinggi', '1984-03-09', '1374025104571989', '', '4641762663300032', 1, 1, '', 1, 'Jl.Soekarno Hatta Gang Manunggal No.06, Jangkak', '1', '4', '', 'Campago Ipuh', 'Kec. Mandiangin Koto Selayan', 0, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '800.669.sma.3.bkt-2012', '2012-09-07', '800.669.sma.3.bkt-2006', '2006-07-01', 'Kepala Sekolah', 1, '', 'Sekolah', 'Emi', 1, 'Ilyas Santoni', '', 'Lainnya', '2006-07-17', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '', 'INDONESIA', ''),
('196107101984122001', '6550475455', 'Yulfah Yetti', 2, 'Agam', '1961-07-10', '1374025104571989', '', '1042739640300023', 3, 2, '', 1, 'Jl.Prof.M.Yamin,SH', '0', '0', '', 'Aur Kuning', 'Kec. Guguk Panjang', 26117, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '822/407/disdik.bkt/tu-2008', '2008-12-01', '822/407/disdik.bkt/tu-2008', '2008-12-01', 'Pemerintah Pusat', 1, '', 'Lainnya', 'Saridan', 1, 'Zamtiardi', '', 'Tidak bekerja', '2008-12-01', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '593529272202000', 'INDONESIA', ''),
('195806161984000015', '5864246749', 'Yulia Sari', 2, 'Bukittingi', '1986-01-27', '1374025104571989', '', '', 1, 1, '', 1, 'Jl.Padang Gamuak No.16 B', '1', '5', '', 'Tarok Dipo', 'Kec. Guguk Panjang', 26117, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '', '0000-00-00', '800.041.sma.3.bkt-2012', '2012-02-06', 'Kepala Sekolah', 1, '', 'Sekolah', 'Lili Sri', 1, 'Julyanton', '', 'Karyawan Swasta', '0000-00-00', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '', 'INDONESIA', '');
INSERT INTO `rb_guru` (`nip`, `password`, `nama_guru`, `id_jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `nik`, `niy_nigk`, `nuptk`, `id_status_kepegawaian`, `id_jenis_ptk`, `pengawas_bidang_studi`, `id_agama`, `alamat_jalan`, `rt`, `rw`, `nama_dusun`, `desa_kelurahan`, `kecamatan`, `kode_pos`, `telepon`, `hp`, `email`, `tugas_tambahan`, `id_status_keaktifan`, `sk_cpns`, `tanggal_cpns`, `sk_pengangkatan`, `tmt_pengangkatan`, `lembaga_pengangkatan`, `id_golongan`, `keahlian_laboratorium`, `sumber_gaji`, `nama_ibu_kandung`, `id_status_pernikahan`, `nama_suami_istri`, `nip_suami_istri`, `pekerjaan_suami_istri`, `tmt_pns`, `lisensi_kepsek`, `jumlah_sekolah_binaan`, `diklat_kepengawasan`, `mampu_handle_kk`, `keahlian_breile`, `keahlian_bahasa_isyarat`, `npwp`, `kewarganegaraan`, `foto`) VALUES
('195811111982022002', '10669807584', 'Yusnel', 2, 'Matur, Agam', '1958-11-11', '1374025104571989', '', '3443736638300043', 3, 2, '', 1, 'Perumahan Bukittinggi Indah No.B9', '1', '7', '', 'Pakan Labuah', 'Kec. Aur Birugo Tigo Baleh', 26134, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '42091/C/2/82', '1982-02-01', '767/II/C1983', '1983-10-01', 'Pemerintah Pusat', 1, '', 'APBD Kabupaten/Kota', 'Raisah', 1, 'MARDIAS', '195710161982031007', '3/TNI/Polri', '1983-10-01', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '475928214202000', 'INDONESIA', ''),
('196208161990112001', '10218026586', 'Zaitun', 2, 'Matur', '1962-08-16', '1374025104571989', '', '7148740641300053', 3, 1, '', 1, 'Jl.Prof.M.Yamin,SH', '0', '0', '', 'Aur Kuning', 'Kec. Aur Birugo Tigo Baleh', 26131, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '822/359/DISDIK-B19/BKT-200', '2009-09-15', '1259IV-AKWPK-1990', '1990-11-01', 'Pemerintah Propinsi', 1, '', 'APBD Kabupaten/Kota', 'Syafiah', 1, 'Austani', '195808211986031007', 'Tidak bekerja', '2009-11-01', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '476470950202000', 'INDONESIA', ''),
('195801181985121001', '6811574735', 'Zetri Zainal', 1, 'Batu Taba', '1958-01-18', '1374025104571989', '', '5450736639200002', 3, 2, '', 1, 'Jorong Tanah Nyariang', '0', '0', '', 'Batu Taba', 'Kec. Ampek Angkek', 26191, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '119/IV.E/KWPK-86', '1985-12-01', '3095/III/KWPK-98', '1989-09-01', 'Pemerintah Pusat', 1, '', 'APBD Kabupaten/Kota', 'Rukiah', 1, 'Meriza', '', 'Lainnya', '1987-02-01', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '476470786202000', 'INDONESIA', ''),
('196911131994122001', '11038361946', 'Zulfiwadris', 2, 'Bukittinggi', '1969-11-13', '1374025104571989', '', '7445747649300023', 3, 2, '', 1, 'baringin', '0', '0', '', 'Gadut', 'Kec. Tilatang Kamang', 0, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '81903/A2/C/1994', '1994-12-01', '3646/IV/Kwpk-1997', '1997-07-01', 'Pemerintah Propinsi', 1, '', 'APBN', 'Rosni', 1, 'Muhammad Syawal', '', '3/TNI/Polri', '1997-07-01', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '', 'INDONESIA', ''),
('197712282006042005', '9218814438', 'Zulvanisma', 2, 'Situjuh Batur,50Kota', '1977-12-28', '1374025104571989', '', '3560755657300033', 3, 2, '', 1, 'Jl.Khatib Sulaiman, Situjuh Batur', '0', '0', '', 'Situjuah Batua', 'Kec. Situjuah Limo Nagari', 26263, '0751461692', '081267771344', 'dankrez48@gmail.com', '', 1, '813/005-5D/BKD-2006', '2006-04-01', '813/005-5D/BKD-2006', '2006-04-01', 'Pemerintah Kab/Kota', 1, '', 'APBD Kabupaten/Kota', 'Hj. Zulbaidah Ham', 1, 'Satria Irandi', '', 'Peternak', '2007-08-01', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '476470836202000', 'INDONESIA', '');

-- --------------------------------------------------------

--
-- Table structure for table `rb_halaman`
--

CREATE TABLE `rb_halaman` (
  `id_halaman` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `judul_seo` varchar(255) NOT NULL,
  `isi_halaman` text NOT NULL,
  `username` varchar(50) NOT NULL,
  `status` enum('psb','journal') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_halaman`
--

INSERT INTO `rb_halaman` (`id_halaman`, `judul`, `judul_seo`, `isi_halaman`, `username`, `status`) VALUES
(1, 'Selamat Datang di Sistem Pendaftaran Siswa Baru', 'selamat-datang-di-sistem-pendaftaran-siswa-baru', 'Sistem PSB online atau sistem informasi aplikasi penerimaan siswa baru online merupakan produk layanan aplikasi perangkat lunak  yang online real time dan 100%   berbasis web. Sistem   ini   berusaha   memenuhi kebutuhan   masyarakat khususnya  bagi orangtua  dan  calon  siswa  untuk  dapat melaksanakan  pendaftaran  ke sekolah dengan  aman  dan  tertib  dengan menyediakan  fitur  otomasi  proses penerimaan  siswa  baru secara  langsung  menggunakan  media internet,  mulai  dari proses pendaftaran, proses seleksi, hingga pengumuman hasil penerimaan siswa secara langsung nyata melalui internet.\r\n\r\nYayasan lokomedia.web.id didirikan di Padang dengan Akte Notaris Leurentia Siti Nyoman tertanggal 6 Maret 1996.Pada tahun pertama ini dibukalah taman kanak-kanak dan plygroup dengan murid berjumlah 73 orang dan kampusnya berlokasi di jalan Thamrin No.22-25', 'admin', 'psb'),
(2, 'Prosedur Pendaftaran Siswa Baru', 'prosedur-pendaftaran-siswa-baru', 'Melakukan  pendaftaran secara online melalui website psb.dek.sch.id\nMembayar uang pendaftaran sebesar Rp 60.000,00 ke Rekening Sekolah :\nNo Rekening : xxxxxxxxxxxxxx\nAtas Nama : BPN 010 SMAK PADANG\nBRI UNIT PASAR BARU PADANG\n\n<b>Note : Bagi Bapak/Ibuk yang sudah melakukan pembayaran dan konfirmasi harap segera megirim pesan ke nomor 082384116431</b>\n\nUntuk Metode Tansfer.\ndengan format pesan : [jenis metode pembaran] [no_rekening] [nama anak/nama pesera] [nomor_konfirmasi]\nContoh Pesan Metode Transfer : Transfer 111112318923 Annisa Mardatilah QC401\n\nUntuk Metode Setoran.\nInvite/Add ID What\'sApp dengan nomor 081267771344\ndengan format pesan : Kirim foto bukti slip setoran dan nama anak/peserta serta nomor konfirmasi\nContoh Format Pesan Whatsapp : [foto bukti slip setor] Annisa Mardatillah QC401\n\nMenyerahkan berkas dan ketentuan sebagai berikut apabila calon siswa dinyatakan lulus tes online.\nFoto kopi  rapor yang sudah dilegalisasi dari semester I - IV (1 rangkap)\nMemperlihatkan rapor asli\nSehat jasmani dan rohani (diperiksa di  SMK SMAK)\nTidak Buta Warna (diperiksa di SMK SMAK Padang)\nPas foto  warna terbaru ukuran 2x3 sebanyak 2 lembar dan 3X4 sebanyak 3 lembar', 'admin', 'psb');

-- --------------------------------------------------------

--
-- Table structure for table `rb_identitas_sekolah`
--

CREATE TABLE `rb_identitas_sekolah` (
  `id_identitas_sekolah` int(5) NOT NULL,
  `nama_sekolah` varchar(255) NOT NULL,
  `npsn` varchar(50) NOT NULL,
  `nss` varchar(50) NOT NULL,
  `alamat_sekolah` text NOT NULL,
  `kode_pos` int(7) NOT NULL,
  `no_telpon` varchar(15) NOT NULL,
  `kelurahan` varchar(255) NOT NULL,
  `kecamatan` varchar(255) NOT NULL,
  `kabupaten_kota` varchar(255) NOT NULL,
  `provinsi` varchar(255) NOT NULL,
  `website` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_identitas_sekolah`
--

INSERT INTO `rb_identitas_sekolah` (`id_identitas_sekolah`, `nama_sekolah`, `npsn`, `nss`, `alamat_sekolah`, `kode_pos`, `no_telpon`, `kelurahan`, `kecamatan`, `kabupaten_kota`, `provinsi`, `website`, `email`) VALUES
(1, 'SMK BINA CENDEKIA CIREBON', '69766973', '', 'JL. KH. WAHID HASYIM MERTAPADAWETAN', 45181, '', 'MERTAPADAWETAN', 'ASTANAJAPURA', 'Cirebon', 'Jawa Barat', 'smkbinacendekiacirebon.sch.id', 'smkbinacendekia@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `rb_jadwal_pelajaran`
--

CREATE TABLE `rb_jadwal_pelajaran` (
  `kodejdwl` int(10) NOT NULL,
  `id_tahun_akademik` int(5) NOT NULL,
  `kode_kelas` varchar(10) NOT NULL,
  `kode_pelajaran` varchar(10) NOT NULL,
  `kode_ruangan` varchar(10) NOT NULL,
  `nip` varchar(30) NOT NULL,
  `paralel` varchar(10) NOT NULL,
  `jadwal_serial` varchar(10) NOT NULL,
  `jam_mulai` time NOT NULL,
  `jam_selesai` time NOT NULL,
  `hari` varchar(20) NOT NULL,
  `aktif` enum('Ya','Tidak') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_jadwal_pelajaran`
--

INSERT INTO `rb_jadwal_pelajaran` (`kodejdwl`, `id_tahun_akademik`, `kode_kelas`, `kode_pelajaran`, `kode_ruangan`, `nip`, `paralel`, `jadwal_serial`, `jam_mulai`, `jam_selesai`, `hari`, `aktif`) VALUES
(5, 20161, 'X.MIPA.1', 'MK02', 'R003', '195806161984000001', '', '', '23:00:00', '23:30:00', 'Senin', 'Ya'),
(13, 20161, 'X.MIPA.1', 'MK01', 'R003', '195704111980032004', '', '', '09:00:00', '11:30:00', 'Senin', 'Ya'),
(14, 20161, 'X.MIPA.1', 'MK03', 'R004', '195806161984032002', '', '', '08:00:00', '10:30:00', 'Selasa', 'Ya'),
(33, 20162, 'X.MIPA.1', 'MK15', 'R001', '195806161984000002', '00', '00', '08:00:00', '10:00:00', 'Senin', 'Ya');

-- --------------------------------------------------------

--
-- Table structure for table `rb_jawaban_essai`
--

CREATE TABLE `rb_jawaban_essai` (
  `id_jawaban_essai` int(5) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `id_pertanyaan_essai` int(10) NOT NULL,
  `jawaban_essai` text NOT NULL,
  `waktu_tugas` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_jawaban_essai`
--

INSERT INTO `rb_jawaban_essai` (`id_jawaban_essai`, `nisn`, `id_pertanyaan_essai`, `jawaban_essai`, `waktu_tugas`) VALUES
(1, '0000261141', 1, 'abdurrahman wahid (Gus Dur)', '2016-03-05 14:16:15'),
(2, '0000261141', 2, '1. Udin Sedunia\r\n2. Sopan Sopian\r\n3. Inul Daratista\r\n4. Angelina Sondak\r\n5. Ruhut Sitompul', '2016-03-05 14:16:11'),
(3, '0000261141', 3, 'Di Kota Padang, Sumatera Barat Kota Padang', '2016-03-05 14:16:08'),
(4, '0000261141', 6, 'Wr Supratman', '2016-03-05 14:16:04'),
(5, '0000240365', 10, '359', '2016-03-05 14:15:41'),
(6, '0000240365', 9, 'PRABOWO, S.Kom, M.Kom', '2016-03-05 14:15:51'),
(7, '9991268756', 10, 'Jawaban dari soal no 1..', '2016-03-09 03:39:36'),
(8, '9991268756', 9, 'Jawaban soal no 2,..', '2016-03-09 03:39:46');

-- --------------------------------------------------------

--
-- Table structure for table `rb_jawaban_objektif`
--

CREATE TABLE `rb_jawaban_objektif` (
  `id_jawaban_objektif` int(5) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `id_pertanyaan_objektif` int(10) NOT NULL,
  `jawaban` varchar(2) NOT NULL,
  `waktu_objektif` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_jawaban_objektif`
--

INSERT INTO `rb_jawaban_objektif` (`id_jawaban_objektif`, `nisn`, `id_pertanyaan_objektif`, `jawaban`, `waktu_objektif`) VALUES
(21, '0000261141', 5, 'a', '2016-03-05 14:16:54'),
(20, '0000261141', 1, 'b', '2016-03-05 14:16:51'),
(19, '0000261141', 2, 'c', '2016-03-05 14:16:48'),
(18, '0000240365', 6, 'a', '2016-03-05 14:22:49'),
(22, '0000240365', 8, 'e', '2016-03-05 14:16:40'),
(23, '9991268756', 8, 'a', '2016-03-09 03:39:51'),
(24, '9991268756', 6, 'b', '2016-03-09 03:39:51');

-- --------------------------------------------------------

--
-- Table structure for table `rb_jenis_kelamin`
--

CREATE TABLE `rb_jenis_kelamin` (
  `id_jenis_kelamin` int(5) NOT NULL,
  `jenis_kelamin` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_jenis_kelamin`
--

INSERT INTO `rb_jenis_kelamin` (`id_jenis_kelamin`, `jenis_kelamin`) VALUES
(1, 'Laki-laki'),
(2, 'Perempuan');

-- --------------------------------------------------------

--
-- Table structure for table `rb_jenis_ptk`
--

CREATE TABLE `rb_jenis_ptk` (
  `id_jenis_ptk` int(5) NOT NULL,
  `jenis_ptk` varchar(100) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_jenis_ptk`
--

INSERT INTO `rb_jenis_ptk` (`id_jenis_ptk`, `jenis_ptk`, `keterangan`) VALUES
(1, 'Tenaga Administrasi Sekolah', ''),
(2, 'Guru Mapel', ''),
(3, 'Guru BK', ''),
(4, 'Guru Kelas', '');

-- --------------------------------------------------------

--
-- Table structure for table `rb_journal_list`
--

CREATE TABLE `rb_journal_list` (
  `id_journal` int(10) NOT NULL,
  `kodejdwl` int(10) NOT NULL,
  `hari` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `jam_ke` varchar(50) NOT NULL,
  `materi` text NOT NULL,
  `keterangan` text NOT NULL,
  `waktu_input` datetime NOT NULL,
  `users` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_journal_list`
--

INSERT INTO `rb_journal_list` (`id_journal`, `kodejdwl`, `hari`, `tanggal`, `jam_ke`, `materi`, `keterangan`, `waktu_input`, `users`) VALUES
(1, 33, 'Jumat', '2016-07-08', '1', 'Memahami struktur dan kaidah teks cerita pendek, baik melalui lisan maupun tulisannn.', 'Sebagai pendidik kita tentunya harus mempersiapkan segala sesuatu yang berhubungan dengan administrasi untuk mengajar...dalam kesempatan ini kami akan mencoba membuat draft jurnal kelas', '2016-07-08 08:08:37', '195806161984000002'),
(2, 33, 'Jumat', '2016-07-08', '2', 'Menganalisis teks cerita pendek, baik melalui lisan maupun tulisane.', 'Jurnal pembelajaran harian merupakan salah satu perangkat pembelajaran yang diperlukan oleh guru guna mencatat pelaksanaan pembelajaran setiap hari. jurnal pembelajaran dapat membantu proses sejauh mana kita telah mengajar serta menghandle siapa saja murid/guru yang tidak masuk atau yang tidak mengikuti proses KBM.', '2016-07-08 09:11:24', '195806161984000002'),
(5, 33, 'Jumat', '2016-07-08', '3', 'Berikut ini merupakan contoh dari enkripsi RSA dan dekripsinya. Parameter yang digunakan disini berupa bilangan kecil.', 'RSA di bidang kriptografi adalah sebuah algoritma pada enkripsi public key. RSA merupakan algoritma pertama yang cocok untuk digital signature seperti halnya ekripsi, dan salah satu yang paling maju dalam bidang kriptografi public key. RSA masih digunakan secara luas dalam protokol electronic commerce, dan dipercaya dalam mengamnkan dengan menggunakan kunci yang cukup panjang.', '2016-07-08 10:33:39', '1');

-- --------------------------------------------------------

--
-- Table structure for table `rb_jurusan`
--

CREATE TABLE `rb_jurusan` (
  `kode_jurusan` varchar(10) NOT NULL,
  `nama_jurusan` varchar(255) NOT NULL,
  `nama_jurusan_en` varchar(255) NOT NULL,
  `bidang_keahlian` varchar(150) NOT NULL,
  `kompetensi_umum` varchar(150) NOT NULL,
  `kompetensi_khusus` varchar(150) NOT NULL,
  `pejabat` varchar(100) NOT NULL,
  `jabatan` varchar(100) NOT NULL,
  `keterangan` text NOT NULL,
  `aktif` enum('Ya','Tidak') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_jurusan`
--

INSERT INTO `rb_jurusan` (`kode_jurusan`, `nama_jurusan`, `nama_jurusan_en`, `bidang_keahlian`, `kompetensi_umum`, `kompetensi_khusus`, `pejabat`, `jabatan`, `keterangan`, `aktif`) VALUES
('RPL', 'REKAYASA PERANGKAT LUNAK', '', '', 'Menguasai Semua Bidang Keahlian', 'Menguasai Semua Bidang Keahlian', 'Hasan Bin Mail', 'Ketua Jurusan', '', 'Ya'),
('TABUS', 'TATA BUSANA', '', '', '', '', '', '', '', 'Ya'),
('ASKEP', 'ASISTEN KEPERAWATAN', '', 'Kesehatan', '', '', '', '', '', 'Ya'),
('TBO', 'TEKNIK BODI OTOMOTIF', '', '', '', '', '', '', '', 'Ya');

-- --------------------------------------------------------

--
-- Table structure for table `rb_kategori_elearning`
--

CREATE TABLE `rb_kategori_elearning` (
  `id_kategori_elearning` int(5) NOT NULL,
  `nama_kategori_elearning` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_kategori_elearning`
--

INSERT INTO `rb_kategori_elearning` (`id_kategori_elearning`, `nama_kategori_elearning`) VALUES
(1, 'Bahan'),
(2, 'Tugas');

-- --------------------------------------------------------

--
-- Table structure for table `rb_kategori_quiz_ujian`
--

CREATE TABLE `rb_kategori_quiz_ujian` (
  `id_kategori_quiz_ujian` int(5) NOT NULL,
  `kategori_quiz_ujian` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_kategori_quiz_ujian`
--

INSERT INTO `rb_kategori_quiz_ujian` (`id_kategori_quiz_ujian`, `kategori_quiz_ujian`) VALUES
(1, 'Quiz Online'),
(2, 'Ujian Online');

-- --------------------------------------------------------

--
-- Table structure for table `rb_kehadiran`
--

CREATE TABLE `rb_kehadiran` (
  `kode_kehadiran` varchar(5) NOT NULL,
  `nama_kehadiran` varchar(20) NOT NULL,
  `nilai` int(2) NOT NULL,
  `bobot` varchar(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_kehadiran`
--

INSERT INTO `rb_kehadiran` (`kode_kehadiran`, `nama_kehadiran`, `nilai`, `bobot`) VALUES
('H', 'Hadir', 1, '1'),
('I', 'Izin', 1, '0.5'),
('S', 'Sakit', 1, '0.5'),
('A', 'Alpa', 0, '0');

-- --------------------------------------------------------

--
-- Table structure for table `rb_kelas`
--

CREATE TABLE `rb_kelas` (
  `kode_kelas` varchar(10) NOT NULL,
  `nip` varchar(30) NOT NULL,
  `kode_jurusan` varchar(10) NOT NULL,
  `kode_ruangan` varchar(10) NOT NULL,
  `nama_kelas` varchar(20) NOT NULL,
  `aktif` enum('Ya','Tidak') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_kelas`
--

INSERT INTO `rb_kelas` (`kode_kelas`, `nip`, `kode_jurusan`, `kode_ruangan`, `nama_kelas`, `aktif`) VALUES
('RPL 01', '195704111980032004', 'RPL', 'R003', 'X RPL 1', 'Tidak');

-- --------------------------------------------------------

--
-- Table structure for table `rb_kelompok_mata_pelajaran`
--

CREATE TABLE `rb_kelompok_mata_pelajaran` (
  `id_kelompok_mata_pelajaran` int(5) NOT NULL,
  `jenis_kelompok_mata_pelajaran` varchar(50) NOT NULL,
  `nama_kelompok_mata_pelajaran` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_kelompok_mata_pelajaran`
--

INSERT INTO `rb_kelompok_mata_pelajaran` (`id_kelompok_mata_pelajaran`, `jenis_kelompok_mata_pelajaran`, `nama_kelompok_mata_pelajaran`) VALUES
(1, 'A', 'Kelompok A (Umum)'),
(2, 'B', 'Kelompok B (Umum)'),
(3, 'C', 'Kelompok C (Peminatan)');

-- --------------------------------------------------------

--
-- Table structure for table `rb_kompetensi_dasar`
--

CREATE TABLE `rb_kompetensi_dasar` (
  `id_kompetensi_dasar` int(10) NOT NULL,
  `kodejdwl` int(10) NOT NULL,
  `ranah` enum('pengetahuan','keterampilan','sikap') NOT NULL,
  `kompetensi_dasar` text NOT NULL,
  `waktu_input` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_kompetensi_dasar`
--

INSERT INTO `rb_kompetensi_dasar` (`id_kompetensi_dasar`, `kodejdwl`, `ranah`, `kompetensi_dasar`, `waktu_input`) VALUES
(1, 33, 'pengetahuan', 'Memahami struktur dan kaidah teks cerita pendek, baik melalui lisan maupun tulisannn.', '2016-07-03 08:10:13'),
(2, 33, 'keterampilan', 'Menganalisis teks cerita pendek, baik melalui lisan maupun tulisane.', '2016-07-03 09:44:36');

-- --------------------------------------------------------

--
-- Table structure for table `rb_kurikulum`
--

CREATE TABLE `rb_kurikulum` (
  `kode_kurikulum` int(5) NOT NULL,
  `nama_kurikulum` varchar(255) NOT NULL,
  `status_kurikulum` enum('Ya','Tidak') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_kurikulum`
--

INSERT INTO `rb_kurikulum` (`kode_kurikulum`, `nama_kurikulum`, `status_kurikulum`) VALUES
(1, 'Kurikulum 2013', 'Ya'),
(2, 'Kurikulum 2016', 'Tidak');

-- --------------------------------------------------------

--
-- Table structure for table `rb_mata_pelajaran`
--

CREATE TABLE `rb_mata_pelajaran` (
  `kode_pelajaran` varchar(20) NOT NULL,
  `id_kelompok_mata_pelajaran` int(3) NOT NULL,
  `kode_jurusan` varchar(10) NOT NULL,
  `nip` varchar(30) NOT NULL,
  `kode_kurikulum` int(5) NOT NULL,
  `namamatapelajaran` varchar(150) NOT NULL,
  `namamatapelajaran_en` varchar(150) NOT NULL,
  `tingkat` varchar(10) NOT NULL,
  `kompetensi_umum` text NOT NULL,
  `kompetensi_khusus` text NOT NULL,
  `jumlah_jam` varchar(20) NOT NULL,
  `sesi` varchar(50) NOT NULL,
  `urutan` int(3) NOT NULL,
  `aktif` enum('Ya','Tidak') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_mata_pelajaran`
--

INSERT INTO `rb_mata_pelajaran` (`kode_pelajaran`, `id_kelompok_mata_pelajaran`, `kode_jurusan`, `nip`, `kode_kurikulum`, `namamatapelajaran`, `namamatapelajaran_en`, `tingkat`, `kompetensi_umum`, `kompetensi_khusus`, `jumlah_jam`, `sesi`, `urutan`, `aktif`) VALUES
('MK01', 1, 'MIPA', '195704111980032004', 1, 'Bahasa Indonesia', '', '2 (SLTA)', 'Isikan Nama Kompetensi Umum', 'Isikan Nama Kompetensi Khusus', '2', '', 0, 'Ya'),
('MK02', 1, 'IPS', '195806161984000001', 1, 'Matematika', '', '2 (SLTA)', 'Isikan Nama Kompetensi Umum', 'Isikan Nama Kompetensi Khusus', '2', '', 0, 'Ya'),
('MK03', 2, 'MIPA', '195806161984032002', 1, 'Bahasa Inggris', '', '2 (SLTA)', 'Isikan Nama Kompetensi Umum', 'Isikan Nama Kompetensi Khusus', '2', '', 0, 'Ya'),
('MK05', 1, 'MIPA', '195806161984000001', 1, 'Aritmatika Dasar', '', '2 (SLTA)', 'Isikan Nama Kompetensi Umum', 'Isikan Nama Kompetensi Khusus', '2', '', 0, 'Ya'),
('MK04', 3, 'MIPA', '196209051987031007', 1, 'Kalkulus', '', '2 (SLTA)', 'Isikan Nama Kompetensi Umum', 'Isikan Nama Kompetensi Khusus', '2', '', 0, 'Ya'),
('MK06', 3, 'MIPA', '195806161984000016', 1, 'Pengantar Teknologi', '', '2 (SLTA)', 'Isikan Nama Kompetensi Umum', 'Isikan Nama Kompetensi Khusus', '2', '', 0, 'Ya'),
('MK07', 1, 'IPS', '195901241986032002', 1, 'Sejarah Indonesia', '', '2 (SLTA)', 'Isikan Nama Kompetensi Umum', 'Isikan Nama Kompetensi Khusus', '2', '', 0, 'Ya'),
('MK08', 1, 'IPS', '196703011992031006', 1, 'Pendidikan Pancasila', '', '2 (SLTA)', 'Isikan Nama Kompetensi Umum', 'Isikan Nama Kompetensi Khusus', '2', '', 0, 'Ya'),
('MK09', 1, 'IPS', '196812211997022002', 1, 'Pendidikan Agama', '', '2 (SLTA)', 'Isikan Nama Kompetensi Umum', 'Isikan Nama Kompetensi Khusus', '2', '', 0, 'Ya'),
('MK10', 2, 'IPS', '196312041987031000', 1, 'Seni Budaya', '', '2 (SLTA)', 'Isikan Nama Kompetensi Umum', 'Isikan Nama Kompetensi Khusus', '2', '', 0, 'Ya'),
('MK11', 2, 'IPS', '198406142009012003', 1, 'Pendidikan Olahraga', '', '2 (SLTA)', 'Isikan Nama Kompetensi Umum', 'Isikan Nama Kompetensi Khusus', '2', '', 0, 'Ya'),
('MK12', 2, 'MIPA', '198012112005012005', 1, 'Prakarya Kewirausahaan', '', '2 (SLTA)', 'Isikan Nama Kompetensi Umum', 'Isikan Nama Kompetensi Khusus', '2', '', 0, 'Ya'),
('MK13', 3, 'IPS', '196305141990032003', 1, 'Geografi', '', '2 (SLTA)', 'Isikan Nama Kompetensi Umum', 'Isikan Nama Kompetensi Khusus', '2', '', 0, 'Ya'),
('MK14', 3, 'MIPA', '198312252009022007', 1, 'Ekonomi', '', '2 (SLTA)', 'Isikan Nama Kompetensi Umum', 'Isikan Nama Kompetensi Khusus', '2', '', 0, 'Ya'),
('MK15', 3, 'IPS', '195806161984000002', 1, 'Web Programming', '', '3 (SLTA)', 'Mengenal teknik Pembuatan Web', 'Menguasai Bahasa Pemrograman Web', '3', '', 0, 'Ya');

-- --------------------------------------------------------

--
-- Table structure for table `rb_menu`
--

CREATE TABLE `rb_menu` (
  `id_menu` int(5) NOT NULL,
  `id_parent` int(5) NOT NULL DEFAULT 0,
  `nama_menu` varchar(30) NOT NULL,
  `icon` varchar(20) NOT NULL,
  `link` varchar(100) NOT NULL,
  `aktif` enum('Ya','Tidak') NOT NULL DEFAULT 'Ya',
  `urutan` int(3) NOT NULL,
  `status` enum('psb','journal') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_menu`
--

INSERT INTO `rb_menu` (`id_menu`, `id_parent`, `nama_menu`, `icon`, `link`, `aktif`, `urutan`, `status`) VALUES
(1, 0, 'Beranda', 'home', 'index.mu', 'Ya', 1, 'psb'),
(2, 0, 'Aturan & Prosedur', 'th-list', 'halaman-prosedur-pendaftaran-siswa-baru.mu', 'Ya', 2, 'psb'),
(3, 0, 'Jadwal Pelaksanaan', 'calendar', '#', 'Ya', 3, 'psb'),
(4, 0, 'Alur Pendaftaran', 'retweet', '#', 'Ya', 4, 'psb');

-- --------------------------------------------------------

--
-- Table structure for table `rb_nilai_extrakulikuler`
--

CREATE TABLE `rb_nilai_extrakulikuler` (
  `id_nilai_extrakulikuler` int(10) NOT NULL,
  `id_tahun_akademik` int(5) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `kode_kelas` varchar(10) NOT NULL,
  `kegiatan` text NOT NULL,
  `nilai` float NOT NULL,
  `deskripsi` text NOT NULL,
  `user_akses` varchar(50) NOT NULL,
  `waktu_input` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_nilai_extrakulikuler`
--

INSERT INTO `rb_nilai_extrakulikuler` (`id_nilai_extrakulikuler`, `id_tahun_akademik`, `nisn`, `kode_kelas`, `kegiatan`, `nilai`, `deskripsi`, `user_akses`, `waktu_input`) VALUES
(1, 20161, '9991268756', 'X.MIPA.1', 'Kegiatan Mandi-mandii', 87, 'Kegiatan mandi-mandi dilaksanakan di lubuak minturun bersamaan dengan perayaan ulang tahun sekolah.', '1', '2016-04-29 10:11:10'),
(2, 20161, '9991268756', 'X.MIPA.1', 'Kegiatan Bakar ayam.', 95, 'Memiliki keterampilan Mengidentifikasi, menyajikan model matematika dan menyelesaikan masalah keseharian.				', '1', '2016-04-29 07:08:28');

-- --------------------------------------------------------

--
-- Table structure for table `rb_nilai_keterampilan`
--

CREATE TABLE `rb_nilai_keterampilan` (
  `id_nilai_keterampilan` int(10) NOT NULL,
  `kodejdwl` int(10) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `kd` varchar(5) NOT NULL,
  `nilai1` float NOT NULL,
  `nilai2` float NOT NULL,
  `nilai3` float NOT NULL,
  `nilai4` float NOT NULL,
  `nilai5` float NOT NULL,
  `nilai6` float NOT NULL,
  `deskripsi` text NOT NULL,
  `user_akses` varchar(50) NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_nilai_keterampilan`
--

INSERT INTO `rb_nilai_keterampilan` (`id_nilai_keterampilan`, `kodejdwl`, `nisn`, `kd`, `nilai1`, `nilai2`, `nilai3`, `nilai4`, `nilai5`, `nilai6`, `deskripsi`, `user_akses`, `waktu`) VALUES
(1, 5, '9991268756', '4.1', 75, 70, 78, 85, 78, 72, 'Mengabstraksi teks cerita pendek, baik secara lisan maupun tulisan ', '1', '2016-04-11 18:26:32'),
(2, 5, '9998218087', '1', 88, 90, 98, 96, 0, 0, '', '1', '2016-04-11 18:26:32'),
(3, 5, '9998215055', '1', 67, 98, 76, 90, 0, 0, '', '1', '2016-04-11 18:26:32'),
(4, 5, '9998214335', '1', 87, 88, 0, 0, 0, 0, '', '1', '2016-04-11 18:26:32'),
(5, 5, '9998214151', '1', 89, 0, 0, 90, 0, 0, '', '1', '2016-04-11 18:26:32'),
(6, 5, '9997515863', '1', 89, 80, 88, 0, 0, 0, '', '1', '2016-04-11 18:26:32'),
(7, 5, '9991268756', '4.2', 87, 90, 94, 93, 88, 83, 'Mengabstraksi teks cerita ulang, baik secara lisan maupun tulisan ', '1', '2016-04-14 08:03:27'),
(8, 5, '9998218087', '2', 88, 93, 90, 99, 0, 0, '', '1', '2016-04-14 08:03:27'),
(9, 5, '9998215055', '2', 78, 87, 89, 79, 0, 0, '', '1', '2016-04-14 08:03:27'),
(10, 5, '9991268756', '4.3', 89, 89, 98, 95, 79, 77, 'Mengabstraksi teks pantun, baik secara lisan maupun tulisan', '1', '2016-04-14 08:03:57'),
(11, 5, '9998218087', '3', 78, 87, 89, 88, 0, 0, '', '1', '2016-04-14 08:03:57'),
(12, 5, '9998215055', '3', 70, 78, 87, 90, 0, 0, '', '1', '2016-04-14 08:03:57'),
(13, 5, '9991268756', '4.4', 90, 89, 87, 90, 85, 90, 'Menginterpretasi makna teks pantun, baik secara lisan maupun tulisan ', '1', '2016-04-14 08:04:20'),
(14, 5, '9998218087', '4', 87, 88, 83, 89, 0, 0, '', '1', '2016-04-14 08:04:20'),
(15, 5, '9991268756', '4.5', 99, 87, 98, 95, 96, 91, 'Menyunting teks cerita ulang, sesuai dengan struktur dan kaidah teks baik secara lisan maupun tulisan', '1', '2016-04-14 08:04:36');

-- --------------------------------------------------------

--
-- Table structure for table `rb_nilai_pengetahuan`
--

CREATE TABLE `rb_nilai_pengetahuan` (
  `id_nilai_pengetahuan` int(10) NOT NULL,
  `kodejdwl` int(10) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `kd` varchar(5) NOT NULL,
  `nilai1` float NOT NULL,
  `nilai2` float NOT NULL,
  `nilai3` float NOT NULL,
  `nilai4` float NOT NULL,
  `nilai5` float NOT NULL,
  `deskripsi` text NOT NULL,
  `user_akses` varchar(50) NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_nilai_pengetahuan`
--

INSERT INTO `rb_nilai_pengetahuan` (`id_nilai_pengetahuan`, `kodejdwl`, `nisn`, `kd`, `nilai1`, `nilai2`, `nilai3`, `nilai4`, `nilai5`, `deskripsi`, `user_akses`, `waktu`) VALUES
(1, 5, '9991268756', '4.1', 89, 90, 89, 95, 90, 'Memahami struktur dan kaidah teks cerita pendek, baik melalui lisan maupun tulisan ', '1', '2016-04-11 18:26:32'),
(2, 5, '9998218087', '4.1', 90, 88, 90, 98, 96, 'Menganalisis teks cerita pendek, baik melalui lisan maupun tulisan ', '1', '2016-04-11 18:26:32'),
(3, 5, '9998215055', '', 98, 67, 98, 76, 90, '', '1', '2016-04-11 18:26:32'),
(4, 5, '9998214335', '', 88, 87, 88, 0, 0, '', '1', '2016-04-11 18:26:32'),
(5, 5, '9998214151', '', 0, 89, 0, 0, 90, '', '1', '2016-04-11 18:26:32'),
(6, 5, '9997515863', '', 80, 89, 80, 88, 0, '', '1', '2016-04-11 18:26:32'),
(7, 5, '9991268756', '4.2', 90, 87, 90, 94, 94, 'Membandingkan teks cerita pendek, baik melalui lisan maupun tulisan', '1', '2016-04-14 08:03:27'),
(8, 5, '9998218087', '4.2', 93, 88, 93, 90, 99, 'Menganalisis teks cerita ulang, baik melalui lisan maupun tulisan ', '1', '2016-04-14 08:03:27'),
(9, 5, '9998215055', '', 87, 78, 87, 89, 79, '', '1', '2016-04-14 08:03:27'),
(10, 5, '9991268756', '4.3', 89, 89, 89, 98, 95, 'Menganalisis teks pantun, baik melalui lisan maupun tulisan ', '1', '2016-04-14 08:03:57'),
(11, 5, '9998218087', '', 87, 78, 87, 89, 88, '', '1', '2016-04-14 08:03:57'),
(12, 5, '9998215055', '', 78, 70, 78, 87, 90, '', '1', '2016-04-14 08:03:57'),
(13, 5, '9991268756', '4.4', 89, 90, 89, 87, 90, 'Membandingkan teks cerita ulang, baik melalui lisan maupun tulisan', '1', '2016-04-14 08:04:20'),
(14, 5, '9998218087', '', 88, 87, 88, 83, 89, '', '1', '2016-04-14 08:04:20'),
(15, 5, '9991268756', '4.5', 87, 90, 87, 78, 90, 'Menganalisis teks cerita ulang, baik melalui lisan maupun tulisan ', '1', '2016-04-14 08:04:36'),
(16, 5, '9998218087', '', 98, 99, 98, 89, 90, 'Menganalisis teks pantun, baik melalui lisan maupun tulisan', '1', '2016-04-14 08:04:36'),
(18, 5, '9991268756', '4.6', 90, 89, 90, 98, 78, 'Memahami struktur dan kaidah teks cerita pendek, baik melalui lisan maupun tulisan', '1', '2016-04-30 10:50:43');

-- --------------------------------------------------------

--
-- Table structure for table `rb_nilai_pertanyaan_essai`
--

CREATE TABLE `rb_nilai_pertanyaan_essai` (
  `id_nilai_pertanyaan_essai` int(5) NOT NULL,
  `id_quiz_ujian` int(5) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `nilai_essai` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_nilai_pertanyaan_essai`
--

INSERT INTO `rb_nilai_pertanyaan_essai` (`id_nilai_pertanyaan_essai`, `id_quiz_ujian`, `nisn`, `nilai_essai`) VALUES
(1, 1, '0000261141', 80),
(2, 4, '0000240365', 70),
(4, 4, '9991268756', 80);

-- --------------------------------------------------------

--
-- Table structure for table `rb_nilai_prestasi`
--

CREATE TABLE `rb_nilai_prestasi` (
  `id_nilai_prestasi` int(10) NOT NULL,
  `id_tahun_akademik` int(5) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `kode_kelas` varchar(10) NOT NULL,
  `jenis_kegiatan` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `user_akses` varchar(50) NOT NULL,
  `waktu_input` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_nilai_prestasi`
--

INSERT INTO `rb_nilai_prestasi` (`id_nilai_prestasi`, `id_tahun_akademik`, `nisn`, `kode_kelas`, `jenis_kegiatan`, `keterangan`, `user_akses`, `waktu_input`) VALUES
(2, 20161, '9991268756', 'X.MIPA.1', 'Kegiatan Jalan-jalan sore', 'Memiliki keterampilan merencanakan dan melaksanakan percobaan interferensi gelombang cahaya 				', '1', '2016-04-29 08:09:42');

-- --------------------------------------------------------

--
-- Table structure for table `rb_nilai_sikap`
--

CREATE TABLE `rb_nilai_sikap` (
  `id_nilai_sikap` int(10) NOT NULL,
  `kodejdwl` int(10) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `positif` text NOT NULL,
  `negatif` text NOT NULL,
  `deskripsi` text NOT NULL,
  `status` enum('spiritual','sosial') NOT NULL,
  `user_akses` varchar(50) NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_nilai_sikap`
--

INSERT INTO `rb_nilai_sikap` (`id_nilai_sikap`, `kodejdwl`, `nisn`, `positif`, `negatif`, `deskripsi`, `status`, `user_akses`, `waktu`) VALUES
(1, 5, '9999152999', 'Selalu bersyukur dan selalu berdoa sebelum melakukan kegiatan serta memiliki toleran pada agama yang berbeda', 'Ketaatan beribadah mulai berkembang', 'Selalu bersyukur dan selalu berdoa sebelum melakukan kegiatan serta memiliki toleran pada agama yang berbeda; ketaatan beribadah mulai berkembang', 'spiritual', '1', '2016-04-18 16:38:53'),
(2, 5, '9998218087', 'Nilai Positif,..', 'Nilai Negatif,..', 'Deskripsi Nilai Sikap,..', 'spiritual', '1', '2016-04-18 16:38:53'),
(3, 5, '9999152999', 'Nilai Sosial Posisitf,..', 'Nilai Sosial Negatif,..', 'Nilai Deskripsi Sosial,..', 'sosial', '1', '2016-04-18 16:39:53'),
(4, 5, '9998218087', 'Nilai Sosial Posisitf 2,..', 'Nilai Sosial Negatif 2,..', 'Nilai Deskripsi Sosial 2,..', 'sosial', '1', '2016-04-18 16:39:53'),
(5, 5, '9991268756', 'Nilai Positif,..', 'Nilai Negatif,..', 'Deskripsi Nilai Sikap,..', 'spiritual', '1', '2016-04-29 20:12:48'),
(6, 5, '0151379251', 'Selalu bersyukur dan selalu berdoa sebelum melakukan kegiatan serta memiliki toleran pada agama yang berbeda', 'Ketaatan beribadah mulai berkembang', 'Selalu bersyukur dan selalu berdoa sebelum melakukan kegiatan serta memiliki toleran pada agama yang berbeda; ketaatan beribadah mulai berkembang', 'spiritual', '1', '2016-04-29 20:12:48'),
(7, 5, '9991268756', 'Nilai Positif,..', 'Nilai Negatif,..', 'Deskripsi Nilai Sikap,..', 'spiritual', '1', '2016-04-29 20:13:05'),
(8, 5, '0151379251', 'Selalu bersyukur dan selalu berdoa sebelum melakukan kegiatan serta memiliki toleran pada agama yang berbeda', 'Ketaatan beribadah mulai berkembang', 'Selalu bersyukur dan selalu berdoa sebelum melakukan kegiatan serta memiliki toleran pada agama yang berbeda; ketaatan beribadah mulai berkembang', 'spiritual', '1', '2016-04-29 20:13:05'),
(9, 5, '9998218087', 'Nilai Positif,..', 'Nilai Negatif,..', 'Deskripsi Nilai Sikap,..', 'spiritual', '1', '2016-04-29 20:13:05'),
(10, 5, '9991268756', 'Nilai Positif,..', 'Nilai Negatif,..', 'Deskripsi Nilai Sikap,..', 'spiritual', '1', '2016-04-29 20:13:34'),
(11, 5, '0151379251', 'Selalu bersyukur dan selalu berdoa sebelum melakukan kegiatan serta memiliki toleran pada agama yang berbeda', 'Ketaatan beribadah mulai berkembang', 'Selalu bersyukur dan selalu berdoa sebelum melakukan kegiatan serta memiliki toleran pada agama yang berbeda; ketaatan beribadah mulai berkembang', 'spiritual', '1', '2016-04-29 20:13:34'),
(12, 5, '9998218087', 'Isi dengan Nilai Positif,..', 'Isi dengan Nilai Negatif,..', 'Deskripsi Nilai Sikap,..', 'spiritual', '1', '2016-04-29 20:13:34'),
(13, 5, '9999152999', 'Selalu bersyukur dan selalu berdoa sebelum melakukan kegiatan serta memiliki toleran pada agama yang berbeda', 'Ketaatan beribadah mulai berkembang', 'Selalu bersyukur dan selalu berdoa sebelum melakukan kegiatan serta memiliki toleran pada agama yang berbeda; ketaatan beribadah mulai berkembang', 'spiritual', '1', '2016-04-29 20:13:34'),
(14, 5, '9991268756', 'Isi dengan Nilai Sosial Posisitf 2,..', 'Isi dengan Nilai Sosial Negatif 2,..', 'Isi dengan Nilai Deskripsi Sosial 2,..', 'sosial', '1', '2016-04-29 20:14:07'),
(15, 5, '9998218087', 'Nilai Sosial Posisitf 2,..', 'Nilai Sosial Negatif 2,..', '', 'sosial', '1', '2016-04-29 20:14:07'),
(16, 5, '9999152999', 'Nilai Sosial Posisitf,..', 'Nilai Sosial Negatif,..', 'Nilai Deskripsi Sosial,..', 'sosial', '1', '2016-04-29 20:14:07');

-- --------------------------------------------------------

--
-- Table structure for table `rb_nilai_sikap_semester`
--

CREATE TABLE `rb_nilai_sikap_semester` (
  `id_nilai_sikap_semester` int(10) NOT NULL,
  `id_tahun_akademik` int(5) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `kode_kelas` varchar(10) NOT NULL,
  `spiritual_predikat` varchar(2) NOT NULL,
  `spiritual_deskripsi` text NOT NULL,
  `sosial_predikat` varchar(2) NOT NULL,
  `sosial_deskripsi` text NOT NULL,
  `user_akses` varchar(50) NOT NULL,
  `waktu_input` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_nilai_sikap_semester`
--

INSERT INTO `rb_nilai_sikap_semester` (`id_nilai_sikap_semester`, `id_tahun_akademik`, `nisn`, `kode_kelas`, `spiritual_predikat`, `spiritual_deskripsi`, `sosial_predikat`, `sosial_deskripsi`, `user_akses`, `waktu_input`) VALUES
(1, 20161, '9991268756', 'X.MIPA.1', 'A', 'Pertahankan Nilai anda,..', 'B', 'Tingkatkan Nilai anda,..', '1', '2016-04-28 10:10:16'),
(2, 20161, '0151379251', 'X.MIPA.1', 'C', 'Tolong Perbaiki Sikap anda,..', 'D', 'Anda Tidak Berutak,..', '1', '2016-04-28 10:10:16'),
(3, 20161, '0004107204', 'X.MIPA.1', 'A', 'Pertahankan Nilai anda,..', 'C', 'Tolong Perbaiki Sikap anda,..', '1', '2016-04-28 10:10:50');

-- --------------------------------------------------------

--
-- Table structure for table `rb_nilai_uts`
--

CREATE TABLE `rb_nilai_uts` (
  `id_nilai_uts` int(10) NOT NULL,
  `kodejdwl` int(10) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `angka_pengetahuan` float NOT NULL,
  `deskripsi_pengetahuan` text NOT NULL,
  `angka_keterampilan` float NOT NULL,
  `deskripsi_keterampilan` text NOT NULL,
  `waktu_input_uts` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_nilai_uts`
--

INSERT INTO `rb_nilai_uts` (`id_nilai_uts`, `kodejdwl`, `nisn`, `angka_pengetahuan`, `deskripsi_pengetahuan`, `angka_keterampilan`, `deskripsi_keterampilan`, `waktu_input_uts`) VALUES
(1, 5, '9991268756', 85, '', 90, '', '2016-04-15 17:54:05'),
(2, 5, '9998218087', 74, '', 83, '', '2016-04-15 17:54:05'),
(3, 13, '9999152999', 89, '', 90, '', '2016-04-21 18:52:57'),
(4, 14, '9999152999', 85, '', 79, '', '2016-04-21 18:53:14');

-- --------------------------------------------------------

--
-- Table structure for table `rb_pertanyaan_essai`
--

CREATE TABLE `rb_pertanyaan_essai` (
  `id_pertanyaan_essai` int(11) NOT NULL,
  `id_quiz_ujian` int(5) NOT NULL,
  `pertanyaan_essai` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_pertanyaan_essai`
--

INSERT INTO `rb_pertanyaan_essai` (`id_pertanyaan_essai`, `id_quiz_ujian`, `pertanyaan_essai`) VALUES
(1, 1, 'Siapakah Nama Presiden ke 5 Indonesia ?'),
(2, 1, 'Sebutkan Nama-nama Pahlawan Revolusi ?'),
(3, 1, 'Dimanakah Terjadinya Perjanjian Linggarjati ?'),
(5, 2, 'Sebutkan Arti Sila Ke 2 ?'),
(6, 2, 'Siapa Nama Pencipta Lagu Indonesia Raya ?'),
(9, 4, 'Siapa Nama Kepa Sekolah Kita ?'),
(10, 4, 'Berapakah Hasil 234 + 125 ?'),
(11, 5, 'kbkbkjbkjbkbk');

-- --------------------------------------------------------

--
-- Table structure for table `rb_pertanyaan_objektif`
--

CREATE TABLE `rb_pertanyaan_objektif` (
  `id_pertanyaan_objektif` int(11) NOT NULL,
  `id_quiz_ujian` int(11) NOT NULL,
  `pertanyaan_objektif` text NOT NULL,
  `jawab_a` varchar(255) NOT NULL,
  `jawab_b` varchar(255) NOT NULL,
  `jawab_c` varchar(255) NOT NULL,
  `jawab_d` varchar(255) NOT NULL,
  `jawab_e` varchar(255) NOT NULL,
  `kunci_jawaban` varchar(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_pertanyaan_objektif`
--

INSERT INTO `rb_pertanyaan_objektif` (`id_pertanyaan_objektif`, `id_quiz_ujian`, `pertanyaan_objektif`, `jawab_a`, `jawab_b`, `jawab_c`, `jawab_d`, `jawab_e`, `kunci_jawaban`) VALUES
(1, 1, 'Gubernur Tertua di Sumbar ?', 'Udin Sedunia', 'Saipul Jamil', 'Roma Irama', 'Fauzi Bahar', '', 'd'),
(2, 1, 'Nama-nama Pahlawan Indonesia ?', 'PRABOWO', 'Taufik Hidayat', 'Ahmad Yani', 'Jokowi', '', 'c'),
(3, 1, 'Dimana Terjadinya Pembunuhan Sukarno ?', 'Padang', 'Payakumbuh', 'Bukit Tinggi', 'Semua Benar', '', 'a'),
(5, 1, 'Sebutkan Arti Sila Ke 2 ?', 'Keadilan Bagi Indonedia', 'Kerakyatan yang dipimpin Ndeso', 'Berjuang Untuk Jadi Lebih Baik', 'Kemanusiaan yang adil dan Beradap', '', 'd'),
(6, 4, 'Siapa Nama Pencipta Lagu Indonesia Raya ?', 'Dewiit Safitri', 'Ahmad Dani', 'Aura Kasih', 'Wr.Supratman', '', 'd'),
(8, 4, 'Siapakah nama Presiden ke 2 Indonesia ?', 'Joko Widodo', 'Susilo Bambang Yudoyono', 'Abdulrahman Wahid', 'Megawati', 'Soeharto', 'e');

-- --------------------------------------------------------

--
-- Table structure for table `rb_pertanyaan_penilaian`
--

CREATE TABLE `rb_pertanyaan_penilaian` (
  `id_pertanyaan_penilaian` int(5) NOT NULL,
  `pertanyaan` varchar(255) NOT NULL,
  `status` enum('diri','teman') NOT NULL,
  `waktu_input` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_pertanyaan_penilaian`
--

INSERT INTO `rb_pertanyaan_penilaian` (`id_pertanyaan_penilaian`, `pertanyaan`, `status`, `waktu_input`) VALUES
(1, 'Bagaimana kenyamanan anda di sekolah ini pada |namamatapelajaran| ?', 'diri', '2016-07-03 04:17:29'),
(2, 'Bagaimana kenyamanan anda tehadap teman di sekolah ini ?', 'diri', '2016-07-03 08:12:17'),
(4, 'Apa perbuatan jahat yang pernah teman anda ini lakukan ?', 'teman', '2016-07-08 05:08:10'),
(5, 'Apakah dia teman yang baik?', 'teman', '2016-07-08 08:12:25');

-- --------------------------------------------------------

--
-- Table structure for table `rb_pertanyaan_penilaian_jawab`
--

CREATE TABLE `rb_pertanyaan_penilaian_jawab` (
  `id_pertanyaan_penilaian_jawab` int(10) NOT NULL,
  `id_pertanyaan_penilaian` int(10) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `nisn_teman` varchar(20) NOT NULL,
  `jawaban` text NOT NULL,
  `status` enum('diri','teman') NOT NULL,
  `kode_kelas` varchar(10) NOT NULL,
  `waktu_jawab` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_pertanyaan_penilaian_jawab`
--

INSERT INTO `rb_pertanyaan_penilaian_jawab` (`id_pertanyaan_penilaian_jawab`, `id_pertanyaan_penilaian`, `nisn`, `nisn_teman`, `jawaban`, `status`, `kode_kelas`, `waktu_jawab`) VALUES
(23, 2, '9991268756', '', 'jjjj', 'diri', 'X.MIPA.1', '2016-07-08 15:57:55'),
(12, 4, '9991268756', '0151379251', 'fff', 'teman', 'X.MIPA.1', '2016-07-08 15:21:34'),
(11, 5, '9991268756', '0151379251', 'eee', 'teman', 'X.MIPA.1', '2016-07-08 15:21:34'),
(15, 5, '9991268756', '0004107204', 'aaaa', 'teman', 'X.MIPA.1', '2016-07-08 15:23:05'),
(16, 4, '9991268756', '0004107204', 'bbbb', 'teman', 'X.MIPA.1', '2016-07-08 15:23:05'),
(17, 5, '9991268756', '9998218087', 'ttt', 'teman', 'X.MIPA.1', '2016-07-08 15:23:34'),
(18, 4, '9991268756', '9998218087', 'yyy', 'teman', 'X.MIPA.1', '2016-07-08 15:23:34'),
(24, 1, '9991268756', '', 'kkkk', 'diri', 'X.MIPA.1', '2016-07-08 15:57:55'),
(25, 5, '9991268756', '0007105659', 'hhh', 'teman', 'X.MIPA.1', '2016-07-08 15:58:39'),
(26, 4, '9991268756', '0007105659', 'nnn', 'teman', 'X.MIPA.1', '2016-07-08 15:58:39');

-- --------------------------------------------------------

--
-- Table structure for table `rb_predikat`
--

CREATE TABLE `rb_predikat` (
  `id_predikat` int(5) NOT NULL,
  `kode_kelas` varchar(10) NOT NULL,
  `nilai_a` int(3) NOT NULL,
  `nilai_b` int(3) NOT NULL,
  `grade` varchar(5) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_predikat`
--

INSERT INTO `rb_predikat` (`id_predikat`, `kode_kelas`, `nilai_a`, `nilai_b`, `grade`, `keterangan`) VALUES
(1, '0', 86, 100, 'A', 'Sangat Baik'),
(2, '0', 79, 85, 'B', 'Baik'),
(3, '0', 77, 78, 'C', 'Cukup'),
(4, '0', 0, 77, 'D', 'Kurang'),
(7, 'X.MIPA.1', 85, 100, 'A', 'Sangat Baik'),
(8, 'X.MIPA.1', 70, 84, 'B', 'Baik'),
(9, 'X.MIPA.1', 50, 69, 'C', 'Cukup'),
(10, 'X.MIPA.1', 0, 49, 'D', 'Kurang');

-- --------------------------------------------------------

--
-- Table structure for table `rb_psb_aktivasi`
--

CREATE TABLE `rb_psb_aktivasi` (
  `id_aktivasi` int(10) NOT NULL,
  `kode_pendaftaran` varchar(50) NOT NULL,
  `nama_lengkap` varchar(150) NOT NULL,
  `status` enum('sma','smk','smp') NOT NULL,
  `proses` int(2) NOT NULL,
  `waktu_input` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_psb_aktivasi`
--

INSERT INTO `rb_psb_aktivasi` (`id_aktivasi`, `kode_pendaftaran`, `nama_lengkap`, `status`, `proses`, `waktu_input`) VALUES
(1, 'SMA-20160701085110', 'PRABOWO', 'sma', 1, '2016-06-21 12:11:45'),
(2, 'SMK-20160701085110', 'Dewiit Safitri', 'smk', 1, '2016-06-21 15:04:57'),
(3, 'SMA-20160701085111', 'Tommy Utama', 'sma', 1, '2016-07-01 03:13:12'),
(4, 'SMP-20160701094107', 'Willy Fernando', 'smp', 0, '2016-07-01 09:27:54');

-- --------------------------------------------------------

--
-- Table structure for table `rb_psb_pendaftaran`
--

CREATE TABLE `rb_psb_pendaftaran` (
  `id_pendaftaran` int(10) NOT NULL,
  `kode_pendaftaran` varchar(50) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nama_panggilan` varchar(120) NOT NULL,
  `no_induk` varchar(50) NOT NULL,
  `id_jenis_kelamin` int(5) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `id_agama` int(5) NOT NULL,
  `anak_ke` varchar(10) NOT NULL,
  `jumlah_saudara` varchar(10) NOT NULL,
  `status_dalam_keluarga` varchar(100) NOT NULL,
  `alamat_siswa` text NOT NULL,
  `no_telpon` varchar(15) NOT NULL,
  `berat_badan` int(5) NOT NULL,
  `tinggi_badan` int(5) NOT NULL,
  `golongan_darah` varchar(5) NOT NULL,
  `penyakit_pernah_diderita` varchar(255) NOT NULL,
  `diterima_dikelas` varchar(50) NOT NULL,
  `diterima_tanggal` date NOT NULL,
  `sekolah_asal` varchar(255) NOT NULL,
  `alamat_sekolah_asal` text NOT NULL,
  `nama_ayah` varchar(150) NOT NULL,
  `tempat_lahir_ayah` text NOT NULL,
  `tanggal_lahir_ayah` date NOT NULL,
  `agama_ayah` int(5) NOT NULL,
  `pendidikan_ayah` varchar(100) NOT NULL,
  `pekerjaan_ayah` varchar(255) NOT NULL,
  `alamat_rumah_ayah` text NOT NULL,
  `telpon_rumah_ayah` varchar(15) NOT NULL,
  `alamat_kantor_ayah` text NOT NULL,
  `telpon_kantor_ayah` varchar(15) NOT NULL,
  `nama_ibu` varchar(150) NOT NULL,
  `tempat_lahir_ibu` text NOT NULL,
  `tanggal_lahir_ibu` date NOT NULL,
  `agama_ibu` int(5) NOT NULL,
  `pendidikan_ibu` varchar(100) NOT NULL,
  `pekerjaan_ibu` varchar(255) NOT NULL,
  `alamat_rumah_ibu` text NOT NULL,
  `telpon_rumah_ibu` varchar(15) NOT NULL,
  `alamat_kantor_ibu` text NOT NULL,
  `telpon_kantor_ibu` varchar(15) NOT NULL,
  `nama_wali` varchar(150) NOT NULL,
  `alamat_wali` text NOT NULL,
  `no_telpon_wali` varchar(15) NOT NULL,
  `status` enum('sma','smk','smp') NOT NULL,
  `waktu_daftar` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_psb_pendaftaran`
--

INSERT INTO `rb_psb_pendaftaran` (`id_pendaftaran`, `kode_pendaftaran`, `nama`, `nama_panggilan`, `no_induk`, `id_jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `id_agama`, `anak_ke`, `jumlah_saudara`, `status_dalam_keluarga`, `alamat_siswa`, `no_telpon`, `berat_badan`, `tinggi_badan`, `golongan_darah`, `penyakit_pernah_diderita`, `diterima_dikelas`, `diterima_tanggal`, `sekolah_asal`, `alamat_sekolah_asal`, `nama_ayah`, `tempat_lahir_ayah`, `tanggal_lahir_ayah`, `agama_ayah`, `pendidikan_ayah`, `pekerjaan_ayah`, `alamat_rumah_ayah`, `telpon_rumah_ayah`, `alamat_kantor_ayah`, `telpon_kantor_ayah`, `nama_ibu`, `tempat_lahir_ibu`, `tanggal_lahir_ibu`, `agama_ibu`, `pendidikan_ibu`, `pekerjaan_ibu`, `alamat_rumah_ibu`, `telpon_rumah_ibu`, `alamat_kantor_ibu`, `telpon_kantor_ibu`, `nama_wali`, `alamat_wali`, `no_telpon_wali`, `status`, `waktu_daftar`) VALUES
(1, 'SMA-20160701085110', 'PRABOWO', 'Robby', '5675345', 1, 'Padang', '1989-06-05', 1, '3', '5', 'Anak Kandung', 'Jl. Angkasa Puri, Perundam 4, Blok C No 2', '081267771344', 75, 170, 'O', 'Tdak Pernah', '1', '2016-06-22', 'SMP N 2 Payakumbuh', 'Jl. Lingar Jati 6, No 16 C', 'Nafnizon (Alm)', 'Payakumbuh', '1975-04-12', 1, 'S1', 'PNS', 'Jl.Gatot Subroto 6, No 7a', '0752461692', 'Muro Paiti, Kapur IX', '0752786512', 'Yeni Ermawaty', 'Padang', '1974-01-18', 1, 'S1', 'Rumah Tangga', 'Jl.Gatot Subroto 6, No 7a', '0752461692', '-', '0', 'Tommy Utama', 'Jl.Ulak Karang Padang', '081266881226', 'sma', '2016-06-22 12:11:45'),
(3, 'SMK-20160701085110', 'Dewiit Safitri', 'Dewi', '5674322', 1, 'Gumarang', '1989-02-12', 1, '3', '5', 'Anak Kandung', 'Jl. Linggar Jati, Padang', '082173054501', 60, 170, 'AB', 'Tdak Pernah', '1', '2016-06-22', 'SMP N 2 Payakumbuh', 'Jl. Lingar Jati 6, No 16 C', 'Sukarni', 'Gumarang', '1976-12-01', 1, 'S1', 'PNS', 'Jl.Gatot Subroto 6, No 7a', '0753456790', 'Muro Paiti, Kapur IX', '0753445566', 'Mama Dewi', 'Gumarang', '1973-11-11', 1, 'S1', 'Rumah Tangga', 'Jl.Gatot Subroto 6, No 7a', '0753456790', '-', '0', 'Adeil Putra', 'Jl.Ulak Karang, Padang', '082190871234', 'smk', '2016-06-22 15:04:57'),
(5, 'SMA-20160701085111', 'Tommy Utama', 'Tommy', '5674327', 1, 'Padang', '1985-08-18', 1, '1', '5', 'Anak Kandung', 'Jl. Simpang DPR, Padang', '081266881226', 70, 160, 'AB', 'Tdak Pernah', '1', '2016-07-01', 'SMA N 2 Payakumbuh', 'Jl. Lingar Jati 6, No 16 C', 'Sunandar', 'Payakumbuh', '0004-12-05', 1, 'S1', 'PNS', 'Jl.Gatot Subroto 6, No 7a', '0752461645', 'Muro Paiti, Kapur IX', '0752897855', 'Yunimar', 'Padang', '0000-00-00', 1, 'S1', 'Rumah Tangga', 'Jl.Gatot Subroto 6, No 7a', '0752461645', '-', '0', 'Willy Fernando', 'Jl.Ulak Karang, Padang', '082167771233', 'sma', '2016-07-01 11:19:36');

-- --------------------------------------------------------

--
-- Table structure for table `rb_psb_pendaftaran_saudara`
--

CREATE TABLE `rb_psb_pendaftaran_saudara` (
  `id_saudara` int(10) NOT NULL,
  `id_pendaftaran` int(10) NOT NULL,
  `nama_saudara` varchar(150) NOT NULL,
  `umur_saudara` int(5) NOT NULL,
  `pendidikan_saudara` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_psb_pendaftaran_saudara`
--

INSERT INTO `rb_psb_pendaftaran_saudara` (`id_saudara`, `id_pendaftaran`, `nama_saudara`, `umur_saudara`, `pendidikan_saudara`) VALUES
(1, 1, 'Willy Fernando', 29, 'S1'),
(2, 1, 'Randy Komara', 25, 'SMA'),
(3, 1, 'Laura Hikmah Izzatin', 18, 'SMA'),
(4, 3, 'Lira Virna', 15, 'SMP'),
(5, 3, 'Airin Stewano', 13, 'SD'),
(10, 5, 'Randy Komara', 25, 'SMA'),
(9, 5, 'Willy Fernando', 28, 'S1'),
(11, 5, 'Laura Hikmah Izzatin', 19, 'SMA');

-- --------------------------------------------------------

--
-- Table structure for table `rb_quiz_ujian`
--

CREATE TABLE `rb_quiz_ujian` (
  `id_quiz_ujian` int(5) NOT NULL,
  `id_kategori_quiz_ujian` int(5) NOT NULL,
  `kodejdwl` int(5) NOT NULL,
  `keterangan` text NOT NULL,
  `batas_waktu` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_quiz_ujian`
--

INSERT INTO `rb_quiz_ujian` (`id_quiz_ujian`, `id_kategori_quiz_ujian`, `kodejdwl`, `keterangan`, `batas_waktu`) VALUES
(4, 1, 5, 'Quiz Online Nilai Akhir Matematika', '2016-04-25 08:54:42'),
(5, 1, 5, 'hhhb', '2016-03-11 16:02:02');

-- --------------------------------------------------------

--
-- Table structure for table `rb_ruangan`
--

CREATE TABLE `rb_ruangan` (
  `kode_ruangan` varchar(10) NOT NULL,
  `kode_gedung` varchar(10) NOT NULL,
  `nama_ruangan` varchar(100) NOT NULL,
  `kapasitas_belajar` int(5) NOT NULL,
  `kapasitas_ujian` int(5) NOT NULL,
  `keterangan` text NOT NULL,
  `aktif` enum('Ya','Tidak') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_ruangan`
--

INSERT INTO `rb_ruangan` (`kode_ruangan`, `kode_gedung`, `nama_ruangan`, `kapasitas_belajar`, `kapasitas_ujian`, `keterangan`, `aktif`) VALUES
('R001', 'G001', 'A.1', 35, 30, '', ''),
('R002', 'G001', 'A.2', 40, 35, '', ''),
('R003', 'G002', 'B.1', 34, 29, '', ''),
('R004', 'G002', 'B.2', 45, 40, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `rb_sesi`
--

CREATE TABLE `rb_sesi` (
  `id_sesi` int(5) NOT NULL,
  `nama_sesi` varchar(100) NOT NULL,
  `keterangan` text NOT NULL,
  `aktif` enum('Ya','Tidak') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_sesi`
--

INSERT INTO `rb_sesi` (`id_sesi`, `nama_sesi`, `keterangan`, `aktif`) VALUES
(1, 'Semester 1', '', 'Ya'),
(2, 'Semester 2', '', 'Ya'),
(3, 'Semester 3', '', 'Ya'),
(4, 'Semester 4', '', 'Ya'),
(5, 'Semester 5', '', 'Ya'),
(6, 'Semester 6', '', 'Ya');

-- --------------------------------------------------------

--
-- Table structure for table `rb_siswa`
--

CREATE TABLE `rb_siswa` (
  `id_siswa` int(10) NOT NULL,
  `nipd` varchar(10) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(120) NOT NULL,
  `id_jenis_kelamin` int(5) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `nik` varchar(50) NOT NULL,
  `id_agama` int(5) NOT NULL,
  `kebutuhan_khusus` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `rt` varchar(5) NOT NULL,
  `rw` varchar(5) NOT NULL,
  `dusun` varchar(100) NOT NULL,
  `kelurahan` varchar(100) NOT NULL,
  `kecamatan` varchar(100) NOT NULL,
  `kode_pos` int(10) NOT NULL,
  `jenis_tinggal` varchar(100) NOT NULL,
  `alat_transportasi` varchar(100) NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `hp` varchar(15) NOT NULL,
  `email` varchar(150) NOT NULL,
  `skhun` varchar(50) NOT NULL,
  `penerima_kps` varchar(20) NOT NULL,
  `no_kps` varchar(50) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `nama_ayah` varchar(150) NOT NULL,
  `tahun_lahir_ayah` int(4) NOT NULL,
  `pendidikan_ayah` varchar(50) NOT NULL,
  `pekerjaan_ayah` varchar(100) NOT NULL,
  `penghasilan_ayah` varchar(100) NOT NULL,
  `kebutuhan_khusus_ayah` varchar(100) NOT NULL,
  `no_telpon_ayah` varchar(15) NOT NULL,
  `nama_ibu` varchar(150) NOT NULL,
  `tahun_lahir_ibu` int(4) NOT NULL,
  `pendidikan_ibu` varchar(50) NOT NULL,
  `pekerjaan_ibu` varchar(100) NOT NULL,
  `penghasilan_ibu` varchar(100) NOT NULL,
  `kebutuhan_khusus_ibu` varchar(100) NOT NULL,
  `no_telpon_ibu` varchar(15) NOT NULL,
  `nama_wali` varchar(150) NOT NULL,
  `tahun_lahir_wali` int(4) NOT NULL,
  `pendidikan_wali` varchar(50) NOT NULL,
  `pekerjaan_wali` varchar(100) NOT NULL,
  `penghasilan_wali` varchar(50) NOT NULL,
  `angkatan` int(5) NOT NULL,
  `status_awal` varchar(20) NOT NULL,
  `status_siswa` enum('Aktif','Tidak Aktif') NOT NULL,
  `tingkat` varchar(10) NOT NULL,
  `kode_kelas` varchar(10) NOT NULL,
  `kode_jurusan` varchar(10) NOT NULL,
  `id_sesi` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_siswa`
--

INSERT INTO `rb_siswa` (`id_siswa`, `nipd`, `password`, `nama`, `id_jenis_kelamin`, `nisn`, `tempat_lahir`, `tanggal_lahir`, `nik`, `id_agama`, `kebutuhan_khusus`, `alamat`, `rt`, `rw`, `dusun`, `kelurahan`, `kecamatan`, `kode_pos`, `jenis_tinggal`, `alat_transportasi`, `telepon`, `hp`, `email`, `skhun`, `penerima_kps`, `no_kps`, `foto`, `nama_ayah`, `tahun_lahir_ayah`, `pendidikan_ayah`, `pekerjaan_ayah`, `penghasilan_ayah`, `kebutuhan_khusus_ayah`, `no_telpon_ayah`, `nama_ibu`, `tahun_lahir_ibu`, `pendidikan_ibu`, `pekerjaan_ibu`, `penghasilan_ibu`, `kebutuhan_khusus_ibu`, `no_telpon_ibu`, `nama_wali`, `tahun_lahir_wali`, `pendidikan_wali`, `pekerjaan_wali`, `penghasilan_wali`, `angkatan`, `status_awal`, `status_siswa`, `tingkat`, `kode_kelas`, `kode_jurusan`, `id_sesi`) VALUES
(1271, '0', '123', 'Maulana', 0, '0', '', '0000-00-00', '', 0, '', '', '00', '00', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', 0, '', '', '', '', '', '', 0, '', '', '', 7, '', 'Aktif', '', 'RPL 01', 'RPL', 0);

-- --------------------------------------------------------

--
-- Table structure for table `rb_sms`
--

CREATE TABLE `rb_sms` (
  `id_sms` int(5) NOT NULL,
  `nohp` varchar(15) NOT NULL,
  `pesan` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rb_sms_autoreply`
--

CREATE TABLE `rb_sms_autoreply` (
  `id_autoreply` int(5) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `isi_pesan` text NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_sms_autoreply`
--

INSERT INTO `rb_sms_autoreply` (`id_autoreply`, `keyword`, `isi_pesan`, `waktu`) VALUES
(1, 'REG INFO', 'Diharapkan kepada semua orang tua lebih memperhatikan pergaulan anak-anaknya.', '2016-04-23 08:16:22'),
(2, 'REG KEGIATAN', 'Kegiatan Pramuka 27-04-2016, Kegiatan Paskibra 12-05-2016, Kegiatan Maraton Bersama Guru 16-05-2016.', '2016-04-23 09:23:34');

-- --------------------------------------------------------

--
-- Table structure for table `rb_sms_inbox`
--

CREATE TABLE `rb_sms_inbox` (
  `id` int(11) NOT NULL,
  `pesan` text DEFAULT NULL,
  `nohp` varchar(20) DEFAULT NULL,
  `waktu` datetime DEFAULT NULL,
  `modem` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rb_sms_outbox`
--

CREATE TABLE `rb_sms_outbox` (
  `id_outbox` int(5) NOT NULL,
  `nohp` varchar(20) NOT NULL,
  `pesan` text NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rb_status_keaktifan`
--

CREATE TABLE `rb_status_keaktifan` (
  `id_status_keaktifan` int(5) NOT NULL,
  `nama_status_keaktifan` varchar(255) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_status_keaktifan`
--

INSERT INTO `rb_status_keaktifan` (`id_status_keaktifan`, `nama_status_keaktifan`, `keterangan`) VALUES
(1, 'Aktif', ''),
(2, 'Tidak Aktif', '');

-- --------------------------------------------------------

--
-- Table structure for table `rb_status_kepegawaian`
--

CREATE TABLE `rb_status_kepegawaian` (
  `id_status_kepegawaian` int(5) NOT NULL,
  `status_kepegawaian` varchar(255) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_status_kepegawaian`
--

INSERT INTO `rb_status_kepegawaian` (`id_status_kepegawaian`, `status_kepegawaian`, `keterangan`) VALUES
(1, 'Tenaga Honor Sekolah\n', ''),
(2, 'Guru Honor Sekolah\n', ''),
(3, 'PNS\r\n', ''),
(4, 'GTY/PTY\r\n', ''),
(5, 'CPNS\r\n', '');

-- --------------------------------------------------------

--
-- Table structure for table `rb_status_pernikahan`
--

CREATE TABLE `rb_status_pernikahan` (
  `id_status_pernikahan` int(5) NOT NULL,
  `status_pernikahan` varchar(150) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_status_pernikahan`
--

INSERT INTO `rb_status_pernikahan` (`id_status_pernikahan`, `status_pernikahan`, `keterangan`) VALUES
(1, 'Menikah', ''),
(2, 'Belum Menikah', '');

-- --------------------------------------------------------

--
-- Table structure for table `rb_tahun_akademik`
--

CREATE TABLE `rb_tahun_akademik` (
  `id_tahun_akademik` int(5) NOT NULL,
  `nama_tahun` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `aktif` enum('Ya','Tidak') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_tahun_akademik`
--

INSERT INTO `rb_tahun_akademik` (`id_tahun_akademik`, `nama_tahun`, `keterangan`, `aktif`) VALUES
(20151, 'Semester Ganjil 2015/2016', '2015/2016', 'Ya'),
(20152, 'Semester Genap 2015/2016', '2015/2016', 'Ya'),
(20161, 'Semester Ganjil 2021/2022', '2021/2022', 'Ya'),
(20162, 'Semester Genap 2021/2022', '2021/2022', 'Ya');

-- --------------------------------------------------------

--
-- Table structure for table `rb_users`
--

CREATE TABLE `rb_users` (
  `id_user` int(5) NOT NULL,
  `username` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `password` text COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `no_telpon` varchar(15) COLLATE latin1_general_ci NOT NULL,
  `jabatan` varchar(150) COLLATE latin1_general_ci NOT NULL,
  `level` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT 'sekolah',
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `rb_users`
--

INSERT INTO `rb_users` (`id_user`, `username`, `password`, `nama_lengkap`, `email`, `no_telpon`, `jabatan`, `level`, `aktif`) VALUES
(1, 'admin', 'bff0cc42103de1b4721370e84dc24f635a7afeca41198c9b3e03946a1b6b7191d14356408a5e57ce6daf77e6e800c66fac7ab0482d57d48d23e6808e4b562daa', 'Administrator', 'admin@wbsiakadv1.com', '0853', 'Kepala IT', 'superuser', 'Y'),
(2, '196209051987031007', 'a6185fdc86a220b07d055de71d74d569261a3db2c408b06955bdac382c581f08105a7205988980a5f445fe34dbe884389ed6c89674d0a05bd3c8b58c82b43746', 'Drs. Amri Jaya, M.Pd', 'amri.jaya@gmail.com', '082173054501', 'Kepala Sekolah', 'kepala', 'Y'),
(107, 'Ops', 'fb3160934306e4c757040d360b5f3ade4da08824a6324731a650687e67e30cd78681bb00c9f9a2eaf8902c657f9f22d9697a59b586fe73ce31c5318ebf1e8b35', 'Molmol', 'mol@gmail.com', '0', 'OPS', 'kepala', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `rb_users_aktivitas`
--

CREATE TABLE `rb_users_aktivitas` (
  `id_users_aktivitas` int(10) NOT NULL,
  `identitas` varchar(50) NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `browser` varchar(50) NOT NULL,
  `os` varchar(50) NOT NULL,
  `status` enum('siswa','guru','superuser') NOT NULL,
  `jam` time NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_users_aktivitas`
--

INSERT INTO `rb_users_aktivitas` (`id_users_aktivitas`, `identitas`, `ip_address`, `browser`, `os`, `status`, `jam`, `tanggal`) VALUES
(143, '1', '::1', 'Chrome 91.0.4472.106', 'Windows 10', 'superuser', '10:44:55', '2021-06-24'),
(142, '1', '::1', 'Chrome 91.0.4472.106', 'Windows 10', 'superuser', '09:59:40', '2021-06-24'),
(141, '1', '::1', 'Chrome 91.0.4472.114', 'Windows 10', 'superuser', '09:52:33', '2021-06-24'),
(140, '107', '::1', 'Chrome 91.0.4472.77', 'Windows 10', '', '15:06:02', '2021-06-16'),
(139, '1', '::1', 'Chrome 91.0.4472.77', 'Windows 10', 'superuser', '22:33:35', '2021-06-12'),
(138, '1', '::1', 'Chrome 91.0.4472.77', 'Windows 10', 'superuser', '22:24:17', '2021-06-12'),
(137, '1', '::1', 'Chrome 91.0.4472.77', 'Windows 10', 'superuser', '19:57:15', '2021-06-11'),
(136, '107', '::1', 'Chrome 91.0.4472.77', 'Windows 10', '', '19:50:32', '2021-06-11'),
(135, '2', '::1', 'Chrome 91.0.4472.77', 'Windows 10', '', '19:50:15', '2021-06-11'),
(134, '107', '::1', 'Chrome 91.0.4472.77', 'Windows 10', '', '19:49:39', '2021-06-11'),
(133, '2', '::1', 'Chrome 91.0.4472.77', 'Windows 10', '', '19:48:31', '2021-06-11'),
(132, '107', '::1', 'Chrome 91.0.4472.77', 'Windows 10', '', '19:42:24', '2021-06-11'),
(131, '2', '::1', 'Chrome 91.0.4472.77', 'Windows 10', '', '19:35:07', '2021-06-11'),
(130, '107', '::1', 'Chrome 91.0.4472.77', 'Windows 10', '', '19:13:11', '2021-06-11'),
(129, '2', '::1', 'Chrome 91.0.4472.77', 'Windows 10', '', '18:56:45', '2021-06-11'),
(128, '107', '::1', 'Chrome 91.0.4472.77', 'Windows 10', 'superuser', '14:44:40', '2021-06-11'),
(127, '1', '::1', 'Chrome 91.0.4472.77', 'Windows 10', 'superuser', '14:44:12', '2021-06-11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rb_absensi_guru`
--
ALTER TABLE `rb_absensi_guru`
  ADD PRIMARY KEY (`id_absensi_guru`);

--
-- Indexes for table `rb_absensi_siswa`
--
ALTER TABLE `rb_absensi_siswa`
  ADD PRIMARY KEY (`id_absensi_siswa`);

--
-- Indexes for table `rb_agama`
--
ALTER TABLE `rb_agama`
  ADD PRIMARY KEY (`id_agama`);

--
-- Indexes for table `rb_elearning`
--
ALTER TABLE `rb_elearning`
  ADD PRIMARY KEY (`id_elearning`);

--
-- Indexes for table `rb_elearning_jawab`
--
ALTER TABLE `rb_elearning_jawab`
  ADD PRIMARY KEY (`id_elearning_jawab`);

--
-- Indexes for table `rb_forum_komentar`
--
ALTER TABLE `rb_forum_komentar`
  ADD PRIMARY KEY (`id_forum_komentar`);

--
-- Indexes for table `rb_forum_topic`
--
ALTER TABLE `rb_forum_topic`
  ADD PRIMARY KEY (`id_forum_topic`);

--
-- Indexes for table `rb_gedung`
--
ALTER TABLE `rb_gedung`
  ADD PRIMARY KEY (`kode_gedung`);

--
-- Indexes for table `rb_golongan`
--
ALTER TABLE `rb_golongan`
  ADD PRIMARY KEY (`id_golongan`);

--
-- Indexes for table `rb_guru`
--
ALTER TABLE `rb_guru`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `rb_halaman`
--
ALTER TABLE `rb_halaman`
  ADD PRIMARY KEY (`id_halaman`);

--
-- Indexes for table `rb_identitas_sekolah`
--
ALTER TABLE `rb_identitas_sekolah`
  ADD PRIMARY KEY (`id_identitas_sekolah`);

--
-- Indexes for table `rb_jadwal_pelajaran`
--
ALTER TABLE `rb_jadwal_pelajaran`
  ADD PRIMARY KEY (`kodejdwl`);

--
-- Indexes for table `rb_jawaban_essai`
--
ALTER TABLE `rb_jawaban_essai`
  ADD PRIMARY KEY (`id_jawaban_essai`);

--
-- Indexes for table `rb_jawaban_objektif`
--
ALTER TABLE `rb_jawaban_objektif`
  ADD PRIMARY KEY (`id_jawaban_objektif`);

--
-- Indexes for table `rb_jenis_kelamin`
--
ALTER TABLE `rb_jenis_kelamin`
  ADD PRIMARY KEY (`id_jenis_kelamin`);

--
-- Indexes for table `rb_jenis_ptk`
--
ALTER TABLE `rb_jenis_ptk`
  ADD PRIMARY KEY (`id_jenis_ptk`);

--
-- Indexes for table `rb_journal_list`
--
ALTER TABLE `rb_journal_list`
  ADD PRIMARY KEY (`id_journal`);

--
-- Indexes for table `rb_jurusan`
--
ALTER TABLE `rb_jurusan`
  ADD PRIMARY KEY (`kode_jurusan`);

--
-- Indexes for table `rb_kategori_elearning`
--
ALTER TABLE `rb_kategori_elearning`
  ADD PRIMARY KEY (`id_kategori_elearning`);

--
-- Indexes for table `rb_kategori_quiz_ujian`
--
ALTER TABLE `rb_kategori_quiz_ujian`
  ADD PRIMARY KEY (`id_kategori_quiz_ujian`);

--
-- Indexes for table `rb_kehadiran`
--
ALTER TABLE `rb_kehadiran`
  ADD PRIMARY KEY (`kode_kehadiran`);

--
-- Indexes for table `rb_kelas`
--
ALTER TABLE `rb_kelas`
  ADD PRIMARY KEY (`kode_kelas`);

--
-- Indexes for table `rb_kelompok_mata_pelajaran`
--
ALTER TABLE `rb_kelompok_mata_pelajaran`
  ADD PRIMARY KEY (`id_kelompok_mata_pelajaran`);

--
-- Indexes for table `rb_kompetensi_dasar`
--
ALTER TABLE `rb_kompetensi_dasar`
  ADD PRIMARY KEY (`id_kompetensi_dasar`);

--
-- Indexes for table `rb_kurikulum`
--
ALTER TABLE `rb_kurikulum`
  ADD PRIMARY KEY (`kode_kurikulum`);

--
-- Indexes for table `rb_mata_pelajaran`
--
ALTER TABLE `rb_mata_pelajaran`
  ADD PRIMARY KEY (`kode_pelajaran`);

--
-- Indexes for table `rb_menu`
--
ALTER TABLE `rb_menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `rb_nilai_extrakulikuler`
--
ALTER TABLE `rb_nilai_extrakulikuler`
  ADD PRIMARY KEY (`id_nilai_extrakulikuler`);

--
-- Indexes for table `rb_nilai_keterampilan`
--
ALTER TABLE `rb_nilai_keterampilan`
  ADD PRIMARY KEY (`id_nilai_keterampilan`);

--
-- Indexes for table `rb_nilai_pengetahuan`
--
ALTER TABLE `rb_nilai_pengetahuan`
  ADD PRIMARY KEY (`id_nilai_pengetahuan`);

--
-- Indexes for table `rb_nilai_pertanyaan_essai`
--
ALTER TABLE `rb_nilai_pertanyaan_essai`
  ADD PRIMARY KEY (`id_nilai_pertanyaan_essai`);

--
-- Indexes for table `rb_nilai_prestasi`
--
ALTER TABLE `rb_nilai_prestasi`
  ADD PRIMARY KEY (`id_nilai_prestasi`);

--
-- Indexes for table `rb_nilai_sikap`
--
ALTER TABLE `rb_nilai_sikap`
  ADD PRIMARY KEY (`id_nilai_sikap`);

--
-- Indexes for table `rb_nilai_sikap_semester`
--
ALTER TABLE `rb_nilai_sikap_semester`
  ADD PRIMARY KEY (`id_nilai_sikap_semester`);

--
-- Indexes for table `rb_nilai_uts`
--
ALTER TABLE `rb_nilai_uts`
  ADD PRIMARY KEY (`id_nilai_uts`);

--
-- Indexes for table `rb_pertanyaan_essai`
--
ALTER TABLE `rb_pertanyaan_essai`
  ADD PRIMARY KEY (`id_pertanyaan_essai`);

--
-- Indexes for table `rb_pertanyaan_objektif`
--
ALTER TABLE `rb_pertanyaan_objektif`
  ADD PRIMARY KEY (`id_pertanyaan_objektif`);

--
-- Indexes for table `rb_pertanyaan_penilaian`
--
ALTER TABLE `rb_pertanyaan_penilaian`
  ADD PRIMARY KEY (`id_pertanyaan_penilaian`);

--
-- Indexes for table `rb_pertanyaan_penilaian_jawab`
--
ALTER TABLE `rb_pertanyaan_penilaian_jawab`
  ADD PRIMARY KEY (`id_pertanyaan_penilaian_jawab`);

--
-- Indexes for table `rb_predikat`
--
ALTER TABLE `rb_predikat`
  ADD PRIMARY KEY (`id_predikat`);

--
-- Indexes for table `rb_psb_aktivasi`
--
ALTER TABLE `rb_psb_aktivasi`
  ADD PRIMARY KEY (`id_aktivasi`);

--
-- Indexes for table `rb_psb_pendaftaran`
--
ALTER TABLE `rb_psb_pendaftaran`
  ADD PRIMARY KEY (`id_pendaftaran`);

--
-- Indexes for table `rb_psb_pendaftaran_saudara`
--
ALTER TABLE `rb_psb_pendaftaran_saudara`
  ADD PRIMARY KEY (`id_saudara`);

--
-- Indexes for table `rb_quiz_ujian`
--
ALTER TABLE `rb_quiz_ujian`
  ADD PRIMARY KEY (`id_quiz_ujian`);

--
-- Indexes for table `rb_ruangan`
--
ALTER TABLE `rb_ruangan`
  ADD PRIMARY KEY (`kode_ruangan`);

--
-- Indexes for table `rb_sesi`
--
ALTER TABLE `rb_sesi`
  ADD PRIMARY KEY (`id_sesi`);

--
-- Indexes for table `rb_siswa`
--
ALTER TABLE `rb_siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indexes for table `rb_sms`
--
ALTER TABLE `rb_sms`
  ADD PRIMARY KEY (`id_sms`);

--
-- Indexes for table `rb_sms_autoreply`
--
ALTER TABLE `rb_sms_autoreply`
  ADD PRIMARY KEY (`id_autoreply`);

--
-- Indexes for table `rb_sms_inbox`
--
ALTER TABLE `rb_sms_inbox`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rb_sms_outbox`
--
ALTER TABLE `rb_sms_outbox`
  ADD PRIMARY KEY (`id_outbox`);

--
-- Indexes for table `rb_status_keaktifan`
--
ALTER TABLE `rb_status_keaktifan`
  ADD PRIMARY KEY (`id_status_keaktifan`);

--
-- Indexes for table `rb_status_kepegawaian`
--
ALTER TABLE `rb_status_kepegawaian`
  ADD PRIMARY KEY (`id_status_kepegawaian`);

--
-- Indexes for table `rb_status_pernikahan`
--
ALTER TABLE `rb_status_pernikahan`
  ADD PRIMARY KEY (`id_status_pernikahan`);

--
-- Indexes for table `rb_tahun_akademik`
--
ALTER TABLE `rb_tahun_akademik`
  ADD PRIMARY KEY (`id_tahun_akademik`);

--
-- Indexes for table `rb_users`
--
ALTER TABLE `rb_users`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `rb_users_aktivitas`
--
ALTER TABLE `rb_users_aktivitas`
  ADD PRIMARY KEY (`id_users_aktivitas`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rb_absensi_guru`
--
ALTER TABLE `rb_absensi_guru`
  MODIFY `id_absensi_guru` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rb_absensi_siswa`
--
ALTER TABLE `rb_absensi_siswa`
  MODIFY `id_absensi_siswa` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rb_agama`
--
ALTER TABLE `rb_agama`
  MODIFY `id_agama` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rb_elearning`
--
ALTER TABLE `rb_elearning`
  MODIFY `id_elearning` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `rb_elearning_jawab`
--
ALTER TABLE `rb_elearning_jawab`
  MODIFY `id_elearning_jawab` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rb_forum_komentar`
--
ALTER TABLE `rb_forum_komentar`
  MODIFY `id_forum_komentar` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `rb_forum_topic`
--
ALTER TABLE `rb_forum_topic`
  MODIFY `id_forum_topic` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rb_golongan`
--
ALTER TABLE `rb_golongan`
  MODIFY `id_golongan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rb_halaman`
--
ALTER TABLE `rb_halaman`
  MODIFY `id_halaman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rb_identitas_sekolah`
--
ALTER TABLE `rb_identitas_sekolah`
  MODIFY `id_identitas_sekolah` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rb_jadwal_pelajaran`
--
ALTER TABLE `rb_jadwal_pelajaran`
  MODIFY `kodejdwl` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `rb_jawaban_essai`
--
ALTER TABLE `rb_jawaban_essai`
  MODIFY `id_jawaban_essai` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `rb_jawaban_objektif`
--
ALTER TABLE `rb_jawaban_objektif`
  MODIFY `id_jawaban_objektif` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `rb_jenis_kelamin`
--
ALTER TABLE `rb_jenis_kelamin`
  MODIFY `id_jenis_kelamin` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rb_jenis_ptk`
--
ALTER TABLE `rb_jenis_ptk`
  MODIFY `id_jenis_ptk` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rb_journal_list`
--
ALTER TABLE `rb_journal_list`
  MODIFY `id_journal` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rb_kategori_elearning`
--
ALTER TABLE `rb_kategori_elearning`
  MODIFY `id_kategori_elearning` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rb_kategori_quiz_ujian`
--
ALTER TABLE `rb_kategori_quiz_ujian`
  MODIFY `id_kategori_quiz_ujian` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rb_kelompok_mata_pelajaran`
--
ALTER TABLE `rb_kelompok_mata_pelajaran`
  MODIFY `id_kelompok_mata_pelajaran` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rb_kompetensi_dasar`
--
ALTER TABLE `rb_kompetensi_dasar`
  MODIFY `id_kompetensi_dasar` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rb_kurikulum`
--
ALTER TABLE `rb_kurikulum`
  MODIFY `kode_kurikulum` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rb_menu`
--
ALTER TABLE `rb_menu`
  MODIFY `id_menu` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `rb_nilai_extrakulikuler`
--
ALTER TABLE `rb_nilai_extrakulikuler`
  MODIFY `id_nilai_extrakulikuler` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `rb_nilai_keterampilan`
--
ALTER TABLE `rb_nilai_keterampilan`
  MODIFY `id_nilai_keterampilan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `rb_nilai_pengetahuan`
--
ALTER TABLE `rb_nilai_pengetahuan`
  MODIFY `id_nilai_pengetahuan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `rb_nilai_pertanyaan_essai`
--
ALTER TABLE `rb_nilai_pertanyaan_essai`
  MODIFY `id_nilai_pertanyaan_essai` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rb_nilai_prestasi`
--
ALTER TABLE `rb_nilai_prestasi`
  MODIFY `id_nilai_prestasi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rb_nilai_sikap`
--
ALTER TABLE `rb_nilai_sikap`
  MODIFY `id_nilai_sikap` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `rb_nilai_sikap_semester`
--
ALTER TABLE `rb_nilai_sikap_semester`
  MODIFY `id_nilai_sikap_semester` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rb_nilai_uts`
--
ALTER TABLE `rb_nilai_uts`
  MODIFY `id_nilai_uts` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rb_pertanyaan_essai`
--
ALTER TABLE `rb_pertanyaan_essai`
  MODIFY `id_pertanyaan_essai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `rb_pertanyaan_objektif`
--
ALTER TABLE `rb_pertanyaan_objektif`
  MODIFY `id_pertanyaan_objektif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `rb_pertanyaan_penilaian`
--
ALTER TABLE `rb_pertanyaan_penilaian`
  MODIFY `id_pertanyaan_penilaian` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rb_pertanyaan_penilaian_jawab`
--
ALTER TABLE `rb_pertanyaan_penilaian_jawab`
  MODIFY `id_pertanyaan_penilaian_jawab` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `rb_predikat`
--
ALTER TABLE `rb_predikat`
  MODIFY `id_predikat` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `rb_psb_aktivasi`
--
ALTER TABLE `rb_psb_aktivasi`
  MODIFY `id_aktivasi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rb_psb_pendaftaran`
--
ALTER TABLE `rb_psb_pendaftaran`
  MODIFY `id_pendaftaran` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rb_psb_pendaftaran_saudara`
--
ALTER TABLE `rb_psb_pendaftaran_saudara`
  MODIFY `id_saudara` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `rb_quiz_ujian`
--
ALTER TABLE `rb_quiz_ujian`
  MODIFY `id_quiz_ujian` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rb_sesi`
--
ALTER TABLE `rb_sesi`
  MODIFY `id_sesi` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `rb_siswa`
--
ALTER TABLE `rb_siswa`
  MODIFY `id_siswa` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1272;

--
-- AUTO_INCREMENT for table `rb_sms`
--
ALTER TABLE `rb_sms`
  MODIFY `id_sms` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rb_sms_autoreply`
--
ALTER TABLE `rb_sms_autoreply`
  MODIFY `id_autoreply` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rb_sms_inbox`
--
ALTER TABLE `rb_sms_inbox`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rb_sms_outbox`
--
ALTER TABLE `rb_sms_outbox`
  MODIFY `id_outbox` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rb_status_keaktifan`
--
ALTER TABLE `rb_status_keaktifan`
  MODIFY `id_status_keaktifan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rb_status_kepegawaian`
--
ALTER TABLE `rb_status_kepegawaian`
  MODIFY `id_status_kepegawaian` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `rb_status_pernikahan`
--
ALTER TABLE `rb_status_pernikahan`
  MODIFY `id_status_pernikahan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rb_tahun_akademik`
--
ALTER TABLE `rb_tahun_akademik`
  MODIFY `id_tahun_akademik` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20163;

--
-- AUTO_INCREMENT for table `rb_users`
--
ALTER TABLE `rb_users`
  MODIFY `id_user` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `rb_users_aktivitas`
--
ALTER TABLE `rb_users_aktivitas`
  MODIFY `id_users_aktivitas` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
