<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\ChiefPolice;
use App\ChiefInvest;
use App\R7Invest;
use App\Jailer;

class SettingsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $chief_police = ChiefPolice::all();
        $chief_invest = ChiefInvest::all();
        $r7_invest = R7Invest::all();
        $jailers = Jailer::all();

        return view('settings.index', compact('chief_police', 'chief_invest', 'r7_invest', 'jailers'));
    }

    public function createChiefPolice()
    {
        return view('settings.create-chief-police');
    }

    public function storeChiefPolice(Request $request)
    {
        // 
    }

    public function editChiefPolice($id)
    {
        return view('settings.edit-chief-police');
    }

    public function updateChiefPolice(Request $request, $id)
    {
        //
    }

    public function createChiefInvest()
    {
        return view('settings.create-chief-invest');
    }

    public function storeChiefInvest(Request $request)
    {
        // 
    }

    public function editChiefInvest($id)
    {
        return view('settings.edit-chief-invest');
    }

    public function updateChiefInvest(Request $request, $id)
    {
        //
    }

    public function createR7Invest()
    {
        return view('settings.create-r7-invest');
    }

    public function storeR7Invest(Request $request)
    {
        // 
    }

    public function editR7Invest($id)
    {
        return view('settings.edit-r7-invest');
    }

    public function updateR7Invest(Request $request, $id)
    {
        //
    }

    public function createJailer()
    {
        return view('settings.create-jailer');
    }

    public function storeJailer(Request $request)
    {
        // 
    }

    public function editJailer($id)
    {
        return view('settings.edit-jailer');
    }

    public function updateJailer(Request $request, $id)
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
