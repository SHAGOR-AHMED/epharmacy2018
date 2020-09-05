<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

	public function index()
	{
		$this->load->view('master/index');
	}
	public function skincare()
	{
		$this->load->view('master/skinCare');
	}
	public function product_description($prod_id)
	{
		$result['product_description']=$this->db->select('*')->from('product')->where('prod_id',$prod_id)->get()->row();
		$this->load->view('master/skincare_description',$result);
	}
	public function labs()
	{
		$this->load->view('master/labs');
	}
	public function health_product()
	{
		$this->load->view('master/health_product');
	}
	public function medical_product()
	{
		$this->load->view('master/medical_product');
	}
	public function doctor()
	{
		$this->load->view('master/doctors');
	}
	public function prescription()
	{
		$this->load->view('master/prescription');
	}
/*	public function cat($catid)
	{
		// print $catid;exit();
		$result['subcategory']=$this->db->select('*')->from('subcategory')->where('subcat_catid',$catid)->get()->result();
		// var_dump($result);exit();
		$this->load->view('master/subcategory',$result);
	} */
	public function only_fitness()
	{
	 $cat_name['c_name']='Fitness & Supplements';
     $this->session->set_userdata($cat_name);
     
		$result['subcat_product']=$this->db->select('*')->from('product')->where('prod_catid',50)->or_where('prod_catid',32)->or_where('prod_catid',39)->or_where('prod_catid',63)->or_where('prod_catid',62)->order_by('prod_id','desc')->get()->result();
		
		$this->load->view('master/subcat_product',$result);
	}
	public function only_medical()
	{
	 $cat_name['c_name']='Medical Devices';
     $this->session->set_userdata($cat_name);
     
		$result['subcat_product']=$this->db->select('*')->from('product')->where('prod_catid',52)->or_where('prod_catid',54)->or_where('prod_catid',24)->or_where('prod_catid',40)->or_where('prod_catid',36)->or_where('prod_catid',41)->order_by('prod_id','desc')->get()->result();
		
		$this->load->view('master/subcat_product',$result);
	}
	public function cat($catid)
	{
        $cat=$this->db->select('*')->from('category')->where('cat_id',$catid)->get()->row();
     $cat_name['c_name']=$cat->category;
     //var_dump($cat_name);exit();
     $this->session->set_userdata($cat_name);

		$result['subcat_product']=$this->db->select('*')->from('product')->where('prod_catid',$catid)->order_by('prod_id','desc')->get()->result();
		
		$this->load->view('master/subcat_product',$result);
	}
	public function subcat($subcatid)
	{
    	$cat=$this->db->select('*')->from('subcategory')->where('subcat_id',$subcatid)->get()->row();
         $cat_name['c_name']=$cat->subcategory;
         $this->session->set_userdata($cat_name);
		
		$result['subcat_product']=$this->db->select('*')->from('product')->where('prod_subcatid',$subcatid)->order_by('prod_id','desc')->get()->result();
		
		$this->load->view('master/subcat_product',$result);
	}
	public function body_part($body_id)
	{
		$result['body_product']=$this->db->select('*')->from('product')->where('body_cat_id',$body_id)->order_by('prod_id','desc')->get()->result();
		// var_dump($result);exit();
		$this->load->view('master/body_product',$result);
	}
	public function medical_devices()
	{
	    $data['product']=$this->db->select('*')->from('product')->where('prod_catid',54)->get()->result();
		$this->load->view('master/medical_devices',$data);
	}
	public function diabetes_monitoring()
	{
	    $data['product']=$this->db->select('*')->from('product')->where('prod_catid',8)->get()->result();
		$this->load->view('master/diabetes_monitoring',$data);
	}
	public function fitness_management()
	{
	    $data['product']=$this->db->select('*')->from('product')->where('prod_catid',50)->get()->result();
		$this->load->view('master/fitness_management',$data);
	}
	public function baby_child()
	{
	    $data['product']=$this->db->select('*')->from('product')->where('prod_catid',33)->get()->result();
		$this->load->view('master/baby_child',$data);
	}
		public function mother_care()
	{
	    $data['product']=$this->db->select('*')->from('product')->where('prod_catid',37)->get()->result();
		$this->load->view('master/mother_care',$data);
	}
		public function sexual_wellness()
	{
	    $data['product']=$this->db->select('*')->from('product')->where('prod_catid',66)->get()->result();
		$this->load->view('master/sexual_wellness',$data);
	}
		public function skin_care()
	{
	    $data['product']=$this->db->select('*')->from('product')->where('prod_catid',68)->get()->result();
		$this->load->view('master/skin_care',$data);
	}
	public function support_brace()
	{
	    $data['product']=$this->db->select('*')->from('product')->where('prod_catid',40)->get()->result();
	    $this->load->view('master/support_brace',$data);
	}
	public function about()
	{
	    $this->load->view('master/about');
	}
		public function contact()
	{
	    $this->load->view('master/contact');
	}
}