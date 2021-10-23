<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>{{ config('app.name', 'Laravel') }}</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="{{ asset("css/adminlte3-fonts.css") }}">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="{{ asset("bower_components/admin-lte/plugins/fontawesome-free/css/all.min.css") }}">
  <!-- Theme style -->
  <link rel="stylesheet" href="{{ asset("bower_components/admin-lte/dist/css/adminlte.min.css") }}">
  <link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css" >
</head>
<body class="hold-transition sidebar-mini layout-navbar-fixed">
<!-- Site wrapper -->
<div class="wrapper">
    @include('layouts.adminlte3.nav-bar')
    @include('layouts.adminlte3.side-bar')

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        @if (Session::has('alert_message'))
            <div class="alert {{ Session::get('alert_class', 'alert-info') }}" role="alert">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 text-center">
                            <strong>
                                {{ Session::get('alert_message') }}
                            </strong>
                        </div>
                    </div>
                </div>
            </div>
        @endif

        @yield('content')
    </div>
    <!-- /.content-wrapper -->

    {{-- <footer class="main-footer">
        <div class="float-right d-none d-sm-block">
            <b>Version</b> 3.1.0
        </div>
        <strong class="d-none">Copyright &copy; 2014-2021 <a href="https://adminlte.io">AdminLTE.io</a>.</strong> All rights reserved.
    </footer> --}}

    <!-- Control Sidebar -->
    <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
    </aside>
    <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<script src="{{ asset("bower_components/admin-lte/plugins/jquery/jquery.min.js") }}"></script>
<script src="{{ asset("bower_components/admin-lte/plugins/bootstrap/js/bootstrap.bundle.min.js") }}"></script>
<script src="{{ asset("bower_components/admin-lte/dist/js/adminlte.min.js") }}"></script>

<script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js"></script>
{{-- 
<!-- AdminLTE for demo purposes -->
<script src="{{ asset("bower_components/admin-lte/dist/js/demo.js") }}"></script> 
--}}


@yield('scripts')

</body>
</html>