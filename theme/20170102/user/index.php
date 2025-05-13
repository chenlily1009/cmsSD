<?php if(!defined('IN_SDCMS')) exit;?>{include file="top.php"}
<title>会员中心_{sdcms[web_name]}</title>
<meta name="keywords" content="{sdcms[seo_key]}">
<meta name="description" content="{sdcms[seo_desc]}">
</head>

<body>

    {include file="head.php"}
    
    <div class="position">
    	<div class="ui-bread ui-bread-1 width">
        	<ul>
                <li><a href="{WEB_ROOT}">首页</a></li>
                <li class="active">会员中心</li>
            </ul>
        </div>
    </div>

    <div class="width inner_container">
                
        <!---->
            <div class="user_center">
            <div class="lefter">
            	{include file="user/nav.php"}
            </div>
            <div class="righter">
            	
                <div class="subject m20">
                    <b>个人中心</b>
                </div>
                <div class="user_info">
                	{sdcms:rs top="1" table="sd_user left join sd_user_group on sd_user.uid=sd_user_group.gid" where="id=$userid"}
                    <div class="face"><img src="{if strlen($rs[uface])}{$rs[uface]}{else}{WEB_ROOT}upfile/noface.gif{/if}" width="120" height="120" class="dropzone" id="uface" config="uface" url="{U('face','','',1)}" maxsize="{sdcms[upload_image_max]}"></div>
                    <div class="info">
                        <p><span>{get_user_info('uname')}</span>　{$welcome}</p>
                        <ul>
                            <li><em>级别：</em>{$rs[gname]}</li>
                            <li><em>登录：</em><span>{$rs[logintimes]}</span> 次</li>
							<li><em>余额：</em><span>{$rs[umoney]}</span> <a class="ui-btn ui-btn-red fr ui-mt-sm" href="{N('pay')}">在线充值</a></li>
                            <li><em>邮箱：</em>{$rs[uemail]}</li>
                        </ul>
                    </div>
                    {/sdcms:rs}
                    <div class="clear"></div>
                </div>
            </div>
        </div>
        <!---->
        
    </div>
    
    {include file="foot.php"}
    <script src="{WEB_ROOT}public/js/dropzone.js"></script>
    <script>
	$(".dropzone").dropzone(
	{
		maxFiles: 1,
		params:{token:"{$token}"},
		acceptedFiles:".jpg,.jpeg,.gif,.png",
		success:function(file,data,that)
		{
			data=jQuery.parseJSON(data);
			this.removeFile(file);
			if(data.state=="success")
			{
				sdcms.success("上传成功");
				$("#"+$(that).attr("src",data.msg));
			}
			else
			{
				sdcms.error("上传失败："+data.msg);
			}
		},
		error:function(file,msg)
		{
			sdcms.error(msg);
		}
	});
	</script>
</body>
</html>