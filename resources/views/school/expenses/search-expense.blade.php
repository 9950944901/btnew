@extends('layouts.app')
@section('content')
<main id="main" class="main">

    <div class="pagetitle">
      <h1>Dashboard</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="{{ route('SCHOOL.Home') }}">Home</a></li>
          <li class="breadcrumb-item active">Search Expense</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <div class="dashboard" >
      <section class="section dashboard">
        <div class="row">
          <!-- Left side columns -->
          <div class="col-lg-12 col-md-12 col-sm-12">
            <div class="row">
              <div class="card info-card sales-card py-4">
                <form action="" method="">
                  @csrf
                <div class="row">
                  <div class="col-lg-6 col-md-6 sol-sm-12">
                    <h6 class="p-2 pt-3" style="font-size: 14px;">Search Type</h6>
                    <div class="">
                      <select name="filter" class="form-control neha-text"  required="">
                        <option value="">Select filter</option>
                        <option value="all">All</option>
                        <option value="today">Today</option>
                        <option value="week">This Week</option>
                        <option value="month">This Month</option>
                      </select>
                    </div>
                  </div>
                  <div class="col-lg-6 col-md-6 sol-sm-12">
                      <div class="pt-4 mt-4">
                        <button type="submit" class="btn btn-sm btn-info"><i class="fa fa-search"></i> Search</button>
                      </div>
                    </div>
                  </div>
               </form>
              </div>

              <div class="p-3">
                <h5>Expense Result</h5>
               </div>

              <table id="example1" class="table table-bordered table-striped">
                <thead>
                  <tr class="" style="font-size: 13px; color: #012970; ">
                    <th>S No.</th>
                    <th>Name</th>
                    <th>Invoice No.</th>
                    <th>Expense Head</th>
                    <th>Date</th>
                    <th>Amount</th>
                  </tr>
                </thead>

                <tbody>
                  @foreach ($search_expese as $item)
                      
                  <tr id="task-1" class="task-list-row test-font" data-task-id="1" data-user="Platinum">
                    <td>{{$loop->iteration}}</td>
                    <td>{{$item->name}}</td>
                    <td>{{$item->invoice_no}}</td>
                    <td>{{ date('d-m-Y', strtotime($item->date)) }}</td>
                    <td>{{$item->expense_head}}</td>
                    <td>₹{{$item->amount}}</td>
                  </tr>
                  @endforeach
                </tbody>
              </table>

            </div>
      </section>
    </div>

  </main><!-- End #main -->
@endsection