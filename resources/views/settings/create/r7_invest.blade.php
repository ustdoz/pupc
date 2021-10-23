@extends('layouts.adminlte3.app')

@section('content')

<!-- Content Header (Page header) -->
<section class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                
                <h1>Create R7 Invest</h1>

            </div>
            <div class="col-sm-6">
                <div class="float-right">
                    <a class="btn btn-secondary" href="{{ route('settings.index') }}">Back</a>
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
                        <form method="POST" action="{{ route('settings.store.r7_invest') }}">
                            @csrf
                            
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-11">
                                        <input type="text" class="form-control" placeholder="R7 Invest Name" name="name" autocomplete="off">
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
</section>
<!-- /.content -->
@endsection
