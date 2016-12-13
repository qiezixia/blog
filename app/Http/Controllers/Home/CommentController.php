<?php

namespace App\Http\Controllers\Home;

use App\Http\Model\Comment;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;

class CommentController extends CommonController
{

   public function comment(){
       $data['com_pid']=isset($_POST['com_pid'])?$_POST['com_pid']:0;
       $data['art_id']=$_POST['art_id'];
       $data['com_content']=$_POST['content'];
       $data['com_time']=time();
//    echo "123";
        $res=Comment::create($data);
         if($res){
             $result['status']=0;
             $result['msg']='评论发表成功';
             $result['answer']='回复评论成功';
         }else{
           $result['status']=1;
           $result['msg']='评论失败，请稍后失败';
             $result['answer']='回复评论失败，请稍后失败';
       }

       return $result;

   }


    public function dianzan(){
        $art_id=$_POST['art_id'];
        $redis=$this->redis_connect();
       if(!$this->exists_string($art_id)){
           $redis->set($art_id,'1');
           $data=$redis->get($art_id);
       }else{
           $redis->incr($art_id);
           $data=$redis->get($art_id);
       }

        return $data;

    }


    public function exists_string($art_id=''){
//        $redis=new \Redis();
//        $redis->connect('127.0.0.1',6379);
       $redis= $this->redis_connect();
        return $redis->exists($art_id);
    }




}
