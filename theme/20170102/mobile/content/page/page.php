<?php if(!defined('IN_SDCMS')) exit;?>{include file="mobile/top.php"}
<title>{if !isempty($catetitle)}{$catetitle}{else}{$catename}{/if}_{if $page>1}第{$page}页_{/if}{sdcms[web_name]}</title>
<meta name="keywords" content="{if !isempty($catekey)}{$catekey}{else}{$catename}{/if}">
<meta name="description" content="{if !isempty($catedesc)}{$catedesc}{else}{$catename}{/if}">
{include file="mobile/wxshare.php"}
</head>

<body>
	{include file="mobile/head.php"}
    {include file="mobile/bar.php"}
      <article>
    	<section>
        	<div class="subject">
                {if get_sonid_num($topid)!=0}<span class="more"><a href="javascript:;" class="ui-icon-list ui-offside-show" data-target="#nav"></a></span>{/if}<b>{$catename}</b>
            </div>
            <div class="clear"></div>
            <div class="about">
            	{if is_array($piclist)}
                <ul id="gallery">
                    {foreach $piclist as $key=>$rs}
                    <li><a href="{$rs['image']}" title="{$rs['desc']}" class="ui-lightbox"><img src="{$rs['image']}" alt="{$rs['desc']}" /><p>{$rs['desc']}</p></a></li>
                    {/foreach}
                </ul>
                <div class="clear"></div>
                {/if}
            	{$content}
                <div class="ui-page ui-page-center ui-page-red ui-page-mid"><ul>{pagelist($page,$pagenum,3)}</ul></div>
            </div>
        </section>
    </article>
    {include file="mobile/foot.php"}

</body>
</html>