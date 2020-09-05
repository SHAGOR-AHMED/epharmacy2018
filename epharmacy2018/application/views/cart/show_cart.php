        <style type="text/css" href="<?php echo base_url();?>assets/css/detailsstyle.css" ></style>

<?php $this->load->view('master/header/header.php');?>


                <div class="container">
                     <h4>Cart Details(
                     <?php
                    $contents=$this->cart->contents();  
                    // var_dump($contents);exit();                
                    print $this->cart->total_items();                   
                    ?>
                     )</h4>
                                           
                    <?php
                    //session_start();
                    $contents=$this->cart->contents();
                    foreach ($contents as $value){
                        $id=$this->cart->total_items();
                        
                    ?>
                    <div class="row">
                        <div class="col-md-2">
                            <div class="cart-item cyc">
                                <img src="<?php print base_url('');?>assets/img/product_image/<?php print $value['image'];?>" class="img-responsive" alt="" height="100"> 
                            </div>
                        </div>
                        <div class="col-md-8">
                            <form method="post" action="<?php print base_url('up_product');?>">
                            <input type="hidden" name="rowid" value="<?php print $value['rowid'];?>">           
                               <div class="cart-item-info">
                                <input type="hidden" name="id" value="<?php print $value['id'];?>">         <h3><?php print $value['name'];?></h3>          
                                <div class="delivery">                              
                                Price:<?php print $value['price'];?>.TK &nbsp;&nbsp;&nbsp;
                                Product Code:<?php print $value['code'];?>&nbsp;&nbsp;&nbsp;
                                Quantity:<input type="number" class="form-control" name="qty" value="<?php print $value['qty'];?>" maxlength="1">
                                     
                                     <p><input type="submit" class="" name="submit" value="Update" style="color: green;"> 
                                     <button name="submit"><a href="<?php print base_url('remove/'.$value['rowid']);?>" style="color:red;">Remove</a> </button>
                                     </p>
                                           
                                     <span>Delivered in 3-10 days</span>                       
                                     <div class="clearfix"></div>
                                </div> 

                               </div>
                               <div class="clearfix"></div> 
                            </form>    
                        </div>
                         <a href="<?php //print base_url('remove_product'.'/'.$value['rowid']);?>">
                         <div class="close1"></div></a>                        
                     </div>
                     <hr>
                     <?php }?>
                      <h5>Total Price:<?php print $this->cart->total();?>.TK</h5>
                      <?php
                      if($this->cart->total_items()==0){
                      ?>
                         <a href="<?php print base_url('');?>"><button class="btn btn-primary" style="color: black;">Continue Shopping</button></a>
                        <?php } else{?>
                         <a href="<?php print base_url('clogin');?>"><button class="btn btn-primary" style="color: black;">Order Here</button></a>
                        
                          <a href="<?php print base_url('remove_all');?>"><button class="btn btn-danger" style="color: black;">Remove All</button></a>  
                           <?php }?>
                      </div><br>               
            

<?php $this->load->view('master/header/footer.php');?>