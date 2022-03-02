<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Exports\DetaineesExport;
use App\Exports\UsersExport;
use App\Imports\UsersImport;
use Maatwebsite\Excel\Facades\Excel;

use PhpOffice\PhpWord\TemplateProcessor;


class MyController extends Controller
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function importExportView()
    {
       return view('import');
    }
   
    /**
    * @return \Illuminate\Support\Collection
    */
    public function export() 
    {
        return Excel::download(new DetaineesExport, 'detainees.xlsx');
        return Excel::download(new UsersExport, 'users.xlsx');
    }
   
    /**
    * @return \Illuminate\Support\Collection
    */
    public function import() 
    {
        Excel::import(new UsersImport,request()->file('file'));
           
        return back();
    }

    public function phpword()
    {
        $file = public_path('PUPC SA Endorsement.docx');
        $phpword = new TemplateProcessor($file);

        $phpword->setValue('submit_date', 'DATE HERE');

        $phpword->saveAs(public_path('PUPC SA Endorsement Updated.docx'));
    }
}
