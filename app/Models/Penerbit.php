<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Penerbit extends Model
{
    protected $fillable = [
        'nama_penerbit', 'email', 'telp', 'alamat'
    ];

    public function bukus()
    {
        return $this->hasMany('App\Models\Buku','id_penerbit');
    }
}