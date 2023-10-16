@extends('layouts.app')
@section('content')
<main id="main" class="main">

    <div class="pagetitle">
      <h1>Dashboard</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="{{ route('SCHOOL.Home') }}">Home</a></li>
          <li class="breadcrumb-item active">Search Fees Payments</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <div class="dashboard">
      <section class="section dashboard">
        <div class="row">
          <!-- Left side columns -->
          <div class="col-lg-12 col-md-12 col-sm-12">
            <div class="row">
              <div class="p-3">
                <h5>Payment Id Detail</h5>
              </div>

              <table id="example1" class="table table-bordered table-striped">
                <thead>
                  <tr class="" style="font-size: 13px; color: #012970; ">
                    <th>S No.</th>
                    <th>Payment Id</th>
                    <th>Session</th>
                    <th>Date</th>
                    <th>Name</th>
                    <th>Class</th>
                    <th>Section</th>
                    <th>Mode</th>
                    <th>Amount</th>
                  </tr>
                </thead>

                <tbody>
                  @foreach ($data as $value)

                  <tr id="task-1" class="task-list-row test-font" data-task-id="1" data-user="Platinum">
                    <td>{{ $loop->iteration }}</td>
                    <td>00{{ $value->id }}</td>
                    <td>{{ $value->session }}</td>
                    <td>{{ date('d-m-Y', strtotime($value->created_at)); }}</td>
                    <td>{{ $value->first_name }} {{ $value->last_name }}</td>
                    <td>{{ $value->class }}</td>
                    <td>{{ $value->section }}</td>
                    <td>{{ $value->payment_mode }}</td>
                    <td>₹{{ $value->total }}</td>
                    {{-- <td>-</td> --}}
                    {{-- <td>-</td> --}}
                    {{-- <td>
                      <div class="d-flex">
                        <a href="button" class="btn btn-light ml-1"><i class="fa fa-check"></i></a>
                        <a href="button" class="btn btn-light ml-1"><i class="fa fa-times"></i></a>
                        <a href="button" class="btn btn-light ml-1"><i class="fa fa-trash"></i></a>
                      </div>
                    </td> --}}
                  </tr>
                  @endforeach

                </tbody>
              </table>

            </div>
      </section>
    </div>

  </main><!-- End #main -->
@endsection