<?php

namespace App\Http\Controllers\Admin;
use App\Http\Model\category;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Validator;

use Illuminate\Http\Request;

class CategoryController extends CommonController
{
    //get.admin/category 全部分类列表、
    public function index(){
        $categorys=(new Category)->tree();
       // dd($cate);
       return view('admin.category.index')->with('data', $categorys);
    }

    //post.admin/category
    public function store(){
        $input=Input::except('_token');
        $rules = [
            'cate_name'=>'required',
        ];

        $message = [
            'cate_name.required'=>'分类名称不能为空！',
        ];
        $validator = Validator::make($input,$rules,$message);
        if($validator->passes()){
            $rs=Category::create($input);
            if($rs){
               return redirect('admin/category');
            }else{
                return back()->withErrors("添加分类失败");
            }

        }else{
            return back()->withErrors($validator);
        }

    }


    //get.admin/category 、
    public function create(){
        $data=(new Category)->tree();
        return view('admin.category.add',compact('data'));
    }
    //get.admin/category 全部分类列表、
    public function destroy($cat_id){
       $res=Category::where('cate_pid',$cat_id)->get();
        if(!$res->isEmpty()){
            $data=[
                'status'=>2,
                'msg'=>'该分类下存在子分类，请先将子分类删除'
            ];
        }else{
            $row=Category::where('cate_id',$cat_id)->delete();
            if($row){
                $data=[
                    'status'=>0,
                    'msg'=>'文章分类删除成功'
                ];
            }else{
                $data=[
                    'status'=>1,
                    'msg'=>'该文章分类删除失败，请稍后重试'
                ];
            }
        }
        return $data;
    }

    //get.admin/category
    public function show(){
        echo 'get.admin/category';
    }
    //get.admin/category 全部分类列表、
    public function update($cate_id){
        $input=Input::except('_token','_method');
        $rs=Category::where('cate_id',$cate_id)->update($input);
        if($rs){
            return redirect('admin/category');
        }else{
            return back()->withErrors('分类信息更新失败，请稍后重试');
        }

    }
    //get.admin/category 全部分类列表、
    public function edit($cate_id){
        $field=Category::find($cate_id);
        $data=(new Category)->tree();
        return view('admin.category.edit',compact('field','data'));
    }


    public function changeOrder(){
       $input=Input::all();
       $cate=Category::find($input['cate_id']);
       $cate->cate_order=$input['cate_order'];
        $re=$cate->update();
        if($re){
            $data=[
                'status'=>0,
                'msg'=>'分类排序更新成功',
            ];
        }else{
            $data=[
                'status'=>1,
                'msg'=>'分类更新失败，请重试'
            ];
        }

        return $data;

    }



}




