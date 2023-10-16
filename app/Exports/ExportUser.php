<?php

namespace App\Exports;

use App\Models\Stu_Admission;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
class ExportUser implements FromCollection, WithHeadings
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        // return Stu_Admission::all();

        return Stu_Admission::select('admission_no','roll_no','class','section','first_name','last_name','gender','dob','category','religion','caste','mobile_no','email','admission_date','blood_group','stu_house','weight','as_on_date','father_name','father_mobile','father_accu','mother_name',
        'mother_phone','mother_occu','gur_name','gur_relation','gur_email','gur_occu','gur_address','height','gur_phone',)->where('user_id',auth()->user()->id)->get();

    }

    public function headings(): array{
        return ['Admission No','Roll No','Class','Section','First Name','Last Name','Gender','Dob','Category','Religion','Caste','Mobile No','Email','Admission Date','Blood Group','Stu House','Weight','As on Date','Father Name','Father Mobile','Father Accu','Mother Name',
        'Mother Phone','Mother Occu','Gur Name','Gur Relation','Gur Email','Gur Occu','Gur Address','Height','Gur Phone',];
    }

}

