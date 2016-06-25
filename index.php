<?php

require_once __DIR__ . '/config.php';

$sql_catalog = 'SELECT id, title FROM category_products';
$result = $db->query($sql_catalog);

$catalog = $result->fetch_all(MYSQLI_ASSOC);


echo "<a href='addCatalog.php'>Добавить категорию</a>";
echo '<h1>Список категорий каталога</h1>';

if(count($catalog)){
    echo "<table border='1'>";
    foreach ($catalog as $catalogs){
        echo <<<"CATALOG"
            <tr>
                <td style='padding: 5px; border: 1px solid #333;'><a href='itemsCatalog.php?category={$catalogs['id']}'>{$catalogs['title']}</a></td>
                <td style='padding: 5px; border: 1px solid #333;'><a href='deleteCatalog.php?category={$catalogs['id']}'>удалить</a></td>
            </tr>
CATALOG;


    }
    echo "</table>";
    
    echo "<hr>";
    echo "Всего категорий в магазине - "  . count($catalog);
}else {
    echo "Список пуст";
}

