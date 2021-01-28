package cl.cabrera.grupal6idao;

import java.util.List;

import cl.cabrera.grupal6modelo.Contacto;

public interface IContactoDao {

	public List<Contacto> obtenerContacto();
	public boolean crearContacto(Contacto co);
	public boolean eliminarContacto(Contacto co);
	public boolean editarContacto(Contacto co);
	public Contacto obteneridContacto(int idcontacto);
	
	
}
