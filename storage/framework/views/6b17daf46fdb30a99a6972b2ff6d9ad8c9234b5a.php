
<?php $__env->startSection('content'); ?>
<style>
    table, th, td {
      border:1px solid rgb(170, 168, 168);
      border-collapse: collapse;
      font-size: 14px;
    }
    </style>
<main id="main" class="main">
    <div class="pagetitle">
        <h1>User List</h1>
        <?php if($message = Session::get('success')): ?>
        <div class="alert alert-success alert-block">
            <strong><?php echo e($message); ?></strong>
        </div>
        <?php endif; ?>
        <?php if($message = Session::get('error')): ?>
        <div class="alert alert-danger alert-block">
            <strong><?php echo e($message); ?></strong>
        </div>
        <?php endif; ?>
    </div><!-- End Page Title -->
    <section class="section dashboard">
        <div class="row">
            <!-- Left side columns -->
            <div class="col-lg-12">
                <div class="row">
                    <table style="width:100%">
                        <tr>
                          <th>S.No.</th>
                          <th>School ID</th>
                          <th>School Name</th>
                          <th>Contact Person</th>
                          <th>Mobile No.</th>
                          <th>Email</th>
                          <th>Address</th>
                          <th>Plan Type</th>
                          <th>Validity</th>
                          <th>Action</th>
                        </tr>
                        <?php $__currentLoopData = $data; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <tr>
                            <td><?php echo e($loop->iteration); ?>.</td>
                            <td><?php echo e($value->rand_id); ?></td>
                            <td style="width: 15%;"><?php echo e($value->school_name); ?></td>
                            <td><?php echo e($value->name); ?></td>
                            <td><?php echo e($value->phone); ?></td>
                            <td><?php echo e($value->email); ?></td>
                            <td style="width: 15%;"><?php echo e($value->add); ?></td>
                            <td><?php if($value->plan_type == "365"): ?>
                                1 Year
                                <?php elseif($value->plan_type == "730"): ?>
                                2 Years
                                <?php else: ?>
                                <?php endif; ?>
                            </td>
                            <td><?php echo e(date('d-m-Y', strtotime($value->end_date))); ?></td>
                            <td>
                                <div>
                                    <a href="<?php echo e(route('Super.edit.User',['id'=>$value->id])); ?>" class="btn btn-primary py-0 px-1"><i class="bi bi-pencil"></i></a>
                                    <a href="<?php echo e(route('Super.Delete.User',['id'=>$value->id])); ?>" class="btn btn-danger py-0 px-1" onclick="return confirm('Are you sure you want to delete this User?');"><i class="bi bi-trash"></i></a>
                                </div>
                            </td>
                        </tr>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    </table>
                </div>
            </div>
        </div>
        </div>
        </div>
    </section>
</main><!-- End #main -->
<?php $__env->stopSection(); ?>
<?php echo $__env->make('super-admin.layouts', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/u640337273/domains/btschool.in/public_html/resources/views/super-admin/users.blade.php ENDPATH**/ ?>