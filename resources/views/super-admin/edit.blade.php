@extends('super-admin.layouts')
@section('content')
<style>
   textarea,select,input {
        box-shadow: none !important;
    }
</style>
<main id="main" class="main">
    <div class="pagetitle">
        <h1>Edit User Details ({{ $edit->rand_id }})</h1>
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
    <form action="{{ route('SuperAdmin.Form.Update',['id'=>$edit->id]) }}" method="post">
        @csrf
    <section class="section dashboard">
        <div class="row">
            <div class="col-lg-6 mt-2">
                <label class="form-label">School Name</label>
                <input type="text" name="school_name" class="form-control" placeholder="Enter School Name" maxlength="60" value="{{ $edit->school_name ?? '' }}">
                @error('school_name')
                    <span class="text-danger">{{ $message }}</span>
                @enderror
            </div>
            <div class="col-lg-6 mt-2">
                <label class="form-label"></label>Contact Person Name</label>
                <input type="text" name="contact_person_name" class="form-control" placeholder="Enter Contact Person Name" maxlength="25" value="{{ $edit->name ?? '' }}">
                @error('contact_person_name')
                    <span class="text-danger">{{ $message }}</span>
                @enderror
            </div>
            <div class="col-lg-6 mt-2">
                <label class="form-label">Mobile No.</label>
                <input type="text" name="mobile_no" class="form-control" placeholder="Enter Mobile No." minlength="10" maxlength="10" pattern="[0-9]*" value="{{ $edit->phone ?? '' }}">
                @error('mobile_no')
                    <span class="text-danger">{{ $message }}</span>
                @enderror
            </div>
            <div class="col-lg-6 mt-2">
                <label class="form-label">Email</label>
                <input type="email" name="email" class="form-control" placeholder="Enter Email" maxlength="30" value="{{ $edit->email ?? '' }}">
                @error('email')
                    <span class="text-danger">{{ $message }}</span>
                @enderror
            </div>
            <div class="col-lg-6 mt-2">
                <label class="form-label">Password</label>
                <input type="password" name="password" class="form-control" placeholder="Enter Password" maxlength="30" value="{{ $edit->conform_password ?? '' }}">
                @error('password')
                    <span class="text-danger">{{ $message }}</span>
                @enderror
            </div>
            <div class="col-lg-6 mt-2">
                <label class="form-label">Confirm Password</label>
                <input type="text" name="confirm_password" class="form-control" placeholder="Enter Confirm Password" maxlength="30" value="{{ $edit->conform_password ?? '' }}">
                @error('confirm_password')
                    <span class="text-danger">{{ $message }}</span>
                @enderror
            </div>
            <div class="col-lg-6 mt-2">
                <label class="form-label">School Address</label>
                <textarea type="text" name="address" class="form-control" placeholder="Enter School Address" maxlength="60">{{ $edit->add ?? '' }}</textarea>
                @error('address')
                    <span class="text-danger">{{ $message }}</span>
                @enderror
            </div>
            <div class="col-lg-6 mt-2">
                <label class="form-label">Login Status</label>
                <select name="user_block" class="form-control">
                    <option value="0" {{ $edit->user_block == '0' ? "selected" : "" }}>Active</option>
                    <option value="1" {{ $edit->user_block == '1' ? "selected" : "" }}>Blocked</option>
                </select>
                @error('plan_type')
                    <span class="text-danger">{{ $message }}</span>
                @enderror
                <button type="submit" class="btn btn-primary mt-4 w-25" style="float: right;">Update</button>
            </div>
        </div>
        </div>
        </div>
    </section>
</form>
</main><!-- End #main -->
@endsection
