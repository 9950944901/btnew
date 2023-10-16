<?php

namespace App\Http\Controllers\School;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Stu_Admission;
use App\Models\User;
use App\Models\Add_Class;
use App\Models\Add_Section;
use App\Models\GeneralSetting;
use App\Models\FeesCollect;
use Carbon\Carbon;
use Hash;
use Session;
use Mail;
use File;

class Dashboard extends Controller
{
    public function index()
    {
        $id = auth()->user()->id;
        $session = GeneralSetting::where('user_id',$id)->first();
        $total_student = Stu_Admission::where('active_status',1)->where('user_id',$id)->count();
        if(!is_null($session)){
        $tot_session_stu = Stu_Admission::where('active_status',1)->where('user_id',$id)->where('session',($session['session'] ?? '0'))->count();
        $total_fees = FeesCollect::where('session',$session['session'])->where('user_id',$id)->sum('total');
        }else{
        $tot_session_stu = Stu_Admission::where('active_status',1)->where('user_id',$id)->count();
        $total_fees = FeesCollect::where('user_id',$id)->sum('total');
        }
        $today_total = FeesCollect::whereDate('created_at',Carbon::today()->format('Y-m-d'))->where('user_id',$id)->sum('total');
        // dd($today_total);
        return view('school.dashboard.index',compact('total_student','tot_session_stu','total_fees','today_total'));
    }

}
