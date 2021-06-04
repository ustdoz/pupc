<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Detainee;
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

    public function __construct()
    {
        $date_now = Carbon::now();
        $month = request()->get('filter_month') ? : $date_now->month;
        $this->filter['month'] = ($month > 9) ? : '0' . ((int) $month);
        $this->filter['year'] = request()->get('filter_year') ? : $date_now->year;
        $start = [$this->filter['year'], $this->filter['month'], '01'];
        $this->date['start'] = Carbon::createFromFormat('Y-m-d H:i:s', implode('-', $start) . ' 00:00:00');
        $this->date['end'] = Carbon::createFromFormat('Y-m-d H:i:s', implode('-', $start) . ' 00:00:00')->endOfMonth();
        

        // dd($_detainees);

        // $this->filter['month'] = $month;
        // $this->filter['year'] = $year;

        // // $this->date['now'] = Carbon::now();
        // // $this->date['start'] = 
        // // $this->date['end'] = 


        // $end_day = $_date->endOfMonth()->day;
        // $start_date = implode('-', [$year, $month, '01']) . ' 00:00:00';
        // $end_date = implode('-', [$year, $month, $end_day]) . ' 00:00:00';
        
        // $detainees_detained = $detainees->whereBetween('detained_date', [$start_date, $end_date]);
        // $detainees_released = $detainees->whereBetween('released_date', [$start_date, $end_date]);
    }

    private function _getDetainedCount($start_date, $end_date)
    {
        if ($start_date == $end_date) {
            // for daily detained detainee
            return Detainee::whereDate('released_date', '=', $start_date)->count();
        }

        return Detainee::whereBetween('detained_date', [$start_date, $end_date])->count();
    }

    private function _getReleasedCount($start_date, $end_date)
    {
        if ($start_date == $end_date) {
            // for daily released detainee
            return Detainee::whereDate('released_date', '=', $start_date)->count();
        }

        return Detainee::whereBetween('released_date', [$start_date, $end_date])->count();
    }


    public function newCode()
    {
        $_date = Carbon::now();
        $year = $_date->year;
        $month = ($_date->month < 10) ? ('0' . $_date->month) : $_date->month;
        $start_day = '01';
        $end_day = $_date->endOfMonth()->day;
        $start_date = implode('-', [$year, $month, $start_day]) . ' 00:00:00';
        $end_date = implode('-', [$year, $month, $end_day]) . ' 00:00:00';

        $detainees = Detainee::orderBy('last_name')->get();

        $detainees_detained = $detainees->whereBetween('detained_date', [$start_date, $end_date]);
        $detainees_released = $detainees->whereBetween('released_date', [$start_date, $end_date]);

        dd($detainees, $detainees_detained, $detainees_released);
    }

    // public function __construct()
    // {
    //     $this->newCode();
    //     exit;
    //     $data = [];
    //     $_date = Carbon::now();
    //     // dd(config()->view);
    //     // dd($_date->month, $_date->endOfMonth()->day);

    //     $year = $_date->year;
    //     $month = ($_date->month < 10) ? ('0' . $_date->month) : $_date->month;
    //     $start_day = '01';
    //     $end_day = $_date->endOfMonth()->day;
    //     $start_date = implode('-', [$year, $month, $start_day]);
    //     $end_date = implode('-', [$year, $month, $end_day]);

    //     $detainees = Detainee::orderBy('last_name');

    //     $data['detained'] = $this->_getDetainedCount($start_date, $end_date);
    //     $data['released'] = $this->_getReleasedCount($start_date, $end_date);

    //     dd($data);

    //     $detainees = $detainees->where(function($query) use ($start_date, $end_date) {
    //         $query->whereDate('released_date', '>=', $start_date);
    //         $query->whereDate('released_date', '<=', $end_date);
    //     })
    //     ->orWhereNull('released_date');

    //     $detainees = $detainees->get();
    //     dd($start_date, $end_date);
    //     $test = $detainees->where('detained_date', '>=', $start_date);
    //     // $test = $test->where('detained_date', '<=', $end_date);

    //     // $test = $detainees->whereBetween('detained_date', [$start_date, $end_date]);

    //     foreach ($test as $t) {
    //         dump($t->detained_date->format('Y-m-d'));
    //     }

    //     dd('');

    //     dd($test->get('detained_date'));
    //     // foreach ($detainees as $detainee) {

    //     // }

    //     dd($detainees->toArray());
    // }

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

    public function subsistence()
    {

        $date_start = $this->date['start']->format('Y-m-d');
        $date_end = $this->date['end']->format('Y-m-d');

        $detainees = Detainee::orderBy('last_name')
            ->where(function($query) use ($date_start, $date_end) {
                $query->whereDate('detained_date', '>=', $date_start);
                $query->whereDate('detained_date', '<=', $date_end);
            })->orWhere(function($query) use ($date_start, $date_end) {
                $query->whereDate('released_date', '>=', $date_start);
                $query->whereDate('released_date', '<=', $date_end);
            })->orWhereNull('released_date')
                            ->get();

        $detainees->map(function($item) {

            $_date_start = $item->detained_date;
            $_date_end = $item->released_date;

            if ($_date_start < $this->date['start']) {
                $_date_start = $this->date['start'];
            }

            if (is_null($_date_end)) {
                $_date_end = $this->date['end'];
            }

            $item->days_detained = $_date_start->diffInDays($_date_end) + 1;
            $item->total_budget = $item->days_detained * config('detainees.allowance_amount');

            return $item;
        });

        return view('detainees.subsistence', compact('detainees'));


        // dd($this->filter['year'], $this->filter['month']);
        $_date = Carbon::now();
        // dd(config()->view);
        // dd($_date->month, $_date->endOfMonth()->day);

        $year = $_date->year;
        $month = ($_date->month < 10) ? ('0' + $_date->month) : $_date->month;
        // dd($month);
        $start_day = '01';
        $end_day = $_date->endOfMonth()->day;
        $start_date = implode('-', [$year, $month, $start_day]);
        $end_date = implode('-', [$year, $month, $end_day]);

        $detainees = Detainee::orderBy('last_name');
        $detainees = $detainees->where(function($query) use ($start_date, $end_date) {
            $query->whereDate('released_date', '>=', $start_date);
            $query->whereDate('released_date', '<=', $end_date);
        })
        ->orWhereNull('released_date');

        $detainees = $detainees->get();

        $general_detainees_data = $this->_generateGeneralDetaineesData($detainees);

        return view('detainees.subsistence', compact('detainees'));
    }

    public function daily()
    {
        $_date = Carbon::now();
        dd($_date->month);
        $detainees = Detainee::orderBy('last_name');
        // $detainess = $detainees->where();
        // for current day
        // $detainees = $detainees->where('released_date', '>=', Carbon::now()->format('Y-m-d'))
        //                        ->orWhereNull('released_date');

        // sample where clause
        // ->where(function ($query) {
        //     $query->where('datefield', '<', $date)
        //         ->orWhereNull('datefield');
        // }

        $detainees = $detainees->get();
        dd($detainees->first());

        return view('detainees.subsistence', compact('detainees'));
    }

    public function recap()
    {
        $detainees = Detainee::orderBy('last_name');

        // for current day
        // $detainees = $detainees->where('released_date', '>=', Carbon::now()->format('Y-m-d'))
        //                        ->orWhereNull('released_date');

        // sample where clause
        // ->where(function ($query) {
        //     $query->where('datefield', '<', $date)
        //         ->orWhereNull('datefield');
        // }

        $detainees = $detainees->get();
        // dd($detainees);

        return view('detainees.subsistence', compact('detainees'));
    }

    private function _generateGeneralDetaineesData($detainees)
    {
        $data = [];

        return $data;
    }
}
