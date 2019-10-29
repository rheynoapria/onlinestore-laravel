<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class Barang extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tbl_barang', function (Blueprint $table) {
            $table->bigIncrements('id_barang');
            $table->string('nama_produk');
            $table->string('brand');
            $table->string('jenis');
            $table->string('harga');
            $table->integer('jml_produk');
            $table->string('spesifikasi');
            $table->float('gambar');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //
    }
}
