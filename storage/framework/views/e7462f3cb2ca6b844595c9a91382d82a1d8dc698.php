<aside id="sidebar" class="sidebar">
    <ul class="sidebar-nav" id="sidebar-nav">
        <?php
        use App\Models\GeneralSetting;
        $info = GeneralSetting::where('user_id',auth()->user()->id)->first();
        ?>
        <li class="nav-item">
            <a class="nav-link text-success">
                <i class="bi bi-calendar-check-fill text-success"></i>
                <span>Session <?php echo e($info->session ?? ''); ?></span>
            </a>
        </li><!-- End Dashboard Nav -->
        <li class="nav-item">
            <a class="nav-link " href="<?php echo e(route('SCHOOL.Home')); ?>">
                <i class="bi bi-grid"></i>
                <span>Dashboard</span>
            </a>
        </li><!-- End Dashboard Nav -->
        <li class="nav-item">
            <a class="nav-link collapsed" data-bs-target="#frontoffice-nav" data-bs-toggle="collapse" href="#">
                <i class="fa fa-university"></i>
                <span>Front Office</span><i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="frontoffice-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav">
                <li>
                    <a href="<?php echo e(route('SCHOOL.Admission.Enquiry')); ?>">
                        <i class="bi bi-circle"></i><span>Admission Enquiry</span>
                    </a>
                </li>
                <li>
                    <a href="<?php echo e(route('SCHOOL.Visitor.Book')); ?>">
                        <i class="bi bi-circle"></i><span>Visitor Book</span>
                    </a>
                </li>
                <li>
                    <a href="<?php echo e(route('SCHOOL.phone-call-log')); ?>">
                        <i class="bi bi-circle"></i><span>Phone Call Log</span>
                    </a>
                </li>

            </ul>
        </li>
        <li class="nav-item">
            <a class="nav-link collapsed" data-bs-target="#studentinformation-nav" data-bs-toggle="collapse" href="#">
                <i class="fa fa-address-card"></i>
                <span>Student Information</span><i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="studentinformation-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                <li>
                    <a href="<?php echo e(route('SCHOOL.Student.Details')); ?>">
                        <i class="bi bi-circle"></i><span>Student Details</span>
                    </a>
                </li>
                <li>
                    <a href="<?php echo e(route('SCHOOL.online-admission')); ?>">
                        <i class="bi bi-circle"></i><span>Add Class & Section</span>
                    </a>
                </li>
                <li>
                    <a href="<?php echo e(route('SCHOOL.student-admission')); ?>">
                        <i class="bi bi-circle"></i><span>Student Admission</span>
                    </a>
                </li>
                <li>
                    <a href="<?php echo e(route('SCHOOL.promote-students')); ?>">
                        <i class="bi bi-circle"></i><span>Promote Students</span>
                    </a>
                </li>
                <li>
                    <a href="<?php echo e(route('SCHOOL.disabled-students')); ?>">
                        <i class="bi bi-circle"></i><span>Disabled Students</span>
                    </a>
                </li>
            </ul>
        </li>
        <li class="nav-item">
            <a class="nav-link collapsed" data-bs-target="#feescollection-nav" data-bs-toggle="collapse" href="#">
                <i class="fa fa-newspaper-o"></i>
                <span>Fees Collection</span><i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="feescollection-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                <li>
                    <a href="<?php echo e(route('SCHOOL.collect-fees')); ?>">
                        <i class="bi bi-circle"></i><span>Collect Fees</span>
                    </a>
                </li>
                <li>
                    <a href="<?php echo e(route('SCHOOL.search-fees-payment')); ?>">
                        <i class="bi bi-circle"></i><span>Search Fees Payment</span>
                    </a>
                </li>
                
                <li>
                    <a href="<?php echo e(route('SCHOOL.fees-type')); ?>">
                        <i class="bi bi-circle"></i><span>Fees Type</span>
                    </a>
                </li>
                <li>
                    <a href="<?php echo e(route('SCHOOL.fees-discount')); ?>">
                        <i class="bi bi-circle"></i><span>Class Fees</span>
                    </a>
                </li>
                <li>
                    <a href="<?php echo e(route('SCHOOL.fees-carry-forward')); ?>">
                        <i class="bi bi-circle"></i><span>Fees Carry Forward</span>
                    </a>
                </li>

            </ul>
        </li>
        <li class="nav-item">
            <a class="nav-link collapsed" data-bs-target="#expenses-nav" data-bs-toggle="collapse" href="#">
                <i class="fa fa-list-alt"></i>
                <span>Expenses</span><i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="expenses-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                <li>
                    <a href="<?php echo e(route('SCHOOL.add-expense')); ?>">
                        <i class="bi bi-circle"></i><span>Add Expense</span>
                    </a>
                </li>
                <li>
                    <a href="<?php echo e(route('SCHOOL.search-expense')); ?>">
                        <i class="bi bi-circle"></i><span>Search Expense</span>
                    </a>
                </li>
                <li>
                    <a href="<?php echo e(route('SCHOOL.expense-head')); ?>">
                        <i class="bi bi-circle"></i><span>Expense Head</span>
                    </a>
                </li>

            </ul>
        </li>
        <li class="nav-item">
            <a class="nav-link collapsed" data-bs-target="#humanresource-nav" data-bs-toggle="collapse" href="#">
                <i class="bi bi-menu-button-wide"></i><span>Human Resource</span><i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="humanresource-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                <li>
                    <a href="<?php echo e(route('SCHOOL.staff-directory')); ?>">
                        <i class="bi bi-circle"></i><span>Staff Directory</span>
                    </a>
                </li>
                <li>
                    <a href="<?php echo e(route('SCHOOL.staff-attendance')); ?>">
                        <i class="bi bi-circle"></i><span>Staff Attendance</span>
                    </a>
                </li>
                
                <li>
                    <a href="<?php echo e(route('SCHOOL.department')); ?>">
                        <i class="bi bi-circle"></i><span>Department</span>
                    </a>
                </li>
                <li>
                    <a href="<?php echo e(route('SCHOOL.disabled-staff')); ?>">
                        <i class="bi bi-circle"></i><span>Disabled Staff</span>
                    </a>
                </li>

            </ul>
        </li>

        <li class="nav-item">
            <a class="nav-link collapsed" data-bs-target="#systemsettings-nav" data-bs-toggle="collapse" href="#">
                <i class="fa fa-cogs"></i>
                <span>System Settings</span><i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="systemsettings-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                <li>
                    <a href="<?php echo e(route('SCHOOL.general-setting')); ?>">
                        <i class="bi bi-circle"></i><span>General Setting</span>
                    </a>
                </li>
            </ul>
        </li>

        
        <li class="nav-item">
            <a class="nav-link collapsed" href="<?php echo e(route('SCHOOL.users-profile')); ?>">
                <i class="bi bi-person"></i>
                <span>Profile</span>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link collapsed signout-confirm" href="<?php echo e(route('SignOut.Data')); ?>">
                <i class="bi bi-box-arrow-right"></i>
                <span>Sign Out</span>
            </a>
        </li>
    </ul>
</aside><!-- End Sidebar-->
<?php /**PATH /home/u640337273/domains/btschool.in/public_html/resources/views/layouts/sidebar.blade.php ENDPATH**/ ?>