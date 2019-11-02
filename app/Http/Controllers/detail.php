<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class detail extends Controller
{
    public function index(){
        return view('pages.product_detail');
    }
}
