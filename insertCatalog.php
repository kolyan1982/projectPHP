<?php

require_once __DIR__ . '/config.php';

$name = trim($_POST['name']);
$db->real_escape_string($name);

if(mb_strlen($name)){
    $sql = 'INSERT INTO category_products (id, title) VALUES (NULL, ? )';
    $stmt = $db->prepare($sql);
    $stmt->bind_param('s', $name);

    $stmt->execute();
    $stmt->close();
    $db->close();
}

header('HTTP/1.1 307 Temporary Redirect');
header('Location: index.php');
exit;