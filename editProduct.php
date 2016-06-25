<?php

require_once __DIR__ . '/config.php';
$product = (int)$_GET['product'];

$sql = "SELECT * FROM products WHERE id = ?";

$stmt = $db->prepare($sql);
$stmt->bind_param('i', $product);
$stmt->execute();

$result = $stmt->get_result();
$record = $result->fetch_row();
?>
<html>
<head>
    <title>Редактирование товара</title>
    <style type="text/css">
        div{
            margin-bottom: 10px;
        }
    </style>
</head>
<form action="updateProduct.php" method="post">
    <input type="hidden" name="id_product" value="<?php echo $record[0]; ?>">
    <input type="hidden" name="id_catalog" value="<?php echo $record[6]; ?>">
    <div>
        <label for="name">Название товара</label>
        <input type="text" name="title" id="name" value="<?php echo $record[1]; ?>">
    </div>
    <div>
        <label for="price">Цена товара</label>
        <input type="text" name="price" value="<?php echo $record[2]; ?>">
    </div>
    <div>
        <label for="count">Количество товара</label>
        <input type="text" name="count" value="<?php echo $record[3]; ?>">
    </div>
    <div>
        <label for="mark">Марка товара</label>
        <input type="text" name="mark" value="<?php echo $record[4]; ?>">
    </div>
    <div>
        <label for="description">Описание товара</label><br />
        <textarea name="description" id="description" cols="30" rows="10"><?php echo $record[5]; ?></textarea>
    </div>
    <div>
        <input type="submit" value="Редактировать товара">
    </div>
</form>
</html>


