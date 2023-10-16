
<?php $__env->startSection('content'); ?>
<main id="main" class="main">

  <?php
    use App\Models\GeneralSetting;
    use App\Models\FeesDiscount;
    use App\Models\FeesCollect;
    $info = GeneralSetting::where('user_id',auth()->user()->id)->first();
  ?>

    <div class="pagetitle">
      <h1>Dashboard</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="<?php echo e(route('SCHOOL.Home')); ?>">Home</a></li>
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
                <form action="<?php echo e(route('SCHOOL.fees-carry-forward')); ?>" method="get">
                  <?php echo csrf_field(); ?>
                <div class="row">
                  <h5 class="mt-3" style="font-size: 17px;">Select Criteria</h5>
                  <div class="col-md-5 sol-sm-12">
                    <h6 class="p-2" style="font-size: 14px;">Class</h6>
                    <div class="">
                      <select name="class" id="className" class="form-control neha-text" required>
                        <option value="">Select</option>
                        <?php $__currentLoopData = $class; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $cls): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <option><?php echo e($cls->class); ?></option>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
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
                  <?php $__currentLoopData = $show; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                  <tr id="task-1" class="task-list-row test-font text-capitalize" data-task-id="1" data-user="Platinum">
                    <td><?php echo e($loop->iteration); ?></td>
                    <td><?php echo e($value->admission_no); ?></td>
                    <td><?php echo e($value->first_name); ?> <?php echo e($value->last_name); ?></td>
                    <td><?php echo e(date('d-m-Y', strtotime($value->dob))); ?></td>
                    <td><?php echo e($value->class); ?></td>
                    <td><?php echo e($value->section); ?></td>
                    <td><?php echo e($value->father_name); ?></td>
                    <?php
                      $fees = FeesCollect::orderBy('id','desc')->where('stu_id',$value->id)->where('user_id',auth()->user()->id)->get();
                    ?>
                     <?php
                     $sum = FeesCollect::where('stu_id',$value->id)->where('user_id',auth()->user()->id)->sum('total');
                     $amot = 0;
                   ?>
                   <?php $__currentLoopData = $fees->unique('session'); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $ddc): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                   <?php
                   $total_fee = FeesDiscount::where('discount',$ddc->fees_group)->where('name',$ddc->session)->where('user_id',auth()->user()->id)->first();
                     $amot = $amot + ($total_fee->amount ?? '0');
                    ?>
                   <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                   <?php if((int)($amot ?? '0') > $sum ): ?>
                   <td class="text-warning">Pending. <p>₹<?php echo e($sum - ($amot ?? '0')); ?></p></td>
                   <?php elseif((int)($amot ?? '0') == $sum): ?>
                   <td class="text-success"><p></p></td>
                   <?php else: ?>
                   <td class="text-primary">Carry Forward <p>₹<?php echo e($sum - ($amot ?? '0')); ?></p></td>
                   <?php endif; ?>
                  </tr>
                  <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

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
            url:'<?php echo e(route('getSection')); ?>',
            type:'post',
            data:'cid='+cid+'&_token=<?php echo e(csrf_token()); ?>',
            success:function(result){
              jQuery('#sectionName').html(result)
            }
          });
        });
      });
  </script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/u640337273/domains/btschool.in/public_html/resources/views/school/fees-collection/fees-carry-forward.blade.php ENDPATH**/ ?>