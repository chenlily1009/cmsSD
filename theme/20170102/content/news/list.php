<?php if(!defined('IN_SDCMS')) exit;?>{include file="top.php"}
<title>{if !isempty($catetitle)}{$catetitle}{else}{$catename}{/if}{$filter_key}_{if $page>1}第{$page}页_{/if}{sdcms[web_name]}</title>
<meta name="keywords" content="{if !isempty($catekey)}{$catekey}{else}{$catename}{/if}">
<meta name="description" content="{if !isempty($catedesc)}{$catedesc}{else}{$catename}{/if}">
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
                    <li>列表</li>
                </ul>
            </div>
        </div>
    </div>
    
    <div class="width">
    	<div class="h1">{get_catename($topid)}</div>
        <div class="page_show">
        	<!---->
            {if get_sonid_num($topid)!=0}
            <div class="subnav">
                <ul>
                    {sdcms:rp top="0" table="sd_category" where="followid=$topid" order="catenum,cateid"}{php $sub_sonid=$rp[cateid]}
                    <li{is_active($rp[cateid],$parentid)}><a href="{cateurl($rp[cateid])}" title="{$rp[catename]}">{$rp[catename]}</a>{if get_sonid_num($rp[cateid])!=0}<dl>
                        {sdcms:rs top="0" table="sd_category" where="followid=$sub_sonid" order="catenum,cateid"}
                        <dt><a href="{cateurl($rs[cateid])}" title="{$rs[catename]}"{if $rs[isblank]==1} target="_blank"{/if}>{$rs[catename]}</a></dt>
                        {/sdcms:rs}
                    </dl>{/if}</li>
                    {/sdcms:rp}
                </ul>
                <div class="clear"></div>
            </div>
            {/if}
            
            {if count($filter)>0&&$isfilter==1}
            <div class="ui-filter ui-mb-15">
                {foreach $filter as $rs}
                <div class="ui-row">
                    <div class="ui-col-1 ui-filter-left">{$rs['field_title']}：</div>
                    <div class="ui-col-11 ui-filter-right">
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

            <div class="home_news">
                <ul>
                   {sdcms:rs pagesize="$catepage" table="sd_content" join="$join" where="$where" order="ontop desc,ordnum desc,id desc"}
                   {rs:eof}<p>暂无资料</p>{/rs:eof}
                   <li>
                        <div class="date">{date('m-d',$rs[createdate])}<span>{date('Y',$rs[createdate])}</span></div>
                        <a href="{$rs[link]}" title="{$rs[title]}">
                            <div class="title text-hide">{$rs[title]}</div>
                            <div class="intro">{cutstr(nohtml($rs[intro]),130,1)}</div>
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