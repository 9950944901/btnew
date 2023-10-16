
<?php $__env->startSection('content'); ?>
<main id="main" class="main">

    <div class="pagetitle">
      <h1>Dashboard</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="<?php echo e(route('SCHOOL.Home')); ?>">Home</a></li>
          <li class="breadcrumb-item active">Staff Directory Edit</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <div class="dashboard ">
      <section class="section dashboard">
        <div class="row">
          <!-- Left side columns -->
          <div class="col-lg-12 col-md-12 col-sm-12">
            <form action="<?php echo e(route('Update.Staff',['id'=>$add->id])); ?>" method="post" enctype="multipart/form-data">
              <?php echo csrf_field(); ?>
            <div class="row">
              <div class="card info-card sales-card">
                <div class="row">
                  <h5 class="mt-3" style="font-size: 17px;">Edit Staff Information</h5>
                  <div class="col-lg-3 col-md-3 sol-sm-12">
                    <h6 class="p-2" style="font-size: 14px;">Staff ID <span class="text-danger">*</span></h6>
                    <div class="">
                      <input type="text" class="form-control neha-text" id="date1" value="<?php echo e($add->staff_id); ?>" name="staff_id" readonly>
                    </div>
                  </div>
                  <div class="col-lg-3 col-md-6 sol-sm-12">
                    <h6 class="p-2" style="font-size: 14px;">Role <span class="text-danger">*</span></h6>
                    <div class="">
                        <input type="text" name="role" value="<?php echo e($add->role); ?>" required class="form-control" maxlength="20"> 
                    </div>
                  </div>
                  <div class="col-lg-3 col-md-6 sol-sm-12">
                    <h6 class="p-2" style="font-size: 14px;">Designation <span class="text-danger">*</span></h6>
                    <div class="">
                      <input type="text" name="designation" value="<?php echo e($add->designation); ?>" required class="form-control" maxlength="30"> 
                    </div>
                  </div>
                  <div class="col-lg-3 col-md-6 sol-sm-12">
                    <h6 class="p-2" style="font-size: 14px;">Department <span class="text-danger">*</span></h6>
                    <div class="">
                      <select name="department" class="form-control neha-text" required>
                        <option><?php echo e($add->department); ?></option>
                        <?php $__currentLoopData = $show; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <option><?php echo e($value->name); ?></option>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                      </select>
                    </div>
                  </div>
                  <div class="col-lg-3 col-md-3 sol-sm-12">
                    <h6 class="p-2" style="font-size: 14px;">First Name <span class="text-danger">*</span></h6>
                    <div class="">
                      <input type="text" class="form-control neha-text" maxlength="20" value="<?php echo e($add->firstname); ?>" name="firstname" required>
                    </div>
                  </div>
                  <div class="col-lg-3 col-md-6 sol-sm-12">
                    <h6 class="p-2" style="font-size: 14px;">Last Name <span class="text-danger">*</span></h6>
                    <div class="">
                      <input type="text" class="form-control neha-text" value="<?php echo e($add->lastname); ?>" name="lastname" required>
                    </div>
                  </div>
                  <div class="col-lg-3 col-md-6 sol-sm-12">
                    <h6 class="p-2" style="font-size: 14px;">Father Name</h6>
                    <div class="">
                      <input type="text" class="form-control neha-text" maxlength="20" value="<?php echo e($add->father_name); ?>" name="father_name" maxlength="30">
                    </div>
                  </div>
                  <div class="col-lg-3 col-md-6 sol-sm-12">
                    <h6 class="p-2" style="font-size: 14px;">Mother Name</h6>
                    <div class="">
                      <input type="text" class="form-control neha-text" value="<?php echo e($add->mother_name); ?>" name="mother_name" maxlength="30">
                    </div>
                  </div>                
                  <div class="col-lg-3 col-md-6 sol-sm-12">
                    <h6 class="p-2" style="font-size: 14px;">Email <span class="text-danger">*</span></h6>
                    <div class="">
                      <input type="email" class="form-control neha-text" value="<?php echo e($add->email); ?>" name="email" maxlength="30" required>
                    </div>
                  </div>                
                  <div class="col-lg-3 col-md-6 sol-sm-12">
                    <h6 class="p-2" style="font-size: 14px;">Gender <span class="text-danger">*</span></h6>
                    <div class="">
                      <select name="gender" class="form-control neha-text" required>
                        <option><?php echo e($add->gender); ?></option>
                        <option>Male</option>
                        <option>Female</option>
                      </select>
                    </div>
                  </div>
                  <div class="col-lg-3 col-md-6 sol-sm-12">
                    <h6 class="p-2" style="font-size: 14px;">Date of Birth</h6>
                    <div class="">
                      <input type="date" class="form-control neha-text" value="<?php echo e($add->dob); ?>" name="dob" required>
                    </div>
                  </div>
                  <div class="col-lg-3 col-md-6 sol-sm-12">
                    <h6 class="p-2" style="font-size: 14px;">Date of Joining <span class="text-danger">*</span></h6>
                    <div class="">
                      <input type="date" class="form-control neha-text" value="<?php echo e($add->joining_date); ?>" name="joining_date" required>
                    </div>
                  </div>
                  <div class="col-lg-3 col-md-6 sol-sm-12">
                    <h6 class="p-2" style="font-size: 14px;">Phone <span class="text-danger">*</span></h6>
                    <div class="">
                      <input type="text" class="form-control neha-text" minlength="10" pattern="[0-9]*" maxlength="10" value="<?php echo e($add->phone); ?>" name="phone" required>
                    </div>
                  </div>
                  <div class="col-lg-3 col-md-6 sol-sm-12">
                    <h6 class="p-2" style="font-size: 14px;">Emergency Contact Number </h6>
                    <div class="">
                      <input type="text" maxlength="10" minlength="10" pattern="[0-9]*" class="form-control neha-text" value="<?php echo e($add->contact_no); ?>" name="contact_no">
                    </div>
                  </div>
                  <div class="col-lg-3 col-md-6 sol-sm-12">
                    <h6 class="p-2" style="font-size: 14px;">Marital Status</h6>
                    <div class="">
                      <select class="form-control" name="marital_status" >
                        <option><?php echo e($add->marital_status); ?></option>
                        <option value="Single">Single</option>
                        <option value="Married">Married</option>
                    </select>
                    </div>
                  </div>
                  <div class="col-lg-3 col-md-6 sol-sm-12">
                    <h6 class="p-2" style="font-size: 14px;">Photo</h6>
                    <div class="">
                      <input type="file" name="staff_image" class="form-control" accept=".png, .jpg, .jpeg">
                      <?php if($add->staff_image): ?>
                      <img src="<?php echo e(url('storage/app/public/'.$add->staff_image)); ?>" height="80" width="100" alt="">
                      <?php else: ?>
                      NO IMAGE
                      <?php endif; ?>
                    </div>
                  </div>
                  <div class="col-lg-6 col-md-6 sol-sm-12">
                    <h6 class="p-2" style="font-size: 14px;">Current Address</h6>
                    <div class="">
                      <textarea class="form-control neha-text" maxlength="200" name="cadd"><?php echo e($add->cadd); ?></textarea>
                    </div>
                  </div>
                  <div class="col-lg-6 col-md-6 sol-sm-12">
                    <h6 class="p-2" style="font-size: 14px;">Permanent Address</h6>
                    <div class="">
                      <textarea class="form-control neha-text" maxlength="200" name="padd"><?php echo e($add->padd); ?></textarea>
                    </div>
                  </div>
                  <div class="col-lg-6 col-md-6 sol-sm-12">
                    <h6 class="p-2" style="font-size: 14px;">Qualification</h6>
                    <div class="">
                      <textarea class="form-control neha-text" maxlength="100" name="qualification"><?php echo e($add->qualification); ?></textarea>
                    </div>
                  </div>
                  <div class="col-lg-6 col-md-6 sol-sm-12">
                    <h6 class="p-2" style="font-size: 14px;">Work Experience</h6>
                    <div class="">
                      <textarea class="form-control neha-text" maxlength="100" name="work_exp"><?php echo e($add->work_exp); ?></textarea>
                    </div>
                  </div>
                  <div class="col-lg-6 col-md-6 sol-sm-12">
                    <h6 class="p-2" style="font-size: 14px;">Note</h6>
                    <div class="">
                      <textarea class="form-control neha-text" maxlength="100" name="note"><?php echo e($add->note); ?></textarea>
                    </div>
                  </div>
                  <div class="col-lg-6 col-md-6 sol-sm-12">
                    <h6 class="p-2" style="font-size: 14px;">Status</h6>
                    <div class="">
                      <select name="status" class="form-control">
                        <?php if($add->status==1): ?>
                        <option value="1">Active</option>
                        <option value="0">Inactive</option>
                        <?php else: ?>
                        <option value="0">Inactive</option>
                        <option value="1">Active</option>
                        <?php endif; ?>
                      </select>
                    </div>
                  </div>
  
                  <hr>
                </div>
              

              

              
                <div class="row">
                  <div class="text-center p-3">
                    <a href="<?php echo e(route('SCHOOL.staff-directory')); ?>" class="btn btn-danger">Back</a>
                    <button type="Submit" class="btn btn-info">Update</button>
                  </div>
                </div>
              </div>


            </div>
          </form>

      </section>
    </div>

  </main><!-- End #main -->
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/u640337273/domains/btschool.in/public_html/resources/views/school/human-resource/edit-staff.blade.php ENDPATH**/ ?>