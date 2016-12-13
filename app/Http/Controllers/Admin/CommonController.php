<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\controller;
use Illuminate\Support\Facades\Input;


class CommonController extends Controller
{
    public function upload(){
        $file=Input::file('Filedata');
        if($file->isValid()){
           // $realPath=$file->getRealPath();  //零时文件的绝对路径
            $entension=$file->getClientOriginalExtension(); //上传文件的后缀
            $newName=date('YmdHis').mt_rand(100,999).'.'.$entension;
            $path=$file->move(base_path().'/uploads',$newName);
            $file_path='uploads/'.$newName;
            echo $file_path;
        }

    }
}
