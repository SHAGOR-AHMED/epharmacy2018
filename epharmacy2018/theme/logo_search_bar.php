<?php
if (isset($_SESSION['product_list'])):
    $cart_info = explode(",", $_SESSION['product_list']);
endif;
?>

<div class="container">
    <div class="row">

        <div class="col-md-4">
            <div> 
                <a href="<?php echo base_url(''); ?>">
                    <img src="<?php echo base_url(); ?>assets/img/logo/logo_new.png" class="img-responsive" />
                </a>
            </div> 
        </div>

        <div class="col-md-8">
            <div class="row">
                <div class="col-md-6 col-xs-8"><br>
                    <div class="header_topLeft">                    
                    <div class="top-search-border">
                        <div class="top-searchinput">
                            <form action="<?= base_url('live_search');?>" name="frm_sitesearch_form" accept-charset="utf-8" method="post">

                                <input type="text" name="search" id="search_site" placeholder="Search..." class="input_search1 ui-autocomplete-input" />
                                <input type="submit"  value="Search" class="top-searchinput2 bg-primary btn-xs" style="border:none;"/>
                                
                            </form>
                        </div>
                    </div>
                </div>
                </div>

                <div class="col-md-6 col-xs-4"><br>
                    <div class="cart cart_div">
                    <a href="<?php print base_url('show_cart');?>" >
                        <div class="cart">
                            <h3 class="productItems" id="show_shoppingcart_shortlist">(<?php print $this->cart->total_items() ;?>) Item</h3>
                            <div id="show_showfacebox" class="popup_block">
                                <div class="divcenter">
                                    <div style="width:100%;overflow:hidden;">
                                        <div id="likemessage"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="cart_button">
                                My Cart
                            </div>
                        </div>
                    </a>
                </div>
                </div>
            </div>
            
            
        </div>
        
    </div>
</div>