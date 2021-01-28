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

import cl.cabrera.grupal6dao.AsesoriaDao;
import cl.cabrera.grupal6dao.ProfesionalDao;
import cl.cabrera.grupal6modelo.Asesoria;
import cl.cabrera.grupal6modelo.Profesional;

@Controller
public class Asesoriacontrolador {
	
	@Autowired
	AsesoriaDao ad;
	
	@Autowired
	ProfesionalDao pd;
	
	@RequestMapping(value="Linkirasesoria", method = RequestMethod.GET)
	public String Mostrarasesoria(Model model) {
				
		List<Profesional> listadorutpro = new ArrayList<Profesional>(); 
		listadorutpro = pd.obtenerProfesional();
		model.addAttribute("lprofesional",listadorutpro);
		return "Crearasesorias";	
	}
	
	@RequestMapping(value="Linklistarasesorias", method = RequestMethod.GET)
	public String Listarasesorias(Model model) {		
	
		List<Asesoria> listadoaseso = new ArrayList<Asesoria>();
		listadoaseso = ad.obtenerAsesorias();
		model.addAttribute("laseso",listadoaseso);	
		return "Listadoasesorias";			
	}
	
	@RequestMapping(value="Linkcrearasesoria", method = RequestMethod.POST)
	public String Crearasesoria(Model model, 
			@RequestParam ("txtidasesoria") int idasesoria,
			@RequestParam("txtdiaase") String fecharealizacion,
			@RequestParam("txtmotivo") String motivo,
			@RequestParam("txtnombrepro") String profesional_cargo,
			@RequestParam("txtrutprofesional")String profesional_run){
		
			Asesoria ase = new Asesoria(idasesoria, fecharealizacion, motivo, profesional_cargo, profesional_run);
			ad.crearAsesorias(ase);
			return Listarasesorias(model);		
	}
	
	@RequestMapping(value="Linkeliminaraseso/{idasesoria}", method = RequestMethod.GET)
	public String Eliminaraseso(Model model, @PathVariable ("idasesoria")int idasesoria) {	

		Asesoria ases = new Asesoria();
		ases.setIdasesoria(idasesoria);
		ad.eliminarAsesorias(ases);
		return Listarasesorias(model);
	}
	
	  @RequestMapping(value="Linkeditaraseso/{idasesoria}", method = RequestMethod.GET)
	  public String Editaraseso(Model model, @PathVariable ("idasesoria")int idasesoria) {
		  
		  Asesoria ase = new Asesoria();
		  ase = ad.obteneridasesorias(idasesoria);
		  model.addAttribute("Editase", ase);
		  return "editarasesorias";
	}
	  
	  @RequestMapping(value="Linkupdatease", method = RequestMethod.POST)
		public String Actualizarasesoria(Model model, 
				@RequestParam ("hdnidase") int idasesoria,
				@RequestParam("txtfecha") String fecharealizacion,
				@RequestParam("txtmotivo") String motivo,
				@RequestParam("txtnombreprof") String profesional_cargo,
				@RequestParam("hdnrutprof")String profesional_run){
	
			
				Asesoria asesor = new Asesoria(idasesoria, fecharealizacion, motivo, profesional_cargo, profesional_run);
				ad.editarAsesorias(asesor);
				return Listarasesorias(model);	
		}
	
	

}
