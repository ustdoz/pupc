@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <span class="h2">Detainees</span>
                    <div class="float-right">
                        <a class="btn btn-primary" href="{{ route('detainees.create') }}">Add New</a>
                    </div>
                </div>

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
                                    <td></td>
                                    <td></td>
                                    <td>
                                        <a href="{{ route('detainees.edit', ['id' => $detainee->id]) }}">Edit</a> | <a href="#">Delete</a>
                                    </td>
                                </tr>
                            @endforeach
                        @else
                            <tr>
                                <td colspan="7"><center>No Detainees</center></td>
                            </tr>
                        @endif
                    </tbody>
                </table>

            </div>
        </div>
    </div>
</div>
@endsection
