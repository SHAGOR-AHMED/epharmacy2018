<style type="text/css" href="<?php echo base_url(); ?><assets/css/detailsstyle.css" >
    #img{
        border: 2px solid #e2e2e2;
        border-radius: 5px;
        /*margin-left:120px;*/
        max-width: 100%;
        height: auto;
    }
    #icon{
        font-size:16px;
    }
    #info{
        background:#e2e2e2;
        padding:10px;
        border-radius: 5px;

    }

    #user_info{
        float:left;
        clear:right;
        height:200px;
        width:100%;
        border:1px solid #e2e2e2;
        background:url(<?= base_url('userimage/back.jpg');?>);
    }

    #user_panel{
        float:left;
        clear:right;
        width: 300px;
        margin-left:20px;
        margin-top:30px;
        position: relative;
        top:35px;
        /*background:red;*/
    }

    #user_img{
        float:left;
        clear:right;
        width: 150px;
        /*	background:*/
        border:5px solid #e2e2e2;
    }

    #user_name{
        float:left;
        clear:right;
        width: 150px;
        position: relative;
        top:100px;
        padding-left: 10px;
        color: white;
        font-weight: bold;
        font-size: 20px;

    }

    #headline{
        background: #F6F7F9;
        padding:5px;
        color:#4B4F56;
        font-size: 14px;
        font-weight: bold;
        border-bottom:1px solid #e2e2e2;
    }
    .col-md-8{
        margin-left:0px;
    }
</style>
<meta http-equiv="refresh" content="" />
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<?php $this->load->view('master/header/header.php');?>
<?php
$id = $this->session->userdata('id');
if ($id) {
    
    $info = $this->Home_model->profile($id);
    $asdf = $this->Home_model->show_prescription($id);
    $bcd = $this->Home_model->comment_user($id);
    $bdf = $this->Home_model->comment_admin($id);

}
?>	
<!--2nd-->

