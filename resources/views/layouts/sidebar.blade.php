<aside id="sidebar" class="sidebar">
    <ul class="sidebar-nav" id="sidebar-nav">
        @php
        use App\Models\GeneralSetting;
        $info = GeneralSetting::where('user_id',auth()->user()->id)->first();
        @endphp
        <li class="nav-item">
            <a class="nav-link text-success">
                <i class="bi bi-calendar-check-fill text-success"></i>
                <span>Session {{ $info->session ?? '' }}</span>
            </a>
        </li><!-- End Dashboard Nav -->
        <li class="nav-item">
            <a class="nav-link " href="{{ route('SCHOOL.Home') }}">
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
                    <a href="{{ route('SCHOOL.Admission.Enquiry') }}">
                        <i class="bi bi-circle"></i><span>Admission Enquiry</span>
                    </a>
                </li>
                <li>
                    <a href="{{ route('SCHOOL.Visitor.Book') }}">
                        <i class="bi bi-circle"></i><span>Visitor Book</span>
                    </a>
                </li>
                <li>
                    <a href="{{ route('SCHOOL.phone-call-log') }}">
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
                    <a href="{{ route('SCHOOL.Student.Details') }}">
                        <i class="bi bi-circle"></i><span>Student Details</span>
                    </a>
                </li>
                <li>
                    <a href="{{ route('SCHOOL.online-admission') }}">
                        <i class="bi bi-circle"></i><span>Add Class & Section</span>
                    </a>
                </li>
                <li>
                    <a href="{{ route('SCHOOL.student-admission') }}">
                        <i class="bi bi-circle"></i><span>Student Admission</span>
                    </a>
                </li>
                <li>
                    <a href="{{ route('SCHOOL.promote-students') }}">
                        <i class="bi bi-circle"></i><span>Promote Students</span>
                    </a>
                </li>
                <li>
                    <a href="{{ route('SCHOOL.disabled-students') }}">
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
                    <a href="{{ route('SCHOOL.collect-fees') }}">
                        <i class="bi bi-circle"></i><span>Collect Fees</span>
                    </a>
                </li>
                <li>
                    <a href="{{ route('SCHOOL.search-fees-payment') }}">
                        <i class="bi bi-circle"></i><span>Search Fees Payment</span>
                    </a>
                </li>
                {{-- <li>
                    <a href="{{ route('SCHOOL.fees-master') }}">
                        <i class="bi bi-circle"></i><span>Fees Master</span>
                    </a>
                </li>
                <li>
                    <a href="{{ route('SCHOOL.fees-group') }}">
                        <i class="bi bi-circle"></i><span>Fees Group</span>
                    </a>
                </li> --}}
                <li>
                    <a href="{{ route('SCHOOL.fees-type') }}">
                        <i class="bi bi-circle"></i><span>Fees Type</span>
                    </a>
                </li>
                <li>
                    <a href="{{ route('SCHOOL.fees-discount') }}">
                        <i class="bi bi-circle"></i><span>Class Fees</span>
                    </a>
                </li>
                <li>
                    <a href="{{ route('SCHOOL.fees-carry-forward') }}">
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
                    <a href="{{ route('SCHOOL.add-expense') }}">
                        <i class="bi bi-circle"></i><span>Add Expense</span>
                    </a>
                </li>
                <li>
                    <a href="{{ route('SCHOOL.search-expense') }}">
                        <i class="bi bi-circle"></i><span>Search Expense</span>
                    </a>
                </li>
                <li>
                    <a href="{{ route('SCHOOL.expense-head') }}">
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
                    <a href="{{ route('SCHOOL.staff-directory') }}">
                        <i class="bi bi-circle"></i><span>Staff Directory</span>
                    </a>
                </li>
                <li>
                    <a href="{{ route('SCHOOL.staff-attendance') }}">
                        <i class="bi bi-circle"></i><span>Staff Attendance</span>
                    </a>
                </li>
                {{-- <li>
                    <a href="{{ route('SCHOOL.approve-leave-request') }}">
                        <i class="bi bi-circle"></i><span>Approve Leave Request</span>
                    </a>
                </li>
                <li>
                    <a href="{{ route('SCHOOL.leave-type') }}">
                        <i class="bi bi-circle"></i><span>Leave Type</span>
                    </a>
                </li> --}}
                <li>
                    <a href="{{ route('SCHOOL.department') }}">
                        <i class="bi bi-circle"></i><span>Department</span>
                    </a>
                </li>
                <li>
                    <a href="{{ route('SCHOOL.disabled-staff') }}">
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
                    <a href="{{ route('SCHOOL.general-setting') }}">
                        <i class="bi bi-circle"></i><span>General Setting</span>
                    </a>
                </li>
            </ul>
        </li>

        {{-- <li class="nav-item">
            <a class="nav-link collapsed" data-bs-target="#icons-nav" data-bs-toggle="collapse" href="#">
                <i class="bi bi-gem"></i><span>Front CMS</span><i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="icons-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                <li>
                    <a href="{{ route('SCHOOL.Front.Setting') }}">
                        <i class="bi bi-circle"></i><span>General Setting</span>
                    </a>
                </li>
                <li>
                    <a href="{{ route('Front.CMS.Gallery') }}">
                        <i class="bi bi-circle"></i><span>Gallery</span>
                    </a>
                </li>
                <li>
                    <a href="{{ route('Front.CMS.Parents.Say') }}">
                        <i class="bi bi-circle"></i><span>Parents Say</span>
                    </a>
                </li>
                <li>
                    <a href="{{ route('Front.CMS.Teachers') }}">
                        <i class="bi bi-circle"></i><span>Teachers</span>
                    </a>
                </li>
                <li>
                    <a href="{{ route('Front.CMS.Contect.Req') }}">
                        <i class="bi bi-circle"></i><span>Contact Request</span>
                    </a>
                </li>
                <li>
                    <a href="{{ route('Front.CMS.Career.Req') }}">
                        <i class="bi bi-circle"></i><span>Career Request</span>
                    </a>
                </li>
                <li>
                    <a href="{{ route('Front.CMS.Openings') }}">
                        <i class="bi bi-circle"></i><span>Openings</span>
                    </a>
                </li>
            </ul>
        </li> --}}
        <li class="nav-item">
            <a class="nav-link collapsed" href="{{ route('SCHOOL.users-profile') }}">
                <i class="bi bi-person"></i>
                <span>Profile</span>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link collapsed signout-confirm" href="{{route('SignOut.Data')}}">
                <i class="bi bi-box-arrow-right"></i>
                <span>Sign Out</span>
            </a>
        </li>
    </ul>
</aside><!-- End Sidebar-->
