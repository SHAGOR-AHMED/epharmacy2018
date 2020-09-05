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
                    <form action="<?php echo base_url('edit_bodypart_save');?>" enctype="multipart/form-data" method="post">
                        <div class="control-group">
                          <label class="control-label" for="userfile">Bodypart Name</label>
                           <input type="hidden" name="id" value="<?php print $result->id;?>" class="form-control">
                          <div class="controls">
                            <input type="text" name="body_part" value="<?php print $result->body_part_name;?>" class="form-control" required>
                          </div>
                        </div><br>
                        
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