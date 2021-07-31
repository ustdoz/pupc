<?php

namespace App\Exports;

use Maatwebsite\Excel\Concerns\Exportable;
use Maatwebsite\Excel\Concerns\WithMultipleSheets;

class SubsistenceRecapExport implements WithMultipleSheets
{
    use Exportable;

    protected $detainees = null;
    protected $recap = null;
    protected $data = null;
    
    public function __construct($detainees = null, $recap = null, $data = null)
    {
        $this->detainees = $detainees;
        $this->recap = $recap;
        $this->data = $data;
    }

    /**
     * @return array
     */
    public function sheets(): array
    {
        $sheets = [];

        $subsistence = new SubsistenceExport($this->detainees, $this->data);

        // $subsistence->mergeCells('A2:A3');

        $recap = new RecapExport($this->recap, $this->data);

        $sheets[] = $subsistence;
        $sheets[] = $recap;
        // $sheets[] = new RecapExport($this->recap, $this->data);


        return $sheets;
    }
}