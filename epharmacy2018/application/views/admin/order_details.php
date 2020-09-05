<?php
include('header.php');
?>
	<div class="inner_content">
				    <!-- /inner_content_w3_agile_info-->
		<div class="inner_content_w3_agile_info">
					<!-- /agile_top_w3_grids-->
			<div class="agile_top_w3_grids">
                <?php
                	if($this->session->userdata('update'))
                	{
                		print '<span style="color:green">'.$this->session->userdata('update').'</span>';
                		$this->session->unset_userdata('update');
                		print '<br>';
                	}
                	elseif($this->session->userdata('delete'))
                	{
                		print '<span style="color:red">'.$this->session->userdata('delete').'</span>';
                		$this->session->unset_userdata('delete');
                		print '<br>';
                	}
                ?>
				 <div class="block-content collapse in">				 
                    <div class="span12">
                        <table id="sample-table-2" class="table table-striped table-bordered table-hover roni">
                            <thead>
                                <tr>
                                    <th>SN</th>
                                    <th>Customer Details</th>
                                    <th>Product Details</th>
                                    <th>Shipping Address</th>
                                    <th>Product Image</th>
                                    <th>Status</th>
                                </tr>
                            </thead>
                            <tbody>
                            	<?php
                            		$i=0;
                            		foreach ($result as $order) {                            		
                                        $i++;
                            	?>
                                    <tr>
                                        <td class="center"><?php print $i;?></td>                         
                                        <td class="center">
                                            <b>Id:</b> <?php print $order->order_custid;?><br>
                                            <b>Name:</b> <?php print $order->customer_name;?><br>
                                            <b>Email:</b> <?php print $order->customer_email;?><br>
                                            <b>Mobile:</b> <?php print $order->mobile;?><br>
                                        </td>   
                                         <td class="center">
                                            <b>Product Code:</b> <?php print $order->product_code;?><br>
                                            <b>Quantity:</b> <?php print $order->quantity;?><br>
                                            <b>Total Price:</b> <?php print $order->amount;?><br>
                                            <b>Order Date:</b> <?php print $order->order_date;?><br>
                                        </td>
                                         <td class="center">
                                            <b>Address:</b> <?php print $order->shipping_addr;?><br>
                                            <b>Post Code:</b> <?php print $order->place_code;?><br>
                                            <b>Payment:</b> <?php print $order->payment;?><br>
                                        </td>  
                                        <td class="center">
                                            <a href="<?php print base_url('assets/img/product_image/');?><?php print $order->product_image;?>" target="_blank">
                                            <img src="<?php print base_url('assets/img/product_image/');?><?php print $order->product_image;?>" height="100" width="150">
                                        </td>   
                                        <td class="center">
                                            <?php print $order->date;?>
                                            <?php
                                                if($order->status=='1'){                                  ?>
                                            <button class="btn btn-info">Delivery Pending</button>
                                            <?php } elseif($order->status=='2'){?>
                                            <button class="btn btn-info">ePharmacy</button>
                                              <?php } elseif($order->status=='3'){?>
                                            <button class="btn btn-success">Product Delivery</button>
                                            <?php } else{?>
                                            <button class="btn btn-danger">Product Cencel</button>
                                            <?php }?>
                                        <!--<a href="<?php print base_url('Super_admin/order_remove/'.$order->order_id);?>"><button class="btn btn-danger">Remove</button></a>-->
                                        </td>                        
                                    </tr>
                                <?php }?>
                            </tbody>
                        </table>
   <script type="text/javascript" charset="utf8" src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.2.min.js"></script>
  <script type="text/javascript" charset="utf8" src="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/jquery.dataTables.min.js"></script>
                        <div id="pagination">
                            <?php //echo $this->pagination->create_links(); ?>
                        </div>
                    </div>
                </div>				         
			</div>							
		</div><!-- //inner_content_w3_agile_info-->
	</div>
<?php
include('footer.php');
?>
