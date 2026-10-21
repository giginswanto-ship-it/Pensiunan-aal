# Sistem Lembar Data Alumni AAL (Laravel Framework & Database SQL)

Aplikasi **Lembar Data Alumni AAL** kini telah dikembangkan menjadi sistem berbasis backend **Laravel Framework** dan database **SQL (MySQL / MariaDB / SQLite)**, dengan tetap mempertahankan **100% gaya, warna, responsivitas HP Android, foto 3x lebih besar, zoom interaktif, dan fitur simpan gambar** yang telah ada.

---

## 🗄️ 1. Struktur Database SQL

Tabel utama yang dibuat adalah `alumnis`:

| Nama Kolom | Tipe Data | Keterangan |
| :--- | :--- | :--- |
| `id` | BIGINT (Primary Key, Auto Increment) | ID unik record database |
| `kode_alumni` | VARCHAR(50) (Unique) | Contoh: `AAL-1994-082` |
| `nama` | VARCHAR(255) | Nama Lengkap & Gelar |
| `tanggal_lahir` | DATE | Tanggal Lahir (YYYY-MM-DD) |
| `alamat` | TEXT | Alamat domisili saat ini |
| `no_whatsapp` | VARCHAR(30) | Nomor WhatsApp aktif |
| `nama_pt` | VARCHAR(150) | Nama Perusahaan (PT Astra Agro Lestari Tbk / Anak Usaha) |
| `penempatan` | VARCHAR(50) | Penempatan: 'Head Office' atau 'Site' |
| `site_pt` | VARCHAR(150) NULL | Site (Cantumkan Nama PT), misal: Site PT Sari Lembah Subur |
| `devisi` | VARCHAR(100) | Devisi Berapa (misal: Divisi 1, Divisi 2, Divisi Mill, dll) |
| `tahun_masuk` | INT NULL | Tahun mulai bekerja di AAL |
| `tahun_selesai` | INT NULL | Tahun selesai masa tugas |
| `mantan_atasan`| VARCHAR(255) | Nama atasan / Manager saat bertugas |
| `tahun_pensiun`| INT | Tahun resmi purna bakti |
| `kegiatan_saat_ini` | TEXT NULL | Aktivitas / kesibukan purna bakti saat ini |
| `jumlah_cucu` | INT DEFAULT 0 | Jumlah total cucu alumni |
| `cucu_laki` | INT DEFAULT 0 | Jumlah cucu laki-laki |
| `cucu_perempuan` | INT DEFAULT 0 | Jumlah cucu perempuan |
| `foto` | LONGTEXT NULL | Data URL Base64 atau URL link foto |
| `created_at` | TIMESTAMP | Tanggal dibuat |
| `updated_at` | TIMESTAMP | Tanggal terakhir diubah |

