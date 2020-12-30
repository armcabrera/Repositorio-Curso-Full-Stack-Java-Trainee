package interfaces;

import java.util.List;

import modelo.Profesional;


public interface Listaintprof {

	public boolean insertar(Profesional profesional);
	public List<Profesional > obtener();
	public boolean actualizar(Profesional  profesional);
	public boolean eliminar(Profesional profesional);
	public Profesional obtenerRunpro(Profesional profesional);
}
