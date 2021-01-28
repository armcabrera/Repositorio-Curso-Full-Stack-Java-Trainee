package cl.cabrera.grupal6idao;

import java.util.List;

import cl.cabrera.grupal6modelo.Chequeos;


public interface IChequeosDao {
	
	public List<Chequeos> obtenerChequeos();
	public boolean crearChequeos(Chequeos ch);
	public boolean eliminarChequeos(Chequeos ch);
	public boolean editarChequeos(Chequeos ch);
	public Chequeos obteneridchequeo(int idchequeo);
	public Chequeos obtenerid(int idchequeo); 
	
}
