<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Katalog extends Model
{
    protected $fillable = [
        'nama'
    ];
    
    public function bukus()
    {
        return $this->hasMany('App\Models\Buku','id_katalog');
    }
}
