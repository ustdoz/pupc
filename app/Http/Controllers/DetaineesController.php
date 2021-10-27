<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Detainee;
use App\ChiefPolice;
use App\ChiefInvest;
use App\R7Invest;
use App\Jailer;
use App\Exports\DetaineesExport;
use Maatwebsite\Excel\Facades\Excel;
use Validator;
use Session;
use Carbon\Carbon;

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
        // $jailer = Jailer::find(1);
        // dd($jailer->detainees[0]->full_name);
        // dd(config('detainees.names.0'));

        $filter_years = [];

        for ($i=2019; $i <= Carbon::now()->format('Y'); $i++) { 
            $filter_years[] = $i;
            $i++;
        }

        $this->filter['years'] = $filter_years;

        $date_now = Carbon::now();
        $month = request()->get('filter_month') ? : $date_now->month;
        $this->filter['month'] = ($month > 9) ? $month : '0' . ((int) $month);
        $this->filter['year'] = request()->get('filter_year') ? : $date_now->year;

        $start = [$this->filter['year'], $this->filter['month'], '01'];
        
        $this->date['start'] = Carbon::createFromFormat('Y-m-d H:i:s', implode('-', $start) . ' 00:00:00');
        $this->date['end'] = Carbon::createFromFormat('Y-m-d H:i:s', implode('-', $start) . ' 00:00:00')->endOfMonth();
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $_datas = $this->subsistence();

        foreach ($_datas as $_data_key => $_data_value) {
            $$_data_key = $_data_value;
        }

        $current_detainees = $detainees->where('released_date', '=', null)->sortBy('detained_date');
        $last_inserted_detainees = $detainees->sortByDesc('created_at')->take(5);
        $last_updated_detainees = $detainees->sortByDesc('updated_at')->take(5);
        // dd(get_defined_vars());

        return view('detainees.subsistence', compact('data', 'detainees', 'recap', 'discharge', 'chief_police', 'chief_invest', 'r7_invest', 'jailers', 'current_detainees', 'last_inserted_detainees', 'last_updated_detainees'));

        // $detainees = Detainee::orderBy('last_name');
        // $detainees = $detainees->get();

        // return view('detainees.index', compact('detainees', 'jailer'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $jailers = Jailer::all();
        return view('detainees.create', compact('jailers'));
        // return view('detainees.test');
    }

    public function generateFormData($request)
    {
        $form_data = [
            'first_name' => null,
            'middle_name' => null,
            'last_name' => null,
            'birth_date' => null,
            'gender' => null,
            'violation' => null,
            'detained_date' => null,
            'released_date' => null,
            'released_blotter_number' => null,
            'chief_police_id' => 0,
            'chief_invest_id' => 0,
            'r7_invest_id' => 0,
            'jailer_id' => 0,
            'released_date_court' => null,
            'released_date_erogue' => null,
            'remarks' => null,
        ];

        $data = array_merge($form_data, $request->only(array_keys($form_data)));
        
        $data['first_name'] = $data['first_name'] ? ucwords(mb_strtolower($data['first_name'])) : null;
        $data['middle_name'] = $data['middle_name'] ? ucwords(mb_strtolower($data['middle_name'])) : null;
        $data['last_name'] = $data['last_name'] ? ucwords(mb_strtolower($data['last_name'])) : null;
        $data['chief_police_id'] = (int) $data['chief_police_id'];
        $data['chief_invest_id'] = (int) $data['chief_invest_id'];
        $data['r7_invest_id'] = (int) $data['r7_invest_id'];
        $data['jailer_id'] = (int) $data['jailer_id'];

        if (!$data['jailer_id'] || !Jailer::find($data['jailer_id'])) {
            unset($data['jailer_id']);
        }

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
        $jailers = Jailer::all();
        $detainee = Detainee::find($id);

        if (!$detainee) {
            Session::flash('alert_message', 'Detainee does not exists.');
            Session::flash('alert_class', 'alert-danger');

            return redirect(route('detainees.index'));
        }

        return view('detainees.edit', compact('detainee', 'jailers'));
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
            'current_detainees' => 0,
            'current_male' => 0,
            'current_female' => 0,
        ];

        $chief_police = ChiefPolice::all();
        $chief_invest = ChiefInvest::all();
        $r7_invest = R7Invest::all();
        $jailers = Jailer::all();
        // dd($jailers);

        $date_start = $this->date['start']->format('Y-m-d');
        $date_end = $this->date['end']->format('Y-m-d');

        $detainees = Detainee::orderBy('last_name')
            ->where(function($query) use ($date_start, $date_end) {
                $query->whereDate('detained_date', '<=', $date_end);
            })->where(function($query) use ($date_start, $date_end) {
                $query->whereDate('released_date', '>=', $date_start);
                $query->orWhereNull('released_date');
            });

        // dd($detainees->toSql());
        $detainees = $detainees->get();

        $discharge = $this->discharge($detainees);

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

            if ($item->gender == 'male') {
                $data['male']++;

                if (!$item->released_date) {
                    $data['current_male']++;
                }
            } else if ($item->gender == 'female') {
                $data['female']++;

                if (!$item->released_date) {
                    $data['current_female']++;
                }
            }

            if (!$item->released_date) {
                $data['current_detainees']++;
            }

            return $item;
        });

        // for debug check
        // $detainees_total_budget = array_sum($recap) * config('detainees.allowance_amount');
        $data['total_budget'] = $detainees->sum('total_budget');
        $data['total_detainees'] = $detainees->count();
        $data['month_year'] = $this->date['start']->format('F Y');
        // dd($data);

        $data['filter_years'] = $this->filter['years'];

        return [
            'data' => $data,
            'detainees' => $detainees,
            'recap' => $recap,
            'discharge' => $discharge,

            'chief_police' => $chief_police,
            'chief_invest' => $chief_invest,
            'r7_invest' => $r7_invest,
            'jailers' => $jailers,
        ];
    }

    public function download(Request $request)
    {
        // Download subsistence and recap
        // for printing page setup please check the link below:
        // https://github.com/PHPOffice/PHPExcel/blob/develop/Documentation/markdown/Overview/08-Recipes.md#page-setup-scaling-options

        $_datas = $this->subsistence();

        foreach ($_datas as $_data_key => $_data_value) {
            $$_data_key = $_data_value;
        }

        // $chief_police = ChiefPolice::find($data['chief_police_id']);
        // $chief_invest = ChiefInvest::find($data['chief_invest_id']);
        // $r7_invest = R7Invest::find($data['r7_invest_id']);
        // $jailer = Jailer::find($data['jailer_id']);

        $chief_police = ChiefPolice::find($request->get('chief_police_id'));
        $chief_invest = ChiefInvest::find($request->get('chief_invest_id'));
        $r7_invest = R7Invest::find($request->get('r7_invest_id'));
        $jailer = Jailer::find($request->get('jailer_id'));

        if (isset($data)) {
            $data = array_merge($data, $request->all());

            $data['chief_police'] = $chief_police->name;
            $data['chief_invest'] = $chief_invest->name;
            $data['r7_invest'] = $r7_invest->name;
            $data['jailer'] = $jailer->name;
            // dd($data);
        }

        

        $detainees_export = new DetaineesExport($detainees, $recap, $discharge, $data);
        return Excel::download($detainees_export, $data['month_year'] . ' ' . time() . '.xls');
    }

    public function discharge($detainees)
    {
        $discharge = $detainees->where('released_date', '!=', null);

        $discharge = $discharge->sortBy('released_blotter_number');

        return $discharge;
    }
}
