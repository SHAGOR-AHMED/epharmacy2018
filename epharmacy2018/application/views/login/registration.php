<style type="text/css" href="<?php echo base_url(); ?>assets/css/detailsstyle.css" ></style>

<?php $this->load->view('master/header/header.php');?>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<style>
    .error {
        color: red;
    }
</style>

<div id="mainpage"><!-- Begin: mainpage -->

    <br/>
    <div class="row" id="loginRegistration">

        <div class="col-md-2"></div>

        <div class="col-md-8">
            <div class="panel panel-success">
                <div class="panel-heading">Registration</div>
                <div class="panel-body">
                    <?php if (validation_errors()) {
                            ?>
                            <!--<div class="alert alert-danger">-->
                                <?php
                               // echo validation_errors();
                                ?>
                            <!--</div>-->
                        <?php } ?>
                        <?php
                            $img_msg = $this->session->userdata('img_msg');
                            if (isset($img_msg)) {
                                echo '<div class="alert alert-danger">' . $img_msg . "</div>";
                                $this->session->unset_userdata('img_msg');
                            }
                        ?>

                        <?php
                            $msg = $this->session->userdata('msg');
                            if (isset($msg)) {
                                echo '<div class="alert alert-danger">' . $msg . "</div>";
                                $this->session->unset_userdata('msg');
                            }
                        ?>

                    <form class="form-vertical" id="userReg" action="<?= base_url('home_controller/saveUser');?>" method="post" enctype="multipart/form-data">

                        <div class="form-group">
                            <label for="fullname">Full Name</label><?php echo form_error('fullname'); ?>
                            <input type="text" name="fullname" value="<?php print set_value('fullname');?>" id="fullname" class="form-control"  placeholder="Full Name*">
                        </div>

                        <div class="form-group">
                            <label for="mobile">Mobile No</label><?php echo form_error('mobile'); ?>
                            <input type="text" name="mobile" value="<?php print set_value('mobile');?>" id="mobile" class="form-control"  placeholder="Ex: 015xxxxxxxx">
                        </div>

                        <div class="form-group">
                            <label for="email">Email</label><?php echo form_error('email'); ?>
                            <input type="email" name="email" value="<?php print set_value('email');?>" id="email" class="form-control"  placeholder="Ex: John@gmail.com*">
                        </div>

                        <div class="form-group">
                            <label for="address">Address</label><?php echo form_error('address'); ?>
                            <textarea name="address" value="<?php print set_value('address');?>" class="form-control"  placeholder="Address*"></textarea>
                        </div>

                        <div class="form-group">
                            <label for="password">Password</label><?php echo form_error('password'); ?>
                            <input type="password" name="password" value="<?php print set_value('password');?>" id="password" autocomplete="off" class="form-control"  placeholder="*****">
                        </div>

                        <div class="form-group">
                            <label for="password">Re-type Password</label><?php echo form_error('re_password'); ?>
                            <input type="password" name="re_password" id="re_password" autocomplete="off" class="form-control"  placeholder="*****">
                        </div>

                        <div class="form-group">
                            <label for="photo">Upload Photo</label><?php echo form_error('file'); ?>
                            <input type="file" name="file" class="form-control" />
                        </div>

                        <!-- <div class="form-group">
                            <span id="av-image">
                                <img src="<?= base_url('assets/avt.jpg') ?>" id="images"
                                     class="img-thumbnail">
                                <img src="" class="hidden" id="imageshidden">

                                <p style="font-size: 12px;"> Width * Height max : 300 px</p>
                                <p style="font-size: 12px;"> Size Max : 150 px</p>
                            </span>

                            <input type="file" class="hidden" name="u_image" onchange="readURL(this);"
                                   id="uploadFile"/>

                            <div class="btn btn-info" id="uploadTrigger">Select Profile Image</div>
                        </div> -->

                        <div class="form-group">
                            <label for="gender">Gender</label><?php echo form_error('gender'); ?><br>
                            <input type="radio" name="gender" value="male" /> Male <br>
                            <input type="radio" name="gender" value="female" /> Female
                        </div>
                        <div class="form-group">
                            <label for="Occupation">Occupation</label><?php echo form_error('occupation'); ?>
                            <input type="text" name="occupation" value="<?php print set_value('occupation');?>" class="form-control"  placeholder="occupation">
                        </div>

                        <div class="form-group">
                            <button type="submit" name="registration" class="btn btn-success">Register</button>
                        </div>
                    </form>

                </div>
            </div>
        </div>
        <div class="col-md-2"></div>
    </div>
<?php $this->load->view('master/header/footer.php');?>
<script>
    // $("#uploadTrigger").click(function () {
    //     $("#uploadFile").click();

    // });
    // function readURL(input) {

    //     if (input.files && input.files[0]) {
    //         var reader = new FileReader();
    //         reader.onload = function (e) {
    //             $('#imageshidden')
    //                 .attr('src', e.target.result);
    //             var x = document.getElementById("imageshidden").width;
    //             var y = document.getElementById("imageshidden").height;
    //             if (x > 300 || y > 300) {
    //                 alert('Image too large');
    //             } else {
    //                 $('#images')
    //                     .attr('src', e.target.result)
    //                     .width(150)
    //                     .height(130);
    //             }
    //         };

    //         reader.readAsDataURL(input.files[0]);
    //     }
    // }
</script>

<script type="text/javascript">

    $(document).ready(function () {
        $('#userReg').validate({ // initialize the plugin
            rules: {
                fullname: {
                    required: true
                },
                mobile: {
                    required: true
                },
                email: {
                    required: true,
                    email: true
                },
                address: {
                    required: true
                },
                occupation: {
                    required: true
                },
                password: {
                    required: true,
                    minlength: 8
                },
                re_password: {
                    required: true,
                    equalTo: "#password"
                }

            }

        });
        

    });
   
</script>
