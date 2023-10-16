<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Contact_Request;
use Hash;
use Carbon\Carbon;
use Session;

class SuperAdmin extends Controller
{
    public function index()
    {
        $count = User::count();
        return view('super-admin.index',compact('count'));
    }
    public function contact()
    {
        $data = Contact_Request::orderBy('id','desc')->get();
        return view('super-admin.contact',compact('data'));
    }
    public function users()
    {
        $data = User::orderBy('id','desc')->get();
        return view('super-admin.users',compact('data'));
    }
    public function Addnew()
    {
        return view('super-admin.add');
    }
    public function data(Request $request)
    {
        $this->validate($request,[
         'school_name'=>'required',
         'contact_person_name'=>'required',
         'mobile_no'=>'required',
         'email'=>'required|email|unique:users',
         'password'=>'required|min:6|max:15',
         'confirm_password'=>'required|same:password|min:6|max:15',
         'address'=>'required',
         'plan_type'=>'required',
      ]);
        $sch_id = rand(100000,999999);
        $date = Carbon::now();
        $dates = (int)$request['plan_type'];
        $add = new User;
        $add->rand_id = 'BTS'.$sch_id;
        $add->school_name = $request['school_name'];
        $add->name = $request['contact_person_name'];
        $add->phone = $request['mobile_no'];
        $add->email = $request['email'];
        $add->password = Hash::make($request['password']);
        $add->conform_password = $request['confirm_password'];
        $add->add = $request['address'];
        $add->plan_type = $request['plan_type'];
        $add->start_date = Carbon::now();
        $add->end_date = $date->addDays($dates);
        if($add->save())
        {
            return back()->with('success','Added Successfully');
        }else{
            return back()->with('error','Error');
        }
    }

    public function delete($id){
        $delete = User::find($id);
        if($delete->delete())
        {
            return back()->with('success','Deleted Successfully');
        }else{
            return back()->with('error','Error');
        }
    }

    public function edit(Request $req)
    {
        $edit = User::find($req->id);
        return view('super-admin.edit',compact('edit'));
    }
    public function update(Request $request)
    {
        $add = User::find($request->id);
        $this->validate($request,[
         'school_name'=>'required',
         'contact_person_name'=>'required',
         'mobile_no'=>'required',
         'email'=>'required|email|unique:users,email,'.$add->id,
         'password'=>'required|min:6|max:15',
         'confirm_password'=>'required|same:password|min:6|max:15',
         'address'=>'required',
      ]);
        // $date = Carbon::now();
        // $dates = (int)$request['plan_type'];
        $add->school_name = $request['school_name'];
        $add->name = $request['contact_person_name'];
        $add->phone = $request['mobile_no'];
        $add->email = $request['email'];
        $add->password = Hash::make($request['password']);
        $add->conform_password = $request['confirm_password'];
        $add->add = $request['address'];
        $add->user_block = $request['user_block'];
        // $add->plan_type = $request['plan_type'];
        // $add->start_date = Carbon::now();
        // $add->end_date = $date->addDays($dates);
        if($add->update())
        {
            return redirect()->route('SuperAdmin.Users')->with('success','Updated Successfully');
        }else{
            return back()->with('error','Error');
        }
    }

    public function logout()
    {
        Session::flush();
        return Redirect()->route('SuperAdmin.Login')->with('success','Logged out Successfully');
    }
}
