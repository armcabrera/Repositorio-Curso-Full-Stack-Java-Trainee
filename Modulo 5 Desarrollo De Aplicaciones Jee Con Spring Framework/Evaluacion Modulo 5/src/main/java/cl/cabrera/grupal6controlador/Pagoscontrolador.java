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

import cl.cabrera.grupal6dao.ClienteDao;
import cl.cabrera.grupal6dao.PagoDao;
import cl.cabrera.grupal6modelo.Cliente;
import cl.cabrera.grupal6modelo.Pago;

@Controller
public class Pagoscontrolador {
	
	@Autowired
	PagoDao pd;
	
	@Autowired
	ClienteDao cd;
	
	@RequestMapping(value = "Linklistapagos", method = RequestMethod.GET)
	public String Listapagos(Model model) {
		
		List<Pago> listadoPago = new ArrayList<Pago>(); 
		listadoPago = pd.obtenerPago(); 
		model.addAttribute("lpago",listadoPago);	
		return "Listadopagos";
	}
	
	@RequestMapping(value="Linkircrearpago", method = RequestMethod.GET)
	public String Mostrarcapa(Model model) {
				
		List<Cliente> listadorut = new ArrayList<Cliente>(); 
		listadorut = cd.obtenerCliente();
		model.addAttribute("lrut",listadorut);
		return "Crearpagos";	
	}
	
	@RequestMapping(value = "Linkcrearpagos", method = RequestMethod.POST)
	public String Crearpagos(Model model,	
		
		@RequestParam ("txtidpago") int idpago,
		@RequestParam("txtfechapago") String fechapago,
		@RequestParam("txtmontopago") int montopago,
		@RequestParam("txtmespago") String mespago,
		@RequestParam("txtañopago") int aniopago,
		@RequestParam("txtrutcliente") String runcliente){
	
		Pago pag = new Pago(idpago,fechapago,montopago,mespago,aniopago,runcliente);
		pd.crearPago(pag);
		return Listapagos(model);	
	}
	
	@RequestMapping(value="Linkeliminarpago/{idpago}", method = RequestMethod.GET)
	public String Eliminarpago(Model model, @PathVariable ("idpago")int idpago) {	

		Pago pag = new Pago();
		pag.setIdpago(idpago);
		pd.eliminarPago(pag);
		return Listapagos(model);
	}
	
	  @RequestMapping(value="Linkeditarpago/{idpago}", method = RequestMethod.GET)
	  public String Editarpago(Model model, @PathVariable ("idpago")int idpago) {
		  
		  Pago 	pag = new Pago();
		  pag = pd.obteneridPago(idpago);
		  model.addAttribute("editpago", pag);
		  return "editarpago";
	}
	  
	  
	  @RequestMapping(value="Linkupdatepago", method = RequestMethod.POST)
		public String Actualizarpago(Model model, 
				@RequestParam ("hdnidpago") int idpago,
				@RequestParam("txtfechapago") String fechapago,
				@RequestParam("txtmontopago") int montopago,
				@RequestParam("txtmespago") String mespago,
				@RequestParam("txtaniopago") int aniopago,
				@RequestParam("hdnrutcliente") String runcliente){
		  
		  		Pago pag = new Pago(idpago,fechapago,montopago,mespago,aniopago,runcliente);
		  		pd.editarPago(pag);
		  		return Listapagos(model);

		}
	  
	  

}
