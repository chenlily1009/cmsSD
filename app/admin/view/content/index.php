<?php if(!defined('IN_SDCMS')) exit;?><!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="renderer" content="webkit">
<title>管理页面</title>
<link rel="stylesheet" href="{WEB_ROOT}public/css/ui.css">
<link rel="stylesheet" href="{WEB_ROOT}public/admin/css/iframe.css">
<link rel="stylesheet" href="{WEB_ROOT}public/ztree/css/zTreeStyle.css">
<style>
html,body{display:flex;height:100%;width:100%;position:relative;}
.bar{position:absolute;top:50%;left:0;transform:translateY(-50%);background:url({WEB_ROOT}public/admin/images/arrow.png) no-repeat left;width:22px;height:106px;}
.bar a{display:block;height:106px;}
.ui-offside{width:200px;background:#F6F9FF;overflow-y:auto}
.ui-layout-center{width:100%;background:#F0F4FB;border-left:1px solid #BEDDFF;}
</style>
<script src="{WEB_ROOT}public/js/jquery.js"></script>
<script src="{WEB_ROOT}public/js/ui.js?v=202409"></script>
<script src="{WEB_ROOT}public/ztree/jquery.ztree.core-3.5.min.js"></script>
<script>
var zNodes=[{$str}]
var setting={view:{dblClickExpand:false,showLine:true},data:{simpleData:{enable:true}},callback:{beforeExpand:beforeExpand,onExpand:onExpand,onClick:onClick}};
var curExpandNode=null;
function beforeExpand(treeId,treeNode)
{
	var pNode=curExpandNode?curExpandNode.getParentNode():null;
	var treeNodeP=treeNode.parentTId?treeNode.getParentNode():null;
	var zTree=$.fn.zTree.getZTreeObj("tree");
	for(var i=0,l=!treeNodeP?0:treeNodeP.children.length;i<l;i++)
	{
		if(treeNode!==treeNodeP.children[i])
		{
			zTree.expandNode(treeNodeP.children[i],false);
		}
	};
	while(pNode)
	{
		if(pNode===treeNode){break;}
		pNode=pNode.getParentNode();
	};
	if(!pNode)
	{
		singlePath(treeNode);
	}
};
function singlePath(newNode)
{
	if(newNode===curExpandNode) return;
	if(curExpandNode && curExpandNode.open==true)
	{
		var zTree=$.fn.zTree.getZTreeObj("tree");
		if (newNode.parentTId===curExpandNode.parentTId)
		{
			zTree.expandNode(curExpandNode,false);
		}
		else
		{
			var newParents=[];
			while(newNode)
			{
				newNode=newNode.getParentNode();
				if(newNode===curExpandNode)
				{
					newParents=null;
					break;
				}
				else if(newNode)
				{
					newParents.push(newNode);
				}
			}
			if (newParents!=null)
			{
				var oldNode=curExpandNode;
				var oldParents=[];
				while(oldNode)
				{
					oldNode=oldNode.getParentNode();
					if(oldNode)
					{
						oldParents.push(oldNode);
					}
				}
				if(newParents.length>0)
				{
					zTree.expandNode(oldParents[Math.abs(oldParents.length-newParents.length)-1],false);
				}
				else
				{
					zTree.expandNode(oldParents[oldParents.length-1],false);
				}
			}
		}
	}
	curExpandNode = newNode;
};
function onExpand(event,treeId,treeNode)
{
	curExpandNode=treeNode;
};
function onClick(e,treeId,treeNode)
{
	var zTree=$.fn.zTree.getZTreeObj("tree");
	zTree.expandNode(treeNode,null,null,null,true);
};
var isopen=false;
$(function()
{
	$.fn.zTree.init($("#tree"),setting,zNodes);
	$(".bar").click(function()
	{
		if(isopen)
		{
			$("#ui-offside-left").offside('close');
			isopen=false;
		}
		else
		{
			$("#ui-offside-left").offside('show');
			isopen=true;
		}
		$(".ui-offside-mask").remove();
	});
	$(".bar").click();
});
</script>
</head>
<body>
    <div class="bar"><a href="javascript:;"></a></div>
    <div class="ui-layout-center"><iframe name="content_body" id="content_body" src="{U('lists')}" width="100%" height="100%" frameborder="0" style="display:block;"></iframe></div>
    <div class="ui-offside ui-offside-left" id="ui-offside-left" data-push="true" data-mask="false"><div id="tree" class="ztree"></div></div>
</body>
</html>