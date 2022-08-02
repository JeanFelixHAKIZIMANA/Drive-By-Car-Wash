<?php
require("db-connection.php");

$email=$_POST["email"];
$password=$_POST["password"];

$query="SELECT password FROM clients WHERE clientEmail='$email'";

$rs=mysqli_query($connection,$query);

$result=mysqli_fetch_array($rs);

if(password_verify($password, $result["password"])){

    header("Location: http://localhost/new/home.html");
}else{
    echo "<h2>Invalid email or password!</h2>";
}

?>