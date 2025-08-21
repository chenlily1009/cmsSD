<?php
class Plug extends AdminsController
{
	public function index()
	{
		$folder=scandir('app/plug');
		if(!$folder)
		{
			die('【scandir】函数不支持，请在Php.ini中去掉限制');
		}
		unset($folder[0]);
		unset($folder[1]);
		$type=getint(F('type'),0);

		foreach($folder as $key=>$val)
		{
			if(!is_dir('app/plug/'.$val))
			{
				unset($folder[$key]);
			}
			else
			{
				unset($folder[$key]);
				if(is_file('app/plug/'.$val.'/_config.php'))
				{
					unset($folder[$key]);
					$info=require('app/plug/'.$val.'/_config.php');
					$folder[$val]=['app'=>$val,'title'=>$info['title'],'version'=>$info['version'],'author'=>$info['author'],'url'=>$info['url'],'admin'=>$info['admin'],'isstall'=>(C('plug_'.$val))?1:0,'id'=>0];
				}
			}
		}
		if($type==1)
		{
			$data=self::applist();
			foreach($folder as $key => $val)
			{
				if(isset($data[$key]))
				{
					$old=$data[$key];
					$old['admin']=$val['admin'];
					if(C('plug_'.$val['app']))
					{
						$old['isstall']=1;
						$old['version']=$val['version'];
						$old['author']=$val['author'];
						if($val['url']!='')
						{
							$old['url']=$val['url'];
						}
					}
					$data[$key]=$old;
				}
			}
			$this->assign('folder',$data);
		}
		else
		{
			$this->assign('folder',$folder);
		}
		$this->assign('type',$type);
		if($type==0)
		{
			$this->display("theme/plug/local.php");
		}
		else
		{
			$this->display("theme/plug/net.php");
		}
	}

	function applist()
	{
		$result=sdcms_http::post(SYS_API_URL."/pluglist","type=1",1);
		if($result['state']=='200')
		{
			$arr=jsdecode($result['msg']);
			if($arr['state']=='success')
			{
				$data=$arr['msg'];
				foreach($data as $key=>$val)
				{
					$val['id']=$key;
					$data[$val['app']]=$val;
					unset($data[$key]);
				}
				return $data;
			}
			else
			{
				return [];
			}
		}
		else
		{
			savefile(SYS_PATH.'data/log/'.date('Y-m-d-H-i-s').'.txt','无法获取插件服务器列表');
			return [];
		}
	}

	public function install()
	{
		if(IS_POST)
		{
			$type=getint(F('get.type'),0);
			$id=getint(F('get.id'),0);
			$name=F('get.name');
			$way=getint(F('get.way'),0);
			if($id<0 || $name=='')
			{
				$this->error('参数错误');
				return;
			}
			if($type==1)
			{
				$uname=C('sys_uname');
				$upass=C('sys_upass');
				if($uname=='' || $upass=='')
				{
					$this->error("请点击后台右上角【账号绑定】");
					return;
				}
				$upass=$this->decode($upass,C('prefix'));
				if(is_array($upass))
				{
					$this->error("绑定的密码解密失败，请重新绑定");
					return;
				}
				#连接插件服务器，获取文件
				$result=sdcms_http::post(SYS_API_URL."/plugshow","uname={$uname}&upass={$upass}&id={$id}",1);
				if($result['state']=='200' || $result['state']=='301')
				{
					$arr=jsdecode($result['msg']);
					$msg=$arr['msg'];
					if($arr['state']=='error')
					{
						$this->error($msg);
						return;
					}
					$name=$msg['name'];
					$url=$msg['url'];
				}
				else
				{
					$this->error('无法连接插件服务器');
					return;
				}
				#下载文件
				$res=sdcms_http::get($url,1);
				if(!($res['state']=='200' || $res['state']=='301'))
				{
					$this->error($url.'获取失败');
					return;
				}
				$root='cache/temp';
				$filename=$root.'/'.$name.'.zip';
				mkfolder($root);
				$res=savefile($filename,$res['msg']);
				if(!$res)
				{
					$this->error('【'.$root.'】读写权限不足');
					return;
				}
				$result=sdcms_zip::unzip($filename,"app/plug/$name");
		    	if(!$result)
		    	{
		    		$this->error("解压失败：$result");
		    		return;
		    	}
				#删除临时文件
				@unlink($filename);
				if(!is_dir('app/plug/'.$name))
				{
					$this->error('插件路径错误');
					return;
				}
			}
			
			if(!is_file('app/plug/'.$name.'/_config.php'))
			{
				$this->error('插件配置错误');
				return;
			}
			$config=require('app/plug/'.$name.'/_config.php');
			if($config['install'] && $way==0)
			{
				$split=explode('@@@@',$config['install']);
				foreach($split as $key=>$val)
				{
					$this->db->query(deal_sqlite($val));
				}
			}
			$d=require('data/config/plug.php');
			$d['plug_'.$name]=$name;
			$data="<?php\nif(!defined('IN_SDCMS')) exit;\nreturn ".var_export($d, true).";\n?>";
			if(savefile('data/config/plug.php',$data))
			{
				$this->success('安装成功');
			}
			else
			{
				$this->error('data/config/plug.php写权限不足，请检查');
			}
		}
	}

	public function del()
	{
		if(IS_POST)
		{
			$name=F('get.name');
			if(!is_dir('app/plug/'.$name))
			{
				$this->error('插件路径错误');
			}
			else
			{
				if(!is_file('app/plug/'.$name.'/_config.php'))
				{
					$this->error('插件配置错误');
				}
				else
				{
					if(C('plug_'.$name))
					{
						$config=require('app/plug/'.$name.'/_config.php');
						if($config['delete'])
						{
							$split=explode('@@@@',$config['delete']);
							foreach ($split as $key=>$val)
							{
								$this->db->query($val);
							}
						}
						$d=require('data/config/plug.php');
						unset($d['plug_'.$name]);
						$data="<?php\nif(!defined('IN_SDCMS')) exit;\nreturn ".var_export($d, true).";\n?>";
						if(savefile('data/config/plug.php',$data))
						{
							delfolder('app/plug/'.$name);
							$this->success('卸载成功');
						}
						else
						{
							$this->error('卸载失败：配置文件保存失败');
						}
					}
					else
					{
						$this->error('插件没有安装');
					}
				}
			}
		}
	}

}