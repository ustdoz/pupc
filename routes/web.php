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
Route::group(['prefix' => 'detainees', 'middleware' => 'auth'], function() {
    Route::get('subsistence', 'DetaineesController@subsistence')->name('detainees.subsistence');
});

Route::resource('detainees', 'DetaineesController')->middleware('auth');

Route::get('export', 'MyController@export')->name('export');
Route::get('importExportView', 'MyController@importExportView');
Route::post('import', 'MyController@import')->name('import');