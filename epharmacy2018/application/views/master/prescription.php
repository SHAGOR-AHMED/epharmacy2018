<?php include('header/header.php');?>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript">
	 $(document).ready(function () {
        $("shows").hide();
        $("#show").click(function () {
            $(".shows").toggle();
        });
</script> 

<div class="container-fluid">
<div class="row">
	<div class="col-sm-4 roni">
	 <h4>Upload Prescription</h4>
	 <hr>
	 <a href="<?php echo base_url('login'); ?>">
	 <p style="text-align: center;">
	 <i class="fa fa-camera fa-2x" style="color: skyblue"></i><br>
	 New</p></a>
	</div>
	<div class="col-sm-4 roni">
		<h4>My Prescription</h4>
		<hr>
		<a href="<?php echo base_url('Home_controller/my_prescription'); ?>">
		<p style="text-align: center;">
	 <i class="fa fa-list fa-2x" style="color: skyblue"></i><br>
	 My Prescription</p></a>
	</div>
	<div class="col-sm-4 roni">
		<h4>Order Summary</h4>
		<hr>
		* Valid Prescription Guide.<br>
		* Don’t crop out any part of the image<br>
		* Avoid blurred image<br>
		* Include details of doctor and patient + clinic visit date<br>
		* Medicines will be dispensed as per prescription<br>
		<span id="show" class="form-control">Show Sample</span><br><br>
		<p class='shows'><img src="<?php print base_url('assets/image/abcd.svg')?>"></p>
	</div>
</div>
</div>
<?php include('header/footer.php');?>


<style type="text/css">
	.roni{
		 min-height: 150px;
		 height: auto;
		 overflow: hidden;
		box-shadow:1px 1px 1px 1px #888888;
		padding-left: 10px;
	}
</style>