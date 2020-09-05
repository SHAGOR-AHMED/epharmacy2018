<?php include('header/header.php');?>
<!--popup-->
	<script type="text/javascript" src="<?php print base_url()?>assets/popup_js/jquery-1.10.2.js" ></script>
	<script type="text/javascript" src="<?php print base_url()?>assets/popup_js/jquery-ui.js" ></script>
	<script type="text/javascript" src="<?php print base_url()?>assets/popup_js/jquery.min.js" ></script>
	<script type="text/javascript" src="<?php print base_url()?>assets/popup_js/bootstrap.js" ></script>
	<script type="text/javascript" src="<?php print base_url()?>assets/popup_js/bootstrap.min.js" ></script>

	<link rel="stylesheet" type="text/css" href="<?php print base_url()?>assets/popup_/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="<?php print base_url()?>assets/popup_/bootstrap.min.css">
<!--end popup-->
        <style>
            #asd:hover{
                color:#EF2C4A !important;
            }
        /* Pop Up */
        #myModal{
            width:600px;
        	height: 300px;
        	background: white;
        	position: relative;
        	top: 10px;
        	left: 25%;
        }
       @media only screen and (max-width: 400px){
             #myModal{
                 width:300px;
                 height:170px;
                 margin-left:-160px;
             }
            input[type=text]{
                height:20px;
            }
        }
        /* End Pop Up */
        </style>
        
<script type="text/javascript">
		
	$(window).load(function(){
            setTimeout(addFunc, 3000);
        });

	function addFunc(){
            $('#myModal').modal('show');
	}

</script>

 <!--Pop Up-->
	    <div class="modal fade in" id="myModal">
    	  <div class="modal-header">
    	    <a class="close" data-dismiss="modal">X</a>
    	  </div>
    	  <div class="modal-body">
    	    <a href="<?php print base_url('upload_prescription');?>">
    	        <img src="<?php print base_url('');?>assets/offer.png" class="img-rounded">
    	   </a>
    	  </div>
    	</div>
