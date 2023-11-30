<?php
include 'dbconnection.php';
$result = new stdClass();
if(isset($_POST['id'])){
    $id =$_POST['id'];
    $query = $connection->query("SELECT * FROM articles WHERE id = $id ")or die();
    $row = $query->fetch(PDO::FETCH_ASSOC);
    $articleInfo = array();
    $articleInfo['id'] = $row['id'];
    $articleInfo['title'] = $row['title'];
    $articleInfo['file'] = $row['file'];
    $articleInfo['content'] = $row['content'];
    $articleInfo['date'] = $row['date'];
    $articleInfo['author'] = $row['author'];

    $result->code = 100;
$result->articles = $articleInfo;
echo json_encode($result);
}