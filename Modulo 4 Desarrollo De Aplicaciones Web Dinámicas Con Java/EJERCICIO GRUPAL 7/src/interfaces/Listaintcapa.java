package interfaces;

import java.util.List;

import modelo.Capacitacion;

public interface Listaintcapa {
	
	public boolean insertar(Capacitacion capacitacion);
	public List<Capacitacion> obtener();
	public boolean actualizar(Capacitacion capacitacion);
	public boolean eliminar(Capacitacion capacitacion);

}
