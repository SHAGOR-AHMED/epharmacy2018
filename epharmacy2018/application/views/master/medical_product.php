<?php include('header/header.php');?>

<div class="container-fluid breadcrumb"></div> 
<div class="container-fluid">
<div class="js-alert-section"></div>
<div class="row">
<div class="col-xs-12"><h1 class="display-inline-inline sku-page-cat">Popular Medical Product Categories</h1></div></div>

<div class="row">
<?php
$result=$this->db->select('*')->from('category')->where('type',0)->or_where('type',2)->order_by('cat_id','desc')->get()->result();
foreach ($result as $value) {
?>
<div class="col-xlg-2 col-md-3 col-sm-4 col-xs-6">
<a href="<?php print base_url('cat/'.$value->cat_id);?>">
<div data-value="Weekly Super Saver Deals" class="category-wrap text-center individual-category">
<div class="category-image">
<img src="<?php print base_url($value->cat_image);?>" alt="Category Image">
<div class="category-name"><?php print $value->category;?></div>
</div>
</div>
</a>
</div>
<?php }?>

</div></div></div></div>

<?php include('header/footer.php');?>
<style type="text/css">
	.category-image img {
    max-width: 100%;
    vertical-align: middle;
    border: 0;
    box-shadow:5px 5px 5px #e2e2e2;
}
</style>
