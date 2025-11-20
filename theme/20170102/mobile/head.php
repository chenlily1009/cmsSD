<?php if(!defined('IN_SDCMS')) exit;?><header class="header">
    <div class="fr"><a href="javascript:history.go(-1)" class="ui-icon-left"></a></div>
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