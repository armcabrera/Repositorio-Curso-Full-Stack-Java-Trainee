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

import cl.cabrera.grupal6dao.AsistenteDao;
import cl.cabrera.grupal6modelo.Asistentes;

@Controller
public class Asistentescontrolador {
	
	@Autowired
	AsistenteDao ad;
	
	
	@RequestMapping(value="Linklistadoasis", method = RequestMethod.GET)
	public String Listadoasistente(Model model) {
		
		List<Asistentes> listadoasistentes = new ArrayList<Asistentes>();
		listadoasistentes  = ad.obtenerAsistentes();	
		model.addAttribute("lasis",listadoasistentes );		
		return "Listadoasistentes";
	
	}
	
	
	@RequestMapping(value="Linkircrearasistente", method = RequestMethod.GET)
	public String Formasistente() {
		
		return "Ingresarasistente";
	}
	
	@RequestMapping(value="Linkcrearasistente", method = RequestMethod.POST)
	public String Crearasistente(Model model, 
			@RequestParam ("txtidasistente") int idasistente,
			@RequestParam("txtnombre") String asistnombrecompleto,
			@RequestParam("txtedad") int asistedad,
			@RequestParam("txtemail") String asistcorreo,
			@RequestParam("txttelefono")String asisttelefono,
			@RequestParam("txtidcapa") int capacitacion_idcapacitacion){
		
			Asistentes asis = new Asistentes(idasistente,asistnombrecompleto,asistedad,asistcorreo,asisttelefono,capacitacion_idcapacitacion);
			ad.crearAsistentes(asis);
			return Listadoasistente(model);
	
	}
	
	@RequestMapping(value="Linkeliminarasis/{idasistente}", method = RequestMethod.GET)
	public String Eliminarasistente(Model model, @PathVariable ("idasistente")int idasistente) {	

		Asistentes asis = new Asistentes();
		asis.setIdasistente(idasistente);
		ad.eliminarAsistentes(asis);
		return Listadoasistente(model);
		
	}
	
	  @RequestMapping(value="Linkeditarasis/{idasistente}", method = RequestMethod.GET)
	  public String Editarasistente(Model model, @PathVariable ("idasistente")int idasistente) {
		  
		  Asistentes asis = new Asistentes();
		  asis = ad.obteneridasistentes(idasistente);
		  model.addAttribute("editasis", asis);
		  return "editarasistente";
	}
	
	

	@RequestMapping(value="Linkupdateasistente", method = RequestMethod.POST)
	public String Actualizarasistente(Model model, 
			@RequestParam ("hdnidasis") int idasistente,
			@RequestParam("txtnombre") String asistnombrecompleto,
			@RequestParam("txtedad") int asistedad,
			@RequestParam("txtcorreo") String asistcorreo,
			@RequestParam("txttelefono")String asisttelefono,
			@RequestParam("hdnidasis") int capacitacion_idcapacitacion){
		
			Asistentes asis = new Asistentes(idasistente,asistnombrecompleto,asistedad,asistcorreo,asisttelefono,capacitacion_idcapacitacion);
			ad.editarAsistentes(asis);
			return Listadoasistente(model);
	}
	

	


	
	
}
