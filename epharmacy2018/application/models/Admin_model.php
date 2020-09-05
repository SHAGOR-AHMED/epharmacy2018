<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/**
* 
*/
class Admin_model extends CI_Model
{
	
	function __construct()
	{
		parent::__construct();
	}
	public function admin_login()
	{
		$name=$this->input->post('name');
		$password=md5($this->input->post('password'));
		$this->db->select('*');
		$this->db->from('a_panel');
		$this->db->where('username',$name);
		$this->db->where('password',$password);
		$get=$this->db->get();
		$get2=$get->row();
		//var_dump($get2);exit();
		return $get2;
	}
	public function admin_login2()
	{
		$name=$this->input->post('name');
		$password=md5($this->input->post('password'));
		$this->db->select('*');
		$this->db->from('p_panel');
		$this->db->where('username',$name);
		$this->db->where('password',$password);
		$get=$this->db->get();
		$get2=$get->row();
		//var_dump($get2);exit();
		return $get2;
	}
	public function add_category($data)
	{
		$this->db->insert('category',$data);
	}
	public function category()
	{
		$this->db->select('*');
		$this->db->from('category');
		$query = $this->db->get(); 
		return $query->result();
	}
	public function edit_category($id)
	{
		$this->db->select('*');
		$this->db->from('category');
		$this->db->where('cat_id',$id);
		$query = $this->db->get(); 
		return $query->row();
	}
	
	public function edit_category_save($id,$data)
	{
		$this->db->where('cat_id',$id);
		$this->db->update('category',$data);
	}
	
	public function delete_category($id)
	{
		$this->db->where('cat_id',$id);
		$this->db->delete('category');
	}
	public function subcategory()
	{
		$this->db->select('*');
		$this->db->from('subcategory');
		$this->db->join('category','category.cat_id=subcategory.subcat_catid');
		$query = $this->db->get(); 
		return $query->result();
	}
	public function add_subcategory($data)
	{
		$this->db->insert('subcategory',$data);
	}
	public function delete_subcategory($id)
	{
		$this->db->where('subcat_id',$id);
		$this->db->delete('subcategory');
	}
	public function edit_subcategory($subcat_id)
	{
		$this->db->select('*');
		$this->db->from('subcategory');
		$this->db->where('subcat_id',$subcat_id);
		$query = $this->db->get(); 
		return $query->row();
	}
	public function edit_subcategory_save($id,$data)
	{
	    $this->db->where('subcat_id',$id);
		$this->db->update('subcategory',$data);
	}
	public function body_part()
	{
		$this->db->select('*');
		$this->db->from('body_part');
		$query = $this->db->get(); 
		return $query->result();
	}
	public function body_part_save($data)
	{
		$this->db->insert('body_part',$data);
	}
	public function edit_bodypart($body_id)
	{
	   	$this->db->select('*');
		$this->db->from('body_part');
		$this->db->where('id',$body_id);
		$query = $this->db->get(); 
		return $query->row();
	}
	public function body_part_update($id,$data)
	{
	    $this->db->where('id',$id);
		$this->db->update('body_part',$data);
	}
	public function delete_bodypart($id)
	{
		$this->db->where('id',$id);
		$this->db->delete('body_part');
	}
	public function band_list()
	{
		$this->db->select('*');
		$this->db->from('brand_list');
		$query = $this->db->get(); 
		return $query->result();
	}
	public function brand_save($data)
	{
		//var_dump($data);exit();
		$this->db->insert('brand_list',$data);
	}
	public function edit_brand($id)
	{
	    $this->db->select('*');
	    $this->db->from('brand_list');
	    $this->db->where('id',$id);
	    $query = $this->db->get(); 
	    return $query->row();
	}
	public function brand_update($id,$data)
	{
	    $this->db->where('id',$id);
	    $this->db->update('brand_list',$data);
	}
	public function delete_brand($id)
	{
		$this->db->where('id',$id);
		$this->db->delete('brand_list');
	}
		public function product()
	{
		$this->db->select('*');
		$this->db->from('product'); 
	//	$this->db->join('category','category.cat_id=prod_catid');
	//	$this->db->join('subcategory','subcategory.subcat_id=prod_subcatid');
		$query = $this->db->get(); 
		return $query->result();
	}
	public function products()
	{
		$this->db->select('*');
		$this->db->from('product'); 
		$this->db->join('category','category.cat_id=prod_catid');
		//$this->db->join('subcategory','subcategory.subcat_id=prod_subcatid');
		$this->db->order_by('prod_id','DESC');
		$query = $this->db->get(); 
		return $query->result();
	}
	public function product_save($data)
	{
		$this->db->insert('product',$data);
	}
	public function edit_product($prod_id)
	{
	    $this->db->select('*');
		$this->db->from('product'); 
		$this->db->join('category','category.cat_id=prod_catid');
		$this->db->join('subcategory','subcategory.subcat_id=prod_subcatid');
		$this->db->where('prod_id',$prod_id);
		$query = $this->db->get(); 
		return $query->row();
	}
	public function product_update($id,$data)
	{
	    $this->db->select('*');
		$this->db->from('product');
		$this->db->where('prod_id',$id);
		$photo=$this->db->get();
		$old_photo=$photo->row();		
		unlink('assets/img/product_image/'.$old_photo->image);

		$this->db->where('prod_id',$id);
		$this->db->update('product',$data);
	}
	public function delete_product($id)
	{
		$this->db->select('*');
		$this->db->from('product');
		$this->db->where('prod_id',$id);
		$photo=$this->db->get();
		$old_photo=$photo->row();		
		unlink('assets/img/product_image/'.$old_photo->image);

		$this->db->where('prod_id',$id);
		$this->db->delete('product');
	}
	public function order_remove($id)
	{
// 		$this->db->select('*');
// 		$this->db->from('order_details');
// 		$this->db->where('order_id',$id);
// 		$photo=$this->db->get();
// 		$old_photo=$photo->row();	
// 		unlink('assets/img/product_image/'.$old_photo->product_image);
        
		$this->db->where('order_id',$id);
		$this->db->delete('order_details');
	}
	public function client()
	{
		$this->db->select('*');
		$this->db->from('customer'); 
		$this->db->order_by('customer_id','DESC');
		$query = $this->db->get(); 
		return $query->result();
	}
	public function active2($id)
	{
		$this->db->set('active',0);
		$this->db->where('customer_id',$id);
		$this->db->update('customer');
	}
	public function inactive2($id)
	{
		$this->db->set('active',1);
		$this->db->where('customer_id',$id);
		$this->db->update('customer');
	}
	public function marcent()
	{
		$this->db->select('*');
		$this->db->from('marchant');
		$this->db->where('active',1); 
		$query = $this->db->get(); 
		return $query->result();
	}
	public function active3($id)
	{
		$this->db->set('status',0);
		$this->db->where('marchant_id',$id);
		$this->db->update('marchant');
	}
	public function inactive3($id)
	{
		$this->db->set('status',1);
		$this->db->where('marchant_id',$id);
		$this->db->update('marchant');
	}
	public function marchant_product()
	{
		$this->db->select('*');
		$this->db->from('merchant_product');
		$this->db->join('category','category.cat_id=merchant_product.category');
		$this->db->join('subcategory','subcategory.subcat_id=merchant_product.subcat_name');
		$this->db->join('marchant','marchant.marchant_id=merchant_product.merchant_user_id');
		$query = $this->db->get(); 
		return $query->result();
	}
	public function marchant_pro_del($id)
	{
		$this->db->select('*');
		$this->db->from('merchant_product');
		$this->db->where('merchant_id',$id);
		$photo=$this->db->get();
		$old_photo=$photo->row();		
		unlink($old_photo->image);

		$this->db->where('merchant_id',$id);
		$this->db->delete('merchant_product');
	}
	public function order_details()
	{
		$this->db->select('*');
		$this->db->from('order_details');
		$this->db->order_by('order_id','DESC');
		$query = $this->db->get(); 
		return $query->result();
	}
	
//--start order system--//
    public function manage_order(){

		$query = $this->db->select('*')->from('order_details')->where('status',1)->order_by('order_id', 'desc')->get()->result();
				 
		return $query;
	}
	public function select_order_info_by_id($order_id){

		$query = $this->db->select('*')->from('order_details')->where('order_id',$order_id)->get()->row();
				 
		return $query;

	}

