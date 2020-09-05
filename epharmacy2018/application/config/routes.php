<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	https://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
|	$route['translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples:	my-controller/index	-> my_controller/index
|		my-controller/my-method	-> my_controller/my_method
*/
$route['default_controller'] = 'Welcome';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;

$route['skincare']='Welcome/skincare';
$route['product_description/(:any)']='Welcome/product_description/$1';
$route['labs']='Welcome/labs';
$route['health_product']='Welcome/health_product';
$route['medical_product']='Welcome/medical_product';
$route['doctor']='Welcome/doctor';
$route['upload_prescription']='Welcome/prescription';
$route['cat/(:any)']='Welcome/cat/$1';
$route['subcat/(:any)']='Welcome/subcat/$1';

$route['medical_devices']='Welcome/medical_devices';
$route['diabetes_monitoring']='Welcome/diabetes_monitoring';
$route['fitness_management']='Welcome/fitness_management';
$route['only_fitness']='Welcome/only_fitness';
$route['only_medical']='Welcome/only_medical';
$route['baby_child']='Welcome/baby_child';
$route['body_part/(:any)']='Welcome/body_part/$1';

$route['mother_care']='Welcome/mother_care';
$route['sexual_wellness']='Welcome/sexual_wellness';
$route['skin_care']='Welcome/skin_care';
$route['support_brace']='Welcome/support_brace';

$route['about']='Welcome/about';
$route['contact']='Welcome/contact';

/*--Live Search--*/
$route['live_search']='Person/index';
 $route['live_search2']='Person/brand';
/*--End Live Search--*/

/*--Add Cart--*/
$route['add_cart/(:num)']='Add_cart/cart/$1';
$route['show_cart']='Add_cart/show_cart';
$route['up_product']='Add_cart/up_product';
$route['remove/(:any)']='Add_cart/remove/$1';
$route['remove_all']='Add_cart/remove_all';
$route['clogin']='Add_cart/login';
$route['clogin_access']='Add_cart/login_access';
//$route['cregister']='Add_cart/register';
$route['cregistration']='Add_cart/registration';
$route['shipping']='Add_cart/shipping';
$route['confirm_order']='Add_cart/confirm_order';
/*--End add Cart--*/

/*--Upload Prescription--*/
$route['login']='Home_controller/login';
$route['login_access']='Home_controller/login_access';
$route['show_prescription']='Home_controller/show_prescription';
$route['registration']='Home_controller/registration_page';
$route['register']='Home_controller/save_insert';
/*--End Upload Prescription--*/

/*--marchant corner--*/
$route['login_member']='Merchant_controller/member_login';
$route['login_check']='Merchant_controller/merchant_login';
$route['manage_profile']='Merchant_controller/profile_manage';
$route['dashboard']='Merchant_controller/dashboard';
$route['register_member']='Merchant_controller/merchant_register';
$route['add_product']='Merchant_controller/add_product';
$route['order_management']='Merchant_controller/order_management';
$route['deal_management']='Merchant_controller/deal_management';
$route['add_product_save']='Merchant_controller/add_product_save';
$route['product']='Merchant_controller/product';
$route['logout']='Merchant_controller/Logout';

$route['prod_shift/(:any)']='Merchant_controller/prod_shift/$1';
$route['prod_delivery/(:any)']='Merchant_controller/prod_delivery/$1';
$route['prod_cencel/(:any)']='Merchant_controller/prod_cencel/$1';

$route['deliver_order']='Merchant_controller/deliver_order'; 
$route['cencel_order']='Merchant_controller/cencel_order';
$route['shift_order']='Merchant_controller/shift_order';
/*--end marchant corner--*/

/*--Prescription Panel--*/
$route['customer']='Prescription_admin/customer';
$route['prescription']='Prescription_admin/prescription';
$route['prescription_delete/(:num)']='Prescription_admin/delete/$1';
$route['comment']='Prescription_admin/comment';
$route['comment_delete/(:num)']='Prescription_admin/comment_delete/$1';
$route['reply']='Prescription_admin/reply';
$route['active/(:num)']='Prescription_admin/active/$1'; 
$route['inactive/(:num)']='Prescription_admin/inactive/$1'; 
/*--End Prescription Panel--*/

/*--Admin Panel--*/
$route['admin_login']='Admin/admin_login';
$route['master']='Super_admin/index';
$route['slider']='Super_admin/slider';
$route['admin_logout']='Super_admin/logout';

$route['add_category']='Super_admin/add_category';
$route['category_save']='Super_admin/category_save';
$route['category']='Super_admin/category';
$route['edit_category/(:num)']='Super_admin/edit_category/$1';
$route['edit_category_save']='Super_admin/edit_category_save';
$route['delete_category/(:num)']='Super_admin/delete_category/$1';

$route['subcategory']='Super_admin/subcategory';
$route['add_subcategory']='Super_admin/add_subcategory';
$route['subcategory_save']='Super_admin/subcategory_save';
$route['delete_subcategory/(:num)']='Super_admin/delete_subcategory/$1';
$route['edit_subcategory/(:num)']='Super_admin/edit_subcategory/$1';
$route['edit_subcategory_save']='Super_admin/edit_subcategory_save';

$route['body_part']='Super_admin/body_part';
$route['add_body_part']='Super_admin/add_body_part';
$route['body_part_save']='Super_admin/body_part_save';
$route['edit_bodypart/(:num)']='Super_admin/edit_bodypart/$1';
$route['edit_bodypart_save']='Super_admin/edit_bodypart_save';
$route['delete_bodypart/(:num)']='Super_admin/delete_bodypart/$1';

$route['band_list']='Super_admin/band_list';
$route['add_brand']='Super_admin/add_band';
$route['brand_save']='Super_admin/brand_save';
$route['edit_brand/(:num)']='Super_admin/edit_brand/$1';
$route['edit_brand_save']='Super_admin/edit_brand_save';
$route['delete_brand/(:num)']='Super_admin/delete_brand/$1';

$route['products']='Super_admin/products';
$route['add_product']='Super_admin/add_product';
$route['product_save']='Super_admin/product_save';
$route['edit_product/(:num)']='Super_admin/edit_product/$1';
$route['delete_product/(:num)']='Super_admin/delete_product/$1';

$route['client']='Super_admin/client';
$route['active2/(:num)']='Super_admin/active2/$1';
$route['inactive2/(:num)']='Super_admin/inactive2/$1';

$route['marcent']='Super_admin/marcent';
$route['marcent_product']='Super_admin/marcent_product';
$route['marchant_pro_del/(:any)']='Super_admin/marchant_pro_del/$1';
$route['active3/(:num)']='Super_admin/active3/$1';
$route['inactive3/(:num)']='Super_admin/inactive3/$1';

$route['order_details']='Super_admin/order_details';
$route['order_remove/(:num)']='Super_amin/order_remove/$1';
$route['cpassword']='Super_admin/cpassword';
$route['cpassword2']='Prescription_admin/cpassword';
$route['change_password']='Super_admin/change_password';
$route['change_password2']='Prescription_admin/change_password';
/*--End Admin Panel--*/