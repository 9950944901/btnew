<?php

namespace App\Imports;

use App\Models\Stu_Admission;
use Maatwebsite\Excel\Concerns\ToModel;
use Illuminate\Support\Facades\Hash;
use Maatwebsite\Excel\Concerns\WithHeadingRow;
use Maatwebsite\Excel\Concerns\WithValidation;
use App\Models\GeneralSetting;
class ImportUser implements ToModel, WithHeadingRow,WithValidation

{   
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
        $all = Stu_Admission::where('user_id',auth()->user()->id)->where('admission_no',$row['admission_no'])->first();
     $info = GeneralSetting::where('user_id',auth()->user()->id)->first();
     $user_id = auth()->user()->id;          
     $data1 = new Stu_Admission();
     $data1->user_id = $user_id;
     $data1->admission_no = $row['admission_no'];
     $data1->roll_no = $row['roll_no'];
     $data1->class = $row['class'];
     $data1->section = $row['section'];
     $data1->first_name = $row['first_name'];
     $data1->last_name = $row['last_name'];
     $data1->gender = $row['gender'];
     $data1->dob = $row['dob'];
     $data1->category = $row['category'];
     $data1->religion = $row['religion'];
     $data1->caste = $row['caste'];
     $data1->mobile_no = $row['mobile_no'];

     $data1->email = $row['email'];

     $data1->admission_date = $row['admission_date'];
     $data1->blood_group = $row['blood_group'];
     $data1->stu_house = $row['stu_house'];
     $data1->weight = $row['weight'];
     $data1->as_on_date = $row['as_on_date'];
     $data1->father_name = $row['father_name'];
     $data1->father_mobile = $row['father_mobile'];
     $data1->father_accu = $row['father_accu'];
     $data1->mother_name = $row['mother_name'];
     $data1->mother_phone = $row['mother_phone'];
     $data1->mother_occu = $row['mother_occu'];
     $data1->gur_name = $row['gur_name'];
     $data1->gur_relation = $row['gur_relation'];
     $data1->gur_email = $row['gur_email'];
     $data1->gur_occu = $row['gur_occu'];
     $data1->gur_address = $row['gur_address'];
     $data1->height = $row['height'];
     $data1->gur_phone = $row['gur_phone'];
     $data1->session = $info['session'];
     $data1->save();
    }


    public function rules(): array
    {
        return [
            'admission_no' => 'required|numeric',
            'roll_no' => 'required|numeric',
            'dob' => 'required|date:ordinanze',
            'section' => 'required',
            'gender' => 'required',
            'first_name' => 'required',
            'last_name' => 'required',
            'mobile_no' => 'required|digits:10',
            'class' => 'required|numeric|min:1',
            'admission_date' => 'required|date:ordinanze',
            // 'mother_phone' => 'max:10|min:10',
            // 'father_mobile' => 'max:10|min:10',
            'email' => 'required|email',

             // Above is alias for as it always validates in batches
              '*.admission_no' => 'required|numeric',
              '*.roll_no' => 'required|numeric',
              '*.section' => 'required',
              '*.gender' => 'required',
              '*.dob' => 'required|date:ordinanze',
              '*.first_name' => 'required',
              '*.last_name' => 'required',
              '*.mobile_no' => 'required|digits:10',
            //   '*.mother_phone' => 'max:10|min:10',
            //   '*.father_mobile' => 'max:10|min:10',
              '*.roll_no' => 'required',
              '*.email' => 'required|email',
              '*.class' => 'required|numeric|min:1',
              '*.admission_date' => 'required|date:ordinanze',
          
        ];
        
    }


}
