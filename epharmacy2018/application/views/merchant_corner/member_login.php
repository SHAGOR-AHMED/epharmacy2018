
	<!-- styles-->
	<link rel="stylesheet" href="<?php print base_url();?>assets/static.1mg.com/css/common.min.e1d319ae5bbac1570a55fe7244e50190.css">
	<link rel="stylesheet" href="<?php print base_url();?>assets/static.1mg.com/css/combined.min.adbf7fc686a5e1ef58018338cbb34fa7.css">
    <!--style-->


<style>
    #back-to-top {
    position: fixed;
    bottom: 40px;
    right: 40px;
    z-index: 9999;
    width: 32px;
    height: 32px;
    text-align: center;
    line-height: 30px;
    background: #f5f5f5;
    color: #444;
    cursor: pointer;
    border: 0;
    border-radius: 2px;
    text-decoration: none;
    transition: opacity 0.2s ease-out;
    opacity: 0;
}
#back-to-top:hover {
    background: #e9ebec;
}
#back-to-top.show {
    opacity: 1;
}
#content {
    height: 2000px;
}
    
</style>

<style type="text/css">
    .header{
        height: auto;
        background-color:#002E5D;
        font-size:14px;
        color: #fff;
        padding:8px;
    }
    .logo{
        margin: 70px;
    }
    .container{
        background:#1e1635 linear-gradient(to top left,#4cddff,#3b9aca 10%,#2d6ca5 20%,#2a5291 27%,#283d81 35%,#222654 50%,#1e1635 63%,#0c0010 93%,#000);
        background-size:cover;
        margin:10px;
    }
    .form{
        background-color:#263673;
        margin-top:0px;
        border-radius: 10px;
        margin-bottom: 15px;
    }
    .form input{
        margin:2px;
    }
    .form textarea{
        margin: 2px;
    }
    #submit{
        background-color:red;
        margin-bottom:8px;
    }
    #submit:hover {
        background-color:red;
        opacity: 0.4;
    }
    .forty_desktop
    {
        background-image: url(assets/img/home/globe-gradient5e1f.svg?v=2);
        margin-left: -40px;
    }
    .globe{
        background:rgba(0,0,0,.3) url(assets/img/home/globe.gif) 50% no-repeat;border-radius:50%;
        background-size:100%;
        height:230px;
        width:230px;
        text-align: center;
        margin-left:40px;
        margin-top:60px;
    }
    .footer{
        height: 400px;
        background-color:grey;
        padding-top:70px;
    }
    .globe-gradient{background-image:url(assets/img/home/globe-gradient5e1f.svg?v=2);background-size:0px;height:450px;width:264px;display:flex;justify-content:center;align-items:center;margin:0 auto}

    .error {
        color: red;
    }

</style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $("p").hide();
        $("#show").click(function () {
            $(".shows").toggle();
        });
        $("#showw").click(function () {
            $(".showss").toggle();
        });
        $("#show3").click(function () {
            $(".shows3").toggle();
        });
        $("#show4").click(function () {
            $(".shows4").toggle();
        });
        $("#show5").click(function () {
            $(".shows5").toggle();
        });
        $("#show6").click(function () {
            $(".shows6").toggle();
        });
        $("#show7").click(function () {
            $(".shows7").toggle();
        });
        $("#show8").click(function () {
            $(".shows8").toggle();
        });
    })
</script>
<link rel="stylesheet" href="build//home-f3b613a72b.css">


<?php
require_once('theme/header.php');
?>

<div class="row header">
    <div class="col-md-1"></div>
    <div class="col-md-4">Customer Service (+880) 17 666 666 71
        FAQ</div>
    <div class="col-md-4"></div>
</div>

<br><br>
<!----heading-->
<form method="post" action="login_check">
    <div class="row">
        <div class="col-md-6">
            <div class="col-md-2"></div>
            <div class="col-md-3"><a href="<?php echo base_url(''); ?>"> <img src="<?php echo base_url(); ?>assets/img/logo/logo_new2.png" width="367" height="70" alt="" /></a></div>
            <h3 style="text-align:left;">&nbsp;&nbsp;Merchant Corner's</h3>
        </div>

        <div class="col-md-2">
            <input name="marchant_email" type="text" id="txtLoginEmail" class="form-control" placeholder="Email"/>
        </div>
        <div class="col-md-2">
            <input name="marchant_password" type="password" id="txtPassword" class="form-control" placeholder="Password"/>
        </div>
        <div class="col-md-1">
        <input type="submit" name="marchant_login" value="Login" class="btn btn-success loginBtn" style="margin-left:0px;" />
        </div>
        <div class="col-md-4">
            <!-- <input type="submit" name=" "  value="reset" class="btn btn-default loginBtn " style="margin-left:220px;" />-->
            <a href="" style="margin-left:250pxc;">Forget Password</a>
        </div>
    </div>
