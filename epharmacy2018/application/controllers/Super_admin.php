<?php
defined('BASEPATH') OR exit('Super Admin error');

class Super_admin extends CI_Controller
{
	
	function __construct()
	{
		parent::__construct();
		$admin_id=$this->session->userdata('admin_id');
		if($admin_id==NULL){
		    redirect('Admin');
		}
	}
	public function index()
	{
		$data['result']=$this->Admin_model->product();
		$data['result2']=$this->Admin_model->client();
		$data['result3']=$this->Admin_model->marcent();
		$data['result4']=$this->Admin_model->order_details(); 
		$data['result5']=$this->Admin_model->marchant_product(); 
		$this->load->view('admin/master',$data);
	}
	public function add_category()
	{
		$this->load->view('admin/add_category');
	}
	
	public function category_save()
	{
		 $this->form_validation->set_rules('name', 'name', 'required');
		if ($this->form_validation->run() == FALSE)
        {
            redirect('add_category');
        }
        else
        {
            $data=array();
            $data['category']=$this->input->post('name'); 
            $data['type']=$this->input->post('type');
            $data['cat_image'] = $this->uploadPhoto();
            $this->Admin_model->add_category($data);
            $sdata=array();
            $sdata['message']="Category Add Successfully";
            $this->session->set_userdata($sdata);
            redirect('add_category');
        }
	}
	
	private function uploadPhoto()
    {
        $this->load->library('upload');
        $config['upload_path'] = './assets/admin/cat_image/';
        $config['allowed_types'] = 'gif|jpg|png|jpeg';
        $config['max_size'] = 150;
        $config['max_width'] = 300;
        $config['max_height'] = 300;
        $config['encrypt_name'] = false;
        $this->upload->initialize($config);
        if (empty($_FILES['cat_image']['name'])) {
            return $config['upload_path'];
        }
        if (!$this->upload->do_upload('cat_image')) {
            $error = $this->upload->display_errors();
            $dt['img_msg'] = $error;
            $this->session->set_userdata($dt);
            redirect(current_url());
        }
        $uploadImage = $this->upload->data();
        if ($uploadImage['is_image'] == 1)
            return $config['upload_path'] . $uploadImage['file_name'];
        else
        	$sdata=array();
            $sdata['message']="Invalid Image Please select jpg or png";
            $this->session->set_userdata($sdata);

        	redirect("Super_admin/add_category");
    }
    
	public function category()
	{
		$data=array();
		$data['result']=$this->Admin_model->category();
		// var_dump($result);exit();
		$this->load->view('admin/category',$data,'true');
	}
	public function edit_category($id)
	{
		$data=array();
		$data['result']=$this->Admin_model->edit_category($id);
		$this->load->view('admin/edit_category',$data,'true');
	}
	
	public function edit_category_save()
	{
		$id=$this->input->post('id');
		$data['category']=$this->input->post('category');
		if ($this->updatePhoto() != null) {
            $data['cat_image'] = $this->updatePhoto();
        }
		$this->Admin_model->edit_category_save($id,$data);
		$sdata=array();
		$sdata["update"]="Category Update Successfully";
		$this->session->set_userdata($sdata);
		redirect('category');
	}
	
