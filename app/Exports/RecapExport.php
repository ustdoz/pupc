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

            // $subsistence[] = ['CPS/MPS', null, null, 'Date (MM/DD/YYY)*', 'Number of PUPC**', 'Allowance Per Day', 'Total Per day'];
            $first = 1;

            foreach ($this->recap as $date => $detainees_count) {
                $total = $detainees_count * $daily_allowance;
                
                $subsistence[] = [
                    ($first ? 'CARMONA MPS' : null),
                    null,
                    null,
                    $date,
                    $detainees_count,
                    $daily_allowance,
                    number_format($total),
                ];

                $total_budget = $total_budget + $total;

                $first = 0;
            }

            $subsistence[] = [
                null,
                null,
                null,
                null,
                null,
                'Total Amount Requested',
                "₱ " . number_format($total_budget),
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
        $end_number = count($this->recap);
        // dd($end_number);
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

        $wrap_text_arr = [
            'A9', 'D9', 'E9', 'F9', 'G9',
        ];

        foreach ($wrap_text_arr as $cell) {
            $sheet->getStyle($cell)->getAlignment()->setWrapText(true);
            $sheet->getStyle($cell)->getAlignment()->applyFromArray(['vertical' => 'center']);
            $sheet->getStyle($cell)->getAlignment()->setHorizontal('center');
        }

        $border_style = [
            'borders' => [
                'outline' => [
                    'borderStyle' => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN,
                    'color' => ['argb' => '000000'],
                ],
            ]
        ];

        $text_center = ['horizontal' => 'center', 'vertical' => 'center'];
        for ($i=1; $i <= 8; $i++) { 
            $sheet->getStyle('A' . $i)->getAlignment()->applyFromArray($text_center);
        }

        $sheet->getStyle('A9:C9')->applyFromArray($border_style);
        $sheet->getStyle('D9')->applyFromArray($border_style);
        $sheet->getStyle('E9')->applyFromArray($border_style);
        $sheet->getStyle('F9')->applyFromArray($border_style);
        $sheet->getStyle('G9')->applyFromArray($border_style);

        $sheet->getRowDimension(9)->setRowHeight(30);

        // merging cell from start of month to end of the month
        $end_loop = $end_number + 9;
        for ($i=10; $i <= $end_loop; $i++) { 
            $sheet->mergeCells("A$i:C$i");
            $sheet->getStyle("A$i:C$i")->applyFromArray($border_style);
            $sheet->getStyle("D$i")->applyFromArray($border_style);
            $sheet->getStyle("E$i")->applyFromArray($border_style);
            $sheet->getStyle("F$i")->applyFromArray($border_style);
            $sheet->getStyle("G$i")->applyFromArray($border_style);

            $sheet->getStyle("D$i")->getAlignment()->applyFromArray($text_center);
            $sheet->getStyle("E$i")->getAlignment()->applyFromArray($text_center);
            $sheet->getStyle("F$i")->getAlignment()->applyFromArray($text_center);
            $sheet->getStyle("G$i")->getAlignment()->applyFromArray($text_center);
        }

        $sheet->getStyle('F' . ($end_loop + 1))->applyFromArray($border_style);
        $sheet->getStyle('G' . ($end_loop + 1))->applyFromArray($border_style);

        $wrap_cell = 'F' . ($end_loop + 1);
        $sheet->getStyle($wrap_cell)->getAlignment()->setWrapText(true);
        $sheet->getStyle($wrap_cell)->getAlignment()->applyFromArray(['vertical' => 'center']);
        $sheet->getStyle($wrap_cell)->getAlignment()->setHorizontal('center');

        $wrap_cell = 'G' . ($end_loop + 1);
        $sheet->getStyle($wrap_cell)->getAlignment()->setWrapText(true);
        $sheet->getStyle($wrap_cell)->getAlignment()->applyFromArray(['vertical' => 'center']);
        $sheet->getStyle($wrap_cell)->getAlignment()->setHorizontal('center');

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

        $sheet->setCellValue('A1', 'Republic of the Philippine');
        $sheet->setCellValue('A2', 'National Police Commission');
        $sheet->setCellValue('A3', 'PHILIPPINE NATIONAL POLICE,  POLICE REGIONAL OFFICE CALABARZON');
        $sheet->setCellValue('A4', 'CAVITE POLICE PROVINCIAL OFFICE');
        $sheet->setCellValue('A5', 'CARMONA MUNICIPAL POLICE STATION');
        $sheet->setCellValue('A6', 'Brgy. Maduya, Carmona, Cavite');
        $sheet->setCellValue('A8', 'RECAPITULATION ' . mb_strtoupper($this->data['month_year']));

        $sheet->setCellValue('A9', 'CPS/MPS');
        $sheet->setCellValue('D9', 'Date (MM/DD/YYY)*');
        $sheet->setCellValue('E9', 'Number of PUPC**');
        $sheet->setCellValue('F9', 'Allowance Per Day');
        $sheet->setCellValue('G9', 'Total Per Day');


        $this->myFooter($sheet, $end_loop);

        return [
            'A4' => ['font' => ['bold' => true]],
            'A5' => ['font' => ['bold' => true]],
            ($end_number + 10) => ['font' => ['bold' => true]],
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

    public function myFooter(Worksheet $sheet, $row)
    {
        $row++;
        $row++;
        $row++;
        $sheet->mergeCells("F$row:G$row");
        $sheet->setCellValue('F' . $row, 'Prepared by:');
        $row++;
        $row++;
        $sheet->mergeCells("F$row:G$row");
        $sheet->setCellValue('F' . $row, config('detainees.jailers.2'));
        $row++;
        $sheet->mergeCells("F$row:G$row");
        $sheet->setCellValue('F' . $row, 'Custodial PNCO');
        $row++;
        $row++;
        $value = "     I certify under oath that the contents of this document are true and correct and I understand that any ommission or commission by falsified declaration will constitute administrative and/or criminal offense.";
        $sheet->mergeCells("A$row:G$row");
        $sheet->getRowDimension($row)->setRowHeight(29);
        $sheet->getStyle('A' . $row)->getAlignment()->applyFromArray(['wrapText' => true]);
        $sheet->setCellValue('A' . $row, $value);
        $row++;
        $row++;
        $row++;
        $sheet->mergeCells("F$row:G$row");
        $sheet->getStyle('F' . $row)->applyFromArray(['font' => ['bold' => true]]);
        $sheet->setCellValue('F' . $row, config('detainees.hepe.0'));
        $row++;
        $sheet->mergeCells("F$row:G$row");
        $sheet->setCellValue('F' . $row, 'Acting Chief of Police');
        $row++;
        $row++;
        $sheet->mergeCells("A$row:G$row");
        $value = "     SUBSCRIBED and SWORN before me this ______ day of ________________ at ____________________.";
        $sheet->setCellValue('A' . $row, $value);
        $row++;
        $row++;
        $row++;
        $row++;
        $sheet->mergeCells("F$row:G$row");
        $sheet->setCellValue('F' . $row, 'C, PIDMU');
        $row++;
        $sheet->mergeCells("F$row:G$row");
        $sheet->setCellValue('F' . $row, 'Administering officer');
        // $row++;
        // $row++;
        // $sheet->setCellValue('A' . $row, 'Administering officer');
    }

    public function drawings()
    {
        $drawing = new Drawing();
        // $drawing->setName('Logo');
        // $drawing->setDescription('This is my logo');
        $drawing->setPath(public_path('/pnp.png'));
        // $drawing->setHeight(50);
        $drawing->setCoordinates('A1');

        $drawing2 = new Drawing();
        // $drawing2->setName('Other image');
        // $drawing2->setDescription('This is a second image');
        $drawing2->setPath(public_path('/cavite.png'));
        // $drawing2->setHeight(120);
        $drawing2->setCoordinates('G1');

        return [$drawing, $drawing2];
    }
}
