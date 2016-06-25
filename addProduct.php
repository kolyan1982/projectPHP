<?php
$category = (int)$_GET['category'];
if(!$category){
    header('HTTP/1.1 307 Temporary Redirect');
    header('Location: index.php');
    exit;
}
?>

<html>
<head>
    <title>Добавление товаров</title>
</head>
<style type="text/css">
    div{
        margin-bottom: 10px;
    }
</style>
<body>
<form action="insertProduct.php" method="post">
    <div>
        <label for="name">Название товара</label>
        <input type="text" name="title" id="name">
    </div>
    <div>
        <label for="price">Цена товара</label>
        <input type="text" name="price" id="price">
    </div>
    <div>
        <label for="count">Количество товара</label>
        <input type="text" name="count" id="count">
    </div>
    <div>
        <label for="mark">Марка товара</label>
        <input type="text" name="mark" id="mark">
    </div>
    <div>
        <label for="description">Описание товара</label><br />
        <textarea name="description" id="description" cols="30" rows="10"></textarea>
    </div>
    <input type="hidden" name="id_catalog" value="<?php echo $category; ?>">
    <div>
        <input type="submit" value="Добавить продукт">
    </div>
</form>
</body>
</html>