	public function select_customer_info_by_id($customer_id){

		$query = $this->db->select('*')->from('customer')->where('customer_id',$customer_id)->get()->row();
				 
		return $query;

	}
	public function select_shipping_info_by_id($shipping_id){

		$query = $this->db->select('*')->from('tbl_shipping')->where('shipping_id',$shipping_id)->get()->row();
				 
		return $query;

	}

	public function select_order_details_info_by_id($order_id){

		$query = $this->db->select('*')->from('order_details')->where('order_id',$order_id)->get()->result();
				 
		return $query;

	}
	public function select_all_product_info(){

		$query = $this->db->select('*')->from('product')->limit(3)->get()->result();
				 
		return $query;
	}

	public function select_all_order(){

		$query = $this->db->select('*')->from('tbl_order')->get()->result();
		
		return $query;
	}
	public function view_delivered_product(){

		$query = $this->db->select('*')->from('order_details')->where('status',2)->get()->result();
		
		return $query;
	}
	public function delivered_product($order_id){

		$this->db->set('status',2);
		$this->db->where('order_id',$order_id);
		$this->db->update('order_details');
	}

	public function view_cancle_order(){

		$query = $this->db->select('*')->from('order_details')->where('status',3)->get()->result();
		
		return $query;
	}

	public function cancle_order($order_id){

		$this->db->set('status',3);
		$this->db->where('order_id',$order_id);
		$this->db->update('order_details');
	}
//-- end order system--//
	public function change_password($new)
	{
	    //var_dump($new);exit();
	       $this->db->set('password', $new);
           $this->db->update('a_panel'); 
	}
	public function change_password2($new)
	{
	    //var_dump($new);exit();
	       $this->db->set('password', $new);
           $this->db->update('p_panel'); 
	}
}
?>