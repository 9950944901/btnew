<?php

namespace App\Http\Controllers\School;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Storage;
use Illuminate\Http\Request;
use App\Models\AddLeaveType;
use App\Models\Department;
use App\Models\LeaveRequest;
use App\Models\AddStaff;
use App\Models\AddendanceStaff;
use App\Models\User;
use App\Http\Requests;
use Image;
use Hash;
use Session;
use Mail;
use File;
use DB;

class HumanResource extends Controller
{
    public function index()
    {
        $ids = auth()->user()->id;
        $show = AddStaff::where('status',1)->where('user_id',$ids)->get()->sortByDesc('first_name');
        return view('school.human-resource.index',compact('show'));
    }

    public function staff_attendance(Request $request)
    {
        $ids = auth()->user()->id;
        $data = AddStaff::where('status',1)->where('user_id',$ids)->get()->sortBy('first_name');
        $filters = [
            'filter_by_staff_id' => $request->input('staff')
        ];
    //    dump($filters);
        if ($request['staff']) {
            $show = DB::table('add_staff')
                    ->join('add_attend_staff', 'add_staff.id', '=', 'add_attend_staff.staff_id')
                    ->select('add_staff.*', 'add_attend_staff.staff_id as stf', 'add_attend_staff.attendance', 'add_attend_staff.desc' , 'add_attend_staff.date', 'add_attend_staff.id')->orderBy('add_attend_staff.id','asc')->where('add_attend_staff.staff_id',$request['staff'])->where('add_staff.user_id',$ids)->where('add_staff.status',1)
                    ->get();
            // dump($show);
        }else{
            $show = DB::table('add_staff')
                        ->join('add_attend_staff', 'add_staff.id', '=', 'add_attend_staff.staff_id')
                        ->select('add_staff.*', 'add_attend_staff.staff_id as stf', 'add_attend_staff.attendance', 'add_attend_staff.desc' , 'add_attend_staff.date', 'add_attend_staff.id')->orderBy('add_attend_staff.id','asc')->where('add_staff.user_id',$ids)->where('add_staff.status',1)
                        ->get();
                        // dump($show);
        }
        return view('school.human-resource.staff-attendance',compact('data','show'));
    }

    public function payroll()
    {
        $data = AddStaff::orderBy('id','desc')->get();
        return view('school.human-resource.payroll',compact('data'));
    }

    public function approve_leave_request()
    {
        $data = AddLeaveType::orderBy('id','desc')->get();
        $show = LeaveRequest::orderBy('id','desc')->get();
        $addleavetype = AddLeaveType::orderBy('id','desc')->get();
        // dd($addleavetype);
        return view('school.human-resource.approve-leave-request',compact('data','show','addleavetype'));
    }

    public function apply_leave()
    {
        return view('school.human-resource.apply-leave');
    }

    public function leave_type()
    {
        $data = AddLeaveType::orderBy('id','desc')->get();
     
        return view('school.human-resource.leave-type',compact('data'));
    }

    public function teachers_rating()
    {
        return view('school.human-resource.teachers-rating');
    }

    public function department()
    {
        $ids = auth()->user()->id;
        $show = Department::orderBy('id','desc')->where('user_id',$ids)->get();
        return view('school.human-resource.department',compact('show'));
    }

    public function disabled_staff()
    {
        $ids = auth()->user()->id;
        $show = AddStaff::where('user_id',$ids)->where('status',0)->get()->sortByDesc('first_name');
        return view('school.human-resource.disabled-staff',compact('show'));
    }

    public function staff_directory_add_staff()
    {
        $ids = auth()->user()->id;
        $count = AddStaff::where('user_id',$ids)->count();
        $show = Department::orderBy('id','desc')->where('user_id',$ids)->get();
        return view('school.human-resource.staff-directory-add-staff',compact('show','count'));
    }


    public function staff_directory_show($id)
    {
        $show =AddStaff::find($id);
        return view('school.human-resource.staff-directory-show',compact('show'));
    }

    public function add_leave_type(Request $request)
    {
        $add =new AddLeaveType;
        $add->name = $request['name'];
        if($add->save()){
            return back()->with('success','Added Successfully');
        }else{
            return back()->with('error','Error');
        }
    }

    public function leave_type_delete($id)
    {
        $delete = AddLeaveType::find($id);
        if($delete->delete())
        {
            return back()->with('success','Deleted Successfully');
        }else{
            return back()->with('error','Error');
        }
    }

