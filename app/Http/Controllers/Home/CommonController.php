<?php

namespace App\Http\Controllers\Home;

use App\Http\Model\Article;
use App\Http\Model\Link;
use App\Http\Model\Navs;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\View;

class CommonController extends Controller
{
   public function __construct(){
       $navs=Navs::all();
       //最新发布的9篇文章
       $new=Article::orderBy('art_time','desc')->take(9)->get();

       //点击最高
       $hot=Article::orderBy('art_view','desc')->take(5)->get();

       //友情链接
       $links=Link::orderBy('link_order','asc')->get();
       view::share('navs',$navs);
       view::share('new',$new);
       view::share('hot',$hot);
       view::share('links',$links);
   }

    public function redis_connect(){
        $redis=new \Redis();
        $redis->connect('127.0.0.1',6379);
        return $redis;
    }
}
