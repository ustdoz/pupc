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

class RecapExport implements FromArray, WithTitle
,WithColumnWidths
// ,WithColumnFormatting
// ,WithMapping
,WithStyles
,WithDrawings
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

            for ($i=0; $i < 8; $i++) { 
                $subsistence[] = [null, null, null, null, null, null, null];
            }

            $subsistence[] = ['CPS/MPS', null, null, 'Date (MM/DD/YYY)*', 'Number of PUPC**', 'Allowance Per Day', 'Total Per day'];

            foreach ($this->recap as $date => $detainees_count) {
                $total = $detainees_count * $daily_allowance;
                $subsistence[] = [
                    null,
                    null,
                    null,
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
                null,
                null,
                null,
                'Total Amount Requested',
                $total_budget,
            ];
        }

        return $subsistence;
    }

    public function title(): string
    {
        return mb_strtoupper('Recap ' . $this->data['month_year']);
    }

    // public function map($invoice): array
    // {
    //     return [
    //         $invoice->invoice_number,
    //         Date::dateTimeToExcel($invoice->created_at),
    //         $invoice->total
    //     ];
    // }
    
    // public function columnFormats(): array
    // {
    //     return [
    //         'B' => NumberFormat::FORMAT_DATE_DDMMYYYY,
    //         'C' => NumberFormat::FORMAT_CURRENCY_EUR_SIMPLE,
    //     ];
    // }

    public function columnWidths(): array
    {
        return [
            'A' => 11.71,
            'B' => 8.43,
            'C' => 4.71,
            'D' => 19.71,
            'E' => 14,
            'F' => 18.14,
            'G' => 17.43,
        ];
    }

    public function styles(Worksheet $sheet)
    {
        // $end_number = $this->detainees->count() + 3;
        // $row_names = $end_number + 3;
        // $row_titles = $row_names + 1;

        $sheet->mergeCells('A1:G1');
        $sheet->mergeCells('A2:G2');
        $sheet->mergeCells('A3:G3');
        $sheet->mergeCells('A4:G4');
        $sheet->mergeCells('A5:G5');
        $sheet->mergeCells('A6:G6');
        $sheet->mergeCells('A8:G8');
        $sheet->mergeCells('A9:C9');

        // $sheet->mergeCells('A1:K1');
        // $sheet->mergeCells('A2:A3');
        // // $sheet->mergeCells('B2:F2');
        // $sheet->mergeCells('G2:G3');
        // $sheet->mergeCells('H2:H3');
        // $sheet->mergeCells('I2:I3');
        // $sheet->mergeCells('J2:J3');
        // $sheet->mergeCells('K2:K3');

        // $wrap_text_arr = [
        //     'A1', 'A2', 'B2', 'B3', 'C3', 'D3', 'E3', 'F3', 'G2', 'H2', 'I2', 'J2', 'K2',
        // ];

        // foreach ($wrap_text_arr as $cell) {
        //     $sheet->getStyle($cell)->getAlignment()->setWrapText(true);
        //     $sheet->getStyle('A2')->getAlignment()->applyFromArray(['vertical' => 'center']);
        //     $sheet->getStyle('A2')->getAlignment()->setHorizontal('center');
        // }

        $border_style = [
            'borders' => [
                'outline' => [
                    'borderStyle' => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN,
                    'color' => ['argb' => '000000'],
                ],
            ]
        ];

        $text_center = ['horizontal' => 'center', 'vertical' => 'center'];
        for ($i=1; $i <= 6; $i++) { 
            $sheet->getStyle('A' . $i)->getAlignment()->applyFromArray($text_center);
        }

        $sheet->getStyle('A9:C9')->applyFromArray($border_style);
        $sheet->getStyle('D9')->applyFromArray($border_style);
        $sheet->getStyle('E9')->applyFromArray($border_style);
        $sheet->getStyle('F9')->applyFromArray($border_style);
        $sheet->getStyle('G9')->applyFromArray($border_style);

        $sheet->getRowDimension(9)->setRowHeight(30);
        // $sheet->getStyle('B2:F2')->applyFromArray($border_style);
        // $sheet->getStyle('B3')->applyFromArray($border_style);
        // $sheet->getStyle('C3')->applyFromArray($border_style);
        // $sheet->getStyle('D3')->applyFromArray($border_style);
        // $sheet->getStyle('E3')->applyFromArray($border_style);
        // $sheet->getStyle('F3')->applyFromArray($border_style);
        // $sheet->getStyle('G2:G3')->applyFromArray($border_style);
        // $sheet->getStyle('H2:H3')->applyFromArray($border_style);
        // $sheet->getStyle('I2:I3')->applyFromArray($border_style);
        // $sheet->getStyle('J2:J3')->applyFromArray($border_style);
        // $sheet->getStyle('K2:K3')->applyFromArray($border_style);

        // $sheet->getStyle('J' . ($end_number + 1))->applyFromArray($border_style);
        // $sheet->getStyle('K' . ($end_number + 1))->applyFromArray($border_style);

        // $loop_arr = [
        //     'columns' => ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K'],
        //     'row_start' => 4,
        //     'row_end' => $end_number,
        // ];

        // foreach ($loop_arr['columns'] as $column) {
        //     for ($i=$loop_arr['row_start']; $i <= $loop_arr['row_end']; $i++) { 
        //         $sheet->getStyle($column . $i)->applyFromArray($border_style);
        //     }
        // }

        // $sheet->getRowDimension(1)->setRowHeight(31.5);
        // $sheet->getRowDimension(3)->setRowHeight(30);
        // $sheet->getRowDimension($end_number + 1)->setRowHeight(30);
        // $sheet->getRowDimension($end_number + 2)->setRowHeight(75);

        // // $sheet->setHeight([
        // //     1 => 31.5,
        // //     3 => 30,
        // //     ($end_number + 1) => 30,
        // //     ($end_number + 2) => 75
        // // ]);

        // $align_center_arr = [
        //     'A1', 'A2', 'A4', 'B2', 'B3', 'C3', 'D3', 'E3', 'F3', 'G2', 'H2', 'I2', 'J2', 'K2', 
        // ];

        // foreach ($align_center_arr as $cell) {
        //     $sheet->getStyle($cell)->getAlignment()->applyFromArray([
        //         'horizontal' => 'center',
        //         'vertical' => 'center',
        //     ]);

        // }

        // $sheet->getStyle('G4:K' . ($end_number + 1))->getAlignment()->applyFromArray([
        //     'horizontal' => 'center',
        //     'vertical' => 'center',
        // ]);

        // $sheet->setCellValue('A' . $row_names, 'PSSg Percival Restrivera');
        // $sheet->setCellValue('A' . $row_titles, 'In Charge of PUPC');
        // $sheet->setCellValue('D' . $row_names, 'PSSg Joel L Mendoza');
        // $sheet->setCellValue('D' . $row_titles, 'Chief, Invest Section');
        // $sheet->setCellValue('H' . $row_names, 'PMAJ JOSEPH C CARLIT');
        // $sheet->setCellValue('H' . $row_titles, 'Acting Chief of Police');

        return [
            // ('A' . $row_names) => [
            //     'value' => 'testsetsetsetset'
            // ],
            // 'B1:B5' => ['font' => ['bold' => true]],
            // Style the first row as bold text.
            // 1    => ['font' => ['bold' => true, 'size' => 14]],
            // ($end_number + 1) => ['font' => ['bold' => true]],
            // // Styling a specific cell by coordinate.
            // 'B2' => ['font' => ['italic' => true]],

            // // Styling an entire column.
            // 'C'  => ['font' => ['size' => 16]],
        ];
    }

    public function drawings()
    {
        $drawing = new Drawing();
        // $drawing->setName('Logo');
        // $drawing->setDescription('This is my logo');
        $drawing->setPath(public_path('/storage/pnp.png'));
        $drawing->setHeight(50);
        $drawing->setCoordinates('B3');

        $drawing2 = new Drawing();
        // $drawing2->setName('Other image');
        // $drawing2->setDescription('This is a second image');
        $drawing2->setPath(public_path('/storage/cavite.png'));
        $drawing2->setHeight(120);
        $drawing2->setCoordinates('G2');

        return [$drawing, $drawing2];
    }
}
