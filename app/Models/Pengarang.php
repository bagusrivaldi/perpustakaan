<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Pengarang extends Model
{
    protected $fillable = [
        'nama_pengarang', 'email', 'telp', 'alamat'
    ];

    public function bukus()
    {
        return $this->hasMany('App\Models\Buku','id_pengarang');
    }
}
