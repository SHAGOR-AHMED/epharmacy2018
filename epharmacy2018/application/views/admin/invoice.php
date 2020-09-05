<?php include('header.php'); ?>

<style type="text/css">
        
        body,td,input,select {
            font-family: Tahoma;
            font-size: 11px;
            color: #000000;
        }

        form {
            margin: 0px;
        }

        a {
            color: #000000;
        }

        #wrapper {
            width: 600px;
        }

        #invoicetoptables {
            width: 100%;
            background-color: #cccccc;
            border-collapse: seperate;
        }

        td#invoicecontent {
            background-color: #ffffff;
            color: #000000;
            font-size: 14px;
        }

        .unpaid {
            font-size: 16px;
            color: #cc0000;
            font-weight: bold;
        }

        .paid {
            font-size: 16px;
            color: #779500;
            font-weight: bold;
        }

        .refunded {
            font-size: 16px;
            color: #224488;
            font-weight: bold;
        }

        .cancelled {
            font-size: 16px;
            color: #cccccc;
            font-weight: bold;
        }

        .collections {
            font-size: 16px;
            color: #ffcc00;
            font-weight: bold;
        }

        #invoiceitemstable {
            width: 100%;
            background-color: #cccccc;
            border-collapse: seperate;
        }

        td#invoiceitemsheading {
            background-color: #efefef;
            color: #000000;
            font-weight: bold;
            text-align: center;
        }

        td#invoiceitemsrow {
            background-color: #ffffff;
            color: #000000;
        }

        .creditbox {
            border: 1px dashed #cc0000;
            font-weight: bold;
            background-color: #FBEEEB;
            text-align: center;
            width: 100%;
            padding: 10px;
            color: #cc0000;
            margin-left: auto;
            margin-right: auto;
        }

        #prod_info td{

            text-align: center;
            font-size: 14px;

        }

        #summary tr td{
            font-size: 14px;
        }

    </style>
