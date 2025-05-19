<?php if(!defined('IN_SDCMS')) exit;?>{include file="top.php"}
<title>{if strlen($seotitle)>0}{$seotitle}_{/if}{$title}_{sdcms[web_name]}</title>
<meta name="keywords" content="{if strlen($seokey)>0}{$seokey}{else}{$title}{/if}">
<meta name="description" content="{if strlen($seodesc)>0}{$seodesc}{else}{$title}{/if}">
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
                    <li><a href="{U('home/form/index/','fid='.$fid.'')}" title="{$title}">{$title}</a></li>
                    <li>内容</li>
                </ul>
            </div>
        </div>
    </div>
    
    <div class="width">
    	<div class="h1">{$title}</div>
        <div class="page_show">
        	<!---->
            <div class="formshow">
                {foreach $field as $key=>$rs}
                <div class="item"><div class="lefter">{$key}：</div><div class="righter">{$rs}</div></div>
                {/foreach}
            </div>
    
            <!---->
        </div>
    </div>

    {include file="foot.php"}
    
</body>
</html>