<?php if(!defined('IN_SDCMS')) exit;?>{include file="top.php"}
<title>{$keyword}_{sdcms[web_name]}</title>
<meta name="keywords" content="{sdcms[seo_key]}">
<meta name="description" content="{sdcms[seo_desc]}">
</head>

<body>
	
    {include file="head.php"}    
    
    <div class="banner_inner" style="background:url({WEB_ROOT}theme/20170102/images/b1.jpg) no-repeat center;">
    	<div class="width">
        	<div class="arrow"></div>
        </div>
    </div>
    <div class="position">
    	<div class="width">
            <div class="ui-bread ui-bread-1">
                <ul>
                    <li><a href="{$webroot}">首页</a></li>
                    <li><a>站内搜索</a></li>
                    <li class="active">{$keyword}</li>
                </ul>
            </div>
        </div>
    </div>
    
    <div class="width">
    	<div class="h1">站内搜索<span>SEARCH</span></div>
        <div class="page_show">
        	<!---->
             <div class="home_news">
                <ul>
                   {sdcms:rs pagesize="20" table="sd_content" where="$where" order="ontop desc,ordnum desc,id desc"}
                   {rs:eof}<p>暂无资料</p>{/rs:eof}
                   <li>
                        <div class="date">{date('m-d',$rs[createdate])}<span>{date('Y',$rs[createdate])}</span></div>
                        <a href="{$rs[link]}" title="{$rs[title]}">
                            <div class="title text-hide">{str_replace($keyword,"<font color=red>$keyword</font>",$rs[title])}</div>
                            <div class="intro">{str_replace($keyword,"<font color=red>$keyword</font>",cutstr(nohtml($rs[intro]),160,1))}</div>
                        </a>
                    </li>
                   {/sdcms:rs}
                 </ul>
             </div>
             <div class="clear"></div>
             <div class="ui-page ui-page-red ui-page-center ui-mb ui-mt-20"><ul>{$showpage}</ul></div>
            
            <!---->
        </div>
    </div>

    {include file="foot.php"}
    
</body>
</html>