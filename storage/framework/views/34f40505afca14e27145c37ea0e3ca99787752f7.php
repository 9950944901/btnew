
<?php $__env->startSection('content'); ?>

<?php
$user = auth()->user();
?>


<main id="main" class="main">

    <div class="pagetitle">
      <h1>Profile</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="<?php echo e(route('SCHOOL.Home')); ?>">Home</a></li>
          <li class="breadcrumb-item">Admin</li>
          <li class="breadcrumb-item active">Profile</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section profile">
      <div class="row">
        <div class="col-xl-4">

          <div class="card">
            <div class="card-body profile-card pt-4 d-flex flex-column align-items-center">
                <?php if(!is_null($user->image)): ?>
                <img src="<?php echo e(url('storage/app/public/'.$user->image)); ?>" style="height: 120px;width:100%;" alt="NO IMAGE" class="rounded-circle">
                <?php else: ?>
                <img src="<?php echo e(url('public/avtar.png')); ?>" style="height: 120px;width:100%;" alt="NO IMAGE" class="rounded-circle">
              <?php endif; ?>
              <h2><?php echo e($user->name ?? 'Admin'); ?></h2>
              <h3><?php echo e($user->job ?? 'Admin'); ?></h3>
            </div>
          </div>

        </div>

        <div class="col-xl-8">

          <div class="card">
            <div class="card-body pt-3">
              <!-- Bordered Tabs -->
              <ul class="nav nav-tabs nav-tabs-bordered" id="myTab">

                <li class="nav-item">
                  <button class="nav-link active" id="profile_overview-tab" data-bs-toggle="tab" data-bs-target="#profile_overview" role="tab" aria-controls="profile_overview">Overview</button>
                </li>

                <li class="nav-item">
                  <button class="nav-link" id="profile_edit-tab" data-bs-toggle="tab" data-bs-target="#profile_edit" role="tab" aria-controls="profile_edit">Edit Profile</button>
                </li>
                <li class="nav-item">
                  <button class="nav-link" data-bs-toggle="tab" id="profile_change_password-tab"
                  data-bs-target="#profile_change_password" role="tab" aria-controls="profile_change_password">Change Password</button>
                </li>
              </ul>
              <div class="tab-content pt-2" id="nav-tabContent">
                <div class="tab-pane fade show active" id="profile_overview">
                  <h5 class="card-title" style="float: inherit;">Profile Details</h5>
                  <div class="row">
                    <div class="col-lg-3 col-md-4 label ">User ID</div>
                    <div class="col-lg-9 col-md-8"><?php echo e($user->rand_id ?? ''); ?></div>
                  </div>
                  <div class="row">
                    <div class="col-lg-3 col-md-4 label ">Full Name</div>
                    <div class="col-lg-9 col-md-8"><?php echo e($user->name ?? 'Admin'); ?></div>
                  </div>

                  <div class="row">
                    <div class="col-lg-3 col-md-4 label">School</div>
                    <div class="col-lg-9 col-md-8"><?php echo e($user->school_name ?? 'Test School'); ?></div>
                  </div>

                  <div class="row">
                    <div class="col-lg-3 col-md-4 label">Job</div>
                    <div class="col-lg-9 col-md-8"><?php echo e($user->job ?? 'Admin'); ?></div>
                  </div>

                  <div class="row">
                    <div class="col-lg-3 col-md-4 label">Country</div>
                    <div class="col-lg-9 col-md-8"><?php echo e($user->country ?? 'India'); ?></div>
                  </div>

                  <div class="row">
                    <div class="col-lg-3 col-md-4 label">Address</div>
                    <div class="col-lg-9 col-md-8"><?php echo e($user->add ?? '----------'); ?></div>
                  </div>

                  <div class="row">
                    <div class="col-lg-3 col-md-4 label">Phone</div>
                    <div class="col-lg-9 col-md-8"><?php echo e($user->phone ?? '----------'); ?></div>
                  </div>

                  <div class="row">
                    <div class="col-lg-3 col-md-4 label">Email</div>
                    <div class="col-lg-9 col-md-8"><?php echo e($user->email); ?></div>
                  </div>

                </div>

                <div class="tab-pane fade profile-edit pt-3" id="profile_edit">

                  <!-- Profile Edit Form -->
                  <form method="post" action="<?php echo e(route('ADMIN.Profile.Update')); ?>" enctype="multipart/form-data">
                    <?php echo csrf_field(); ?>
                    <div class="row mb-3">
                      <label for="profileImage" class="col-md-4 col-lg-3 col-form-label">Profile Image</label>
                      <div class="col-md-8 col-lg-9">
                        <?php if(!is_null($user->image)): ?>
                        <img src="<?php echo e(url('storage/app/public/'.$user->image)); ?>" style="height: 115px;width: 200px;" alt="NO IMAGE">
                        <?php else: ?>
                        <img src="<?php echo e(url('public/avtar.png')); ?>" alt="NO IMAGE">
                        <?php endif; ?>
                        <div class="pt-2">
                          <input name="image" type="file" class="form-control" accept="image/*">
                        </div>
                      </div>
                    </div>

                    <div class="row mb-3">
                      <label for="fullName" class="col-md-4 col-lg-3 col-form-label">Full Name</label>
                      <div class="col-md-8 col-lg-9">
                        <input name="name" type="text" class="form-control" id="fullName" value="<?php echo e($user->name); ?>">
                      </div>
                    </div>

                    

                    <div class="row mb-3">
                      <label for="company" class="col-md-4 col-lg-3 col-form-label">School Name</label>
                      <div class="col-md-8 col-lg-9">
                        <input name="school_name" type="text" class="form-control" id="company" value="<?php echo e($user->school_name); ?>">
                      </div>
                    </div>

                    <div class="row mb-3">
                      <label for="Job" class="col-md-4 col-lg-3 col-form-label">Job</label>
                      <div class="col-md-8 col-lg-9">
                        <input name="job" type="text" class="form-control" id="Job" value="<?php echo e($user->job); ?>">
                      </div>
                    </div>

                    <div class="row mb-3">
                      <label for="Country" class="col-md-4 col-lg-3 col-form-label">Country</label>
                      <div class="col-md-8 col-lg-9">
                        <input name="country" type="text" class="form-control" id="Country" value="<?php echo e($user->country); ?>">
                      </div>
                    </div>

                    <div class="row mb-3">
                      <label for="Address" class="col-md-4 col-lg-3 col-form-label">Address</label>
                      <div class="col-md-8 col-lg-9">
                        <input name="add" type="text" class="form-control" id="Address" value="<?php echo e($user->add); ?>">
                      </div>
                    </div>

                    <div class="row mb-3">
                      <label for="Phone" class="col-md-4 col-lg-3 col-form-label">Phone</label>
                      <div class="col-md-8 col-lg-9">
                        <input name="phone" type="text" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\.*)\./g, '$1');" minlength="10" maxlength="10" class="form-control" id="Phone" value="<?php echo e($user->phone); ?>">
                      </div>
                    </div>

                    <div class="row mb-3">
                      <label for="Email" class="col-md-4 col-lg-3 col-form-label">Email</label>
                      <div class="col-md-8 col-lg-9">
                        <input name="email" type="email" class="form-control" id="Email" value="<?php echo e($user->email); ?>">
                        <?php $__errorArgs = ['email'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                          <span class="text-danger"><?php echo e($message); ?></span>
                        <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                      </div>
                    </div>
                    <div class="text-center">
                      <button type="submit" class="btn btn-primary">Save Changes</button>
                    </div>
                  </form><!-- End Profile Edit Form -->

                </div>

                <div class="tab-pane fade pt-3" id="profile_change_password">
                  <!-- Change Password Form -->
                  <form action="<?php echo e(route('profile.change.pass')); ?>" method="post">
                    <?php echo csrf_field(); ?>
        
                
                 
                    <div class="row mb-3">
                      <label for="currentPassword" class="col-md-4 col-lg-3 col-form-label">Current Password</label>
                      <div class="col-md-8 col-lg-9">
                        <span class="text-danger w-100"><?php $__errorArgs = ['password'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> <?php echo e($message); ?> <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?></span>
                        <input  type="hidden"  class="form-control" value="<?php echo e($user->email); ?>" name="email">
                        <input type="password" required class="form-control" name="password">
                      </div>
                    </div>

                    <div class="row mb-3">
                  
                      <label for="newPassword" class="col-md-4 col-lg-3 col-form-label">New Password</label>
                      <div class="col-md-8 col-lg-9">
                        <span class="text-danger w-100"><?php $__errorArgs = ['new_password'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> <?php echo e($message); ?> <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?></span>
                        <input type="password" required name="new_password"  class="form-control" >
                      </div>
                    </div>

                    <div class="row mb-3">
                      <label for="renewPassword" class="col-md-4 col-lg-3 col-form-label">Re-enter New Password</label>
                      <div class="col-md-8 col-lg-9">
                        <span class="text-danger w-100"><?php $__errorArgs = ['re_enter_password'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> <?php echo e($message); ?> <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?></span>
                        <input  type="password" required name="re_enter_password" class="form-control">
                      </div>
                    </div>

                    <div class="text-center">
                      <button type="submit" class="btn btn-primary">Change Password</button>
                    </div>
                  </form><!-- End Change Password Form -->

                </div>

              </div><!-- End Bordered Tabs -->

            </div>
          </div>

        </div>
      </div>
    </section>

  </main><!-- End #main -->
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/u640337273/domains/btschool.in/public_html/resources/views/school/pages/index.blade.php ENDPATH**/ ?>