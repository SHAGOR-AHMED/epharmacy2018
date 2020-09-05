<?php
defined('BASEPATH') OR exit('Prescription Model Problem');
/**
* 
*/
class Prescription_model extends CI_Model
{
	public function customer()
	{
		$this->db->select('*');
		$this->db->from('registrstion');
		$this->db->where('status',1);
		$value=$this->db->get();
		return $value->result();
	}
	public function prescription()
	{
		$this->db->select('*');
		$this->db->from('tbl_prescription');
		$this->db->join('registrstion','registrstion.id=tbl_prescription.user_id');
		$this->db->where('status',1);
		$value=$this->db->get();
		return $value->result();
	}
	public function comment()
	{
		$this->db->select('*');
		$this->db->from('tbl_comment');
		$this->db->join('registrstion','registrstion.id=tbl_comment.user_id');
		//$this->db->join('tbl_prescription','tbl_prescription.id=tbl_comment.user_id');
		$value=$this->db->get();
		return $value->result();
	}
	public function admin_comment()
	{
		$this->db->select('*');
		$this->db->from('admin_comment');
		$this->db->order_by('id','desc');
		$this->db->limit(2);
		$value=$this->db->get();
		return $value->result();
	} 
	public function reply($user_id,$r_comment)
	{
		$this->db->set('user_id', $user_id);
		$this->db->set('comment', $r_comment);
		$this->db->insert('admin_comment');
	}
	public function active($id)
	{
		$this->db->set('active',0);
		$this->db->where('id',$id);
		$this->db->update('registrstion');
	}
	public function inactive($id)
	{
		$this->db->set('active',1);
		$this->db->where('id',$id);
		$this->db->update('registrstion');
	}
	public function delete($id)
	{
	    $this->db->select('*');
		$this->db->from('tbl_prescription');
		$this->db->where('p_id',$id);
		$photo=$this->db->get();
		$old_photo=$photo->row();		
		unlink($old_photo->prescription);
	//	var_dump($id);exit;
		$this->db->where('p_id',$id);
		$this->db->delete('tbl_prescription');
	}
}
?>