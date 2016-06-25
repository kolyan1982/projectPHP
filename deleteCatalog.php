<?php

require_once __DIR__ . '/config.php';
$catalog = (int)$_GET['category'];

if(is_int($catalog)) {

    $sql = 'DELETE FROM category_products WHERE id = ?';

    if ($stmt = $db->prepare($sql)) {

        $stmt->bind_param('i', $catalog);
        $stmt->execute();
    }
}

header('HTTP/1.1 307 Temporary Redirect');
header('Location: index.php');
exit;