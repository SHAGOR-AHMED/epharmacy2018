<?php
defined('BASEPATH') OR exit('add cart problem');
class Add_cart extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('Cart_model');
	}
	public function cart($cart_id)
	{
		// $qty=$this->input->post('product_quantity');
		// $code=$this->input->post('code');
		// // var_dump($code);exit();
		// $id=$this->input->post('prod_id');
		$value=$this->Cart_model->cart_details($cart_id);
		// var_dump($value);exit();
		//$name=$value->prod_name;
		$sdata = array(
            'id'      => $value->prod_id,
            'qty'     => '1',
            'price'   => $value->prod_price,
            'code'   => $value->prod_code,
            'name'    =>$value->prod_name,
            'image'    => $value->image
            // 'code' => array($value->prod_code)
        );
        $this->cart->product_name_rules = '[:print:]';
        //$this->cart->product_name_rules = '^.';
		// var_dump($sdata);exit();
       if($this->cart->insert($sdata))
            redirect('show_cart');
       else
           print 'Sorry! This is Server Problem';

	}
	public function show_cart()
	{
        $this->load->view('cart/show_cart');
	}
	public function up_product()
	{
		$qty=$this->input->post('qty');
		$rowid=$this->input->post('rowid');
        $data = array(
            'rowid' => $rowid,
            'qty'   => $qty
        );
        $this->cart->update($data);
        redirect('show_cart');
	}
	public function remove($rowid)
	{
		 $data = array(
            'rowid' => $rowid,
            'qty'   =>0
        );
        $this->cart->update($data);
        redirect('show_cart');
	}
	public function remove_all()
	{
		$this->cart->destroy();
        redirect('Welcome');
	}
	public function login()
	{
        $this->load->view('cart/login');
	}
	public function login_access()
	{
		$email=$this->input->post('email');
		$password=md5($this->input->post('password'));
		$result=$this->Cart_model->login_access($email,$password);

		$data=array();
		if(isset($result))
		{
			$data['customer_id']=$result->customer_id;
			$data['username']=$result->customer_name;
			$data['email']=$result->customer_user;
			$data['mobile']=$result->customer_phone;
		    $this->session->set_userdata($data);
			redirect('shipping');
		}
		else{
			$sdata=array(); 
			$sdata['exception']="Username and Password Does not Match";
			$this->session->set_userdata($sdata);
			redirect('clogin');
		}
	}
	public function shipping()
	{
        $this->load->view('cart/shipping');
	}
	public function register()
	{
        $this->load->view('cart/register');
	}
	public function registration()
	{
	  $this->form_validation->set_rules('name','Name','trim|required|min_length[5]|max_length[20]');
	 // $this->form_validation->set_rules('address','Address','trim|required|min_length[5]|max_length[50]');
	  $this->form_validation->set_rules('mobile','Mobile','trim|required|min_length[11]|max_length[14]');
	  $this->form_validation->set_rules('email','Email','trim|required|valid_email');
	  $this->form_validation->set_rules('password','Password','trim|required|min_length[5]|max_length[20]');
	
		if($this->form_validation->run()==FALSE)
		{
			//$this->load->view('register');
			//redirect('cregister');
			redirect('clogin');
		}
		else{
			$data['customer_name']=$this->input->post('name');
			//$data['customer_address']=$this->input->post('address');
			$data['customer_phone']=$this->input->post('mobile');
			$data['customer_user']=$this->input->post('email');
			$data['customer_password']=md5($this->input->post('password'));
			$this->Cart_model->registration($data);
			$sdata=array(); 
			$sdata['reg_message']="Please Now Login!";
			$this->session->set_userdata($sdata);
			redirect('clogin');
		}
	}
	public function confirm_order()
	{
		$this->Cart_model->confirm_order();
		$sdata['message']="Your Order Successfully Confirm";
		$this->session->set_userdata($sdata);

		redirect('remove_all');

	}
}
?>