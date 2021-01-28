package cl.cabrera.grupal6idao;

import java.util.List;

import cl.cabrera.grupal6modelo.Usuario;



public interface IUsuarioDao {

	public List<Usuario> obtenerUsuario();
	public boolean crearUsuario(Usuario us);
	public boolean eliminarUsuario(Usuario us);
	public boolean editarUsuario(Usuario us);
	public Usuario obtenerrun(String run);
}
