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

import cl.cabrera.grupal6dao.ChequeosDao;
import cl.cabrera.grupal6dao.ClienteDao;
import cl.cabrera.grupal6dao.VisitaDao;
import cl.cabrera.grupal6modelo.Chequeos;
import cl.cabrera.grupal6modelo.Cliente;
import cl.cabrera.grupal6modelo.Visita;

@Controller
public class Visitacontrolador {
	
	@Autowired
	VisitaDao vd;
	
	@Autowired
	ClienteDao cd;
	
	@Autowired
	ChequeosDao ch;
	
	@RequestMapping(value="Linklistadovisita", method = RequestMethod.GET)
	public String listadovisitas(Model model) {
		
		List<Visita> listadovisita = new ArrayList<Visita>();
		listadovisita = vd.obtenerVisita();	
		model.addAttribute("lvisita",listadovisita);
		return "Listadovisitas";
		
	}
	
	@RequestMapping(value="Linkircrearvisita", method = RequestMethod.GET)
	public String Mostrarformvisita(Model model) {
				
		List<Cliente> listadorut = new ArrayList<Cliente>(); 
		listadorut = cd.obtenerCliente();
		model.addAttribute("lrut",listadorut);
		return "ingresarvisita";	
	}
	
	@RequestMapping(value="Linkcrearvisita", method = RequestMethod.POST)
	public String Crearvisita(Model model, 
			@RequestParam ("txtidvisita") int idvisita,
			@RequestParam("txtfechavisita") String visfecha,
			@RequestParam("txthoravisita") String vishora,
			@RequestParam("txtlugarhora") String vislugar,
			@RequestParam("txtcomentarios")String viscomentarios,
			@RequestParam("txtrutcliente") String cliente_rutcliente){
		
			Visita vis = new Visita(idvisita, visfecha, vishora, vislugar, viscomentarios, cliente_rutcliente);
			vd.crearVisita(vis);
			return listadovisitas(model);
	}
	
	
	@RequestMapping(value="Linkeliminarvisita/{idvisita}", method = RequestMethod.GET)
	public String Eliminarvisita(Model model, @PathVariable ("idvisita")int idvisita) {	
	
		Visita vis = new Visita();
		vis.setIdvisita(idvisita);
		vd.eliminarVisita(vis);
		return listadovisitas(model);
	}
	
	
	  @RequestMapping(value="Linkeditarvisita/{idvisita}", method = RequestMethod.GET)
	  public String Editarvisita(Model model, @PathVariable ("idvisita")int idvisita) {
		  
		  Visita vis = new Visita();
		  vis = vd.obteneridvisita(idvisita);
		  model.addAttribute("editvis", vis);
		  return "editarvisita";
	}
	
	  @RequestMapping(value="Linkupdatevisita", method = RequestMethod.POST)
		public String Actualizarvisita(Model model, 
				@RequestParam ("hdnidvisita") int idvisita,
				@RequestParam("txtfechavisita") String visfecha,
				@RequestParam("txthoravisita") String vishora,
				@RequestParam("txtlugarhora") String vislugar,
				@RequestParam("txtcomentarios")String viscomentarios,
				@RequestParam("hdnrutcliente") String cliente_rutcliente){
			
		 Visita vis = new Visita(idvisita, visfecha, vishora, vislugar, viscomentarios, cliente_rutcliente);
		 vd.editarVisita(vis);
		 return listadovisitas(model);
		}
	  
	  
	  
		
		 
		@RequestMapping(value="Linklistadochequeosvisita/{idvisita}", method =
		  RequestMethod.GET) public String listadochequeovisitas(Model
		  model,@PathVariable ("idvisita")int idvisita) {
			
				Chequeos che = new Chequeos();
				che = ch.obtenerid(idvisita);
				model.addAttribute("chvi", che); 
				return "Listadochequeosporid"; 
			  
		  }


}
