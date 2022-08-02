<?php
require("db-connection.php");

$name1=$_POST["firstname"];
$name2=$_POST["lastname"];
$wheels=$_POST["wheels"];
$brand=$_POST["brand"];
$datetime=$_POST["datetime"];
$email=$_POST["email"];
$password=password_hash($_POST["password"],PASSWORD_DEFAULT);
$phone=$_POST["phone"];


$query="INSERT INTO booked(firstName,lastname,tire_number,brand,date,email,password,phone) VALUES('$name1','$name2','$wheels','$brand','$datetime','$email','$password','$phone')";

$rs=mysqli_query($connection,$query);
if($rs){
   header("Location: http://localhost/new/home%20page/book.html");
}else{
    echo "Failed!";
}




?>