	private function updatePhoto()
    {
        $this->load->library('upload');
        $config['upload_path'] = './assets/admin/cat_image/';
        $config['allowed_types'] = 'gif|jpg|png|jpeg';
        $config['max_size'] = 150;
        $config['max_width'] = 300;
        $config['max_height'] = 300;
        $config['encrypt_name'] = false;
        $this->upload->initialize($config);
        if (!$this->upload->do_upload('cat_image')) {
            return null;
        }
        $uploadImage = $this->upload->data();
        if ($uploadImage['is_image'] == 1)
            return $config['upload_path'] . $uploadImage['file_name'];
        else
        	$sdata=array();
            $sdata['message']="Invalid Image Please select jpg or png";
            $this->session->set_userdata($sdata);

        	redirect("Super_admin/add_category");
    }
    
	
	public function delete_category($id)
	{
		$this->Admin_model->delete_category($id);
		$sdata=array();
		$sdata["delete"]="Category Delete Successfully";
		$this->session->set_userdata($sdata);
		redirect('category');
	}
	public function add_subcategory()
	{
		$data=array();
		$data['category']=$this->Admin_model->category();
		$this->load->view('admin/add_subcategory',$data,'true');
	}
	public function subcategory()
	{
		$data=array();
		$data['subcategory']=$this->Admin_model->subcategory();
		$this->load->view('admin/subcategory',$data,'true'); 
	}
	public function subcategory_save()
	{
// 	     $this->form_validation->set_rules('category', 'category', 'required');
// 	      $this->form_validation->set_rules('subcategory', 'subcategory', 'required');
// 		if ($this->form_validation->run() == FALSE)
//         {
//             redirect('add_subcategory');
//         }
//         else
//         {
		$data=array();
		$data['subcat_catid']=$this->input->post('category');
		$data['subcategory']=$this->input->post('subcategory');
		$data['subcat_image'] = $this->uploadPhoto2();
		$this->Admin_model->add_subcategory($data);
		$data['message']="Subcategory Add Successfully";
		$this->session->set_userdata($data);
		redirect('add_subcategory');
       //}
	}
		private function uploadPhoto2()
    {
        $this->load->library('upload');
        $config['upload_path'] = './assets/admin/subcat_image/';
        $config['allowed_types'] = 'gif|jpg|png|jpeg';
        $config['max_size'] = 150;
        $config['max_width'] = 300;
        $config['max_height'] = 300;
        $config['encrypt_name'] = false;
        $this->upload->initialize($config);
        if (empty($_FILES['subcat_image']['name'])) {
            return $config['upload_path'];
        }
        if (!$this->upload->do_upload('subcat_image')) {
            $error = $this->upload->display_errors();
            $dt['img_msg'] = $error;
            $this->session->set_userdata($dt); 
            redirect(current_url());
        }
        $uploadImage = $this->upload->data();
        if ($uploadImage['is_image'] == 1)
            return $config['upload_path'] . $uploadImage['file_name'];
        else
        	$sdata=array();
            $sdata['message']="Invalid Image Please select jpg or png";
            $this->session->set_userdata($sdata);

        	redirect("Super_admin/add_subcategory");
    }
    public function edit_subcategory($subcat_id)
    {
        $data=array();
		$data['result']=$this->Admin_model->edit_subcategory($subcat_id);
		$this->load->view('admin/edit_subcategory',$data,'true');
    }
    public function edit_subcategory_save()
	{
		$id=$this->input->post('id');
		$data['subcategory']=$this->input->post('subcategory');
		if ($this->updatePhoto2() != null) {
            $data['subcat_image'] = $this->updatePhoto2();
        }
		$this->Admin_model->edit_subcategory_save($id,$data);
		$sdata=array();
		$sdata["update"]="SubCategory Update Successfully";
		$this->session->set_userdata($sdata);
		redirect('subcategory');
	}
	
	private function updatePhoto2()
    {
        $this->load->library('upload');
        $config['upload_path'] = './assets/admin/subcat_image/';
        $config['allowed_types'] = 'gif|jpg|png|jpeg';
        $config['max_size'] = 150;
        $config['max_width'] = 300;
        $config['max_height'] = 300;
        $config['encrypt_name'] = false;
        $this->upload->initialize($config);
        if (!$this->upload->do_upload('subcat_image')) {
            return null;
        }
        $uploadImage = $this->upload->data();
        if ($uploadImage['is_image'] == 1)
            return $config['upload_path'] . $uploadImage['file_name'];
        else
        	$sdata=array();
            $sdata['message']="Invalid Image Please select jpg or png";
            $this->session->set_userdata($sdata);

        	redirect("Super_admin/add_subcategory");
    }
    
