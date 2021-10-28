<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Peminjaman extends Model
{
    protected $table = 'peminjamen';

    protected $fillable = [
        'id_anggota', 'tgl_pinjam', 'tgl_kembali', 'status'
    ]; 

    public function buku() {
        return $this->belongsToMany(Buku::class, 'detail_peminjamen', 'id_peminjaman', 'id_buku');
    }

    public function anggota() {
        return $this->belongsTo(Anggota::class, 'id_anggota');
    }
}