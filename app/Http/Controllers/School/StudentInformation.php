<?php

namespace App\Http\Controllers\School;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Storage;
use Illuminate\Http\Request;
use App\Models\Stu_Admission;
use App\Models\User;
use App\Models\Add_Class;
use App\Models\Add_Section;
use App\Models\GeneralSetting;
use App\Http\Requests;
use Image;
use Hash;
use Session;
use Mail;
use File;

class StudentInformation extends Controller
{
    public function index(Request $request)
    {
        $ids = auth()->user()->id;
        $data = Add_Class::orderBy('class','asc')->where('user_id',$ids)->get()->sortByDesc('class');
        $sec = Add_Section::orderBy('class','asc')->where('user_id',$ids)->get();
        if ($request['class'] && $request['section']) {
            $show = Stu_Admission::orderBy('id','desc')->where('class',$request['class'])->where('section',$request['section'])->where('user_id',$ids)->where('active_status',1)->get();
        }else{
            $show = Stu_Admission::orderby('id','desc')->where('user_id',$ids)->where('active_status',1)->get();
        } 
        return view('school.student-information.index',compact('show','data','sec'));
    }

    public function student_details_show($id)
    {
        $show = Stu_Admission::find($id);
        return view('school.student-information.student-details-show',compact('show'));
    }

    public function student_details_edit($id)
    {
        $ids = auth()->user()->id;
        $data = Add_Class::orderBy('class','asc')->where('user_id',$ids)->get()->sortByDesc('class');
        $show = Add_Section::orderBy('class','asc')->where('user_id',$ids)->get();
         $add = Stu_Admission::find($id);
        return view('school.student-information.student-details-edit',compact('data','show','add'));
    }

    public function student_admission()
    {
        $ids = auth()->user()->id;
        $data = Add_Class::orderBy('class','asc')->where('user_id',$ids)->get()->sortByDesc('class');
        $show = Add_Section::orderBy('class','asc')->where('user_id',$ids)->get();
        return view('school.student-information.student-admission',compact('data','show'));
    }

    public function student_admission_import()
    {
        return view('school.student-information.student-admission-import');
    }

    public function online_admission()
    {
        $ids = auth()->user()->id;
        $data = Add_Class::orderBy('class','asc')->where('user_id',$ids)->get()->sortByDesc('class');
        $show = Add_Section::orderBy('class','asc')->where('user_id',$ids)->get()->sortByDesc('class');
        return view('school.student-information.online-admission',compact('data','show'));
    }

    public function disabled_students()
    {
        $ids = auth()->user()->id;
        $show = Stu_Admission::orderby('id','desc')->where('active_status',0)->where('user_id',$ids)->get()->sortByDesc('first_name');
        return view('school.student-information.disabled-students',compact('show'));
    }

    public function bulk_delete()
    {
        return view('school.student-information.bulk-delete');
    }

    public function student_categories()
    {
        return view('school.student-information.student-categories');
    }

    public function disabled_reason()
    {
        return view('school.student-information.disabled-reason');
    }


