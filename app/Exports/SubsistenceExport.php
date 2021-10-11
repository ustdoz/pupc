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



class SubsistenceExport implements FromArray, WithTitle
,WithColumnWidths
// ,WithColumnFormatting
// ,WithMapping
,WithStyles
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
        $allowance_amount = number_format(config('detainees.allowance_amount'));
        $month_year = mb_strtoupper($this->data['month_year']);
        $header = "Details/List of PUPC for Issuance of Subsistence Allowance (Php $allowance_amount/PUPC/day) $month_year";
        $subsistence = [];

        if ($this->detainees) {

            $subsistence[] = [$header, null, null, null, null, null, null, null, null, null, null,];
            $subsistence[] = ['CPS/MPS', 'NA', null, null, null, null, 'CRIMINAL CASE NUMBER', "DATE DETAINED (dd/mm/yyyy)", "DATE RELEASED", "NUMBER OF DAYS DETAINED", "AMOUNT",];
            $subsistence[] = [null, 'Nr', "LAST NAME (alphabetically arrange)", 'FIRST NAME', 'MIDDLE NAME', 'ALIAS', null, null, null, null, null,];

            $a4 = 1;

            foreach ($this->detainees as $detainee) {
                $subsistence[] = [
                    ($a4 ? 'CARMONA MPS' : null),
                    null,
                    mb_strtoupper($detainee->last_name),
                    mb_strtoupper($detainee->first_name),
                    mb_strtoupper($detainee->middle_name),
                    null,
                    'N/A',
                    $detainee->detained_date ? $detainee->detained_date->format('d/m/Y') : 'N/A',
                    $detainee->released_date ? $detainee->released_date->format('d/m/Y') : 'DETAINED',
                    $detainee->days_detained,
                    number_format($detainee->total_budget),
                ];

                $a4 = 0;
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
                'TOTAL AMOUNT',
                "₱ " . number_format($this->detainees->sum('total_budget')),
            ];
        }

        return $subsistence;
    }

    public function title(): string
    {
        return mb_strtoupper($this->data['month_year']);
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
            'A' => 15,
            'B' => 12,
            'C' => 23,
            'D' => 16.86,
            'E' => 15,
            'F' => 10.71,
            'G' => 13.14,
            'H' => 13.86,
            'I' => 12,
            'J' => 15.14,
            'K' => 12,
        ];
    }

    public function styles(Worksheet $sheet)
    {
        $end_number = $this->detainees->count() + 3;
        $row_names = $end_number + 3;
        $row_titles = $row_names + 1;

        $sheet->mergeCells('A1:K1');
        $sheet->mergeCells('A2:A3');
        // $sheet->mergeCells('B2:F2');
        $sheet->mergeCells('G2:G3');
        $sheet->mergeCells('H2:H3');
        $sheet->mergeCells('I2:I3');
        $sheet->mergeCells('J2:J3');
        $sheet->mergeCells('K2:K3');

        $wrap_text_arr = [
            'A1', 'A2', 'B2', 'B3', 'C3', 'D3', 'E3', 'F3', 'G2', 'H2', 'I2', 'J2', 'K2',
        ];

        foreach ($wrap_text_arr as $cell) {
            $sheet->getStyle($cell)->getAlignment()->setWrapText(true);
            $sheet->getStyle('A2')->getAlignment()->applyFromArray(['vertical' => 'center']);
            $sheet->getStyle('A2')->getAlignment()->setHorizontal('center');

        }

        $border_style = [
            'borders' => [
                'outline' => [
                    'borderStyle' => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN,
                    'color' => ['argb' => '000000'],
                ],
            ]
        ];

        $sheet->getStyle('A2:A3')->applyFromArray($border_style);
        $sheet->getStyle('B2:F2')->applyFromArray($border_style);
        $sheet->getStyle('B3')->applyFromArray($border_style);
        $sheet->getStyle('C3')->applyFromArray($border_style);
        $sheet->getStyle('D3')->applyFromArray($border_style);
        $sheet->getStyle('E3')->applyFromArray($border_style);
        $sheet->getStyle('F3')->applyFromArray($border_style);
        $sheet->getStyle('G2:G3')->applyFromArray($border_style);
        $sheet->getStyle('H2:H3')->applyFromArray($border_style);
        $sheet->getStyle('I2:I3')->applyFromArray($border_style);
        $sheet->getStyle('J2:J3')->applyFromArray($border_style);
        $sheet->getStyle('K2:K3')->applyFromArray($border_style);

        $sheet->getStyle('J' . ($end_number + 1))->applyFromArray($border_style);
        $sheet->getStyle('K' . ($end_number + 1))->applyFromArray($border_style);

        $loop_arr = [
            'columns' => ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K'],
            'row_start' => 4,
            'row_end' => $end_number,
        ];

        foreach ($loop_arr['columns'] as $column) {
            for ($i=$loop_arr['row_start']; $i <= $loop_arr['row_end']; $i++) { 
                $sheet->getStyle($column . $i)->applyFromArray($border_style);
            }
        }

        $sheet->getRowDimension(1)->setRowHeight(31.5);
        $sheet->getRowDimension(3)->setRowHeight(30);
        $sheet->getRowDimension($end_number + 1)->setRowHeight(30);
        $sheet->getRowDimension($end_number + 2)->setRowHeight(75);

        // $sheet->setHeight([
        //     1 => 31.5,
        //     3 => 30,
        //     ($end_number + 1) => 30,
        //     ($end_number + 2) => 75
        // ]);

        $align_center_arr = [
            'A1', 'A2', 'A4', 'B2', 'B3', 'C3', 'D3', 'E3', 'F3', 'G2', 'H2', 'I2', 'J2', 'K2', 
        ];

        foreach ($align_center_arr as $cell) {
            $sheet->getStyle($cell)->getAlignment()->applyFromArray([
                'horizontal' => 'center',
                'vertical' => 'center',
            ]);

        }

        $sheet->getStyle('G4:K' . ($end_number + 1))->getAlignment()->applyFromArray([
            'horizontal' => 'center',
            'vertical' => 'center',
        ]);

        $sheet->setCellValue('A' . $row_names, (isset($this->data['jailer']) ? $this->data['jailer'] : config('detainees.names.0')));
        $sheet->setCellValue('A' . $row_titles, config('detainees.titles.0'));
        $sheet->setCellValue('D' . $row_names, (isset($this->data['chief_invest']) ? $this->data['chief_invest'] : config('detainees.names.1')));
        $sheet->setCellValue('D' . $row_titles, config('detainees.titles.1'));
        $sheet->setCellValue('H' . $row_names, (isset($this->data['hepe']) ? $this->data['hepe'] : config('detainees.names.2')));
        $sheet->setCellValue('H' . $row_titles, config('detainees.titles.2'));

        return [
            // ('A' . $row_names) => [
            //     'value' => 'testsetsetsetset'
            // ],
            // 'B1:B5' => ['font' => ['bold' => true]],
            // Style the first row as bold text.
            1    => ['font' => ['bold' => true, 'size' => 14]],
            ($end_number + 1) => ['font' => ['bold' => true]],
            // // Styling a specific cell by coordinate.
            // 'B2' => ['font' => ['italic' => true]],

            // // Styling an entire column.
            // 'C'  => ['font' => ['size' => 16]],
        ];
    }
}
