@extends('layouts.app')
@section('content')
<main id="main" class="main">

  @php
    use App\Models\GeneralSetting;
    use App\Models\FeesDiscount;
    use App\Models\FeesCollect;
    $info = GeneralSetting::where('user_id',auth()->user()->id)->first();
  @endphp

    <div class="pagetitle">
      <h1>Dashboard</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="{{ route('SCHOOL.Home') }}">Home</a></li>
          <li class="breadcrumb-item active">Fees Carry Forward</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <div class="dashboard" >
      <section class="section dashboard">
        <div class="row">
          <!-- Left side columns -->
          <div class="col-lg-12 col-md-12 col-sm-12">
            <div class="row">
              <div class="card info-card sales-card" style="padding-bottom: 36px;">
                <form action="{{ route('SCHOOL.fees-carry-forward') }}" method="get">
                  @csrf
                <div class="row">
                  <h5 class="mt-3" style="font-size: 17px;">Select Criteria</h5>
                  <div class="col-md-5 sol-sm-12">
                    <h6 class="p-2" style="font-size: 14px;">Class</h6>
                    <div class="">
                      <select name="class" id="className" class="form-control neha-text" required>
                        <option value="">Select</option>
                        @foreach ($class as $cls)
                        <option>{{ $cls->class }}</option>
                        @endforeach
                      </select>
                    </div>
                  </div>
                  <div class="col-md-5 sol-sm-12">
                    <h6 class="p-2" style="font-size: 14px;">Section</h6>
                    <div class="">
                      <select name="section" id="sectionName" class="form-control neha-text" required>
                      </select>
                    </div>
                  </div>
                  <div class="col-md-2 col-sm-12">
                    <div class="mt-4 pt-1">
                      <button type="submit" class="btn btn-info" style="margin-top: 5px"><i class="fa fa-search"></i> Search</button>
                    </div>
                  </div>

                </div>
              </form>
              </div>

              <div class="p-3">
                <h5>Previous Session Fees Status</h5>
               </div>

              <table id="example1" class="table table-bordered table-striped">
                <thead>
                  <tr class="" style="font-size: 13px; color: #012970; ">
                    <th>S No.</th>
                    <th>Admission No.</th>
                    <th>Name</th>
                    <th>Date of Birth</th>
                    <th>Class</th>
                    <th>Section</th>
                    <th>Father's Name</th>
                    <th>Balance</th>
                  </tr>
                </thead>

                <tbody>
                  @foreach ($show as $value)
                  <tr id="task-1" class="task-list-row test-font text-capitalize" data-task-id="1" data-user="Platinum">
                    <td>{{ $loop->iteration }}</td>
                    <td>{{ $value->admission_no }}</td>
                    <td>{{ $value->first_name }} {{ $value->last_name }}</td>
                    <td>{{ date('d-m-Y', strtotime($value->dob)); }}</td>
                    <td>{{ $value->class }}</td>
                    <td>{{ $value->section }}</td>
                    <td>{{ $value->father_name }}</td>
                    @php
                      $fees = FeesCollect::orderBy('id','desc')->where('stu_id',$value->id)->where('user_id',auth()->user()->id)->get();
                    @endphp
                     @php
                     $sum = FeesCollect::where('stu_id',$value->id)->where('user_id',auth()->user()->id)->sum('total');
                     $amot = 0;
                   @endphp
                   @foreach($fees->unique('session') as $key => $ddc)
                   @php
                   $total_fee = FeesDiscount::where('discount',$ddc->fees_group)->where('name',$ddc->session)->where('user_id',auth()->user()->id)->first();
                     $amot = $amot + ($total_fee->amount ?? '0');
                    @endphp
                   @endforeach
                   @if((int)($amot ?? '0') > $sum )
                   <td class="text-warning">Pending. <p>₹{{ $sum - ($amot ?? '0') }}</p></td>
                   @elseif((int)($amot ?? '0') == $sum)
                   <td class="text-success"><p></p></td>
                   @else
                   <td class="text-primary">Carry Forward <p>₹{{ $sum - ($amot ?? '0') }}</p></td>
                   @endif
                  </tr>
                  @endforeach

                </tbody>
              </table>

            </div>
      </section>
    </div>

  </main><!-- End #main -->
  <script type = "text/javascript">
    jQuery(document).ready(function(){
        jQuery('#className').change(function(){
          let cid=jQuery(this).val();
          jQuery.ajax({
            url:'{{ route('getSection') }}',
            type:'post',
            data:'cid='+cid+'&_token={{csrf_token()}}',
            success:function(result){
              jQuery('#sectionName').html(result)
            }
          });
        });
      });
  </script>
@endsection