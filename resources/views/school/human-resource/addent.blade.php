@extends('layouts.app')
@section('content')
<main id="main" class="main">

    <div class="pagetitle">
      <h1>Dashboard</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="{{ route('SCHOOL.Home') }}">Home</a></li>
          <li class="breadcrumb-item active">Staff Attendance</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <div class="dashboard ">
      <form action="{{ route('Staff.Attend') }}" method="post">
        @csrf
      <section class="section dashboard">
        <h5 class="mt-3" style="font-size: 17px;">Staff</h5>
        
        <div class="row">
          <div class="col-lg-3 col-md-3 col-sm-3">
            <input type="date" name="date" class="form-control my-3" value="{{ date('Y-m-d') }}">
          </div>
          <div class="col-lg-12 col-md-12 col-sm-12">
            
              <table class="table table-bordered table-striped">
                <thead>
                  <tr class="" style="font-size: 13px; color: #012970; ">
                    <th>Staff Id</th>
                    <th>Name</th>
                    <th>Attendance</th>
                  </tr>
                </thead>

                <tbody>
                  @foreach ($show as $value)
                  <tr id="task-1" class="task-list-row test-font" data-task-id="1" data-user="Platinum">
                    <td>{{ $value->staff_id }}</td>
                    <input type="hidden" name="staff_id[]" value="{{ $value->staff_id }}">
                    <input type="hidden" name="id[]" value="{{ $value->id }}">
                    <td>{{ $value->firstname }} {{ $value->lastname }}</td>
                    <td>
                      <input type="radio" name="attendance[{{$value->id}}]" required value="Present" > <label>Present</label> &nbsp;
                      <input type="radio" name="attendance[{{$value->id}}]" required value="Late" > <label>Late</label> &nbsp;
                      <input type="radio" name="attendance[{{$value->id}}]" required value="Absent" > <label>Absent</label> &nbsp;
                      <input type="radio" name="attendance[{{$value->id}}]" required value="Half Day" > <label>Half Day</label> &nbsp;
                    </td>
                  </tr>
                  @endforeach

                </tbody>
              </table>  
              <div class="text-right mb-2">
                
              <button type="submit" class="btn btn-primary px-5">Save</button>
            </div>
         
          </div>
        </div>
      </section>
    </form>
    </div>

  </main><!-- End #main -->

@endsection