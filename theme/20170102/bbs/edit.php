<?php if(!defined('IN_SDCMS')) exit;?>{include file="top.php"}
<title>编辑主题_{if strlen(sdcms[bbs_seotitle])>0}{sdcms[bbs_seotitle]}_{/if}{sdcms[bbs_webname]}</title>
<meta name="keywords" content="{sdcms[bbs_seokey]}">
<meta name="description" content="{sdcms[bbs_seodesc]}">
</head>

<body>
	
    {include file="head.php"}
    <div class="banner_inner" style="background:url({WEB_ROOT}theme/20170102/images/b1.jpg) no-repeat center;">
    	<div class="width">
        	<div class="arrow"></div>
        </div>
    </div>
    
    <div class="position">
    	<div class="ui-bread ui-bread-1 width">
        	<ul>
                <li><a href="{$webroot}">首页</a></li>
                <li><a href="{N('bbs')}">社区首页</a></li>
                <li class="active"><a href="{THIS_LOCAL}">编辑主题</a></li>
            </ul>
        </div>
    </div>
    
	<div class="bg_blue pt20">
    	<div class="width ui-box">
    	<!---->
        <div class="ui-row bbs">
            <div class="bbs-left">
                {include file="bbs/left.php"}
            </div>
            <div class="bbs-right">
                <div class="bbs-right-title">编辑主题</div>
                <div class="bbs-post">
                    <!--form begin-->
                    <form class="ui-form" method="post">
                        <div class="ui-form-group ui-row">
                            <label class="ui-col-2 ui-col-form-label">标题：</label>
                            <div class="ui-col-10">
                                <input type="text" name="title" class="ui-form-ip" value="{$title}" size="60" maxlength="50" data-rule="标题:required;">
                            </div>
                        </div>
                        <div class="ui-form-group ui-row">
                            <label class="ui-col-2 ui-col-form-label">内容：</label>
                            <div class="ui-col-10">
                                <script id="content" name="content" class="ui-editor" type="text/plain" data-toolbar="mini">{$content}</script>
                            </div>
                        </div>
                        {if sdcms[bbs_post_code]==1}
                        <div class="ui-form-group ui-row">
                            <label class="ui-col-2 ui-col-form-label">验证码：</label>
                            <div class="ui-col-10">
                                <div class="ui-input-group">
                                    <input type="text" class="ui-form-ip radius-right-none" name="code" id="code" size="8" maxlength="8" data-rule="验证码:required;">
                                    <span class="code"><img src="{U('code')}" height="40" id="verify" title="点击更换验证码"></span>
                                </div>
                            </div>
                        </div>
                        {/if}
                        <div class="ui-form-group ui-row">
                            <label class="ui-col-2 ui-col-form-label"></label>
                            <div class="ui-col-10">
                                <input type="hidden" name="token" value="{$token}">
                                <button type="submit" class="ui-btn ui-btn-red ui-mr">保存</button>
                                <button type="button" class="ui-btn" onClick="location.href='{PRE_URL}'">返回</button>
                            </div>
                        </div>
                        </form>
                    <!--form over-->
                </div>
                
            </div>
        </div>
        <!---->
    </div>
    
    {include file="foot.php"}
    <script src="{WEB_ROOT}public/editor/editor.js"></script>
    <script>
	$(function()
	{
		$("#nav_bbs").addClass("hover");
		
		{if sdcms[bbs_post_code]==1}
		$("#verify").click(function(){
			$(this).attr("src",$(this).attr("src")+"{iif(sdcms[url_mode]==1,"&","?")}rnd="+Math.round());
			$("#code").val("");
		});
		{/if}
		
		$(".ui-editor").each(function()
		{
			var toolbar=$(this).data("toolbar");
			var id=$(this).attr("id");
			$("#"+id).editor({toolbar:toolbar,upload:'{U("upload/index")}'});
		});
		$(".ui-form").form(
		{
			type:2,
			align:'center',
			result:function(form)
			{
				$.ajax(
				{
					type:'post',
					cache:false,
					dataType:'json',
					url:'{THIS_LOCAL}',
					data:$(form).serialize(),
					error:function(e){alert(e.responseText);},
					success:function(d)
					{
						if(d.state=='success')
						{
							sdcms.success(d.msg);
							setTimeout(function(){location.href='{PRE_URL}';},1500);
						}
						else
						{
							sdcms.error(d.msg);
						}  
					}
				});
			}
		});
	})
	</script>
</body>
</html>