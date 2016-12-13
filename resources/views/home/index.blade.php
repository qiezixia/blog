@extends('layouts.home')
@section('info')
    <title>{{Config::get('web.web_title')}}-{{Config::get('web.seo_title')}}</title>
    <meta name="keywords" content="{{Config::get('web.keywords')}}" />
    <meta name="description" content="{{Config::get('web.description')}}" />
    @endsection

@section('content')

    <div id="container">
        <div class="container_left">
            <img src="{{asset('resources/views/home/images/left_banner.gif')}}">
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

            <div class="message">
                <div class="vactor">
                    <img src="{{asset('resources/views/home/images/vactor.jpg')}}">
                </div>

                <div class="blogger">
                    <p class="blogger_name">Summer</p>
                    <p class="blogger_mail">1204088346@qq.com</p>
                    <p class="blogger_mail">爱笑的女孩运气永远不会太差!</p>
                </div>
            </div>

            <div class="content">
                <div class="tuijian">
                    <p ><span>|</span>文章推荐<span>|</span></p>
                </div>
                <div class="content_left">
                    <ul class="list_2">
                       @foreach($data as $d)
                        <li>
                            <div class="article">
                                <h3><a href="{{url('a/'.$d->art_id)}}">{{$d->art_title}}</a></h3>
                                <p>作者：{{$d->art_editor}} &nbsp;<span><?php echo date('Y-m-d',$d->art_time); ?></span></p>
                                <div>
                                   {{$d->art_description}}
                                </div>
                            </div>
                            <div class="thumb">
                                <img src="{{$d->art_thumb}}" onerror="this.src='./uploads/001.png';this.onerror=null">
                            </div>
                        </li>
                     @endforeach

                    </ul>


                    <div class="page">

                            {{--<li class="active"><a href="#">1</a></li>--}}
                            {{$data->links()}}
                    </div>
                </div>
                <div class="content_right">
                    <div class="other">
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

                    @parent

                </div>
            </div>

            <div class="footer">
                Design by DanceSmile 蜀ICP备11002373号-1
            </div>
        </div>
        <div class="container_right">
            <img src="{{asset('resources/views/home/images/left_banner.gif')}}">
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