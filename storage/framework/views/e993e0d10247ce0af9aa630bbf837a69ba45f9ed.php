
<?php $__env->startSection('content'); ?>
<main id="main" class="main">

    <div class="pagetitle">
      <h1>Dashboard</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="<?php echo e(route('SCHOOL.Home')); ?>">Home</a></li>
          <li class="breadcrumb-item active">Student Details Show</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <div class="dashboard">
      <section class="section dashboard">
        <div class="row">
          <div class="col-lg-3">
            <div class="row">
              <div class="card">

                <div class="box box-primary">
                  <div class="box-body box-profile">
                    <?php if(!is_null($show->student_image)): ?>
                    <img class="profile-user-img img-responsive img-circle"
                    src="<?php echo e(url('storage/app/public/'.$show->student_image)); ?>"
                    alt="Picture" style="height: 100px!important;">
                    <?php else: ?>
                    <img class="profile-user-img img-responsive img-circle"
                      src="<?php echo e(url('public/av.png')); ?>"
                      alt="User profile picture">
                      
                      <?php endif; ?>
                    <h3 class="profile-username text-center"><?php echo e($show->first_name); ?> <?php echo e($show->last_name); ?></h3>

                    <ul class="list-group list-group-unbordered" style="font-size: 14px;">
                      <li class="list-group-item listnoback">
                        <b>Admission No</b> <a class="pull-right text-aqua"><?php echo e($show->admission_no); ?></a>
                      </li>

                      <li class="list-group-item listnoback">
                        <b>Roll Number</b> <a class="pull-right text-aqua"><?php echo e($show->roll_no); ?></a>
                      </li>
                      <li class="list-group-item listnoback">
                        <b>Class</b> <a class="pull-right text-aqua"><?php echo e($show->class); ?></a>
                      </li>
                      <li class="list-group-item listnoback">
                        <b>Section</b> <a class="pull-right text-aqua"><?php echo e($show->section); ?></a>
                      </li>
                      
                      <li class="list-group-item listnoback">
                        <b>Gender</b> <a class="pull-right text-aqua"><?php echo e($show->gender); ?></a>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-9">
            <div class="card">
              <div class="card-body" style="padding: 0 20px 0px 20px;">
                <hr>
                <div class="activity">
                  <div class="card-box height-100-p overflow-hidden">
                    <div class="profile-tab height-100-p">
                      <div class="tab height-100-p">
                        <ul class="nav nav-tabs customtab" role="tablist">
                          <li class="nav-item">
                            <a class="nav-link active" data-toggle="tab" href="#profile" role="tab"><b>Profile</b></a>
                          </li>
                        </ul>
                        <div class="tab-content">
                          <div class="tab-pane fade show active" id="profile" role="tabpanel">
                            <div class="pd-20">
                              <div class="profile-timeline">
                                <div class="profile-timeline-list">
                                </div>
                              </div>
                            </div>
                            <div class="tab-pane active" id="activity">
                              <div class="tshadow mb25 bozero">
                                <div class="table-responsive around10 pt0">
                                  <table class="table table-hover table-striped tmb0">
                                    <tbody>
                                      <tr>
                                        <td class="col-md-4">Admission Date</td>
                                        <td class="col-md-5">
                                          <?php echo e(date('d-m-Y', strtotime($show->admission_date))); ?></td>
                                      </tr>
                                      <tr>
                                        <td>Date of Birth</td>
                                        <td><?php echo e(date('d-m-Y', strtotime($show->dob))); ?></td>
                                      </tr>
                                      <tr>
                                        <td>Category</td>
                                        <td><?php echo e($show->category); ?></td>
                                      </tr>
                                      <tr>
                                        <td>Mobile Number</td>
                                        <td><?php echo e($show->mobile_no); ?></td>
                                      </tr>
                                      <tr>
                                        <td>Caste</td>
                                        <td><?php echo e($show->caste); ?></td>
                                      </tr>
                                      <tr>
                                        <td>Religion</td>
                                        <td><?php echo e($show->religion); ?></td>
                                      </tr>
                                      <tr>
                                        <td>Email</td>
                                        <td><?php echo e($show->email); ?></td>
                                      </tr>
                                      <tr>
                                        </td>
                                      </tr>
                                    </tbody>
                                  </table>
                                </div>
                              </div>
                              <div class="tshadow mb25 bozero">
                                <h3 class="pagetitleh2" style="font-size: 20px;">Address </h3>
                                <div class="table-responsive around10 pt0">
                                  <table class="table table-hover table-striped tmb0">
                                    <tbody>
                                      <tr>
                                        <td class="col-md-4">Current Address</td>
                                        <td class="col-md-5"><?php echo e($show->stu_house); ?></td>
                                      </tr>
                                    </tbody>
                                  </table>
                                </div>
                              </div>
                              <div class="tshadow mb25 bozero">
                                <h3 class="pagetitleh2" style="font-size: 20px;">Parent / Guardian Details </h3>
                                <div class="table-responsive around10 pt10">
                                  <table class="table table-hover table-striped tmb0">
                                    <tbody>
                                      <tr>
                                        <td class="col-md-4">Father's Name</td>
                                        <td class="col-md-5"><?php echo e($show->father_name); ?></td>
                                      </tr>
                                      <tr>
                                        <td>Father's Phone</td>
                                        <td><?php echo e($show->father_mobile); ?></td>
                                      </tr>
                                      <tr>
                                        <td>Father's Occupation</td>
                                        <td><?php echo e($show->father_accu); ?></td>
                                      </tr>
                                      <tr>
                                        <td>Mother's Name</td>
                                        <td><?php echo e($show->mother_name); ?></td>
                                      </tr>
                                      <tr>
                                        <td>Mother's Phone</td>
                                        <td><?php echo e($show->mother_phone); ?></td>

                                      </tr>
                                      <tr>
                                        <td>Mother's Occupation</td>
                                        <td><?php echo e($show->mother_occu); ?></td>
                                      </tr>
                                      <tr>
                                        <td>Guardian's Name</td>
                                        <td><?php echo e($show->gur_name); ?></td>
                                      </tr>
                                      <tr>
                                        <td>Guardian's Email</td>
                                        <td><?php echo e($show->gur_email); ?></td>
                                      </tr>
                                      <tr>
                                        <td>Guardian's Relation</td>
                                        <td><?php echo e($show->guardian); ?></td>
                                      </tr>
                                      <tr>
                                        <td>Guardian's Phone</td>
                                        <td><?php echo e($show->gur_phone); ?></td>
                                      </tr>
                                      <tr>
                                        <td>Guardian's Occupation</td>
                                        <td><?php echo e($show->gur_occu); ?></td>
                                      </tr>
                                      <tr>
                                        <td>Guardian's Address</td>
                                        <td><?php echo e($show->gur_address); ?></td>
                                      </tr>
                                    </tbody>
                                  </table>
                                </div>
                              </div>
                              <div class="tshadow mb25  bozero">
                                <h3 class="pagetitleh2" style="font-size: 20px;">Miscellaneous Details</h3>
                                <div class="table-responsive around10 pt0">
                                  <table class="table table-hover table-striped tmb0">
                                    <tbody>
                                      <tr>
                                        <td class="col-md-4">Blood Group</td>
                                        <td class="col-md-5"><?php echo e($show->blood_group); ?></td>
                                      </tr>
                                      <tr>
                                        <td class="col-md-4">Student's House</td>
                                        <td class="col-md-5"><?php echo e($show->stu_house); ?></td>
                                      </tr>
                                      <tr>
                                        <td class="col-md-4">Height</td>
                                        <td class="col-md-5"><?php echo e($show->height); ?></td>
                                      </tr>
                                      <tr>
                                        <td class="col-md-4">Weight</td>
                                        <td class="col-md-5"><?php echo e($show->weight ?? '--'); ?> KG </td>
                                      </tr>
                                      <tr>
                                        <td class="col-md-4">As on Date</td>
                                        <td class="col-md-5">
                                            <?php if(!is_null($show->as_on_date)): ?>
                                            <?php echo e(date('d-m-Y', strtotime($show->as_on_date))); ?>

                                            <?php else: ?>
                                            <?php endif; ?>
                                            </td>
                                      </tr>
                                      
                                    </tbody>
                                  </table>
                                </div>
                              </div>
                            </div>
                          </div>

                        </div>
                      </div>
                    </div>
                  </div>
                  <hr>
                </div>
              </div>
            </div>
          </div>
         
        </div>
      </section>
    </div>
  </main><!-- End #main -->
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/u640337273/domains/btschool.in/public_html/resources/views/school/student-information/student-details-show.blade.php ENDPATH**/ ?>