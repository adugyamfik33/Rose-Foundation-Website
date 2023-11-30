<?php
include 'dbconnection.php';
$result = new stdClass();

$images = $connection->query(" SELECT * FROM gallery ORDER BY id DESC")or die();
$image = $images->fetchAll(PDO::FETCH_ASSOC);


$result->code = 100;
$result->images = $image;
echo json_encode($result);