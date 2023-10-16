@extends('layouts.app')
@section('content')
<main id="main" class="main">
  @php
  use App\Models\GeneralSetting;
  use App\Models\FeesDiscount;
  $info = GeneralSetting::where('user_id',auth()->user()->id)->first();
  @endphp
    <div class="pagetitle">
      <h1>Dashboard</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="{{ route('SCHOOL.Home') }}">Home</a></li>
          <li class="breadcrumb-item active">Collect Fees Action</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <div class="dashboard ">
      <section class="section dashboard">
        <div class="row">
          <!-- Left side columns -->
          <div class="col-lg-12 col-md-12 col-sm-12">
            <div class="row">
              <div class="card info-card sales-card">
                <h5 class="mt-3">Student Fees</h5>
                <hr>
                <div class="row mb-2">
                  <div class="col-lg-2 col-md-6 col-sm-12">
                    <div>
                      @if(!is_null($show->student_image))
                      <img src="{{ url('storage/app/public/'.$show->student_image) }}" width="100" height="100">
                      @else
                      <img src="{{ url('public/av.png') }}" width="100">
                      @endif
                    </div>
                  </div>
                  <div class="col-lg-5 col-md-6 col-sm-12">
                    <div class="ml-1 mr-2">
                      <div class="d-flex justify-content-between">
                        <p class="mb-1"><b>Name</b></p>
                        <p class="mb-1">{{ $show->first_name }} {{ $show->last_name }}</p>
                      </div>

                      <div class="d-flex justify-content-between">
                        <p class="mb-1"><b>Father Name </b></p>
                        <p class="mb-1">{{ $show->father_name }}</p>
                      </div>

                      <div class="d-flex justify-content-between">
                        <p class="mb-1"><b>Mobile No.</b></p>
                        <p class="mb-1">{{ $show->mobile_no }}</p>
                      </div>

                      <div class="d-flex justify-content-between">
                        <p class="mb-1"><b>Category</b></p>
                        <p class="mb-1">{{ $show->category }}</p>
                      </div>
                      <div class="d-flex justify-content-between">
                        <p class="mb-1"><b>Session</b></p>
                        <p class="mb-1">{{ $info->session ?? '' }}</p>
                      </div>
                    </div>
                  </div>

                  <div class="col-lg-5 col-md-6 col-sm-12">
                    <div class="ml-1 mr-2">
                      <div class="d-flex justify-content-between">
                        <p class="mb-1"><b>Class Section</b></p>
                        <p class="mb-1">{{ $show->class }} ({{ $show->section }})</p>
                      </div>
                      <div class="d-flex justify-content-between">
                        <p class="mb-1"><b>Admission No</b></p>
                        <p class="mb-1">{{ $show->admission_no }}
                        </p>
                      </div>
                      <div class="d-flex justify-content-between">
                        <p class="mb-1"><b>Roll Number</b></p>
                        <p class="mb-1">{{ $show->roll_no }}</p>
                      </div>
                      <div class="d-flex justify-content-between">
                        <p class="mb-1"><b>Date Of Birth</b></p>
                        <p class="mb-1">{{ date('d-m-Y', strtotime($show->dob)) }}</p>
                      </div>
                      <div class="d-flex justify-content-between">
                        <p class="mb-1"><b>Total Fees </b></p>
                        <p class="mb-1">{{ $total_fee->amount ?? '' }}</p>
                      </div>
                    </div>
                  </div>
                  <hr>
                </div>
              </div>

              <div class="mt-1 mb-3">
                <a href="button" class="btn btn-info my-3" data-toggle="modal" data-target="#collectfeesModal"><i
                    class="fa fa-money"></i> Collect Fees</a>

                <!-- Modal -->
                <div class="modal fade" id="collectfeesModal" tabindex="-1" role="dialog"
                  aria-labelledby="collectfeesModalLabel" aria-hidden="true">
                  <div class="modal-dialog " role="document">
                    <div class="modal-content">
                      <div class="modal-header">
                        <h5 class="modal-title" id="leaverequestModalLabel">Collect Fees</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                          <span aria-hidden="true">&times;</span>
                        </button>
                      </div>
                      <div class="modal-body">
                        <form action="{{ route('Collect.Fees.Data') }}" method="post">
                          @csrf
                        <div class="row">                         
                          <div class="col-lg-12 col-md-6 col-sm-12">
                            <div class="form-group1 text-left">
                              <label for="Name">Date</label>
                              <input type="date" class="form-control neha-text" name="date" required>
                              <input type="hidden" class="form-control neha-text" value="{{ $show->id }}" name="stu_id">
                            </div>
                          </div>
                          <div class="col-lg-12 col-md-6 col-sm-12">
                            <div class="form-group1 text-left">
                              <label for="Name">Session</label>
                             <select name="session" class="form-control" required>
                              <option>{{ $info->session ?? '' }}</option>
                              <option>2021-22</option>
                              <option>2022-23</option>
                              <option>2023-24</option>
                              <option>2024-25</option>
                              <option>2025-26</option>
                              <option>2026-27</option>
                             </select>
                            </div>
                          <div class="col-lg-12 col-md-6 col-sm-12">
                            <div class="form-group1 text-left">
                              <label for="Name">Class</label>
                             <select name="class" class="form-control" required>
                              <option>{{ $show->class ?? '' }}</option>
                              @foreach($class as $key => $clz)
                              <option>{{ $clz->class }}</option>
                              @endforeach
                             </select>
                            </div>
                          </div>
                          <div class="col-lg-12 col-md-6 col-sm-12">
                            <div class="form-group1 text-left">
                              <label for="Email">Payment Mode</label>
                              <div>
                                <input type="radio" name="payment_mode" value="Cash" checked> <label>Cash</label> &nbsp;
                                <input type="radio" name="payment_mode" value="Cheque"> <label>Cheque</label> &nbsp;
                                <input type="radio" name="payment_mode" value="DD"> <label>DD</label> &nbsp;
                                <input type="radio" name="payment_mode" value="Bank"> <label>Bank</label> &nbsp;
                                <input type="radio" name="payment_mode" value="UPI"> <label>UPI</label> &nbsp;
                                <input type="radio" name="payment_mode" value="Card"> <label>Card</label>
                              </div>
                            </div>
                          </div>
                          <div class="col-lg-12 col-md-6 col-sm-12">
                            <div class="form-group1 text-left">
                              <label for="Name"><b>Amount</b></label>
                              <input type="text" maxlength="6" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\.*)\./g, '$1');" class="form-control neha-text" name="total" required>
                            </div>
                          </div>
                          <div class="col-lg-12 col-md-6 col-sm-12">
                            <button type="submit" class="btn btn-info mt-2"><i class="fa fa-money"></i> Pay</button>
                          </div>

                        </div>
                      </form>

                      </div>
                      <div class="modal-footer">
                      </div>
                    </div>
                  </div>
                </div>





              </div>

              <table id="example1" class="table table-bordered table-striped">
                <thead>
                  <tr class="" style="font-size: 13px; color: #012970; ">
                    <th>S No.</th>
                    <th>Session</th>
                    <th>Class</th>
                    <th>Mode </th>
                    <th>Date</th>
                    <th>Amount (₹)</th>
                    <th>Status</th>
                    <th>Action</th>
                  </tr>
                </thead>

                <tbody>
                  @foreach ($fees as $info)
                  <tr id="task-1" class="task-list-row test-font" data-task-id="1" data-user="Platinum">
                    <td>{{ $loop->iteration }}</td>
                    <td>{{ $info->session }}</td>
                    <td>{{ $info->fees_group }}</td>
                    <td>{{ $info->payment_mode }}</td>
                    <td>{{ date('d-m-Y', strtotime($info->created_at)); }}</td>
                    <td>₹{{ $info->total }}</td>
                    <td>@if ($info->status==1)
                      Active
                      @else
                      Inactive
                      @endif</td>
                      <td>
                        <div class="d-flex">
                          <a data-bs-toggle="modal" data-bs-target="#editfees{{ $info->id }}" data-bs-whatever="@mdo" class="btn btn-light ml-1"><i class="fa fa-pencil"></i></a>
                          <a href="{{ route('Fees.collect.Delete',['id'=>$info->id]) }}" class="btn btn-light ml-1 delete-confirm"><i class="fa fa-times"></i></a>
                        </div>
                      </td>
                  </tr>
                  <div class="modal fade" id="editfees{{ $info->id }}" tabindex="-1" role="dialog"
                  aria-labelledby="collectfeesModalLabel" aria-hidden="true">
                  <div class="modal-dialog " role="document">
                    <div class="modal-content">
                      <div class="modal-header">
                        <h5 class="modal-title" id="leaverequestModalLabel">Edit Collect Fees</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                          <span aria-hidden="true">&times;</span>
                        </button>
                      </div>
                      <div class="modal-body">
                        <form action="{{ route('Collect.Fees.Update',['id'=>$info->id]) }}" method="post">
                          @csrf
                        <div class="row">                         
                          <div class="col-lg-12 col-md-6 col-sm-12">
                            <div class="form-group1 text-left">
                              <label for="Name">Date</label>
                              <input type="date" class="form-control neha-text" value="{{ $info->date }}" name="date" required>
                            </div>
                          </div>
                          <div class="col-lg-12 col-md-6 col-sm-12">
                            <div class="form-group1 text-left">
                              <label for="Email">Payment Mode</label>
                              <div>
                                <input type="radio" name="payment_mode" value="Cash" {{ ($info->payment_mode=="Cash")? "checked" : "" }}> <label>Cash</label> &nbsp;
                                <input type="radio" name="payment_mode" value="Cheque" {{ ($info->payment_mode=="Cheque")? "checked" : "" }}> <label>Cheque</label> &nbsp;
                                <input type="radio" name="payment_mode" value="DD" {{ ($info->payment_mode=="DD")? "checked" : "" }}> <label>DD</label> &nbsp;
                                <input type="radio" name="payment_mode" value="Bank" {{ ($info->payment_mode=="Bank")? "checked" : "" }}> <label>Bank</label> &nbsp;
                                <input type="radio" name="payment_mode" value="UPI" {{ ($info->payment_mode=="UPI")? "checked" : "" }}> <label>UPI</label> &nbsp;
                                <input type="radio" name="payment_mode" value="Card" {{ ($info->payment_mode=="Card")? "checked" : "" }}> <label>Card</label>
                              </div>
                            </div>
                          </div>
                          <div class="col-lg-12 col-md-6 col-sm-12">
                            <div class="form-group1 text-left">
                              <label for="Name"><b>Total</b></label>
                              <input type="text" class="form-control neha-text" name="total" value="{{  $info->total }}"   required>
                            </div>
                          </div>
                          <div class="col-lg-12 col-md-6 col-sm-12">
                            <button type="submit" class="btn btn-info mt-2"><i class="fa fa-money"></i> Pay</button>
                          </div>

                        </div>
                      </form>

                      </div>
                      <div class="modal-footer">
                      </div>
                    </div>
                  </div>
                </div>
                  @endforeach
                 
                </tbody>
                <tr class="w-100" style="font-size: 13px; color: #012970;" >
                  @php
                    $amot = 0;
                  @endphp
                  @foreach($fees->unique('session') as $key => $ddc)
                  @php
                  $total_fee = FeesDiscount::where('discount',$ddc->fees_group)->where('name',$ddc->session)->where('user_id',auth()->user()->id)->first();
                    $amot = $amot + ($total_fee->amount ?? '0');
                   @endphp
                  @endforeach
                  <th></th>
                  <th></th>
                  <th>Total Amount</th>
                  <th>₹{{ $amot }}</th>
                  <th>Received Payment</th>
                  <th>₹{{ $sum }}</th>
                  @if((int)($amot ?? '0') > $sum )
                  <th class="text-warning">Pending.</th>
                  @elseif((int)($amot ?? '0') == $sum)
                  <th class="text-success">----</th>
                  @else
                  <th class="text-primary">Carry Forward</th>
                  @endif
                  <th>₹{{ $sum - ($amot ?? '0') }}</th>
                </tr>
              </table>

            </div>
          </div>
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