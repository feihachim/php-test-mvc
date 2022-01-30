<h2>Derniers blogs</h2>
<?php foreach ($blogs as $blog) : ?>
    <h2><?= $blog['title']; ?></h2>
    <p><?= $blog['content']; ?></p>
    <i><?= 'Posté le ' . $blog['creation_date']; ?></i>
<?php endforeach; ?>