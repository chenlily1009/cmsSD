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
            <div class="job_show">
                <h1>{$title}</h1>
                <div class="info">
                    <ul>
                        <li><span>工作地点：</span>{$work_address}<br><span>工作性质：</span>{$work_nature}</li>
                        <li><span>学历要求：</span>{$work_education}<br><span>工作年限：</span>{$work_age}</li>
                        <li><span>薪资待遇：</span>{$work_money}<br><span>招聘人数：</span>{$work_num}</li>
                        <li><span>发布日期：</span>{date('Y-m-d',$createdate)}<br><span>人气：</span>{$hits}</li>
                    </ul>
                </div>
                <div class="clear"></div>
                <h2>工作内容：</h2>
                <div class="intro">
                    {$content}
                    <div class="clear"></div>
                </div>
                <h2>任职要求：</h2>
                <div class="intro">
                    {$intro}
                    <div class="clear"></div>
                </div>
                <div class="action"><a href="{U('home/form/add','fid=1&jobname='.$title.'')}" target="_blank">在线应聘</a></div>
                <div class="other">
                    <p>你觉得这工作怎么样？</p><a title="赞一下" class="digs" data-token="{$token}" data-url="{U('other/digs/','id='.$id.'&act=up','',1)}"><span class="ui-icon-like"></span><em>{$upnum}</em></a><a title="踩一下" class="digs" data-token="{$token}" data-url="{U('other/digs/','id='.$id.'&act=down','',1)}"><span class="ui-icon-unlike"></span><em>{$downnum}</em></a>
                </div>
                {if count($tagslist)>0}
                <div class="tags mt-20"><span class="ui-icon-tags"></span> 标签：{foreach $tagslist as $rs}<a href="{$rs['url']}" title="{$rs['name']}" target="_blank">{$rs['name']}</a>{/foreach}</div>
                {/if}
            </div>
            {if count($tags)>0}
            <div class="h2"><span>相关内容</span></div>
            <ul class="like_news">
                {sdcms:rs top="10" table="sd_content" where="$like" order="ontop desc,ordnum desc,id desc"}
                {rs:eof}暂无资料{/rs:eof}
                <li><span>[{date('m-d',$rs[createdate])}]</span><a href="{$rs[link]}" title="{$rs[title]}">{$rs[title]}</a></li>
                {/sdcms:rs}
            </ul>
            {/if}
            <!---->
        </div>
    </div>

    {include file="foot.php"}
    
</body>
</html>