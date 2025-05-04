<?php if(!defined('IN_SDCMS')) exit;?>{include file="mobile/top.php"}
<title>发布主题_{if strlen(sdcms[bbs_seotitle])>0}{sdcms[bbs_seotitle]}_{/if}{sdcms[bbs_webname]}</title>
<meta name="keywords" content="{sdcms[bbs_seokey]}">
<meta name="description" content="{sdcms[bbs_seodesc]}">
</head>

<body>
	{include file="mobile/head.php"}

    <article>
    	<section>
        	<div class="newpost">
                 <!---->
                <form class="ui-form" method="post">
                    <div class="ui-form-group">
                        <select name="classid" data-rule="分类:required;int;" class="ui-form-ip">
                            <option value="">请选择分类</option>
                            {foreach $bbscate as $key=>$val}
                            <option value="{$val['cateid']}"{if $fid==$val['cateid']} selected{/if}>{$val['catename']}</option>
                            {/foreach}
                        </select>
                    </div>
                    <div class="ui-form-group">
                        <input type="text" name="title" maxlength="50" class="ui-form-ip" placeholder="请输入标题" data-rule="标题:required;">
                    </div>
                    <div class="ui-form-group">
                        <script id="content" name="content" class="ui-editor" type="text/plain" data-toolbar="mini"></script>
                    </div>
                    {if sdcms[bbs_post_code]==1}
                    <div class="ui-form-group">
                        <div class="ui-input-group">
                            <input type="text" class="ui-form-ip radius-right-none" name="code" id="code" size="8" maxlength="8" placeholder="请输入验证码" data-rule="验证码:required;">
                            <span class="code"><img src="{U('code')}" height="40" id="verify" title="点击更换验证码"></span>
                        </div>
                    </div>
                    {/if}
                    <div class="ui-form-group">
                        <input type="hidden" name="token" value="{$token}"><button type="submit" class="ui-btn ui-btn-block ui-btn-red">发布主题</button>
                    </div>
                </form>
                 <!---->
                </div>
        </section>
    </article>
    {include file="mobile/foot.php"}
	<script>
    $(function()
    {
        
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
                            setTimeout(function(){location.href='{N('bbs','','fid='.$fid.'')}';},1500);
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