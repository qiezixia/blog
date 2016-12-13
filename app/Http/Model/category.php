<?php

namespace App\Http\Model;

use Illuminate\Database\Eloquent\Model;

class category extends Model
{
    protected $table='category';
    protected $primaryKey='cate_id';
    public $timestamps=false;
    protected $guarded=[];

    public function tree(){
        // dd($category);
        $categorys = $this->orderBy('cate_order','asc')->get();
        $data=$this->getTree( $categorys,0);
        return $data;
    }
    public function getTree($data,$pid=0,$level=0,$html='&nbsp;&nbsp;&nbsp;&nbsp;'){
        $arr=array();
        foreach($data as $v){
            if($v->cate_pid==$pid){
                $html=str_repeat($html,$level);
                $v->cate_name=$html.$v->cate_name;
                $arr[]=$v;
                $arr=array_merge($arr,$this->getTree($data,$v->cate_id,$level+1));
            }
        }

        return $arr;
    }




}
