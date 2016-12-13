<?php

namespace App\Http\Controllers\Admin;
use App\Http\Model\Article;
use App\Http\Model\category;

use Illuminate\Http\Request;
use Illuminate\Pagination\Paginator;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Validator;

class ArticleController extends CommonController
{
    public static $keywords='';
    //全部文章列表页 get方式
    public function index(){
       $data= Article::orderBy('art_id','desc')->paginate(15);
        return view('admin.article.index',compact('data'));
    }

    //保存添加文章 post方式
    public function store(){
        $input=Input::Except('_token');
        $input['art_time']=time();

        $rules=[
            'art_title'=>'required',
            'art_content'=>'required',
        ];

        $message=[
            'art_title.required'=>'文章标题不为空!',
            'art_content.required'=>'文章内容不能为空!',
        ];

        $validator=Validator::make($input,$rules,$message);
        if($validator->passes()){
            $re=Article::create($input);
            if($re){
                return redirect('admin/article');
            }else{
                return back()->withErrors("添加分类失败");
            }
        }else{
            return back()->withErrors($validator);
        }


    }

    //get方式
    public function create(){
        $data=(new category)->tree();
       return view('admin.article.add',compact('data'));
    }
    //put方式
    public function update($art_id){
        $input=Input::except('_token','_method');
        $re=Article::where('art_id',$art_id)->update($input);
        if($re){
            return redirect('admin/article');
        }else{
            return back()->withErrors('文章更新失败,请稍后重试');
        }
    }

    //get方式
    public function show(){

    }

    public function destroy($art_id){
        $res=Article::where('art_id',$art_id)->delete();
        if($res){
            $message=[
                'status'=> 0,
                'msg'=>'数据删除成功'
            ];
        }else{
            $message=[
                'status'=> 1,
                'msg'=>'文章删除失败，请稍后重试'
            ];
        }
        return $message;
    }

    //get
    public function edit($art_id){
        $field=Article::find($art_id);
        $data=(new category)->tree();
        return view('admin.article.edit',compact('data','field'));
    }

    public function search(){
//        self::$keywords = $_POST['keywords'];
        $input=Input::except('_token');
        $keywords = $input['keywords'];
//        if(isset($input['keywords']))
//        {
//            $keywords = self::$keywords =$input['keywords'];
//        }
//        else
//        {
//            $keywords = self::$keywords;
//        }

//        $keywords=isset($input['keywords'])? $input['keywords']:self::$keywords;
        $data=Article::where('art_title','like','%'.$keywords.'%')->paginate(15);
//        $data=Article::where('art_title','like','%'.$keywords.'%');
//        $data = Paginator::


        return  view('admin.article.search',compact('data','keywords'));
    }


}
