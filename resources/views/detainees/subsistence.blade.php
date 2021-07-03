@extends('layouts.app')

@section('content')

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="row mb-4">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-8">
                                    <div class="card">
                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col-md-4 text-center">
                                                    {{-- total detained this month --}}
                                                    <div class="h3">{{ $data['detained'] }} Detained</div>
                                                    {{-- total released this month --}}
                                                    <div class="h3">{{ $data['released'] }} Released</div>
                                                </div>
                                                <div class="col-md-4 text-center">
                                                    {{-- total male this month --}}
                                                    <div class="h3">0 Male</div>
                                                    {{-- total female this month --}}
                                                    <div class="h3">0 Female</div>
                                                </div>
                                                <div class="col-md-4 text-center">
                                                    {{-- total detainees --}}
                                                    <div class="h3">{{ $data['total_detainees'] }} Total Detainees</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <form action="{{ route('detainees.index') }}" method="GET">
                                        <div class="row">
                                            <div class="col-md-4">
                                                <select class="form-control" name="filter_month">
                                                    @foreach (config('detainees.months') as $month => $month_value)
                                                        @if (request('filter_month'))
                                                            <option value="{{ $month_value }}" {{ (request('filter_month') == $month_value) ? 'SELECTED' : '' }}>{{ $month }}</option>
                                                        @else
                                                            <option value="{{ $month_value }}" {{ $month_value == \Carbon\Carbon::now()->month ? 'SELECTED' : '' }}>{{ $month }}</option>
                                                        @endif
                                                    @endforeach
                                                </select>
                                            </div>
                                            <div class="col-md-4">
                                                <select class="form-control" name="filter_year">
                                                    @foreach (config('detainees.years') as $year)
                                                        @if (request('filter_year'))
                                                            <option value="{{ $year }}" {{ (request('filter_year') == $year) ? 'SELECTED' : '' }}>{{ $year }}</option>
                                                        @else
                                                            <option value="{{ $year }}" {{ ($year == \Carbon\Carbon::now()->year) ? 'SELECTED' : '' }}>{{ $year }}</option>
                                                        @endif
                                                    @endforeach
                                                </select>
                                            </div>
                                            <div class="col-md-4 mb-4">
                                                <input type="submit" class="btn btn-info" value="Filter List">
                                            </div>
                                        </div>
                                    </form>
                                    {{-- <div class="row">
                                        <div class="col-md-12">
                                            <div class="float-right">
                                                
                                            </div>
                                        </div>
                                    </div> --}}
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row mb-4">
                <div class="col-md-12">
                    <div class="card mb-4">
                        <div class="card-header">
                            <span class="h2">Detainees</span>
                            <div class="float-right">
                                <a class="btn btn-danger" href="{{ request()->fullUrl() . '&download' }}">Download Excel</a>
                                <a class="btn btn-primary" href="{{ route('detainees.create') }}">Add New</a>
                            </div>
                        </div>
                        <ul class="nav nav-tabs" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" id="subsistence-tab" data-toggle="tab" href="#subsistence" role="tab" aria-controls="subsistence" aria-selected="true">Subsistence</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="recap-tab" data-toggle="tab" href="#recap" role="tab" aria-controls="recap" aria-selected="false">Recap</a>
                            </li>
                        </ul>
                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active" id="subsistence" role="tabpanel" aria-labelledby="subsistence-tab">
                                <table class="card-table table table-striped">
                                    <thead>
                                        <tr>
                                            <th scope="col">Last Name</th>
                                            <th scope="col">First Name</th>
                                            <th scope="col">Middle Name</th>
                                            <th scope="col">Detained Date<br>dd/mm/yyyy</th>
                                            <th scope="col">Released Date<br>dd/mm/yyyy</th>
                                            <th scope="col"># of days<br>detained</th>
                                            <th scope="col">Amount</th>
                                            <th scope="col">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @if ($detainees->count())
                                            @foreach ($detainees as $detainee)
                                                <tr>
                                                    <td>{{ $detainee->last_name }}</td>
                                                    <td>{{ $detainee->first_name }}</td>
                                                    <td>{{ $detainee->middle_name }}</td>
                                                    <td>{{ $detainee->detained_date ? $detainee->detained_date->format('d/m/Y') : null }}</td>
                                                    <td>{{ $detainee->released_date ? $detainee->released_date->format('d/m/Y') : 'DETAINED' }}</td>
                                                    <td>{{ $detainee->days_detained }}</td>
                                                    <td class="text-center">{{ number_format($detainee->total_budget) }}</td>
                                                    <td>
                                                        <a href="{{ route('detainees.edit', ['id' => $detainee->id]) }}">Edit</a> | <a href="#">Delete</a>
                                                    </td>
                                                </tr>
                                            @endforeach
                                            <tr>
                                                <td colspan="5"></td>
                                                <td class="h4"><strong>Total :</strong></td>
                                                <td colspan="2" class="h4"><strong>{{ number_format($data['total_budget']) }}</strong></td>
                                            </tr>
                                        @else
                                            <tr>
                                                <td colspan="8"><center>No Detainees</center></td>
                                            </tr>
                                        @endif
                                    </tbody>
                                </table>
                            </div>
                            <div class="tab-pane fade" id="recap" role="tabpanel" aria-labelledby="recap-tab">
                                <table class="card-table table table-striped">
                                    <thead>
                                        <tr>
                                            <th scope="col" class="text-center">Date (DD/MM/YYYY)</th>
                                            <th scope="col" class="text-center">Number of PUPC</th>
                                            <th scope="col" class="text-center">Allowance Per Day</th>
                                            <th scope="col" class="text-center">Total Per Day</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($recap as $recap_date => $recap_count)
                                            <tr>
                                                <td class="text-center">{{ $recap_date }}</td>
                                                <td class="text-center">{{ $recap_count }}</td>
                                                <td class="text-center">{{ config('detainees.allowance_amount') }}</td>
                                                <td class="text-center">{{ number_format($recap_count * config('detainees.allowance_amount')) }}</td>
                                            </tr>
                                        @endforeach
                                        <tr>
                                            <td colspan="2"></td>
                                            <td class="h4 text-right"><strong>Total :</strong></td>
                                            <td class="h4 text-center"><strong>{{ number_format($data['total_budget']) }}</strong></td>
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
