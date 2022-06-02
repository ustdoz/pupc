<?php

Route::get('_test', 'HomeController@test');

// Welcome Route
Route::get('/', function () {
    return redirect(route('home'));
    // return view('welcome');
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
Route::post('detainees/download', 'DetaineesController@download')->name('detainees.download');

Route::get('export', 'MyController@export')->name('export');
Route::get('importExportView', 'MyController@importExportView');
Route::post('import', 'MyController@import')->name('import');

// AdminLTE 3
// https://adminlte.io/blog/integrate-adminlte-with-laravel
// http://localhost/pupc/public/bower_components/admin-lte
Route::get('admin', function () {
    // return view('layouts.adminlte3.app');
    return view('admin_template');
})->name('admin_template');


Route::get('phpword', 'MyController@phpword');

Route::get('cod', 'DetaineesController@cod');


Route::get('bjmp', 'DetaineesController@transferToBjmp');


Route::get('test', function () {
    $detainees = \App\Detainee::all();

    // January
    dd(
        $detainees->whereBetween('detained_date', ['2021-01-01', '2021-01-31'])
        ->where('gender', 'male')
        // ->where('gender', 'female')
    );

    // February
    dd(
        $detainees->whereBetween('detained_date', ['2021-02-01', '2021-02-28'])
        ->where('gender', 'male')
        // ->where('gender', 'female')
    );

    // March
    dd(
        $detainees->whereBetween('detained_date', ['2021-03-01', '2021-03-31'])
        ->where('gender', 'male')
        // ->where('gender', 'female')
    );

    // April
    dd(
        $detainees->whereBetween('detained_date', ['2021-04-01', '2021-04-30'])
        ->where('gender', 'male')
        // ->where('gender', 'female')
    );

    // May
    dd(
        $detainees->whereBetween('detained_date', ['2021-05-01', '2021-05-31'])
        ->where('gender', 'male')
        // ->where('gender', 'female')
    );

    // June
    dd(
        $detainees->whereBetween('detained_date', ['2021-06-01', '2021-06-30'])
        ->where('gender', 'male')
        // ->where('gender', 'female')
    );

    // July
    dd(
        $detainees->whereBetween('detained_date', ['2021-07-01', '2021-07-31'])
        ->where('gender', 'male')
        // ->where('gender', 'female')
    );

    // August
    dd(
        $detainees->whereBetween('detained_date', ['2021-08-01', '2021-09-31'])
        ->where('gender', 'male')
        // ->where('gender', 'female')
    );

    // September
    dd(
        $detainees->whereBetween('detained_date', ['2021-09-01', '2021-09-30'])
        ->where('gender', 'male')
        // ->where('gender', 'female')
    );

    // October
    dd(
        $detainees->whereBetween('detained_date', ['2021-10-01', '2021-10-31'])
        ->where('gender', 'male')
        // ->where('gender', 'female')
    );

    // November
    dd(
        $detainees->whereBetween('detained_date', ['2021-11-01', '2021-11-30'])
        ->where('gender', 'male')
        // ->where('gender', 'female')
    );

    // December
    dd(
        $detainees->whereBetween('detained_date', ['2021-12-01', '2021-12-31'])
        ->where('gender', 'male')
        // ->where('gender', 'female')
    );


    dd($detainees);
    // return view('layouts.adminlte3.app');
    // return view('admin_template');
});