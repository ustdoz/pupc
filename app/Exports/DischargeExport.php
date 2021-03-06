<?php

namespace App\Exports;

use PhpOffice\PhpSpreadsheet\Worksheet\Worksheet;
use Maatwebsite\Excel\Concerns\FromArray;
use Maatwebsite\Excel\Concerns\WithTitle;
use Maatwebsite\Excel\Concerns\WithColumnWidths;
use Maatwebsite\Excel\Concerns\WithStyles;

use Maatwebsite\Excel\Concerns\WithDrawings;
use PhpOffice\PhpSpreadsheet\Worksheet\Drawing;

class DischargeExport implements FromArray, WithTitle
,WithColumnWidths
,WithStyles
,WithDrawings
{
    protected $discharge = null;
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

    public function __construct($discharge = null, $data = null)
    {
        $this->discharge = $discharge;
        $this->data = $data;
    }

    public function title(): string
    {
        return 'Discharged PUPC';
        // return mb_strtoupper('DISCHARGED PUPC ' . $this->data['month_year']);
    }

    public function array(): array
    {
        return [];
    }

    public function columnWidths(): array
    {
        return [
            'A' => 9,
            'B' => 17,
            'C' => 23,
            'D' => 15,
            'E' => 11,
            'F' => 11,
            'G' => 11,
            'H' => 11,
            'I' => 14,
        ];
    }

    public function styles(Worksheet $sheet)
    {
        $this->myHeader($sheet);        
        $this->myData($sheet);

        return [
            'A4' => ['font' => ['bold' => true]],
            'A5' => ['font' => ['bold' => true]],
        ];
    }

    public function myHeader(Worksheet $sheet)
    {
        for ($i=1; $i <= 8; $i++) { 
            $sheet->mergeCells("A$i:I$i");
        }
        
        $header_values = [
            'A1' => 'Republic of the Philippine',
            'A2' => 'National Police Commission',
            'A3' => 'PHILIPPINE NATIONAL POLICE,  POLICE REGIONAL OFFICE CALABARZON',
            'A4' => 'CAVITE POLICE PROVINCIAL OFFICE',
            'A5' => 'CARMONA MUNICIPAL POLICE STATION',
            'A6' => 'Brgy. Maduya, Carmona, Cavite',
            'A8' => 'Monthly Report of Timely Release of PUPCs ' . $this->data['month_year'],
        ];

        $table_header_values = [
            'A9' => 'Blotter Entry Number',
            'B9' => 'PNP Personnel in-charge of the Release of PUPC',
            'C9' => 'PUPC\'s Full Name',
            'D9' => 'Violation',
            'E9' => 'Date of Entry as PUPC',
            'F9' => 'Release Order Date from the Court',
            'G9' => 'Date Released',
            'H9' => 'Date of Updating of Release in e-Rogue',
            'I9' => 'Remarks',
        ];

        foreach ($header_values as $cell_id => $cell_value) {
            $sheet->setCellValue($cell_id, $cell_value);
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
        $cell_columns = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I'];

        if ($this->discharge) {
            foreach ($this->discharge as $discharge) {
                foreach ($cell_columns as $cell_column) {
                    $sheet->getStyle($cell_column . $cell_id)->applyFromArray($this->styles['borders']);
                    $sheet->getStyle($cell_column . $cell_id)->getAlignment()->applyFromArray($this->styles['alignment_center']);
                }

                $sheet->setCellValue('A' . $cell_id, $discharge->released_blotter_number);
                $sheet->setCellValue('B' . $cell_id, $discharge->jailer->name);
                $sheet->setCellValue('C' . $cell_id, implode(' ', [$discharge->first_name, $discharge->middle_name, $discharge->last_name]));
                $sheet->setCellValue('D' . $cell_id, $discharge->violation);
                $sheet->setCellValue('E' . $cell_id, ($discharge->detained_date ? $discharge->detained_date->format('d/m/Y') : null));
                $sheet->setCellValue('F' . $cell_id, ($discharge->released_date_court ? $discharge->released_date_court->format('d/m/Y') : null));
                $sheet->setCellValue('G' . $cell_id, ($discharge->released_date ? $discharge->released_date->format('d/m/Y') : null));
                $sheet->setCellValue('H' . $cell_id, ($discharge->released_date_erogue ? $discharge->released_date_erogue->format('d/m/Y') : null));
                $sheet->setCellValue('I' . $cell_id, $discharge->remarks);

                $cell_id++;
            }

            $sheet->getRowDimension($cell_id)->setRowHeight(45);
            $cell_id++;
            $sheet->mergeCells("A$cell_id:B$cell_id");
            $sheet->setCellValue("A$cell_id", 'Prepared by:');
            $sheet->mergeCells("G$cell_id:H$cell_id");
            $sheet->setCellValue("G$cell_id", 'Noted by:');

            $cell_id++;
            $sheet->getRowDimension($cell_id)->setRowHeight(30);
            $sheet->mergeCells("A$cell_id:B$cell_id");
            $sheet->setCellValue("A$cell_id", (isset($this->data['jailer']) ? $this->data['jailer'] : config('detainees.jailers.2')));
            $sheet->mergeCells("G$cell_id:H$cell_id");
            $sheet->setCellValue("G$cell_id", (isset($this->data['chief_police']) ? $this->data['chief_police'] : config('detainees.chief_police.0')));

            $cell_id++;
            $sheet->mergeCells("G$cell_id:H$cell_id");
            $sheet->setCellValue("G$cell_id", 'ACOP, Carmona MPS');
        }
    }

    public function drawings()
    {
        $drawing = new Drawing();
        $drawing->setPath(public_path('/pnp.png'));
        $drawing->setCoordinates('A1');

        $drawing2 = new Drawing();
        $drawing2->setPath(public_path('/cavite.png'));
        $drawing2->setCoordinates('I1');

        return [$drawing, $drawing2];
    }
}
