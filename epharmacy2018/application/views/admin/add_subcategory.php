<?php
include('header.php');
?>
	<div class="inner_content">
				    <!-- /inner_content_w3_agile_info-->
		<div class="inner_content_w3_agile_info">
					<!-- /agile_top_w3_grids-->
			<div class="agile_top_w3_grids"> 
                       <!-- block -->
        <div class="block">
            <div class="navbar navbar-inner block-header">
                <div class="muted pull-left">Add Subcategory</div>
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
                    <form action="<?php echo base_url('subcategory_save');?>" enctype="multipart/form-data" method="post">
                         <div class="control-group">
                          <label class="control-label" for="userfile">Category Select</label>
                          <div class="controls">
                            <select name="category" required>
                              <option value="">Select</option>
                              <?php
                                foreach ($category as $value) {
                              ?>
                              <option value="<?php print $value->cat_id;?>"><?php print $value->category;?></option>
                              <?php }?>
                            </select>
                          </div>
                        </div>

                        <div class="control-group">
                          <label class="control-label" for="userfile">Name</label>
                          <div class="controls">
                            <input type="text" name="subcategory" id="company" class="form-control" required>
                          </div>
                        </div>
                        <div class="control-group">
                          <label class="control-label" for="userfile">Photo</label>
                          <div class="controls">
                            <input type="file" name="subcat_image" class="form-control">
                          </div>
                        </div>
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