package cl.cabrera.grupal6idao;

import java.util.List;

import cl.cabrera.grupal6modelo.Pago;

public interface IpagoDao {

	public List<Pago> obtenerPago();
	public boolean crearPago(Pago pa);
	public boolean eliminarPago(Pago pa);
	public boolean editarPago(Pago pa);
	public Pago obteneridPago(int idpago);
	
}
