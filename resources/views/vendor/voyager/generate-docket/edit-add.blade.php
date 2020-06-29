@php
    $edit = !is_null($dataTypeContent->getKey());
    $add  = is_null($dataTypeContent->getKey());
@endphp

@extends('voyager::master')

@section('css')
    <meta name="csrf-token" content="{{ csrf_token() }}">   
@stop

@section('page_title', __('voyager::generic.'.($edit ? 'edit' : 'add')).' '.$dataType->getTranslatedAttribute('display_name_singular'))

@section('page_header')
    <h1 class="page-title">
        <i class="{{ $dataType->icon }}"></i>
        {{ __('voyager::generic.'.($edit ? 'edit' : 'add')).' '.$dataType->getTranslatedAttribute('display_name_singular') }}
    </h1>
    @include('voyager::multilingual.language-selector')
@stop

@section('content')
    <div class="page-content edit-add container-fluid">
            <form role="form"
            class="form-edit-add"
            action="{{ $edit ? route('voyager.'.$dataType->slug.'.update', $dataTypeContent->getKey()) : route('voyager.'.$dataType->slug.'.store') }}"
            method="POST" enctype="multipart/form-data">
                <!-- PUT Method if we are editing -->
                @if($edit)
                    {{ method_field("PUT") }}
                @endif

                <!-- CSRF TOKEN -->
                {{ csrf_field() }}
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-8 row">
                    <div class="panel-group" id="accordion">
                        <div class="panel panel-bordered" id="sender_panel">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">Consignment Number (From (Collection Address))</a>
                                </h4>
                            </div>
                            <div id="collapse1" class="panel-collapse collapse in">
                                <div class="panel-body">
                                    <div class="form-group col-md-12">
                                        <label for="sender_id">Select Customer</label>
                                        <select class="form-control select2" name="sender_id" id="sender_id">
                                            <option value="" selected disabled>Select Customer</option>
                                            @foreach ($customers as $customer)
                                                <option value="{{ $customer->id }}">{{ $customer->name }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="form-group col-md-12">
                                        <label for="sender_id_gen">Sender Id</label>
                                        <input type="text" name="sender_id_gen" id="sender_id_gen" class="form-control" disabled>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="sender_name">Sender Name</label>
                                        <input type="text" name="sender_name" id="sender_name" class="form-control" required>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="sender_email">Sender Email</label>
                                        <input type="email" name="sender_email" id="sender_email" class="form-control" required>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="sender_phone">Sender Phone</label>
                                        <input type="text" name="sender_phone" id="sender_phone" class="form-control" required>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="sender_gstin">Sender GSTIN</label>
                                        <input type="text" name="sender_gstin" id="sender_gstin" class="form-control" required>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="sender_kindattn">Sender Kind Attn</label>
                                        <input type="text" name="sender_kindattn" id="sender_kindattn" class="form-control" required>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="sender_pin">Sender Pin</label>
                                        <input type="text" name="sender_pin" id="sender_pin" class="form-control" required>
                                    </div>
                                    <div class="form-group col-md-12">
                                        <label for="sender_address">Sender Address</label>
                                        <textarea type="text" name="sender_address" id="sender_address" class="form-control" required></textarea>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="sender_city">Sender City</label>
                                        <input type="text" name="sender_city" id="sender_city" class="form-control" required>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="sender_state">Sender State</label>
                                        <input type="text" name="sender_state" id="sender_state" class="form-control" required>
                                    </div>
                                    <div class="form-group col-md-12">
                                        <label for="sender_country">Sender Country</label>
                                        <input type="text" name="sender_country" id="sender_country" class="form-control" required>
                                    </div>
                                    {{-- <div class="form-group col-md-6">
                                        <button type="button" class="btn btn-primary btn-block" id="sender_button">Next</button>
                                    </div> --}}
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-bordered">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">Consignment Number (To (Reciver Address))</a>
                                </h4>
                            </div>
                            <div id="collapse2" class="panel-collapse collapse in">
                                <div class="panel-body">
                                    {{-- <div class="form-group col-md-12">
                                        <label for="receiver_id">Select Customer</label>
                                        <select class="form-control select2" name="receiver_id" id="receiver_id">
                                            <option value="" selected disabled>Select Customer</option>
                                            @foreach ($customers as $customer)
                                                <option value="{{ $customer->id }}">{{ $customer->name }}</option>
                                            @endforeach
                                        </select>
                                    </div> --}}
                                    <div class="form-group col-md-12">
                                        <label for="receiver_zone">Select Zone</label>
                                        <select class="form-control select2" name="receiver_zone" id="receiver_zone" required>
                                            <option value="" selected disabled>Select Zone</option>
                                            @for ($i = 1; $i < 10; $i++)
                                                <option value="Zone-{{ $i }}">Zone {{ $i }}</option>
                                            @endfor
                                        </select>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="receiver_name">Name</label>
                                        <input type="text" name="receiver_name" id="receiver_name" class="form-control" required>
                                    </div>
                                    <div class="form-group col-md-6">
                                            <label for="receiver_email">Email</label>
                                            <input type="email" name="receiver_email" id="receiver_email" class="form-control" required>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="receiver_phone">Phone</label>
                                            <input type="text" name="receiver_phone" id="receiver_phone" class="form-control" required>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="receiver_gstin">GSTIN</label>
                                            <input type="text" name="receiver_gstin" id="receiver_gstin" class="form-control" required>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="receiver_kindattn">Kind Attn</label>
                                            <input type="text" name="receiver_kindattn" id="receiver_kindattn" class="form-control" required>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="receiver_pin">Pin</label>
                                            <input type="text" name="receiver_pin" id="receiver_pin" class="form-control" required>
                                        </div>
                                        <div class="form-group col-md-12">
                                            <label for="receiver_address">Address</label>
                                            <textarea type="text" name="receiver_address" id="receiver_address" class="form-control" required></textarea>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="receiver_city">City</label>
                                            <input type="text" name="receiver_city" id="receiver_city" class="form-control" required>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="receiver_state">State</label>
                                            <input type="text" name="receiver_state" id="receiver_state" class="form-control" required>
                                        </div>
                                        <div class="form-group col-md-12">
                                            <label for="receiver_country">Country</label>
                                            <input type="text" name="receiver_country" id="receiver_country" class="form-control" required>
                                        </div>
                                        {{-- <div class="form-group col-md-6">
                                            <button type="button" class="btn btn-primary btn-block" id="receiver_button">Next</button>
                                        </div> --}}
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-bordered">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse3">Consignment Number (Deliver Address))</a>
                                </h4>
                            </div>
                            <div id="collapse3" class="panel-collapse collapse in">
                                <div class="panel-body">
                                    {{-- <div class="form-group col-md-12">
                                        <label for="delivery_id">Select Customer</label>
                                        <select class="form-control select2" name="delivery_id" id="delivery_id">
                                            <option value="" selected disabled>Select Customer</option>
                                            @foreach ($customers as $customer)
                                                <option value="{{ $customer->id }}">{{ $customer->name }}</option>
                                            @endforeach
                                        </select>
                                    </div> --}}
                                    <div class="form-group col-md-12">
                                        <label for="delivery_zone">Select Zone</label>
                                        <select class="form-control select2" name="delivery_zone" id="delivery_zone">
                                            <option value="" selected disabled>Select Zone</option>
                                            @for ($i = 1; $i < 10; $i++)
                                                <option value="Zone-{{ $i }}">Zone {{ $i }}</option>
                                            @endfor
                                        </select>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="delivery_name">Name</label>
                                        <input type="text" name="delivery_name" id="delivery_name" class="form-control" required>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="delivery_email">Email</label>
                                        <input type="email" name="delivery_email" id="delivery_email" class="form-control" required>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="delivery_phone">Phone</label>
                                        <input type="text" name="delivery_phone" id="delivery_phone" class="form-control" required>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="delivery_gstin">GSTIN</label>
                                        <input type="text" name="delivery_gstin" id="delivery_gstin" class="form-control" required>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="delivery_kindattn">Kind Attn</label>
                                        <input type="text" name="delivery_kindattn" id="delivery_kindattn" class="form-control" required>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="delivery_pin">Pin</label>
                                        <input type="text" name="delivery_pin" id="delivery_pin" class="form-control" required>
                                    </div>
                                    <div class="form-group col-md-12">
                                        <label for="delivery_address">Address</label>
                                        <textarea type="text" name="delivery_address" id="delivery_address" class="form-control" required></textarea>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="delivery_city">City</label>
                                        <input type="text" name="delivery_city" id="delivery_city" class="form-control" required>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="delivery_state">State</label>
                                        <input type="text" name="delivery_state" id="delivery_state" class="form-control" required>
                                    </div>
                                    <div class="form-group col-md-12">
                                        <label for="delivery_country">Country</label>
                                        <input type="text" name="delivery_country" id="delivery_country" class="form-control" required>
                                    </div>
                                    {{-- <div class="form-group col-md-6">
                                        <button type="button" class="btn btn-primary btn-block" id="delivery_button">Next</button>
                                    </div>   --}}
                                </div>
                            </div>
                        </div>

                        <div class="panel panel-bordered">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse4">Final Docket</a>
                                </h4>
                            </div>
                            <div id="collapse4" class="panel-collapse collapse in">
                                <div class="panel-body">
                                    <div class="form-group col-md-6">
                                        <label for="sender_acc_no">Sender Account No</label>
                                        <input type="text" name="sender_acc_no" id="sender_acc_no" class="form-control" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="consignment_no">Consignment No</label>
                                        <input type="text" name="consignment_no" id="consignment_no" class="form-control" readonly value="{{ $consignment_no }}">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="customer_ref">Customer Reference</label>
                                        <input type="text" name="customer_ref" id="customer_ref" class="form-control" required>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="service">Select Service</label>
                                        <select class="form-control select2" name="service" id="service">
                                            <option value="" selected disabled>Select Customer</option>
                                            <option>Express</option>
                                            <option>Economy</option>
                                            <option>Cargo</option>
                                            <option>D to D</option>
                                            <option>D to P</option>
                                            <option>P to P</option>
                                            <option>P to D</option>
                                        </select>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="table-wrapper">          
                                            <table class="table">
                                                <thead>
                                                <tr>
                                                    <th>
                                                        <button id="add_row" class="btn btn-primary">+Row</button>
                                                        <button id="rm_row" class="btn btn-danger">-Row</button>
                                                    </th>
                                                    <th>&nbsp;</th>
                                                    <th>Weight</th>
                                                    <th>&nbsp;</th>
                                                    <th>&nbsp;</th>
                                                    <th>Dimensions</th>
                                                    <th>&nbsp;</th>
                                                    {{-- <th>&nbsp;</th> --}}
                                                </tr>
                                                <tr>
                                                    <th style="width: 30%">Goods Description</th>
                                                    <th>Quantity</th>
                                                    <th>KG</th>
                                                    <th>Grams</th>
                                                    <th>L</th>
                                                    <th>W</th>
                                                    <th>H</th>
                                                    {{-- <th>Final Weight</th> --}}
                                                </tr>
                                                </thead>
                                                <tbody id="tbody-one">
                                                    <tr id="main-tr">
                                                        <td>
                                                            <div class="form-group">
                                                                <input type="text" name="goods_desc[]" id="goods_desc" class="form-control" required>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div class="form-group">
                                                                <input type="text" name="qty[]" id="qty" class="form-control" required>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div class="form-group">
                                                                <input type="text" name="kg[]" id="kg" class="form-control" required>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div class="form-group">
                                                                <input type="text" name="grams[]" id="grams" class="form-control" required>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div class="form-group">
                                                                <input type="text" name="l[]" id="l" class="form-control" required>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div class="form-group">
                                                                <input type="text" name="w[]" id="w" class="form-control" required>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div class="form-group">
                                                                <input type="text" name="h[]" id="h" class="form-control" required>
                                                            </div>
                                                        </td>
                                                        {{-- <td>
                                                            <div class="form-group">
                                                                <input type="text" name="final_weight[]" id="final_weight" class="form-control" required>
                                                            </div>
                                                        </td> --}}
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <button type="submit" class="btn btn-primary btn-block btn-lg">Generate Docket</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>

    <div class="modal fade modal-danger" id="confirm_delete_modal">
        <div class="modal-dialog">
            <div class="modal-content">

                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"
                            aria-hidden="true">&times;</button>
                    <h4 class="modal-title"><i class="voyager-warning"></i> {{ __('voyager::generic.are_you_sure') }}</h4>
                </div>

                <div class="modal-body">
                    <h4>{{ __('voyager::generic.are_you_sure_delete') }} '<span class="confirm_delete_name"></span>'</h4>
                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">{{ __('voyager::generic.cancel') }}</button>
                    <button type="button" class="btn btn-danger" id="confirm_delete">{{ __('voyager::generic.delete_confirm') }}</button>
                </div>
            </div>
        </div>
    </div>
    <!-- End Delete File Modal -->
