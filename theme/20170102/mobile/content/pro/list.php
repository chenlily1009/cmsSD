<?php if(!defined('IN_SDCMS')) exit;?>{include file="mobile/top.php"}
<title>{if !isempty($catetitle)}{$catetitle}{else}{$catename}{/if}{$filter_key}_{if $page>1}第{$page}页_{/if}{sdcms[web_name]}</title>
<meta name="keywords" content="{if !isempty($catekey)}{$catekey}{else}{$catename}{/if}">
<meta name="description" content="{if !isempty($catedesc)}{$catedesc}{else}{$catename}{/if}">
{include file="mobile/wxshare.php"}
</head>

<body>
	{include file="mobile/head.php"}
    {include file="mobile/bar.php"}

    <article>
    	{if count($filter)>0&&$isfilter==1}
        <div class="ui-filter ui-mt-15 ui-scrollspy" data-am="ui-am-slide-bottom" data-time="1000">
            {foreach $filter as $rs}
            <div class="ui-row">
                <div class="ui-col-2 ui-filter-left">{$rs['field_title']}：</div>
                <div class="ui-col-10 ui-filter-right">
                    <a href="{filter_url($cateurl,$classid,deal_filter($filter_data,$rs['field_key'],0))}"{if getint(F('get.'.$rs['field_key'].''),0)==0} class="active"{/if}>全部</a>
                    {if $rs['field_type']==14}
                    {php $table_=$rs['field_table']}{php $join_=$rs['field_join']}{php $where_=$rs['field_where']}{php $order_=$rs['field_order']}{php $value=$rs['field_value']}{php $label=$rs['field_label']}
                    {if $where_==''}{php $where_='1=1'}{/if}
                    {if $order_==''}{php $order_="$value desc"}{/if}
                    {sdcms:ra top="0" table="$table_" join="$join_" where="$where_" order="$order_"}
                    <a href="{filter_url($cateurl,$classid,''.deal_filter($filter_data,$rs['field_key'],$ra['.$value.']))}"{if getint(F('get.'.$rs['field_key'].''),0)==$ra['.$value.']} class="active"{/if}>{$ra['.$label.']}</a>
                    {/sdcms:ra}
                    {else}
                    {php $arr=explode(",",$rs['field_list'])}
                    {foreach $arr as $j=>$key}
                    {php $data=explode("|",$key)}
                    <a href="{filter_url($cateurl,$classid,deal_filter($filter_data,$rs['field_key'],$data[1]))}"{if getint(F('get.'.$rs['field_key'].''),0)==$data[1]} class="active"{/if}>{$data[0]}</a>
                    {/foreach}
                    {/if}
                </div>
            </div>
            {/foreach}
        </div>
        {/if}
        
    	<section>
        	<div class="subject">
                {if get_sonid_num($topid)!=0}<span class="more"><a href="javascript:;" class="ui-icon-list ui-offside-show" data-target="#nav"></a></span>{/if}<b>{$catename}</b>
            </div>
            <div class="clear"></div>
            <div class="home_pro">
            	<ul>
                	{sdcms:rs pagesize="$catepage" num="3" table="sd_content" join="$join" where="$where" order="ontop desc,ordnum desc,id desc"}
                	<li><a href="{$rs[link]}" title="{$rs[title]}"><div><img src="{thumb($rs[pic],280,280)}" alt="{$rs[title]}"></div><p class="title">{$rs[title]}</p><p class="price"><span>人气：{$rs[hits]}</span>{if $rs[price]!=0}¥ {$rs[price]}{else}面议{/if}</p></a></li>
                    {/sdcms:rs}
                </ul>
                <div class="clear"></div>
            </div>
             <div class="ui-page ui-page-center ui-page-red ui-page-mid"><ul>{$showpage}</ul></div>
        </section>
    </article>
    {include file="mobile/foot.php"}

</body>
</html>