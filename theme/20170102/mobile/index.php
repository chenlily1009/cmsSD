<?php if(!defined('IN_SDCMS')) exit;?>{include file="mobile/top.php"}
<title>{if strlen(sdcms[seo_title])>0}{sdcms[seo_title]}_{/if}{sdcms[web_name]}</title>
<meta name="keywords" content="{sdcms[seo_key]}">
<meta name="description" content="{sdcms[seo_desc]}">
{include file="mobile/wxshare.php"}
</head>

<body>

	<header class="header">
    	<div class="fr"><a href="{N('user')}" class="ui-icon-user"></a></div>
    	<div class="fl"><a href="javascript:;" class="ui-icon-list ui-offside-show" data-target="#nav_top"></a></div>
        <div class="logo"><a href="{WEB_ROOT}"><img src="{sdcms[mobile_logo]}" alt="{sdcms[web_name]}" /></a></div>
        <div class="clear"></div>
    </header>
    
    <div class="ui-offside ui-offside-left" id="nav_top">   
        <div class="ui-collapse-menu-title"><a href="{$webroot}" title="网站首页">网站首页</a></div>
        {sdcms:rp top="0" table="sd_category" where="followid=0 and isshow=1" order="catenum,cateid"}
        {php $sub_sonid=$rp[cateid]}
        {php $sub_num=get_sonid_num($rp[cateid])}
        <div class="ui-collapse-menu-title {is_active($rp[cateid],$parentid,'active',1)}">
            <a href="{cateurl($rp[cateid])}" title="{$rp[catename]}">{$rp[catename]}</a>{if $sub_num>0}<i class="ui-icon-right"></i>{/if}
        </div>
        {if $sub_num>0}
        <div class="ui-collapse-menu-body {is_active($rp[cateid],$parentid,'ui-show',1)}">
            <ul>
                {sdcms:rs top="0" table="sd_category" where="followid=$sub_sonid and isshow=1" order="catenum,cateid"}
                <li{is_active($rs[cateid],$parentid,'active')}><a href="{cateurl($rs[cateid])}" title="{$rs[catename]}"{if $rs[isblank]==1}{/if}><i class="ui-icon-square ui-font-14 ui-mr"></i>{$rs[catename]}</a></li>
                {/sdcms:rs}
            </ul>
        </div>
        {/if}
        {/sdcms:rp}
    </div>
       
    <div class="mwidth banner">
    	<div class="ui-carousel" data-arrow="false">
            <div class="ui-carousel-inner">
            	{sdcms:rs table="sd_ad" where="akey='mobile' and islock=1"}
                    {php $adlist=jsdecode($rs[datalist])}
                	{php $step=0}
                    {foreach $adlist as $num=>$val}
                    	<div class="ui-carousel-item{if $step==0} active{/if}"><a href="{$val['url']}"><img src="{$val['image']}" alt="{$val['desc']}"></a></div>
                    {php $step++}
                    {/foreach}
                {/sdcms:rs}
            </div>
        </div>
    </div>
    
    <article>
    	<section>
        	<div class="subject">
                <b>服务项目</b>
            </div>
            <div class="clear"></div>
            <div class="home_services">
        	<ul>
            	<li><a href="{cateurl(15)}">
                	<div class="icon"><div class="mark"><span class="ui-icon-laptop"></span></div></div>
                    <h3>营销型网站建设</h3>
                    <h5>面向搜索引擎/用户友好，提升网站展示率及关注度。不只是好看，重要的是实用，以用户为中心。</h5>
                    </a>
                </li>
                <li><a href="{cateurl(16)}">
                	<div class="icon"><div class="mark"><span class="ui-icon-cloud"></span></div></div>
                    <h3>网站运营推广</h3>
                    <h5>数据监控分析、目标用户行为研究、网站日常更新及内容编辑标准化、网站策划及推广、网站运营流程优化等。</h5>
                    </a>
                </li>
                <li><a href="{cateurl(17)}">
                	<div class="icon"><div class="mark"><span class="ui-icon-barchart"></span></div></div>
                    <h3>网络营销策划</h3>
                    <h5>创造、宣传、传递客户价值，发现、满足或创造顾客需求，有效提升企业订单增长及企业品牌影响力。</h5>
                    </a>
                </li>
                <li><a href="{cateurl(18)}">
                	<div class="icon"><div class="mark"><span class="ui-icon-trophy"></span></div></div>
                    <h3>网络品牌管理</h3>
                    <h5>提升品牌资产及内部管理效率，制定以品牌核心价值为中心的品牌识别系统，优选品牌化战略与品牌架构。</h5>
                    </a>
                </li>
            </ul>
            <div class="clear"></div>
        </div>
            <div class="home_more"><a href="{cateurl(2)}">查看更多</a></div>
        </section>

    	<section>
        	<div class="subject">
                <b>客户案例</b>
            </div>
            <div class="clear"></div>
            <div class="home_case">
            	<ul>
                	{php $sonid=get_sonid_all(4)}
                    {sdcms:rs top="4" table="sd_content" where="islock=1 and classid in($sonid)" order="ontop desc,ordnum desc,id desc"}
                	<li><a href="{$rs[link]}" title="{$rs[title]}"><div><img src="{thumb($rs[pic],260,184)}" alt="{$rs[title]}"></div><p class="text-hide">{$rs[title]}</p></a></li>
                    {/sdcms:rs}
                </ul>
                <div class="clear"></div>
            </div>
            <div class="home_more"><a href="{cateurl(4)}">查看更多</a></div>
        </section>
        
        <section>
        	<div class="subject">
                <b>新闻中心</b>
            </div>
            <div class="clear"></div>
            <ul class="home_news">
                {php $sonid=get_sonid_all(3)}
                {sdcms:rs top="6" table="sd_content" where="islock=1 and classid in($sonid)" order="ontop desc,ordnum desc,id desc"}
                <li><span class="date">{date('m-d',$rs[createdate])}</span><div class="right"><a href="{$rs[link]}" title="{$rs[title]}" class="text-hide">{$rs[title]}</a><p class="text-hide">{cutstr(nohtml($rs[intro]),160)}</p></div></li>
                {/sdcms:rs}
             </ul>
             <div class="clear"></div>
             <div class="home_more"><a href="{cateurl(3)}">查看更多</a></div>
        </section>
        
        <section>
        	<div class="subject">
                <b>关于我们</b>
            </div>
            <div class="clear"></div>
            <div class="about">
            	{block("about")}
            </div>
            <div class="home_more"><a href="{cateurl(1)}">查看更多</a></div>
        </section>
 
        <section>
        	<div class="subject">
                <b>人才招聘</b>
            </div>
            <div class="clear"></div>
            <div class="job_list">
            	<ul>
                	{php $sonid=get_sonid_all(5)}
                    {sdcms:rs top="4" table="sd_model_job" join="left join sd_content on sd_model_job.cid=sd_content.id" where="islock=1 and classid in($sonid)" order="ontop desc,ordnum desc,id desc"}
                	<li><a href="{$rs[link]}" title="{$rs[title]}">{$rs[title]}</a><div class="money">{$rs[work_money]}<span>{$rs[work_address]}</span></div></li>
                    {/sdcms:rs}
                </ul>
                <div class="clear"></div>
            </div>
            <div class="home_more"><a href="{cateurl(5)}">查看更多</a></div>
        </section>
        
    </article>
    {include file="mobile/foot.php"}
</body>
</html>