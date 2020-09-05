    <style type="text/css" href="<?php echo base_url();?>assets/css/detailsstyle.css" ></style>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<?php
if($this->session->userdata('reg_message'))
{
    print '<script>alert("Registration Successfully Completed! Please Now Login")</script>';
    $this->session->unset_userdata('reg_message');
}
?>
<?php $this->load->view('master/header/header.php');?>
 <div class="container">
 	<div class="container-fluid">
 	    <div class="row">
 	        <div class="col-md-6">
						<form action="<?php print base_url('clogin_access');?>" method="post">
							<div class="row">
								<div class="col-md-3"></div>
								<div class="col-md-6"><h2 style="color:green;">Login For Order</h2></div>
								<div class="col-md-3">								
								</div>
							</div>
							<div class="row">
								<div class="col-md-3"></div>
								<div class="col-md-6">
							<?php
								if($this->session->userdata('exception'))
								{
									print '<span style="color:red">'.$this->session->userdata('exception').'</span>';
									$this->session->unset_userdata('exception');
								}
								elseif ($this->session->userdata('reg_message')) {
									print '<span style="color:green;font-size:20;">'.$this->session->userdata('reg_message').'</span>';
									$this->session->unset_userdata('reg_message');
								}
							?></div>
								<div class="col-md-3"></div>
							</div>
							
							<br>
							<div class="row">
							<div class="col-md-3"></div>
							<div class="col-md-6">
								<input  type="text" value="" name="email" class="form-control" required="" placeholder="Enter Email">
							</div>
							</div>
							<br>
							<div class="row">
							<div class="col-md-3"></div>
							<div class="col-md-6">								
								<input  type="password" value="" name="password" class="form-control" required="" placeholder="Enter Password">								
							</div>
							</div>
							<br>
							<div class="row">
							<div class="col-md-3"></div>
							<div class="col-md-6">
								<input type="submit" value="Login" class="form-control" style="background-color:#e2e2e2;">
							</div>
							</div>
						</form>
				</div>
				<div class="col-md-6">
					<form action="<?php print base_url('cregistration');?>" method="post">
							<div class="row">
								<div class="col-md-2"></div>
								<div class="col-md-6"><h3 style="color: red;">Registration Here!</h3></div>
							</div>
							<div class="row">
							<div class="col-md-2"></div>
							<div class="col-md-6">
								<label class="">Name</label>
								<input  type="text" value="<?php print set_value('name');?>" name="name" class="form-control" required=""><?php print form_error('name');?>
							</div>
							</div>
						
							<div class="row">
							<div class="col-md-2"></div>
					    	<div class="col-md-6">	
								<!--	<label class="">Address</label>							
								<input  type="text" value="<?php print set_value('address');?>" name="address" class="form-control" required=""><?php print form_error('address');?>	-->							
							</div>
							</div>
					
							<div class="row">
							<div class="col-md-2"></div>
							<div class="col-md-6">
								<label class="">Mobile</label>
								<input type="number" value="<?php print set_value('number');?>" name="mobile" class="form-control" required=""><?php print form_error('number');?>
							</div>
							</div>
							<div class="row">
							<div class="col-md-2"></div>
							<div class="col-md-6">
								<label class="">Email</label>
								<input type="email" name="email" value="<?php print set_value('email');?>" class="form-control"><?php print form_error('email');?>
							</div>
							</div>
							<div class="row">
							<div class="col-md-2"></div>
							<div class="col-md-6">
								<label class="">Password</label>
								<input type="Password" value="<?php print set_value('password');?>" name="password" class="form-control"><?php print form_error('password');?>
							</div>
							</div>
							<div class="row">
							<div class="col-md-2"></div>
							<div class="col-md-6">
								<input type="submit" value="Submit" class="form-control" style="background-color:#e2e2e2;">
							</div>
							</div>
						</form>	
				</div>
		</div><br>
						<!--<div class="row">
							<div class="col-md-3"></div>
							<div class="col-md-2">
								<a href="#" class="form-control">Forgot Password</a> 
							</div>
							<div class="col-md-2"><a href="<?php print base_url('cregister');?>" class="form-control">Register</a></div>
							<div class="col-md-2"><a href="<?php print base_url('show_cart');?>" class="form-control">Back</a></div>
						</div>-->
							
					</div>
                        
        </div>      
        <br>                               
  <?php $this->load->view('master/header/footer.php');?>