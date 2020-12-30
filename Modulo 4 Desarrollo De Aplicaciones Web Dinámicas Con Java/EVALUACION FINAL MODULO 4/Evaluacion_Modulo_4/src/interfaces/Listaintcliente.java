package interfaces;

import java.util.List;

import modelo.Cliente;


public interface Listaintcliente {
	
	public boolean insertar(Cliente cliente);
	public List<Cliente > obtener();
	public boolean actualizar(Cliente  cliente);
	public boolean eliminar(Cliente  cliente);
	public Cliente obteneRuncli(Cliente  cliente);
}