	public function delete_subcategory($id)
	{
		$this->Admin_model->delete_subcategory($id);
		$sdata=array();
		$sdata["delete"]="Subcategory Delete Successfully";
		$this->session->set_userdata($sdata);
		redirect('subcategory');
	}
	public function add_body_part()
	{
		$this->load->view('admin/add_body_part');
	}
	public function body_part_save()
	{
		$this->form_validation->set_rules('name', 'name', 'required');
		if ($this->form_validation->run() == FALSE)
        {
            redirect('add_body_part');
        }
        else
        {
            $data=array();
            $data['body_part_name']=$this->input->post('name');
            $this->Admin_model->body_part_save($data);
            $sdata=array();
            $sdata['message']="Bodypart Add Successfully";
            $this->session->set_userdata($sdata);
            redirect('add_body_part');
        }
	}
	public function body_part()
	{
		$data=array();
		$data['result']=$this->Admin_model->body_part();
		$this->load->view('admin/body_part',$data,'true');
	}
	public function edit_bodypart($body_id)
	{
	    $data=array();
		$data['result']=$this->Admin_model->edit_bodypart($body_id);
		$this->load->view('admin/edit_bodypart',$data,'true');
	}
	public function edit_bodypart_save()
	{
	    $id=$this->input->post('id');
	    $data=array();
        $data['body_part_name']=$this->input->post('body_part');
        $this->Admin_model->body_part_update($id,$data);
        $sdata=array();
        $sdata['message']="Bodypart Update Successfully";
        $this->session->set_userdata($sdata);
        redirect('body_part');
	}
	public function delete_bodypart($id)
	{
		$this->Admin_model->delete_bodypart($id);
		$sdata=array();
		$sdata["delete"]="Bodypart Delete Successfully";
		$this->session->set_userdata($sdata);
		redirect('body_part');
	}
	public function add_band()
	{
		$this->load->view('admin/add_brand');
	}
	public function brand_save()
	{
		$this->form_validation->set_rules('name', 'name', 'required');
		if ($this->form_validation->run() == FALSE)
        {
            redirect('add_brand');
        }
        else
        {
            $data=array();
            $data['brand_name']=$this->input->post('name');
            $this->Admin_model->brand_save($data);
            $sdata=array();
            $sdata['message']="Brand Add Successfully";
            $this->session->set_userdata($sdata);
            redirect('add_brand');
        }
	}
	public function band_list()
	{
		$data=array();
		$data['result']=$this->Admin_model->band_list(); 
		$this->load->view('admin/band_list',$data,'true');
	}
	public function edit_brand($id)
	{
	    $data=array();
		$data['result']=$this->Admin_model->edit_brand($id);
		$this->load->view('admin/edit_brand',$data,'true');
	}
	public function edit_brand_save()
	{
	    $id=$this->input->post('id');
	    $data=array();
        $data['brand_name']=$this->input->post('name');
        $this->Admin_model->brand_update($id,$data);
        $sdata=array();
        $sdata['message']="Brand Update Successfully";
        $this->session->set_userdata($sdata);
        redirect('band_list');
	}
	public function delete_brand($id)
	{
		$this->Admin_model->delete_brand($id);
		$sdata=array();
		$sdata["delete"]="Brand Delete Successfully";
		$this->session->set_userdata($sdata);
		redirect('band_list');
	}	
	public function products()
	{
		$data=array();
		$data['result']=$this->Admin_model->products(); 
		$this->load->view('admin/products',$data,'true');
	}
	public function add_product()
	{
		$this->load->helper('user_helper');
		$data=array();
		$data['category']=$this->Admin_model->category();
		$data['subcategory']=$this->Admin_model->subcategory();
		$data['body_part']=$this->Admin_model->body_part();
		$data['band_list']=$this->Admin_model->band_list();
		$this->load->view('admin/add_product',$data,'true');
	}
	public function product_save()
	{
		$data=array();
		$data['prod_name']=$this->input->post('name');
		$data['prod_catid']=$this->input->post('category');
		$data['prod_subcatid']=$this->input->post('subcategory');
		$data['body_cat_id']=$this->input->post('body');
 		$data['brand_cat_id']=$this->input->post('brand');
		$data['prod_desc']=$this->input->post('description');
		$data['prod_price']=$this->input->post('price');
		$data['prod_code']=$this->input->post('code');
		$data['prod_made']=$this->input->post('made');

		$config['upload_path']          = 'assets/img/product_image';
        $config['allowed_types']        = 'gif|jpg|png|jpeg';
        // $config['max_size']             = 500;
        // $config['max_width']            = 1024;
        // $config['max_height']           = 768;

        $this->load->library('upload', $config);
        $error='';
        $fdata=array();
        if ( ! $this->upload->do_upload('image'))
        {
                $error = array('error' => $this->upload->display_errors());
                // $this->load->view('upload_form', $error);
                print $error;
        }
        else
        {
        		$fdata=$this->upload->data();
        		//print_r($fdata);exit;
                 $data['image'] =$fdata['file_name'];
                 //print_r($data);exit;
               // $this->load->view('upload_success', $data);
        }
        $this->Admin_model->product_save($data);
        $sdata=array();
		$sdata["message"]="Product Add Successfully";
		$this->session->set_userdata($sdata);
        redirect('add_product');
	}
	public function edit_product($prod_id)
	{
	    $this->load->helper('user_helper');
	    $data=array();
	    $data['category']=$this->Admin_model->category();
	    $data['subcategory']=$this->Admin_model->subcategory();
		$data['result']=$this->Admin_model->edit_product($prod_id);
		$this->load->view('admin/edit_product',$data,'true');
	}
	public function product_update()
	{
	    $id=$this->input->post('prod_id');
	    $data=array();
		$data['prod_name']=$this->input->post('name');
		$data['prod_catid']=$this->input->post('category');
		$data['prod_subcatid']=$this->input->post('subcategory');
//		$data['body_cat_id']=$this->input->post('body');
// 		$data['brand_cat_id']=$this->input->post('brand');
		$data['prod_desc']=$this->input->post('description');
		$data['prod_price']=$this->input->post('price');
		$data['prod_code']=$this->input->post('code');

		$config['upload_path']          = 'assets/img/product_image';
        $config['allowed_types']        = 'gif|jpg|png|jpeg';
        // $config['max_size']             = 500;
        // $config['max_width']            = 1024;
        // $config['max_height']           = 768;

        $this->load->library('upload', $config);
        $error='';
        $fdata=array();
        if ( ! $this->upload->do_upload('image'))
        {
                $error = array('error' => $this->upload->display_errors());
                // $this->load->view('upload_form', $error);
                print $error;
        }
        else
        {
        		$fdata=$this->upload->data();
        		//print_r($fdata);exit;
                 $data['image'] =$fdata['file_name'];
                 //print_r($data);exit;
               // $this->load->view('upload_success', $data);
        }
        $this->Admin_model->product_update($id,$data);
        $sdata=array();
		$sdata["message"]="Product update Successfully";
		$this->session->set_userdata($sdata);
        redirect('products');
	    
	}
	public function delete_product($id)
	{
		$this->Admin_model->delete_product($id);
		$sdata=array();
		$sdata["delete"]="Product Delete Successfully";
		$this->session->set_userdata($sdata);
		redirect('products');
	}
	public function order_remove($id)
	{
		$this->Admin_model->order_remove($id);
		$sdata=array();
		$sdata["delete"]="Order Delete Successfully";
		$this->session->set_userdata($sdata);
		redirect('order_details');
	}
	public function client()
	{
		$data=array();
		$data['result']=$this->Admin_model->client(); 
		$this->load->view('admin/client',$data,'true');
	}
	public function active2($id)
	{
		$this->Admin_model->active2($id);
		redirect('client');
	}
	public function inactive2($id)
	{
		$this->Admin_model->inactive2($id);
		redirect('client');
	}
	public function marcent()
	{
		$data=array();
		$data['result']=$this->Admin_model->marcent(); 
		$this->load->view('admin/marchant',$data,'true');
	}
	public function active3($id)
	{
		$this->Admin_model->active3($id);
		redirect('marcent');
	}
	public function inactive3($id)
	{
		$this->Admin_model->inactive3($id);
		redirect('marcent');
	}
	public function marcent_product()
	{
		$data=array();
		$data['result']=$this->Admin_model->marchant_product(); 
		// var_dump($data);exit();
		$this->load->view('admin/marchant_product',$data,'true');
	}
	public function order_details()
	{
		$data=array();
		$data['result']=$this->Admin_model->order_details(); 
		$this->load->view('admin/order_details',$data,'true');
	}
//--start order system--//
	public function ManageOrder(){

		$data=array();
		$data['result'] = $this->Admin_model->manage_order();
		$this->load->view('admin/manage_order',$data,'true');
	}
	public function ViewOrderDetails($order_id){

		$data=array();
		$data['order_info'] = $this->Admin_model->select_order_info_by_id($order_id);
		$customer_id = $data['order_info']->order_custid;
	//	$shipping_id = $data['order_info']->shipping_id;
		$data['customer_info'] = $this->Admin_model->select_customer_info_by_id($customer_id);
		$customer_email = $data['customer_info']->customer_user;
		// echo '<pre>';
		// print_r($data['customer_info']);exit;
	//	$data['shipping_info'] = $this->Admin_model->select_shipping_info_by_id($shipping_id);
		$data['order_details_info'] = $this->Admin_model->select_order_details_info_by_id($order_id);

		/*
        * Start Send Email
        */
        // $data['to_address'] = $customer_email;
        // $data['subject'] = 'Order View';
        // $this->mailer_model->sendEmailToCustomer($data, 'customer_mail',true);
        // $this->mailer_model->sendEmailToAdmin($data, 'admin_mail',true);
        /*
        * End Send Email
        */

        $this->load->view('admin/invoice',$data);

	}
	public function CreateInvoice($order_id){

		$data=array();
		$data['order_info'] = $this->Admin_model->select_order_info_by_id($order_id);
		$customer_id = $data['order_info']->order_custid;
		//$shipping_id = $data['order_info']->shipping_id;
		$data['customer_info'] = $this->Admin_model->select_customer_info_by_id($customer_id);
		//$data['shipping_info'] = $this->Admin_model->select_shipping_info_by_id($shipping_id);
		$data['order_details_info'] = $this->Admin_model->select_order_details_info_by_id($order_id);

		$this->load->helper('dompdf_helper');
		$view_file = $this->load->view('admin/download_invoice',$data,true);
		$file_name = pdf_create($view_file,'inv-00'.$order_id);
		echo $file_name;

	}
	public function ViewDeliveredProduct(){

		$data['result'] = $this->Admin_model->view_delivered_product();
		$this->load->view('admin/delivered_product',$data,'true');
	}
	public function ProductDelivered($order_id){

		$data=array();
		$data['result'] = $this->Admin_model->delivered_product($order_id);
		$sdata = array();
		$sdata["msg"]="Order has been Delivered !";
		$this->session->set_userdata($sdata);
		redirect('super_admin/ViewDeliveredProduct');
	}

