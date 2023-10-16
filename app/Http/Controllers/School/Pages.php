<?php

namespace App\Http\Controllers\School;
use Illuminate\Support\Facades\Storage;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\User;
use Hash;
use Session;
use App\Mail\DemoMail;
use App\Http\Requests;
use Image;
use Mail;
use File;

class Pages extends Controller
{
    public function index()
    {
        return view('school.pages.index');
    }

    public function profile_update(Request $request)
    {
            $id = auth()->user()->id;
            $request->validate([
              'email' => 'required|email|unique:users,email,'.$id,
            ]);
          $user = auth()->user();
          $edit = User::where('id',$user->id)->get()->first();
          $edit->name =$request['name'];
          $edit->about =$request['about'];
          $edit->school_name =$request['school_name'];
          $edit->job =$request['job'];
          $edit->country =$request['country'];
          $edit->add =$request['add'];
          $edit->phone =$request['phone'];
          $edit->email =$request['email'];
          if($request->hasfile('image'))
          {
            if(File::exists(public_path('/uploads/school/'.$user->image))){
              File::delete(public_path('/uploads/school/'.$user->image));
          }else{}
            $image = $request->file('image');
            $compressedImage = Image::make($image)->resize(250, 250);
            $compressionQuality = 10;
            $compressedImage->encode(null, $compressionQuality); 
            $filename = 'profile' . time() . '.' . $image->getClientOriginalExtension(); 
            Storage::disk('public')->put($filename, $compressedImage->stream());
            $edit->image = $filename;
          }else{
          }
          if($edit->save()){
              return back()->with('success','Profile Updated Successfully');
          }else{
              return back()->with('error','Error');
          }
    }


function profile_change_pass(Request $request){

            $request->validate([
              'password' => 'required|min:6|max:15',
              'new_password' => 'required|min:6|max:15|same:re_enter_password',
              're_enter_password' => 'required|min:6|max:15',
            ]);

$user = auth()->user();

$pass = User::where('id',$user->id)->get()->first();

$chang = $request->only('email','password');

if(Auth::attempt($chang)){
 $role = (int)$user->role;
 if($role === 1){
    $ch = User::where('id',$user->id)->get()->first();
    $ch->password = Hash::make($request['new_password']);
    $ch->conform_password = $request['re_enter_password'];
    $ch->update();
    return back()->with('success','Password updated successfully');
 }else{
return back()->with('error','Invalid Current Password');
 }
}else{
    return back()->with('error','Invalid Current Password');

}

}




}
