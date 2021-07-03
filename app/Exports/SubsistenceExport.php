<?php

namespace App\Exports;

// use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\FromArray;
use Maatwebsite\Excel\Concerns\WithTitle;
// use Carbon\Carbon;

class SubsistenceExport implements FromArray, WithTitle
{
    protected $detainees = null;
    protected $data = null;

    public function __construct($detainees = null, $data = null)
    {
        $this->detainees = $detainees;
        $this->data = $data;
    }

    public function array(): array
    {
        $subsistence = [];

        if ($this->detainees) {

            foreach ($this->detainees as $detainee) {
                $subsistence[] = [
                    null,
                    null,
                    $detainee->last_name,
                    $detainee->first_name,
                    $detainee->middle_name,
                    null,
                    null,
                    $detainee->detained_date ? $detainee->detained_date->format('d/m/Y') : 'N/A',
                    $detainee->released_date ? $detainee->released_date->format('d/m/Y') : 'DETAINED',
                    $detainee->days_detained,
                    $detainee->total_budget,
                ];
            }

            $subsistence[] = [
                null,
                null,
                null,
                null,
                null,
                null,
                null,
                null,
                null,
                'TOTAL AMOUNT:',
                $this->detainees->sum('total_budget'),
            ];
        }

        return $subsistence;
    }

    public function title(): string
    {
        return mb_strtoupper($this->data['month_year']);
    }
}
