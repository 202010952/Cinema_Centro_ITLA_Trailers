<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Buscador</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>

<body>
    <?php include("conexion.php"); ?>
    <?php include("includes/header.php") ?>
    <?php include("includes/usuarioNavbar.php") ?>

    <div class="container mt-5">
        <div class="col-12">
            <div class="mb-3">

                <label class="form-label">Busca tu pelicula</label>
                <input onkeyup="buscar_ahora($('#buscar_1').val());" type="text" class="form-control" name="buscar_1" id="buscar_1">

            </div>

            <div class="card col-12 mt-5">
                <div class="card-body">
                    <div id="datos_buscador" class="container pl-5 pr-5"></div>
                </div>
            </div>

        </div>
    </div>

    <script type="text/javascript">
        function buscar_ahora(buscar) {
            var parametros = {"buscar":buscar};
            $.ajax({
                data:parametros,
                type: 'POST',
                url: 'mostrarBuscadorUsuario.php',
                success: function(data) {
                    document.getElementById("datos_buscador").innerHTML = data;
                }
            });
        }
    </script>

</body>

</html>