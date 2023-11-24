<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Recibir datos del formulario
    $nombre = $_POST["nombre"];
    $apellidoPaterno = $_POST["apellidoPaterno"];
    $apellidoMaterno = $_POST["apellidoMaterno"];
    $matricula = $_POST["matricula"];
    $cuatrimestre = $_POST["cuatrimestre"];
    $edad = $_POST["edad"];
    $correoInstitucional = $_POST["correoInstitucional"];
    $numeroCelular = $_POST["numeroCelular"];

    // Crear conexión
    $conn = new mysqli("localhost", "root", "2017", "Escuela");

    // Verificar conexión
    if ($conn->connect_error) {
        die("Conexión fallida: " . $conn->connect_error);
    }

    // Preparar la consulta SQL para insertar un nuevo estudiante
    $sql = "INSERT INTO Alumnos (Nombre, ApellidoPaterno, ApellidoMaterno, Matricula, Cuatrimestre, Edad, CorreoInstitucional, NumeroCelular) VALUES ('$nombre', '$apellidoPaterno', '$apellidoMaterno', '$matricula', '$cuatrimestre', '$edad', '$correoInstitucional', '$numeroCelular')";

    if ($conn->query($sql) === TRUE) {
        echo "Estudiante registrado con éxito";
    } else {
        echo "Error al registrar el estudiante: " . $conn->error;
    }

    $conn->close();
}
?>
