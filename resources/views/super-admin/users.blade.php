@extends('super-admin.layouts')
@section('content')
<style>
    table, th, td {
      border:1px solid rgb(170, 168, 168);
      border-collapse: collapse;
      font-size: 14px;
    }
    </style>
<main id="main" class="main">
    <div class="pagetitle">
        <h1>User List</h1>
        @if ($message = Session::get('success'))
        <div class="alert alert-success alert-block">
            <strong>{{ $message }}</strong>
        </div>
        @endif
        @if ($message = Session::get('error'))
        <div class="alert alert-danger alert-block">
            <strong>{{ $message }}</strong>
        </div>
        @endif
    </div><!-- End Page Title -->
    <section class="section dashboard">
        <div class="row">
            <!-- Left side columns -->
            <div class="col-lg-12">
                <div class="row">
                    <table style="width:100%">
                        <tr>
                          <th>S.No.</th>
                          <th>School ID</th>
                          <th>School Name</th>
                          <th>Contact Person</th>
                          <th>Mobile No.</th>
                          <th>Email</th>
                          <th>Address</th>
                          <th>Plan Type</th>
                          <th>Validity</th>
                          <th>Action</th>
                        </tr>
                        @foreach($data as $key => $value)
                        <tr>
                            <td>{{ $loop->iteration }}.</td>
                            <td>{{ $value->rand_id }}</td>
                            <td style="width: 15%;">{{ $value->school_name }}</td>
                            <td>{{ $value->name }}</td>
                            <td>{{ $value->phone }}</td>
                            <td>{{ $value->email }}</td>
                            <td style="width: 15%;">{{ $value->add }}</td>
                            <td>@if($value->plan_type == "365")
                                1 Year
                                @elseif($value->plan_type == "730")
                                2 Years
                                @else
                                @endif
                            </td>
                            <td>{{ date('d-m-Y', strtotime($value->end_date)) }}</td>
                            <td>
                                <div>
                                    <a href="{{ route('Super.edit.User',['id'=>$value->id]) }}" class="btn btn-primary py-0 px-1"><i class="bi bi-pencil"></i></a>
                                    <a href="{{ route('Super.Delete.User',['id'=>$value->id]) }}" class="btn btn-danger py-0 px-1" onclick="return confirm('Are you sure you want to delete this User?');"><i class="bi bi-trash"></i></a>
                                </div>
                            </td>
                        </tr>
                        @endforeach
                    </table>
                </div>
            </div>
        </div>
        </div>
        </div>
    </section>
</main><!-- End #main -->
@endsection