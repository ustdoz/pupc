<?php

namespace App\Exports;

// use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\FromArray;
use Maatwebsite\Excel\Concerns\WithTitle;
// use Carbon\Carbon;

class RecapExport implements FromArray, WithTitle
{
    protected $recap = null;
    protected $data = null;

    public function __construct($recap = null, $data = null)
    {
        $this->recap = $recap;
        $this->data = $data;
    }

    public function array(): array
    {
        $subsistence = [];

        if ($this->recap) {
            $total_budget = 0;
            $daily_allowance = config('detainees.allowance_amount');

            foreach ($this->recap as $date => $detainees_count) {
                $total = $detainees_count * $daily_allowance;
                $subsistence[] = [
                    $date,
                    $detainees_count,
                    $daily_allowance,
                    $total,
                ];

                $total_budget = $total_budget + $total;
            }

            $subsistence[] = [
                null,
                null,
                'Total Amount:',
                $total_budget,
            ];
        }

        return $subsistence;
    }

    public function title(): string
    {
        return mb_strtoupper('Recap ' . $this->data['month_year']);
    }
}
