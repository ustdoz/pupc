@extends('layouts.app')

@section('content')

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <span class="h2">Edit Jailer</span>
                    <div class="float-right">
                        <a class="btn btn-secondary" href="{{ route('settings.index') }}">Back</a>
                    </div>
                </div>

                <div class="card-body">
                    <form method="POST" action="{{ route('settings.update.jailer', ['id' => $jailer->id]) }}">
                        @csrf
                        
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-11">
                                    <input type="text" class="form-control" placeholder="Jailer Name" name="name" value="{{ $jailer->name }}" autocomplete="off">
                                </div>
                                <div class="col-md-1">
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection