@extends('layouts.app')
@section('content')
<main id="main" class="main">
    <div class="pagetitle">
      <h1>Dashboard</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="{{ route('SCHOOL.Home') }}">Home</a></li>
          <li class="breadcrumb-item active">Staff Directory Show</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->
    <div class="dashboard" >
      <section class="section dashboard">
        <div class="row">
          <!-- left side columns -->
          <div class="col-lg-3 col-md-12 col-sm-12">
            <div class="row">
              <div class="card">
                <div class="box box-primary">
                  <div class="box-body box-profile">
                      @if(!is_null($show->staff_image))
                      <img class="profile-user-img img-responsive img-circle"
                      src="{{ url('storage/app/public/'.$show->staff_image) }}"
                      alt="Picture" style="height: 100px!important;">
                      @else
                      <img class="profile-user-img img-responsive img-circle"
                        src="{{ url('public/av.png') }}"
                        alt="User profile picture">
                        {{-- <img src="{{ url('public/av.png') }}" height="100" width="100" alt=""> --}}
                        @endif
                    <h3 class="profile-username text-center">{{ $show->firstname }} {{ $show->lastname }}</h3>

                    <ul class="list-group list-group-unbordered" style="font-size: 14px;">
                      <li class="list-group-item listnoback">
                        <b>Staff ID</b> <a class="pull-right text-aqua">{{ $show->staff_id }}</a>
                      </li>
                      <li class="list-group-item listnoback">
                        <b>Role</b> <a class="pull-right text-aqua">{{ $show->role }}</a>
                      </li>
                      <li class="list-group-item listnoback">
                        <b>Designation</b> <a class="pull-right text-aqua">{{ $show->designation }}</a>
                      </li>
                      <li class="list-group-item listnoback">
                        <b>Department</b> <a class="pull-right text-aqua">{{ $show->department }}</a>
                      </li>
                      <li class="list-group-item listnoback">
                        <b>Date Of Joining</b> <a class="pull-right text-aqua">{{ date('d-m-Y', strtotime($show->joining_date)) }}</a>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-9 col-md-12 col-sm-12">
            <div class="card">
              <div class="card-body" >
                <hr>
                <div class="activity">
                  <div class="card-box height-100-p overflow-hidden">
                    <div class="profile-tab height-100-p">
                      <div class="tab height-100-p">
                        <ul class="nav nav-tabs customtab" role="tablist">
                          <li class="nav-item">
                            <a class="nav-link active" data-toggle="tab" href="#profile" role="tab"><b>Profile</b></a>
                          </li>
                        </ul>
                        <div class="tab-content">
                          <!-- Profile Tab start -->
                          <div class="tab-pane fade show active" id="profile" role="tabpanel">
                            <div class="pd-20">
                              <div class="profile-timeline">
                                <div class="profile-timeline-list">
                                </div>
                              </div>
                            </div>
                            <div class="tab-pane active" id="activity">
                              <div class="tshadow mb25 bozero">
                                <div class="table-responsive around10 pt0">
                                  <table class="table table-hover table-striped tmb0">
                                    <tbody>
                                      <tr>
                                        <td class="col-md-4">Phone</td>
                                        <td class="col-md-5">
                                          {{ $show->phone }}</td>
                                      </tr>
                                      <tr>
                                        <td>Emergency Contact Number</td>
                                        <td>{{ $show->contact_no }}</td>
                                      </tr>
                                      <tr>
                                        <td>Email</td>
                                        <td>
                                          {{ $show->email }}
                                        </td>
                                      </tr>
                                      <tr>
                                        <td>Gender</td>
                                        <td>{{ $show->gender }}</td>
                                      </tr>
                                      <tr>
                                        <td>Date of Birth</td>
                                        <td>
                                          @if(!is_null($show->dob))
                                          {{ date('d-m-Y', strtotime($show->dob)) }}
                                          @else
                                          @endif
                                        </td>
                                      </tr>
                                      <tr>
                                        <td>Marital Status</td>
                                        <td>{{ $show->marital_status }}</td>
                                      </tr>
                                      <tr>
                                        <td>Father's Name </td>
                                        <td>{{ $show->father_name }}</td>
                                      </tr>
                                      <tr>
                                        <td>Mother's Name</td>
                                        <td>{{ $show->mother_name }} </td>
                                      </tr>
                                      <tr>
                                        <td>Qualification</td>
                                        <td>{{ $show->qualification }} </td>
                                      </tr>
                                      <tr>
                                        <td>Work Experience </td>
                                        <td>{{ $show->work_exp }}</td>
                                      </tr>
                                      <tr>
                                        <td>Note</td>
                                        <td>{{ $show->note }}</td>
                                      </tr>
                                    </tbody>
                                  </table>
                                </div>
                              </div>
                              <div class="tshadow mb25 bozero">
                                <h3 class="pagetitleh2" style="font-size: 20px;">Address </h3>
                                <div class="table-responsive around10 pt0">
                                  <table class="table table-hover table-striped tmb0">
                                    <tbody>
                                      <tr>
                                        <td class="col-md-4">Current Address</td>
                                        <td class="col-md-5">{{ $show->cadd }}</td>
                                      </tr>
                                      <tr>
                                        <td>Permanent Address</td>
                                        <td>{{ $show->padd }}</td>
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
                  <hr>
                </div>
              </div>
            </div>
          </div>

        </div>
      </section>
    </div>
  </main><!-- End #main -->
@endsection