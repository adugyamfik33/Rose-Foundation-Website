<?php
include 'dbconnection.php';
$result = new stdClass();

$articles = $connection->query(" SELECT * FROM articles ORDER BY id DESC")or die();
$article = $articles->fetchAll(PDO::FETCH_ASSOC);


$result->code = 100;
$result->articles = $article;
echo json_encode($result);