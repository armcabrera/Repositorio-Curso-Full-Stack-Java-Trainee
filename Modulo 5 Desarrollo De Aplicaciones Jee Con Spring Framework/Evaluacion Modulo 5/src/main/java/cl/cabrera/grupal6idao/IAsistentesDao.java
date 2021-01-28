package cl.cabrera.grupal6idao;

import java.util.List;

import cl.cabrera.grupal6modelo.Asistentes;


public interface IAsistentesDao {

	public List<Asistentes> obtenerAsistentes();
	public boolean crearAsistentes(Asistentes as);
	public boolean eliminarAsistentes(Asistentes as);
	public boolean editarAsistentes(Asistentes as);
	public Asistentes obteneridasistentes(int idasistente);
	
}
