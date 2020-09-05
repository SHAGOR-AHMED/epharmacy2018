

		var site_url=document.getElementById("site_url").value;

		var j = jQuery.noConflict();

		var common_url = ''+site_url+'common/';

		var pathToImages = ''+site_url+'common/calendar/';

		var modify_url = ''+site_url+'modifyfile/';

		j(document).ready(function(){

			onloadbody();

				





			j("#back-top").hide();



			j("ul.sf-menu").superfish({

				animation: {height:'show'},   // slide-down effect without fade-in

				delay:     1200               // 1.2 second delay on mouseout

			});



			j(window).scroll(function () {

				if (j(this).scrollTop() > 100) {

					j('#back-top').fadeIn();

				} else {

					j('#back-top').fadeOut();

				}

			});



			// scroll body to 0px on click

			j('#back-top a').click(function () {

				j('body,html').animate({

					scrollTop: 0

				}, 800);

				return false;

			});



			j('.cart').click(function () {

				window.location.href = ""+site_url+"product/myshoppingcart";

			});

		});



		//confirm cart to check list start



		//confirm cart to check list end



		function onloadbody(){

			j("#pageloadingbar").fadeIn(100);

		}



		function deleteloading(){

			j("#pageloadingbar").fadeOut(100);

		}



		function show_login_anywherepopup_form(){

			var popID = 'show_login_anywherepopup_form'; //Get Popup ID

			var popURL = '#?w=580'; //Get Popup href to define size

			show_popup(popID, popURL);

			j('#submit_frmlogin').click(function(){

				login_member_anywhere();

			});

		}



		function login_member_anywhere(){

			var member_email = document.getElementById("member_any_email");

			var member_pass = document.getElementById("member_any_pass");

			

			if(member_email.value == ''){

				alert("Please enter email");

				member_email.focus();

			}

			else if(emailcheck(member_email.value)==false) {

				alert("You are missing valid email.");

				member_email.focus();

				return(false);

			}

			else if(member_pass.value == ''){

				alert("Please enter password");

				member_pass.focus();

			}

			else{

				var emailval = member_email.value;

				var passval = member_pass.value;

				var redirectUrl = location.href;



				j.post(""+site_url+"customers/customers_login_anywhere", {customers_email:emailval, customers_password:passval,redirectUrl:redirectUrl},

				function(data){

				//	alert(data);

					if(data == "ERROR"){

						j('#showmsg').html('User name or password is worng.Please Try again');

						member_email.focus();

					}

					else{

						window.location = data;

					}

				});

			}

		}



		function increaseonetablefieldvalue(tablename, tableidvalue, increasefieldname){

			j.post(""+site_url+"admin/increaseonetablefieldvalue", {tablename:tablename, tableidvalue:tableidvalue,increasefieldname:increasefieldname},

			function(data){

				if(data == "OK"){

					alert('Your request has been successfull done. Please refresh browser to see its effects.');

				}

				else{

					alert('Sorry! Could not update your request. Please contact with us about your request.');

				}

			});

		}



		function checkformandreturn(e){

			if (e.keyCode == 13) {

				login_member_anywhere();

			}

		}

	



		j('a[href*=#]').click(function(e) {

			var href = j.attr(this, 'href');

			if (href != "#") {

				j('html, body').animate({

					scrollTop: j(href).offset().top - 81

				}, 500);

			}

			else {

				j('html, body').animate({

					scrollTop: 0

				}, 500);

			}

			return false;

		});





		var nt_title = j("#nt-title").newsTicker({

			row_height: 40,

			max_rows: 1,

			duration: 3000,

			pauseOnHover: 1

		});

		var nt_example1 = j("#nt-example1").newsTicker({

			row_height: 80,

			max_rows: 3,

			duration: 4000,

			prevButton: j("#nt-example1-prev"),

			nextButton: j("#nt-example1-next")

		});

		var nt_example2 = j("#nt-example2").newsTicker({

			row_height: 60,

			max_rows: 1,

			speed: 300,

			duration: 6000,

			prevButton: j("#nt-example2-prev"),

			nextButton: j("#nt-example2-next"),

			hasMoved: function() {

				j("#nt-example2-infos-container").fadeOut(200, function(){

					j("#nt-example2-infos .infos-hour").text(j("#nt-example2 li:first span").text());

					j("#nt-example2-infos .infos-text").text(j("#nt-example2 li:first").data('infos'));

					j(this).fadeIn(400);

				});

			},

			pause: function() {

				j("#nt-example2 li i").removeClass('fa-play').addClass('fa-pause');

			},

			unpause: function() {

				j("#nt-example2 li i").removeClass('fa-pause').addClass('fa-play');

			}

		});

		j("#nt-example2-infos").hover(function() {

			nt_example2.newsTicker('pause');

		}, function() {

			nt_example2.newsTicker('unpause');

		});

		var state = 'stopped';

		var speed;

		var add;

		var nt_example3 = j("#nt-example3").newsTicker({

			row_height: 80,

			max_rows: 1,

			duration: 0,

			speed: 10,

			autostart: 0,

			pauseOnHover: 0,

			hasMoved: function() {

				if (speed > 700) {

					j("#nt-example3").newsTicker("stop");

					console.log('stop')

					j("#nt-example3-button").text("RESULT: " + j("#nt-example3 li:first").text().toUpperCase());

					setTimeout(function() {

						j("#nt-example3-button").text("START");

						state = 'stopped';

					},2500);



				}

				else if (state == 'stopping') {

					add = add * 1.4;

					speed = speed + add;

					console.log(speed)

					j("#nt-example3").newsTicker('updateOption', "duration", speed + 25);

					j("#nt-example3").newsTicker('updateOption', "speed", speed);

				}

			}

		});



		j("#nt-example3-button").click(function(){

			if (state == 'stopped') {

				state = 'turning';

				speed = 1;

				add = 1;

				j("#nt-example3").newsTicker('updateOption', "duration", 0);

				j("#nt-example3").newsTicker('updateOption', "speed", speed);

				nt_example3.newsTicker('start');

				j(this).text("STOP");

			}

			else if (state == 'turning') {

				state = 'stopping';

				j(this).text("WAITING...");

			}

		});

		

		//======================================================================================================================================//

		

								function show_addtocart_popup(product_id, quantityfield, action, product_quantity){



									if(quantityfield !=1){
										var quantity = parseInt(document.getElementById(quantityfield).value);
									}
									else{
										var quantity = quantityfield;
									}
									
									if(product_quantity<quantity){
										quantity = product_quantity;
										if(quantityfield !=1){
											document.getElementById(quantityfield).value = quantity;
											alert("Only "+quantity+" available in stock");
											return false;
										}
									}
									
									if(quantity < 1)

									{

									alert('Please add at least 1 Quantity');

									return false;

									}



									//var popURL = '#?w=400'; //Get Popup href to define size

									//var customers_id = <?php echo $customers_id;?>;

									document.frm_addtocart_form.cartproduct_id.value = product_id;

									document.frm_addtocart_form.cartquantity.value = quantity;

									document.frm_addtocart_form.cartaction.value = action;



									//alert(product_size);

								//	return false;

									addtocart(product_id,quantity,action);



									//addtocartpopup();



								}

								function show_addtocart_popup_new(product_id,product_name,product_price,product_discount,product_thumbimage,product_weight,product_shipping_type,shipping_rate,product_sku,quantity,action){



									addtocart(product_id,product_name,product_price,product_discount,product_thumbimage,product_weight,product_shipping_type,shipping_rate,product_sku,quantity,action);

									//addtocartpopup();

								}

								function addtocart(product_id,quantity,action){



									var product_id =product_id;



									var quantity=quantity;

									//alert(quantity);

									var action=action;



									if (product_id > 0){



									j.post(""+site_url+"product/addtocart", { "product_id":product_id,"quantity":quantity,"action":action },

										function(data){

										//alert(data.result+""+data.totalprice);

											j("#show_shoppingcart_shortlist").html(data.result);

											j("#product_price").html('$'+data.totalprice);

											j("#show_shoppingcart_shortlist").show("blind");



											closethelist();

										}, "json");

										j("#shortcartlistdetails").slideUp(2000);



										addtocartpopup();



									}

								}

								 function addtocartpopup(){



									 j('.addToCartsmall').click(function(){





										 var elem = j(this).closest('.stock_table');



										 j.confirm({

											 'title'		: 'Items added to your Cart',

											 'message'	: 'All Selected Products added in  to your Cart',

											 'buttons'	: {

												 'Continue shopping'	: {

													 'class'	: 'gray',

													 'action': function(){



													 }

												 },

												 'Checkout'	: {

												 'class'	: 'blue',

													'action': function(){

													 checkoutok();

													 }	// Nothing to do in this case. You can as well omit the action property.

												 }

											 }

										 });



								 });



									 j('.a-button-input').click(function(){



										 var elem = j(this).closest('.stock_table');



										 j.confirm({

											 'title'		: 'Items added to your Cart',

											 'message'	: 'All Selected Products added in  to your Cart',

											 'buttons'	: {

											 'Continue shopping'	: {

											 'class'	: 'gray',

											 'action': function(){

											 }

										 },

										 'Checkout'	: {

													 'class'	: 'blue',

													 'action': function(){

													 checkoutok();

													 }	// Nothing to do in this case. You can as well omit the action property.

												 }

											 }

										 });



									 });

									}

								 function checkoutok(){

									 window.location=''+site_url+'product/myshoppingcart';

								 }

								function removeproductfromcart(product_id){

									j('#show_deletefromcartmessage').html('Are you sure to remove this product &ldquo;'+product_id+'from your cart list?');

									var popID = 'show_deletefromcartpopup_form'; //Get Popup ID

									var popURL = '#?w=400'; //Get Popup href to define size

									show_popup(popID, popURL);

									 j('#removeproduct').click(function(){

										removefromcart(product_id);

										 j("#removeproduct").fadeOut(100);



										 j('#fade , .popup_block').fadeOut(function() {

											 j('#fade, a.close').remove();  //fade them both out

										 });

									 });

								}

								function removefromcart(product_id){

									j('#show_shoppingcart_shortlist').hide('slow');



									if(product_id>0){

										j.post(""+site_url+"index.php/product/removeproductfromcart111", {"product_id":product_id},

										function(data){



											j("#show_shoppingcart_shortlist").html(data);

											j("#show_shoppingcart_shortlist").show("blind");

											window.location=''+site_url+'product/myshoppingcart/';

										});

									}

								}

								//removefromcart();

								function customersremoveproductfromcart(product_id, product_name, product_size,customers_id){



									j('#customersshow_deletefromcartmessage').html('Do you sure want to remove this product &ldquo;'+product_name+'('+product_size+')&rdquo; from your cart list?');

									var popID = 'customersshow_deletefromcartpopup_form'; //Get Popup ID

									var popURL = '#?w=400'; //Get Popup href to define size

									show_popup(popID, popURL);

									 j('#customersremoveproduct').click(function(){

										//removefromcart(product_id,product_size,customers_id);

										j('#customersshow_shoppingcart_shortlist').hide('slow');

											if(product_id>0){

											j.post(""+site_url+"index.php/product/removecustomerproductfromcart", {"product_id": product_id,"customers_id":customers_id},





												 function(data){



													 j("#show_shoppingcart_shortlist").html(data);

													 j("#show_shoppingcart_shortlist").show("blind");

													 window.location=''+site_url+'product/myshoppingcart/';

												 });

											}

										j("#customersremoveproduct").fadeOut(100);



										j('#fade , .popup_block').fadeOut(function() {

											j('#fade, a.close').remove();  //fade them both out

										});

									});

								}

								// function customersremovefromcart(product_id,product_size,customers_id){

									// j('#customersshow_shoppingcart_shortlist').hide('slow');

									// if(product_id>0){

									// j.post(""+site_url+"product/removecustomerproductfromcart", {"product_id": product_id,"product_size":product_size"customers_id":customers_id},





										 // function(data){



											 // j("#show_shoppingcart_shortlist").html(data);

											 // j("#show_shoppingcart_shortlist").show("blind");

											 // window.location=''+site_url+'product/myshoppingcart/';

										 // });

									// }

								// }

								function showpaymentgetwayextrafield(paymentgetwayval){

									j('#showpaymentgetwayextrafield').hide('slow');

									var extrafield = '';

									if(paymentgetwayval=='Bank' || paymentgetwayval=='Creditcard'){

										j.post(""+site_url+"product/payment_getwaydetails", { "paymentgetwayval": paymentgetwayval},

										function(data){

											j('#showpaymentgetwayextrafield').html(data.result).hide();

											j('#showpaymentgetwayextrafield').slideDown(500);

										}, "json");

									}

								}

								function alertforproduct_quantity(product_quantity, current_qty){

									if(product_quantity==0){

										alert("This product is not available now. Please contact with admin of this site.");

									}

									else if(current_qty>product_quantity){

										alert("Please order maximun QTY: "+product_quantity+". If you want more than this QTY then please contact with admin.");

									}



								}



								function checkproduct_quantity(productdetails_quantity, product_quantity){
									
									var current_qty = parseInt(document.getElementById(productdetails_quantity).value);

									var old_qty = parseInt(document.getElementById(product_quantity).value);

									if(current_qty>old_qty){

										alert("Please order maximun QTY: "+old_qty+". If you want more than this QTY then please contact with admin.");

										document.getElementById(productdetails_quantity).value = old_qty;

									}

									else if(current_qty==0){

										alert("Please order minimun QTY: 1");

										document.getElementById(productdetails_quantity).value = old_qty;

									}

								}

								function closethelist(){

									j("#shortcartlistdetails").slideUp(500);

								}





								function showpopupboxforlike(product_id, product_name, member_id) {

									if(product_id>0){



									j.post(""+site_url+"product/product_like", { "product_id": product_id, "member_id": member_id},

										function(data){

											if(data.message=='OK'){

												j('#likemessage').html('Thanks a lot for like this product "'+product_name+'"');

											}

											else{

												j('#likemessage').html(data.message);

											}

											var popID = 'show_showfacebox'; //Get Popup ID

											var popURL = '#?w=400'; //Get Popup href to define size

											show_popup(popID, popURL);



											var myInterval = window.setInterval(function (a,b) {

											  //myNumber++;

											},2000);

											window.setTimeout(function (a,b) {

											  clearInterval(myInterval);

											  close_popup();

											},5000);



										}, "json");

									}

								}



								function showpopupboxforaddtofavorite(product_id, product_name, member_id) {

								//	alert("OK");

									if(product_id>0){

									//	alert(product_id);

									j.post(""+site_url+"product/product_favorite", { "product_id": product_id, "member_id": member_id},

										function(data){

											if(data.message=='OK'){

												j('#likemessage').html('Thanks a lot for add to favorite this product "'+product_name+'"');

											}

											else{

												j('#likemessage').html(data.message);

											}

											var popID = 'show_showfacebox'; //Get Popup ID

											var popURL = '#?w=400'; //Get Popup href to define size

											show_popup(popID, popURL);



											var myInterval = window.setInterval(function (a,b) {

											  //myNumber++;

											},2000);

											window.setTimeout(function (a,b) {

											  clearInterval(myInterval);

											  close_popup();

											},5000);



										}, "json");

									}

								}



								function showpopupformessage(message) {

									if(message !=''){



										j('#likemessage').html(message);

										var popID = 'show_showfacebox'; //Get Popup ID

										var popURL = '#?w=400'; //Get Popup href to define size

										show_popup(popID, popURL);



										var myInterval = window.setInterval(function (a,b) {

										  //myNumber++;

										},1000);

										window.setTimeout(function (a,b) {

										  clearInterval(myInterval);

										  close_popup();

										},5000);

									}

								}



	

	function check_sitesearch_form(){

		var oField = document.getElementById("search_site");

		if(oField.value == "Search..." || oField.value == ''){

			oField.focus();

			return(false);

		}

		return(true);

	}

	function res_check_sitesearch_form(){

		var oField = document.getElementById("res_search");

		if(oField.value == "Search..." || oField.value == ''){

			oField.focus();

			return(false);

		}

		return(true);

	}	

	var siteurl = ''+site_url+'';

	

	var productbaseurl = ''+siteurl+'application/views/module/product_image/';	

	j(function() {

		j( "#search_site" ).autocomplete({

			source:data,

			select: function( event, ui ) {

				j( "#search_site" ).val( ui.item.ur );



				window.location=siteurl+ui.item.ur;

				return false;

			}

		}).data("autocomplete" )._renderItem = function( ul, item ) {

			if(item.ps>0){

							var price="<div class=\"searchprice\" width=\"50\"><s>"+item.pp+"</s></div>"+

									"<div class=\"searchprice\" width=\"50\"><b>$"+item.ps+"</b></div>";

							}

							else

							{

							var price="<div class=\"searchprice\" width=\"50\">"+item.pp+"</div>";

							}

			

			if(item.previ>0){

				var review= "<img style=\"vertical-align:middle !important;\"  src=\""+siteurl+"modifyfile/images/rating-icon/stars"+item.previ+".gif\"/>";

				}

				else

				{

				var review="";

				}

			if(item.tp>0)

			{

				var item_icon_image="<img style=\"vertical-align:middle!important;position:relative;top:-50px;max-width:50px; max-height:50px;\" src=\""+siteurl+"modifyfile/images/banner/icon_topseller.png\"/>";

			}

			else

			{

				var item_icon_image="";

			}

			return j( "<li></li>" )

			.data( "item.autocomplete", item)

			.append("<a title=\""+item.pn+"\">"+

						"<div class=\"search_row\" >"+

							"<div class=\"search_img\" style=\"height:53px;\">"+

								"<img alt=\""+item.pn+"\" style=\"vertical-align:middle !important;max-width:50px; max-height:50px;\" src=\""+productbaseurl+item.im+"\" />"+

								""+item_icon_image+""+

							"</div>"+

							"<div class=\"searchsku\">"+item.pu+"</div>"+

							"<div class=\"seachname\">"+item.pn+"<br/>"+review+"</div>"+

							"<div class=\"searchprice\">"+price+"</div>"+

							"</div>"+

					"</a>")

			.appendTo(ul);			

			

		};

	});



	j(function() {

		j( "#res_search" ).autocomplete({

			source:data,

			select: function( event, ui ) {

				j( "#res_search" ).val( ui.item.ur );

				window.location=siteurl+ui.item.ur;

				return false;

			}

		}).data("autocomplete" )._renderItem = function( ul, item ) {

			if(item.ps>0){

							var price="<div class=\"searchprice\" width=\"50\"><s>"+item.pp+"</s></div>"+

									"<div class=\"searchprice\" width=\"50\"><b>$"+item.ps+"</b></div>";

							}

							else

							{

							var price="<div class=\"searchprice\" width=\"50\">"+item.pp+"</div>";

							}

			

			if(item.previ>0){

				var review= "<img style=\"vertical-align:middle !important;\"  src=\""+site_url+"modifyfile/images/rating-icon/stars"+item.previ+".gif\"/>";

				}

				else

				{

				var review="";

				}

			if(item.tp>0)

			{

				var item_icon_image="<img style=\"vertical-align:middle!important;position:relative;top:-50px;max-width:50px; max-height:50px;\" src=\""+site_url+"modifyfile/images/banner/icon_topseller.png\"/>";

			}

			else

			{

				var item_icon_image="";

			}

			return j( "<li></li>" )

			.data( "item.autocomplete", item)

			.append("<a title=\""+item.pn+"\">"+

						"<div class=\"search_row\" >"+

							"<div class=\"search_img\" style=\"height:53px;\">"+

								"<img alt=\""+item.pn+"\" style=\"vertical-align:middle !important;max-width:50px; max-height:50px;\" src=\""+productbaseurl+item.im+"\" />"+

								""+item_icon_image+""+

							"</div>"+

							"<div class=\"searchsku\">"+item.pu+"</div>"+

							"<div class=\"seachname\">"+item.pn+"<br/>"+review+"</div>"+

							"<div class=\"searchprice\">"+price+"</div>"+

							"</div>"+

					"</a>")

			.appendTo(ul);			

			

		};

	});

	

	function searchcategory(category_name){

		document.getElementById('searchproduct').value = document.getElementById('search_site').value;

		document.getElementById('searchcategory').value = category_name;

		setTimeout("document.frm_productwithcategorysearch.submit();",10);

	}

