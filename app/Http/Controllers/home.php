<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\m_barang;

class home extends Controller
{
    public function index(){
        return view('home');
    }

    public function store(Request $request){
        $this->validate($request,[
            'file' => 'required|max:4042'
        ]);
        $file = $request->file('file');
        $nama_file = time()."_".$file->getClientOriginalName();
        $tujuan_upload = 'data_file';

        if ($file->move($tujuan_upload,$nama_file)) {
            $data = m_barang::create([
                'nama_produk' => $request->nama_produk,
                'brand' => $request->brand,
                'jenis' => $request->jenis,
                'harga' => $request->harga,
                'jml_produk' => $request->jml_produk,
                'spesifikasi' => $request->spesifikasi,
                'gambar' => $nama_file
            ]);
            $res['message'] = "Success!";
            $res['values'] = $data;
            return response($res);
        }
    }
}
