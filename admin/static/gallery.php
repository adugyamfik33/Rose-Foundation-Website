<?php
$target_dir = "../../images/gallery/";
$target_file = $target_dir . basename($_FILES["file"]["name"]);
$uploadOk = 1;
$imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));

// Check if image file is a actual image or fake image
$check = getimagesize($_FILES["file"]["tmp_name"]);
if($check !== false) { 
    $uploadOk = 1;
} else { 
    $uploadOk = 0;
}



// Check file size
if ($_FILES["file"]["size"] > 500000) {
  $uploadOk = 0;
}

// Allow certain file formats
if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
&& $imageFileType != "gif" && $imageFileType != "jpg") {
  $uploadOk = 0;
}

// Check if $uploadOk is set to 0 by an error
if ($uploadOk == 0) {
    echo "sorry Could not upload image";
  exit();
} else {
  if (move_uploaded_file($_FILES["file"]["tmp_name"], $target_file)) {

    $conn = new PDO("mysql:host=localhost;dbname=dbrosefoundation", "root", "");
    if(!$conn){
        die('Connection Failed');
    }
    else{
        $file = $_FILES["file"]["name"];
        $statement = $conn->prepare("INSERT INTO gallery(file) VALUES (:file)");
        $statement->bindParam(':file', $file);

    
        if($statement->execute()){
          echo 
          "<script type=\"text/javascript\">".
          "window.alert('Succesful!');".
          "top.location ='gallery.html';".
          "</script>";
          exit; 
            $conn = null;
        }else{
          echo 
          "<script type=\"text/javascript\">".
          "window.alert('Failed, Try Again');".
          "top.location ='gallery.html';".
          "</script>";
          exit; 
            $conn = null;
        }
       
       
    }

    
  } else {
    echo "Sorry, there was an error uploading your file.";
  }
}

