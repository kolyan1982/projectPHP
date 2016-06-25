<?php

require_once __DIR__ . '/config.php';
$id_product = (int)$_POST['id'];
$id_catalog = (int)$_POST['id_catalog'];
$title = htmlentities(strip_tags(trim($_POST['title'])), ENT_QUOTES);
$mark = htmlentities(strip_tags(trim($_POST['mark'])), ENT_QUOTES);
$description = htmlentities(strip_tags(trim($_POST['description'])), ENT_QUOTES);
$price = (double)$_POST['price'];
$count = (int)$_POST['count'];

$sql = "UPDATE products SET title = ?, price = ?, count = ?, mark = ?, description = ?
       WHERE id_product = ?";

if($stmt = $db->prepare($sql)){

    $stmt->bind_param('sdidsi', $title, $price, $count, $mark, $description, $id_product);
    $stmt->execute();

    header('HTTP/1.1 307 Temporary Redirect');
    header('Location: itemsCatalog.php?category='.$id_catalog);
    exit;
}