> **File SQL Siap Import**: Disediakan file [**`data.sql`**](file:///c:/Users/Swanto/OneDrive/Desktop/DATA%20WARGA%20ALUMNI%20AAL/data.sql) (dan [**`alumni_aal.sql`**](file:///c:/Users/Swanto/OneDrive/Desktop/DATA%20WARGA%20ALUMNI%20AAL/alumni_aal.sql)) yang berisi seluruh data lokal warga alumni dan 41 entitas perusahaan AAL, bisa langsung Anda import ke **phpMyAdmin** atau **MySQL Workbench**.

---

## 🏗️ 2. Komponen Arsitektur Laravel (MVC)

1. **Model**  
   - Lokasi: [`app/Models/Alumni.php`](file:///c:/Users/Swanto/OneDrive/Desktop/DATA%20WARGA%20ALUMNI%20AAL/app/Models/Alumni.php)  
   - Fitur: Mutator/Accessor untuk format tanggal bahasa Indonesia, kalkulasi otomatis usia, pembersihan nomor WhatsApp untuk URL direct chat, dan masa pengabdian kerja.
2. **Controller**  
   - Lokasi: [`app/Http/Controllers/AlumniController.php`](file:///c:/Users/Swanto/OneDrive/Desktop/DATA%20WARGA%20ALUMNI%20AAL/app/Http/Controllers/AlumniController.php)  
   - Fitur: CRUD lengkap (Create, Read, Update, Delete) yang mendukung permintaan Web Blade dan API JSON.
3. **Database Migration & Seeder**  
   - Migration: [`database/migrations/2026_10_21_000000_create_alumnis_table.php`](file:///c:/Users/Swanto/OneDrive/Desktop/DATA%20WARGA%20ALUMNI%20AAL/database/migrations/2026_10_21_000000_create_alumnis_table.php)  
   - Seeder: [`database/seeders/AlumniSeeder.php`](file:///c:/Users/Swanto/OneDrive/Desktop/DATA%20WARGA%20ALUMNI%20AAL/database/seeders/AlumniSeeder.php) (Dilengkapi data awal contoh).
4. **View (Blade Template)**  
   - Lokasi: [`resources/views/alumni/index.blade.php`](file:///c:/Users/Swanto/OneDrive/Desktop/DATA%20WARGA%20ALUMNI%20AAL/resources/views/alumni/index.blade.php)  
   - Tampilan: Tetap mempertahankan desain UI/UX mobile Android, foto 3x lebih besar, interaktif zoom fullscreen, tombol simpan foto, **tombol share link tunggal** (dukungan native Web Share & auto-copy link tanpa duplikasi), integrasi **41 Entitas Perusahaan AAL** (dengan modal katalog direktori interaktif, auto-suggest datalist, dan auto-fill lokasi Site), serta sinkronisasi AJAX ke database SQL.
5. **Routes**  
   - Web Routes: [`routes/web.php`](file:///c:/Users/Swanto/OneDrive/Desktop/DATA%20WARGA%20ALUMNI%20AAL/routes/web.php) (`Route::resource('alumni', AlumniController::class)`)  
   - API Routes: [`routes/api.php`](file:///c:/Users/Swanto/OneDrive/Desktop/DATA%20WARGA%20ALUMNI%20AAL/routes/api.php)

---

## 🚀 3. Panduan Menjalankan Sistem Laravel

### Prasyarat:
- Komputer terpasang **PHP >= 8.1** dan **Composer** (bisa melalui **XAMPP**, **Laragon**, atau PHP standalone).
- Database **MySQL** aktif (bisa melalui phpMyAdmin di XAMPP / Laragon).

### Langkah Instalasi:

1. **Buka Terminal / PowerShell di folder proyek ini:**
   ```powershell
   cd "C:\Users\Swanto\OneDrive\Desktop\DATA WARGA ALUMNI AAL"
   ```

2. **Install Dependensi Composer:**
   ```bash
   composer install
   ```

3. **Konfigurasi Database (.env):**
   Buka file `.env` dan pastikan nama database sesuai:
   ```env
   DB_CONNECTION=mysql
   DB_HOST=127.0.0.1
   DB_PORT=3306
   DB_DATABASE=data_alumni_aal
   DB_USERNAME=root
   DB_PASSWORD=
   ```
   *(Opsional: Buat database kosong bernama `data_alumni_aal` di phpMyAdmin)*.

4. **Jalankan Migrasi & Seeder Database:**
   ```bash
   php artisan migrate --seed
   ```
   *Perintah ini akan secara otomatis membuat tabel `alumnis` dan mengisi data sampel ke dalam MySQL.*

5. **Jalankan Server Lokal:**
   ```bash
   php artisan serve
   ```

6. **Buka Aplikasi:**
   Buka browser (Google Chrome atau browser HP yang satu jaringan Wi-Fi):
   ```
   http://localhost:8000
   ```

---

## 📌 Catatan Tambahan
File versi standalone non-server [**`index.html`**](file:///c:/Users/Swanto/OneDrive/Desktop/DATA%20WARGA%20ALUMNI%20AAL/index.html) dan [**`Buka_Lembar_Data_Alumni.bat`**](file:///c:/Users/Swanto/OneDrive/Desktop/DATA%20WARGA%20ALUMNI%20AAL/Buka_Lembar_Data_Alumni.bat) tetap dipertahankan utuh dan dapat digunakan kapan saja tanpa perlu menyalakan server PHP.
