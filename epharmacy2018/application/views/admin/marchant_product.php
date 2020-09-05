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
                                    <th>Marchant Name</th>
                                    <th>Product Name</th>
                                    <th>Category & Subcategory</th>
                                     <th>Product Bodypart</th>
                                    <th>Product Description</th>
                                    <th>Product Price</th>
                                    <th>Product Image</th>
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
                                        <td class="center">
                                        Marchant Id:<?php print $value->merchant_user_id;?><br>Name: <?php print $value->name;?></td>   
                                        <td class="center">
                                        <?php print $value->productname;?><br>
                                        Product Code: <?php print $value->productcode;?>
                                        </td>
                                         <td class="center"><?php print $value->category;?><br><?php print $value->subcategory;?></td>
                                           <td class="center"><?php print $value->body_part;?></td>
                                           <td class="center"><?php print $value->description;?></td>
                                            <td class="center"><?php print $value->productprice;?></td>
                                             <td class="center">
                                                <a href="<?php print base_url('');?><?php print $value->image;?>" target="_blank">                                                
                                                <img src="<?php print base_url($value->image);;?>" width="100" height="100"> 

                                             </td>

                                        <td class="center"><a href="<?php print base_url('marchant_pro_del/'.$value->merchant_id);?>"><i class="fa fa-trash" aria-hidden="true"></i>Delete</a></td>
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
