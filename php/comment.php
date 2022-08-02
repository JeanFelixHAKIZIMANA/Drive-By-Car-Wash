<?php
require("db-connection.php");

$name=$_POST["names"];
$phone=$_POST["phone"];
$email=$_POST["email"];
$subject=$_POST["subject"];
$message=$_POST["message"];



$query="INSERT INTO comment(name,phone,email,subject,message) VALUES('$name','$phone','$email','$subject','$message')";

$rs=mysqli_query($connection,$query);
if($rs){
   header("Location: http://localhost/new/home%20page/contact.html");
}else{
    echo "Failed!";
}




?>