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

Route::get('settings/create/chief_police', 'SettingsController@createChiefPolice')->name('settings.create.chief_police');
Route::post('settings/store/chief_police', 'SettingsController@storeChiefPolice')->name('settings.store.chief_police');
Route::get('settings/edit/chief_police/{chief_police}', 'SettingsController@editChiefPolice')->name('settings.edit.chief_police');
Route::post('settings/update/chief_police/{chief_police}', 'SettingsController@updateChiefPolice')->name('settings.update.chief_police');

Route::get('settings/create/chief_invest', 'SettingsController@createChiefInvest')->name('settings.create.chief_invest');
Route::post('settings/store/chief_invest', 'SettingsController@storeChiefInvest')->name('settings.store.chief_invest');
Route::get('settings/edit/chief_invest/{chief_invest}', 'SettingsController@editChiefInvest')->name('settings.edit.chief_invest');
Route::post('settings/update/chief_invest/{chief_invest}', 'SettingsController@updateChiefInvest')->name('settings.update.chief_invest');

Route::get('settings/create/r7_invest', 'SettingsController@createR7Invest')->name('settings.create.r7_invest');
Route::post('settings/store/r7_invest', 'SettingsController@storeR7Invest')->name('settings.store.r7_invest');
Route::get('settings/edit/r7_invest/{r7_invest}', 'SettingsController@editR7Invest')->name('settings.edit.r7_invest');
Route::post('settings/update/r7_invest/{r7_invest}', 'SettingsController@updateR7Invest')->name('settings.update.r7_invest');

Route::get('settings/create/jailer', 'SettingsController@createJailer')->name('settings.create.jailer');
Route::post('settings/store/jailer', 'SettingsController@storeJailer')->name('settings.store.jailer');
Route::get('settings/edit/jailer/{jailer}', 'SettingsController@editJailer')->name('settings.edit.jailer');
Route::post('settings/update/jailer/{jailer}', 'SettingsController@updateJailer')->name('settings.update.jailer');

// Detainees Route
Route::resource('detainees', 'DetaineesController')->middleware('auth');
Route::post('detainess/download', 'DetaineesController@download')->name('detainees.download');

Route::get('export', 'MyController@export')->name('export');
Route::get('importExportView', 'MyController@importExportView');
Route::post('import', 'MyController@import')->name('import');