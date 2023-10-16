
<?php $__env->startSection('content'); ?>
<main id="main" class="main">

  <div class="pagetitle">
    <h1>Dashboard</h1>
    <nav>
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="<?php echo e(route('SCHOOL.Home')); ?>">Home</a></li>
        <li class="breadcrumb-item active">General Setting</li>
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
              <form action="<?php echo e(route('General.Setting.Data')); ?>" method="post" enctype="multipart/form-data">
                <?php echo csrf_field(); ?>
              <div class="row mb-2">
                <h5 class="mt-3" style="font-size: 17px;">General Setting</h5>
                  
              

                
                <div class="col-lg-6 col-md-6 sol-sm-12">
                  <h6 class="p-2" style="font-size: 14px;">Session</h6>
                  <div class="mb-3">
                    <select name="session" class="form-control" required>
                      <?php if(!is_null($data) && !is_null($data->session ?? '')): ?>
                      <option><?php echo e($data->session ?? ''); ?></option>
                      <?php else: ?>
                      <option value="">Select</option>
                      <?php endif; ?>
                      <option>2021-22</option>
                      <option>2022-23</option>
                      <option>2023-24</option>
                      <option>2024-25</option>
                      <option>2025-26</option>
                      <option>2026-27</option>
                    </select>
                  </div>
                </div>
                <div class="col-lg-6 col-md-6 sol-sm-12">
                  <h6 class="p-2" style="font-size: 14px;">Session Start Month</h6>
                  <div class="mb-3">
                    <select name="session_month" class="form-control" required>
                      <?php if(!is_null($data) && !is_null($data->session_month ?? '')): ?>
                      <option><?php echo e($data->session_month ?? ''); ?></option>
                      <?php else: ?>
                      <option value="">Select</option>
                      <?php endif; ?>
                      <option>January</option>
                      <option>February</option>
                      <option>March</option>
                      <option>April</option>
                      <option>May</option>
                      <option>June</option>
                      <option>July</option>
                      <option>August</option>
                      <option>September</option>
                      <option>October</option>
                      <option>November</option>
                      <option>December</option>
                    </select>
                  </div>
                </div>
                <div class="col-lg-6 col-md-6 sol-sm-12">
                  <h6 class="p-2" style="font-size: 14px;">Dashboard Logo</h6>
                  <div class="">
                    <input type="file" class="form-control" name="school_name">
                    <small class="text-danger">( Perfect logo size 400*100 )</small>
                  </div>
                </div>
                <div class="col-lg-6 col-md-6 sol-sm-12">
                  <div class="">
                    <h6 class="p-2" style="font-size: 14px;"> Logo Image</h6>
                    <?php if(!is_null($data) && !is_null($data->school_name)): ?>
                    <img src="<?php echo e(url('storage/app/public/'.$data->school_name)); ?>" alt="">
                    <?php else: ?>
                    No Image 
                    <?php endif; ?>
                  </div>
                </div>
                <div class="text-right p-1">
                  <button type="submit" class="btn btn-info">Save</button>
                </div>

              </div>
            </form>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>

</main><!-- End #main -->
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/u640337273/domains/btschool.in/public_html/resources/views/school/system-settings/index.blade.php ENDPATH**/ ?>