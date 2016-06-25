<?php

require_once __DIR__ . '/config.php';

$product = (int)$_GET['product'];
$catalog = (int)$_GET['catalog'];

if($product){
    $sql = "DELETE FROM products WHERE id = ?";

    if($stmt = $db->prepare($sql)){

        $stmt->bind_param('i', $product);
        $stmt->execute();

    }
}

header('HTTP/1.1 307 Temporary Redirect');
header('Location: itemsCatalog.php?category='.$catalog);
exit;

