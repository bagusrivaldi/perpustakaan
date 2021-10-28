<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Buku extends Model
{
    protected $fillable = [
        'isbn', 'judul', 'tahun', 'id_penerbit', 'id_pengarang', 'id_katalog', 'qty_stok', 'harga_pinjam'
    ];

    public function penerbits()
    {
        return $this->belongsTo('App\Models\Penerbit','id');
    }

    public function pengarangs()
    {
        return $this->belongsTo('App\Models\Buku','id');
    }

    public function katalogs()
    {
        return $this->belongsTo('App\Models\Katalog','id');
    }

}
