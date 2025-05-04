<?php if(!defined('IN_SDCMS')) exit;?><!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="renderer" content="webkit">
<title>附件选择</title>
<link rel="stylesheet" href="{WEB_ROOT}public/css/ui.css">
<link rel="stylesheet" href="{WEB_ROOT}public/admin/css/layout.css">
<script src="{WEB_ROOT}public/js/jquery.js"></script>
<script src="{WEB_ROOT}public/js/ui.js"></script>
<script src="{WEB_ROOT}public/webuploader/webuploader.js"></script>
<script src="{WEB_ROOT}public/admin/js/base.js"></script>
<style>
.webuploader-container {
	position: relative;
}
.webuploader-element-invisible {
	position: absolute !important;
	clip: rect(1px 1px 1px 1px); /* IE6, IE7 */
    clip: rect(1px,1px,1px,1px);
}
.webuploader-pick {
	position: relative;
	display: inline-block;
	cursor: pointer;
	background: #00b7ee;
	color: #fff;
	text-align: center;
	border-radius: 3px;
	overflow: hidden;
}

.webuploader-pick-disable {
	opacity: 0.6;
	pointer-events:none;
}
</style>
</head>

<body class="ui-bg-white">

 <div class="borders">

    <div class="tabs" data-href="1">
            <div class="ui-tabs-header-nav">
                <ul class="ui-tabs-nav">
                	{if $iseditor==0}
                    <li class="active"><a href="{THIS_LOCAL}">附件选择</a></li>
                    {else}
                    <li{if $type==0} class="active"{/if}><a href="{U('imagelist','multiple='.$multiple.'&type=0&iseditor='.$iseditor.'&islocal='.$islocal.'')}">全部文件</a></li>
                    <li{if $type==1} class="active"{/if}><a href="{U('imagelist','multiple='.$multiple.'&type=1&iseditor='.$iseditor.'&islocal='.$islocal.'')}">图片文件</a></li>
                    <li{if $type==2} class="active"{/if}><a href="{U('imagelist','multiple='.$multiple.'&type=2&iseditor='.$iseditor.'&islocal='.$islocal.'')}">视频文件</a></li>
                    <li{if $type==3} class="active"{/if}><a href="{U('imagelist','multiple='.$multiple.'&type=3&iseditor='.$iseditor.'&islocal='.$islocal.'')}">其他文件</a></li>
                    {/if}
                </ul>
                <div class="ui-tabs-header-more" id="filePicker"><a href="javascript:;" class="ui-btn ui-btn-info">上传文件</a></div>
            </div>
            
        </div>
        
        <div class="ui-row ui-mt-15 ui-mb">
        	<div class="filelist-left">
            	<ul>
                	<li{if $gid==0} class="actice"{/if}><a href="{U('imagelist','multiple='.$multiple.'&type='.$type.'&iseditor='.$iseditor.'&islocal='.$islocal.'')}"><span>{$total}</span>未分组</a></li>
                    {sdcms:rs top="0" field="aid,gname,(select count(1) from sd_attachment where gid=a.aid $where_query) as num" table="sd_attachment_group a" where="islock=1" order="ordnum,aid"}
                    <li{if $gid==$rs[aid]} class="actice"{/if}><a href="{U('imagelist','multiple='.$multiple.'&type='.$type.'&iseditor='.$iseditor.'&islocal='.$islocal.'&gid='.$rs[aid].'')}"><span>{$rs[num]}</span>{$rs[gname]}</a></li>
                    {/sdcms:rs}
                </ul>
            </div>
            <div class="filelist-right">
            	<!---->
				
                 <div class="ui-piclist ui-piclist-16-9 ui-piclist-col-4" id="list">
				 	
                 	<div id="list_pre"></div>
                 	{sdcms:rs pagesize="20" table="sd_attachment" where="$where" order="$order"}
                    <div class="ui-piclist-item" data-url="{$rs[file_url]}" title="{$rs[file_name]}">
                        <div class="ui-piclist-image{if $rs[file_type]>1} file-preview file-type-{trim($rs[file_ext],".")}{/if}">
                        {if $rs[file_type]==1}
                            <a><img src="{$rs[file_url]}" /></a>
                        {else}
                        	<a></a>
                        {/if}
                        </div>
                        <div class="ui-piclist-body">
                            <div class="ui-piclist-title ui-text-hide">{cutstr($rs[file_name],20,1)}</div>
                        </div>
                    </div>
                	{/sdcms:rs}
                </div>
            	<!---->
            </div>
        </div>

        {if $total_rs!=0}
        <div class="ui-page ui-page-center ui-page-info ui-mt">
            <ul>{$showpage}</ul>
        </div>
        {/if}

 	<input type="hidden" id="piclist">
    
</div>

<script>
$(function()
{
	$(document).on("click","#list .ui-piclist-item",function()
	{
		if($(this).hasClass("disabled"))
		{
			return;
		}
		var val=$(this).attr("data-url");
		{if $multiple==0}
		$("#list .ui-piclist-item").each(function()
		{
			$(this).removeClass("hover");
		})
		{/if}
		$(this).toggleClass("hover");
		choose();
	});
});
function choose()
{
	var str='';
	$("#list .ui-piclist-item").each(function(){
		var val=$(this).attr("data-url");
		if($(this).hasClass("hover"))
		{
			if(str!='')
			{
				str=str+'|';
			}
			str=str+val;
		}
	})
	$('#piclist').val(str);
}
var serverurl="{U('upload/upfile','type=3&gid='.$gid.'&iseditor='.$iseditor.'&islocal='.$islocal.'')}";
</script>
<script src="{WEB_ROOT}public/webuploader/upload.js"></script>
</body>
</html>