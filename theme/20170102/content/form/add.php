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
                    <li class="active">在线提交</li>
                </ul>
            </div>
        </div>
    </div>
    
    <div class="width">
    	<div class="h1">{$title}</div>
        <div class="page_show">
        	<!---->
            <form class="ui-form mt" method="post">
                {foreach $field as $rs}
                {php $default=deal_default($rs['field_default'])}
                <div class="ui-form-group ui-row{if $rs['field_type']==7} ui-hide{/if}">
                    <label class="ui-col-2 ui-col-form-label ui-text-right">{$rs['field_title']}：</label>
                    <div class="ui-col-{if $rs['field_type']==12 || $rs['field_type']==13}10{else}5{/if}{if $rs['field_type']==9} ui-pt-10{/if}">
                    {switch $rs['field_type']}{case 1}<input type="text" name="{$rs['field_key']}" id="{$rs['field_key']}" class="ui-form-ip"{if $rs['field_length']!=0} maxlength="{$rs['field_length']}"{/if} value="{$default}" {deal_rule($rs['field_rule'],$rs['field_title'])}>
                    {/case}
                    {case 2}<input type="text" name="{$rs['field_key']}" id="{$rs['field_key']}" class="ui-form-ip datepick"{if $rs['field_length']!=0} maxlength="{$rs['field_length']}"{/if} value="{$default}"  readonly {deal_rule($rs['field_rule'],$rs['field_title'])}>{/case}
                    {case 3}<input type="text" name="{$rs['field_key']}" id="{$rs['field_key']}" class="ui-form-ip"{if $rs['field_length']!=0} maxlength="{$rs['field_length']}"{/if} value="{$default}" {deal_rule($rs['field_rule'],$rs['field_title'])}>{/case}
                    {case 4}<input type="text" name="{$rs['field_key']}" id="{$rs['field_key']}" class="ui-form-ip"{if $rs['field_length']!=0} maxlength="{$rs['field_length']}"{/if} value="{$default}" {deal_rule($rs['field_rule'],$rs['field_title'])}>{/case}
                    {case 5}
                    <div class="ui-input-group">
                    <input type="text" name="{$rs['field_key']}" id="{$rs['field_key']}" class="ui-form-ip radius-right-none"{if $rs['field_length']!=0} maxlength="{$rs['field_length']}"{/if} value="{$default}" {deal_rule($rs['field_rule'],$rs['field_title'])}>
                    <a class="after dropzone ui-icon-cloud-upload radius-none" config="{$rs['field_key']}" url="{U('upload/upfile','type='.$rs['field_upload_type'].'')}"maxsize="{if $rs['field_upload_type']==1}{C('upload_image_max')}{elseif $rs['field_upload_type']==2}{C('upload_video_max')}{else}{C('upload_file_max')}{/if}" title="上传">上传</a>
                    {if $rs['field_upload_type']==1}<a class="after ui-lightbox ui-icon-zoomin" data-id="{$rs['field_key']}" data-name="lightbox-{$rs['field_key']}" title="{$rs['field_title']}">预览</a>{/if}
                    
                    </div>
                    {/case}
                    {case 6}<input type="password" name="{$rs['field_key']}" id="{$rs['field_key']}" class="ui-form-ip" value="{$default}" {deal_rule($rs['field_rule'],$rs['field_title'])}>{/case}
                    {case 7}<input type="text" name="{$rs['field_key']}" id="{$rs['field_key']}" class="ui-form-ip"{if $rs['field_length']!=0} maxlength="{$rs['field_length']}"{/if} value="{$default}">{/case}
                    {case 8}<textarea name="{$rs['field_key']}" class="ui-form-ip" id="{$rs['field_key']}" rows="3" cols="50" {deal_rule($rs['field_rule'],$rs['field_title'])}>{$default}</textarea>{/case}
                    {case 9}
                    {php $arr=explode(",",$rs['field_list'])}
                    {foreach $arr as $j=>$key}
                    {php $data=explode("|",$key)}
                    {if $rs['field_radio']==2}<div class="input-group-check">{/if}
                    <label class="ui-radio"><input type="radio" name="{$rs['field_key']}" value="{$data[1]}" {deal_rule($rs['field_rule'],$rs['field_title'],1)} {if $default=="".$data[1].""} checked{/if}>
                    <i></i>{$data[0]}</label>
                    {if $rs['field_radio']==2}</div>{/if}
                    {/foreach}
                    {/case}
                    {case 10}
                    {php $arr=explode(",",$rs['field_list'])}
                    {foreach $arr as $j=>$key}
                    {php $data=explode("|",$key)}
                    <label class="ui-checkbox"><input type="checkbox" name="{$rs['field_key']}[]" value="{$data[1]}" {deal_rule($rs['field_rule'],$rs['field_title'],1)} {if stristr(",".$default.",",",".$data[1].",")} checked{/if}><i></i>{$data[0]}</label>
                    {/foreach}
                    {/case}
                    {case 11}
                    <select name="{$rs['field_key']}" id="{$rs['field_key']}" class="ui-form-ip" {deal_rule($rs['field_rule'],$rs['field_title'])}>
                    <option value="">请选择{$rs['field_title']}</option>
                    {php $arr=explode(",",$rs['field_list'])}
                    {foreach $arr as $j=>$key}
                    {php $data=explode("|",$key)}
                    <option value="{$data[1]}" {if $default=="".$data[1].""} selected{/if}>{$data[0]}</option>
                    {/foreach}
                    </select>
                    {/case}
                    {case 12}<div id="{$rs['field_key']}" name="{$rs['field_key']}" class="ui-editor" {if $rs['field_editor']==1}data-toolbar="mini"{/if}></div>
                    {/case}
                    {case 13}
                    <div class="ui-btn-group ui-mt-sm">
                    <a class="ui-btn-group-item dropzone-more ui-icon-cloud-upload" config="{$rs['field_key']}" url="{U('upload/upfile','type=1&thumb=1&water='.C('water_piclist').'')}" maxsize="{C('upload_image_max')}" title="上传">上传</a>
                    <a class="ui-btn-group-item fm-choose ui-icon-select" data-name="{$rs['field_key']}" data-url="{U('upload/imagelist','type=1&multiple=1')}" data-type="{$rs['field_upload_type']}" data-multiple="1" title="选择">选择</a>
                    </div>
                    <div class="imagelist">
                    <ul id="list_{$rs['field_key']}"></ul>
                    </div>
                    {/case}
                    {case 14}
                    <select name="{$rs['field_key']}" id="{$rs['field_key']}" class="ui-form-ip" {deal_rule($rs['field_rule'],$rs['field_title'])}>
                    {php $table=$rs['field_table']}
                    {php $join=$rs['field_join']}
                    {php $where=$rs['field_where']}
                    {php $order=$rs['field_order']}
                    {php $value=$rs['field_value']}
                    {php $label=$rs['field_label']}
                    
                    {if $where==''}
                    {php $where='1=1'}
                    {/if}
                    {if $order==''}
                    {php $order="$value desc"}
                    {/if}
                    <option value="">请选择{$rs['field_title']}</option>
                    {sdcms:ra top="0" table="$table" join="$join" where="$where" order="$order"}
                    <option value="{$ra['.$value.']}"{if $default==$ra['.$value.']} selected{/if}>{$ra['.$label.']}</option>
                    {/sdcms:ra}
                    </select>
                    {/case}
                    {/switch}
                    {if $rs['field_tips']<>''}<span class="ui-input-tips">{$rs['field_tips']}</span>{/if}
                    </div>
                </div>
                {/foreach}
                {if $iscode==1}
                <div class="ui-form-group ui-row">
                    <label class="ui-col-2 ui-col-form-label ui-text-right">验证码：</label>
                    <div class="ui-col-5">
                        <div class="ui-input-group">
                            <input type="text" name="code" class="ui-form-ip radius-right-none" id="code" data-rule="验证码:required;">
                            <span class="code"><img src="{U('code')}" height="40" id="verify" title="点击更换验证码"></span>
                        </div>
                    </div>
                </div>
                {/if}
                <div class="ui-form-group ui-row">
                    <div class="ui-col-6 ui-offset-2"><input type="hidden" name="token" value="{$token}"><button type="submit" class="ui-btn ui-btn-red">提交</button></div>
                </div>
            </form>
            <!---->
        </div>
    </div>

    {include file="foot.php"}
    <script src="{WEB_ROOT}public/js/dropzone.js"></script>
	<script src="{WEB_ROOT}public/datepick/laydate.js"></script>
    <script>
    $(function()
    {
        {if $iscode==1}
        $("#verify").click(function(){
            var img=$(this).attr("src");
            if(img.indexOf('?')>0)
            {
                $(this).attr("src",img+'&random='+Math.random());
            }
            else
            {
                $(this).attr("src",img.replace(/\?.*$/,'')+'?'+Math.random());
            }
            $("#code").val("");
        });
        {/if}
        $(document).on("click",".imagelist .img-left",function(){
            var $li=$(this).parent().parent();
            var $pre=$li.prev("li");
            $pre.insertAfter($li)
        })
        $(document).on("click",".imagelist .img-right",function(){
            var $li=$(this).parent().parent();
            var $next=$li.next("li");
            $next.insertBefore($li);
        });
        $(document).on("click",".imagelist .img-del",function(){
            $(this).parent().parent().remove();
        });
		$(".ui-editor").each(function()
		{
			var toolbar=$(this).data("toolbar");
			var id=$(this).attr("id");
			$("#"+id).editor({toolbar:toolbar,upload:'{U("upload/index")}'});
		});
        lay('.datepick').each(function()
        {
            laydate.render(
            {
                elem:this,
                trigger:'click'
            });
        });
        $(".ui-form").form(
        {
            type:2,
            align:'center',
            result:function(form)
            {
                $.ajax(
                {
                    type:'post',
                    cache:false,
                    dataType:'json',
                    url:'{U('add','fid='.$fid.'','',1)}',
                    data:$(form).serialize(),
                    error:function(e){alert(e.responseText);},
                    success:function(d)
                    {
                        if(d.state=='success')
                        {
                            sdcms.success(d.msg);
                            setTimeout(function(){location.href='{if $backway==1}{U('index','fid='.$fid.'','',1)}{else}{U('add','fid='.$fid.'','',1)}{/if}';},1500);
                        }
                        else
                        {
                            {if $iscode==1}$("#verify").click();{/if}
                            sdcms.error(d.msg);
                        }
                    }
                });
            }
        });
    });
    $(".dropzone").dropzone(
    {
        maxFiles: 1,
        success:function(file,data,that)
        {
            data=jQuery.parseJSON(data);
            this.removeFile(file);
            if(data.state=="success")
            {
                sdcms.success("上传成功");
                $("#"+$(that).attr("config")).val(data.msg);
            }
            else
            {
                sdcms.error("上传失败："+data.msg);
            }
        },
        sending:function(file)
        {
            sdcms.loading("正在上传，请稍等");
        },
        totaluploadprogress:function(progress)
        {
            $.progress((Math.round(progress*100)/100)+"%");
        },
        queuecomplete:function(progress)
        {
            $.progress('close');
        },
        error:function(file,msg)
        {
            sdcms.error(msg);
        }
    });
    $(".dropzone-more").dropzone(
    {
        maxFiles:50,
        success:function(file,data,that)
        {
            data=jQuery.parseJSON(data);
            this.removeFile(file);
            if(data.state=="success")
            {
                var name=$(that).attr("config");
                var num=1;
                $("#list_"+name+" li").each(function()
                {
                    var max=parseInt($(this).attr("num"));
                    if (max>=num)
                    {
                        num=max+1;
                    }
                });
                var html='';
                html+='<li num="'+num+'">';
                html+='	<div class="preview">';
                html+='		<input type="hidden" name="'+name+'['+num+'][image]" value="'+data.msg+'">';
                html+='		<u href="'+data.msg+'" class="lightbox"><img src="'+data.msg+'" /></u>';
                html+='	</div>';
                html+='	<div class="intro">';
                html+='		<textarea name="'+name+'['+num+'][desc]" placeholder="图片描述..."></textarea>';
                html+='	</div>';
                html+='	<div class="action"><a href="javascript:;" class="img-left"><i class="ui-icon-left"></i>左移</a><a href="javascript:;" class="img-right"><i class="ui-icon-right"></i>右移</a><a href="javascript:;" class="img-del"><i class="ui-icon-delete"></i>删除</a></div>';
                html+='</li>';
                $("#list_"+name).append(html);
            }
            else
            {
                sdcms.error("上传失败："+data.msg);
            }
        },
        sending:function(file)
        {
            sdcms.loading("正在上传，请稍等");
        },
        totaluploadprogress:function(progress)
        {
            $.progress((Math.round(progress*100)/100)+"%");
        },
        queuecomplete:function(progress)
        {
            $.progress('close');
        },
        error:function(file,msg)
        {
            sdcms.error(msg);
        }
    });
    </script>
    
</body>
</html>