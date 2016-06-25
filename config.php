<?php
const LOCALHOST = 'localhost';
const DBUSER = 'root';
const DBPASS = '';
const DBNAME = 'loft';


@$db = new mysqli(LOCALHOST, DBUSER, DBPASS, DBNAME);
if(mysqli_connect_errno()) {
    echo 'Ощибка: не удалось установить соединение';
    exit;
}

$db->query("SET NAMES 'utf8'");
$db->select_db('loft');

