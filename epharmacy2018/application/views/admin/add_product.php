<?php
include('header.php');
?>
<script src="https://cloud.tinymce.com/stable/tinymce.min.js"></script>
  <script>tinymce.init({ selector:'textarea' });</script>
  
	<div class="inner_content">
				    <!-- /inner_content_w3_agile_info-->
		<div class="inner_content_w3_agile_info">
					<!-- /agile_top_w3_grids-->
			<div class="agile_top_w3_grids"> 
                       <!-- block -->
        <div class="block">
            <div class="navbar navbar-inner block-header">
                <div class="muted pull-left">Add Product</div>
            </div>
              <?php
                $message=$this->session->userdata('message');
                if($message)
                {
                  print '<span style="color:green;font-size:16px;margin:10px;">'.$message.'</span>';
                  $this->session->unset_userdata('message');
                }
              ?>
            <div class="block-content collapse in">
                <div class="span12">
                    <form action="<?php echo base_url('product_save');?>" enctype="multipart/form-data" method="post">
                        <div class="control-group">
                          <label class="control-label" for="userfile">Name</label>
                          <div class="controls">
                            <input type="text" name="name" id="company" class="form-control" required>
                          </div>
                        </div>

                         <div class="form-group">
                          <label class="control-label" for="userfile">Category Select</label>
                          <div class="controls">
                            <!-- <select name="category" class="form-control">
                              <option value="">Select</option>
                              <?php
                                foreach ($category as $value) {
                              ?>
                              <option value="<?php //print $value->cat_id;?>"><?php //print $value->category;?></option>
                              <?php }?>
                            </select> -->

                            <select class="form-control" name="category" id="category">
                                <option value="">Select Categoty</option>
                                <?php getAllcategory(); ?>
                            </select>

                          </div>
                        </div>


                        <div class="control-group">
                          <label class="control-label" for="userfile">SubCategory Select</label>
                          <div class="controls">
                          
                             <select name="subcategory" id="subcat_name" class="form-control">
                                  <option value="">Select Sub Categoty</option>
                              </select>

                          </div>
                        </div>
                        
                        <div class="control-group">
                          <label class="control-label" for="userfile">Body Select</label>
                          <div class="controls">
                            <select name="body" class="form-control">
                              <option value="">Select</option>
                              <?php
                                foreach ($body_part as $value3) {
                              ?>
                              <option value="<?php print $value3->id;?>"><?php print $value3->body_part_name;?></option>
                              <?php }?>
                            </select>
                          </div>
                        </div>

                       <div class="control-group">
                          <label class="control-label" for="userfile">Brand Select</label>
                          <div class="controls">
                            <select name="brand" class="form-control">
                              <option value="">Select</option>
                              <?php
                                foreach ($band_list as $value4) {
                              ?>
                              <option value="<?php print $value4->id;?>"><?php print $value4->brand_name;?></option>
                              <?php }?>
                            </select>
                          </div>
                        </div>

                        <div class="control-group">
                          <label class="control-label" for="userfile">Product Description</label>
                          <div class="controls">
                            <!-- <input type="text" name="description" id="company" class="form-control" required> -->
                            <textarea name="description"></textarea>
                          </div>
                        </div>

                        <div class="control-group">
                          <label class="control-label" for="userfile">Product Price</label>
                          <div class="controls">
                            <input type="text" name="price" id="company" class="form-control" required>
                          </div>
                        </div>

                        <div class="control-group">
                          <label class="control-label" for="userfile">Product Code</label>
                          <div class="controls">
                          <!--  <select name="code" class="form-control">
                              <option value="">Select</option>
                                <option value="admin">Admin</option>
                              <?php
                               //$qr15 = $this->db->query("SELECT * FROM marchant");
                               // $qr16 = $qr15->result();
                               // foreach ($qr16 as $marchant) {                                          
                                 ?>
                                <option value="epm<?php //print $marchant->marchant_id;?>"><?php //print $marchant->name;?>(<?php //print $marchant->marchant_id;?>)</option>
                                <?php //}?>
                            </select>-->
                            
                            <input type="text" name="code" id="company" class="form-control" required>
                          </div>
                        </div>
                        
                         <div class="control-group">
                          <label class="control-label" for="userfile">Made In</label>
                          <div class="controls">
                            <input type="text" name="made" id="company" class="form-control" >
                          </div>
                        </div>

                        <div class="control-group">
                          <label class="control-label" for="userfile">Upload image</label>
                          <div class="controls">
                            <input type="file" name="image" id="company" class="form-control" required>
                          </div>
                        </div>
                        <br>
                        <div class="form-actions">
                          <button type="submit" name="submit" class="btn btn-primary">Save</button>
                        </div>
                        <ul class="inline avatars" id="home_slider_images">
                          <!-- dynamic data comes here -->
                        </ul>
                    </form>
                </div>
            </div>
        </div>
        <!-- /block -->   
			</div>							
		</div><!-- //inner_content_w3_agile_info-->
	</div>

<?php
include('footer.php');
?>

<script type="text/javascript">

    $('#category').change(function () {
        $.get("<?php echo base_url()?>merchant_controller/getSubcatByCatId/" + this.value, function (data, status) {
            $('#subcat_name').html(data);
        });
        
    });
        
</script>