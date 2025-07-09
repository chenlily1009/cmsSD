<?php if(!defined('IN_SDCMS')) exit;?>{include file="top.php"}
<title>我的主题_{sdcms[bbs_webname]}</title>
<meta name="keywords" content="{$seokey}">
<meta name="description" content="{$seodesc}">
</head>

<body>
	
    {include file="head.php"}
    
    <div class="banner_inner" style="background:url({WEB_ROOT}theme/20170102/images/b1.jpg) no-repeat center;">
    	<div class="width">
        	<div class="arrow"></div>
        </div>
    </div>
    
    <div class="position">
    	<div class="ui-bread ui-bread-1 width">
        	<ul>
                <li><a href="{$webroot}">首页</a></li>
                <li><a href="{N('bbs')}">社区首页</a></li>
                <li class="active"><a href="{THIS_LOCAL}">我的主题</a></li>
            </ul>
        </div>
    </div>
    
	<div class="bg_blue pt20">
    	<div class="width ui-box">
    	<!---->
        <div class="ui-row bbs">
            <div class="bbs-left">
                {include file="bbs/left.php"}
            </div>
            <div class="bbs-right">
                <div class="ui-tabs" data-href="1">
                    <div class="ui-tabs-header-nav">
                        <ul class="ui-tabs-nav">
                            <li class="active"><a href="{U('bbs/mytopic','uid='.$uid.'')}">我的主题</a></li>
                            <li><a href="{U('bbs/myreply','uid='.$uid.'')}">我的回复</a></li>
                        </ul>
                    </div>
                </div>
                <div class="bbs-topic">
                    {sdcms:rs pagesize="20" table="sd_bbs" join="left join sd_user on sd_bbs.userid=sd_user.id" where="sd_bbs.islock=1 and userid=$uid" order="ontop desc,bbs_id desc" key="bbs_id"}
                    <div class="bbs-topic-item ui-scrollspy" data-am="ui-am-slide-bottom" data-time="{$i*100}">
                        <div class="face"><img src="{if !isempty($rs[uface])}{$rs[uface]}{else}{WEB_ROOT}upfile/noface.gif{/if}" alt="{$rs[uname]}"></div>
                        <div class="body">
                            <div class="title text-hide"><a href="{N('bbsshow','','id='.$rs[bbs_id].'')}" title="{$rs[title]}">{$rs[title]}</a>{if $rs[ontop]==1}<em>置顶</em>{/if}{if $rs[isnice]==1}<em>精</em>{/if}</div>
                            <div class="desc"><a href="{U('bbs/mytopic','uid='.$rs[userid].'')}">{$rs[uname]}</a>　{formatTime($rs[createdate])}</div>
                        </div>
                        <div class="other"><i class="ui-icon-eye"></i>{$rs[hits]}<br /><i class="ui-icon-comment"></i>{$rs[replynum]}</div>
                    </div>
                    {/sdcms:rs}
                    {if $pg->totalpage>1}<div class="ui-page ui-page-center ui-page-red ui-page-mid ui-mt-20"><ul>{$showpage}</ul></div>{/if}
                </div>
                
            </div>
        </div>
        <!---->
        </div>
    </div>
    
    {include file="foot.php"}
    <script>
	$(function(){
		$("#nav_bbs").addClass("hover");
	});
	</script>
   
</body>
</html>