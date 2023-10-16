<?php

namespace App\Http\Controllers\School;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\ExpenseHead;
use App\Models\AddExpense;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\File;

class Expenses extends Controller
{
    public function index()
    {
        $ids = auth()->user()->id;
        $data = ExpenseHead::orderBy('id','desc')->where('user_id',$ids)->get();
        $show = AddExpense::orderBy('id','desc')->where('user_id',$ids)->get();

        return view('school.expenses.index',compact('data','show'));
    }

    public function search_expense(Request $req)
    {
        $ids = auth()->user()->id;
        if ($req->filter == "today") {
           $search_expese = AddExpense::orderBy('id','desc')->select('*')
           ->whereDate('date',Carbon::today())->where('user_id',$ids)->get();
            // dd($search_expese);
        } elseif($req->filter == "week") {
            $search_expese = AddExpense::orderBy('id','desc')->select('*')
            ->whereBetween('date', [Carbon::now()->startOfWeek(), Carbon::now()->endOfWeek()])->where('user_id',$ids)->get();
            // dd($search_expese);
        }elseif($req->filter == "month"){
            $search_expese = AddExpense::orderBy('id','desc')->select('*')
            ->whereBetween('date', [Carbon::now()->startOfMonth(), Carbon::now()
            ->endOfMonth()])->where('user_id',$ids)->get();

        }else{
            $search_expese = AddExpense::orderBy('id','desc')->where('user_id',$ids)->get(); 
        }
        

        return view('school.expenses.search-expense',compact('search_expese'));
    }

    public function expense_head()
    {
        $ids = auth()->user()->id;
        $data = ExpenseHead::orderBy('id','desc')->where('user_id',$ids)->get();
        return view('school.expenses.expense-head',compact('data'));
    }

    public function expense_data(Request $request)
    {
        $ids = auth()->user()->id;
        $add =new ExpenseHead;
        $add->user_id = $ids;
        $add->name = $request['name'];
        $add->desc = $request['desc'];
        if($add->save()){
            return back()->with('success','Added Successfully');
        }else{
            return back()->with('error','Error');
        }
    }

    public function expense_delete($id)
    {
        $delete = ExpenseHead::find($id);
        if($delete->delete())
        {
            return back()->with('success','Deleted Successfully');
        }else{
            return back()->with('error','Error');
        }
    }

    public function expense_update(Request $request , $id)
    {
        $add =ExpenseHead::find($id);
        $add->name = $request['name'];
        $add->desc = $request['desc'];
        if($add->update()){
            return back()->with('success','Updated Successfully');
        }else{
            return back()->with('error','Error');
        }
    }

    public function add_expense_data(Request $request)
    {
        $ids = auth()->user()->id;
        $add = new AddExpense;
        $add->user_id = $ids;
        $add->expense_head = $request['expense_head'];
        $add->name = $request['name'];
        $add->invoice_no = $request['invoice_no'];
        $add->date = $request['date'];
        $add->amount = $request['amount'];
        $add->desc = $request['desc'];
        if($add->save()){
            return back()->with('success','Added Successfully');
        }else{
            return back()->with('error','Error');
        }
    }

    public function expense_data_delete($id)
    {
        $delete = AddExpense::find($id);
        if($delete->delete())
        {
            return back()->with('success','Deleted Successfully');
        }else{
            return back()->with('error','Error');
        }
    }


function Expense_Data_up(Request $req,$id){
    $up = AddExpense::find($id);
    $up->expense_head = $req['expense_head'];
    $up->name = $req['name'];
    $up->invoice_no = $req['invoice_no'];
    $up->date = $req['date'];
    $up->amount = $req['amount'];
    $up->desc = $req['desc'];
    if($up->update()){
         return back()->with('success','Updated Successfully');
    }else{
         return back()->with('error','Error');
    }

}

    
}
