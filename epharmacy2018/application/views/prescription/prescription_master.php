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
										<a href="<?php print base_url('customer');?>">					
											<i class="fa fa-user" aria-hidden="true"></i>
											<div class="ca-content">
												<h4 class="ca-main"><?php print count($result);?></h4>
												<h3 class="ca-sub">Total Customers</h3>
											</div>
										</a>
									</li>
									<li>
										<a href="<?php print base_url('prescription');?>">
										  <i class="fa fa-building-o" aria-hidden="true"></i>
											<div class="ca-content">
												<h4 class="ca-main one"><?php print count($result2);?></h4>
												<h3 class="ca-sub one">Total Prescription</h3>
											</div>
										</a>
									</li>
									<li>
										<a href="<?php print base_url('comment');?>">
											<i class="fa fa-database" aria-hidden="true"></i>
											<div class="ca-content">
											<h4 class="ca-main two"><?php print count($result3);?></h4>
												<h3 class="ca-sub two">Comment</h3>
											</div>
										</a>
									</li>
									<li>
										<a href="#">
											<i class="fa fa-tasks" aria-hidden="true"></i>
											<div class="ca-content">
												<h4 class="ca-main three">0</h4>
												<h3 class="ca-sub three">Other</h3>
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
