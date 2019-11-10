@extends('voyager::master')

@section('css')
<meta name="csrf-token" content="{{ csrf_token() }}">
@stop

@section('page_title', 'Madni International | Import List')

@section('page_header')
<h1 class="page-title">
    <i class="voyager-list-add"></i> Import Price List
</h1>
{{-- @include('voyager::multilingual.language-selector') --}}
@stop

@section('content')
<div class="page-content container-fluid">
    <form action="/admin/price/import" method="post">
        <button type="submit" class="btn btn-primary">Update</button>
        @csrf
        <div class="panel panel-bordered">
            <div class="panel-heading">
                <h4 class="panel-title">
                    Documents upto 2kg
                </h4>
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-xs-2 col-md-offset-1">
                        <strong class="text-primary">Weight</strong>
                    </div>
                    @for ($i = 0; $i < 9; $i++)
                        <div class="col-xs-1">
                            <strong class="text-primary">Zone{{ $i+1 }}</strong>
                        </div>
                    @endfor
                </div>

                @php $count = 0 @endphp

                @for ($i = 1; $i <= 4; $i++)
                    <div class="row">
                        <div class="col-xs-2 col-md-offset-1">
                            <strong>{{ ($i/2)+0.5 }}</strong>
                        </div>
                        @for ($j = 1; $j <= 9; $j++)
                        @php $count++ @endphp
                            <div class="col-xs-1">
                                <div class="form-group">
                                    <input type="text" class="form-control" name="import-du2-{{ $count }}" value="{{ $duPrices[$count-1]->value }}">
                                </div>
                            </div>
                        @endfor
                    </div>
                @endfor
            </div>
        </div>
        <div class="panel panel-bordered">
            <div class="panel-heading">
                <h4 class="panel-title">
                    Non - DOC upto 20kg
                </h4>
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-xs-2 col-md-offset-1">
                        <strong class="text-primary">Weight</strong>
                    </div>
                    @for ($i = 0; $i < 9; $i++)
                        <div class="col-xs-1">
                            <strong class="text-primary">Zone{{ $i+1 }}</strong>
                        </div>
                    @endfor
                </div>
                @php $count = 0 @endphp
                @for ($i = 0; $i < 46; $i++)
                    <div class="row">
                        <div class="col-xs-2 col-md-offset-1">
                            <strong>
                                @if ($i >= 40)
                                    @if ($i == 40)
                                        >20 to 30
                                    @elseif($i == 41)
                                        >30 to 50
                                    @elseif($i == 42)
                                        >50 to 75
                                    @elseif($i == 43)
                                        >75 to 100
                                    @elseif($i == 44)
                                        >100 to 300
                                    @elseif($i == 45)
                                        >300 t0 500
                                    @endif
                                @else
                                    {{ ($i/2)+0.5 }}
                                @endif
                            </strong>

                        </div>
                        @for ($j = 0; $j < 9; $j++)
                        @php $count++ @endphp
                            <div class="col-xs-1">
                                <div class="form-group">
                                    <input type="text" class="form-control" name="import-nd2-{{$count}}" id="" value="{{ $ndPrices[$count-1]->value }}">
                                </div>
                            </div>
                        @endfor
                    </div>
                @endfor
            </div>
        </div>
        <div class="panel panel-bordered">
            <div class="panel-heading">
                <h4 class="panel-title">
                    Economy Price-List Import
                </h4>
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-xs-2 col-md-offset-1">
                        <strong class="text-primary">Weight</strong>
                    </div>
                    @for ($i = 0; $i < 9; $i++)
                        <div class="col-xs-1">
                            <strong class="text-primary">Zone{{ $i+1 }}</strong>
                        </div>
                    @endfor
                </div>
                @php $count = 0 @endphp
                @for ($i = 0; $i < 5; $i++)
                    <div class="row">
                        <div class="col-xs-2 col-md-offset-1">
                            <strong>
                                @if ($i == 0)
                                    >10 to 20 Kg
                                @elseif($i == 1)
                                    >2o to 50kg
                                @elseif($i == 2)
                                    >50 to 100kg
                                @elseif($i == 3)
                                    >100 to 300kg
                                @elseif($i == 4)
                                    >300 to 500kg
                                @endif
                            </strong>
                        </div>
                        @for ($j = 0; $j < 9; $j++)
                        @php $count++ @endphp
                            <div class="col-xs-1">
                                <div class="form-group">
                                    <input type="text" class="form-control" name="import-ep2-{{$count}}" id="" value="{{ $epPrices[$count-1]->value }}">
                                </div>
                            </div>
                        @endfor
                    </div>
                @endfor
            </div>
        </div>
    </form>
</div>
@stop