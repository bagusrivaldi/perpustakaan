<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Anggota extends Model
{
    protected $fillable = [
        'nama', 'sex', 'telp', 'alamat', 'email'
    ];

    public function user()
    {
        return $this->hasOne('App\Models\User', 'id');
    }
    public function peminjamen()
    {
        return $this->hasMany('App\Models\Peminjaman', 'id_anggota');
    }
}
