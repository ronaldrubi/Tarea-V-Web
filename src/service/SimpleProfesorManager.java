package universidad.service;
import java.util.ArrayList;
import java.util.List;
import universidad.domain.Profesor;

public class SimpleProfesorManager implements ProfesorManager {
 private List<Profesor> profesores;
 public List<Profesor> getProfesores() {
   return profesores;
 }
 public List<Profesor> getProfesor(String idProf) {
	List<Profesor> profesorLista =  new ArrayList<Profesor>();
	for (int i = 0; i < profesores.size(); i++) {  
      Profesor profesor = profesores.get(i);
      if (profesor.getIdProf().equals(idProf)){
		profesorLista.add(profesor);
	  }
    }
   return profesorLista;
 }
 public List<Profesor> addProfesor(Profesor profesorModificado) {
   profesores.add(profesorModificado);
   return profesores;
 }
 public List<Profesor> updateProfesor(Profesor profesorModificado) {
	for (int i = 0; i < profesores.size(); i++) {  
      Profesor profesor = profesores.get(i);
      if (profesor.getIdProf().equals(profesorModificado.getIdProf())){
		profesor.setNombProf(profesorModificado.getNombProf());
		profesor.setTituloProf(profesorModificado.getTituloProf());
	  }
    }
   return profesores;
 }
 public List<Profesor> removeProfesor(String idProf) {
	for (int i = 0; i < profesores.size(); i++) {  
      Profesor profesor = profesores.get(i);
      if (profesor.getIdProf().equals(idProf)){
		profesores.remove(i);
	  }
    }
   return profesores;
 }
 public void setProfesores(List<Profesor> profesores) {
   this.profesores = profesores;
 }  
}