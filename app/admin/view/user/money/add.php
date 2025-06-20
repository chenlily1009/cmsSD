<?php if(!defined('IN_SDCMS')) exit;?><!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="renderer" content="webkit">
<title>财务入账</title>
<link rel="stylesheet" href="{WEB_ROOT}public/css/ui.css">
<link rel="stylesheet" href="{WEB_ROOT}public/admin/css/layout.css">
<script src="{WEB_ROOT}public/js/jquery.js"></script>
<script src="{WEB_ROOT}public/js/ui.js?v=202409"></script>
</head>

<body class="bg_white">
    <div class="border_iframe">
        <!---->
        <form class="ui-form" method="post">
            <div class="ui-form-group ui-row">
                <label class="ui-col-3 ui-col-form-label">用户名：</label>
                <div class="ui-col-9">
                    <input type="text" name="t0" class="ui-form-ip" maxlength="50" data-rule="用户名:required;username;">
                </div>
            </div>
            <div class="ui-form-group ui-row">
                <label class="ui-col-3 ui-col-form-label">金额：</label>
                <div class="ui-col-9">
                    <input type="text" name="t1" class="ui-form-ip" data-rule="金额:required;dot;">
                </div>
            </div>
            
            <div class="ui-form-group ui-row">
                <label class="ui-col-3 ui-col-form-label">性质：</label>
                <div class="ui-col-9 col-right-top">
                    <label class="ui-radio"><input type="radio" name="t2" id="t2_1" value="1" checked data-rule="性质:checked;"><i></i>收入</label>
                    <label class="ui-radio"><input type="radio" name="t2" value="2"><i></i>支出</label>
                </div>
            </div>
            <div class="ui-form-group ui-row">
                <label class="ui-col-3 ui-col-form-label">备注：</label>
                <div class="ui-col-9">
                	<div class="ui-input-group">
                    	<input type="text" name="t3" id="t3" value="" class="ui-form-ip radius-right-none" data-rule="备注:required;">
                        <select onChange="$('#t3').val(this.value)" class="ui-form-ip after">
                            <option value="">候选备注</option>
                            <option value="线下支付宝转账">线下支付宝转账</option>
                            <option value="线下微信转账">线下微信转账</option>
                            <option value="线下银行转账">线下银行转账</option>
                        </select>
                    </div>
                </div>
            </div>
            <div class="ui-form-group ui-hide">
                <input type="hidden" name="token" value="{$token}">
                <button type="submit" id="sdcms-submit">保存</button>
            </div>
        </form>
        <!---->
    </div>

<script>
$(function()
{
	var backurl=window.parent.location;
	$(".ui-form").form(
	{
		type:2,
		align:'bottom-center',
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
						setTimeout(function(){parent.location.href=backurl;},1000);
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