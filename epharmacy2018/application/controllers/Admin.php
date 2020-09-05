<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller {
	public function index()
	{
		$this->load->view('admin/index');
	}
	public function admin_login()
	{
		$result=$this->Admin_model->admin_login();
		$result2=$this->Admin_model->admin_login2();
		if($result)
		{
			$data['admin_id']=$result->id;
			$data['admin']=$result->username;
			$this->session->set_userdata($data);
			redirect('Super_admin');
		}
	/*	elseif($result2)
		{
			$admin_id=$result2->id;
			$username=$result2->username;
			$this->session->set_userdata($admin_id);
			$this->session->set_userdata($username);
			redirect('Prescription_admin');
		}
	*/
	   	elseif($result2)
		{
			$data['admin_id']=$result2->id;
			$data['admin']=$result2->username;
			$this->session->set_userdata($data);
			redirect('Prescription_admin');
		}
		else
		{
			$sdata=array();
			$sdata['exception']="Username and Password Invalid";
			$this->session->set_userdata($sdata);
			redirect('Admin');
		}
	}
}
