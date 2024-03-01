<html lang="es">
<head>
	
    <meta charset="utf-8" />
    <meta name="description" content="Ejemplo de HTML5" />
    <meta name="keywords" content="HTML5, CSS3, JavaScript" />
	<title>Tarea de evaluación 1 - Experiencia laboral</title>
	
	<!-- Hoja de estilo enlazada -->
	<link rel="stylesheet" href="style.css"/>
	
</head>
<body>
	
	<!-- Título de la página -->
	
    <h1 style="text-align:center;font-size:62px; letter-spacing:10px; margin-bottom:70px;">EXPERIENCIA LABORAL</h1>
	
	<!-- bloque tipo tabla para presentar la experiencia laboral -->
	
	<caption class="tabla">
		<table style="margin: 0 auto">
	
		  <tr>
			<th class="descripcion"><h3>EMPRESA Y LABORES DESEMPEÑADAS</h3></th>	
			<th class="cargo"><h3>CARGO</h3></th>
			<th class="año"><h3>AÑO</h3></th> 
		  </tr>
      
      {
        for $datos in collection("curriculum")//curriculum[datos-personales/@email="aitor@birt.eus"]//puesto
      return
      <tr>
        <td><strong>{$datos/empresa/@nombre}</strong><br /><p>{data($datos/empresa)}</p></td>
        <td>{data($datos/cargo)}</td>
        <td>{data($datos/fecha)}</td>
      </tr>
      }
	  
		</table>
	</caption>
	
	<!--Enlace para volver hacía la index-->
	
	<a class="enlaces volver" href="index.html">Volver a mis datos</a>
	
	
</body>
</html>