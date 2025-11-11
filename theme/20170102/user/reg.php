<?php if(!defined('IN_SDCMS')) exit;?>{include file="top.php"}
<title>会员注册_{sdcms[web_name]}</title>
<meta name="keywords" content="{sdcms[seo_key]}">
<meta name="description" content="{sdcms[seo_desc]}">
</head>

<body>

    {include file="head.php"}
    
    <div class="position">
        <div class="ui-bread ui-bread-1 width">
            <ul>
                <li><a href="{WEB_ROOT}">首页</a></li>
                <li class="active">会员注册</li>
            </ul>
        </div>
    </div>

    <div class="width inner_container">
                
        <!---->
            <div class="page_login">
                <div class="left">
                    <div class="subject">
                        <b>{if $isapi==1}完善资料{else}会员注册{/if}</b>
                    </div>
                    <div class="ui-pt-40">
                        {if $isapi==1}
                        <div class="api_user"><span>{$api_info.nickname}</span>，请完善账户资料，如已有账户，请绑定账户。　【<a href="{U('user/apiout')}">退出</a>】</div>
                        {/if}
                        <!--表单部分开始-->
                        <form method="post" class="ui-form ml-40">
                        <div class="ui-form-group ui-row">
                            <label class="ui-col-2 ui-col-form-label ui-text-right">用户名：</label>
                            <div class="ui-col-7">
                                <input type="text" name="uname" class="ui-form-ip" {if $isapi==1}value="{$api_info.nickname}" {/if}placeholder="请输入用户名" data-rule="用户名:required;username;">
                            </div>
                        </div>
                        <div class="ui-form-group ui-row">
                            <label class="ui-col-2 ui-col-form-label ui-text-right">密码：</label>
                            <div class="ui-col-7">
                                <input type="password" name="upass" autocomplete="off" id="upass" class="ui-form-ip" placeholder="请输入密码" data-rule="密码:required;password;">
                            </div>
                        </div>
                        <div class="ui-form-group ui-row">
                            <label class="ui-col-2 ui-col-form-label ui-text-right">确认密码：</label>
                            <div class="ui-col-7">
                                <input type="password" name="repass" class="ui-form-ip" placeholder="请再次输入密码" data-rule="确认密码:required;password;match(upass)">
                            </div>
                        </div>
                        <div class="ui-form-group ui-row">
                            <label class="ui-col-2 ui-col-form-label ui-text-right">邮箱：</label>
                            <div class="ui-col-7">
                                <input type="text" name="email" class="ui-form-ip" placeholder="请输入邮箱，用于找回密码等" data-rule="邮箱:required;email;">
                            </div>
                        </div>
                        {if sdcms[user_reg_auth]==1}
                        <div class="ui-form-group ui-row">
                            <label class="ui-col-2 ui-col-form-label ui-text-right">验证码：</label>
                            <div class="ui-col-7">
                                <div class="ui-input-group">
                                    <input type="text" name="code" id="code" class="ui-form-ip radius-right-none" placeholder="请输入验证码" data-rule="验证码:required;">
                                    <div class="code"><img src="{U('code')}" height="40" id="verify" title="点击更换验证码"></div>
                                </div>
                            </div>
                        </div>
                        {/if}
                        {if sdcms[user_reg_type]==2&&sdcms[mail_type]>0}
                        <div class="ui-form-group ui-row">
                            <label class="ui-col-2 ui-col-form-label ui-text-right">邮箱验证码：</label>
                            <div class="ui-col-7">
                                <div class="ui-input-group">
                                    <input type="text" name="ecode" id="ecode" class="ui-form-ip radius-right-none" placeholder="请输入邮箱验证码" data-rule="邮箱验证码:required;">
                                    <button type="button" class="after">获取验证码</button>
                                </div>
                            </div>
                        </div>
                        {/if}
                        <div class="ui-form-group ui-row">
                            <label class="ui-col-2 ui-col-form-label ui-text-right"></label>
                            <div class="ui-col-7">
                                <input type="hidden" name="token" value="{$token}"><input type="submit" class="ui-btn ui-btn-red" value="{if $isapi==1}注册新用户{else}注册{/if}">
                            </div>
                        </div>
                        </form>
                        <!--表单部分结束-->
                    </div>
                </div>
                <div class="right form-right">
                    <!--右侧开始-->
                    <h3>已有账户？</h3>
                    <a href="{N('login')}" class="ui-btn ui-btn-yellow">{if $isapi==1}绑定账户{else}立即登录{/if}</a>
                    {if $isapi==0 && (sdcms[api_qq_open]==1 || sdcms[api_weibo_open]==1 || sdcms[api_weixin_open]==1)}
                    <div class="quick">
                        <h3>快捷登录</h3>
                        {if sdcms[api_qq_open]==1}<a href="{WEB_URL}{WEB_ROOT}api/login/qq/api.php" title="QQ登录"><span class="ui-icon-qq blue"></span>QQ登录</a>{/if}
                        {if sdcms[api_weibo_open]==1}<a href="{WEB_URL}{WEB_ROOT}api/login/weibo/api.php" title="微博登录"><span class="ui-icon-weibo red"></span>微博登录</a>{/if}
                        {if sdcms[api_weixin_open]==1}<a href="{WEB_URL}{WEB_ROOT}api/login/weixin/api.php" title="微信登录"><span class="ui-icon-weixin green"></span>微信登录</a>{/if}
                    </div>
                    {/if}
                    <!--右侧结束-->
                </div>
                <div class="clear"></div>
            </div>
        <!---->
        
    </div>
    
    {include file="foot.php"}
    <script>
	$(function()
	{
		{if sdcms[user_reg_auth]==1}
		$("#verify").click(function()
		{
			$(this).attr("src",$(this).attr("src")+"{iif(sdcms[url_mode]==1,"&","?")}rnd="+Math.round());
			$("#code").val("");
		});
		{/if}
		$(".after").click(function(event)
		{
			var that=$(this);
			var email=that.closest("form").find("[name=email]").val();
			if(email=='')
			{
				sdcms.warn('请输入邮箱');
				return false;
			}			
			var code='';
			{if sdcms[user_reg_type]==2&&sdcms[mail_type]>0}
			var code=that.closest("form").find("[name=code]").val();
			if(code=='')
			{
				sdcms.warn('请输入验证码');
				return false;
			}
			{/if}
			$.ajax(
			{
				url:"{U('regcode')}",
				type:'post',
				cache:false,
				dataType:'json',
				data:'token={$token}&email='+encodeURIComponent(email)+'&code='+encodeURIComponent(code),
				error:function(e){alert(e.responseText);},
				success:function(d)
				{
					if(d.state=='success')
					{
						that.backtime();
						sdcms.success(d.msg);
					}
					else
					{
						{if sdcms[user_reg_type]==1}$("#verify").click();{/if}
						sdcms.error(d.msg);
					}
				}
			});
			
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
							setTimeout(function(){location.href='{$lasturl}';},1500);
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