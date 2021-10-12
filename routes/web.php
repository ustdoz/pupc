<?php

// Welcome Route
Route::get('/', function () {
    return view('welcome');
});

// Authentication Route
Auth::routes();

// Home Route
Route::get('/home', 'HomeController@index')->name('home');

// Settings Route
Route::resource('settings', 'SettingsController')->middleware('auth');

// Detainees Route
Route::resource('detainees', 'DetaineesController')->middleware('auth');
Route::post('detainess/download', 'DetaineesController@download')->name('detainees.download');

Route::get('export', 'MyController@export')->name('export');
Route::get('importExportView', 'MyController@importExportView');
Route::post('import', 'MyController@import')->name('import');