    public function add_leave_type_update(Request $request , $id)
    {
        $add =AddLeaveType::find($id);
        $add->name = $request['name'];
        if($add->update()){
            return back()->with('success','Updated Successfully');
        }else{
            return back()->with('error','Error');
        }
    }

    public function add_department(Request $request)
    {
        $ids = auth()->user()->id;
        $add =new Department;
        $add->user_id = $ids;
        $add->name = $request['name'];
        if($add->save()){
            return back()->with('success','Added Successfully');
        }else{
            return back()->with('error','Error');
        }
    }

    public function department_delete($id)
    {
        $delete = Department::find($id);
        if($delete->delete())
        {
            return back()->with('success','Deleted Successfully');
        }else{
            return back()->with('error','Error');
        }
    }

    public function department_update(Request $request , $id)
    {
        $add = Department::find($id);
        $add->name = $request['name'];
        if($add->update()){
            return back()->with('success','Updated Successfully');
        }else{
            return back()->with('error','Error');
        }
    }

    public function leave_request(Request $request)
    {
        $add =new LeaveRequest;
        $add->role = $request['role'];
        $add->name = $request['name'];
        $add->date = $request['date'];
        $add->leave_type = $request['leave_type'];
        $add->from_date = $request['from_date'];
        $add->todate = $request['todate'];
        $add->reason = $request['reason'];
        $add->note = $request['note'];
        $add->same = $request['same'];
        if($request->hasfile('document'))
        {
            $file = $request->file('document');
            $extenstion = $file->getClientOriginalExtension();
            $filename = time().'.'.$extenstion;
            $file->move('public/uploads/leavrequest/', $filename);
            $add->document = $filename;
        }
        if($add->save()){
            return back()->with('success','Added Successfully');
        }else{
            return back()->with('error','Error');
        }
    }

    public function leave_request_up(Request $request,$id)
    {
        $add = LeaveRequest::find($id);
        $add->role = $request['role'];
        $add->name = $request['name'];
        $add->date = $request['date'];
        $add->leave_type = $request['leave_type'];
        $add->from_date = $request['from_date'];
        $add->todate = $request['todate'];
        $add->reason = $request['reason'];
        $add->note = $request['note'];
        $add->same = $request['same'];
        if($request->hasfile('document'))
        {
            $file = $request->file('document');
            $extenstion = $file->getClientOriginalExtension();
            $filename = time().'.'.$extenstion;
            $file->move('public/uploads/leavrequest/', $filename);
            $add->document = $filename;
        }
        if($add->save()){
            return back()->with('success','Added Successfully');
        }else{
            return back()->with('error','Error');
        }
    }
    

    public function leave_request_delete($id)
    {
        $delete = LeaveRequest::find($id);
        if($delete->delete())
        {
            return back()->with('success','Deleted Successfully');
        }else{
            return back()->with('error','Error');
        }
    }

    public function view_request_update(Request $request , $id)
    {
        $add = LeaveRequest::find($id);
        $add->same = $request['same'];
        if($add->update()){
            return back()->with('success','Updated Successfully');
        }else{
            return back()->with('error','Error');
        }

    }

    public function add_staff(Request $req)
    { 
        $ids = auth()->user()->id;
        $validatedData = $req->validate([
            'email' => 'required|email'
        ]);
        $add =new AddStaff;
        $add->user_id = $ids;
        $add->staff_id = $req['staff_id'];
        $add->role = $req['role'];
        $add->designation = $req['designation'];
        $add->department = $req['department'];
        $add->firstname = $req['firstname'];
        $add->lastname = $req['lastname'];
        $add->father_name = $req['father_name'];
        $add->mother_name = $req['mother_name'];
        $add->email = $req['email'];
        $add->gender = $req['gender'];
        $add->dob = $req['dob'];
        $add->joining_date = $req['joining_date'];
        $add->phone = $req['phone'];
        $add->contact_no = $req['contact_no'];
        $add->marital_status = $req['marital_status'];
        if($req->hasfile('staff_image'))
        {
            $image = $req->file('staff_image');
            $compressedImage = Image::make($image)->resize(100, 100);
            $compressionQuality = 10;
            $compressedImage->encode(null, $compressionQuality); 
            $filename = 'staff' . time() . '.' . $image->getClientOriginalExtension(); 
            Storage::disk('public')->put($filename, $compressedImage->stream());
            $add->staff_image = $filename;
        }
        $add->cadd = $req['cadd'];
        $add->padd = $req['padd'];
        $add->qualification = $req['qualification'];
        $add->work_exp = $req['work_exp'];
        $add->note = $req['note'];
        if($add->save())
        {
            return redirect()->route('SCHOOL.staff-directory')->with('success','Added Successfully');
        }else{
            return back()->with('error','Error');
        }

    }

