<?php
include('header.php');
?>
	<div class="inner_content">
				    <!-- /inner_content_w3_agile_info-->
		<div class="inner_content_w3_agile_info">
					<!-- /agile_top_w3_grids-->
			<div class="agile_top_w3_grids">
				 <div class="navbar navbar-inner block-header">
                    <div class="muted pull-left">All Body Part &nbsp;
                        <a href="<?php print base_url('add_body_part');?>">
                            <i class="fa fa-plus"></i> ADD NEW
                        </a>
                    </div>
                </div>	
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
                                    <th>Category Name</th>
                                    <th>Edit</th>
                                    <th>Delete</th>
                                </tr>
                            </thead>
                            <tbody>
                            	<?php
                            		$i=1;
                            		foreach ($result as $value) {                            			
                            	?>
                                    <tr>
                                        <td class="center"><?php print $i++;?></td>                                     
                                        <td class="center"><?php print $value->body_part_name;?></td>

                                        <td class="center"><a href="<?php print base_url('edit_bodypart'.'/'.$value->id);?>"><i class="fa fa-pencil-square-o" aria-hidden="true"></i>Edit</a></td>

                                        <td class="center"><a href="<?php print base_url('delete_bodypart'.'/'.$value->id);?>"><i class="fa fa-trash" aria-hidden="true"></i>Delete</a></td>
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