<div id="mainpage" style="position: relative;top:-30px;"><br/>
    <div class="row" id="loginRegistration">
        <div class="col-md-12">
            <div class="panel">
                <!-- <div class="panel-heading">Profile Info</div> -->
                <?php
                    $msg = $this->session->userdata('msg');
                    if (isset($msg)) {
                        echo '<div class="alert alert-danger">' . $msg . "</div>";
                        $this->session->unset_userdata('msg');
                    }
                ?>        
                <div class="panel-body">
                    <div id="user_info">
                        <div id="user_panel">
                            <div id="user_img">
                                <img src="<?php echo base_url('assets/u_image/'.$info->file); ?>" height="150px" width="150px" />
                            </div>
                            <div id="user_name">
                                <?php print ucwords($info->fullname); ?>
                            </div>
                        </div>
                    </div><br>
                </div>
                <!--Info-->
                <div id="mainpage"><br/>
                    <div class="row" id="loginRegistration">
                        <div class="col-md-4">
                            <div class="panel panel-success">
                            <!--<div class="panel-heading"><?php print $info->fullname; ?></div>-->
                                <div class="panel-body" style="line-height:30px;">
									<span style="font-weight:bold"><a href="<?= base_url('home_controller/do_logout');?>">Logout</a></span><br>
                                    <span style="font-weight:bold">Mobile</span> &nbsp;<?php print '<span style="color:black; font-size:16px;">' . '+88' . $info->mobile . '</span>'; ?><br>
                                    <span style="font-weight:bold">Live in </span> &nbsp;<?php print '<span style="color:black; font-size:16px;">' . $info->address . '</span>'; ?><br>
                                    <span style="font-weight:bold">Email : </span> &nbsp;<?php print '<span style="color:black; font-size:16px;">' . $info->email . '</span>'; ?><br>

                                    <span style="font-weight:bold">Gender </span> &nbsp;<?php if ($info->gender == 'male') {
                                    echo '<span style="color:black; font-size:16px;">' . "Male" . '</span>';
                                } elseif ($info->gender == 'female') {
                                    echo '<span style="color:black; font-size:16px;">' . "Female" . '</span>';
                                } ?><br>
                                    <span style="font-weight:bold">Occupation </span> &nbsp;<?php echo '<span style="color:black; font-size:16px;">' . $info->occupation . '</span>'; ?><br>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-8">
                            <div class="panel panel-success">
                                <!-- <div class="panel-heading" style="background: #F6F7F9;">Upload Your Prescription</div> -->
                                <div id="headline">Upload Your Prescription</div>
                                <div class="panel-body">

                                    <form action="<?php echo base_url('Home_controller/up_prescription');?>" method="post" enctype="multipart/form-data"> 
                                        <input type="hidden" name="id" value="<?php print $id;?>">
                                        <textarea name="details" class="form-control" placeholder="Want to say something..??" ></textarea>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <input type="file" name="prescription" class="form-control-file " value="" required/>
                                            </div>
                                            <div class="col-md-6">
                                                <input type="submit" value="Upload" name="submit" class="btn-sm btn-primary">
                                            </div>
                                        </div>
                                    </form>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row"></div>

                <!---------------------focas end-------------->

                <div id="mainpage"><br/>
                    <div class="row" id="loginRegistration">
                        <div class="col-md-4"> </div>

                        <div class="col-md-8">
                            <div class="panel panel-success">
                                   <?php foreach ($asdf as $up_prescription){
                                    ?>
                                    <p id="info"><?php print '<span style="color:black;font-weight:bold">' . ucwords($info->fullname) . '</span>'; ?>&nbsp; at &nbsp;<?php print '<span style="color:gray;font-size:10px">' . $up_prescription->date . '</span>'; ?></p>

                                    <p id="info"><?php print '<span style="color:black;">' . $up_prescription->details . '</span>'; ?></p>

                                    <a href="#"><img id="img" src="<?= base_url($up_prescription->prescription);?>" height="350px" width="300px"/></a><hr>

                                    <span class="fa fa-commenting-o" aria-hidden="true" id="icon">
                                        <a href="#">Comments</span></a><br><br>

                                    <?php }?>

                                    <!-------------------client comment insert start-------------->
                                     <?php foreach ($bcd as $comment_user){?>
                                        <p id="info" style="margin:1px;"><?php print '<span style="color:black;font-weight:bold;">'.$info->fullname.'</span>'; ?> &nbsp;<?php print '<span style="color:gray;font-size:10px">' . $comment_user->date . '</span>'; ?><br><?php print '<span style="color:black;">' . $comment_user->comment . '</span>'; ?></p>

                                    <?php }?>
                                    <?php foreach ($bdf as $comment_admin){?>
                                <p id="info" style="margin:1px;"><span style="color:black;font-weight:bold">ePharmacy </span>&nbsp;<?php echo '<span style="color:gray;font-size:10px">' . $comment_admin->date . '</span>'; ?><br><?php echo '<span style="color:black;">' . $comment_admin->comment . '</span>'; ?></p>
                                <?php }?>

                                        <form method="post" action="<?= base_url('Home_controller/comment_insert');?>">
                                            <input type="hidden" name="id" value="<?php print $id; ?>">
                                            <textarea name="comment" class="form-control" placeholder="Comments here" required=""></textarea>
                                            <input type="submit" value="Comment" name="comments" class="btn-sm btn-primary">
                                        </form>
                                        <hr>

                                    <!-------------------------client comment insert end----------->

                                    <!----------------------client comment start------------------>
                                   

                                <!-----------------------client comment end----------------------->

                                <!------------------------admin comment start---------------------->

                               
                                
                                <!---------------------admin comment end--------------------------->
                                
                                <!---</div>-->
                                <!---</div>-->
                            </div>
                        </div>
                    </div>
                    <!------------------------------------------------------------>
                </div>
            </div>
        </div>
    </div>
    <!-----------------------------2nd end-------------------------------------->
</div>
</div>
</div>
<?php $this->load->view('master/header/footer.php');?>
