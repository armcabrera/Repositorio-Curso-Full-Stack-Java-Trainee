package cl.cabrera.grupal6idao;

import java.util.List;

import cl.cabrera.grupal6modelo.Capacitacion;

public interface ICapacitacionDao {

	public List<Capacitacion> obtenerCapacitaciones();
	public boolean crearCapacitacion(Capacitacion cp);
	public boolean eliminarCapacitacion(Capacitacion cp);
	public boolean editarCapacitacion(Capacitacion cp);
	public Capacitacion obteneridcapa(int idCapa);
}
