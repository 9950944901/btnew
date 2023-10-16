
<?php $__env->startSection('content'); ?>
<main id="main" class="main">
<?php
use App\Models\GeneralSetting;
$user = auth()->user();
$data =GeneralSetting::where('user_id',$user->id)->first();
?>
    <div class="pagetitle">
      <h1>Dashboard</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="<?php echo e(route('SCHOOL.Home')); ?>">Home</a></li>
          <li class="breadcrumb-item active">Promote Students</li>
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
                <form action="<?php echo e(route('SCHOOL.promote-students')); ?>" method="get">
                  <?php echo csrf_field(); ?>
                <div class="row mb-3">
                  <h5 class="mt-3" style="font-size: 17px;">Select Criteria</h5>
                  <div class="col-lg-4 col-md-4 sol-sm-12">
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
                  <div class="col-lg-4 col-md-4 sol-sm-12">
                    <h6 class="p-2" style="font-size: 14px;">Section</h6>
                    <div class="">
                      <select name="section" id="sectionName" class="form-control neha-text" required>
                        
                      </select>
                    </div>
                  </div>
                  <div class="col-lg-4 col-md-4 sol-sm-12">
                    <div class="p-2 mt-4">
                      <button type="submit" class="btn btn-info"><i class="fa fa-search"></i> Search</button>
                    </div>
                  </div>
                </div>
              </form>
              </div>

             

              <table id="example1" class="table table-bordered table-striped">
                <thead>
                  <tr class="" style="font-size: 13px; color: #012970; ">
                    <th>S No.</th>
                    <th>Admission No.</th>
                    <th>Name</th>
                    <th>Father's Name</th>
                    <th>Date of Birth</th>
                    <th>Current Class</th>
                    <th>Current Section</th>
                    <th>Promote</th>
                  </tr>
                </thead>

                <tbody>
                  <?php $__currentLoopData = $show; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    
                  <tr id="task-1" class="task-list-row test-font" data-task-id="1" data-user="Platinum">
                    <td><?php echo e($loop->iteration); ?></td>
                    <td><?php echo e($value->admission_no); ?></td>
                    <td><?php echo e($value->first_name); ?> <?php echo e($value->last_name); ?></td>
                    <td><?php echo e($value->father_name); ?></td>
                    <td><?php echo e(date('d-m-Y', strtotime($value->dob ))); ?></td>
                    <td><?php echo e($value->class); ?></td>
                    <td><?php echo e($value->section); ?></td>
                    <td>
                        <?php if($data->session == $value->session): ?>
                        <a data-toggle="modal" data-target="#promoteaddModal<?php echo e($value->id); ?>" class="btn btn-info"><i class="fa fa-bullhorn"></i></a>
                        <?php else: ?>
                        <img width="32" height="32" src="https://img.icons8.com/color/32/ok--v1.png" alt="ok--v1"/>
                        <?php endif; ?>
                        </td>
                  </tr>

                  <!-- Modal -->
                  <div class="modal fade" id="promoteaddModal<?php echo e($value->id); ?>" tabindex="-1" role="dialog"
                    aria-labelledby="promoteaddModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                      <div class="modal-content">
                        <div class="modal-header">
                          <h5 class="modal-title" id="leaverequestModalLabel">Promote Students In Next Session</h5>
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                          </button>
                        </div>
                        <div class="modal-body">
                          <form action="<?php echo e(route('Promote.Students.Data',['id'=>$value->id])); ?>" method="post">
                            <?php echo csrf_field(); ?>
                          <div class="row">
                            <div class="col-md-12">
                              <div><b>Admission No: <?php echo e($value->admission_no); ?></b></div>
                              <div><b>Student Name: <?php echo e($value->first_name); ?> <?php echo e($value->last_name); ?></b></div>
                              <div><b>Date of Birth: <?php echo e(date('d-m-Y', strtotime($value->dob ))); ?></b></div>
                              <div><b>Father's Name: <?php echo e($value->father_name); ?></b></div>
                              <hr>
                            </div>
                            
                            
                            <div class="col-md-12">
                              <label for=""><b>Next Session Status</b></label>
                              <div class="">
                                <input type="radio" name="session_status" value="Continue" required> <label>Continue</label> &nbsp;
                                <input type="radio" name="session_status" value="Leave" required> <label>Leave</label> &nbsp;
                              </div>
                            </div>
                            <div class="col-md-12">
                              <label for=""><b>Promote In Session </b></label>
                             <select name="session" class="form-control" required>
                              <option value="">Select</option>
                              <option>2022-23</option>
                              <option>2023-24</option>
                              <option>2024-25</option>
                              <option>2025-26</option>
                             </select>
                            </div>
                            <div class="col-md-12">
                              <label for=""><b>Next Class </b></label>
                             <select name="class" id="classNameDD" class="form-control" required>
                              <option><?php echo e($value->class); ?></option>
                              <?php $__currentLoopData = $class; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $clsss): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                              <option><?php echo e($clsss->class); ?></option>
                              <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                             </select>
                            </div>
                            <!--<div class="col-md-12">-->
                            <!--  <label for=""><b>Next Section </b></label>-->
                            <!--  <select name="section" id="sectionNameDD" class="form-control neha-text" required>-->
                            <!-- </select>-->
                            <!--</div>-->
                            <div class="col-md-12">
                             <button type="submit" class="btn btn-info mt-2">Submit</button>
                            </div>
                          </div>
                        </form>
                        </div>
                      </div>
                    </div>
                  </div>
                  <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                </tbody>
              </table>
  
                  

            </div>
          </div>
        </div>
      </section>
    </div>

  </main><!-- End #main -->
  <script type = "text/javascript">
    jQuery(document).ready(function(){
        jQuery('#classNameDD').change(function(){
          let cid=jQuery(this).val();
          jQuery.ajax({
            url:'<?php echo e(route('getSectionDD')); ?>',
            type:'post',
            data:'cid='+cid+'&_token=<?php echo e(csrf_token()); ?>',
            success:function(result){
              jQuery('#sectionNameDD').html(result)
            }
          });
        });
      });
  </script>
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
<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/u640337273/domains/btschool.in/public_html/resources/views/school/academics/promote-students.blade.php ENDPATH**/ ?>