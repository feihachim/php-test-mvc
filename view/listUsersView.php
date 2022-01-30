<h2>Liste des bloggers</h2>
<?php foreach ($users as $user) : ?>
    <ol>
        <a href="index.php?page=home&action=user&id=<?= $user['id']; ?>"><?= $user['pseudo']; ?></a>
    </ol>
<?php endforeach; ?>