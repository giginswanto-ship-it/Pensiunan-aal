<?php

namespace App\Http\Controllers;

use App\Models\Alumni;
use Illuminate\Http\Request;

class AlumniController extends Controller
{
    /**
     * Tampilkan halaman utama kartu lembar data alumni & daftar warga
     */
    public function index(Request $request)
    {
        $query = Alumni::query();

        if ($request->filled('search')) {
            $search = $request->input('search');
            $query->where(function($q) use ($search) {
                $q->where('nama', 'like', "%{$search}%")
                  ->orWhere('devisi', 'like', "%{$search}%")
                  ->orWhere('nama_pt', 'like', "%{$search}%")
                  ->orWhere('site_pt', 'like', "%{$search}%")
                  ->orWhere('penempatan', 'like', "%{$search}%")
                  ->orWhere('kegiatan_saat_ini', 'like', "%{$search}%")
                  ->orWhere('alamat', 'like', "%{$search}%")
                  ->orWhere('mantan_atasan', 'like', "%{$search}%");
            });
        }

        $alumnis = $query->orderBy('id', 'desc')->get();

        // Jika request via API / Fetch JSON
        if ($request->wantsJson() || $request->ajax()) {
            return response()->json([
                'status' => 'success',
                'data' => $alumnis
            ]);
        }

        $selectedAlumni = $alumnis->first();

        return view('alumni.index', compact('alumnis', 'selectedAlumni'));
    }

    /**
     * Simpan data alumni baru ke database SQL
     */
    public function store(Request $request)
    {
        $validated = $request->validate([
            'nama' => 'required|string|max:255',
            'tanggal_lahir' => 'required|date',
            'alamat' => 'required|string',
            'no_whatsapp' => 'required|string|max:30',
            'nama_pt' => 'required|string|max:150',
            'penempatan' => 'required|string|in:Head Office,Site',
            'site_pt' => 'nullable|string|max:150',
            'devisi' => 'required|string|max:100', // Devisi berapa
            'tahun_masuk' => 'nullable|integer',
            'tahun_selesai' => 'nullable|integer',
            'mantan_atasan' => 'required|string|max:255',
            'tahun_pensiun' => 'required|integer',
            'kegiatan_saat_ini' => 'nullable|string',
            'jumlah_cucu' => 'nullable|integer|min:0',
            'cucu_laki' => 'nullable|integer|min:0',
            'cucu_perempuan' => 'nullable|integer|min:0',
            'foto' => 'nullable|string',
        ]);

        // Generate Kode Alumni otomatis
        $tahun = $validated['tahun_masuk'] ?? date('Y');
        $random = str_pad(mt_rand(1, 999), 3, '0', STR_PAD_LEFT);
        $validated['kode_alumni'] = "AAL-{$tahun}-{$random}";

        $alumni = Alumni::create($validated);

        if ($request->wantsJson() || $request->ajax()) {
            return response()->json([
                'status' => 'success',
                'message' => 'Data Alumni berhasil disimpan ke database SQL!',
                'data' => $alumni
            ], 201);
        }

        return redirect()->route('alumni.index')->with('success', 'Data Alumni berhasil disimpan!');
    }

    /**
     * Tampilkan detail data satu alumni
     */
    public function show($id)
    {
        $alumni = Alumni::findOrFail($id);
        return response()->json([
            'status' => 'success',
            'data' => $alumni
        ]);
    }

    /**
     * Update data alumni di database SQL
     */
    public function update(Request $request, $id)
    {
        $alumni = Alumni::findOrFail($id);

        $validated = $request->validate([
            'nama' => 'required|string|max:255',
            'tanggal_lahir' => 'required|date',
            'alamat' => 'required|string',
            'no_whatsapp' => 'required|string|max:30',
            'nama_pt' => 'required|string|max:150',
            'penempatan' => 'required|string|in:Head Office,Site',
            'site_pt' => 'nullable|string|max:150',
            'devisi' => 'required|string|max:100', // Devisi berapa
            'tahun_masuk' => 'nullable|integer',
            'tahun_selesai' => 'nullable|integer',
            'mantan_atasan' => 'required|string|max:255',
            'tahun_pensiun' => 'required|integer',
            'kegiatan_saat_ini' => 'nullable|string',
            'jumlah_cucu' => 'nullable|integer|min:0',
            'cucu_laki' => 'nullable|integer|min:0',
            'cucu_perempuan' => 'nullable|integer|min:0',
            'foto' => 'nullable|string',
        ]);

        $alumni->update($validated);

        if ($request->wantsJson() || $request->ajax()) {
            return response()->json([
                'status' => 'success',
                'message' => 'Data Alumni berhasil diperbarui!',
                'data' => $alumni
            ]);
        }

        return redirect()->route('alumni.index')->with('success', 'Data Alumni berhasil diperbarui!');
    }

    /**
     * Hapus data alumni dari database SQL
     */
    public function destroy(Request $request, $id)
    {
        $alumni = Alumni::findOrFail($id);
        $alumni->delete();

        if ($request->wantsJson() || $request->ajax()) {
            return response()->json([
                'status' => 'success',
                'message' => 'Data Alumni berhasil dihapus dari database!'
            ]);
        }

        return redirect()->route('alumni.index')->with('success', 'Data Alumni berhasil dihapus!');
    }
}
