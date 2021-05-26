<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Detainee;
use Validator;
use Session;

class DetaineesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // dd(request()->get('test'));

        $detainees = Detainee::orderBy('last_name');

        $detainees = $detainees->get();
        // dd($detainees->count());

        return view('detainees.index', compact('detainees'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('detainees.create');
        // return view('detainees.test');
    }

    public function generateFormData($request)
    {
        $form_data = [
            'first_name' => null,
            'middle_name' => null,
            'last_name' => null,
            'birth_date' => null,
            'detained_date' => null,
            'released_date' => null,
        ];

        $data = array_merge($form_data, $request->only(array_keys($form_data)));
        
        $data['first_name'] = $data['first_name'] ? ucwords(mb_strtolower($data['first_name'])) : null;
        $data['middle_name'] = $data['middle_name'] ? ucwords(mb_strtolower($data['middle_name'])) : null;
        $data['last_name'] = $data['last_name'] ? ucwords(mb_strtolower($data['last_name'])) : null;

        return $data;
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $data = $this->generateFormData($request);

        $already_exists = Detainee::where([
            ['first_name', '=', $data['first_name']],
            // ['middle_name', '=', $data['middle_name']],
            ['last_name', '=', $data['last_name']],
        ])->count() ? true : false;

        if ($already_exists) {
            Session::flash('alert_message', 'Detainee already exists.');
            Session::flash('alert_class', 'alert-danger');

            return redirect(route('detainees.index'));
        }

        Detainee::create($data);

        Session::flash('alert_message', 'New detainee has been added successfully.');
        Session::flash('alert_class', 'alert-primary');

        return redirect(route('detainees.index'));
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
        $detainee = Detainee::find($id);

        if (!$detainee) {
            Session::flash('alert_message', 'Detainee does not exists.');
            Session::flash('alert_class', 'alert-danger');

            return redirect(route('detainees.index'));
        }

        return view('detainees.edit', compact('detainee'));
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
        $data = $this->generateFormData($request);

        $detainee = Detainee::find($id);

        if (!$detainee) {
            Session::flash('alert_message', 'Detainee does not exists.');
            Session::flash('alert_class', 'alert-danger');

            return redirect(route('detainees.index'));
        }

        if ($detainee->update($data)) {
            Session::flash('alert_message', 'Detainee has been updated successfully.');
            Session::flash('alert_class', 'alert-primary');
        } else {
            Session::flash('alert_message', 'There is an error updating detainee.');
            Session::flash('alert_class', 'alert-danger');
        }

        return redirect(route('detainees.index'));
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
