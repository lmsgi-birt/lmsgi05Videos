module namespace page = 'http://basex.org/examples/web-page';

declare
  %rest:GET
  %rest:path("ejemplo")
  %output:method("html")
  %output:html-version("5.0")
function page:hello() {
  
  (: Escribo el HTML que quiero que se muestre. Puede incluir consultas XQuery :)
<html lang="es">
<head>
  <meta charset="utf-8" />
  <title>Ejemplo RESTXQ</title>
</head>
<body>
    <h1>EJEMPLO RESTXQ</h1>
</body>
</html>
  
};