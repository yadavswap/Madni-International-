@extends('voyager::master')

@section('css')
<meta name="csrf-token" content="{{ csrf_token() }}">
@stop

@section('page_title', 'Madni International | Import List')

@section('page_header')
<h1 class="page-title">
    <i class="voyager-certificate"></i> Invoices
</h1>
{{-- @include('voyager::multilingual.language-selector') --}}
@stop

@section('content')
<div class="container">
    <div class="row">
        <div class="form-group col-md-12">
            <form action="{{ url('admin/invoices', []) }}" method="post">
                @csrf
                <label for="customer_id">Select Customer Id</label>
                <select class="form-control select2" name="customer_id" id="customer_id" onchange="this.form.submit()">
                    <option value="" selected disabled>Select Customer Id</option>
                    @foreach ($customers as $customer)
                    <option value="{{ "MI78692".str_pad($customer->id,5, '0', STR_PAD_LEFT) }}">
                        {{ "MI78692".str_pad($customer->id,5, '0', STR_PAD_LEFT) }}</option>
                    @endforeach
                </select>
            </form>
        </div>
    </div>
    <div class="row">
        @if (isset($dockets))
        <div class="form-group col-md-12">
            <div class="table-responsive">
                <table class="table">
                    <thead>
                        <tr>
                            <th>Sr. No</th>
                            <th>Consignment No.</th>
                            <th>Booking Date</th>
                            <th>Origin</th>
                            <th>Destination</th>
                            <th>Zone</th>
                            <th>Product</th>
                            <th>Actual Weight</th>
                            <th>Chargable Weight</th>
                            <th>Amounts Rs</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($dockets as $docket)
                        @foreach ($docket->volumns as $volumn)
                        <tr>
                            <td>0</td>
                            <td>{{ $volumn->docket->consignment_id }}</td>
                            <td>{{ $volumn->docket->created_at->toDateString() }}</td>
                            <td>{{ $volumn->docket->senderAddress->city }}</td>
                            <td>{{ $volumn->docket->deliveryAddress->city }}</td>
                            <td>&nbsp;</td>
                            <td>{{ $volumn->goods_desc }}</td>
                            <td>{{ $volumn->kg + $volumn->grams }}</td>
                            <td>{{ $volumn->final_weight }}</td>
                            <td>{{ $volumn->amnt_rs }}</td>
                        </tr>
                        @endforeach
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
        <div class="col-md-4">
            <label for="gross_amount">Gross Amount</label>
            <input type="text" name="gross_amount" id="gross_amount" class="form-control">
        </div>
        <div class="col-md-4">
            <label for="fuel_charge">Fuel Surcharge Index</label>
            <input type="text" name="fuel_charge" id="fuel_charge" class="form-control">
        </div>
        <div class="col-md-4">
            <label for="custom_clearance">*Custom Clearance:</label>
            <input type="text" name="custom_clearance" id="custom_clearance" class="form-control">
        </div>
        <div class="col-md-4">
            <label for="adc_noc_charges">**ADC NOC Charges:</label>
            <input type="text" name="adc_noc_charges" id="adc_noc_charges" class="form-control">
        </div>
        <div class="col-md-4">
            <label for="other_charges">**ODA / Other Charges:</label>
            <input type="text" name="other_charges" id="other_charges" class="form-control">
        </div>
        <div class="col-md-4">
            <label for="add_charges">Address Corrections Charges</label>
            <input type="text" name="add_charges" id="add_charges" class="form-control">
        </div>
        <div class="col-md-4">
            <label for="war_surcharges">#War Surcharges:</label>
            <input type="text" name="war_surcharges" id="war_surcharges" class="form-control">
        </div>
        <div class="col-md-4">
            <label for="enhanced">Enhanced Security Surcharges:</label>
            <input type="text" name="enhanced" id="enhanced" class="form-control">
        </div>
        <div class="col-md-4">&nbsp;</div>
        <div class="col-md-12">
            <div class="row">
                <div class="col-md-4">
                    <input type="radio" name="gender" value="male"> C GST(9%):
                </div>
                <div class="col-md-8">
                    <input type="text" name="cgst" id="cgst" class="form-control">
                </div>
                <div class="col-md-4">
                    <input type="radio" name="gender" value="male"> S GST(9%):
                </div>
                <div class="col-md-8">
                    <input type="text" name="sgst" id="sgst" class="form-control">
                </div>
                <div class="col-md-4">
                    <input type="radio" name="igst" value="igst"> I GST(18%):
                </div>
                <div class="col-md-8">
                    <input type="text" name="cgst" id="cgst" class="form-control">
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <label for="freight_amt">Freight AMOUNT:</label>
            <input type="text" name="freight_amt" id="freight_amt" class="form-control">
        </div>
        <div class="col-md-4">
            <label for="duty_pay">Duty Payment:</label>
            <input type="text" name="duty_pay" id="duty_pay" class="form-control">
        </div>
        <div class="col-md-4">
            <label for="net_amt">NET Amount:</label>
            <input type="text" name="net_amt" id="net_amt" class="form-control">
        </div>

        @endif

    </div>
</div>
@stop