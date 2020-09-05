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

<h2 class="display-inline-inline sku-page-cat">About Us</h2>
<div class="row">
    
</div>
	<div class="filter-list hidden-xs"><a class="clear-filter button-text hide">CLEAR FILTERS</a>
	</div>
	<div class="row mt0 js-alert-section">
<!--single product-->
<div class="row">
    <div class="col-sm-10 col-sm-offset-1"><h1 class="page-title about-us">Our Mission is to make healthcare understandable, accessible and affordable</h1>
    <div class="content-block bordered-blue"><div class="description lft text-light">We want you to understand the medicines that you take and that you give your loved ones.</div>
    <div class="description lft text-light">Buying medicines may require you to try 5 medical stores which are miles apart. We want you to be able to do it with a click.</div>
    <div class="description lft text-light">Medicines can be expensive. We want you to know about medicines which have the same composition as prescribed by your doctor but can be considerably cheaper.</div>
    <div class="description spcl-2 text-base">We want you to be in charge of your medical care.</div>
</div>
</div>
</div>
<!--end single product-->
		<input type="hidden" value="true" class="hasMoreFlag"></div>
		
		</div>

		</div></div></div></div></div>


		<?php include('header/footer.php');?>