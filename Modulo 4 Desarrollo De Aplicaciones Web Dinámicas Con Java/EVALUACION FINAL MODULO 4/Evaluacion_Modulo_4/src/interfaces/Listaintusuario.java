package interfaces;

import java.util.List;


import modelo.Usuario;


public interface Listaintusuario {
	
	public boolean insertar(Usuario usuario);
	public List<Usuario > obtener();
	public boolean actualizar(Usuario  usuario);
	public boolean eliminar(Usuario  usuario);
	public Usuario obtenerRun(Usuario  usuario);

}
