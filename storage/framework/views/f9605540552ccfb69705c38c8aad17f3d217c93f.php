
<?php $__env->startSection('content'); ?>
<main id="main" class="main">
    <div class="pagetitle">
      <h1>Dashboard</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="<?php echo e(route('SCHOOL.Home')); ?>">Home</a></li>
          <li class="breadcrumb-item active">Student Admission</li>
        </ol>
      </nav>
    </div>
    <div class="dashboard " >
      <section class="section dashboard">
        <div class="row">
          <div class="card info-card sales-card mt-3">
            <div class="row">
                <div class="col-lg-6 col-md-6 sol-sm-12">
                <form action="<?php echo e(route('import')); ?>" method="POST" enctype="multipart/form-data">
                    <?php echo csrf_field(); ?>
                    <div class="form-group mb-4 mt-5">

                      <?php if(Session::has('import_error')): ?>
                      <?php $__currentLoopData = Session::get('import_error'); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $failure): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                      <div class="alert alert-danger" role="alert">
                        <?php echo e($failure->errors()[0]); ?> at line No.. <?php echo e($failure->row()); ?>

                        </div>
                      <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                      <?php endif; ?>
                        <div class="custom-file text-left">
                            <input type="file" name="filecsv" class="custom-file-input" id="customFile">
                            <label class="custom-file-label" for="customFile">Choose file</label>
                            <span class="text-danger"><?php $__errorArgs = ['filecsv'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> <?php echo e($message); ?>

                                
                            <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?></span>
                        </div>
                    </div>
                    <button class="btn btn-primary"><i class="fa fa-plus"></i> Import Users</button>
                    <a class="btn btn-success" href="<?php echo e(route('export-users')); ?>"><i class="fa fa-download"></i> Export Users</a>
                </form>
              </div>
            </div>
          </div>
          <div class="col-lg-12 col-md-12 col-sm-12">
            <div class="row">
              <div class="card info-card sales-card">
                <form action="<?php echo e(route('SCHOOL.Student.Admission')); ?>" method="post" enctype="multipart/form-data">
                  <?php echo csrf_field(); ?>
                <div class="row">
                  <div class="d-flex justify-content-between p-2">
                    <h5 class="mt-3" style="font-size: 17px;">Student Admission</h5>
                  </div>
                  <hr>
                  <div class="col-lg-3 col-md-3 sol-sm-12">
                    <h6 class="p-2" style="font-size: 14px;">Admission No. <span class="text-danger">*</span></h6>
                    <div class="">
                      <input type="text" pattern="[0-9]*" maxlength="15" required class="form-control neha-text" name="admission_no" value="<?php echo e(old('admission_no')); ?>" id="date1">
                    </div>
                  </div>
                  <div class="col-lg-3 col-md-6 sol-sm-12">
                    <h6 class="p-2" style="font-size: 14px;">Roll No. <span class="text-danger">*</span></h6>
                    <div class="">
                      <input type="text" pattern="[0-9]*" maxlength="15" required class="form-control neha-text" name="roll_no" value="<?php echo e(old('roll_no')); ?>" id="date1">
                    </div>
                  </div>
                  <div class="col-lg-3 col-md-6 sol-sm-12">
                    <h6 class="p-2" style="font-size: 14px;">Class <span class="text-danger">*</span></h6>
                    <div class="">
                      <select required name="class" id="className" class="form-control neha-text">
                        <option value="">Select</option>
                        <?php $__currentLoopData = $data; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?><option value="<?php echo e($value->class); ?>"><?php echo e($value->class); ?></option><?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                      </select>
                    </div>
                  </div>
                  <div class="col-lg-3 col-md-6 sol-sm-12">
                    <h6 class="p-2" style="font-size: 14px;">Section <span class="text-danger">*</span></h6>
                    <div class="">
                      <select required name="section" id="sectionName" class="form-control neha-text">
                      </select>
                    </div>
                  </div>
                  <div class="col-lg-3 col-md-3 sol-sm-12">
                    <h6 class="p-2" style="font-size: 14px;">First Name <span class="text-danger">*</span></h6>
                    <div class="">
                      <input type="text" required oninput="this.value = this.value.replace(/[^a-z.A-Z.]/g, '').replace(/(\..*)\./g, '$1');" class="form-control neha-text" value="<?php echo e(old('first_name')); ?>" name="first_name" id="date1">
                    </div>
                  </div>
                  <div class="col-lg-3 col-md-6 sol-sm-12">
                    <h6 class="p-2" style="font-size: 14px;">Last Name <span class="text-danger">*</span></h6>
                    <div class="">
                      <input required type="text" class="form-control neha-text" value="<?php echo e(old('last_name')); ?>" name="last_name" id="date1">
                    </div>
                  </div>
                  <div class="col-lg-3 col-md-6 sol-sm-12">
                    <h6 class="p-2"  style="font-size: 14px;">Gender <span class="text-danger">*</span></h6>
                    <div class="">
                      <select required name="gender" class="form-control neha-text" >
                        <option value="">Select</option>
                        <option>Male</option>
                        <option>Female</option>
                      </select>
                    </div>
                  </div>
                  <div class="col-lg-3 col-md-6 sol-sm-12">
                    <h6 class="p-2" style="font-size: 14px;">Date of Birth <span class="text-danger">*</span></h6>
                    <div class="">
                      <input required type="date" class="form-control neha-text" value="<?php echo e(old('dob')); ?>" name="dob" id="date1">
                    </div>
                  </div>
                  <div class="col-lg-3 col-md-6 sol-sm-12">
                    <h6 class="p-2" style="font-size: 14px;">Email <span class="text-danger">*</span></h6>
                    <div class="">
                      <input required type="text" name="email" value="<?php echo e(old('email')); ?>" class="form-control neha-text" id="date1">
                    </div>
                  </div>
                  <div class="col-lg-3 col-md-6 sol-sm-12">
                    <h6 class="p-2" style="font-size: 14px;">Mobile No. <span class="text-danger">*</span></h6>
                    <div class="">
                      <input required type="text" minlength="10" maxlength="10" pattern="[0-9]*" name="mobile_no" value="<?php echo e(old('mobile_no')); ?>" class="form-control neha-text" id="date1">
                    </div>
                  </div>
                
                  <div class="col-lg-3 col-md-6 sol-sm-12">
                    <h6 class="p-2" style="font-size: 14px;">Student's Photo/png, jpg/jpeg </h6>
                    <div class="">
                      <input type="file" name="student_image" class="form-control" id="addImage" accept="image/png, image/jpeg">
                      <?php $__errorArgs = ['student_image'];
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
                    <div class="col-lg-3 col-md-6 sol-sm-12">
                    <h6 class="p-2" style="font-size: 14px;">Category</h6>
                    <div class="">
                      <select name="category" class="form-control neha-text" >
                        <option>Student</option>
                        <option>Other</option>
                      </select>
                    </div>
                  </div>
                  <div class="col-lg-3 col-md-6 sol-sm-12">
                    <h6 class="p-2" style="font-size: 14px;">Religion</h6>
                    <div class="">
                      <input type="text" oninput="this.value = this.value.replace(/[^a-z.A-Z.]/g, '').replace(/(\..*)\./g, '$1');" name="religion" value="<?php echo e(old('religion')); ?>" class="form-control neha-text" id="date1">
                    </div>
                  </div>
                  <div class="col-lg-3 col-md-6 sol-sm-12">
                    <h6 class="p-2" style="font-size: 14px;">Caste</h6>
                    <div class="">
                      <input type="text" oninput="this.value = this.value.replace(/[^a-z.A-Z.]/g, '').replace(/(\..*)\./g, '$1');" name="caste" value="<?php echo e(old('caste')); ?>" class="form-control neha-text" id="date1">
                    </div>
                  </div>
                
                
                  <div class="col-lg-3 col-md-6 sol-sm-12">
                    <h6 class="p-2" style="font-size: 14px;">Admission Date <span class="text-danger">*</span></h6>
                    <div class="">
                      <input required type="date" name="admission_date" value="<?php echo e(old('admission_date')); ?>" class="form-control neha-text" id="date1">
                    </div>
                  </div>
                  
                  <div class="col-lg-3 col-md-6 sol-sm-12">
                    <h6 class="p-2" style="font-size: 14px;">Blood Group</h6>
                    <div class="">
                      <select name="blood_group" class="form-control neha-text">
                        <option value="">Select</option>
                        <option>A+</option>
                        <option>O+</option>
                        <option>B+</option>
                        <option>AB+</option>
                        <option>A-</option>
                        <option>O-</option>
                        <option>B-</option>
                        <option>AB-</option>
                      </select>
                    </div>
                  </div>
                  <div class="col-lg-3 col-md-6 sol-sm-12">
                    <h6 class="p-2" style="font-size: 14px;">Student House</h6>
                    <div class="">
                      <textarea type="text" class="form-control neha-text" name="stu_house" id="date1"><?php echo e(old('stu_house')); ?></textarea>
                    </div>
                  </div>
                  <div class="col-lg-3 col-md-6 sol-sm-12">
                    <h6 class="p-2" style="font-size: 14px;">Height</h6>
                    <div class="">
                      <input type="text" value="<?php echo e(old('height')); ?>"  maxlength="5" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" class="form-control neha-text" name="height" id="date1">
                    </div>
                  </div>

                  

                  <div class="col-lg-3 col-md-6 sol-sm-12">
                    <h6 class="p-2" style="font-size: 14px;">Weight</h6>
                    <div class="">
                      <input type="text"  value="<?php echo e(old('weight')); ?>" maxlength="3" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" class="form-control neha-text" name="weight" id="date1">
                    </div>
                  </div>
                  <div class="col-lg-3 col-md-6 sol-sm-12">
                    <h6 class="p-2" style="font-size: 14px;">As on Date</h6>
                    <div class="">
                      <input type="date" class="form-control neha-text" name="as_on_date" id="date1">
                    </div>
                  </div>
                  <hr>
                </div>
                <div class="row">
                  <h5 class="mt-3" style="font-size: 17px;">Parent Guardian Details</h5>
                  <div class="col-lg-3 col-md-3 sol-sm-12">
                    <h6 class="p-2" style="font-size: 14px;"> Father's Name</h6>
                    <div class="">
                      <input type="text" value="<?php echo e(old('father_name')); ?>" class="form-control neha-text" name="father_name" id="date1">
                    </div>
                  </div>
                  <div class="col-lg-3 col-md-6 sol-sm-12">
                    <h6 class="p-2" style="font-size: 14px;"> Father's Phone</h6>
                    <div class="">
                      <input type="text" minlength="10" value="<?php echo e(old('father_mobile')); ?>" maxlength="10"  pattern="[0-9]*" class="form-control neha-text" name="father_mobile" id="date1">
                    </div>
                  </div>
                  <div class="col-lg-3 col-md-6 sol-sm-12">
                    <h6 class="p-2" style="font-size: 14px;"> Father's Occupation</h6>
                    <div class="">
                      <input type="text" value="<?php echo e(old('father_accu')); ?>" class="form-control neha-text" id="date1" name="father_accu">
                    </div>
                  </div>

                  <div class="col-lg-3 col-md-3 sol-sm-12">
                    <h6 class="p-2" style="font-size: 14px;">  Mother's Name</h6>
                    <div class="">
                      <input type="text" value="<?php echo e(old('mother_name')); ?>" class="form-control neha-text" id="date1" name="mother_name">
                    </div>
                  </div>
                  <div class="col-lg-3 col-md-6 sol-sm-12">
                    <h6 class="p-2" style="font-size: 14px;"> Mother's Phone</h6>
                    <div class="">
                      <input type="text" minlength="10" value="<?php echo e(old('mother_phone')); ?>" maxlength="10" pattern="[0-9]*" class="form-control neha-text" id="date1" name="mother_phone">
                    </div>
                  </div>
                  <div class="col-lg-3 col-md-6 sol-sm-12">
                    <h6 class="p-2" style="font-size: 14px;">Mother's Occupation</h6>
                    <div class="">
                      <input type="text" value="<?php echo e(old('mother_occu')); ?>" class="form-control neha-text" id="date1" name="mother_occu">
                    </div>
                  </div>

                  <div class="col-lg-12 col-md-12 sol-sm-12">
                    <h6 class="p-2" style="font-size: 14px;">If Guardian Is</h6>
                    <div class="row">
                      <div class="col-md-4">
                        <div class="checkbox">
                          <input type="radio" value="Father" name="guardian">
                          <label for="op1">Father</label>
                        </div>
                      </div>
                      <div class="col-md-4">
                        <div class="checkbox">
                          <input type="radio" value="Mother" name="guardian">
                          <label for="op2">Mother</label>
                        </div>
                      </div>
                      <div class="col-md-4">
                        <div class="checkbox">
                          <input type="radio" value="Other" name="guardian">
                          <label for="op3">Other</label>
                        </div>
                      </div>
                    </div>
                  </div>

                  <div class="col-lg-3 col-md-3 sol-sm-12">
                    <h6 class="p-2" style="font-size: 14px;">Guardian's Name</h6>
                    <div class="">
                      <input type="text" value="<?php echo e(old('gur_name')); ?>" class="form-control neha-text" id="date1" name="gur_name">
                    </div>
                  </div>
                  <div class="col-lg-3 col-md-6 sol-sm-12">
                    <h6 class="p-2" style="font-size: 14px;">Guardian's Relation</h6>
                    <div class="">
                      <input type="text" oninput="this.value = this.value.replace(/[^a-z.A-Z.]/g, '').replace(/(\..*)\./g, '$1');" value="<?php echo e(old('gur_relation')); ?>" class="form-control neha-text" id="date1" name="gur_relation">
                    </div>
                  </div>
                  <div class="col-lg-3 col-md-6 sol-sm-12">
                    <h6 class="p-2" style="font-size: 14px;">Guardian's Email</h6>
                    <div class="">
                      <input type="email" value="<?php echo e(old('gur_email')); ?>" class="form-control neha-text" id="date1" name="gur_email">
                    </div>
                  </div>
                  <div class="col-lg-3 col-md-6 sol-sm-12">
                    <h6 class="p-2" style="font-size: 14px;">Guardian's Phone</h6>
                    <div class="">
                      <input type="text" value="<?php echo e(old('gur_phone')); ?>" pattern="[0-9]*" minlength="10" maxlength="10" class="form-control neha-text" id="date1" name="gur_phone">
                    </div>
                  </div>
                  <div class="col-lg-3 col-md-6 sol-sm-12">
                    <h6 class="p-2" style="font-size: 14px;">Guardian's Occupation</h6>
                    <div class="">
                      <input type="text" value="<?php echo e(old('gur_occu')); ?>" class="form-control neha-text" id="date1" name="gur_occu">
                    </div>
                  </div>
                  <div class="col-lg-3 col-md-6 sol-sm-12">
                    <h6 class="p-2" style="font-size: 14px;">Guardian's Address</h6>
                    <div class="">
                      <textarea type="text" class="form-control neha-text" id="date1" name="gur_address"><?php echo e(old('gur_address')); ?></textarea>
                    </div>
                  </div>
                  <hr>
                </div>
                <div class="row">
                  <div class="text-center p-3">
                    <button type="submit" class="btn btn-info w-25">Save</button>
                  </div>
                </div>
              </div>
            </form>
            </div>
      </section>
    </div>
  </main>

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
<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/u640337273/domains/btschool.in/public_html/resources/views/school/student-information/student-admission.blade.php ENDPATH**/ ?>