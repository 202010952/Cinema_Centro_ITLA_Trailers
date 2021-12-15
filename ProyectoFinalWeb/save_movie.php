<?php

include("conexion.php");

    if(isset($_POST['save_movie'])){
        $titulo = $_POST['titulo'];
        $genero = $_POST['genero'];
        $sinopsis = $_POST['sinopsis'];
        $trailer = $_POST['trailer'];
        $imagen = $_POST['imagen'];
        $director = $_POST['director'];
        $actores = $_POST['actores'];
        $anopub = $_POST['anopub'];


        $query = "INSERT INTO peliculas(Titulo, Genero, Sinopsis, Trailer, Imagen, Director, Actores, AnoPub) VALUES ('$titulo', '$genero', '$sinopsis', '$trailer', '$imagen', '$director', '$actores', '$anopub')";
        $result = mysqli_query($conx, $query);
        if(!$result){
            die("query fail");
        }
        else{
            $_SESSION['message'] = 'Pelicula guardada con exito!';
            $_SESSION['message_type'] = 'success';
            header("location: administrar_peliculas.php");
        }
    } 
?>


