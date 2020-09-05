<?php include('marchant_menu.php');?>
        <div class="col-md-10">         
            <div class="roww" style="margin-left:0px;">
                <ul>
                    <li><a href="?p=">Today</a></li>
                    <li><a href="?p=">Week</a></li>
                    <li><a href="?p=">Month</a></li>
                    <li><a href="?p=">Year</a></li>
                </ul>

                 <br>
                    <!-- <div class="row">
                     <div class="col-md-3">
                         <span class="">0</span>
                         <h3>New Sell</h3>
                     </div>
                     <div class="col-md-3">
                         <span class="">0</span>
                         <h3>New Order</h3>
                     </div>
                     <div class="col-md-3">
                         <span class="">0</span>
                         <h3>Uncompitable Delivery</h3>
                     </div>
                     <div class="col-md-3">
                         <span class="">0.TK</span>
                         <h3>Your Demand</h3>
                     </div>
                    </div>
                 <br><br> -->
                 <div class="row">
                     <div class="col-md-3">
                         <a href="<?php print base_url('order_management');?>"><i class="fa fa-shopping-bag fa-5x" style="color:red"><h4>New Order</h4></i></a>
                     </div>
                     <div class="col-md-3">
                         <a href="<?php print base_url('deliver_order');?>"><i class="fa fa-truck fa-5x" style="color:red"><h4>Deliver Order</h4></i></a>
                     </div>
                     <div class="col-md-3">
                        <a href="<?php print base_url('cencel_order');?>"> <i class="fa fa-ban fa-5x" style="color:red"><h4>Cancel Order</h4></i></a>
                     </div>
                     <div class="col-md-3">
                         <a href="<?php print base_url('shift_order');?>"><i class="fa fa-ship fa-5x" style="color:red"><h4>Shift ePharmacy</h4></i></a>
                     </div>
                 </div>    
        </div>
    </div>
    </div>
</div>
</div><!---extra div----->
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




