<?php

namespace App\Http\Controllers;

use setasign\Fpdi\Fpdi;
use Exception;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use TCG\Voyager\Database\Schema\SchemaManager;
use TCG\Voyager\Events\BreadDataAdded;
use TCG\Voyager\Events\BreadDataDeleted;
use TCG\Voyager\Events\BreadDataRestored;
use TCG\Voyager\Events\BreadDataUpdated;
use TCG\Voyager\Events\BreadImagesDeleted;
use TCG\Voyager\Facades\Voyager;
use TCG\Voyager\Http\Controllers\Traits\BreadRelationshipParser;

class InvoiceController extends \TCG\Voyager\Http\Controllers\VoyagerBaseController
{

    /**
     * POST BRE(A)D - Store data.
     *
     * @param \Illuminate\Http\Request $request
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(Request $request)
    {
        $slug = $this->getSlug($request);

        $dataType = Voyager::model('DataType')->where('slug', '=', $slug)->first();

        // Check permission
        $this->authorize('add', app($dataType->model_name));

        // Validate fields with ajax
        $val = $this->validateBread($request->all(), $dataType->addRows)->validate();
        $data = $this->insertUpdateData($request, $slug, $dataType->addRows, new $dataType->model_name());


        event(new BreadDataAdded($dataType, $data));

        if (!$request->has('_tagging')) {
            if (auth()->user()->can('browse', $data)) {
                $redirect = redirect()->route("voyager.{$dataType->slug}.index");
            } else {
                $redirect = redirect()->back();
            }

            return $redirect->with([
                    'message'    => __('voyager::generic.successfully_added_new')." {$dataType->getTranslatedAttribute('display_name_singular')}",
                    'alert-type' => 'success',
                ]);
        } else {
            return response()->json(['success' => true, 'data' => $data]);
        }
    }

    public function generateInvoice($id){
        $invoice = \App\InvoiceCustomer::find($id);
        $customer = \App\Customer::find($invoice->customer_id);

        $pdf = new PDF();
        $pdf->AliasNbPages();
        $pdf->setSourceFile("invoice.pdf");
        $tpl = $pdf->importPage(1);
        $pdf->AddPage();
        $pdf->useTemplate($tpl);
        $pdf->SetFont('Arial','B',9);

        $pdf->Text(42,73.2,$customer->name);

        $pdf->Output();
        
    }

    public function docketInvoice($docket_id){
        
        $docket = \App\Docket::find($docket_id);
        $volumns = \App\Volumn::where('docket_id',$docket_id)->get();

        $pdf = new PDF();
        $pdf->AliasNbPages();
        $pdf->setSourceFile("bill.pdf");
        $tpl = $pdf->importPage(1);
        $pdf->AddPage("L");
        $pdf->useTemplate($tpl);
        $pdf->SetFont('Arial','',8);

        //senders account no
        $pdf->Text(200,16,$docket->sender_acc_no);

        //receivers account no
        $pdf->Text(91,25,"");

        //Customer Refrence
        $pdf->Text(160,36,$docket->customer_ref);

        //From Name
        $pdf->SetFont('Arial','B',8);
        $pdf->Text(45,47.6,$docket->senderAddress->name);

        //From Address
        $pdf->setXY(44,50);
        $pdf->Multicell(0,3,nl2br($docket->senderAddress->address));

        //From City
        $pdf->Text(45,67.2,$docket->senderAddress->city);

        //From Pincode
        $pdf->Text(111,68.2,$docket->senderAddress->pincode);

        //Contact Name
        $pdf->Text(54,78.3,$docket->senderAddress->name);

        //Contact Country
        $pdf->Text(111,74,$docket->senderAddress->country);

        //Contact Mobile
        $pdf->Text(111,78.4,$docket->senderAddress->phone);

        //In Name
        $pdf->SetFont('Arial','B',8);
        $pdf->Text(170,47.4,$docket->receiverAddress->name);

        //In Address
        $pdf->setXY(169.2,50);
        $pdf->Multicell(0,3,nl2br($docket->receiverAddress->address));

        //In City
        $pdf->Text(170,67.5,$docket->receiverAddress->city);

        //In Pincode
        $pdf->Text(111,111.1,"");

        //In Contact Name
        $pdf->Text(178,78.3,$docket->receiverAddress->name);

        //In Contact Country
        $pdf->Text(237,74,$docket->receiverAddress->country);

        //In Contact Mobile
        $pdf->Text(237,78.5,$docket->receiverAddress->phone);

        //Delivery Name
        $pdf->SetFont('Arial','B',8);
        $pdf->Text(45,91.5,$docket->deliveryAddress->name);

        //Delivery Address
        $pdf->setXY(44,94);
        $pdf->Multicell(0,3,$docket->deliveryAddress->address);

        //Delivery City
        $pdf->Text(45,111.5,$docket->deliveryAddress->city);

        //Delivery Pincode
        $pdf->Text(111,154.6,"");

        //Delivery Contact Name
        $pdf->Text(54,122.3,$docket->deliveryAddress->name);

        //Delivery Contact Country
        $pdf->Text(111,117.6,$docket->deliveryAddress->country);

        //Delivery Contact Mobile
        $pdf->Text(111,122.3,$docket->deliveryAddress->phone);

        $total = 0;
        // $volumns->count()

        for ($i=0; $i < $volumns->count(); $i++) { 
            $total = $total + $volumns[$i]->qty;
            // $i = 0;
            if($i == 0){
                //Line One 
                $pdf->Text(153,152,$volumns[$i]->goods_desc); //description
                $pdf->Text(199,152,$volumns[$i]->qty); //items
                $pdf->Text(209,152,$volumns[$i]->kg); //kilos
                $pdf->Text(221,152,$volumns[$i]->grams); //grams
                $pdf->Text(232,152,$volumns[$i]->l); //length
                $pdf->Text(246,152,$volumns[$i]->w); //widht
                $pdf->Text(260,152,$volumns[$i]->h); //height
            }else if($i == 1){
                //Line Two 
                $pdf->Text(153,159,$volumns[$i]->goods_desc); //description
                $pdf->Text(199,159,$volumns[$i]->qty); //items
                $pdf->Text(209,159,$volumns[$i]->kg); //kilos
                $pdf->Text(221,159,$volumns[$i]->grams); //grams
                $pdf->Text(232,159,$volumns[$i]->l); //length
                $pdf->Text(246,159,$volumns[$i]->w); //widht
                $pdf->Text(260,159,$volumns[$i]->h); //height
            }else if($i == 2){
                //Line Three
                $pdf->Text(153,167,$volumns[$i]->goods_desc); //description
                $pdf->Text(199,167,$volumns[$i]->qty); //items
                $pdf->Text(209,167,$volumns[$i]->kg); //kilos
                $pdf->Text(221,167,$volumns[$i]->grams); //grams
                $pdf->Text(232,167,$volumns[$i]->l); //length
                $pdf->Text(246,167,$volumns[$i]->w); //widht
                $pdf->Text(260,167,$volumns[$i]->h); //height
            }else if($i == 3){
                //Line Three
                $pdf->Text(153,174,$volumns[$i]->goods_desc); //description
                $pdf->Text(199,174,$volumns[$i]->qty); //items
                $pdf->Text(209.5,174,$volumns[$i]->kg); //kilos
                $pdf->Text(221,174,$volumns[$i]->grams); //grams
                $pdf->Text(232,174,$volumns[$i]->l); //length
                $pdf->Text(246,174,$volumns[$i]->w); //widht
                $pdf->Text(260,174,$volumns[$i]->h); //height
            }
        }

        //Line Total
        // $pdf->Text(153,162,"Description"); //description
        $pdf->Text(198.5,181.7,$total); //total
        $pdf->Text(241.8,169.5,""); //volumn

        $pdf->Output();
        
    }
}

class PDF extends FPDI {

    function Header(){

    }
    function PutLink($URL, $txt)
    {
        // Put a hyperlink
        $this->SetTextColor(0,0,255);
        $this->SetStyle('U',true);
        $this->Write(5,$txt,$URL);
        $this->SetStyle('U',false);
        $this->SetTextColor(0);
    }

}
