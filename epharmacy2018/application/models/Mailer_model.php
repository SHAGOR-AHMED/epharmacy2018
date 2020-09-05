<?php

class Mailer_model extends CI_Model{

    private $from_address = "shagor.ahmed374@gmail.com";
    private $admin_address = "webadmin@gatewayit.net";


    function sendActivationLink($link, $email, $templateName){

        $data['link']=$link;
        $this->load->library('email');
        $this->email->set_mailtype('html');
        $this->email->from($this->from_address, "New Account");
        $this->email->to($email);
        $this->email->subject("Account Activation");
        $body = $this->load->view('mail_scripts/' . $templateName, $data, true);
        $this->email->message($body);
        $this->email->send();
        $this->email->clear();
    }
	
	function sendMerchantActivationLink($link, $email, $templateName){

        $data['link']=$link;
        $this->load->library('email');
        $this->email->set_mailtype('html');
        $this->email->from($this->from_address, "New Merchant Account");
        $this->email->to($email);
        $this->email->subject("Marchent Account Activation");
        $body = $this->load->view('mail_scripts/' . $templateName, $data, true);
        $this->email->message($body);
        $this->email->send();
        $this->email->clear();
    }


}

?>