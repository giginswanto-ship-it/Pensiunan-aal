<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Alumni;

class AlumniSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $alumniData = [
            [
                'kode_alumni' => 'AAL-1994-082',
                'nama' => 'H. Ir. Bambang Soeprapto, M.M.',
                'tanggal_lahir' => '1968-08-17',
                'alamat' => 'Jl. Flamboyan Indah No. 45, RT 03 / RW 07, Pekanbaru, Riau',
                'no_whatsapp' => '081234567890',
                'nama_pt' => 'PT Astra Agro Lestari Tbk',
                'penempatan' => 'Site',
                'site_pt' => 'Site PT Kimia Tirta Utama (KTU)',
                'devisi' => 'Divisi 2 (Afdeling II)',
                'tahun_masuk' => 1994,
                'tahun_selesai' => 2024,
                'mantan_atasan' => 'Dr. Ir. Hendra Gunawan (VP Plantation)',
                'tahun_pensiun' => 2024,
                'kegiatan_saat_ini' => 'Mengelola perkebunan sawit mandiri & aktif di kegiatan sosial kemasyarakatan',
                'jumlah_cucu' => 5,
                'cucu_laki' => 3,
                'cucu_perempuan' => 2,
                'foto' => 'https://images.unsplash.com/photo-1534528741775-53994a69daeb?auto=format&fit=crop&w=800&q=80',
            ],
            [
                'kode_alumni' => 'AAL-1998-115',
                'nama' => 'Drs. H. Mulyono Santoso',
                'tanggal_lahir' => '1969-05-12',
                'alamat' => 'Komplek Griya Sawit Indah Blok C-12, Pekanbaru',
                'no_whatsapp' => '081398765432',
                'nama_pt' => 'PT Sari Lembah Subur (SLS)',
                'penempatan' => 'Site',
                'site_pt' => 'Site PT Sari Lembah Subur (SLS)',
                'devisi' => 'Divisi 1 - Pabrik Kelapa Sawit (Mill)',
                'tahun_masuk' => 1998,
                'tahun_selesai' => 2023,
                'mantan_atasan' => 'Ir. Agus Wijaya (Mill Manager)',
                'tahun_pensiun' => 2023,
                'kegiatan_saat_ini' => 'Wiraswasta bengkel permesinan & konsultan pabrik kelapa sawit',
                'jumlah_cucu' => 4,
                'cucu_laki' => 2,
                'cucu_perempuan' => 2,
                'foto' => 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=800&q=80',
            ],
            [
                'kode_alumni' => 'AAL-2001-045',
                'nama' => 'Ir. Hj. Siti Rahmawati, M.Si.',
                'tanggal_lahir' => '1970-11-23',
                'alamat' => 'Komp. Kelapa Gading Permai No. 18, Jakarta Timur',
                'no_whatsapp' => '081122334455',
                'nama_pt' => 'PT Astra Agro Lestari Tbk',
                'penempatan' => 'Head Office',
                'site_pt' => 'Head Office Jakarta (HO)',
                'devisi' => 'Divisi Human Capital & Sustainability',
                'tahun_masuk' => 2001,
                'tahun_selesai' => 2025,
                'mantan_atasan' => 'Bambang Widjanarko (Direktur HR)',
                'tahun_pensiun' => 2025,
                'kegiatan_saat_ini' => 'Menikmati masa purna bakti bersama keluarga & pengurus paguyuban alumni',
                'jumlah_cucu' => 3,
                'cucu_laki' => 1,
                'cucu_perempuan' => 2,
                'foto' => 'https://images.unsplash.com/photo-1573496359142-b8d87734a5a2?auto=format&fit=crop&w=800&q=80',
            ],
            [
                'kode_alumni' => 'AAL-1996-024',
                'nama' => 'Ir. Dedi Kusnadi',
                'tanggal_lahir' => '1967-03-15',
                'alamat' => 'Jl. Mulawarman No. 88, Balikpapan, Kalimantan Timur',
                'no_whatsapp' => '081255667788',
                'nama_pt' => 'PT Sukses Tani Nusasubur',
                'penempatan' => 'Site',
                'site_pt' => 'Site PT Sukses Tani Nusasubur (Penajam Paser Utara, Kaltim)',
                'devisi' => 'Divisi Teknik & Workshop',
                'tahun_masuk' => 1996,
                'tahun_selesai' => 2023,
                'mantan_atasan' => 'Ir. Budi Santoso (Area Manager Kaltim)',
                'tahun_pensiun' => 2023,
                'kegiatan_saat_ini' => 'Wiraswasta dan aktif di paguyuban purnabakti AAL regional Kalimantan',
                'jumlah_cucu' => 3,
                'cucu_laki' => 2,
                'cucu_perempuan' => 1,
                'foto' => 'https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?auto=format&fit=crop&w=800&q=80',
            ],
            [
                'kode_alumni' => 'AAL-1999-067',
                'nama' => 'Drs. Andi Tenri Gassing',
                'tanggal_lahir' => '1968-10-04',
                'alamat' => 'Jl. Trans Sulawesi No. 12, Mamuju, Sulawesi Barat',
                'no_whatsapp' => '081344556677',
                'nama_pt' => 'PT Pasangkayu',
                'penempatan' => 'Site',
                'site_pt' => 'Site PT Pasangkayu (Pasangkayu, Sulawesi Barat)',
                'devisi' => 'Divisi Agronomi Kebun Sawit',
                'tahun_masuk' => 1999,
                'tahun_selesai' => 2024,
                'mantan_atasan' => 'Ir. H. Syamsuddin (Estate Manager)',
                'tahun_pensiun' => 2024,
                'kegiatan_saat_ini' => 'Menikmati masa pensiun bersama keluarga besar di Sulawesi Barat',
                'jumlah_cucu' => 4,
                'cucu_laki' => 2,
                'cucu_perempuan' => 2,
                'foto' => 'https://images.unsplash.com/photo-1519085360753-af0119f7cbe7?auto=format&fit=crop&w=800&q=80',
            ]
        ];

        foreach ($alumniData as $data) {
            Alumni::updateOrCreate(
                ['kode_alumni' => $data['kode_alumni']],
                $data
            );
        }
    }
}
