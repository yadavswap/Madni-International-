<?php
namespace App\Imports;

use Illuminate\Support\Collection;
use Maatwebsite\Excel\Concerns\ToCollection;

class FedexImportSheetImport implements ToCollection
{
    public function collection(Collection $rows)
    {
        for($i = 1; $i < count($rows); $i++){
            // echo count($rows[$i]);
            for($j = 1; $j < count($rows[$i]); $j++){

                $price = new \App\Price;
                $price->price = $rows[$i][$j];
                $price->weight = $rows[$i][0];
                $price->zone = $rows[0][$j];
                //$price->title = "none";
                $price->provider = "fedex";
                $price->type = "import";

                $price->save();
            }
        }
    }
}