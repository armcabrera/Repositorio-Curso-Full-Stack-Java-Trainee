package cl.cabrera.grupal6idao;

import java.util.List;

import cl.cabrera.grupal6modelo.Profesional;



public interface IProfesionalDao {

	public List<Profesional> obtenerProfesional();
	public boolean crearProfesional(Profesional pf);

	public boolean editarProfesional(Profesional pf);
	public Profesional obtenerRunprofesional(String runusuario);
}
