<?php

// Welcome Route
Route::get('/', function () {
    return view('welcome');
});

// Authentication Routes
Auth::routes();

// Home Route
Route::get('/home', 'HomeController@index')->name('home');

// Detainees Routes
Route::resource('detainees', 'DetaineesController')->middleware('auth');

Route::get('export', 'MyController@export')->name('export');
Route::get('importExportView', 'MyController@importExportView');
Route::post('import', 'MyController@import')->name('import');