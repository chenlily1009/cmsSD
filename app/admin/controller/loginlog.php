<?php
/**
 * 作用：登录日志
 * 官网：Http://www.sdcms.cn
 * 作者：IT平民
 * ===========================================================================
 * 这不是一个自由软件！您只能在不用于商业目的的前提下对程序代码进行修改和使用；
 * 未经授权不允许对程序代码以任何形式任何目的的再发布。
 * ===========================================================================
**/

class Loginlog extends AdminsController
{

	public function btach()
	{
		$id=F('id');
		self::btach_del($id);
		$this->success('操作成功');
	}

	public function btach_del($id)
	{
		$arr=explode(',',$id);
		foreach($arr as $key=>$val)
		{
			$val=getint($val,0);
			$this->db->del('sd_admin_login_log','id='.$val.'');
		}
	}

	public function index()
	{
		$type=getint(F('get.type'),0);
		$where='1=1 ';
		if(get_admin_info('pid')!=0)
		{
			$where=" loginname='".get_admin_info('adminname')."'";
		}
		switch ($type)
		{
			case '1':
				$where.=' and loginstate=1';
				break;
			case "2":
				$where.=' and loginstate=0';
				break;
		}
		$this->assign("where",$where);
		$this->assign("type",$type);
		$this->display("system/loginlog.php");
	}

	public function del()
	{
		$id=getint(F('get.id'),0);
		self::btach_del($id);
		$this->success('删除成功');
	}

}