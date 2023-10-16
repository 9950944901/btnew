<?php

namespace App\Http\Controllers\School;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\User;
use App\Models\AdminLogin;
use Hash;
use Session;
use App\Mail\DemoMail;
use Carbon\Carbon;
use Mail;
use File;


class Admin_Login extends Controller
{
  
    public function Check(Request $request)
    {
        $validatedData = $request->validate([
            'password' => 'required|min:6|max:15',
            'email' => 'required'
        ]);
        $user = User::where('email','=',$request->email)->where('conform_password',$request['password'])->first();
        $credentials = $request->only('email', 'password');
        if(!is_null($user))
        {
          $user_block = (int)$user->user_block;
          $start_date = $user->start_date;
          $end_date = $user->end_date;
          $today = Carbon::now();
          if($start_date <= $today && $end_date >= $today){
          if($user_block == 0){
            if(Auth::attempt($credentials)) {
              $request->session()->put('ADMINSET',$user->email);
              $request->session()->put('ADMINDATA',$user->id);
              return redirect()->route('SCHOOL.Home')->with('success','Signed In Successfully');
            }else{
              return back()->with('error','Login details are not valid');
            }
          }else{
            return back()->with('error','Your account has been blocked!');
          }
          }else{
            return back()->with('error','Your plan has been expired! Please contact 9116611645');
          }
        }else{
          return back()->with('error','Login details are not valid!');
        }
       
    }

    // Super Admin //
    public function super_admin(Request $request)
    {

        $validatedData = $request->validate([
            'password' => 'required|min:6|max:15',
            'email' => 'required'
        ]);
        if('amit.kumar@brixcodetechnologies.com' == $request->email && 'Amit@911#66' == $request->password)
        {
          $request->session()->put('SuperAdmin',$request->email);
          $request->session()->put('SuperAdminPAss',$request->password);
          return redirect()->route('SuperAdmin.Home')->with('success','Signed In Successfully');
        }else{
          return back()->with('error','Login details are not valid');
        }
    }

    public function signout()
    {
        Session::flush();
        Auth::logout();
        return Redirect()->route('Site.Login')->with('success','Signed Out Successfully');
    }

    public function forget_admin(Request $request)
    {
      $validatedData = $request->validate([
            'email' => 'required|email'
        ]);
        $result = User::where('email',$request['email'])->first();
        if(!is_null($result)){
          $details = [
          'title' => 'Mail from your registered account Password',
          'body' =>   "your password is : ".$result->conform_password
         ];
            Mail::to($result->email)->send(new DemoMail($details));
            return redirect()->back()->with('success','Email Sent Successfully');;
        }
        else{
        return back()->with('error','Email Not Verified');
        }
    }





    public function verify(Request $request)
    {
        $key = mt_rand(100000,999999);
        $details = [
          'title' => 'Mail From Forget Password',
          'body' =>   $key
      ];
          $data = $request->input();
        $key_expire = date("Y-m-d H:i:s", strtotime("+30 minutes"));
        $result = User::where('email',$data['email'] , $key_expire)->where('role',1)->get()->first();
        // dd($result);
        if($result){
          if($data['email'] == $result->email)
          {
            $add_info =User::where('email',$result->email)->where('role',1)->get()->first();
            $add_info->email = $request->input('email');
            $add_info->otp = $key;
            session()->put('verify_email',$add_info->email);
            $add_info->update();
            Mail::to($request->input('email'))->send(new DemoMail($details));
              return redirect()->back()->with('opt_modal','OTP Sent Successfully');;
          }else{
          return back()->with('error','Email Not Verified');
          }
        }
         else{
          return back()->with('error','Email Not Verified');
         }
    }

    public function check_otp(Request $request)
    {
        $request->validate([
            'otp' => 'required|min:6|max:6',
        ]);
            $data = $request->input();
            // dd($data);
            $email = session()->get('verify_email');
            $result = User::where('otp',$data['otp'])->where('email',$email)->get()->first();
            if($result){
              if($data['otp'] == $result->otp)
              {
                session()->put('forget_otp',$result->otp);
                return back()->with('opt_modal','OTP Verified Successfully');
              }else{
              return back()->with('error_otp_check','Enter A Valid OTP');
              }
            }
             else{
              return back()->with('error_otp_check','Enter A Valid OTP');
             }
    }

    public function new_pass(Request $request)
    {
        $validatedData = $request->validate([
            'password' => 'required|min:6|max:15|same:conform_password',
            'conform_password' => 'required|min:6|max:15'
        ]);
       if($email = session()->get('verify_email'))
       {     
        $edit_pass =User::where('email',$email)->get()->first();
         $edit_pass->password = Hash::make($request['password']);
         $edit_pass->conform_password = $request['conform_password'];
        if($edit_pass->update())
        {
          session()->flash('verify_email');
          session()->flash('forget_otp');
          return redirect()->route('SCHOOL.ADmin.Login')->with('success','Password Updated Successfully');
        }else{
          return back()->with('error','error');
        }
        }else{
            return back()->with('error','error');  
        }
    }
}
