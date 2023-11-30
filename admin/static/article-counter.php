<?php
include 'dbconnection.php';
$result = new stdClass();

$count_articles = $connection->query(" SELECT * FROM articles ORDER BY id DESC")or die();
$article_count = $count_articles->fetchAll(PDO::FETCH_ASSOC);


$result->code = 100;
$result->count_articles = $article_count;
echo json_encode($result);