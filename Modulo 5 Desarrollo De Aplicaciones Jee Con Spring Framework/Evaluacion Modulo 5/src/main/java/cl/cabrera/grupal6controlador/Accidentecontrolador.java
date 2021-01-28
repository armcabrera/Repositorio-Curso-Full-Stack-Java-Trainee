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

import cl.cabrera.grupal6dao.AccidenteDao;
import cl.cabrera.grupal6dao.ClienteDao;
import cl.cabrera.grupal6modelo.Accidente;
import cl.cabrera.grupal6modelo.Cliente;

@Controller
public class Accidentecontrolador {
	
	@Autowired
	AccidenteDao ad;
	
	@Autowired
	ClienteDao cd;
	
	
	@RequestMapping(value="Linklistaracci", method = RequestMethod.GET)
	public String Listaraccidente(Model model) {		
		
		List<Accidente> listadoacci = new ArrayList<Accidente>();
		listadoacci = ad.obtenerAccidente();
		model.addAttribute("lacci",listadoacci);	
		return "Listadoaccidente";			
	}

	@RequestMapping(value="Linkaccidentes", method = RequestMethod.GET)
	public String listaacc(Model model) {
		
		List<Cliente> listadorut = new ArrayList<Cliente>(); 
		listadorut = cd.obtenerCliente();
		model.addAttribute("lrut",listadorut);
		return "ingresaraccidente";
	
	}
	
	@RequestMapping(value="Linkcrearacci", method = RequestMethod.POST)
	public String Crearaccidente(Model model, 
			@RequestParam ("txtidacci")int accidenteid,
			@RequestParam("txtfechaacc") String accifecha,
			@RequestParam("txthoracci") String accihora,
			@RequestParam("txtlugaracc") String accilugar,
			@RequestParam("txtorigenacc")String acciorigen,
			@RequestParam("txtconsecuencias")String acciconsecuencia,
			@RequestParam("txtrutcliente") String cliente_rutcliente){
		
			Accidente aci = new Accidente(accidenteid, accifecha, accihora,accilugar,acciorigen,acciconsecuencia,cliente_rutcliente);
			ad.crearAccidente(aci);
			return Listaraccidente(model);
	
	}
	
	@RequestMapping(value="Linkeliminaracci/{accidenteid}", method = RequestMethod.GET)
	public String Eliminaraccidente(Model model, @PathVariable ("accidenteid")int accidenteid) {	

		Accidente aci = new Accidente();
		aci.setAccidenteid(accidenteid);
		ad.eliminarAccidente(aci);
		return Listaraccidente(model);

	}
	
	  @RequestMapping(value="Linkeditaracci/{accidenteid}", method = RequestMethod.GET)
	  public String Editaraccidente(Model model, @PathVariable ("accidenteid")int accidenteid) {
		  
		  Accidente aci = new Accidente();
		  aci = ad.obteneridaccidente(accidenteid);
		  model.addAttribute("editacci", aci);
		  return "editaraccidente";
	}
	  
		@RequestMapping(value="Linkupdateacci", method = RequestMethod.POST)
		public String Actualizarcapacitacion(Model model, 
				@RequestParam ("hdnidcacci")int accidenteid,
				@RequestParam("txtfechaacc") String accifecha,
				@RequestParam("txthoracci") String accihora,
				@RequestParam("txtlugaracc") String accilugar,
				@RequestParam("txtorigenacc")String acciorigen,
				@RequestParam("txtconsecuencias")String acciconsecuencia,
				@RequestParam("txtrutcliente") String cliente_rutcliente){
			
				Accidente aci = new Accidente(accidenteid, accifecha, accihora,accilugar,acciorigen,acciconsecuencia,cliente_rutcliente);
				ad.editarAccidente(aci);
				return Listaraccidente(model);
		}
	
}
