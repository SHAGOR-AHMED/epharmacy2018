<div class="boxwithgradient">
    <h2 class="pingMainHeading">New Arrival</h2>

    <div class="width875right maxh325 oflh">
        <a id="topsellprev" href="javascript:void(0);" class="leftScrollrel">
        <img src="<?php echo base_url(); ?>assets/img/icon/left_arow.png" alt="Left" />
        </a>
        <a id="topsellnext" href="javascript:void(0);" class="rightScrollrel">
        <img src="<?php echo base_url(); ?>assets/img/icon/right_arow.png" alt="Right" />
        </a>
        <div style="width:auto; overflow:hidden;">
            <div class="related_Products_list">
                <ul id="new_arrival" style="left:0px!important;">
                    
                    <?php foreach ($query7 as $new_arrival) { ?>

                        <!-- <li>
                            <table class="tablecss">

                                <tr>
                                    <td class="txtcenter h150">
                                        <div>
                                            <div class="product-image">
                                            <a href="<?php echo base_url('product_details/'.$new_arrival->prod_id); ?>">
                                                    <img src="<?php echo base_url(); ?>assets/img/product_image/<?php print $new_arrival->image; ?>" class="maxw147 maxh147" alt="<?php print $new_arrival->prod_name; ?>" title="<?php print $new_arrival->prod_name; ?>" />
                                            </a>

                                            <a class="product-hover" href="<?php echo base_url('product_details/'.$new_arrival->prod_id); ?>"> <i class="fa fa-eye-slash"></i> View Details</a>
                                            </div>
                                        </div>
                                    </td>
                                </tr>

                                <tr>
                                    <td></td>
                                </tr>

                                <tr>
                                    <td>
                                        <a href="<?php echo base_url('product_details/' . $new_arrival->prod_id); ?>" style='font-size:12px!important' class="blue13normal" title="<?php print $new_arrival->prod_name; ?>"><?php print $new_arrival->prod_name; ?></a>



                                <tr style="height:5px;">
                                    <td></td>
                                </tr>

                                <tr>
                                    <td class="txtleft">
                                        <span class="txt20 txtgreen"><?php print $new_arrival->prod_price; ?> /-</span>
                                    </td>
                                </tr>

                            </table>
                        </li> -->

                 <li style="border:1px solid #ccc">
                    <table class="tablecss">
                        <tbody>

                            <tr>
                                <td class="txtcenter h150">
                                    <div class="product-image"><a href="<?php echo base_url('product_details/' . $new_arrival->prod_id); ?>">
                                            <img src="<?php echo base_url(); ?>assets/img/product_image/<?php print $new_arrival->image; ?>" class="maxw147 maxh147" alt="<?php print $new_arrival->prod_name; ?>" title="<?php print $new_arrival->prod_name; ?>">
                                        </a>
                                        <a class="product-hover" href="<?php echo base_url('product_details/' . $new_arrival->prod_id); ?>"> <i class="fa fa-eye-slash"></i> View Details</a>                                                                        
                                    </div>
                                </td>
                            </tr>

                            <tr>
                                <td></td>
                            </tr>

                            <tr>
                                <td>
                                    <a href="<?php echo base_url('product_details/' . $new_arrival->prod_id); ?>" class="blue13normal" title="<?php print $new_arrival->prod_name; ?>"><?php print $new_arrival->prod_name; ?></a>
                                </td>
                            </tr>

                            <tr style="height:5px;">
                                <td></td>
                            </tr>


                            <tr>
                                <td class="txtleft">
                                    <span class="txt20 txtgreen"><?php print $new_arrival->prod_price; ?></span>
                                </td>
                            </tr>

                        </tbody>
                    </table>
                </li>

                    <?php } ?>
                </ul>
            </div>

        </div>
    </div>
</div>

<!-- physical therapy and tehab -->

