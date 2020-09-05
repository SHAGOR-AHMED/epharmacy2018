<?php

class Merchant_controller extends CI_Controller{
    public function __construct() {
        parent::__construct();
        $this->load->model('Merchant_model');
        $this->load->model('mailer_model');
        //$this->load->library('session');
    }

    private function msg($data){
        $sdata['msg'] = $data;
        $this->session->set_userdata($sdata);
    }

    private function debug($data){
        echo '<pre>';
        print_r($data);
        exit;
    }
    
    public function member_login(){
        $marchant_id=$this->session->userdata('marchant_id');
        if($marchant_id==NULL){
        $this->load->view('merchant_corner/member_login');
        }
        else{
            redirect('dashboard');
        }

    }
    
    public function dashboard(){   

        $this->load->view('merchant_corner/dashboard');

    }

    public function merchant_login(){
        
        $marchant_email=trim($this->input->post('marchant_email'));
        $marchant_password=md5(trim($this->input->post('marchant_password')));
        $result=$this->Merchant_model->login_check($marchant_email,$marchant_password);
        $sdata=array();
        if($result){
           $sdata['marchant_id']=$result->marchant_id;
           $sdata['marchant_email']=$result->email;
           $sdata['marchant_password']=$result->password;
           $this->session->set_userdata($sdata);           
           redirect('merchant_controller/dashboard');
        }        
        else{
            $this->msg('Invalid Username or Password !');
            $this->load->view('merchant_corner/member_login');
        }                
    }
    
    public function merchant_register(){

        $this->form_validation->set_error_delimiters('<div class="error">', '</div>');
        $this->form_validation->set_rules('name', 'Name', 'required');
        $this->form_validation->set_rules('address', 'Address', 'required');
        $this->form_validation->set_rules('nid', 'NID', 'required|is_unique[marchant.nid]');
        $this->form_validation->set_rules('city', 'City', 'required');
        $this->form_validation->set_rules('zip', 'Zip', 'required');
        $this->form_validation->set_rules('company', 'Company', 'required');
        $this->form_validation->set_rules('phone', 'Phone', 'required|is_unique[marchant.phone]');
        $this->form_validation->set_rules('email', 'Email', 'required|valid_email|is_unique[marchant.email]');
        $this->form_validation->set_rules('password', 'Password', 'required|min_length[8]');
        $this->form_validation->set_rules('re_password', 'Re-type Password', 'required|matches[password]');

        if($this->form_validation->run() == FALSE){

            $this->load->view('merchant_corner/member_login');

        }else{

            $data=array();
            $data['name'] = trim($this->input->post('name'));
            $data['address'] = trim($this->input->post('address'));
            $data['nid'] = trim($this->input->post('nid'));
            $data['city'] = trim($this->input->post('city'));
            $data['zip'] = trim($this->input->post('zip'));
            $data['company'] = trim($this->input->post('company'));
            $data['phone'] = trim($this->input->post('phone'));
            $data['email'] = trim($this->input->post('email'));
            $data['password'] = md5(trim($this->input->post('password')));
            $data['website'] = trim($this->input->post('website'));
            $data['keyword'] = md5(rand(0,1000));
            $key = $data['keyword'];
            $email = $data['email'];

            //$this->debug($data);

            $this->Merchant_model->merchant_insert($data);
            $link = base_url("merchant_controller/AccountActivation/" . $key);
            $this->mailer_model->sendMerchantActivationLink($link, $email, "marchant_acc_activation");

            $this->msg('Thank you ! Please Activate your Account from your Email !');
            redirect("merchant_controller/member_login");

        }

            
    }

    public function AccountActivation($key){

        if ($key != null) {
            $keyword = $key;
            $check = $this->Merchant_model->CheckMerchantKeyword($keyword);
            if (!$check) {
                $sdata['msg'] = "Invalid Keyword !!!";
                $this->session->set_userdata($sdata);
                redirect("merchant_controller/member_login");
            }else{
                $this->db->set('active', 1)->where('keyword', $keyword)->update('marchant');
                $sdata['msg'] = "Your Account has been Activated !";
                $this->session->set_userdata($sdata);
                redirect("merchant_controller/member_login");
            }

        }
    }

