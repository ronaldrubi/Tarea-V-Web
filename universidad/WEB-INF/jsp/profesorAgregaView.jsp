<%@ include file="/WEB-INF/jsp/include.jsp" %>
<html>
 <head><title>Agregar</title></head>
 <body>
   <h1>Sistema Universitario - Inicio</h1>
   <p>Bienvenido</p>
   <h3>Profesores</h3>
   <table border="1">
	   <form name="formAgrega" action="/agregaProfesor.htm" method="GET">
		   <tr><td>Cedula:</td><td><input type="text" name="idProf" value=""/></td></tr>
		   <tr><td>Nombre:</td><td><input type="text" name="nombProf" value=""/></td></tr>
		   <tr><td>T&iacute;tulo:</td><td><input type="text" name="tituloProf" value=""/></td></tr>
		   <tr><td colspan="2"><input type="submit" value="Actualizar"/></td></tr>
	   </form>
   </table>
 </body>
</html>