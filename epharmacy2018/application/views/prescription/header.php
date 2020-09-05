<!DOCTYPE html>
<html lang="zxx">
<head>
<title>Prescription Panel</title>
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
									<a href="<?php print base_url('Prescription_admin');?>"> <i class="fa fa-tachometer"></i> Dashboard</a>
								</li>	
								<li>
									<a href="<?php print base_url('customer')?>"> <i class="fa fa-table"></i> Customers</a>
								</li>								
								<li>
									<a href="<?php print base_url('prescription');?>"> <i class="fa fa-tachometer"></i>Prescription</a>
								</li>
								<li>
									<a href="<?php print base_url('comment');?>"> <i class="fa fa-table"></i> Comments</a>
								</li>
														
								<li>
									<a href="#"> <i class="fa fa-tachometer"></i> Order Details</a>
								</li>
							</ul>
						</div><!-- /gn-scroller -->
					</nav>
				</li>
				<!-- //nav_agile_w3l -->
				<li class="second logo"><h1><a href=""><i class="fa fa-graduation-cap" aria-hidden="true"></i>epharmacy Prescription Panel </a></h1></li>
					
						
				
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
											<li> <a href="<?php print base_url('cpassword2');?>"><i class="fa fa-user"></i>Change Password</a> </li> 
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

				<li class="second full-screen">
					<section class="full-top">
						<button id="toggle"><i class="fa fa-arrows-alt" aria-hidden="true"></i></button>	
					</section>
				</li>
				

			</ul>
			<!-- //nav -->
			
		</div>