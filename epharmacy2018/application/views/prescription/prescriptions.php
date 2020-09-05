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
                                    <th>Description</th>
                                    <th>Prescription</th>
                                    <th>Date</th>
                                    <th>Delete</th>
                                </tr>
                            </thead>
                            <tbody>
                            	<?php
                            		$i=0;
                            		foreach ($result as $prescription) {                            		
                                        $i++;
                            	?>
                                    <tr>
                                        <td class="center"><?php print $i;?></td>                         
                                        <td class="center">
                                            <?php print $prescription->fullname;?><br>
                                             Mobile : <?php print $prescription->mobile;?>
                                         </td>
                                         <td class="center">
                                             <?php print $prescription->details;?>
                                         </td>
                                             <td class="center">
                                                <a href="<?php print base_url('');?><?php print $prescription->prescription;?>" target="_blank">

                                                <img src="<?php print base_url('');?><?php print $prescription->prescription;?>" width="100" height="100"></a>
                                                
                                                <a href="<?= base_url('Prescription_admin/download/'.$prescription->prescription);?>">Download</a>
                                             </td>
                                        <td class="center"><?php print $prescription->date;?></td>
                                        <td class="center"><a href="<?php print base_url('prescription_delete/'.$prescription->p_id);?>"><i class="fa fa-trash" aria-hidden="true"></i>Delete</a></td>
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
