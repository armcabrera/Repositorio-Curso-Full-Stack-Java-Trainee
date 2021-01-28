package cl.cabrera.grupal6idao;

import java.util.List;

import cl.cabrera.grupal6modelo.Cliente;




public interface IClientedao {
	
	public List<Cliente> obtenerCliente();
	public boolean crearCliente(Cliente cl);

	public boolean editarCliente(Cliente cl);
	public Cliente obtenerRuncliente(String runusuario);

}
