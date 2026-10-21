<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('alumnis', function (Blueprint $table) {
            $table->id();
            $table->string('kode_alumni', 50)->unique();
            $table->string('nama', 255);
            $table->date('tanggal_lahir');
            $table->text('alamat');
            $table->string('no_whatsapp', 30);
            
            // Perusahaan & Devisi Detail
            $table->string('nama_pt', 150)->comment('Nama Perusahaan');
            $table->string('penempatan', 50)->default('Site')->comment('Head Office atau Site');
            $table->string('site_pt', 150)->nullable()->comment('Site (Cantumkan Nama PT)');
            $table->string('devisi', 100)->comment('Devisi Berapa (Contoh: Divisi 1, Divisi 2)');
            
            $table->integer('tahun_masuk')->nullable();
            $table->integer('tahun_selesai')->nullable();
            $table->string('mantan_atasan', 255);
            $table->integer('tahun_pensiun');
            $table->text('kegiatan_saat_ini')->nullable()->comment('Kegiatan saat ini / purna bakti');
            $table->integer('jumlah_cucu')->default(0)->comment('Jumlah total cucu');
            $table->integer('cucu_laki')->default(0)->comment('Jumlah cucu laki-laki');
            $table->integer('cucu_perempuan')->default(0)->comment('Jumlah cucu perempuan');
            $table->longText('foto')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('alumnis');
    }
};
