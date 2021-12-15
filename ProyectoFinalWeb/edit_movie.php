<?php
    include("conexion.php");

    if(isset($_GET['id'])){
        $id = $_GET['id'];
        $query = "SELECT * FROM peliculas WHERE id = $id";
        $result = mysqli_query($conx,$query);
        if (mysqli_num_rows($result ) == 1){
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
    if(isset($_POST['update_movie'])){
        $id= $_GET['id']; 
        $titulo = $_POST['titulo'];
        $genero = $_POST['genero'];
        $sinopsis = $_POST['sinopsis'];
        $trailer = $_POST['trailer'];
        $imagen = $_POST['imagen'];
        $director = $_POST['director'];
        $actores = $_POST['actores'];
        $anopub = $_POST['anopub'];

        $query = "UPDATE peliculas SET Titulo = '$titulo', Genero = '$genero', Sinopsis = '$sinopsis', Trailer = '$trailer', Imagen = '$imagen', Director = '$director', Actores = '$actores', AnoPub = '$anopub' WHERE id = $id";
        mysqli_query($conx, $query);
        $_SESSION['message'] = 'Pelicula Actualizada con exito!';
        $_SESSION['message_type'] = 'warning';
        header("Location: administrar_peliculas.php");
    }
?>

<?php include("includes/header.php") ?>
<?php include("includes/adminNavbar.php") ?>

<div class="container p-3">
    <div class="row">
        <div class="col-md-4 mx-auto">
            <div class="card card-body">
                <form action="edit_movie.php?id=<?php echo $_GET['id'];?>" method="POST">
                    <h3 id="admCardTittle">Edit Movies</h3>
                    <div class="form-group">
                        <input type="text" name="titulo" class="form-control" value="<?php echo $titulo ?>" placeholder="Actualizar título" >
                    </div><br/>
                    <div class="form-group">
                        <input type="text" name="genero" class="form-control" value="<?php echo $genero ?>" placeholder="Actualizar genero" >
                    </div><br/>
                    <div class="form-group">
                        <input type="text" name="sinopsis" class="form-control" value="<?php echo $sinopsis ?>" placeholder="Actualizar Reseña" >
                    </div><br/>
                    <div class="form-group">
                        <input type="text" name="trailer" class="form-control" value="<?php echo $trailer ?>" placeholder="Actualizar trailer">
                    </div><br/>
                    <div class="form-group">
                        <input type="text" name="imagen" class="form-control" value="<?php echo $imagen ?>" placeholder="Actualizar imagen">
                    </div><br/>
                    <div class="form-group">
                        <input type="text" name="director" class="form-control" value="<?php echo $director ?>" placeholder="Actualizar director">
                    </div><br/>
                    <div class="form-group">
                        <input type="text" name="actores" class="form-control" value="<?php echo $actores ?>" placeholder="Actualizar actores">
                    </div><br/>
                    <div class="form-group">
                        <input type="text" name="anopub" class="form-control" value="<?php echo $anopub ?>" placeholder="Actualizar año de publicación">
                    </div><br/>
                    <center>
                        <input type="submit" class="btn btn-success" name="update_movie" value="Guardar Cambios" >
                    </center>
                    
                </form>
            </div>
        </div>
    </div>
</div>

