<?php include("conexion.php") ?>

<?php include("includes/header.php") ?>
<?php include("includes/usuarioNavbar.php") ?>

<div class="container p-4">
    <?php
    $query = "SELECT * FROM peliculas order by id desc";
    $result_movies = mysqli_query($conx, $query);
    while ($row = mysqli_fetch_array($result_movies)) { ?>
        <figure class="imghvr-push-up" style="margin: 5px;">
            <img class="responsive-img" src="<?php echo $row['Imagen']; ?>" style="height: 350px; width: 230px;" alt="example-image">
            <figcaption style="background: rgba(0,0,0,0);">
                <h6 class="ih-fade-down ih-delay-sm"><b><?php echo $row['Titulo']; ?></b></h6>
                <p class="ih-zoom-in ih-delay-md">
                    <i><?= substr($nada="", 0, 150) . " ..." ?></i>
                </p>
            </figcaption>
            <a href="ver_peliculaUsuario.php?id=<?= $row['id'] ?>"></a>
        </figure>
    <?php  } ?>
</div>
<?php include("includes/Footer.php") ?>