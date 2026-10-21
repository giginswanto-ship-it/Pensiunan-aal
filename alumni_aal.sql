-- =======================================================
-- Database SQL: Alumni AAL (Paguyuban Warga Pensiunan AAL)
-- Generated for Laravel & MySQL / MariaDB
-- =======================================================

CREATE DATABASE IF NOT EXISTS `data_alumni_aal` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `data_alumni_aal`;

-- --------------------------------------------------------
-- Table structure for table `alumnis`
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
  `site_pt` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Site (Cantumkan Nama PT)',
  `devisi` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Devisi Berapa (Contoh: Divisi 1, Divisi 2)',
  `tahun_masuk` int(11) DEFAULT NULL,
  `tahun_selesai` int(11) DEFAULT NULL,
  `mantan_atasan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun_pensiun` int(11) NOT NULL,
  `kegiatan_saat_ini` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Kegiatan saat ini / purna bakti',
  `jumlah_cucu` int(11) NOT NULL DEFAULT 0 COMMENT 'Jumlah total cucu',
  `cucu_laki` int(11) NOT NULL DEFAULT 0 COMMENT 'Jumlah cucu laki-laki',
  `cucu_perempuan` int(11) NOT NULL DEFAULT 0 COMMENT 'Jumlah cucu perempuan',
  `foto` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `alumnis_kode_alumni_unique` (`kode_alumni`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------
-- Dumping data for table `alumnis`
-- --------------------------------------------------------

INSERT INTO `alumnis` (`id`, `kode_alumni`, `nama`, `tanggal_lahir`, `alamat`, `no_whatsapp`, `nama_pt`, `penempatan`, `site_pt`, `devisi`, `tahun_masuk`, `tahun_selesai`, `mantan_atasan`, `tahun_pensiun`, `kegiatan_saat_ini`, `jumlah_cucu`, `cucu_laki`, `cucu_perempuan`, `foto`, `created_at`, `updated_at`) VALUES
(1, 'AAL-1994-082', 'H. Ir. Bambang Soeprapto, M.M.', '1968-08-17', 'Jl. Flamboyan Indah No. 45, RT 03 / RW 07, Pekanbaru, Riau', '081234567890', 'PT Kimia Tirta Utama', 'Site', 'Site PT Kimia Tirta Utama (Siak, Riau)', 'Divisi 2 (Afdeling II)', 1994, 2024, 'Dr. Ir. Hendra Gunawan (VP Plantation)', 2024, 'Mengelola perkebunan sawit mandiri & aktif di kegiatan sosial kemasyarakatan', 5, 3, 2, 'https://images.unsplash.com/photo-1534528741775-53994a69daeb?auto=format&fit=crop&w=800&q=80', NOW(), NOW()),
(2, 'AAL-1998-115', 'Drs. H. Mulyono Santoso', '1969-05-12', 'Komplek Griya Sawit Indah Blok C-12, Pekanbaru', '081398765432', 'PT Sari Lembah Subur', 'Site', 'Site PT Sari Lembah Subur (Pelalawan, Riau)', 'Divisi 1 - Pabrik Kelapa Sawit (Mill)', 1998, 2023, 'Ir. Agus Wijaya (Mill Manager)', 2023, 'Wiraswasta bengkel permesinan & konsultan pabrik kelapa sawit', 4, 2, 2, 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=800&q=80', NOW(), NOW()),
(3, 'AAL-2001-045', 'Ir. Hj. Siti Rahmawati, M.Si.', '1970-11-23', 'Komp. Kelapa Gading Permai No. 18, Jakarta Timur', '081122334455', 'PT Astra Agro Lestari Tbk', 'Head Office', 'Head Office Jakarta (HO)', 'Divisi Human Capital & Sustainability', 2001, 2025, 'Bambang Widjanarko (Direktur HR)', 2025, 'Menikmati masa purna bakti bersama keluarga & pengurus paguyuban alumni', 3, 1, 2, 'https://images.unsplash.com/photo-1573496359142-b8d87734a5a2?auto=format&fit=crop&w=800&q=80', NOW(), NOW()),
(4, 'AAL-1996-024', 'Ir. Dedi Kusnadi', '1967-03-15', 'Jl. Mulawarman No. 88, Balikpapan, Kalimantan Timur', '081255667788', 'PT Sukses Tani Nusasubur', 'Site', 'Site PT Sukses Tani Nusasubur (Penajam Paser Utara, Kaltim)', 'Divisi Teknik & Workshop', 1996, 2023, 'Ir. Budi Santoso (Area Manager Kaltim)', 2023, 'Wiraswasta dan aktif di paguyuban purnabakti AAL regional Kalimantan', 3, 2, 1, 'https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?auto=format&fit=crop&w=800&q=80', NOW(), NOW()),
(5, 'AAL-1999-067', 'Drs. Andi Tenri Gassing', '1968-10-04', 'Jl. Trans Sulawesi No. 12, Mamuju, Sulawesi Barat', '081344556677', 'PT Pasangkayu', 'Site', 'Site PT Pasangkayu (Pasangkayu, Sulawesi Barat)', 'Divisi Agronomi Kebun Sawit', 1999, 2024, 'Ir. H. Syamsuddin (Estate Manager)', 2024, 'Menikmati masa pensiun bersama keluarga besar di Sulawesi Barat', 4, 2, 2, 'https://images.unsplash.com/photo-1519085360753-af0119f7cbe7?auto=format&fit=crop&w=800&q=80', NOW(), NOW());
