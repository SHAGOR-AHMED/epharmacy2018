<?php include('marchant_menu.php');?>
        <div class="container">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-2">    
                        <input type="date" name="" class="form-control dateui"  >
                    </div>
                    <div class="col-sm-1">to</div>
                    <div class="col-md-2">
                        <input type="date" name="" class="form-control dateui" >
                    </div>
                    <div class="col-md-2">
                        <select name="" class="form-control" >
                            <option value="">Select All</option>
                            <option value="">ON Delevary</option>
                            <option value="">ON Continental</option>
                        </select>
                    </div>
                    <div class="col-md-2">
                        <input type="submit" name="" value="Search"   class="btn btn-primary" placeholder="Search">
                    </div><br>
                     <div class="col-md-10">
                     <table id="sample-table-2" class="table table-responsive table-striped table-bordered table-hover roni">
                            <thead>
                                <tr>
                                    <th>SN</th>
                                    <th>Customer Details</th>
                                    <th>Product Details</th>
                                    <th>Shipping Address</th>
                                    <th>Product Image</th>
                                    <th>Delivery Pending</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                    $merchant_id = $this->session->userdata('marchant_id');
                                    $id="epm".$merchant_id;
                                    // var_dump($id);exit();
                                    $qr5 = $this->db->query("SELECT * FROM order_details WHERE product_code='$id' and status='1'");
                                    $qr6 = $qr5->result();
                                    foreach ($qr6 as $order) {
                                        $i=1;
                                ?>
                                    <tr>
                                        <td class="center"><?php print $i;?></td>                         
                                        <td class="center">
                                            Name: <?php print $order->customer_name;?><br>
                                            Email: <?php print $order->customer_email;?><br>
                                            Mobile: <?php print $order->mobile;?><br>
                                        </td>   
                                         <td class="center">
                                            Product code: <?php print $order->product_code;?><br>
                                            Quantity: <?php print $order->quantity;?><br>
                                            Total Price: <?php print $order->amount;?><br>
                                            Order Date: <?php print $order->order_date;?><br>
                                        </td>
                                         <td class="center">
                                            Address: <?php print $order->shipping_addr;?><br>
                                            Post Code: <?php print $order->place_code;?><br>
                                            Payment: <?php print $order->payment;?><br>
                                        </td>  
                                        <td class="center">
                                            <a href="<?php print base_url('assets/img/product_image/');?><?php print $order->product_image;?>" target="_blank">
                                            <img src="<?php print base_url('assets/img/product_image/');?><?php print $order->product_image;?>" width="100" height="100">
                                        </td>  
                                        <td class="center">
                                            <a href="<?php print base_url('prod_shift/'.$order->order_id);?>"><button class="btn btn-info">Shift ePharmacy</button></a>

                                              <a href="<?php print base_url('prod_delivery/'.$order->order_id);?>"><button class="btn btn-success">Product Delivery</button></a>
                                              
                                               <a href="<?php print base_url('prod_cencel/'.$order->order_id);?>"><button class="btn btn-danger">Product Cencel</button></a>
                                        </td>                      
                                    </tr>
                                <?php }?>
                            </tbody>
                    </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


</div>

<?php
  require_once('page/footer.php');
  ?>
<script src="<?php echo base_url();?>assets/css/js/jquery-2.1.4.min.js"></script>
<script src="<?php echo base_url();?>assets/js/bootstrap.min.js"></script>
<script src="<?php echo base_url();?>assets/js/jquery-ui.js"></script>
<script>
$(document).ready(function(){
$( ".dateui" ).datepicker();
});
</script>