</form>
<div class="row">
    <div class="col-md-6"></div>
    <div class="col-md-4">
        <?php
            $msg = $this->session->userdata('msg');
            if (isset($msg)) {
                echo '<div class="alert alert-danger">' . $msg . "</div>";
                $this->session->unset_userdata('msg');
            }
        ?>
    </div>
    <div class="col-md-2"></div>
</div>
<!----heading-->
<div class="container">
    <br>
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5">
                <section>
                    <div class="forty_desktop">
                        <div class="globe-gradient">
                            <div class="globe"></div>
                        </div>
                    </div>
                </section>
            </div>

           <!--  <div class="col-md-2 col-md-offset-1"></div> -->

            <div class="col-md-4 form">
                <h3 style="color:white">Register now</h3>

                <?php if (validation_errors()) { ?>

                    <!--<div class="alert alert-danger">-->
                        <?php
                            //echo validation_errors();
                        ?>
                    <!--</div>-->

                <?php } ?>

                <?php
                    $msg = $this->session->userdata('msg');
                    if (isset($msg)) {
                        echo '<div class="alert alert-danger">' . $msg . "</div>";
                        $this->session->unset_userdata('msg');
                    }
                ?>

                <form id="userReg" method="post" action="register_member">
                    <?php echo form_error('name'); ?>
                    <input type="text" name="name" value="<?php echo set_value('name'); ?>" placeholder="Name" class="form-control" >
                    <?php echo form_error('address'); ?>
                    <textarea name="address" value="<?php echo set_value('address'); ?>" placeholder="Address " rows="2" class="form-control"></textarea>
                    <?php echo form_error('nid'); ?>
                    <input type="text" name="nid" value="<?php echo set_value('nid'); ?>" placeholder="NID" class="form-control" >
                    <?php echo form_error('city'); ?>
                    <input type="text" name="city" value="<?php echo set_value('city'); ?>" placeholder="City" class="form-control" >
                    <?php echo form_error('zip'); ?>
                    <input type="text" name="zip" value="<?php echo set_value('zip'); ?>" placeholder="Zip" class="form-control" >
                    <?php echo form_error('company'); ?>
                    <input type="text" name="company" value="<?php echo set_value('company'); ?>" placeholder="Company" class="form-control" >
                    <?php echo form_error('phone'); ?>
                    <input type="text" name="phone" value="<?php echo set_value('phone'); ?>" placeholder="Phone" class="form-control" >
                    <?php echo form_error('email'); ?>
                    <input type="text" name="email" value="<?php echo set_value('email'); ?>" placeholder="Email" class="form-control">
                     <?php echo form_error('password'); ?>
                    <input type="password" name="password" placeholder="Password" class="form-control">
                     <?php echo form_error('re_password'); ?>
                    <input type="password" name="re_password" placeholder="Re-type Password" class="form-control">

                    <input type="text" name="website" value="<?php echo set_value('username'); ?>" placeholder="Enter Website Name(if)" class="form-control">


                    <input type="submit" name="submit" value="Submit" id="submit" class="btn btn-danger">

                </form>
            </div>

        </div>
    </div>
</div>

