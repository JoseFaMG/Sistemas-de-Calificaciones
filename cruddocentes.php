<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="assets/css/estilo.css">
    <title>Registro de Docentes</title>
    <link rel="shortcut icon" href="assets/Images/utc.png" />
</head>
<body>

    <h1 class="text-center p-3">Registro de Docentes</h1>
    <div class="row justify-content-center align-items-center">
        <div class="col-md-6 col-lg-4">
            <div class="logo-container text-center">
                <img src="assets/Images/utc.png" alt="Logo de la Universidad" class="img-fluid">
            </div>
            <div class="container1">
                <div class="row justify-content-center align-items-center">
                    <div class="col-md-6 col-lg-4">
                        <div class="box1">
                            <form id="registroDocenteForm">
                    <form id="registroDocenteForm">
                        <div class="mb-3">
                            <label for="nombreDocente" class="form-label">Nombre del Docente:</label>
                            <input type="text" class="form-control" id="nombreDocente" required>
                        </div>

                        <div class="mb-3">
                            <label for="apellidoPaternoDocente" class="form-label">Apellido Paterno:</label>
                            <input type="text" class="form-control" id="apellidoPaternoDocente" required>
                        </div>

                        <div class="mb-3">
                            <label for="apellidoMaternoDocente" class="form-label">Apellido Materno:</label>
                            <input type="text" class="form-control" id="apellidoMaternoDocente" required>
                        </div>

                        <div class="mb-3">
                            <label for="codigoDocente" class="form-label">Código de Cedula Profecional</label>
                            <input type="text" class="form-control" id="codigoDocente" required>
                        </div>

                        <div class="mb-3">
                            <label for="correoDocente" class="form-label">Correo Institucional del Docente:</label>
                            <input type="email" class="form-control" id="correoDocente" required>
                        </div>

                        <div class="mb-3">
                            <label for="telefonoDocente" class="form-label">Teléfono del Docente:</label>
                            <input type="tel" class="form-control" id="telefonoDocente" required>
                        </div>

                        <button type="button" class="btn btn-primary" onclick="registrarDocente()">Registrar</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <script>
        function registrarDocente() {
            var nombreDocente = document.getElementById("nombreDocente").value;
            var apellidoPaternoDocente = document.getElementById("apellidoPaternoDocente").value;
            var apellidoMaternoDocente = document.getElementById("apellidoMaternoDocente").value;
            var codigoDocente = document.getElementById("codigoDocente").value;
        
            var correoDocente = document.getElementById("correoDocente").value;
            var telefonoDocente = document.getElementById("telefonoDocente").value;

            var docente = {
                'Nombre': nombreDocente,
                'Apellido Paterno': apellidoPaternoDocente,
                'Apellido Materno': apellidoMaternoDocente,
                'Código': codigoDocente,
                'Correo': correoDocente,
                'Teléfono': telefonoDocente
            };

            // Hacer algo con el objeto 'docente'
        }
    </script>
</body>
</html>
