<?php if(!defined('IN_SDCMS')) exit;?>{include file="top.php"}
<title>标签_{sdcms[web_name]}</title>
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
                    <li class="active"><a href="{N('tags')}" title="标签">标签</a></li>
                </ul>
            </div>
        </div>
    </div>
    
    <div class="width">
    	<div class="h1">标签<span>TAGS</span></div>
        <div class="page_show">
        	<!---->
             <ul class="tags mt20">
               {sdcms:rs pagesize="60" table="sd_tags" order="id desc"}
               <li><a href="{U('taglist','id='.$rs[id].'')}" title="{$rs[title]}" target="_blank">{$rs[title]}</a></li>
               {/sdcms:rs}
             </ul>
             <div class="clear"></div>
             <div class="ui-page ui-page-red ui-page-center ui-mb ui-mt-20"><ul>{$showpage}</ul></div>            
            <!---->
        </div>
    </div>

    {include file="foot.php"}
    
</body>
</html>