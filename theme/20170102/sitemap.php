<?php if(!defined('IN_SDCMS')) exit;?>{include file="top.php"}
<title>网站地图_{sdcms[web_name]}</title>
<meta name="keywords" content="{sdcms[seo_key]}">
<meta name="description" content="{sdcms[seo_desc]}">
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
                    <li class="active">网站地图</li>
                </ul>
            </div>
        </div>
    </div>
    
    <div class="width">
    	<div class="h1">网站地图<span>SITEMAP</span></div>
        <div class="page_show">
        	<!---->
            {sdcms:rp top="0" table="sd_category" where="followid=0 and isshow=1" order="catenum,cateid"}{php $map_sonid=$rp[cateid]}
            <div class="map_one"><a href="{cateurl($rp[cateid])}" title="{$rp[catename]}"{if $rp[isblank]==1} target="_blank"{/if}>{$rp[catename]}</a></div>
            <div class="map_two">
                {sdcms:rs top="0" table="sd_category" where="followid=$map_sonid" order="catenum,cateid"}
                <a href="{cateurl($rs[cateid])}" title="{$rs[catename]}"{if $rs[isblank]==1} target="_blank"{/if}>{$rs[catename]}</a>
                {/sdcms:rs}
            </div>
            {/sdcms:rp}
            <!---->
        </div>
    </div>

    {include file="foot.php"}
    
</body>
</html>