	public function ViewCancleProduct(){

		$data['result'] = $this->Admin_model->view_cancle_order();
		$this->load->view('admin/cancle_order',$data,'true');
	}
	public function CancleOrder($order_id){

		$data=array();
		$data['result'] = $this->Admin_model->cancle_order($order_id);
		$sdata = array();
		$sdata["msg"]="Order has been cancle !";
		$this->session->set_userdata($sdata);
		redirect('super_admin/ViewCancleProduct');
	}
//--end order system--//
	public function marchant_pro_del($id)
	{
		$this->Admin_model->marchant_pro_del($id);
		$sdata=array();
		$sdata["delete"]="Product Delete Successfully";
		$this->session->set_userdata($sdata);
		redirect('marcent_product');
	}
	public function getSubcatByCatId($id = null){
        
        if ($id != null) {
            $this->load->helper('admin_helper');
            getAllSubcatByCatId($id);
        }
    }
    public function cpassword()
    {
    	$this->load->view('admin/change_password');
    }
    public function change_password()
    {
       
         $new=md5($this->input->post('new_password'));
         $new2=md5($this->input->post('confirm_password'));
         if($new !=$new2)
         {
             $data['exception']="Password does not match!";
             $this->session->set_userdata($data);
             redirect('cpassword');
         }
         $this->Admin_model->change_password($new);
         $sdata['update_message']="Password Update Successfully";
    	 $this->session->set_userdata($sdata);
         redirect('Super_admin');
    }
	public function logout()
	{
		//$this->session->unset_userdata($id);
		//$this->session->unset_userdata($username);
		$this->session->unset_userdata('admin_id','admin');
		redirect('Admin');
	}
}
?>