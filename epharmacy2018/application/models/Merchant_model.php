<?php

class Merchant_model extends CI_Model{
    
    public function merchant_insert($data){

        $this->db->insert('marchant',$data);

    }
    
    public function login_check($marchant_email,$marchant_password){
        $this->db->select("*");
        $this->db->from('marchant');
        $this->db->where('email',$marchant_email);
        $this->db->where('password',$marchant_password);
        $this->db->where('active',1);
        $this->db->where('status',1);
        $query=$this->db->get();
        return $query->row();
    }
    
    public function body_part(){
        $this->db->select('*');
        $this->db->from('body_part');
        $bodypart=$this->db->get();
        return $bodypart->result();        
        
    }
    
    public function show_brandlist(){
        $this->db->select('*');
        $this->db->from('brand_list');
        $brandlist=$this->db->get();
        return $brandlist->result();        
        
    }
    
    public function insert_product($data){

        $this->db->insert('merchant_product',$data);  

    }
    
    public function manage_profile($id){
        $this->db->select('*');
        $this->db->from('marchant');
        $this->db->where('marchant_id',$id);
        $this->db->where('active',1);
        $manage_profile=$this->db->get();
        return $manage_profile->result();
    }

    public function CheckMerchantKeyword($keyword){

        $check = $this->db->select('*')->from('marchant')->where('keyword', $keyword)->get()->row();
        if (is_null($check)) {
            return false;
        } else {
            return true;
        }
    }
    public function product($id)
    {
        $this->db->select('*');
        $this->db->from('merchant_product');
        $this->db->join('category','category.cat_id=merchant_product.category');
        $this->db->join('subcategory','subcategory.subcat_id=merchant_product.subcat_name');
        $this->db->join('body_part','body_part.id=merchant_product.body_part');
         $this->db->where('productcode',$id);
        $query = $this->db->get(); 
        return $query->result();
    }
    

}//Merchant_model