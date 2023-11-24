<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="assets/css/estilo.css">
    <title>Registro de Alumnos</title>
    
    <link rel="shortcut icon" href="assets/Images/utc.png" />
</head>
<body>
    <div class="container">
        <h1 class="text-center p-3">Registro de Alumnos</h1>
        
        <div class="row justify-content-center align-items-center">
            <div class="col-md-6 col-lg-4">
                <div class="logo-container text-center">
                    <img src="assets/Images/utc.png" alt="Logo de la Universidad" class="img-fluid">
                </div>
                
                <div class="box">
                    <form id="registroForm">
                        <div class="mb-3">
                            <label for="nombre" class="form-label">Nombre Estudiante:</label>
                            <input type="text" class="form-control" id="nombre" required>
                        </div>

                <div class="mb-3">
                    <label for="apellidoPaterno" class="form-label">Apellido Paterno:</label>
                    <input type="text" class="form-control" id="apellidoPaterno" required>
                </div>

                <div class="mb-3">
                    <label for="apellidoMaterno" class="form-label">Apellido Materno:</label>
                    <input type="text" class="form-control" id="apellidoMaterno" required>
                </div>

                <div class="mb-3">
                    <label for="matricula" class="form-label">Matrícula:</label>
                    <input type="text" class="form-control" id="matricula" required>
                </div>

                <div class="mb-3">
                    <label for="cuatrimestre" class="form-label">Cuatrimestre:</label>
                    <input type="text" class="form-control" id="cuatrimestre" required>
                </div>

                <div class="mb-3">
                    <label for="edad" class="form-label">Edad:</label>
                    <input type="text" class="form-control" id="edad" required>
                </div>

                <div class="mb-3">
                    <label for="correoInstitucional" class="form-label">Correo Institucional:</label>
                    <input type="email" class="form-control" id="correoInstitucional" required>
                </div>

                <div class="mb-3">
                    <label for="numeroCelular" class="form-label">Número de Celular:</label>
                    <input type="tel" class="form-control" id="numeroCelular" required>
                </div>

                <button type="button" class="btn btn-primary" onclick="registrarEstudiante()">Registrar</button>
            </form>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <script>
        function registrarEstudiante() {
            var nombre = document.getElementById("nombre").value;
            var apellidoPaterno = document.getElementById("apellidoPaterno").value;
            var apellidoMaterno = document.getElementById("apellidoMaterno").value;
            var matricula = document.getElementById("matricula").value;
            var cuatrimestre = document.getElementById("cuatrimestre").value;
            var edad = document.getElementById("edad").value;
            var correoInstitucional = document.getElementById("correoInstitucional").value;
            var numeroCelular = document.getElementById("numeroCelular").value;

            var estudiante = {
                'Nombre': nombre,
                'Apellido Paterno': apellidoPaterno,
                'Apellido Materno': apellidoMaterno,
                'Matrícula': matricula,
                'Cuatrimestre': cuatrimestre,
                'Edad': edad,
                'Correo Institucional': correoInstitucional,
                'Número de Celular': numeroCelular
            };

            // Hacer algo con el objeto 'estudiante
        }
    </script>
</body>
</html>
