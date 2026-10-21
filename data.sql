-- ====================================================================
-- Database SQL Export: Data Warga Paguyuban Alumni Astra Agro Lestari (AAL)
-- File: data.sql
-- Digunakan untuk: MySQL / MariaDB / phpMyAdmin / Laravel Database Import
-- Karakter Enkoding: UTF-8 Unicode (utf8mb4)
-- ====================================================================

SET FOREIGN_KEY_CHECKS = 0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+07:00";

-- --------------------------------------------------------
-- 1. PEMBUATAN DATABASE
-- --------------------------------------------------------
CREATE DATABASE IF NOT EXISTS `data_alumni_aal` 
  DEFAULT CHARACTER SET utf8mb4 
  COLLATE utf8mb4_unicode_ci;

USE `data_alumni_aal`;

-- --------------------------------------------------------
-- 2. STRUKTUR TABEL: `alumnis`
-- --------------------------------------------------------
DROP TABLE IF EXISTS `alumnis`;
CREATE TABLE `alumnis` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `kode_alumni` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_whatsapp` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_pt` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Nama Perusahaan',
  `penempatan` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Site' COMMENT 'Head Office atau Site',
  `site_pt` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Site (Nama PT / Unit Kerja)',
  `devisi` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Devisi Berapa (Contoh: Divisi 1, Divisi 2)',
  `tahun_masuk` int(11) DEFAULT NULL,
  `tahun_selesai` int(11) DEFAULT NULL,
  `mantan_atasan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun_pensiun` int(11) NOT NULL,
  `kegiatan_saat_ini` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Kegiatan saat ini / purna bakti',
  `jumlah_cucu` int(11) NOT NULL DEFAULT 0 COMMENT 'Jumlah total cucu',
  `cucu_laki` int(11) NOT NULL DEFAULT 0 COMMENT 'Jumlah cucu laki-laki',
  `cucu_perempuan` int(11) NOT NULL DEFAULT 0 COMMENT 'Jumlah cucu perempuan',
  `foto` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'URL foto atau Base64 Image',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `alumnis_kode_alumni_unique` (`kode_alumni`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------
-- 3. DATA LOKAL WARGA ALUMNI AAL: `alumnis`
-- --------------------------------------------------------
INSERT INTO `alumnis` (
  `id`, `kode_alumni`, `nama`, `tanggal_lahir`, `alamat`, `no_whatsapp`, 
  `nama_pt`, `penempatan`, `site_pt`, `devisi`, `tahun_masuk`, `tahun_selesai`, 
  `mantan_atasan`, `tahun_pensiun`, `kegiatan_saat_ini`, `jumlah_cucu`, 
  `cucu_laki`, `cucu_perempuan`, `foto`, `created_at`, `updated_at`
) VALUES
(
  1, 
  'AAL-1994-082', 
  'H. Ir. Bambang Soeprapto, M.M.', 
  '1968-08-17', 
  'Jl. Flamboyan Indah No. 45, RT 03 / RW 07, Pekanbaru, Riau', 
  '081234567890', 
  'PT Astra Agro Lestari Tbk', 
  'Site', 
  'Site PT Kimia Tirta Utama (KTU)', 
  'Divisi 2 (Afdeling II)', 
  1994, 
  2024, 
  'Dr. Ir. Hendra Gunawan (VP Plantation)', 
  2024, 
  'Mengelola perkebunan sawit mandiri & aktif di kegiatan sosial kemasyarakatan', 
  5, 
  3, 
  2, 
  'https://images.unsplash.com/photo-1534528741775-53994a69daeb?auto=format&fit=crop&w=800&q=80', 
  NOW(), 
  NOW()
),
(
  2, 
  'AAL-1998-115', 
  'Drs. H. Mulyono Santoso', 
  '1969-05-12', 
  'Komplek Griya Sawit Indah Blok C-12, Pekanbaru', 
  '081398765432', 
  'PT Sari Lembah Subur (SLS)', 
  'Site', 
  'Site PT Sari Lembah Subur (SLS)', 
  'Divisi 1 - Pabrik Kelapa Sawit (Mill)', 
  1998, 
  2023, 
  'Ir. Agus Wijaya (Mill Manager)', 
  2023, 
  'Wiraswasta bengkel permesinan & konsultan pabrik kelapa sawit', 
  4, 
  2, 
  2, 
  'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=800&q=80', 
  NOW(), 
  NOW()
),
(
  3, 
  'AAL-2001-045', 
  'Ir. Hj. Siti Rahmawati, M.Si.', 
  '1970-11-23', 
  'Komp. Kelapa Gading Permai No. 18, Jakarta Timur', 
  '081122334455', 
  'PT Astra Agro Lestari Tbk', 
  'Head Office', 
  'Head Office Jakarta (HO)', 
  'Divisi Human Capital & Sustainability', 
  2001, 
  2025, 
  'Bambang Widjanarko (Direktur HR)', 
  2025, 
  'Menikmati masa purna bakti bersama keluarga & pengurus paguyuban alumni', 
  3, 
  1, 
  2, 
  'https://images.unsplash.com/photo-1573496359142-b8d87734a5a2?auto=format&fit=crop&w=800&q=80', 
  NOW(), 
  NOW()
),
(
  4, 
  'AAL-1996-024', 
  'Ir. Dedi Kusnadi', 
  '1967-03-15', 
  'Jl. Mulawarman No. 88, Balikpapan, Kalimantan Timur', 
  '081255667788', 
  'PT Sukses Tani Nusasubur', 
  'Site', 
  'Site PT Sukses Tani Nusasubur (Penajam Paser Utara, Kaltim)', 
  'Divisi Teknik & Workshop', 
  1996, 
  2023, 
  'Ir. Budi Santoso (Area Manager Kaltim)', 
  2023, 
  'Wiraswasta dan aktif di paguyuban purnabakti AAL regional Kalimantan', 
  3, 
  2, 
  1, 
  'https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?auto=format&fit=crop&w=800&q=80', 
  NOW(), 
  NOW()
),
(
  5, 
  'AAL-1999-067', 
  'Drs. Andi Tenri Gassing', 
  '1968-10-04', 
  'Jl. Trans Sulawesi No. 12, Mamuju, Sulawesi Barat', 
  '081344556677', 
  'PT Pasangkayu', 
  'Site', 
  'Site PT Pasangkayu (Pasangkayu, Sulawesi Barat)', 
  'Divisi Agronomi Kebun Sawit', 
  1999, 
  2024, 
  'Ir. H. Syamsuddin (Estate Manager)', 
  2024, 
  'Menikmati masa pensiun bersama keluarga besar di Sulawesi Barat', 
  4, 
  2, 
  2, 
  'https://images.unsplash.com/photo-1519085360753-af0119f7cbe7?auto=format&fit=crop&w=800&q=80', 
  NOW(), 
  NOW()
);

-- --------------------------------------------------------
-- 4. STRUKTUR TABEL: `entitas_perusahaan_aal` (41 Entitas AAL)
-- --------------------------------------------------------
DROP TABLE IF EXISTS `entitas_perusahaan_aal`;
CREATE TABLE `entitas_perusahaan_aal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `region` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wilayah` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bisnis` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipe` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Site',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------
-- 5. DATA MASTER: 41 Entitas Anak Astra Agro Lestari Tbk
-- --------------------------------------------------------
INSERT INTO `entitas_perusahaan_aal` (`id`, `kategori`, `region`, `nama`, `wilayah`, `bisnis`, `tipe`) VALUES
-- Holding
(1, 'Holding / Kantor Pusat', 'Holding', 'PT Astra Agro Lestari Tbk', 'Head Office Jakarta', 'Holding & Manajemen Perkebunan Sawit', 'Head Office'),

-- Wilayah Sumatra (8 Entitas)
(2, 'Wilayah Operasional Sumatra (8 Entitas)', 'Sumatra', 'PT Sari Lembah Subur', 'Pelalawan, Riau', 'Perkebunan & Pabrik Kelapa Sawit', 'Site'),
(3, 'Wilayah Operasional Sumatra (8 Entitas)', 'Sumatra', 'PT Eka Dura Indonesia', 'Rokan Hulu, Riau', 'Perkebunan & Pabrik Kelapa Sawit', 'Site'),
(4, 'Wilayah Operasional Sumatra (8 Entitas)', 'Sumatra', 'PT Tunggal Perkasa Plantations', 'Indragiri Hulu, Riau', 'Perkebunan & Pabrik Kelapa Sawit', 'Site'),
(5, 'Wilayah Operasional Sumatra (8 Entitas)', 'Sumatra', 'PT Sawit Asikin Indah', 'Riau', 'Perkebunan Kelapa Sawit', 'Site'),
(6, 'Wilayah Operasional Sumatra (8 Entitas)', 'Sumatra', 'PT Kimia Tirta Utama', 'Siak, Riau', 'Perkebunan & Pabrik Kelapa Sawit', 'Site'),
(7, 'Wilayah Operasional Sumatra (8 Entitas)', 'Sumatra', 'PT Karya Tanah Subur', 'Aceh Barat, Aceh', 'Perkebunan & Pabrik Kelapa Sawit', 'Site'),
(8, 'Wilayah Operasional Sumatra (8 Entitas)', 'Sumatra', 'PT Perkebunan Lembah Bhakti', 'Aceh Singkil, Aceh', 'Perkebunan & Pabrik Kelapa Sawit', 'Site'),
(9, 'Wilayah Operasional Sumatra (8 Entitas)', 'Sumatra', 'PT Astra Agro Lestari Mas', 'Jakarta / Sumatra', 'Perdagangan & Manajemen Jasa Sawit', 'Site'),

-- Wilayah Kalimantan (20 Entitas)
(10, 'Wilayah Operasional Kalimantan (20 Entitas)', 'Kalimantan', 'PT Agro Menara Rachmat', 'Kalimantan Tengah', 'Perkebunan & Pabrik Kelapa Sawit', 'Site'),
(11, 'Wilayah Operasional Kalimantan (20 Entitas)', 'Kalimantan', 'PT Bhadra Cemerlang', 'Kalimantan Tengah', 'Perkebunan Kelapa Sawit', 'Site'),
(12, 'Wilayah Operasional Kalimantan (20 Entitas)', 'Kalimantan', 'PT Cipta Narada Lestari', 'Kalimantan Tengah', 'Perkebunan Kelapa Sawit', 'Site'),
(13, 'Wilayah Operasional Kalimantan (20 Entitas)', 'Kalimantan', 'PT Gunung Sejahtera Dua Indah', 'Kotawaringin Barat, Kalteng', 'Perkebunan & Pabrik Kelapa Sawit', 'Site'),
(14, 'Wilayah Operasional Kalimantan (20 Entitas)', 'Kalimantan', 'PT Gunung Sejahtera Yoli Makmur', 'Kotawaringin Barat, Kalteng', 'Perkebunan & Pabrik Kelapa Sawit', 'Site'),
(15, 'Wilayah Operasional Kalimantan (20 Entitas)', 'Kalimantan', 'PT Gunung Sejahtera Puti Pesona', 'Kotawaringin Barat, Kalteng', 'Perkebunan & Pabrik Kelapa Sawit', 'Site'),
(16, 'Wilayah Operasional Kalimantan (20 Entitas)', 'Kalimantan', 'PT Gunung Sejahtera Ibu Pertiwi', 'Kotawaringin Barat, Kalteng', 'Perkebunan & Pabrik Kelapa Sawit', 'Site'),
(17, 'Wilayah Operasional Kalimantan (20 Entitas)', 'Kalimantan', 'PT Karda Multi Sarana', 'Kalimantan Tengah', 'Perkebunan Kelapa Sawit', 'Site'),
(18, 'Wilayah Operasional Kalimantan (20 Entitas)', 'Kalimantan', 'PT Nirmala Agro Lestari', 'Kotawaringin Barat, Kalteng', 'Perkebunan & Pabrik Kelapa Sawit', 'Site'),
(19, 'Wilayah Operasional Kalimantan (20 Entitas)', 'Kalimantan', 'PT Pandji Waringin', 'Kalimantan Tengah', 'Perkebunan Kelapa Sawit', 'Site'),
(20, 'Wilayah Operasional Kalimantan (20 Entitas)', 'Kalimantan', 'PT Persada Dinamika Lestari', 'Kalimantan Tengah', 'Perkebunan Kelapa Sawit', 'Site'),
(21, 'Wilayah Operasional Kalimantan (20 Entitas)', 'Kalimantan', 'PT Sawit Multi Utama', 'Kalimantan Tengah', 'Perkebunan Kelapa Sawit', 'Site'),
(22, 'Wilayah Operasional Kalimantan (20 Entitas)', 'Kalimantan', 'PT Sumber Kharisma Persada', 'Kalimantan Tengah', 'Perkebunan Kelapa Sawit', 'Site'),
(23, 'Wilayah Operasional Kalimantan (20 Entitas)', 'Kalimantan', 'PT Sukses Tani Nusasubur', 'Penajam Paser Utara, Kaltim', 'Perkebunan & Pabrik Kelapa Sawit', 'Site'),
(24, 'Wilayah Operasional Kalimantan (20 Entitas)', 'Kalimantan', 'PT Borneo Indah Marjaya', 'Paser, Kalimantan Timur', 'Perkebunan & Pabrik Kelapa Sawit', 'Site'),
(25, 'Wilayah Operasional Kalimantan (20 Entitas)', 'Kalimantan', 'PT Waru Kaltim Plantation', 'Penajam Paser Utara, Kaltim', 'Perkebunan & Pabrik Kelapa Sawit', 'Site'),
(26, 'Wilayah Operasional Kalimantan (20 Entitas)', 'Kalimantan', 'PT Subur Abadi Plantations', 'Kalimantan Selatan', 'Perkebunan & Pabrik Kelapa Sawit', 'Site'),
(27, 'Wilayah Operasional Kalimantan (20 Entitas)', 'Kalimantan', 'PT Suryaindah Nusantarapagi', 'Kalimantan Selatan', 'Perkebunan Kelapa Sawit', 'Site'),
(28, 'Wilayah Operasional Kalimantan (20 Entitas)', 'Kalimantan', 'PT Karya Menara Hijau', 'Kalimantan Selatan', 'Perkebunan Kelapa Sawit', 'Site'),
(29, 'Wilayah Operasional Kalimantan (20 Entitas)', 'Kalimantan', 'PT Susantri Permai', 'Kalimantan Tengah', 'Perkebunan Kelapa Sawit', 'Site'),

-- Wilayah Sulawesi (7 Entitas)
(30, 'Wilayah Operasional Sulawesi (7 Entitas)', 'Sulawesi', 'PT Pasangkayu', 'Pasangkayu, Sulawesi Barat', 'Perkebunan & Pabrik Kelapa Sawit', 'Site'),
(31, 'Wilayah Operasional Sulawesi (7 Entitas)', 'Sulawesi', 'PT Letawa', 'Pasangkayu, Sulawesi Barat', 'Perkebunan & Pabrik Kelapa Sawit', 'Site'),
(32, 'Wilayah Operasional Sulawesi (7 Entitas)', 'Sulawesi', 'PT Mamuang', 'Pasangkayu, Sulawesi Barat', 'Perkebunan Kelapa Sawit', 'Site'),
(33, 'Wilayah Operasional Sulawesi (7 Entitas)', 'Sulawesi', 'PT Surya Raya Lestari', 'Mamuju Tengah, Sulbar', 'Perkebunan & Pabrik Kelapa Sawit', 'Site'),
(34, 'Wilayah Operasional Sulawesi (7 Entitas)', 'Sulawesi', 'PT Lestari Tani Teladan', 'Donggala, Sulawesi Tengah', 'Perkebunan Kelapa Sawit', 'Site'),
(35, 'Wilayah Operasional Sulawesi (7 Entitas)', 'Sulawesi', 'PT Agro Nusa Abadi', 'Morowali Utara, Sulteng', 'Perkebunan & Pabrik Kelapa Sawit', 'Site'),
(36, 'Wilayah Operasional Sulawesi (7 Entitas)', 'Sulawesi', 'PT Tamaco Graha Krida', 'Poso, Sulawesi Tengah', 'Perkebunan Kelapa Sawit', 'Site'),

-- Pengolahan, Hilirisasi, dan Jasa Penunjang (5 Entitas)
(37, 'Pengolahan, Hilirisasi, dan Jasa Penunjang (5 Entitas)', 'Hilirisasi', 'PT Tanjung Sarana Lestari', 'Mamuju Utara, Sulbar', 'Refinery (Pengolahan CPO) & Biodiesel', 'Site'),
(38, 'Pengolahan, Hilirisasi, dan Jasa Penunjang (5 Entitas)', 'Hilirisasi', 'PT Tanjung Bina Lestari', 'Mamuju Utara, Sulbar', 'Pengolahan Kernel Oil & Turunan Sawit', 'Site'),
(39, 'Pengolahan, Hilirisasi, dan Jasa Penunjang (5 Entitas)', 'Hilirisasi', 'PT Kreasijaya Adhikarya', 'Dumai, Riau', 'Refinery & Fraksinasi (Joint Venture)', 'Site'),
(40, 'Pengolahan, Hilirisasi, dan Jasa Penunjang (5 Entitas)', 'Hilirisasi', 'PT Astra Agro Lestari Palma', 'Jakarta', 'Pemasaran & Perdagangan Minyak Nabati', 'Head Office'),
(41, 'Pengolahan, Hilirisasi, dan Jasa Penunjang (5 Entitas)', 'Hilirisasi', 'PT AAL Trans Sentosa', 'Nasional', 'Jasa Transportasi & Logistik CPO', 'Site');

COMMIT;
SET FOREIGN_KEY_CHECKS = 1;
