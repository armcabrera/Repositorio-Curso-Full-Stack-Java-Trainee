package interfaces;

import java.util.List;

import modelo.Administrativo;




public interface Listaintadm {
	
	public boolean insertar(Administrativo administrativo);
	public List<Administrativo > obtener();
	public boolean actualizar(Administrativo  administrativo);
	public boolean eliminar(Administrativo  administrativo);
	public Administrativo obtenerRunadm(Administrativo  administrativo);

}
