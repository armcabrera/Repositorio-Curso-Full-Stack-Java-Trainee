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

import cl.cabrera.grupal6dao.ContactoDao;
import cl.cabrera.grupal6modelo.Contacto;

@Controller
public class Contactocontrolador {
	

	@Autowired
	ContactoDao cd;
	
	@RequestMapping(value="Linkcontacto", method = RequestMethod.GET)
	public String Contacto() {
		
		return "Contacto";
	}
	
	@RequestMapping(value="Linklistaconsulta", method = RequestMethod.GET)
	public String Listaconsulta(Model model) {
		
		List<Contacto> listadocontacto = new ArrayList<Contacto>(); 
		listadocontacto = cd.obtenerContacto(); 
		model.addAttribute("lcont",listadocontacto);
		
		return "Listadoconsultas";
	}
	
	@RequestMapping(value="Linkcrearcont", method = RequestMethod.POST)
	public String Crearcapacitacion(Model model, 
			@RequestParam ("txtidcontacto") int idcontacto,
			@RequestParam("txtnombre") String nombre,
			@RequestParam("txtemail") String email,
			@RequestParam("txttelefono") String telefono,
			@RequestParam("txttipousuario") String tipousuario,
			@RequestParam("txtcomentarios") String comentarios){
		
			Contacto cont = new Contacto(idcontacto, nombre, email, telefono, tipousuario, comentarios);
			cd.crearContacto(cont);
			return Listaconsulta(model);		
	}
	
	
	@RequestMapping(value="Linkeliminarcont/{idcontacto}", method = RequestMethod.GET)
	public String Eliminarcapacitacion(Model model, @PathVariable ("idcontacto")int idcontacto) {	

		Contacto contt = new Contacto();
		contt.setIdcontacto(idcontacto);
		cd.eliminarContacto(contt);
		return Listaconsulta(model);
	}
	
	@RequestMapping(value="Linkupdatecont", method = RequestMethod.POST)
	public String Actualizarcapacitacion(Model model, 
			@RequestParam ("txtidcontacto") int idcontacto,
			@RequestParam("txtnombre") String nombre,
			@RequestParam("txtemail") String email,
			@RequestParam("txttelefono") String telefono,
			@RequestParam("txttipousuario") String tipousuario,
			@RequestParam("txtcomentarios") String comentarios){
		
			Contacto connt = new Contacto(idcontacto, nombre, email, telefono, tipousuario, comentarios);
			cd.editarContacto(connt);
			return Listaconsulta(model);	
	}
	

	
	  @RequestMapping(value="Linkeditarcont/{idcontacto}", method = RequestMethod.GET)
	  public String Editarcontacto(Model model, @PathVariable ("idcontacto")int idcontacto) {
		  
		  Contacto cont = new Contacto();
		  cont = cd.obteneridContacto(idcontacto);
		  model.addAttribute("editcon", cont);
		  return "editarconsulta";
	}
}
