<?php include('header/header.php');?>

<div class="container-fluid">
<div itemscope itemtype="http://schema.org/Product" class="otc">
<div class="row">
<div class="col-sm-5 hidden-xs">
<div class="otc-img-box">
<img src="<?php echo base_url(); ?>assets/img/product_image/<?php print $product_description->image; ?>" onerror="this.src = '<?php print base_url();?>assets/img.1mg.com/images/otc_image_na.png'; this.alt = 'Health Product Image Default';" alt="WOW ULTIMATE UNDER EYE &amp; FACIAL GEL">
</div>
</div>
<div class="col-sm-7">
<div class="row">
<div class="col-xs-12">
<div style="padding-bottom: 15px; min-height: 265px;" class="hidden-xs">
<div id="adContainer" style="float: right; width: 280px;">
<div id="div-gpt-ad-1471501284459-0" style="float: right; text-align: center;"></div>
</div>
<div style="width: 100%;">
    <h1 itemprop="name" class="otc-name">
        <?php print $product_description->prod_name;?>
    </h1>
<div class="otc-pack">
    <b>Code: </b><?php print $product_description->prod_code;?>
</div>
<div class="otc-pack">
    <b>Made In: </b><?php print $product_description->prod_made;?>
</div>

<div class="otc-manufacturer">
<a href="../manufacturer/fit-glow-healthcare-pvt.-ltd.html">
<span itemprop="manufacturer"></span>
</a>
</div>
<div itemscope itemtype="http://schema.org/Offer" itemprop="offers" style="padding-top: 15px;" class="otc-price-box">
    <meta itemprop="priceCurrency" content="INR"><div class="otc-price">Tk.&nbsp;<span itemprop="price"><?php print $product_description->prod_price;?></span></div>
    <?php
    if($product_description->brand_cat_id == 1)
    {
        print "Size Available: S, M, L, XL";
    }
     elseif($product_description->prod_subcatid==344 OR $product_description->prod_subcatid==347)
    {
        print "1 Year(s) Replacement Guaranty";
    }
    elseif($product_description->brand_cat_id==3 OR $product_description->brand_cat_id==4)
    {
        print "3 Year(s) Replacement Guaranty";
    }
   
    ?>
   
    <div class="otc-actual">
        <span itemprop="mrp"> <?php //print $product_description->prod_price;?></span>
    </div>
    <!--<div class="otc-save"><span itemprop="discount">&nbsp;65% off</span>-->
</div>
</div>
<div style="padding: 0px; border: 0px" class="otc-submit-box qtyOp hidden-xs">
<a href="<?php print base_url('add_cart'.'/'.$product_description->prod_id);?>" data-value='0' class="btn btn-inline crtOp check-availability button-text btn-primary">Add to Cart</a>
</div>
</div>
</div>

<!--responsive panel-->
<div style="padding-bottom: 15px;" class="visible-xs">
<div style="float: left; width: 110px;margin-left:14px;">
    
<div style="width:100%;">

<h1 itemprop="name" class="otc-name"><?php print $product_description->prod_name;?></h1>

<div class="otc-pack">
    <b>Code: </b><?php print $product_description->prod_code;?>
</div>
<div class="otc-pack">
    <b>Made In: </b><?php print $product_description->prod_made;?>
</div>

<div class="otc-pack">
    
</div>
<div class="otc-manufacturer"><a href="../manufacturer/fit-glow-healthcare-pvt.-ltd.html"><span itemprop="manufacturer"></span></a></div></div>

<div itemscope itemtype="http://schema.org/Offer" itemprop="offers" style="float: right;" class="otc-price-box"><meta itemprop="priceCurrency" content="INR"><div class="otc-price">Tk.&nbsp;<span itemprop="price"><?php print $product_description->prod_price;?></span>
</div>
<!--<div class="otc-actual">Tk.&nbsp;<span itemprop="mrp"><?php //print $product_description->prod_price;?></span></div><div class="otc-save"><span itemprop="discount">&nbsp;65% off</span></div>-->
<!--</div>-->
<div style="width:100%; border-top: 0px" class="otc-submit-box qtyOp"><a href="<?php print base_url('add_cart'.'/'.$product_description->prod_id);?>" data-value='0' style="float: left; height: auto;" class="btn btn-inline crtOp check-availability button-text btn-secondary">Add to Cart</a>
</div><br>
 <?php
    if($product_description->brand_cat_id == 1)
    {
        print "Size Available: S, M, L, XL";
    }
     elseif($product_description->prod_subcatid==344 OR $product_description->prod_subcatid==347)
    {
        print "1 Year(s) Replacement Guaranty";
    }
    elseif($product_description->brand_cat_id==3 OR $product_description->brand_cat_id==4)
    {
        print "3 Year(s) Replacement Guaranty";
    }
   
    ?>
</div>




</div></div></div>

<div class="row visible-xs">
<div class="col-xs-push-1 col-xs-8 text-center">
<img src="<?php echo base_url(); ?>assets/img/product_image/<?php print $product_description->image; ?>" onerror="this.src ='<?php print base_url();?>assets/img.1mg.com/images/otc_image_na.png'; this.alt = 'Health Product Image Default';" alt="WOW ULTIMATE UNDER EYE &amp; FACIAL GEL" class="otc-img-box"></div>
</div>

