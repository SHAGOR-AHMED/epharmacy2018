<?php
class Home_model extends CI_Model{
    
    // public function show_category(){
    //     $this->db->select('*');
    //     $this->db->from('category');
    //     $query=$this->db->get();
    //     return $query->result();        
    // }
    
    // public function show_subcategory(){
    //     $this->db->select('*');
    //     $this->db->from('subcategory');
    //     $this->db->join('category','category.cat_id=subcategory.subcat_catid');
    //     $query1=$this->db->get();
    //     return $query1->result();
    // }
    
    // public function baby_care(){
    //     $this->db->select('*');
    //     $this->db->from('product');
    //     $this->db->join('subcategory','subcategory.subcat_id=product.prod_subcatid');
    //     $this->db->where('subcat_id',217);
    //     $baby_care=$this->db->get();
    //     return $baby_care->result();
    // }   
    
    // public function show_bodypart(){
    //     $this->db->select('*');
    //     $this->db->from('body_part');
    //     $this->db->order_by('id', 'ASC');
    //     //$this->db->limit(4);
    //     $query2=$this->db->get();        
    //     return $query2->result();        
    // }
    
    // public function show_brandlist(){
    //     $this->db->select('*');
    //     $this->db->from('brand_list');
    //     $query3=$this->db->get();
    //     return $query3->result();      
    // }
    
    // public function menu_subcategory(){
    //     $this->db->select('*');
    //     $this->db->from('subcategory');
    //     //$this->db->where('subcat_catid', 2);
    //     $this->db->order_by('subcat_id', 'ASC');
    //     //$this->db->limit(6);
    //     $query4=$this->db->get();
    //     return $query4->result();        
    // }
    
    // public function skin_care(){
    //     $this->db->select('*');
    //     $this->db->from('product');
    //     $this->db->join('category','category.cat_id=product.prod_catid');
    //     $this->db->where('cat_id',37);
    //     $baby_care=$this->db->get();
    //     return $baby_care->result();
    // }
    // public function diabetes(){
    //     $this->db->select('*');
    //     $this->db->from('product');
    //     $this->db->join('category','category.cat_id=product.prod_catid');
    //     $this->db->where('cat_id',8);
    //     $baby_care=$this->db->get();
    //     return $baby_care->result();
    // }
    //  public function fitness(){
    //     $this->db->select('*');
    //     $this->db->from('product');
    //     $this->db->join('category','category.cat_id=product.prod_catid');
    //     $this->db->where('cat_id',50);
    //     $baby_care=$this->db->get();
    //     return $baby_care->result();
    // }
    
    // public function slider(){
    //     $this->db->select('*');
    //     $this->db->from('slider');        
    //     $query5=$this->db->get();
    //     return $query5->result();        
    // }
    
    // public function add_manage(){
    //     $this->db->select('*');
    //     $this->db->from('ads_manage');        
    //     $query6=$this->db->get();
    //     return $query6->result();       
    // }
    
    // public function new_arrival(){
    //     $this->db->select('*');
    //     $this->db->from('product');
    //     $this->db->order_by('prod_id','DESC');
    //     $this->db->limit(10);
    //     $query7=$this->db->get();
    //     return $query7->result();        
    // }
    
    // public function physical_therapy(){
    //     $this->db->select('*');
    //     $this->db->from('product');
    //     $this->db->order_by('prod_catid','DESC');
    //     $this->db->where('prod_catid',35);
    //     $this->db->limit(4);
    //     $query8=$this->db->get();
    //     return $query8->result();        
    // }
    
    // public function braces(){
    //     $this->db->select('*');
    //     $this->db->from('product');
    //     $this->db->order_by('prod_catid','DESC');
    //     $this->db->where('prod_catid',40);
    //     $this->db->limit(4);
    //     $query22=$this->db->get();
    //     return $query22->result();       
    // }
    
    // public function wound_care(){
    //     $this->db->select('*');
    //     $this->db->from('product');
    //     $this->db->order_by('prod_catid','DESC');
    //     $this->db->where('prod_catid',47);
    //     $this->db->limit(4);
    //     $query23=$this->db->get();
    //     return $query23->result();       
    // }
    
