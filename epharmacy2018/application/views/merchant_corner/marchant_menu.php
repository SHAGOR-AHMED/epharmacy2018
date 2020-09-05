<link rel="stylesheet" type="text/css" href="<?php echo base_url();?>assets/css/bootstrap.min.css" >
<style type="text/css" href="<?php echo base_url();?>assets/css/detailsstyle.css" ></style>
<link rel="stylesheet" type="text/css" href="<?php echo base_url();?>assets/css/member_menu.css" >
<link rel="stylesheet" type="text/css" href="<?php echo base_url();?>assets/css/font-awesome.css" >
<link rel="stylesheet" type="text/css" href="<?php echo base_url();?>assets/css/jquery-ui.css" >
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
<br>
<?php
//require_once('theme/top_bar.php');
require_once('theme/logo_search_bar.php');
require_once('theme/header.php');
?>

    <div class="row-fluid">
        <div class="col-md-3"></div>
        <div class="col-md-3"></div>
        <div class="col-md-3"></div>
        <div class="col-md-3">
                <ul class="nav navbar-nav navbar-right">        
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">My Company<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <div class="col-md-1"></div>
                            <li><a href="manage_profile">Manage Profile</a></li>
                            <!--<li><a href="#">Sign Out</a></li>           -->
                        </ul>
                    </li>
                </ul>
            </div>
        </div>        
        <hr>              

    <div class="container-fluid">
    <div class="row-fluid">
        <div class="col-md-2 menuu">
            <!--Sidebar content-->
            <ul>
                <li class=""><a href="dashboard"><div><i class="fa fa-home fa-3x"></i></div><div>Dashboard</div></a></li>
                <li><a href="deal_management"><div><i class="fa fa-users fa-3x"></i></div><div>Deal Management</div></a></li>
                <li><a href="order_management"><div><i class="fa fa-shopping-basket fa-3x"></i></div><div>Order Management</div></a></li>
                <li><a class="" href="add_product"><div><i class="fa fa-cloud-upload fa-3x"></i></div><div>Upload New Product</div></a></li>
                <li><a class="" href="product"><div><i class="fa fa-cloud-upload fa-3x"></i></div><div>All Product</div></a></li>
                <li><a href="logout"><div><i class="fa fa-sign-out fa-3x"></i></div><div>LogOut</div></a></li>
            </ul>
        </div>

        <script type="text/javascript" src="<?php print base_url();?>assets/admin/js/jquery-2.1.4.min.js"></script>
<script type="text/javascript" src="<?php print base_url();?>assets/admin/css/jquery.dataTables.min.js"></script>
<script>
$(document).ready(function(){
    $('.roni').dataTable();
});
</script>