@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <span class="h2">Create Detainee</span>
                    <div class="float-right">
                        <a class="btn btn-secondary" href="{{ route('detainees') }}">Back</a>
                    </div>
                </div>

                <div class="card-body">

                    <form>
                        <div class="form-group">
                            <label>Name</label>
                            <div class="row">
                                <div class="col-md-4">
                                    <input type="text" class="form-control" placeholder="First Name">
                                </div>
                                <div class="col-md-4">
                                    <input type="text" class="form-control" placeholder="Middle Name">
                                </div>
                                <div class="col-md-4">
                                    <input type="text" class="form-control" placeholder="Last Name">
                                </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    
                                    <div class="col-md-4">
                                        <label>Birth Date</label>
                                        <input id="datepicker_birth_date" type="text">
                                    </div>

                                    <div class="col-md-4">
                                        <label>Detained Date</label>
                                        <input id="datepicker_detained_date" type="text">
                                    </div>

                                    <div class="col-md-4">
                                        <label>Release Date</label>
                                        <input id="datepicker_released_date" type="text">
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