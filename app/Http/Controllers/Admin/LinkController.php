<?php

namespace App\Http\Controllers\Admin;

use App\Http\Model\Link;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Validator;

class LinkController extends CommonController
{
    public function index()
    {
        $data = Link::orderBy('link_order', 'asc')->paginate(15);
        return view('admin.link.index', compact('data'));
    }

    public function store()
    {
        $input=Input::except('_token');

        $rules=[
            'link_name'=>'required',
            'link_url'=>'required',
        ];

        $msg=[
            'link_name.required'=>'链接名称不能为空',
            'link_url.required'=>'链接url不能为空',
        ];

        $validator=Validator::make($input,$rules,$msg);
        if($validator->passes()){
            $res=Link::create($input);
            if($res){
                return redirect('admin/link');
            }else{
                return back()->withErrors('友情链接添加失败，请稍后重试');
            }
        }else{
            return back()->withErrors($validator);
        }


    }

    public function create()
    {
        return view('admin.Link.add');
    }

    public function destroy($link_id)
    {
        $res=Link::where('link_id',$link_id)->delete();
        if($res){
            $data=[
                'status'=>0,
                'msg'=>'数据删除成功'
            ];
        }else{
            $data=[
                'status'=>1,
                'msg'=>'数据删除失败，请稍后重试'
            ];
        }
        return $data;
    }

    public function show()
    {

    }

    public function update($link_id)
    {
        $input=Input::except('_token','_method');
        $res=Link::where('link_id',$link_id)->update($input);
        if($res){
            return redirect('admin/link');
        }else{
            return back()->withErrors("友情链接更新失败，请稍后重试");
        }
    }

    public function edit($edit)
    {
        $data=Link::find($edit);
        return view('admin.link.edit',compact('data'));
    }

    public function changeOrder()
    {
        $input = Input::all();
        $link = Link::find($input['link_id']);
        $link->link_order = $input['link_order'];
        $res = $link->update();
        if ($res) {
            $data = [
                'status' => 0,
                'msg' => '友情链接排序更新成功',
            ];
        } else {
            $data = [
                'status' => 1,
                'msg' => '友情链接排序更新失败，请稍后重试'
            ];
        }

        return $data;

    }











}
