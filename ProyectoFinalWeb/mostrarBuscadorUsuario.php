<?php
$conx = mysqli_connect("localhost", "root", "", "movieapp");
$buscador = mysqli_query($conx, "SELECT * FROM peliculas WHERE Titulo LIKE LOWER('%" . $_POST["buscar"] . "%')");
$numero = mysqli_num_rows($buscador);
?>

<h5 class="card-title" style="color: black;">Resultados encontrados (<?php echo $numero; ?>):</h5>

<?php while ($resultado = mysqli_fetch_assoc($buscador)) { ?>
    <a class="card-text" href="ver_peliculaUsuario.php?id=<?= $resultado['id'] ?>"><?php echo $resultado["Titulo"]; ?></a> <br>
<?php } ?>