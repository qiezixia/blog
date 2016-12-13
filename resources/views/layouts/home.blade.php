<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    @yield('info')
    <link href="{{asset('resources/views/home/css/style.css')}}" rel="stylesheet">
    <script src="{{asset('resources/views/home/js/jquery-1.10.1.js')}}"></script>

</head>
<body>
<div id="header">
    <div class="header_left"><img src="{{asset('resources/views/home/images/top_02.gif')}}"></div>
    <img src="{{asset('resources/views/home/images/logo.png')}}">
    <div class="header_right"><img src="{{asset('resources/views/home/images/top_01.gif')}}"></div>
    <div style="clear:both;height:10px;vertical-align:top;padding-bottom:5px;color:#c9c9c9;">http://www.blogger.com/wangye/12655771.html</div>

</div>


@section('content')
    <div class="new_article">
        <h3><p>最新<span>文章</span></p></h3>
        <ul class="rank">
            @foreach($new as $n)
                <li><a href="{{url('a/'.$n->art_id)}}" target="_blank" title="{{$n->art_title}}"><?php echo mb_substr($n->art_title,0,17,'utf-8');?></a></li>
            @endforeach
        </ul>


        <h3><p>点击<span style="color:#fd8a61;">排行</span></p></h3>
        <ul class="order">
            @foreach($hot as $h)
                <li><a href="{{url('a/'.$h->art_id)}}" target="_blank" title="{{$h->art_title}}"><?php echo mb_substr($h->art_title,0,17,'utf-8');?></a></li>
            @endforeach

        </ul>
        <p>&nbsp;</p>
        <h3><p><span>|</span>友情链接<span>|</span></p></h3>
        <ul class="link">
            @foreach($links as $l)
                <li><a href="{{url($l->link_url)}}" target="_blank" title="{{$l->link_title}}"><?php echo mb_substr($l->link_name,0,17,'utf-8');?></a></li>
            @endforeach
        </ul>
    </div>
    @show


</body>
</html>
