<?php

namespace App\Imports;

use Illuminate\Support\Collection;
use Maatwebsite\Excel\Concerns\WithMultipleSheets;

class PricesImport implements WithMultipleSheets
{
    public function sheets(): array
    {
        return [
            new FedexExportSheetImport(),
            new FedexImportSheetImport(),
            new TNTExportSheetImport(),
            new TNTImportSheetImport()
        ];
    }
}
