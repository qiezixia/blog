@extends('layouts.home')
@section('info')
    <title>{{Config::get('web.web_title')}}-{{Config::get('web.seo_title')}}</title>
    <meta name="keywords" content="个人博客模板" />
    <meta name="description" content="寻梦主题的个人博客模板，优雅、稳重、大气,低调。" />

    @endsection

@section('content')
    <div id="container">
        <div class="container_left">
        </div>
        <div class="main">
            <div class="nav">
                <ul class="list">
                    {{--<li class="on"><a href="#">首页</a></li>--}}
                    @foreach($navs as $v)
                        <li><a href="{{url($v->nav_url)}}" title="{{$v->nav_name}}">{{$v->nav_name}}</a></li>

                    @endforeach
                </ul>
            </div>

            <div class="content">
                <div class="content_left">
                    <ul class="list_2">

                        @foreach($article as $v)
                        <li>
                            <div class="thumb_left">
                                <img src="{{asset($v->art_thumb)}}" width="232" height="130" onerror="this.src='{{asset('uploads/002.png')}}';this.onerror=null">
                                <p><a href="{{url('a/'.$v->art_id)}}" title="{{$v->art_title}}"><?php echo mb_substr($v->art_title,0,12,'utf-8');?>@if(mb_strlen($v->art_title)>12)...@endif</a></p>
                                <p>发布时间：{{date('Y-m-d',$v->art_time)}}</p>
                                <p>作者：{{$v->art_editor}}</p>
                            </div>

                            <div class="description">
                                {{$v->art_description}}
                            </div>

                            <div class="read_all">
                                <a href="{{url('a/'.$v->art_id)}}"><img src="{{asset('resources/views/home/images/read.gif')}}"></a>
                            </div>
                        </li>
                        @endforeach

                    </ul>

                    <div class="page">
                        <ul class="page_list">
                           {{$article->links()}}
                        </ul>
                    </div>
                </div>

                <div class="content_right">
                  @if($subcate->all())
                    <div class="rnav">
                        <ul>
                            @foreach($subcate as $k=>$s)
                                <li class="rnav{{$k+1}}"><a href="{{url('cate/'.$s->cate_id)}}" target="_blank" title="{{$s->cate_title}}">{{$s->cate_name}}</a></li>
                            @endforeach

                        </ul>
                    </div>
                    @endif

                      @parent

                    <div class="other" style="padding-left:20px;padding-top:5px;">
                        <!-- JiaThis Button BEGIN -->
                        <div class="jiathis_style_32x32" style="margin-left:20px;">
                            <a class="jiathis_button_qzone"></a>
                            <a class="jiathis_button_tsina"></a>
                            <a class="jiathis_button_tqq"></a>
                            <a class="jiathis_button_weixin"></a>
                            <a class="jiathis_button_renren"></a>
                            <a href="http://www.jiathis.com/share" class="jiathis jiathis_txt jtico jtico_jiathis" target="_blank"></a>

                        </div>
                        <script type="text/javascript" src="http://v3.jiathis.com/code/jia.js" charset="utf-8"></script>
                        <!-- JiaThis Button END -->
                    </div>

                </div>
            </div>

            <div class="footer">
                Design by DanceSmile 蜀ICP备11002373号-1
            </div>
        </div>


    </div>
    <div class="container_right">

    </div>

    </div>

    <script>
        $(function(){
            $(".list").each(function(){
                var y = $(this).children().last();
                var liwidth=y.width();
                var num=$('.list li').length;
                var ulwidth=liwidth*num+10+'px';
                $('.list').width(ulwidth);

            });
        });

        $(function(){
            var hei=$('.content_left').height()+20;
            if(hei<980){

                $('.content_right').height('980px');
            }else{
                $('.content_right').height(hei);
            }

        });

    </script>

@endsection
	



