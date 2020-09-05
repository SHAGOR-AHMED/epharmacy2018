<?php
class Person extends CI_Controller {

    function __construct() {
        parent::__construct();
        $this->load->model('Person_model');    /* Model is called in controller */
    }

    public function index()
    {
        $search = $this->input->post('search');
         $brand = $this->input->post('brand');
        $result['product'] = $this->Person_model->get_person($search,$brand); 
        $this->load->view('master/search_product',$result);

         // echo json_encode($result);
    }
     public function brand()
    {
        $brand = $this->input->post('search');
         $this->session->set_tempdata("search_word","$brand");
         if ($brand == NULL ) {
            $this->session->set_flashdata('notice_msg', 'ٍSorry you should use at least One word to Search');
            redirect('welcome');
        }
        $result['product'] = $this->Person_model->get_person2($brand); 
       //count($result);exit;
        $this->load->view('master/search_product',$result);
    }
}
?>