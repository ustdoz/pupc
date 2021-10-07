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

                    <form method="POST" action="{{ route('detainees.store') }}">
                        @csrf
                        
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-4">
                                        <label>First Name</label>
                                        <input type="text" class="form-control" placeholder="First Name" name="first_name" autocomplete="off">
                                    </div>
                                    <div class="col-md-4">
                                        <label>Middle Name</label>
                                        <input type="text" class="form-control" placeholder="Middle Name" name="middle_name" autocomplete="off">
                                    </div>
                                    <div class="col-md-4">
                                        <label>Last Name</label>
                                        <input type="text" class="form-control" placeholder="Last Name" name="last_name" autocomplete="off">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-12">
                                        <label>Law Violated</label>
                                        <textarea class="form-control" name="violation" rows="2"></textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>Gender</label>
                                            <select class="form-control">
                                                <option value="male">Male</option>
                                                <option value="female">Female</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>Birth Date</label>
                                            <input id="datepicker_birth_date" type="text" name="birth_date" autocomplete="off">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            
                                            <label>Detained Date</label>
                                            <input id="datepicker_detained_date" type="text" name="detained_date" autocomplete="off">
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="card">
                                            <div class="card-header">
                                                <strong>Discharge Detainee</strong>
                                            </div>
                                            <div class="card-body">
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <label>Blotter Entry Number</label>
                                                        <input type="text" class="form-control" placeholder="Blotter Entry Number" name="last_name" autocomplete="off">
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label>Personnel in charge</label>
                                                            <select class="form-control">
                                                                <option value="0">--- SELECT PERSONNEL ---</option>
                                                                <option value="1">PSSg Hernane V Quintana</option>
                                                                <option value="2">PSMs Jober Manaig</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label>Court Release Date</label>
                                                            <input id="datepicker_released_date_court" type="text" name="released_date_court" autocomplete="off">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label>e-Rogue Release Date</label>
                                                            <input id="datepicker_released_date_erogue" type="text" name="released_date_erogue" autocomplete="off">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label>Release Date</label>
                                                            <input id="datepicker_released_date" type="text" name="released_date" autocomplete="off">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-12">
                                                        <label>Remarks / Reason of Release</label>
                                                        <textarea class="form-control" name="violation" rows="2"></textarea>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
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
        $('#datepicker_released_date_court').datepicker({uiLibrary: 'bootstrap4'});
        $('#datepicker_released_date_erogue').datepicker({uiLibrary: 'bootstrap4'});
    </script>
@endsection