<!--End Pop Up-->
        
		<div class="carousel-main">
		<div id="mainHomeCarousel" data-ride="carousel" class="caraousel-wrap carousel slide">
		<div class="carousel-inner">

		<div class="caraousel-panel item active">
		<div class="gradiant-holder"></div>

		<div style="background-color: #295498;" class="caraousel-image">
			<img src="<?php print base_url('assets/img.1mg.com/images/page-specific/home-page/pharmacy3n.png');?>" class="img-responsive" style="margin:10px;">
		</div>
		<div class="caraousel-text-holder">
		<h1 style="font-size:inherit" class="caraousel-text">
			<ul class="caraousel-list">
			<li>Country's Largest online Medicine & health care products platform. Trusted by Health Specialists...!</li>
			<li></li>
			</ul>
		</h1>
		</div>
		</div>

		<div class="caraousel-panel item">
		<div class="gradiant-holder"></div>
		<div style="background-color: #295498;" class="caraousel-image">
			<img src="<?php print base_url('assets/img.1mg.com/images/page-specific/home-page/runningn.png');?>" class="img-responsive" style="margin:10px;">			
		</div>

		<div class="caraousel-text-holder"><div class="caraousel-text"><ul class="caraousel-list"><li>Great deals on vitamins,Supplements & Family Nutrition.</li><li></li></ul></div></div>
		</div>

		<div class="caraousel-panel item">
		<div class="gradiant-holder"></div>
		<div style="background-color: #295498;;" class="caraousel-image">
			<img src="<?php print base_url('assets/img.1mg.com/images/page-specific/home-page/fitn.png');?>" class="img-responsive"  style="margin:10px;">		
		</div>

		<div class="caraousel-text-holder"><div class="caraousel-text"><ul class="caraousel-list"><li>Best Source for Medical Supplies, Rehab & physical therapy Equipments.</li></ul></div></div>
		</div>

		<div class="caraousel-panel item">
		<div class="gradiant-holder"></div>
		<div style="background-color: #295498;" class="caraousel-image">
			<img src="<?php print base_url('assets/img.1mg.com/images/page-specific/home-page/babyn.png');?>" class="img-responsive" style="margin:10px;">
		</div>

		<div class="caraousel-text-holder"><div class="caraousel-text"><ul class="caraousel-list"><li>Largest range of Medicines and health products Great deals and best prices</li></ul></div></div>

		</div>

		<div class="caraousel-panel item">
		<div class="gradiant-holder"></div>
		<div style="background-color: #295498;" class="caraousel-image">
			<img src="<?php print base_url('assets/img.1mg.com/images/page-specific/home-page/creamn.png');?>" class="img-responsive" style="margin:10px;">	
		</div>

		<div class="caraousel-text-holder"><div class="caraousel-text"><ul class="caraousel-list"><li>Largest range of Beauty care,Women care,Elderly care,Baby & Child care Products.</li></ul></div></div>

		</div>

		</div>
		<ol class="carousel-indicators">
		<li data-target="#mainHomeCarousel" data-slide-to="0" class="active"></li>
		<li data-target="#mainHomeCarousel" data-slide-to="1"></li>
		<li data-target="#mainHomeCarousel" data-slide-to="2"></li>
		<li data-target="#mainHomeCarousel" data-slide-to="3"></li>
		<li data-target="#mainHomeCarousel" data-slide-to="4"></li>
		</ol></div>

		<div class="search-bar-holder">
    	<!--<div class="col-xs-12 col-sm-8 col-md-offset-3 col-md-5 search-bar-outer-container">
		<section class="position">
		<div class="srchBarRut">
		<form action="<?php print base_url('live_search2');?>" method="post">
		<input type="text" name="search" id="search" placeholder="Search for your Medicines / Health Products" class="srchFld gryShdw hdrSrch">
		</form>
        <a href=""><ul id="finalResult"></ul></a>
        
		<!-- <div id="srchRsltRut" class="hide">
		<section id="srchAtoCmpltRslt"></section>
		<section id="srchViewAll" class="viewAllRut"></section></div>  ->

		<div class="flag-container"><label for="selectToAdd" class="checkboxText"><span class="text-blue">Search your medicine for easy to get !!!</span></label></div>
		</div>
		</section>
		</div>-->

	<!--	<div class="col-sm-offset-8 col-sm-4 col-md-3 hidden-xs desktop-prescription-container">
		<div style="padding: 20px;border-left: 1px solid #fff;padding-top:5px;margin-top:5px" class="position">
		<img src="https://img.1mg.com/images/page-specific/home-page/quick-buy-white.svg" alt="Rx">
		<span class="order-rx-text">Quick Buy! Upto 20% Discount</span>
		<a href="<?php print base_url('upload_prescription');?>" style="text-decoration:none;color: #fff !important;display:inline-block;background:#EF2C4A;padding: 15px;border-radius: 4px;margin-top:5px" class="t-prescription-order desktop-prescription-button">UPLOAD PRESCRIPTION</a>
		</div>
		</div>-->

		<div style="text-align:center;" class="visible-xs">
		<div class="col-xs-12 mobile-prescription-container">
		<!--<div class="mobile-quick-buy-text"><img src="https://img.1mg.com/images/page-specific/home-page/quick-buy-white.svg" alt="Rx"><span class="mobile-order-rx-text"></span></div>--><a href="<?php print base_url('upload_prescription');?>" style="margin-top:8px;text-decoration:none;background: #EF2C4A !important;display:inline-block;padding: 15px;border-radius: 4px;color:white;" class="t-prescription-order">UPLOAD PRESCRIPTION</a>
		</div>
		</div>
		</div>
		</div>

        <!---------------------------->
		
		<div class="sub-content container-fluid">
			<div style="margin-bottom:0px;" class="sub-content-title"><div class="sub-content-text">Popular Health Product Categories</div>
				<!--<div class="sub-content-decor">-->
				<!--	<div class="circle"></div>-->
				<!--</div>-->
			</div>
			
			<div class="sub-content-container float-wrap categories-wrap">
				<div class="row">

					<div class="sub-content-cat col-md-3 col-xs-6">
						<div class="category-image"><a href="<?php print base_url('mother_care');?>" data-value="Diabetes Monitoring" class="otc-link t-otc-diabetes">
							<img src="<?php print base_url('');?>assets/health_product/women-care.jpg" class="img-circle" alt="Diabetes Monitoring" style="border:1px solid #e2e2e2; box-shadow: 5px 5px 5px #e2e2e2;"></a>
						</div>
						<div class="category-text">Women Care</div>
					</div>

					<div class="sub-content-cat col-md-3 col-xs-6">
						<div class="category-image"><a href="<?php print base_url('sexual_wellness');?>" data-value="Diabetes Supplement" class="otc-link t-otc-devices">
							<img src="<?php print base_url('');?>assets/health_product/sexual-wellness.png" class="img-circle" alt="Diabetes Supplements" style="border:1px solid #e2e2e2; box-shadow: 5px 5px 5px #e2e2e2;"></a>
						</div>
						<div class="category-text">Sexual wellness</div>
					</div>

					<div class="sub-content-cat col-md-3 col-xs-6 sm-clear">
						<div class="category-image"><a href="<?php print base_url('baby_child');?>" data-value="Wellness and Nutrition" class="otc-link t-otc-devices">
							<img src="<?php print base_url('');?>assets/img/home_img/4.jpg" class="img-circle" alt="Wellness and Nutrition" style="border:1px solid #e2e2e2; box-shadow: 5px 5px 5px #e2e2e2;"></a>
						</div>
						<div class="category-text">Baby & Child Care</div>
					</div>

					<div class="sub-content-cat col-md-3 col-xs-6">
						<div class="category-image"><a href="<?php print base_url('skin_care');?>" class="otc-link t-otc-supplements">
							<img src="<?php print base_url('');?>assets/health_product/skin-care2.jpg" class="img-circle" style="border:1px solid #e2e2e2; box-shadow: 5px 5px 5px #e2e2e2;"></a>
						</div>
						<div class="category-text">Skin Care</div>
					</div>

				</div>
				<div class="text-center">
					<a id="asd" href="<?php print base_url('health_product');?>" data-value="See All Categories" style="background-color: rgb(255, 255, 255); color: rgb(11, 197, 216); height: 48px; padding: 0px 16px; text-decoration: none; display: inline-flex; font-weight: 500; font-size: 16px; border-radius: 4px; z-index: 100; cursor: pointer; align-items: center; justify-content: center; border: 1px solid rgb(11, 197, 216); margin-right: 12px;" class="otc-link t-see-all-categories">SEE ALL CATEGORIES</a>
				</div>
			</div>
		</div>
		
		<!------------------------------------------>
		
		<div id="div-gpt-ad-1471440623242-0" style="position: relative;  text-align: center; margin: 10px auto 5px;" class="visible-md visible-lg hidden-sm hidden-xs"></div><div id="div-gpt-ad-1471803047246-0" style="position: relative;  text-align: center; margin: 10px auto 5px;" class="hidden-md hidden-lg"></div>
		<div class="sub-content container-fluid">
		<div style="margin-bottom:13px;" class="sub-content-title"><div class="sub-content-text">Popular Medical Product Categories</div>
		<div class="sub-content-decor">
		<div class="circle"></div>
		</div>
		</div>
		<div class="sub-content-container float-wrap categories-wrap">
		<div class="row">

		<div class="sub-content-cat col-md-3 col-xs-6">
		<div class="category-image"><a href="<?php print base_url('medical_devices');?>" data-value="Diabetes Monitoring" class="otc-link t-otc-diabetes">
		<img src="<?php print base_url('');?>assets/img/home_img/1.jpg" class="img-circle" alt="Diabetes Monitoring" style="border:1px solid #e2e2e2; box-shadow: 5px 5px 5px #e2e2e2;"></a>
		</div>
		<div class="category-text">Health Monitors</div></div>

		<div class="sub-content-cat col-md-3 col-xs-6"><div class="category-image"><a href="<?php print base_url('diabetes_monitoring');?>" data-value="Diabetes Supplement" class="otc-link t-otc-devices">
		<img src="<?php print base_url('');?>assets/img/home_img/2.jpg" class="img-circle" alt="Diabetes Supplements" style="border:1px solid #e2e2e2; box-shadow: 5px 5px 5px #e2e2e2;"></a></div>
		<div class="category-text">Diabetes Monitoring</div></div>

		<div class="sub-content-cat col-md-3 col-xs-6 sm-clear">
		<div class="category-image"><a href="<?php print base_url('fitness_management');?>" data-value="Wellness and Nutrition" class="otc-link t-otc-devices">
		<img src="<?php print base_url('');?>assets/img/home_img/3.jpg" class="img-circle" alt="Wellness and Nutrition" style="border:1px solid #e2e2e2; box-shadow: 5px 5px 5px #e2e2e2;"></a></div>
		<div class="category-text">Fitness Management</div></div>

		<div class="sub-content-cat col-md-3 col-xs-6"><div class="category-image"><a href="<?php print base_url('support_brace');?>" class="otc-link t-otc-supplements">
		<img src="<?php print base_url('');?>assets/img/home_img/4..jpeg" class="img-circle" style="border:1px solid #e2e2e2; box-shadow: 5px 5px 5px #e2e2e2;"></a></div>
		<div class="category-text">Supports & Braces</div></div>

		</div>
		<div class="text-center">
		    <a id="asd" href="<?php print base_url('medical_product');?>" data-value="See All Categories" style="background-color: rgb(255, 255, 255); color: rgb(11, 197, 216); height: 48px; padding: 0px 16px; text-decoration: none; display: inline-flex; font-weight: 500; font-size: 16px; border-radius: 4px; z-index: 100; cursor: pointer; align-items: center; justify-content: center; border: 1px solid rgb(11, 197, 216); margin-right: 12px;" class="otc-link t-see-all-categories">SEE ALL CATEGORIES</a>
		</div>
		</div>
		</div>

		<div class="sub-content container-fluid">
		<div class="sub-content-title">
		<div class="sub-content-text">Discounts Available</div>
		<div class="sub-content-decor">
		<div class="circle"></div></div></div>
		
		<div>
	       
	    </div>
	    
		<div class="sub-content-container float-wrap">
		<div class="row " style="background-color:#295498;border:2px solid #295498;">
		    <img src="<?php print base_url('');?>assets/offer.png" alt="ts"  style="height:300px; width:1120px !important">
		<div class="col-md-4 col-sm-8 col-sm-offset-2 col-md-offset-0 col-height-x">
		<div class="sub-content-card blue">
		<div class="row">

		<div class="row-height pos-relative"><a href="#" data-index="1" data-value="All" class="copn-link">
		<div class="new-wrap hide">
		    <img src="<?php print base_url('');?>assets/img.1mg.com/images/page-specific/home-page/coupon/new_ribbon.svg" alt="new">
		
		</div>
		<div class="col-xs-5 text-center copn-img col-height col-middle">
		    <img src="<?php print base_url('');?>assets/img.1mg.com/images/page-specific/home-page/coupon/copn-med.png" alt="coupon for discount on Prescribed Medicines and Health Products">

		</div>

		<div class="col-xs-7 text-left col-height copn-wrap"><div class="copn-title">10% OFF<sup>*</sup></div><div class="copn-desc">on Prescription Medicines.</div><div class="copn-code">coupon : HEALTH1020</div><div class="copn-btn">Know More</div></div>
		
		</a></div>
		</div>
		
		</div>
		
		
		</div>

		<div class="col-md-4 col-sm-8 col-sm-offset-2 col-md-offset-0 col-height-x">
    		<div class="sub-content-card orange">
        		<div class="row">
        
            		<div class="row-height pos-relative"><a href="#" data-index="2" data-value="Labs" class="copn-link"><div class="new-wrap hide"><img src="<?php print base_url('');?>assets/img.1mg.com/images/page-specific/home-page/coupon/new_ribbon.svg" alt="new"></div>
            		<div class="col-xs-5 text-center copn-img col-height col-middle"><img src="<?php print base_url('');?>assets/img.1mg.com/images/page-specific/home-page/coupon/copn-lab.png" alt="coupon for discount on health tests and packages"></div>
            		<div class="col-xs-7 text-left col-height copn-wrap"><div class="copn-title">20% OFF<sup>*</sup></div><div class="copn-desc"> on all Health Tests & Packages.</div><div class="copn-code">coupon : OFF40</div><div class="copn-btn">Know More</div></div></a>
            		</div>
        		</div>
    		
    		</div>
		
		</div>

		<div class="col-md-4 col-sm-8 col-sm-offset-2 col-md-offset-0 col-height-x">
		<div class="sub-content-card green">
		<div class="row"><div class="row-height pos-relative"><a href="#" data-index="3" data-value="All" class="copn-link"><div class="new-wrap"><img src="https://img.1mg.com/images/page-specific/home-page/coupon/new_ribbon.svg" alt="new"></div><div class="col-xs-5 text-center copn-img col-height col-middle"><img src="<?php print base_url('');?>assets/img.1mg.com/images/page-specific/home-page/coupon/copn-otc.png" alt="coupon for discount on Ayurveda and Homeopathic products"></div>

		<div class="col-xs-7 text-left col-height copn-wrap"><div class="copn-title">Upto 5% OFF<sup>*</sup></div><div class="copn-desc">on OTC/Health Products.</div><div class="copn-code">coupon : HEALTH10</div><div class="copn-btn">Know More</div></div></a></div></div></div></div></div></div></div>

		<div class="sub-content container-fluid">
		<div class="sub-content-title" >
		<div class="sub-content-text">How To Order </div>
		<div class="sub-content-decor"><div class="circle"></div></div></div>

		<div class="sub-content-container">
		<div class="row how-to-order" style="background-color: #295498;">
		<div class="col-md-offset-1 col-md-2"><div class="row"><div class="col-xs-4 col-md-12 steps-img"><img src="<?php print base_url('');?>assets/img.1mg.com/images/page-specific/home-page/how-it-works/search1.png" alt="Search medicines Online"></div>

		<div class="col-xs-2 col-md-12 circle-wrap"><div><div class="dots-line"></div><div class="circle-filled"></div></div></div><div class="col-xs-6 col-md-12 steps-text"><div>Search</div></div></div></div><div class="col-md-2"><div class="row"><div class="col-xs-4 col-md-12 steps-img"><img src="<?php print base_url('');?>assets/img.1mg.com/images/page-specific/home-page/how-it-works/add-to-cart2.png" alt="Add to cart"></div><div class="col-xs-2 col-md-12 circle-wrap"><div><div class="dots-line"></div><div class="circle-filled"></div></div></div>

		<div class="col-xs-6 col-md-12 steps-text"><div>Add to cart</div></div></div></div><div class="col-md-2"><div class="row"><div class="col-xs-4 col-md-12 steps-img"><img src="<?php print base_url('');?>assets/img.1mg.com/images/page-specific/home-page/how-it-works/upload-rx1.png" alt="Upload prescription"></div><div class="col-xs-2 col-md-12 circle-wrap"><div><div class="dots-line"></div><div class="circle-filled"></div></div></div><div class="col-xs-6 col-md-12 steps-text"><div>Attach prescriptions wherever needed</div></div></div></div>

		<div class="col-md-2"><div class="row"><div class="col-xs-4 col-md-12 steps-img"><img src="<?php print base_url('');?>assets/img.1mg.com/images/page-specific/home-page/how-it-works/trusted1.png" alt="Trusted pharmacy"></div><div class="col-xs-2 col-md-12 circle-wrap"><div><div class="dots-line"></div><div class="circle-filled"></div></div></div>

		<div class="col-xs-6 col-md-12 steps-text"><div>Order passed</div></div></div></div><div class="col-md-2"><div class="row"><div class="col-xs-4 col-md-12 steps-img">
		<img src="<?php print base_url('');?>assets/img.1mg.com/images/page-specific/home-page/how-it-works/pay1.png" alt="Pay"></div>

		<div class="col-xs-2 col-md-12 circle-wrap"><div><div class="circle-filled"></div></div></div><div class="col-xs-6 col-md-12 steps-text"><div>Pay the delivery guy</div></div></div></div>
		</div></div>
		</div>

		<div class="sub-content container-fluid">
		<div class="sub-content-title">
		<div class="sub-content-text">Testimonials</div>
		<div class="sub-content-decor"><div class="circle"></div></div></div>
		<div class="sub-content-container float-wrap">
		<div id="testimonialCarousel" class="carousel slide">
		<div class="row"><div class="row-height"><div class="col-md-2 visible-md visible-lg hidden-xs col-height col-middle text-left"><a href="#testimonialCarousel" data-slide="prev" class="carousel-control left"><div class="left-arrow"><i class="fa fa-chevron-left"></i></div></a></div><div class="col-md-8 col-xs-12 col-height col-middle"><ol class="carousel-indicators hidden-md hidden-lg"><li data-target="#testimonialCarousel" data-slide-to="0" class="active"></li><li data-target="#testimonialCarousel" data-slide-to="1"></li>
		<li data-target="#testimonialCarousel" data-slide-to="2"></li><li data-target="#testimonialCarousel" data-slide-to="3"></li><li data-target="#testimonialCarousel" data-slide-to="4"></li><li data-target="#testimonialCarousel" data-slide-to="5"></li><li data-target="#testimonialCarousel" data-slide-to="6"></li><li data-target="#testimonialCarousel" data-slide-to="7"></li></ol><div class="carousel-inner testimonial-carousel"><div class="testimonial-panel item active"><div class="testimonial-quotes"><i class="fa fa-quote-right"></i></div><div class="testimonial-content">

		<div class="title">Lorem ipsum</div><div class="designation">AVP,</div><div class="text">Tried your app for the first time to find out substitute generic drugs. Amazing savings! Great feature, big fan :)</div></div></div><div class="testimonial-panel item"><div class="testimonial-quotes"><i class="fa fa-quote-right"></i></div><div class="testimonial-content"><div class="title">Lorem ipsum</div><div class="designation">Founder & CEO,</div><div class="text">Ordering all the medicines mentioned in the prescription took me a couple of minutes. Brilliant, convenient and saves a lot of time.</div></div></div><div class="testimonial-panel item"><div class="testimonial-quotes"><i class="fa fa-quote-right"></i></div><div class="testimonial-content"><div class="title">Lorem ipsum</div><div class="designation">Associate Partner</div><div class="text">It's extremely convenient to order for blood tests right from one's home, and also get the reports delivered without having to hamper one's daily routine.</div></div></div><div class="testimonial-panel item"><div class="testimonial-quotes"><i class="fa fa-quote-right"></i></div><div class="testimonial-content"><div class="title">Lorem</div><div class="designation">PR Manager, Klazina Consultants Ltd</div><div class="text">Tried your app for the first time to find out substitute generic drugs. Amazing savings! Great feature, big fan :)</div></div></div>

		<div class="testimonial-panel item"><div class="testimonial-quotes"><i class="fa fa-quote-right"></i></div><div class="testimonial-content"><div class="title">Lorem ipsum</div><div class="designation">----------</div><div class="text">Thanks to the app developers and the medicinal data providers in bringing out this very useful app. It is very handy, intuitive and neat.</div></div></div><div class="testimonial-panel item"><div class="testimonial-quotes"><i class="fa fa-quote-right"></i></div><div class="testimonial-content"><div class="title">Lorem ipsum</div><div class="designation">COO</div><div class="text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed lectus ex, congue in massa quis, viverra congue purus. Ut aliquam consectetur est, at suscipit leo lobortis eu</div></div></div><div class="testimonial-panel item"><div class="testimonial-quotes"><i class="fa fa-quote-right"></i></div><div class="testimonial-content"><div class="title">Lorem ipsum</div><div class="designation">Associate Partner</div><div class="text">It's extremely convenient to order for blood tests right from one's home, and also get the reports delivered without having to hamper one's daily routine.</div></div></div><div class="testimonial-panel item"><div class="testimonial-quotes"><i class="fa fa-quote-right"></i></div>
		<div class="testimonial-content"><div class="title">Lorem ipsum</div><div class="designation">Long Time User</div><div class="text">Tried your app for the first time to find out substitute generic drugs. Amazing savings! Great feature, big fan :)</div></div></div></div></div><div class="col-md-2 visible-md visible-lg hidden-xs col-height col-middle text-left"><a href="#testimonialCarousel" data-slide="next" class="carousel-control right"><div class="right-arrow"><i class="fa fa-chevron-right"></i></div></a></div></div></div></div>

		<div class="row img-content hide-imp">
		<div class="col-md-4 col-xs-12">
		<div class="row">
		<div class="col-xs-4 col-md-12">
		<img src="<?php print base_url('');?>assets/img.1mg.com/images/page-specific/home-page/testimonials/trust-icon1.png"></div>
		<div class="col-xs-8 col-md-12"><div class="text">How many people use the platform</div><div class="number">1529438</div></div></div></div>

		<div class="col-md-4 col-xs-12">
		<div class="row">
		<div class="col-xs-4 col-md-12">
		<img src="<?php print base_url('');?>assets/img.1mg.com/images/page-specific/home-page/testimonials/trust-icon2.png"></div><div class="col-xs-8 col-md-12"><div class="text">Number of people currently using the platform</div><div class="number">2055</div></div></div></div>

		<div class="col-md-4 col-xs-12">
		<div class="row"><div class="col-xs-4 col-md-12">
		<img src="<?php print base_url('');?>assets/img.1mg.com/images/page-specific/home-page/testimonials/trust-icon3.png"></div>
		<div class="col-xs-8 col-md-12"><div class="text">Number of orders delivered</div><div class="number">6978884</div></div></div></div></div></div></div>

		<div class="sub-content press-wrap">
		<div class="">
		<div class="col-md-4 col-height-x col-middle press-section" style="">
		<div class="row"><div class="row-height"><div class="col-xs-4 col-height col-middle">
		<a href="https://www.techinasia.com/4-rising-startups-india-april-20" target="_blank"><img src="<?php print base_url('');?>assets/img.1mg.com/images/page-specific/home-page/press-icons/tech-in-asia.png" alt="media coverage by Financial Times"></a></div>

		<div class="col-xs-8 col-height col-middle"><div class="pressContent text-left"><i><i class="fa fa-quote-left quote-start"></i>It lets people look up information about medicine, find cheaper substitutes, and order what suits them online.</i></div></div></div>
		</div></div>

		<div class="col-md-4 col-height-x col-middle press-section">
		<div class="row">
		<div class="row-height">
		<div class="col-xs-4 col-height col-middle">
		<a href="http://gadgets.ndtv.com/apps/features/order-prescription-medicines-online-in-india-with-these-apps-807907" target="_blank">
		<img src="<?php print base_url('');?>assets/img.1mg.com/images/page-specific/home-page/press-icons/gadgets-360.png" alt="media coverage by India Digital Review"></a></div>

		<div class="col-xs-8 col-height col-middle"><div class="pressContent text-left"><i><i class="fa fa-quote-left quote-start"></i>epharmacy.com.bd medicine ordering service helps users find cheaper generics, get more information on medicines, their side effects.</i></div></div></div></div></div>

		<div class="col-md-4 col-height-x col-middle press-section"><div class="row"><div class="row-height"><div class="col-xs-4 col-height col-middle"><a href="https://yourstory.com/2016/10/emerging-startups-2016" target="_blank"><img src="<?php print base_url('');?>assets/img.1mg.com/images/page-specific/home-page/press-icons/yourstory.png" alt="media coverage by Indian Express"></a></div><div class="col-xs-8 col-height col-middle"><div class="pressContent text-left"><i><i class="fa fa-quote-left quote-start"></i> Started as HealthKartPlus in 2015, epharmacy.com.bd now aims to be the one health app for all consumers in Bangladesh.</i></div></div></div></div></div></div></div>

		<div class="artwork-holder"><img async src="<?php print base_url('assets/medical_specialist.png'); ?>" alt="cities"></div></div></div><br>

	<?php include('header/footer.php');?>