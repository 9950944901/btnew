@extends('layouts.app')
@section('content')
<main id="main" class="main">
    <div class="pagetitle">
      <h1>Dashboard</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="{{ route('SCHOOL.Home') }}">Home</a></li>
          <li class="breadcrumb-item active">Staff Directory Staff</li>
        </ol>
      </nav>
    </div>
    <div class="dashboard ">
      <section class="section dashboard">
        <div class="row">
          <!-- Left side columns -->
          <div class="col-lg-12 col-md-12 col-sm-12">
            <form action="{{ route('Add.Staff') }}" method="post" enctype="multipart/form-data">
              @csrf
            <div class="row">
              <div class="card info-card sales-card">
                <div class="row">
                  <h5 class="mt-3" style="font-size: 17px;">Basic Information</h5>
                  <div class="col-lg-3 col-md-3 sol-sm-12">
                    <h6 class="p-2" style="font-size: 14px;">Staff ID <span class="text-danger">*</span></h6>
                    <div class="">
                      @php
                        $staff_id = 'STF00'.$count+1;
                      @endphp
                      <input type="text" class="form-control neha-text" id="date1" value="{{ $staff_id }}" name="staff_id" required readonly>
                    </div>
                  </div>
                  <div class="col-lg-3 col-md-6 sol-sm-12">
                    <h6 class="p-2" style="font-size: 14px;">Role <span class="text-danger">*</span></h6>
                    <div class="">
                        <input type="text" name="role" value="{{ old('role') }}" required class="form-control" maxlength="20">   
                    </div>
                  </div>
                  <div class="col-lg-3 col-md-6 sol-sm-12">
                    <h6 class="p-2" style="font-size: 14px;">Designation <span class="text-danger">*</span></h6>
                    <div class="">
                      <input type="text" name="designation" value="{{ old('designation') }}" required class="form-control" maxlength="30">                    
                    </div>
                  </div>
                  <div class="col-lg-3 col-md-6 sol-sm-12">
                    <h6 class="p-2" style="font-size: 14px;">Department <span class="text-danger">*</span></h6>
                    <div class="">
                      <select name="department" class="form-control neha-text" required>
                        <option value="">Select</option>
                        @foreach ($show as $value)
                        <option>{{ $value->name }}</option>
                        @endforeach
                      </select>
                    </div>
                  </div>
                  <div class="col-lg-3 col-md-3 sol-sm-12">
                    <h6 class="p-2" style="font-size: 14px;">First Name <span class="text-danger">*</span></h6>
                    <div class="">
                      <input type="text" class="form-control neha-text" value="{{ old('firstname') }}" name="firstname" maxlength="20" required>
                    </div>
                  </div>
                  <div class="col-lg-3 col-md-6 sol-sm-12">
                    <h6 class="p-2" style="font-size: 14px;">Last Name <span class="text-danger">*</span></h6>
                    <div class="">
                      <input type="text" class="form-control neha-text" value="{{ old('lastname') }}" name="lastname" maxlength="20" required>
                    </div>
                  </div>
                  <div class="col-lg-3 col-md-6 sol-sm-12">
                    <h6 class="p-2" style="font-size: 14px;">Father's Name </h6>
                    <div class="">
                      <input type="text" class="form-control neha-text" value="{{ old('father_name') }}" name="father_name" maxlength="30">
                    </div>
                  </div>
                  <div class="col-lg-3 col-md-6 sol-sm-12">
                    <h6 class="p-2" style="font-size: 14px;">Mother's Name</h6>
                    <div class="">
                      <input type="text" class="form-control neha-text" value="{{ old('mother_name') }}" name="mother_name" maxlength="30">
                    </div>
                  </div>
                  <div class="col-lg-3 col-md-6 sol-sm-12">
                    <h6 class="p-2" style="font-size: 14px;">Email <span class="text-danger">*</span></h6>
                    <div class="">
                      <input type="text" class="form-control neha-text" name="email" value="{{ old('email') }}" required maxlength="30">
                    </div>
                  </div>
                  <div class="col-lg-3 col-md-6 sol-sm-12">
                    <h6 class="p-2" style="font-size: 14px;">Gender <span class="text-danger">*</span></h6>
                    <div class="">
                      <select name="gender" class="form-control neha-text" required>
                        <option value="">Select</option>
                        <option>Male</option>
                        <option>Female</option>
                      </select>
                    </div>
                  </div>
                  <div class="col-lg-3 col-md-6 sol-sm-12">
                    <h6 class="p-2" style="font-size: 14px;">Date of Birth</h6>
                    <div class="">
                      <input type="date" class="form-control neha-text" value="{{ old('dob') }}" name="dob">
                    </div>
                  </div>
                  <div class="col-lg-3 col-md-6 sol-sm-12">
                    <h6 class="p-2" style="font-size: 14px;">Date of Joining <span class="text-danger">*</span></h6>
                    <div class="">
                      <input type="date" class="form-control neha-text" value="{{ old('joining_date') }}" name="joining_date" required>
                    </div>
                  </div>
                  <div class="col-lg-3 col-md-6 sol-sm-12">
                    <h6 class="p-2" style="font-size: 14px;">Phone <span class="text-danger">*</span></h6>
                    <div class="">
                      <input type="text" minlength="10" maxlength="10" pattern="[0-9]*" class="form-control neha-text" value="{{ old('phone') }}" name="phone" required>
                    </div>
                  </div>
                  <div class="col-lg-3 col-md-6 sol-sm-12">
                    <h6 class="p-2" style="font-size: 14px;">Emergency Contact Number </h6>
                    <div class="">
                      <input type="text" minlength="10" maxlength="10" pattern="[0-9]*" class="form-control neha-text" value="{{ old('contact_no') }}" name="contact_no">
                    </div>
                  </div>
                  <div class="col-lg-3 col-md-6 sol-sm-12">
                    <h6 class="p-2" style="font-size: 14px;">Marital Status</h6>
                    <div class="">
                      <select class="form-control" name="marital_status" >
                        <option value="">Select</option>
                        <option value="Single">Single</option>
                        <option value="Married">Married</option>
                    </select>
                    </div>
                  </div>
                  <div class="col-lg-3 col-md-6 sol-sm-12">
                    <h6 class="p-2" style="font-size: 14px;">Photo</h6>
                    <div class="">
                      <input type="file" name="staff_image" class="form-control" accept="image/png, image/jpeg">
                    </div>
                  </div>
                  <div class="col-lg-6 col-md-6 sol-sm-12">
                    <h6 class="p-2" style="font-size: 14px;">Current Address</h6>
                    <div class="">
                      <textarea class="form-control neha-text" maxlength="200" name="cadd">{{ old('cadd') }}</textarea>
                    </div>
                  </div>
                  <div class="col-lg-6 col-md-6 sol-sm-12">
                    <h6 class="p-2" style="font-size: 14px;">Permanent Address</h6>
                    <div class="">
                      <textarea class="form-control neha-text" maxlength="200" name="padd">{{ old('padd') }}</textarea>
                    </div>
                  </div>
                  <div class="col-lg-6 col-md-6 sol-sm-12">
                    <h6 class="p-2" style="font-size: 14px;">Qualification</h6>
                    <div class="">
                      <textarea class="form-control neha-text" maxlength="200" name="qualification">{{ old('qualification') }}</textarea>
                    </div>
                  </div>
                  <div class="col-lg-6 col-md-6 sol-sm-12">
                    <h6 class="p-2" style="font-size: 14px;">Work Experience</h6>
                    <div class="">
                      <textarea class="form-control neha-text" maxlength="100" name="work_exp">{{ old('work_exp') }}</textarea>
                    </div>
                  </div>
                  <div class="col-lg-6 col-md-6 sol-sm-12">
                    <h6 class="p-2" style="font-size: 14px;">Note</h6>
                    <div class="">
                      <textarea class="form-control neha-text" maxlength="100" name="note">{{ old('note') }}</textarea>
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="text-center p-3">
                    <button type="Submit" class="btn btn-info w-25">Save</button>
                  </div>
                </div>
              </div>
            </div>
          </form>
      </section>
    </div>
  </main>
@endsection