<?php
class Home_controller extends CI_Controller{
    public function __construct() {
        parent::__construct();
        $this->load->model('Home_model');
        $this->load->model('mailer_model');
    }    
    public function login(){
        $this->load->view('login/login.php');        
    }
	
	public function profile(){
		$this->load->view('login/profile');
    }
    public function my_prescription()
    {
        $this->load->view('login/my_prescription');
    }

    public function login_access(){       
        
        $email = trim($this->input->post('email'));        
        $password = md5(trim($this->input->post('password')));
        $result=$this->Home_model->login_access($email,$password);
        $mydata=array();       
        if($result){            
            $mydata['id']=$result->id;
            $mydata['email']=$result->email;
            $mydata['password']=$result->password;
            $this->session->set_userdata($mydata);
            redirect('home_controller/profile');
        }else{
            $sdata['msg'] = 'Invalid Email or Password !';
            $this->session->set_userdata($sdata);
            redirect('home_controller/login');
        }  

    }
    
    public function login_access_two(){       
        $email = trim($this->input->post('email'));        
        $password = md5(trim($this->input->post('password')));
        $result=$this->Home_model->login_access($email,$password);
        $mydata=array();       
        if($result){            
            $mydata['id']=$result->id;
            $mydata['email']=$result->email;
            $mydata['password']=$result->password;
            $this->session->set_userdata($mydata);
            redirect('home_controller/profile');        
        }else{
            $sdata['msg'] = 'Invalid Email or Password !';
            $this->session->set_userdata($sdata);
            redirect('home_controller/login');
        }  

    }
	
	public function do_logout(){
        session_destroy();
        $sdata['msg'] = 'You have successfully Logout !';
        $this->session->set_userdata($sdata);
        redirect('home_controller/login');
    }
    
    public function registration_page(){      
        $this->load->view('login/registration');
    }
    
   public function saveUser(){

        $this->form_validation->set_error_delimiters('<div class="error">', '</div>');
        $this->form_validation->set_rules('fullname', 'Full Name', 'required');
        $this->form_validation->set_rules('mobile', 'Mobile No', 'required|is_unique[registrstion.mobile]');
        $this->form_validation->set_rules('email', 'Email', 'required|valid_email|is_unique[registrstion.email]');
        $this->form_validation->set_rules('address', 'Address', 'required');
        $this->form_validation->set_rules('password', 'Password', 'required|min_length[8]');
        $this->form_validation->set_rules('re_password', 'Re-type Password', 'required|matches[password]');
        $this->form_validation->set_rules('gender', 'Gender', 'required');
        $this->form_validation->set_rules('occupation', 'Occupation', 'required');

        if ($this->form_validation->run() == FALSE) {
            $data=array();
           // $data['query']=$this->Home_model->show_category();
           // $data['query1']=$this->Home_model->show_subcategory();
           // $data['query2']=$this->Home_model->show_bodypart();
           //$data['query3']=$this->Home_model->show_brandlist();
           // $data['query4']=$this->Home_model->menu_subcategory();          
            $this->load->view('login/registration',$data);
        } else {

            $data = $this->getUserDataFromPost();
            $data['keyword'] = md5(rand(0,1000));
            $key = $data['keyword'];
            $email = $data['email'];
            //print_r($email);exit;
            $data['file'] = $this->uploadUserPhoto();

            $this->Home_model->userInsert($data);
            $link = base_url("home_controller/ActiveAccount/" . $key);
            $this->mailer_model->sendActivationLink($link, $email, "account_activation");
            $sdata['msg'] = 'Thank you ! Please active your account via email !';
            $this->session->set_userdata($sdata);
            redirect("home_controller/registration_page");
        } 

    }

    public function ActiveAccount($key){

        if ($key != null) {
            $keyword = $key;
            $check = $this->Home_model->checkkeyword($keyword);
            if (!$check) {
                $sdata['msg'] = "Invalid Keyword !!!";
                $this->session->set_userdata($sdata);
                redirect("home_controller/registration_page");
            }else{
                $this->db->set('status', 1)->where('keyword', $keyword)->update('registrstion');
                $sdata['msg'] = "Your Account has been Activated !";
                $this->session->set_userdata($sdata);
                redirect("home_controller/registration_page");
            }

        }
    }

    private function getUserDataFromPost(){
        
        $data['fullname'] = trim($this->input->post('fullname', true));
        $data['mobile'] = trim($this->input->post('mobile', true));
        $data['email'] = trim($this->input->post('email', true));
        $data['address'] = trim($this->input->post('address', true));
        $data['gender'] = trim($this->input->post('gender', true));
        $data['occupation'] = trim($this->input->post('occupation', true));
        $data['password'] = md5(trim($this->input->post('password', true)));
       
        return $data;
    }