<div style="margin: 10px 0px;" class="row visible-xs">
<div class="col-xs-12">
<div id="div-gpt-ad-1471804340681-0" style="text-align: center;; margin: 10px auto;">
</div></div></div>
<a href="https://ad.apsalar.com/api/v1/ad?re=0&amp;st=502573890116&amp;h=65e0e7d950953102d5701f7d9ebeb1d5cc458944">

<!-- <div class="row install-app-cta visible-xs">
<div class="col-xs-1"><img src="https://img.1mg.com/images/app-mobile-phone.svg" alt="INSTALL APP"></div><div class="col-xs-11 cta-text"><div class="cta-message">Get Up To 10% Off On WOW ULTIMATE UNDER EYE &amp; FACIAL GEL</div><a href="https://ad.apsalar.com/api/v1/ad?re=0&amp;st=502573890116&amp;h=65e0e7d950953102d5701f7d9ebeb1d5cc458944" class="cta-link">INSTALL APP</a>
</div>
</div> -->

</a><input type="hidden" id="js-mfId" value="74647"><input type="hidden" name="js-mrp" value="1999"><input id="js-prodID" type="hidden" value="340509">

<div class="otc-detail-box">
<div class="detail-title">Product Details</div>
<div class="detail-desc"><span><?php print $product_description->prod_desc;?></span></div>
</div>

<div class="related-products">
<h2 class="related-heading">Related Products</h2>
<div class="jcarousel-wrapper">
<div class="jcarousel">
<ul>
<?php 
//$subcatid=$this->session->userdata('subcatid');
//print $subcatid;exit();
$subcatid=$product_description->prod_subcatid;
$result=$this->db->select('*')->from('product')->where('prod_subcatid',$subcatid)->get()->result();
foreach ($result as $value) {
?>
<li class="product-card">
<a href="<?php print base_url('product_description/'.$value->prod_id);?>" class="button-text"><img src="<?php echo base_url(); ?>assets/img/product_image/<?php print $value->image; ?>" alt="product" class="product-image">
<div class="product-name"><?php print $value->prod_name;?></div>
<div class="product-price"><?php print $value->prod_price;?>.Tk</div></a>
</li>
<?php }?>


</ul></div><span class="jcarousel-control-prev">&lsaquo;</span><span class="jcarousel-control-next">&rsaquo;</span></div></div></div></div>

<h2 class="section-title caps">Articles</h2>
<div class="row">
<div class="col-sm-4">
<div class="article-container">
<a href="#" data-value="Carrots Can Help Delay Ageing! This And 5 More Amazing Health Benefits" class="capsule-article-link"><div class="row text-lighter text-small">
<div class="col-xs-6 article-author">ePharmacy Team</div>
<div class="col-xs-6 text-right">10 views</div>
</div>
<div class="row">
<div class="col-xs-5"><img src="<?php print base_url();?>assets/image/test1.jpg" alt="Carrots Can Help Delay Ageing! This And 5 More Amazing Health Benefits" class="article-banner">
</div>
<div class="col-xs-7 article-title">Carrots Can Help Delay Ageing! This And 5 More Amazing Health Benefits</div>
</div>
</a>
</div></div>
<div class="col-sm-4">
<div class="article-container">
<a href="#" data-value="Ever Wondered Why You Get Hiccups? Here Is What You Should Know" class="capsule-article-link">
<div class="row text-lighter text-small">
<div class="col-xs-6 article-author">Dr. Roni Sharma</div><div class="col-xs-6 text-right">10 views</div>
</div>
<div class="row">
<div class="col-xs-5"><img src="<?php print base_url();?>assets/image/test3.jpg" alt="Ever Wondered Why You Get Hiccups? Here Is What You Should Know" class="article-banner"></div>
<div class="col-xs-7 article-title">Ever Wondered Why You Get Hiccups? Here Is What You Should Know</div></div>
</a>
</div>
</div>
<div class="col-sm-4">
<div class="article-container"><a href="#" data-value="Under Eye Dark Circles? Try These 6 Essential Oils To Lighten Them!" class="capsule-article-link">
     <div class="row text-lighter text-small"><div class="col-xs-6 article-author">ePharmacy Team</div><div class="col-xs-6 text-right">20 views</div></div><div class="row">
<div class="col-xs-5"><img src="<?php print base_url();?>assets/image/test2.jpg" alt="Under Eye Dark Circles? Try These 6 Essential Oils To Lighten Them!" class="article-banner"></div>
<div class="col-xs-7 article-title">Under Eye Dark Circles? Try These 6 Essential Oils To Lighten Them!</div>
</div>
</a></div></div></div></div></div></div></div>
<div style="min-height:0px;" class="main-content"><div class="content"><div class="container-fluid"><br><div class="honcode text-right">Content on this page was last updated on 09 May, 2017, by Dr. Varun Gupta (MD Pharmacology)</div></div></div></div>


<?php include('header/footer.php');?>