@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        {{-- <div class="col-md-12 mb-4">
            <div class="card">
                <div class="card-header">
                    <span class="h2">Settings</span>
                    <div class="float-right">
                        <a class="btn btn-primary" href="{{ route('detainees.create') }}">Add New</a>
                    </div>
                </div>
            </div>
        </div> --}}

        <div class="col-md-12">
            <div class="row mb-4">
                <div class="col-md-12">
                    <div class="card mb-4">
                        <div class="card-header">
                            <span class="h2">Detainees Setting</span>
                            {{-- <div class="float-right">
                                <a class="btn btn-danger" href="{{ request()->fullUrlWithQuery(['download' => true]) }}">Download Excel</a>
                                <a class="btn btn-primary" href="{{ route('detainees.create') }}">Add New</a>
                            </div> --}}
                        </div>
                        <ul class="nav nav-tabs" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" id="chief_police-tab" data-toggle="tab" href="#chief_police" role="tab" aria-controls="chief_police" aria-selected="true">Chief of Police</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="chief_invest-tab" data-toggle="tab" href="#chief_invest" role="tab" aria-controls="chief_invest" aria-selected="false">Chief Invest</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="r7_invest-tab" data-toggle="tab" href="#r7_invest" role="tab" aria-controls="r7_invest" aria-selected="false">R7 Invest</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="jailers-tab" data-toggle="tab" href="#jailers" role="tab" aria-controls="jailers" aria-selected="false">Jailers</a>
                            </li>
                        </ul>
                        <div class="tab-content" id="detainees_setting_content">
                            <div class="tab-pane fade show active" id="chief_police" role="tabpanel" aria-labelledby="chief_police-tab">
                                <table class="card-table table table-striped table-bordered">
                                    <thead>
                                        <tr>
                                            <th scope="col" style="width:150px;">ID</th>
                                            <th scope="col">Name</th>
                                            <th scope="col" style="width:200px;" class="text-center">Add New</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>Sample</td>
                                            <td>Sample</td>
                                            <td class="text-center">Sample</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="tab-pane fade show" id="chief_invest" role="tabpanel" aria-labelledby="chief_invest-tab">
                                <table class="card-table table table-striped table-bordered">
                                    <thead>
                                        <tr>
                                            <th scope="col" style="width:150px;">ID</th>
                                            <th scope="col">Name</th>
                                            <th scope="col" style="width:200px;" class="text-center">Add New</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>Sample</td>
                                            <td>Sample</td>
                                            <td class="text-center">Sample</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="tab-pane fade show" id="r7_invest" role="tabpanel" aria-labelledby="r7_invest-tab">
                                <table class="card-table table table-striped table-bordered">
                                    <thead>
                                        <tr>
                                            <th scope="col" style="width:150px;">ID</th>
                                            <th scope="col">Name</th>
                                            <th scope="col" style="width:200px;" class="text-center">Add New</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>Sample</td>
                                            <td>Sample</td>
                                            <td class="text-center">Sample</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="tab-pane fade show" id="jailers" role="tabpanel" aria-labelledby="jailers-tab">
                                <table class="card-table table table-striped table-bordered">
                                    <thead>
                                        <tr>
                                            <th scope="col" style="width:150px;">ID</th>
                                            <th scope="col">Name</th>
                                            <th scope="col" style="width:200px;" class="text-center">Add New</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>Sample</td>
                                            <td>Sample</td>
                                            <td class="text-center">Sample</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>
@endsection
