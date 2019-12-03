@extends('voyager::master')

@section('page_title', __('voyager::generic.viewing').' '.$dataType->getTranslatedAttribute('display_name_plural'))

@section('page_header')
<div class="container-fluid">
    <h1 class="page-title">
        <i class="{{ $dataType->icon }}"></i> {{ $dataType->getTranslatedAttribute('display_name_plural') }}
    </h1>
    @if (session('status'))
        <div class="alert alert-success">
            {{ session('status') }}
        </div>
    @endif
    <form action="{{ url('admin/price/import', []) }}" method="post" enctype="multipart/form-data">
        @csrf
        <div class="form-group">
            <label for="file">Choos Excel File</label>
            <input type="file" name="file" id="file" class="form-control">
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
        <a href="{{ url('admin/download', []) }}" class="btn btn-warning">Download</a>
    </form>
</div>
@stop
