<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>{{Config::get('web.web_title')}}-{{Config::get('web.seo_title')}}</title>
<meta name="keywords" content="{{$field->art_tag}}" />
<meta name="description" content="{{$field->art_description}}" />
<link href="{{asset('resources/views/home/css/style.css')}}" rel="stylesheet">
    <script src="{{asset('resources/views/home/js/jquery-1.10.1.js')}}"></script>

<link href="{{asset('resources/views/home/css/lanrenzhijia.css')}}" type="text/css" rel="stylesheet">
<script src="{{asset('resources/views/home/js/jquery-1.7.2.min.js')}}" type="text/javascript"></script>
<script type="text/javascript" src="{{asset('resources/views/home/js/lanrenzhijia.js')}}" charset="utf-8"></script>
    <script type="text/javascript" src="{{asset('resources/views/home/js/answer_lanrenzhijia.js')}}" charset="utf-8"></script>
    <script type="text/javascript" src="{{asset('resources/org/layer/layer.js')}}"></script>
    <link rel="stylesheet" href="{{asset('resources/views/home/css/reset.css')}}">
    <script type="text/javascript" src="{{asset('resources/views/home/js/jquery.qqFace.js')}}"></script>

    <script>
        var swidth=(screen.availWidth-800)/2+'px';
        var sheight=(screen.availHeight-400)/2+'px';
        $(function(){
            $('.pageinfo').css("left",swidth);
            $('.pageinfo').css("top",sheight);
        });


        $(function(){
            $('.emotion').qqFace({
                id : 'facebox',
                assign:'saytext',
                path:"{{asset('resources/views/home/arclist')}}/"	//表情存放的路径
            });
//            $(".sub_btn").click(function(){
//                var str = $("#saytext").val();
//                $("#show").html(replace_em(str));
//
//            });
        });
        //查看结果
        function replace_em(str){
            str = str.replace(/\</g,'&lt;');
            str = str.replace(/\>/g,'&gt;');
            str = str.replace(/\n/g,'<br/>');
            str = str.replace(/\[em_([0-9]*)\]/g,'<img src="{{asset('resources/views/home/arclist/$1.gif')}}" border="0" />');
            return str;
        }

        function answer(obj,com_pid){
            var com_pid=com_pid;
            $(".com_pid").val(com_pid);
            $("input[name='com_pid']").val(com_pid);

            $('.overHide').css("display","block");
//            $('body').css("overflow","hidden");

        }
//        $('body').on("click","face_reset",function(){
//            alert("aaaaa")
//        })
//        //console.log(face_reset);
//        $('.face_reset').click(function(){
//            var overHide=$(".overHide");
//            alert(overHide);
//        });

            function answer_reset(){
                $('#saytext').val('');
                $('.overHide').css("display","none");

            }

        function sendAnswer(art_id){
            var content=$('#saytext').val();
            if(content=="" ||undefined || null){
               layer.msg('回复内容不能为空',{icon:5});
                return false;
            }
            var com_pid=$(".com_pid").val();
            var url="{{url('/comment')}}";
            content=replace_em(content);
            $.post(url,{'art_id':art_id,'com_pid':com_pid,'content':content,'_token':"{{csrf_token()}}"},function(data){
                if(data.status==0){
                    layer.msg(data.answer,{icon:6});
                    setTimeout(reload,2000);
                    $("#Smohan_text").val("");
                }else{
                    layer.msg(data.answer,{icon:5});
                }
            });

        }

        //点赞功能
        function dianzan(art_id){
            var url="{{url('/dianzan')}}";
            $.post(url,{'art_id':art_id,'_token':"{{csrf_token()}}"},function(data){
                $("#dianzan").text('('+data+')');
            });
        }


    </script>
