<footer class="custom-footer" style="background-color: #295498;">
<div class="footer-links">
<div class="row">
    <div class="col-md-2"></div>
<div class="col-md-2 col-centered">
<ul class="footer-list-links otc_categories">
<li class="footer-list-item"><span class="footer-list-title">OTC Categories</span></li>
<li class="footer-list-item"><a href="" data-value="Weight Management" class="footer-list-link">Weight Management</a></li>
<li class="footer-list-item"><a href="" data-value="Nutritional" class="footer-list-link">Nutritional</a></li>
<li class="footer-list-item"><a href="" data-value="Diabetes Care" class="footer-list-link">Diabetes Care</a></li>
<li class="footer-list-item"><a href="" data-value="Baby Care" class="footer-list-link">Baby Care</a></li>
<li class="footer-list-item"><a href="" data-value="Hair Care" class="footer-list-link">Hair Care</a></li>
<li class="footer-list-item"><a href="" data-value="Skin Care" class="footer-list-link">Skin Care</a></li>
<li class="footer-list-item"><a href="" data-value="Oral Care" class="footer-list-link">Oral Care</a></li></ul></div>

<div class="col-md-2 col-centered">
<ul class="footer-list-links other_otc_categories">
<li class="footer-list-item"><span class="footer-list-title">Other OTC Categories</span></li>
<li class="footer-list-item"><a href="" data-value="Cough and Cold" class="footer-list-link">Cough and Cold</a></li>
<li class="footer-list-item"><a href="" data-value="Sexual wellness" class="footer-list-link">Sexual wellness</a></li>
<li class="footer-list-item"><a href="" data-value="Pain Relief" class="footer-list-link">Pain Relief</a></li>
<li class="footer-list-item"><a href="" data-value="Eye Care" class="footer-list-link">Eye Care</a></li>
<li class="footer-list-item"><a href="" data-value="Elderly Care" class="footer-list-link">Elderly Care</a></li>
<li class="footer-list-item"><a href="" data-value="Stomach Care" class="footer-list-link">Stomach Care</a></li>
</ul>
</div>

<div class="col-md-2 col-centered">
<ul class="footer-list-links popular_otc_products">
<li class="footer-list-item"><span class="footer-list-title">Popular OTC Products</span></li>
<li class="footer-list-item"><a href="" data-value="Revital H Capsule" class="footer-list-link">Revital H Capsule</a></li>
<li class="footer-list-item"><a href="" data-value="Horlicks Junior Powder Chocolate" class="footer-list-link">Horlicks Junior Powder Chocolate</a></li>
<li class="footer-list-item"><a href="" data-value="Pampers Active Baby Diaper" class="footer-list-link">Pampers Active Baby Diaper</a></li>
<li class="footer-list-item"><a href="" data-value="Calcirol Sachet" class="footer-list-link">Calcirol Sachet</a></li>
<li class="footer-list-item"><a href="" data-value="Anaboom Anti Hair Fall Serum" class="footer-list-link">Anaboom Anti Hair Fall Serum</a></li>
<li class="footer-list-item"><a href="" data-value="Glucerna SR Powder" class="footer-list-link">Glucerna SR Powder</a></li>
</ul>
</div>

<div class="col-md-2 col-centered">
<ul class="footer-list-links other_links">
<li class="footer-list-item"><span class="footer-list-title">Other Links</span></li>
<li class="footer-list-item"><a href="" data-value="Trends" class="footer-list-link">Trends</a></li>
<li class="footer-list-item"><a href="" data-value="Business Partnerships" class="footer-list-link">Business Partnerships</a></li>
<li class="footer-list-item"><a href="<?php print base_url('about');?>" data-value="About us" class="footer-list-link">About Us</a></li>
<li class="footer-list-item"><a href="<?php print base_url('contact');?>" data-value="Terms" class="footer-list-link">Contact Us</a></li>
<li class="footer-list-item"><a href="" data-value="Need Help?" class="footer-list-link">Need Help?</a></li>
<li class="footer-list-item"><a href="" data-value="Privacy Policy" class="footer-list-link">Privacy Policy</a></li>
<li class="footer-list-item"><a href="" data-value="Return Policy" class="footer-list-link">Return Policy</a></li>
<li class="footer-list-item"><a href="" data-value="Jobs" class="footer-list-link">Jobs</a></li>
</ul>
</div>
</div></div>

<div class="social-links">
<a href="" target="_blank" title="Like us on Facebook" rel="nofollow" data-value="Facebook" class="social-link">
<img src="https://img.1mg.com/images/footer/facebook.svg" alt="like us on facebook" title="Like us on Facebook"></a>
<a href="" target="_blank" title="Follow us on Twitter" rel="nofollow" data-value="Twitter" class="social-link"><img src="https://img.1mg.com/images/footer/twitter.svg" alt="Follow us on twitter" title="Follow us on twitter"></a>

<a href="" target="_blank" title="Follow us on Google+" rel="nofollow" data-value="Google" class="social-link"><img src="https://img.1mg.com/images/footer/google-plus.svg" alt="Add us on Google plus" title="Add us on Google plus"></a>

<a href="" target="_blank" title="Visit us on LinkedIn" rel="nofollow" data-value="LinkedIn" class="social-link"><img src="https://img.1mg.com/images/footer/linkedin.svg" alt="Add 1mg on Linkedin" title="Add us on Linkedin"></a></div>

