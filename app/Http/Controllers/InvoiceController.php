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
        // dd($request);
        $slug = $this->getSlug($request);

        $dataType = Voyager::model('DataType')->where('slug', '=', $slug)->first();

        // Check permission
        $this->authorize('add', app($dataType->model_name));

        // Validate fields with ajax
        $val = $this->validateBread($request->all(), $dataType->addRows)->validate();
        $data = $this->insertUpdateData($request, $slug, $dataType->addRows, new $dataType->model_name());

        for($i = 0; $i < count($request->get("consignment_no")); $i++){

            $invoiceItem = new \App\InvoiceItem;
            $invoiceItem->consignment_no = $request->get("consignment_no")[$i];
            $invoiceItem->refrence_no = $request->get("refrence_no")[$i];
            $invoiceItem->booking_date = $request->get("booking_date")[$i];
            $invoiceItem->origin = $request->get("origin")[$i];
            $invoiceItem->destination = $request->get("destination")[$i];
            $invoiceItem->zone = $request->get("zone")[$i];
            $invoiceItem->product = $request->get("product")[$i];
            $invoiceItem->actual_weight = $request->get("actual_weight")[$i];

            $volumetric_weight = ($request->get("l")[$i] * $request->get("w")[$i] * $request->get("h")[$i]) / 5000;

            $invoiceItem->volumetric_weight = $volumetric_weight;
            
            $invoiceItem->chargeable_weight = $request->get("chargeable_weight")[$i];
            $invoiceItem->amount = $request->get("amount")[$i];
            $invoiceItem->invoice_customer_id = $data->id;

            $invoiceItem->save();

        }

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
        $pdf->SetFont('Arial','B',8);

        $pdf->setXY(42,71);
        $pdf->Multicell(0,3,$customer->name."\n".$customer->city.", ".$customer->state." ".$customer->pincode."\n".$customer->country);
        $pdf->Text(150,74.1,"MI78692".str_pad($customer->id,5, '0', STR_PAD_LEFT));
        $pdf->Text(150,77.4,"MI78692".str_pad($invoice->id,5, '0', STR_PAD_LEFT));

        $pdf->SetFont('Arial','',8);
        $pdf->Text(42,87.6,$customer->phone);
        $pdf->Text(42,90.7,$customer->email);
        $pdf->Text(43,93.9,$customer->kind_attn);
        $pdf->Text(43,97.5,$customer->gstin);
        $pdf->Text(47,101,$invoice->state_code);

        $pdf->Text(150,80.8,$invoice->invoice_date);

        $pdf->SetFont('Arial','',7);
        $pdf->Text(193,153,$invoice->gross_amount);
        $pdf->Text(193,156.7,$invoice->fuel_surcharge_index);
        $pdf->Text(193,159.8,$invoice->custom_clearance);
        $pdf->Text(193,163.2,$invoice->oda_charges);
        $pdf->Text(193,166.7,$invoice->adc_noc_charges);
        $pdf->Text(193,170,$invoice->do_charges);
        $pdf->Text(193,173.5,$invoice->non_conveyar_charges);
        $pdf->Text(193,176.5,$invoice->address_correction_charges);
        $pdf->Text(193,179.8,$invoice->war_surcharges);
        $pdf->Text(193,182.8,$invoice->warehousing_charges);
        $pdf->Text(193,185.8,$invoice->ad_code_registration_charges);
        $pdf->Text(193,189.5,$invoice->air_cargo_registration_charges);
        $pdf->Text(193,192.9,$invoice->enhanced_security_charges);
        $pdf->Text(193,196.5,$invoice->c_gst);
        $pdf->Text(193,199.8,$invoice->s_gst);
        $pdf->Text(193,203.8,$invoice->i_gst);
        $pdf->Text(193,207.3,$invoice->freight_amount);
        $pdf->Text(193,210.8,$invoice->duty_payment);

        $pdf->SetFont('Arial','B',8);
        $pdf->Text(193,218.2,$invoice->net_amount);

        $invoiceItems = \App\InvoiceItem::where("invoice_customer_id",$id)->get();

        for($i = 0; $i < $invoiceItems->count(); $i++){
            if($i == 0){
                $pdf->Text(16,117,$invoiceItems[$i]->consignment_no);
                $pdf->Text(38,117,$invoiceItems[$i]->refrence_no);
                $pdf->Text(61,117,$invoiceItems[$i]->booking_date);
                $pdf->Text(79,117,$invoiceItems[$i]->origin);
                $pdf->Text(95,117,$invoiceItems[$i]->destination);
                $pdf->Text(114,117,$invoiceItems[$i]->zone);
                $pdf->Text(124,117,$invoiceItems[$i]->product);
                $pdf->Text(138,117,$invoiceItems[$i]->actual_weight);
                $pdf->Text(156,117,$invoiceItems[$i]->volumetric_weight);
                $pdf->Text(174,117,$invoiceItems[$i]->chargeable_weight);
                $pdf->Text(194,117,$invoiceItems[$i]->amount);
            }else if($i == 1){
                $pdf->Text(16,121,$invoiceItems[$i]->consignment_no);
                $pdf->Text(38,121,$invoiceItems[$i]->refrence_no);
                $pdf->Text(61,121,$invoiceItems[$i]->booking_date);
                $pdf->Text(79,121,$invoiceItems[$i]->origin);
                $pdf->Text(95,121,$invoiceItems[$i]->destination);
                $pdf->Text(114,121,$invoiceItems[$i]->zone);
                $pdf->Text(124,121,$invoiceItems[$i]->product);
                $pdf->Text(138,121,$invoiceItems[$i]->actual_weight);
                $pdf->Text(156,121,$invoiceItems[$i]->volumetric_weight);
                $pdf->Text(174,121,$invoiceItems[$i]->chargeable_weight);
                $pdf->Text(194,121,$invoiceItems[$i]->amount);
            }else if($i == 2){
                $pdf->Text(16,125.5,$invoiceItems[$i]->consignment_no);
                $pdf->Text(38,125.5,$invoiceItems[$i]->refrence_no);
                $pdf->Text(61,125.5,$invoiceItems[$i]->booking_date);
                $pdf->Text(79,125.5,$invoiceItems[$i]->origin);
                $pdf->Text(95,125.5,$invoiceItems[$i]->destination);
                $pdf->Text(114,125.5,$invoiceItems[$i]->zone);
                $pdf->Text(124,125.5,$invoiceItems[$i]->product);
                $pdf->Text(138,125.5,$invoiceItems[$i]->actual_weight);
                $pdf->Text(156,125.5,$invoiceItems[$i]->volumetric_weight);
                $pdf->Text(174,125.5,$invoiceItems[$i]->chargeable_weight);
                $pdf->Text(194,125.5,$invoiceItems[$i]->amount);
            }else if($i == 3){
                $pdf->Text(16,129.3,$invoiceItems[$i]->consignment_no);
                $pdf->Text(38,129.3,$invoiceItems[$i]->refrence_no);
                $pdf->Text(61,129.3,$invoiceItems[$i]->booking_date);
                $pdf->Text(79,129.3,$invoiceItems[$i]->origin);
                $pdf->Text(95,129.3,$invoiceItems[$i]->destination);
                $pdf->Text(114,129.3,$invoiceItems[$i]->zone);
                $pdf->Text(124,129.3,$invoiceItems[$i]->product);
                $pdf->Text(138,129.3,$invoiceItems[$i]->actual_weight);
                $pdf->Text(156,129.3,$invoiceItems[$i]->volumetric_weight);
                $pdf->Text(174,129.3,$invoiceItems[$i]->chargeable_weight);
                $pdf->Text(194,129.3,$invoiceItems[$i]->amount);
            }
            else if($i == 4){
                $pdf->Text(16,132.5,$invoiceItems[$i]->consignment_no);
                $pdf->Text(38,132.5,$invoiceItems[$i]->refrence_no);
                $pdf->Text(61,132.5,$invoiceItems[$i]->booking_date);
                $pdf->Text(79,132.5,$invoiceItems[$i]->origin);
                $pdf->Text(95,132.5,$invoiceItems[$i]->destination);
                $pdf->Text(114,132.5,$invoiceItems[$i]->zone);
                $pdf->Text(124,132.5,$invoiceItems[$i]->product);
                $pdf->Text(138,132.5,$invoiceItems[$i]->actual_weight);
                $pdf->Text(156,132.5,$invoiceItems[$i]->volumetric_weight);
                $pdf->Text(174,132.5,$invoiceItems[$i]->chargeable_weight);
                $pdf->Text(194,132.5,$invoiceItems[$i]->amount);
            }
        }

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

        $pdf->SetFont('Arial','B',10);

        //Service
        if($docket->service === "Express"){
            $pdf->Text(197.3,98.5,"X");
        }

        if($docket->service === "Economy"){
            $pdf->Text(197.3,103.4,"X");
        }

        if($docket->service === "Cargo"){
            $pdf->Text(197.3,108,"X");
        }

        if($docket->service === "D to D"){
            $pdf->Text(197.3,113,"X");
        }

        if($docket->service === "D to P"){
            $pdf->Text(197.3,118,"X");
        }

        if($docket->service === "P to P"){
            $pdf->Text(197.3,122.5,"X");
        }

        if($docket->service === "P to D"){
            $pdf->Text(197.3,127.5,"X");
        }

        $pdf->SetFont('Arial','B',8);
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
        $pdf->Text(30,138,"Total Amount : "); //description
        $pdf->Text(90,138,"Gross Amount : "); //description

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
