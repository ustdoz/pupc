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

Route::get('/', function () {
    return view('welcome');
});


Route::group(['middleware' => 'auth', 'prefix' => 'detainees'], function() {
    Route::get('/', 'DetaineesController@index')->name('detainees');
    Route::get('create', 'DetaineesController@create')->name('detainees.create');
});


Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
