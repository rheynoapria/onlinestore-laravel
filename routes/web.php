<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', 'home@index');
Route::post('/pushData','home@store');
Route::get('/login','Login@index');
Route::post('/Register','Login@Register');
Route::post('/Signin','Login@Login');
Route::get('/logout','Login@Logout');
Route::get('/detail-item','detail@index');