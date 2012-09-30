package universidad.service;
import java.io.Serializable;
import java.util.List;

import universidad.domain.Profesor;
public interface ProfesorManager extends Serializable{
   public List<Profesor> getProfesores();
   public List<Profesor> getProfesor(String idProf);
   public List<Profesor> addProfesor(Profesor profesorModificado);
   public List<Profesor> updateProfesor(Profesor profesorModificado);
   public List<Profesor> removeProfesor(String idProf);
}