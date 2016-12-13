<?php

namespace App\Http\Controllers\admin;

use Illuminate\Http\Request;
use App\Http\Model\Config;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Validator;

class ConfigController extends CommonController
{

    public function index()
    {
        $str='';
        $data = Config::orderBy('conf_order', 'asc')->paginate(15);
        foreach($data as $k=> $v){
            switch($v->field_type){
                case 'input':
                    $data[$k]->_html='<input class="lg" type="text" name="conf_content[]" value="'.$v->conf_content.'">';
                    break;
                case 'textarea':
                    $data[$k]->_html='<textarea  name="conf_content[]">'.$v->conf_content.'</textarea>';
                    break;
                case 'radio':
                   $arr=explode(',',$v->field_value);
                   foreach($arr as $m=>$n){
                       $r=explode('|',$n);
                       $c=$v->conf_content==$r[0]?'checked':'';
                       $str.='<input type="radio" name="conf_content[]" value="'.$r[0].'" '.$c.'>'.$r[1].'　';

                   }
                     $data[$k]->_html=$str;
                    break;

            }

        }
        return view('admin.Config.index', compact('data'));
    }

    public function store()
    {
        $input=Input::except('_token');
        $rules=[
            'conf_title'=>'required',
            'conf_name'=>'required',

        ];

        $msg=[
            'conf_title.required'=>'配置标题不能为空',
            'conf_name.required'=>'配置名称不能为空',

        ];

        $validator=Validator::make($input,$rules,$msg);
        if($validator->passes()){
            $res=Config::create($input);
            if($res){
                return redirect('admin/config');
            }else{
                return back()->withErrors('友情链接添加失败，请稍后重试');
            }
        }else{
            return back()->withErrors($validator);
        }


    }

    public function create()
    {
        return view('admin.config.add');
    }

    public function destroy($conf_id)
    {
        $res=Config::where('conf_id',$conf_id)->delete();
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

    public function update($conf_id)
    {
        $input=Input::except('_token','_method');
        $res=Config::where('conf_id',$conf_id)->update($input);
        if($res){
            $this->putFile();
            return redirect('admin/config');
        }else{
            return back()->withErrors("的自定义导航更新失败，请稍后重试");
        }
    }

    public function edit($edit)
    {
        $data=Config::find($edit);
        return view('admin.config.edit',compact('data'));
    }

    public function changeOrder()
    {
        $input = Input::all();
        $conf = Config::find($input['conf_id']);
        $conf->conf_order = $input['conf_order'];
        $res = $conf->update();
        if ($res) {
            $data = [
                'status' => 0,
                'msg' => '网站配置排序更新成功',
            ];
        } else {
            $data = [
                'status' => 1,
                'msg' => '网站配置排序更新失败，请稍后重试'
            ];
        }

        return $data;

    }


    public function changeContent(){
       $input=Input::all();
        foreach($input['conf_id'] as $k=>$v){
            Config::where('conf_id',$v)->update(['conf_content'=>$input['conf_content'][$k]]);
        }
        $this->putFile();
        return back()->withErrors('更新成功');
    }

    public function putFile(){
        $config=Config::pluck('conf_content','conf_name')->all();
        $path=base_path().'\config\web.php';
        $str='<?php return '.var_export($config,true).';';
        file_put_contents($path,$str);


    }


}
