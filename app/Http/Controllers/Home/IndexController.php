<?php

namespace App\Http\Controllers\Home;


use App\Http\Controllers\Admin\CategoryController;
use App\Http\Model\Article;
use App\Http\Model\category;
use App\Http\Model\Comment;
use App\Http\Model\Link;
use Illuminate\Support\Facades\Redis;
use Illuminate\Pagination\LengthAwarePaginator;
use Illuminate\Support\Collection;

class IndexController extends CommonController
{
   public function index(){
       //最新发布,带分页
       $data=Article::orderBy('art_time','desc')->Paginate(5);

       return view('home.index',compact('data'));
   }

    public function cate($cate_id){
        $cate=Category::where('cate_id',$cate_id)->get();
        $subcate=Category::where('cate_pid',$cate_id)->orderBy('cate_id','desc')->get();
        $article=Article::where('cate_id',$cate_id)->orderBy('art_time','desc')->Paginate(10);

//        //redi缓存
//        $redis=new \Redis();
//        $redis->connect('127.0.0.1', 6379);
//        foreach($article11 as $v){
//            $redis->hSet($v['art_id'],'art_id',$v['art_id']);
//            $redis->hSet($v['art_id'],'art_title',$v['art_title']);
//            $redis->hSet($v['art_id'],'art_tag',$v['art_tag']);
//            $redis->hSet($v['art_id'],'art_description',$v['art_description']);
//            $redis->hSet($v['art_id'],'art_thumb',$v['art_thumb']);
//            $redis->hSet($v['art_id'],'art_content',$v['art_content']);
//            $redis->hSet($v['art_id'],'art_time',$v['art_time']);
//            $redis->hSet($v['art_id'],'art_editor',$v['art_editor']);
//            $redis->hSet($v['art_id'],'art_view',$v['art_view']);
//            $redis->hSet($v['art_id'],'cat_id',$v['cat_id']);
//
//
//        }



        return view('home.list',compact('article','subcate','cate'));
    }

    public function article($article_id){

//        $redis=new \Redis();
//        $redis->connect('127.0.0.1', 6379);
//        $field=array();
//        $field=$redis->hgetall('19');


        //上一篇文章
        $prev_article=Article::where('art_id','<',$article_id)->max('art_id');
        $prev_title=Article::where('art_id',$prev_article)->first();

       //下一篇
        $next_article=Article::where('art_id','>',$article_id)->min('art_id');
        $next_title=Article::where('art_id',$next_article)->first();


       $field=Article::where('art_id',$article_id)->first();

        Article::where('art_id',$article_id)->increment('art_view', 1);

        //显示评论
        $sub_comment=array();
        $comment=Comment::where(['art_id'=>$article_id,'com_pid'=>0])->get()->toArray();

        if(isset($comment)){
            foreach($comment as $k=>$v){
                $row=Comment::where('com_pid',$v['com_id'])->get()->toArray();
                if(isset($row)){
//                    $comment[$k]['sub'] = $row;
                    $comment[$k]['sub']=array();
                    foreach($row as $m=>$n){
                        $comment[$k]['sub'][$m]=$n;
                    }
                }
            }
        }

        //数据存储在数组的时候的分页功能
        //Get current page form url e.g. &page=6
        $currentPage = LengthAwarePaginator::resolveCurrentPage();

        //Create a new Laravel collection from the array data
        $collection = new Collection( $comment);

        //Define how many items we want to be visible in each page
        $perPage = 10;

        //Slice the collection to get the items to display in current page
        $currentPageSearchResults = $collection->slice(($currentPage-1) * $perPage, $perPage)->all();
//       dd( $currentPageSearchResults);

        //Create our paginator and pass it to the view
        $paginatedSearchResults= new LengthAwarePaginator($currentPageSearchResults, count($collection), $perPage);

        $paginatedSearchResults->setPath(url('a/'.$article_id));


//        var_dump($comment[0]['sub']);
//        dd($comment);

            //获取点赞次数
        $redis=$this->redis_connect();
        $count=$redis->get($article_id);
        if(empty($count)){
            $dianzan=0;
        }else{
            $dianzan=$count;
        }
        return view('home.article',['comment'=> $paginatedSearchResults],compact('field','prev_title','next_title','dianzan'));
    }

}