    public function edit_staff($id)
    {
        $ids = auth()->user()->id;
        $show = Department::orderBy('id','desc')->where('user_id',$ids)->get();
        $add = AddStaff::find($id);
        return view('school.human-resource.edit-staff',compact('show','add'));
    }

function staff_directory_del($id){

    $del = AddStaff::find($id);
    
    if ($del->delete()) {
        return back()->with('success','deleted record Successfully');
    } else {
        return back()->with('error','Error');
    }
    
}


    public function update_staff(Request $req , $id)
    {
        // dd($req->input());
        $add =AddStaff::find($id);
        $add->staff_id = $req['staff_id'];
        $add->role = $req['role'];
        $add->designation = $req['designation'];
        $add->department = $req['department'];
        $add->firstname = $req['firstname'];
        $add->lastname = $req['lastname'];
        $add->father_name = $req['father_name'];
        $add->mother_name = $req['mother_name'];
        $add->gender = $req['gender'];
        $add->dob = $req['dob'];
        $add->joining_date = $req['joining_date'];
        $add->phone = $req['phone'];
        $add->contact_no = $req['contact_no'];
        $add->marital_status = $req['marital_status'];
        $add->status = $req['status'];
        if($req->hasfile('staff_image'))
        {
            $image = $req->file('staff_image');
            $compressedImage = Image::make($image)->resize(100, 100);
            $compressionQuality = 10;
            $compressedImage->encode(null, $compressionQuality); 
            $filename = 'staff' . time() . '.' . $image->getClientOriginalExtension(); 
            Storage::disk('public')->put($filename, $compressedImage->stream());
            $add->staff_image = $filename;
        }
        $add->cadd = $req['cadd'];
        $add->padd = $req['padd'];
        $add->qualification = $req['qualification'];
        $add->work_exp = $req['work_exp'];
        $add->note = $req['note'];
        if($add->update())
        {
            return redirect()->route('SCHOOL.staff-directory')->with('success','Updated Successfully');
        }else{
            return back()->with('error','Error');
        }
    }














    function attend_staff(Request $request)
    {
        $ids = auth()->user()->id;
        $show = AddStaff::where('status',1)->where('user_id',$ids)->get()->sortBy('first_name');
        $dddt = AddendanceStaff::where('user_id',$ids)->where('date',$request['date'])->first();
        // dd($dddt);
        if(is_null($dddt)){
            foreach ($request->attendance as $staffid => $attendence) {
            if($attendence == 'Present') {
                $attendence_status = "Present";
            } else if( $attendence == 'Absent' ){
                $attendence_status = "Absent";
            }else if($attendence == 'Late'){
            $attendence_status = "Late";
            }else if($attendence == 'Half Day'){
                $attendence_status = "Half Day";
            }
            $add = new AddendanceStaff;
            $add->staff_id =  $staffid;
            $add->attendance =  $attendence;
            $add->user_id = $ids; 
            $add->date = $request['date'];
            $add->save();
        }
        return redirect()->route('SCHOOL.staff-attendance')->with('success','Added Successfully');
       }else{
        return back()->with('error','Attendance for '.$dddt->date.' has already been taken');
       }
    }











    public function attend_staff_delete($id)
    {
        $delete = AddendanceStaff::find($id);
        if($delete->delete())
        {
            return back()->with('success','Deleted Successfully');
        }else{
            return back()->with('error','Error');
        }
    }

    public function attend_staff_update(Request $request , $id)
    {     
        // dd($request->input());
        $add = AddendanceStaff::find($id);
        $add->staff_id = $request['staff_id'];
        $add->attendance = $request['attendance'];
        $add->desc = $request['desc'];
        if($add->update()){
            return back()->with('success','Updated Successfully');
        }else{
            return back()->with('error','Error');
        }
    }

    public function generate_payroll()
    {
        return view('school.human-resource.generate-payroll');
    }

    public function staff_attendance_daily()
    {
        $ids = auth()->user()->id;
        $show = AddStaff::where('status',1)->where('user_id',$ids)->get()->sortBy('first_name');
        return view('school.human-resource.addent',compact('show'));
    }

}
