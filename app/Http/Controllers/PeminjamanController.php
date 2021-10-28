<?php

namespace App\Http\Controllers;

use DB;
use App\Models\Anggota;
use App\Models\Buku;
use App\Models\Peminjaman;
use App\Models\DetailPeminjaman;
use Illuminate\Http\Request;

class PeminjamanController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $datas = Peminjaman::select('peminjamen.*', DB::raw('DATEDIFF(tgl_kembali,tgl_pinjam) as lama_pinjam'))->with('anggota', 'buku');

        if ($request->status) {
            $status = $request->status == 'belum' ? 0 : 1;
            $datas = $datas->where('status', $status);
        }

        if ($request->date) {
            $datas = $datas->where('tgl_pinjam', $request->date);
        }

        $datas = $datas->get();

        foreach ($datas as $key => $value) {

            // format date
            $value->tgl_pinjam = date('d F Y', strtotime($value->tgl_pinjam));
            $value->tgl_kembali = date('d F Y', strtotime($value->tgl_kembali));

            // total bayar
            $total_bayar = 0;

            foreach ($value->buku as $buku) {
                $total_bayar = $total_bayar + $buku->harga_pinjam;
            }

            $value->total_bayar = 'Rp. ' . number_format($total_bayar * $value->lama_pinjam) . ',-';

            //list buku
            $value->list_buku = Buku::select('id', 'judul')->get();
            $value->buku_dipinjam = DetailPeminjaman::where('id_peminjaman', $value->id)->pluck('id_buku');

            foreach ($value->list_buku as $list) {
                $list->dipinjam = in_array($list->id, $value->buku_dipinjam->toArray());
            }
        }

        $datatables = datatables()->of($datas)->addIndexColumn();

        return $datatables->make(true);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
        public function store(Request $request)
        {
            $this->validate($request, [
                'id_anggota' => ['required'],
            ]);

            $peminjaman = new Peminjaman;
            $peminjaman->id_anggota = $request->id_anggota;
            $peminjaman->tgl_pinjam = $request->tgl_pinjam;
            $peminjaman->tgl_kembali = $request->tgl_kembali;
            $peminjaman->status = 0;
            $peminjaman->save();

            foreach ($request->buku as $value) {
                $detail = new DetailPeminjaman;
                $detail->id_peminjaman = $peminjaman->id;
                $detail->id_buku = $value;
                $detail->qty = 1;
                $detail->save();
            }
            
            return back();
        }

    /**
     * Display the specified resource.
     *
     * @param  \App\Peminjaman  $peminjaman
     * @return \Illuminate\Http\Response
     */
    public function show(Peminjaman $peminjaman)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Peminjaman  $peminjaman
     * @return \Illuminate\Http\Response
     */
    public function edit(Peminjaman $peminjaman)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Peminjaman  $peminjaman
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Peminjaman $peminjaman)
    {
        $this->validate($request, [
            'id_anggota'    => ['required'],
            'tgl_pinjam'    => ['required'],
            'tgl_kembali'   => ['required']
        ]);

        $peminjaman->id_anggota = $request->id_anggota;
        $peminjaman->tgl_pinjam = $request->tgl_pinjam;
        $peminjaman->tgl_kembali = $request->tgl_kembali;
        $peminjaman->status = $request->status;
        $peminjaman->save();

        DetailPeminjaman::where('id_peminjaman', $peminjaman->id)->delete();

        foreach ($request->buku as $value) {
            $detail = new DetailPeminjaman;
            $detail->id_peminjaman = $peminjaman->id;
            $detail->id_buku = $value;
            $detail->qty = 1;
            $detail->save();
        }

        if ($request->status == 1) {
            $buku = Buku::find($value);
            $stok_buku = $buku->qty_stok + 1;
            $buku->update(['qty_stok' => $stok_buku]);
        }        
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Peminjaman  $peminjaman
     * @return \Illuminate\Http\Response
     */
    public function destroy(Peminjaman $peminjaman)
    {
        DetailPeminjaman::where('id_peminjaman', $peminjaman->id)->delete();
        $peminjaman->delete();
    }
}
