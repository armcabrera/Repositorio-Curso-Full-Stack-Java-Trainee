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
import cl.cabrera.grupal6dao.VisitaDao;
import cl.cabrera.grupal6modelo.Chequeos;
import cl.cabrera.grupal6modelo.Visita;

@Controller
public class Chequeoscontroller {

	
	@Autowired
	ChequeosDao cd;
	
	@Autowired
	VisitaDao vd;
	
	@RequestMapping(value="Linklistachequeos", method = RequestMethod.GET)
	public String listarchequeos(Model model) {
		
		List<Chequeos> listadochequeos = new ArrayList<Chequeos>();
		listadochequeos = cd.obtenerChequeos();
		model.addAttribute("lche",listadochequeos);
		
		return "Listadochequeos";
	}
	
	@RequestMapping(value="Linkircrearchequeo", method = RequestMethod.GET)
	public String chequeocrear(Model model) {
		
		List<Visita> listavisita = new ArrayList<Visita>();
		listavisita = vd.listarid();
		model.addAttribute("idvi", listavisita);
		return "ingresarchequeo";
	}
	
	@RequestMapping(value="Linkcrearchequeo", method = RequestMethod.POST)
    public String Crearchequeo(Model model, 
            @RequestParam ("txtidchequeo") int idchequeo,
            @RequestParam("txtImplementos") String implementoseguridad,
            @RequestParam("txtProtocolos") String protocoloseguridad,
            @RequestParam("txtVestimenta") String vestimentaseguridad,
            @RequestParam("txtManual") String manualseguridad,
            @RequestParam("txtobservaciones")String observaciones,
            @RequestParam("txtidvisita")int visita_idvisita){

			Chequeos che = new Chequeos(idchequeo, implementoseguridad, protocoloseguridad, vestimentaseguridad, manualseguridad, observaciones, visita_idvisita);
			cd.crearChequeos(che);
            return listarchequeos(model);
    }
	
	
	@RequestMapping(value="Linkeliminarchequeo/{idchequeo}", method = RequestMethod.GET)
    public String Eliminarchequeo(Model model, @PathVariable ("idchequeo") int idchequeo) {

		Chequeos che = new Chequeos();
		che.setIdchequeo(idchequeo);
		cd.eliminarChequeos(che);
		 return listarchequeos(model);
    }
	
	@RequestMapping(value="Linkeditarchequeo/{idchequeo}", method = RequestMethod.GET)
	public String editarchequeo(Model model, @PathVariable ("idchequeo")int idchequeo) {
		
		Chequeos che = new Chequeos();
		che = cd.obteneridchequeo(idchequeo);
		model.addAttribute("editche", che );
		return "editarchequeo";
	}
	
	@RequestMapping(value="Linkupdatechequeo", method = RequestMethod.POST)
    public String insertchequeo(Model model, 
    		  @RequestParam ("hdnidchequeo") int idchequeo,
              @RequestParam("txtImplementos") String implementoseguridad,
              @RequestParam("txtprotocolos") String protocoloseguridad,
              @RequestParam("txtVestimenta") String vestimentaseguridad,
              @RequestParam("txtManual") String manualseguridad,
              @RequestParam("txtobservaciones")String observaciones,
              @RequestParam("hdnidvisita")int visita_idvisita){

  			Chequeos che = new Chequeos(idchequeo, implementoseguridad, protocoloseguridad, vestimentaseguridad, manualseguridad, observaciones, visita_idvisita);
            cd.editarChequeos(che);
            return listarchequeos(model);
    }
	
}
