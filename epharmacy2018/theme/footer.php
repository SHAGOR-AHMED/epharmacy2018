<style>
    #back-to-top {
    position: fixed;
    bottom: 40px;
    right: 40px;
    z-index: 9999;
    width: 32px;
    height: 32px;
    text-align: center;
    line-height: 30px;
    background: #f5f5f5;
    color: #444;
    cursor: pointer;
    border: 0;
    border-radius: 2px;
    text-decoration: none;
    transition: opacity 0.2s ease-out;
    opacity: 0;
}
#back-to-top:hover {
    background: #e9ebec;
}
#back-to-top.show {
    opacity: 1;
}
#content {
    height: 2000px;
}
    
</style>
<?php 
$data['query7']=$this->Home_model->new_arrival();
?>

<div id="footer"><!-- Begin: footer -->
    <div class="container">
        <div class="row">
            <div class="boxwithgradientwithbg">
                <div class="width300left borderright">
                    <h2 class="pingMainHeading">Top Rated Product</h2> 
                </div>
                <div class="width800right mxh415">
                    <script type="text/javascript">
                        
                        j(document).ready(function(){
                            j('#top_sellerandrecenthistory').carouFredSel({
                                width:878,
                                height: 'auto',
                                prev: '#continuetopsellprev',
                                next: '#continuetopsellnext',
                                auto: false,
                                scroll:1
                            });
                        });
                    </script>

                    <h2 class="pingMainHeading">Continue Shopping: Top Sellers</h2>
                    <a id="continuetopsellprev" href="javascript:void(0);" class="leftScrollrel"><img src="https://www.zogomedical.com/common/deatils_page/images/interface/left_arow.png" alt="Left" /></a>
                    <a id="continuetopsellnext" href="javascript:void(0);" class="rightScrollrel"><img src="https://www.zogomedical.com/common/deatils_page/images/interface/right_arow.png" alt="Right" /></a>
                    <div class="topseller">
                        <div class="related_Products_list">
                            <ul id="top_sellerandrecenthistory">
                                <?php 
                                    foreach ($query7 as $new_arrival) { ?>

                                        <li class="sr_li sr_li_btm_14">
                                            <table class="tablecss">
                                                <tr>
                                                    <td class="txtcenter h150">
                                                        <div class="product-image"><a href="<?php echo base_url('product_details/' . $new_arrival->prod_id); ?>">
                                                                <img src="<?php echo base_url(); ?>assets/img/product_image/<?php print $new_arrival->image; ?>" class="maxw147 maxh147" alt="<?php print $new_arrival->prod_name; ?>" title="<?php print $new_arrival->prod_name; ?>" />
                                                            </a>
                                                            <a class="product-hover" href="<?php echo base_url('product_details/' . $new_arrival->prod_id); ?>"> <i class="fa fa-eye-slash"></i> View Details</a>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>
                                                        <a href="#" class="blue11normal" title="5 (3)">                                     
                                                            <img src="https://www.zogomedical.com/modifyfile/images/rating-icon/stars5.gif" alt="5 (3)" /> (3)
                                                        </a>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>
                                                        <a href="<?php echo base_url('product_details/' . $new_arrival->prod_id); ?>" style='font-size:12px!important' class="blue13normal" title="<?php print $new_arrival->prod_name; ?>"><?php print $new_arrival->prod_name; ?>
                                                            
                                                        </a>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td class="txtleft ">
                                                        <span class="txt20 txtgreen"><?php print $new_arrival->prod_price; ?> /-</span>
                                                    </td>
                                                </tr>
                                            </table>
                                        </li>
                                        
                                 <?php } ?>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div><!-- End: footer -->
</div>

<div>
    <a href="#top" id="back-to-top" title="Back to top"><img src="<?php echo base_url();?>assets/img/icon/up-arrow.png" style="background-color: #FF5555;"></a>
</div>


<script src="<?php echo base_url(); ?>assets/js/jquery.ui.core.min.js"></script>
<script src="<?php echo base_url(); ?>assets/js/jquery.ui.widget.min.js"></script>
<script src="<?php echo base_url(); ?>assets/js/jquery.ui.position.min.js"></script>
<script src="<?php echo base_url(); ?>assets/js/jquery.ui.autocomplete.min.js"></script>
<script src="<?php echo base_url(); ?>assets/js/bootstrap.min.js"></script>
<script src="<?php echo base_url(); ?>assets/js/warp.js"></script>
<script src="<?php echo base_url(); ?>assets/js/accordionmenu.js"></script>
<script src="<?php echo base_url(); ?>assets/js/dropdownmenu.js"></script>
<script src="<?php echo base_url(); ?>assets/js/js.js"></script>
<script src="<?php echo base_url(); ?>assets/js/jquery.confirm.js"></script>
<!-- Need to modify -->
<script src="<?php echo base_url(); ?>assets/js/common.js"></script>
<script src="<?php echo base_url(); ?>assets/js/hoverIntent.js"></script>
<script src="<?php echo base_url(); ?>assets/js/superfish.js"></script>
<script src="<?php echo base_url(); ?>assets/js/jquery.carouFredSel-5.5.5-packed.js"></script>
<script src="<?php echo base_url(); ?>assets/js/js.js"></script>
<script src="<?php echo base_url(); ?>assets/js/tab_js.js"></script>
<script>
if ($('#back-to-top').length) {
    var scrollTrigger = 100, // px
        backToTop = function () {
            var scrollTop = $(window).scrollTop();
            if (scrollTop > scrollTrigger) {
                $('#back-to-top').addClass('show');
            } else {
                $('#back-to-top').removeClass('show');
            }
        };
    backToTop();
    $(window).on('scroll', function () {
        backToTop();
    });
    $('#back-to-top').on('click', function (e) {
        e.preventDefault();
        $('html,body').animate({
            scrollTop: 0
        }, 1000);
    });
}
</script>

</body>
</html>