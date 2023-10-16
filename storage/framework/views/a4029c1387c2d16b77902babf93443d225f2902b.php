<?php echo $__env->make('layouts.header-css', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php
use App\Models\GeneralSetting;
$user = auth()->user();
$data =GeneralSetting::where('user_id',$user->id)->first();
?>
<!-- ======= Header ======= -->
<header id="header" class="header fixed-top d-flex align-items-center">
    <div class="d-flex align-items-center justify-content-between">
        
        <a href="<?php echo e(url()->current()); ?>" class="logo d-flex align-items-center">
            
            <?php if(!is_null($data) && !is_null($data->school_name)): ?>
            <img src="<?php echo e(url('storage/app/public/'.$data->school_name)); ?>" style="width: 100%;" alt="">
            
            <?php else: ?>
            No Image 
            <?php endif; ?>
        </a>
        <i class="bi bi-list toggle-sidebar-btn"></i>
    </div><!-- End Logo -->
    <nav class="header-nav ms-auto">
        <ul class="d-flex align-items-center">
            <li class="nav-item d-block d-lg-none">
                <a class="nav-link nav-icon search-bar-toggle " href="#">
                    <i class="bi bi-search"></i>
                </a>
            </li><!-- End Search Icon-->
            <li class="nav-item dropdown pe-3">
                <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown">
                    <?php if(!is_null($user->image)): ?>
                    <img src="<?php echo e(url('storage/app/public/'.$user->image)); ?>" alt="NO IMAGE" class="rounded-circle">
                    <?php else: ?>
                    <img src="<?php echo e(url('public/avtar.png')); ?>" alt="NO IMAGE" class="rounded-circle">
                    <?php endif; ?>
                    <span class="d-none d-md-block dropdown-toggle ps-2"><?php echo e($user->rand_id ?? ''); ?></span>
                  </a><!-- End Profile Iamge Icon -->
                <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
                    <li>
                        <a class="dropdown-item d-flex align-items-center" href="<?php echo e(route('SCHOOL.users-profile')); ?>">
                            <i class="bi bi-person"></i>
                            <span><?php echo e(__('My Profile')); ?></span>
                        </a>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>
                    <li>
                        <a class="dropdown-item d-flex align-items-center signout-confirm" href="<?php echo e(route('SignOut.Data')); ?>">
                            <i class="bi bi-box-arrow-right"></i>
                            <span><?php echo e(__('Sign Out')); ?></span>
                        </a>
                    </li>
                </ul><!-- End Profile Dropdown Items -->
            </li><!-- End Profile Nav -->
        </ul>
    </nav><!-- End Icons Navigation -->

</header><!-- End Header -->
<?php /**PATH /home/u640337273/domains/btschool.in/public_html/resources/views/layouts/header.blade.php ENDPATH**/ ?>