<?php
require("db-connection.php");

$name=$_POST["username"];
$email=$_POST["email"];
$password=password_hash($_POST["password"],PASSWORD_DEFAULT);
$confirm_password=$_POST["re-enter-password"];
$district=$_POST["district"];
$date=date("Y:m:d H:i:s");
$sex=$_POST["sex"];
$district=$_POST["district"];
$member_type=$_POST["member_type"];

$query="INSERT INTO clients(clientName,clientEmail,sex,district,member_type,password,date) VALUES('$name','$email','$sex','$district','$member_type','$password','$date')";

$rs=mysqli_query($connection,$query);
if($rs){
header("Location: http://localhost/new/login/login.html");
}else{
    echo "Failed!";
}




?>