    public function student_admission_data(Request $req)
    {
        $ids = auth()->user()->id;
        // dd($ids);
        $validatedData = $req->validate([
            'email' => 'required|email',
            'student_image' => 'image|mimes:jpg,jpeg,png|max:2048',
        ]);
        $session = GeneralSetting::where('user_id',$ids)->first();
        $all = Stu_Admission::where('user_id',$ids)->where('admission_no',$req['admission_no'])->first();
        $all_cls = Stu_Admission::where('user_id',$ids)->where('class',$req['class'])->where('roll_no',$req['roll_no'])->first();
        // dd($all);
        if(!is_null($all) &&!is_null($all->admission_no))
        {
            return back()->with('error','Addmission no. has already been taken');
        }else{
        if(!is_null($all_cls) && !is_null($all_cls->class) && !is_null($all_cls->roll_no))
        {
            return back()->with('error','Class & Roll no. has already been taken');
        }else{
       if(!is_null($session) && !is_null($session->session)){
        $add = new Stu_Admission;
        $add->user_id = $ids;
        // dd($add);
        $add->admission_no = $req['admission_no'];
        $add->roll_no = $req['roll_no'];
        $add->class = $req['class'];
        $add->section = $req['section'];
        $add->first_name = $req['first_name'];
        $add->last_name = $req['last_name'];
        $add->gender = $req['gender'];
        $add->dob = $req['dob'];
        $add->category = $req['category'];
        $add->religion = $req['religion'];
        $add->caste = $req['caste'];
        $add->mobile_no = $req['mobile_no'];
        $add->email = $req['email'];
        $add->admission_date = $req['admission_date'];
        $add->session = $session['session'];
        if($req->hasfile('student_image')){
            $image = $req->file('student_image');
            $compressedImage = Image::make($image)->resize(100, 100);
            $compressionQuality = 10;
            $compressedImage->encode(null, $compressionQuality); 
            $filename = 'stu' . time() . '.' . $image->getClientOriginalExtension(); 
            Storage::disk('public')->put($filename, $compressedImage->stream());
            $add->student_image = $filename;
        }
        $add->blood_group = $req['blood_group'];
        $add->stu_house = $req['stu_house'];
        $add->height = $req['height'];
        $add->weight = $req['weight'];
        $add->as_on_date = $req['as_on_date'];
        $add->father_name = $req['father_name'];
        $add->father_mobile = $req['father_mobile'];
        $add->father_accu = $req['father_accu'];
        $add->mother_name = $req['mother_name'];
        $add->mother_phone = $req['mother_phone'];
        $add->mother_occu = $req['mother_occu'];
        $add->guardian = $req['guardian'];
        $add->gur_name = $req['gur_name'];
        $add->gur_relation = $req['gur_relation'];
        $add->gur_email = $req['gur_email'];
        $add->gur_phone = $req['gur_phone'];
        $add->gur_occu = $req['gur_occu'];
        $add->gur_address = $req['gur_address'];
        if($add->save())
        {
            return back()->with('success','Added Successfully');
        }else{
            return back()->with('error','Error');
        }
      }else{
        return redirect()->route('SCHOOL.general-setting')->with('error','Session Not Found!');
      }
        }
      }
    }

    public function add_class(Request $req)
    {
        $ids = auth()->user()->id;
        $add = new Add_Class;
        $add->class = $req['class'];
        $add->user_id = $ids;
        if($add->save())
        {
            return back()->with('success','Added Successfully');
        }else{
            return back()->with('error','Error');
        }
    }

    public function add_section(Request $req)
    {
        $ids = auth()->user()->id;
        $add = new Add_Section;
        $add->section = $req['section'];
        $add->class = $req['class'];
        $add->user_id = $ids;
        if($add->save())
        {
            return back()->with('success','Added Successfully');
        }else{
            return back()->with('error','Error');
        }
    }

    public function delete_sec($id){
        $delete = Add_Section::find($id);
        if($delete->delete())
        {
            return back()->with('success','Deleted Successfully');
        }else{
            return back()->with('error','Error');
        }
    }

    public function delete_class($id){
        $delete = Add_Class::find($id);
        if($delete->delete())
        {
            return back()->with('success','Deleted Successfully');
        }else{
            return back()->with('error','Error');
        }
    }


    public function edit_class(Request $req ,$id)
    {
        $add =Add_Class::find($id);
        $add->class = $req['class'];
        if($add->save())
        {
            return back()->with('success','Class Edited Successfully');
        }else{
            return back()->with('error','Error');
        }

    }

    public function edit_section(Request $req ,$id)
    {
        $add =Add_Section::find($id);
        $add->section = $req['section'];
        if($add->save())
        {
            return back()->with('success','Section Edited Successfully');
        }else{
            return back()->with('error','Error');
        }

    }


    
    public function student_details_delete($id){
        $delete = Stu_Admission::find($id);
        if($delete->delete())
        {
            return back()->with('success','Deleted Successfully');
        }else{
            return back()->with('error','Error');
        }
    }

