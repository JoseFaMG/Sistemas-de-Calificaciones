<?php


if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Recibir datos del formulario
   
    $nombre = $_POST["nombreEstudiante"];
    $apellidoPaterno = $_POST["apellidoPaterno"];
    $apellidoMaterno = $_POST["apellidoMaterno"];
    $matricula = $_POST["matricula"];
    $cuatrimestre = $_POST["cuatrimestre"];
    $edad = $_POST["edad"];
    $correoInstitucional = $_POST["correoInstitucional"];
    $numeroCelular = $_POST["numeroCelular"];
    $contrasena = $_POST["contrasena"];

    // Crear conexión
    $conn = new mysqli("localhost", "root", "2017", "escuela");

    // Verificar conexión
    if ($conn->connect_error) {
        die("Conexión fallida: " . $conn->connect_error);
    }

    // Hash de la contraseña (para mayor seguridad)
    $hashedPassword = password_hash($contrasena, PASSWORD_DEFAULT);

    // Preparar la consulta SQL para insertar un nuevo estudiante con sentencias preparadas
    $sql = "INSERT INTO `alumnos` (Nombre, ApellidoPaterno, ApellidoMaterno, Matrícula, Cuatrimestre, Edad, CorreoInstitucional, Numero de Celular, Contraseña) 
            VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";

    $stmt = $conn->prepare($sql);
    $stmt->bind_param("sssssssss", $nombre, $apellidoPaterno, $apellidoMaterno, $matricula, $cuatrimestre, $edad, $correoInstitucional, $numeroCelular, $hashedPassword);

    if ($stmt->execute()) {
        echo "Estudiante registrado con éxito";
    } else {
        echo "Error al registrar el estudiante: " . $stmt->error;
    }

    $stmt->close();
    $conn->close();
}
?>
