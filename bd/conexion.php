<?php
$servername = "localhost";
$username = "root";
$password = "2017";
$dbname = "Escuela";

// Crear conexión
$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar conexión
if ($conn->connect_error) {
  die("Conexión fallida: " . $conn->connect_error);
}

// Realizar consulta SQL
$sql = "SELECT * FROM Alumnos";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
  // Mostrar datos de cada fila
  while($row = $result->fetch_assoc()) {
    echo "id: " . $row["Id"]. " - Nombre: " . $row["Nombre"]. " " . $row["ApellidoPaterno"]. "<br>";
  }
} else {
  echo "0 resultados";
}
$conn->close();
?>
