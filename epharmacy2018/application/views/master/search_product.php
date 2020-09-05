<style type="text/css">
.highlight{
    border:1px solid yellow;
}
</style>

<?php include('header/header.php');?>
<div class="container-fluid">
<div id="filter-overlay"></div>
<div class="category-list-section">
<div class="row">
<div class="product loading-icon v2 hide"></div>
<div class="col-md-0 col-sm-3 hidden-xs sku-filter">
<div class="sku-filter-container">
<div class="filter-content-wrap">
<!-- <span class="filter-by">Filter By</span> -->
<!-- <input type="hidden" value="brand" class="filter-type"> -->
<div id="brand-box" class="row filter-facet">
<!-- <div class="col-md-12 filter-heading">BRAND</div> -->
</div>

<input type="hidden" value="discount" class="filter-type">

</div></div></div>

<!--start product-->
<div class="col-md-12 col-sm-9 sku-list">
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

<h2 class="">Search Products (<?php print count($product);?>)</h2>
<div class="row">
    
	</div>
	<div class="filter-list hidden-xs"><a class="clear-filter button-text hide">CLEAR FILTERS</a>
	</div>
	<div class="row mt0 js-alert-section">
<!--single product-->
<?php 
// $product=$this->db->select('*')->from('product')->get()->result();
$i=0;
foreach ($product as $value) {
	$i++;
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
<?php
if($i<=0)
{
    print "<h3 style='color:red;'>No Product Found</h3>";
}
?>
<link rel="stylesheet"
      href="//cdnjs.cloudflare.com/ajax/libs/highlight.js/9.12.0/styles/default.min.css">
<script src="//cdnjs.cloudflare.com/ajax/libs/highlight.js/9.12.0/highlight.min.js"></script>
<script>
    $(document).ready(function(){
        $('.highlight').highlight("<?= $search_word['search_word'] ?>");
    });
</script>



<!--end single product-->
		</div>
		
		</div>

		</div></div></div></div></div>


		<?php include('header/footer.php');?>