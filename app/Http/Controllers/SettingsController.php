<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Session;

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
        return view('settings.create.chief_police');
    }

    public function storeChiefPolice(Request $request)
    {
        ChiefPolice::create($request->only(['name']));
        Session::flash('alert_message', 'Chief of police has been created successfully.');
        Session::flash('alert_class', 'alert-primary');

        return redirect(route('settings.index'));
    }

    public function editChiefPolice(ChiefPolice $chief_police)
    {
        return view('settings.edit.chief_police', compact('chief_police'));
    }

    public function updateChiefPolice(Request $request, $id)
    {
        Session::flash('alert_message', 'There is a problem processing your request.');
        Session::flash('alert_class', 'alert-danger');

        if ($chief_police = ChiefPolice::find($id)) {
            $chief_police->update($request->all());

            Session::flash('alert_message', 'Chief of police has been updated successfully.');
            Session::flash('alert_class', 'alert-primary');
        }

        return redirect(route('settings.index'));
    }

    public function createChiefInvest()
    {
        return view('settings.create.chief_invest');
    }

    public function storeChiefInvest(Request $request)
    {
        ChiefInvest::create($request->only(['name']));
        Session::flash('alert_message', 'Chief of invest has been created successfully.');
        Session::flash('alert_class', 'alert-primary');

        return redirect(route('settings.index'));
    }

    public function editChiefInvest(ChiefInvest $chief_invest)
    {
        return view('settings.edit.chief_invest', compact('chief_invest'));
    }

    public function updateChiefInvest(Request $request, $id)
    {
        Session::flash('alert_message', 'There is a problem processing your request.');
        Session::flash('alert_class', 'alert-danger');

        if ($chief_invest = ChiefInvest::find($id)) {
            $chief_invest->update($request->all());

            Session::flash('alert_message', 'Chief of invest has been updated successfully.');
            Session::flash('alert_class', 'alert-primary');
        }

        return redirect(route('settings.index'));
    }

    public function createR7Invest()
    {
        return view('settings.create.r7_invest');
    }

    public function storeR7Invest(Request $request)
    {
        R7Invest::create($request->only(['name']));
        Session::flash('alert_message', 'R7 of invest has been created successfully.');
        Session::flash('alert_class', 'alert-primary');

        return redirect(route('settings.index'));
    }

    public function editR7Invest(R7Invest $r7_invest)
    {
        return view('settings.edit.r7_invest', compact('r7_invest'));
    }

    public function updateR7Invest(Request $request, $id)
    {
        Session::flash('alert_message', 'There is a problem processing your request.');
        Session::flash('alert_class', 'alert-danger');

        if ($r7_invest = R7Invest::find($id)) {
            $r7_invest->update($request->all());

            Session::flash('alert_message', 'R7 of invest has been updated successfully.');
            Session::flash('alert_class', 'alert-primary');
        }

        return redirect(route('settings.index'));
    }

    public function createJailer()
    {
        return view('settings.create.jailer');
    }

    public function storeJailer(Request $request)
    {
        Jailer::create($request->only(['name']));
        Session::flash('alert_message', 'Jailer has been created successfully.');
        Session::flash('alert_class', 'alert-primary');

        return redirect(route('settings.index'));
    }

    public function editJailer(Jailer $jailer)
    {
        return view('settings.edit.jailer', compact('jailer'));
    }

    public function updateJailer(Request $request, $id)
    {
        Session::flash('alert_message', 'There is a problem processing your request.');
        Session::flash('alert_class', 'alert-danger');

        if ($jailer = Jailer::find($id)) {
            $jailer->update($request->all());

            Session::flash('alert_message', 'Jailer has been updated successfully.');
            Session::flash('alert_class', 'alert-primary');
        }

        return redirect(route('settings.index'));
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
