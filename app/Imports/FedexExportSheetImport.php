<?php
namespace App\Imports;

use Illuminate\Support\Collection;
use Maatwebsite\Excel\Concerns\ToCollection;

class FedexExportSheetImport implements ToCollection
{
    public function collection(Collection $rows)
    {
        $title_one = $rows[27][0];
        $title_two = $rows[29][0];
        $title_three = $rows[35][0];
        $title_four = $rows[178][0];
        $title_five = $rows[189][0];
        $title_six = $rows[204][0];

        //title one
        for($j = 1; $j < count($rows[28]); $j++){
            // print_r($rows[$i][0]);
            
            // echo $rows[$i][$j].'<br/>';

            $price = new \App\Price;
            $price->price = $rows[28][$j];
            $price->weight = $rows[28][0];
            $price->zone = $rows[26][$j];
            $price->title = $title_one;
            $price->provider = "fedex";
            $price->type = "export";

            $price->save();
        }

        //title two
        for($i = 30; $i < 35; $i++){
            // echo count($rows[$i]);
            for($j = 1; $j < count($rows[$i]); $j++){
                // print_r($rows[$i][0]);
                
                // echo $rows[$i][$j].'<br/>';

                $price = new \App\Price;
                $price->price = $rows[$i][$j];
                $price->weight = $rows[$i][0];
                $price->zone = $rows[26][$j];
                $price->title = $title_two;
                $price->provider = "fedex";
                $price->type = "export";

                $price->save();
            }
        }

        //title three
        for($i = 36; $i < 177; $i++){
            // echo count($rows[$i]);
            for($j = 1; $j < count($rows[$i]); $j++){
                // print_r($rows[$i][0]);
                
                // echo $rows[$i][$j].'<br/>';

                $price = new \App\Price;
                $price->price = $rows[$i][$j];
                $price->weight = $rows[$i][0];
                $price->zone = $rows[26][$j];
                $price->title = $title_three;
                $price->provider = "fedex";
                $price->type = "export";

                $price->save();
            }
        }

        //title four
        for($i = 182; $i < 187; $i++){
            // echo count($rows[$i]);
            for($j = 1; $j < count($rows[$i]); $j++){
                // print_r($rows[$i][0]);
                
                // echo $rows[$i][$j].'<br/>';

                $price = new \App\Price;
                $price->price = $rows[$i][$j];
                $price->weight = $rows[$i][0];
                $price->zone = $rows[26][$j];
                $price->title = $title_four;
                $price->provider = "fedex";
                $price->type = "export";

                $price->save();
            }
        }

        //title five
        for($i = 194; $i < 200; $i++){
            // echo count($rows[$i]);
            for($j = 1; $j < count($rows[$i]); $j++){
                // print_r($rows[$i][0]);
                
                // echo $rows[$i][$j].'<br/>';

                $price = new \App\Price;
                $price->price = $rows[$i][$j];
                $price->weight = $rows[$i][0];
                $price->zone = $rows[26][$j];
                $price->title = $title_five;
                $price->provider = "fedex";
                $price->type = "export";

                $price->save();
            }
        }

        //title six
        for($i = 210; $i < 217; $i++){
            // echo count($rows[$i]);
            for($j = 1; $j < count($rows[$i]); $j++){
                // print_r($rows[$i][0]);
                
                // echo $rows[$i][$j].'<br/>';

                $price = new \App\Price;
                $price->price = $rows[$i][$j];
                $price->weight = $rows[$i][0];
                $price->zone = $rows[26][$j];
                $price->title = $title_six;
                $price->provider = "fedex";
                $price->type = "export";

                $price->save();
            }
        }
    }
}