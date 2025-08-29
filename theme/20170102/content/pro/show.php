<?php if(!defined('IN_SDCMS')) exit;?>{include file="top.php"}
<title>{if !isempty($seotitle)}{$seotitle}{else}{$title}{/if}_{if $page>1}第{$page}页_{/if}{$catename}_{sdcms[web_name]}</title>
<meta name="keywords" content="{if !isempty($seokey)}{$seokey}{else}{$title}{/if}">
<meta name="description" content="{if !isempty($seodesc)}{$seodesc}{else}{$title}{/if}">
</head>

<body>
	
    {include file="head.php"}    
    
    <div class="banner_inner" style="background:url({get_cate_self($mycatepic,$topid,'mycatepic',WEB_ROOT.'theme/20170102/images/b1.jpg')}) no-repeat center;">
    	<div class="width">
        	<div class="arrow"></div>
        </div>
    </div>
    <div class="position">
    	<div class="width">
            <div class="ui-bread ui-bread-1">
                <ul>
                    <li><a href="{$webroot}">首页</a></li>
                    {foreach $position as $rs}
                    <li><a href="{$rs['url']}" title="{$rs['url']}">{$rs['name']}</a></li>
                    {/foreach}
                    <li>内容</li>
                </ul>
            </div>
        </div>
    </div>
    
    <div class="width">
        <div class="page_show">
        	<!---->
            <div class="mt20"></div>
            {php $piclist=str_replace(PHP_EOL,'\n',$piclist)}
        	{php $piclist=jsdecode($piclist)}
            <div class="skin-left">
            	{if count($piclist)>0}
                {php $step=0}
                {foreach $piclist as $index=>$val}
                {php $step++}
            	<img src="{$val['image']}" alt="{$title}">
                {/foreach}
                {/if}
                {$content}
            </div>
            <div class="skin-right">
            	<div class="skin-show">
                	<h1>{$title}</h1>
                    <p>{$intro}</p>
                    <ul>
                    	<li><span>日期：</span>{date('Y-m-d',$createdate)}</li>
                        <li><span>人气：</span>{$hits}</li>
                        {if $price==0}
                        <li><span>价格：</span><em>面议</em></li>
                        {else}
                        <li><span>价格：</span><em>{$price}</em> 元</li>
                        {/if}
                        {foreach $field as $key=>$rs}
                        {if !empty($rs)}
                        <li><span>{$key}：</span>{$rs}</li>
                        {/if}
                        {/foreach}
                    </ul>
                    {if $price!=0}
                    <div class="action">
                    	<a href="javascript:;" class="buy ui-modal-show" data-target="#my-inquiry">我要询价</a>
                        <a href="javascript:;" class="demo ui-modal-show" data-target="#my-order">我要订购</a>
                    </div>
                    {/if}
                </div>
                {if count($edata)>0}
                <div class="skin-desc">
                	<h2>相关说明</h2>
                    <ul>
                    	{foreach $edata as $key=>$rs}
                        <li><span>{$rs['field_title']}：</span>{if isset($extend[$rs['field_key']])}{$extend[$rs['field_key']]}{/if}</li>
                        {/foreach}
                    </ul>
                </div>
                {/if}
            </div>
            <div class="clear"></div>
            {if count($tags)>0}
            <div class="mt20"></div>
            <div class="h2"><span>相关案例</span></div>
             <div class="home_case">
                <ul>
                   {sdcms:rs top="8" table="sd_model_pro" join="left join sd_content on sd_model_pro.cid=sd_content.id" where="$like" order="ontop desc,ordnum desc,id desc"}
                   {rs:eof}<p>暂无资料</p>{/rs:eof}
                	<li><a href="{$rs[link]}" title="{$rs[title]}"><div><img src="{$rs[pic]}" alt="{$rs[title]}"></div><p>{$rs[title]}</p></a></li>
                    {/sdcms:rs}
                </ul>
                <div class="clear"></div>
            </div>
            {/if}
            <div class="clear"></div>
            <!---->
        </div>
    </div>
    
   
    {include file="foot.php"}
    <div class="ui-modal" id="my-inquiry">
        <div class="ui-modal-header">
            <div class="ui-modal-title">我要询价</div>
            <div class="ui-modal-close ui-rotate">×</div>
        </div>
        <div class="ui-modal-body">
        	<!---->
            <form class="ui-form" id="form_inquiry" method="post">
                <div class="ui-form-group ui-row">
                    <label class="ui-col-3 ui-col-form-label ui-text-right">姓名：</label>
            		<div class="ui-col-9">
                    	<input type="text" name="truename" class="ui-form-ip" value="{$truename}" placeholder="请输入您的姓名" data-rule="姓名:required;">
                    </div>
                </div>
                <div class="ui-form-group ui-row">
                    <label class="ui-col-3 ui-col-form-label ui-text-right">手机号码：</label>
            		<div class="ui-col-9">
                    	<input type="text" name="mobile" maxlength="11" class="ui-form-ip" value="{$mobile}" placeholder="请输入您的手机号码" data-rule="手机号码:required;mobile;">
                    </div>
                </div>
                <div class="ui-form-group ui-row">
                    <label class="ui-col-3 ui-col-form-label ui-text-right">询价内容：</label>
            		<div class="ui-col-9">
                    	<textarea name="remark" class="ui-form-ip" rows="5" placeholder="请输入询价内容" data-rule="询价内容:required;"></textarea>
                    </div>
                </div>
                <div class="ui-form-group ui-row ui-mb-0">
                    <label class="ui-col-3 ui-col-form-label ui-text-right"></label>
            		<div class="ui-col-9">
                    	<input type="hidden" name="token" value="{$token}"><button type="submit" class="ui-btn ui-btn-red">提交询价</button>
                    </div>
                </div>
            </form>
            <!---->
        </div>
    </div>
    {if $price>0}
    <div class="ui-modal" id="my-order">
        <div class="ui-modal-header">
            <div class="ui-modal-title">我要订购</div>
            <div class="ui-modal-close rotate">×</div>
        </div>
        <div class="ui-modal-body">
        	<!---->
            {if sdcms[web_order_login]==1 && USER_ID==0}
            	请先<a href="{N('login')}" class="ui-text-red ui-ml ui-mr">登录</a>或<a href="{N('reg')}" class="ui-text-red ui-ml ui-mr">注册</a>
            {else}
            <form class="ui-form" id="form_order" method="post">
                <div class="ui-form-group ui-row">
                    <label class="ui-col-3 ui-col-form-label ui-text-right">姓名：</label>
            		<div class="ui-col-9">
                    	<input type="text" name="truename" class="ui-form-ip" value="{$truename}" placeholder="请输入您的姓名" data-rule="姓名:required;">
                    </div>
                </div>
                <div class="ui-form-group ui-row">
                    <label class="ui-col-3 ui-col-form-label ui-text-right">手机号码：</label>
            		<div class="ui-col-9">
                    	<input type="text" name="mobile" maxlength="11" class="ui-form-ip" value="{$mobile}" placeholder="请输入您的手机号码" data-rule="手机号码:required;mobile;">
                    </div>
                </div>
                <div class="ui-form-group ui-row">
                    <label class="ui-col-3 ui-col-form-label ui-text-right">订购数量：</label>
            		<div class="ui-col-9">
                    	<input type="text" name="pronum" maxlength="6" class="ui-form-ip" placeholder="请输入订购数量" data-rule="订购数量:required;int;">
                    </div>
                </div>
                <div class="ui-form-group ui-row">
                    <label class="ui-col-3 ui-col-form-label ui-text-right">收货地址：</label>
            		<div class="ui-col-9">
                    	<input type="text" name="address" maxlength="255" class="ui-form-ip" value="{$address}" placeholder="请输入收货地址" data-rule="收货地址:required;">
                    </div>
                </div>
                <div class="ui-form-group ui-row">
                    <label class="ui-col-3 ui-col-form-label ui-text-right">备注：</label>
            		<div class="ui-col-9">
                    	<textarea name="remark" class="ui-form-ip" rows="5" placeholder="请输入备注，可以为空"></textarea>
                    </div>
                </div>
                <div class="ui-form-group ui-row ui-mb-0">
                    <label class="ui-col-3 ui-col-form-label ui-text-right"></label>
            		<div class="ui-col-9">
                    	<input type="hidden" name="token" value="{$token}"><button type="submit" class="ui-btn ui-btn-red">提交订单</button>
                    </div>
                </div>
            </form>
            {/if}
            <!---->
        </div>
    </div>

    {/if}
	<script>
	$(function()
	{
		$("#form_inquiry").form(
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
					url:'{U("other/inquiry/","id=".$id."","",1)}',
					data:$(form).serialize(),
					error:function(e){alert(e.responseText);},
					success:function(d)
					{
						if(d.state=='success')
						{
							sdcms.success(d.msg);
							$("#form_inquiry")[0].reset();
							$("#my-inquiry").modal('close');
						}
						else
						{
							sdcms.error(d.msg);
						}
					}
				});
			}
		});
		{if $price>0}
		$("#form_order").form(
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
					url:'{U("other/order/","id=".$id."","",1)}',
					data:$(form).serialize(),
					error:function(e){alert(e.responseText);},
					success:function(d)
					{
						if(d.state=='success')
						{
							location.href=d.msg;
						}
						else
						{
							sdcms.error(d.msg);
						}
					}
				});
			}
		});
		{/if}
	})
	</script>
</body>
</html>