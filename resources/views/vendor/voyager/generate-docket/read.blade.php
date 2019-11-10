@extends('voyager::master')

@section('page_title', __('voyager::generic.view').' '.$dataType->getTranslatedAttribute('display_name_singular'))

@section('page_header')
    <h1 class="page-title">
        {{-- <i class="{{ $dataType->icon }}"></i> {{ __('voyager::generic.viewing') }} {{ ucfirst($dataType->getTranslatedAttribute('display_name_singular')) }} &nbsp; --}}

        {{-- @can('edit', $dataTypeContent)
            <a href="{{ route('voyager.'.$dataType->slug.'.edit', $dataTypeContent->getKey()) }}" class="btn btn-info">
                <span class="glyphicon glyphicon-pencil"></span>&nbsp;
                {{ __('voyager::generic.edit') }}
            </a>
        @endcan
        @can('delete', $dataTypeContent)
            @if($isSoftDeleted)
                <a href="{{ route('voyager.'.$dataType->slug.'.restore', $dataTypeContent->getKey()) }}" title="{{ __('voyager::generic.restore') }}" class="btn btn-default restore" data-id="{{ $dataTypeContent->getKey() }}" id="restore-{{ $dataTypeContent->getKey() }}">
                    <i class="voyager-trash"></i> <span class="hidden-xs hidden-sm">{{ __('voyager::generic.restore') }}</span>
                </a>
            @else
                <a href="javascript:;" title="{{ __('voyager::generic.delete') }}" class="btn btn-danger delete" data-id="{{ $dataTypeContent->getKey() }}" id="delete-{{ $dataTypeContent->getKey() }}">
                    <i class="voyager-trash"></i> <span class="hidden-xs hidden-sm">{{ __('voyager::generic.delete') }}</span>
                </a>
            @endif
        @endcan --}}

        <a href="{{ route('voyager.'.$dataType->slug.'.index') }}" class="btn btn-warning">
            <span class="glyphicon glyphicon-list"></span>&nbsp;
            {{ __('voyager::generic.return_to_list') }}
        </a>

        <a href="{{ url('admin/docket/invoice/'.$docket->id, []) }}" target="_blank" class="btn btn-info">Print Invoice</a>
    </h1>
    @include('voyager::multilingual.language-selector')
@stop

