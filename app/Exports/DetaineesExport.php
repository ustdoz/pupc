<?php

namespace App\Exports;

use Maatwebsite\Excel\Concerns\Exportable;
use Maatwebsite\Excel\Concerns\WithMultipleSheets;

class DetaineesExport implements WithMultipleSheets
{
    use Exportable;

    protected $detainees = null;
    protected $recap = null;
    protected $discharge = null;
    protected $data = null;
    
    public function __construct($detainees = null, $recap = null, $discharge = null, $data = null)
    {
        $this->detainees = $detainees;
        $this->recap = $recap;
        $this->discharge = $discharge;
        $this->data = $data;
    }

    /**
     * @return array
     */
    public function sheets(): array
    {
        $sheets = [];

        $data = collect($this->data);

        if ($data->has('export_sheet')) {
            $export_sheet = $data->get('export_sheet');

            if (array_key_exists('subsistence', $export_sheet)) {
                $sheets[] = new SubsistenceExport($this->detainees, $this->data);
            }

            if (array_key_exists('subsistence_recap', $export_sheet)) {
                $sheets[] = new RecapExport($this->recap, $this->data);
            }

            if (array_key_exists('discharge', $export_sheet)) {
                $sheets[] = new DischargeExport($this->discharge, $this->data);
            }

            $current_detainees = $this->detainees->where('released_date', '=', null)->sortBy('detained_date');
            $current_committed_detainees = $current_detainees->where('commitment_date', '!=', null)->sortBy('commitment_date');

            if (array_key_exists('current_detainees', $export_sheet)) {
                $sheets[] = new CurrentDetaineesExport($current_detainees, $this->data);
            }

            if (array_key_exists('current_committed_detainees', $export_sheet)) {
                $sheets[] = new CommittedDetaineesExport($current_committed_detainees, $this->data);
            }
        }

        return $sheets;
    }
}