<div class="footer-text"><span style="color:#C3AC32">E-mail: support@epharmacy.com.bd<br>Help Line :+88 01766666671</span><div>© 2017 ePharmacy. All rights reserved.</div><div>In compliance with Drug and Cosmetic Act and Rules, we don't process requests for Schedule X and other habit forming drugs.</div></div>
<div class="footer-logo"><img src="<?php print base_url('assets/img/logo/logo_new2.png');?>" style="padding:3px;" alt="" title=""></div>

<!-- <p style="color: white;">@-2017.All Rights Reserved.Developed by <a href="http://gatewayit.net" target="_blank">Gateway it</a>.</p> -->
<?php
$counters=$this->db->select('*')->from('visitor_counter')->get()->row();
$count=$counters->counter;
if(empty($count)){
$count = 1;
$sql1= $this->db->insert('visitor_counter',$count);
}
echo "visitors No. "; 
echo $count; 
$plus_counter=$count+1; 
$sql2= $this->db->set("counter",$plus_counter)->update('visitor_counter');
?>
</footer>

</div>
</div>

<div id="mob-overlay" data-role="hide-mob-menu"></div></div>
</body>

<!--javascript Code-->
    <input type="hidden" value="FromHome" class="fromPage">
  <script src="<?php print base_url();?>assets/static.1mg.com/js/common.min.8c819e3996634700b1b2772a8c87b995.js"></script>
  <script>$(document).ready(function(){
    userFlow.initSearchBar();
    userFlow.initPincodeContainer();
    userFlow.initModal();
    userFlow.initHeaderEvents();
    userFlow.initFooterEvents();
    userFlow.initHeader();
    userFlow.initScrollTop();
  });
  </script>
  <script>var googletag = googletag || {};
  googletag.cmd = googletag.cmd || [];</script>
  <noscript>
  <iframe src="https://www.googletagmanager.com/ns.php?id=GTM-KR9MB8" height="0" width="0" style="display:none;visibility:hidden"></iframe>
  </noscript>
  <script>(function(w, d, s, l, i) {
    w[l] = w[l] || [];
    w[l].push({'gtm.start':
        new Date().getTime(),event:'gtm.js'});
    var f = d.getElementsByTagName(s)[0],
        j = d.createElement(s),dl = l != 'dataLayer' ? '&l=' + l : '';
    j.async = true;
    j.src =
    '../www.googletagmanager.com/gtm5445.php?id=' + i + dl;
    f.parentNode.insertBefore(j, f);
  })(window, document, 'script', 'dataLayer', 'GTM-KR9MB8');</script>
  <script type="text/javascript">$(document).ready(function () {
    // dataLayer.push({event: 'newGAEvent', eventCategory: 'Home', eventAction: 'Page Load'});
    userFlow.initHomePage();
    googletag.cmd.push(function() { googletag.display('div-gpt-ad-1471440623242-0'); });
    googletag.cmd.push(function() { googletag.display('div-gpt-ad-1471803047246-0'); });
  });</script>
  <script>googletag.cmd.push(function() {
    googletag.defineSlot('/67416580/WEB_1MG_HOME_ATF_BANNER_0_728x90', [728, 90], 'div-gpt-ad-1471440623242-0')
      .addService(googletag.pubads())
      .setTargeting("meta_therapy_area", JSON.parse(localStorage.getItem("therapeuticClasses")))
      .setTargeting("meta_manufacturer_id", JSON.parse(localStorage.getItem("manufacturerIds")))
      .setTargeting("meta_sku_type", JSON.parse(localStorage.getItem("skuTypes")))
      .setTargeting("meta_cart_value", JSON.parse(localStorage.getItem("cartValues")))
      .setTargeting("city", localStorage.getItem("city"));
    googletag.pubads().enableSingleRequest();
    googletag.enableServices();
  });
  
  
 googletag.cmd.push(function() {
    googletag.defineSlot('/67416580/WEB_MOBILE_1MG_HOME_ATF_BANNER_0_320x50', [320, 50], 'div-gpt-ad-1471803047246-0')
      .addService(googletag.pubads())
      .setTargeting("meta_therapy_area", JSON.parse(localStorage.getItem("therapeuticClasses")))
      .setTargeting("meta_manufacturer_id", JSON.parse(localStorage.getItem("manufacturerIds")))
      .setTargeting("meta_sku_type", JSON.parse(localStorage.getItem("skuTypes")))
      .setTargeting("meta_cart_value", JSON.parse(localStorage.getItem("cartValues")))
      .setTargeting("city", localStorage.getItem("city"));
    googletag.pubads().enableSingleRequest();
    googletag.enableServices();
  });</script>
 <script type="application/ld+json">{
    "@context" : "http://schema.org", "@type" : "Organization", "name" : "1mg", "url" : "https://www.1mg.com",
    "sameAs" : ["https://www.facebook.com/1mgOfficial/","https://twitter.com/1mgofficial","https://plus.google.com/+Healthkartplus",
    "https://www.linkedin.com/company/1mg","https://www.youtube.com/channel/UCNUvsEya-Jq_Pw1t6R47hew"]
  }
  </script>
  <div class="push"></div>
  <!--Javascript Code End-->	
</html>