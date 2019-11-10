<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Imports\PricesImport;
use Maatwebsite\Excel\Facades\Excel;

class PriceController extends Controller
{
    public function importIndex(){
        $duPrices = \App\Price::where('type','import')
                                ->where('key','LIKE','%du2%')
                                ->get();

        $ndPrices = \App\Price::where('type','import')
                                ->where('key','LIKE','%nd2%')
                                ->get();

        $epPrices = \App\Price::where('type','import')
                                ->where('key','LIKE','%ep2%')
                                ->get();

        return view('import',compact('duPrices','ndPrices','epPrices'));
    }

    public function import(Request $request){
        Excel::import(new PricesImport, request()->file('file'));
    }

    public function import2(Request $request){

        $count = 0;

        for($i = 1; $i <= 5; $i++){
            for($j = 1; $j <= 9; $j++){
                $count = $count+1;

                $key = "import-du2-".$count;
                $value = "";

                if($request->has($key)){
                    $value = $request->get($key);
                }else{
                    $value = "";
                }

                $price = \App\Price::firstOrCreate(['key' => $key]);
                $price->value = $value;
                $price->type = "import";
                $price->save();
            }
        }

        $count = 0;
        for($i = 1; $i <= 46; $i++){
            for($j = 1; $j <= 9; $j++){
                $count++;
                $key = "import-nd2-".$count;
                $value = "";

                if($request->has($key)){
                    $value = $request->get($key);
                }else{
                    $value = "";
                }

                $price = \App\Price::firstOrCreate(['key' => $key]);
                $price->value = $value;
                $price->type = "import";
                $price->save();
            }
        }

        $count = 0;
        for($i = 1; $i <= 5; $i++){
            for($j = 1; $j <= 9; $j++){
                $count++;
                $key = "import-ep2-".$count;
                $value = "";

                if($request->has($key)){
                    $value = $request->get($key);
                }else{
                    $value = "";
                }

                $price = \App\Price::firstOrCreate(['key' => $key]);
                $price->value = $value;
                $price->type = "import";
                $price->save();
            }
        }

        return redirect('/admin/import')->with([
            'message'    => "Import List Updated Successfully",
            'alert-type' => 'success',
        ]);
    }
}
