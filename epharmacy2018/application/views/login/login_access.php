<?php
//session_start();
//ob_start();
//require_once('admin/page/connection.php');

if(isset($_POST['login']))
{
    extract($_POST);

    $logIDcount = mysql_num_rows(mysql_query("SELECT * FROM registrstion WHERE email = '$email' AND password = '$password'  AND status='1' "));

    if($logIDcount):
        $row = mysql_fetch_array(mysql_query("SELECT * FROM registrstion WHERE email = '$email' AND password = '$password' AND status='1' "));

        $_SESSION['id'] = $row['id'];
        //header("Location:profile.php");
       // include('profile.php');
       echo 'success';exit;


    else:

       // header("Location: login.php");
        print '<script>alert("Hello! This is Invalid Login Email or Password!")</script>';
        include('login.php');

    endif;

}
else if(isset($_POST['sign_up']))
{
    echo "another login btn pressed";
}

?>

