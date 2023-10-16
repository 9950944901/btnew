<?php

namespace App\Http\Controllers\School;
use Illuminate\Support\Facades\Storage;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\GeneralSetting;
use App\Http\Requests;
use Image;

class SystemSettings extends Controller
{
    public function index()
    {
        $ids = auth()->user()->id;
        $data =GeneralSetting::where('user_id',$ids)->first();
        return view('school.system-settings.index',compact('data'));
    }

    public function notification_setting()
    {
        return view('school.system-settings.notification-setting');
    }

    public function student_profile_update()
    {
        return view('school.system-settings.student-profile-update');
    }

    public function general_setting_data(Request $request)
    {
        $ids = auth()->user()->id;
        $adds = GeneralSetting::where('user_id',$ids)->first();
        if(!is_null($adds)){
        $add = GeneralSetting::where('user_id',$ids)->first();
        if($request->hasfile('school_name'))
        {
            $image = $request->file('school_name');
            $compressedImage = Image::make($image)->resize(400, 100);
            $compressionQuality = 10;
            $compressedImage->encode(null, $compressionQuality); 
            $filename = 'logo' . time() . '.' . $image->getClientOriginalExtension(); 
            Storage::disk('public')->put($filename, $compressedImage->stream());
            $add->school_name = $filename;
        }
        $add->school_code = $request['school_code'];
        $add->school_phone = $request['school_phone'];
        $add->school_email = $request['school_email'];
        $add->school_address = $request['school_address'];
        $add->session = $request['session'];
        $add->session_month = $request['session_month'];
        if($add->Update())
        {
            return back()->with('success','Updated Successfully');
        }else{
            return back()->with('error','Error');
        }
       }else{
        $add =new GeneralSetting;
        $add->user_id = $ids;
        if($request->hasfile('school_name'))
        {
            $image = $request->file('school_name');
            $compressedImage = Image::make($image)->resize(400, 100);
            $compressionQuality = 10;
            $compressedImage->encode(null, $compressionQuality); 
            $filename = 'logo' . time() . '.' . $image->getClientOriginalExtension(); 
            Storage::disk('public')->put($filename, $compressedImage->stream());
            $add->school_name = $filename;
        }
        $add->school_code = $request['school_code'];
        $add->school_phone = $request['school_phone'];
        $add->school_email = $request['school_email'];
        $add->school_address = $request['school_address'];
        $add->session = $request['session'];
        $add->session_month = $request['session_month'];
        if($add->save())
        {
            return back()->with('success','Added Successfully');
        }else{
            return back()->with('error','Error');
        }
       }
    }
}

