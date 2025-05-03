<?php if(!defined('IN_SDCMS')) exit;?><!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="renderer" content="webkit">
<title>栏目权限</title>
<link rel="stylesheet" href="{WEB_ROOT}public/css/ui.css">
<link rel="stylesheet" href="{WEB_ROOT}public/admin/css/layout.css">
<link rel="stylesheet" href="{WEB_ROOT}public/ztree/css/zTreeStyle.css">
<script src="{WEB_ROOT}public/js/jquery.js"></script>
<script src="{WEB_ROOT}public/js/ui.js?v=202409"></script>
<script src="{WEB_ROOT}public/admin/js/base.js"></script>
<script src="{WEB_ROOT}public/ztree/jquery.ztree.core-3.5.min.js"></script>
<script src="{WEB_ROOT}public/ztree/jquery.ztree.excheck-3.5.min.js"></script>
<script>
var setting={check:{enable:true},data:{simpleData:{enable:true}}};
var zNodes=[
{id:-1,pId:0,name:"全选/取消",open:true}
{foreach $cate as $index=>$key}
,{id:{$index},pId:{if $key['followid']==0}-1{else}{$key['followid']}{/if},name:"{$key['catename']}",open:true{if in_array($key['cateid'],$cate_list)},checked:true{/if}}
{/foreach}
]
$(function(){
	$.fn.zTree.init($("#tree"),setting,zNodes);
});
</script>
</head>

<body class="bg_white">
    <div class="border_iframe">
        <!---->
        <form class="ui-form" method="post">
            <div>
                 <ul id="tree" class="ztree"></ul>
            </div>
            
            <div class="ui-form-group ui-hide">
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
			var treeObj=$.fn.zTree.getZTreeObj("tree");
			var nodes=treeObj.getCheckedNodes(true);
			var str="";
			for(var i=0;i<nodes.length;i++)
			{
				if(str==""){str=nodes[i].id}else{str+=","+nodes[i].id}
			} 
			var d0=str.replace("-1,","");
            $.ajax(
			{
                type:'post',
                cache:false,
                dataType:'json',
                url:'{THIS_LOCAL}',
                data:"token={$token}&t0="+encodeURIComponent(d0),
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