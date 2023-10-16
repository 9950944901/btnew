@extends('layouts.app')
@section('content')
<main id="main" class="main">

    <div class="pagetitle">
      <h1>Dashboard</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="{{ route('SCHOOL.Home') }}">Home</a></li>
          <li class="breadcrumb-item active">Student Details Show</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <div class="dashboard">
      <section class="section dashboard">
        <div class="row">
          <div class="col-lg-3">
            <div class="row">
              <div class="card">

                <div class="box box-primary">
                  <div class="box-body box-profile">
                    @if(!is_null($show->student_image))
                    <img class="profile-user-img img-responsive img-circle"
                    src="{{ url('storage/app/public/'.$show->student_image) }}"
                    alt="Picture" style="height: 100px!important;">
                    @else
                    <img class="profile-user-img img-responsive img-circle"
                      src="{{ url('public/av.png') }}"
                      alt="User profile picture">
                      {{-- <img src="{{ url('public/av.png') }}" height="100" width="100" alt=""> --}}
                      @endif
                    <h3 class="profile-username text-center">{{ $show->first_name }} {{ $show->last_name }}</h3>

                    <ul class="list-group list-group-unbordered" style="font-size: 14px;">
                      <li class="list-group-item listnoback">
                        <b>Admission No</b> <a class="pull-right text-aqua">{{ $show->admission_no }}</a>
                      </li>

                      <li class="list-group-item listnoback">
                        <b>Roll Number</b> <a class="pull-right text-aqua">{{ $show->roll_no }}</a>
                      </li>
                      <li class="list-group-item listnoback">
                        <b>Class</b> <a class="pull-right text-aqua">{{ $show->class }}</a>
                      </li>
                      <li class="list-group-item listnoback">
                        <b>Section</b> <a class="pull-right text-aqua">{{ $show->section }}</a>
                      </li>
                      {{-- <li class="list-group-item listnoback">
                        <b>RTE</b> <a class="pull-right text-aqua">{{ $show->rte }}</a>
                      </li> --}}
                      <li class="list-group-item listnoback">
                        <b>Gender</b> <a class="pull-right text-aqua">{{ $show->gender }}</a>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-9">
            <div class="card">
              <div class="card-body" style="padding: 0 20px 0px 20px;">
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
                                        <td class="col-md-4">Admission Date</td>
                                        <td class="col-md-5">
                                          {{ date('d-m-Y', strtotime($show->admission_date)) }}</td>
                                      </tr>
                                      <tr>
                                        <td>Date of Birth</td>
                                        <td>{{ date('d-m-Y', strtotime($show->dob)) }}</td>
                                      </tr>
                                      <tr>
                                        <td>Category</td>
                                        <td>{{ $show->category }}</td>
                                      </tr>
                                      <tr>
                                        <td>Mobile Number</td>
                                        <td>{{ $show->mobile_no }}</td>
                                      </tr>
                                      <tr>
                                        <td>Caste</td>
                                        <td>{{ $show->caste }}</td>
                                      </tr>
                                      <tr>
                                        <td>Religion</td>
                                        <td>{{ $show->religion }}</td>
                                      </tr>
                                      <tr>
                                        <td>Email</td>
                                        <td>{{ $show->email }}</td>
                                      </tr>
                                      <tr>
                                        </td>
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
                                        <td class="col-md-5">{{ $show->stu_house }}</td>
                                      </tr>
                                    </tbody>
                                  </table>
                                </div>
                              </div>
                              <div class="tshadow mb25 bozero">
                                <h3 class="pagetitleh2" style="font-size: 20px;">Parent / Guardian Details </h3>
                                <div class="table-responsive around10 pt10">
                                  <table class="table table-hover table-striped tmb0">
                                    <tbody>
                                      <tr>
                                        <td class="col-md-4">Father's Name</td>
                                        <td class="col-md-5">{{ $show->father_name }}</td>
                                      </tr>
                                      <tr>
                                        <td>Father's Phone</td>
                                        <td>{{ $show->father_mobile }}</td>
                                      </tr>
                                      <tr>
                                        <td>Father's Occupation</td>
                                        <td>{{ $show->father_accu }}</td>
                                      </tr>
                                      <tr>
                                        <td>Mother's Name</td>
                                        <td>{{ $show->mother_name }}</td>
                                      </tr>
                                      <tr>
                                        <td>Mother's Phone</td>
                                        <td>{{ $show->mother_phone }}</td>

                                      </tr>
                                      <tr>
                                        <td>Mother's Occupation</td>
                                        <td>{{ $show->mother_occu }}</td>
                                      </tr>
                                      <tr>
                                        <td>Guardian's Name</td>
                                        <td>{{ $show->gur_name }}</td>
                                      </tr>
                                      <tr>
                                        <td>Guardian's Email</td>
                                        <td>{{ $show->gur_email }}</td>
                                      </tr>
                                      <tr>
                                        <td>Guardian's Relation</td>
                                        <td>{{ $show->guardian }}</td>
                                      </tr>
                                      <tr>
                                        <td>Guardian's Phone</td>
                                        <td>{{ $show->gur_phone }}</td>
                                      </tr>
                                      <tr>
                                        <td>Guardian's Occupation</td>
                                        <td>{{ $show->gur_occu }}</td>
                                      </tr>
                                      <tr>
                                        <td>Guardian's Address</td>
                                        <td>{{ $show->gur_address }}</td>
                                      </tr>
                                    </tbody>
                                  </table>
                                </div>
                              </div>
                              <div class="tshadow mb25  bozero">
                                <h3 class="pagetitleh2" style="font-size: 20px;">Miscellaneous Details</h3>
                                <div class="table-responsive around10 pt0">
                                  <table class="table table-hover table-striped tmb0">
                                    <tbody>
                                      <tr>
                                        <td class="col-md-4">Blood Group</td>
                                        <td class="col-md-5">{{ $show->blood_group }}</td>
                                      </tr>
                                      <tr>
                                        <td class="col-md-4">Student's House</td>
                                        <td class="col-md-5">{{ $show->stu_house }}</td>
                                      </tr>
                                      <tr>
                                        <td class="col-md-4">Height</td>
                                        <td class="col-md-5">{{ $show->height }}</td>
                                      </tr>
                                      <tr>
                                        <td class="col-md-4">Weight</td>
                                        <td class="col-md-5">{{ $show->weight ?? '--' }} KG </td>
                                      </tr>
                                      <tr>
                                        <td class="col-md-4">As on Date</td>
                                        <td class="col-md-5">
                                            @if(!is_null($show->as_on_date))
                                            {{ date('d-m-Y', strtotime($show->as_on_date)) }}
                                            @else
                                            @endif
                                            </td>
                                      </tr>
                                      {{-- <tr>
                                        <td class="col-md-4">Previous School Details</td>
                                        <td class="col-md-5">{{ $show->pre_school }}</td>
                                      </tr> --}}
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