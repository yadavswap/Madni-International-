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
    <div class="container-fluid">
    <form action="{{ url('admin/price/import', []) }}" class="panel panel-bordered" method="post" enctype="multipart/form-data" style="padding: 10px">
        @csrf
        <div class="form-group">
            <label for="file">Choos Excel File</label>
            <input type="file" name="file" id="file" class="form-control">
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
        <a href="{{ url('admin/download', []) }}" class="btn btn-warning">Download</a>
    </form>
    </div>
    @include('voyager::multilingual.language-selector')
@stop

@section('content')
    <div class="page-content edit-add container-fluid">
        <div class="row">
            <div class="col-md-12">

                <div class="panel panel-bordered">
                    <!-- form start -->
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

                        <div class="panel-body">

                            @if (count($errors) > 0)
                                <div class="alert alert-danger">
                                    <ul>
                                        @foreach ($errors->all() as $error)
                                            <li>{{ $error }}</li>
                                        @endforeach
                                    </ul>
                                </div>
                            @endif

                            <!-- Adding / Editing -->
                            @php
                                $dataTypeRows = $dataType->{($edit ? 'editRows' : 'addRows' )};
                            @endphp

                            @foreach($dataTypeRows as $row)
                                <!-- GET THE DISPLAY OPTIONS -->
                                @php
                                    $display_options = $row->details->display ?? NULL;
                                    if ($dataTypeContent->{$row->field.'_'.($edit ? 'edit' : 'add')}) {
                                        $dataTypeContent->{$row->field} = $dataTypeContent->{$row->field.'_'.($edit ? 'edit' : 'add')};
                                    }
                                @endphp
                                @if (isset($row->details->legend) && isset($row->details->legend->text))
                                    <legend class="text-{{ $row->details->legend->align ?? 'center' }}" style="background-color: {{ $row->details->legend->bgcolor ?? '#f0f0f0' }};padding: 5px;">{{ $row->details->legend->text }}</legend>
                                @endif

                                <div class="form-group @if($row->type == 'hidden') hidden @endif col-md-{{ $display_options->width ?? 12 }} {{ $errors->has($row->field) ? 'has-error' : '' }}" @if(isset($display_options->id)){{ "id=$display_options->id" }}@endif>
                                    {{ $row->slugify }}
                                    <label class="control-label" for="name">{{ $row->getTranslatedAttribute('display_name') }}</label>
                                    @include('voyager::multilingual.input-hidden-bread-edit-add')
                                    @if (isset($row->details->view))
                                        @include($row->details->view, ['row' => $row, 'dataType' => $dataType, 'dataTypeContent' => $dataTypeContent, 'content' => $dataTypeContent->{$row->field}, 'action' => ($edit ? 'edit' : 'add')])
                                    @elseif ($row->type == 'relationship')
                                        @include('voyager::formfields.relationship', ['options' => $row->details])
                                    @else
                                        {!! app('voyager')->formField($row, $dataType, $dataTypeContent) !!}
                                    @endif

                                    @foreach (app('voyager')->afterFormFields($row, $dataType, $dataTypeContent) as $after)
                                        {!! $after->handle($row, $dataType, $dataTypeContent) !!}
                                    @endforeach
                                    @if ($errors->has($row->field))
                                        @foreach ($errors->get($row->field) as $error)
                                            <span class="help-block">{{ $error }}</span>
                                        @endforeach
                                    @endif
                                </div>
                            @endforeach

                            <button type="button" id="addrow" class="btn btn-success" >Add Row</button>
                            <button type="button" id="deleterow" class="btn btn-danger">Delete Row</button>
                            <button type="button" id="calculate" class="btn btn-info">Calculate Amount</button>

                            <table class="table">
                                <thead>
                                    <tr>
                                        <th colspan="8"></th>
                                        <th colspan="3">Volumetric Weight Kgs</th>
                                        <th colspan="2"></th>
                                    </tr>
                                    <tr>
                                        <th style="width: 6%">Consignment No</th>
                                        <th style="width: 6%">Refrence No</th>
                                        <th style="width: 8%">Booking Date</th>
                                        <th style="width: 6%">Origin</th>
                                        <th style="width: 6%">Destination</th>
                                        <th style="width: 6%">Zone</th>
                                        <th style="width: 6%">Product</th>
                                        <th style="width: 6%">Actual Weight Kgs</th>
                                        <th style="width: 3%">L</th>
                                        <th style="width: 3%">W</th>
                                        <th style="width: 3%">H</th>
                                        <th style="width: 6%">Chargable Wight Kgs</th>
                                        <th style="width: 6%">Amount Rs</th>
                                    </tr>
                                </thead>
                                @php
                                    $countries = \DB::table('countries')->get();
                                @endphp
                                <tbody id="itembody">
                                    <tr id="itemrow" class="itemrow">
                                        <td>
                                            <div class="form-group">
                                                <input type="text" name="consignment_no[]" id="consignment_no1" class="form-control consignment_no">
                                            </div>
                                        </td>
                                        <td>
                                            <div class="form-group">
                                                <input type="text" name="refrence_no[]" id="refrence_no1" class="form-control consignment_no">
                                            </div>
                                        </td>
                                        <td>
                                            <div class="form-group">
                                                <input type="date" name="booking_date[]" id="booking_date1" class="form-control booking_date">
                                            </div>
                                        </td>
                                        <td>
                                            <div class="form-group">
                                                <select name="origin[]" id="origin1" class="form-control">
                                                    @foreach ($countries as $country)
                                                        <option value="{{ $country->code }}">{{ $country->name }}</option>
                                                    @endforeach
                                                </select>
                                                {{-- <input type="text" name="origin[]" id="origin1" class="form-control origin"> --}}
                                            </div>
                                        </td>
                                        <td>
                                            <div class="form-group">
                                                {{-- <input type="text" name="destination[]" id="destination1" class="form-control destination"> --}}
                                                <select name="destination[]" id="destination1" class="form-control">
                                                    @foreach ($countries as $country)
                                                        <option value="{{ $country->code }}">{{ $country->name }}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                        </td>
                                        <td>
                                            <div class="form-group">
                                                <select name="zone[]" id="zone1" class="form-control zone">
                                                    <option value="Zone 1">Zone 1</option>
                                                    <option value="Zone 2">Zone 2</option>
                                                    <option value="Zone 3">Zone 3</option>
                                                    <option value="Zone 4">Zone 4</option>
                                                    <option value="Zone 5">Zone 5</option>
                                                    <option value="Zone 6">Zone 6</option>
                                                    <option value="Zone 7">Zone 7</option>
                                                    <option value="Zone 8">Zone 8</option>
                                                    <option value="Zone 9">Zone 9</option>
                                                    <option value="a">A</option>
                                                    <option value="b">B</option>
                                                    <option value="c">C</option>
                                                    <option value="d">D</option>
                                                    <option value="e">E</option>
                                                    <option value="f">F</option>
                                                    <option value="g">G</option>
                                                    <option value="h">H</option>
                                                    <option value="i">I</option>
                                                    <option value="j">J</option>
                                                    <option value="l">L</option>
                                                    <option value="m">M</option>
                                                    <option value="n">N</option>
                                                    <option value="o">O</option>
                                                    <option value="p">P</option>
                                                    <option value="q">Q</option>
                                                </select>
                                                {{-- <input type="text" name="zone[]" id="zone1" class="form-control zone"> --}}
                                            </div>
                                        </td>
                                        <td>
                                            <div class="form-group">
                                                <select class="form-control" name="product[]" id="product1">
                                                    <option value="doc">Doc</option>
                                                    <option value="non doc">Non Doc</option>
                                                </select>
                                                {{-- <input type="text" name="product[]" id="product1" class="form-control product"> --}}
                                            </div>
                                        </td>
                                        <td>
                                            <div class="form-group">
                                                <input type="text" name="actual_weight[]" id="actual_weight1" class="form-control actual_weight">
                                            </div>
                                        </td>
                                        <td>
                                            <div class="form-group">
                                                <input style="font-size: 10px" type="text" name="l[]" id="l1" class="form-control l">
                                            </div>
                                        </td>
                                        <td>
                                            <div class="form-group">
                                                <input style="font-size: 10px" type="text" name="w[]" id="w1" class="form-control w">
                                            </div>
                                        </td>
                                        <td>
                                            <div class="form-group">
                                                <input style="font-size: 10px" type="text" name="h[]" id="h1" class="form-control h">
                                            </div>
                                        </td>
                                        <td>
                                            <div class="form-group">
                                                <input type="text" name="chargeable_weight[]" id="chargeable_weight1" class="form-control chargeable_weight">
                                            </div>
                                        </td>
                                        <td>
                                            <div class="form-group">
                                                <input type="text" name="amount[]" id="amount1" value="0" class="form-control amount">
                                                <span class="text-danger amontError" id="amontError1" style="display: none">no amount</span>
                                                <span class="text-success amontLoading" id="amontLoading1" style="display: none">Loading...</span>
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>

                        </div><!-- panel-body -->

                        <div class="panel-footer">
                            @section('submit-buttons')
                                <button type="submit" class="btn btn-primary save">{{ __('voyager::generic.save') }}</button>
                            @stop
                            @yield('submit-buttons')
                        </div>
                    </form>

                    <iframe id="form_target" name="form_target" style="display:none"></iframe>
                    <form id="my_form" action="{{ route('voyager.upload') }}" target="form_target" method="post"
                            enctype="multipart/form-data" style="width:0;height:0;overflow:hidden">
                        <input name="image" id="upload_file" type="file"
                                 onchange="$('#my_form').submit();this.value='';">
                        <input type="hidden" name="type_slug" id="type_slug" value="{{ $dataType->slug }}">
                        {{ csrf_field() }}
                    </form>

                </div>
            </div>
        </div>
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
        });
    </script>
    <script>
        $(document).ready(function(){

            //disabling input fields
            $('input[name="net_amount"]').attr("readonly",true);
            $('input[name="i_gst"]').attr("readonly",true);
            $('input[name="s_gst"]').attr("readonly",true);
            $('input[name="c_gst"]').attr("readonly",true);
            $('input[name="fuel_surcharge_index"]').attr("readonly",true);
            $('input[name="gross_amount"]').attr("readonly",true);
            $('input[name="freight_amount"]').attr("readonly", true);

            $('select[name="type"]').change(function(){
                $('input[name="i_gst"]').val("");
                $('input[name="s_gst"]').val("");
                $('input[name="c_gst"]').val("");
                $('input[name="gross_amount"]').val("");
                $('input[name="fuel_surcharge_index"]').val("");
                $('input[name="net_amount"]').val("");
            });

            $("#addrow").click(function(){

                if($("#itembody .itemrow").length < 5){

                    var consignment_id = $('input[id^="consignment_no"]:last');
                    var num = parseInt(consignment_id.prop("id").match(/\d+/g), 10) + 1;

                    var itemrow = $('#itemrow').clone();
                    itemrow.find("input").val("");
                    itemrow.find(".consignment_no:last").attr("id","consignment_no"+num);
                    itemrow.find(".consignment_no:last").attr("value","");
                    itemrow.find(".refrence_no:last").attr("value","");
                    itemrow.find(".booking_date:last").attr("id","booking_date"+num);
                    itemrow.find(".origin:last").attr("id","origin"+num);
                    itemrow.find(".destination:last").attr("id","destination"+num);
                    itemrow.find(".zone:last").attr("id","zone"+num);
                    itemrow.find(".product:last").attr("id","product"+num);
                    itemrow.find(".actual_weight:last").attr("id","actual_weight"+num);
                    // itemrow.find(".volumetric_weight:last").attr("id","volumetric_weight"+num);
                    itemrow.find(".chargeable_weight:last").attr("id","chargeable_weight"+num);
                    itemrow.find(".amount:last").attr("id","amount"+num);
                    itemrow.find(".w:last").attr("id","w"+num);
                    itemrow.find(".l:last").attr("id","l"+num);
                    itemrow.find(".h:last").attr("id","h"+num);
                    itemrow.find(".amontError:last").attr("id","amontError"+num);
                    itemrow.find(".amontLoading:last").attr("id","amontLoading"+num);


                    itemrow.find(".amount:last").val("0");
                    $("#itembody").append(itemrow);
                }
                
            });

            $("#deleterow").click(function(){
                if($("#itembody .itemrow").length > 1){
                    $(".itemrow:last").remove();
                }
            });

            $(document).on("focus",".chargeable_weight", function(){
                var suffix = this.id.match(/\d+/)[0];
                var cvalue = ( parseFloat($("#l"+suffix).val()) * parseFloat($("#w"+suffix).val()) * parseFloat($("#h"+suffix).val()) ) / 5000;
                // console.log($("#l"+suffix).val());

                var final = Math.max((cvalue * 1000),($("#actual_weight"+suffix).val() * 1000));

                final = final / 1000;
                final = (Math.ceil(final * 2) / 2 ) * 1000;

                $("#chargeable_weight"+suffix).val(final / 1000);

                var type = $('select[name="type"]').find(":selected").val();
                var zone = $("#zone"+suffix).val();
                var weight = final / 1000;

                console.log(zone);

                $("#amontError"+suffix).hide();
                $("#amontLoading"+suffix).show();
                $.ajax({
                    url: "{{ url('admin/amount') }}",
                    data: {
                        "type" : type,
                        "zone" : zone,
                        "weight" : weight,
                    },
                    dataType: "json",
                    method: "POST",
                    success: function(response){
                        // console.log(response[0] != null);
                        $("#amontLoading"+suffix).hide();
                        if(response[0] != null){
                            console.log(Math.round(response[0].price));
                            $("#amontError"+suffix).hide();
                            $("#amount"+suffix).val(Math.round(response[0].price));
                        }else{
                            $("#amontError"+suffix).show();
                        }
                    }
                });

            });

            $("#calculate").click(function(){
                var gross = 0;

                $('.amount').each(function(index,element){
                    gross = gross + parseFloat($(element).val());
                });

                $('input[name="gross_amount"]').val(gross);
                $('input[name="fuel_surcharge_index"]').val((gross * 25) / 100);

                var fuel_surcharge_index = parseFloat($('input[name="fuel_surcharge_index"]').val());
                var custom_clearance = parseFloat($('input[name="custom_clearance"]').val());
                var oda_charges = parseFloat($('input[name="oda_charges"').val());
                var adc_noc_charges = parseFloat($('input[name="adc_noc_charges"]').val());
                var do_charges = parseFloat($('input[name="do_charges"]').val());
                var non_conveyar_charges = parseFloat($('input[name="non_conveyar_charges"]').val());
                var address_correction_charges = parseFloat($('input[name="address_correction_charges"]').val());
                var war_surcharges = parseFloat($('input[name="war_surcharges"]').val());
                var warehousing_charges = parseFloat($('input[name="warehousing_charges"]').val());
                var ad_code_registration_charges = parseFloat($('input[name="ad_code_registration_charges"]').val());
                var air_cargo_registration_charges = parseFloat($('input[name="air_cargo_registration_charges"]').val());
                var enhanced_security_charges = parseFloat($('input[name="enhanced_security_charges"]').val());
                var freight_amount = parseFloat($('input[name="freight_amount"]').val(gross));
                var duty_payment = parseFloat($('input[name="duty_payment"]').val());

                var total = gross + fuel_surcharge_index + custom_clearance + oda_charges + adc_noc_charges + do_charges + non_conveyar_charges + 
                address_correction_charges + war_surcharges + warehousing_charges + ad_code_registration_charges + air_cargo_registration_charges +
                enhanced_security_charges;

                if($('select[name="type"]').find(":selected").val() == "import"){
                    var cgst = (total * 9) / 100;
                    var sgst = (total * 9) / 100;

                    $('input[name="c_gst"]').val(cgst);
                    $('input[name="s_gst"]').val(sgst);

                    total = total + cgst + sgst;

                }else{
                    var igst = (total * 18) / 100;

                    $('input[name="i_gst"]').val(igst);

                    total = total + igst;
                }

                total = total + duty_payment;
                $('input[name="net_amount"]').val(total);
            });
        });
    </script>
@stop
