<?php
class Person_model extends CI_Model {
    public function get_person($search,$brand) {
        //var_dump($search,$brand);exit;
        $this->db->select('*');
        $this->db->from('product');
        $this->db->like('prod_name',$search);
        $this->db->like('brand_cat_id',$brand);
        $this->db->order_by('prod_id','DESC');
        $query = $this->db->get();
        $result=$query->result();
        return $result;
    }
     public function get_person2($brand) {
         
         $st_name = $this->session->userdata('search_word');

        $conditions = array();

        if (!empty($st_name)) {

            $conditions[] = 'product.prod_name  LIKE "%' . $st_name . '%"';
            $conditions[] = 'product.prod_price  LIKE "%' . $st_name . '%"';
            $conditions[] = 'product.prod_code  LIKE "%' . $st_name . '%"';
            $sqlStatement = "SELECT * FROM product WHERE ".implode(' OR ', $conditions)."ORDER BY prod_id DESC"." LIMIT 0,50";
            $result = $this->db->query($sqlStatement)->result();
        }else{
            $result = '';
        }

        return $result;
        /*
        $this->db->select('*');
        $this->db->from('product');
        $this->db->like('prod_price',$brand);
        $this->db->or_like('prod_name',$brand);
        $this->db->or_like('prod_code',$brand);
        $this->db->or_like('brand_cat_id',$brand);
        $query = $this->db->get();
        $result=$query->result();
        return $result;
        */
    }
}
?>