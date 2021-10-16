<?php

namespace App\Exports;

use App\Detainee;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\FromArray;
use Carbon\Carbon;

// class DetaineesExport implements FromCollection
class DetaineesBackExport implements FromArray
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

    protected $detainees = null;
    protected $recap = null;
    protected $data = null;

    public function __construct($detainees = null, $recap = null, $data = null)
    {
        $this->detainees = $detainees;
        $this->recap = $recap;
        $this->data = $data;
    }

    public function array(): array
    {
        $detainees = $this->detaineesArray();
        $recap = $this->recapArray();
        $data = $this->dataArray();
        // dd($recap);
        return $detainees;
        return $recap;
    }

    public function detaineesArray()
    {
        $detainees = [];

        return $detainees;
    }

    // public function headings()
    // {
    //     return [
    //         '#',
    //         'User',
    //         'Date',
    //     ];
    // }

    /**
    * @return \Illuminate\Support\Collection
    */
    // public function collection()
    // {
    // 	// From Construct
    // 	$date_now = Carbon::now();
    //     $month = request()->get('filter_month') ? : $date_now->month;
    //     $this->filter['month'] = ($month > 9) ? : '0' . ((int) $month);
    //     $this->filter['year'] = request()->get('filter_year') ? : $date_now->year;
    //     $start = [$this->filter['year'], $this->filter['month'], '01'];
    //     $this->date['start'] = Carbon::createFromFormat('Y-m-d H:i:s', implode('-', $start) . ' 00:00:00');
    //     $this->date['end'] = Carbon::createFromFormat('Y-m-d H:i:s', implode('-', $start) . ' 00:00:00')->endOfMonth();

    //     // From DetaineesController@subsistence
    // 	$date_start = $this->date['start']->format('Y-m-d');
    //     $date_end = $this->date['end']->format('Y-m-d');

    //     $detainees = Detainee::orderBy('last_name')
    //         ->where(function($query) use ($date_start, $date_end) {
    //             $query->whereDate('detained_date', '>=', $date_start);
    //             $query->whereDate('detained_date', '<=', $date_end);
    //         })->orWhere(function($query) use ($date_start, $date_end) {
    //             $query->whereDate('released_date', '>=', $date_start);
    //             $query->whereDate('released_date', '<=', $date_end);
    //         })->orWhereNull('released_date')
    //                         ->get();

    //     $detainees->map(function($item) {

    //         $_date_start = $item->detained_date;
    //         $_date_end = $item->released_date;

    //         if ($_date_start < $this->date['start']) {
    //             $_date_start = $this->date['start'];
    //         }

    //         if (is_null($_date_end)) {
    //             $_date_end = $this->date['end'];
    //         }

    //         $item->days_detained = $_date_start->diffInDays($_date_end) + 1;
    //         $item->total_budget = $item->days_detained * config('detainees.allowance_amount');

    //         return $item;
    //     });

    //     return $detainees;
    // }
}
