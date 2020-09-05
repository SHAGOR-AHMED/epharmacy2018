<link rel="stylesheet" type="text/css" href="<?php echo base_url();?>assets/css/bootstrap.min.css" >
<style type="text/css" href="<?php echo base_url();?>assets/css/detailsstyle.css" ></style>
<link rel="stylesheet" type="text/css" href="<?php echo base_url();?>assets/css/member_menu.css" >
<link rel="stylesheet" type="text/css" href="<?php echo base_url();?>assets/css/font-awesome.css" >
<link rel="stylesheet" type="text/css" href="<?php echo base_url();?>assets/css/jquery-ui.css" >

<?php
require_once('theme/top_bar.php');
require_once('theme/logo_search_bar.php');
require_once('theme/header.php');
?>

<div class="container-fluid">
    <div class="row-fluid">
        <hr>
        <div class="col-md-6"></div>

        <div class="col-md-6"></div>
    </div>
    <div class="container-fluid">
    <div class="row-fluid">
        <div class="col-md-3 menuu">
            <!--Sidebar content-->
            <ul>
                <li class=""><a href="dashboard"><div><i class="fa fa-home fa-3x"></i></div><div>Dashboard</div></a></li>
                <li><a href="deal_management"><div><i class="fa fa-users fa-3x"></i></div><div>Deal Management</div></a></li>
                <li><a href="order_management"><div><i class="fa fa-shopping-basket fa-3x"></i></div><div>Order Management</div></a></li>
                <li><a class="" href="addproduct"><div><i class="fa fa-cloud-upload fa-3x"></i></div><div>Upload New Product</div></a></li>
                <li><a href="logout"><div><i class="fa fa-sign-out fa-3x"></i></div><div>LogOut</div></a></li>
            </ul>
        </div>
        
        <?php 
            $id=$this->session->userdata('marchant_id');
            var_dump($id);
            exit();
            
        ?>
        
        <div class="roww">
            <div class="col-md-9">
                <form name="frm_manage" action="manage_profile">
                    <table class="table table-striped" border="1" style="width: 50%; margin-left: 25px; margin-top: 30px;">
                        <input type="hidden" name="marchant_id" value="<?php print $id;?>">
                        <tr>                            
                            <td>Company Name</td>                           
                            <td><?php print $manage->company;?></td>
                            
                        </tr>
                        <tr>
                            <td>Merchant Name</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Mobile No</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Address</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Web site</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Account Information</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Account Information</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Account Information</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Account Information</td>
                            <td></td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
    </div>
    </div>
</div>

<?php
require_once('page/footer.php');
?>
