<link rel="stylesheet" href="css/util.css">

<?php
include("conexion.php");
if (isset($_GET['id'])) {
    $id = $_GET['id'];
    $query = "SELECT * FROM peliculas WHERE id = $id";
    $result = mysqli_query($conx, $query);
    if (mysqli_num_rows($result) == 1) {
        $nada = "";
        $row = mysqli_fetch_array($result);
        $titulo = $row['Titulo'];
        $genero = $row['Genero'];
        $sinopsis = $row['Sinopsis'];
        $trailer = $row['Trailer'];
        $imagen = $row['Imagen'];
        $director = $row['Director'];
        $actores = $row['Actores'];
        $anopub = $row['AnoPub'];
    }
}
?>

<?php include("includes/header.php") ?>
<?php include("includes/adminNavbar.php") ?>

<div class="dis-flex">
    <?php
    $query = "SELECT * FROM peliculas order by id desc";
    $result_movies = mysqli_query($conx, $query);
    while ($row = mysqli_fetch_array($result_movies)) { ?>
        <figure class="imghvr-push-up" style="margin: 5px;">
        <img class="" src="<?php echo $row['Imagen']; ?>" style="height: 230px;" alt="example-image">
            <figcaption style="background: rgba(0,0,0,0);">
                <h6 class="ih-fade-down ih-delay-sm"><b><?php echo $row['Titulo']; ?></b></h6>
                <p class="ih-zoom-in ih-delay-md">
                    <i><?= substr($nada="", 0, 150) . " ..." ?></i>
                </p>
            </figcaption>
            <a href="ver_pelicula.php?id=<?= $row['id'] ?>"></a>
        </figure>
    <?php  } ?>
</div>

<div class="container">
    <div class="shadow m-t-5 p-t-3"> <br>
        <div class="row">

            <div class="col-md-3 p-4">
                <br>
                <img src="<?= $imagen ?>" style="height: 310px; width: 220px;" alt="movie-image">
            </div>
            <div class="col-md-8 p-4">
                
                <iframe width="660" height="415" src="https://www.youtube.com/embed/<?= $trailer ?>" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                <h1 class="p-t-18" style="color: rgb(254, 204, 0);"><?= $titulo ?></h1>
                <h6 style="color: rgb(254, 204, 0);"><span style="color: rgb(211, 78, 69);">Género: </span><?= $genero ?></h6>
                <h6 style="color: rgb(254, 204, 0);"><span style="color: rgb(211, 78, 69);">Director: </span><?= $director ?></h6>
                <h6 style="color: rgb(254, 204, 0);"><span style="color: rgb(211, 78, 69);">Actores: </span><?= $actores ?></h6>
                <h6 style="color: rgb(254, 204, 0);"><span style="color: rgb(211, 78, 69);">Año de publicación: </span><?= $anopub ?></h6>
                <p style="color: whitesmoke;"><?= $sinopsis ?></p>
            </div>

        </div>
    </div>


</div>
<style>
    body{
        overflow-x: hidden;
    }

    .shadow {
        box-shadow: 500px 400px 200px grey;
    }

    .img-fluid {
        width: 100px;
    }
</style>
</head>
<?php include("includes/Footer.php") ?>
<body>