<?php

namespace App\Http\Controllers\admin;

use Illuminate\Http\Request;
use App\Http\Model\Navs;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Validator;

class NavsController extends CommonController
{

    public function index()
    {
        $data = Navs::orderBy('nav_order', 'asc')->paginate(5);
        return view('admin.navs.index', compact('data'));

        echo '`123`';
    }

    public function store()
    {
        $input=Input::except('_token');
        $rules=[
            'nav_name'=>'required',
            'nav_alias'=>'required',
            'nav_url'=>'required',
        ];

        $msg=[
            'nav_name.required'=>'导航名称不能为空',
            'nav_alias.required'=>'导航名称不能为空',
            'nav_url.required'=>'导航url不能为空',
        ];

        $validator=Validator::make($input,$rules,$msg);
        if($validator->passes()){
            $res=Navs::create($input);
            if($res){
                return redirect('admin/navs');
            }else{
                return back()->withErrors('友情链接添加失败，请稍后重试');
            }
        }else{
            return back()->withErrors($validator);
        }


    }

    public function create()
    {
        return view('admin.navs.add');
    }

    public function destroy($nav_id)
    {
        $res=Navs::where('nav_id',$nav_id)->delete();
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

    public function update($nav_id)
    {
        $input=Input::except('_token','_method');
        $res=Navs::where('nav_id',$nav_id)->update($input);
        if($res){
            return redirect('admin/navs');
        }else{
            return back()->withErrors("的自定义导航更新失败，请稍后重试");
        }
    }

    public function edit($edit)
    {
        $data=Navs::find($edit);
        return view('admin.navs.edit',compact('data'));
    }

    public function changeOrder()
    {
        $input = Input::all();
        $navs = Navs::find($input['nav_id']);
        $navs->nav_order = $input['nav_order'];
        $res = $navs->update();
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
