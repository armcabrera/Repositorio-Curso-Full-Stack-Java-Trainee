package cl.cabrera.grupal6idao;

import java.util.List;

import cl.cabrera.grupal6modelo.Visita;


public interface IVisitaDao {
	
	public List<Visita> obtenerVisita();
	public boolean crearVisita(Visita vi);
	public boolean eliminarVisita(Visita vi);
	public boolean editarVisita(Visita vi);
	public Visita obteneridvisita(int idvisita);
	public List<Visita> listarid();
	
}