<div class="boxwithgradient">
    <h2 class="pingMainHeading">Physical Therapy &amp; Rehab</h2>
    <div class="related_Products_list">
        <ul>

            <?php
            foreach ($query8 as $physical_therapy) {
//                $id1 = $physical_therapy->prod_catid;
//                if ($id1 == 35) {
                ?>

                <li style="border:1px solid #ccc">
                    <table class="tablecss">
                        <tbody>

                            <tr>
                                <td class="txtcenter h150">
                                    <div class="product-image"><a href="<?php echo base_url('product_details/' . $physical_therapy->prod_id); ?>">
                                            <img src="<?php echo base_url(); ?>assets/img/product_image/<?php print $physical_therapy->image; ?>" class="maxw147 maxh147" alt="<?php print $physical_therapy->prod_name; ?>" title="<?php print $physical_therapy->prod_name; ?>">
                                        </a>
                                        <a class="product-hover" href="<?php echo base_url('product_details/' . $physical_therapy->prod_id); ?>"> <i class="fa fa-eye-slash"></i> View Details</a>                                                                        
                                    </div>
                                </td>
                            </tr>

                            <tr>
                                <td></td>
                            </tr>

                            <tr>
                                <td>
                                    <a href="<?php echo base_url('product_details/' . $physical_therapy->prod_id); ?>" class="blue13normal" title="<?php print $physical_therapy->prod_name; ?>"><?php print $physical_therapy->prod_name; ?></a>
                                </td>
                            </tr>

                            <tr style="height:5px;">
                                <td></td>
                            </tr>


                            <tr>
                                <td class="txtleft">
                                    <span class="txt20 txtgreen"><?php print $physical_therapy->prod_price; ?></span>
                                </td>
                            </tr>

                        </tbody>
                    </table>
                </li>

            <?php }
            //} 
            ?>

        </ul>
    </div>
</div>



<!-- support and braces -->
<div class="boxwithgradient">
    <h2 class="pingMainHeading">Support &amp; Braces</h2>
    <div class="related_Products_list">
        <ul>

            <?php
            foreach ($query22 as $braces) { ?>

                <li style="border:1px solid #ccc">
                    <table class="tablecss">
                        <tbody>

                            <tr>
                                <td class="txtcenter h150">
                                    <div class="product-image"><a href="<?php echo base_url('product_details/' . $braces->prod_id); ?>">
                                            <img src="<?php echo base_url(); ?>assets/img/product_image/<?php print $braces->image; ?>" class="maxw147 maxh147" alt="<?php print $braces->prod_name; ?>" title="<?php print $braces->prod_name; ?>">
                                        </a>
                                        <a class="product-hover" href="<?php echo base_url('product_details/' . $braces->prod_id); ?>"> <i class="fa fa-eye-slash"></i> View Details</a>                                                                        								
                                    </div>
                                </td>
                            </tr>

                            <tr>
                                <td></td>
                            </tr>

                            <tr>
                                <td>
                                    <a href="<?php echo base_url('product_details/' . $braces->prod_id); ?>" class="blue13normal" title="<?php print $braces->prod_name; ?>"><?php print $braces->prod_name; ?></a>
                                </td>
                            </tr>

                            <tr style="height:5px;">
                                <td></td>
                            </tr>


                            <tr>
                                <td class="txtleft">
                                    <span class="txt20 txtgreen"><?php print $braces->prod_price; ?></span>
                                </td>
                            </tr>

                        </tbody>
                    </table>
                </li>

            <?php }?>

        </ul>
    </div>
</div>


<!-- wound care -->
<div class="boxwithgradient">
    <h2 class="pingMainHeading">Wound Care</h2>
    <div class="related_Products_list">
        <ul>

            <?php
            foreach ($query23 as $wound_care) { ?>

                <li style="border:1px solid #ccc">
                    <table class="tablecss">
                        <tbody>

                            <tr>
                                <td class="txtcenter h150">
                                    <div class="product-image"><a href="<?php echo base_url('product_details/' . $wound_care->prod_id); ?>">
                                            <img src="<?php echo base_url(); ?>assets/img/product_image/<?php print $wound_care->image; ?>" class="maxw147 maxh147" alt="<?php print $wound_care->prod_name; ?>" title="<?php print $wound_care->prod_name; ?>">
                                        </a>
                                        <a class="product-hover" href="<?php echo base_url('product_details/'.$wound_care->prod_id); ?>"> View Details</a>                                                                
                                    </div>
                                </td>
                            </tr>

                            <tr>
                                <td></td>
                            </tr>

                            <tr>
                                <td>
                                    <a href="<?php echo base_url('product_details/' . $wound_care->prod_id); ?>" class="blue13normal" title="<?php print $wound_care->prod_name; ?>"><?php print $wound_care->prod_name; ?></a>
                                </td>
                            </tr>

                            <tr style="height:5px;">
                                <td></td>
                            </tr>


                            <tr>
                                <td class="txtleft">
                                    <span class="txt20 txtgreen"><?php print $physical_therapy->prod_price; ?></span>
                                </td>
                            </tr>

                        </tbody>
                    </table>
                </li>

            <?php } ?>

        </ul>
    </div>
</div>

</div><!-- End: content -->
</div>
</div>
</div>
</div>