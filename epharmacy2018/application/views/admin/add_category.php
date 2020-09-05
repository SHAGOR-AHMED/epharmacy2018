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
                <div class="muted pull-left">Add Category</div>
            </div>
              <?php
                $message=$this->session->userdata('message');
                if($message)
                {
                  print '<span style="color:green;font-size:16px;margin:10px;">'.$message.'</span>';
                  $this->session->unset_userdata('message');
                }
             
				$img_msg = $this->session->userdata('img_msg');
				if (isset($img_msg)) {
					echo '<div class="alert alert-danger">' . $img_msg . "</div>";
					$this->session->unset_userdata('img_msg');
				}
			?>
            <div class="block-content collapse in">
                <div class="span12">
                    <form action="<?php echo base_url('category_save');?>" enctype="multipart/form-data" method="post">
                        <div class="control-group">
                          <label class="control-label" for="userfile">Category Name</label>
                          <div class="controls">
                            <input type="text" name="name" id="company" class="form-control" required>
                          </div>
                        </div>
                        <div class="control-group">
                          <label class="control-label" for="userfile">Category Type</label>
                          <div class="controls">
                            <select name="type" class="form-control">
                                <option value="1">Health</option>
                                <option value="2">Medical</option>
                            </select>
                          </div>
                        </div>
                        <br>
                        <div class="control-group">
                          <label class="control-label" for="userfile">Photo</label>
                          <div class="controls">
                            <input type="file" name="cat_image" class="form-control">
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