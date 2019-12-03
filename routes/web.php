<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
    Route::get('import','PriceController@importIndex');
    Route::post('price/import','PriceController@import');

    Route::get('export','PriceController@importIndex');
    Route::get('invoices','DocketController@invoices');
    Route::get('docket/invoice/{docket_id}','InvoiceController@docketInvoice');
    Route::post('invoices','DocketController@invoices');
    Route::get('download','PriceController@download');
    Route::get('generate/invoice/{id}','InvoiceController@generateInvoice');
});
