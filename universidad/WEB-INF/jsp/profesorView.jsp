<%@ include file="/WEB-INF/jsp/include.jsp" %>
<html>
 <head><title><fmt:message key="title"/></title></head>
 <body>
   <h1><fmt:message key="heading"/></h1>
   <p><fmt:message key="mensaje"/> <c:out value="${model.now}"/></p>
   <h3>Profesores</h3>
   <table border="1">
     <tr><th>Nombre</th><th>Cedula</th><th>Titulo</th><th colspan="2">Accion</th></tr>
     <c:forEach items="${model.profesores}" var="prof">
       <tr><td><c:out value="${prof.nombProf}"/></td>
       <td><c:out value="${prof.idProf}"/></td>
       <td><c:out value="${prof.tituloProf}"/></td>
	   <td><a href='/detalleProfesor.htm?idProf=${prof.idProf}'><input type="submit" value="Detalle"/></a></td>
	   <td><a href='/eliminaProfesor.htm?idProf=${prof.idProf}'><input type="submit" value="Eliminar"/></a></td></tr>
     </c:forEach>
	<tr><td colspan="5" align="center"><a href='/WEB-INF/jsp/profesorAgregaView.jsp'><input type="submit" value="Agregar"/></a></td></tr>
   </table>
 </body>
</html>