package cl.cabrera.grupal6controlador;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import cl.cabrera.grupal6modelo.Cliente;
import cl.cabrera.grupal6idao.IClientedao;

@RestController
public class Infocontrolador {

	@Autowired
	IClientedao cs;

	@RequestMapping(value = "/Clilista", method = RequestMethod.GET, headers = "Accept=application/json")
	public List<Cliente> getCliente() {
	List<Cliente> listacliente = cs.obtenerCliente();
	return listacliente;
	}

	/*
	 * @RequestMapping(value = "/clilist", method = RequestMethod.POST, headers =
	 * "Accept=application/json") public void addCliente(@RequestBody Cliente
	 * cliente) { cs.agregarCliente(cliente); }
	 * 
	 * @RequestMapping(value = "/clilist", method = RequestMethod.PUT, headers =
	 * "Accept=application/json") public void updateCliente(@RequestBody Cliente
	 * cliente) { cs.editarCliente(cliente); }
	 * 
	 * @RequestMapping(value = "/clidetalle/{id}", method = RequestMethod.GET,
	 * headers = "Accept=application/json") public Cliente
	 * getClientePorId(@PathVariable int id) { return cs.findClienteByid(id); }
	 * 
	 * @RequestMapping(value = "/clidetalle/{id}", method = RequestMethod.DELETE,
	 * headers = "Accept=application/json") public void
	 * deleteCliente(@PathVariable("id") int id) { cs.eliminarCliente(id); } }
	 */
	
	
	
}
