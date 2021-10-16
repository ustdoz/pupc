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

        $subsistence = new SubsistenceExport($this->detainees, $this->data);
        $recap = new RecapExport($this->recap, $this->data);
        $discharge = new DischargeExport($this->discharge, $this->data);

        $_current_detainees = $this->detainees->where('released_date', '=', null)->sortBy('detained_date');

        $current_detainees = new CurrentDetaineesExport($_current_detainees, $this->data);

        $sheets[] = $subsistence;
        $sheets[] = $recap;
        $sheets[] = $discharge;
        $sheets[] = $current_detainees;
        // $sheets[] = new RecapExport($this->recap, $this->data);


        return $sheets;
    }
}