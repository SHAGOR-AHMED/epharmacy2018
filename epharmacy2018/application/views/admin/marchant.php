<?php
include('header.php');
?>
	<div class="inner_content">
				    <!-- /inner_content_w3_agile_info-->
		<div class="inner_content_w3_agile_info">
					<!-- /agile_top_w3_grids-->
			<div class="agile_top_w3_grids">
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
                                    <th>Name</th>
                                    <th>Address</th>
                                     <th>NID No.</th>
                                      <th>City</th>
                                       <th>Zip Code</th>
                                        <th>Company</th>
                                    <th>Mobile</th>
                                    <th>Email</th>
                                    <th>Status</th>
                                </tr>
                            </thead>
                            <tbody>
                            	<?php
                            		$i=0;
                            		foreach ($result as $marcent) {                            		
                                        $i++;
                            	?>
                                    <tr>
                                        <td class="center"><?php print $i;?></td>                         
                                        <td class="center">
                                            <?php print $marcent->name;?>
                                         </td>
                                         <td class="center">
                                             <?php print $marcent->address;?> 
                                         </td>
                                        <td class="center"><?php print $marcent->nid;?></td>
                                        <td class="center"><?php print $marcent->city;?></td>
                                         <td class="center"><?php print $marcent->zip;?></td>
                                          <td class="center"><?php print $marcent->company;?></td>
                                           <td class="center"><?php print $marcent->phone;?></td>
                                            <td class="center"><?php print $marcent->email;?></td>
                                             
                                        <td class="center">
                                        <?php 
                                            if($marcent->status==1){
                                        ?>
                                        <a href="<?php print base_url('active3/'.$marcent->marchant_id);?>"> <button class="btn btn-primary">Active</button></a>
                                        <?php } else{ ?>
                                        <a href="<?php print base_url('inactive3/'.$marcent->marchant_id);?>"><button class="btn btn-danger">Inactive</button></a>
                                        <?php }?>
                                        </td>                                       
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
