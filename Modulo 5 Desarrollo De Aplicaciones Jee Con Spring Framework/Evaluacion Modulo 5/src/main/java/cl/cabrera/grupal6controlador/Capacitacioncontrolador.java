package cl.cabrera.grupal6controlador;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import cl.cabrera.grupal6dao.CapacitacionDao;
import cl.cabrera.grupal6dao.ClienteDao;
import cl.cabrera.grupal6modelo.Capacitacion;
import cl.cabrera.grupal6modelo.Cliente;

@Controller
public class Capacitacioncontrolador {
	
	
	@Autowired
	CapacitacionDao cp;
	
	@Autowired
	ClienteDao cd;
	
	@RequestMapping(value="Linkircapa", method = RequestMethod.GET)
	public String Mostrarcapa(Model model) {
				
		List<Cliente> listadorut = new ArrayList<Cliente>(); 
		listadorut = cd.obtenerCliente();
		model.addAttribute("lrut",listadorut);
		return "Crearcapacitacion";	
	}
	

	@RequestMapping(value="Linklistarcapa", method = RequestMethod.GET)
	public String Listarcapacitacion(Model model) {		
		
		List<Capacitacion> listadocapa = new ArrayList<Capacitacion>();
		listadocapa = cp.obtenerCapacitaciones();	
		model.addAttribute("capa",listadocapa);	
		return "Listarcapacitaciones";			
	}
	
	

	
	@RequestMapping(value="Linkcrearcapa", method = RequestMethod.POST)
	public String Crearcapacitacion(Model model, 
			@RequestParam ("txtidcapacitacion") int idCapa,
			@RequestParam("txtdia") String dia,
			@RequestParam("txthoracapa") String hora,
			@RequestParam("txtlugar") String lugar,
			@RequestParam("txtduracion")int duracion,
			@RequestParam("txtrutcliente") String runcliente){
		
			Capacitacion cap = new Capacitacion(idCapa,dia,hora,lugar,duracion,runcliente);
			cp.crearCapacitacion(cap);
			return Listarcapacitacion(model);		
	}
	
	
	@RequestMapping(value="Linkeliminarcapa/{id}", method = RequestMethod.GET)
	public String Eliminarcapacitacion(Model model, @PathVariable ("id")int idCapa) {	

		Capacitacion cap = new Capacitacion();
		cap.setIdcapa(idCapa);
		cp.eliminarCapacitacion(cap);
		return Listarcapacitacion(model);
	}
	
	
	  @RequestMapping(value="Linkeditarcapa/{idcapa}", method = RequestMethod.GET)
	  public String Editarcapacitacion(Model model, @PathVariable ("idcapa")int idCapa) {
		  
		  Capacitacion cap = new Capacitacion();
		  cap = cp.obteneridcapa(idCapa);
		  model.addAttribute("Editcap", cap);
		  return "editarcapcitacion";
	}


	@RequestMapping(value="Linkupdate", method = RequestMethod.POST)
	public String Actualizarcapacitacion(Model model, 
			@RequestParam ("hdnidcapa") int idCapa,
			@RequestParam("txtdia") String dia,
			@RequestParam("txthoracapa") String hora,
			@RequestParam("txtlugar") String lugar,
			@RequestParam("txtduracion")int duracion,
			@RequestParam("hdnrutcliente") String runcliente){
		
			Capacitacion cap = new Capacitacion(idCapa,dia,hora,lugar,duracion,runcliente);
			cp.editarCapacitacion(cap);
			return Listarcapacitacion(model);	
	}
	

	


}
