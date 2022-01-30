<?php

define("DB_HOST", "localhost");
define("DB_NAME", "test_mvc");
define("DB_USER", "root");
define("DB_PASSWORD", "");
function openConnection()
{
    $db = new PDO("mysql:host=" . DB_HOST . ";dbname=" . DB_NAME, DB_USER, DB_PASSWORD);
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    return $db;
}

function closeConnection(&$connection)
{
    $connection = null;
}

function getBlogs()
{
    $db = openConnection();
    $getBlogs = $db->prepare("SELECT * FROM blog ORDER BY creation_date DESC");
    $res = $getBlogs->execute();
    $listBlogs = $getBlogs->fetchAll(PDO::FETCH_ASSOC);
    closeConnection($db);
    return $listBlogs;
}

function getUsers()
{
    $db = openConnection();
    $getUsers = $db->prepare("SELECT * FROM users");
    $res = $getUsers->execute();
    $listUsers = $getUsers->fetchAll(PDO::FETCH_ASSOC);
    closeConnection($db);
    return $listUsers;
}
