
<?php $this->load->view('master/header/header.php');?>
<?php
//require_once('theme/header.php');
?>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<div id="mainpage"><!-- Begin: mainpage -->
    <a href="home"></a>
    <br/>
    <div class="row" id="loginRegistration">
        <div class="col-md-2"></div>
        <div class="col-md-8">
            <div class="panel panel-info">
                <div class="panel-heading">Login</div>
                <div class="panel-body">
                    
                    <?php
                        $msg = $this->session->userdata('msg');
                        if (isset($msg)) {
                            echo '<div class="alert alert-danger">' . $msg . "</div>";
                            $this->session->unset_userdata('msg');
                        }
                    ?>
                    
                    <form class="form-vertical" action="<?php echo base_url('login_access'); ?>" method="post">
                        <div class="form-group">
                            <label for="email">Email</label>
                            <input type="email" name="email" id="email" class="form-control" placeholder="Enter Your Email" required>
                        </div>
                        <div class="form-group">
                            <label for="password">Password</label>
                            <input type="password" name="password" id="password" class="form-control" placeholder="******" required>
                        </div>
                        <div class="form-group">
                                <!--<input type="submit" name="login" value="Submit">-->
                            <button class="btn btn-primary" type="submit" name="login">Login</button>
                        </div>
                        <div class="form-group">
                            <a href="<?php print base_url('registration');?>">
                                <button class="btn btn-primary" type="button">Need A Account.?</button>
                            </a>
                        </div>
                    </form> 

                </div>
            </div>
        </div>
        <div class="col-md-2"></div>
    </div>
</div>
<?php $this->load->view('master/header/footer.php');?>