<?php
$conn = new PDO("mysql:host=localhost;dbname=dbrosefoundation", "root", "");
if(!$conn){
    die('Connection Failed');
}
else{
    if($_POST['password'] === $_POST['confirm']){
        $username =$_POST['username'];
        $password =$_POST['password'];
        

        $statement = $conn->prepare("INSERT INTO admins(username, password) VALUES (:username, :password)");
        $statement->bindParam(':username', $username);
        $statement->bindParam(':password', $password);
        
        if($statement->execute()){
            header('Location: admin.html');
        }else{
            echo "registration failed";
            $conn = null;
        }
    }
    else{
        echo "error! make sure passwords match";
    }
}