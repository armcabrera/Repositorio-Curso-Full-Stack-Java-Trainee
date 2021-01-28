package cl.cabrera.grupal6controlador;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class Reportescontrolador {
	
	


	@RequestMapping(value="Linkreportes", method = RequestMethod.GET)
	public String Reporte() {
	
	
	return "Reportes";
	}
	
	


}
