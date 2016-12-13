<?php

namespace App\Http\Controllers\Admin;


use Illuminate\Http\Request;
use App\Http\Requests;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Crypt;
use App\Http\Model\User;
use Illuminate\Support\Facades\Validator;

session_start();
require_once "resources/org/code/Code.class.php";

class LoginController extends CommonController
{
    //
    public function login(){

        if($input=Input::all()){
            $code=new \Code;
            $_code=$code->get();

            $user=User::first();
            if($user->user_name!=$input['user_name'] || Crypt::decrypt($user->user_pass)!=$input['user_pass']){
                return back()->with('msg','用户名或密码错误!');
            }
            if(strtoupper($input['code'])!=$_code){
                return back()->with('msg','验证码错误');
            }

                session(['user'=>$user]);
                return redirect('admin');

        }else{
            return  view('admin.login');
        }
    }

    public function code(){
        $code=new \Code;
        $code->make();
    }

  public function quit(){
      session(['user'=>null]);
      return redirect('admin/login');
  }

}