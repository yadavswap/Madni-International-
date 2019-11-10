<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use TCG\Voyager\Database\Schema\SchemaManager;
use TCG\Voyager\Events\BreadDataAdded;
use TCG\Voyager\Events\BreadDataDeleted;
use TCG\Voyager\Events\BreadDataUpdated;
use TCG\Voyager\Events\BreadImagesDeleted;
use TCG\Voyager\Facades\Voyager;
use TCG\Voyager\Http\Controllers\Traits\BreadRelationshipParser;

class DocketController extends \TCG\Voyager\Http\Controllers\VoyagerBaseController
{

    public function invoices(Request $request){
        if($request->method() === "POST"){
            $customer_id = $request->get('customer_id');
            // $docket = \App\Docket::find($docket_id);

            $customers = \App\Customer::all();
            $dockets = \App\Docket::where('sender_acc_no',$customer_id)->get();

            return view('invoices',compact('customers','dockets'));
        }else{
            $customers = \App\Customer::all();
            return view('invoices',compact('customers'));
        }
    }

       //***************************************
    //
    //                   /\
    //                  /  \
    //                 / /\ \
    //                / ____ \
    //               /_/    \_\
    //
    //
    // Add a new item of our Data Type BRE(A)D
    //
    //****************************************
    public function create(Request $request)
    {
        $slug = $this->getSlug($request);
        $dataType = Voyager::model('DataType')->where('slug', '=', $slug)->first();
        // Check permission
        $this->authorize('add', app($dataType->model_name));
        $dataTypeContent = (strlen($dataType->model_name) != 0)
                            ? new $dataType->model_name()
                            : false;
        foreach ($dataType->addRows as $key => $row) {
            $dataType->addRows[$key]['col_width'] = isset($row->details->width) ? $row->details->width : 100;
        }
        // If a column has a relationship associated with it, we do not want to show that field
        $this->removeRelationshipField($dataType, 'add');
        // Check if BREAD is Translatable
        $isModelTranslatable = is_bread_translatable($dataTypeContent);
        $view = 'voyager::bread.edit-add';
        if (view()->exists("voyager::$slug.edit-add")) {
            $view = "voyager::$slug.edit-add";
        }

        //Custom Code
        $customers = \App\Customer::get();

        //generate consignment number
        $consignment_no = "MD78692".str_pad(\App\Docket::count()+1,5, '0', STR_PAD_LEFT);

        return Voyager::view($view, compact(
            'dataType',
            'dataTypeContent',
            'isModelTranslatable',
            'customers',
            'consignment_no'
        ));
    }

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

        $senderAddress = new \App\SenderAddress;
        $senderAddress->cust_id = $request->sender_id;
        $senderAddress->name = $request->sender_name;
        $senderAddress->address = $request->sender_address;
        $senderAddress->city = $request->sender_city;
        $senderAddress->state  = $request->sender_state;
        $senderAddress->country = $request->sender_country;
        $senderAddress->gstin = $request->sender_gstin;
        $senderAddress->phone = $request->sender_phone;
        $senderAddress->email = $request->sender_email;

        $senderAddress->save();
        

        $receiverAddress = new \App\ReceiverAddress;
        // $receiverAddress->cust_id = $request->receiver_id;
        $receiverAddress->zone = $request->receiver_zone;
        $receiverAddress->name = $request->receiver_name;
        $receiverAddress->address = $request->receiver_address;
        $receiverAddress->city = $request->receiver_city;
        $receiverAddress->state  = $request->receiver_state;
        $receiverAddress->country = $request->receiver_country;
        $receiverAddress->gstin = $request->receiver_gstin;
        $receiverAddress->phone = $request->receiver_phone;
        $receiverAddress->email = $request->receiver_email;

        $receiverAddress->save();

        $deliveryAddress = new \App\DeliveryAddress;
        // $deliveryAddress->cust_id = $request->delivery_id;
        $deliveryAddress->zone = $request->delivery_zone;
        $deliveryAddress->name = $request->delivery_name;
        $deliveryAddress->address = $request->delivery_address;
        $deliveryAddress->city = $request->delivery_city;
        $deliveryAddress->state  = $request->delivery_state;
        $deliveryAddress->country = $request->delivery_country;
        $deliveryAddress->gstin = $request->delivery_gstin;
        $deliveryAddress->phone = $request->delivery_phone;
        $deliveryAddress->email = $request->delivery_email;

        $deliveryAddress->save();

        $docket = new \App\Docket;
        $docket->user_id = \Auth::id();
        $docket->sender_acc_no = $request->sender_acc_no;
        $docket->consignment_id = $request->consignment_no;
        $docket->customer_ref = $request->customer_ref;
        $docket->service = $request->service;
        $docket->sender_address_id = $senderAddress->id;
        $docket->receiver_address_id = $receiverAddress->id;
        $docket->delivery_address_id = $deliveryAddress->id;

        $docket->save();

        for ($i=0; $i < count($request->get("goods_desc")); $i++) { 
            // dd($request->get("l")[$i]);
            $volumn  = new \App\Volumn;
            $volumn->docket_id = $docket->id;
            $volumn->goods_desc = $request->get('goods_desc')[$i];
            $volumn->qty = $request->get('qty')[$i];
            $volumn->kg = $request->get('kg')[$i];
            $volumn->grams = $request->get('grams')[$i];
            $volumn->l = $request->get('l')[$i];
            $volumn->h = $request->get('h')[$i];
            $volumn->w  = $request->get('w')[$i];
            $volumn->final_weight = $request->get('final_weight')[$i];
            $volumn->save();
        }
        
