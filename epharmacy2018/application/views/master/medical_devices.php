<?php include('header/header.php');?>
<!--test-->
<div class="container-fluid">
<div id="filter-overlay"></div>
<div class="category-list-section">
<div class="row">
<div class="product loading-icon v2 hide"></div>


<div class="col-md-2 col-sm-3 hidden-xs sku-filter">
<div class="sku-filter-container">
<div class="filter-content-wrap">
<form method="post" action="<?php print base_url('live_search');?>">
<span class="filter-by">Filter By</span>
<input type="hidden" value="brand" class="filter-type">
<div id="brand-box" class="row filter-facet">
<div class="col-md-12 filter-heading">Brand</div>
<div class="col-md-12">
<!--<input type="text" name="search" id="search" placeholder="Search Products" class="brand-search" >-->
<div class="filter-items scroll">

<?php
$sql=$this->db->query("select * from brand_list");
$sql2=$sql->result();
foreach ($sql2 as $value) {
?>
<label class="filter-item">
<input type="checkbox" name="brand" value="<?php print $value->id;?>" data-id="anaphase" class="filter-inputbox">
<span class="filter-name"><?php print $value->brand_name;?></span>
<span class="filter-count"><?php //print count($value->brand_name);?></span>
</label>
<?php }?>

</div>
</div>
</div>

<input type="hidden" value="discount" class="filter-type">
<div id="discount-box" class="row filter-facet">
<input type="submit" name="submit" value="Search">
</div>
</form>
</div>
</div>
</div>
<!--end test-->

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
	//echo '<a href="">'.$lasttwo.'</a>';
	?>
</span>
</div>

<h2 class="display-inline-inline sku-page-cat">Health Monitors (<?php print count($product);?>)</h2>
<div class="row">

	</div>
	<div class="filter-list hidden-xs"><a class="clear-filter button-text hide">CLEAR FILTERS</a>
	</div>
	<div class="row mt0 js-alert-section">
<!--single product-->
<?php 
foreach ($product as $value) {
?>
	<div class="col-md-3 col-sm-4 col-xs-12 dia-sku" style="">
	<div class="sku-container">
	<div class="content-wrap">
	<a href="<?php print base_url('product_description/'.$value->prod_id);?>">
	<div class="sku-img">
	<img src="<?php echo base_url(); ?>assets/img/product_image/<?php print $value->image; ?>" onerror="this.src = '<?php print base_url('');?>assets/img.1mg.com/images/otc_image_na.png'; this.alt = 'Health Product Image Default';" alt="WOW ULTIMATE UNDER EYE &amp; FACIAL GEL">
	</div>
	<div class="sku-name"><?php print $value->prod_name;?></div></a><div class="sku-pack">code: <?php print $value->prod_code;?></div><div class="sku-price"><div class="sku-offer display-inline"><?php print $value->prod_price;?>.Tk</div><div class="sku-actual display-inline"></div>
	</div>
	</div>
	<a href="<?php print base_url('add_cart'.'/'.$value->prod_id);?>" data-id="340509" data-avail="yes" data-su="1" class="value submit-btn js-avail button-text btn btn-checkout btn-add-sku-to-cart category-sku-add-to-cart btn btn-primary crtDiaOp">
	<div class="add-to-cart-text">Add to cart</div>
	<div class="add-to-cart-arrow"><i class="fa fa-long-arrow-right fa-2x"></i></div>
	</a>
	</div>
	</div>
<?php }?>
<!--end single product-->
		<input type="hidden" value="true" class="hasMoreFlag"></div>
		
		<!--<div class="row text-center">
		<div class="col-md-12">
		<a data-number="1" data-size="12" data-url="/api/v3/getMoreOTC/19?" href="#" class="pgntnCntnrBar btn btn-primary text-small button-text">Load More</a>
		<div class="loading-icon v2 hide">			
		</div></div>
		</div>-->
		</div>

		</div></div></div></div></div>


		<?php include('header/footer.php');?>