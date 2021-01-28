package cl.cabrera.grupal6idao;

import java.util.List;

import cl.cabrera.grupal6modelo.Asesoria;

public interface IAsesoriaDao {
	

	public List<Asesoria> obtenerAsesorias();
	public boolean crearAsesorias(Asesoria as);
	public boolean eliminarAsesorias(Asesoria as);
	public boolean editarAsesorias(Asesoria as);
	public Asesoria obteneridasesorias(int idasesoria);

}
