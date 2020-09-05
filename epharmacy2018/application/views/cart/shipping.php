        <style type="text/css" href="<?php echo base_url();?>assets/css/detailsstyle.css" ></style>

<?php $this->load->view('master/header/header.php');?>

<?php
$id=$this->session->userdata('id');
?>
<div class="container">
			<div class="row">
				<h3>Shipping Address</h3>
		           <?php
		            $customer_id=$this->session->userdata('customer_id');
		            $customer_name=$this->session->userdata('username');
		            $customer_email=$this->session->userdata('email');
		             $customer_mobile=$this->session->userdata('mobile');

		           	
		           if($this->session->userdata('message'))
					{
						$message=$this->session->userdata('message');
						print '<span style="color:green;font-size:18px;margin:10px;">'.$message.'</span>';
						$this->session->unset_userdata('message');
					}
		           ?>
		          </div>
		          
		          
					<form action="<?php print base_url('confirm_order');?>" method="post">

					<div class="row">
						<input type="hidden" name="customer_id" value="<?php print $customer_id;?>" class="form-control">
					</div>
					<div class="row">
						<div class="col-md-4">
							<input type="hidden" name="customer_name" value="<?php print $customer_name;?>" class="form-control">
						</div>
					</div>
					<div class="row">
						<div class="col-md-4">
							<input type="text" name="customer_name" value="<?php print $customer_name;?>" class="form-control" disabled>
						</div>
					</div>
					<div class="row">
						<div class="col-md-4">
							<input type="hidden" name="customer_email" value="<?php print $customer_email;?>" class="form-control">
							
						</div>
					</div>
					<div class="row">
						<div class="col-md-4">
							<input type="text" name="customer_email" value="<?php print $customer_email;?>" class="form-control" disabled>
							
						</div>
					</div>
					<div class="row">
						<div class="col-md-4">						
							<input  type="hidden" value="<?php print $customer_mobile;?>" name="number" class="form-control">							
						</div>
					</div>
					<div class="row">
						<div class="col-md-4">						
							<input  type="text" value="<?php print $customer_mobile;?>" name="number" class="form-control" disabled>							
						</div>
					</div>
					<br>
					<div class="row">
						<div class="col-md-4">						
							<input  type="text" value="" name="address" class="form-control" required="" placeholder="Address">							
						</div>
					</div>
					<!--<div class="row">
						<div class="col-md-4">						
							<input  type="text" value="" name="code" class="form-control" required="" placeholder="Post-code">							
						</div>
					</div>-->
					
					<div class="row">
						<div class="col-md-4">							
							<select name="payment" required="" class="form-control">
								<option value="">Payment Method</option>
								<option value="cash">---Cash On Delivery---</option>
								<option value="bkash">---Bkash---</option>
							</select>							
						</div> 
					</div>
					<br>
					<div class="row">
						<div class="col-md-4">
							<span style="color: green"><input type="submit" value="Confirm Order" class="form-control"></span>
						</div>
					</div>
						
				</form>	
					
			</div>
<?php $this->load->view('master/header/footer.php');?>