package cl.cabrera.grupal6idao;

import java.util.List;

import cl.cabrera.grupal6modelo.Administrativo;



public interface IAdminDao {

	
	public List<Administrativo> obtenerAdministrativo();
	public boolean crearAdministrativo(Administrativo ad);
	
	public boolean editarAdministrativo(Administrativo ad);
	public Administrativo obtenerRunadmin(String runusuario);
}
