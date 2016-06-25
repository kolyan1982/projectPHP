<?php

require_once __DIR__ . '/config.php';

$category = (int)$_GET['category'];

if(is_int($category)){
    $sql = 'SELECT products.id, products.title, products.count, products.description, FORMAT(products.price, 2) as price FROM products WHERE products.id_catalog = ?';

    if($stmt = $db->prepare($sql)){

        $stmt->bind_param('s', $category);
        $stmt->execute();
        $result = $stmt->get_result();

        if($result->num_rows){
            $products = $result->fetch_all(MYSQLI_ASSOC);

            echo "<a href='addProduct.php?category={$category}'>Добавить продукт</a><br /><br />";
            echo <<<TABLE
            <table border="1">
                <thead>
                    <th>Название товара</th>
                    <th>Цена (руб.)</th>
                    <th>Кол-во (шт.)</th>
                    <th>Описание</th>
                    <th></th>
                </thead>
                <tbody>
TABLE;
            foreach($products as $product){
                echo "<tr>
                <td>{$product['title']}</td>
                <td style='text-align: center;'>{$product['price']} руб.</td>
                <td style='text-align: center;'>{$product['count']}</td>
                <td>{$product['description']}</td>
                <td>
                    <a href='editProduct.php?product={$product['id']}'>Редактировать</a>&nbsp;
                    <a href='deleteProduct.php?product={$product['id']}&catalog={$category}'>Удалить</a>
                </td>
</tr>";
            }

            echo <<<ENDTABLE
            </tbody>
            </table>
ENDTABLE;

        } else {
            echo "Список товаров категории пуст<br />";
        }

    } else {
        echo "Ошибка при формировании запроса";
    }
} else {
    echo "ОШИБКА 404";
}

echo "<br /><a href='index.php'>Вернуться к каталогу</a><br />";