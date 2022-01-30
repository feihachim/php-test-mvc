<?php

$page = $_GET['page'] ?? 'home';
$action = $_GET['action'] ?? 'index';

require './model/model.php';

if ($page == 'home')
{
    if ($action == 'index')
    {
        $blogs = getBlogs();
        //var_dump($blogs);
        $title = "Derniers blogs";
        ob_start();
        require 'view/listBlogsView.php';
        $content = ob_get_clean();
    }
    if ($action == 'users')
    {
        $users = getUsers();
        $title = "Liste des bloggers";
        ob_start();
        require 'view/listUsersView.php';
        $content = ob_get_clean();
    }
    require 'view/template.php';
}
