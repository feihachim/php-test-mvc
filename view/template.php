<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="public/css/style.css">
    <title><?= $title; ?></title>
</head>

<body>
    <header>
        <ul>
            <li><a href="index.php?page=home&action=index">Accueil</a></li>
            <li><a href="index.php?page=home&action=users">Bloggers</a></li>
            <li><a href="index.php?page=connexion">connexion</a></li>
            <li><a href="index.php?page=inscription">Inscription</a></li>
        </ul>
    </header>
    <main>
        <?= $content; ?>
    </main>
    <footer></footer>
</body>

</html>