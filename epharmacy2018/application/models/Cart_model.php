<?php
/**
* 
*/
class Cart_model extends CI_model
{
	public function cart_details($cart_id)
    {
        $this->db->select('*');
        $this->db->from('product');        
        $this->db->where('prod_id',$cart_id);        
        $value=$this->db->get();
        return $value->row();
    }
    public function registration($data)
    {
    	$this->db->insert('customer',$data);
    }
    public function login_access($email,$password)
	{
		$this->db->select('*');
        $this->db->from('customer');
        $this->db->where('customer_user',$email);
        $this->db->where('customer_password',$password);
		$value=$this->db->get();
		$result=$value->row();
		return $result;
	}
	public function confirm_order()
	{
		$order_custid=$this->input->post('customer_id');
		$customer_name=$this->input->post('customer_name');
		$customer_email=$this->input->post('customer_email');
		$mobile=$this->input->post('number');

		$shipping_addr=$this->input->post('address');
		//$place_code=$this->input->post('code');
		$payment=$this->input->post('payment');

		$cart=$this->cart->contents();
       	//$total=$this->cart->total();
        foreach ($cart as $value) {
       	$qty=$value['qty'];          
        $data=array();
        $data['order_custid']=$order_custid;
		$data['customer_name']=$customer_name;
		$data['customer_email']=$customer_email;
		$data['mobile']=$mobile;

		$data['product_id']=$value['id'];
		$data['quantity']=$qty;
		$data['product_code']=$value['code'];	
		$data['product_image']=$value['image'];
		$data['amount']=$value['price']*$qty;
		
		$data['shipping_addr']=$shipping_addr;
		//$data['place_code']=$place_code;
		$data['payment']=$payment;
		
		$this->db->insert('order_details',$data);
	  }
	}
}
?>