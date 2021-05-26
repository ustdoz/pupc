@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <span class="h2">Create Detainee</span>
                    <div class="float-right">
                        <a class="btn btn-secondary" href="{{ route('detainees.index') }}">Back</a>
                    </div>
                </div>

                <div class="card-body">

                    <form method="POST" action="{{ route('detainees.update', ['id' => $detainee->id]) }}">
                        @csrf
                        @method('PUT')
                        <div class="form-group">
                            <label>Name</label>
                            <div class="row">
                                <div class="col-md-4">
                                    <input type="text" class="form-control" placeholder="First Name" name="first_name" value="{{ $detainee->first_name }}" autocomplete="off">
                                </div>
                                <div class="col-md-4">
                                    <input type="text" class="form-control" placeholder="Middle Name" name="middle_name" value="{{ $detainee->middle_name }}" autocomplete="off">
                                </div>
                                <div class="col-md-4">
                                    <input type="text" class="form-control" placeholder="Last Name" name="last_name" value="{{ $detainee->last_name }}" autocomplete="off">
                                </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    
                                    <div class="col-md-4">
                                        <label>Birth Date</label>
                                        <input id="datepicker_birth_date" type="text" name="birth_date" value="{{ $detainee->birth_date ? $detainee->birth_date->format('m/d/Y') : null }}" autocomplete="off">
                                    </div>

                                    <div class="col-md-4">
                                        <label>Detained Date</label>
                                        <input id="datepicker_detained_date" type="text" name="detained_date" value="{{ $detainee->detained_date ? $detainee->detained_date->format('m/d/Y') : null }}" autocomplete="off">
                                    </div>

                                    <div class="col-md-4">
                                        <label>Release Date</label>
                                        <input id="datepicker_released_date" type="text" name="released_date" value="{{ $detainee->released_date ? $detainee->released_date->format('m/d/Y') : null }}" autocomplete="off">
                                    </div>

                                </div>
    
                            </div>
                        <div class="float-right">
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </div>
                    </form>


                </div>

            </div>
        </div>
    </div>
</div>

@endsection

@section('scripts')
    <script>
        $('#datepicker_birth_date').datepicker({uiLibrary: 'bootstrap4'});
        $('#datepicker_detained_date').datepicker({uiLibrary: 'bootstrap4'});
        $('#datepicker_released_date').datepicker({uiLibrary: 'bootstrap4'});
    </script>
@endsection