    // public function product_list($id){
    //     $this->db->select('*');
    //     $this->db->from('product');
    //     $this->db->where('body_cat_id',$id);
    //     $query10=$this->db->get();
    //     return $query10->result();    
    // }
    
    // public function product_category($id){
    //     $this->db->select('*');
    //     $this->db->from('product');
    //     $this->db->where('prod_subcatid',$id);
    //     $query11=$this->db->get();
    //     return $query11->result();        
    // }
    
    // public function product_brand($id){
    //     $this->db->select('*');
    //     $this->db->from('product');
    //     $this->db->where('brand_cat_id',$id);
    //     $query16=$this->db->get();
    //     return $query16->result();       
    // }
    
    public function login_access($email,$password){
        $this->db->select('*');
        $this->db->from('registrstion');
        $this->db->where('email',$email);
        $this->db->where('password',$password);
        $this->db->where('active',1);
        $query12=$this->db->get();
        $data = $query12->row();
        return $data;       
    }
    
    public function userInsert($data){ 
	
        $this->db->insert('registrstion',$data);       
    }

    public function checkkeyword($keyword){

        $check = $this->db->select('*')->from('registrstion')->where('keyword', $keyword)->get()->row();
        if (is_null($check)) {
            return false;
        } else {
            return true;
        }
        
    }
    
    public function profile($id){
        $this->db->select('*');
        $this->db->from('registrstion');
        $this->db->where('id',$id);        
        $query13=$this->db->get();
        return $query13->row();       
    }
    
    public function up_prescription($data){

       $this->db->insert('tbl_prescription',$data); 

    }   
    
    public function show_prescription($id){
        $this->db->select('*');
        $this->db->from('tbl_prescription');
        $this->db->where('user_id',$id);        
        $asdf=$this->db->get();                
        return $asdf->result();       
    }
    
    public function comment_user($id){
        $this->db->select('*');
        $this->db->from('tbl_comment');
        $this->db->where('user_id',$id);        
        $bcd=$this->db->get();                
        return $bcd->result();       
    }
    
    public function comment_admin($id){
        $this->db->select('*');
        $this->db->from('admin_comment');
        $this->db->where('user_id',$id);        
        $bdf=$this->db->get();                
        return $bdf->result();       
    }
    
    public function insert_comment($data){
        
        $this->db->insert('tbl_comment',$data);        
    }
    
    public function product_details($id){
        $this->db->select('*');
        $this->db->from('product');
        $this->db->join('category','category.cat_id=product.prod_catid');
        $this->db->join('subcategory','subcategory.subcat_id=product.prod_subcatid');
        $this->db->where('prod_id',$id);
        $query17=$this->db->get();
        return $query17->row();
    }
    
    public function get_search_item($search){
        $this->db->select('*');
        $this->db->from('product');        
        $this->db->like('prod_name',$search);        
        $search=$this->db->get();
        return $search->result();
    }
	
	
    public function product_bandage($id)
    {
        $this->db->select('*');
        $this->db->from('product');
        $this->db->where('prod_subcatid',$id);
        $query16=$this->db->get();
        return $query16->result(); 
    }
    public function product_diagnostic($id)
    {
        $this->db->select('*');
        $this->db->from('product');
        $this->db->where('prod_subcatid',$id);
        $query16=$this->db->get();
        return $query16->result(); 
    }
    public function product_luxury($id)
    {
        $this->db->select('*');
        $this->db->from('product');
        $this->db->where('prod_subcatid',$id);
        $query16=$this->db->get();
        return $query16->result(); 
    }
    public function product_ostomy($id)
    {
        $this->db->select('*');
        $this->db->from('product');
        $this->db->where('prod_subcatid',$id);
        $query16=$this->db->get();
        return $query16->result(); 
    }
    public function product_physical($id)
    {
        $this->db->select('*');
        $this->db->from('product');
        $this->db->where('prod_subcatid',$id);
        $query16=$this->db->get();
        return $query16->result(); 
    }
    public function product_support($id)
    {
        $this->db->select('*');
        $this->db->from('product');
        $this->db->where('prod_subcatid',$id);
        $query16=$this->db->get();
        return $query16->result(); 
    }
}
?>