</head>
<body>
<div class="overHide" >
    <div class="pageBackground">
        <div class="pageinfo"><button class="face_reset" onclick='answer_reset();'>×</button>
            <div class="comment">
                <div class="com_form">
                    <textarea class="input" id="saytext" name="saytext"></textarea>
                    <input type="hidden" value="" class="com_pid">
                    <p><span class="emotion"><img src="{{asset('resources/views/home/images/qqface.jpg')}}"></span><input type="button" class="sub_btn" value="提交" onclick="sendAnswer({{$field->art_id}})"></p>
                </div>
            </div>
        </div>
    </div>
</div>

	<div id="header">
		<div class="header_left"><img src="{{asset('resources/views/home/images/top_02.gif')}}"></div>
			<img src="{{asset('resources/views/home/images/logo.png')}}">
		<div class="header_right"><img src="{{asset('resources/views/home/images/top_01.gif')}}"></div>
		<div style="clear:both;height:10px;vertical-align:top;padding-bottom:5px;color:#c9c9c9;">http://www.blogger.com/wangye/12655771.html</div>

	</div>

	<div id="container">
		<div class="article_left"></div>
		<div class="main">
			<div class="nav">
				<ul class="list">
                    {{--<li class="on"><a href="#">首页</a></li>--}}
                    @foreach($navs as $v)
                        <li><a href="{{url($v->nav_url)}}" title="{{$v->nav_name}}">{{$v->nav_name}}</a></li>

                    @endforeach
				</ul>
			</div>

			<div class="article_title">
				<p class="article_name">{{$field->art_title}}</p>
				<p class="article_author">发布时间：{{date('Y-m-d',$field->art_time)}}&nbsp;&nbsp;作者：{{$field->art_editor}}&nbsp;&nbsp;阅读（{{$field->art_view}}）</p>
			</div>
			<div class="article_img">
					<img src="{{url($field->art_thumb)}}"  height="197" onerror="this.src='{{asset('uploads/002.png')}}';this.onerror=null">
			</div>

			<div class="article_content">
				 {!!$field->art_content!!}
			</div>

            <div class="dianzan">
                <img src="{{asset('resources/views/home/images/zan.png')}}" onclick="dianzan({{$field->art_id}})"><span id="dianzan">({{$dianzan}})</span>
            </div>

			<div class="article_next">
                @if($prev_title)
				<p>上一篇：<a href="{{url('a/'.$prev_title->art_id)}}">{{$prev_title->art_title}}</a></p>
                @endif

                @if($next_title)
				<p>下一篇：<a href="{{url('a/'.$next_title->art_id)}}">{{$next_title->art_title}}</a></p>
                    @endif
			</div>

			<div class="comment_list">
				<div class="new_comment">
					最新评论
				</div>
				<ul>

                    @foreach($comment as $k=>$v)

					<li>
						<div class="comments_item_bd">
							<div class="first_comment">
								<div class="ui_avatar"><img src="{{asset('resources/views/home/images/avatar.gif')}}"></div>
								<div class="comments_content">
									<p><span class="pink">茄子</span>：{!!$v['com_content']!!}</p>
									<p><span style="font-size:12px;color:#949494;">{{date('Y-m-d',$v['com_time'])}}</span><span>&nbsp;&nbsp;<a  href="javascript:;" onclick="answer(this,{{$v['com_id']}})">回复</a></span></p>

								</div>
							</div>

                                @foreach($v['sub'] as $m=>$n)
							    <div class="mod_comments_sub">
									<div class="mod_ui_avatar"><img src="{{asset('resources/views/home/images/avatar.gif')}}"></div>
									<div class="mod_comments_content">
                                        <p><span class="pink">雪飞</span>&nbsp;回复&nbsp;<span class="pink">茄子</span>：{!!$n['com_content']!!}</p>
                                        <p><span style="font-size:12px;color:#949494;">{{date('Y-m-d',$n['com_time'])}}</span>&nbsp;&nbsp;<a href="javascript:;" onclick="answer(this,{{$v['com_id']}})"><span>回复</span></a></p>
								        </div>

							    </div>
                                @endforeach
						</div>
					</li>
                    @endforeach
				</ul>
			</div>
            <script>

            </script>


			<div class="page">
                <?php echo $comment->render(); ?>
			</div>

			<div class="shejiao">
				<span class="shejiao_title">社交账号登录：</span>
				<ul>
					<li><a href="#"><img src="{{asset('resources/views/home/images/weixin.gif')}}"><span>微信</span></a></li>
					<li><a href="#"><img src="{{asset('resources/views/home/images/weibo.gif')}}"><span>微博</span></a></li>
					<li><a href="#"><img src="{{asset('resources/views/home/images/zone.gif')}}"><span>空间</span></a></li>
					<li><a href="#"><img src="{{asset('resources/views/home/images/tengxun.gif')}}"><span>腾讯</span></a></li>
				</ul>
			</div>

            <div class="publish">

                <div id="Smohan_FaceBox">
                    <textarea name="text" id="Smohan_text" class="smohan_text"></textarea>
                    <p> <a href="javascript:void(0)" class="face" title="表情"></a>
                        <button class="button"  onclick="sendCommont({{$field->art_id}})" >发表评论</button>
                        <!--<button class="button" id="Smohan_Showface">显示表情</button>-->
                    </p>
                </div>

                <!--/表情盒子-->
                <!--解析表情-->
                <div id="Zones"></div>
                <!--/DEMO-->
                <script type="text/javascript">
                    $(function (){
                        $("a.face").smohanfacebox({
                            Event : "click",	//触发事件
                            divid : "Smohan_FaceBox", //外层DIV ID
                            textid : "Smohan_text" //文本框 ID
                        });

                    });

                </script>
            </div>

            
				<div class="visitor">
				<span  class="visitor_thumb">最近访客:</span>
				<ul>
					<li><img src="{{asset('resources/views/home/images/avatar.gif')}}"></li>
                    <li><img src="{{asset('resources/views/home/images/avatar.gif')}}"></li>
                    <li><img src="{{asset('resources/views/home/images/avatar.gif')}}"></li>
                    <li><img src="{{asset('resources/views/home/images/avatar.gif')}}"></li>
                    <li><img src="{{asset('resources/views/home/images/avatar.gif')}}"></li>
                    <li><img src="{{asset('resources/views/home/images/avatar.gif')}}"></li>
                    <li><img src="{{asset('resources/views/home/images/avatar.gif')}}"></li>
                    <li><img src="{{asset('resources/views/home/images/avatar.gif')}}"></li>
                    <li><img src="{{asset('resources/views/home/images/avatar.gif')}}"></li>
                    <li><img src="{{asset('resources/views/home/images/avatar.gif')}}"></li>
                    <li><img src="{{asset('resources/views/home/images/avatar.gif')}}"></li>
                    <li><img src="{{asset('resources/views/home/images/avatar.gif')}}"></li>
				</ul>
			</div>

			<div class="footer">
				Design by DanceSmile 蜀ICP备11002373号-1
			</div>
		</div>
		<div class="article_right"></div>

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


    function sendCommont(art_id){
        var content=$("#Smohan_text").val();
        if(content=="" ||undefined || null){
            layer.msg('回复内容不能为空',{icon:5});
            return false;
        }
        var url="{{url('/comment')}}";

        content = replaceface(content);

        $.post(url,{'art_id':art_id,'content':content,'_token':"{{csrf_token()}}"},function(data){
           if(data.status==0){
               layer.msg(data.msg,{icon:6});
               setTimeout(reload,2000);
               $("#Smohan_text").val("");
           }else{
               layer.msg(data.msg,{icon:5});
           }
        });
    }


    function replaceface(text){
        var faces;
        for(i=0;i<60;i++){
            text=text.replace('<emt>'+ (i+1) +'</emt>','<img src="./../resources/views/home/images/face/'+(i+1)+'.gif">');
        }
        return text;
//        $("#Smohan_text").html(faces);
    }

    function reload(){
        window.location.reload();
    }


</script>










</body>
</html>
