<html lang="es">
<head>
	
    <meta charset="utf-8" />
    <meta name="description" content="Ejemplo de HTML5" />
    <meta name="keywords" content="HTML5, CSS3, JavaScript" />
	<title>Tarea de evaluación 1</title>
	
	<!-- Hoja de estilo enlazada -->
	<link rel="stylesheet" href="style.css"/>
	
</head>
<body>

	<!-- Título de la pagina principal -->
	
    <h1 style="text-align:center;font-size:62px; letter-spacing:10px; margin-bottom:70px;">CURRICULUM VITAE</h1>
	
	<!-- Imagen del curriculum (bloque izquierda) -->
	
	<div class="caja_imagen">
		<a href="http://joseaweb.es/" target="_blank"><img src="foto.png" alt="foto_perfil" /></a>
	</div>
	
	<!-- Apartado de datos personales (bloque derecha) -->
	
	<div class="caja_datos">
		<h3><u>DATOS PERSONALES</u></h3>
{
  for $datos in collection("curriculum")//datos-personales
  where $datos/@email = "aitor@birt.eus"
  return
  <ul>
        <li><b>Nombre: </b>{data($datos/nombre)}</li> 
        <li><b>Nombre: </b>{data($datos/apellido)}</li>
        <li><b>Nombre: </b>{data($datos/direccion)}</li>
        <li><b>Nombre: </b>{data($datos/@email)}</li>
  </ul>
}
		
	<!-- Apartado de enlaces con lista ordenada -->
		<h3><u>CONOCE MÁS SOBRE MÍ</u></h3>
		<ol>
			<li><a class="enlaces" href="laboral.html" style="text-decoration:none">Experiencia laboral</a></li>
			<li><a class="enlaces" href="#" style="text-decoration:none">Experiencia académica</a></li>
			<li><a class="enlaces" href="#" style="text-decoration:none">Aficiones</a></li>
		</ol>
	</div>
	
</body>
</html>