@stop

@section('javascript')
    <script>
        var params = {};
        var $file;

        //custome function
        function pad (str, max) {
            str = str.toString();
            return str.length < max ? pad("0" + str, max) : str;
        }

        function deleteHandler(tag, isMulti) {
          return function() {
            $file = $(this).siblings(tag);

            params = {
                slug:   '{{ $dataType->slug }}',
                filename:  $file.data('file-name'),
                id:     $file.data('id'),
                field:  $file.parent().data('field-name'),
                multi: isMulti,
                _token: '{{ csrf_token() }}'
            }

            $('.confirm_delete_name').text(params.filename);
            $('#confirm_delete_modal').modal('show');
          };
        }

        $('document').ready(function () {
            $('.toggleswitch').bootstrapToggle();

            //Init datepicker for date fields if data-datepicker attribute defined
            //or if browser does not handle date inputs
            $('.form-group input[type=date]').each(function (idx, elt) {
                if (elt.type != 'date' || elt.hasAttribute('data-datepicker')) {
                    elt.type = 'text';
                    $(elt).datetimepicker($(elt).data('datepicker'));
                }
            });

            @if ($isModelTranslatable)
                $('.side-body').multilingual({"editing": true});
            @endif

            $('.side-body input[data-slug-origin]').each(function(i, el) {
                $(el).slugify();
            });

            $('.form-group').on('click', '.remove-multi-image', deleteHandler('img', true));
            $('.form-group').on('click', '.remove-single-image', deleteHandler('img', false));
            $('.form-group').on('click', '.remove-multi-file', deleteHandler('a', true));
            $('.form-group').on('click', '.remove-single-file', deleteHandler('a', false));

            $('#confirm_delete').on('click', function(){
                $.post('{{ route('voyager.'.$dataType->slug.'.media.remove') }}', params, function (response) {
                    if ( response
                        && response.data
                        && response.data.status
                        && response.data.status == 200 ) {

                        toastr.success(response.data.message);
                        $file.parent().fadeOut(300, function() { $(this).remove(); })
                    } else {
                        toastr.error("Error removing file.");
                    }
                });

                $('#confirm_delete_modal').modal('hide');
            });
            $('[data-toggle="tooltip"]').tooltip();

            //custome codes
            $("#sender_id").change(function(){
                $.ajax({
                    url: "{{ url('/api/customers') }}",
                    type: "POST",
                    data: {
                        "id" : $(this).val()
                    },
                    success: function(response){
                        console.log(response);
                        var senderId = pad(response.id,5);
                        $("#sender_id_gen").val("MI78692"+senderId);
                        $("#sender_acc_no").val("MI78692"+senderId);
                        $("#sender_name").val(response.name);
                        $("#sender_email").val(response.email);
                        $("#sender_phone").val(response.phone);
                        $("#sender_gstin").val(response.gstin);
                        $("#sender_kindattn").val(response.kind_attn);
                        $("#sender_pin").val(response.pincode);
                        $("#sender_address").val(response.address);
                        $("#sender_city").val(response.city);
                        $("#sender_state").val(response.state);
                        $("#sender_country").val(response.country);
                    }
                });
            });

            $("#receiver_id").change(function(){
                $.ajax({
                    url: "{{ url('/api/customers') }}",
                    type: "POST",
                    data: {
                        "id" : $(this).val()
                    },
                    success: function(response){
                        console.log(response);
                        $("#receiver_name").val(response.name);
                        $("#receiver_email").val(response.email);
                        $("#receiver_phone").val(response.phone);
                        $("#receiver_gstin").val(response.gstin);
                        $("#receiver_kindattn").val(response.kind_attn);
                        $("#receiver_pin").val(response.pincode);
                        $("#receiver_address").val(response.address);
                        $("#receiver_city").val(response.city);
                        $("#receiver_state").val(response.state);
                        $("#receiver_country").val(response.country);
                    }
                });
            });

            $("#delivery_id").change(function(){
                $.ajax({
                    url: "{{ url('/api/customers') }}",
                    type: "POST",
                    data: {
                        "id" : $(this).val()
                    },
                    success: function(response){
                        console.log(response);
                        $("#delivery_name").val(response.name);
                        $("#delivery_email").val(response.email);
                        $("#delivery_phone").val(response.phone);
                        $("#delivery_gstin").val(response.gstin);
                        $("#delivery_kindattn").val(response.kind_attn);
                        $("#delivery_pin").val(response.pincode);
                        $("#delivery_address").val(response.address);
                        $("#delivery_city").val(response.city);
                        $("#delivery_state").val(response.state);
                        $("#delivery_country").val(response.country);
                    }
                });
            });

            $("#sender_button").click(function(){
                $("#collapse1").collapse('hide');
                $("#collapse2").collapse('show');
            });

            $("#receiver_button").click(function(){
                $("#collapse2").collapse('hide');
                $("#collapse3").collapse('show');
            });

            $("#delivery_button").click(function(){
                $("#collapse3").collapse('hide');
                $("#collapse4").collapse('show');
            });

            $("#add_row").click(function(e){
                e.preventDefault();
                if($("#tbody-one tr").length < 5){
                    $copiedelement = $("#main-tr").clone(true);
                    $copiedelement.find("input").val("");
                    $copiedelement.appendTo("#tbody-one").filter('[id]').each(function(){
                        this.id = this.id+"_"+$("#tbody-one tr").length;
                    });
                }
            });

            $("#rm_row").click(function(e){
                e.preventDefault();
                if($("#tbody-one tr").length > 1){
                    $("#tbody-one > tr").last().remove();
                }
            });
            
        });
    </script>
@stop

