package cl.cabrera.grupal6idao;

import java.util.List;

import cl.cabrera.grupal6modelo.Accidente;



public interface IAccidenteDao {
	
	public List<Accidente> obtenerAccidente();
	public boolean crearAccidente(Accidente ac);
	public boolean eliminarAccidente(Accidente ac);
	public boolean editarAccidente(Accidente ac);
	public Accidente obteneridaccidente(int accidenteid);

}
