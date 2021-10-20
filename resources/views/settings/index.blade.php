@extends('layouts.adminlte3.app')

@section('content')

<!-- Content Header (Page header) -->
<section class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1>Detainees Setting</h1>
            </div>
            <div class="col-sm-6">
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
                    <ul class="nav nav-tabs mt-1 mb-3" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" id="chief_police-tab" data-toggle="tab" href="#chief_police" role="tab" aria-controls="chief_police" aria-selected="true">Chief of Police ({{ $chief_police->count() }})</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="chief_invest-tab" data-toggle="tab" href="#chief_invest" role="tab" aria-controls="chief_invest" aria-selected="false">Chief Invest ({{ $chief_invest->count() }})</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="r7_invest-tab" data-toggle="tab" href="#r7_invest" role="tab" aria-controls="r7_invest" aria-selected="false">R7 Invest ({{ $r7_invest->count() }})</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="jailers-tab" data-toggle="tab" href="#jailers" role="tab" aria-controls="jailers" aria-selected="false">Jailers ({{ $jailers->count() }})</a>
                        </li>
                    </ul>
                    <div class="tab-content" id="detainees_setting_content">
                        <div class="tab-pane fade show active" id="chief_police" role="tabpanel" aria-labelledby="chief_police-tab">
                            <table class="card-table table table-striped table-bordered">
                                <thead>
                                    <tr>
                                        <th scope="col" style="width:150px;">ID</th>
                                        <th scope="col">Name</th>
                                        <th scope="col" style="width:200px;" class="text-center"><a href="{{ route('settings.create.chief_police') }}" class="btn btn-primary">Add New</a></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @if ($chief_police->count())
                                        @foreach ($chief_police as $chiefpolice)
                                            <tr>
                                                <td>{{ $chiefpolice->id }}</td>
                                                <td>{{ $chiefpolice->name }}</td>
                                                <td class="text-center"><a href="{{ route('settings.edit.chief_police', ['id' => $chiefpolice->id]) }}">Edit</a></td>
                                            </tr>
                                        @endforeach
                                    @else
                                        <tr>
                                            <td colspan="3" class="text-center">No record(s) found</td>
                                        </tr>
                                    @endif
                                </tbody>
                            </table>
                        </div>
                        <div class="tab-pane fade show" id="chief_invest" role="tabpanel" aria-labelledby="chief_invest-tab">
                            <table class="card-table table table-striped table-bordered">
                                <thead>
                                    <tr>
                                        <th scope="col" style="width:150px;">ID</th>
                                        <th scope="col">Name</th>
                                        <th scope="col" style="width:200px;" class="text-center"><a href="{{ route('settings.create.chief_invest') }}" class="btn btn-primary">Add New</a></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @if ($chief_invest->count())
                                        @foreach ($chief_invest as $chiefinvest)
                                            <tr>
                                                <td>{{ $chiefinvest->id }}</td>
                                                <td>{{ $chiefinvest->name }}</td>
                                                <td class="text-center"><a href="{{ route('settings.edit.chief_invest', ['id' => $chiefinvest->id]) }}">Edit</a></td>
                                            </tr>
                                        @endforeach
                                    @else
                                        <tr>
                                            <td colspan="3" class="text-center">No record(s) found</td>
                                        </tr>
                                    @endif
                                </tbody>
                            </table>
                        </div>
                        <div class="tab-pane fade show" id="r7_invest" role="tabpanel" aria-labelledby="r7_invest-tab">
                            <table class="card-table table table-striped table-bordered">
                                <thead>
                                    <tr>
                                        <th scope="col" style="width:150px;">ID</th>
                                        <th scope="col">Name</th>
                                        <th scope="col" style="width:200px;" class="text-center"><a href="{{ route('settings.create.r7_invest') }}" class="btn btn-primary">Add New</a></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @if ($r7_invest->count())
                                        @foreach ($r7_invest as $r7invest)
                                            <tr>
                                                <td>{{ $r7invest->id }}</td>
                                                <td>{{ $r7invest->name }}</td>
                                                <td class="text-center"><a href="{{ route('settings.edit.r7_invest', ['id' => $r7invest->id]) }}">Edit</a></td>
                                            </tr>
                                        @endforeach
                                    @else
                                        <tr>
                                            <td colspan="3" class="text-center">No record(s) found</td>
                                        </tr>
                                    @endif
                                </tbody>
                            </table>
                        </div>
                        <div class="tab-pane fade show" id="jailers" role="tabpanel" aria-labelledby="jailers-tab">
                            <table class="card-table table table-striped table-bordered">
                                <thead>
                                    <tr>
                                        <th scope="col" style="width:150px;">ID</th>
                                        <th scope="col">Name</th>
                                        <th scope="col" style="width:200px;" class="text-center"><a href="{{ route('settings.create.jailer') }}" class="btn btn-primary">Add New</a></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @if ($jailers->count())
                                        @foreach ($jailers as $jailer)
                                            <tr>
                                                <td>{{ $jailer->id }}</td>
                                                <td>{{ $jailer->name }}</td>
                                                <td class="text-center"><a href="{{ route('settings.edit.jailer', ['id' => $jailer->id]) }}">Edit</a></td>
                                            </tr>
                                        @endforeach
                                    @else
                                        <tr>
                                            <td colspan="3" class="text-center">No record(s) found</td>
                                        </tr>
                                    @endif
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- /.content -->
@endsection
