<?php
include 'dbconnection.php';
$result = new stdClass();

$sliderImages = $connection->query(" SELECT * FROM slider ORDER BY id DESC LIMIT 3")or die();
$sliderImage = $sliderImages->fetchAll(PDO::FETCH_ASSOC);
  

$result->code = 100;
$result->sliderImages = $sliderImage;
echo json_encode($result);