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

use PhpOffice\PhpWord\TemplateProcessor;

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
        $year_now = ((int) Carbon::now()->format('Y'));

        $year_start = 2019;
        while ($year_start <= $year_now) {
            $filter_years[] = $year_start;
            $year_start++;
        }

        $this->filter['years'] = $filter_years;

        $date_now = Carbon::now();
        $month = request()->get('filter_month') ? : $date_now->month;
        $this->filter['month'] = ($month > 9) ? $month : '0' . ((int) $month);
        $this->filter['year'] = request()->get('filter_year') ? : $date_now->year;

        $start = [$this->filter['year'], $this->filter['month'], '01'];
        
        $this->date['start'] = Carbon::createFromFormat('Y-m-d H:i:s', implode('-', $start) . ' 00:00:00');
        $this->date['end'] = Carbon::createFromFormat('Y-m-d H:i:s', implode('-', $start) . ' 23:59:59')->endOfMonth();

        $year_month = Carbon::createFromFormat('Y-m', $this->filter['year'] . '-' . $this->filter['month'])->endOfMonth();

        $this->filter['_start_month'] = $this->date['start'];
        $this->filter['_end_month'] = $this->date['end'];
        $this->filter['start_month'] = $this->date['start']->format('Y-m-d');
        $this->filter['end_month'] = $this->date['end']->format('Y-m-d');
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

        $current_detainees = $detainees->filter(function($product) {
            if (!$product->released_date) {
                return true;
            }

            $check = !$product->released_date->between($this->filter['_start_month'], $this->filter['_end_month']);

            return $check;

        })->sortBy('detained_date');

        $current_committed_detainees = $current_detainees->where('commitment_date', '!=', null)->sortBy('commitment_date');

        $data['current_detainees'] = $current_detainees->count();
        $data['current_male'] = $current_detainees->where('gender', 'male')->count();
        $data['current_female'] = $current_detainees->where('gender', 'female')->count();

        $last_inserted_detainees = Detainee::orderBy('created_at', 'desc')->limit(5)->get();
        $last_updated_detainees = Detainee::orderBy('updated_at', 'desc')->limit(5)->get();

        $compact = compact(
            'data', 'detainees', 'recap', 'discharge', 'chief_police', 'chief_invest', 
            'r7_invest', 'jailers', 'current_detainees', 'current_committed_detainees', 
            'last_inserted_detainees', 'last_updated_detainees', '_filter'
        );

        if (func_get_args()) {
            return $compact;
        }

        return view('detainees.subsistence', $compact);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $jailers = Jailer::where('is_active', 1)->get();
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
            'commitment_date' => null,
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
            ['detained_date', '=', $data['detained_date']],
        ])->count() ? true : false;

        if ($already_exists) {
            Session::flash('alert_message', 'Detainee already exists.');
            Session::flash('alert_class', 'alert-danger');

            return redirect(route('detainees.index', request()->query()));
        }

        Detainee::create($data);

        Session::flash('alert_message', 'New detainee has been added successfully.');
        Session::flash('alert_class', 'alert-primary');

        return redirect(route('detainees.index', request()->query()));
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
        $jailers = Jailer::where('is_active', 1)->get();
        $detainee = Detainee::find($id);

        if (!$detainee) {
            Session::flash('alert_message', 'Detainee does not exists.');
            Session::flash('alert_class', 'alert-danger');

            return redirect(route('detainees.index', request()->query()));
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

            return redirect(route('detainees.index', request()->query()));
        }

        if ($detainee->update($data)) {
            Session::flash('alert_message', 'Detainee has been updated successfully.');
            Session::flash('alert_class', 'alert-primary');
        } else {
            Session::flash('alert_message', 'There is an error updating detainee.');
            Session::flash('alert_class', 'alert-danger');
        }

        return redirect(route('detainees.index', request()->query()));
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
            'commitment_order' => 0,
            'male' => 0,
            'female' => 0,
            'current_detainees' => 0,
            'current_male' => 0,
            'current_female' => 0,
            'total_number_of_days' => 0,
        ];

        $chief_police = ChiefPolice::all();
        $chief_invest = ChiefInvest::all();
        $r7_invest = R7Invest::where('is_active', 1)->get();;
        $jailers = Jailer::where('is_active', 1)->get();
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

                if ($recap_carbon->between($_date_start, $_date_end) || $recap_carbon->format('Y-m-d') == $_date_start->format('Y-m-d') || $recap_carbon->format('Y-m-d') == $_date_end->format('Y-m-d')) {
                    $recap[$recap_date]++;
                }
            }

            $item->days_detained = $_date_start->diffInDays($_date_end) + 1;
            $item->total_budget = $item->days_detained * config('detainees.allowance_amount');

            $data['total_number_of_days'] = $data['total_number_of_days'] + $item->days_detained;
            if ($item->gender == 'male') {
                $data['male']++;
            } else if ($item->gender == 'female') {
                $data['female']++;
            }
            

            return $item;
        });

        $data['commitment_order'] = $detainees->where('commitment_date', '!=', null)->count();

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
            '_filter' => $this->filter,
        ];
    }

    public function download(Request $request)
    {
        // Download subsistence and recap
        // for printing page setup please check the link below:
        // https://github.com/PHPOffice/PHPExcel/blob/develop/Documentation/markdown/Overview/08-Recipes.md#page-setup-scaling-options

        if (!$request->has('export_sheet')) {
            Session::flash('alert_message', 'The system does not know what category to export.');
            Session::flash('alert_class', 'alert-danger');

            return redirect()->back();
        }

        $_datas = $this->subsistence();

        foreach ($_datas as $_data_key => $_data_value) {
            $$_data_key = $_data_value;
        }

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
        }

        $detainees_export = new DetaineesExport($detainees, $recap, $discharge, $data);
        return Excel::download($detainees_export, 'PUPC Carmona ' . $data['month_year'] . ' Reports.xls');
    }

    public function discharge($detainees)
    {
        $discharge = $detainees->filter(function($product) {
            if (!$product->released_date) {
                return false;
            }

            $check = $product->released_date->between($this->filter['_start_month'], $this->filter['_end_month']);

            return $check;

        })->sortBy('released_blotter_number');

        return $discharge;
    }

    public function cod()
    {
        /**
         * Certificate Of Detention
         */
        
        $_datas = $this->subsistence();

        foreach ($_datas as $_data_key => $_data_value) {
            $$_data_key = $_data_value;
        }

        $current_detainees = $detainees->filter(function($product) {
            if (!$product->released_date) {
                return true;
            }

            $check = !$product->released_date->between($this->filter['_start_month'], $this->filter['_end_month']);

            return $check;

        })->sortBy('detained_date');

        $date_now = Carbon::now()->format('F j, Y');

        foreach ($current_detainees as $detainee) {

            $full_name = mb_strtoupper($detainee->full_name);
            $first_last_name = $detainee->first_name . ' ' . $detainee->last_name;

            // dd($full_name);

            $file = public_path('files/cod/_TEMPLATE.docx');
            $phpword = new TemplateProcessor($file);

            $phpword->setValue('date_now', $date_now);
            $phpword->setValue('full_name', $full_name);
            $phpword->setValue('gender', $detainee->gender);
            $phpword->setValue('age', $detainee->age);
            $phpword->setValue('born_date', $detainee->birth_date ? $detainee->birth_date->format('F j, Y') : '[birth_date]');
            $phpword->setValue('civil_status', 'single');
            $phpword->setValue('address', '[address]');
            $phpword->setValue('detained_date', $detainee->detained_date->format('F j, Y'));
            $phpword->setValue('violation', $detainee->violation);
            $phpword->setValue('case_number', '[CASENUMBER]');
            // $phpword->setValue('jailer', 'PSSg Percival Restrivera');
            $phpword->setValue('jailer', 'PSSg Anderson A Videña');
            $phpword->setValue('first_last_name', $first_last_name);

            $phpword->saveAs(public_path("files/cod/$full_name.docx"));

            // dd($detainee);
        }

        dd($current_detainees);
    }
    
    public function transferToBjmp()
    {
        $_datas = $this->index(1);

        foreach ($_datas as $_data_key => $_data_value) {
            $$_data_key = $_data_value;
        }

        $full_names = ['Allan Ferry Diaz', 'John Daniel Perante Francisco', 'Marlon Aquino Lontoc', 'Mervin Vergara Manalo', 'Reynold Basbas Requieron', 'Ronald Reobilo Laudiza', 'Mike Angelo Espadilla Rodriguez', 'Richard Castillo Tanega', 'Jose Franco Faustino Tabanera', 'Benedicto Papuran Quizol', 'Edwin Versola Dagmante', 'Garry Panopio Miranda', 'Grazel Belda Mendoza'];
        $for_transfers = $detainees->whereIn('full_name', $full_names)->pluck('id')->toArray();
        

        $update_detainees = Detainee::whereIn('id', $for_transfers)->update([
            'jailer_id' => 3,
            'released_blotter_number' => '2022-05-235',
            'released_date_court' => '2022-05-20',
            'released_date_erogue' => '2022-05-20',
            'released_date' => '2022-05-20',
            'remarks' => '(Transferred to BJMP)',
        ]);

        dd($update_detainees);
    }
}
