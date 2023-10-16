<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\School\Dashboard;
use App\Http\Controllers\School\FrontOffice;
use App\Http\Controllers\School\StudentInformation;
use App\Http\Controllers\School\FeesCollection;
use App\Http\Controllers\School\Income;
use App\Http\Controllers\School\Expenses;
use App\Http\Controllers\School\Academics;
use App\Http\Controllers\School\HumanResource;
use App\Http\Controllers\School\SystemSettings;
use App\Http\Controllers\School\Pages;
use App\Http\Controllers\School\Admin_Login;
use App\Http\Controllers\School\HomeWorks;
use App\Http\Controllers\School\FrontCMS;
// ------------------------Site-----------------//
use App\Http\Controllers\Site\Web;
use App\Http\Controllers\School\CSV;
use App\Http\Controllers\School\Report_card;
use App\Http\Controllers\SuperAdmin;




// ------------------- SCHOOL PANEL -----------------------//
Route::prefix('school-management')->middleware('adminlogins')->group(function () {


Route::prefix('panel')->controller(Dashboard::class)->group(function () {
    Route::get('/','index')->name('SCHOOL.Home');

});

// -------------------------------FRONT CMS-------------------------------------//
Route::prefix('front-cms')->controller(FrontCMS::class)->group(function () {
    Route::get('setting','index')->name('SCHOOL.Front.Setting');
    Route::post('setting_data','setting_data')->name('Front.Web.Page.Setting');
    Route::get('gallery','gallery')->name('Front.CMS.Gallery');
    Route::post('gallery_data','gallery_data')->name('Front.Web.Page.Gallery');
    Route::get('gallery_delete/{id}','gallery_delete')->name('Front.Cms.Gallery.Delete');
    Route::get('parents-say','parents_say')->name('Front.CMS.Parents.Say');
    Route::post('parents_say_data','parents_say_data')->name('Front.Web.parents.Data');
    Route::get('parents_say_delete/{id}','parents_say_delete')->name('Parents.Delete');
    Route::get('teachers','teachers')->name('Front.CMS.Teachers');
    Route::post('teachers_data','teachers_data')->name('Front.Web.teacher.Data');
    Route::post('teachers_update/{id}','teachers_update')->name('Front.Web.teacher.update');
    Route::get('teachers_delete/{id}','teachers_delete')->name('Front.Teacher.Delete');
    Route::get('teachers-edit/{id}','teachers_edit')->name('Front.Teacher.Edit');
    Route::get('contect-request','contect_request')->name('Front.CMS.Contect.Req');
    Route::get('contect_request_delete/{id}','contect_request_delete')->name('Contect.Request.Delete');
    Route::get('career-request','career_request')->name('Front.CMS.Career.Req');
    Route::get('career_request_delete/{id}','career_request_delete')->name('Career.Request.Delete');
    Route::get('openings','openings')->name('Front.CMS.Openings');
    Route::post('openings_data','openings_data')->name('Openings.Data');
    Route::post('openings_update/{id}','openings_update')->name('Openings.Update');
    Route::get('openings_delete/{id}','openings_delete')->name('Openings.Delete');
    Route::get('openings_active/{id}','openings_active')->name('Openings.Active');
    Route::get('openings_inactive/{id}','openings_inactive')->name('Openings.InActive');
    Route::get('openings-request-view/{id}','openings_view')->name('Openings.View');
    Route::get('openings_view_delete/{id}','openings_view_delete')->name('Openings.View.Delete');

});

// ------------------------------------------------------------------//
Route::prefix('front-office')->controller(FrontOffice::class)->group(function () {
    Route::get('admission-enquiry','index')->name('SCHOOL.Admission.Enquiry');
    Route::get('visitor-book','book')->name('SCHOOL.Visitor.Book');
    Route::get('phone-call-log','phone')->name('SCHOOL.phone-call-log');
    Route::post('visitor-data','visitor_data')->name('Visitor.DAta');
    Route::get('visitor-delete/{id}','visitor_delete')->name('Visitor.Delete');
    Route::post('phone-call-data','phone_call_data')->name('Phone.Call.Data');
    Route::get('phone-delete/{id}','phone_delete')->name('Phone.Delete');
    Route::post('admission-enquiry','admission_enquiry')->name('Admission.Enquiry');
    Route::get('admission_enquiry_delete/{id}','admission_enquiry_delete')->name('Admission.Enquiry.Delete');
    Route::post('admission_enquiry_update/{id}','admission_enquiry_update')->name('Admission.Update');

    
    Route::get('dd','dd')->name('Update.Subject');

});

Route::prefix('student-information')->controller(StudentInformation::class)->group(function () {
    Route::get('student-details','index')->name('SCHOOL.Student.Details');
    Route::get('student-details-edit/{id}','student_details_edit')->name('SCHOOL.student-details-edit');
    Route::get('student-admission','student_admission')->name('SCHOOL.student-admission');
    Route::get('student-admission-import','student_admission_import')->name('SCHOOL.student-admission-import');
    Route::get('add-class','online_admission')->name('SCHOOL.online-admission');
    Route::get('disabled-students','disabled_students')->name('SCHOOL.disabled-students');
    Route::get('bulk-delete','bulk_delete')->name('SCHOOL.bulk-delete');
    Route::get('student-categories','student_categories')->name('SCHOOL.student-categories');
    Route::get('disabled-reason','disabled_reason')->name('SCHOOL.disabled-reason');
    Route::post('student-admission-data','student_admission_data')->name('SCHOOL.Student.Admission');
    Route::post('add_class','add_class')->name('SCHOOL.ADD.Class');
    Route::post('edit_class/{id}','edit_class')->name('SCHOOL.EDIT.Class');
    Route::post('add_section','add_section')->name('SCHOOL.ADD.Section');
    Route::post('edit_section/{id}','edit_section')->name('SCHOOL.Edit.Section');
    Route::get('delete/{id}','delete_sec')->name('Delete.Section');
    Route::get('deletec/{id}','delete_class')->name('Delete.Class');
    Route::get('student-details-delete/{id}','student_details_delete')->name('SCHOOL.student-details-delete');
    Route::post('student-edit_detatils/{id}','student_edit_detatils')->name('SCHOOL.Student.Admission.Edit');
    Route::get('student-details-page','student_details')->name('Show.Student.Details.filter');
    Route::get('student-details-show/{id}','student_details_show')->name('SCHOOL.student-details-show');
    Route::post('getSection','getSection')->name('getSection');
    Route::post('getSectiondd','getSectiondd')->name('getSectionDD');

    
});




Route::prefix('fees-collection')->controller(FeesCollection::class)->group(function () {
    Route::get('collect-fees','index')->name('SCHOOL.collect-fees');
    Route::get('collect-fees-action/{id}','collect_fees_action')->name('SCHOOL.collect-fees-action');
    Route::get('search-fees-payment','search_fees_payment')->name('SCHOOL.search-fees-payment');
    Route::get('search-due-fees','search_due_fees')->name('SCHOOL.search-due-fees');
    Route::get('fees-master','fees_master')->name('SCHOOL.fees-master');
    Route::get('fees-group','fees_group')->name('SCHOOL.fees-group');
    Route::get('fees-type','fees_type')->name('SCHOOL.fees-type');
    Route::get('class-fees','fees_discount')->name('SCHOOL.fees-discount');
    Route::get('fees-carry-forward','fees_carry_forward')->name('SCHOOL.fees-carry-forward');
    Route::get('fees-reminder','fees_reminder')->name('SCHOOL.fees-reminder');
    Route::get('due-fees-add-fees','due_fees_add_fees')->name('SCHOOL.due-fees-add-fees');
    // ---------------------------------//-------------------------------------------//
    Route::post('collect-fees-data','collect_fees_data')->name('Fees.Collection.Add');
    Route::get('fees-gorup-delete/{id}','fees_gorup_delete')->name('Fees.Group.Delete');
    Route::post('fees-edit-coll/{id}','fees_edit_coll')->name('Fees.edit.Coll');
    Route::post('fees-type-data','fees_type_data')->name('Fees.Type.Add');
    Route::get('fees_type_delete/{id}','fees_type_delete')->name('Fees.Type.Delete');
    Route::post('fees_type_edit/{id}','fees_type_edit')->name('Fees.edit.Type');
    Route::post('fees_discount_add','fees_discount_add')->name('Fees.Discount.Add');
    Route::get('fees_discount_delete/{id}','fees_discount_delete')->name('Fees.Discount.Delete');
    Route::post('fees_discount_edit/{id}','fees_discount_edit')->name('Fees.edit.discount');
    Route::post('fees-master-data','fees_master_data')->name('Fees.master.Data');
    Route::post('collect_fees_datas','collect_fees_datas')->name('Collect.Fees.Data');
    Route::get('collect_fees_delete/{id}','collect_fees_delete')->name('Fees.collect.Delete');
    Route::post('collect_fees_update/{id}','collect_fees_update')->name('Collect.Fees.Update');
    Route::get('master_fees_delete/{id}','master_fees_delete')->name('Fees.Master.Delete');
    Route::post('master_fees_update/{id}','master_fees_update')->name('Fees.Update.Master');
    Route::post('fees_carry_data/{id}','fees_carry_data')->name('Fees.Carry.Data');

    
});

Route::prefix('income')->controller(Income::class)->group(function () {
    Route::get('add-income','index')->name('SCHOOL.add-income');
    Route::get('search-income','search_income')->name('SCHOOL.search-income');
    Route::get('income-head','income_head')->name('SCHOOL.income-head');
    Route::post('income-head-data','income_head_data')->name('Income.Head.Data');
    Route::get('income-head-delete/{id}','income_head_delete')->name('Income.Head.Delete');
    Route::post('add-income-data','add_income_data')->name('ADD.Income.Data');
    Route::post('income_head_update/{id}','income_head_update')->name('Income.head.Update');
    Route::get('add-data-delete/{id}','add_data_delete')->name('Income.Data.Delete');
    Route::post('update-income-data/{id}','update_income_data')->name('Update.Income.Data');

});

Route::prefix('expenses')->controller(Expenses::class)->group(function () {
    Route::get('add-expense','index')->name('SCHOOL.add-expense');
    Route::get('search-expense','search_expense')->name('SCHOOL.search-expense');
    Route::get('expense-head','expense_head')->name('SCHOOL.expense-head');
    Route::post('expense-data','expense_data')->name('Expense.Data');
    Route::get('expense-delete/{id}','expense_delete')->name('Expense.Delete');
    Route::post('expense-update/{id}','expense_update')->name('Expense.Update');
    Route::post('Expense_Data_up/{id}','Expense_Data_up')->name('Update.Expense.Data');
    Route::post('add-expense-data','add_expense_data')->name('ADD.Expense.Data');
    Route::get('expense-data-delete/{id}','expense_data_delete')->name('Expense.Data.Delete');
});


Route::prefix('student-information')->controller(Academics::class)->group(function () {
    Route::get('promote-students','promote_students')->name('SCHOOL.promote-students');
    Route::post('promote_student_data/{id}','promote_student_data')->name('Promote.Students.Data');

});



Route::prefix('human-resource')->controller(HumanResource::class)->group(function () {
    Route::get('staff-directory','index')->name('SCHOOL.staff-directory');
    Route::get('staff-attendance','staff_attendance')->name('SCHOOL.staff-attendance');
    Route::get('payroll','payroll')->name('SCHOOL.payroll');
    Route::get('approve-leave-request','approve_leave_request')->name('SCHOOL.approve-leave-request');
    Route::get('apply-leave','apply_leave')->name('SCHOOL.apply-leave');
    Route::get('leave-type','leave_type')->name('SCHOOL.leave-type');
    Route::get('teachers-rating','teachers_rating')->name('SCHOOL.teachers-rating');
    Route::get('department','department')->name('SCHOOL.department');
    Route::get('disabled-staff','disabled_staff')->name('SCHOOL.disabled-staff');
    Route::get('staff-directory-add-staff','staff_directory_add_staff')->name('SCHOOL.staff-directory-add-staff');
    Route::get('staff-directory-show/{id}','staff_directory_show')->name('SCHOOL.staff-directory-show');
    Route::post('add-leave-type','add_leave_type')->name('Add.Leave.Type');
    Route::get('leave-type-delete/{id}','leave_type_delete')->name('Leave.Type.Delete');
    Route::post('add-leave-type-update/{id}','add_leave_type_update')->name('Add.Leave.Type.Update');
    Route::post('add-department','add_department')->name('Add.Department');
    Route::get('department-delete/{id}','department_delete')->name('Department.Delete');
    Route::post('department-update/{id}','department_update')->name('Department.Update');
    Route::post('leave-request','leave_request')->name('Leave.Request.data');
    Route::get('leave-request-delete/{id}','leave_request_delete')->name('Leave.Request.Delete');
    Route::post('leave_request_up/{id}','leave_request_up')->name('leave_request.Up');
    Route::post('view_request_update/{id}','view_request_update')->name('View.Request.Update');
    Route::post('add_staff','add_staff')->name('Add.Staff');
    Route::get('edit-staff/{id}','edit_staff')->name('SCHOOL.staff-directory-edit-staff');
    Route::post('update_staff/{id}','update_staff')->name('Update.Staff');
    Route::post('attend_staff','attend_staff')->name('Staff.Attend');
    Route::get('attend_staff_delete/{id}','attend_staff_delete')->name('Attendance.Delete');
    Route::post('attend_staff_update/{id}','attend_staff_update')->name('Staff.Attend.Update');
    Route::get('generate-payroll','generate_payroll')->name('SCHOOL.generate-payroll');
    Route::get('staff-attendance-daily','staff_attendance_daily')->name('staff-attendance.Adden');
    
    Route::get('staff-directory-del/{id}','staff_directory_del')->name('SCHOOL.staff-directory-del');


    

});


Route::prefix('Report/Card')->controller(Report_card::class)->group(function () {
    Route::get('report_card','index')->name('SCHOOL.Report.card');
    Route::get('report_add','report_add')->name('admin.School.report.add');
    Route::get('reportview','reportview')->name('SCHOOL.Report.reportview');
    Route::get('viewreport/{id}','viewreport')->name('SCHOOL.viewreport');
    Route::get('report_edit/{id}','report_edit')->name('SCHOOL.Report.report_edit');
    Route::post('Repotcard_up/{id}','Repotcard_up')->name('SCHOOL.Repotcard.up');
    Route::get('student_report_del/{id}','student_report_del')->name('SCHOOL.student_report.del');
    Route::post('school_information_in','school_information_in')->name('SCHOOL.school.information.in');
    Route::post('school_information_up/{id}','school_information_up')->name('SCHOOL.school.information.up');

});

Route::prefix('csv/upload')->controller(CSV::class,)->group(function(){
    Route::get('/file-import','importView')->name('import-view');
    Route::post('/import','import')->name('import');
    Route::get('/export-users','exportUsers')->name('export-users');
});




Route::prefix('reports')->controller(Reports::class)->group(function () {
    Route::get('student-information','index')->name('SCHOOL.student-information');
    Route::get('finance','finance')->name('SCHOOL.finance');
    Route::get('attendance','attendance')->name('SCHOOL.attendance');
    Route::get('examinations','examinations')->name('SCHOOL.examinations');
    Route::get('online-examination','online_examination')->name('SCHOOL.online-examination');
    Route::get('lesson-plan','lesson_plan')->name('SCHOOL.lesson-plan');
    Route::get('human-resource','human_resource')->name('SCHOOL.human-resource');
    Route::get('transport','transport')->name('SCHOOL.transport');
    Route::get('alumni','alumni')->name('SCHOOL.alumni');
    Route::get('user-log','user_log')->name('SCHOOL.user-log');
});






Route::prefix('system-settings')->controller(SystemSettings::class)->group(function () {
    Route::get('general-setting','index')->name('SCHOOL.general-setting');
    Route::post('general_setting_data','general_setting_data')->name('General.Setting.Data');
    Route::get('notification-setting','notification_setting')->name('SCHOOL.notification-setting');
    Route::get('student-profile-update','student_profile_update')->name('SCHOOL.student-profile-update');

});

Route::prefix('pages')->controller(Pages::class)->group(function () {
    Route::get('users-profile','index')->name('SCHOOL.users-profile');
    Route::view('pages-register','school.pages.pages-register')->name('SCHOOL.pages-register');
    Route::view('pages-login','school.pages.pages-login')->name('SCHOOL.pages-login');
    Route::post('profile-update','profile_update')->name('ADMIN.Profile.Update');
    Route::post('profile_change_pass','profile_change_pass')->name('profile.change.pass');

});


});

