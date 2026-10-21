<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Carbon\Carbon;

class Alumni extends Model
{
    use HasFactory;

    protected $table = 'alumnis';

    protected $fillable = [
        'kode_alumni',
        'nama',
        'tanggal_lahir',
        'alamat',
        'no_whatsapp',
        'nama_pt',
        'penempatan',
        'site_pt',
        'devisi',
        'tahun_masuk',
        'tahun_selesai',
        'mantan_atasan',
        'tahun_pensiun',
        'kegiatan_saat_ini',
        'jumlah_cucu',
        'cucu_laki',
        'cucu_perempuan',
        'foto',
    ];

    protected $casts = [
        'tanggal_lahir' => 'date',
        'tahun_masuk' => 'integer',
        'tahun_selesai' => 'integer',
        'tahun_pensiun' => 'integer',
        'jumlah_cucu' => 'integer',
        'cucu_laki' => 'integer',
        'cucu_perempuan' => 'integer',
    ];

    /**
     * Format tanggal lahir ke bahasa Indonesia (contoh: 17 Agustus 1968)
     */
    public function getFormattedTanggalLahirAttribute()
    {
        if (!$this->tanggal_lahir) {
            return '-';
        }

        $bulan = [
            1 => 'Januari', 'Februari', 'Maret', 'April', 'Mei', 'Juni',
            'Juli', 'Agustus', 'September', 'Oktober', 'November', 'Desember'
        ];

        $date = Carbon::parse($this->tanggal_lahir);
        return $date->day . ' ' . ($bulan[$date->month] ?? '') . ' ' . $date->year;
    }

    /**
     * Hitung usia saat ini
     */
    public function getUsiaAttribute()
    {
        if (!$this->tanggal_lahir) {
            return null;
        }

        return Carbon::parse($this->tanggal_lahir)->age;
    }

    /**
     * Format no whatsapp untuk link langsung (628xxx)
     */
    public function getCleanWhatsappAttribute()
    {
        if (!$this->no_whatsapp) {
            return '';
        }

        $clean = preg_replace('/[^0-9]/', '', $this->no_whatsapp);
        if (str_starts_with($clean, '0')) {
            $clean = '62' . substr($clean, 1);
        }
        return $clean;
    }

    /**
     * Hitung total tahun masa pengabdian
     */
    public function getMasaKerjaAttribute()
    {
        $start = $this->tahun_masuk;
        $end = $this->tahun_selesai ?? $this->tahun_pensiun;

        if ($start && $end) {
            return max(0, $end - $start);
        }
        return null;
    }

    /**
     * Label Penempatan (Head Office atau Site PT)
     */
    public function getDisplayPenempatanAttribute()
    {
        if ($this->penempatan === 'Head Office') {
            return 'Head Office';
        }
        return $this->site_pt ?: ($this->nama_pt ?: 'Site');
    }

    /**
     * URL Foto dengan fallback avatar otomatis
     */
    public function getFotoUrlAttribute()
    {
        if (!empty($this->foto)) {
            return $this->foto;
        }

        return 'https://ui-avatars.com/api/?name=' . urlencode($this->nama) . '&background=15803d&color=fff&size=512';
    }
}
