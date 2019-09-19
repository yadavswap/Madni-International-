<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class CustomerController extends Controller
{
    public function getCustomers(Request $request){
        $customer = \App\Customer::find($request->id);
        return response()->json($customer);
    }
}
