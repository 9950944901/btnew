
<?php $__env->startSection('content'); ?>
<main id="main" class="main">

    <div class="pagetitle">
      <h1>Dashboard</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="<?php echo e(route('SCHOOL.Home')); ?>">Home</a></li>
          <li class="breadcrumb-item active">Staff Attendance</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <div class="dashboard ">
      <section class="section dashboard">
        <div class="row">
          <!-- Left side columns -->
          <div class="col-lg-12 col-md-12 col-sm-12">
            <div class="row">
              <div class="card info-card sales-card pb-5">
                <form action="<?php echo e(route('SCHOOL.staff-attendance')); ?>" method="get">
                  <?php echo csrf_field(); ?>
                <div class="row">
                  <h5 class="mt-3" style="font-size: 17px;">Select Staff</h5>
                  <div class="col-lg-6 col-md-12 col-sm-12">
                    <h6 class="p-2" style="font-size: 14px;">Staff</h6>
                    <div class="">
                      <select name="staff" class="form-control neha-text">
                        <option value="">Select</option>
                        <?php $__currentLoopData = $data; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $da): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <option value="<?php echo e($da->id); ?>"><?php echo e($da->firstname); ?> <?php echo e($da->lastname); ?></option>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                      </select>
                    </div>
                  </div>

                  <div class="col-lg-6 col-md-12 col-sm-12">
                      
                      <div class="p-2 mt-4">
                        <button type="submit" class="btn btn-info"><i class="fa fa-search"></i> Search</button>
                      </div>
                  </div>
                </div>
              </form>
              </div>


              <div class="d-flex justify-content-between">
                <h5 class="p-2">Staff Attendance</h5>
                <a href="<?php echo e(route('staff-attendance.Adden')); ?>" class="btn btn-info mb-3"><i class="fa fa-plus"></i> Add</a>
                
              </div>
          

              <table id="example1" class="table table-bordered table-striped">
                <thead>
                  <tr class="" style="font-size: 13px; color: #012970; ">
                    <th>S No.</th>
                    <th>Staff Id</th>
                    <th>Name</th>
                    
                    <th>Attendance</th>
                    <th>Date</th>
                    <th>Action</th>
                  </tr>
                </thead>

                <tbody>
                  <?php $__currentLoopData = $show; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                  <tr id="task-1" class="task-list-row test-font" data-task-id="1" data-user="Platinum">
                    <td><?php echo e($loop->iteration); ?></td>
                    <td><?php echo e($value->staff_id); ?></td>
                    <td><?php echo e($value->firstname); ?> <?php echo e($value->lastname); ?></td>
                    
                    <td>
                      <div class="">
                        <label><?php echo e($value->attendance); ?></label> &nbsp;
                      </div>
                    </td>
                    <td><?php echo e(date('d-m-Y', strtotime($value->date))); ?></td>
                 
                    <td>
                      <div class="d-flex">
                        <a data-bs-toggle="modal" data-bs-target="#editinc<?php echo e($value->id); ?>" class="btn btn-light ml-1"><i class="fa fa-pencil"></i></a>
                        <a href="<?php echo e(route('Attendance.Delete',['id'=>$value->id])); ?>" class="btn btn-light ml-1 delete-confirm"><i class="fa fa-times"></i></a>
                      </div>
                    </td>
                  </tr>
                  <div class="modal fade" id="editinc<?php echo e($value->id); ?>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                      <div class="modal-content">
                        <div class="modal-header">
                          <h5 class="modal-title" id="exampleModalLabel">Edit Staff Attendance</h5>
                          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                          <form method="post" action="<?php echo e(route('Staff.Attend.Update',['id'=>$value->id])); ?>">
                            <?php echo csrf_field(); ?>
                            <div class="mb-3">
                              <label for="recipient-name" class="col-form-label"> Staff Name</label>
                              <select  class="form-control" name="staff_id" required>
                                <option value="<?php echo e($value->staff_id); ?>"><?php echo e($value->firstname); ?> <?php echo e($value->lastname); ?></option>
                                <?php $__currentLoopData = $data; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $da): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <option value="<?php echo e($da->id); ?>"><?php echo e($da->firstname); ?> <?php echo e($da->lastname); ?></option>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                              </select>
                            </div>
                            <div class="mb-3">
                              <label for="recipient-name" class="col-form-label">Attendance</label><br>
                              <input type="radio" name="attendance" required value="Present" <?php echo e(($value->attendance=="Present")? "checked" : ""); ?>> <label>Present</label> &nbsp;
                              <input type="radio" name="attendance" required value="Late"  <?php echo e(($value->attendance=="Late")? "checked" : ""); ?>> <label>Late</label> &nbsp;
                              <input type="radio" name="attendance" required value="Absent" <?php echo e(($value->attendance=="Absent")? "checked" : ""); ?>> <label>Absent</label> &nbsp;
                              <input type="radio" name="attendance" required value="Half Day" <?php echo e(($value->attendance=="Half Day")? "checked" : ""); ?>> <label>Half Day</label> &nbsp;
                            </div>
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary">Update</button>
                          </form>
                        </div>
                      </div>
                    </div>
                  </div>
                  <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                </tbody>
              </table>

            </div>
      </section>
    </div>

  </main><!-- End #main -->

<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/u640337273/domains/btschool.in/public_html/resources/views/school/human-resource/staff-attendance.blade.php ENDPATH**/ ?>