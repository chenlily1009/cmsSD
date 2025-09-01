<?php defined('IN_SDCMS') or die();?><?php defined('IN_SDCMS') or die();?><!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp"/>
<title><?php echo $webname;?>参数配置</title>
<link rel="stylesheet" href="../public/css/ui.css">
<link rel="stylesheet" href="css/app.css">
<script src="../public/js/jquery.js"></script>
<script src="../public/js/ui.js"></script>
</head>

<body>
    <div class="bg_header">
        <div class="header width">
        	<div class="logo"></div>
            <div class="nav">
                <ul>
                	<li><a href="javascript:;">安装协议</a></li>
                    <li><a href="javascript:;">环境检测</a></li>
                    <li class="hover"><a href="javascript:;">参数配置</a></li>
                    <li><a href="javascript:;">安装结果</a></li>
                </ul>
            </div>
        </div>
    </div>
    
    <div class="bg_inner"></div>
    <form class="ui-form" method="post">
    <div class="width inner_container">
        <div class="install">
            <div class="subject">
                <b>数据库配置</b>
            </div>
			<div class="ui-form-group ui-row">
                <label class="ui-col-2 ui-col-form-label ui-text-right">数据库类型：</label>
                <div class="ui-col-6 ui-mt">
					<label class="ui-radio"><input type="radio" name="type" id="type_1" value="mysql" checked><i></i>Mysql</label>
					<label class="ui-radio"><input type="radio" name="type" id="type_2" value="sqlite"<?php if ($sqlite==false) { ?> disabled<?php }?>><i></i>Sqlite</label>
				</div>
            </div>
            <div class="ui-form-group ui-row mysql">
                <label class="ui-col-2 ui-col-form-label ui-text-right">数据库地址：</label>
                <div class="ui-col-6"><input type="text" name="t0" class="ui-form-ip" maxlength="50" data-rule="数据库地址:required;"></div>
                <div class="ui-col-4 ui-pl-15"><span class="ui-text-gray">服务器和数据库同一服务器时填写：127.0.0.1</span></div>
            </div>
            <div class="ui-form-group ui-row mysql">
                <label class="ui-col-2 ui-col-form-label ui-text-right">端口：</label>
                <div class="ui-col-6"><input type="text" name="t1" class="ui-form-ip" maxlength="50" value="3306" data-rule="端口:required;"></div>
                <div class="ui-col-4"></div>
            </div>
            <div class="ui-form-group ui-row mysql">
                <label class="ui-col-2 ui-col-form-label ui-text-right">数据库名：</label>
                <div class="ui-col-6"><input type="text" name="t2" class="ui-form-ip" maxlength="50" data-rule="数据库名:required;"></div>
                <div class="ui-col-4"></div>
            </div>
            <div class="ui-form-group ui-row mysql">
                <label class="ui-col-2 ui-col-form-label ui-text-right">数据库账号：</label>
                <div class="ui-col-6"><input type="text" name="t3" class="ui-form-ip" maxlength="50" data-rule="数据库账号:required;"></div>
                <div class="col-4 ui-pl-15"><span class="ui-text-gray">如果是阿里云的数据库，加密模式选择：41位</span></div>
            </div>
            <div class="ui-form-group ui-row mysql">
                <label class="ui-col-2 ui-col-form-label ui-text-right">数据库密码：</label>
                <div class="ui-col-6"><input type="text" name="t4" class="ui-form-ip" maxlength="50" data-rule="数据库密码:required;"></div>
                <div class="ui-col-4"></div>
            </div>
			<div class="ui-form-group ui-row sqlite hide">
                <label class="ui-col-2 ui-col-form-label ui-text-right">数据库名：</label>
                <div class="ui-col-6"><input type="text" name="t8" class="ui-form-ip" maxlength="20" value="cms_<?php echo $rand;?>.db" data-rule="数据库名:required;"></div>
                <div class="ui-col-4"></div>
            </div>
            <div class="ui-form-group ui-row">
                <label class="ui-col-2 ui-col-form-label ui-text-right">表前缀：</label>
                <div class="ui-col-6"><input type="text" name="t5" class="ui-form-ip" value="sd_" maxlength="50" data-rule="表前缀:required;"></div>
                <div class="ui-col-4"></div>
            </div>
            
            <div class="subject">
                <b>管理员配置</b>
            </div>
            <div class="ui-form-group ui-row">
                <label class="ui-col-2 ui-col-form-label ui-text-right">用户名：</label>
                <div class="ui-col-6"><input type="text" name="t6" class="ui-form-ip" maxlength="12" data-rule="用户名:required;username;"></div>
                <div class="ui-col-4"></div>
            </div>
            <div class="ui-form-group ui-row">
                <label class="ui-col-2 ui-col-form-label ui-text-right">密码：</label>
                <div class="ui-col-6"><input type="text" name="t7" class="ui-form-ip" maxlength="16" data-rule="密码:required;password"></div>
                <div class="ui-col-4"></div>
            </div>
            <div class="ui-text-center ui-mt-20"><input type="hidden" name="token" value="<?php echo $token;?>"><button type="button" class="ui-btn ui-mr" onClick="location.href='?act=check'">上一步</button><button type="submit" id="sdcms-submit" class="ui-btn ui-btn-blue">下一步</button></div>
        </div>
        
    </div>
    </form>
    <div class="ui-text-center ui-mb-20">版权所有 @  成都生动网络科技有限公司　<a href="https://www.sdcms.cn" target="_blank">Powered By Sdcms.Cn</a></div>

    <!--[if lt IE 9]>
    <div class="notsupport">
        <h1>:( 非常遗憾</h1>
        <h2>您的浏览器版本太低，请升级您的浏览器</h2>
    </div>
    <![endif]-->
    <script>
		$(function()
		{
			$("#type_1").click(function()
			{
				$(".mysql").removeClass("hide");
				$(".sqlite").addClass("hide");
			});
			$("#type_2").click(function()
			{
				$(".mysql").addClass("hide");
				$(".sqlite").removeClass("hide");
			});
			$(".ui-form").form(
			{
				type:2,
				align:'center',
				result:function(form)
				{
					sdcms.loading("正在安装，请稍候");
					$("#sdcms-submit").attr("disabled",true);
					$.ajax(
					{
						type:'post',
						cache:false,
						dataType:'json',
						url:'<?php echo THIS_LOCAL;?>',
						data:$(form).serialize(),
						error:function(e)
                        {
                            $.progress('close');
                            $("#sdcms-submit").attr("disabled",false);
                            alert('数据库链接失败');
                        },
						success:function(d)
						{
							$.progress('close');
							$("#sdcms-submit").attr("disabled",false);
							if(d.state=='success')
							{
								setTimeout(function(){location.href='?act=result';},500);
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