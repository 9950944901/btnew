<?php

namespace App\Http\Controllers\School;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use Maatwebsite\Excel\Facades\Excel;
use App\Imports\ImportAdmisan;
use App\Imports\ImportUser;
use App\Exports\ExportUser;
use Illuminate\Support\Facades\Validator;
use League\Csv\Reader;
use App\Models\Stu_Admission;
use App\Models\GeneralSetting;

class CSV extends Controller
{
    public function importView(Request $request){
        return view('school.csv.admisan.importFile');
    }

    public function import(Request $request){

            $request->validate([
                'filecsv' => 'required',
            ]);
            
             $info = GeneralSetting::where('user_id',auth()->user()->id)->first();
             if(!is_null($info) && !is_null($info->session)){
                  $all = Stu_Admission::where('user_id',auth()->user()->id)->where('admission_no',$request['admission_no'])->first();
        
              try {
                Excel::import(new ImportUser, $request->file('filecsv')->store('files'));
                return back()->with('success','Imported CSV File Successfully');
            } catch (\Maatwebsite\Excel\Validators\ValidationException $e) {
                 $failures = $e->failures();
                 return back()->with('import_error',$failures);
            }
             }else{
        return redirect()->route('SCHOOL.general-setting')->with('error','Session Not Found!');
      }
    }

    public function exportUsers(Request $request){
        return Excel::download(new ExportUser, 'student_admission.xlsx');
    }



}