    public function getSubcatByCatId($id = null){
        
        if ($id != null) {
            $this->load->helper('user_helper');
            getAllSubcatByCatId($id);
        }
    }

    
    public function add_product(){

        $this->load->helper('user_helper');
        $data['query2']=$this->Merchant_model->body_part();
        //$data['query3']=$this->Merchant_model->show_brandlist();
        $this->load->view('merchant_corner/addproducts', $data);
    }

    public function add_product_save(){ 

        $this->form_validation->set_error_delimiters('<div class="error">', '</div>');
        $this->form_validation->set_rules('category', 'Category', 'required');
        $this->form_validation->set_rules('subcat_name', 'Sub Category', 'required');
        $this->form_validation->set_rules('body_part', 'Body Part', 'required');
        $this->form_validation->set_rules('productname', 'Product Name', 'required');
        $this->form_validation->set_rules('productprice', 'Product Price', 'required');
        $this->form_validation->set_rules('description', 'Description', 'required');


        if($this->form_validation->run() == FALSE){

            $this->load->view('merchant_corner/addproducts');

        }else{

            $merchant_id = $this->session->userdata('marchant_id');
            if(isset($merchant_id)){

                $merchant_user_id = $merchant_id;
            }

            $data=array();
            $data['category'] = trim($this->input->post('category'));
            $data['subcat_name'] = trim($this->input->post('subcat_name'));
            $data['body_part'] = trim($this->input->post('body_part'));
            $data['productname'] = trim($this->input->post('productname'));
            $data['productprice'] = trim($this->input->post('productprice'));
            $data['description'] = trim($this->input->post('description'));
            $data['productcode'] = $this->input->post('productcode');
            $data['merchant_user_id'] = $merchant_user_id;

            //$this->debug($data);
            
            $config['upload_path'] = './assets/img/merchant_product/';
            $config['allowed_types']= 'gif|jpeg|png|jpg';
            $config['max_size'] = 1024;
            $config['max_width'] = 700;
            $config['max_height'] = 800;
            $config['encrypt_name'] = false;
            $this->load->library('upload', $config);
            $this->upload->initialize($config);
            $error='';
            $fdata=array();
            if ( ! $this->upload->do_upload('image')){

                $error =$this->upload->display_errors();
                $dt['img_msg'] = $error;
                $this->session->set_userdata($dt);
                redirect(current_url());

            }else{

                $fdata= $this->upload->data();
                $data['image']=$config['upload_path'].$fdata['file_name'];       
            } 

            $this->Merchant_model->insert_product($data);

            $this->msg('Your Product has been Add successfully !');
            redirect("merchant_controller/add_product");
        }

    }

    
    public function order_management(){        
        $this->load->view('merchant_corner/deal_order');
    }
    
    public function deal_management(){        
        $this->load->view('merchant_corner/deal_manage');
    }
    public function product()
    {
        $merchant_id = $this->session->userdata('marchant_id');
        $id="epm".$merchant_id;
        $data['result']=$this->Merchant_model->product($id);
         $this->load->view('merchant_corner/product',$data);
    } 
    public function prod_shift($id)
    {
        $this->db->set('status',2)->where('order_id',$id)->update('order_details');
        redirect('order_management');
    }
    public function prod_delivery($id)
    {
        $this->db->set('status',3)->where('order_id',$id)->update('order_details');
        redirect('order_management');
    }
    public function prod_cencel($id)
    {
         $this->db->set('status',4)->where('order_id',$id)->update('order_details');
        // var_dump($id);exit();
        // $this->Merchant_model->prod_cencel($id);
        redirect('order_management');
    }
    public function deliver_order()
    {
         $this->load->view('merchant_corner/deliver_order');
    }
     public function cencel_order()
    {
         $this->load->view('merchant_corner/order_cencel');
    }
     public function shift_order()
    {
         $this->load->view('merchant_corner/shift_order');
    }
    public function Logout(){
         $this->session->unset_userdata('marchant_id','marchant_email','marchant_password');
         redirect('login_member');
     }
     
    public function profile_manage(){
         $id=$this->input->post('marchant_id');
         var_dump($id);
         exit();
         $data['manage_profile']=$this->Merchant_model->manage_profile($id);
         $this->load->view('merchant_corner/manage_profile',$data);
    }

    
}//Merchant_controller