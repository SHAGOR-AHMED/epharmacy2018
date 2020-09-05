<?php include('header/header.php');?>
<div class="container-fluid">
<div id="filter-overlay"></div>
<div class="category-list-section">
<div class="row">
<div class="product loading-icon v2 hide"></div>


<!--start product-->
<div class="col-md-10 col-sm-9 sku-list">
<div class="cat-breadcrumb">
<a href="<?php print base_url('Welcome');?>" class="home-link button-text">Home</a>
<i class="fa fa-angle-right breadcrumb-icon"></i>
<span>
	<?php 
	$url = current_url();
	$end = explode('/', $url);
	$length = sizeof($end);
	$lasttwo=$end[$length-1];
	echo '<a href="">'.$lasttwo.'</a>';
	?>
</span>
</div>

<h2 class="display-inline-inline sku-page-cat">Contact Us</h2>
<div class="row">
    <?php 
    if(isset($_POST["submit"]))
    {
      $to='support@epharmacy.com.bd';
      $name=$_POST['name'];
      $email=$_POST['email'];
      //$number=$_POST['Number'];
      $subject=$_POST['subject'];
      $message=$_POST['message'];
      
      $header=$subject;
      $from=$email;
      
      
      mail($to,$header,$message,$from);
      print "your message successfully send<br>";
      $name="";
      $email="";
      $subject="";
      $message="";
    }
    ?>
</div>

<div class="row mt0 js-alert-section">
<!--single product-->
<div class="col-sm-8">
      <div class="contact-form" style="border:1px solid gray;margin:3px;padding:10px;background-color:#295498;">
        <h2 class="title text-center" style="color:white;">Get In Touch</h2>
        <div class="status alert alert-success" style="display: none"></div>
        <form id="main-contact-form" class="contact-form row" name="contact-form" method="post">
          <div class="form-group col-md-6">
            <input name="name" class="form-control" required="required" placeholder="Name" type="text">
          </div>
          <div class="form-group col-md-6">
            <input name="email" class="form-control" required="required" placeholder="support@epharmacy.com.bd" type="text">
          </div>
          <br>
          <div class="form-group col-md-12" style="margin-top:10px;">
            <input name="subject" class="form-control" required="required" placeholder="Subject" type="text">
          </div>
          <br>
          <div class="form-group col-md-12" style="margin-top:10px;">
            <textarea name="message" id="message" required="required" class="form-control" rows="8" placeholder="Your Message Here"></textarea>
          </div>
          
          <div class="form-group col-md-12">
            <input name="submit" class="btn btn-primary pull-right" value="Submit" type="submit" style="background-color:#EF2C4A;">
          </div>
        </form>
      </div>
    </div>
<!--end single product-->
		<input type="hidden" value="true" class="hasMoreFlag">
</div>
		
</div>

</div>
</div>
</div>
</div>
</div>


		<?php include('header/footer.php');?>