<script type="text/javascript">

    $(document).ready(function () {
        $('#userReg').validate({ // initialize the plugin
            rules: {
                name: {
                    required: true
                },
                address: {
                    required: true
                },
                 nid: {
                    required: true
                },
                city: {
                    required: true
                },
                zip: {
                    required: true
                },
                company: {
                    required: true
                },
                phone: {
                    required: true
                },
                email: {
                    required: true,
                    email: true
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

<br><br>

<div class="row" style="text-align:center">
    <div class="col-md-1"></div>
    <div class="col-md-2">
        <img src="<?php echo base_url(); ?>photo/4.png" height="75" width="85"/>
        <h4>Please register</h4>
    </div>

    <div class="col-md-2">
        <img src="<?php echo base_url(); ?>photo/2.png" height="75" width="85"/>
        <h4>The product listing</h4>
    </div>
    <div class="col-md-2">
        <img src="<?php echo base_url(); ?>photo/3.png" height="75" width="85"/>
        <h4>Take orders</h4>
    </div>

    <div class="col-md-2">
        <img src="<?php echo base_url(); ?>photo/1.png" height="75" width="85"/>
        <h4>Products deliver</h4>
    </div>
    <div class="col-md-2">
        <img src="<?php echo base_url(); ?>photo/5.png" height="75" width="85"/>
        <h4>Please accept price</h4>
    </div>
    <div class="col-md-1">
    </div>
</div>



<div class="row">
    <div class="col-md-1"> </div>
    <div class="col-md-4">
        <h2>Required Questions</h2>
    </div>
    <div class="col-md-4"></div>
</div>
<div class="row">
    <div class="col-md-1"></div>
    <div class="col-md-10">
        <span id="show" class="form-control"> 1.ePharmacy.com.bd</span>
        <p class="shows">ePharmacy, the country's biggest online pharmacy shop. The online via the Internet from anywhere at any time, customize the product to their customers throughout the customer orders and deliver ePharmacy has its own management.</p>
    </div>
    <div class="col-md-1"></div>
</div>


<div class="row">
    <div class="col-md-1"></div>
    <div class="col-md-10">
        <span id="showw" class="form-control">2.About the expansion of business</span>
        <p class="showss">ePharmacy grow up your business operates in a variety of timely expansion of the contacts in your product, sales and dividend payments, as well as broad a whole lot of ways you can be a successful.

            'Business Partnership' project ePharmacy your enterprise online partner (e-tailor) serves as a way to make sure your product branding, as well as affect the sale. In addition, our extensive delivery network across the country through the various parts of the country, you can bring your product to customers at the fastest too.</p>
    </div>
    <div class="col-md-1"></div>
</div>

<div class="row">
    <div class="col-md-1"></div>
    <div class="col-md-10">
        <span id="show3" class="form-control"> 3.Product Publicity</span>
        <p class="shows3">Today's deals are always aware of merchants to increase acceptance of the product is positive. Merchants brand / product promotion and expansion of the promotional tools are used by a variety of technology to deal with today. Traditional promotions such as television / radio ads, billboards, or banners or promotional package with an integrated ePharmacy phestune as well as the marketing of your product that is a clear sense in which you market your product to.

            Social media marketing is also popular in recent times, such as Facebook, Twitter, ajkerdeal independent role in a variety of technology-based campaign.

            There's also a popular fan page on Facebook, where today's deal more than .5 million consumers actively present. Interesting to offer any product we make available to consumers more seriously target.</p>
    </div>
    <div class="col-md-1"></div>
</div>

<div class="row">
    <div class="col-md-1"></div>
    <div class="col-md-10" >
        <span id="show4" class="form-control">4.Customer Support Services</span>
        <p class="shows4">Buyers order taking and delivery process of the active management of ePharmacy Customer Care department. Our Customer Care service seven days a week through its call center from 9am until 11pm, which operates the merchants / vendors in product promotion and expansion of the role.</p>
    </div>
    <div class="col-md-1"></div>
</div>

<div class="row">
    <div class="col-md-1"></div>
    <div class="col-md-10">
        <span id="show5" class="form-control"> 5.Home Delivery</span>
        <p class="shows5">The biggest online shopping mall deliver orders their products in almost all districts of the country directly to their own responsibility . There's also an adept of the ePharmacy Delivery / Fulfillment Team.</p>
    </div>
    <div class="col-md-1"></div>
</div>

<div class="row">
    <div class="col-md-1"></div>
    <div class="col-md-10">
        <span id="show6" class="form-control">6.Product photography</span>
        <p class="shows6">Staff Development Team, photographer and designer combines all of today's deals Merchant of its products to ensure quality of the products offered by uploading a photo. However, the merchant must take precedence is given to the opinions of others.</p>
    </div>
    <div class="col-md-1"></div>
</div>

<div class="row">
    <div class="col-md-1"></div>
    <div class="col-md-10">
        <span id="show7" class="form-control">7.Online payment Gateway</span>
        <p class="shows7">ePharmacy its own payment gateway system. Shoppers ePharmacy her any Visa / Master card, you can use the price needs. In addition, through the development of shoppers to shop.</p>
    </div>
    <div class="col-md-1"></div>
</div>

<div class="row">
    <div class="col-md-1"></div>
    <div class="col-md-10">
        <span id="show8" class="form-control">8.Marchant's Helpful Answer</span>
        <p class="shows8">
            How can you sell through your Product ePharmacy?

            Step 1 - the first time today as the seller in a deal completed the registration of your organization.

            Step two - then your merchant account log in with user name and password.

            Step 3 - 'New Deal Post Click.

            Step 4 - entry panel in front of you will come to a deal. Upload your product descriptions and images, and "Submit" button. Our panel is connected to your deal now. Our Development Department immediately contacted our content that you upload will appear on dilatite needed to refine it.
        </p>
    </div>
    <div class="col-md-1"></div>
</div>

<div>
    <a href="#top" id="back-to-top" title="Back to top"><img src="<?php echo base_url(); ?>assets/img/icon/up-arrow.png" style="background-color: #FF5555;"></a>
</div>

<br>
 <?php //include ('page/footer.php') 
$this->load->view('master/header/footer');
?>
<!----info-->

<!----info end-->
<script>
if ($('#back-to-top').length) {
    var scrollTrigger = 100, // px
        backToTop = function () {
            var scrollTop = $(window).scrollTop();
            if (scrollTop > scrollTrigger) {
                $('#back-to-top').addClass('show');
            } else {
                $('#back-to-top').removeClass('show');
            }
        };
    backToTop();
    $(window).on('scroll', function () {
        backToTop();
    });
    $('#back-to-top').on('click', function (e) {
        e.preventDefault();
        $('html,body').animate({
            scrollTop: 0
        }, 1000);
    });
}
</script>