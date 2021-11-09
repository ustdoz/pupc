<?php

namespace App\Exports;

// use Carbon\Carbon;
use PhpOffice\PhpSpreadsheet\Worksheet\Worksheet;
// use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\FromArray;
use Maatwebsite\Excel\Concerns\WithTitle;
use Maatwebsite\Excel\Concerns\WithColumnWidths;
// use Maatwebsite\Excel\Concerns\WithColumnFormatting;
// use Maatwebsite\Excel\Concerns\WithMapping;
use Maatwebsite\Excel\Concerns\WithStyles;

use Maatwebsite\Excel\Concerns\WithDrawings;
use PhpOffice\PhpSpreadsheet\Worksheet\Drawing;

class CurrentDetaineesExport implements FromArray, WithTitle
,WithColumnWidths
// ,WithColumnFormatting
// ,WithMapping
,WithStyles
,WithDrawings
{
    protected $current_detainees = null;
    protected $data = null;

    protected $styles = [
        'borders' => [
            'borders' => [
                'outline' => [
                    'borderStyle' => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN,
                    'color' => ['argb' => '000000'],
                ],
            ],
        ],
        'border_bottom' => [
            'borders' => [
                'bottom' => [
                    'borderStyle' => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN,
                    'color' => ['argb' => '000000'],
                ],
            ],
        ],
        'alignment_center' => [
            'wrapText' => true,
            'horizontal' => 'center',
            'vertical' => 'center',
        ],
    ];

    public function __construct($current_detainees = null, $data = null)
    {
        $this->current_detainees = $current_detainees;
        $this->data = $data;
    }

    public function title(): string
    {
        return 'Current PUPC';
        // return mb_strtoupper('Current PUPC ' . $this->data['month_year']);
    }

    public function array(): array
    {
        return [];
    }

    public function columnWidths(): array
    {
        return [
            'A' => 7,
            'B' => 25,
            'C' => 6,
            'D' => 25,
            'E' => 12,
            'F' => 10,
        ];
    }

    public function styles(Worksheet $sheet)
    {
        $this->myHeader($sheet);        
        $this->myData($sheet);

        return [
            // myHeader
            'A4' => ['font' => ['bold' => true]],
            'A5' => ['font' => ['bold' => true]],
        ];
    }

    public function myHeader(Worksheet $sheet)
    {
        for ($i=1; $i <= 8; $i++) { 
            $sheet->mergeCells("A$i:F$i");
        }
        
        $header_values = [
            'A1' => 'Republic of the Philippine',
            'A2' => 'National Police Commission',
            'A3' => 'PHILIPPINE NATIONAL POLICE,  POLICE REGIONAL OFFICE CALABARZON',
            'A4' => 'CAVITE POLICE PROVINCIAL OFFICE',
            'A5' => 'CARMONA MUNICIPAL POLICE STATION',
            'A6' => 'Brgy. Maduya, Carmona, Cavite',
            'A8' => $this->data['month_year'] . ' Current Detained PUPCs',
        ];

        $table_header_values = [
            'A9' => 'Nr',
            'B9' => 'Name',
            'C9' => 'Age',
            'D9' => 'Violation',
            'E9' => 'Detained Date',
            'F9' => '',
        ];

        foreach ($header_values as $cell_id => $cell_value) {
            $sheet->setCellValue($cell_id, $cell_value);
            // $sheet->getStyle($cell_id)->applyFromArray($this->styles['borders']);
            $sheet->getStyle($cell_id)->getAlignment()->applyFromArray($this->styles['alignment_center']);
        }

        foreach ($table_header_values as $cell_id => $cell_value) {
            $sheet->setCellValue($cell_id, $cell_value);
            $sheet->getStyle($cell_id)->applyFromArray($this->styles['borders']);
            $sheet->getStyle($cell_id)->getAlignment()->applyFromArray($this->styles['alignment_center']);
        }
    }

    public function myData(Worksheet $sheet)
    {
        $cell_id = 10;
        $cell_columns = ['A', 'B', 'C', 'D', 'E', 'F'];

        if ($this->current_detainees) {
            $counter = 1;
            foreach ($this->current_detainees as $current_detainees) {
                foreach ($cell_columns as $cell_column) {
                    $sheet->getStyle($cell_column . $cell_id)->applyFromArray($this->styles['borders']);
                    $sheet->getStyle($cell_column . $cell_id)->getAlignment()->applyFromArray($this->styles['alignment_center']);
                }

                $sheet->setCellValue('A' . $cell_id, $counter);
                $sheet->setCellValue('B' . $cell_id, implode(' ', [$current_detainees->first_name, $current_detainees->middle_name, $current_detainees->last_name]));
                $sheet->setCellValue('C' . $cell_id, $current_detainees->age ? : 'N/A');
                $sheet->setCellValue('D' . $cell_id, $current_detainees->violation);
                $sheet->setCellValue('E' . $cell_id, ($current_detainees->detained_date ? $current_detainees->detained_date->format('d/m/Y') : null));
                $cell_id++;
                $counter++;
            }
        }
    }

    public function drawings()
    {
        $drawing = new Drawing();
        $drawing->setPath(public_path('/pnp.png'));
        $drawing->setCoordinates('A1');

        $drawing2 = new Drawing();
        $drawing2->setPath(public_path('/cavite.png'));
        $drawing2->setCoordinates('F1');

        return [$drawing, $drawing2];
    }
}
