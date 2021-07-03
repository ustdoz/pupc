<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Detainee;
use Validator;
use Session;
use Carbon\Carbon;
use Maatwebsite\Excel\Facades\Excel;
use App\Exports\DetaineesExport;
use App\Exports\SubsistenceRecapExport;

class DetaineesController extends Controller
{
    protected $filter = [
        'day' => null,
        'month' => null,
        'year' => null,
    ];

    protected $date = [
        'now' => null,
        'start' => null,
        'end' => null,
    ];

    protected $download = false;

    public function __construct()
    {
        $date_now = Carbon::now();
        $month = request()->get('filter_month') ? : $date_now->month;
        $this->filter['month'] = ($month > 9) ? : '0' . ((int) $month);
        $this->filter['year'] = request()->get('filter_year') ? : $date_now->year;
        $start = [$this->filter['year'], $this->filter['month'], '01'];
        $this->date['start'] = Carbon::createFromFormat('Y-m-d H:i:s', implode('-', $start) . ' 00:00:00');
        $this->date['end'] = Carbon::createFromFormat('Y-m-d H:i:s', implode('-', $start) . ' 00:00:00')->endOfMonth();

        if (request()->has('download')) {
            $this->download = true;
        }
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return $this->subsistence();
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

    public function subsistence()
    {
        $data = [
            // 'total_budget' => array_sum($recap) * config('detainees.allowance_amount'), // from recap data
            'total_budget' => 0, // from detainees data
            'total_detainees' => 0,
            'detained' => 0,
            'released' => 0,
            'male' => 0,
            'female' => 0,
        ];

        $date_start = $this->date['start']->format('Y-m-d');
        $date_end = $this->date['end']->format('Y-m-d');

        $detainees = Detainee::orderBy('last_name')
            ->where(function($query) use ($date_start, $date_end) {
                $query->whereDate('detained_date', '<=', $date_end);
            })->where(function($query) use ($date_start, $date_end) {
                $query->whereDate('released_date', '>=', $date_start);
                $query->orWhereNull('released_date');
            })->get();

        $recap = [];
        $_start = Carbon::createFromFormat('Y-m-d', $this->date['start']->format('Y-m-d'));
        while ($_start < $this->date['end']) {
            $recap[$_start->format('d/m/Y')] = 0;
            $_start = $_start->addDay();
        }

        $detainees->map(function($item) use (&$recap, &$data) {
            $_date_start = $item->detained_date;
            $_date_end = $item->released_date;

            if ($_date_start < $this->date['start']) {
                $_date_start = $this->date['start'];
            }

            if ($item->released_date > $this->date['end'] || is_null($_date_end)) {
                $_date_end = $this->date['end'];
            }

            foreach ($recap as $recap_date => $recap_value) {
                $recap_carbon = Carbon::createFromFormat('d/m/Y', $recap_date);

                if ($recap_carbon->format('Y-m-d') == $item->detained_date->format('Y-m-d')) {
                    // add count for detained this month
                    $data['detained']++;
                }

                if ($item->released_date && ($recap_carbon->format('Y-m-d') == $item->released_date->format('Y-m-d'))) {
                    // add count for released this month
                    $data['released']++;
                }

                // dump($_date_start->format('Y-m-d') . ', ' . $recap_carbon->format('Y-m-d') . ', ' . $_date_end->format('Y-m-d') . ' = ' . ($recap_carbon->between($_date_start, $_date_end) ? 'YES' : 'NO'));

                if ($recap_carbon->between($_date_start, $_date_end) || $recap_carbon->format('Y-m-d') == $_date_start->format('Y-m-d') || $recap_carbon->format('Y-m-d') == $_date_end->format('Y-m-d')) {
                    $recap[$recap_date]++;
                }
            }

            // dump('------------------------------------------------------------------');

            $item->days_detained = $_date_start->diffInDays($_date_end) + 1;
            $item->total_budget = $item->days_detained * config('detainees.allowance_amount');

            return $item;
        });

        // for debug check
        // $detainees_total_budget = array_sum($recap) * config('detainees.allowance_amount');
        $data['total_budget'] = $detainees->sum('total_budget');
        $data['total_detainees'] = $detainees->count();
        $data['month_year'] = $this->date['start']->format('F Y');
        // dd($data);

        if ($this->download) {
            // Download subsistence and recap
            $detainees_export = new SubsistenceRecapExport($detainees, $recap, $data);
            return Excel::download($detainees_export, $data['month_year'] . ' ' . time() . '.xls');
        }

        return view('detainees.subsistence', compact('data', 'detainees', 'recap'));
    }
}
