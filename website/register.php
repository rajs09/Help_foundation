<?php
$username="root";
$password="";
$servername="localhost";
$db_name="nmimsaasara";

$conn=mysqli_connect($servername,$username,$password,$db_name);
  $name = $_POST['name'];
  $phoneno = $_POST['phoneno'];
  $email = $_POST['email'];
  $address = $_POST['address'];
  $sql = "insert into volunteers(volunteer_name,volunteer_phoneno,volunteer_email,volunteer_address) values('$name','$phoneno','$email','$address')";
  $result=mysqli_query($conn,$sql);
  echo "You are registered as a volunteer.Thank You for registering.";
  header( "refresh:5;url=index.html");

?>