    private function uploadUserPhoto(){

        $this->load->library('upload');
        $config['upload_path'] = './assets/u_image/';
        $config['allowed_types'] = 'gif|jpg|png|jpeg';
        $config['max_size'] = 1024;
        $config['max_width'] = 700;
        $config['max_height'] = 800;
        $config['encrypt_name'] = false;
        $this->upload->initialize($config);
        if (empty($_FILES['file']['name'])) {
            return $config['upload_path'];
        }
        if (!$this->upload->do_upload('file')) {
            $error = $this->upload->display_errors();
            $dt['img_msg'] = $error;
            $this->session->set_userdata($dt);
            redirect(current_url());
        }
        $uploadImage = $this->upload->data();
        if ($uploadImage['is_image'] == 1)
            return $config['upload_path'] . $uploadImage['file_name'];
        else
            $sdata['msg'] = "Invalid Image Please select jpg or png ";
            $this->session->set_userdata($sdata);
            redirect("home_controller/registration_page");

    }

    
    public function up_prescription(){

        $data['user_id']=$this->input->post('id');        
        $data['details']=trim($this->input->post('details'));
        
        $config['upload_path'] = 'assets/prescription/';
        $config['allowed_types']= 'gif|jpeg|png|jpg';
        $config['max_size'] = 1024;
        $config['max_width'] = 700;
        $config['max_height'] = 800;
        $config['encrypt_name'] = false;

        $this->load->library('upload', $config);
        $this->upload->initialize($config);
        $error='';
        $fdata=array();
        if ( ! $this->upload->do_upload('prescription'))
        {
            $error =$this->upload->display_errors();
            $dt['img_msg'] = $error;
            $this->session->set_userdata($dt);
            redirect(current_url());
        }
        else
        {
            $fdata= $this->upload->data();
            $data['prescription'] = $config['upload_path'] . $fdata['file_name'];            
        }
        $this->Home_model->up_prescription($data);
        $sdata['msg'] = "Your Prescription Upload Successfully !";
        $this->session->set_userdata($sdata);
        redirect("home_controller/profile");

    }  
	
    
    public function comment_insert(){
        
        $data['user_id']=$this->input->post('id');
        $data['comment']=$this->input->post('comment');        
        $this->Home_model->insert_comment($data); 
        $sdata['msg'] = "Your Comment Saved !";
        $this->session->set_userdata($sdata);
        redirect("home_controller/profile");   
    }
	
	public function comment_admin($id){        
        $data['bdf']=$this->Home_model->comment_admin($id);        
        $this->load->view('login/profile',$data);
    }

    public function about_us(){
        $data=array();
        $data['query']=$this->Home_model->show_category();
        $data['query1']=$this->Home_model->show_subcategory();
        $data['query2']=$this->Home_model->show_bodypart();
        $data['query3']=$this->Home_model->show_brandlist();
        $data['query4']=$this->Home_model->menu_subcategory();        
        $this->load->view('about/about',$data);
    }
    
    public function contact_us(){
        $data=array();
        $data['query']=$this->Home_model->show_category();
        $data['query1']=$this->Home_model->show_subcategory();
        $data['query2']=$this->Home_model->show_bodypart();
        $data['query3']=$this->Home_model->show_brandlist();
        $data['query4']=$this->Home_model->menu_subcategory();        
        $this->load->view('contact/contact',$data);
    }
    
    public function product_details($id){
        $data=array();  
        $data['query17']=$this->Home_model->product_details($id);      
        $data['query2']=$this->Home_model->show_bodypart();
        $data['query3']=$this->Home_model->show_brandlist();
        $data['query4']=$this->Home_model->menu_subcategory();        
       // var_dump($data);exit();
        $this->load->view('product/product_details',$data);
    }
    
    public function get_search(){

        $search = trim($this->input->post('search'));
        $data['search_item']=$this->Home_model->get_search_item($search);

        // $data['query']=$this->Home_model->show_category();
        // $data['query1']=$this->Home_model->show_subcategory();
        // $data['query2']=$this->Home_model->show_bodypart();        
        // $data['query3']=$this->Home_model->show_brandlist();
        // $data['query4']=$this->Home_model->menu_subcategory();
        // $data['query7']=$this->Home_model->new_arrival();

        $this->load->view('search/search_item',$data);
    }
    
}

?>