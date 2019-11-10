<?php
namespace App\Imports;

use Illuminate\Support\Collection;
use Maatwebsite\Excel\Concerns\ToCollection;

class TNTExportSheetImport implements ToCollection
{
    public function collection(Collection $rows)
    {
        // dd($rows);
    }
}