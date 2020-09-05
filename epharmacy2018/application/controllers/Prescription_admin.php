<?php
defined('BASEPATH') OR exit('this is Prescription admin problem');
/**
* 
*/
class Prescription_admin extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('Prescription_model');
		$admin_id=$this->session->userdata('admin_id');
		if($admin_id==NULL){
		    redirect('Admin');
		}
	}
	public function index()
	{
		$data['result']=$this->Prescription_model->customer();
		$data['result2']=$this->Prescription_model->prescription();
		$data['result3']=$this->Prescription_model->comment();
		$this->load->view('prescription/prescription_master',$data);
	}
	public function customer()
	{
		$data['result']=$this->Prescription_model->customer();
		//var_dump($data);exit();
		$this->load->view('prescription/customer',$data);
	}
	public function prescription()
	{
		$data['result']=$this->Prescription_model->prescription();
		$this->load->view('prescription/prescriptions',$data);
	}
	public function download($photo)
	{
		$this->load->helper('download');
		$name ="assets/prescription/$photo";
		force_download($name,NUll);
	}
	public function delete($id)
 	{
 	    $this->Prescription_model->delete($id);
	   
		redirect('prescription');
	}
	public function comment()
	{
		$data['result']=$this->Prescription_model->comment();
		$data['result2']=$this->Prescription_model->admin_comment();
		$this->load->view('prescription/comment',$data);
	}
	public function comment_delete($comment_id)
	{
	    $this->db->where('comment_id',$comment_id);
		$this->db->delete('tbl_comment');
		redirect('comment');
	}
	public function reply()
	{
		$user_id=$this->input->post('user_id');
		$r_comment=$this->input->post('reply');
		$this->Prescription_model->reply($user_id,$r_comment);
		redirect('comment');
	}
	public function active($id)
	{
		$this->Prescription_model->active($id);
		redirect('customer');
	}
	public function inactive($id)
	{
		$this->Prescription_model->inactive($id);
		redirect('customer');
	}
	 public function cpassword()
    {
    	$this->load->view('prescription/change_password');
    }
     public function change_password()
    {
       
         $new=md5($this->input->post('new_password'));
         $new2=md5($this->input->post('confirm_password'));
         if($new !=$new2)
         {
             $data['exception']="Password does not match!";
             $this->session->set_userdata($data);
             redirect('cpassword2');
         }
         $this->Admin_model->change_password2($new);
         $sdata['update_message']="Password Update Successfully";
    	 $this->session->set_userdata($sdata);
         redirect('Prescription_admin');
    }
}
?>