<body>
    <div class="inner_content">
        <!-- /inner_content_w3_agile_info-->
        <div class="inner_content_w3_agile_info">
            <!-- /agile_top_w3_grids-->
            <div class="agile_top_w3_grids">
                
                <div class="block-content collapse in">              
                    <div class="span12">

                        <table cellspacing="1" width="80%" cellpadding="10" border="1px" align="center">
                            <tbody>
                                <tr>
                                    <td bgcolor="#ffffff" align="center">

                                        <h3>www.epharmacy.com.bd</h3>
                                        <h4>&nbsp;&nbsp;&nbsp;House No:55/A(4th Floor),Road No.4/A</h4>
                                        <h4>&nbsp;&nbsp;&nbsp;Dhanmondi,Dhaka-1209, Bangladesh</h4>
                                        <br>

                                        <table width="80%" id="invoicetoptables" cellspacing="0">
                                            <tbody>
                                                <tr>
                                                    <td colspan="2" id="invoicecontent" style="border:1px solid #cccccc">

                                                        <table width=100%" height="100" cellspacing="0" cellpadding="10" id="invoicetoptables">
                                                            <tbody>
                                                                <tr>
                                                                    <td width="50%" valign="top" id="invoicecontent" style="border:1px solid #cccccc">
                                                                        <strong><u>Invoice To</u></strong><br>
                                                                        <b>Name :</b> <?php echo $customer_info->customer_name;?><br>
                                                                        <b>Email :</b> <?php echo $customer_info->customer_user;?><br>
                                                                        <b>Mobile :</b> <?php echo $customer_info->customer_phone;?><br>
                                                                        <b>Address :</b> <?php echo $customer_info->customer_address?>,<?php //echo $customer_info->zip_code?><br>
                                                                        <b>Country :</b> <?php //echo $country_name; ?>Bangladesh<br>
                                                                    </td>

                                                                    <td width="50%" valign="top" id="invoicecontent" style="border:1px solid #cccccc">

                                                                        <strong><u>Ship To</u></strong><br>
                                        
                                        <b>Name :</b> <?php echo $order_info->customer_name;?><br>
                                                                        
                                        <b>Mobile :</b> <?php echo $order_info->mobile?><br>
                                        
                                        <b>Address :</b> <?php echo $order_info->shipping_addr?>, <br>
                                    
                                      <b>Country :</b>Bangladesh <?php //echo $shipping_info->city?>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>

                                                    </td>
                                                            
                                                </tr>
                                            </tbody>
                                        </table>

                                        <p><strong><u>Invoice</u> #inv-<?php echo $order_info->order_id?></strong><br>
                                            <b>Invoice Date :</b> <?php echo $order_info->order_date?><br>
                                            <b>Due Date :</b> <?php echo date('Y-m-d', strtotime($order_info->order_date. ' + 7 day'))?>
                                        </p>
                                        <hr/>
                                        <h3>Order Details</h3>
                                        <hr/>

                                        <table class="table table-striped table-bordered table-hover roni" border="1" width="100%" id="invoicetoptables" cellspacing="0">
                                            <thead>
                                                <tr>
                                                    <th class="image">Image</th>
                                                    <th class="name">Product Code</th>
                                                    <th class="quantity">Quantity</th>
                                                    <th class="price">Unit Price</th>
                                                    <th class="total">Total</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <?php
                                                    $total=0;
                                                    foreach($order_details_info as $v_order_info){
                                                ?>
                                                <tr id="prod_info">
                                                    <td class="image">
                                                        <a href="#">
                                                            <img src="<?php echo base_url()?>assets/img/product_image/<?php print $v_order_info->product_image;?>" width="50" height="40"  alt="Spicylicious store" />
                                                        </a>
                                                    </td>
                                                    <td class="name">
                                                        <a href="#"><?php echo $v_order_info->product_code;?></a>
                                                      <div> </div>
                                                    </td>
                                                    
                                                    <td class="quantity">
                                                       <?php echo $v_order_info->quantity;?>
                                                    </td>
                                                    <td class="price">
                                                        BDT <?php echo $v_order_info->amount;?>
                                                    </td>
                                                    <td class="total">
                                                        BDT <?php echo $v_order_info->quantity * $v_order_info->amount;?>
                                                    </td>
                                                </tr>
                                                <?php
                                                
                                                    $total = $total+$v_order_info->quantity * $v_order_info->amount;
                                                
                                                    } 
                                                ?>
                                            </tbody>
                                        </table>

                                        <table  align="right" width="30%" border="1px" id="summary">
                                            <tbody>
                                                <tr>
                                                    <td colspan="5"></td>
                                                    <td class="right"><b>Sub-Total :</b></td>
                                                    <td class="right numbers"> <?php echo $total;?>.Tk</td>
                                                </tr>
                                               <tr>
                                                    <td colspan="5"></td>
                                                    <td class="right"><b>Shipping Cost :</b></td>
                                                    <td class="right numbers"> 60 Tk
                                                        <?php
                                                            //echo 'BDT '.$shipping_cost;
                                                        ?>
                                                    </td>
                                                </tr>

                                                <!--<tr>
                                                    <td colspan="5"></td>
                                                    <td class="right"><b>Low Order Cost :</b></td>
                                                    <td class="right numbers">
                                                        <?php
                                                            $lowOrderCost = 500;
                                                            if($total >= 700){
                                                                echo 'BDT 0';
                                                            }else{
                                                                echo 'BDT '.$lowOrderCost;
                                                            }
                                                        ?>
                                                    </td>
                                                </tr>-->

                                                <tr>
                                                    <td colspan="5"></td>
                                                    <td class="right numbers_total"><b>Grand Total :</b></td>
                                                    <!--<td class="right numbers_total">
                                                        <?php 
                                                            if($total >= 700){

                                                                $g_total=$total + $shipping_cost;
                                                                echo 'BDT&nbsp;'.$g_total;

                                                            }elseif($total < 700){

                                                                $g_total=$total + $shipping_cost + $lowOrderCost;
                                                                echo 'BDT&nbsp;'.$g_total;
                                                            }
                                                            
                                                        ?>
                                                    </td>-->
                                                    <td><?php print $total+60;?>.Tk</ ></td>
                                                </tr>
                                            </tbody>
                                        </table>

                                        <?php
                                            if($order_info->status == 1){ ?>

                                            <table  align="center">
                                                <tbody>
                                                    <tr>
                                                        <td class="right">
                                                            <button class="btn btn-danger">
                                                            Order Status:
                                                            </button>
                                                        </td>
                                                        <td class="right numbers">
                                                            <div class="dropdown">
                                                                <button class="btn btn-primary" type="button"
                                                                    data-toggle="dropdown">Delivery Pending <span class="caret"></span>
                                                                </button>
                                                                <ul class="dropdown-menu">
                                                                    <li>
                                                                        <a href="<?= base_url('super_admin/ProductDelivered/'.$order_info->order_id) ?>">
                                                                            Product Delivered
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="<?= base_url('super_admin/CancleOrder/'.$order_info->order_id) ?>">
                                                                            Cancel Order
                                                                        </a>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        <?php } ?>

                                    </td>
                                </tr>
                            </tbody>
                       </table>
                        
                    </div>
                </div>
            </div>                       
        </div>                          
    </div><!-- //inner_content_w3_agile_info-->

<?php include('footer.php'); ?>