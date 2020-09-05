<?php
include('header.php');
?>
	<div class="inner_content">
				    <!-- /inner_content_w3_agile_info-->
		<div class="inner_content_w3_agile_info">
					<!-- /agile_top_w3_grids-->
			<div class="agile_top_w3_grids">
				<div class="block-content collapse in">
			    <?php
					$img_msg = $this->session->userdata('img_msg');
					if (isset($img_msg)) {
						echo '<div class="alert alert-danger">' . $img_msg . "</div>";
						$this->session->unset_userdata('img_msg');
					}
				?>
                <div class="span12">
                    <form action="<?php echo base_url('edit_category_save');?>" enctype="multipart/form-data" method="post">
                        <div class="control-group">
                          <label class="control-label" for="userfile">Category Name</label>
                           <input type="hidden" name="id" value="<?php print $result->cat_id;?>" class="form-control">
                          <div class="controls">
                            <input type="text" name="category" value="<?php print $result->category;?>" class="form-control" required>
                          </div>
                        </div><br>
                        <div class="control-group">
                          <div class="controls">
                            <img src="<?php print base_url($result->cat_image);?>" height="150px" width="120px">
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
                          <button type="submit" name="submit" class="btn btn-primary">Update</button>
                        </div>
                        <ul class="inline avatars" id="home_slider_images">
                          <!-- dynamic data comes here -->
                        </ul>
                    </form>
                </div>
            </div>   
			</div>							
		</div><!-- //inner_content_w3_agile_info-->
	</div>
<?php
include('footer.php');
?>