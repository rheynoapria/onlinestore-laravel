<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class m_barang extends Model
{
    public $timestamps = false;

    protected $table = "tbl_barang";
    protected $fillable = ['nama_produk','brand','jenis','harga','jml_produk','spesifikasi','gambar'];

    
}
