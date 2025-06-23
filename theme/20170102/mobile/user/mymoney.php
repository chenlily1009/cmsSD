<?php if(!defined('IN_SDCMS')) exit;?>{include file="mobile/top.php"}
<title>财务明细_{sdcms[web_name]}</title>
<meta name="keywords" content="{sdcms[seo_key]}">
<meta name="description" content="{sdcms[seo_desc]}">
</head>

<body class="ui-bg-white">
	{include file="mobile/head.php"}

    <article>
    	<div class="ui-pl-15 ui-pr-15">
        	<div class="ui-menu ui-menu-red ui-mb-20 ui-mt">
            	<div class="ui-menu-name">财务明细</div>
            </div>

            <!--begin-->
            <div class="ui-btn-group ui-btn-group-red ui-btn-group-bg ui-btn-group-full ui-mb-20">
                <a class="ui-btn-group-item{if $type==0} active{/if}" href="{N('mymoney')}">全部</a>
                <a class="ui-btn-group-item{if $type==1} active{/if}" href="{N('mymoney','','type=1')}">收入</a>
                <a class="ui-btn-group-item{if $type==2} active{/if}" href="{N('mymoney','','type=2')}">支出</a>
            </div>
            
            <div class="ui-p ui-bg-white ui-mt-15">
                <ul class="ui-media-list ui-media-border">
                {sdcms:rs pagesize="20" num="3" table="sd_user_money" where="$where" order="aid desc" key="aid"}
                    <li class="ui-media">
                        <div class="ui-media-body">
                            <div class="ui-media-header">{$rs[title]}</div>
                            <div class="ui-media-text"><span class="ui-font-16 ui-text-gray">{date('Y-m-d H:i:s',$rs[createdate])}</span></div>
                        </div>
                        <div class="ui-media-link ui-media-center"><strong>{if $rs[types]==1}<span class="ui-text-red">+{$rs[amount]}</span>{else}-{$rs[amount]}{/if}</strong></div>
                    </li>
                {/sdcms:rs}
                </ul>
            </div>
            <div class="ui-page ui-page-center ui-page-mid"><ul>{$showpage}</ul></div>
			<!--over-->

        </div>
        
    </article>
    {include file="mobile/foot.php"}
	
</body>
</html>