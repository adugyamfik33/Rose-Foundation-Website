<?php
$conn = new PDO("mysql:host=localhost;dbname=dbrosefoundation", "root", "");
$username =$_POST['username'];
$password =$_POST['password'];

$statement =$conn->prepare("SELECT * FROM admins WHERE username = :username AND password = :password ")or die('Failed to query database'.mysql_error());
$statement->execute(array(':username'=>$username, ':password'=>$password));
$row = $statement->fetch();

if(!empty($row)){
    header('Location: admin.html');
}else{
    header('Location: pages-sign-in.html');
}