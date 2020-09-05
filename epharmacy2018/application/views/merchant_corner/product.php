<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

<?php include('marchant_menu.php');?>
        <div class="col-md-9">
            <!--Body content-->            
                    <div class="row">
                     <div class="col-md-12">
                        <div class="table-responsive">
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>SN</th>
                                    <th>Product Name</th>
                                    <th>Product Category</th>
                                    <th>Product Subcategory</th>
                                    <th>Product Bodypart</th>
                                    <th>Product Description</th>
                                    <th>Product Price</th>
                                    <th>Product Image</th>
                                </tr>
                            </thead>
                            <tbody>
                                 <?php
                                    $i=1;
                                    foreach ($result as $value) {                                       
                                ?>
                                    <tr>
                                        <td class="center"><?php print $i++;?></td>
                                        <td class="center">
                                        <?php print $value->productname;?>
                                        </td>
                                         <td class="center"><?php print $value->category;?></td>
                                         <td class="center"><?php print $value->subcategory;?></td>
                                           <td class="center"><?php print $value->body_part_name;?></td>
                                           <td class="center"><?php print $value->description;?></td>
                                            <td class="center"><?php print $value->productprice;?></td>
                                             <td class="center">
                                                <img src="<?php print base_url($value->image);;?>" height="80"> 
                                        </td>
                                    </tr>
                                 <?php }?>
                            </tbody>
                        </table>
                        </div>
<script type="text/javascript" charset="utf8" src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.2.min.js"></script>
<script type="text/javascript" charset="utf8" src="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/jquery.dataTables.min.js"></script>
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