// ----------------------ADMIN LOGIN---------------------------//

Route::prefix('school')->controller(Admin_Login::class)->group(function () {
    Route::post('super_admin','super_admin')->name('SuperADMIN.Check.Data');
    Route::view('login','school.pages.admin-login')->name('SCHOOL.ADmin.Login');
    Route::post('Check','Check')->name('ADMIN.Check.Data');
    Route::post('forget_admin','forget_admin')->name('ADMIN.Forget');
    Route::get('signout','signout')->name('SignOut.Data');
    Route::view('forget-password','school.pages.forget-password')->name('Admin.Froget.pass');
    Route::post('verify','verify')->name('ADMIN.Check.Verify');
    Route::post('otp','check_otp')->name('ADMIN.Check.otp');
    Route::post('new_pass','new_pass')->name('ADMIN.New.pass');

});

//   --------------------SITE-------------------------------------------//

Route::controller(Web::class)->group(function () {
    Route::get('/','index')->name('Site.Home');
    Route::get('gallery','gallery')->name('Site.gallery');
    Route::get('about','about')->name('Site.About');
    Route::get('teachers','teachers')->name('Site.teacher');
    Route::get('contact','contact')->name('Site.Contact');
    Route::post('contact_request','contact_request')->name('Site.Contect.Request');
    Route::get('career','career')->name('Site.Blog');
    Route::post('career_request','career_request')->name('Site.Career.Request');
    Route::get('career/apply/{id}','career_apply')->name('Career.apply');
    Route::post('career_opening_req','career_opening_req')->name('Site.Openings.Request');

    
});


Route::view('sign-in','site.login.index')->name('Site.Login');
Route::view('forget','site.login.forget')->name('Admin.forgot');
Route::view('admin/login','login')->name('SuperAdmin.Login');

Route::prefix('auth-super-admin-panel')->middleware('super.admin')->group(function () {
Route::controller(SuperAdmin::class)->group(function () {
    Route::get('admin/dashboard','index')->name('SuperAdmin.Home');
    Route::get('admin/users','users')->name('SuperAdmin.Users');
    Route::get('admin/contact','contact')->name('SuperAdmin.contact');
    Route::get('admin/add','Addnew')->name('SuperAdmin.Addnew');
    Route::post('admin/data','data')->name('SuperAdmin.Form.Data');
    Route::get('delete/{id}','delete')->name('Super.Delete.User');
    Route::get('admin/users/edit','edit')->name('Super.edit.User');
    Route::post('admin/update','update')->name('SuperAdmin.Form.Update');
    Route::get('admin/logout','logout')->name('SuperAdmin.Logout');

    
});
});