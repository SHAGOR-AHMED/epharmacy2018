<!DOCTYPE html>
<html lang="zxx">
<head>
<title>Master Panel</title>
<!-- custom-theme -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Esteem Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript">addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //custom-theme -->
<link href="<?php print base_url();?>assets/admin/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="<?php print base_url();?>assets/admin/css/component.css" rel="stylesheet" type="text/css" media="all" />
<link href="<?php print base_url();?>assets/admin/css/export.css" rel="stylesheet" type="text/css" media="all" />
<link href="<?php print base_url();?>assets/admin/css/flipclock.css" rel="stylesheet" type="text/css" media="all" />
<link href="<?php print base_url();?>assets/admin/css/circles.css" rel="stylesheet" type="text/css" media="all" />
<link href="<?php print base_url();?>assets/admin/css/style_grid.css" rel="stylesheet" type="text/css" media="all" />
<link href="<?php print base_url();?>assets/admin/css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="<?php print base_url();?>assets/admin/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css" media="all" />

<!-- font-awesome-icons -->
<link href="<?php print base_url();?>assets/admin/css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome-icons -->
<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet">

</head>

<body>
<!-- banner -->
<div class="wthree_agile_admin_info">
		  <!-- /w3_agileits_top_nav-->
		  <!-- /nav-->
		  <div class="w3_agileits_top_nav">
			<ul id="gn-menu" class="gn-menu-main">
			  		 <!-- /nav_agile_w3l -->
				<li class="gn-trigger">
					<a class="gn-icon gn-icon-menu"><i class="fa fa-bars" aria-hidden="true"></i><span>Menu</span></a>
					<nav class="gn-menu-wrapper">
						<div class="gn-scroller scrollbar1">
							<ul class="gn-menu agile_menu_drop">
								<li>
									<a href="<?php print base_url('master');?>"> <i class="fa fa-tachometer"></i> Dashboard</a>
								</li>								
								<li>
									<a href="<?php print base_url('category');?>"> <i class="fa fa-tachometer"></i> Category</a>
								</li>
								<li>
									<a href="<?php print base_url('subcategory');?>"> <i class="fa fa-table"></i> Subcategory</a>
								</li>
								<li>
									<a href="<?php print base_url('body_part')?>"> <i class="fa fa-table"></i> Body Part</a>
								</li>
								<li>
									<a href="<?php print base_url('band_list')?>"> <i class="fa fa-table"></i> Band List</a>
								</li>								
								<li>
									<a href="<?php print base_url('products')?>"> <i class="fa fa-tachometer"></i> Products</a>
								</li>
								
								<li>
									<a href="<?php print base_url('client')?>"> <i class="fa fa-line-chart"></i> Customer</a>
								</li>
								<li>
									<a href="<?php print base_url('marcent')?>"> <i class="fa fa-line-chart"></i>Marchant</a>
								</li>
								<li>
									<a href="<?php print base_url('marcent_product')?>"> <i class="fa fa-line-chart"></i>Marchant Product</a>
								</li>
								<!--<li>
									<a href="<?php print base_url('order_details')?>"><i class="fa fa-map-o" aria-hidden="true"></i> Order Details</a>
								</li>-->
								<li>
									<a href="#"> <i class="fa fa-file-text-o" aria-hidden="true"></i>Order Summary <i class="fa fa-angle-down" aria-hidden="true"></i></a> 
									<ul class="gn-submenu">
										<li class="mini_list_agile">
											<a href="<?php print base_url('Super_admin/ManageOrder')?>"> <i class="fa fa-line-chart"></i> Manage Order</a>
										</li>

		                                <li class="mini_list_agile">
		                                    <a href="<?= base_url('Super_admin/ViewDeliveredProduct'); ?>">
		                                        <i class="fa fa-caret-right" aria-hidden="true"></i> Product Delivered
		                                    </a>
		                                </li>
		                                <li class="mini_list_agile">
		                                    <a href="<?= base_url('Super_admin/ViewCancleProduct'); ?>">
		                                        <i class="fa fa-caret-right" aria-hidden="true"></i> Cancel Order
		                                    </a>
		                                </li>
									</ul>
								</li>
								<li>
									<a href="#"> <i class="fa fa-suitcase" aria-hidden="true"></i>More <i class="fa fa-angle-down" aria-hidden="true"></i></a>
								</li>
							</ul>
						</div><!-- /gn-scroller -->
					</nav>
				</li>
				<!-- //nav_agile_w3l -->
				<li class="second logo"><h1><a href="<?php print base_url('master');?>"><i class="fa fa-graduation-cap" aria-hidden="true"></i>ePharmacy </a></h1></li>
					<li class="second admin-pic">
				       <ul class="top_dp_agile">
									<li class="dropdown profile_details_drop">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
											<div class="profile_img">	
												<span class="prfil-img"><img src="<?php print base_url();?>assets/admin/images/admin.jpg" alt=""> </span> 
											</div>	
										</a>
										<ul class="dropdown-menu drp-mnu">
											<li> <a href="#"><i class="fa fa-cog"></i> Settings</a> </li> 
											<li> <a href="<?php print base_url('cpassword');?>"><i class="fa fa-user"></i>Change Password</a> </li> 
											<li> <a href="<?php print base_url('admin_logout');?>"><i class="fa fa-sign-out"></i> Logout</a> </li>
										</ul>
									</li>
									
						</ul>
				</li>
				<li class="second top_bell_nav">
				<?php
				if($this->session->userdata('update_message')){
					print '<span style="color:white;font-size:18px;">'.$this->session->userdata('update_message').'</span>';
					$this->session->unset_userdata('update_message');
				}
				?>
				</li>
				<!--<li class="second top_bell_nav">
				  <ul class="top_dp_agile ">
									<li class="dropdown head-dpdn">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true"><i class="fa fa-envelope-o" aria-hidden="true"></i> <span class="badge blue">3</span></a>
										<ul class="dropdown-menu">
											<li>
												<div class="notification_header">
													<h3>Your Messages</h3>
												</div>
											</li>
											<li><a href="#">
												<div class="user_img"><img src="images/a3.jpg" alt=""></div>
											   <div class="notification_desc">
											     <h6>John Smith</h6>
												<p>Lorem ipsum dolor</p>
												<p><span>3 hour ago</span></p>
												</div>
											  <div class="clearfix"></div>	
											 </a></li>
											 <li class="odd"><a href="#">
												<div class="user_img"><img src="images/a1.jpg" alt=""></div>
											   <div class="notification_desc">
											     <h6>Jasmin Leo</h6>
												<p>Lorem ipsum dolor</p>
												<p><span>2 hour ago</span></p>
												</div>
											   <div class="clearfix"></div>	
											 </a></li>
											 <li><a href="#">
												<div class="user_img"><img src="images/a2.jpg" alt=""></div>
											   <div class="notification_desc">
											     <h6>James Smith</h6>
												<p>Lorem ipsum dolor</p>
												<p><span>1 hour ago</span></p>
												</div>
											   <div class="clearfix"></div>	
											 </a></li>
											 <li>
												<div class="notification_bottom">
													<a href="#">See all Messages</a>
												</div> 
											</li>
										</ul>
									</li>									
						</ul>
				</li>
				<li class="second top_bell_nav">
				   <ul class="top_dp_agile ">
				       <li class="dropdown head-dpdn">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-tasks"></i><span class="badge blue">9</span></a>
										<ul class="dropdown-menu">
											<li>
												<div class="notification_header">
													<h3>You have 4 Pending tasks</h3>
												</div>
											</li>
											<li><a href="#">
												<div class="task-info">
													<span class="task-desc">Database update</span><span class="percentage">40%</span>
													<div class="clearfix"></div>	
												</div>
												<div class="progress progress-striped active">
													<div class="bar yellow" style="width:40%;"></div>
												</div>
											</a></li>
											<li><a href="#">
												<div class="task-info">
													<span class="task-desc">Dashboard done</span><span class="percentage">90%</span>
												   <div class="clearfix"></div>	
												</div>
												<div class="progress progress-striped active">
													 <div class="bar green" style="width:90%;"></div>
												</div>
											</a></li>
											<li><a href="#">
												<div class="task-info">
													<span class="task-desc">Mobile App</span><span class="percentage">33%</span>
													<div class="clearfix"></div>	
												</div>
											   <div class="progress progress-striped active">
													 <div class="bar red" style="width: 33%;"></div>
												</div>
											</a></li>
											<li><a href="#">
												<div class="task-info">
													<span class="task-desc">Issues fixed</span><span class="percentage">80%</span>
												   <div class="clearfix"></div>	
												</div>
												<div class="progress progress-striped active">
													 <div class="bar  blue" style="width: 80%;"></div>
												</div>
											</a></li>
											<li>
												<div class="notification_bottom">
													<a href="#">See all pending tasks</a>
												</div> 
											</li>
										</ul>
									</li>	
								</ul>
				</li>-->
				<li class="second full-screen">
					<section class="full-top">
						<button id="toggle"><i class="fa fa-arrows-alt" aria-hidden="true"></i></button>
					</section>
				</li>

			</ul>
			<!-- //nav -->
			
		</div>