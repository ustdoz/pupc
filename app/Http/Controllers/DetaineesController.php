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

    public function seed()
    {
        $data = [
            ['LABE', 'RICARDO', 'SORENO', '16/04/2021', '29/04/2021'],
            ['RANARA', 'ALBERT', 'ROARING', '25/04/2021', '29/04/2021'],
            ['RANARA', 'JORDAN', 'RETUERMA', '25/04/2021', '29/04/2021'],
            ['LOPEZ', 'RONALDO', 'PAULAR', '25/04/2021', '29/04/2021'],
            ['GUTIERREZ', 'JOHN CARLO', 'ROZ', '25/04/2021', '29/04/2021'],
            ['LOVA', 'BERT', 'SOLIS', '25/04/2021', '29/04/2021'],
            ['ZETA', 'RAYMOND', 'PARAGO', '25/04/2021', '29/04/2021'],
            ['ZETA', 'RENIER', 'PEREZ', '25/04/2021', '29/04/2021'],
            ['MASAGA', 'RANDY', 'GAMBOA', '28/03/2021', '26/04/2021'],
            ['LANAC', 'ARMAN', 'LAURITA', '11/04/2021', '26/04/2021'],
            ['LALOG', 'ROLAND', 'SILVA', '11/04/2021', '26/04/2021'],
            ['ANGCAYA', 'JOSHUA', 'RICO', '20/04/2021', '21/04/2021'],
            ['APUNTAR', 'AVELINA', 'LAURORA', '20/04/2021', '21/04/2021'],
            ['LARONG', 'DENNIS', 'CABATUAN', '11/04/2021', '16/04/2021'],
            ['VIZCARRA', 'LEOPOLDO', 'SULITA', '05/04/2021', '15/04/2021'],
            ['VIZCARRA', 'ANGELICA', 'PALACIO', '14/04/2021', '15/04/2021'],
            ['MICOSA', 'LESTER', 'PEREZ', '03/03/2021', '13/04/2021'],
            ['PEREÑA', 'ORLANDO', 'RAZON', '10/03/2021', '13/04/2021'],
            ['SAMSON', 'STEVEN', 'REYES', '08/01/2021', '11/04/2021'],
            ['MONTAÑEZ JR', 'JIMMY', 'ORNOPIA', '06/02/2021', '11/04/2021'],
            ['MILAGROSO', 'EDUARDO', 'CALITIS', '14/02/2021', '11/04/2021'],
            ['RAMOS', 'JAY-AR', 'MONARES', '16/02/2021', '11/04/2021'],
            ['BIANZON', 'BENJAMIN', 'DE SALIT', '18/02/2021', '11/04/2021'],
            ['VILLARIN', 'BEN-HUR', 'MAGTOLES', '24/02/2021', '11/04/2021'],
            ['SIBOLINO', 'EDWIN', 'VERAÑA', '24/02/2021', '11/04/2021'],
            ['TAMBANGAN', 'JOHN KENNETH', 'SORIO', '01/03/2021', '11/04/2021'],
            ['APURA', 'JOHN ADRIAN', 'ABANTAO', '01/03/2021', '11/04/2021'],
            ['BORROMEO', 'NIEL', 'DELEON', '05/04/2021', '08/04/2021'],
            ['ALPACHE', 'SALVADOR', 'SULANO', '23/03/2021', '24/03/2021'],
            ['LOYOLA', 'EDWARDO', 'VALENZUELA', '29/12/2020', '19/03/2021'],
            ['BELEN', 'EDWIN', 'PAROLINA', '04/03/2021', '19/03/2021'],
            ['BARLAO', 'ELPIDIO', 'SIBULINO', '16/03/2021', '19/03/2021'],
            ['MENDOZA', 'ENGILBERT', 'GONZALES', '16/03/2021', '19/03/2021'],
            ['LEVARDO', 'AVELITO', 'QUILAO', '10/03/2021', '17/03/2021'],
            ['ELLO', 'JEFFREY', 'TRINIDAD', '07/03/2021', '12/03/2021'],
            ['MEJIA', 'ROSEMARIE', 'SALVA', '07/03/2021', '10/03/2021'],
            ['MAGNAYE', 'MICHAEL', 'DELOS SANTOS', '08/03/2021', '09/03/2021'],
            ['GOMEZ', 'GENE PAULA', 'CORDENETE', '08/03/2021', '09/03/2021'],
            ['APUNTAR', 'BIEJAY', 'LAURORA', '10/02/2021', '01/03/2021'],
            ['REYES', 'JAYSON', 'SY', '15/02/2021', '01/03/2021'],
            ['SERVANDO', 'DONATO', 'REFORMADO', '25/12/2020', '24/02/2021'],
            ['TOLENTINO JR', 'MANUEL', 'DIWATA', '29/12/2020', '24/02/2021'],
            ['LEDEROS', 'RESTY', 'BASA', '29/12/2020', '24/02/2021'],
            ['FONTANILLA', 'ALEXANDER', 'ESPIRITU', '08/01/2021', '24/02/2021'],
            ['LOPEZ', 'JESSIE', 'YGBUHAY', '10/01/2021', '24/02/2021'],
            ['ERAGA', 'ARGIE', 'DELOS SANTOS', '13/01/2021', '24/02/2021'],
            ['MAPANOO', 'RAVEN', 'UMALI', '13/01/2020', '24/02/2021'],
            ['PACAY', 'RONALD', 'BAYBAY', '19/01/2020', '24/02/2021'],
            ['ORIEL', 'CHRISTIAN ALVIN', 'BAUTISTA', '22/01/2021', '24/02/2021'],
            ['MAGNAYE', 'JOEL', 'GOMEZ', '22/01/2021', '24/02/2021'],
            ['CORTEZ', 'ROLAND', 'INES', '23/01/2021', '24/02/2021'],
            ['LAGUAN', 'CARMELITO', 'DAGAME', '23/01/2021', '24/02/2021'],
            ['JACINTO', 'ARVIN', 'PAROLINA', '24/01/2021', '24/02/2021'],
            ['BARRUGA', 'ROSALITO', 'LOYOLA', '24/01/2021', '24/02/2021'],
            ['RAFOL', 'GEOFFREY', 'PERELLO', '01/02/2021', '24/02/2021'],
            ['ANDRADE', 'RYAN CHESTER', 'ANOR', '01/02/2021', '24/02/2021'],
            ['ARNAIZ JR', 'EDWIN', 'LACSOL', '16/02/2021', '24/02/2021'],
            ['MARTIZANO', 'CHARITO', 'BEDUYA', '19/02/2021', '23/02/2021'],
            ['JAVELOSA', 'LOIDA', 'MARTIZANO', '19/02/2021', '22/02/2021'],
            ['ELIPON', 'JEROME', 'CADALSO', '19/02/2021', '19/02/2021'],
            ['ACUTIM', 'JOLIE', 'ABAIGAR', '19/02/2021', '19/02/2021'],
            ['LLAVANES', 'MARIEL', 'MITRA', '16/02/2021', '16/02/2021'],
            ['MANLANGIT', 'ALBERT', 'EBUAN', '06/02/2021', '15/02/2021'],
            ['PAJARON', 'ALBERT', 'SOTIS', '06/02/2021', '15/02/2021'],
            ['ROMANO', 'DARIUS', 'INIAN', '26/12/2020', '02/02/2021'],
            ['PRIVADO', 'BIANZON', 'ATIENZA', '02/02/2021', '01/02/2021'],
            ['VILLANUEVA', 'MARBEN', 'VICTORIANO', '08/01/2021', '27/01/2021'],
            ['BAÑADOS', 'JOHN EDDIEZON', 'CASTILLO', '19/12/2020', '20/01/2021'],
            ['OBNIALA', 'JONAS', 'PAMESA', '04/11/2020', '19/01/2021'],
            ['DELEON', 'ERIKA', 'MANLUNAS', '04/11/2020', '19/01/2021'],
            ['VARGAS', 'JOEL', 'PAKINGAN', '04/11/2020', '19/01/2021'],
            ['PANTOJA', 'ARNOLD', 'SOMBRIO', '18/11/2020', '19/01/2021'],
            ['PEREZ', 'ANTHONY', 'PAÑOSO', '18/11/2020', '19/01/2021'],
            ['TORREJANO', 'CELSO', 'LARA', '19/11/2020', '19/01/2021'],
            ['SABANGAN', 'RICSAN', 'LACORTE', '20/11/2020', '19/01/2021'],
            ['NARCEDA', 'JOEL', 'SANDINO', '20/11/2020', '19/01/2021'],
            ['TAN', 'JEWEL JEM', 'DEAROZ', '26/11/2020', '19/01/2021'],
            ['LLADOC', 'CHRISTIAN', 'DANIEL', '26/11/2020', '19/01/2021'],
            ['MANABA', 'JOHN LESTER', 'BALBUENA', '26/11/2020', '19/01/2021'],
            ['TISON', 'GEROME JAN', 'MIDAY', '01/12/2020', '19/01/2021'],
            ['FORTUNO', 'GARRY', 'BAYSON', '04/12/2020', '19/01/2021'],
            ['BENITEZ', 'MICHAEL', 'VILLAGANAS', '29/12/2020', '15/01/2021'],
            ['DE ROXAS', 'MANUEL', 'GAMIER', '15/01/2020', '15/01/2021'],
            ['DE CAPIA', 'BIEMOR', 'MALAPITAN', '09/01/2021', '12/01/2021'],
            ['BANARES', 'JOVEN', 'REMANO', '09/01/2021', '12/01/2021'],
            ['TREMUCITA', 'JUDY', 'FIGUEROA', '09/01/2021', '12/01/2021'],
            ['OLASO', 'JOHN PAUL', 'CORTEZ', '03/01/2021', '07/01/2021'],
            ['BETANGCOR', 'JOEL', 'RUSIANA', '03/01/2021', '07/01/2021'],
            ['VILLAFLOR', 'JERICK', 'MEMIJE', '03/01/2021', '07/01/2021'],
            ['LACAO', 'ROMMEL', 'MEDINA', '03/01/2021', '07/01/2021'],
            ['BADILLO', 'DANILO', 'LIBOT', '25/12/2020', '06/01/2021'],
            ['VILLARIN', 'BERNIE', 'FAT', '03/01/2021', '06/01/2021'],
            ['SAÑO', 'LANIE', 'DIAZ', '03/01/2021', '06/01/2021'],
            ['MASCAREÑAS', 'RIZALYN', 'MANAO', '03/01/2021', '06/01/2021'],
        ];

        $d = [];
        $e = [];

        foreach ($data as $detainee) {
            $c = [
                'last_name' => ucwords(mb_strtolower($detainee[0])),
                'first_name' => ucwords(mb_strtolower($detainee[1])),
                'middle_name' => ucwords(mb_strtolower($detainee[2])),
                'detained_date' => Carbon::createFromFormat('d/m/Y', $detainee[3])->format('m/d/Y'),
                'released_date' => Carbon::createFromFormat('d/m/Y', $detainee[4])->format('m/d/Y'),
            ];

            // dd($c);

            $d[] = $c;

            $already_exists = Detainee::where([
                ['first_name', '=', $c['first_name']],
                // ['middle_name', '=', $data['middle_name']],
                ['last_name', '=', $c['last_name']],
            ])->count() ? true : false;

            if ($already_exists) {
                $e[] = $c;
            } else {
                Detainee::create($c);
            }

            
        }



        dd($e, $d);
    }

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

        $year_month = Carbon::createFromFormat('Y-m', $this->filter['year'] . '-' . $this->filter['month'])->endOfMonth();
        $this->filter['start_month'] = $year_month->startOfMonth()->format('Y-m-d');
        $this->filter['end_month'] = $year_month->endOfMonth()->format('Y-m-d');
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

        // $last_names = ['lanceta', 'gerona', 'dalut', 'almendras', 'lagumbay', 'obniala', 'deleon', 'vargas', 'pantoja', 'perez', 'torrejano', 'sabangan', 'narceda', 'tan', 'lladoc', 'manaba', 'tison', 'fortuno', 'diago', 'levardo', 'bañados', 'cambronero', 'servando', 'badillo', 'romano', 'benitez', 'tolentino jr', 'lederos', 'loyola', 'villarin', 'saño', 'mascareñas', 'olaso', 'betangcor', 'villaflor', 'lacao', 'villanueva', 'fontanilla', 'samson', 'de capia', 'banares y remano', 'tremucita', 'lopez', 'eraga', 'mapanoo', 'de roxas', 'pacay', 'oriel', 'magnaye', 'dela basa', 'cortez', 'laguan', 'jacinto', 'barruga'];
        // foreach ($last_names as $i => $last_name) {
        //     $last_names[$i] = ucwords(mb_strtolower($last_name));
        // }
        // // dd($detainees->whereNotIn('last_name', $last_names));
        $current_detainees = $detainees->whereNotBetween('released_date', [$this->filter['start_month'], $this->filter['end_month']])->sortBy('detained_date');

        $data['current_detainees'] = $current_detainees->count();
        $data['current_male'] = $current_detainees->where('gender', 'male')->count();
        $data['current_female'] = $current_detainees->where('gender', 'female')->count();

        $last_inserted_detainees = Detainee::orderBy('created_at', 'desc')->limit(5)->get();
        $last_updated_detainees = Detainee::orderBy('updated_at', 'desc')->limit(5)->get();

        return view('detainees.subsistence', compact('data', 'detainees', 'recap', 'discharge', 'chief_police', 'chief_invest', 'r7_invest', 'jailers', 'current_detainees', 'last_inserted_detainees', 'last_updated_detainees', '_filter'));

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
        $jailers = Jailer::all();
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


            // if (($item->released_date && !$item->released_date->between('released_date', [$this->filter['start_month'], $this->filter['end_month']])) || !$item->released_date) {
            //     if ($item->gender == 'male') {
            //         $data['male']++;
            //         $data['current_male']++;
            //     } else if ($item->gender == 'female') {
            //         $data['female']++;
            //         $data['current_female']++;
            //     }

            //     $data['current_detainees']++;
            // }
            if ($item->gender == 'male') {
                $data['male']++;
            } else if ($item->gender == 'female') {
                $data['female']++;
            }

            // if (!$item->released_date) {
            //     $data['current_detainees']++;
            // }

            

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
            '_filter' => $this->filter,
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
        return Excel::download($detainees_export, 'PUPC Carmona ' . $data['month_year'] . ' Reports.xls');
    }

    public function discharge($detainees)
    {
        $discharge = $detainees->where('released_date', '!=', null)->whereBetween('released_date', [$this->filter['start_month'], $this->filter['end_month']]);

        $discharge = $discharge->sortBy('released_blotter_number');

        return $discharge;
    }
}