    public function student_edit_detatils(Request $req,$id)
    {

       
        $add =Stu_Admission::find($id);
        $add->admission_no = $req['admission_no'];
        $add->roll_no = $req['roll_no'];
        $add->class = $req['class'];
        $add->section = $req['section'];
        $add->first_name = $req['first_name'];
        $add->last_name = $req['last_name'];
        $add->gender = $req['gender'];
        $add->dob = $req['dob'];
        $add->category = $req['category'];
        $add->religion = $req['religion'];
        $add->caste = $req['caste'];
        $add->mobile_no = $req['mobile_no'];
        $add->email = $req['email'];
        $add->admission_date = $req['admission_date'];
        // if($req->hasfile('student_image'))
        // {
        //     $file = $req->file('student_image');
        //     $extenstion = $file->getClientOriginalExtension();
        //     $filename = time().'.'.$extenstion;
        //     $file->move('public/uploads/students/', $filename);
        //     $add->student_image = $filename;
        // }
        if($req->hasfile('student_image')){
             $image = $req->file('student_image');
            $compressedImage = Image::make($image)->resize(100, 100);
            $compressionQuality = 10;
            $compressedImage->encode(null, $compressionQuality); 
            $filename = 'stu' . time() . '.' . $image->getClientOriginalExtension(); 
            Storage::disk('public')->put($filename, $compressedImage->stream());
            $add->student_image = $filename;
        }
        $add->blood_group = $req['blood_group'];
        $add->stu_house = $req['stu_house'];
        $add->height = $req['height'];
        $add->weight = $req['weight'];
        $add->as_on_date = $req['as_on_date'];
        $add->father_name = $req['father_name'];
        $add->father_mobile = $req['father_mobile'];
        $add->father_accu = $req['father_accu'];
        $add->mother_name = $req['mother_name'];
        $add->mother_phone = $req['mother_phone'];
        $add->mother_occu = $req['mother_occu'];
        $add->guardian = $req['guardian'];
        $add->gur_name = $req['gur_name'];
        $add->gur_relation = $req['gur_relation'];
        $add->gur_email = $req['gur_email'];
        $add->gur_phone = $req['gur_phone'];
        $add->gur_occu = $req['gur_occu'];
        $add->gur_address = $req['gur_address'];
        $add->bank_no = $req['bank_no'];
        $add->bank_name = $req['bank_name'];
        $add->ifsc = $req['ifsc'];
        $add->nin_no = $req['nin_no'];
        $add->lin_no = $req['lin_no'];
        $add->rte = $req['rte'];
        $add->pre_school = $req['pre_school'];
        $add->notes = $req['notes'];
        $add->active_status = $req['active_status'];
        if($add->update())
        {
            return redirect()->route('SCHOOL.Student.Details')->with('success','Edited Successfully');
        }else{
            return back()->with('error','Error');
        }

    }


    public function student_details(Request $req)
    {
        $data = Stu_Admission::orderBy('id','desc')->where('class',$req->class)->orwhere('section',$req->section)->get();

        return view('school.student-information.show-filter',compact('data'));
    }

    public function getSection(Request $request)
    {
        $ids = auth()->user()->id;
        $cid = $request->post('cid');
        $getSubcat = Add_Section::orderBy('class','asc')->where('user_id',$ids)->where('class',$cid)->get();
        $html = '<option value="" required>Select Section</option>';
        foreach ($getSubcat as $list) {
            $html .= '<option value="'. $list->section .'">' . $list->section . '</option>';
        }
        echo $html;
    }

    public function getSectiondd(Request $request)
    {
        $ids = auth()->user()->id;
        $cid = $request->post('cid');
        $getSubcat = Add_Section::orderBy('class','asc')->where('user_id',$ids)->where('class',$cid)->get();
        $html = '<option value="" required>Select Section</option>';
        foreach ($getSubcat as $list) {
            $html .= '<option value="'. $list->section .'">' . $list->section . '</option>';
        }
        echo $html;
    }
}