@section('content')
    <div class="page-content read container-fluid" id="print_view">
        <div class="row">
            <div class="col-md-12">
                <div class="panel-group" id="accordion">
                    <div class="panel panel-bordered" style="padding-bottom:5px;">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">Docket Datails</a>
                            </h4>
                        </div>
                        <div id="collapse" class="panel-collapse collapse in">
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-md-6">
                                        <h4 style="font-weight: 100">Sender Account Number</h4>
                                        <h4>{{ $docket->sender_acc_no }}</h4>
                                    </div>
                                    <div class="col-md-6">
                                        <h4 style="font-weight: 100">Consignment Number</h4>
                                        <h4>{{ $docket->consignment_id }}</h4>
                                    </div>
                                    <div class="col-md-6">
                                        <h4 style="font-weight: 100">Customer Refrence</h4>
                                        <h4>{{ $docket->customer_ref }}</h4>
                                    </div>
                                    <div class="col-md-6">
                                        <h4 style="font-weight: 100">Service</h4>
                                        <h4><span class="label label-primary">{{ $docket->service }}</span></h4>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="table-responsive">          
                                            <table class="table">
                                                <thead>
                                                    <tr>
                                                        <th>&nbsp;</th>
                                                        <th>&nbsp;</th>
                                                        <th>Weight</th>
                                                        <th>&nbsp;</th>
                                                        <th>&nbsp;</th>
                                                        <th>Dimensions</th>
                                                        <th>&nbsp;</th>
                                                        <th>&nbsp;</th>
                                                    </tr>
                                                    <tr>
                                                        <th style="width: 30%">Goods Description</th>
                                                        <th>Quantity</th>
                                                        <th>KG</th>
                                                        <th>Grams</th>
                                                        <th>L</th>
                                                        <th>W</th>
                                                        <th>H</th>
                                                        <th>Final Weight</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    @foreach ($volumns as $volumn)
                                                        <tr>
                                                            <th style="width: 30%">{{ $volumn->goods_desc }}</th>
                                                            <th>{{ $volumn->qty }}</th>
                                                            <th>{{ $volumn->kg }}</th>
                                                            <th>{{ $volumn->grams }}</th>
                                                            <th>{{ $volumn->l }}</th>
                                                            <th>{{ $volumn->w }}</th>
                                                            <th>{{ $volumn->h }}</th>
                                                            <th>
                                                                @php
                                                                    $weight = 0;
                                                                    if($volumn->kg < 20 && $volumn->grams < 500){
                                                                        $weight = $volumn->kg = $volumn->kg + 0;
                                                                    }

                                                                    if($volumn->kg > 20 && $volumn->grams > 500){
                                                                        $weight = $volumn->kg = $volumn->kg + 1;
                                                                    }

                                                                    $lenght = ($volumn->l * $volumn->w * $volumn->h)/5000 ;

                                                                @endphp
                                                                {{ max($weight,$lenght) }}
                                                            </th>
                                                        </tr>
                                                    @endforeach
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-bordered" style="padding-bottom:5px;">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">Consignment Number (From (Collection Address))</a>
                            </h4>
                        </div>
                        <div id="collapse" class="panel-collapse collapse in">
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-md-6">
                                        <h4 style="font-weight: 100">Sender Name</h4>
                                        <h4>{{ $docket->senderAddress->name }}</h4>
                                    </div>
                                    <div class="col-md-6">
                                        <h4 style="font-weight: 100">Sender Email</h4>
                                        <h4>{{ $docket->senderAddress->email }}</h4>
                                    </div>
                                    <div class="col-md-6">
                                        <h4 style="font-weight: 100">Sender Phone</h4>
                                        <h4>{{ $docket->senderAddress->phone }}</h4>
                                    </div>
                                    <div class="col-md-6">
                                        <h4 style="font-weight: 100">Sender GSTIN</h4>
                                        <h4>{{ $docket->senderAddress->gstin }}</h4>
                                    </div>
                                    <div class="col-md-6">
                                        <h4 style="font-weight: 100">Sender Address</h4>
                                        <h4>
                                            {{ $docket->senderAddress->address }}, <br>
                                            {{ $docket->senderAddress->city }}, {{ $docket->senderAddress->state }}, <br>
                                            {{ $docket->senderAddress->country }}
                                        </h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-bordered" style="padding-bottom:5px;">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapse3">Consignment Number (To (Receiver Address))</a>
                            </h4>
                        </div>
                        <div id="collapse" class="panel-collapse collapse in">
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-md-6">
                                        <h4 style="font-weight: 100">Receiver Name</h4>
                                        <h4>{{ $docket->receiverAddress->name }}</h4>
                                    </div>
                                    <div class="col-md-6">
                                        <h4 style="font-weight: 100">Receiver Email</h4>
                                        <h4>{{ $docket->receiverAddress->email }}</h4>
                                    </div>
                                    <div class="col-md-6">
                                        <h4 style="font-weight: 100">Receiver Phone</h4>
                                        <h4>{{ $docket->receiverAddress->phone }}</h4>
                                    </div>
                                    <div class="col-md-6">
                                        <h4 style="font-weight: 100">Receiver GSTIN</h4>
                                        <h4>{{ $docket->receiverAddress->gstin }}</h4>
                                    </div>
                                    <div class="col-md-6">
                                        <h4 style="font-weight: 100">Receiver Address</h4>
                                        <h4>
                                            {{ $docket->receiverAddress->address }}, <br>
                                            {{ $docket->receiverAddress->city }}, {{ $docket->receiverAddress->state }}, <br>
                                            {{ $docket->receiverAddress->country }}
                                        </h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-bordered" style="padding-bottom:5px;">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapse4">Consignment Number (Deliver Address))</a>
                            </h4>
                        </div>
                        <div id="collapse" class="panel-collapse collapse in">
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-md-6">
                                        <h4 style="font-weight: 100">Delivery Name</h4>
                                        <h4>{{ $docket->deliveryAddress->name }}</h4>
                                    </div>
                                    <div class="col-md-6">
                                        <h4 style="font-weight: 100">Delivery Email</h4>
                                        <h4>{{ $docket->deliveryAddress->email }}</h4>
                                    </div>
                                    <div class="col-md-6">
                                        <h4 style="font-weight: 100">Delivery Phone</h4>
                                        <h4>{{ $docket->deliveryAddress->phone }}</h4>
                                    </div>
                                    <div class="col-md-6">
                                        <h4 style="font-weight: 100">Delivery GSTIN</h4>
                                        <h4>{{ $docket->deliveryAddress->gstin }}</h4>
                                    </div>
                                    <div class="col-md-6">
                                        <h4 style="font-weight: 100">Delivery Address</h4>
                                        <h4>
                                            {{ $docket->deliveryAddress->address }}, <br>
                                            {{ $docket->deliveryAddress->city }}, {{ $docket->deliveryAddress->state }}, <br>
                                            {{ $docket->deliveryAddress->country }}
                                        </h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    {{-- Single delete modal --}}
    <div class="modal modal-danger fade" tabindex="-1" id="delete_modal" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="{{ __('voyager::generic.close') }}"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title"><i class="voyager-trash"></i> {{ __('voyager::generic.delete_question') }} {{ strtolower($dataType->getTranslatedAttribute('display_name_singular')) }}?</h4>
                </div>
                <div class="modal-footer">
                    <form action="{{ route('voyager.'.$dataType->slug.'.index') }}" id="delete_form" method="POST">
                        {{ method_field('DELETE') }}
                        {{ csrf_field() }}
                        <input type="submit" class="btn btn-danger pull-right delete-confirm"
                               value="{{ __('voyager::generic.delete_confirm') }} {{ strtolower($dataType->getTranslatedAttribute('display_name_singular')) }}">
                    </form>
                    <button type="button" class="btn btn-default pull-right" data-dismiss="modal">{{ __('voyager::generic.cancel') }}</button>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->
@stop

@section('javascript')
    @if ($isModelTranslatable)
        <script>
            $(document).ready(function () {
                $('.side-body').multilingual();
            });
        </script>
    @endif
    <script>
        var deleteFormAction;
        $('.delete').on('click', function (e) {
            var form = $('#delete_form')[0];

            if (!deleteFormAction) {
                // Save form action initial value
                deleteFormAction = form.action;
            }

            form.action = deleteFormAction.match(/\/[0-9]+$/)
                ? deleteFormAction.replace(/([0-9]+$)/, $(this).data('id'))
                : deleteFormAction + '/' + $(this).data('id');

            $('#delete_modal').modal('show');
        });

        $(document).ready(function(){
            $("#print_page").click(function(){
                var divToPrint = document.getElementById('print_view');
                var newWindow = window.open('','Print-Window');
                newWindow.document.open();
                newWindow.document.write('<html><link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css"><body onload="window.print()">'+divToPrint.innerHTML+'</body></html>');
                newWindow.document.close();
                setTimeout(function(){newWindow.close();},10);
            });
        });

    </script>
@stop
