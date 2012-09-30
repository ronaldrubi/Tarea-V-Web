package universidad.web;
import universidad.domain.Profesor;
import org.springframework.web.servlet.mvc.Controller;
import org.springframework.web.servlet.ModelAndView;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Map;
import java.util.HashMap;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import universidad.service.ProfesorManager;

public class ProfesorEliminaController implements Controller {
 protected final Log logger = LogFactory.getLog(getClass());
 private ProfesorManager ProfesorManager;

 public ModelAndView handleRequest(HttpServletRequest request,
   HttpServletResponse response)
   throws ServletException, IOException {
   
   String idProf = request.getParameter("idProf");
   
   String now = (new java.util.Date()).toString();
   logger.info("returning profesor view with " + now);

   Map<String, Object> myModel = new HashMap<String, Object>();
   myModel.put("now", now);
   this.ProfesorManager.removeProfesor(idProf);
   response.sendRedirect("http://localhost:8080/hello.htm");;

   return new ModelAndView("profesorView", "model", myModel);
 }
 
 public void setProfesorManager(ProfesorManager ProfesorManager) {
   this.ProfesorManager = ProfesorManager;
 }
}