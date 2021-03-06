@extends('layouts.adminlte3.app')

@section('content')

<!-- Content Header (Page header) -->
<section class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                
                <h1>Create Detainee</h1>

            </div>
            <div class="col-sm-6">
                <div class="float-right">
                    <a class="btn btn-secondary" href="{{ route('detainees.index', request()->query()) }}">Back</a>
                </div>
                {{-- <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                    <li class="breadcrumb-item"><a href="#">Layout</a></li>
                    <li class="breadcrumb-item active">Fixed Navbar Layout</li>
                </ol> --}}
            </div>
        </div>
    </div><!-- /.container-fluid -->
</section>

<!-- Main content -->
<section class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <div class="card mb-4">
                    <div class="card-body">
                        <form method="POST" action="{{ route('detainees.store', request()->query()) }}">
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
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Gender</label>
                                                <select class="form-control" name="gender">
                                                    <option value="male">Male</option>
                                                    <option value="female">Female</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Birth Date</label>
                                                <input id="datepicker_birth_date" type="text" name="birth_date" autocomplete="off">
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                
                                                <label>Detained Date</label>
                                                <input id="datepicker_detained_date" type="text" name="detained_date" autocomplete="off">
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                
                                                <label>Commitment Date</label>
                                                <input id="datepicker_commitment_date" type="text" name="commitment_date" autocomplete="off">
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
                                                            <input type="text" class="form-control" placeholder="Blotter Entry Number" name="released_blotter_number" autocomplete="off">
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label>Personnel in charge</label>
                                                                <select class="form-control" name="jailer_id">
                                                                    <option value="0">--- SELECT PERSONNEL ---</option>
                                                                    @foreach ($jailers as $jailer)
                                                                        <option value="{{ $jailer->id }}">{{ $jailer->name }}</option>
                                                                    @endforeach
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
                                                            <textarea class="form-control" name="remarks" rows="2"></textarea>
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
</section>
<!-- /.content -->
@endsection


@section('scripts')
    <script>
        $('#datepicker_birth_date').datepicker({uiLibrary: 'bootstrap4'});
        $('#datepicker_detained_date').datepicker({uiLibrary: 'bootstrap4'});
        $('#datepicker_commitment_date').datepicker({uiLibrary: 'bootstrap4'});
        $('#datepicker_released_date').datepicker({uiLibrary: 'bootstrap4'});
        $('#datepicker_released_date_court').datepicker({uiLibrary: 'bootstrap4'});
        $('#datepicker_released_date_erogue').datepicker({uiLibrary: 'bootstrap4'});
    </script>
@endsection