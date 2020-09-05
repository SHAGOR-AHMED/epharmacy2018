<?php include('header.php');?>
		<div class="clearfix"></div>
		<!-- //w3_agileits_top_nav-->
		<!-- /inner_content-->
				<div class="inner_content">
				    <!-- /inner_content_w3_agile_info-->
					<div class="inner_content_w3_agile_info">
					<!-- /agile_top_w3_grids-->
					   <div class="agile_top_w3_grids">
					          <ul class="ca-menu">
									<li>
										<a href="<?php print base_url('products');?>">							
											<i class="fa fa-building-o" aria-hidden="true"></i>
											<div class="ca-content">
												<h4 class="ca-main"><?php print count($result);?></h4>
												<h3 class="ca-sub">Products</h3>
											</div>
										</a>
									</li>
									<li>
										<a href="<?php print base_url('marcent');?>">
											<i class="fa fa-user" aria-hidden="true"></i>
											<div class="ca-content">
											<h4 class="ca-main two"><?php print count($result3);?></h4>
												<h3 class="ca-sub two">Marchants</h3>
											</div>
										</a>
									</li>
									<li>
										<a href="<?php print base_url('client');?>">
										  <i class="fa fa-user" aria-hidden="true"></i>
											<div class="ca-content">
												<h4 class="ca-main one"><?php print count($result2);?></h4>
												<h3 class="ca-sub one">Clients</h3>
											</div>
										</a>
									</li>
									
									<li>
										<a href="<?php print base_url('order_details');?>">
											<i class="fa fa-tasks" aria-hidden="true"></i>
											<div class="ca-content">
												<h4 class="ca-main three"><?php print count($result4);?></h4>
												<h3 class="ca-sub three">Order Details</h3>
											</div>
										</a>
									</li>
									<li>
										<a href="<?php print base_url('marcent_product');?>">
											<i class="fa fa-building-o" aria-hidden="true"></i>
											<div class="ca-content">
											<h4 class="ca-main two"><?php print count($result5);?></h4>
												<h3 class="ca-sub two">Marchant Products</h3>
											</div>
										</a>
									</li>
									<div class="clearfix"></div>
								</ul>
					   </div>							
				    </div>
					<!-- //inner_content_w3_agile_info-->
				</div>
		<!-- //inner_content-->
<?php include('footer.php');?>
