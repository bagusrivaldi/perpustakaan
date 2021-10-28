<?php

namespace App\Http\Controllers;

use DB;
use App\Models\Anggota;
use App\Models\Buku;
use App\Models\Katalog;
use App\Models\Peminjaman;
use App\Models\Penerbit;
use App\Models\Pengarang;
use App\User;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;

use Illuminate\Http\Request;

class AdminController extends Controller
{
    public function dashboard()
    {
        $total_anggota = Anggota::count();
        $total_katalog = Katalog::count();
        $total_peminjaman = Peminjaman::count();
        $total_penerbit = Penerbit::count();
        $total_pengarang = Pengarang::count();
        $total_buku = Buku::count();

        $data_donut = Buku::select(DB::raw("COUNT(id_penerbit) as total"))->groupBy('id_penerbit')->orderBy('id_penerbit', 'asc')->pluck('total');
        $label_donut = Penerbit::orderBy('penerbits.id', 'asc')->join('bukus', 'bukus.id_penerbit', '=', 'penerbits.id')->groupBy('nama_penerbit')->pluck('nama_penerbit');

        $data_donut2 = Buku::select(DB::raw("COUNT(id_pengarang) as total"))->groupBy('id_pengarang')->orderBy('id_pengarang', 'asc')->pluck('total');
        $label_donut2 = Pengarang::orderBy('pengarangs.id', 'asc')->join('bukus', 'bukus.id_pengarang', '=', 'pengarangs.id')->groupBy('nama_pengarang')->pluck('nama_pengarang');

        $label_bar = ['Peminjaman', 'Pengembalian'];
        $data_bar = [];

        foreach ($label_bar as $key => $value) {
            $data_bar[$key]['label'] = $label_bar[$key];
            $data_bar[$key]['backgroundColor'] = $key == 0 ? 'rgba(60,141,188,0.9)' : 'rgba(210, 214, 222, 1)';
            $data_month = [];

            foreach (range(1, 12) as $month) {
                if ($key == 0) {
                    $data_month[] = Peminjaman::select(DB::raw("COUNT(*) as total"))->whereMonth('tgl_pinjam', $month)->first()->total;
                } else {
                    $data_month[] = Peminjaman::select(DB::raw("COUNT(*) as total"))->whereMonth('tgl_kembali', $month)->first()->total;
                }
            }

            $data_bar[$key]['data'] = $data_month;
        }


        return view('admin.dashboard', compact('total_buku', 'total_anggota', 'total_peminjaman', 'total_penerbit', 'data_donut', 'label_donut', 'data_bar', 'data_donut2', 'label_donut2'));
    }


    public function katalog()
    {
        $data_katalog = Katalog::all();

        return view('admin.katalog.katalog', compact('data_katalog'));
    }

    public function penerbit()
    {
        $data_penerbit = Penerbit::all();
        return view('admin.penerbit', compact('data_penerbit'));
    }

    public function pengarang()
    {
        $data_pengarang = Pengarang::all();

        return view('admin.pengarang', compact('data_pengarang'));
    }

    public function anggota()
    {
        $data_anggota = Anggota::all();
        return view('admin.anggota', compact('data_anggota'));
    }

    public function buku()
    {
        $data_buku = Buku::all();
        return view('admin.buku', compact('data_buku'));
    }

    public function peminjaman()
    {
        if (auth()->user()->role('petugas')) {

        $data_buku = Buku::all();
        $data_anggota = Anggota::all();

        return view('admin.peminjaman', compact('data_anggota', 'data_buku'));
        } else {
            return abort('403');
        }
    }

    public function spatie() {
        //$role = Role::create(['name' => 'petugas']);
        //$permission = Permission::create(['name' => 'index peminjaman']);

        //$role->givePermissionTo($permission);
        //$permission->assignRole($role);

         $user = auth()->user();
         $user->assignRole('petugas');
         return $user;

        // $user = User::where('id', 2)->first();
        // $user->assignRole('petugas');
        // return $user;

        // $user = User::with('roles')->get();
        // return $user;

        // $user = auth()->user();
        // $user->removeRole('petugas');
    }

}
