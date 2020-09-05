<?php include('marchant_menu.php');?>

<!--        <div class="container-fluid">
            <div class="row">-->
                <div class="col-md-9">
                    <?php if (validation_errors()) { ?>
                        <div class="alert alert-danger">
                            <?php
                                echo validation_errors();
                            ?>
                        </div>
                    <?php } ?>

                    <?php
                        $msg = $this->session->userdata('msg');
                        if (isset($msg)) {
                            echo '<div class="alert alert-danger">' . $msg . "</div>";
                            $this->session->unset_userdata('msg');
                        }
                    ?>
                    
                    <?php 
                        $img_msg = $this->session->userdata('img_msg');
                        if (isset($img_msg)) {
                            echo '<div class="alert alert-danger">' . $img_msg . "</div>";
                            $this->session->unset_userdata('img_msg');
                        }
                    ?>
                    <?php
                        $merchant_id = $this->session->userdata('marchant_id');
                    ?>

                    <form id="addproduct" method="post" action="add_product_save" enctype="multipart/form-data">       

                        <table class="table table-striped" border="0" cellpadding="0" cellspacing="0" align="center" style="border: 1px solid #D6D6D6;">
                            <tbody>
                                <tr>
                                    <td align="right"><div align="right"><strong>Select Category</strong></div></td>
                                    <td>&nbsp;</td>
                                    <td>
                                        <select class="form-control" name="category" id="category">
                                            <option value="">Select Categoty</option>
                                            <?php getAllcategory(); ?>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right"><div align="right"><strong>Select Sub Category</strong></div></td>
                                    <td>&nbsp;</td>
                                    <td>
                                        <select name="subcat_name" id="subcat_name" class="form-control">
                                            <option value="">Select Sub Categoty</option>
                                        </select>
                                    </td>
                                </tr>               

                                <tr>
                                    <td align="right"><div align="right"><strong>Select Body Part</strong></div></td>
                                    <td>&nbsp;</td>
                                    <td>
                                        <select name="body_part" class="form-control">
                                            <option>Select Body Part</option>
                                            <?php
                                            foreach ($query2 as $body_part) {
                                                ?> 
                                                <option value="<?php print $body_part->id; ?>"><?php print $body_part->body_part_name; ?></option>
                                            <?php } ?>
                                        </select></td>
                                </tr>             

                                <!-- <tr>
                                    <td align="right"><div align="right"><strong>Select Brand</strong></div></td>
                                    <td>&nbsp;</td>
                                    <td>
                                        <select name="brand"  class="form-control">
                                            <option>Select Brand</option>
                                            <?php
                                            foreach ($query3 as $brand_list) {
                                                ?>
                                                <option value="<?php print $brand_list->id; ?>"><?php print $brand_list->brand_name; ?></option>
                                            <?php } ?>
                                        </select></td>
                                </tr> -->

                                <tr>
                                    <td align="right"><div align="right"><strong>Product Name</strong></div></td>
                                    <td>&nbsp;</td>
                                    <td><input style="font-size: 16px; color: rgb(204, 0, 0);" name="productname" size="20"  type="text" class="form-control"></td>
                                </tr>

                                <tr>
                                    <td align="right"><div align="right"><strong>Price</strong></div></td>
                                    <td>&nbsp;</td>
                                    <td><input style="font-size: 16px; color: rgb(204, 0, 0);" name="productprice" size="20" type="text" class="form-control"></td>
                                </tr>
                               
                                    <input name="productcode" value="epm<?php print $merchant_id;?>" size="20" type="hidden" class="form-control">

                                <tr>
                                    <td align="right"><strong>Description</strong></td>
                                    <td>&nbsp;</td>
                                    <td>
                                        <textarea name="description" class="form-control"></textarea>
                                    </td>
                                </tr>

                                <tr>
                                    <td align="right"><div align="right"><strong>Upload Image</strong></div></td>
                                    <td>&nbsp;</td>
                                    <td><div id="maindiv">
                                            ** Only JPEG, JPG and PNG Type Image will be Uploaded. Image Size Should Be Less Than 100KB and also 4 Image only.

                                            <div id="filediv">
                                                <input name="image" type="file" id="file"/>
                                            </div>
                                            <br/>

                                        </div></td>
                                </tr>
                                
                                <tr>
                                    <td>&nbsp;</td>
                                    <td align="left">&nbsp;</td>
                                    <td align="left"><input type="submit" value="Add Product" name="submit" /></td>
                                </tr>
                            </tbody>
                        </table>
                    </form>
                </div>
            <!--</div>
        </div>-->
    </div>
</div>
</div> 

<?php require_once('page/footer.php'); ?>

<script type="text/javascript">

    $(document).ready(function () {
        $('#addproduct').validate({ // initialize the plugin
            rules: {
                category: {
                    required: true
                },
                subcat_name: {
                    required: true
                },
                 body_part: {
                    required: true
                },
                productname: {
                    required: true
                },
                productprice: {
                    required: true
                },
                description: {
                    required: true
                }

            }

        });

    });
   
</script>

<script type="text/javascript">

    $('#category').change(function () {
        $.get("<?php echo base_url()?>merchant_controller/getSubcatByCatId/" + this.value, function (data, status) {
            $('#subcat_name').html(data);
        });
        
    });
        
</script>