        return redirect()
            ->route("voyager.generate-docket.index")
            ->with([
                    'message'    => __('voyager::generic.successfully_added_new')." Docket",
                    'alert-type' => 'success',
                ]);

        // $dataType = Voyager::model('DataType')->where('slug', '=', $slug)->first();

        // // Check permission
        // $this->authorize('add', app($dataType->model_name));

        // // Validate fields with ajax
        // $val = $this->validateBread($request->all(), $dataType->addRows)->validate();
        // $data = $this->insertUpdateData($request, $slug, $dataType->addRows, new $dataType->model_name());

        // event(new BreadDataAdded($dataType, $data));

        // if (!$request->has('_tagging')) {
            // return redirect()
            // ->route("voyager.{$dataType->slug}.index")
            // ->with([
            //         'message'    => __('voyager::generic.successfully_added_new')." {$dataType->getTranslatedAttribute('display_name_singular')}",
            //         'alert-type' => 'success',
            //     ]);
        // } else {
        //     return response()->json(['success' => true, 'data' => $data]);
        // }
    }

    //***************************************
    //                _____
    //               |  __ \
    //               | |__) |
    //               |  _  /
    //               | | \ \
    //               |_|  \_\
    //
    //  Read an item of our Data Type B(R)EAD
    //
    //****************************************

    public function show(Request $request, $id)
    {
        $slug = $this->getSlug($request);

        $dataType = Voyager::model('DataType')->where('slug', '=', $slug)->first();

        $isSoftDeleted = false;

        if (strlen($dataType->model_name) != 0) {
            $model = app($dataType->model_name);

            // Use withTrashed() if model uses SoftDeletes and if toggle is selected
            if ($model && in_array(SoftDeletes::class, class_uses($model))) {
                $model = $model->withTrashed();
            }
            if ($dataType->scope && $dataType->scope != '' && method_exists($model, 'scope'.ucfirst($dataType->scope))) {
                $model = $model->{$dataType->scope}();
            }
            $dataTypeContent = call_user_func([$model, 'findOrFail'], $id);
            if ($dataTypeContent->deleted_at) {
                $isSoftDeleted = true;
            }
        } else {
            // If Model doest exist, get data from table name
            $dataTypeContent = DB::table($dataType->name)->where('id', $id)->first();
        }

        // Replace relationships' keys for labels and create READ links if a slug is provided.
        $dataTypeContent = $this->resolveRelations($dataTypeContent, $dataType, true);

        // If a column has a relationship associated with it, we do not want to show that field
        $this->removeRelationshipField($dataType, 'read');

        // Check permission
        $this->authorize('read', $dataTypeContent);

        // Check if BREAD is Translatable
        $isModelTranslatable = is_bread_translatable($dataTypeContent);

        $view = 'voyager::bread.read';

        if (view()->exists("voyager::$slug.read")) {
            $view = "voyager::$slug.read";
        }

        $docket = \App\Docket::find($id);
        $volumns = \App\Volumn::where('docket_id',$id)->get();

        return Voyager::view($view, compact(
            'dataType',
            'dataTypeContent',
            'isModelTranslatable',
            'isSoftDeleted',
            'docket',
            'volumns'
        ));
    }

    //***************************************
    //                _____
    //               |  __ \
    //               | |  | |
    //               | |  | |
    //               | |__| |
    //               |_____/
    //
    //         Delete an item BREA(D)
    //
    //****************************************

    public function destroy(Request $request, $id)
    {
        $slug = $this->getSlug($request);

        $dataType = Voyager::model('DataType')->where('slug', '=', $slug)->first();

        // Check permission
        $this->authorize('delete', app($dataType->model_name));

        // Init array of IDs
        $ids = [];
        if (empty($id)) {
            // Bulk delete, get IDs from POST
            $ids = explode(',', $request->ids);
        } else {
            // Single item delete, get ID from URL
            $ids[] = $id;
        }
        foreach ($ids as $id) {
            $data = call_user_func([$dataType->model_name, 'findOrFail'], $id);

            //custom code
            // dd($data);

            $senderAddress = \App\SenderAddress::find($data->sender_address_id);
            $receiverAddress = \App\ReceiverAddress::find($data->receiver_address_id);
            $deliveryAddress = \App\DeliveryAddress::find($data->delivery_address_id);

            $senderAddress->delete();
            $receiverAddress->delete();
            $deliveryAddress->delete();

            \App\Volumn::where('docket_id',$id)->delete();

            $model = app($dataType->model_name);
            if (!($model && in_array(SoftDeletes::class, class_uses($model)))) {
                $this->cleanup($dataType, $data);
            }
        }

        $displayName = count($ids) > 1 ? $dataType->getTranslatedAttribute('display_name_plural') : $dataType->getTranslatedAttribute('display_name_singular');

        $res = $data->destroy($ids);
        $data = $res
            ? [
                'message'    => __('voyager::generic.successfully_deleted')." {$displayName}",
                'alert-type' => 'success',
            ]
            : [
                'message'    => __('voyager::generic.error_deleting')." {$displayName}",
                'alert-type' => 'error',
            ];

        if ($res) {
            event(new BreadDataDeleted($dataType, $data));
        }

        return redirect()->route("voyager.{$dataType->slug}.index")->with($data);
    }
}
