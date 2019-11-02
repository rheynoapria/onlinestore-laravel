<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;

class Login extends Controller
{
    public function index(){
        return view('pages.Login');
    }

    public function Register(Request $request){
        // insert data ke table user
        DB::table('tbl_users')->insert([
            'nama_user'=> $request->nama,
            'email' => $request->email,
            'password' =>$request->password
        ]);

        return redirect('/login');
    }

    public function Login(Request $request){
        $user = DB::table('tbl_users')->where('email',$request->email)->first();

        if($user->password == $request->password){
            session()->put('id',$user->id_user);
            session()->put('nama',$user->nama_user);
            return redirect('/');
        }else{
            echo 'Gagal Login';
        }
    }

    public function Logout(){
        session()->forget('id');
        return back();
    }
}
