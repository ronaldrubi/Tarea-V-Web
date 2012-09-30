<%@ include file="/WEB-INF/jsp/include.jsp" %>
<html>
 <head><title><fmt:message key="title"/></title></head>
 <body>
   <h1><fmt:message key="heading"/></h1>
   <p><fmt:message key="mensaje"/> <c:out value="${model.now}"/></p>
   <h3>Profesores</h3>
   <table border="1">
     <c:forEach items="${model.profesor}" var="prof">
	   <form name="formDetalle" action="/actualizaProfesor.htm?idProf=${prof.idProf}" method="GET">
		   <input type="hidden" name="idProf" value="${prof.idProf}"/>
		   <tr><td>Nombre:</td><td><input type="text" name="nombProf" value="${prof.nombProf}"/></td></tr>
		   <tr><td>T&iacute;tulo:</td><td><input type="text" name="tituloProf" value="${prof.tituloProf}"/></td></tr>
		   <tr><td><input type="submit" value="Actualizar"/></td>
		   <td><a href='/eliminaProfesor.htm?idProf=${prof.idProf}'><input type="submit" value="Eliminar"/></a></td></tr>
	   </form>
     </c:forEach>
   </table>
 </body>
</html>